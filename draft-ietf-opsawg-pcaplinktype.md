---
stand_alone: true
ipr: trust200902
docname: draft-ietf-opsawg-pcaplinktype-latest
cat: info
pi:
  symrefs: 'yes'
  toc: 'yes'
  compact: 'yes'
  subcompact: 'no'
  inline: 'yes'
  sortrefs: 'no'
  strict: 'yes'
title: Link-Layer Types for PCAP and PCAPNG Capture File Formats
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
    target: https://www.tcpdump.org/linktypes.html

  LIBPCAP:
    title: libpcap
    target: https://github.com/the-tcpdump-group/libpcap

  Wireshark:
    title: Homepage of Wireshark
    target: https://www.wireshark.org

  3GPP-TS-04.64:
    title: >
      Digital cellular telecommunications system (Phase 2+); General
      Packet Radio Service (GPRS); Mobile Station - Serving GPRS Support
      Node (MS-SGSN) Logical Link Control (LLC) layer specification
    refcontent: 3GPP TS 04.64

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
    refcontent: ANSI/ASHRAE Standard 135

  ATA-878.1-1999:
    title: ATA 878.1 - 1999 Local Area Network - Token Bus
    date: 1999
    refcontent: ARCNET Trade Association standard 878.1-1999
    target: https://web.archive.org/web/20100414154838/http://www.arcnet.com/resources/ata8781.pdf

  AVS:
    author:
      fullname: Solomon Peachy
    title: Archived AVS specification
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

  D-Bus:
    title: D-Bus Specification
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

  DOCSIS-4.0-MULP:
    title: DOCSIS 4.0 MAC and Upper Layer Protocols Interface Specification
    target: https://www.cablelabs.com/specifications/CM-SP-MULPIv4.0

  DOCSIS-XRA:
    title: Excentis XRA Header
    target: https://support.excentis.com/index.php?/Knowledgebase/Article/View/159

  Draft-ATA-878.2:
    title: Draft ATA 878.2 ARCNET Packet Fragmentation Standard Version 1.4
    date: 1992
    refcontent: ARCNET Trade Association draft standard 878.2
    target: https://web.archive.org/web/20100414154914/http://www.arcnet.com/resources/ata8782.pdf

  DVB-CI:
    title: >
      Common Interface Specification for Conditional Access and other
      Digital Video Broadcasting Decoder Applications
    target: https://dvb.org/?standard=common-interface-specification-for-conditional-access-and-other-digital-video-broadcasting-decoder-applications

  DVB-CI-PCAP:
    title: PCAP format for DVB-CI
    author:
    - fullname: Martin Kaiser
      ins: M. Kaiser
      org: ""
    date: January 2, 2021
    target: https://www.kaiser.cx/pcap-dvbci.html

  EBHSCR:
    title: Documentation EBHSCR
    target: http://www.elektrobit.com/ebhscr

  ERF:
    title: ERF Types Reference Guide
    target: https://www.endace.com/erf-extensible-record-format-types.pdf

  Exegin-TAP-Link:
    title: IEEE 802.15.4 TAP Link Type Specification
    target: https://github.com/jkcko/ieee802.15.4-tap/blob/master/IEEE%20802.15.4%20TAP%20Link%20Type%20Specification.pdf

  FD.io-VPP:
    title: VNET (VPP Network Stack)
    target: https://fdio-vpp.readthedocs.io/en/latest/gettingstarted/developers/vnet.html

  FRF.16.1:
    title: Multilink Frame Relay UNI/NNI Implementation Agreement FRF.16.1
    date: May 2002
    target: https://web.archive.org/web/20160427004354/https://www.broadband-forum.org/technical/download/FRF.16/frf16.1.pdf

  G.7041:
    title: >
      Generic Framing Procedure
    refcontent: ITU-T Recommendation G.7041/Y.1303
    target: https://www.itu.int/rec/T-REC-G.7041/en

  G.9959:
    title: >
      Short range narrow-band digital radiocommunication transceivers - PHY, MAC, SAR and LLC layer specifications
    refcontent: ITU-T Recommendation G.9959
    target: https://www.itu.int/rec/T-REC-G.9959/en

  H.222.0:
    title: >
      Information technology - Generic coding of moving pictures and
      associated audio information: Systems
    refcontent: ITU-T Recommendation H.222.0
    target: https://www.itu.int/rec/T-REC-H.222.0

  ISO-14443-PCAP:
    title: PCAP format for ISO14443
    author:
    - fullname: Martin Kaiser
      ins: M. Kaiser
      org: ""
    date: January 2, 2021
    target: https://www.kaiser.cx/posts/pcap-iso14443/

  KISS:
    title: The KISS TNC - A simple Host-to-TNC communications protocol
    target: https://www.ax25.net/kiss.aspx

  LINKTYPE_APPLE_IP_OVER_IEEE1394:
    title: LINKTYPE_APPLE_IP_OVER_IEEE1394
    target: https://www.tcpdump.org/linktypes/LINKTYPE_APPLE_IP_OVER_IEEE1394.html

  LINKTYPE_BLUETOOTH_BREDR_BB:
    title: LINKTYPE_BLUETOOTH_BREDR_BB
    target: https://www.tcpdump.org/linktypes/LINKTYPE_BLUETOOTH_BREDR_BB.html

  LINKTYPE_BLUETOOTH_LE_LL_WITH_PHDR:
    title: LINKTYPE_BLUETOOTH_LE_LL_WITH_PHDR
    target: https://www.tcpdump.org/linktypes/LINKTYPE_BLUETOOTH_LE_LL_WITH_PHDR.html

  LINKTYPE_BLUETOOTH_LINUX_MONITOR:
    title: LINKTYPE_BLUETOOTH_LINUX_MONITOR
    target: https://www.tcpdump.org/linktypes/LINKTYPE_BLUETOOTH_LINUX_MONITOR.html

  LINKTYPE_CAN_SOCKETCAN:
    title: LINKTYPE_CAN_SOCKETCAN
    target: https://www.tcpdump.org/linktypes/LINKTYPE_CAN_SOCKETCAN.html

  LINKTYPE_DISPLAYPORT_AUX:
    title: LINKTYPE_DISPLAYPORT_AUX
    target: https://www.tcpdump.org/linktypes/LINKTYPE_DISPLAYPORT_AUX.html

  LINKTYPE_DSA_TAG_BRCM:
    title: LINKTYPE_DSA_TAG_BRCM
    target: https://www.tcpdump.org/linktypes/LINKTYPE_DSA_TAG_BRCM.html

  LINKTYPE_DSA_TAG_BRCM_PREPEND:
    title: LINKTYPE_DSA_TAG_BRCM_PREPEND
    target: https://www.tcpdump.org/linktypes/LINKTYPE_DSA_TAG_BRCM_PREPEND.html

  LINKTYPE_DSA_TAG_DSA:
    title: LINKTYPE_DSA_TAG_DSA
    target: https://www.tcpdump.org/linktypes/LINKTYPE_DSA_TAG_DSA.html

  LINKTYPE_DSA_TAG_EDSA:
    title: LINKTYPE_DSA_TAG_EDSA
    target: https://www.tcpdump.org/linktypes/LINKTYPE_DSA_TAG_EDSA.html

  LINKTYPE_ETW:
    title: LINKTYPE_ETW
    target: https://www.tcpdump.org/linktypes/LINKTYPE_ETW.html

  LINKTYPE_FIRA_UCI:
    title: LINKTYPE_FIRA_UCI
    target: https://www.tcpdump.org/linktypes/LINKTYPE_FIRA_UCI.html

  LINKTYPE_FLEXRAY:
    title: LINKTYPE_FLEXRAY
    target: https://www.tcpdump.org/linktypes/LINKTYPE_FLEXRAY.html

  LINKTYPE_I2C_LINUX:
    title: LINKTYPE_I2C_LINUX
    target: https://www.tcpdump.org/linktypes/LINKTYPE_I2C_LINUX.html

  LINKTYPE_IEEE802_11_PRISM:
    title: LINKTYPE_IEEE802_11_PRISM
    target: https://www.tcpdump.org/linktypes/LINKTYPE_IEEE802_11_PRISM.html

  LINKTYPE_IPNET:
    title: LINKTYPE_IPNET
    target: https://www.tcpdump.org/linktypes/LINKTYPE_IPNET.html

  LINKTYPE_LIN:
    title: LINKTYPE_LIN
    target: https://www.tcpdump.org/linktypes/LINKTYPE_LIN.html

  LINKTYPE_LINUX_IRDA:
    title: LINKTYPE_LINUX_IRDA
    target: https://www.tcpdump.org/linktypes/LINKTYPE_LINUX_IRDA.html

  LINKTYPE_LINUX_LAPD:
    title: LINKTYPE_LINUX_LAPD
    target: https://www.tcpdump.org/linktypes/LINKTYPE_LINUX_LAPD.html

  LINKTYPE_LINUX_SLL:
    title: LINKTYPE_LINUX_SLL
    target: https://www.tcpdump.org/linktypes/LINKTYPE_LINUX_SLL.html

  LINKTYPE_LINUX_SLL2:
    title: LINKTYPE_LINUX_SLL2
    target: https://www.tcpdump.org/linktypes/LINKTYPE_LINUX_SLL2.html

  LINKTYPE_LOOP:
    title: LINKTYPE_LOOP
    target: https://www.tcpdump.org/linktypes/LINKTYPE_LOOP.html

  LINKTYPE_MUX27010:
    title: LINKTYPE_MUX27010
    target: https://www.tcpdump.org/linktypes/LINKTYPE_MUX27010.html

  LINKTYPE_NETANALYZER:
    title: LINKTYPE_NETANALYZER
    target: https://www.tcpdump.org/linktypes/LINKTYPE_NETANALYZER.html

  LINKTYPE_NETANALYZER_TRANSPARENT:
    title: LINKTYPE_NETANALYZER_TRANSPARENT
    target: https://www.tcpdump.org/linktypes/LINKTYPE_NETANALYZER_TRANSPARENT.html

  LINKTYPE_NETLINK:
    title: LINKTYPE_NETLINK
    target: https://www.tcpdump.org/linktypes/LINKTYPE_NETLINK.html

  LINKTYPE_NFC_LLCP:
    title: LINKTYPE_NFC_LLCP
    target: https://www.tcpdump.org/linktypes/LINKTYPE_NFC_LLCP.html

  LINKTYPE_NFLOG:
    title: LINKTYPE_NFLOG
    target: https://www.tcpdump.org/linktypes/LINKTYPE_NFLOG.html

  LINKTYPE_NG40:
    title: LINKTYPE_NG40
    target: https://www.tcpdump.org/linktypes/LINKTYPE_NG40.html

  LINKTYPE_NORDIC_BLE:
    title: LINKTYPE_NORDIC_BLE
    target: https://www.tcpdump.org/linktypes/LINKTYPE_NORDIC_BLE.html

  LINKTYPE_NULL:
    title: LINKTYPE_NULL
    target: https://www.tcpdump.org/linktypes/LINKTYPE_NULL.html

  LINKTYPE_PKTAP:
    title: LINKTYPE_PKTAP
    target: https://www.tcpdump.org/linktypes/LINKTYPE_PKTAP.html

  LINKTYPE_RDS:
    title: LINKTYPE_RDS
    target: https://www.tcpdump.org/linktypes/LINKTYPE_RDS.html

  LINKTYPE_RTAC_SERIAL:
    title: LINKTYPE_RTAC_SERIAL
    target: https://www.tcpdump.org/linktypes/LINKTYPE_RTAC_SERIAL.html

  LINKTYPE_SITA:
    title: LINKTYPE_SITA
    target: https://www.tcpdump.org/linktypes/LINKTYPE_SITA.html

  LINKTYPE_SLIP:
    title: LINKTYPE_SLIP
    target: https://www.tcpdump.org/linktypes/LINKTYPE_SLIP.html

  LINKTYPE_SUNATM:
    title: LINKTYPE_SUNATM
    target: https://www.tcpdump.org/linktypes/LINKTYPE_SUNATM.html

  LINKTYPE_USB_DARWIN:
    title: LINKTYPE_USB_DARWIN
    target: https://www.tcpdump.org/linktypes/LINKTYPE_USB_DARWIN.html

  LINKTYPE_VSOCK:
    title: LINKTYPE_VSOCK
    target: https://www.tcpdump.org/linktypes/LINKTYPE_VSOCK.html

  LINKTYPE_WATTSTOPPER_DLM:
    title: LINKTYPE_WATTSTOPPER_DLM
    target: https://www.tcpdump.org/linktypes/LINKTYPE_WATTSTOPPER_DLM.html

  LINKTYPE_ZBOSS_NCP:
    title: LINKTYPE_ZBOSS_NCP
    target: https://www.tcpdump.org/linktypes/LINKTYPE_ZBOSS_NCP.html

  LINKTYPE_ZWAVE_R1_R2:
    title: LINKTYPE_ZWAVE_R1_R2
    target: https://www.tcpdump.org/linktypes/LINKTYPE_ZWAVE_R1_R2.html

  LINKTYPE_ZWAVE_R3:
    title: LINKTYPE_ZWAVE_R3
    target: https://www.tcpdump.org/linktypes/LINKTYPE_ZWAVE_R3.html

  LoRaTap:
    title: LoRaTap
    target: https://github.com/eriknl/LoRaTap/blob/master/README.md

  LoRaWAN:
    title: About the LoRaWAN Standards
    target: https://lora-alliance.org/lorawan-for-developers/

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

  Q.703:
    title: >
      Specifications of Signalling System No. 7
      Signalling Link
    refcontent: ITU-T Recommendation Q.703
    target: https://www.itu.int/rec/T-REC-Q.703/en/

  Q.704:
    title: >
      Specifications of Signalling System No. 7
      Signalling Network Functions And Messages
    refcontent: ITU-T Recommendation Q.704
    target: https://www.itu.int/rec/T-REC-Q.704/en/

  Q.711:
    title: >
      Specifications of Signalling System No. 7
      Functional description of the signalling connection control part
    refcontent: ITU-T Recommendation Q.711
    target: https://www.itu.int/rec/T-REC-Q.711/en/

  Q.712:
    title: >
      Specifications of Signalling System No. 7
      Definition and function of signalling connection control part messages
    refcontent: ITU-T Recommendation Q.712
    target: https://www.itu.int/rec/T-REC-Q.712/en/

  Q.713:
    title: >
      Specifications of Signalling System No. 7
      Signalling connection control part functions and codes
    refcontent: ITU-T Recommendation Q.713
    target: https://www.itu.int/rec/T-REC-Q.713/en/

  Q.714:
    title: >
      Specifications of Signalling System No. 7
      Signalling connection control part procedures
    refcontent: ITU-T Recommendation Q.714
    target: https://www.itu.int/rec/T-REC-Q.714/en/

  Q.920:
    title: >
      Digital Subscriber Signalling System No. 1 (DSS1) - ISDN
      User-Network Interface Data Link Layer - General aspects
    refcontent: ITU-T Recommendation Q.920
    target: https://www.itu.int/rec/T-REC-Q.920/en/

  Q.921:
    title: >
      ISDN user-network interface - Data Link Layer specification
    refcontent: ITU-T Recommendation Q.921
    target: https://www.itu.int/rec/T-REC-Q.921/en/

  Radiotap:
    author:
      org: radiotap.org
    title: Radiotap Web site
    target: http://www.radiotap.org/

  STANAG-5066:
    title: >
      Profile for Maritime High Frequency (HF) Radio Data Communications
    refcontent: STANAG 5066
    target: https://web.archive.org/web/20051004082010/http://www.armymars.net/ArmyMARS/HF-Email/resources/stanag5066.pdf

  USBPcap:
    title: USBPcap Capture format specification
    target: https://desowin.org/usbpcap/captureformat.html

  Z_WAVE_SERIAL:
    title: Z-Wave Serial API Host Application Programming Guide
    target: https://www.silabs.com/documents/public/user-guides/INS12350-Serial-API-Host-Appl.-Prg.-Guide.pdf

