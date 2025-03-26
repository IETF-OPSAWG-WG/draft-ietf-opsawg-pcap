---
stand_alone: true
ipr: trust200902
docname: draft-ietf-opsawg-pcaplinktype-latest
cat: info
stream: IETF
pi:
  symrefs: 'yes'
  toc: 'yes'
  compact: 'yes'
  subcompact: 'no'
  inline: 'yes'
  sortrefs: 'no'
  strict: 'yes'
title: Link-Layer Types for PCAP-related Capture File Formats
abbrev: pcaplinktype
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
informative:
  TCPDUMP:
    title: LINK-LAYER HEADER TYPES
    date: false
    target: https://www.tcpdump.org/linktypes.html

  LIBPCAP:
    title: libpcap
    date: false
    target: https://github.com/the-tcpdump-group/libpcap

  Wireshark:
    title: Homepage of Wireshark
    date: false
    target: https://www.wireshark.org

  3GPP-TS-04.64:
    title: >
      Digital cellular telecommunications system (Phase 2+); General
      Packet Radio Service (GPRS); Mobile Station - Serving GPRS Support
      Node (MS-SGSN) Logical Link Control (LLC) layer specification
    date: false
    refcontent: 3GPP TS 04.64

  3GPP-TS-25.321:
    title: >
      Universal Mobile Telecommunications System (UMTS); Medium Access
      Control (MAC) protocol specification
    date: false
    refcontent: 3GPP TS 25.321

  3GPP-TS-25.427:
    title: >
      Universal Mobile Telecommunications System (UMTS); UTRAN Iub/Iur
      interface user plane protocol for DCH data streams
    date: false
    refcontent: 3GPP TS 25.427

  3GPP-TS-25.435:
    title: >
      Universal Mobile Telecommunications System (UMTS);
      UTRAN Iub interface user plane protocols for Common Transport
      Channel data streams
    date: false
    refcontent: 3GPP TS 25.435

  3GPP-TS-27.010:
    title: >
      Digital cellular telecommunications system (Phase 2+) (GSM);
      Universal Mobile Telecommunications System (UMTS); Terminal
      Equipment to Mobile Station (TE-MS) multiplexer protocol
    date: false
    refcontent: 3GPP TS 27.010

  A/330:
    title: >
      ATSC 3.0 System
    refcontent: ATSC Standard A/300
    target: https://www.atsc.org/atsc-documents/type/3-0-standards/

  AIM-628:
    author:
    - fullname: David A. Moon
      org: MIT Artificial Intelligence Laboratory
    title: Chaosnet
    date: June 1981
    refcontent: MIT A.I. Memo No. 628
    target: http://www.bitsavers.org/pdf/mit/ai/AIM-628_chaosnet.pdf

  ASHRAE-135:
    title: >
      BACnet(TM): A Data Communication Protocol for Building Automation
      and Control Networks
    date: false
    refcontent: ANSI/ASHRAE Standard 135

  ATA-878.1-1999:
    title: ATA 878.1 - 1999 Local Area Network - Token Bus
    date: 1999
    refcontent: ARCNET Trade Association standard 878.1-1999
    target: https://web.archive.org/web/20100414154838/http://www.arcnet.com/resources/ata8781.pdf

  Auerswald-Logger:
    title: Packet structure
    target: https://github.com/Auerswald-GmbH/auerlog/blob/master/auerlog.txt

  AVS:
    author:
      fullname: Solomon Peachy
    title: AVS Capture Frame Format Version 2
    date: false
    target: http://web.archive.org/web/20040803232023/http://www.shaftnet.org/~pizza/software/capturefrm.txt

  AX.25:
    author:
    - fullname: William A. Beech
      ins: W. A. Beech
      org: ""
    - fullname: Douglas E. Nielsen
      ins: D. E. Nielsen
      org: ""
    - fullname: Jack Taylor
      ins: J. Taylor
      org: ""
    title: AX.25 Link Access Protocol for Amateur Packet Radio Version 2.2
    date: July 1998
    target: https://www.ax25.net/AX25.2.2-Jul%2098-2.pdf

  Bluetooth-Core:
    title: Bluetooth Core Specification

  D-Bus:
    title: D-Bus Specification
    date: false
    author:
    - fullname: Havoc Pennington
      ins: H. Pennington
      org: Red Hat, Inc.
    - fullname: Anders Carlsson
      ins: A. Carlsson
      org: CodeFactory AB
    - fullname: Alexander Larsson
      ins: A. Larsson
      org: Red Hat, Inc.
    - fullname: Sven Herzberg
      ins: S. Herzberg
      org: Imendio AB
    - fullname: Simon McVittie
      ins: S. McVittie
      org: Collabora Ltd.
    - fullname: David Zeuthen
      ins: D. Zeuthen
      org: ""
    target: https://dbus.freedesktop.org/doc/dbus-specification.html

  DNP3:
    title: >
      IEEE Standard for Electric Power Systems
      Communications-Distributed Network Protocol (DNP3)
    refcontent: IEEE Std 1815

  DOCSIS-4.0-MULP:
    title: DOCSIS 4.0 MAC and Upper Layer Protocols Interface Specification
    date: false
    target: https://www.cablelabs.com/specifications/CM-SP-MULPIv4.0

  DOCSIS-XRA:
    title: Excentis XRA Header Definition
    date: false
    target: https://support.excentis.com/knowledge/article/45

  Draft-ATA-878.2:
    title: Draft ATA 878.2 ARCNET Packet Fragmentation Standard Version 1.4
    date: 1992
    refcontent: ARCNET Trade Association draft standard 878.2
    target: https://web.archive.org/web/20100414154914/http://www.arcnet.com/resources/ata8782.pdf

  DVB-CI:
    title: >
      Common Interface Specification for Conditional Access and other
      Digital Video Broadcasting Decoder Applications
    date: false
    target: https://dvb.org/?standard=common-interface-specification-for-conditional-access-and-other-digital-video-broadcasting-decoder-applications

  DVB-CI-PCAP:
    title: PCAP format for DVB-CI
    author:
    - fullname: Martin Kaiser
      ins: M. Kaiser
      org: ""
    date: January 2, 2021
    target: https://www.kaiser.cx/pcap-dvbci/

  EBHSCR:
    title: Documentation EBHSCR
    date: false
    target: http://www.elektrobit.com/ebhscr

  ETSI-TS-103-636-4:
    title: >
      DECT-2020 New Radio (NR); Part 4: MAC layer; Release 2
    refcontent: ETSI TS 13 636-4

  ERF:
    title: ERF Types Reference Guide
    date: false
    target: https://www.endace.com/erf-extensible-record-format-types.pdf

  Exegin-802.15.4-TAP:
    title: IEEE 802.15.4 TAP Link Type Specification
    date: false
    target: https://gitlab.com/exegin/ieee802-15-4-tap

  Exegin-Z-Wave-G.9959-TAP:
    author:
    - fullname: Chris Brandson
    title: Z-Wave G.9959 TAP Link Type Specificatino
    date: false
    target: https://gitlab.com/exegin/zwave-g9959-tap

  FC-FS-5:
    title: >
      Fibre Channel - Framing and Signaling - 5
    date: April 30, 2019
    refcontent: INCITS 545-2019

  FD.io-VPP:
    title: VNET (VPP Network Stack)
    date: false
    target: https://fdio-vpp.readthedocs.io/en/latest/gettingstarted/developers/vnet.html

  FRF.12:
    title: Frame Relay Fragmentation Implementation Agreement - FRF.12
    date: December 1997
    target: https://web.archive.org/web/20160426183112/https://www.broadband-forum.org/technical/download/FRF.12/frf12.pdf

  FRF.16.1:
    title: Multilink Frame Relay UNI/NNI Implementation Agreement FRF.16.1
    date: May 2002
    target: https://web.archive.org/web/20160427004354/https://www.broadband-forum.org/technical/download/FRF.16/frf16.1.pdf

  G.7041:
    title: >
      Generic Framing Procedure
    date: false
    refcontent: ITU-T Recommendation G.7041/Y.1303
    target: https://www.itu.int/rec/T-REC-G.7041/en

  G.9959:
    title: >
      Short range narrow-band digital radiocommunication transceivers -
      PHY, MAC, SAR and LLC layer specifications
    date: false
    refcontent: ITU-T Recommendation G.9959
    target: https://www.itu.int/rec/T-REC-G.9959/en

  H.222.0:
    title: >
      Information technology - Generic coding of moving pictures and
      associated audio information: Systems
    refcontent: ITU-T Recommendation H.222.0
    date: false
    target: https://www.itu.int/rec/T-REC-H.222.0

  IEC-62106-1:
    title: >
      Radio data system (RDS) - VHF/FM sound broadcasting in the
      frequency range from 64,0 MHz to 108,0 MHz - Part 1: Modulation
      characteristics and baseband coding
    refcontent: IEC 62106-1

  IEEE-802.15.4:
    title: IEEE Standard for Low-Rate Wireless Networks
    refcontent: IEEE Std 802.15.4

  IEEE-C37.118.1:
    title: IEEE Standard for Synchrophasor Measurements for Power Systems
    refcontent: IEEE C37.118.1

  IrLAP-1.1:
    title: Serial Infrared Link Access Protocol (IrLAP) Version 1.1
    date: June 16, 1996
    target: https://archive.org/details/ir-lap-11

  ISO-14443-PCAP:
    title: PCAP format for ISO14443
    author:
    - fullname: Martin Kaiser
      ins: M. Kaiser
      org: ""
    date: January 2, 2021
    target: https://www.kaiser.cx/posts/pcap-iso14443/

  ISO-17458-2:
    title: >
      Road vehicles - FlexRay communications system - Part 2:
      Data link layer specification
    refcontent: ISO 17458-2

  ISO-17987-2:
    title: >
      Road Vehicles - Local Interconnect Network (LIN) - Part 2:
      Transport protocol and network layer services
    refcontent: ISO 17987-2

  ISO-17987-3:
    title: >
      Road Vehicles - Local Interconnect Network (LIN) - Part 3:
      Protocol specification
    refcontent: ISO 17987-3

  KISS:
    title: The KISS TNC - A simple Host-to-TNC communications protocol
    date: false
    target: https://www.ax25.net/kiss.aspx

  Linux-CAN-errors:
    title: Linux `uapi/linux/can/error.h` header
    target: https://github.com/torvalds/linux/blob/master/include/uapi/linux/can/error.h

  LLCP-1.4:
    author:
      org: NFC Forum
    title: >
      Logical Link Control Protocol Technical Specification Version 1.4
    date: December 2022
    target: https://nfc-forum.org/build/specifications

  LoRaTap:
    title: LoRaTap
    date: false
    target: https://github.com/eriknl/LoRaTap/blob/master/README.md

  LoRaWAN-Link-Layer-1.0.4:
    title: LoRaWAN L2 1.0.4 Specification
    date: October 2020
    target: https://lora-alliance.org/resource_hub/lorawan-104-specification-package/

  MDB-PCAP:
    author:
    - fullname: Martin Kaiser
      ins: M. Kaiser
      org: ""
    title: PCAP format for MDB
    date: August 7, 2023
    target: https://www.kaiser.cx/posts/pcap-mdb/

  Modbus:
    title: Modbus Specification and Implementation Guides
    target: https://www.modbus.org/specs.php

  MS-DTYP:
    title: Windows Data Types
    target: https://learn.microsoft.com/en-us/openspecs/windows_protocols/ms-dtyp/cca27429-5689-4a16-b2b4-9325d93e4ba2
    refcontent: [MS-DTYP]

  OpenVizsla:
    title: OpenVizsla protocol description
    date: August 22, 2018
    target: https://github.com/matwey/libopenvizsla/wiki/OpenVizsla-protocol-description

  PracConsEthDesign:
    title: Practical Considerations in Ethernet Local Network Design
    date: February 1980
    author:
    - fullname: Ronald C. Crane
      org: Xerox Palo Alto Research Center
    - fullname: Edward A. Taft
      org: Xerox Palo Alto Research Center
    target: http://bitsavers.org/pdf/xerox/ethernet_3mb/Practical_Considerations_in_Ethernet_Local_Network_Design_Feb1980.pdf

  PPI:
    title: Per-Packet Information Header Specification
    date: May 16, 2007
    target: https://web.archive.org/web/20160328114748/http://www.cacetech.com/documents/PPI%20Header%20format%201.0.7.pdf

  Prism:
    title: Prism Header
    target: https://web.archive.org/web/20230323070544/http://www.martin.cc/linux/prism

  Q.2110:
    title: >
      B-ISDN ATM adaptation layer - Service specific connection oriented
      protocol (SSCOP)
    refcontent: ITU-T Recommendation Q.2110
    target: https://www.itu.int/rec/T-REC-Q.2110/en/

  Q.703:
    title: >
      Specifications of Signalling System No. 7
      Signalling Link
    refcontent: ITU-T Recommendation Q.703
    date: false
    target: https://www.itu.int/rec/T-REC-Q.703/en/

  Q.704:
    title: >
      Specifications of Signalling System No. 7
      Signalling Network Functions And Messages
    refcontent: ITU-T Recommendation Q.704
    date: false
    target: https://www.itu.int/rec/T-REC-Q.704/en/

  Q.711:
    title: >
      Specifications of Signalling System No. 7
      Functional description of the signalling connection control part
    refcontent: ITU-T Recommendation Q.711
    date: false
    target: https://www.itu.int/rec/T-REC-Q.711/en/

  Q.712:
    title: >
      Specifications of Signalling System No. 7
      Definition and function of signalling connection control part messages
    refcontent: ITU-T Recommendation Q.712
    date: false
    target: https://www.itu.int/rec/T-REC-Q.712/en/

  Q.713:
    title: >
      Specifications of Signalling System No. 7
      Signalling connection control part functions and codes
    refcontent: ITU-T Recommendation Q.713
    date: false
    target: https://www.itu.int/rec/T-REC-Q.713/en/

  Q.714:
    title: >
      Specifications of Signalling System No. 7
      Signalling connection control part procedures
    refcontent: ITU-T Recommendation Q.714
    date: false
    target: https://www.itu.int/rec/T-REC-Q.714/en/

  Q.920:
    title: >
      Digital Subscriber Signalling System No. 1 (DSS1) - ISDN
      User-Network Interface Data Link Layer - General aspects
    refcontent: ITU-T Recommendation Q.920
    date: false
    target: https://www.itu.int/rec/T-REC-Q.920/en/

  Q.921:
    title: >
      ISDN user-network interface - Data Link Layer specification
    refcontent: ITU-T Recommendation Q.921
    date: false
    target: https://www.itu.int/rec/T-REC-Q.921/en/

  Q.922:
    title: >
      ISDN data link layer specification for frame mode bearer services
    refcontent: ITU-T Recommendation Q.922
    date: false
    target: https://www.itu.int/rec/T-REC-Q.922/en/

  Radiotap:
    author:
      org: radiotap.org
    title: Radiotap Web site
    date: false
    target: https://www.radiotap.org

  Silabs-Debug-Channel:
    title: Silabs Debug Channel Format
    target: https://github.com/SiliconLabs/java_packet_trace_library/blob/master/doc/debug-channel.md

  STANAG-5066:
    title: >
      Profile for Maritime High Frequency (HF) Radio Data Communications
    refcontent: STANAG 5066
    date: false
    target: https://web.archive.org/web/20051004082010/http://www.armymars.net/ArmyMARS/HF-Email/resources/stanag5066.pdf

  USB-2.0:
    title: Universal Serial Bus Specification Revision 2.0
    date: April 27, 2000
    target: https://www.usb.org/document-library/usb-20-specification

  USBPcap:
    title: USBPcap Capture format specification
    date: false
    target: https://desowin.org/usbpcap/captureformat.html

  X.25:
    title: >
      Interface between Data Terminal Equipment (DTE) and Data
      Circuit-terminating Equipment (DCE) for terminals operating in the
      packet mode and connected to public data networks by dedicated
      circuit
    refcontent: ITU-T Recommendation X.25
    target: https://www.itu.int/rec/T-REC-X.25/en/

  ZBOSS:
    title: ZBOSS NCP Serial Protocol
    date: May 12, 2023
    target: https://web.archive.org/web/20240823121741/https://cloud.dsr-corporation.com/s/BAn4LtRWbJjFiAm/download/ZBOSS_NCP_Serial_Protocol_1_5.pdf

  Z_WAVE_SERIAL:
    title: Z-Wave Serial API Host Application Programming Guide
    date: false
    target: https://www.silabs.com/documents/public/user-guides/INS12350-Serial-API-Host-Appl.-Prg.-Guide.pdf

--- abstract

This document describes a set of PCAP-related LINKTYPE values and
creates an IANA registry for those values.

--- middle

# Introduction

In the late 1980's, Van Jacobson, Steve McCanne, and others at the
Network Research Group at Lawrence Berkeley National Laboratory
developed the tcpdump program to capture and dissect network traces.
The code to capture traffic, using low-level mechanisms in various
operating systems, and to read and write network traces to a file was
later put into a library named libpcap {{LIBPCAP}}.

Other documents describe the original (legacy) file format used by
tcpdump (PCAP, {{?I-D.ietf-opsawg-pcap}}), as well as a revised file
format {{?I-D.ietf-opsawg-pcapng}}, which are used by tcpdump and
Wireshark {{Wireshark}}.

Within those file formats each packet that is captured is indicated by a
LINKTYPE value.  The LINKTYPE value selects one of many hundred formats
for metadata and Layer 2 encapsulation of the packet.

This document describes the metadata and Layer 2 encapsulation formats
for a set of LINKTYPE values and creates an IANA registry for LINKTYPE
values, establishing the IANA Considerations by which other uses of the
PCAP-related formats may register new LINKTYPE values.

# Terminology

{::boilerplate bcp14}

#  IANA Considerations

## PCAP Registry {#pcapreg}

IANA is requested to create a new registry group entitled "The PCAP Registry".

## LinkType Registry {#linktype}

IANA is also requested to create a registry entitled "PCAP-related LinkType List" under The PCAP registry group ({{pcapreg}}).

The registry has the following structure:

* LINKTYPE Name: Indicates the symbolic name for this LinkType. The name is prefixed with "LINKTYPE_" (i.e., LINKTYPE_something).
* LINKTYPE Value: Indicates the 16-bit unsigned integer assigned for this LinkType.
* Description: Provides a very short description.
* Reference: Indicates an authoritative document reference for the LinkType or a requester reference.

The policy allocation for the LinkType values is as follows:

* Values from 32768 to 65000 must be allocated via Specification Required ({{Section 4.6 of !RFC8126}}). Guidance for Designated Experts is provided in {{sec-de}}.

* Values from 0 to 32767 are allocated following a First-Come First-Served policy ({{Section 4.4 of !RFC8126}}).  Note that this category includes the historical allocations which have an uneven level of definition.

* Values from 65001 to 65535 are reserved for Private Use ({{Section 4.1 of !RFC8126}}).

The initial version of the registry is provided in {{sec-initial}}.  In each
case here, the reference should be set to
{{TCPDUMP}} and the RFC number to be assigned to this document, which is not repeated each time.

The initial contents of the table are based upon the Link type list maintained by
libpcap, and published on {{TCPDUMP}}.

Note that historically, values were assigned incrementally following First Come First Served (FCFS) policy, with a preference for a public specification, but with no mandate.
Some historical values may have less specification than desired.

LinkType values 147 to 162 named LINKTYPE\_RESERVED\_xx were originally reserved for Private Use. Their use is Deprecated in favour of the values in the 65001-65535 range.

In general, Private Use values should never leak out of the entity that uses it.
As the FCFS range is large and easily obtained, official values are recommended.

> There is often an associated Data Link Type (DLT) value which is often identical in value, but not universally so. DLT values are associated with specific operation system captures, and are operating system specific, and are thus not subject to standardization.

### Initial Values {#sec-initial}

This is the initial table for the registry:

{::include linktypes.md}


### Guidance for Designated Experts {#sec-de}

When processing a request for a Specification Required allocation the Designated Experts are expected to be able to find the relevant specification at a clearly stable URL.
It is noted that many enterprise web sites do not maintain URLs over a long period of time, and a documented in a "wp-uploaded" section is highly likely to disappear.
In addition specifications that require a reader to click through any kind of marketing or legal agreement are not considered public.

