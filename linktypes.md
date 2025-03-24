Name
: LINKTYPE_NULL

Number
: 0

Description
: BSD loopback encapsulation

Reference
: {{LINKTYPE_NULL}}
{: spacing="compact"}



Name
: LINKTYPE_ETHERNET

Number
: 1

Description
: IEEE 802.3 Ethernet
{: spacing="compact"}



Name
: LINKTYPE_EXP_ETHERNET

Number
: 2

Description
: Xerox experimental 3Mb Ethernet

Reference
: {{PracConsEthDesign}}
{: spacing="compact"}



Name
: LINKTYPE_AX25

Number
: 3

Description
: AX.25 layer 2 packets

Reference
: {{AX.25}}
{: spacing="compact"}



Name
: LINKTYPE_PRONET

Number
: 4

Description
: Reserved for Proteon PRONet Token Ring
{: spacing="compact"}



Name
: LINKTYPE_CHAOS

Number
: 5

Description
: Reserved for MIT Chaosnet

Reference
: {{AIM-628}}
{: spacing="compact"}



Name
: LINKTYPE_IEEE802_5

Number
: 6

Description
: IEEE 802.5 Token Ring
{: spacing="compact"}



Name
: LINKTYPE_ARCNET_BSD

Number
: 7

Description
: Reserved for ARCNET Data Packets with BSD encapsulation

Reference
: {{ATA-878.1-1999}}{{Draft-ATA-878.2}}{{?RFC1051}}{{?RFC1201}}
{: spacing="compact"}



Name
: LINKTYPE_SLIP

Number
: 8

Description
: SLIP

Reference
: {{LINKTYPE_SLIP}}
{: spacing="compact"}



Name
: LINKTYPE_PPP

Number
: 9

Description
: PPP

Reference
: {{?RFC1661}}/{{?RFC1662}}
{: spacing="compact"}



Name
: LINKTYPE_FDDI

Number
: 10

Description
: FDDI: per ANSI INCITS 239-1994
{: spacing="compact"}



Name
: not to be used

Number
: 11-49

Description
: Do not use these values
{: spacing="compact"}



Name
: LINKTYPE_PPP_HDLC

Number
: 50

Description
: PPP in HDLC-like framing

Reference
: {{?RFC1662}}
{: spacing="compact"}



Name
: LINKTYPE_PPP_ETHER

Number
: 51

Description
: PPPoE

Reference
: {{Section 4 of ?RFC2516}}
{: spacing="compact"}



Name
: Reserved

Number
: 52-98

Description
: Do not use these values
{: spacing="compact"}



Name
: LINKTYPE_SYMANTEC_FIREWALL

Number
: 99

Description
: Reserved for Symantec Enterprise Firewall
{: spacing="compact"}



Name
: LINKTYPE_ATM_RFC1483

Number
: 100

Description
: LLC/SNAP-encapsulated ATM

Reference
: {{?RFC1483}}
{: spacing="compact"}



Name
: LINKTYPE_RAW

Number
: 101

Description
: Raw IP; begins with an IPv4 or IPv6 header
{: spacing="compact"}



Name
: LINKTYPE_SLIP_BSDOS

Number
: 102

Description
: Reserved for BSD/OS SLIP BPF header
{: spacing="compact"}



Name
: LINKTYPE_PPP_BSDOS

Number
: 103

Description
: Reserved for BSD/OS PPP BPF header
{: spacing="compact"}



Name
: LINKTYPE_C_HDLC

Number
: 104

Description
: Cisco PPP with HDLC framing

Reference
: {{Section 4.3.1 of ?RFC1547}}
{: spacing="compact"}



Name
: LINKTYPE_IEEE802_11

Number
: 105

Description
: IEEE 802.11 wireless LAN
{: spacing="compact"}



Name
: LINKTYPE_ATM_CLIP

Number
: 106

Description
: ATM Classical IP, with no header preceding IP
{: spacing="compact"}



Name
: LINKTYPE_FRELAY

Number
: 107

Description
: Frame Relay LAPF frames
{: spacing="compact"}



Name
: LINKTYPE_LOOP

Number
: 108

Description
: OpenBSD loopback encapsulation

Reference
: {{LINKTYPE_LOOP}}
{: spacing="compact"}



Name
: LINKTYPE_ENC

Number
: 109

Description
: Reserved for OpenBSD IPSEC encapsulation
{: spacing="compact"}



Name
: LINKTYPE_LANE8023

Number
: 110

Description
: Reserved for ATM LANE + 802.3
{: spacing="compact"}



Name
: LINKTYPE_HIPPI

Number
: 111

Description
: Reserved for NetBSD HIPPI
{: spacing="compact"}



Name
: LINKTYPE_HDLC

Number
: 112

Description
: Reserved for NetBSD HDLC framing
{: spacing="compact"}



Name
: LINKTYPE_LINUX_SLL

Number
: 113

Description
: Linux "cooked" capture encapsulation

Reference
: {{LINKTYPE_LINUX_SLL}}
{: spacing="compact"}



Name
: LINKTYPE_LTALK

Number
: 114

Description
: Apple LocalTalk
{: spacing="compact"}



Name
: LINKTYPE_ECONET

Number
: 115

Description
: Reserved for Acorn Econet
{: spacing="compact"}



Name
: LINKTYPE_IPFILTER

Number
: 116

Description
: Reserved for OpenBSD ipfilter
{: spacing="compact"}



Name
: LINKTYPE_PFLOG

Number
: 117

Description
: OpenBSD pflog; "struct pfloghdr" structure
{: spacing="compact"}



Name
: LINKTYPE_CISCO_IOS

Number
: 118

