Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F2B47D4C5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Dec 2021 17:03:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3FBCA40289;
	Wed, 22 Dec 2021 16:03:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id knXRM2-hVaYR; Wed, 22 Dec 2021 16:03:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D7980401CC;
	Wed, 22 Dec 2021 16:03:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C623B1BF34E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 05:17:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BCA8540607
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 05:17:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iCt_rVxWHgEv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Dec 2021 05:17:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [IPv6:2a01:488:42:1000:50ed:8234::])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9CB734013E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 05:17:45 +0000 (UTC)
Received: from ip4d173d4a.dynamic.kabel-deutschland.de ([77.23.61.74]
 helo=[192.168.66.200]); authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1mzu0O-0003Nd-7b; Wed, 22 Dec 2021 06:17:36 +0100
Message-ID: <ab998a12-9230-04b6-8875-884b9eb1a11e@leemhuis.info>
Date: Wed, 22 Dec 2021 06:17:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Content-Language: en-BW
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>
References: <6bb28d2f-4884-7696-0582-c26c35534bae@gmail.com>
 <edb8c052-9d20-d190-54e2-ed9bb03ba204@leemhuis.info>
 <b4be04bbd6a20855526b961ef80669bd2647564c.camel@intel.com>
From: Thorsten Leemhuis <regressions@leemhuis.info>
In-Reply-To: <b4be04bbd6a20855526b961ef80669bd2647564c.camel@intel.com>
X-bounce-key: webpack.hosteurope.de; regressions@leemhuis.info; 1640150265;
 c01f5fb3; 
X-HE-SMSGID: 1mzu0O-0003Nd-7b
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

