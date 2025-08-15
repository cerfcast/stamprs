---
layout: page
title: BIS
permalink: /bis/
---

## STAMP BIS

The Internet is always evolving and we want STAMP to stay current so that network operators and architects can rely on it to help them meet the needs of their users.

The extensibility built into the protocol through its [Optional Extensions](./navigation/extensions.markdown)[^stamp-extensions] provides a light-weight means for adding new functionality as we see new opportunities for STAMP to help network operators and architects. 

However, as the Internet continues to adapt, more fundamental changes may need to be made to the protocol to keep it useful. STAMP is not unique in this regard -- many of the protocols managed by the IETF have undergone extensive changes over time that have resulted in new versions of the protocol (e.g., HTTP/2,[^ietf-http2] NTPv2,[^ietf-ntpv4] etc.). As the protocol designers brainstorm and discuss changes that cannot easily be incorporated through the Optional Extension, they share drafts that are tagged _bis_, short for "again" or "twice."[^ietf-tao]

This page will serve as a place to coordinate and store ideas, notes and drafts outlining changes that could be incorporated into a STAMPv2. We would love it if you submitted PRs to the [source of this website](https://github.com/cerfcast/stamprs) for any items for consideration!

| | Description | Related Material |
| -- | -- | -- |
| Session Reflector Semantics TTL of Test Packet Cannot Be Read | The RFC contains no language describing the value that the reflector should include in the Session Sender TTL field of a reflected STAMP packet if the TTL value cannot be read from the IP header of the test packet. The language seems to presume that fetching the TTL is always possible. Having a description for the behavior of an implementation when that is not the case would help the life of the implementer. | [Rejected Errata](https://www.rfc-editor.org/errata/eid8518), [Mailing List Discussion](https://mailarchive.ietf.org/arch/msg/ippm/QhoDmae-983IKn_HFF1XCADWP0s/) |

[^stamp-extensions]: Mirsky, Greg, Xiao Min, Henrik Nydell, Richard "Footer" Foote, Adi Masputra, and Ernesto Ruffini. 2021. “Simple Two-Way Active Measurement Protocol Optional Extensions.” Request for Comments. RFC 8972; RFC Editor. <https://doi.org/10.17487/RFC8972>.


[^ietf-tao]: Oever, Niels ten, and Greg Wood. 2024. "Retiring the Tao of the IETF." Request for Comments. RFC 9592; RFC Editor.  <https://doi.org/10.17487/RFC9592>.

[^ietf-ntpv4]: Martin, Jim, Jack Burbank, William Kasch, and Professor David L. Mills.  2010. "Network Time Protocol Version 4: Protocol and Algorithms Specification." Request for Comments. RFC 5905; RFC Editor. <https://doi.org/10.17487/RFC5905>.

[^ietf-http2]: Thomson, Martin, and Cory Benfield. 2022. "HTTP/2." Request for Comments. RFC 9113; RFC Editor. <https://doi.org/10.17487/RFC9113>.