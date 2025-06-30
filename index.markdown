---
layout: page
title: "Simple Two-Way Active Measurement Protocol"
---

## Welcome

The **STAMPrs** (pronounced "stampers") are a group of people interested in the development and deployment of the Simple Two-Way Active Measurement Protocol (STAMP) as a means of building better networks. Our community exists to give you, the network operator or architect,[^magic] the knowledge and resources to use STAMP to improve your network. Whether your network supports a massive userbase or a family that needs to stream TV, STAMP can help you build a better infrastructure. If you are new to STAMP and here to learn about it for the first time _or_ you are a STAMP expert and here to meet other users, the goal of the STAMPrs community is the same: help you deploy STAMP effectively!

[^magic]: a.k.a. magician.

### What is STAMP? Why Do I Need It?

There's one sound that sends shivers through the spines of all network operators: footsteps of an impending stampede[^pun] of disappointed users when "the network is down" (which, interestingly, usually sounds like an alert on an iPhone or the beep of a pager). It's cold comfort to know, in those moments of panic, that you've spent the time and resources to instrument your networks with the telemetry necessary to quickly diagnose the problem and respond with a solution. Oh, that measurement and monitoring infrastructure _isn't_ available?

[^pun]: No, we cannot guarantee that the puns on this website will always be as funny as this one.

In your copious free time you used your ample personnel and budgetary resources to prospectively provision your networks to collect real-time measurements[^kidding] -- is STAMP still useful to you? Consider when you ask your users, "How much bandwidth do you need?" they always respond, "More, more more."[^ccr] Or, when you ask the developers, "What is the latency your application can afford?" they reply, "The network is instantaneous, isn't it?"

[^kidding]: Some sarcasm is only obvious to people who are asked to build, maintain and improve the infrastructure that powers the modern economy but are consistently under resourced. We figured you would get it!

[^ccr]: We apologize to CCR.

It would seem that whether you are maintaining the SLAs you provide for your world-class network or you are adding new features to your network, a suite of tools that offered a "straightforward mechanism for active performance monitoring that can provide deterministic behavior and inherent separation of control (vendor-specific configuration or orchestration) and test functions"[^stamp-rfc] would make you look like the hero you are!

[^stamp-rfc]: Mirsky, Greg, Guo Jun, Henrik Nydell, and Richard "Footer" Foote. 2020. "Simple Two-Way Active Measurement Protocol." Request for Comments. RFC 8762; RFC Editor. <https://doi.org/10.17487/RFC8762>.

That is _exactly_ what makes STAMP the incredible protocol it is. STAMP is an extensible tool that "enables measurement of both one-way and round-trip performance metrics, like delay, delay variation, and packet loss" on production networks. It expects no ahead-of-time coordination between equipment taking measurements and equipment providing data. It is adaptable to new and interesting data-collection techniques. It can run on devices even with modest computational power. It is compatible with existing network measurement protocols and supported by popular network-device operating systems.

### Where Now?

STAMP is not a unicorn. It's real and the STAMPrs are here to help you deploy it. The table below will guide you through _some_ of the resources available here. 

| [Specifications](/specs) | Go straight to the source: An up-to-date list of specifications promulgated by standards bodies throughout the world describing the design, implementation and deployment of STAMP. |
| [Usage](/usage) | Best practices on deploying STAMP (including sample configurations) |
| [Implementations](/implementation) | Find out which where to get implementations of STAMP -- for servers and/or network-device operating systems.|
| [Extensions](/extensions) | Get information about all the optional measurements types supported by STAMP. |

We would _love_ to have you join our Slack community, too! We're a welcoming bunch and would love to meet you. Join using [this link](https://join.slack.com/t/stamprs/shared_invite/zt-38ml9tigx-YdYm0H5mdI5_HVWsuHu1SQ) or click on the Slack logo below.

### I'm a STAMPr And Want To Help

Awesome! The site is developed using [Jekyll](https://jekyllrb.com/) and the code is available at [Github](https://github.com/cerfcast/stamprs). You wil find documentation for contributing in [`README.md`](https://github.com/cerfcast/stamprs). We would really _love_ contributions! If you are looking for ways to help, check out the [Issues](https://github.com/cerfcast/stamprs/issues) and look for the [`TODO`](https://github.com/cerfcast/stamprs/issues?q=is%3Aissue%20state%3Aopen%20label%3ATODO) tag!