The specification needs to be clearly written, and when the contents of the link type can contain an IPv4 or IPv6 header, then the octets between the beginning of the link type and the IP header needs to be very clearly specified in that document.

Specifications that are not publicly available, but which may be obtained via liaison agreements (such as to ITU-T, 3GPP, IEEE, etc.) are acceptable particularly if the specification document will be public eventually, but are discouraged.
For other documents, the Designated Expert will need use their judgement, or consult the OPSAWG or an Area Director.

Linktypes may be allocated for specifications not publicly available may be made within the FCFS range.
This includes specifications that might be classified.
The minimal requirement is to provide a contact person for that link type.

# Detailed Descriptions

Link layer formats for which there are no external reference are
described here.

## LINKTYPE_APPLE_IP_OVER_IEEE1394

### Packet structure

    +---------------------+
    | Destination address |
    |      (8 Octets)     |
    +---------------------+
    |    Source address   |
    |      (8 Octets)     |
    +---------------------+
    |     Packet type     |
    |      (2 Octets)     |
    +---------------------+
    |       Payload       |
    .                     .
    .                     .
    .                     .

### Description

The destination and source addresses are the EUI-64 IEEE 1394 addresses of
the destination and source of the packet.  The packet type is an
Ethernet type, in big-endian byte order.

## LINKTYPE_BLUETOOTH_BREDR_BB

### Packet structure

    +---------------------------+
    |         RF Channel        |
    |         (1 Octet)         |
    +---------------------------+
    |        Signal Power       |
    |         (1 Octet)         |
    +---------------------------+
    |        Noise Power        |
    |         (1 Octet)         |
    +---------------------------+
    |    Access Code Offenses   |
    |         (1 Octet)         |
    +---------------------------+
    |   Payload Transport Rate  |
    |         (1 Octet)         |
    +---------------------------+
    |   Corrected Header Bits   |
    |         (1 Octet)         |
    +---------------------------+
    |  Corrected Payload Bits   |
    |        (2 Octets)         |
    +---------------------------+
    |    Lower Address Part     |
    |        (4 Octets)         |
    +---------------------------+
    |       Reference LAP       |
    |        (3 Octets)         |
    +---------------------------+
    |       Reference UAP       |
    |         (1 Octet)         |
    +---------------------------+
    |     BT Packet Header      |
    |        (4 Octets)         |
    +---------------------------+
    |          Flags            |
    |        (2 Octets)         |
    +---------------------------+
    |    BR or EDR Payload      |
    .                           .
    .                           .
    .                           .

### Description

All multi-octet fields are expressed in little-endian format.  Fields
with a corresponding Flags bit are only considered valid when the bit is
set.

The RF Channel field ranges 0 to 78.  It reflects the value described in
Volume 2, Part A, Section 2 "Frequency bands and channel arrangement" of
{{Bluetooth-Core}}.

The Signal Power and Noise Power fields are signed integers expressing
values in dBm.

The Access Code Offenses field is an unsigned integer indicating the
number of deviations from the valid access code that led to the packet
capture.  Access codes are interpreted as described in Volume 2, Part B,
Section 6.3 "Access code" of {{Bluetooth-Core}}.

The Payload Transport Rate field represents a column in Volume 2, Part
B, Section 6.5 "Packet types", Table 6.2 of {{Bluetooth-Core}}, and is
interpreted as two nibbles as follows.

* `0x.0` indicates the BT payload was BR and captured with GFSK
  demodulation
* `0x.1` indicates the BT payload was EDR and captured with PI/2-DQPSK
  demodulation
* `0x.2` indicates the BT payload was EDR and captured with 8DPSK
  demodulation
* `0x0.` indicates the packet logical transport is any (link parameters
  unknown)
* `0x1.` indicates the packet logical transport is SCO
* `0x2.` indicates the packet logical transport is eSCO
* `0x3.` indicates the packet logical transport is ACL
* `0x4.` indicates the packet logical transport is CSB
* `0xff` indicates this is an ID packet so BT Packet Header is ignored
  and there is no payload

All other values of the Payload Transport Rate field are reserved.

The Corrected Header Bits field is an unsigned integer indicating the
number of corrected bits in the 18-bit BT Packet Header.  The valid
range is 0 to 18.

The Corrected Payload Bits field is a signed integer indicating the
number of errored and corrected bits in the captured BT payload.
Interpretation of this field corresponds to the Payload Transport Rate.
The value ranges from 0 to 80 when the BT payload was captured at R=1/3
as per Volume 2, Part B, Section 7.4 of {{Bluetooth-Core}}.  The value
ranges from -360 to +180 when the BT payload was captured at R=2/3 as
per Volume 2, Part B, Section 7.5 of {{Bluetooth-Core}}.  A negative
number indicates the field absolute value is the sum of the number of
corrected and uncorrectable bits.

The Lower Address Part field is the 24-bit value recovered from the
captured SYNC WORD as defined in Volume 2, Part B, Section 6.3.3 of
{{Bluetooth-Core}}.  The most significant octet of this field is
reserved and MUST be zero.

The Reference LAP field corresponds to the Lower Address Part configured
into the capture tool that led to the capture of this packet.

The Reference UAP field corresponds to the Upper Address Part configured
into the capture tool and corresponds to the Reference LAP.

The BT Packet Header field is the 18-bit value recovered from the packet
capture, and is defined in Volume 2, Part B, Section 6.4 of
{{Bluetooth-Core}}.  The most significant 14 bits are reserved and MUST
be zero.

The Flags field represents packed bits defined as follows.

* `0x0001` indicates the BT Packet Header and BR or EDR Payload are
  de-whitened
* `0x0002` indicates the Signal Power field is valid
* `0x0004` indicates the Noise Power field is valid
* `0x0008` indicates the BR or EDR Payload is decrypted
* `0x0010` indicates the Reference LAP is valid and led to this packet
  being captured
* `0x0020` indicates the BR or EDR Payload is present and follows this
  field
* `0x0040` indicates the RF Channel field is subject to aliasing
* `0x0080` indicates the Reference UAP field is valid for HEC and CRC
  checking
* `0x0100` indicates the HEC portion of the BT Packet Header was checked
* `0x0200` indicates the HEC portion of the BT Packet Header passed its
  check
* `0x0400` indicates the CRC portion of the BR or EDR Payload was checked
* `0x0800` indicates the CRC portion of the BR or EDR Payload passed its
  check
* `0x1000` indicates the MIC portion of the decrypted BR or EDR Payload
  was checked
* `0x2000` indicates the MIC portion of the decrypted BR or EDR Payload
  passed its check

All other bit positions of the Flags field are reserved and MUST be zero.

The decoded BR or EDR Payload optionally follows the previous fields,
and is formatted as detailed in Volume 2, Part B, Section 6 of
{{Bluetooth-Core}}.  The packet is decoded per Volume 2, Part B, Section
7 of {{Bluetooth-Core}}.  All multi-octet values in the BR or EDR
Payload are always expressed in little-endian format, as is the normal
Bluetooth practice.

## LINKTYPE_BLUETOOTH_HCI_H4

### Packet structure

    +---------------------------+
    |   HCI packet indicator    |
    |         (1 Octet)         |
    +---------------------------+
    |          Payload          |
    .                           .
    .                           .
    .                           .

### Description

The HCI packet indicator field contains a packet indicator value, as
specified by Volume 4, Part A, Section 2 "Protocol" of
{{Bluetooth-Core}}.

The payload is an HCI packet, as specified by Volume 4, Part E of
{{Bluetooth-Core}}, of the packet type indicated by the packet indicator
value.

## LINKTYPE_BLUETOOTH_HCI_H4_WITH_PHDR

### Packet structure

    +---------------------------+
    |         Direction         |
    |         (4 Octets)        |
    +---------------------------+
    |   HCI packet indicator    |
    |         (1 Octet)         |
    +---------------------------+
    |          Payload          |
    .                           .
    .                           .
    .                           .

### Description

The Direction field is a 4-octet direction field, in big-endian byte
order, the low-order bit of which is set if the frame was sent from the
host to the controller and clear if the frame was received by the host
from the controller.

The HCI packet indicator field contains a packet indicator value, as
specified by Volume 4, Part A, Section 2 "Protocol" of
{{Bluetooth-Core}}.

The payload is an HCI packet, as specified by Volume 4, Part E of
{{Bluetooth-Core}}, of the packet type indicated by the packet indicator
value.

## LINKTYPE_BLUETOOTH_LE_LL_WITH_PHDR

### Packet structure

    +---------------------------+
    |         RF Channel        |
    |         (1 Octet)         |
    +---------------------------+
    |        Signal Power       |
    |         (1 Octet)         |
    +---------------------------+
    |        Noise Power        |
    |         (1 Octet)         |
    +---------------------------+
    |  Access Address Offenses  |
    |         (1 Octet)         |
    +---------------------------+
    | Reference Access Address  |
    |        (4 Octets)         |
    +---------------------------+
    |          Flags            |
    |        (2 Octets)         |
    +---------------------------+
    |  LE Packet (no preamble)  |
    .                           .
    .                           .
    .                           .

### Description

All multi-octet fields are expressed in little-endian format.  Fields
with a corresponding Flags bit are only considered valid when the bit is
set.

The RF Channel field ranges 0 to 39.  It reflects the value described in
Volume 6, Part A, Section 2 of {{Bluetooth-Core}}.

The Signal Power and Noise Power fields are signed integers expressing
values in dBm.

The Access Address Offenses field is an unsigned integer indicating the
number of deviations from the valid access address that led to the
packet capture.  Access addresses are interpreted as described in
Volume 6, Part B, Section 2.1.2 of {{Bluetooth-Core}}.

The Reference Access Address field corresponds to the Access Address
configured into the capture tool that led to the capture of this packet.

The Flags field represents packed bits defined as follows:

* `0x0001` indicates the LE Packet is de-whitened
* `0x0002` indicates the Signal Power field is valid
* `0x0004` indicates the Noise Power field is valid
* `0x0008` indicates the LE Packet is decrypted
* `0x0010` indicates the Reference Access Address is valid and led to
  this packet being captured
* `0x0020` indicates the Access Address Offenses field contains valid
  data
* `0x0040` indicates the RF Channel field is subject to aliasing
* `0x0380` is an integer bit field indicating the LE Packet PDU type
* `0x0400` indicates the CRC portion of the LE Packet was checked
* `0x0800` indicates the CRC portion of the LE Packet passed its check
* `0x3000` is a PDU type dependent field
* `0xC000` is an integer bit field indicating the LE PHY mode

The PDU types indicated by flag bit field `0x0380` are defined as follows:

* 0 - Advertising or Data (Unspecified Direction)
* 1 - Auxiliary Advertising
* 2 - Data, Master to Slave
* 3 - Data, Slave to Master
* 4 - Connected Isochronous, Master to Slave
* 5 - Connected Isochronous, Slave to Master
* 6 - Broadcast Isochronous
* 7 - Reserved for Future Use

For PDU types other than type 1 (auxiliary advertising), the PDU type
dependent field (using flag bits `0x3000`) indicates the checked status
of the MIC portion of the decrypted packet:

* `0x1000` indicates the MIC portion of the decrypted LE Packet was
  checked
* `0x2000` indicates the MIC portion of the decrypted LE Packet passed
  its check

For PDU type 1 (auxiliary advertising), the PDU type dependent field
(using flag bits `0x3000`) is an integer bit field indicating the
auxiliary advertisement type:

* 0 - `AUX_ADV_IND`
* 1 - `AUX_CHAIN_IND`
* 2 - `AUX_SYNC_IND`
* 3 - `AUX_SCAN_RSP`

The LE PHY modes indicated by flag bit field `0xC000` are defined as
follows:

* 0 - LE 1M
* 1 - LE 2M
* 2 - LE Coded
* 3 - Reserved for Future Use

The LE Packet field follows the previous fields.  All multi-octet values
in the LE Packet are always expressed in little-endian format, as is the
normal Bluetooth practice.

For packets using the LE Uncoded PHYs (LE 1M PHY and LE 2M PHY) as
defined in Volume 6, Part B, Section 2.1 of {{Bluetooth-Core}}, the LE
Packet is represented as the four-octet access address, immediately
followed by the PDU and CRC; it does not include the preamble.

For packets using the LE Coded PHY as defined in Volume 6, Part B,
Section 2.2 of {{Bluetooth-Core}}, the LE Packet is represented as the
four-octet access address, followed by the Coding Indicator (CI), stored
in a one-octet field with the lower 2 bits containing the CI value,
immediately followed by the PDU and the CRC; it does not include the
preamble.  Packets using the LE Coded PHY are represented in an uncoded
form, so the TERM1 and TERM2 coding terminators are not included in the
LE packet field.

## LINKTYPE_BLUETOOTH_LINUX_MONITOR

### Packet structure

    +---------------------------+
    |         Adapter ID        |
    |         (2 Octets)        |
    +---------------------------+
    |           Opcode          |
    |         (2 Octets)        |
    +---------------------------+
    |           Payload         |
    .                           .
    .                           .
    .                           .

### Description

All fields are in big-endian byte order.

The adapter ID field identifies the interface to which the packet
applies. On single-interface systems, this will typically be 0.

The opcode field describes the type of packet.  Its value is:

* `0x00` - New Index Event;
* `0x01` - Delete Index Event;
* `0x02` - HCI Command Packet;
* `0x03` - HCI Event Packet;
* `0x04` - transmitted HCI ACL Data Packet;
* `0x05` - received HCI ACL Data Packet;
* `0x06` - transmitted HCI Synchronous Data Packet;
* `0x07` - received HCI Synchronous Data Packet.

#### New Index Event

A New Index Event is a message that indicates the appearance of a new
interface, with the adapter ID field giving the ID of the new interface.
Its payload has the following format:

    +---------------------------+
    |            Bus            |
    |         (1 Octet)         |
    +---------------------------+
    |           Type            |
    |         (1 Octet)         |
    +---------------------------+
    |          BD_ADDR          |
    |         (6 Octets)        |
    +---------------------------+
    |            Name           |
    |         (8 Octets)        |
    +---------------------------+

The bus field specifies the type of controller:

* `0x00` - BR/EDR;
* `0x01` - AMP.

The type field specifies the transport type of the controller:

* `0x00` - Virtual;
* `0x01` - USB;
* `0x02` - PC Card;
* `0x03` - UART;
* `0x04` - RS-232;
* `0x05` - PCI;
* `0x06` - SDIO.

The BD_ADDR field contains the MAC address of the interface.

The name contains the name of the interface (typically `hci`*N*,
for example: `hci0`).

#### Delete Index Event

A Delete Index Event is a message that indicates the disappearance of
an existing interface, with the adapter ID field giving the ID of the
interface that disappeared.  It has no payload.

#### HCI packets

The remaining types are HCI packets as specified by the Host Controller
Interface Functional Specification portion of the most recent Bluetooth
Core Specification:

* The payload of an HCI Command Packet is as specified by the "HCI Command
Packet" section of that document.

* The payload of an HCI ACL Data Packet is as specified by the "HCI ACL
Data Packets" section of that document.

* The payload of an HCI Command Packet is as specified by the "HCI
Synchronous Data Packets" section of that document.

* The payload of an HCI Command Packet is as specified by the "HCI Event
Packet" section of that document.

## LINKTYPE_CAN_SOCKETCAN

This format supports CAN CC (Classical CAN), CAN FD, and CAN XL frames.
The same header is used for CAN CC and CAN FD frames; a different header
is used for CAN XL frames.

Software that reads `LINKTYPE_CAN_SOCKETCAN` frames MUST
determine the frame type in the following fashion.

* If the original (un-sliced) packet length is less than 8, the
  frame is too short to contain the frame's pseudo-header and is
  invalid.

* Otherwise:

    * If the 5th octet of the frame has the `0x80` bit
      set, the frame is a CAN XL frame. The original (un-sliced) packet
      length MUST be between 13 and 2060; all other CAN XL frames are
      invalid.

    * Otherwise:

      * If the original packet length is 72 or the 6th octet of the
        frame has the `0x04` bit set, the frame is a CAN FD
        frame. The frame length MUST be between 8 and 72; all other CAN
        FD frames are invalid.

      * Otherwise, the frame is a CAN CC frame. The original packet
        length MUST be between 8 and 16; all other CAN CC frames are
        invalid.

### CAN CC and CAN FD frames

#### Packet structure

    +---------------------------+
    |      CAN ID and flags     |
    |         (4 Octets)        |
    +---------------------------+
    |       Payload length      |
    |         (1 Octet)         |
    +---------------------------+
    |     FD flags (CAN FD)     |
    |         (1 Octet)         |
    +---------------------------+
    |      Reserved/Padding     |
    |         (1 Octet)         |
    +---------------------------+
    |     Len 8 DLC (CAN CC)    |
    |         (1 Octet)         |
    +---------------------------+
    |          Payload          |
    .                           .
    .                           .
    .                           .
    +---------------------------+
    |          Padding          |
    .                           .
    .                           .
    .                           .

#### Description

The CAN ID and flags field is in big-endian byte order.
The bottom 29 bits contain the CAN ID of the frame.
The remaining bits are:

* `0x20000000` - set if the frame is an error message rather than a data
  frame (CAN CC only).
* `0x40000000` - set if the frame is a remote transmission request frame
  (CAN CC only).
* `0x80000000` - set if the frame is an extended 29-bit frame rather
  than a standard 11-bit frame.

The payload length indicates the number of octets of payload following
the header.  All packet octets after those octets of payload are
padding.

The FD flags field contains CAN FD specific flags; for CAN CC frames,
this field is 0.  The bits are:

* `CANFD_BRS` (`0x01`) - bit rate switch (second bitrate for payload
  data).
* `CANFD_ESI` (`0x02`) - error state indicator of the transmitting node.
* `CANFD_FDF` (`0x04`) - if set, the frame is a CAN FD frame; if not
  set, the frame might be a CAN CC frame or a CAN FD frame.

The Len 8 DLC value is described for CAN CC frames in section 8.4.2.4
"DLC field" of ISO 11898-1:2015 and has a value range from 9 to 15.  The
Len 8 DLC value is only evaluated when the payload length of the CAN CC
frame is set to 8.

Software that generates `LINKTYPE_CAN_SOCKETCAN` CAN CC and CAN FD
frames:

* Must set the "Payload length" field to a value from 0 to 8 (CAN CC) or
  0 to 64 (CAN FD).
* In the "FD flags" field:
  * in CAN CC frames, MUST clear all bits.
  * in CAN FD frames, MUST set the `CANFD_FDF` bit, set
    or clear the `CANFD_BRS` and `CANFD_ESI`
    appropriately for the frame, and clear all other bits.
* Must set the "Reserved/Padding" field to 0.
* May set a Len 8 DLC value for CAN CC frames or set this field to 0.
* May strip trailing padding octets to save disk space if all above
  statements are satisfied.

For a data frame, the payload is the data field of the CAN CC or CAN FD
packet.

In CAN CC remote retransmission request (RTR) frames, no payload data is
sent on the wire.  But a data length code (DLC) can still be set in
those data-less CAN CC RTR frames.  This length information is then
stored in the payload length and optionally in the Len 8 DLC value.  A
non-zero payload length does therefore not indicate the presence of
payload data.

For an error message, the payload is always 8 octets.  The lower bits of
the CAN ID field contain an error class value, with bits specified by
the first set of `CAN_ERR_` values in {{Linux-CAN-errors}}.  The octets
in the payload are:

* first octet - if arbitration was lost, the bit number in the bitstream
  in which it was lost; otherwise 0.
* second octet - the error status of the CAN controller, with bits
  specified by the `CAN_ERR_CTRL_` bits in {{Linux-CAN-errors}}.
* third octet - flags indicating a CAN protocol error type, with bits
  specified by the `CAN_ERR_PROT_` bits in {{Linux-CAN-errors}}.
* fourth octet - flags indicating a CAN protocol error location, with
  bits specified by the `CAN_ERR_LOC_` bits in {{Linux-CAN-errors}}.
* fifth octet - the error status of the CAN transceiver, with values
  specified by the `CAN_ERR_TRX_` values in {{Linux-CAN-errors}}.
