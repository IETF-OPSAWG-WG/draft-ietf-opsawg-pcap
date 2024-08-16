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

  ASHRAE-135:
    title: >
      BACnet(TM): A Data Communication Protocol for Building Automation
      and Control Networks
    refcontent: ANSI/ASHRAE Standard 135

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

  Radiotap:
    author:
      org: radiotap.org
    title: Radiotap Web site
    target: http://www.radiotap.org/

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

* Values from 0 to 32767 must be allocated via Specification Required ({{Section 4.6 of !RFC8126}}). Guidance for Designated Experts is provided in {{sec-de}}.

* Values from 32768 to 65000 are allocated following a First-Come First-Served policy ({{Section 4.4 of !RFC8126}}).

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

| LINKTYPE Name | LINKTYPE Value | Description | Reference |
|:--------------|:--------------:|:------------|:----------|
|LINKTYPE_NULL|0|BSD loopback encapsulation|{{LINKTYPE_NULL}}
|LINKTYPE_ETHERNET|1|IEEE 802.3 Ethernet|
|LINKTYPE_EXP_ETHERNET|2|Xerox experimental 3Mb Ethernet|
|LINKTYPE_AX25|3|AX.25 packet|{{AX.25}}
|LINKTYPE_PRONET|4|Reserved for PRONET|
|LINKTYPE_CHAOS|5|Reserved for MIT CHAOSNET|
|LINKTYPE_IEEE802_5|6|IEEE 802.5 Token Ring|
|LINKTYPE_ARCNET_BSD|7|ARCNET Data Packets with BSD encapsulation|
|LINKTYPE_SLIP|8|SLIP|{{LINKTYPE_SLIP}}
|LINKTYPE_PPP|9|PPP|{{?RFC1661}}/{{?RFC1662}}
|LINKTYPE_FDDI|10|FDDI: per ANSI INCITS 239-1994|
|not to be used|11-49|Do not use these values|
|LINKTYPE_PPP_HDLC|50|PPP in HDLC-like framing|{{?RFC1662}}
|LINKTYPE_PPP_ETHER|51|PPPoE|{{Section 4 of ?RFC2516}}
|Reserved|52-98|Do not use these values|
|LINKTYPE_SYMANTEC_FIREWALL|99|Reserved for Symantec Enterprise Firewall|
|LINKTYPE_ATM_RFC1483|100|LLC/SNAP-encapsulated ATM|{{?RFC1483}}
|LINKTYPE_RAW|101|Raw IP; begins with an IPv4 or IPv6 header|
|LINKTYPE_SLIP_BSDOS|102|Reserved for BSD/OS SLIP BPF header|
|LINKTYPE_PPP_BSDOS|103|Reserved for BSD/OS PPP BPF header|
|LINKTYPE_C_HDLC|104|Cisco PPP with HDLC framing|{{Section 4.3.1 of ?RFC1547}}
|LINKTYPE_IEEE802_11|105|IEEE 802.11 wireless LAN|
|LINKTYPE_ATM_CLIP|106|ATM Classical IP, with no header preceding IP|
|LINKTYPE_FRELAY|107|Frame Relay LAPF frames|
|LINKTYPE_LOOP|108|OpenBSD loopback encapsulation|{{LINKTYPE_LOOP}}
|LINKTYPE_ENC|109|Reserved for OpenBSD IPSEC encapsulation|
|LINKTYPE_LANE8023|110|Reserved for ATM LANE + 802.3|
|LINKTYPE_HIPPI|111|Reserved for NetBSD HIPPI|
|LINKTYPE_HDLC|112|Reserved for NetBSD HDLC framing|
|LINKTYPE_LINUX_SLL|113|Linux "cooked" capture encapsulation|{{LINKTYPE_LINUX_SLL}}
|LINKTYPE_LTALK|114|Apple LocalTalk|
|LINKTYPE_ECONET|115|Reserved for Acorn Econet|
|LINKTYPE_IPFILTER|116|Reserved for OpenBSD ipfilter|
|LINKTYPE_PFLOG|117|OpenBSD pflog; "struct pfloghdr" structure|
|LINKTYPE_CISCO_IOS|118|Reserved for Cisco-internal use|
|LINKTYPE_IEEE802_11_PRISM|119|Prism monitor mode|{{LINKTYPE_IEEE802_11_PRISM}}
|LINKTYPE_IEEE802_11_AIRONET|120|Reserved for 802.11 + FreeFreeBSD Aironet radio metadata|
|LINKTYPE_HHDLC|121|Reserved for Siemens HiPath HDLC|
|LINKTYPE_IP_OVER_FC|122|IP-over-Fibre Channel, starting with the Network_Header|{{?RFC2625}}
|LINKTYPE_SUNATM|123|ATM traffic captured from a SunATM device|{{LINKTYPE_SUNATM}}
|LINKTYPE_RIO|124|Reserved for RapidIO|
|LINKTYPE_PCI_EXP|125|Reserved for PCI Express|
|LINKTYPE_AURORA|126|Reserved for Xilinx Aurora link layer|
|LINKTYPE_IEEE802_11_RADIOTAP|127|Radiotap header, followed by an 802.11 header|{{Radiotap}}
|LINKTYPE_TZSP|128|Reserved for Tazmen Sniffer Protocol|
|LINKTYPE_ARCNET_LINUX|129|ARCNET Data Packets, per RFC 1051 frames w/variations|
|LINKTYPE_JUNIPER_MLPPP|130|Reserved for Juniper Networks|
|LINKTYPE_JUNIPER_MLFR|131|Reserved for Juniper Networks|
|LINKTYPE_JUNIPER_ES|132|Reserved for Juniper Networks|
|LINKTYPE_JUNIPER_GGSN|133|Reserved for Juniper Networks|
|LINKTYPE_JUNIPER_MFR|134|Reserved for Juniper Networks|
|LINKTYPE_JUNIPER_ATM2|135|Reserved for Juniper Networks|
|LINKTYPE_JUNIPER_SERVICES|136|Reserved for Juniper Networks|
|LINKTYPE_JUNIPER_ATM1|137|Reserved for Juniper Networks|
|LINKTYPE_APPLE_IP_OVER_IEEE1394|138|Apple IP-over-IEEE 1394 cooked header|{{LINKTYPE_APPLE_IP_OVER_IEEE1394}}
|LINKTYPE_MTP2_WITH_PHDR|139|Signaling System 7 (SS7) Message Transfer Part Level|{{Q.703}}
|LINKTYPE_MTP2|140|SS7 Level 2|{{Q.703}}
|LINKTYPE_MTP3|141|SS7 Level 3, with no MTP2 header|{{Q.704}}
|LINKTYPE_SCCP|142|SS7 Control Part, with no MTP3 or MTP2 header|{{Q.711}} {{Q.712}} {{Q.713}} {{Q.714}}
|LINKTYPE_DOCSIS|143|DOCSIS MAC frames|{{DOCSIS-4.0-MULP}}
|LINKTYPE_LINUX_IRDA|144|Linux-IrDA packets|{{LINKTYPE_LINUX_IRDA}}
|LINKTYPE_IBM_SP|145|Reserved for IBM SP switch|
|LINKTYPE_IBM_SN|146|Reserved for IBM Next Federation switch|
|LINKTYPE_RESERVED_01|147|For private use (deprecated)|
|LINKTYPE_RESERVED_02|148|For private use (deprecated)|
|LINKTYPE_RESERVED_03|149|For private use (deprecated)|
|LINKTYPE_RESERVED_04|150|For private use (deprecated)|
|LINKTYPE_RESERVED_05|151|For private use (deprecated)|
|LINKTYPE_RESERVED_06|152|For private use (deprecated)|
|LINKTYPE_RESERVED_07|153|For private use (deprecated)|
|LINKTYPE_RESERVED_08|154|For private use (deprecated)|
|LINKTYPE_RESERVED_09|155|For private use (deprecated)|
|LINKTYPE_RESERVED_10|156|For private use (deprecated)|
|LINKTYPE_RESERVED_11|157|For private use (deprecated)|
|LINKTYPE_RESERVED_12|158|For private use (deprecated)|
|LINKTYPE_RESERVED_13|159|For private use (deprecated)|
|LINKTYPE_RESERVED_14|160|For private use (deprecated)|
|LINKTYPE_RESERVED_15|161|For private use (deprecated)|
|LINKTYPE_RESERVED_16|162|For private use (deprecated)|
|LINKTYPE_IEEE802_11_AVS|163|AVS header, followed by an 802.11 header|{{AVS}}
|LINKTYPE_JUNIPER_MONITOR|164|Reserved for Juniper Networks|
|LINKTYPE_BACNET_MS_TP|165|BACnet MS/TP frames|Section 9.3 MS/TP Frame Format of {{ASHRAE-135}}
|LINKTYPE_PPP_PPPD|166|PPP in HDLC-like encapsulation, like LINKTYPE_PPP_HDLC, different stuffing|
|LINKTYPE_JUNIPER_PPPOE|167|Reserved for Juniper Networks|
|LINKTYPE_JUNIPER_PPPOE_ATM|168|Reserved for Juniper Networks|
|LINKTYPE_GPRS_LLC|169|General Packet Radio Service Logical Link Control, as per 3GPP TS 04.64|{{_3GPP-TS-04.64}}
|LINKTYPE_GPF_T|170|Transparent-mapped generic framing procedure|{{G.7041}}
|LINKTYPE_GPF_F|171|Frame-mapped generic framing procedure|{{G.7041}}
|LINKTYPE_GCOM_T1E1|172|Reserved for Gcom T1/E1 line monitoring equipment|
|LINKTYPE_GCOM_SERIAL|173|Reserved for Gcom T1/E1 line monitoring equipment|
|LINKTYPE_JUNIPER_PIC_PEER|174|Reserved for Juniper Networks|
|LINKTYPE_ERF_ETH|175|Endace ERF header followed by 802.3 Ethernet|
|LINKTYPE_ERF_POS|176|Endace ERF header followed by Packet-over-SONET|
|LINKTYPE_LINUX_LAPD|177|Linux vISDN LAPD frames|{{LINKTYPE_LINUX_LAPD}}
|LINKTYPE_JUNIPER_ETHER|178|Reserved for Juniper Networks|
|LINKTYPE_JUNIPER_PPP|179|Reserved for Juniper Networks|
|LINKTYPE_JUNIPER_FRELAY|180|Reserved for Juniper Networks|
|LINKTYPE_JUNIPER_CHDLC|181|Reserved for Juniper Networks|
|LINKTYPE_MFR|182|FRF.16.1 Multi-Link Frame Relay frames, beginning with an FRF.12 Interface fragmentation format fragmentation header|{{FRF.16.1}}
|LINKTYPE_JUNIPER_VP|183|Reserved for Juniper Networks|
|LINKTYPE_A429|184|Reserved for ARINC 429 frames|
|LINKTYPE_A653_ICM|185|Reserved for Arinc 653 Interpartition Communication messages|
|LINKTYPE_USB_FREEBSD|186|USB packets, beginning with a FreeBSD USB header|
|LINKTYPE_BLUETOOTH_HCI_H4|187|Bluetooth HCI UART transport layer; the frame contains an HCI packet indicator octet, as specified by the UART Transport Layer portion of the most recent Bluetooth Core specification, followed by an HCI packet of the specified packet type, as specified by the Host Controller Interface Functional Specification portion of the most recent Bluetooth Core Specification|
|LINKTYPE_IEEE802_16_MAC_CPS|188|Reserved for IEEE 802.16 MAC Common Part Sublayer|
|LINKTYPE_USB_LINUX|189|USB packets, beginning with a Linux USB header, as specified by the struct usbmon_packet in the Documentation/usb/usbmon.txt file in the Linux source tree. Only the first 48 octets of that header are present. All fields in the header are in host byte order. When performing a live capture, the host byte order is the byte order of the machine on which the packets are captured. When reading a pcap file, the byte order is the byte order for the file, as specified by the file's magic number; when reading a pcapng file, the byte order is the byte order for the section of the pcapng file, as specified by the Section Header Block|
|LINKTYPE_CAN20B|190|Reserved for Controller Area Network (CAN) v. 2.0B packets|
|LINKTYPE_IEEE802_15_4_LINUX|191|IEEE 802.15.4, with address fields padded, as is done by Linux drivers|
|LINKTYPE_PPI|192|Per-Packet Information information, as specified by the Per-Packet Information Header Specification , followed by a packet with the LINKTYPE_ value specified by the pph_dlt field of that header|{{PPI}}
|LINKTYPE_IEEE802_16_MAC_CPS_RADIO|193|Reserved for 802.16 MAC Common Part Sublayer plus radio header|
|LINKTYPE_JUNIPER_ISM|194|Reserved for Juniper Networks|
|LINKTYPE_IEEE802_15_4_WITHFCS|195|IEEE 802.15.4 Low-Rate Wireless Networks, with each packet having the FCS at the end of the frame|
|LINKTYPE_SITA|196|Various link-layer types, with a pseudo-header|{{LINKTYPE_SITA}}
|LINKTYPE_ERF|197|Endace ERF records|{{ERF}}
|LINKTYPE_RAIF1|198|Reserved for Ethernet packets captured from a u10 Networks board|
|LINKTYPE_IPMB_KONTRON|199|Reserved for IPMB packet for IPMI, with a 2-octet header|
|LINKTYPE_JUNIPER_ST|200|Reserved for Juniper Networks|
|LINKTYPE_BLUETOOTH_HCI_H4_WITH_PHDR|201|Bluetooth HCI UART transport layer; the frame contains a 4-octet direction field, in network byte order (big-endian), the low-order bit of which is set if the frame was sent from the host to the controller and clear if the frame was received by the host from the controller, followed by an HCI packet indicator octet, as specified by the UART Transport Layer portion of the most recent Bluetooth Core specification, followed by an HCI packet of the specified packet type, as specified by the Host Controller Interface Functional Specification portion of the most recent Bluetooth Core Specification|
|LINKTYPE_AX25_KISS|202|AX.25 packet, with a KISS header|{{KISS}} {{AX.25}}
|LINKTYPE_LAPD|203|Link Access Procedures on the D Channel (LAPD) frames, starting with the address field, with no pseudo-header|{{Q.920}} {{Q.921}}
|LINKTYPE_PPP_WITH_DIR|204|PPP, as per RFC 1661 and RFC 1662 , preceded with a one-octet pseudo-header with a zero value meaning received by this host and a non-zero value meaning sent by this host; if the first 2 octets are 0xff and 0x03, it's PPP in HDLC-like framing, with the PPP header following those two octets, otherwise it's PPP without framing, and the packet begins with the PPP header. The data in the frame is not octet-stuffed or bit-stuffed|
|LINKTYPE_C_HDLC_WITH_DIR|205|Cisco PPP with HDLC framing, preceded with a one-octet pseudo-header with a zero value meaning received by this host and a non-zero value meaning sent by this host|{{Section 4.3.1 of ?RFC1547}}
|LINKTYPE_FRELAY_WITH_DIR|206|Frame Relay LAPF frames, beginning with a one-octet pseudo-header with a zero value meaning received by this host (DCE->DTE) and a non-zero value meaning sent by this host (DTE->DCE), followed by an ITU-T Recommendation Q.922 LAPF header starting with the address field, and without an FCS at the end of the frame|
|LINKTYPE_LAPB_WITH_DIR|207|Link Access Procedure, Balanced (LAPB), as specified by ITU-T Recommendation X.25 , preceded with a one-octet pseudo-header with a zero value meaning received by this host (DCE->DTE) and a non-zero value meaning sent by this host (DTE->DCE)|
|Reserved|208|Reserved for an unspecified link-layer type|
|LINKTYPE_I2C_LINUX|209|Linux I2C packets|{{LINKTYPE_I2C_LINUX}}
|LINKTYPE_FLEXRAY|210|FlexRay frames or symbols, with a pseudo-header|{{LINKTYPE_FLEXRAY}}
|LINKTYPE_MOST|211|Reserved for Media Oriented Systems Transport (MOST) bus|
|LINKTYPE_LIN|212|Local Interconnect Network (LIN) automotive bus|{{LINKTYPE_LIN}}
|LINKTYPE_X2E_SERIAL|213|Reserved for X2E serial line captures|
|LINKTYPE_X2E_XORAYA|214|Reserved for X2E Xoraya data loggers|
|LINKTYPE_IEEE802_15_4_NONASK_PHY|215|IEEE 802.15.4 Low-Rate Wireless Networks, with each packet having the FCS at the end of the frame, and with the PHY-level data for the O-QPSK, BPSK, GFSK, MSK, and RCC DSS BPSK PHYs (4 octets of 0 as preamble, one octet of SFD, one octet of frame length + reserved bit) preceding the MAC-layer data (starting with the frame control field)|
|LINKTYPE_LINUX_EVDEV|216|Reserved for Linux evdev messages|
|LINKTYPE_GSMTAP_UM|217|Reserved for GSM Um interface, with gsmtap header|
|LINKTYPE_GSMTAP_ABIS|218|Reserved for GSM Abis interface, with gsmtap header|
|LINKTYPE_MPLS|219|MPLS packets with MPLS label as the header|
|LINKTYPE_USB_LINUX_MMAPPED|220|USB packets, beginning with a Linux USB header, as specified by the struct usbmon_packet in the Documentation/usb/usbmon.txt file in the Linux source tree. All 64 octets of the header are present. All fields in the header are in host byte order. When performing a live capture, the host byte order is the byte order of the machine on which the packets are captured. When reading a pcap file, the byte order is the byte order for the file, as specified by the file's magic number; when reading a pcapng file, the byte order is the byte order for the section of the pcapng file, as specified by the Section Header Block. For isochronous transfers, the ndesc field specifies the number of isochronous descriptors that follow|
|LINKTYPE_DECT|221|Reserved for DECT packets, with a pseudo-header|
|LINKTYPE_AOS|222|Reserved for OS Space Data Link Protocol|
|LINKTYPE_WIHART|223|Reserved for Wireless HART (Highway Addressable Remote Transducer)|
|LINKTYPE_FC_2|224|Fibre Channel FC-2 frames, beginning with a Frame_Header|
|LINKTYPE_FC_2_WITH_FRAME_DELIMS|225|Fibre Channel FC-2 frames, beginning an encoding of the SOF, followed by a Frame_Header, and ending with an encoding of the SOF. The encodings represent the frame delimiters as 4-octet sequences representing the corresponding ordered sets, with K28.5 represented as 0xBC, and the D symbols as the corresponding octet values; for example, SOFi2, which is K28.5 - D21.5 - D1.2 - D21.2, is represented as 0xBC 0xB5 0x55 0x55|
|LINKTYPE_IPNET|226|Solaris ipnet|{{LINKTYPE_IPNET}}
|LINKTYPE_CAN_SOCKETCAN|227|Controller Area Network frames|{{LINKTYPE_CAN_SOCKETCAN}}
|LINKTYPE_IPV4|228|Raw IPv4; the packet begins with an IPv4 header|
|LINKTYPE_IPV6|229|Raw IPv6; the packet begins with an IPv6 header|
|LINKTYPE_IEEE802_15_4_NOFCS|230|IEEE 802.15.4 Low-Rate Wireless Network, without the FCS at the end of the frame|
|LINKTYPE_DBUS|231|Raw D-Bus messages , starting with the endianness flag, followed by the message type, etc., but without the authentication handshake before the message sequence|{{D-Bus}}
|LINKTYPE_JUNIPER_VS|232|Reserved for Juniper Networks|
|LINKTYPE_JUNIPER_SRX_E2E|233|Reserved for Juniper Networks|
|LINKTYPE_JUNIPER_FIBRECHANNEL|234|Reserved for Juniper Networks|
|LINKTYPE_DVB_CI|235|DVB-CI messages|{{DVB-CI-PCAP}}{{DVB-CI}}
|LINKTYPE_MUX27010|236|Variant of 3GPP TS 27.010 multiplexing protocol|{{LINKTYPE_MUX27010}}
|LINKTYPE_STANAG_5066_D_PDU|237|D_PDUs as described by NATO standard STANAG 5066, starting with the synchronization sequence, and including both header and data CRCs. The current version of STANAG 5066 is backwards-compatible with the 1.0.2 version , although newer versions are classified|{{STANAG-5066}}
|LINKTYPE_JUNIPER_ATM_CEMIC|238|Reserved for Juniper Networks|
|LINKTYPE_NFLOG|239|Linux netlink NETLINK NFLOG socket log messages|{{LINKTYPE_NFLOG}}
|LINKTYPE_NETANALYZER|240|Ethernet frames with netANALYZER pseudo-header|{{LINKTYPE_NETANALYZER}}
|LINKTYPE_NETANALYZER_TRANSPARENT|241|Ethernet frames with netANALYZER pseudo-header, preamble, and SFD|{{LINKTYPE_NETANALYZER_TRANSPARENT}}
|LINKTYPE_IPOIB|242|IP-over-InfiniBand|{{Section 6 of ?RFC4391}}
|LINKTYPE_MPEG_2_TS|243|MPEG-2 Transport Stream transport packets|Table 2-2 of section 2.4.3.2 Transport Stream packet layer of {{H.222.0}}
|LINKTYPE_NG40|244|Frames from ng4T GmbH's ng40 protocol tester|{{LINKTYPE_NG40}}
|LINKTYPE_NFC_LLCP|245|	NFC Logical Link Control Protocol frames, with a pseudo-header|{{LINKTYPE_NFC_LLCP}}
|LINKTYPE_PFSYNC|246|Reserved for pfsync output|
|LINKTYPE_INFINIBAND|247|Raw InfiniBand frames, starting with the Local Routing Header, as specified in Chapter 5 Data packet format of InfiniBand™ Architectural Specification Release 1.2.1 Volume 1 - General Specifications|
|LINKTYPE_SCTP|248|SCTP packets, as defined by RFC 4960 , with no lower-level protocols such as IPv4 or IPv6|
|LINKTYPE_USBPCAP|249|USB packets, beginning with a USBPcap header|{{USBPcap}}
|LINKTYPE_RTAC_SERIAL|250|Serial-line packet from the Schweitzer Engineering Laboratories RTAC product|{{LINKTYPE_RTAC_SERIAL}}
|LINKTYPE_BLUETOOTH_LE_LL|251|Bluetooth Low Energy air interface Link Layer packets, in the format described in Section 2.1 (PACKET FORMAT) of volume 6 of the Bluetooth Specification Version 4.0 (see PDF page 2200), but without the Preamble|
|LINKTYPE_WIRESHARK_UPPER_PDU|252|Reserved for Wireshark|
|LINKTYPE_NETLINK|253|Linux Netlink capture encapsulation|{{LINKTYPE_NETLINK}} {{?RFC3549}}
|LINKTYPE_BLUETOOTH_LINUX_MONITOR|254|Bluetooth Linux Monitor|{{LINKTYPE_BLUETOOTH_LINUX_MONITOR}}
|LINKTYPE_BLUETOOTH_BREDR_BB|255|Bluetooth Basic Rate and Enhanced Data Rate baseband packets|{{LINKTYPE_BLUETOOTH_BREDR_BB}}
|LINKTYPE_BLUETOOTH_LE_LL_WITH_PHDR|256|Bluetooth Low Energy link-layer packets|{{LINKTYPE_BLUETOOTH_LE_LL_WITH_PHDR}}
|LINKTYPE_PROFIBUS_DL|257|PROFIBUS data link layer packets, as specified by IEC standard 61158-4-3, beginning with the start delimiter, ending with the end delimiter, and including all octets between them|
|LINKTYPE_PKTAP|258|Apple PKTAP capture encapsulation|{{LINKTYPE_PKTAP}}
|LINKTYPE_EPON|259|Ethernet-over-passive-optical-network packets, starting with the last 6 octets of the modified preamble as specified by 65.1.3.2 Transmit in Clause 65 of Section 5 of IEEE 802.3, followed immediately by an Ethernet frame|
|LINKTYPE_IPMI_HPM_2|260|IPMI trace packets, as specified by Table 3-20 Trace Data Block Format in the PICMG HPM.2 specification The timestamps for packets in this format must match the timestamps in the Trace Data Blocks|
|LINKTYPE_ZWAVE_R1_R2|261|Z-Wave RF profile R1 and R2 packets|{{LINKTYPE_ZWAVE_R1_R2}}
|LINKTYPE_ZWAVE_R3|262|Z-Wave RF profile R3 packets|{{LINKTYPE_ZWAVE_R3}}
|LINKTYPE_WATTSTOPPER_DLM|263|WattStopper Digital Lighting Management (DLM) and Legrand Nitoo Open protocol packets|{{LINKTYPE_WATTSTOPPER_DLM}}
|LINKTYPE_ISO_14443|264|ISO 14443 contactless smartcard messages|{{ISO-14443-PCAP}}
|LINKTYPE_RDS|265|IEC 62106 Radio data system (RDS) groups|{{LINKTYPE_RDS}}
|LINKTYPE_USB_DARWIN|266|USB packets captured on a Darwin-based operating system (macOS, etc.)|{{LINKTYPE_USB_DARWIN}}
|LINKTYPE_OPENFLOW|267|Reserved for OpenBSD DLT_OPENFLOW|
|LINKTYPE_SDLC|268|SDLC packets, as specified by Chapter 1, DLC Links, section Synchronous Data Link Control (SDLC) of Systems Network Architecture Formats, GA27-3136-20 , without the flag fields, zero-bit insertion, or Frame Check Sequence field, containing SNA path information units (PIUs) as the payload|
|LINKTYPE_TI_LLN_SNIFFER|269|Reserved for Texas Instruments protocol sniffer|
|LINKTYPE_LORATAP|270|LoRaTap pseudo-header , followed by the payload, which is typically the PHYPayload from the LoRaWan specification|
|LINKTYPE_VSOCK|271|Protocol for communication between host and guest machines in VMware and KVM hypervisors|{{LINKTYPE_VSOCK}}
|LINKTYPE_NORDIC_BLE|272|Messages to and from a Nordic Semiconductor nRF Sniffer for Bluetooth LE packets|{{LINKTYPE_NORDIC_BLE}}
|LINKTYPE_DOCSIS31_XRA31|273|DOCSIS packets and bursts, preceded by a pseudo-header|{{DOCSIS-XRA}} {{DOCSIS-4.0-MULP}}
|LINKTYPE_ETHERNET_MPACKET|274|mPackets, as specified by IEEE 802.3br Figure 99-4, starting with the preamble and always ending with a CRC field|
|LINKTYPE_DISPLAYPORT_AUX|275|DisplayPort AUX channel monitoring messages|{{LINKTYPE_DISPLAYPORT_AUX}}
|LINKTYPE_LINUX_SLL2|276|Linux cooked capture encapsulation v2|{{LINKTYPE_LINUX_SLL2}}
|LINKTYPE_SERCOS_MONITOR|277|Reserved for Sercos Monitor|
|LINKTYPE_OPENVIZSLA|278|OpenVizsla FPGA-based USB sniffer|{{OpenVizsla}}
|LINKTYPE_EBHSCR|279|Elektrobit High Speed Capture and Replay (EBHSCR) format|{{EBHSCR}}
|LINKTYPE_VPP_DISPATCH|280|fd.io VPP graph dispatcher trace records|{{FD.io-VPP}}
|LINKTYPE_DSA_TAG_BRCM|281|Ethernet frames, with a Broadcom switch tag inserted|{{LINKTYPE_DSA_TAG_BRCM}}
|LINKTYPE_DSA_TAG_BRCM_PREPEND|282|Ethernet frames, with a Broadcom switch tag prepended|{{LINKTYPE_DSA_TAG_BRCM_PREPEND}}
|LINKTYPE_IEEE802_15_4_TAP|283|IEEE 802.15.4 Low-Rate Wireless Networks, with a pseudo-header containing TLVs with metadata preceding the 802.15.4 header|
|LINKTYPE_DSA_TAG_DSA|284|Ethernet frames, with a Marvell DSA switch tag inserted|{{LINKTYPE_DSA_TAG_DSA}}
|LINKTYPE_DSA_TAG_EDSA|285|Ethernet frames, with a Marvell EDSA switch tag inserted|{{LINKTYPE_DSA_TAG_EDSA}}
|LINKTYPE_ELEE|286|Payload of lawful intercept packets using the ELEE protocol The packet begins with the ELEE header; it does not include any transport-layer or lower-layer headers for protocols used to transport ELEE packets|
|LINKTYPE_Z_WAVE_SERIAL|287|Serial frames transmitted between a host and a Z-Wave chip over an RS-232 or USB serial connection|{{Z_WAVE_SERIAL}} section 5
|LINKTYPE_USB_2_0|288|USB 2.0, 1.1, or 1.0 packet, beginning with a PID, as described by Chapter 8 Protocol Layer of the the Universal Serial Bus Specification Revision 2.0|
|LINKTYPE_ATSC_ALP|289|ATSC Link-Layer Protocol frames, as described in section 5 of the A/330 Link-Layer Protocol specification, found at https://www.atsc.org/atsc-documents/type/3-0-standards/, beginning with a Base Header|
|LINKTYPE_ETW|290|Event Tracing for Windows messages|{{LINKTYPE_ETW}}
|LINKTYPE_NETANALYZER_NG|291|Reserved for Hilscher Gesellschaft fuer Systemautomation mbH netANALYZER NG hardware and software|
|LINKTYPE_ZBOSS_NCP|292|ZBOSS NCP Serial Protocol, with a pseudo-header|{{LINKTYPE_ZBOSS_NCP}}
|LINKTYPE_USB_2_0_LOW_SPEED|293|Low-Speed USB 2.0, 1.1, or 1.0 packet, beginning with a PID, as described by Chapter 8 "Protocol Layer" of the https://www.usb.org/document-library/usb-20-specification the Universal Serial Bus Specification Revision 2.0|
|LINKTYPE_USB_2_0_FULL_SPEED|294|Full-Speed USB 2.0, 1.1, or 1.0 packet, beginning with a PID, as described by Chapter 8 "Protocol Layer" of the https://www.usb.org/document-library/usb-20-specification the Universal Serial Bus Specification Revision 2.0|
|LINKTYPE_USB_2_0_HIGH_SPEED|295|High-Speed USB 2.0 packet, beginning with a PID, as described by Chapter 8 "Protocol Layer" of the https://www.usb.org/document-library/usb-20-specification the Universal Serial Bus Specification Revision 2.0|
|LINKTYPE_AUERSWALD_LOG|296|Auerswald Logger Protocol, as described in https://github.com/Auerswald-GmbH/auerlog/blob/master/auerlog.txt|
|LINKTYPE_ZWAVE_TAP|297|Z-Wave packets, as specified by ITU-T Recommendation G.9959, with a https://gitlab.com/exegin/zwave-g9959-tap TAP meta-data header|{{Exegin-TAP-Link}}
|LINKTYPE_SILABS_DEBUG_CHANNEL|298|Silicon Labs debug channel protocol, as described in https://github.com/SiliconLabs/java_packet_trace_library/blob/master/doc/debug-channel.md|
|LINKTYPE_FIRA_UCI|299|Ultra-wideband (UWB) controller interface protocol (UCI)|{{LINKTYPE_FIRA_UCI}}
|LINKTYPE_MDB|300|MDB (Multi-Drop Bus) protocol between a vending machine controller and peripherals inside the vending machine, with the message format specified by https://www.kaiser.cx/pcap-mdb.html the PCAP format for MDB specification|
|LINKTYPE_DECT_NR|301|DECT-2020 New Radio (NR) MAC layer specified in https://www.etsi.org/committee/1394-dect ETSI TS 103 636-4. The Physical Header Field is always encoded using 80 bits (10 bytes). Broadcast transmissions using 40 bits (5 bytes) is padded with 40 zero bits (5 bytes). When padding is used the Receiver Identity value 0x0000 (reserved address) is used to detect broadcast transmissions|