Description
: Reserved for Cisco-internal use
{: spacing="compact"}



Name
: LINKTYPE_IEEE802_11_PRISM

Number
: 119

Description
: Prism monitor mode

Reference
: {{LINKTYPE_IEEE802_11_PRISM}}
{: spacing="compact"}



Name
: LINKTYPE_IEEE802_11_AIRONET

Number
: 120

Description
: Reserved for 802.11 + FreeBSD Aironet radio metadata
{: spacing="compact"}



Name
: LINKTYPE_HHDLC

Number
: 121

Description
: Reserved for Siemens HiPath HDLC
{: spacing="compact"}



Name
: LINKTYPE_IP_OVER_FC

Number
: 122

Description
: IP-over-Fibre Channel, starting with the Network_Header

Reference
: {{?RFC2625}}
{: spacing="compact"}



Name
: LINKTYPE_SUNATM

Number
: 123

Description
: ATM traffic captured from a SunATM device

Reference
: {{LINKTYPE_SUNATM}}
{: spacing="compact"}



Name
: LINKTYPE_RIO

Number
: 124

Description
: Reserved for RapidIO
{: spacing="compact"}



Name
: LINKTYPE_PCI_EXP

Number
: 125

Description
: Reserved for PCI Express
{: spacing="compact"}



Name
: LINKTYPE_AURORA

Number
: 126

Description
: Reserved for Xilinx Aurora link layer
{: spacing="compact"}



Name
: LINKTYPE_IEEE802_11_RADIOTAP

Number
: 127

Description
: Radiotap header, followed by an 802.11 header

Reference
: {{Radiotap}}
{: spacing="compact"}



Name
: LINKTYPE_TZSP

Number
: 128

Description
: Reserved for Tazmen Sniffer Protocol
{: spacing="compact"}



Name
: LINKTYPE_ARCNET_LINUX

Number
: 129

Description
: Reserved for ARCNET Data Packets with Linux encapsulation

Reference
: {{ATA-878.1-1999}}{{Draft-ATA-878.2}}{{?RFC1051}}{{?RFC1201}}
{: spacing="compact"}



Name
: LINKTYPE_JUNIPER_MLPPP

Number
: 130

Description
: Reserved for Juniper Networks
{: spacing="compact"}



Name
: LINKTYPE_JUNIPER_MLFR

Number
: 131

Description
: Reserved for Juniper Networks
{: spacing="compact"}



Name
: LINKTYPE_JUNIPER_ES

Number
: 132

Description
: Reserved for Juniper Networks
{: spacing="compact"}



Name
: LINKTYPE_JUNIPER_GGSN

Number
: 133

Description
: Reserved for Juniper Networks
{: spacing="compact"}



Name
: LINKTYPE_JUNIPER_MFR

Number
: 134

Description
: Reserved for Juniper Networks
{: spacing="compact"}



Name
: LINKTYPE_JUNIPER_ATM2

Number
: 135

Description
: Reserved for Juniper Networks
{: spacing="compact"}



Name
: LINKTYPE_JUNIPER_SERVICES

Number
: 136

Description
: Reserved for Juniper Networks
{: spacing="compact"}



Name
: LINKTYPE_JUNIPER_ATM1

Number
: 137

Description
: Reserved for Juniper Networks
{: spacing="compact"}



Name
: LINKTYPE_APPLE_IP_OVER_IEEE1394

Number
: 138

Description
: Apple IP-over-IEEE 1394 cooked header

Reference
: {{LINKTYPE_APPLE_IP_OVER_IEEE1394}}
{: spacing="compact"}



Name
: LINKTYPE_MTP2_WITH_PHDR

Number
: 139

Description
: Signaling System 7 (SS7) Message Transfer Part (MTP) Level 2

Reference
: {{Q.703}}
{: spacing="compact"}



Name
: LINKTYPE_MTP2

Number
: 140

Description
: SS7 MTP Level 2

Reference
: {{Q.703}}
{: spacing="compact"}



Name
: LINKTYPE_MTP3

Number
: 141

Description
: SS7 MTP Level 3, with no MTP2 header

Reference
: {{Q.704}}
{: spacing="compact"}



Name
: LINKTYPE_SCCP

Number
: 142

Description
: SS7 Control Part, with no MTP3 or MTP2 header

Reference
: {{Q.711}} {{Q.712}} {{Q.713}} {{Q.714}}
{: spacing="compact"}



Name
: LINKTYPE_DOCSIS

Number
: 143

Description
: DOCSIS MAC frames

Reference
: {{DOCSIS-4.0-MULP}}
{: spacing="compact"}



Name
: LINKTYPE_LINUX_IRDA

Number
: 144

Description
: Linux-IrDA packets

Reference
: {{LINKTYPE_LINUX_IRDA}}
{: spacing="compact"}



Name
: LINKTYPE_IBM_SP

Number
: 145

Description
: Reserved for IBM SP switch
{: spacing="compact"}



Name
: LINKTYPE_IBM_SN

Number
: 146

Description
: Reserved for IBM Next Federation switch
{: spacing="compact"}



Name
: LINKTYPE_RESERVED_01

Number
: 147

Description
: For private use (deprecated)
{: spacing="compact"}



Name
: LINKTYPE_RESERVED_02

Number
: 148

Description
: For private use (deprecated)
{: spacing="compact"}



Name
: LINKTYPE_RESERVED_03

Number
: 149

Description
: For private use (deprecated)
{: spacing="compact"}



Name
: LINKTYPE_RESERVED_04

Number
: 150

Description
: For private use (deprecated)
{: spacing="compact"}



Name
: LINKTYPE_RESERVED_05

Number
: 151