* sixth, seventh, and eighth octets - controller-specific additional
  information.

### CAN XL frames

#### Packet structure

    +---------------------------+
    |      Priority ID/VCID     |
    |         (4 Octets)        |
    +---------------------------+
    |         XL Flags          |
    |         (1 Octet)         |
    +---------------------------+
    |         SDU type          |
    |         (1 Octet)         |
    +---------------------------+
    |       Payload length      |
    |         (2 Octets)        |
    +---------------------------+
    |      Acceptance Field     |
    |         (4 Octets)        |
    +---------------------------+
    |          Payload          |
    .                           .
    .                           .
    .                           .
    +---------------------------+
    |          Padding          |
    .                           .
    .                           .
    .                           .

#### Description

*The Priority ID/VCID field is big-endian, but the payload length and
acceptance field are little-endian.*

The Priority ID/VCID field is in big-endian byte order.
The bottom 11 bits contain the priority of the frame.  The 5 bits above
that are reserved.  The 8 bits above that contain a virtual CAN
network identifier (VCID).  The 8 bits above that are reserved.

The XL Flags field contains CAN XL specific flags.  The bits are:

* `CANXL_SEC` (`0x01`) - Simple Extended Content.
* `CANXL_XLF` (`0x80`) - if set, the frame is a CAN XL frame; if not set,
  the frame is a CAN CC frame or a CAN FD frame.

The SDU type field contains an indication of the higher-layer protocol
used by the payload.  The values of this field are specified by CAN in
Automation (CiA) specification 611-1 "CAN XL higher-layer functions -
Part 1: Definition of service data unit types (SDT)".

The frame payload length is in little-endian byte order.  It indicates
the number of octets of payload following the header.  All packet octets
after those octets of payload are padding.

The Acceptance Field is in little-endian byte order.

Software that generates `LINKTYPE_CAN_SOCKETCAN` CAN XL frames:

* Must set the "Payload length" field to a value from 1 to 2048.
* In the "XL Flags" field:
  * MUST set the `CANXL_XLF` bit.
  * MUST set the `CANFD_SEC` bit as appropriate for the frame and clear all other bits.
* May strip trailing padding octets to save disk space if all above statements are satisfied.

The payload is the data field of the CAN XL packet.

## LINKTYPE_C_HDLC

### Description

Packets are "Cisco HDLC" frames, as specified by {{Section 4.3.1 of
?RFC1547}}.

## LINKTYPE_C_HDLC_WITH_DIR

### Packet structure

    +------------------+
    |     Direction    |
    |     (1 Octet)    |
    +------------------+
    | Cisco HDLC frame |
    .                  .
    .                  .
    .                  .

### Description

The Direction field is zero if the frame was received by the host
that captured the traffic and non-zero if the frame was sent by that
host.

The Cisco HDLC frame is as specified by {{Section 4.3.1 of ?RFC1547}}.

## LINKTYPE_DBUS

### Description

Packets are Raw D-Bus messages, as specified by {{D-Bus}}, starting with
the endianness flag, followed by the message type, etc., but without the
authentication handshake before the message sequence.

## LINKTYPE_DECT_NR

### Description

Packets are DECT-2020 New Radio (NR) MAC layer frames, as per
{{ETSI-TS-103-636-4}}.

The Physical Header Field is always encoded using 80 bits (10 octets).
Broadcast transmissions using 40 bits (5 octets) is padded with 40 zero
bits (5 octets).  When padding is used the Receiver Identity value 0x0000
(reserved address) is used to detect broadcast transmissions

## LINKTYPE_DISPLAYPORT_AUX

### Packet structure

(All fields are 8 bits wide.)

    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    |          Packet Type          |
    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    |             Payload           |
    .                               .
    .                               .
    .                               .

### Packet Type DATA

    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    |        Type DATA(0x00)        |
    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    |  From Sink(0x00)/Source(0x01) |
    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    |        AUX channel data       |
    .                               .
    .                               .
    .                               .

This is the actual Data as specified by the AUX channel transaction
syntax in the VESA DisplayPort (DP) Standard. It is preceded by a
one-octet field indicating whether the Data was sent from the Sink (e.g.
a display) or from the Source (e.g. a graphics card).

### Packet Type EVENT

    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    |        Type EVENT(0x02)       |
    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    |          Input Status         |
    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+

One of the monitored input signals has changed its value.

The Input Status field contains a set of flag bits:

* `0x01` - HPD (Hot Plug Detect)
* `0x02`-`0x80` - Application specific

### Packet Type START

    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    |        Type START(0x03)       |
    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    |          Input Status         |
    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+

A monitor session was started.
Input status encoding as specified in the EVENT packet description.

### Packet Type STOP

    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    |        Type STOP(0x04)        |
    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+

A monitor session was stopped.

## Broadcom switch tag

This tag structure appears in some link-layer types.

### Switch tag structure

The switch tag is 4 octets long.  The first octet of the tag has the
format:

    +----------------------------------------------------------+
    | OPcode[7:5] | OPcode-dependent[4:0]                      |
    +----------------------------------------------------------+

The OPcode field has a value that is one of:

* `0b000`, if the tag is an egress tag, for a packet going from the
switch to the management port;
* `0b001`, if the tag is an ingress tag, for a packet going from the
management port to the switch.

Other values are reserved.

The format for an egress tag is:

    +----------------------------------------------------------+
    | OPcode[7:5] | Traffic class[4:2] | Tag enforcement[1:0]  |
    +----------------------------------------------------------+
    | Time stamp[7] | Unused[6:0]                              |
    +----------------------------------------------------------+
    | Reserved[7:1]                         |Destination map[0]|
    +----------------------------------------------------------+
    | Destination map[7:0]                                     |
    +----------------------------------------------------------+

The traffic class (TC) field values map to 802.1p/CoS traffic classes.

The tag enforcement (TE) field has a value that is one of:

* `0b00`, if there is no enforcement;
* `0b01`, if there is untag enforcement (VLAN untagged packets are
checked against VLAN entries);
* `0b10`, if there is header enforcement.

`0b11` is a reserved value.

The TS bit indicates whether the packets should be timestamped or not by
the switch. That tells the network stack whether to expect PTP packets
to follow.

The destination map is a bit mask of ports to send a packet to; it can be
either one or multiple ports (e.g: broadcast/multicast), and the possible
values are 0 through `0x1ff` (total of 9 ports). The switch takes care of
copying the packet to multiple ports if specified.

The format for an ingress tag is:

    +----------------------------------------------------------+
    | OPcode[7:5] | Reserved[4:0]                              |
    +----------------------------------------------------------+
    | Classification ID[7:0]                                   |
    +----------------------------------------------------------+
    | Reason code[7:0]                                         |
    +----------------------------------------------------------+
    | Traffic class[7:5]  | Source port number[4:0]            |
    +----------------------------------------------------------+

The classification ID is a number from 0 to 255.  Broadcom switches
feature a Compact Field Processor (CFP) which is a TCAM capable of
parsing layer 2, 3 and 4 packets and perform an action which can be:
redirect the packet to a certain queue/port (bypassing traditional
switching decisions), police the packet (e.g.: rate limit it), etc. The
TCAM has 256 entries, so when the packet hits a particular entry due to
a match, it can eventually get copied to the management port and the
classification ID will reflect which TCAM entry index was hit.

The reason code is set when the packets are sent to the management port;
its value is one of:

* 0: mirroring: the CPU is a capturing device.
* 1: MAC SA learning.
* 2: Switching: CPU is the intended destination port for the packet.
* 3: Protocol termination: 802.1 protocol that needs to be terminated
by the CPU, e.g 802.1x/RADIUS.
* 4: Protocol snooping: the CPU needs to look at the packets: IGMP/MLD,
RARP/ARP/DHCP etc.
* 5: Exception processing flooding.

Values of 6 and 7 are reserved.

The traffic class (TC) field values map to 802.1p/CoS traffic classes.

## LINKTYPE_DSA_TAG_BRCM

### Packet structure

    +--------------------------------+
    | Destination Address (6 octets) |
    +--------------------------------+
    |    Source Address (6 octets)   |
    +--------------------------------+
    | Broadcom switch tag (4 octets) |
    +--------------------------------+
    |     Type/Length (2 octets)     |
    +--------------------------------+
    |            Payload             |
    .                                .
    .                                .
    .                                .

### Description

A Broadcom switch tag, as described above, is inserted in the Ethernet
header before the Type/Length field.

## LINKTYPE_DSA_TAG_BRCM_PREPEND

### Packet structure

    +--------------------------------+
    | Broadcom switch tag (4 octets) |
    +--------------------------------+
    | Destination Address (6 octets) |
    +--------------------------------+
    |    Source Address (6 octets)   |
    +--------------------------------+
    |     Type/Length (2 octets)     |
    +--------------------------------+
    |            Payload             |
    .                                .
    .                                .
    .                                .

### Description

A Broadcom switch tag, as described above, is prepended before the
Ethernet header.

## Marvell switch tag

The Marvell (Ethertyped or not) DSA tagged frames contain a
proprietary tag inserted between the source address field and the
type/length field in the Ethernet header.

### Switch tag structure

The DSA tag is 4 octets. It contains the source (or target) switch
device and port or trunk numbers. It is placed in the frame on top
of the standard IEEE tag.

The EDSA tag is 8 octets. It contains a programmable Ethernet type,
two reserved octets (always 0), and a standard DSA tag.

         7   6   5   4   3   2   1   0
       .   .   .   .   .   .   .   .   .
     0 +---+---+---+---+---+---+---+---+  --
       |  Prog. DSA Ether Type [15:8]  |  |
    +1 +---+---+---+---+---+---+---+---+  |
       |  Prog. DSA Ether Type [7:0]   |  | EDSA tag
    +1 +---+---+---+---+---+---+---+---+  |
       |     Reserved (0x00 0x00)      |  |
    +2 +---+---+---+---+---+---+---+---+  |  --
       | Mode  |b29|   Switch Device   |  |  |
    +1 +---+---+---+---+---+---+---+---+  |  |
       |    Switch Port    |b18|b17|b16|  |  |
    +1 +---+---+---+---+---+---+---+---+  |  | DSA tag
       | PRI [2:0] |b12|  VID [11:8]   |  |  |
    +1 +---+---+---+---+---+---+---+---+  |  |
       |           VID [7:0]           |  |  |
    +1 +---+---+---+---+---+---+---+---+  -- --

#### To_CPU frame mode (ingress)
The DSA tag mode `0x0` describes a To_CPU frame.

If the `b29` bit is set, the original frame contained an IEEE tag
converted into a DSA tag, otherwise the frame was originally untagged
and the DSA tag was added to the frame.

The switch device and port bits define the numbers of the original
source device and port where the frame first ingressed.

Bits `b18`, `b17` and `b12` are the frame
type code bits 2, 1 and 0 respectively, describing the kind of To_CPU frame:

* `0x0` for BPDU (MGMT) Trap
* `0x1` for Frame2Reg Response
* `0x2` for IGMP/MLD Trap
* `0x3` Policy Trap
* `0x4` for ARP Mirror
* `0x5` Policy Mirror

The `b16` bit is the original frame's CFI bit if it was IEEE tagged.

The PRI bits define the priority assigned to the frame when it entered
the source device.

The VID bits define the VLAN identifier assigned to the frame when
it entered the source device.

#### From_CPU frame mode (egress)
The DSA tag mode `0x1` describes a From_CPU frame.

If the `b29` bit is set, the frame egresses the target port with an
IEEE tag, otherwise the frame egresses the target port untagged.

The switch device and port bits define the numbers of the target
device and port where the frame must egress.

The `b16` bit is used as the frame's IEEE tag CFI bit if the frame
egresses the target port tagged.

The PRI bits define the IEEE tag priority of the frame if it egresses
the target port tagged, otherwise they indicate the egress queue the
frame is to be switched to.

The VID bits define the IEEE VID of the frame if it egresses the
target port tagged, otherwise they are ignored.

#### To_Sniffer frame mode (ingress)
The DSA tag mode `0x2` describes a To_Sniffer frame.

If the `b29` bit is set, the original frame contained an IEEE tag
converted into a DSA tag, otherwise the frame was originally untagged
and the DSA tag was added to the frame.

The switch device and port bits define the numbers of the original
source device and port where the frame first ingressed.

If the `b18` bit is set, the frame came from an ingress source port,
otherwise it came from an egress source port.

The `b16` bit is the original frame's CFI bit if it was IEEE tagged.

The PRI bits define the priority assigned to the frame when it entered
the source device.

The VID bits define the VLAN identifier assigned to the frame when
it entered the source device.

#### Forward DSA tag frame mode (egress)
The DSA tag mode `0x3` describes a Forward frame.

The `b29` bit is used to inform the egress port to consider the frame
as tagged if set, otherwise as untagged.

The PRI bits are used as the IEEE tag priority of the frame.

The VID bits are used as the IEEE VID of the frame.

#### Forward DSA tag frame mode (ingress)
The DSA tag mode `0x3` describes a Forward frame.

If the `b29` bit is set, the original frame contained an IEEE tag
converted into a DSA tag, otherwise the frame was originally untagged
and the DSA tag was added to the frame.

The switch device and port bits define the numbers of the original
source device and port where the frame first ingressed.

If the `b18` bit is set, the switch port bits indicate a trunk ID,
otherwise a port number.

The `b16` bit is the original frame's CFI bit if it was IEEE tagged.

The PRI bits define the priority assigned to the frame when it entered
the source device.

The VID bits define the VLAN identifier assigned to the frame when
it entered the source device.

## LINKTYPE_DSA_TAG_DSA

### Packet structure

    +-----------------------------------+
    |   Destination Address (6 octets)  |
    +-----------------------------------+
    |      Source Address (6 octets)    |
    +-----------------------------------+
    | Marvell DSA switch tag (4 octets) |
    +-----------------------------------+
    |       Type/Length (2 octets)      |
    +-----------------------------------+
    |              Payload              |
    .                                   .
    .                                   .
    .                                   .

### Description

A Marvell DSA switch tag, as described above, is inserted in the
Ethernet header before the Type/Length field.

## LINKTYPE_DSA_TAG_EDSA

### Packet structure

    +------------------------------------+
    |   Destination Address (6 octets)   |
    +------------------------------------+
    |      Source Address (6 octets)     |
    +------------------------------------+
    | Marvell EDSA switch tag (8 octets) |
    +------------------------------------+
    |       Type/Length (2 octets)       |
    +------------------------------------+
    |              Payload               |
    .                                    .
    .                                    .
    .                                    .

### Description

A Marvell EDSA switch tag, as described above, is inserted in the
Ethernet header before the Type/Length field.

## LINKTYPE_ETW

### Packet structure

                         1                   2                   3
     0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    /                                                               /
    /                        EVENT_HEADER                           /
    /                                                               /
    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ 80 octets
    |                      ETW_BUFFER_CONTEXT                       |
    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    |                        UserDataLength                         |
    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    |                      MessageLength                            |
    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    |                      ProviderNameLength                       |
    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    /                          UserData                             /
    /              variable length, padded to 32 bits               /
    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    /                          Message                              /
    /              variable length, padded to 32 bits               /
    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    /                          ProviderName                         /
    /              variable length, padded to 32 bits               /
    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+

### Description