T24gMjAuMTIuMjEgMjA6NTYsIE5ndXllbiwgQW50aG9ueSBMIHdyb3RlOgo+IE9uIFN1biwgMjAy
MS0xMi0xOSBhdCAwOTozMSArMDEwMCwgVGhvcnN0ZW4gTGVlbWh1aXMgd3JvdGU6Cj4+IEhpLCB0
aGlzIGlzIHlvdXIgTGludXgga2VybmVsIHJlZ3Jlc3Npb24gdHJhY2tlciBzcGVha2luZy4KPj4K
Pj4gT24gMjkuMTEuMjEgMjI6MTQsIEhlaW5lciBLYWxsd2VpdCB3cm90ZToKPj4+IFJlY2VudCBu
ZXQgY29yZSBjaGFuZ2VzIGNhdXNlZCBhbiBpc3N1ZSB3aXRoIGZldyBJbnRlbCBkcml2ZXJzCj4+
PiAocmVwb3J0ZWRseSBpZ2IpLCB3aGVyZSB0YWtpbmcgUlROTCBpbiBSUE0gcmVzdW1lIHBhdGgg
cmVzdWx0cyBpbiBhCj4+PiBkZWFkbG9jay4gU2VlIFswXSBmb3IgYSBidWcgcmVwb3J0LiBJIGRv
bid0IHRoaW5rIHRoZSBjb3JlIGNoYW5nZXMKPj4+IGFyZSB3cm9uZywgYnV0IHRha2luZyBSVE5M
IGluIFJQTSByZXN1bWUgcGF0aCBpc24ndCBuZWVkZWQuCj4+PiBUaGUgSW50ZWwgZHJpdmVycyBh
cmUgdGhlIG9ubHkgb25lcyBkb2luZyB0aGlzLiBTZWUgWzFdIGZvciBhCj4+PiBkaXNjdXNzaW9u
IG9uIHRoZSBpc3N1ZS4gRm9sbG93aW5nIHBhdGNoIGNoYW5nZXMgdGhlIFJQTSByZXN1bWUKPj4+
IHBhdGgKPj4+IHRvIG5vdCB0YWtlIFJUTkwuCj4+Pgo+Pj4gWzBdIGh0dHBzOi8vYnVnemlsbGEu
a2VybmVsLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MjE1MTI5Cj4+PiBbMV0KPj4+IGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL25ldGRldi8yMDIxMTEyNTA3NDk0OS41Zjg5NzQzMUBraWNpbnNraS1mZWRv
cmEtcGMxYzBoam4uZGhjcC50aGVmYWNlYm9vay5jb20vdC8KPj4+Cj4+PiBGaXhlczogYmQ4Njky
NDVhM2RjICgibmV0OiBjb3JlOiB0cnkgdG8gcnVudGltZS1yZXN1bWUgZGV0YWNoZWQKPj4+IGRl
dmljZSBpbiBfX2Rldl9vcGVuIikKPj4+IEZpeGVzOiBmMzJhMjEzNzY1NzMgKCJldGh0b29sOiBy
dW50aW1lLXJlc3VtZSBuZXRkZXYgcGFyZW50IGJlZm9yZQo+Pj4gZXRodG9vbCBpb2N0bCBvcHMi
KQo+Pj4gVGVzdGVkLWJ5OiBNYXJ0aW4gU3RvbHBlIDxtYXJ0aW4uc3RvbHBlQGdtYWlsLmNvbT4K
Pj4+IFNpZ25lZC1vZmYtYnk6IEhlaW5lciBLYWxsd2VpdCA8aGthbGx3ZWl0MUBnbWFpbC5jb20+
Cj4+Cj4+IExvbmcgc3Rvcnkgc2hvcnQ6IHdoYXQgaXMgdGFrZW4gdGhpcyBmaXggc28gbG9uZyB0
byBnZXQgbWFpbmxpbmVkPyBJdAo+PiB0bwo+PiBtZSBzZWVtcyBwcm9ncmVzc2luZyB1bm5lY2Vz
c2FyeSBzbG93LCBlc3BlY2lhbGx5IGFzIGl0J3MgYQo+PiByZWdyZXNzaW9uCj4+IHRoYXQgbWFk
ZSBpdCBpbnRvIHY1LjE1IGFuZCB0aHVzIGZvciB3ZWVrcyBub3cgc2VlbXMgdG8gYnVnIG1vcmUg
YW5kCj4+IG1vcmUgcGVvcGxlLgo+Pgo+Pgo+PiBUaGUgbG9uZyBzdG9yeSwgc3RhcnRpbmcgd2l0
aCB0aGUgYmFja2dyb3VuZCBkZXRhaWxzOgo+Pgo+PiBUaGUgcXVvdGVkIHBhdGNoIGZpeGVzIGEg
cmVncmVzc2lvbiBhbW9uZyBvdGhlcnMgY2F1c2VkIGJ5Cj4+IGYzMmEyMTM3NjU3Mwo+PiAoImV0
aHRvb2w6IHJ1bnRpbWUtcmVzdW1lIG5ldGRldiBwYXJlbnQgYmVmb3JlIGV0aHRvb2wgaW9jdGwg
b3BzIiksCj4+IHdoaWNoIGdvdCBtZXJnZWQgZm9yIHY1LjE1LXJjMS4KPj4KPj4gVGhlIHJlZ3Jl
c3Npb24gKCJrZXJuZWwgaGFuZ3MgZHVyaW5nIHBvd2VyIGRvd24iKSB3YXMgYWZhaWsgZmlyc3QK
Pj4gcmVwb3J0ZWQgb24gV2VkLCAyNCBOb3YgKElPVzogbmVhcmx5IGEgbW9udGggYWdvKSBhbmQg
Zm9yd2FyZGVkIHRvCj4+IHRoZQo+PiBsaXN0IHNob3J0bHkgYWZ0ZXJ3YXJkczoKPj4gaHR0cHM6
Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0yMTUxMjkKPj4gaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvbmV0ZGV2LzIwMjExMTI0MTQ0NTA1LjMxZTE1NzE2QGhlcm1lcy5sb2Nh
bC8KPj4KPj4gVGhlIHF1b3RlZCBwYXRjaCB0byBmaXggdGhlIHJlZ3Jlc3Npb24gd2FzIHBvc3Rl
ZCBvbiBNb24sIDI5IE5vdiAodGh4Cj4+IEhlaW5lciBmb3IgcHJvdmlkaW5nIGl0ISkuIE9idmlv
dXNseSByZXZpZXdpbmcgcGF0Y2hlcyBjYW4gdGFrZSBhIGZldwo+PiBkYXlzIHdoZW4gdGhleSBh
cmUgY29tcGxpY2F0ZWQsIGFzIHRoZSBvdGhlciBtZXNzYWdlcyBpbiB0aGlzIHRocmVhZAo+PiBz
aG93LiBCdXQgYWNjb3JkaW5nIHRvCj4+IGh0dHBzOi8vYnVnemlsbGEua2VybmVsLm9yZy9zaG93
X2J1Zy5jZ2k/aWQ9MjE1MTI5I2M4wqB0aGUgcGF0Y2ggd2FzCj4+IEFDS2VkIGJ5IFRodSwgNyBE
ZWMuIFRvIHF1b3RlOiBgYGBUaGUgcGF0Y2ggaXMgb24gaXRzIHdheSB2aWEgdGhlCj4+IEludGVs
Cj4+IG5ldHdvcmsgZHJpdmVyIHRyZWU6Cj4+IGh0dHBzOi8va2VybmVsLmdvb2dsZXNvdXJjZS5j
b20vcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RuZ3V5L25ldC1xdWV1ZS8rL3JlZnMvaGVhZHMv
ZGV2LXF1ZXVlYGBgCj4+Cj4+IEFuZCB0aGF0J3Mgd2hlcmUgdGhlIHBhdGNoIGFmYWljcyBzdGls
bCBpcy4gSXQgaGFzbid0IGV2ZW4gcmVhY2hlZAo+PiBsaW51eC1uZXh0IHlldCwgdW5sZXNzIEkn
bSBtaXNzaW5nIHNvbWV0aGluZy4gQSBtZXJnZSBpbnRvIG1haW5saW5lCj4+IHRodXMKPj4gaXMg
bm90IGV2ZW4gaW4gc2lnaHQ7IHRoaXMgc2VlbXMgZXNwZWNpYWxseSBiYWQgd2l0aCB0aGUgaG9s
aWRheQo+PiBzZWFzb24KPj4gY29taW5nIHVwLCBhcyBnZXR0aW5nIHRoZSBmaXggbWFpbmxpbmVk
IGlzIGEgcHJlcmVxdWlzaXRlIHRvIGdldCBpdAo+PiBiYWNrcG9ydGVkIHRvIDUuMTUueSwgYXMg
b3VyIGxhdGVzdCBzdGFibGUga2VybmVsIGlzIGFmZmVjdGVkIGJ5Cj4+IHRoaXMuCj4gCj4gSSd2
ZSBiZWVuIHdhaXRpbmcgZm9yIG91ciB2YWxpZGF0aW9uIHRlYW0gdG8gZ2V0IHRvIHRoaXMgcGF0
Y2ggdG8gZG8KPiBzb21lIGFkZGl0aW9uYWwgdGVzdGluZy4gSG93ZXZlciwgYXMgeW91IG1lbnRp
b25lZCwgd2l0aCB0aGUgaG9saWRheXMKPiBjb21pbmcgdXAsIGl0IHNlZW1zIHRoZSB0ZXN0ZXIg
aXMgbm93IG91dC4gQXMgaXQgbG9va3MgbGlrZSBzb21lIGluIHRoZQo+IGNvbW11bml0eSBoYXZl
IGJlZW4gYWJsZSB0byBkbyBzb21lIHRlc3Rpbmcgb24gdGhpcywgSSdsbCBnbyBhaGVhZCBhbmQK
PiBzZW5kIHRoaXMgb24uCgpUaHguIEkgc2VlIHRoZSBwYXRjaCBub3cgaW4gYWRkaXRpb24gdG8g
ZGV2LXF1ZXVlIGlzIGFsc28gaW4gbWFzdGVyIG9mCnRoaXMgcmVwbzoKCmh0dHBzOi8vZ2l0Lmtl
cm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RuZ3V5L25ldC1xdWV1ZS5naXQvCgpC
dXQgdGhlIGZpeCBzdGlsbCBkaWRuJ3QgbWFrZSBpdCBpbiB0b2RheXMgbGludXgtbmV4dC4gU2Vl
bXMgbmVpdGhlcgp5b3VyIG1hc3RlciBicmFuY2ggbm9yIGJyYW5jaGVzIGxpa2UgJzFHYkUnICh3
aGljaCBzZWVtIHRvIGJlIHRoZSBvbmVzCmZyb20gd2hpY2ggc3VjaCBmaXhlcyBsYXRlciBnZXQg
c2VuZCB0byB0aGUgbmV0IHRyZWUpIGFyZSBpbiBsaW51eC1uZXh0CmFmYWljLgoKSnVzdCB3b25k
ZXJpbmc6IFdvdWxkbid0IGl0IGJlIGJldHRlciBpZiB0aGV5IHdlcmU/IFRoaXMgd291bGQgYWxs
b3cgdGhlCnVzZXJzIG9mIGxpbnV4LW5leHQgYW5kIENJcyBjaGVja2luZyBpdCB0byB0ZXN0IHRo
ZSBmaXggYmVmb3JlIGl0J3Mgc2VuZAp0byB0aGUgbmV0IHRyZWUsIHdoaWNoIGxhc3Qgd2VlayBz
ZWVtcyB0byBoYXZlIGhhcHBlbmVkIG9ubHkgYSBmZXcgaG91cnMKKDYyMDlkZDc3OGY2NikgYmVm
b3JlIG5ldCB3YXMgbWVyZ2VkIGludG8gbWFpbmxpbmUgKDE4MGYzYmNmZTM2MikuCgpDaWFvLCBU
aG9yc3RlbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0
dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