Description
: For private use (deprecated)
{: spacing="compact"}



Name
: LINKTYPE_RESERVED_06

Number
: 152

Description
: For private use (deprecated)
{: spacing="compact"}



Name
: LINKTYPE_RESERVED_07

Number
: 153

Description
: For private use (deprecated)
{: spacing="compact"}



Name
: LINKTYPE_RESERVED_08

Number
: 154

Description
: For private use (deprecated)
{: spacing="compact"}



Name
: LINKTYPE_RESERVED_09

Number
: 155

Description
: For private use (deprecated)
{: spacing="compact"}



Name
: LINKTYPE_RESERVED_10

Number
: 156

Description
: For private use (deprecated)
{: spacing="compact"}



Name
: LINKTYPE_RESERVED_11

Number
: 157

Description
: For private use (deprecated)
{: spacing="compact"}



Name
: LINKTYPE_RESERVED_12

Number
: 158

Description
: For private use (deprecated)
{: spacing="compact"}



Name
: LINKTYPE_RESERVED_13

Number
: 159

Description
: For private use (deprecated)
{: spacing="compact"}



Name
: LINKTYPE_RESERVED_14

Number
: 160

Description
: For private use (deprecated)
{: spacing="compact"}



Name
: LINKTYPE_RESERVED_15

Number
: 161

Description
: For private use (deprecated)
{: spacing="compact"}



Name
: LINKTYPE_RESERVED_16

Number
: 162

Description
: For private use (deprecated)
{: spacing="compact"}



Name
: LINKTYPE_IEEE802_11_AVS

Number
: 163

Description
: AVS header, followed by an 802.11 header

Reference
: {{AVS}}
{: spacing="compact"}



Name
: LINKTYPE_JUNIPER_MONITOR

Number
: 164

Description
: Reserved for Juniper Networks
{: spacing="compact"}



Name
: LINKTYPE_BACNET_MS_TP

Number
: 165

Description
: BACnet MS/TP frames

Reference
: Section 9.3 MS/TP Frame Format of {{ASHRAE-135}}
{: spacing="compact"}



Name
: LINKTYPE_PPP_PPPD

Number
: 166

Description
: PPP in HDLC-like encapsulation, like LINKTYPE_PPP_HDLC, different stuffing
{: spacing="compact"}



Name
: LINKTYPE_JUNIPER_PPPOE

Number
: 167

Description
: Reserved for Juniper Networks
{: spacing="compact"}



Name
: LINKTYPE_JUNIPER_PPPOE_ATM

Number
: 168

Description
: Reserved for Juniper Networks
{: spacing="compact"}



Name
: LINKTYPE_GPRS_LLC

Number
: 169

Description
: General Packet Radio Service Logical Link Control, as per 3GPP TS 04.64

Reference
: {{_3GPP-TS-04.64}}
{: spacing="compact"}



Name
: LINKTYPE_GPF_T

Number
: 170

Description
: Transparent-mapped generic framing procedure

Reference
: {{G.7041}}
{: spacing="compact"}



Name
: LINKTYPE_GPF_F

Number
: 171

Description
: Frame-mapped generic framing procedure

Reference
: {{G.7041}}
{: spacing="compact"}



Name
: LINKTYPE_GCOM_T1E1

Number
: 172

Description
: Reserved for Gcom T1/E1 line monitoring equipment
{: spacing="compact"}



Name
: LINKTYPE_GCOM_SERIAL

Number
: 173

Description
: Reserved for Gcom T1/E1 line monitoring equipment
{: spacing="compact"}



Name
: LINKTYPE_JUNIPER_PIC_PEER

Number
: 174

Description
: Reserved for Juniper Networks
{: spacing="compact"}



Name
: LINKTYPE_ERF_ETH

Number
: 175

Description
: Endace ERF header followed by 802.3 Ethernet
{: spacing="compact"}



Name
: LINKTYPE_ERF_POS

Number
: 176

Description
: Endace ERF header followed by Packet-over-SONET
{: spacing="compact"}



Name
: LINKTYPE_LINUX_LAPD

Number
: 177

Description
: Linux vISDN LAPD frames

Reference
: {{LINKTYPE_LINUX_LAPD}}
{: spacing="compact"}



Name
: LINKTYPE_JUNIPER_ETHER

Number
: 178

Description
: Reserved for Juniper Networks
{: spacing="compact"}



Name
: LINKTYPE_JUNIPER_PPP

Number
: 179

Description
: Reserved for Juniper Networks
{: spacing="compact"}



Name
: LINKTYPE_JUNIPER_FRELAY

Number
: 180

Description
: Reserved for Juniper Networks
{: spacing="compact"}



Name
: LINKTYPE_JUNIPER_CHDLC

Number
: 181

Description
: Reserved for Juniper Networks
{: spacing="compact"}



Name
: LINKTYPE_MFR

Number
: 182

Description
: FRF.16.1 Multi-Link Frame Relay frames, beginning with an FRF.12 Interface fragmentation format fragmentation header

Reference
: {{FRF.16.1}}
{: spacing="compact"}



Name
: LINKTYPE_JUNIPER_VP

Number
: 183

Description
: Reserved for Juniper Networks
{: spacing="compact"}



Name
: LINKTYPE_A429

Number
: 184

Description
: Reserved for ARINC 429 frames
{: spacing="compact"}



Name
: LINKTYPE_A653_ICM

Number
: 185

Description
: Reserved for Arinc 653 Interpartition Communication messages
{: spacing="compact"}



Name
: LINKTYPE_USB_FREEBSD

Number
: 186

Description
: USB packets, beginning with a FreeBSD USB header
{: spacing="compact"}



