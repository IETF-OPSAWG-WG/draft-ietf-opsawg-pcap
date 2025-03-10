---
stand_alone: true
ipr: trust200902
docname: draft-richardson-opsawg-pcapng-extras-latest
cat: info
pi:
  symrefs: 'yes'
  toc: 'yes'
  compact: 'yes'
  subcompact: 'no'
  inline: 'yes'
  sortrefs: 'no'
  strict: 'yes'
title: Additional block types for PCAP Next Generation (pcapng) Capture File Format
abbrev: pcapng-extras
author:
- role: editor
  ins: M. Tuexen
  name: Michael Tuexen
  org: Muenster University of Applied Sciences
  abbrev: Muenster Univ. of Appl. Sciences
  street: Stegerwaldstrasse 39
  code: '48565'
  city: Steinfurt
  country: DE
  email: tuexen@fh-muenster.de
- ins: F. Risso
  name: Fulvio Risso
  org: Politecnico di Torino
  street: Corso Duca degli Abruzzi, 24
  city: Torino
  code: '10129'
  country: IT
  email: fulvio.risso@polito.it
- ins: J. Bongertz
  name: Jasper Bongertz
  org: Airbus Defence and Space CyberSecurity
  abbrev: Airbus DS CyberSecurity
  street: Kanzlei 63c
  code: '40667'
  city: Meerbusch
  country: DE
  email: jasper@packet-foo.com
- ins: G. Combs
  name: Gerald Combs
  org: Wireshark Foundation
  abbrev: Wireshark
  street: 339 Madson Pl
  city: Davis
  region: CA
  code: '95618'
  country: US
  email: gerald@wireshark.org
- ins: G. Harris
  name: Guy Harris
  org: ''
  email: gharris@sonic.net
- ins: E. Chaudron
  name: Eelco Chaudron
  org: Red Hat
  abbrev: Red Hat
  street: De Entree 238
  code: 1101 EE
  city: Amsterdam
  country: NL
  email: eelco@redhat.com
- ins: M. Richardson
  name: Michael C. Richardson
  org: Sandelman Software Works
  abbrev: Sandelman
  email: mcr+ietf@sandelman.ca
  uri: http://www.sandelman.ca/

normative:
  I-D.tuexen-opsawg-pcapng:

informative:
  LINKTYPES:
    target: http://www.tcpdump.org/linktypes.html
    title: the tcpdump.org link-layer header types registry
    author:
    - org: The Tcpdump Group
    date: false

--- abstract

This document contains a number of extensions to the PCAPng file format which are outside of the IETF networking mandate.

--- middle

# Introduction to Additional Block Types

TBD

# Terminology

{::boilerplate bcp14}

# Additional Block Types

## systemd Journal Export Block {#section_sdj_export}

