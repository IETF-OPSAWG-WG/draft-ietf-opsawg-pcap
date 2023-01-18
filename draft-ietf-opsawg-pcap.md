---
stand_alone: true
ipr: trust200902
docname: draft-ietf-opsawg-pcap-latest
cat: info
pi:
  symrefs: 'yes'
  toc: 'yes'
  compact: 'yes'
  subcompact: 'no'
  inline: 'yes'
  sortrefs: 'no'
  strict: 'yes'
title: PCAP Capture File Format
abbrev: pcap
author:
- role: editor
  ins: G. Harris
  name: Guy Harris
  org: ''
  email: gharris@sonic.net
- ins: M. Richardson
  name: Michael C. Richardson
  org: Sandelman Software Works Inc
  abbrev: Sandelman
  email: mcr+ietf@sandelman.ca
  uri: http://www.sandelman.ca/

venue:
  group: opsawg
  mail: opsawg@ietf.org
  github: IETF-OPSAWG-WG/pcapng

normative:
  I-D.richardson-opsawg-pcaplinktype:

informative:
  I-D.tuexen-opsawg-pcapng:
  RFC8126:
  Radiotap:
    author:
      org: radiotap.org
    title: Radiotap Web site
    target: http://www.radiotap.org/
  AVS:
    author:
      fullname: Solomon Peachy
    title: Archived AVS specification
    target: http://web.archive.org/web/20040803232023/http://www.shaftnet.org/~pizza/software/capturefrm.txt

--- abstract

This document describes the format used by the libpcap library to
record captured packets to a file.  Programs using the libpcap
library to read and write those files, and thus reading and writing
files in that format, include tcpdump.

--- middle

# Introduction

In the late 1980's, Van Jacobson, Steve McCanne, and others at the
Network Research Group at Lawrence Berkeley National Laboratory
developed the tcpdump program to capture and dissect network traces.
The code to capture traffic, using low-level mechanisms in various
operating systems, and to read and write network traces to a file was
later put into a library named libpcap.

This document describes the format used by tcpdump, and other
programs using libpcap, to read and write network traces.

# Terminology

{::boilerplate bcp14}

# General File Structure

A capture file begins with a File Header, followed by zero or more
Packet Records, one per packet.

All fields in the File Header and in the headers of Packet Records will
always be written according to the characteristics (little endian / big
endian) of the machine that is writing the file.  This refers to all the
fields that are written as numbers and that span over two or more
octets.

The approach of having the file written in the native format of the host
writing the file is more efficient because it avoids translation of data
when writing the file or reading the file on the host that wrote the
file, which is the most common case when generating or processing
capture captures.

# File Header

The File Header has the following format, with the octet offset of
fields shown to the left of the field:

~~~~
      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    0 |                          Magic Number                         |
      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    4 |          Major Version        |
      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    6 |          Minor Version        |
      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    8 |                           Reserved1                           |
      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
   12 |                           Reserved2                           |
      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
   16 |                            SnapLen                            |
      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
   20 |               LinkType and additional information             |
      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