Name
: LINKTYPE_BLUETOOTH_HCI_H4

Number
: 187

Description
: Bluetooth HCI UART transport layer; the frame contains an HCI packet indicator octet, as specified by the UART Transport Layer portion of the most recent Bluetooth Core specification, followed by an HCI packet of the specified packet type, as specified by the Host Controller Interface Functional Specification portion of the most recent Bluetooth Core Specification
{: spacing="compact"}



Name
: LINKTYPE_IEEE802_16_MAC_CPS

Number
: 188

Description
: Reserved for IEEE 802.16 MAC Common Part Sublayer
{: spacing="compact"}



Name
: LINKTYPE_USB_LINUX

Number
: 189

Description
: USB packets, beginning with a Linux USB header, as specified by the struct usbmon_packet in the Documentation/usb/usbmon.txt file in the Linux source tree. Only the first 48 octets of that header are present. All fields in the header are in host byte order. When performing a live capture, the host byte order is the byte order of the machine on which the packets are captured. When reading a PCAP file, the byte order is the byte order for the file, as specified by the file's magic number; when reading a PCAPNG file, the byte order is the byte order for the section of the PCAPNG file, as specified by the Section Header Block
{: spacing="compact"}



Name
: LINKTYPE_CAN20B

Number
: 190

Description
: Reserved for Controller Area Network (CAN) v. 2.0B packets
{: spacing="compact"}



Name
: LINKTYPE_IEEE802_15_4_LINUX

Number
: 191

Description
: IEEE 802.15.4, with address fields padded, as is done by Linux drivers
{: spacing="compact"}



Name
: LINKTYPE_PPI

Number
: 192

Description
: Per-Packet Information information, as specified by the Per-Packet Information Header Specification , followed by a packet with the LINKTYPE_ value specified by the pph_dlt field of that header

Reference
: {{PPI}}
{: spacing="compact"}



Name
: LINKTYPE_IEEE802_16_MAC_CPS_RADIO

Number
: 193

Description
: Reserved for 802.16 MAC Common Part Sublayer plus radio header
{: spacing="compact"}



Name
: LINKTYPE_JUNIPER_ISM

Number
: 194

Description
: Reserved for Juniper Networks
{: spacing="compact"}



Name
: LINKTYPE_IEEE802_15_4_WITHFCS

Number
: 195

Description
: IEEE 802.15.4 Low-Rate Wireless Networks, with each packet having the FCS at the end of the frame
{: spacing="compact"}



Name
: LINKTYPE_SITA

Number
: 196

Description
: Various link-layer types, with a pseudo-header

Reference
: {{LINKTYPE_SITA}}
{: spacing="compact"}



Name
: LINKTYPE_ERF

Number
: 197

Description
: Endace ERF records

Reference
: {{ERF}}
{: spacing="compact"}



Name
: LINKTYPE_RAIF1

Number
: 198

Description
: Reserved for Ethernet packets captured from a u10 Networks board
{: spacing="compact"}



Name
: LINKTYPE_IPMB_KONTRON

Number
: 199

Description
: Reserved for IPMB packet for IPMI, with a 2-octet header
{: spacing="compact"}



Name
: LINKTYPE_JUNIPER_ST

Number
: 200

Description
: Reserved for Juniper Networks
{: spacing="compact"}



Name
: LINKTYPE_BLUETOOTH_HCI_H4_WITH_PHDR

Number
: 201

Description
: Bluetooth HCI UART transport layer; the frame contains a 4-octet direction field, in network byte order (big-endian), the low-order bit of which is set if the frame was sent from the host to the controller and clear if the frame was received by the host from the controller, followed by an HCI packet indicator octet, as specified by the UART Transport Layer portion of the most recent Bluetooth Core specification, followed by an HCI packet of the specified packet type, as specified by the Host Controller Interface Functional Specification portion of the most recent Bluetooth Core Specification
{: spacing="compact"}



Name
: LINKTYPE_AX25_KISS

Number
: 202

Description
: AX.25 packet, with a KISS header

Reference
: {{KISS}} {{AX.25}}
{: spacing="compact"}



Name
: LINKTYPE_LAPD

Number
: 203

Description
: Link Access Procedures on the D Channel (LAPD) frames, starting with the address field, with no pseudo-header

Reference
: {{Q.920}} {{Q.921}}
{: spacing="compact"}



Name
: LINKTYPE_PPP_WITH_DIR

Number
: 204

Description
: PPP, preceded with a one-octet pseudo-header with a zero value meaning received by this host and a non-zero value meaning sent by this host; if the first 2 octets are 0xff and 0x03, it's PPP in HDLC-like framing, with the PPP header following those two octets, otherwise it's PPP without framing, and the packet begins with the PPP header. The data in the frame is not octet-stuffed or bit-stuffed

Reference
: {{?RFC1661}}/{{?RFC1662}}
{: spacing="compact"}



Name
: LINKTYPE_C_HDLC_WITH_DIR

Number
: 205

Description
: Cisco PPP with HDLC framing, preceded with a one-octet pseudo-header with a zero value meaning received by this host and a non-zero value meaning sent by this host

Reference
: {{Section 4.3.1 of ?RFC1547}}
{: spacing="compact"}



Name
: LINKTYPE_FRELAY_WITH_DIR

Number
: 206

Description
: Frame Relay LAPF frames, beginning with a one-octet pseudo-header with a zero value meaning received by this host (DCE->DTE) and a non-zero value meaning sent by this host (DTE->DCE), followed by an ITU-T Recommendation Q.922 LAPF header starting with the address field, and without an FCS at the end of the frame
{: spacing="compact"}



Name
: LINKTYPE_LAPB_WITH_DIR

