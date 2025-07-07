---
layout: page
title: "Simple Two-Way Active Measurement Protocol"
permalink: /interop-twamp-light/
---

## Interoperability with TWAMP Light

Because STAMP is designed to be easy-to-deploy,[^stamp] the original designers set out with the goal of making STAMP interoperable with TWAMP Light: "One of the essential requirements to STAMP is the ability to interwork with a TWAMP Light device."[^stamp] For a complete description of TWAMP Light, see [Appendix I of RFC5357](https://www.rfc-editor.org/rfc/rfc5357.html#appendix-I).

The following subsections are an ever-expanding list of data points gathered during interoperability testing between TWAMP Light implementations and implementations of the STAMP protocol.

> **Notes**: [RFC5357](https://www.rfc-editor.org/info/rfc5357) refers to the two communicating entities in a TWAMP configuration as Session Sender and Session Reflector. In these notes, we will drop the Session and use Sender and Reflector. _Reflector_ with no qualifiers refers to a TWAMP Light Reflector. We will refer to the _Session Reflector Test packet_ as, simply, the _test packet_.

### Cisco

As of [IOS XE Bengaluru 17.5.1](https://www.cisco.com/c/en/us/td/docs/routers/asr920/configuration/guide/ipsla/17-1-1/b-ipsla-xe-17-1-asr920/b-ipsla-xe-17-1-asr920_chapter_011.html), Cisco IOS supports TWAMP Light.

For testing,

```console
ip sla responder twamp-light test-session 1 local-ip 192.168.124.9 local-port 863 remote-ip 192.168.124.1 remote-port 5009
```

was used to configure the router as a TWAMP Light _responder_ in a [CML deployment](https://learningnetworkstore.cisco.com/cisco-modeling-labs-personal/cisco-modeling-labs-personal/CML-PERSONAL.html).

#### Results

For a given _STAMP Sender Configuration_, the following table describes tests results that were noteworthy. Again, only the noteworthy results from interoperability testing are contained in this table.

| STAMP Sender Configuration | Expected Result | Actual Result | Discussion | RFC References[^refs] |
| -- | -- | -- | -- | -- |
| With TTL value of IP header of test packet set to 4. | _Sender TTL_ will be 4 in the reflected packet. | _Sender TTL_ is 255. | It is within spec for a TWAMP Light reflector to transmit 255 in the reflected packet in the case where it cannot read the TTL value of the IP header of the received test packet. Using packet captures it can be determined that the device running IOS _does_ receive the test packet with the non-standard TTL value (i.e., 4). This anomalous behavior may be the result of doing interoperability testing using [CML](https://learningnetworkstore.cisco.com/cisco-modeling-labs-personal/cisco-modeling-labs-personal/CML-PERSONAL.html) and not real hardware devices. | "If an implementation does not fetch the actual TTL value (the only good reason not to do so is an inability to access the TTL field of arriving packets), it MUST set the Sender TTL value as 255." (4.2)
| Test packet longer than 41 bytes | Either<br>1. The reflected packet is trimmed to 41 bytes, or<br>2. The reflected packet contains enough padding for the lengths of the reflected packet and the test packet to match in length (and the padding bytes in the reflected packet are all `0x00`s, pseudorandom bytes or a copy of those in the test packet). | The reflected packet's length matches the test packet's length and the contents of the padding are all `0x00`s. | | " Note that the Session-Reflector Test packet formats are larger than the Sender's formats.  The Session-Reflector SHOULD reduce the length of the Sender's Packet Padding to achieve equal IP packet payload lengths in each direction of transmission, when sufficient padding is present.  The Session-Reflector MAY re-use the Sender's Packet Padding (since the requirements for padding generation are the same for each), and in this case the Session-Reflector SHOULD truncate the padding such that the highest-number octets are discarded." (4.2.1)|

[^refs]: All section numbers in this column are for [RFC5357](https://www.rfc-editor.org/info/rfc5357).

[^stamp]: Mirsky, Greg, Guo Jun, Henrik Nydell, and Richard "Footer" Foote. 2020. "Simple Two-Way Active Measurement Protocol." Request for Comments. RFC 8762; RFC Editor. <https://doi.org/10.17487/RFC8762>.

### `twamp-light` (From CUJO, nee Domos)

Results are ready and will be documented as soon as possible.

### `twampy` (From Nokia)

Results are ready and will be documented as soon as possible.

### Juniper

Results are ready and will be documented as soon as possible.