~~~~
{: #fig-header title='File Header' align="left"}

The File Header length is 24 octets.

The meaning of the fields in the File Header is:

Magic Number (32 bits):
: an unsigned magic number, whose value is either the hexadecimal number
0xA1B2C3D4 or the hexadecimal number 0xA1B23C4D.
: If the value is 0xA1B2C3D4, time stamps in Packet Records (see Figure
2) are in seconds and microseconds; if it is 0xA1B23C4D, time stamps in
Packet Records are in seconds and nanoseconds.
: These numbers can be used to distinguish sessions that have been
written on little-endian machines from the ones written on big-endian
machines, and to heuristically identify pcap files.

Major Version (16 bits):
: an unsigned value, giving the number of the current major version of
the format.  The value for the current version of the format is 2.  This
value should change if the format changes in such a way that code that
reads the new format could not read the old format (i.e., code to read
both formats would have to check the version number and use different
code paths for the two formats) and code that reads the old format could
not read the new format.

Minor Version (16 bits):
: an unsigned value, giving the number of the current minor version of
the format.  The value is for the current version of the format is 4.
This value should change if the format changes in such a way that code
that reads the new format could read the old format without checking the
version number but code that reads the old format could not read all
files in the new format.

Reserved1 (32 bits):
: not used - SHOULD be filled with 0 by pcap file writers, and MUST be
ignored by pcap file readers.  This value was documented by some older
implementations as "gmt to local correction".  Some older pcap file
writers stored non-zero values in this field.

Reserved2 (32 bits):
: not used - SHOULD be filled with 0 by pcap file writers, and MUST be
ignored by pcap file readers.  This value was documented by some older
implementations as "accuracy of timestamps".  Some older pcap file
writers stored non-zero values in this field.

SnapLen (32 bits):
: an unsigned value indicating the maximum number of octets captured
from each packet.  The portion of each packet that exceeds this value
will not be stored in the file.  This value MUST NOT be zero; if no
limit was specified, the value should be a number greater than or equal
to the largest packet length in the file.

LinkType and additional information (32 bits):
: a 32-bit unsigned value that contains the link-layer type of packets
in the file and may contain additional information.

The LinkType and additional information field is in the form

~~~~
                           1                   2                   3
       0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
      |FCS len|R|P|     Reserved3     |        Link-layer type        |
      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
~~~~
{: #fig-linktype title='LinkType and additional information' align="left"}

The field is shown as if it were in the byte order of the host reading
or writing the file, with bit 0 being the most-significant bit of the
field and bit 31 being the least-significant bit of the field.

Link-layer type (16 bits):
: a 16-bit value indicating link-layer type for packets in the file;
it is a value as defined in the PCAP LinkType list registry, as defined in {{I-D.richardson-opsawg-pcaplinktype}}.

Reserved3 (10 bits):
: not used - MUST be set to zero by pcap writers, and MUST NOT be
interpretedd by pcap readers; a reader SHOULD treat a non-zero value as
an error.

P (1 bit):
: a bit that, if set, indicates that the Frame Check Sequence (FCS)
length value is present and, if not set, indicates that the FCS value is
not present.

R (1 bit):
: not used - MUST be set to zero by pcap writers, and MUST NOT be
interpreted by pcap readers; a reader SHOULD treat a non-zero value as
an error.

FCS len (4 bits):
: a 4-bit unsigned value indicating the number of 16-bit (2-octet) words
of FCS that are appended to each packet, if the P bit is set; if the P
bit is not set, and the FCS length is not indicated by the link-layer
type value, the FCS length is unknown.  The valid values of the FCS len
field are between 0 and 15; Ethernet, for example, would have an FCS
length value of 2, corresponding to a 4-octet FCS.

# Packet Record

A Packet Record is the standard container for storing the packets
coming from the network.

~~~~
      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    0 |                      Timestamp (Seconds)                      |
      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    4 |            Timestamp (Microseconds or nanoseconds)            |
      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    8 |                    Captured Packet Length                     |
      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
   12 |                    Original Packet Length                     |
      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
   16 /                                                               /
      /                          Packet Data                          /
      /                  variable length, not padded                  /
      /                                                               /
~~~~
{: #fig-record title='Packet Record' align="left"}

The Packet Record begins with a 16-octet header, followed by data from
the packet.

The meaning of the fields in the Packet Record is:

Timestamp (Seconds) and Timestamp (Microseconds or nanoseconds):
: seconds and fraction of a seconds values of a timestamp.
: The seconds value is a 32-bit unsigned integer that represents the
number of seconds that have elapsed since 1970-01-01 00:00:00 UTC, and
the microseconds or nanoseconds value represents the number of
microseconds or nanoseconds that have elapsed since that seconds.
: Whether the value represents microseconds or nanoseconds is specified
by the magic number in the File Header.

Captured Packet Length (32 bits):
: an unsigned value that indicates the number of octets captured from
the packet (i.e.  the length of the Packet Data field).  It will be the
minimum value among the Original Packet Length and the snapshot length
for the interface (SnapLen, defined in Figure 1).

Original Packet Length (32 bits):
: an unsigned value that indicates the actual length of the packet when
it was transmitted on the network.  It can be different from the
Captured Packet Length if the packet has been truncated by the capture
process; it SHOULD NOT be less than the Captured Packet Length.
: A pcap file writer MAY write an Original Packet Length that is less
than the Captured Packet Length if both the Captured Packet Length and
the Original Packet length came from a file in which a packet had an
Original Packet Length less than the Captured Packet Length; otherwise,
it MUST write an Original Packet Length that is greater than or equal to
the Captured Packet Length.
: A pcap file reader MAY convert an Original
Packet Length that is less than the Captured Packet Length to a value
that is greater than or equal to the Captured Packet Length.

Packet Data:
: the data coming from the network, including link-layer headers.  The
actual length of this field is Captured Packet Length.  The format of
the link-layer headers depends on the LinkType field specified in the
file header (see Figure 1) and it is specified in {{I-D.richardson-opsawg-pcaplinktype}}.

Packet Records are not padded to a 4-octet boundary; if the number of
octets of packet data is not a multiple of 4, there are no padding
octets following it, so Packet Records are not guaranteed to begin on a
4-octet boundary within a file.

# Recommended File Name Extension: .pcap

The recommended file name extension for the "PCAP Capture File Format"
specified in this document is ".pcap".

On Windows and macOS, files are distinguished by an extension to their
filename.  Such an extension is technically not actually required, as
applications should be able to automatically detect the pcap file format
through the "magic bytes" at the beginning of the file, as some other
UN*X desktop environments do.  However, using name extensions makes it
easier to work with files (e.g.  visually distinguish file formats) so
it is recommended - though not required - to use .pcap as the name
extension for files following this specification.

Please note: To avoid confusion (such as the current usage of .cap for a
plethora of different capture file formats) file name extensions other
than .pcap should be avoided.

There is new work to create the PCAP Next Generation capture File Format
(see {{I-D.tuexen-opsawg-pcapng}}).  The new file format is not
compatible with this specification, but many programs read both
transparently.  Files of that type will usually start with a Section
Header Block, with a magic number of 0x0A0D0D0A.

#  Security Considerations

   TBD.

#  IANA Considerations

This document requires the following IANA actions:

## Media-Type Registry

This section registers the the 'application/pcap' in the "Media Types"
registry.  These media types are used to indicate that the content is
packet capture as described in this document.

### application/pcap

~~~~
    Type name:  application
    Subtype name:  pcap
    Required parameters:  none
    Optional parameters:  none
    Encoding considerations:  PCAP files contain network packets
    Security considerations:  See Security Considerations, Section
    Interoperability considerations:  The format is designed to be broadly interoperable.
    Published specification:  THIS RFC.
    Applications that use this media type: tcpdump, wireshark, others.
    Additional information:
      Magic number(s): 0xA1B2C3D4, and 0xA1B23C4D in both endian orders
      File extension(s):  .pcap
      Macintosh file type code(s):  none
    Person & email address to contact for further information: The Tcpdump Group, www.tcpdump.org
    Intended usage:  LIMITED
    Restrictions on usage:  NONE
    Author:  Guy Harris and Michael Richardson
    Change controller:  The Tcpdump Group
    Provisional registration? (standards tree only):  NO
~~~~

#  Contributors

Insert pcap developers etc. here

#  Acknowledgments

The authors wish to thank (many reviewers) and many others for
their invaluable comments.

<!--
COMMENTS.
1) if editing with emacs, please use markdown-mode
2) with gin (auto-wrap) *TURNED OFF*,
3) and visual-line-mode *ON*
4) start each sentence on a new line, and mostly keep it on one line.

INSERT GVIM settings.
-->