Number
: 207

Description
: Link Access Procedure, Balanced (LAPB), as specified by ITU-T Recommendation X.25 , preceded with a one-octet pseudo-header with a zero value meaning received by this host (DCE->DTE) and a non-zero value meaning sent by this host (DTE->DCE)
{: spacing="compact"}



Name
: Reserved

Number
: 208

Description
: Reserved for an unspecified link-layer type
{: spacing="compact"}



Name
: LINKTYPE_I2C_LINUX

Number
: 209

Description
: Linux I2C packets

Reference
: {{LINKTYPE_I2C_LINUX}}
{: spacing="compact"}



Name
: LINKTYPE_FLEXRAY

Number
: 210

Description
: FlexRay frames or symbols, with a pseudo-header

Reference
: {{LINKTYPE_FLEXRAY}}
{: spacing="compact"}



Name
: LINKTYPE_MOST

Number
: 211

Description
: Reserved for Media Oriented Systems Transport (MOST) bus
{: spacing="compact"}



Name
: LINKTYPE_LIN

Number
: 212

Description
: Local Interconnect Network (LIN) automotive bus

Reference
: {{LINKTYPE_LIN}}
{: spacing="compact"}



Name
: LINKTYPE_X2E_SERIAL

Number
: 213

Description
: Reserved for X2E serial line captures
{: spacing="compact"}



Name
: LINKTYPE_X2E_XORAYA

Number
: 214

Description
: Reserved for X2E Xoraya data loggers
{: spacing="compact"}



Name
: LINKTYPE_IEEE802_15_4_NONASK_PHY

Number
: 215

Description
: IEEE 802.15.4 Low-Rate Wireless Networks, with each packet having the FCS at the end of the frame, and with the PHY-level data for the O-QPSK, BPSK, GFSK, MSK, and RCC DSS BPSK PHYs (4 octets of 0 as preamble, one octet of SFD, one octet of frame length + reserved bit) preceding the MAC-layer data (starting with the frame control field)
{: spacing="compact"}



Name
: LINKTYPE_LINUX_EVDEV

Number
: 216

Description
: Reserved for Linux evdev messages
{: spacing="compact"}



Name
: LINKTYPE_GSMTAP_UM

Number
: 217

Description
: Reserved for GSM Um interface, with gsmtap header
{: spacing="compact"}



Name
: LINKTYPE_GSMTAP_ABIS

Number
: 218

Description
: Reserved for GSM Abis interface, with gsmtap header
{: spacing="compact"}



Name
: LINKTYPE_MPLS

Number
: 219

Description
: MPLS packets with MPLS label as the header
{: spacing="compact"}



Name
: LINKTYPE_USB_LINUX_MMAPPED

Number
: 220

Description
: USB packets, beginning with a Linux USB header, as specified by the struct usbmon_packet in the Documentation/usb/usbmon.txt file in the Linux source tree. All 64 octets of the header are present. All fields in the header are in host byte order. When performing a live capture, the host byte order is the byte order of the machine on which the packets are captured. When reading a PCAP file, the byte order is the byte order for the file, as specified by the file's magic number; when reading a PCAPNG file, the byte order is the byte order for the section of the PCAPNG file, as specified by the Section Header Block. For isochronous transfers, the ndesc field specifies the number of isochronous descriptors that follow
{: spacing="compact"}



Name
: LINKTYPE_DECT

Number
: 221

Description
: Reserved for DECT packets, with a pseudo-header
{: spacing="compact"}



Name
: LINKTYPE_AOS

Number
: 222

Description
: Reserved for OS Space Data Link Protocol
{: spacing="compact"}



Name
: LINKTYPE_WIHART

Number
: 223

Description
: Reserved for Wireless HART (Highway Addressable Remote Transducer)
{: spacing="compact"}



Name
: LINKTYPE_FC_2

Number
: 224

Description
: Fibre Channel FC-2 frames, beginning with a Frame_Header
{: spacing="compact"}



Name
: LINKTYPE_FC_2_WITH_FRAME_DELIMS

Number
: 225

Description
: Fibre Channel FC-2 frames, beginning an encoding of the SOF, followed by a Frame_Header, and ending with an encoding of the SOF. The encodings represent the frame delimiters as 4-octet sequences representing the corresponding ordered sets, with K28.5 represented as 0xBC, and the D symbols as the corresponding octet values; for example, SOFi2, which is K28.5 - D21.5 - D1.2 - D21.2, is represented as 0xBC 0xB5 0x55 0x55
{: spacing="compact"}



Name
: LINKTYPE_IPNET

Number
: 226

Description
: Solaris ipnet

Reference
: {{LINKTYPE_IPNET}}
{: spacing="compact"}



Name
: LINKTYPE_CAN_SOCKETCAN

Number
: 227

Description
: Controller Area Network frames

Reference
: {{LINKTYPE_CAN_SOCKETCAN}}
{: spacing="compact"}



Name
: LINKTYPE_IPV4

Number
: 228

Description
: Raw IPv4; the packet begins with an IPv4 header
{: spacing="compact"}



Name
: LINKTYPE_IPV6

Number
: 229

Description
: Raw IPv6; the packet begins with an IPv6 header
{: spacing="compact"}



Name
: LINKTYPE_IEEE802_15_4_NOFCS

Number
: 230

Description
: IEEE 802.15.4 Low-Rate Wireless Network, without the FCS at the end of the frame
{: spacing="compact"}



Name
: LINKTYPE_DBUS

Number
: 231

Description
: Raw D-Bus messages , starting with the endianness flag, followed by the message type, etc., but without the authentication handshake before the message sequence