All multi-octet numerical fields are little-endian.  All primitive types
in this document are from Windows and their size can be found in
[section 2.2 "Common Data
Types"](https://learn.microsoft.com/en-us/openspecs/windows_protocols/ms-dtyp/efda8314-6e41-4837-8299-38ba0ee04b92)
of {{MS-DTYP}}.

`EVENT_HEADER` is 80 octets long; its structure is described on
[Microsoft's page for the EVENT_HEADER
structure](https://learn.microsoft.com/en-us/windows/win32/api/evntcons/ns-evntcons-event_header).

The bit values of Flags in EVENT_HEADER are:

    #define EVENT_HEADER_FLAG_EXTENDED_INFO         0x0001
    #define EVENT_HEADER_FLAG_PRIVATE_SESSION       0x0002
    #define EVENT_HEADER_FLAG_STRING_ONLY           0x0004
    #define EVENT_HEADER_FLAG_TRACE_MESSAGE         0x0008
    #define EVENT_HEADER_FLAG_NO_CPUTIME            0x0010
    #define EVENT_HEADER_FLAG_32_BIT_HEADER         0x0020
    #define EVENT_HEADER_FLAG_64_BIT_HEADER         0x0040
    #define EVENT_HEADER_FLAG_CLASSIC_HEADER        0x0100

The bit values of EventProperty in EVENT_HEADER are:

    #define EVENT_HEADER_PROPERTY_XML               0x0001
    #define EVENT_HEADER_PROPERTY_FORWARDED_XML     0x0002
    #define EVENT_HEADER_PROPERTY_LEGACY_EVENTLOG   0x0004

`ETW_BUFFER_CONTEXT` is 4 octets long; its structure is described on
[Microsoft's page for the ETW_BUFFER_CONTEXT
structure](https://learn.microsoft.com/en-us/windows/win32/api/relogger/ns-relogger-etw_buffer_context).

`UserDataLength` is the length of `UserData`; it doesn't include the
padding octets of `UserData`.

`MessageLength` is the length of `Message`; it doesn't include the
padding octets of `Message`.

`ProviderNameLength` is the length of `ProviderName`; it doesn't include
the padding octets of `ProviderName`.

`UserData` is specific event data from the provider; its format is
defined by the provider.

`Message` is a null-terminated UTF-16LE string that contains the event
message string.

`Providername` is a null-terminated UTF-16LE string that contains the
event provider name string.

## LINKTYPE_FC_2

### Description

Packets are Fibre Channel FC-2 frames, as specified in section 11 "Frame
Transmission and Reception" of {{FC-FS-5}}, with the SOF and EOF
omitted.

## LINKTYPE_FC_2_WITH_FRAME_DELIMS

### Description

Packets are Fibre Channel FC-2 frames, as specified in section 11 "Frame
Transmission and Reception" of {{FC-FS-5}}, beginning with an encoding
of the SOF and ending with an encoding of the EOF.  The encodings
represent the frame delimiters as 4-octet sequences representing the
corresponding ordered sets, with K28.5 represented as 0xBC, and the D
symbols as the corresponding octet values; for example, SOFi2, which is
K28.5 - D21.5 - D1.2 - D21.2, is represented as 0xBC 0xB5 0x55 0x55.

## LINKTYPE_FIRA_UCI

The protocol description is available to members only on the FiRa
consortium website: [FiRa Consortium UWB Command Interface Generic
Technical
Specification](https://groups.firaconsortium.org/wg/members/document/1679).

### Packet format

    +---------------------------+
    |        Packet header      |
    |         (2 Octets)        |
    +---------------------------+
    |            RFU            |
    |         (1 Octet)         |
    +---------------------------+
    |       Payload Length      |
    |         (1 Octet)         |
    +---------------------------+
    |          Payload          |
    .                           .
    .                           .
    .                           .

### Description

Unless otherwise indicated, the byte ordering for UCI packets is
little-endian.  The packet header contains the following fields, listed
from most significant to least significant bits:

* Message Type (MT), 3 Bits
  * `0b000` RFU
  * `0b001` Command message
  * `0b010` Response message
  * `0b011` Notification message
  * `0b100 - 0b111` RFU

* Packet Boundary Flag (PBF), 1 Bit
  * `0b0` The packet contains a complete message, or the packet
    contains the last segment of a segmented message
  * `0b1` The packet contains a segment that is not the last
    segment of a segmented message

* Group Identifier (GID), 4 Bits
  * `0b0000` Core group
  * `0b0001` Session Config group
  * `0b0010` Ranging Session Control group
  * `0b0011` Data Control group
  * `0b1001 - 0b1100`Vendor Specific group
  * `0b1101` Test group
  * `0b1110 - 0b1111`Vendor Specific group

* RFU, 2 Bits

* Opcode Identifier (OID), 6 Bits

## LINKTYPE_FLEXRAY

### Packet structure

    +---------------------------
    |    Measurement Header    |
    |         (1 Octet)        |
    +--------------------------+
    |          Payload         |
    .                          .
    .                          .
    .                          .

### Description

The Measurement Header has a Channel indicator in the uppermost bit and
a Type Index in the remaining 7 bits.

The Channel indicator has a value of:

* 0, for channel A;
* 1, for channel B.

The Type Index has a value of:

* 0x01: the packet is a FlexRay Frame;
* 0x02: the packet is a FlexRay Symbol.

The payload of a FlexRay Frame packet has the structure

    +--------------------------+
    |        Error Flags       |
    |         (1 Octet)        |
    +--------------------------+
    |      Header Segment      |
    |        (5 Octets)        |
    +--------------------------+
    |     Payload Segment      |
    |      (0-254 Octets)      |
    +--------------------------+

The bits in the Error Flags field are:

* 0x10 - frame CRC error;
* 0x08 - header CRC error;
* 0x04 - Frame End Sequence error;
* 0x02 - coding error, which indicates that either a Frame Start
Sequence error or a Byte Start Sequence error occurred;
* 0x01 - TSS violation.

The remainder of the FlexRay Frame is described by section 8 "Frame
Format" of {{ISO-17458-2}}.  The frame CRC is not included.  Frames
might be truncated at an arbitrary point if an error occurs.

The payload of a FlexRay Symbol packet has the structure

    +--------------------------+
    |       Symbol Length      |
    |         (1 Octet)        |
    +--------------------------+

The lower 7 bits of the Symbol Length indicate the length of the
received symbol, in bits.

## LINKTYPE_FRELAY

### Description

Packets are Frame Relay LAPF frames, as described in section 2 "Frame
structure for peer-to-peer communication" of {{Q.922}}.

## LINKTYPE_FRELAY_WITH_DIR

### Packet structure

    +------------+
    | Direction  |
    | (1 Octet)  |
    +------------+
    | LAPF frame |
    .            .
    .            .
    .            .

### Description

The Direction field is zero if the frame was received by the host
that captured the traffic and non-zero if the frame was sent by that
host.

The LAPF frame is as described in section 2 "Frame structure for
peer-to-peer communication" of {{Q.922}}.

## LINKTYPE_I2C_LINUX

### Packet structure

    +-------------------------+
    |  Bus number+event flag  |
    |        (1 Octet)        |
    +-------------------------+
    |          Flags          |
    |       (4 Octets)        |
    +-------------------------+
    |    Hardware address     |
    |        (1 Octet)        |
    +-------------------------+
    |         Payload         |
    .                         .
    .                         .
    .                         .

### Description

The lower 7 bits of the bus number + event flag field contain the bus
number; the upper bit indicates whether the packet is an event or a
regular packet - if it's set, the packet is an event.

The flags are in big-endian byte order.  The interpretation of
the flags depends on whether the packet is a regular packet or an event.

If the packet is a regular packet, the flag bits are:

* `0x00000001` - if set, the packet is a read.

The upper 7 bits of the hardware address field contain a 7-bit target
[I2C](https://www.nxp.com/docs/en/user-guide/UM10204.pdf) address
for the packet.

If the packet is an event, the lower-order 16 bits indicate what type of
event this is:

* `0x00000001` - promiscuous mode was enabled;
* `0x00000002` - promiscuous mode was disabled;
* `0x00000004` - the I2C controller went online;
* `0x00000008` - the I2C controller went offline;
* `0x00000010` - the I2C controller attached to an I2C bus;
* `0x00000020` - the I2C controller detached from an I2C bus;
* `0x00000040` - the promiscuous data buffer overflowed, and some data
  was lost;
* `0x00000080` - the promiscuous data buffer is no longer full;
* `0x00000100` - the incoming I2C data buffer overflowed, and some data was lost;
* `0x00000200` - the incoming I2C data buffer is no longer full;

For the "I2C controller went offline" error, the upper-order 16 bits
indicate that:

* `0x00010000` - the I2C controller is unable to drive data LO;
* `0x00020000` - the I2C controller is unable to drive data HI;
* `0x00040000` - the I2C controller is unable to drive clock LO;
* `0x00080000` - the I2C controller is unable to drive clock HI;
* `0x00100000` - the I2C controller got a clock low timeout;
* `0x00200000` - the I2C controller was physically disconnected from the
  bus;
* `0x00400000` - an undiagnosed failure occurred;

For regular packets, the payload is the data of an I2C message.

## LINKTYPE_IEEE802_11_PRISM

### Packet structure

    +-------------------+
    |       Msgcode     |
    |     (4 Octets)    |
    +-------------------+
    |       Msglen      |
    |     (4 Octets)    |
    +-------------------+
    |    Device name    |
    |    (16 Octets)    |
    +-------------------+
    | Tagged data items |
    | (variable length) |
    .                   .
    .                   .
    .                   .
    +-------------------+
    |   802.11 frame    |
    .                   .
    .                   .
    .                   .

### Description

All fields are in the host byte order of the machine on which the
capture was done.  (In practice, this is likely to be little-endian, but
that's not guaranteed.)

The msgcode field either has the value `0x00000041` or the value
`0x00000044`.  The msglen field is the length of the entire Prism header.
In practice, it is almost always, if not always, 144 octets.  The device
name is the interface name of the adapter.

Tagged data items are of the form

    +------------+------------+------------+------------+
    |     DID    |   Status   |   Length   |    Data    |
    | (4 Octets) | (2 Octets) | (2 Octets) | (n Octets) |
    +------------+------------+------------+------------+

Each item represents the value of a parameter. There could be, in
theory, zero or more items; in practice, there are almost always, if not
always, 10 instances.

The DID field indicates what the parameter is. For packets with the
msgcode value `0x00000041`, the DID field values are:

* `0x00001041` - host time;
* `0x00002041` - MAC time;
* `0x00003041` - channel;
* `0x00004041` - RSSI;
* `0x00005041` - signal quality;
* `0x00006041` - signal;
* `0x00007041` - noise;
* `0x00008041` - rate;
* `0x00009041` - transmitted frame indicator;
* `0x0000A041` - frame length.

For packets with the msgcode value 0x00000044, the DID field values are:

* `0x00010044` - host time;
* `0x00020044` - MAC time;
* `0x00030044` - channel;
* `0x00040044` - RSSI;
* `0x00050044` - signal quality;
* `0x00060044` - signal;
* `0x00070044` - noise;
* `0x00080044` - rate;
* `0x00090044` - transmitted frame indicator;
* `0x000A0044` - frame length.

The Status field is 0 if the value of that parameter is supplied and 1
if it is not supplied.

The Length field indicates the length of the following Data field; in
theory, it could have any value, but it is almost always, if not always,
4.

The Data field contains the value of the parameter.

The representation of the values might differ between different network
adapters. There is no official specification for the Prism header;
{{Prism}} describes what one person found from examining some adapter
drivers.

## LINKTYPE_IEEE802_15_4_NOFCS

### Description

IEEE 802.15.4 frames, as described by section 7.2 "General MAC frame
format" of {{IEEE-802.15.4}}, with the FCS omitted.

## LINKTYPE_IEEE802_15_4_WITHFCS

### Description

IEEE 802.15.4 frames, as described by section 7.2 "General MAC frame
format" of {{IEEE-802.15.4}}, with each packet having the FCS at the end
of the frame.

## LINKTYPE_IEEE802_15_4_NONASK_PHY

## Packet structure

    +---------------------------------------+
    |                Preamble               |
    |               (4 Octets)              |
    +---------------------------------------+
    |                   SFD                 |
    |                (1 Octet)              |
    +---------------------------------------+
    |                   PHR                 |
    |              (1-2 Octets)             |
    +---------------------------------------+
    |            802.15.4 MAC frame         |
    .                                       .
    .                                       .
    .                                       .

### Description

The packets are IEEE 802.15.4 O-QPSK, BPSK, GFSK, MSK, and RCC DSSS BPSK
PHY frames.

The Preamble field is as described in the clauses for the respective
PHYs in {{IEEE-802.15.4}}.

The SFD is as described in the clauses for the respective PHYs in
{{IEEE-802.15.4}}.

The PHR is as described in the clauses for the respective PHYs in
{{IEEE-802.15.4}}.

THe 802.15.4 MAC frame is as described by section 7.2 "General MAC frame
format" of {{IEEE-802.15.4}}. (FCS?)

## LINKTYPE_IP_OVER_FC

### Description

IP-over-Fibre Channel, as described by {{?RFC2625}}. The packet data
begins withwith the Network_Header.

## LINKTYPE_IPNET

### Packet structure

    +---------------------------------------+
    |                 Version               |
    |                (1 Octet)              |
    +---------------------------------------+
    |                 Family                |
    |                (1 Octet)              |
    +---------------------------------------+
    |               Hook type               |
    |               (2 Octets)              |
    +---------------------------------------+
    |              Packet length            |
    |               (4 Octets)              |
    +---------------------------------------+
    |            Interface index            |
    |               (4 Octets)              |
    +---------------------------------------+
    |          Group interface index        |
    |               (4 Octets)              |
    +---------------------------------------+
    |    Zone identifier of packet source   |
    |               (4 Octets)              |
    +---------------------------------------+
    | Zone identifier of packet destination |
    |               (4 Octets)              |
    +---------------------------------------+
    |                Payload                |
    .                                       .
    .                                       .
    .                                       .

### Description

The version field is 2 for the current version of the pseudo-header.

The family field is a Solaris `AF_` value, so it's 2 for IPv4 and 26 for
IPv6.

The hook type is in big-endian byte order; its value is:

* 0 if the packet was received by the machine from another
  machine;
* 1 if the packet was sent by the machine to another
  machine;
* 2 if the packet was sent from the machine to itself, possibly
  between zones.

The packet length is in big-endian byte order; its value is the number of
octets of packet data following the pseudo-header.

The interface index is in big-endian byte order; it is the interface index
of the interface on which the packet arrived.

The group interface index is in big-endian byte order; it is the group
interface index number, for IPMP interfaces.

The zone identifiers are in big-endian byte order.  A zone number of 0 is
the global zone; a zone number of `0xffffffff` means that the packet
arrived from another host on the network, not from another zone on the
same machine.

The payload is an IPv4 or IPv6 datagram, beginning with the IP header;
the family field indicates which it is.

## LINKTYPE_LAPD

### Description

Link Access Procedures on the D Channel (LAPD) frames, as specified by
section 2 "Frame structure for peer-to-peer communication" of {{Q.921}}.
The flags at the beginning and end of the frame are not present.  If the
FCS is present for a frame in a PCAP or PCAPNG file, the file MUST
indicate this.

## LINKTYPE_LIN

### Packet structure

    +---------------------------
    | Message Format Revision  |
    |         (1 Octet)        |
    +--------------------------+
    |         Reserved         |
    |        (3 Octets)        |
    +--------------------------+
    | Payload length and types |
    |         (1 Octet)        |
    +--------------------------+
    |           PID            |
    |         (1 Octet)        |
    +--------------------------+
    |         Checksum         |
    |         (1 Octet)        |
    +--------------------------+
    |           Errors         |
    |         (1 Octet)        |
    +--------------------------+
    |          Payload         |
    |       (1-8 Octets)       |
    +--------------------------+

### Description

The Message Format Revision field MUST always be set to 1.

The reserved fields MUST be zero.

The upper 4 bits of the Payload Length and Types field contain the
number of octets of payload. This value MUST be between 1 and 8 for a LIN
frame.

The next 2 bits of that field contain the message type, the value of
which MUST be one of:

* 0, if the payload is a LIN frame;
* 3, if the a LIN event.

All other values are undefined.

The bottom two fields of that field contain the checksum type, the value
of which MUST be one of:

* 0, if the checksum is incorrect or an unknown checksum algorithm has
  been used;
* 1, if the checksum field contains a "classic" checksum;
* 2, if the checksum field contains an "enhanced" checksum.

All other values are undefined.

The PID field contains a Protected Identifier, as described in section
5.2.2.5 "PID field" of {{ISO-17987-3}}.

The Checksum field contains a checksum of the type given in the
payload length and types field, as described in section 5.2.2.7
"Checksum" of {{ISO-17987-3}}.

The Error field contains a set of error bits:

* 0x80 - reserved
* 0x40 - reserved
* 0x20 - overflow error; we have lost at least one message during
reception because there was no space in the receiving controller's
buffer
* 0x10 - invalid ID, i.e. a frame ID of 0x3E or 0x3F has been received
* 0x08 - checksum error
* 0x04 - parity error in the PID field
* 0x02 - framing error (low-level transmission/reception error)
* 0x01 - no slave response error, i.e. no slave wrote the Response
part of the frame, as per section 4.2.2 "Frames" of {{ISO-17987-3}}

If the message_type field is 0, the payload is a LIN N_PDU, as described
in section 7.4 "Transport layer protocol data units" of {{ISO-17987-2}}

If the message_type field is 3, the payload is a 4-octet value, in
big-endian byte order, giving the type of LIN event; the checksum_type,
PID, checksum, and errors fields are all 0 and MUST be ignored.

The event type values are:

* 0xb0b00001 - go-to-sleep event caused by a go-to-sleep command, as
described in section 5.4 "Go-to-sleep" of {{ISO-17987-2}};
* 0xb0b00002 - go-to-sleep event caused by bus inactivity for more
than 4 seconds;
* 0xb0b00004 - wake up event caused by a wake up signal.

## LINKTYPE_LINUX_IRDA

### Packet structure

    +---------------------------+
    |         Packet type       |
    |         (2 Octets)        |
    +---------------------------+
    |        ARPHRD_ type       |
    |         (2 Octets)        |
    +---------------------------+
    | Link-layer address length |
    |         (2 Octets)        |
    +---------------------------+
    |    Link-layer address     |
    |         (8 Octets)        |
    +---------------------------+
    |        Protocol type      |
    |         (2 Octets)        |
    +---------------------------+
    |           Payload         |
    .                           .
    .                           .
    .                           .

### Description

The packet type field is in big-endian byte order.  The upper
octet of the field is the class of the packet; the value is one of:

* 0, if the payload is an IrDA frame;
* 1, if the payload is a log message.

For IrDA frames, the lower octet of the field is 0 for incoming
packets and 4 for outgoing packets.

For log messages, if the lower octet of the field is 1, it's an
indication that one or more messages have been missed and not captured.

The `ARPHRD_` type field is unused.

The link-layer address length field is unused.

The link-layer address field is unused.

The protocol type field is in big-endian byte order; it MUST contain
the value `0x0017`.

The payload is an IrDA frame beginning with the IrLAP header as
defined by {{IrLAP-1.1}}.

## LINKTYPE_LAPB_WITH_DIR

### Packet structure

    +------------+
    | Direction  |
    | (1 Octet)  |
    +------------+
    | LAPB frame |
    .           .
    .           .
    .           .

### Description

The Direction field is zero if the frame was received by the host
that captured the traffic and non-zero if the frame was sent by that
host.

The LAPB frame is as descrbed in section 2.2.7 "Frame structure" of
{{X.25}}.  Frames MAY either be modulo 8 or modulo 128.

## LINKTYPE_LINUX_LAPD

### Packet structure

    +---------------------------+
    |         Packet type       |
    |         (2 Octets)        |
    +---------------------------+
    |        ARPHRD_ type       |
    |         (2 Octets)        |
    +---------------------------+
    | Link-layer address length |
    |         (2 Octets)        |
    +---------------------------+
    |    Link-layer address     |
    |         (8 Octets)        |
    +---------------------------+
    |        Protocol type      |
    |         (2 Octets)        |
    +---------------------------+
    |           Payload         |
    .                           .
    .                           .
    .                           .

### Description

The packet type field is in big-endian byte order; it contains
a value that is one of:

* 0, if the packet was sent to us by somebody else;
* 3, if the packet was sent to somebody else by somebody else;
* 4, if the packet was sent by us.

For LAPD frames, the lower octet of the field is 0 for incoming
packets and 4 for outgoing packets.
For log messages, if the lower octet of the field is 1, it's an
indication that one or more messages have been missed and not captured.

The `ARPHRD_` type field is unused.

The link-layer address length field is unused.

The link-layer address field is unused.

The protocol type field is in big-endian byte order; it MUST contain
the value `0x0030`.

The payload is a
[vISDN](https://web.archive.org/web/20120911130602/http://www.visdn.org/)
Link Access Procedures on the D Channel (LAPD) frame, as described by
{{Q.921}} section 2 "Frame structure for peer-to-peer communication",
starting with the address field.

## Linux SLL header fields

`LINKTYPE_LINUX_SLL` and `LINKTYPE_LINUX_SLL2` packets include some
common fields in their headers.  Those fields are in different positions
in the `LINKTYPE_LINUX_SLL` and `LINKTYPE_LINUX_SLL2`, but have the same
values.

### Description

The packet type field is in big-endian byte order; it contains
a value that is one of:

* 0, if the packet was specifically sent to us by somebody else;
* 1, if the packet was broadcast by somebody else;
* 2, if the packet was multicast, but not broadcast, by somebody
  else;
* 3, if the packet was sent to somebody else by somebody else;
* 4, if the packet was sent by us.

The `ARPHRD_` type field is in big-endian byte order; it contains a Linux
`ARPHRD_` value for the link-layer device type.

If the `ARPHRD_` type is `ARPHRD_NETLINK` (824), the packet data,
including the `LINKTYPE_LINUX_SLL` header, is a `LINKTYPE_NETLINK` packet,
with the protocol type field being the Netlink protocol type.

If the `ARPHRD_` type is `ARPHRD_IPGRE` (778), the protocol type field
contains a GRE ({{?RFC2784}}) protocol type.

If the `ARPHRD_` type is `ARPHRD_IEEE80211_RADIOTAP` (803), the protocol
type field is ignored, and the payload following the
`LINKTYPE_LINUX_SLL` header begins with Radiotap link-layer information
({{Radiotap}}) followed by an 802.11 header.

If the `ARPHRD_` type is `ARPHRD_FRAD` (770), the protocol type field is
ignored, and the payload following the `LINKTYPE_LINUX_SLL` header is a
Frame Relay LAPF frame, beginning with a {{Q.922}} LAPF header starting
with the address field, and without an FCS at the end of the frame.

Otherwise, the protocol type field contains the Ethernet protocol
type for the packet, or one of:

* `0x0001`, if the frame is a Novell 802.3 frame without an 802.2 LLC
  header;
* `0x0003`, in some mysterious cases;
* `0x0004`, if the frame begins with an 802.2 LLC header;
* `0x000C`, if the frame is a CAN CC (CAN classic) frame;
* `0x000D`, if the frame is a CAN FD (CAN with Flexible Data-Rate)
  frame.
* `0x000E`, if the frame is a CAN XL frame.

In a `LINKTYPE_LINUX_SLL` or `LINKTYPE_LINUX_SLL2`, a CAN CC frame
begins with a header of the form

    +---------------------------+
    |      CAN ID and flags     |
    |         (4 Octets)        |
    +---------------------------+
    |       Payload length      |
    |         (1 Octet)         |
    +---------------------------+
    |          Padding          |
    |         (1 Octet)         |
    +---------------------------+
    |      Reserved/Padding     |
    |         (1 Octet)         |
    +---------------------------+
    |      Reserved/Padding     |
    |         (1 Octet)         |
    +---------------------------+

where the field containing the CAN ID and flags is in host byte order.
The bottom 29 bits contain the CAN ID of the frame.  The remaining bits
are:

* `0x20000000` - set if the frame is an error message rather than a data
  frame;
* `0x40000000` - set if the frame is a remote transmission request
  frame;
* `0x80000000` - set if the frame is an extended 29-bit frame rather
  than a standard 11-bit frame;

The payload length indicates the number of octets of payload following
the header.  All packet octets after those octets of payload are padding.

The header is followed by the payload.

In a `LINKTYPE_LINUX_SLL` or `LINKTYPE_LINUX_SLL2`, a CAN FD frame
begins with a header of the form:

    +---------------------------+
    |      CAN ID and flags     |
    |         (4 Octets)        |
    +---------------------------+
    |       Payload length      |
    |         (1 Octet)         |
    +---------------------------+
    |         FD flags          |
    |         (1 Octet)         |
    +---------------------------+
    |      Reserved/Padding     |
    |         (1 Octet)         |
    +---------------------------+
    |      Reserved/Padding     |
    |         (1 Octet)         |
    +---------------------------+

where the field containing the CAN ID and flags is in host byte order.
The bottom 29 bits of that field contain the CAN ID of the frame.  The
remaining bits are:

* `0x80000000` - set if the frame is an extended 29-bit frame rather
  than a standard 11-bit frame.

The bits of the FD flags field are:

* `0x01` - set if the bit rate switch flag is set for the frame;
* `0x02` - set if the error state indicator is set for the frame;

and the header is followed by the payload.

For a CAN CC or CAN FD data frame, the payload is the data field of the
packet.

For a retransmission request, the length MUST be 0, so the payload is
empty.

For a CAN CC or CAN FD error message, the payload is always 8 octets.
The lower bits of the CAN ID field contain an error class value, with
bits specified by the first set of `CAN_ERR_` values in
{{Linux-CAN-errors}}.  The octets in the payload are:

* first octet - if arbitration was lost, the bit number in the bitstream
  in which it was lost; otherwise 0.
* second octet - the error status of the CAN controller, with bits
  specified by the `CAN_ERR_CTRL_` bits in {{Linux-CAN-errors}}.
* third octet - flags indicating a CAN protocol error type, with bits
  specified by the `CAN_ERR_PROT_` bits in {{Linux-CAN-errors}}.
* fourth octet - flags indicating a CAN protocol error location, with
  bits specified by the `CAN_ERR_LOC_` bits in {{Linux-CAN-errors}}.
* fifth octet - the error status of the CAN transceiver, with values
  specified by the `CAN_ERR_TRX_` values in {{Linux-CAN-errors}}.
* sixth, seventh, and eighth octets - controller-specific additional
 information.

In a `LINKTYPE_LINUX_SLL` or `LINKTYPE_LINUX_SLL2`, a CAN XL frame
begins with a header of the form:

    +---------------------------+
    |      Priority ID/VCID     |
    |         (4 Octets)        |
    +---------------------------+
    |         XL Flags          |
    |         (1 Octet)         |
    +---------------------------+
    |         SDU type          |
    |         (1 Octet)         |
    +---------------------------+
    |       Payload length      |
    |         (2 Octets)        |
    +---------------------------+
    |      Acceptance Field     |
    |         (4 Octets)        |
    +---------------------------+

(byte order?)

The link-layer address length field is in big-endian byte order; it
contains the length of the link-layer address of the sender of the
packet.  That length could be zero.

The link-layer address field contains the link-layer address of the
sender of the packet; the number of octets of that field that are
meaningful is specified by the link-layer address length field.  If
there are more than 8 octets, only the first 8 octets are present, and
if there are fewer than 8 octets, there are padding octets after the
address to pad the field to 8 octets.

The protocol type field is in big-endian byte order.

## LINKTYPE_LINUX_SLL

### Packet structure

    +---------------------------+
    |         Packet type       |
    |         (2 Octets)        |
    +---------------------------+
    |        ARPHRD_ type       |
    |         (2 Octets)        |
    +---------------------------+
    | Link-layer address length |
    |         (2 Octets)        |
    +---------------------------+
    |    Link-layer address     |
    |         (8 Octets)        |
    +---------------------------+
    |        Protocol type      |
    |         (2 Octets)        |
    +---------------------------+
    |           Payload         |
    .                           .
    .                           .
    .                           .

### Description

All fields are as described above.

## LINKTYPE_LINUX_SLL2

### Packet structure

    +---------------------------+
    |        Protocol type      |
    |         (2 Octets)        |
    +---------------------------+
    |       Reserved (MBZ)      |
    |         (2 Octets)        |
    +---------------------------+
    |       Interface index     |
    |         (4 Octets)        |
    +---------------------------+
    |        ARPHRD_ type       |
    |         (2 Octets)        |
    +---------------------------+
    |         Packet type       |
    |         (1 Octet)         |
    +---------------------------+
    | Link-layer address length |
    |         (1 Octets)        |
    +---------------------------+
    |    Link-layer address     |
    |         (8 Octets)        |
    +---------------------------+
    |           Payload         |
    .                           .
    .                           .
    .                           .

### Description


The interface index field is a signed integer in big-endian byte order and
contains the 1-based index of the interface on which the packet was
observed.

All other fields are as described above.

## LINKTYPE_LOOP

### Packet structure for BSD loopback encapsulation

    +---------------------------+
    |       Protocol type       |
    |         (4 Octets)        |
    +---------------------------+
    |           Payload         |
    .                           .
    .                           .
    .                           .

### Description

The protocol type field is in big-endian byte order.  The values for
that field are:

* `2` - payload is an IPv4 packet;
* `24` - payload is an IPv6 packet;
* `28` - payload is an IPv6 packet;
* `30` - payload is an IPv6 packet;
* `7` - payload is an OSI packet;
* `23` - payload is an IPX packet.

All of the IPv6 values correspond to IPv6 packets; code reading files
MUST treat all of them as ndicating an IPv6 packet.

## LINKTYPE_LORATAP

### Description

Packets contain a {{LoRaTap}} pseudo-header, followed by the payload,
which is typically the PHYPayload as specified by section 4.1 PHY
"Payload (PHYPayload)" of {{LoRaWAN-Link-Layer-1.0.4}}.

## LINKTYPE_MDB

### Description

Packets are for the MDB (Multi-Drop Bus) protocol between a vending
machine controller and peripherals inside the vending
machine, as specified by {{MDB-PCAP}}.

## LINKTYPE_MFR

### Description

Packets are {{FRF.16.1}} Multi-Link Frame Relay frames, beginning with
an {{FRF.12}} Interface fragmentation format fragmentation header.

## LINKTYPE_MUX27010

### Packet structure

    +-------------+
    | Header_Size |
    |  (1 Octet)  |
    +-------------+--------------+-----------+------------+-----------+
    |    Msg_ID   |    Freg_ID   | Start_Pos |   End_pos  |   Flag    |
    | (2 Octets)  |  (2 Octets)  | (1 Octet) |  (1 Octet) | (1 Octet) |
    +-------------+--------------+-----------+------------+-----------+
    .                                                                 .
    .                                                                 .
    .                                                                 .
    +------------+
    |  Direction |
    |  (1 Octet) |
    +------------+-----------+-----------+-----------------+-------------+-----------+-----------+
    |  Flag_Mux  |  Address  |  Control  |     Length      | Information |    FCS    |  Flag_Mux |
    | (1 Octet)  | (1 Octet) | (1 Octet) | (1 or 2 Octets) |  (n Octets) | (1 Octet) | (1 Octet) |
    +------------+-----------+-----------+-----------------+-------------+-----------+-----------+
    .                                                                                            .
    .                                                                                            .
    .                                                                                            .

### Description

Parts of the packets (the Flag_Mux octets and the octets between them)
of this link type frames are based on {{3GPP-TS-27.010}}, but they are
slight deviations to meet the actual implementation of Cinterion and
Siemens modules, e.g.  no `I` frame support, but an additional `UIH_E`
frame.  In addition, the original MUX_Frame (the Flag_Mux octets and the
octets between them) is extended by some extra fields for PPP chunks and
direction indication (the Msg_ID through Flag octets).

### Description for the Msg_ID through Flag octets

If there are PPP chunks surrounded by Flag_Mux octets, they
will be indicated by the {Msg_ID, Freg_ID, Start_Pos, End_Pos, Flag}
quintuplets; there will be one quintuplet for every chunk.  Header_Size
and Direction are always present.  The {Msg_ID, Freg_ID, Start_Pos,
End_Pos, Flag} quintuplets are optional and not always present.
The Header_Size field indicates whether the quintuplets are present or
not and how many of them are present&mdash;if a frame contains *N*
PPP chunks, the Header_Size field has the value 7*N*; if no
quintuplets are present, *N*, and thus the Header_Size field,
is zero.  If the Header_Size value is not a multiple of 7, the frame is
invalid.

Start_Pos is the 1-origin index (from the octet after the Direction
octet, so the index of the first Flag_Mux octet would be 1) of the first
octet of the chunk, and End_Pos is the 1-origin index (from the octet
after the Direction octet) of the last octet of the chunk.

All the chunks of a given PPP packet have the same Msg_ID value.
Freq_ID is a sequence number for the PPP chunks.  The first chunk
has a Freq_ID of 0 and the Freq_ID of the next chunk will be
incremented.  The last chunk of a given PPP packet has a Flag value
of 1; the others have a Flag value of 0.
The Direction field indicates the direction of the Mux frame: "0"
means from GSM Modem to the Host; "1" means from Host to GSM Modem.

## Hilscher netANALYZER header

The Hilscher netANALYZER header is used in `LINKTYPE_NETANALYZER` and
`LINKTYPE_NETANALYZER_TRANSPARENT` packets.

### Header structure

     3 3 2 2 2 2 2 2 2 2 2 2 1 1 1 1 1 1 1 1 1 1
     1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0
    +-------+-----------------------+---+-------+-+-+---------------+
    | Rsvd  |      Frame length     |CP |  Vers |T|G| Error flags   |
    +-------+-----------------------+---+-------+-+-+---------------+

### Description

The header field contains a 32-bit value in little-endian byte order.

The low-order 8 bits are a set of error flags for the packet:

* `0x00000001` - MII RX_ER
* `0x00000002` - alignment error
* `0x00000004` - FCS error
* `0x00000008` - frame too long
* `0x00000010` - SFD error
* `0x00000020` - frame shorter than 64 octets
* `0x00000040` - preamble shorter than 7 octets
* `0x00000080` - preamble longer than 7 octets

The next bit, `0x00000100`, is set if the packet arrived on the GPIO
port rather than the Ethernet port.

The next bit, `0x00000200`, is set if the packet was received in
transparent capture mode.  That SHOULD never be set for
`LINKTYPE_NETANALYZER` and SHOULD always be set for
`LINKTYPE_NETANALYZER_TRANSPARENT`.

The next 4 bits, `0x00003C00`, are a bitfield giving the version of the
header field; the current version is 1.

The next 2 bits, `0x0000C000`, are the capture port/GPIO number, from 0
to 3.

The next 12 bits, `0x0FFF0000`, are the frame length, in octets.

The topmost 4 bits, `0xF0000000`, are reserved.

## LINKTYPE_NETANALYZER

### Packet structure

    +-----------------------------+
    | Hilscher netANALYZER Header |
    |          (4 Octets)         |
    +-----------------------------+
    |        Ethernet frame       |
    .                             .
    .                             .
    .                             .
    +-----------------------------+
    |              FCS            |
    |          (4 Octets)         |
    +-----------------------------+

### Description

The header field, as described above, contains packet metadata.

The payload is an Ethernet frame, beginning with the MAC header and
ending with the FCS.

## LINKTYPE_NETANALYZER_TRANSPARENT

### Packet structure

    +-----------------------------+
    | Hilscher netANALYZER Header |
    |          (4 Octets)         |
    +-----------------------------+
    |        Ethernet frame,      |
    |    including preamble and   |
    |   SFD at the beginning and  |
    |        FCS at the end.      |
    .                             .
    .                             .
    .                             .

### Description

The header field, as described above, contains packet metadata.

The payload is an Ethernet frame, beginning with the preamble and ending
with the FCS.

## LINKTYPE_NETLINK

### Packet structure

    +---------------------------+
    |           Unused          |
    |         (2 Octets)        |
    +---------------------------+
    |        ARPHRD_ type       |
    |         (2 Octets)        |
    +---------------------------+
    |           Unused          |
    |         (10 Octets)       |
    +---------------------------+
    |        Protocol type      |
    |         (2 Octets)        |
    +---------------------------+
    |           Payload         |
    .                           .
    .                           .
    .                           .

### Description

The `ARPHRD_` type field is in big-endian byte order; it will be equal to
the Linux `ARPHRD_` value `ARPHRD_NETLINK`.

The protocol type field is in big-endian byte order; it contains a
Netlink protocol type, such as `NETLINK_ROUTE`,
`NETLINK_NFLOG`, `NETLINK_AUDIT`, etc.

The payload begins with a Netlink header, as described in [section
2.3.2, "Netlink Message
Header"](https://www.rfc-editor.org/rfc/rfc3549.html#section-2.3.2) of
{{?RFC3549}}.

## LINKTYPE_NFC_LLCP

### Packet structure

    +---------------------------+
    |       Adapter Number      |
    |         (1 Octet)         |
    +---------------------------+
    |           Flags           |
    |         (1 Octet)         |
    +---------------------------+
    |           Payload         |
    .                           .
    .                           .
    .                           .

### Description

The adapter number field identifies the interface on which the frame was
recorded.  On single-interface systems, this will typically be 0.

The bits in the flags field are:

* `0x01` - Direction (0=RX, 1=TX)
* `0x02`-`0x80` - Reserved

The payload is an NFC Logical Link Control Protocol (LLCP) PDU, as
specified by {{LLCP-1.4}}, i.e. an octete containing the DSAP and upper
two bits of the PTYPE, followed by an octet containing the lower two bits
of the PTYPE and the SSAP, followed by the sequence octet if the frame
has sequence numbers, followed by any additional octets of payload.

## LINKTYPE_NFLOG

### Packet structure

    +---------------------------+
    |       Address family      |
    |          (1 Octet)        |
    +---------------------------+
    |           Version         |
    |          (1 Octet)        |
    +---------------------------+
    |         Resource ID       |
    |          (2 Octets)       |
    +---------------------------+
    |          TLV length       |
    |          (2 Octets)       |
    +---------------------------+
    |           TLV type        |
    |          (2 Octets)       |
    +---------------------------+
    |           TLV value       |
    .                           .
    .                           .
    .                           .

### Description

The address family is a Linux `AF_` value, so it's 2 for IPv4 and 10 for
IPv6.

The version field is 0 for the current version of the pseudo-header.

The resource ID is in big-endian byte order.  On one netlink
socket it's possible to listen to several nflog groups; the resource ID
is the nflog group for the packet.

Following the resource ID is a sequence of zero or more TLVs, running to
the end of the packet; the length and type are in the host byte order
for the pcap file, as specified by the file's magic number, or for the
section of the pcap-ng file, as specified by the Section Header Block.

The type values are, as per the Linux
`linux/netfilter/nfnetlink_log.h` header:

* 1, for a packet header structure;
* 2, for the 32-bit packet mark value from the `skbuff` for the packet;
* 3, for a packet time stamp structure;
* 4, for the 32-bit `ifindex` of the device on which the packet was
  received, which could be a bridge group;
* 5, for the 32-bit `ifindex` of the device on which the packet was
  sent, which could be a bridge group;
* 6, for the 32-bit `ifindex` of the physical device on which the packet
  was received, which is not a bridge group;
* 7, for the 32-bit `ifindex` of the physical device on which the packet
  was sent, which is not a bridge group;
* 8, for a hardware address structure;
* 9, for the packet payload following the link-layer header;
* 10, for a null-terminated text string;
* 11, for the 32-bit user ID that owned the socket on which the packet
  was sent or received;
* 12, for a 32-bit sequence number for packets provided by this nflog
  device;
* 13, for a 32-bit sequence number for packets provided by all nflog
  devices;
* 14, for the 32-bit group ID that owned the socket on which the packet
  was sent or received;
* 15, for the 32-bit Linux `ARPHRD_` value for the device
  associated with the `skbuff` for the packet;
* 16, for the MAC-layer header for the `skbuff` for the packet;
* 17, for the length of the MAC-layer header.

The length value includes the 4 octets for the length and type.

The packet header structure is:

    +---------------------------+
    |      Hardware protocol    |
    |         (2 Octets)        |
    +---------------------------+
    |       Netfilter hook      |
    |          (1 Octet)        |
    +---------------------------+
    |           Padding         |
    |          (1 Octet)        |
    +---------------------------+

The packet time stamp structure is:

    +---------------------------+
    |           Seconds         |
    |          (8 Octets)       |
    +---------------------------+
    |         Microseconds      |
    |          (8 Octets)       |
    +---------------------------+

The hardware address structure is:

    +-------------------------------+
    |         Address length        |
    |           (2 Octets)          |
    +-------------------------------+
    |             Padding           |
    |            (1 Octet)          |
    +-------------------------------+
    |            Address            |
    | (8 Octets, including padding) |
    +-------------------------------+

All 32-bit integral values, and all multi-octet integral values in
structures listed above, are in big-endian byte order.

## LINKTYPE_NG40

### Packet structure

    +---------------------------+
    |            Type           |
    |         (4 Octets)        |
    +---------------------------+
    |           Length          |
    |         (4 Octets)        |
    +---------------------------+
    |          Protocol         |
    |         (4 Octets)        |
    +---------------------------+
    |             ID            |
    |         (4 Octets)        |
    +---------------------------+
    |            Flags          |
    |         (4 Octets)        |
    +---------------------------+
    |   Subheaders and payload  |
    .                           .
    .                           .
    .                           .

### Description

All multi-octet fields are in big-endian byte order.

The type field contains a value that is one of:

* 2, if the payload is ATM AAL2 traffic;
* 3, if the payload is ATM AAL5 traffic;
* 4, if the payload is Iub-over-UDP-over-IPv4 traffic;
* 5, if the payload is Iub-over-SCTP-over-IPv4 traffic;
* 6, if the payload is Iub-over-UDP-over-IPv6 traffic;
* 7, if the payload is Iub-over-SCTP-over-IPv6 traffic.

The length field gives the length of the entire packet, including the
five header fields.

The protocol field contains a value that specifies the protocol running
atop the SSCOP protocol layer.  The value is one of:

* 1, if the subprotocol is ALCAP;
* 2, if the subprotocol is NBAP.

The ID field gives a "call ID" indicating to which call the packet
pertains.

The flags field contains the following flags:

* `0x00000001` - the message is ciphered

The form of the subheader following the header depends on the value in
the type field.

#### Subheaders

For ATM AAL2 traffic, the subheader is of the form:

    +---------------------------+
    |         Direction         |
    |         (1 Octet)         |
    +---------------------------+
    |          Padding          |
    |         (1 Octet)         |
    +---------------------------+
    |            VPI            |
    |         (2 Octets)        |
    +---------------------------+
    |            VCI            |
    |         (2 Octets)        |
    +---------------------------+
    |            CID            |
    |         (2 Octets)        |
    +---------------------------+

The direction field contains a value that is one of:

* 0, if the packet is a received message;
* 1, if the packet is a transmitted message;
* 2, if the content is a message from NodeB to the Radio Network
  Controller (up-link message);
* 3, if the content is a message from the Radio Network Controller
  to NodeB (down-link message).

The VPI and VCI identify the ATM virtual circuit.

The CID is a channel identifier that identifies the user of the virtual
circuit.

For ATM AAL5 traffic, the subheader is of the form:

    +---------------------------+
    |         Direction         |
    |         (1 Octet)         |
    +---------------------------+
    |          Padding          |
    |         (1 Octet)         |
    +---------------------------+
    |            VPI            |
    |         (2 Octets)        |
    +---------------------------+
    |            VCI            |
    |         (2 Octets)        |
    +---------------------------+
    |          Padding          |
    |         (2 Octets)        |
    +---------------------------+

The direction field contains a value that is one of:

* 0, if the packet is a received message;
* 1, if the packet is a transmitted message;
* 2, if the content is a message from NodeB to the Radio Network
  Controller (up-link message);
* 3, if the content is a message from the Radio Network Controller
  to NodeB (down-link message).

The VPI and VCI identify the ATM virtual circuit.

For Iub-over-UDP-over-IPv4 traffic, the subheader is of the form:

    +---------------------------+
    |         Direction         |
    |         (1 Octet)         |
    +---------------------------+
    |          Padding          |
    |         (1 Octet)         |
    +---------------------------+
    |         Local port        |
    |         (2 Octets)        |
    +---------------------------+
    |     Local IPv4 address    |
    |         (4 Octets)        |
    +---------------------------+
    |        Remote port        |
    |         (2 Octets)        |
    +---------------------------+
    |          Padding          |
    |         (2 Octets)        |
    +---------------------------+
    |    Remote IPv4 address    |
    |         (4 Octets)        |
    +---------------------------+

The direction field contains a value that is one of:

* 0, if the packet is a received message;
* 1, if the packet is a transmitted message;
* 2, if the content is a message from NodeB to the Radio Network
  Controller (up-link message);
* 3, if the content is a message from the Radio Network Controller
  to NodeB (down-link message).

The IPv4 addresses and UDP ports identify the endpoints of the path.

For Iub-over-SCTP-over-IPv4 traffic, the subheader is of the form:

    +---------------------------+
    |         Direction         |
    |         (1 Octet)         |
    +---------------------------+
    |          Padding          |
    |         (1 Octet)         |
    +---------------------------+
    |         Local port        |
    |         (2 Octets)        |
    +---------------------------+
    |     Local IPv4 address    |
    |         (4 Octets)        |
    +---------------------------+
    |        Remote port        |
    |         (2 Octets)        |
    +---------------------------+
    |          Padding          |
    |         (2 Octets)        |
    +---------------------------+
    |    Remote IPv4 address    |
    |         (4 Octets)        |
    +---------------------------+
    |       SCTP stream ID      |
    |         (4 Octets)        |
    +---------------------------+

The direction field contains a value that is one of:

* 0, if the packet is a received message;
* 1, if the packet is a transmitted message.
* 2, if the content is a message from NodeB to the Radio Network
  Controller (up-link message);
* 3, if the content is a message from the Radio Network Controller
  to NodeB (down-link message).-->

Values of 0 and 1 are deprecated; the Uplink/Downlink indicator below is
used to indicate whether the message is an uplink or downlink message.

The IPv4 addresses and SCTP ports identify the endpoints of the path;
the SCTP stream ID identifies the SCTP stream of the path.

For Iub-over-UDP-over-IPv6 traffic, the subheader is of the form:

    +---------------------------+
    |         Direction         |
    |         (1 Octet)         |
    +---------------------------+
    |          Padding          |
    |         (1 Octet)         |
    +---------------------------+
    |         Local port        |
    |         (2 Octets)        |
    +---------------------------+
    |     Local IPv6 address    |
    |         (16 Octets)       |
    +---------------------------+
    |        Remote port        |
    |         (2 Octets)        |
    +---------------------------+
    |    Remote IPv6 address    |
    |         (16 Octets)       |
    +---------------------------+

The direction field contains a value that is one of:

* 0, if the packet is a received message;
* 1, if the packet is a transmitted message;
* 2, if the content is a message from NodeB to the Radio Network
  Controller (up-link message);
* 3, if the content is a message from the Radio Network Controller
  to NodeB (down-link message).

The IPv6 addresses and UDP ports identify the endpoints of the path.

For Iub-over-SCTP-over-IPv6 traffic, the subheader is of the form:

    +---------------------------+
    |         Direction         |
    |         (1 Octet)         |
    +---------------------------+
    |          Padding          |
    |         (1 Octet)         |
    +---------------------------+
    |         Local port        |
    |         (2 Octets)        |
    +---------------------------+
    |     Local IPv6 address    |
    |         (16 Octets)       |
    +---------------------------+
    |        Remote port        |
    |         (2 Octets)        |
    +---------------------------+
    |    Remote IPv6 address    |
    |         (16 Octets)       |
    +---------------------------+
    |       SCTP stream ID      |
    |         (4 Octets)        |
    +---------------------------+

The direction field contains a value that is one of:

* 0, if the packet is a received message;
* 1, if the packet is a transmitted message;
* 2, if the content is a message from NodeB to the Radio Network
  Controller (up-link message);
* 3, if the content is a message from the Radio Network Controller
  to NodeB (down-link message).

The IPv6 addresses and SCTP ports identify the endpoints of the path;
the SCTP stream ID identifies the SCTP stream of the path.

#### Payload

For AAL2, UDP-over-IPv4, and UDP-over-IPv6 traffic, context information
for the Frame Protocol and for the RLC/MAC layer is provided following
the subheader.


The Frame Protocol context information is of the form:

    +----------------------------------+
    |         Network Interface        |
    |             (1 Octet)            |
    +----------------------------------+
    |              Division            |
    |             (1 Octet)            |
    +----------------------------------+
    |              Release             |
    |             (1 Octet)            |
    +----------------------------------+
    |              Padding             |
    |             (1 Octet)            |
    +----------------------------------+
    |            Release year          |
    |             (2 Octets)           |
    +----------------------------------+
    |           Release month          |
    |             (1 Octet)            |
    +----------------------------------+
    |     Uplink/Downlink indicator    |
    |             (1 Octet)            |
    +----------------------------------+
    |               Padding            |
    |             (2 Octets)           |
    +----------------------------------+
    |            Channel type          |
    |             (4 Octets)           |
    +----------------------------------+
    |     DCH CRC-present indicator    |
    |             (1 Octet)            |
    +----------------------------------+
    |               Padding            |
    |             (3 Octets)           |
    +----------------------------------+
    |         Paging indications       |
    |             (4 Octets)           |
    +----------------------------------+
    |           Channel count          |
    |             (4 Octets)           |
    +----------------------------------+
    |          E-DCH DDI count         |
    |             (4 Octets)           |
    +----------------------------------+
    |            E-DCH type            |
    |             (1 Octet)            |
    +----------------------------------+
    |          HS-DSCH entity          |
    |             (1 Octet)            |
    +----------------------------------+
    |  Channel information structures  |
    .                                  .
    .                                  .
    .                                  .
    |                                  |
    +----------------------------------+
    | E-DCH DDI information structures |
    .                                  .
    .                                  .
    .                                  .
    |                                  |
    +----------------------------------+

The network interface field contains a value that is one of:

* 0, if the traffic is from the Iub interface;
* 1, if the traffic is from the Iur interface.

The division field contains a value that is one of:

* 0, if the air interface is using FDD;
* 1, if the air interface is using 3.84 Mchips/s TDD;
* 2, if the air interface is using 1.28 Mchips/s TDD;
* 3, if the air interface is using 7.68 Mchips/s TDD.

The release field gives the release number for the version of the
frame protocol.

The release year field gives the release year number for the version of
the frame protocol.

The release month field gives the release month number (1 = January, 12
= December) for the version of the frame protocol.

The uplink/downlink indicator is 0 for messages sent from the Radio
Network Controller (RNC) to NodeB and 1 for messages sent from NodeB to
the RNC.

The channel type field contains a value that is one of:

* 1, if the traffic is on the Random Access Channel (RACH) using
  FDD;
* 2, if the traffic is on the RACH using TDD;
* 3, if the traffic is on the Forward Access Channel (FACH) for the
  Iub interface using FDD;
* 4, if the traffic is on the FACH for the Iub interface using
  TDD;
* 5, if the traffic is on the Downlink Shared Channel (DSCH) for the
  Iub interface using FDD;
* 6, if the traffic is on the DSCH for the Iub interface using
  TDD;
* 8, if the traffic is on the Uplink Shared Channel (USCH) using
  3.84 Mchips/s TDD;
* 24, if the traffic is on the USCH using 1.28 Mchips/s TDD;
* 9, if the traffic is on the Paging Channel (PCH);
* 10, if the traffic is on the Common Packet Channel (CPCH);
* 11, if the traffic is on the Broadcast Channel (BCH);
* 12, if the traffic is on a Dedicated Channel (DCH);
* 13, if the traffic is on the High Speed Downlink Shared Channel
  (HS-DSCH);
<---These are not used for this format but are reserved in case there's
a reason to use them; they come from Wireshark support for the Catapult
DCT2000 text file format.
* 14, if the traffic is on the IUR_CPCHF;
-->
* 15, if the traffic is on the FACH for the Iur interface;
* 16, if the traffic is on the DSCH for the Iur interface;
* 17, if the traffic is on an Enhanced Uplink Dedicated Channel
(E-DCH);
* 18, if the traffic is on the RACH using 1.28 Mchips/s TDD.
<!--These are not used for this format but are reserved in case there's
a reason to use them; they come from Wireshark support for the Catapult
DCT2000 text file format.
* 19, if the traffic is on the HSDSCH_COMMON;
* 20, if the traffic is on the HSDSCH_COMMON_T3;
* 21, if the traffic is on the EDCH_COMMON.
-->

The DCH CRC-present indicator is 0 if the CRC for DCHes and E-DCHes
is absent and 1 if it's present.

The paging indications field is 0 if there is a no-paging indication
bitmap in the payload and 1 if there's a paging indication bitmap in the
payload.

The E-DCH type field is always 0.

The HS-DSCH entity field contains a value that is one of:

* 0, if the entity is not defined;
* 1, if the traffic is an HS entity;
* 2, if the traffic is an EHS entity.

The array of channel information structures has the number of channel
information structure elements specified by the channel count field.
A channel information structure is of the form:

    +------------------------------------------------+
    | Number of transmitted RLC/MAC transport blocks |
    |                   (4 Octets)                   |
    +------------------------------------------------+
    |   Size of transmitted RLC/MAC transport blocks |
    |                   (4 Octets)                   |
    +------------------------------------------------+

The number of transmitted RLC/MAC transport blocks is the number of such
blocks in the Frame Protocol payload for the channel if the channel is
not an E-DCH.

The size of transmitted RLC/MAC transport blocks is the size, in bits,
of all such blocks in the Frame Protocol payload for the channel if the
channel is not an E-DCH.

The array of E-DCH DDI information structures has the number of E-DCH
DDI information structure elements specified by the E-DCH DDI count
field.  An E-DCH DDI information structure is of the form:

    +---------------------------+
    | Data Description Indicator|
    |         (1 Octet)         |
    +---------------------------+
    |          Padding          |
    |         (3 Octets)        |
    +---------------------------+
    |        MAC PDU size       |
    |         (4 Octets)        |
    +---------------------------+

The Data Description Indicator contains a value as specified by
{{3GPP-TS-25.321}}.

The RLC/MAC layer context information is of the form:

    +---------------------------+
    |           U-RNTI          |
    |         (4 Octets)        |
    +---------------------------+
    |            CTMUX          |
    |          (1 Octet)        |
    +---------------------------+
    |           Content         |
    |          (1 Octet)        |
    +---------------------------+
    |             Mode          |
    |          (1 Octet)        |
    +---------------------------+
    |       Radio bearer ID     |
    |          (1 Octet)        |
    +---------------------------+
    |     Ciphering indicator   |
    |          (1 Octet)        |
    +---------------------------+
    |    Deciphered indicator   |
    |          (1 Octet)        |
    +---------------------------+
    |          Padding          |
    |         (2 Octets)        |
    +---------------------------+

There are 64 RLC/MAC layer context information structures in sequence;
the number of valid structures is specified by the channel count field -
all structures following the last valid structure SHOULD be ignored.

The U-RNTI field is the UTRAN Radio Network Temporary Identifier
for the user equipment.

The CTMUX field is 0 if the channel is not multiplexed and 1 if the
channel is multiplexed.

The content field indicates the type of RLC channel carrying the
content; its value is one of:

* 0, if the content is for an unknown type of channel;
* 1, if the content is for a Dedicated Control Channel (DCCH);
* 2, if the content is for a Packet Switched (PS) Dedicated Traffic
  Channel (DTCH);
* 3, if the content is for a Circuit Switched (CS) DTCH.

The mode field contains a value that specifies the mode used for the RLC
sublayer; it is one of:

* 0 for Transparent mode;
* 1 for Unacknowledged mode;
* 2 for Acknowledged mode.

The radio bearer id (RBID) contains a value used by the network elements
at the Iub interface to refer a radio bearer.

The ciphering indicator is 0 if the payload is ciphered and 1 if it is
ciphered.

The deciphered indicator is 0 if the payload has not been deciphered and
1 if it has been deciphered.

The payload follows the RLC/MAC context information structures.  The
payload consists of frames for the Frame Protocol as specified by
{{3GPP-TS-25.427}} for dedicated channels and {{3GPP-TS-25.435}} for
common/shared channels.

For AAL5 traffic, an SSCOP packet, as specified by {{Q.2110}}, follows
the subheader.  Whether ALCAP or NBAP is carried inside SSCOP is
specified by the protocol field in the header.

For SCTP-over-IPv4 and SCTP-over-IPv6, an NBAP packet follows the
subheader.

## LINKTYPE_NORDIC_BLE

### Packet structure

    +---------------------------+
    |           BoardID         |
    |          (1 Octet)        |
    +---------------------------+
    |      Length of header     |
    |          (1 Octet)        |
    +---------------------------+
    |     Length of payload     |
    |          (1 Octet)        |
    +---------------------------+
    |       Protocol version    |
    |          (1 Octet)        |
    +---------------------------+
    |        Packet counter     |
    |          (2 Octets)       |
    +---------------------------+
    |         Packet type       |
    |          (1 Octet)        |
    +---------------------------+
    |          Payload          |
    .                           .
    .                           .
    .                           .

### Description

The board ID field indicates which Sniffer device the message is to or
from.  Its value is opaque, with different values for different devices.

The length of header field contains the length of the header following
the board ID, in octets, including the header length octet.

The length of payload field contains the length of the payload following
the header, in octets.

The protocol version field contains the version of this protocol; the
current version is 1.

The packet counter field is in little-endian byte order.  In messages
sent from the Sniffer to the host, it contains a count of messages sent
from the Sniffer to the host; in messages sent from the host to the
Sniffer, it contains a count of messages sent from the host to the
Sniffer.  In both cases, the count is modulo 65536.  This can be used to
detect missing packets.

The packet type field contains a value that is one of:

* `0x00`, for a REQ_FOLLOW message sent from the host to the Sniffer to
  only send packets received from a specific address;
* `0x01`, for an EVENT_FOLLOW message sent from the Sniffer to the host
  to indicate that it has entered the FOLLOW state;
* `0x05`, for an EVENT_CONNECT message sent from the Sniffer to the host
  to indicate that someone has connected to the unit we are
  following;
* `0x06`, for an EVENT_PACKET message sent from the Sniffer to the host,
  containing a Bluetooth LE packet captured by the Sniffer;
* `0x07`, for a REQ_SCAN_CONT message sent from the host to the Sniffer,
  telling it to scan continuously and hand over the packets ASAP;
* `0x09`, for a EVENT_DISCONNECT message sent from the Sniffer to the
  host, telling it that the connected address we were following has
  received a disconnect packet;
* `0x0C`, for a SET_TEMPORARY_KEY message, specifying a temporary key to
  use on encryption (for OOB and passkey);
* `0x0D`, for a PING_REQ message;
* `0x0E`, for a PING_RESP message;
* `0x13`, for a SWITCH_BAUD_RATE_REQ message;
* `0x14`, for a SWITCH_BAUD_RATE_RESP message;
* `0x17`, for a SET_ADV_CHANNEL_HOP_SEQ message sent from the host to
  the Sniffer, telling it which order to cycle through the channels when
  following an advertiser;
* `0xFE`, for a GO_IDLE sent from the host to the Sniffer, telling it to
  stop sending UART traffic and listen for new commands.

For an EVENT_PACKET message, the payload has the form:

    +---------------------------+
    |  Length of payload header |
    |          (1 Octet)        |
    +---------------------------+
    |            Flags          |
    |          (1 Octet)        |
    +---------------------------+
    |           Channel         |
    |          (1 Octet)        |
    +---------------------------+
    |            RSSI           |
    |          (1 Octet)        |
    +---------------------------+
    |        Event counter      |
    |          (2 Octets)       |
    +---------------------------+
    |          Delta time       |
    |          (4 Octets)       |
    +---------------------------+
    |         Bluetooth LE      |
    |      Link layer packet    |
    .                           .
    .                           .
    .                           .

The length of payload header field contains the length of the header
preceding the Bluetooth LE packet, including the length of payload
header field.

The flags field contains the following flag bits:

* `0x00000001` - the packet checksum is OK;
* `0x00000010` - the packet is from the master to the slave;
* `0x00000100` - the packet is encrypted.

The channel field contains the Bluetooth LE channel index of the channel
being used.

The RSSI field contains the absolute value of RSSI of the packet, in
dBm; the actual RSSI is the negative of that value.

The event counter field is in little-endian byte order.  For packets
that are part of a connection, it contains the value of a counter of
packets within the connection; there are separate counters for each
direction of the connection.

The delta time field is in little-endian byte order.  It contains the
time in microseconds from the end of the previous received packet to the
beginning of this packet.

Following the delta time field is a Bluetooth LE link-layer packet.

## LINKTYPE_NULL

### Packet structure for BSD loopback encapsulation

    +---------------------------+
    |       Protocol type       |
    |         (4 Octets)        |
    +---------------------------+
    |           Payload         |
    .                           .
    .                           .
    .                           .

### Description

The protocol type field is in the host byte order of the machine on
which the capture was done.  The values for that field are:

* `2` - payload is an IPv4 packet;
* `24` - payload is an IPv6 packet;
* `28` - payload is an IPv6 packet;
* `30` - payload is an IPv6 packet;
* `7` - payload is an OSI packet;
* `23` - payload is an IPX packet.

All of the IPv6 values correspond to IPv6 packets; code reading files
MUST treat all of them as ndicating an IPv6 packet.

Note that ``host byte order'' is the byte order of the machine on that
the packets are captured; if a live capture is being done, ``host byte
order'' is the byte order of the machine capturing the packets, but if a
``savefile'' is being read, the byte order is not necessarily that of
the machine reading the capture file.

## LINKTYPE_PKTAP

### Packet structure (PKTAP version 1)

    +---------------------------+
    |   Length of PKTAP header  |
    |         (4 Octets)        |
    +---------------------------+
    |        Record type        |
    |         (4 Octets)        |
    +---------------------------+
    | DLT_ value for this packet|
    |         (4 Octets)        |
    +---------------------------+
    |    ASCII interface name   |
    |        (24 Octets)        |
    +---------------------------+
    |        Packet flags       |
    |         (4 Octets)        |
    +---------------------------+
    |       Protocol family     |
    |         (4 Octets)        |
    +---------------------------+
    |  Link-layer header length |
    |         (4 Octets)        |
    +---------------------------+
    | Link-layer trailer length |
    |         (4 Octets)        |
    +---------------------------+
    |         Process ID        |
    |         (4 Octets)        |
    +---------------------------+
    |       Command name        |
    |        (20 Octets)        |
    +---------------------------+
    |       Service class       |
    |         (4 Octets)        |
    +---------------------------+
    |      Interface type       |
    |         (2 Octets)        |
    +---------------------------+
    |  Unit number of interface |
    |         (2 Octets)        |
    +---------------------------+
    |    Effective process ID   |
    |         (4 Octets)        |
    +---------------------------+
    |   Effective command name  |
    |        (20 Octets)        |
    +---------------------------+
    |           Flow ID         |
    |         (4 Octets)        |
    +---------------------------+
    |        IP protocol        |
    |         (4 Octets)        |
    +---------------------------+
    |    Time stamp, seconds    |
    |         (4 Octets)        |
    +---------------------------+
    |  Time stamp, microseconds |
    |         (4 Octets)        |
    +---------------------------+
    |            UUID           |
    |        (16 Octets)        |
    +---------------------------+
    |      Effective UUID       |
    |        (16 Octets)        |
    +---------------------------+
    |           Payload         |
    .                           .
    .                           .
    .                           .

### Packet structure (PKTAP version 2)

    +----------------------------------------+
    |         Length of PKTAP header         |
    |                (1 Octet)               |
    +----------------------------------------+
    |             Offset of UUID             |
    |                (1 Octet)               |
    +----------------------------------------+
    |         Offset of effective UUID       |
    |                (1 Octet)               |
    +----------------------------------------+
    |         Offset of interface name       |
    |                (1 Octet)               |
    +----------------------------------------+
    |          Offset of command name        |
    |                (1 Octet)               |
    +----------------------------------------+
    |      Offset of effective command name  |
    |                (1 Octet)               |
    +----------------------------------------+
    |       DLT_ value for this packet       |
    |               (2 Octets)               |
    +----------------------------------------+
    |        Link-layer header length        |
    |               (2 Octets)               |
    +----------------------------------------+
    |        Link-layer trailer length       |
    |               (2 Octets)               |
    +----------------------------------------+
    |             Interface type             |
    |               (2 Octets)               |
    +----------------------------------------+
    |              IP protocol               |
    |               (2 Octets)               |
    +----------------------------------------+
    |            Protocol family             |
    |               (4 Octets)               |
    +----------------------------------------+
    |              Service class             |
    |               (4 Octets)               |
    +----------------------------------------+
    |                 Flow ID                |
    |               (4 Octets)               |
    +----------------------------------------+
    |               Process ID               |
    |               (4 Octets)               |
    +----------------------------------------+
    |          Effective process ID          |
    |               (4 Octets)               |
    +----------------------------------------+
    |              Packet flags              |
    |               (4 Octets)               |
    +----------------------------------------+
    |                  UUID                  |
    |             (0-16 Octets)              |
    +----------------------------------------+
    |            Effective UUID              |
    |             (0-16 Octets)              |
    +----------------------------------------+
    |          ASCII interface name          |
    |             (0-24 Octets)              |
    +----------------------------------------+
    |              Command name              |
    |             (0-17 Octets)              |
    +----------------------------------------+
    |         Effective command name         |
    |             (0-17 Octets)              |
    +----------------------------------------+
    |                Payload                 |
    .                                        .
    .                                        .
    .                                        .

### Description

All multi-octet fields currently appear to be little-endian, but Apple
haven't indicated whether this is by design or merely a consequence of
all Apple machines that write this format being little-endian.

### In the PKTAP version 1 header:

The length field indicates how long the PKTAP header is; this value
includes the length of the length field itself.  It SHOULD be
at least 108; if it's larger, there is additional data in the header
following the effective command name.

The record type field contains a value that is one of:

* 0, if nothing follows the PKTAP header;
* 1, if a packet follows the PKTAP header.

The `DLT_` value field contains a macOS `DLT_` value for the packet, such as
`DLT_EN10MB` for an Ethernet packet.

The interface name contains a null-padded ASCII string giving the name
of the interface on which the packet arrived.  *Do not* assume
that there is a NUL character at the end of the name.

The flags field contains a set of flags for the packet:

* `0x00000001` - packet is an incoming packet
* `0x00000002` - packet is an outgoing packet
* `0x00000004` - process is delegated
* `0x00000008` - interface is delegated
* `0x00002000` - header has a time stamp
* `0x00004000` - packet is from a new flow
* `0x00008000` - packet is a retransmission
* `0x00010000` - packet is a keep-alive packet
* `0x00020000` - packet is on a socket
* `0x00040000` - packet is on a nexus channel
* `0x00080000` - this packet has a version 2 PKTAP header

The flags field is at the same offset in the version 1 and version 2
headers; it MUST be checked for the "version 2 PKTAP header" flag
before any other fields, including the length, are interpreted.

The protocol family field contains a value indicating the address family
of the packet.  It MUST be 0 for "unknown", 2 for IPv4, or 30 for IPv6.
It may also be another macOS `AF_` value; note that those values do not
necessarily correspond to the `AF_` value of the operating system on the
host reading a capture.

The link-layer header length field appears to contain the length of the
packet's link-layer header.  It might be 0.

The link-layer trailer length field is assumed to contain the length of
the packet's link-layer trailer.  It might be 0.

The process ID field contains the process ID of the process that sent
the packet; it might be 0 if the process ID is unknown.

The command name contains a null-padded ASCII string giving the last
component of the path name of the executable image running in the
process that sent the packet, truncated to 20 characters.  It might be
a null string if the executable image name is unknown. *Do not*
assume that there is a NUL character at the end of the name.

The service class field contains one of the following values:

* 0, for "best effort";
* 100, for "background system-initiated";
* 200, for "background user-initiated";
* 300, for "responsive data";
* 400, for "operations, administration, and management";
* 500, for "multimedia audio/video streaming";
* 600, for "responsive multimedia audio/video";
* 700, for "interactive video";
* 800, for "interactive voice";
* 900, for "network control".

Note that these are priorities for which there is a total order; they
have different delay tolerance, loss tolerance, etc. characteristics.

The interface type field contains an SNMP `ifType` value for the
interface.

The "unit number of interface" field is assumed to contain the unit
number of the interface.

The effective process ID field is assumed to contain a process ID of
some sort; it might be 0 if the process ID is unknown.

The effective command name contains a null-padded ASCII string giving
the last component of the path name of the executable image running in
some process, truncated to 20 characters.  It might  be a null string if
the executable image name is unknown.  *Do not* assume that there
is a NUL character at the end of the name.

The flow ID field contains a hash value computed for the flow to which
the packet belongs; it is 0 if there is no flow ID.

The IP protocol field contains a macOS `IPPROTO_` value for the packet; it
might be `IPPROTO_RAW` if the packet was written to a raw socket.

All fields following the effective command name field are optional; the
length field indicates how many fields are present.

### In the PKTAP version 2 header:

The length field indicates how long the PKTAP header is; this value
includes the length of the length field itself.  It SHOULD be
at least 108; if it's larger, there is additional data in the header
following the effective command name.

The "offset of UUID" field is 0 if the UUID field is not present;
otherwise, it's the offset from the beginning of the PKTAP header
of the UUID field.

The "offset of effective UUID" field is 0 if the effective UUID field is
not present; otherwise, it's the offset from the beginning of the PKTAP
header of the effective UUID field.

The "offset of interface name" field is 0 if the interface name field is
not present; otherwise, it's the offset from the beginning of the PKTAP
header of the interface name field.

The "offset of interface name" field is 0 if the interface name field is
not present; otherwise, it's the offset from the beginning of the PKTAP
header of the interface name field.

The "offset of effective interface name" field is 0 if the effective
interface name field is not present; otherwise, it's the offset from the
beginning of the PKTAP header of the effective interface name field.

The "offset of command name" field is 0 if the command name field is not
present; otherwise, it's the offset from the beginning of the PKTAP
header of the command name field.

The "offset of effective command name" field is 0 if the effective
command name field is not present; otherwise, it's the offset from the
beginning of the PKTAP header of the effective command name field.

The `DLT_` value field contains a macOS `DLT_` value for the packet, such as
`DLT_EN10MB` for an Ethernet packet.

The link-layer header length field appears to contain the length of the
packet's link-layer header.  It might be 0.

The link-layer trailer length field is assumed to contain the length of
the packet's link-layer trailer.  It might be 0.

The interface type field contains an SNMP `ifType` value for the
interface.

The IP protocol field contains a macOS `IPPROTO_` value for the packet; it
might be `IPPROTO_RAW` if the packet was written to a raw socket.

The protocol family field contains a value indicating the address family
of the packet.  It MUST be 0 for "unknown", 2 for IPv4, or 30 for IPv6.
It might also be another macOS `AF_` value; note that those values do
not necessarily correspond to the `AF_` value of the operating system on
the host reading a capture.

The service class field contains one of the following values:

* 0, for "best effort";
* 100, for "background system-initiated";
* 200, for "background user-initiated";
* 300, for "responsive data";
* 400, for "operations, administration, and management";
* 500, for "multimedia audio/video streaming";
* 600, for "responsive multimedia audio/video";
* 700, for "interactive video";
* 800, for "interactive voice";
* 900, for "network control".

Note that these are priorities for which there is a total order; they
have different delay tolerance, loss tolerance, etc. characteristics.

The flow ID field contains a hash value computed for the flow to which
the packet belongs; it is 0 if there is no flow ID.

The process ID field contains the process ID of the process that sent
the packet; it might be 0 if the process ID is unknown.

The effective process ID field is assumed to contain a process ID of
some sort; it might be 0 if the process ID is unknown.

The flags field contains a set of flags for the packet:

* `0x00000001` - packet is an incoming packet
* `0x00000002` - packet is an outgoing packet
* `0x00000004` - process is delegated
* `0x00000008` - interface is delegated
* `0x00002000` - header has a time stamp
* `0x00004000` - packet is from a new flow
* `0x00008000` - packet is a retransmission
* `0x00010000` - packet is a keep-alive packet
* `0x00020000` - packet is on a socket
* `0x00040000` - packet is on a nexus channel
* `0x00080000` - this packet has a version 2 PKTAP header

The flags field is at the same offset in the version 1 and version 2
headers; it MUST be checked for the "version 2 PKTAP header" flag
before any other fields, including the length, are interpreted.

The interface name contains a null-terminated ASCII string giving the name
of the interface on which the packet arrived.

The command name contains a null-terminated ASCII string giving the last
component of the path name of the executable image running in the
process that sent the packet, truncated to 20 characters.  It might be
a null string if the executable image name is unknown.

The effective command name contains a null-terminated ASCII string
giving the last component of the path name of the executable image
running in some process, truncated to 20 characters.  It might be a
null string if the executable image name is unknown.

## LINKTYPE_PPI

### Description

Packets start with a Per-Packet Information header, as specified by
{{PPI}}, followed by a packet in the format specified by the LINKTYPE_
value in the `pph_dlt` field of that header.

## LINKTYPE_PPP

### Description

PPP frames, as specified by {{Section 2 of ?RFC1661}}}.  If the first 2
octets are 0xff and 0x03, it's PPP in HDLC-like framing, as specified by
{{Section 3.1 of ?RFC1662}}, with the PPP header following those two
octets, otherwise it's PPP without framing, and the packet begins with
the PPP header.  The data in the frame is not octet-stuffed or
bit-stuffed.

## LINKTYPE_PPP_HDLC

### Description

PPP frames, as specified by {{Section 2 of ?RFC1661}}}.  The frames
include the address and control fields as specified by {{Section 3.1 of
?RFC1662}}.  The data in the frame is not octet-stuffed or bit-stuffed.

## LINKTYPE_PPP_WITH_DIR

### Packet structure

    +-----------+
    | Direction |
    | (1 Octet) |
    +-----------+
    | PPP frame |
    .           .
    .           .
    .           .

### Description

The Direction field is zero if the frame was received by the host
that captured the traffic and non-zero if the frame was sent by that
host.

The PPP frame is as specified by {{Section 2 of ?RFC1661}}}.  If the
first 2 octets are 0xff and 0x03, it's PPP in HDLC-like framing, as
specified by {{Section 3.1 of ?RFC1662}}, with the PPP header following
those two octets, otherwise it's PPP without framing, and the packet
begins with the PPP header.  The data in the frame is not octet-stuffed
or bit-stuffed.

## LINKTYPE_RDS

### Packet structure

    +---------------------------+
    |  RDS Information Word 1   |
    |         (2 Octets)        |
    +---------------------------+
    |  RDS Information Word 2   |
    |         (2 Octets)        |
    +---------------------------+
    |  RDS Information Word 3   |
    |         (2 Octets)        |
    +---------------------------+
    |  RDS Information Word 4   |
    |         (2 Octets)        |
    +---------------------------+
    |    RDS Offset Symbol 1    |
    |         (1 Octet)         |
    +---------------------------+
    |    RDS Offset Symbol 2    |
    |         (1 Octet)         |
    +---------------------------+
    |    RDS Offset Symbol 3    |
    |         (1 Octet)         |
    +---------------------------+
    |    RDS Offset Symbol 4    |
    |         (1 Octet)         |
    +---------------------------+

### Description

Each frame corresponds to a group, as described in section 5 "Baseband
coding" of {{IEC-62106-1}}.  The information words from the four blocks
in the group appear first, in big-endian byte order, followed by an
encoding of the offset words from the four blocks in the group.

The offset words contain a value that is one of:

* 0, for offset word `A`;
* 1, for offset word `B`;
* 2, for offset word `C`;
* 3, for offset word `D`;
* 4, for offset word `C'` (C-TAG);
* 5, for offset word `E` (MMBS);
* 255, if the offset word has an invalid value.

## LINKTYPE_RTAC_SERIAL

### Packet structure

    +---------------------------+
    | Relative TimeStamp (Left) |
    |         (4 Octets)        |
    +---------------------------+
    | Relative TimeStamp (Right)|
    |         (4 Octets)        |
    +---------------------------+
    |     Serial Event Type     |
    |         (1 Octet)         |
    +---------------------------+
    |  UART Control Line State  |
    |         (1 Octet)         |
    +---------------------------+
    |          Footer           |
    |        (2 Octets)         |
    +---------------------------+
    |          Payload          |
    .                           .
    .                           .
    .                           .

### Description

The Relative TimeStamp Left field gives the time stamp, in seconds since
January 1, 1970, 00:00:00, of the packet, and the Right field gives the
number of microseconds since that second.  This is the same time
stamp that appears in packet headers in pcap files, and can be
easily be calculated from the time stamp that appears in Packet Blocks
and Enhanced Packet Blocks in pcapng files, and can be ignored in those
cases.

The Serial Event Type field  represents the type of packet entry in the pcap
file:

* `0x00` - STATUS_CHANGE
* `0x01` - DATA_TX_START
* `0x02` - DATA_RX_START
* `0x03` - DATA_TX_END
* `0x04` - DATA_RX_END
* `0x05` - CAPTURE_DATA_LOST
* `0x06` - CAPTURE_COMPLETE
* `0x07` - FRAMING_ERROR
* `0x08` - PARITY_ERROR
* `0x09` - SERIAL_BREAK_EVENT
* `0x0A` - SERIAL_OVERFLOW_EVENT

The UART Control Line State field shows the state of the serial UART
lines (asserted, de-asserted) at the time of the packet generation:

* `0x01` - Clear To Send
* `0x02` - Data Carrier Detect
* `0x04` - Data Set Ready
* `0x08` - Request To Send
* `0x10` - Data Terminal Ready
* `0x20` - RING
* `0x40` - MBOK

The Footer is reserved for future use.

The payload is one of: {{DNP3}}, {{Modbus}}, {{IEEE-C37.118.1}}, or
Schweitzer Engineering Laboratories Fast Message (SELFM) protocol.  The
packet does not specify which it is; a program processing these packets
MUST either have the payload type specified externally or MUST attempt
to determine it heuristically.

## LINKTYPE_SITA

### Packet structure

    +---------------------------+
    |            Flags          |
    |          (1 Octet)        |
    +---------------------------+
    |           Signals         |
    |          (1 Octet)        |
    +---------------------------+
    |          Errors 1         |
    |          (1 Octet)        |
    +---------------------------+
    |          Errors 2         |
    |          (1 Octet)        |
    +---------------------------+
    |          Protocol         |
    |          (1 Octet)        |
    +---------------------------+
    |           Payload         |
    .                           .
    .                           .
    .                           .

### Description

The bits in the Flags field are:

* `0x01` - set if the frame was transmitted from the remote to the IOP,
  clear if the frame was received by the remote from the IOP;
* `0x80` - set if there was a buffer failure.

The Signals field shows the state of various RS-232 signals:

* `0x01` - Data Set Ready;
* `0x02` - Data Terminal Ready;
* `0x04` - Clear To Send;
* `0x08` - Request To Send;
* `0x10` - Data Carrier Detect.

The bits in the Errors 1 field are, for frames received by the remote
from the IOP:

* `0x01` - framing error;
* `0x02` - parity error;
* `0x04` - collision;
* `0x08` - long frame received;
* `0x10` - short frame.

The Errors 1 field is unused for frames transmitted from the remote to
the IOP.

The bits in the Errors 2 field are, for frames received by the remote
from the IOP:

* `0x01` - non-octet-aligned frame;
* `0x02` - abort received;
* `0x04` - carrier lost;
* `0x08` - DPLL error;
* `0x10` - overrun error;
* `0x20` - frame length violation;
* `0x40` - CRC error;
* `0x80` - break received.

and, for frames transmitted from the remote to the IOP:

* `0x01` - transmitter underrun;
* `0x02` - Clear To Send lost;
* `0x04` - UART error;
* `0x08` - retransmit limit reached.

The Protocol field indicates the protocol; the values of that field are:

* 1 - LAPB;
* 2 - Ethernet;
* 3 - asynchronous (interrupt I/O);
* 4 - asynchronous (block I/O);
* 4 - asynchronous (block I/O);
* 5 - IPARS/ALC (International Passenger Airline Reservation
  System/Airline Link Control);
* 6 - UTS;
* 7 - PPP/HDLC;
* 8 - SDLC;
* 9 - Token Ring;
* 16 - I2C;
* 17 - DPM link;
* 18 - Frame Relay.

## LINKTYPE_SLIP

### Packet structure

    +-------------------------+
    |        Direction        |
    |        (1 Octet)        |
    +-------------------------+
    |         Payload         |
    .                         .
    .                         .
    .                         .

### Description

The direction field contains a value that is one of:

* 0, if the packet was received by the machine;
* 1, if the packet was sent by the machine.

The payload is either an IP packet or a compressed packet as per
{{?RFC1144}}, without framing and octet-stuffing.

## LINKTYPE_STANAG_5066_D_PDU

### Description

Packets are D_PDUs as described by NATO standard {{STANAG-5066}},
starting with the synchronization sequence, and including both header
and data CRCs.  The current version of STANAG 5066 is
backwards-compatible with the 1.0.2 version, although newer versions
are classified.

## LINKTYPE_SUNATM

### Packet structure

    +---------------------------+
    |             Flag          |
    |          (1 Octet)        |
    +---------------------------+
    |             VPI           |
    |          (1 Octet)        |
    +---------------------------+
    |             VCI           |
    |         (2 Octets)        |
    +---------------------------+
    |           Payload         |
    .                           .
    .                           .
    .                           .

### Description

The flag field contains a value that is one of:

* 0, if the payload is raw traffic;
* 1, if the payload is a LANE frame, beginning with a LANE
  header;
* 2, if the payload is LLC-encapsulated traffic, beginning with an
  802.2 LLC header;
* 3, if the payload is MARS traffic;
* 4, if the payload is IFMP traffic;
* 5, if the payload is ILMI traffic;
* 6, if the payload is Q.2931 traffic.

The VPI and VCI fields contain the VPI and VCI values for the payload;
the VCI field is in big-endian byte order.

## LINKTYPE_USB_DARWIN

### Packet structure

    +----------------------------------------+
    |            Version of header           |
    |                (2 Octets)              |
    +----------------------------------------+
    |             Length of header           |
    |                (1 Octet)               |
    +----------------------------------------+
    |               Request type             |
    |                (1 Octet)               |
    +----------------------------------------+
    |  Amount of data requested/transferred  |
    |                (4 Octets)              |
    +----------------------------------------+
    |              Returned status           |
    |                (4 Octets)              |
    +----------------------------------------+
    | Number of isochronous frames following |
    |                (4 Octets)              |
    +----------------------------------------+
    |                Unique ID               |
    |                (4 Octets)              |
    +----------------------------------------+
    |                locationID              |
    |                (4 Octets)              |
    +----------------------------------------+
    |              Endpoint speed            |
    |                (1 Octet)               |
    +----------------------------------------+
    |              Device address            |
    |                (1 Octet)               |
    +----------------------------------------+
    |      Endpoint address and direction    |
    |                (1 Octet)               |
    +----------------------------------------+
    |              Endpoint type             |
    |                (1 Octet)               |
    +----------------------------------------+
    |                 Payload                |
    .                                        .
    .                                        .
    .                                        .

### Description

All multi-octet fields are little-endian.

The version number field is a 2-octet value with the upper 8 bits
giving the major version number, the next 4 bits giving the minor
version number, and the next 4 bits giving the sub-minor version number.
The current version is 1.0.0, so the value is `0x0100`.

The length field indicates how long the header is; this value
includes the length of the length field itself.  It MUST be
at least 32; if it's larger, there is additional data in the header
following the endpoint type.

The request type field contains a value that is one of:

* 0, if this packet indicates a submitted request;
* 1, if this packet indicates a completed request.

The "amount of data requested/transferred" field indicates how much data
was requested or transferred by the request.

The returned status field contains a status value for the request.  A
status value has a system identifier in the upper 6 bits, a subsystem
identifier in the next 12 bits down, and a per-subsystem error code in
the lower 14 bits.  The system identifier is usually 0, for "kernel"; if
the system identifier is 0 and the subsystem identifier is 3, for
"Unix", the code is a Darwin errno value.

For an isochronous endpoint, the "number of isochronous frames
following" field indicates the number of isochronous frames in the
packet.  For other endpoints, it is 0.

The unique ID field contains an identifier for the operation; this will
be the same for all packets for a request, so that it can be used to
match submitted and completed requests.

The locationID field contains a value that describes the bus topology to
which the device is connected.  The upper 8 bits contain the bus number;
all subsequent 4-bit fields correspond to the port numbers through which
the device is connected, so that, for example, a device on bus 26
that is connected to port 1 of the hub that is connected to root port 1 on
the host controller would have a locationID of `0x1a110000`.  If there are
fewer than 6 ports in the route, the unused port number fields are zero.

The endpoint speed field contains a value that is one of:

* 0, for Low Speed;
* 1, for Full Speed;
* 2, for High Speed;
* 3, for SuperSpeed;
* 4, for SuperSpeedPlus.

The device address field contains a device address in the lower 7 bits;
the uppermost bit is clear.

The endpoint address and direction field contains an endpoint number in
the lower 4 bits and a direction indicator in the uppermost bit; if the
uppermost bit is 0, the endpoint is an OUT endpoint, and if the
uppermost bit is 1, the endpoint is an IN endpoint.

The endpoint type field contains a value that is one of:

* 0, for control;
* 1, for isochronous;
* 2, for bulk;
* 3, for interrupt.

For non-isochronous endpoints:

* If the packet indicates a completed request, the payload is the data
  transferred.
* If the packet indicates a submitted request, then if the endpoint is
  is the Default Control Pipe, the payload is the setup data as
  specified in section 9.3 "USB Device Requests" of the USB 2.0
  specification, otherwise there is no payload.

For isochronous endpoints:

* If the packet indicates a completed request, the payload is a
  sequence of "number of isochronous frames following" isochronous
  frames.  Each isochronous frame begins with 0-3 octets of padding
  to put the data following it on a 4-octet boundary.  After that is a
  header of the form:

        +----------------------------------------+
        |             Length of header           |
        |                (4 Octets)              |
        +----------------------------------------+
        |               Frame length             |
        |                (4 Octets)              |
        +----------------------------------------+
        |               Frame status             |
        |                (4 Octets)              |
        +----------------------------------------+
        |               Frame number             |
        |                (8 Octets)              |
        +----------------------------------------+
        |                Time stamp              |
        |                (8 Octets)              |
        +----------------------------------------+

  The length field indicates how long the header is; this value
  includes the length of the length field itself.  It MUST be
  at least 28; if it's larger, there is additional data in the header
  following the time in which the frame completed.

  The frame length field indicates how many octets of data are in the
  frame.

  The frame status field contains a status value for the frame.  It is in
  the same format as the returned status field in the packet header.

  The frame number field is the frame number, from the Start-of-Frame
  packet, as specified by section 8.3.3 "Frame Number Field" of the USB
  2.0 specification, on which this frame was scheduled/executed by the
  controller.

  The time stamp field is time at which the frame completed.  It is a Mach
  absolute time, so it is a time in platform-dependent units; no
  indication of the units on the platform on which the capture was
  performed is available.

  Following the header is the data for the frame; the frame length field
  indicates how many octets of data there are for that frame.

  * If the packet indicates a submitted request, the payload is a
    sequence of "number of isochronous frames following" isochronous
    frame headers, with the frame length set to the number of octets to
    be transferred, the frame status field set to `0xe0000001`, and
    without any data following the header.

## Linux USB common header

There are two link-layer formats for Linux USB captures,
`LINKTYPE_USB_LINUX` and `LINKTYPE_USB_LINUX_MMAPPED`. They have
similar headers, with `LINKTYPE_USB_LINUX_MMAPPED` having additional
fields at the end of its header.

### Common header structure

The common part of the header has the following fields:

    +-------------------------------------------+
    |                  URB ID                   |
    |                (8 Octets)                 |
    +-------------------------------------------+
    |                 Event type                |
    |                  (1 Octet)                |
    +-------------------------------------------+
    |                Transfer type              |
    |                  (1 Octet)                |
    +-------------------------------------------+
    |   Endpoint number and transfer direction  |
    |                  (1 Octet)                |
    +-------------------------------------------+
    |               Device address              |
    |                  (1 Octet)                |
    +-------------------------------------------+
    |                 Bus number                |
    |                 (2 Octets)                |
    +-------------------------------------------+
    |                 Setup flag                |
    |                  (1 Octet)                |
    +-------------------------------------------+
    |                  Data flag                |
    |                  (1 Octet)                |
    +-------------------------------------------+
    |             Timestamp, seconds            |
    |                 (8 Octets)                |
    +-------------------------------------------+
    |          Timestamp, microseconds          |
    |                 (4 Octets)                |
    +-------------------------------------------+
    |                   Status                  |
    |                 (4 Octets)                |
    +-------------------------------------------+
    |                Data length                |
    |                 (4 Octets)                |
    +-------------------------------------------+
    |             Delivered data length         |
    |                 (4 Octets)                |
    +-------------------------------------------+
    |        Setup/isochronous information      |
    |                 (8 Octets)                |
    +-------------------------------------------+


### Description

A packet corresponds either to a URB submitted to the USB subsystem, a
completion report for a URB, or an error report for a URB.
All fields are in host byte order:

* When performing a live capture, the host byte order is the byte order
  of the machine on which the packets are being captured.
* When reading a pcap file, the host byte order is the byte order for
  the file, as specified by the file's magic number.
* When reading a pcapng file, the host byte order is the byte order for
  the section of the pcapng file in which the packet appears, as
  specified by that section's Section Header Block.

The URB ID field is a unique ID for the URB to which this packet refers.

The event type field is an ASCII character that indicates type type of
the event; it is:

* 'S' (0x53), if the event is a submission of a URB;
* 'C' (0x43), if the event is a completion report for a URB;
* 'E' (0x45), if the event reports an error from a URB
submission.

The transfer type field has a value that is one of:

* 0, if the transfer to which the URB applies is a isochronous
transfer;
* 1, if the transfer to which the URB applies is a interrupt
transfer;
* 2, if the transfer to which the URB applies is a control
transfer;
* 3, if the transfer to which the URB applies is a bulk transfer.

The uppermost bit of the endpoint number and transfer direction field
is 1 if the transfer is an input transfer and 0 if it is an output
transfer. The lowr 7 bits of the field contain the endpoint number.

The setup flag field is zero if the event is a submission of a URB for a
control transfer and non-zero otherwise.

The data flag field is zero if the event conains data and non-zero if it
contains no data.

The timestamp fields contain a time stamp for the event, in seconds and
microseconds since 1970-01-01 00:00:00 UTC; this MUST be the same as
the timestamp for the packet.

The status field contains zero if no error is being reported by the
event or the negative of a Linux errno value for the error being
reported if an error is being reported by the event.

If the setup flag is zero, the setup/isochronous infomration field
contains the setup data for a setup packet, as specified in the USB
standard.

If the setup flag is non-zero, and the transfer is an isochronous
transfer, the setup/isochronous information field contains:

    +----------------------------------------+
    |              Error count               |
    |               (4 Octets)               |
    +----------------------------------------+
    |         Number of descriptors          |
    |               (4 Octets)               |
    +----------------------------------------+

where the error count field is the number of errors in the isochronous
transfer and the number of descriptors field is the number of
isochronous descriptors for the transfer.

If the setup flag is non-zero, and the transfer is not an isochronous
transfer, the setup/isochronous information field does not contain any
information and SHOULD be ignored.

## LINKTYPE_USB_LINUX

### Packet structure

    +-------------------------+
    | Linux USB common header |
    |       (48 Octets)       |
    +-------------------------+
    |         Payload         |
    .                         .
    .                         .
    .                         .

The data, if any, for the event follows the common header.

## LINKTYPE_USB_LINUX_MMAPPED

### Packet structure

    +-------------------------------------------+
    |          Linux USB common header          |
    |                (48 Octets)                |
    +-------------------------------------------+
    |                  Interval                 |
    |                 (4 Octets)                |
    +-------------------------------------------+
    |                Start frame                |
    |                 (4 Octets)                |
    +-------------------------------------------+
    |               Transfer flags              |
    |                 (4 Octets)                |
    +-------------------------------------------+
    | Number of isochronous descriptors present |
    |                 (4 Octets)                |
    +-------------------------------------------+
    |                   Payload                 |
    .                                           .
    .                                           .
    .                                           .

### Description

For interrupt and isochronous transfers, the interval field is the
polling interval, in units of frames (milliseconds) for full-speed and
low-speed devices and microframes (.125 millisecond) for high-speed and
SuperSpeed devices. For other types of transfers, it does not contain a
meaningful value.

For isochronous transfers, the start frame field contains the initial
frame. For other types of transfers, it does not contain a meaningful
value.

For isochronous transfers, The number of isochronous descriptors present
field indicates the number of isochronous descriptors in the event. Its
value MUST be less than or equal to the value of the number of
descriptors field; if it is less than that value, not all descriptors
for the transfer are included in the event.

For isochronous transfers, the payload begins with a set of isochronous
descriptors of the form

    +----------------------------------------+
    |                 Status                 |
    |               (4 Octets)               |
    +----------------------------------------+
    |                 Offset                 |
    |               (4 Octets)               |
    +----------------------------------------+
    |                 Length                 |
    |               (4 Octets)               |
    +----------------------------------------+
    |                 Padding                |
    |               (4 Octets)               |
    +----------------------------------------+

The status field contains zero if no error occurred for that descriptor
or the negative of a Linux errno value for the error being reported if
an error occurred for that descriptor.

The offset field is the offset, in octets, of the data for the descriptor
from the beginning of the data portion of the payload.

The length field is the length, in octets, of the data for the
descriptor. This might be zero.

The padding field does not contain any information.

The number of isochronous descriptors present field specifies the number
of descriptors present in the event.

For all other types of transfer, there are no isochronous descriptors;
the number of isochronous descriptors present field contains no
meaningful data.

The data, if any, for the event follows the isochronous descriptors, if
any.

## LINKTYPE_VSOCK

### Packet structure

    +---------------------------+
    |         Source CID        |
    |         (8 Octets)        |
    +---------------------------+
    |      Destination CID      |
    |         (8 Octets)        |
    +---------------------------+
    |        Source port        |
    |         (4 Octets)        |
    +---------------------------+
    |      Destination port     |
    |         (4 Octets)        |
    +---------------------------+
    |         Operation         |
    |         (2 Octets)        |
    +---------------------------+
    |    Transport header type  |
    |         (2 Octets)        |
    +---------------------------+
    |   Transport header length |
    |         (2 Octets)        |
    +---------------------------+
    |      Transport header     |
    .                           .
    .                           .
    .                           .
    +---------------------------+
    |           Payload         |
    .                           .
    .                           .
    .                           .

### Description

The source and destination CID fields are in little-endian byte order;
they identify the source and destination vsock devices.

The source and destination port fields are in little-endian byte order;
they identify a connection or datagram flow between the source and
destination devices.

The operation field is in little-endian byte order; it contains a value
that is one of:

* 1, for a connect operation;
* 2, for a disconnect operation;
* 3, for a control operation;
* 4, for a data transfer operation.

The transport header type field is in little-endian byte order; it
contains a value that is one of:

* 1, if there is no transport header information;
* 2, if there is a virtio transport header.

The transport header length field is in little-endian byte order; it
indicates how many octets of transport header follow the length field.
It might be non-zero even if the transport header type field has a value
of 1; in that case, the octets for the transport header SHOULD be
skipped.

If the transport header type field has a value of 2, the transport
header is a virtio transport header as described below.  High-level
information about the packet is available in the vsockmon packet header
so parsing the transport header is only necessary for low-level packet
analysis.  This allows applications to process packet captures even when
the transport header type is unknown.

For packets with an operation field with a value of 4, the payload
follows the transport header.

### Virtio transport header structure

    +---------------------------+
    |         Source CID        |
    |         (8 Octets)        |
    +---------------------------+
    |      Destination CID      |
    |         (8 Octets)        |
    +---------------------------+
    |        Source port        |
    |         (4 Octets)        |
    +---------------------------+
    |      Destination port     |
    |         (4 Octets)        |
    +---------------------------+
    |       Payload length      |
    |         (4 Octets)        |
    +---------------------------+
    |        Socket type        |
    |         (2 Octets)        |
    +---------------------------+
    |         Operation         |
    |         (2 Octets)        |
    +---------------------------+
    |           Flags           |
    |         (4 Octets)        |
    +---------------------------+
    |       Available Space     |
    |         (4 Octets)        |
    +---------------------------+
    |       Receive Counter     |
    |         (4 Octets)        |
    +---------------------------+

### Description

The source and destination CID fields are in little-endian byte order;
they identify the source and destination vsock devices.

The source and destination port fields are in little-endian byte order;
they identify a connection or datagram flow between the source and
destination devices.

The payload length field is in little-endian byte order; it indicates
how many octets of data comprise the payload.

The socket type field is in little-endian byte order; it contains a
value that is one of:

* 1, for a connection-oriented, in-order, reliable stream.

The operation field is in little-endian byte order; it contains a value
that is one of:

* 1, for a connection request;
* 2, for a connection response;
* 3, for a connection reset;
* 4, for a connection shutdown;
* 5, for a data packet;
* 6, for a credit update;
* 7, for a credit update request.

The flags field is in little-endian byte order; its meaning depends on
the operation field value.  If the operation is a connection shutdown
then bit 0 indicates that no more data will be received and bit 1
indicates that no more data will be sent.

The available space field is in little-endian byte order; it indicates
how many octets of payload data can be received without risk of dropping
packets.

The receive counter field is in little-endian byte order; it indicates
how many octets of payload data have been received.

## LINKTYPE_WATTSTOPPER_DLM

### Packet structure

    +-------------------------+
    |        Dongle Code      |
    |        (1 Octet)        |
    +-------------------------+
    |       Packet Delay      |
    |        (2 Octets)       |
    +-------------------------+
    |        Preamble 1       |
    |        (1 Octet         |
    +-------------------------+
    |        Preamble 2       |
    |        (1 Octet)        |
    +-------------------------+
    |    Family/Address/IR    |
    |        (1 Octet)        |
    +-------------------------+
    |         Payload         |
    .                         .
    .                         .
    .                         .
    |        (N Octets)       |
    +-------------------------+

### Description
The WattStopper Digital Lighting Management (DLM) and
Legrand Nitoo Open protocol share common packet structure,
and are used in the lighting control industry.

The Dongle Code field contains a value that is one of:

* 0="No Error",
* 1="Preamble 1 Error",
* 2="Preamble 2 Error",
* 3="Checksum Error",
* 4="Timeout Error",
* 8="Other Family Error"

The Packet Delay field contains an integer value that is the
number of milliseconds since the previous packet, in big-endian byte order.

The Preamble 1 and Preamble 2 fields MUST each contain `0xAA`.

The Family/Address/IR field contains 3-bits of family code, 2-bits of
address mode, 2-bits of IR (infrared) routing, and 1-bit unused.
The 8 Legrand NITOO families are

* `000`=CAD Filaire
* `001`=TopDog
* `010`=CAD RF
* `011`=CAD PLC
* `100`=CAD IR
* `101`=DLM
* `110`=none
* `111`=Escape/DLM Bootloader

The Address mode bits are defined as

* `00`=Broadcast
* `01`=multicast
* `10`=unicast
* `11`=anonymous unicast

The Payload varies depending on the Family.

## LINKTYPE_ZBOSS_NCP

### Packet structure

    +---------------------------+
    |         Signature         |
    |         (5 Octets)        |
    +---------------------------+
    |          Version          |
    |         (1 Octet)         |
    +---------------------------+
    |           Type            |
    |         (1 Octet)         |
    +---------------------------+
    |          Options          |
    |    (1 Octet, bitfield)    |
    +---------------------------+
    |          Payload          |
    |     (Variable length)     |
    +---------------------------+

### Description

The Signature field contains ASCII string "ZBNCP".

The Version field is set to 0 (only this value is defined now).

The Type field is set to 6.

#### Options bitfield

         7   6   5   4   3   2   1   0
       .   .   .   .   .   .   .   .   .
     0 +---+---+---+---+---+---+---+---+
       |     reserved      |b02|b01|b00|
    +1 +---+---+---+---+---+---+---+---+

* `b00` is set to 1 if transmitting from device to host, else 0
* `b01` is set to 1 if host interrupt occurs
* `b02` is set to 1 if both sides are transmitting at the same time
* `b03`&ndash;`b07` are reserved for future use

#### Payload

The payload begins with the "Low-level protocol" header, as described in
section 3.2 of {{ZBOSS}}, so that the first two octets of the payload are
`0xde` `0xad`, in order.

## LINKTYPE_ZWAVE_R1_R2

### Packet structure

    +---------------------+
    |       Home ID       |
    |      (4 Octets)     |
    +---------------------+
    |    Source NodeID    |
    |      (1 Octets)     |
    +---------------------+
    |    Frame Control    |
    |      (2 Octets)     |
    +---------------------+
    | Destination NodeID  |
    |     (0-1 Octets)    |
    +---------------------+
    |       Length        |
    |      (1 Octet)      |
    +---------------------+
    |       Payload       |
    |    (0-54 Octets)    |
    +---------------------+
    |        FCS          |
    |     (1 Octet)       |
    +---------------------+

### Description

The Z-Wave MAC header format here is used by Type 1 devices with a
supported data rate of 9.6 Kbps (R1) and Type 2 devices with a supported
data rate of 40 Kbps (R2); some fields have been moved from their
locations in the MAC header for Channel Configurations 1 and 2, as
specified by section 8.1.3 "MPDU format" of {{G.9959}}.

## LINKTYPE_ZWAVE_R3

### Packet structure

    +---------------------+
    |       Home ID       |
    |      (4 Octets)     |
    +---------------------+
    |    Source NodeID    |
    |      (1 Octets)     |
    +---------------------+
    |    Frame Control    |
    |      (2 Octets)     |
    +---------------------+
    | Destination NodeID  |
    |     (0-1 Octets)    |
    +---------------------+
    |       Length        |
    |      (1 Octet)      |
    +---------------------+
    |      Sequence       |
    |      (1 Octet)      |
    +---------------------+
    |       Payload       |
    |    (0-158 Octets)   |
    +---------------------+
    |        FCS          |
    |     (2 Octes)       |
    +---------------------+

### Description

The Z-Wave MAC header format here is used by Type 3 devices with a
supported data rate of 100 Kbps (R3); some fields have been moved from
their locations in the MAC header for Channel Configuration 3, as
specified by section 8.1.3 "MPDU format" of {{G.9959}}.

## LINKTYPE_ZWAVE_TAP

### Packet structure

    +--------------------------+
    | Exegin Z-Wave tap header |
    |    (Variable Length)     |
    +--------------------------+
    |       Z-Wave MPDU        |
    .                          .
    .                          .
    .                          .

### Description

The Z-Wave tap header is specified by {{Exegin-Z-Wave-G.9959-TAP}}.

The Z-Wave MPDU is specified by section 8.1.3 "MPDU format" of
{{G.9959}}.

# Security Considerations

This document describes the IANA registration rules for the LINKTYPE encapsulations.
PCAP-related packet file formats use this value to determine what kind of headers precede network packet captures.
Many of these formats can contain IPv4 and IPv6 packets.
A system reading PCAP-related format captures can be subject to arbitrary inputs that may be controlled by malicious entities, so utmost caution is required.

Many LINKTYPE formats include a "snapshot" length, which may be smaller than the actual packet.  It is therefore very likely that trailing parts of a packet capture may be omitted, yet internal length fields in the packets will claim the packet is bigger than the capture.
This leads to trivial buffer overreads, and systems interpreting the packets need to carefully scrutinize all attempts to read data from a capture.


#  Contributors

PCAP has been developed over three and half decades by a variety of developers, including:
Bill Fenner,
Denis Ovsienko,
Francois-Xavier Le Bail,
Fulvio Risso,
Gerald Combs,
Gianluca Varenni,
Gisle Vanem,
Hannes Gredler,
Joerg Mayer,
Michal Sekletar,
Stephen Donnelly,
Torsten Landschoff,
and Jun-ichiro itojun Hagino.

PCAP was originally created at LBL by Steve McCanne, Craig Leres, and Van Jacobson.

#  Acknowledgments

The authors wish to thank: Michael Tuexen, Mohamed Boucadair, Carsten Bormann, Henk Birkholtz, and Robert Wilton their invaluable comments and encouragement.

<!--
COMMENTS.
1) if editing with emacs, please use markdown-mode
2) with gin (auto-wrap) *TURNED OFF*,
3) and visual-line-mode *ON*
4) start each sentence on a new line, and mostly keep it on one line.

INSERT GVIM settings.
-->
