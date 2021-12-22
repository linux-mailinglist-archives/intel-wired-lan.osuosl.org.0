Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D06047D4C6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Dec 2021 17:03:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C10FE8244D;
	Wed, 22 Dec 2021 16:03:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5mF5-J1ErVhG; Wed, 22 Dec 2021 16:03:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B428A81D24;
	Wed, 22 Dec 2021 16:03:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0538E1BF593
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 12:50:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 013DB41624
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 12:50:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TB4CKLUElI6T for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Dec 2021 12:50:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [IPv6:2a01:488:42:1000:50ed:8234::])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4C63141621
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 12:50:16 +0000 (UTC)
Received: from ip4d173d4a.dynamic.kabel-deutschland.de ([77.23.61.74]
 helo=[192.168.66.200]); authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1n014K-000732-3z; Wed, 22 Dec 2021 13:50:08 +0100
Message-ID: <24afef0d-84de-5eb7-3a2f-000b3e462278@leemhuis.info>
Date: Wed, 22 Dec 2021 13:50:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Content-Language: en-BW
From: Thorsten Leemhuis <regressions@leemhuis.info>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>
References: <6bb28d2f-4884-7696-0582-c26c35534bae@gmail.com>
 <edb8c052-9d20-d190-54e2-ed9bb03ba204@leemhuis.info>
 <b4be04bbd6a20855526b961ef80669bd2647564c.camel@intel.com>
 <ab998a12-9230-04b6-8875-884b9eb1a11e@leemhuis.info>
In-Reply-To: <ab998a12-9230-04b6-8875-884b9eb1a11e@leemhuis.info>
X-bounce-key: webpack.hosteurope.de; regressions@leemhuis.info; 1640177417;
 c7485cdc; 
X-HE-SMSGID: 1n014K-000732-3z
X-Mailman-Approved-At: Wed, 22 Dec 2021 16:03:25 +0000
Subject: Re: [Intel-wired-lan] [PATCH net] igb: fix deadlock caused by
 taking RTNL in RPM resume path
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Torvalds, Linus" <torvalds@linux-foundation.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

