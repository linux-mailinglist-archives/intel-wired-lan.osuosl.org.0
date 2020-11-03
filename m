Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 92AF42A3DC0
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Nov 2020 08:35:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 58236854AF;
	Tue,  3 Nov 2020 07:35:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0Ex9dTHqw488; Tue,  3 Nov 2020 07:35:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B533485359;
	Tue,  3 Nov 2020 07:35:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 27A651BF31F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 07:35:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2309186A35
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 07:35:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6YTytv8DYfWw for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Nov 2020 07:35:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 649DC86A28
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 07:35:13 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5af1b7.dynamic.kabel-deutschland.de
 [95.90.241.183])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 35C6020646DD7;
 Tue,  3 Nov 2020 08:35:10 +0100 (CET)
To: Jakub Kicinski <kuba@kernel.org>
References: <20201102231307.13021-1-pmenzel@molgen.mpg.de>
 <20201102231307.13021-3-pmenzel@molgen.mpg.de>
 <20201102161943.343586b1@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <36ce1f2e-843c-4995-8bb2-2c2676f01b9d@molgen.mpg.de>
Date: Tue, 3 Nov 2020 08:35:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201102161943.343586b1@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH 2/2] ethernet: igb: e1000_phy: Check
 for ops.force_speed_duplex existence
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,
 Jeffrey Townsend <jeffrey.townsend@bigswitch.com>,
 "David S . Miller" <davem@davemloft.net>,
 John W Linville <linville@tuxdriver.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBKYWt1YiwKCgpBbSAwMy4xMS4yMCB1bSAwMToxOSBzY2hyaWViIEpha3ViIEtpY2luc2tp