--- abstract

This document creates an IANA registry for the PCAP and PCAPNG LINKTYPE values.
The PCAP and PCAPNG formats are used to save network captures from programs such as tcpdump and wireshark, when using libraries such as libpcap.

--- middle

# Introduction

In the late 1980's, Van Jacobson, Steve McCanne, and others at the
Network Research Group at Lawrence Berkeley National Laboratory
developed the tcpdump program to capture and dissect network traces.
The code to capture traffic, using low-level mechanisms in various
operating systems, and to read and write network traces to a file was
later put into a library named libpcap {{LIBPCAP}}.

Other documents describe the original (legacy) format used by tcpdump (pcap), as well as the revised format (pcapng) which is used by tcpdump and Wireshark {{Wireshark}}.

Within those formats each packet that is captured is described by a LINKTYPE value.
The LINKTYPE value selects one of many hundred formats for metadata and Layer 2 encapsulation of the packet.

This document creates an IANA registry for the LINKTYPE format, establishing the IANA
Considerations by which other uses of the pcap and pcapng formats may register new
LINKTYPE values.

# Terminology

{::boilerplate bcp14}

#  IANA Considerations

## PCAP Registry {#pcapreg}

IANA is requested to create a new registry group entitled "The PCAP Registry".

## LinkType Registry {#linktype}