The [systemd](https://systemd.io/)  [Journal Export Block](https://systemd.io/JOURNAL_EXPORT_FORMATS/) is a lightweight container for systemd
Journal Export Format entry data.

One of the primary components of the systemd System and
Service Manager is the "Journal", a message logging system that
uses arrays of key-value pairs. Journal entries are stored in a
database-like file on disk but can be serialized to easily
parseable "Journal Export Format" data or to a JSON object. The
block described here is limited to Journal Export Format data
only.

A systemd Journal Export Block contains a single systemd
Journal Export Format entry. Each entry MUST contain a
__REALTIME_TIMESTAMP= field. If a timestamp for the block is
required it can be derived from this field. Each entry MUST be
zero-padded to 32 bits. Although the primary use of this block
is intended for importing data from systemd, it could
potentially be used to include arbitrary key-value data in a
capture file.

{{format_sdj_export}} shows the format of the
Journal Export Block.


~~~~
                        1                   2                   3
    0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 0 |                    Block Type = 0x00000009                    |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 4 |                      Block Total Length                       |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 8 /                                                               /
   /                         Journal Entry                         /
   /              variable length, padded to 32 bits               /
   /                                                               /
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 n /                                                               /
   /                      Options (variable)                       /
   /                                                               /
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
   |                      Block Total Length                       |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
~~~~
{: #format_sdj_export title='systemd Journal Export Block Format' artwork-align="center"}

The systemd Journal Export Block has the following fields:

* Block Type: The block type of the Journal Export Block is 9.

* Block Total Length: total size of this block, as described in {{I-D.tuexen-opsawg-pcapng}}, section "Section Blocks".

* Journal Entry: A journal entry as described in the [Journal Export Format](https://systemd.io/JOURNAL_EXPORT_FORMATS/) documentation. Entries consist of a
  series of field names followed by text or binary field data.
  Common field names can be found in the [systemd.journal-fields](https://www.freedesktop.org/software/systemd/man/systemd.journal-fields.html) documentation. The __REALTIME_TIMESTAMP= field MUST be
  present and valid as described above. Entries are not
  guaranteed to be a multiple of four octets and must be
  zero-padded. This allows the length of the entry to be
  determined by finding the last non-zero octet in the Journal
  Entry data. An entry may contain an entry separator
  (trailing newline) as described in the Journal Export Format
  specification

  If the block contains options, there MUST be at least one byte of
  zero padding present to mark the end of the journal entry.  This
  only makes a difference if the journal entry is a multiple of four
  octets long, in this case 4 bytes of zero padding MUST be appended.
  Blocks without options do not contain any zero padding if the journal
  entry is a multiple of 4 octets long, therefore readers MUST NOT
  rely on the presence of a zero byte to terminate the entry.

* Options: optionally, a list of options (formatted according to
  the rules defined in {{I-D.tuexen-opsawg-pcapng}}, section "Options")
  can be present.


Aside from the options defined in {{I-D.tuexen-opsawg-pcapng}},
section "Options" (opt_endofopt, opt_comment, opt_custom, ...),
the following options are valid within this block:

| Name | Code | Length | Multiple allowed? |
| jeb_timestamp | 2 | 12 | no |
{: #options_jeb title='Journal Export Block Options'}



~~~~
                        1                   2                   3
    0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 0 |                    Option Type = 0x00000002                   |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 4 |                    Timestamp Seconds (High)                   |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 8 |                    Timestamp Seconds (Low)                    |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
12 |                     Timestamp Nanoseconds                     |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
~~~~
{: #format_jeb_timestamp title='Journal Export Block Timestamp Format' artwork-align="center"}

{: indent='8'}
jeb_timestamp:
: This option allows providing an extended precision timestamp for the
  captured journal entry.  While microsecond resolution is a good choice
  for general system logging, debugging and tracing use cases covered by
  pcap-ng benefit from more precise timestamps to correlate other events.

  The timestamp is in units of that have elapsed since 1970-01-01 00:00:00 UTC.
  Note that these are 3 32-bit fields using the endianness indicated by the
  Section Header Block.  The third word is always nanoseconds and unaffected by
  timestamp resolution options elsewhere.

  Even if this option is used, the __REALTIME_TIMESTAMP field MUST still be
  present in the journal entry.  The two items SHOULD have the same value
  (ignoring the difference in precision).
{: vspace='0'}


## Alternative Packet Blocks (experimental)

Can some other packet blocks (besides the ones described in the
previous paragraphs) be useful?


## Compression Block (experimental)

The Compression Block is optional. A file can contain an arbitrary
number of these blocks. A Compression Block, as the name says, is used
to store compressed data. Its format is shown in {{formatcb}}.


~~~~
                        1                   2                   3
    0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 0 |                        Block Type = ?                         |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 4 |                      Block Total Length                       |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 8 |  Compr. Type  |                                               /
   +-+-+-+-+-+-+-+-+                                               /
   /                                                               /
   /                       Compressed Data                         /
   /                                                               /
   /  variable length, octet-aligned and padded to end on a 32-bit /
   /                         boundary                              /
   /                                                               /
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
   |                      Block Total Length                       |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
~~~~
{: #formatcb title='Compression Block Format' artwork-align="left"}

The fields have the following meaning:

* Block Type: The block type of the Compression Block is not yet
  assigned.

* Block Total Length: total size of this block, as described in {{I-D.tuexen-opsawg-pcapng}}, section "Section Blocks".

* Compression Type (8 bits): an unsigned integer that
  specifies the compression algorithm.  Possible values for
  this field are 0 (uncompressed), 1 (Lempel-Ziv), 2 (Gzip),
  other?? Probably some kind of dumb and fast compression
  algorithm could be effective with some types of traffic (for
  example web), but which?

* Compressed Data: data of this block. Once decompressed, it is
  made of other blocks.



## Encryption Block (experimental)

The Encryption Block is optional. A file can contain an arbitrary
number of these blocks. An Encryption Block is used to store encrypted
data. Its format is shown in {{formateb}}.


~~~~
                        1                   2                   3
    0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 0 |                        Block Type = ?                         |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 4 |                      Block Total Length                       |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 8 |   Encr. Type  |                                               /
   +-+-+-+-+-+-+-+-+                                               /
   /                                                               /
   /                       Encrypted Data                          /
   /                                                               /
   /                 variable length, octet-aligned                /
   /                                                               /
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
   |                      Block Total Length                       |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
~~~~
{: #formateb title='Encryption Block Format' artwork-align="left"}

The fields have the following meaning:

* Block Type: The block type of the Encryption Block is not yet
  assigned.

* Block Total Length: total size of this block, as described in {{I-D.tuexen-opsawg-pcapng}}, section "Section Blocks".

* Encryption Type (8 bits): an unsigned integer that
  specifies the encryption algorithm.  Possible values for
  this field are ??? (TODO) NOTE: this block should probably
  contain other fields, depending on the encryption algorithm.
  To be defined precisely.

* Encrypted Data: data of this block. Once decrypted, it
  originates other blocks.



## Fixed Length Block (experimental)

The Fixed Length Block is optional. A file can contain an arbitrary
number of these blocks. A Fixed Length Block can be used to optimize
the access to the file. Its format is shown in {{formatflm}}. A Fixed Length Block stores records with
constant size. It contains a set of Blocks (normally Enhanced Packet
Blocks or Simple Packet Blocks), of which it specifies the size.
Knowing this size a priori helps to scan the file and to load some
portions of it without truncating a block, and is particularly useful
with cell-based networks like ATM.


~~~~
                        1                   2                   3
    0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 0 |                        Block Type = ?                         |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 4 |                      Block Total Length                       |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 8 |          Cell Size            |                               |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+                               /
   /                                                               /
   /                        Fixed Size Data                        /
   /                                                               /
   /                 variable length, octet-aligned                /
   /                                                               /
   /                                                               /
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
   |                      Block Total Length                       |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
~~~~
{: #formatflm title='Fixed Length Block Format' artwork-align="left"}

The fields have the following meaning:

* Block Type: The block type of the Fixed Length Block is not yet
  assigned.

* Block Total Length: total size of this block, as described in {{I-D.tuexen-opsawg-pcapng}}, section "Section Blocks".

* Cell size (16 bits): an unsigned integer that indicates the
  size of the blocks contained in the data field.

* Fixed Size Data: data of this block.



## Directory Block (experimental)

If present, this block contains the following information:

* number of indexed packets (N)

* table with position and length of any indexed packet (N
  entries)


A directory block MUST be followed by at least N packets, otherwise
it MUST be considered invalid. It can be used to efficiently load
portions of the file to memory and to support operations on memory
mapped files. This block can be added by tools like network analyzers
as a consequence of file processing.


## Traffic Statistics and Monitoring Blocks (experimental)

One or more blocks could be defined to contain network statistics
or traffic monitoring information. They could be use to store data
collected from RMON or Netflow probes, or from other network
monitoring tools.


## Event/Security Block (experimental)

This block could be used to store events. Events could contain
generic information (for example network load over 50%, server
down...) or security alerts. An event could be:

* skipped, if the application doesn't know how to do with it

* processed independently by the packets. In other words, the
  applications skips the packets and processes only the alerts

* processed in relation to packets: for example, a security tool
  could load only the packets of the file that are near a security
  alert; a monitoring tool could skip the packets captured while the
  server was down.




# Security Considerations

TBD.


# IANA Considerations

TBD.

\[Open issue: decide whether the block types, option types, NRB Record
types, etc. should be IANA registries. And if so, what the IANA policy
for each should be (see RFC 5226)]

# Contributors

Loris Degioanni and Gianluca Varenni were coauthoring this document
before it was submitted to the IETF.


# Acknowledgments

The authors wish to thank
Anders Broman,
Ulf Lamping,
Richard Sharpe
and many others for their invaluable comments.