Ogo+IE9uIFR1ZSwgIDMgTm92IDIwMjAgMDA6MTM6MDcgKzAxMDAgUGF1bCBNZW56ZWwgd3JvdGU6
Cj4+IEZyb206IEplZmZyZXkgVG93bnNlbmQgPGplZmZyZXkudG93bnNlbmRAYmlnc3dpdGNoLmNv
bT4KPj4KPj4gVGhlIG9wcyBmaWVsZCBtaWdodCBubyBiZSBkZWZpbmVkLCBzbyBhZGQgYSBjaGVj
ay4KPiAKPiBUaGlzIGNoYW5nZSBzaG91bGQgYmUgZmlyc3QsIG90aGVyd2lzZSBBRkFJVSBpZiBz
b21lb25lIGJ1aWxkcyB0aGUKPiBrZXJuZWwgaW4gYmV0d2VlbiB0aGUgY29tbWl0cyAoZS5nLiBm
b3IgYmlzZWN0aW9uKSBpdCB3aWxsIGNyYXNoLgoKUGF0Y2ggYFtQQVRDSCAxLzJdIGV0aGVybmV0
OiBpZ2I6IFN1cHBvcnQgUEhZIEJDTTU0NjFTYCBoYXMKCiAgICAgcGh5LT5vcHMuZm9yY2Vfc3Bl
ZWRfZHVwbGV4ID0gaWdiX3BoeV9mb3JjZV9zcGVlZF9kdXBsZXhfODI1ODA7CgpzbyB0aGUgb3Jk
ZXJpbmcgZG9lcyBub3QgbWF0dGVyLiBJIGRvIG5vdCBrbm93LCBpZiBKZWZmcmV5IGNhbiBjb21t
ZW50LCAKYnV0IHByb2JhYmx5IHRoZSBjaGVjayB3YXMganVzdCBhZGRpbmcgZHVyaW5nIGRldmVs
b3BtZW50LiBNYXliZSBhbiAKYXNzZXJ0IHNob3VsZCBiZSBhZGRlZCBpbnN0ZWFkPwoKPj4gVGhl
IHBhdGNoIGlzIHRha2VuIGZyb20gT3BlbiBOZXR3b3JrIExpbnV4IChPTkwpLCBhbmQgaXQgd2Fz
IGFkZGVkIHRoZXJlCj4+IGFzIHBhcnQgb2YgdGhlIHBhdGNoCj4+Cj4+ICAgICAgcGFja2FnZXMv
YmFzZS9hbnkva2VybmVscy8zLjE2K2RlYjgvcGF0Y2hlcy9kcml2ZXItc3VwcG9ydC1pbnRlbC1p
Z2ItYmNtNTQ2MVgtcGh5LnBhdGNoCj4+Cj4+IGluIE9OTCBjb21taXQgZjMyMzE2YzYzYyAoU3Vw
cG9ydCB0aGUgQkNNNTQ2MTYgYW5kIEJDTTU0NjFTLikgWzFdLiBQYXJ0Cj4+IG9mIHRoaXMgY29t
bWl0IHdhcyBhbHJlYWR5IHVwc3RyZWFtZWQgaW4gTGludXggY29tbWl0IGVlYjAxNDk2NjAgKGln
YjoKPj4gc3VwcG9ydCBCQ001NDYxNiBQSFkpIGluIDIwMTcuCj4+Cj4+IEkgYXBwbGllZCB0aGUg
Zm9yd2FyZC1wb3J0ZWQKPj4KPj4gICAgICBwYWNrYWdlcy9iYXNlL2FueS9rZXJuZWxzLzUuNC1s
dHMvcGF0Y2hlcy8wMDAyLWRyaXZlci1zdXBwb3J0LWludGVsLWlnYi1iY201NDYxUy1waHkucGF0
Y2gKPj4KPj4gYWRkZWQgaW4gT05MIGNvbW1pdCA1YWNlNmJjZGIzIChBZGQgNS40IExUUyBrZXJu
ZWwgYnVpbGQuKSBbMl0uCj4+Cj4+IFsxXTogaHR0cHM6Ly9naXRodWIuY29tL29wZW5jb21wdXRl
cHJvamVjdC9PcGVuTmV0d29ya0xpbnV4L2NvbW1pdC9mMzIzMTZjNjNjZTNhNjRkZTEyNWI3NDI5
MTE1YzZkNDVlOTQyYmQxCj4+IFsyXTogaHR0cHM6Ly9naXRodWIuY29tL29wZW5jb21wdXRlcHJv
amVjdC9PcGVuTmV0d29ya0xpbnV4L2NvbW1pdC81YWNlNmJjZGIzN2NiODA2NWRjZDFkNDQwNGIz
ZGNiNjQyNGY2MzMxCj4gCj4gTm8gbmVlZCB0byBwdXQgdGhpcyBpbiBldmVyeSBjb21taXQgbWVz
c2FnZS4KPiAKPiBXZSBwcmVzZXJ2ZSB0aGUgY292ZXIgbGV0dGVyIGluIHRyZWUgYXMgYSBtZXJn
ZSBjb21taXQgbWVzc2FnZSwgc28KPiBleHBsYWluaW5nIHRoaW5ncyBvbmNlIGluIHRoZSBjb3Zl
ciBsZXR0ZXIgaXMgc3VmZmljaWVudC4KCkkgcmVtZW1iZXIsIGJ1dCBzdGlsbCBmaW5kIGl0IGNv
bmZ1c2luZy4gSWYgSSBsb29rIGF0IGEgY29tbWl0IHdpdGggYGdpdCAKc2hvdyDigKZgLCBJIG5v
cm1hbGx5IGRvIG5vdCB0aGluayBvZiBhbHNvIGxvb2tpbmcgYXQgYSBwb3NzaWJsZSBjb3ZlciAK
bGV0dGVyIGFzIG5vdCBtYW55IHN1YnN5c3RlbXMvcHJvamVjdHMgZG8gaXQsIGFuZCBJIGFzc3Vt
ZSBhIGNvbW1pdCBpcyAKc2VsZi1jb250YWluZWQuCgpDb3VsZCB5b3Ugc2hhcmUgeW91ciBkZXZl
bG9wbWVudCBwcm9jZXNzCgo+PiBDYzogSmVmZnJleSBUb3duc2VuZCA8amVmZnJleS50b3duc2Vu
ZEBiaWdzd2l0Y2guY29tPgo+IAo+IEplZmZlcmV5IHdpbGwgbmVlZCB0byBwcm92aWRlIGEgc2ln
bi1vZmYgYXMgdGhlIGF1dGhvci4KCkFjY29yZGluZyB0byAqRGV2ZWxvcGVyJ3MgQ2VydGlmaWNh
dGUgb2YgT3JpZ2luIDEuMSogWzNdLCBpdOKAmXMgbXkgCnVuZGVyc3RhbmRpbmcsIHRoYXQgaXQg
aXMgKm5vdCogcmVxdWlyZWQuIFRoZSBpdGVtcyAoYSksIChiKSwgYW5kIChjKSAKYXJlIGNvbm5l
Y3RlZCBieSBhbiAqb3IqLgoKPiAgICAgICAgIChiKSBUaGUgY29udHJpYnV0aW9uIGlzIGJhc2Vk
IHVwb24gcHJldmlvdXMgd29yayB0aGF0LCB0byB0aGUgYmVzdAo+ICAgICAgICAgICAgIG9mIG15
IGtub3dsZWRnZSwgaXMgY292ZXJlZCB1bmRlciBhbiBhcHByb3ByaWF0ZSBvcGVuIHNvdXJjZQo+
ICAgICAgICAgICAgIGxpY2Vuc2UgYW5kIEkgaGF2ZSB0aGUgcmlnaHQgdW5kZXIgdGhhdCBsaWNl
bnNlIHRvIHN1Ym1pdCB0aGF0Cj4gICAgICAgICAgICAgd29yayB3aXRoIG1vZGlmaWNhdGlvbnMs
IHdoZXRoZXIgY3JlYXRlZCBpbiB3aG9sZSBvciBpbiBwYXJ0IAo+ICAgICAgICAgICAgIGJ5IG1l
LCB1bmRlciB0aGUgc2FtZSBvcGVuIHNvdXJjZSBsaWNlbnNlICh1bmxlc3MgSSBhbQo+ICAgICAg
ICAgICAgIHBlcm1pdHRlZCB0byBzdWJtaXQgdW5kZXIgYSBkaWZmZXJlbnQgbGljZW5zZSksIGFz
IGluZGljYXRlZAo+ICAgICAgICAgICAgIGluIHRoZSBmaWxlOyBvcgoKPj4gQ2M6IEpvaG4gVyBM
aW52aWxsZSA8bGludmlsbGVAdHV4ZHJpdmVyLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogUGF1bCBN
ZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4KCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCgoKWzNd
OiAKaHR0cHM6Ly93d3cua2VybmVsLm9yZy9kb2MvaHRtbC92NS45L3Byb2Nlc3Mvc3VibWl0dGlu
Zy1wYXRjaGVzLmh0bWwjc2lnbi15b3VyLXdvcmstdGhlLWRldmVsb3Blci1zLWNlcnRpZmljYXRl
LW9mLW9yaWdpbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3Jn
Cmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxh
bgo=
