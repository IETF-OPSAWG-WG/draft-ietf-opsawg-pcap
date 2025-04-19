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

  AIM-628:
    author:
    - fullname: David A. Moon
      org: MIT Artificial Intelligence Laboratory
    title: Chaosnet
    date: June 1981
    refcontent: MIT A.I. Memo No. 628
    target: http://www.bitsavers.org/pdf/mit/ai/AIM-628_chaosnet.pdf

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

  DVB-CI-PCAP:
    title: PCAP format for DVB-CI
    author:
    - fullname: Martin Kaiser
      ins: M. Kaiser
      org: ""
    date: January 2, 2021
    target: https://www.kaiser.cx/posts/pcap-dvbci/

  EBHSCR:
    title: Documentation EBHSCR
    date: false
    target: http://www.elektrobit.com/ebhscr

  Exegin-802.15.4-TAP:
    title: IEEE 802.15.4 TAP Link Type Specification
    date: false
    target: https://gitlab.com/exegin/ieee802-15-4-tap

  FD.io-VPP:
    title: VNET (VPP Network Stack)
    date: false
    target: https://fdio-vpp.readthedocs.io/en/latest/gettingstarted/developers/vnet.html

  G.7041:
    title: >
      Generic Framing Procedure
    date: false
    refcontent: ITU-T Recommendation G.7041/Y.1303
    target: https://www.itu.int/rec/T-REC-G.7041/en

  ISO-14443-PCAP:
    title: PCAP format for ISO14443
    author:
    - fullname: Martin Kaiser
      ins: M. Kaiser
      org: ""
    date: January 2, 2021
    target: https://www.kaiser.cx/posts/pcap-iso14443/

  LINKTYPE_APPLE_IP_OVER_IEEE1394:
    title: LINKTYPE_APPLE_IP_OVER_IEEE1394
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_APPLE_IP_OVER_IEEE1394.html

  LINKTYPE_ATM_RFC1483:
    title: LINKTYPE_ATM_RFC1483
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_ATM_RFC1483.html

  LINKTYPE_ATSC_ALP:
    title: LINKTYPE_ATSC_ALP
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_ATSC_ALP.html

  LINKTYPE_AX25:
    title: LINKTYPE_AX25
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_AX25.html

  LINKTYPE_AX25_KISS:
    title: LINKTYPE_AX25_KISS
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_AX25_KISS.html

  LINKTYPE_BACNET_MS_TP:
    title: LINKTYPE_BACNET_MS_TP
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_BACNET_MS_TP.html

  LINKTYPE_BLUETOOTH_BREDR_BB:
    title: LINKTYPE_BLUETOOTH_BREDR_BB
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_BLUETOOTH_BREDR_BB.html

  LINKTYPE_BLUETOOTH_HCI_H4:
    title: LINKTYPE_BLUETOOTH_HCI_H4
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_BLUETOOTH_HCI_H4.html

  LINKTYPE_BLUETOOTH_HCI_H4_WITH_PHDR:
    title: LINKTYPE_BLUETOOTH_HCI_H4_WITH_PHDR
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_BLUETOOTH_HCI_H4_WITH_PHDR.html

  LINKTYPE_BLUETOOTH_LE_LL:
    title: LINKTYPE_BLUETOOTH_LE_LL
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_BLUETOOTH_LE_LL.html

  LINKTYPE_BLUETOOTH_LE_LL_WITH_PHDR:
    title: LINKTYPE_BLUETOOTH_LE_LL_WITH_PHDR
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_BLUETOOTH_LE_LL_WITH_PHDR.html

  LINKTYPE_BLUETOOTH_LINUX_MONITOR:
    title: LINKTYPE_BLUETOOTH_LINUX_MONITOR
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_BLUETOOTH_LINUX_MONITOR.html

  LINKTYPE_C_HDLC:
    title: LINKTYPE_C_HDLC
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_C_HDLC.html

  LINKTYPE_C_HDLC_WITH_DIR:
    title: LINKTYPE_C_HDLC_WITH_DIR
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_C_HDLC_WITH_DIR.html

  LINKTYPE_CAN_SOCKETCAN:
    title: LINKTYPE_CAN_SOCKETCAN
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_CAN_SOCKETCAN.html

  LINKTYPE_DBUS:
    title: LINKTYPE_DBUS
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_DBUS.html

  LINKTYPE_DECT_NR:
    title: LINKTYPE_DECT_NR
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_DECT_NR.html

  LINKTYPE_DISPLAYPORT_AUX:
    title: LINKTYPE_DISPLAYPORT_AUX
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_DISPLAYPORT_AUX.html

  LINKTYPE_DSA_TAG_BRCM:
    title: LINKTYPE_DSA_TAG_BRCM
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_DSA_TAG_BRCM.html

  LINKTYPE_DSA_TAG_BRCM_PREPEND:
    title: LINKTYPE_DSA_TAG_BRCM_PREPEND
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_DSA_TAG_BRCM_PREPEND.html

  LINKTYPE_DSA_TAG_DSA:
    title: LINKTYPE_DSA_TAG_DSA
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_DSA_TAG_DSA.html

  LINKTYPE_DSA_TAG_EDSA:
    title: LINKTYPE_DSA_TAG_EDSA
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_DSA_TAG_EDSA.html

  LINKTYPE_EPON:
    title: LINKTYPE_EPON
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_EPON.html

  LINKTYPE_ERF:
    title: LINKTYPE_ERF
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_ERF.html

  LINKTYPE_ETW:
    title: LINKTYPE_ETW
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_ETW.html

  LINKTYPE_ETHERNET_MPACKET:
    title: LINKTYPE_ETHERNET_MPACKET
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_ETHERNET_MPACKET.html

  LINKTYPE_FC_2:
    title: LINKTYPE_FC_2
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_FC_2.html

  LINKTYPE_FC_2_WITH_FRAME_DELIMS:
    title: LINKTYPE_FC_2_WITH_FRAME_DELIMS
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_FC_2_WITH_FRAME_DELIMSa.html

  LINKTYPE_FIRA_UCI:
    title: LINKTYPE_FIRA_UCI
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_FIRA_UCI.html

  LINKTYPE_FLEXRAY:
    title: LINKTYPE_FLEXRAY
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_FLEXRAY.html

  LINKTYPE_FRELAY:
    title: LINKTYPE_FRELAY
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_FRELAY.html

  LINKTYPE_FRELAY_WITH_DIR:
    title: LINKTYPE_FRELAY_WITH_DIR
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_FRELAY_WITH_DIR.html

  LINKTYPE_I2C_LINUX:
    title: LINKTYPE_I2C_LINUX
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_I2C_LINUX.html

  LINKTYPE_IEEE802_11_PRISM:
    title: LINKTYPE_IEEE802_11_PRISM
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_IEEE802_11_PRISM.html

  LINKTYPE_IEEE802_15_4_NOFCS:
    title: LINKTYPE_IEEE802_15_4_NOFCS
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_IEEE802_15_4_NOFCS.html

  LINKTYPE_IEEE802_15_4_NONASK_PHY:
    title: LINKTYPE_IEEE802_15_4_NONASK_PHY
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_IEEE802_15_4_NONASK_PHY.html

  LINKTYPE_IEEE802_15_4_WITHFCS:
    title: LINKTYPE_IEEE802_15_4_WITHFCS
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_IEEE802_15_4_WITHFCS.html

  LINKTYPE_IPOIB:
    title: LINKTYPE_IPOIB
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_IPOIB.html

  LINKTYPE_IP_OVER_FC:
    title: LINKTYPE_IP_OVER_FC
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_IP_OVER_FC.html

  LINKTYPE_INFINIBAND:
    title: LINKTYPE_INFINIBAND
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_INFINIBAND.html

  LINKTYPE_IPMI_HPM_2:
    title: LINKTYPE_IPMI_HPM_2
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_IPMI_HPM_2.html

  LINKTYPE_IPNET:
    title: LINKTYPE_IPNET
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_IPNET.html

  LINKTYPE_LAPB_WITH_DIR:
    title: LINKTYPE_LAPB_WITH_DIR
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_LAPB_WITH_DIR.html

  LINKTYPE_LAPD:
    title: LINKTYPE_LAPD
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_LAPD.html

  LINKTYPE_LIN:
    title: LINKTYPE_LIN
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_LIN.html

  LINKTYPE_LINUX_IRDA:
    title: LINKTYPE_LINUX_IRDA
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_LINUX_IRDA.html

  LINKTYPE_LINUX_LAPD:
    title: LINKTYPE_LINUX_LAPD
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_LINUX_LAPD.html

  LINKTYPE_LINUX_SLL:
    title: LINKTYPE_LINUX_SLL
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_LINUX_SLL.html

  LINKTYPE_LINUX_SLL2:
    title: LINKTYPE_LINUX_SLL2
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_LINUX_SLL2.html

  LINKTYPE_LOOP:
    title: LINKTYPE_LOOP
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_LOOP.html

  LINKTYPE_LORATAP:
    title: LINKTYPE_LORATAP
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_LORATAP.html

  LINKTYPE_LTALK:
    title: LINKTYPE_LTALK
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_LTALK.html

  LINKTYPE_MFR:
    title: LINKTYPE_MFR
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_MFR.html

  LINKTYPE_MPEG_2_TS:
    title: LINKTYPE_MPEG_2_TS
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_MPEG_2_TS.html

  LINKTYPE_MTP2:
    title: LINKTYPE_MTP2
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_MTP2.html

  LINKTYPE_MTP2_WITH_PHDR:
    title: LINKTYPE_MTP2_WITH_PHDR
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_MTP2_WITH_PHDR.html

  LINKTYPE_MTP3:
    title: LINKTYPE_MTP3
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_MTP3.html

  LINKTYPE_SCCP:
    title: LINKTYPE_SCCP
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_SCCP.html

  LINKTYPE_MUX27010:
    title: LINKTYPE_MUX27010
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_MUX27010.html

  LINKTYPE_NETANALYZER:
    title: LINKTYPE_NETANALYZER
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_NETANALYZER.html

  LINKTYPE_NETANALYZER_TRANSPARENT:
    title: LINKTYPE_NETANALYZER_TRANSPARENT
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_NETANALYZER_TRANSPARENT.html

  LINKTYPE_NETLINK:
    title: LINKTYPE_NETLINK
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_NETLINK.html

  LINKTYPE_NFC_LLCP:
    title: LINKTYPE_NFC_LLCP
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_NFC_LLCP.html

  LINKTYPE_NFLOG:
    title: LINKTYPE_NFLOG
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_NFLOG.html

  LINKTYPE_NG40:
    title: LINKTYPE_NG40
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_NG40.html

  LINKTYPE_NORDIC_BLE:
    title: LINKTYPE_NORDIC_BLE
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_NORDIC_BLE.html

  LINKTYPE_NULL:
    title: LINKTYPE_NULL
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_NULL.html

  LINKTYPE_PKTAP:
    title: LINKTYPE_PKTAP
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_PKTAP.html

  LINKTYPE_PPI:
    title: LINKTYPE_PPI
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_PPI.html

  LINKTYPE_PPP:
    title: LINKTYPE_PPP
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_PPP.html

  LINKTYPE_PPP_ETHER:
    title: LINKTYPE_PPP_ETHER
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_PPP_ETHER.html

  LINKTYPE_PPP_HDLC:
    title: LINKTYPE_PPP_HDLC
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_PPP_HDLC.html

  LINKTYPE_PPP_PPPD:
    title: LINKTYPE_PPP_PPPD
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_PPP_PPPD.html

  LINKTYPE_PPP_WITH_DIR:
    title: LINKTYPE_PPP_WITH_DIR
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_PPP_WITH_DIR.html

  LINKTYPE_PROFIBUS_DL:
    title: LINKTYPE_PROFIBUS_DL
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_PROFIBUS_DL.html

  LINKTYPE_RDS:
    title: LINKTYPE_RDS
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_RDS.html

  LINKTYPE_RTAC_SERIAL:
    title: LINKTYPE_RTAC_SERIAL
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_RTAC_SERIAL.html

  LINKTYPE_SDLC:
    title: LINKTYPE_SDLC
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_SDLC.html

  LINKTYPE_SITA:
    title: LINKTYPE_SITA
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_SITA.html

  LINKTYPE_SLIP:
    title: LINKTYPE_SLIP
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_SLIP.html

  LINKTYPE_STANAG_5066_D_PDU:
    title: LINKTYPE_STANAG_5066_D_PDU
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_STANAG_5066_D_PDU.html

  LINKTYPE_SUNATM:
    title: LINKTYPE_SUNATM
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_SUNATM.html

  LINKTYPE_USB_2_0:
    title: LINKTYPE_USB_2_0
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_USB_2_0.html

  LINKTYPE_USB_2_0_FULL_SPEED:
    title: LINKTYPE_USB_2_0_FULL_SPEED
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_USB_2_0_FULL_SPEED.html

  LINKTYPE_USB_2_0_HIGH_SPEED:
    title: LINKTYPE_USB_2_0_HIGH_SPEED
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_USB_2_0_HIGH_SPEED.html

  LINKTYPE_USB_2_0_LOW_SPEED:
    title: LINKTYPE_USB_2_0_LOW_SPEED
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_USB_2_0_LOW_SPEED.html

  LINKTYPE_USB_DARWIN:
    title: LINKTYPE_USB_DARWIN
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_USB_DARWIN.html

  LINKTYPE_USB_LINUX:
    title: LINKTYPE_USB_LINUX
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_USB_LINUX.html

  LINKTYPE_USB_LINUX_MMAPPED:
    title: LINKTYPE_USB_LINUX_MMAPPED
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_USB_LINUX_MMAPPED.html

  LINKTYPE_VSOCK:
    title: LINKTYPE_VSOCK
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_VSOCK.html

  LINKTYPE_WATTSTOPPER_DLM:
    title: LINKTYPE_WATTSTOPPER_DLM
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_WATTSTOPPER_DLM.html

  LINKTYPE_ZBOSS_NCP:
    title: LINKTYPE_ZBOSS_NCP
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_ZBOSS_NCP.html

  LINKTYPE_ZWAVE_R1_R2:
    title: LINKTYPE_ZWAVE_R1_R2
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_ZWAVE_R1_R2.html

  LINKTYPE_ZWAVE_R3:
    title: LINKTYPE_ZWAVE_R3
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_ZWAVE_R3.html

  LINKTYPE_ZWAVE_TAP:
    title: LINKTYPE_ZWAVE_TAP
    date: false
    target: https://www.tcpdump.org/linktypes/LINKTYPE_ZWAVE_TAP.html

  MDB-PCAP:
    title: PCAP format for MDB
    author:
    - fullname: Martin Kaiser
      ins: M. Kaiser
      org: ""
    date: August 7, 2023
    target: https://www.kaiser.cx/posts/pcap-mdb/

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

  USBPcap:
    title: USBPcap Capture format specification
    date: false
    target: https://desowin.org/usbpcap/captureformat.html

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
format {{?I-D.ietf-opsawg-pcapng}}, both of which are used by tcpdump
and Wireshark {{Wireshark}}.

Within those file formats each packet that is captured is indicated by a LINKTYPE value.
The LINKTYPE value selects one of many hundred formats for metadata and Layer 2 encapsulation of the packet.

This document creates an IANA registry for LINKTYPE values, establishing the IANA
Considerations by which other uses of the PCAP-related formats may register new
LINKTYPE values.

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
It is noted that many enterprise web sites do not maintain URLs over a long period of time, and a document in a "wp-uploaded" section is highly likely to disappear.
In addition specifications that require a reader to click through any kind of marketing or legal agreement are not considered public.

The specification needs to be clearly written, and when the contents of the link type can contain an IPv4 or IPv6 header, then the octets between the beginning of the link type and the IP header needs to be very clearly specified in that document.

Specifications that are not publicly available, but which may be obtained via liaison agreements (such as to ITU-T, 3GPP, IEEE, etc.) are acceptable particularly if the specification document will be public eventually, but are discouraged.
For other documents, the Designated Expert will need use their judgement, or consult the OPSAWG or an Area Director.

Linktypes may be allocated for specifications not publicly available may be made within the FCFS range.
This includes specifications that might be classified.
The minimal requirement is to provide a contact person for that link type.

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