Reference
: {{D-Bus}}
{: spacing="compact"}



Name
: LINKTYPE_JUNIPER_VS

Number
: 232

Description
: Reserved for Juniper Networks
{: spacing="compact"}



Name
: LINKTYPE_JUNIPER_SRX_E2E

Number
: 233

Description
: Reserved for Juniper Networks
{: spacing="compact"}



Name
: LINKTYPE_JUNIPER_FIBRECHANNEL

Number
: 234

Description
: Reserved for Juniper Networks
{: spacing="compact"}



Name
: LINKTYPE_DVB_CI

Number
: 235

Description
: DVB-CI messages

Reference
: {{DVB-CI-PCAP}}{{DVB-CI}}
{: spacing="compact"}



Name
: LINKTYPE_MUX27010

Number
: 236

Description
: Variant of 3GPP TS 27.010 multiplexing protocol

Reference
: {{LINKTYPE_MUX27010}}
{: spacing="compact"}



Name
: LINKTYPE_STANAG_5066_D_PDU

Number
: 237

Description
: D_PDUs as described by NATO standard STANAG 5066, starting with the synchronization sequence, and including both header and data CRCs. The current version of STANAG 5066 is backwards-compatible with the 1.0.2 version , although newer versions are classified

Reference
: {{STANAG-5066}}
{: spacing="compact"}



Name
: LINKTYPE_JUNIPER_ATM_CEMIC

Number
: 238

Description
: Reserved for Juniper Networks
{: spacing="compact"}



Name
: LINKTYPE_NFLOG

Number
: 239

Description
: Linux netlink NETLINK NFLOG socket log messages

Reference
: {{LINKTYPE_NFLOG}}
{: spacing="compact"}



Name
: LINKTYPE_NETANALYZER

Number
: 240

Description
: Ethernet frames with netANALYZER pseudo-header

Reference
: {{LINKTYPE_NETANALYZER}}
{: spacing="compact"}



Name
: LINKTYPE_NETANALYZER_TRANSPARENT

Number
: 241

Description
: Ethernet frames with netANALYZER pseudo-header, preamble, and SFD

Reference
: {{LINKTYPE_NETANALYZER_TRANSPARENT}}
{: spacing="compact"}



Name
: LINKTYPE_IPOIB

Number
: 242

Description
: IP-over-InfiniBand

Reference
: {{Section 6 of ?RFC4391}}
{: spacing="compact"}



Name
: LINKTYPE_MPEG_2_TS

Number
: 243

Description
: MPEG-2 Transport Stream transport packets

Reference
: Table 2-2 of section 2.4.3.2 Transport Stream packet layer of {{H.222.0}}
{: spacing="compact"}



Name
: LINKTYPE_NG40

Number
: 244

Description
: Frames from ng4T GmbH's ng40 protocol tester

Reference
: {{LINKTYPE_NG40}}
{: spacing="compact"}



Name
: LINKTYPE_NFC_LLCP

Number
: 245

Description
: NFC Logical Link Control Protocol frames, with a pseudo-header

Reference
: {{LINKTYPE_NFC_LLCP}}
{: spacing="compact"}



Name
: LINKTYPE_PFSYNC

Number
: 246

Description
: Reserved for pfsync output
{: spacing="compact"}



Name
: LINKTYPE_INFINIBAND

Number
: 247

Description
: Raw InfiniBand frames, starting with the Local Routing Header, as specified in Chapter 5 Data packet format of InfiniBand™ Architectural Specification Release 1.2.1 Volume 1 - General Specifications
{: spacing="compact"}



Name
: LINKTYPE_SCTP

Number
: 248

Description
: SCTP packets, with no lower-level protocols such as IPv4 or IPv6

Reference
: {{?RFC4960}}
{: spacing="compact"}



Name
: LINKTYPE_USBPCAP

Number
: 249

Description
: USB packets, beginning with a USBPcap header

Reference
: {{USBPcap}}
{: spacing="compact"}



Name
: LINKTYPE_RTAC_SERIAL

Number
: 250

Description
: Serial-line packet from the Schweitzer Engineering Laboratories RTAC product

Reference
: {{LINKTYPE_RTAC_SERIAL}}
{: spacing="compact"}



Name
: LINKTYPE_BLUETOOTH_LE_LL

Number
: 251

Description
: Bluetooth Low Energy air interface Link Layer packets, in the format described in Section 2.1 (PACKET FORMAT) of volume 6 of the Bluetooth Specification Version 4.0 (see PDF page 2200), but without the Preamble
{: spacing="compact"}



Name
: LINKTYPE_WIRESHARK_UPPER_PDU

Number
: 252

Description
: Reserved for Wireshark
{: spacing="compact"}



Name
: LINKTYPE_NETLINK

Number
: 253

Description
: Linux Netlink capture encapsulation

Reference
: {{LINKTYPE_NETLINK}} {{?RFC3549}}
{: spacing="compact"}



Name
: LINKTYPE_BLUETOOTH_LINUX_MONITOR

Number
: 254

Description
: Bluetooth Linux Monitor

Reference
: {{LINKTYPE_BLUETOOTH_LINUX_MONITOR}}
{: spacing="compact"}



Name
: LINKTYPE_BLUETOOTH_BREDR_BB

Number
: 255

Description
: Bluetooth Basic Rate and Enhanced Data Rate baseband packets

Reference
: {{LINKTYPE_BLUETOOTH_BREDR_BB}}
{: spacing="compact"}



Name
: LINKTYPE_BLUETOOTH_LE_LL_WITH_PHDR

Number
: 256

Description
: Bluetooth Low Energy link-layer packets

Reference
: {{LINKTYPE_BLUETOOTH_LE_LL_WITH_PHDR}}
{: spacing="compact"}



