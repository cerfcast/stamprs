---
layout: page
title: Deploying
type: navigation
order: b
permalink: /deploying/
---

## Usage Scenarios

STAMP is a versatile, no-pre-configuration protocol designed to build tools that make it easy to measure (one- _and_ two-way) characteristics of a network. STAMP, as defined solely in [RFC 8762](https://datatracker.ietf.org/doc/rfc8762/), provides enough features to serve as a building block for tools that measure, e.g., round-trip times, packet reordering, packet loss, and network path length. And, because the protocol is extensible,[^stamp-extensions] if there are measurements that tools cannot make using using the features of STAMP specified in [RFC 8762](https://datatracker.ietf.org/doc/rfc8762/), new features can always be added.

Sometimes, though, too many options is just as bad as too few. To make the power of STAMP clear, this page outlines several scenarios where tools that implement STAMP can be used to make the lives of the network architect, engineer or analyst easier.

| | Scenario | Related RFCs |
| -- | -- | -- | 
| 1 | [Measuring Round-Trip Time](#measuring-round-trip-time) | [RFC 8762](https://datatracker.ietf.org/doc/rfc8762/) |
| 2 | [Detecting Differences in Path Length](#detecting-differences-in-path-length) | [RFC 8762](https://datatracker.ietf.org/doc/rfc8762/) |

### Measuring Round-Trip Time

Who among us has never had the need to measure the round-trip time of a packet? 

Consider the scenario shown in the figure below.

![Using a tool that implements STAMP to measure the round-trip time of a packet.](/assets/images/STAMPSimpleRTTScenario.png)

Imagine that a service operating on a server running on a network you manage (call that Server (1)) is having issues staying connected to a service operating on a server on a network that you do _not_ manage (call that Server (2)). To begin your analysis, you connect your laptop to the same network as server Server (1). The first step in your diagnosis might be to rule out problems with the network that could cause the service on Server (1) to disconnect from Server (2). To do that, you might want to know the round-trip time of packets traveling between your network and the network hosting Server (2). If you have tools that implement STAMP, then you are in luck!

Assume that you know your counterpart on the team that runs Server (2) has deployed a _STAMP Session Reflector_ -- software that "reflects" packets it receives that conform to STAMP back to their sender (called _test packets_). In this scenario, you have a tool on your laptop that operates as such a sender -- _a STAMP Session Sender_. Because STAMP requires no pre-coordination between the entity doing the testing and the entity generating measurements, you can immediately start your Session Sender and begin sending test packets.

Every test packet that your Session Sender sends is marked with a sequence number and a timestamp (not necessarily generated from a source that is synchronized with anyone else).[^and-more-sender] When the Session Reflector on Server (2) receives a test packet, it generates and sends back a _reflected packet_. In that packet is a copy of the timestamp and sequence number in the packet you sent. It also includes some data that it generates on its own: the time (according to it) that the packet was received and the time (again, according to it) that it transmitted the reflected packet.[^and-more-reflector]

[^and-more-sender]: There are other fields contained in the test packet but our discussion here is limited to the fields relevant to this scenario. See the scenarios below for additional information.

[^and-more-reflector]: There are other fields contained in the reflected packet but our discussion here is limited to the fields relevant to this scenario. See the scenarios below for additional information.

When your Session Sender receives reflected packets, there are myriad conclusions it can draw (and the other scenarios below will highlight those conclusions). But, it can _definitely_ calculate round-trip time. As long as your Session Sender implementation keeps a record of the local times that it transmits each test packet (indexed by the sequence number), the copy of the sequence number in the reflected packet makes it possible to determine how long it takes a packet to find its way from your network to their network and back again. What's more, because the reflected packet includes the time when the Session Reflector received your test packet _and_ the time that it transmitted the reflected packet, your Session Sender implementation can isolate any contributions to the packet's round-trip time attributable to processing on the server! How cool![^one-way]

### Detecting Differences in Path Length

It's just about the time that you sit down to dinner that a storm decides to descend on the Cloud. The frames of video on each of the live feeds that you aggregate for your employer, the OTT video provider FuTube, are normally perfectly in sync. Now, however, one of them is lagging way behind the other and there are more dropped frames than normal.

![Using a tool that implements STAMP to measure the path length between two network-connected devices.](/assets/images/STAMPTTLScenario.png)

You suspect that, for some reason, the path of the packets containing the video frames of the FTQO sports network are not be routed according to the terms of the peering agreement that you recently established (while the packets containing the video frames of the DMM news network are). The problem is, the agreement is so new that you haven't had time to coordinate and deploy a complete, robust end-to-end monitoring system. Without those facilities, how can you tell whether the packets between the two hosts that you use to transcode the video streams (Server (1) and Server (2) in the diagram above) and the upstream provider really are taking different paths?

As long as there is an implementation of a STAMP Session Reflector running on the host upstream (Server (3) in the diagram above), then you can perform an analysis of the path length. You can simply run a Session Sender on your two hosts and send test packets to Server (3). STAMP specifies that the Session Reflector record and reflect the value of the TTL field (or Hop Limit field, depending on the version of IP in use) of the IP header of test packets it receives from Session Senders. When the implementation of the STAMP protocol that you are using to send test packets receives the reflected responses, it can extract and compare the values of the [_Session-Sender TTL_](https://datatracker.ietf.org/doc/html/rfc8762#section-4.3.1-4.5) fields. If, as you suspect, the packets really _are_ taking two paths with wildly different lengths, the values recorded in these fields will reflect[^pun-intended] that.

Just another day at the office! Now, get back to dinner!

[^one-way]: Yes, if the clocks on your Session Sender and their Session Reflector are synchronized, your Session Sender can determine one-way transit time. Oh, and, _yes_, STAMP as defined in [RFC 8762](https://datatracker.ietf.org/doc/rfc8762/) includes a mechanism for Session Senders and Session Reflectors to communicate that their clocks are synchronized!

[^stamp-extensions]: Mirsky, Greg, Xiao Min, Henrik Nydell, Richard "Footer" Foote, Adi Masputra, and Ernesto Ruffini. 2021. "Simple Two-Way Active Measurement Protocol Optional Extensions." Request for Comments. RFC 8972; RFC Editor. <https://doi.org/10.17487/RFC8972>.

[^pun-intended]: Yes, that pun was _definitely_ intended.