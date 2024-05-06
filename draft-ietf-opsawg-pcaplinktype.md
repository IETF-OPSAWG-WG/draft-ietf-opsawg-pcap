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
  AVS:
    author:
      fullname: Solomon Peachy
    title: Archived AVS specification
    target: http://web.archive.org/web/20040803232023/http://www.shaftnet.org/~pizza/software/capturefrm.txt

  TCPDUMP:
    title: LINK-LAYER HEADER TYPES
    target: https://www.tcpdump.org/linktypes.html

  LIBPCAP:
    title: libpcap
    target: https://github.com/the-tcpdump-group/libpcap

  Wireshark:
    title: Homepage of Wireshark
    target: https://www.wireshark.org

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

Other documents describe the original (legacy) format used by tcpdump (pcap), as well as the revised format (pcapng) which is used by tcpdump and wireshark {{Wireshark}}.

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

| LINKTYPE Name | LINKTYPE Value | Description |
|:-------------|:---------------:|:----------|
|LINKTYPE_NULL|0|BSD loopback encapsulation|
|LINKTYPE_ETHERNET|1|IEEE 802.3 Ethernet|
|LINKTYPE_EXP_ETHERNET|2|Xerox experimental 3Mb Ethernet|
|LINKTYPE_AX25|3|AX.25 packet|
|LINKTYPE_PRONET|4|Reserved for PRONET|
|LINKTYPE_CHAOS|5|Reserved for MIT CHAOSNET|
|LINKTYPE_IEEE802_5|6|IEEE 802.5 Token Ring|
|LINKTYPE_ARCNET_BSD|7|ARCNET Data Packets with BSD encapsulation|
|LINKTYPE_SLIP|8|SLIP, w/LINKTYPE_SLIP header|
|LINKTYPE_PPP|9|PPP, as per RFC 1661/RFC 1662|
|LINKTYPE_FDDI|10|FDDI: per ANSI INCITS 239-1994|
|not to be used|11-49|Do not use these values|
|LINKTYPE_PPP_HDLC|50|PPP in HDLC-like framing, as per RFC 1662|
|LINKTYPE_PPP_ETHER|51|PPPoE; per RFC 2516|
|Reserved|52-98|Do not use these values|
|LINKTYPE_SYMANTEC_FIREWALL|99|Reserved for Symantec Enterprise Firewall|
|LINKTYPE_ATM_RFC1483|100|RFC 1483 LLC/SNAP-encapsulated ATM|
|LINKTYPE_RAW|101|Raw IP; begins with an IPv4 or IPv6 header|
|LINKTYPE_SLIP_BSDOS|102|Reserved for BSD/OS SLIP BPF header|
|LINKTYPE_PPP_BSDOS|103|Reserved for BSD/OS PPP BPF header|
|LINKTYPE_C_HDLC|104|Cisco PPP with HDLC framing, as per Section 4.3.1 of RFC 1547|
|LINKTYPE_IEEE802_11|105|IEEE 802.11 wireless LAN|
|LINKTYPE_ATM_CLIP|106|ATM Classical IP, with no header preceding IP|
|LINKTYPE_FRELAY|107|Frame Relay LAPF frames|
|LINKTYPE_LOOP|108|OpenBSD loopback encapsulation|
|LINKTYPE_ENC|109|Reserved for OpenBSD IPSEC encapsulation|
|LINKTYPE_LANE8023|110|Reserved for ATM LANE + 802.3|
|LINKTYPE_HIPPI|111|Reserved for NetBSD HIPPI|
|LINKTYPE_HDLC|112|Reserved for NetBSD HDLC framing|
|LINKTYPE_LINUX_SLL|113|Linux "cooked" capture encapsulation|
|LINKTYPE_LTALK|114|Apple LocalTalk|
|LINKTYPE_ECONET|115|Reserved for Acorn Econet|
|LINKTYPE_IPFILTER|116|Reserved for OpenBSD ipfilter|
|LINKTYPE_PFLOG|117|OpenBSD pflog; "struct pfloghdr" structure|
|LINKTYPE_CISCO_IOS|118|Reserved for Cisco-internal use|
|LINKTYPE_IEEE802_11_PRISM|119|Prism monitor mode|
|LINKTYPE_IEEE802_11_AIRONET|120|Reserved for 802.11 + FreeFreeBSD Aironet radio metadata|
|LINKTYPE_HHDLC|121|Reserved for Siemens HiPath HDLC|
|LINKTYPE_IP_OVER_FC|122|RFC 2625 IP-over-Fibre Channel|
|LINKTYPE_SUNATM|123|ATM traffic, / per SunATM devices|
|LINKTYPE_RIO|124|Reserved for RapidIO|
|LINKTYPE_PCI_EXP|125|Reserved for PCI Express|
|LINKTYPE_AURORA|126|Reserved for Xilinx Aurora link layer|
|LINKTYPE_IEEE802_11_RADIOTAP|127|Radiotap header{{Radiotap}}, followed by an 802.11 header|
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
|LINKTYPE_APPLE_IP_OVER_IEEE1394|138|Apple IP-over-IEEE 1394 cooked header|
|LINKTYPE_MTP2_WITH_PHDR|139|Signaling System 7 (SS7) Message Transfer Part Level ITU-T Q.703|
|LINKTYPE_MTP2|140|SS7 Level 2, Q.703|
|LINKTYPE_MTP3|141|SS7 Level 3, Q.704|
|LINKTYPE_SCCP|142|SS7 Control Part, ITU-T Q.711/Q.712/Q.713/Q.714|
|LINKTYPE_DOCSIS|143|DOCSIS MAC frames, DOCSIS 3.1|
|LINKTYPE_LINUX_IRDA|144|Linux-IrDA packets w/LINKTYPE_LINUX_IRDA header|
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
|LINKTYPE_IEEE802_11_AVS|163|AVS header{{AVS}}, followed by an 802.11 header|
|LINKTYPE_JUNIPER_MONITOR|164|Reserved for Juniper Networks|
|LINKTYPE_BACNET_MS_TP|165|BACnet MS/TP frames, per 9.3 MS/TP Frame Format ANSI 135|
|LINKTYPE_PPP_PPPD|166|PPP in HDLC-like encapsulation, like LINKTYPE_PPP_HDLC, different stuffing|
|LINKTYPE_JUNIPER_PPPOE|167|Reserved for Juniper Networks|
|LINKTYPE_JUNIPER_PPPOE_ATM|168|Reserved for Juniper Networks|
|LINKTYPE_GPRS_LLC|169|General Packet Radio Service Logical Link Control, as per 3GPP TS 04.64|
|LINKTYPE_GPF_T|170|Transparent-mapped generic framing procedure, as specified by ITU-T Recommendation G.7041/Y.1303|
|LINKTYPE_GPF_F|171|Frame-mapped generic framing procedure, as specified by ITU-T Recommendation G.7041/Y.1303|
|LINKTYPE_GCOM_T1E1|172|Reserved for Gcom T1/E1 line monitoring equipment|
|LINKTYPE_GCOM_SERIAL|173|Reserved for Gcom T1/E1 line monitoring equipment|
|LINKTYPE_JUNIPER_PIC_PEER|174|Reserved for Juniper Networks|
|LINKTYPE_ERF_ETH|175|Endace ERF header followed by 802.3 Ethernet|
|LINKTYPE_ERF_POS|176|Endace ERF header followed by Packet-over-SONET|
|LINKTYPE_LINUX_LAPD|177|Link Access Procedures on the D Channel (LAPD) frames, as specified by ITU-T Recommendation Q.920 and ITU-T Recommendation Q.921 , captured via vISDN, with a LINKTYPE_LINUX_LAPD header, followed by the Q.921 frame, starting with the address field|
|LINKTYPE_JUNIPER_ETHER|178|Reserved for Juniper Networks|
|LINKTYPE_JUNIPER_PPP|179|Reserved for Juniper Networks|
|LINKTYPE_JUNIPER_FRELAY|180|Reserved for Juniper Networks|
|LINKTYPE_JUNIPER_CHDLC|181|Reserved for Juniper Networks|
|LINKTYPE_MFR|182|FRF.16.1 Multi-Link Frame Relay frames, beginning with an FRF.12 Interface fragmentation format fragmentation header|
|LINKTYPE_JUNIPER_VP|183|Reserved for Juniper Networks|
|LINKTYPE_A429|184|Reserved for ARINC 429 frames|
|LINKTYPE_A653_ICM|185|Reserved for Arinc 653 Interpartition Communication messages|
|LINKTYPE_USB_FREEBSD|186|USB packets, beginning with a FreeBSD USB header|
|LINKTYPE_BLUETOOTH_HCI_H4|187|Bluetooth HCI UART transport layer; the frame contains an HCI packet indicator octet, as specified by the UART Transport Layer portion of the most recent Bluetooth Core specification, followed by an HCI packet of the specified packet type, as specified by the Host Controller Interface Functional Specification portion of the most recent Bluetooth Core Specification|
|LINKTYPE_IEEE802_16_MAC_CPS|188|Reserved for IEEE 802.16 MAC Common Part Sublayer|
|LINKTYPE_USB_LINUX|189|USB packets, beginning with a Linux USB header, as specified by the struct usbmon_packet in the Documentation/usb/usbmon.txt file in the Linux source tree. Only the first 48 octets of that header are present. All fields in the header are in host byte order. When performing a live capture, the host byte order is the byte order of the machine on which the packets are captured. When reading a pcap file, the byte order is the byte order for the file, as specified by the file's magic number; when reading a pcapng file, the byte order is the byte order for the section of the pcapng file, as specified by the Section Header Block|
|LINKTYPE_CAN20B|190|Reserved for Controller Area Network (CAN) v. 2.0B packets|
|LINKTYPE_IEEE802_15_4_LINUX|191|IEEE 802.15.4, with address fields padded, as is done by Linux drivers|
|LINKTYPE_PPI|192|Per-Packet Information information, as specified by the Per-Packet Information Header Specification , followed by a packet with the LINKTYPE_ value specified by the pph_dlt field of that header|
|LINKTYPE_IEEE802_16_MAC_CPS_RADIO|193|Reserved for 802.16 MAC Common Part Sublayer plus radio header|
|LINKTYPE_JUNIPER_ISM|194|Reserved for Juniper Networks|
|LINKTYPE_IEEE802_15_4_WITHFCS|195|IEEE 802.15.4 Low-Rate Wireless Networks, with each packet having the FCS at the end of the frame|
|LINKTYPE_SITA|196|Various link-layer types, with a pseudo-header, for SITA|
|LINKTYPE_ERF|197|Various link-layer types, with a pseudo-header, for Endace DAG cards; encapsulates Endace ERF records|
|LINKTYPE_RAIF1|198|Reserved for Ethernet packets captured from a u10 Networks board|
|LINKTYPE_IPMB_KONTRON|199|Reserved for IPMB packet for IPMI, with a 2-octet header|
|LINKTYPE_JUNIPER_ST|200|Reserved for Juniper Networks|
|LINKTYPE_BLUETOOTH_HCI_H4_WITH_PHDR|201|Bluetooth HCI UART transport layer; the frame contains a 4-octet direction field, in network byte order (big-endian), the low-order bit of which is set if the frame was sent from the host to the controller and clear if the frame was received by the host from the controller, followed by an HCI packet indicator octet, as specified by the UART Transport Layer portion of the most recent Bluetooth Core specification, followed by an HCI packet of the specified packet type, as specified by the Host Controller Interface Functional Specification portion of the most recent Bluetooth Core Specification|
|LINKTYPE_AX25_KISS|202|AX.25 packet, with a 1-octet KISS header containing a type indicator|
|LINKTYPE_LAPD|203|Link Access Procedures on the D Channel (LAPD) frames, as specified by ITU-T Recommendation Q.920 and ITU-T Recommendation Q.921 , starting with the address field, with no pseudo-header|
|LINKTYPE_PPP_WITH_DIR|204|PPP, as per RFC 1661 and RFC 1662 , preceded with a one-octet pseudo-header with a zero value meaning received by this host and a non-zero value meaning sent by this host; if the first 2 octets are 0xff and 0x03, it's PPP in HDLC-like framing, with the PPP header following those two octets, otherwise it's PPP without framing, and the packet begins with the PPP header. The data in the frame is not octet-stuffed or bit-stuffed|
|LINKTYPE_C_HDLC_WITH_DIR|205|Cisco PPP with HDLC framing, as per section 4.3.1 of RFC 1547 , preceded with a one-octet pseudo-header with a zero value meaning received by this host and a non-zero value meaning sent by this host|
|LINKTYPE_FRELAY_WITH_DIR|206|Frame Relay LAPF frames, beginning with a one-octet pseudo-header with a zero value meaning received by this host (DCE->DTE) and a non-zero value meaning sent by this host (DTE->DCE), followed by an ITU-T Recommendation Q.922 LAPF header starting with the address field, and without an FCS at the end of the frame|
|LINKTYPE_LAPB_WITH_DIR|207|Link Access Procedure, Balanced (LAPB), as specified by ITU-T Recommendation X.25 , preceded with a one-octet pseudo-header with a zero value meaning received by this host (DCE->DTE) and a non-zero value meaning sent by this host (DTE->DCE)|
|Reserved|208|Reserved for an unspecified link-layer type|
|LINKTYPE_I2C_LINUX|209|I2C packets, with a Linux-specific pseudo-header|
|LINKTYPE_FLEXRAY|210|Reserved for FlexRay automotive bus|
|LINKTYPE_MOST|211|Reserved for Media Oriented Systems Transport (MOST) bus|
|LINKTYPE_LIN|212|Reserved for Local Interconnect Network (LIN) bus for vehicle networks|
|LINKTYPE_X2E_SERIAL|213|Reserved for X2E serial line captures|
|LINKTYPE_X2E_XORAYA|214|Reserved for X2E Xoraya data loggers|
|LINKTYPE_IEEE802_15_4_NONASK_PHY|215|IEEE 802.15.4 Low-Rate Wireless Networks, with each packet having the FCS at the end of the frame, and with the PHY-level data for the O-QPSK, BPSK, GFSK, MSK, and RCC DSS BPSK PHYs (4 octets of 0 as preamble, one octet of SFD, one octet of frame length + reserved bit) preceding the MAC-layer data (starting with the frame control field).
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
|LINKTYPE_IPNET|226|Solaris ipnet pseudo-header , followed by an IPv4 or IPv6 datagram|
|LINKTYPE_CAN_SOCKETCAN|227|CAN (Controller Area Network) frames, with a pseudo-header followed by the frame payload|
|LINKTYPE_IPV4|228|Raw IPv4; the packet begins with an IPv4 header|
|LINKTYPE_IPV6|229|Raw IPv6; the packet begins with an IPv6 header|
|LINKTYPE_IEEE802_15_4_NOFCS|230|IEEE 802.15.4 Low-Rate Wireless Network, without the FCS at the end of the frame|
|LINKTYPE_DBUS|231|Raw D-Bus messages , starting with the endianness flag, followed by the message type, etc., but without the authentication handshake before the message sequence|
|LINKTYPE_JUNIPER_VS|232|Reserved for Juniper Networks|
|LINKTYPE_JUNIPER_SRX_E2E|233|Reserved for Juniper Networks|
|LINKTYPE_JUNIPER_FIBRECHANNEL|234|Reserved for Juniper Networks|
|LINKTYPE_DVB_CI|235|DVB-CI (DVB Common Interface for communication between a PC Card module and a DVB receiver), with the message format specified by the PCAP format for DVB-CI specification|
|LINKTYPE_MUX27010|236|Variant of 3GPP TS 27.010 multiplexing protocol (similar to, but not the same as, 27.010)|
|LINKTYPE_STANAG_5066_D_PDU|237|D_PDUs as described by NATO standard STANAG 5066, starting with the synchronization sequence, and including both header and data CRCs. The current version of STANAG 5066 is backwards-compatible with the 1.0.2 version , although newer versions are classified|
|LINKTYPE_JUNIPER_ATM_CEMIC|238|Reserved for Juniper Networks|
|LINKTYPE_NFLOG|239|Linux netlink NETLINK NFLOG socket log messages.|
|LINKTYPE_NETANALYZER|240|Pseudo-header for Hilscher Gesellschaft für Systemautomation mbH netANALYZER devices , followed by an Ethernet frame, beginning with the MAC header and ending with the FCS.|
|LINKTYPE_NETANALYZER_TRANSPARENT|241|Pseudo-header for Hilscher Gesellschaft für Systemautomation mbH netANALYZER devices , followed by an Ethernet frame, beginning with the preamble, SFD, and MAC header, and ending with the FCS|
|LINKTYPE_IPOIB|242|IP-over-InfiniBand, as specified by Section 6 of RFC 4391|
|LINKTYPE_MPEG_2_TS|243|MPEG-2 Transport Stream transport packets, as specified by ISO 13818-1/ ITU-T Recommendation H.222.0 (see table 2-2 of section 2.4.3.2 Transport Stream packet layer)|
|LINKTYPE_NG40|244|Pseudo-header for ng4T GmbH's UMTS Iub/Iur-over-ATM and Iub/Iur-over-IP format as used by their ng40 protocol tester , followed by frames for the Frame Protocol as specified by 3GPP TS 25.427 for dedicated channels and 3GPP TS 25.435 for common/shared channels in the case of ATM AAL2 or UDP traffic, by SSCOP packets as specified by ITU-T Recommendation Q.2110 for ATM AAL5 traffic, and by NBAP packets for SCTP traffic|
|LINKTYPE_NFC_LLCP|245|Pseudo-header for NFC LLCP packet captures , followed by frame data for the LLCP Protocol as specified by NFCForum-TS-LLCP_1.1|
|LINKTYPE_PFSYNC|246|Reserved for pfsync output|
|LINKTYPE_INFINIBAND|247|Raw InfiniBand frames, starting with the Local Routing Header, as specified in Chapter 5 Data packet format of InfiniBand™ Architectural Specification Release 1.2.1 Volume 1 - General Specifications|
|LINKTYPE_SCTP|248|SCTP packets, as defined by RFC 4960 , with no lower-level protocols such as IPv4 or IPv6|
|LINKTYPE_USBPCAP|249|USB packets, beginning with a USBPcap header|
|LINKTYPE_RTAC_SERIAL|250|Serial-line packet header for the Schweitzer Engineering Laboratories RTAC product , followed by a payload for one of a number of industrial control protocols|
|LINKTYPE_BLUETOOTH_LE_LL|251|Bluetooth Low Energy air interface Link Layer packets, in the format described in Section 2.1 (PACKET FORMAT) of volume 6 of the Bluetooth Specification Version 4.0 (see PDF page 2200), but without the Preamble|
|LINKTYPE_WIRESHARK_UPPER_PDU|252|Reserved for Wireshark|
|LINKTYPE_NETLINK|253|Linux Netlink capture encapsulation|
|LINKTYPE_BLUETOOTH_LINUX_MONITOR|254|Bluetooth Linux Monitor encapsulation of traffic for the BlueZ stack|
|LINKTYPE_BLUETOOTH_BREDR_BB|255|Bluetooth Basic Rate and Enhanced Data Rate baseband packets|
|LINKTYPE_BLUETOOTH_LE_LL_WITH_PHDR|256|Bluetooth Low Energy link-layer packets|
|LINKTYPE_PROFIBUS_DL|257|PROFIBUS data link layer packets, as specified by IEC standard 61158-4-3, beginning with the start delimiter, ending with the end delimiter, and including all octets between them|
|LINKTYPE_PKTAP|258|Apple PKTAP capture encapsulation|
|LINKTYPE_EPON|259|Ethernet-over-passive-optical-network packets, starting with the last 6 octets of the modified preamble as specified by 65.1.3.2 Transmit in Clause 65 of Section 5 of IEEE 802.3, followed immediately by an Ethernet frame|
|LINKTYPE_IPMI_HPM_2|260|IPMI trace packets, as specified by Table 3-20 Trace Data Block Format in the PICMG HPM.2 specification The timestamps for packets in this format must match the timestamps in the Trace Data Blocks|
|LINKTYPE_ZWAVE_R1_R2|261|Z-Wave RF profile R1 and R2 packets , as specified by ITU-T Recommendation G.9959 , with some MAC layer fields moved|
|LINKTYPE_ZWAVE_R3|262|Z-Wave RF profile R3 packets, as specified by ITU-T Recommendation G.9959, with some MAC layer fields moved|
|LINKTYPE_WATTSTOPPER_DLM|263|Formats for WattStopper Digital Lighting Management (DLM) and Legrand Nitoo Open protocol common packet structure captures|
|LINKTYPE_ISO_14443|264|Messages between ISO 14443 contactless smartcards (Proximity Integrated Circuit Card, PICC) and card readers (Proximity Coupling Device, PCD), with the message format specified by the PCAP format for ISO14443 specification|
|LINKTYPE_RDS|265|Radio data system (RDS) groups, as per IEC 62106, encapsulated in this form|
|LINKTYPE_USB_DARWIN|266|USB packets, beginning with a Darwin (macOS, etc.) USB header|
|LINKTYPE_OPENFLOW|267|Reserved for OpenBSD DLT_OPENFLOW|
|LINKTYPE_SDLC|268|SDLC packets, as specified by Chapter 1, DLC Links, section Synchronous Data Link Control (SDLC) of Systems Network Architecture Formats, GA27-3136-20 , without the flag fields, zero-bit insertion, or Frame Check Sequence field, containing SNA path information units (PIUs) as the payload|
|LINKTYPE_TI_LLN_SNIFFER|269|Reserved for Texas Instruments protocol sniffer|
|LINKTYPE_LORATAP|270|LoRaTap pseudo-header , followed by the payload, which is typically the PHYPayload from the LoRaWan specification|
|LINKTYPE_VSOCK|271|Protocol for communication between host and guest machines in VMware and KVM hypervisors|
|LINKTYPE_NORDIC_BLE|272|Messages to and from a Nordic Semiconductor nRF Sniffer for Bluetooth LE packets, beginning with a pseudo-header|
|LINKTYPE_DOCSIS31_XRA31|273|DOCSIS packets and bursts, preceded by a pseudo-header giving metadata about the packet|
|LINKTYPE_ETHERNET_MPACKET|274|mPackets, as specified by IEEE 802.3br Figure 99-4, starting with the preamble and always ending with a CRC field|
|LINKTYPE_DISPLAYPORT_AUX|275|DisplayPort AUX channel monitoring data as specified by VESA DisplayPort(DP) Standard preceded by a pseudo-header|
|LINKTYPE_LINUX_SLL2|276|Linux cooked capture encapsulation v2|
|LINKTYPE_SERCOS_MONITOR|277|Reserved for Sercos Monitor|
|LINKTYPE_OPENVIZSLA|278|Openvizsla FPGA-based USB sniffer|
|LINKTYPE_EBHSCR|279|Elektrobit High Speed Capture and Replay (EBHSCR) format|
|LINKTYPE_VPP_DISPATCH|280|Records in traces from the http://fd.io VPP graph dispatch tracer, in the graph dispatcher trace format|
|LINKTYPE_DSA_TAG_BRCM|281|Ethernet frames, with a switch tag inserted between the source address field and the type/length field in the Ethernet header|
|LINKTYPE_DSA_TAG_BRCM_PREPEND|282|Ethernet frames, with a switch tag inserted before the destination address in the Ethernet header|
|LINKTYPE_IEEE802_15_4_TAP|283|IEEE 802.15.4 Low-Rate Wireless Networks, with a pseudo-header containing TLVs with metadata preceding the 802.15.4 header|
|LINKTYPE_DSA_TAG_DSA|284|Ethernet frames, with a switch tag inserted between the source address field and the type/length field in the Ethernet header|
|LINKTYPE_DSA_TAG_EDSA|285|Ethernet frames, with a programmable Ethernet type switch tag inserted between the source address field and the type/length field in the Ethernet header|
|LINKTYPE_ELEE|286|Payload of lawful intercept packets using the ELEE protocol The packet begins with the ELEE header; it does not include any transport-layer or lower-layer headers for protocols used to transport ELEE packets|
|LINKTYPE_Z_WAVE_SERIAL|287|Serial frames transmitted between a host and a Z-Wave chip over an RS-232 or USB serial connection, as described in section 5 of the Z-Wave Serial API Host Application Programming Guide|
|LINKTYPE_USB_2_0|288|USB 2.0, 1.1, or 1.0 packet, beginning with a PID, as described by Chapter 8 Protocol Layer of the the Universal Serial Bus Specification Revision 2.0|
|LINKTYPE_ATSC_ALP|289|ATSC Link-Layer Protocol frames, as described in section 5 of the A/330 Link-Layer Protocol specification, found at https://www.atsc.org/atsc-documents/type/3-0-standards/, beginning with a Base Header|
|LINKTYPE_ETW|290|Event Tracing for Windows messages, beginning with a https://www.tcpdump.org/linktypes/LINKTYPE_ETW.html pseudo-header|
|LINKTYPE_NETANALYZER_NG|291|Reserved for Hilscher Gesellschaft fuer Systemautomation mbH netANALYZER NG hardware and software|
|LINKTYPE_ZBOSS_NCP|292|Serial NCP (Network Co-Processor) protocol for Zigbee stack ZBOSS by DSR. https://cloud.dsr-corporation.com/index.php/s/BAn4LtRWbJjFiAm ZBOSS NCP protocol, beginning with a www.tcpdump.org/linktypes/LINKTYPE_ZBOSS_NCP.html header|
|LINKTYPE_USB_2_0_LOW_SPEED|293|Low-Speed USB 2.0, 1.1, or 1.0 packet, beginning with a PID, as described by Chapter 8 "Protocol Layer" of the https://www.usb.org/document-library/usb-20-specification the Universal Serial Bus Specification Revision 2.0|
|LINKTYPE_USB_2_0_FULL_SPEED|294|Full-Speed USB 2.0, 1.1, or 1.0 packet, beginning with a PID, as described by Chapter 8 "Protocol Layer" of the https://www.usb.org/document-library/usb-20-specification the Universal Serial Bus Specification Revision 2.0|
|LINKTYPE_USB_2_0_HIGH_SPEED|295|High-Speed USB 2.0 packet, beginning with a PID, as described by Chapter 8 "Protocol Layer" of the https://www.usb.org/document-library/usb-20-specification the Universal Serial Bus Specification Revision 2.0|
|LINKTYPE_AUERSWALD_LOG|296|Auerswald Logger Protocol, as described in https://github.com/Auerswald-GmbH/auerlog/blob/master/auerlog.txt|
|LINKTYPE_ZWAVE_TAP|297|Z-Wave packets, as specified by https://www.itu.int/rec/T-REC-G.9959/en ITU-T Recommendation G.9959, with a https://gitlab.com/exegin/zwave-g9959-tap TAP meta-data header|
|LINKTYPE_SILABS_DEBUG_CHANNEL|298|Silicon Labs debug channel protocol, as described in https://github.com/SiliconLabs/java_packet_trace_library/blob/master/doc/debug-channel.md|
|LINKTYPE_FIRA_UCI|299| https://www.tcpdump.org/linktypes/LINKTYPE_FIRA_UCI.html Ultra-wideband (UWB) controller interface protocol (UCI)|
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