IANA is also requested to create a registry entitled "PCAP LinkType List" under The PCAP registry group ({{pcapreg}}).

The registry has the following structure:

* LINKTYPE Name: Indicates the symbolic name for this LinkType. The name is prefixed with "LINKTYPE_" (i.e., LINKTYPE_something).
* LINKTYPE Value: Indicates the integer value assigned for this LinkType.
* Description: Provides a very short description.
* Reference: Indicates an authoritative the document reference for the LinkType or a requester reference.

The LinkType value is a 16-bit number. The policy allocation for the LinkType values is as follows:

* Values from 32768 to 65000 must be allocated via Specification Required ({{Section 4.6 of !RFC8126}}). Guidance for Designated Experts is provided in {{sec-de}}.

* Values from 0 to 32767 are allocated following a First-Come First-Served policy ({{Section 4.4 of !RFC8126}}).  Note that this category includes the historical allocations which have an uneven level of definition.

* Values from 65001 to 65535 are reserved for Private Use ({{Section 4.1 of !RFC8126}}).

The initial version of the registry is provided in {{sec-initial}}.  In each
case here, the reference should be to
{{TCPDUMP}} and the RFC number to be assigned to this document, which is not repeated each time.

The initial values table is based upon the Link type list maintained by
libpcap, and published on {{TCPDUMP}}.

