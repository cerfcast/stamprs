---
layout: page
title: Specs
type: navigation
order: e
permalink: /specs/
---

## STAMP Specifications

The [IPPM working group](https://datatracker.ietf.org/wg/ippm/about/) of the [IETF](https://www.ietf.org/) is currently the body where _most_ of the work specifying STAMP is being done. The base STAMP is specified in [RFC 8762](https://datatracker.ietf.org/doc/rfc8762/). Support for extensions was added with [RFC 8972](https://datatracker.ietf.org/doc/rfc8972/).

| RFC | Title | URL |
| -- | -- | -- |
| RFC 8762 | Simple Two-Way Active Measurement Protocol | [URL](https://datatracker.ietf.org/doc/rfc8762/) |
| RFC 8972 | Simple Two-Way Active Measurement Protocol Optional Extensions | [URL](https://datatracker.ietf.org/doc/rfc8972/) |

### STAMP Extensions

The base features of STAMP are powerful. However, those features are just the beginning of what measurements STAMP can make. RFC 8972 enabled optional extensions to the STAMP protocol that give STAMP even more power and flexibility. Below is a list of the RFCs where STAMP extensions are _already_ standardized.

| RFC | Title | URL | Description | TLV(s) |
| -- | -- | -- | -- | -- |
| RFC 8972 | Simple Two-Way Active Measurement Protocol Optional Extensions | [URL](https://datatracker.ietf.org/doc/rfc8972/) | In addition to specifying the means for extending STAMP to allow additional, optional functionality, RFC 8972 also specified several extensions. | Extra Padding, Location, Timestamp Information, Class of Service, Direct Measurement, Access Report, Follow-up Telemetry, HMAC |
| RFC 9503 | Simple Two-Way Active Measurement Protocol (STAMP) Extensions for Segment Routing Networks | [URL](https://datatracker.ietf.org/doc/rfc9503/) | This RFC (Proposed Standard) specifies optional extensions to STAMP for measurements in networks with segment routing. | Destination Node Address, Return Path |

Below is a list of the RFCs where STAMP extensions are in the process of being standardized:

| Draft | Title | URL | Description | TLV(s) |
| -- | -- | -- | -- | -- |
| draft-ietf-ippm-asymmetrical-pkts | Performance Measurement with Asymmetrical Traffic Using STAMP  | [URL](https://datatracker.ietf.org/doc/draft-ietf-ippm-asymmetrical-pkts/) | In normal operation, a STAMP reflector generates a single packet in response to a STAMP test packet. However, "the use of asymmetrical test packets allow for the creation of more realistic flows of test packets and, thus, a closer approximation between active performance measurements and conditions experienced by the monitored application."[^assym] | Reflected Test Packet Control |
| draft-gandhi-ippm-stamp-ber |  Simple Two-Way Active Measurement Protocol (STAMP) Extensions for Bit Error Rate Measurement | [URL](https://datatracker.ietf.org/doc/draft-gandhi-ippm-stamp-ber/) | An extension to enable the measurement of bit error rates. | Bit Pattern in Padding, Bit Error Count in Padding |
| draft-whimir-ippm-stamp-cos-ecn |  Update of the Simple Two-way Active Measurement Protocol Class of Service Extension - ECN  | [URL](https://datatracker.ietf.org/doc/draft-whimir-ippm-stamp-cos-ecn/) | An update to the semantics of the existing Class of Service Tlv[^stamp-extensions] to allow for detection of manipulation of ECN value on reverse path. | Class-of-Service |
| draft-gandhi-ippm-stamp-ext-hdr | Simple Two-Way Active Measurement Protocol (STAMP) Extensions for Reflecting STAMP Packet IP Headers | [URL](https://datatracker.ietf.org/doc/draft-gandhi-ippm-stamp-ext-hdr/) | An extension to allow for the reflection of IPv6 extension headers[^ipv6] which is useful for monitoring the values of in-situ IOAM[^ioam] data. | Reflected IPv6 Extension Header Data,  Reflected Fixed Header Data (adds sub-TLV for Reflected Test Packet Control TLV)|
| draft-gandhi-ippm-stamp-mpls-hdr |  Simple Two-Way Active Measurement Protocol (STAMP) Extensions for Reflecting STAMP Packet MPLS Sub-Stacks | [URL](https://datatracker.ietf.org/doc/draft-gandhi-ippm-stamp-mpls-hdr/) | An extension to allow for the reflection of MPLS Network Action Sub-Stacks which is useful for monitoring the values of in-situ IOAM[^ioam] data. | Reflected MNA Sub-Stack Data (adds sub-TLV for Reflected Test Packet Control TLV)|
| draft-xp-ippm-detnet-stamp |  STAMP Extensions for DetNet | [URL](https://datatracker.ietf.org/doc/draft-xp-ippm-detnet-stamp/) | An extension to allow STAMP to serve as a mechanism for "reserving" resources on a network path required by deterministic networking (DetNet). | Timeslot Mapping TLV, Orchestration Period Mapping TLV |

### STAMP Usage

| Draft | Title | URL | Description |
| -- | -- | -- | -- |
| draft-ietf-spring-stamp-srpm |  Performance Measurement Using Simple Two-Way Active Measurement Protocol (STAMP) for Segment Routing Networks | [URL](https://datatracker.ietf.org/doc/draft-ietf-spring-stamp-srpm/) | A discussion of how to use STAMP as part of a "comprehensive SR Performance Measurement toolset ... ."[^srpm]  |

[^srpm]: Gandhi, Rakesh, Clarence Filsfils, Bart Janssens, Mach Chen, and Richard "Footer" Foote. 2025. "Performance Measurement Using Simple Two-Way Active Measurement Protocol (STAMP) for Segment Routing Networks. Internet-Draft draft-ietf-spring-stamp-srpm-19. Internet Engineering Task Force; Internet Engineering Task Force. <https://datatracker.ietf.org/doc/draft-ietf-spring-stamp-srpm/19/>.


### Up-to-date Information

Information on this page is always subject to change. The IPPM WG maintains an authoritative list of documents that are in the process of being standardized. Always verify the information here with the information on the IPPM WG's site at [https://datatracker.ietf.org/wg/ippm/documents/](https://datatracker.ietf.org/wg/ippm/documents/).

[^assym]: Mirsky, Greg, Ernesto Ruffini, Henrik Nydell, Richard "Footer" Foote, and Will Hawkins. 2025. "Performance Measurement with Asymmetrical Traffic Using STAMP." Internet-Draft draft-ietf-ippm-asymmetrical-pkts-08. Internet Engineering Task Force; Internet Engineering Task Force. <https://datatracker.ietf.org/doc/draft-ietf-ippm-asymmetrical-pkts/08/>.

[^stamp-extensions]: Mirsky, Greg, Xiao Min, Henrik Nydell, Richard "Footer" Foote, Adi Masputra, and Ernesto Ruffini. 2021. “Simple Two-Way Active Measurement Protocol Optional Extensions.” Request for Comments. RFC 8972; RFC Editor. <https://doi.org/10.17487/RFC8972>.

[^ioam]: Huike, Li. “What Is IOAM? - Huawei.” Huawei, 4 Nov. 2021, info.support.huawei.com/info-finder/encyclopedia/en/IOAM.html. Accessed 21 July 2025.


[^ipv6]: Deering, Dr. Steve E., and Bob Hinden. 2017. “Internet Protocol, Version
