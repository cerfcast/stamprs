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
| -- | -- | -- | -- |
| RFC 8972 | Simple Two-Way Active Measurement Protocol Optional Extensions | [URL](https://datatracker.ietf.org/doc/rfc8972/) | In addition to specifying the means for extending STAMP to allow additional, optional functionality, RFC 8972 also specified several extensions. | Extra Padding, Location, Timestamp Information, Class of Service, Direct Measurement, Access Report, Follow-up Telemetry, HMAC |
| RFC 9503 | Simple Two-Way Active Measurement Protocol (STAMP) Extensions for Segment Routing Networks | [URL](https://datatracker.ietf.org/doc/rfc9503/) | This RFC (Proposed Standard) specifies optional extensions to STAMP for measurements in networks with segment routing. | Destination Node Address, Return Path |

Below is a list of the RFCs where STAMP extensions are in the process of being standardized:

| Draft | Title | URL | Description | TLV(s) |
| draft-ietf-ippm-asymmetrical-pkts | Performance Measurement with Asymmetrical Traffic Using STAMP  | [URL](https://datatracker.ietf.org/doc/draft-ietf-ippm-asymmetrical-pkts/) | In normal operation, a STAMP reflector generates a single packet in response to a STAMP test packet. However, "the use of asymmetrical test packets allow for the creation of more realistic flows of test packets and, thus, a closer approximation between active performance measurements and conditions experienced by the monitored application."[^assym] | Reflected Test Packet Control |
| draft-gandhi-ippm-stamp-ber |  Simple Two-Way Active Measurement Protocol (STAMP) Extensions for Bit Error Rate Measurement | [URL](https://datatracker.ietf.org/doc/draft-gandhi-ippm-stamp-ber/) | An extension to enable the measurement of bit error rates. | Bit Pattern in Padding, Bit Error Count in Padding |

### Up-to-date Information

Information on this page is always subject to change. The IPPM WG maintains an authoritative list of documents that are in the process of being standardized. Always verify the information here with the information on the IPPM WG's site at [https://datatracker.ietf.org/wg/ippm/documents/](https://datatracker.ietf.org/wg/ippm/documents/).

[^assym]: Mirsky, Greg, Ernesto Ruffini, Henrik Nydell, Richard "Footer" Foote, and Will Hawkins. 2025. "Performance Measurement with Asymmetrical Traffic Using STAMP." Internet-Draft draft-ietf-ippm-asymmetrical-pkts-08. Internet Engineering Task Force; Internet Engineering Task Force. <https://datatracker.ietf.org/doc/draft-ietf-ippm-asymmetrical-pkts/08/>.