Note that historically, values were assigned incrementally following First Come First Served policy, with a preference for a public specification, but with no mandate.
Some historical values may have less specification than desired.

LinkType values 147 to 162 named LINKTYPE\_RESERVED\_xx were originally reserved for Private Use. Their use is Deprecated in favour of the values in the 65001-65535 range.

In general, Private Use values should never leak out of the entity that uses it.
As the First Come First Served range is large and easily obtained, official values are recommended.

> There is often an associated DLT value which is often identical in value, but not universally so. DLT values are associated with specific operation system captures, and are operating system specific, and are thus not subject to standardization.

### Initial Values {#sec-initial}

This is the initial table for the registry:

{::include linktypes.md}


### Guidance for Designated Experts {#sec-de}

When processing a request for a Specification Required allocation the Designated Experts are expected to be able to find the relevant specification at a clearly stable URL.
It is noted that many enterprise web sites do not maintain URLs over a long period of time, and a documented in a "wp-uploaded" section is highly likely to disappear.
In addition Specifications that require a reader to click through any kind of marketing or legal agreement are not considered public.
(This is the opinion of other corporate lawyers, who worry about what their employees might have agreed to)

The specification needs to be clearly written, and when the contents of the link type can contain an IPv4 or IPv6 header, then the octets between the beginning of the link type and the IP header needs to be very clearly specified in that document.

Specifications that are not publicly available, but which may be obtained via liaison agreements (such as to ITU-T, 3GPP, IEEE, etc.) are acceptable particularly if the document will be public eventually, but are discouraged.
For other documents, the Designated Expert will need use their judgement, or consult the WG or an Area Director.

Linktypes may be allocated for specifications not publicly available may be made within the First-Come/First-Served area.
This includes specifications that might be classified.
The minimal requirement is for a contact person for that link type.

# Security Considerations

This document describes the IANA registration rules for the LINKTYPE encapsulations.
PCAP, and PCAPNG packet file formats use this value to determine what kind of headers precede network packet captures.
Many of these formats can contain IPv4 and IPv6 packets.
A system reading PCAP or PCAPNG format captures can be subject to arbitrary inputs that may be controlled by malicious entities, so utmost caution is required.

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
and Jun-ichiro itojun Hagino

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