### Guidance for Designated Experts {#sec-de}

When processing a request for a Specification Required allocation the Designated Experts are expected to be able to find the relevant specification at a clearly stable URL.
It is noted that many enterprise web sites do not maintain URLs over a long period of time, and a documented in a "wp-uploaded" section is highly likely to disappear.
In addition Specifications that require a reader to click through any kind of marketing or legal agreement are not considered public.
(This is the opinion of other corporate lawyers, who worry about what their employees might have agreed to)

The specification needs to be clearly written, and when the contents of the link type can contain an IPv4 or IPv6 header, then the octets between the beginning of the link type and the IP header needs to be very clearly specified in that document.

Specifications which are not publically available, but which may be obtained via liason agreements (such as to ITU-T, 3GPP, IEEE, etc.) are acceptable particularly if the document will be public eventually, but are discouraged.
For other documents, the Designated Expert will need use their judgement, or consult the WG or an Area Director.

Linktypes may be allocated for specifications not publically available may be made within the First-Come/First-Served area.
This includes specifications that might be classified.
The minimal requirement is for a contact person for that link type.

# Security Considerations

This document describes the IANA registration rules for the LINKTYPE encapsulations.
PCAP, and PCAPNG packet file formats use this value to determine what kind of headers preceed network packet captures.
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