Name
: LINKTYPE_PROFIBUS_DL

Number
: 257

Description
: PROFIBUS data link layer packets, as specified by IEC standard 61158-4-3, beginning with the start delimiter, ending with the end delimiter, and including all octets between them
{: spacing="compact"}



Name
: LINKTYPE_PKTAP

Number
: 258

Description
: Apple PKTAP capture encapsulation

Reference
: {{LINKTYPE_PKTAP}}
{: spacing="compact"}



Name
: LINKTYPE_EPON

Number
: 259

Description
: Ethernet-over-passive-optical-network packets, starting with the last 6 octets of the modified preamble as specified by 65.1.3.2 Transmit in Clause 65 of Section 5 of IEEE 802.3, followed immediately by an Ethernet frame
{: spacing="compact"}



Name
: LINKTYPE_IPMI_HPM_2

Number
: 260

Description
: IPMI trace packets, as specified by Table 3-20 Trace Data Block Format in the PICMG HPM.2 specification The timestamps for packets in this format must match the timestamps in the Trace Data Blocks
{: spacing="compact"}



Name
: LINKTYPE_ZWAVE_R1_R2

Number
: 261

Description
: Z-Wave RF profile R1 and R2 packets

Reference
: {{LINKTYPE_ZWAVE_R1_R2}}
{: spacing="compact"}



Name
: LINKTYPE_ZWAVE_R3

Number
: 262

Description
: Z-Wave RF profile R3 packets

Reference
: {{LINKTYPE_ZWAVE_R3}}
{: spacing="compact"}



Name
: LINKTYPE_WATTSTOPPER_DLM

Number
: 263

Description
: WattStopper Digital Lighting Management (DLM) and Legrand Nitoo Open protocol packets

Reference
: {{LINKTYPE_WATTSTOPPER_DLM}}
{: spacing="compact"}



Name
: LINKTYPE_ISO_14443

Number
: 264

Description
: ISO 14443 contactless smartcard messages

Reference
: {{ISO-14443-PCAP}}
{: spacing="compact"}



Name
: LINKTYPE_RDS

Number
: 265

Description
: IEC 62106 Radio data system (RDS) groups

Reference
: {{LINKTYPE_RDS}}
{: spacing="compact"}



Name
: LINKTYPE_USB_DARWIN

Number
: 266

Description
: USB packets captured on a Darwin-based operating system (macOS, etc.)

Reference
: {{LINKTYPE_USB_DARWIN}}
{: spacing="compact"}



Name
: LINKTYPE_OPENFLOW

Number
: 267

Description
: Reserved for OpenBSD DLT_OPENFLOW
{: spacing="compact"}



Name
: LINKTYPE_SDLC

Number
: 268

Description
: SDLC packets, as specified by Chapter 1, DLC Links, section Synchronous Data Link Control (SDLC) of Systems Network Architecture Formats, GA27-3136-20 , without the flag fields, zero-bit insertion, or Frame Check Sequence field, containing SNA path information units (PIUs) as the payload
{: spacing="compact"}



Name
: LINKTYPE_TI_LLN_SNIFFER

Number
: 269

Description
: Reserved for Texas Instruments protocol sniffer
{: spacing="compact"}



Name
: LINKTYPE_LORATAP

Number
: 270

Description
: LoRaTap pseudo-header , followed by the payload, which is typically the PHYPayload from the LoRaWan specification

Reference
: {{LoRaTap}}{{LoRaWAN}}
{: spacing="compact"}



Name
: LINKTYPE_VSOCK

Number
: 271

Description
: Protocol for communication between host and guest machines in VMware and KVM hypervisors

Reference
: {{LINKTYPE_VSOCK}}
{: spacing="compact"}



Name
: LINKTYPE_NORDIC_BLE

Number
: 272

Description
: Messages to and from a Nordic Semiconductor nRF Sniffer for Bluetooth LE packets

Reference
: {{LINKTYPE_NORDIC_BLE}}
{: spacing="compact"}



Name
: LINKTYPE_DOCSIS31_XRA31

Number
: 273

Description
: DOCSIS packets and bursts, preceded by a pseudo-header

Reference
: {{DOCSIS-XRA}} {{DOCSIS-4.0-MULP}}
{: spacing="compact"}



Name
: LINKTYPE_ETHERNET_MPACKET

Number
: 274

Description
: mPackets, as specified by IEEE 802.3br Figure 99-4, starting with the preamble and always ending with a CRC field
{: spacing="compact"}



Name
: LINKTYPE_DISPLAYPORT_AUX

Number
: 275

Description
: DisplayPort AUX channel monitoring messages

Reference
: {{LINKTYPE_DISPLAYPORT_AUX}}
{: spacing="compact"}



Name
: LINKTYPE_LINUX_SLL2

Number
: 276

Description
: Linux cooked capture encapsulation v2

Reference
: {{LINKTYPE_LINUX_SLL2}}
{: spacing="compact"}



Name
: LINKTYPE_SERCOS_MONITOR

Number
: 277

Description
: Reserved for Sercos Monitor
{: spacing="compact"}



Name
: LINKTYPE_OPENVIZSLA

Number
: 278

Description
: OpenVizsla FPGA-based USB sniffer

Reference
: {{OpenVizsla}}
{: spacing="compact"}



Name
: LINKTYPE_EBHSCR

Number
: 279

Description
: Elektrobit High Speed Capture and Replay (EBHSCR) format

Reference
: {{EBHSCR}}
{: spacing="compact"}



Name
: LINKTYPE_VPP_DISPATCH

Number
: 280

Description
: fd.io VPP graph dispatcher trace records