U2NyYXRjaCB0aGF0IG1haWwsIEkgd2FzIHRvdGFsbHkgd3JvbmcsIGFzIEkgYWNjaWRlbnRhbGx5
IGxvb2tlZCBhdAp5ZXN0ZXJkYXlzIGxpbnV4LW5leHQgdHJlZSwgd2hpY2ggZHVlIHRvIGFuIGVy
cm9yIG9mIGEgbG9jYWwgY3JvbiBqb2IKbG9va2VkIGxpa2UgdG9kYXlzIGxpbnV4LW5leHQgdHJl
ZSB0byBtZS4KClRoZSByZWFsIG9uZSBmcm9tIHRvZGF5IGlzIG91dCBub3cgYW5kIGNvbnRhaW5z
IHRoZSBwYXRjaC4gSSBhcG9sb2dpc2UKZm9yIHRoZSBub2lzZS4KCkNpYW8sIFRob3JzdGVuCgpP
biAyMi4xMi4yMSAwNjoxNywgVGhvcnN0ZW4gTGVlbWh1aXMgd3JvdGU6Cj4gT24gMjAuMTIuMjEg
MjA6NTYsIE5ndXllbiwgQW50aG9ueSBMIHdyb3RlOgo+PiBPbiBTdW4sIDIwMjEtMTItMTkgYXQg
MDk6MzEgKzAxMDAsIFRob3JzdGVuIExlZW1odWlzIHdyb3RlOgo+Pj4gSGksIHRoaXMgaXMgeW91
ciBMaW51eCBrZXJuZWwgcmVncmVzc2lvbiB0cmFja2VyIHNwZWFraW5nLgo+Pj4KPj4+IE9uIDI5
LjExLjIxIDIyOjE0LCBIZWluZXIgS2FsbHdlaXQgd3JvdGU6Cj4+Pj4gUmVjZW50IG5ldCBjb3Jl
IGNoYW5nZXMgY2F1c2VkIGFuIGlzc3VlIHdpdGggZmV3IEludGVsIGRyaXZlcnMKPj4+PiAocmVw
b3J0ZWRseSBpZ2IpLCB3aGVyZSB0YWtpbmcgUlROTCBpbiBSUE0gcmVzdW1lIHBhdGggcmVzdWx0
cyBpbiBhCj4+Pj4gZGVhZGxvY2suIFNlZSBbMF0gZm9yIGEgYnVnIHJlcG9ydC4gSSBkb24ndCB0
aGluayB0aGUgY29yZSBjaGFuZ2VzCj4+Pj4gYXJlIHdyb25nLCBidXQgdGFraW5nIFJUTkwgaW4g
UlBNIHJlc3VtZSBwYXRoIGlzbid0IG5lZWRlZC4KPj4+PiBUaGUgSW50ZWwgZHJpdmVycyBhcmUg
dGhlIG9ubHkgb25lcyBkb2luZyB0aGlzLiBTZWUgWzFdIGZvciBhCj4+Pj4gZGlzY3Vzc2lvbiBv
biB0aGUgaXNzdWUuIEZvbGxvd2luZyBwYXRjaCBjaGFuZ2VzIHRoZSBSUE0gcmVzdW1lCj4+Pj4g
cGF0aAo+Pj4+IHRvIG5vdCB0YWtlIFJUTkwuCj4+Pj4KPj4+PiBbMF0gaHR0cHM6Ly9idWd6aWxs
YS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0yMTUxMjkKPj4+PiBbMV0KPj4+PiBodHRwczov
L2xvcmUua2VybmVsLm9yZy9uZXRkZXYvMjAyMTExMjUwNzQ5NDkuNWY4OTc0MzFAa2ljaW5za2kt
ZmVkb3JhLXBjMWMwaGpuLmRoY3AudGhlZmFjZWJvb2suY29tL3QvCj4+Pj4KPj4+PiBGaXhlczog
YmQ4NjkyNDVhM2RjICgibmV0OiBjb3JlOiB0cnkgdG8gcnVudGltZS1yZXN1bWUgZGV0YWNoZWQK
Pj4+PiBkZXZpY2UgaW4gX19kZXZfb3BlbiIpCj4+Pj4gRml4ZXM6IGYzMmEyMTM3NjU3MyAoImV0
aHRvb2w6IHJ1bnRpbWUtcmVzdW1lIG5ldGRldiBwYXJlbnQgYmVmb3JlCj4+Pj4gZXRodG9vbCBp
b2N0bCBvcHMiKQo+Pj4+IFRlc3RlZC1ieTogTWFydGluIFN0b2xwZSA8bWFydGluLnN0b2xwZUBn
bWFpbC5jb20+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogSGVpbmVyIEthbGx3ZWl0IDxoa2FsbHdlaXQx
QGdtYWlsLmNvbT4KPj4+Cj4+PiBMb25nIHN0b3J5IHNob3J0OiB3aGF0IGlzIHRha2VuIHRoaXMg
Zml4IHNvIGxvbmcgdG8gZ2V0IG1haW5saW5lZD8gSXQKPj4+IHRvCj4+PiBtZSBzZWVtcyBwcm9n
cmVzc2luZyB1bm5lY2Vzc2FyeSBzbG93LCBlc3BlY2lhbGx5IGFzIGl0J3MgYQo+Pj4gcmVncmVz
c2lvbgo+Pj4gdGhhdCBtYWRlIGl0IGludG8gdjUuMTUgYW5kIHRodXMgZm9yIHdlZWtzIG5vdyBz
ZWVtcyB0byBidWcgbW9yZSBhbmQKPj4+IG1vcmUgcGVvcGxlLgo+Pj4KPj4+Cj4+PiBUaGUgbG9u
ZyBzdG9yeSwgc3RhcnRpbmcgd2l0aCB0aGUgYmFja2dyb3VuZCBkZXRhaWxzOgo+Pj4KPj4+IFRo
ZSBxdW90ZWQgcGF0Y2ggZml4ZXMgYSByZWdyZXNzaW9uIGFtb25nIG90aGVycyBjYXVzZWQgYnkK
Pj4+IGYzMmEyMTM3NjU3Mwo+Pj4gKCJldGh0b29sOiBydW50aW1lLXJlc3VtZSBuZXRkZXYgcGFy
ZW50IGJlZm9yZSBldGh0b29sIGlvY3RsIG9wcyIpLAo+Pj4gd2hpY2ggZ290IG1lcmdlZCBmb3Ig
djUuMTUtcmMxLgo+Pj4KPj4+IFRoZSByZWdyZXNzaW9uICgia2VybmVsIGhhbmdzIGR1cmluZyBw
b3dlciBkb3duIikgd2FzIGFmYWlrIGZpcnN0Cj4+PiByZXBvcnRlZCBvbiBXZWQsIDI0IE5vdiAo
SU9XOiBuZWFybHkgYSBtb250aCBhZ28pIGFuZCBmb3J3YXJkZWQgdG8KPj4+IHRoZQo+Pj4gbGlz
dCBzaG9ydGx5IGFmdGVyd2FyZHM6Cj4+PiBodHRwczovL2J1Z3ppbGxhLmtlcm5lbC5vcmcvc2hv
d19idWcuY2dpP2lkPTIxNTEyOQo+Pj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2LzIw
MjExMTI0MTQ0NTA1LjMxZTE1NzE2QGhlcm1lcy5sb2NhbC8KPj4+Cj4+PiBUaGUgcXVvdGVkIHBh
dGNoIHRvIGZpeCB0aGUgcmVncmVzc2lvbiB3YXMgcG9zdGVkIG9uIE1vbiwgMjkgTm92ICh0aHgK
Pj4+IEhlaW5lciBmb3IgcHJvdmlkaW5nIGl0ISkuIE9idmlvdXNseSByZXZpZXdpbmcgcGF0Y2hl
cyBjYW4gdGFrZSBhIGZldwo+Pj4gZGF5cyB3aGVuIHRoZXkgYXJlIGNvbXBsaWNhdGVkLCBhcyB0
aGUgb3RoZXIgbWVzc2FnZXMgaW4gdGhpcyB0aHJlYWQKPj4+IHNob3cuIEJ1dCBhY2NvcmRpbmcg
dG8KPj4+IGh0dHBzOi8vYnVnemlsbGEua2VybmVsLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MjE1MTI5
I2M4wqB0aGUgcGF0Y2ggd2FzCj4+PiBBQ0tlZCBieSBUaHUsIDcgRGVjLiBUbyBxdW90ZTogYGBg
VGhlIHBhdGNoIGlzIG9uIGl0cyB3YXkgdmlhIHRoZQo+Pj4gSW50ZWwKPj4+IG5ldHdvcmsgZHJp
dmVyIHRyZWU6Cj4+PiBodHRwczovL2tlcm5lbC5nb29nbGVzb3VyY2UuY29tL3B1Yi9zY20vbGlu
dXgva2VybmVsL2dpdC90bmd1eS9uZXQtcXVldWUvKy9yZWZzL2hlYWRzL2Rldi1xdWV1ZWBgYAo+
Pj4KPj4+IEFuZCB0aGF0J3Mgd2hlcmUgdGhlIHBhdGNoIGFmYWljcyBzdGlsbCBpcy4gSXQgaGFz
bid0IGV2ZW4gcmVhY2hlZAo+Pj4gbGludXgtbmV4dCB5ZXQsIHVubGVzcyBJJ20gbWlzc2luZyBz
b21ldGhpbmcuIEEgbWVyZ2UgaW50byBtYWlubGluZQo+Pj4gdGh1cwo+Pj4gaXMgbm90IGV2ZW4g
aW4gc2lnaHQ7IHRoaXMgc2VlbXMgZXNwZWNpYWxseSBiYWQgd2l0aCB0aGUgaG9saWRheQo+Pj4g
c2Vhc29uCj4+PiBjb21pbmcgdXAsIGFzIGdldHRpbmcgdGhlIGZpeCBtYWlubGluZWQgaXMgYSBw
cmVyZXF1aXNpdGUgdG8gZ2V0IGl0Cj4+PiBiYWNrcG9ydGVkIHRvIDUuMTUueSwgYXMgb3VyIGxh
dGVzdCBzdGFibGUga2VybmVsIGlzIGFmZmVjdGVkIGJ5Cj4+PiB0aGlzLgo+Pgo+PiBJJ3ZlIGJl
ZW4gd2FpdGluZyBmb3Igb3VyIHZhbGlkYXRpb24gdGVhbSB0byBnZXQgdG8gdGhpcyBwYXRjaCB0
byBkbwo+PiBzb21lIGFkZGl0aW9uYWwgdGVzdGluZy4gSG93ZXZlciwgYXMgeW91IG1lbnRpb25l
ZCwgd2l0aCB0aGUgaG9saWRheXMKPj4gY29taW5nIHVwLCBpdCBzZWVtcyB0aGUgdGVzdGVyIGlz
IG5vdyBvdXQuIEFzIGl0IGxvb2tzIGxpa2Ugc29tZSBpbiB0aGUKPj4gY29tbXVuaXR5IGhhdmUg
YmVlbiBhYmxlIHRvIGRvIHNvbWUgdGVzdGluZyBvbiB0aGlzLCBJJ2xsIGdvIGFoZWFkIGFuZAo+
PiBzZW5kIHRoaXMgb24uCj4gCj4gVGh4LiBJIHNlZSB0aGUgcGF0Y2ggbm93IGluIGFkZGl0aW9u
IHRvIGRldi1xdWV1ZSBpcyBhbHNvIGluIG1hc3RlciBvZgo+IHRoaXMgcmVwbzoKPiAKPiBodHRw
czovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90bmd1eS9uZXQtcXVl
dWUuZ2l0Lwo+IAo+IEJ1dCB0aGUgZml4IHN0aWxsIGRpZG4ndCBtYWtlIGl0IGluIHRvZGF5cyBs
aW51eC1uZXh0LiBTZWVtcyBuZWl0aGVyCj4geW91ciBtYXN0ZXIgYnJhbmNoIG5vciBicmFuY2hl
cyBsaWtlICcxR2JFJyAod2hpY2ggc2VlbSB0byBiZSB0aGUgb25lcwo+IGZyb20gd2hpY2ggc3Vj
aCBmaXhlcyBsYXRlciBnZXQgc2VuZCB0byB0aGUgbmV0IHRyZWUpIGFyZSBpbiBsaW51eC1uZXh0
Cj4gYWZhaWMuCj4gCj4gSnVzdCB3b25kZXJpbmc6IFdvdWxkbid0IGl0IGJlIGJldHRlciBpZiB0
aGV5IHdlcmU/IFRoaXMgd291bGQgYWxsb3cgdGhlCj4gdXNlcnMgb2YgbGludXgtbmV4dCBhbmQg
Q0lzIGNoZWNraW5nIGl0IHRvIHRlc3QgdGhlIGZpeCBiZWZvcmUgaXQncyBzZW5kCj4gdG8gdGhl
IG5ldCB0cmVlLCB3aGljaCBsYXN0IHdlZWsgc2VlbXMgdG8gaGF2ZSBoYXBwZW5lZCBvbmx5IGEg
ZmV3IGhvdXJzCj4gKDYyMDlkZDc3OGY2NikgYmVmb3JlIG5ldCB3YXMgbWVyZ2VkIGludG8gbWFp
bmxpbmUgKDE4MGYzYmNmZTM2MikuCj4gCj4gQ2lhbywgVGhvcnN0ZW4KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