Reference
: {{FD.io-VPP}}
{: spacing="compact"}



Name
: LINKTYPE_DSA_TAG_BRCM

Number
: 281

Description
: Ethernet frames, with a Broadcom switch tag inserted

Reference
: {{LINKTYPE_DSA_TAG_BRCM}}
{: spacing="compact"}



Name
: LINKTYPE_DSA_TAG_BRCM_PREPEND

Number
: 282

Description
: Ethernet frames, with a Broadcom switch tag prepended

Reference
: {{LINKTYPE_DSA_TAG_BRCM_PREPEND}}
{: spacing="compact"}



Name
: LINKTYPE_IEEE802_15_4_TAP

Number
: 283

Description
: IEEE 802.15.4 Low-Rate Wireless Networks, with a tap header preceding the 802.15.4 header

Reference
: {{Exegin-802.15.4-TAP}}
{: spacing="compact"}



Name
: LINKTYPE_DSA_TAG_DSA

Number
: 284

Description
: Ethernet frames, with a Marvell DSA switch tag inserted

Reference
: {{LINKTYPE_DSA_TAG_DSA}}
{: spacing="compact"}



Name
: LINKTYPE_DSA_TAG_EDSA

Number
: 285

Description
: Ethernet frames, with a Marvell EDSA switch tag inserted

Reference
: {{LINKTYPE_DSA_TAG_EDSA}}
{: spacing="compact"}



Name
: LINKTYPE_ELEE

Number
: 286

Description
: Payload of lawful intercept packets using the ELEE protocol The packet begins with the ELEE header; it does not include any transport-layer or lower-layer headers for protocols used to transport ELEE packets
{: spacing="compact"}



Name
: LINKTYPE_Z_WAVE_SERIAL

Number
: 287

Description
: Serial frames transmitted between a host and a Z-Wave chip over an RS-232 or USB serial connection

Reference
: {{Z_WAVE_SERIAL}} section 5
{: spacing="compact"}



Name
: LINKTYPE_USB_2_0

Number
: 288

Description
: USB 2.0, 1.1, or 1.0 packet, beginning with a PID, as described by Chapter 8 Protocol Layer of the the Universal Serial Bus Specification Revision 2.0
{: spacing="compact"}



Name
: LINKTYPE_ATSC_ALP

Number
: 289

Description
: ATSC Link-Layer Protocol frames, as described in section 5 of the {{A/330}} Link-Layer Protocol specification, beginning with a Base Header
{: spacing="compact"}



Name
: LINKTYPE_ETW

Number
: 290

Description
: Event Tracing for Windows messages

Reference
: {{LINKTYPE_ETW}}
{: spacing="compact"}



Name
: LINKTYPE_NETANALYZER_NG

Number
: 291

Description
: Reserved for Hilscher Gesellschaft fuer Systemautomation mbH netANALYZER NG hardware and software
{: spacing="compact"}



Name
: LINKTYPE_ZBOSS_NCP

Number
: 292

Description
: ZBOSS NCP Serial Protocol, with a pseudo-header

Reference
: {{LINKTYPE_ZBOSS_NCP}}
{: spacing="compact"}



Name
: LINKTYPE_USB_2_0_LOW_SPEED

Number
: 293

Description
: Low-Speed USB 2.0, 1.1, or 1.0 packet, beginning with a PID, as described by Chapter 8 "Protocol Layer" of {{USB-2.0}}
{: spacing="compact"}



Name
: LINKTYPE_USB_2_0_FULL_SPEED

Number
: 294

Description
: Full-Speed USB 2.0, 1.1, or 1.0 packet, beginning with a PID, as described by Chapter 8 "Protocol Layer" of {{USB-2.0}}
{: spacing="compact"}



Name
: LINKTYPE_USB_2_0_HIGH_SPEED

Number
: 295

Description
: High-Speed USB 2.0 packet, beginning with a PID, as described by Chapter 8 "Protocol Layer" of {{USB-2.0}}
{: spacing="compact"}



Name
: LINKTYPE_AUERSWALD_LOG

Number
: 296

Description
: Auerswald Logger Protocol, as described in {{Auerswald-Logger}}
{: spacing="compact"}



Name
: LINKTYPE_ZWAVE_TAP

Number
: 297

Description
: Z-Wave packets, as specified by ITU-T Recommendation G.9959, with a meta-data header

Reference
: {{Exegin-Z-Wave-G.9959-TAP}}{{G.9959}}
{: spacing="compact"}



Name
: LINKTYPE_SILABS_DEBUG_CHANNEL

Number
: 298

Description
: Silicon Labs debug channel protocol

Reference
: {{Silabs-Debug-Channel}}
{: spacing="compact"}



Name
: LINKTYPE_FIRA_UCI

Number
: 299

Description
: Ultra-wideband (UWB) controller interface protocol (UCI)

Reference
: {{LINKTYPE_FIRA_UCI}}
{: spacing="compact"}



Name
: LINKTYPE_MDB

Number
: 300

Description
: MDB (Multi-Drop Bus) protocol between a vending machine controller and peripherals inside the vending machine

Reference
: {{MDB-PCAP}}
{: spacing="compact"}



Name
: LINKTYPE_DECT_NR

Number
: 301

Description
: DECT-2020 New Radio (NR) MAC layer; the Physical Header Field is always encoded using 80 bits (10 bytes). Broadcast transmissions using 40 bits (5 bytes) is padded with 40 zero bits (5 bytes). When padding is used the Receiver Identity value 0x0000 (reserved address) is used to detect broadcast transmissions

Reference
: {{ETSI-TS-103-636-4}}
{: spacing="compact"}



