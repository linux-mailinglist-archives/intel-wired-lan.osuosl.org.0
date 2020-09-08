Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3832D261231
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Sep 2020 15:53:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EEE9886AC8;
	Tue,  8 Sep 2020 13:53:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OkdDJSKxo91x; Tue,  8 Sep 2020 13:53:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DBC9E869E1;
	Tue,  8 Sep 2020 13:53:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EB8641BF286
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 10:32:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E75DA868D2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 10:32:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qQmfyKyFw5sA for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Sep 2020 10:32:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from hqnvemgate25.nvidia.com (hqnvemgate25.nvidia.com
 [216.228.121.64])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3633B84B37
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 10:32:24 +0000 (UTC)
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate25.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5f575d850000>; Tue, 08 Sep 2020 03:31:33 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 08 Sep 2020 03:32:23 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 08 Sep 2020 03:32:23 -0700
Received: from [172.27.14.146] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 8 Sep
 2020 10:32:05 +0000
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>, <ast@kernel.org>,
 <daniel@iogearbox.net>
References: <20200904135332.60259-1-bjorn.topel@gmail.com>
 <0257f769-0f43-a5b7-176d-7c5ff8eaac3a@intel.com>
From: Maxim Mikityanskiy <maximmi@nvidia.com>
Message-ID: <11f663ec-5ea7-926c-370d-0b67d3052583@nvidia.com>
Date: Tue, 8 Sep 2020 13:32:01 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <0257f769-0f43-a5b7-176d-7c5ff8eaac3a@intel.com>
Content-Language: en-US
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 HQMAIL107.nvidia.com (172.20.187.13)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1599561093; bh=v6mhnh0su9v5m+w8veFytksrof4F394OprHMwmmpBy0=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:Content-Type:Content-Language:
 Content-Transfer-Encoding:X-Originating-IP:X-ClientProxiedBy;
 b=NweBCg0vQg3H++2Z9mv64cLVpasFCCTDtu3rKUeaYphHzYA/ZaXBqUay9cu53bakc
 7bp2KLXtttBBu1IdDHP0p8AKlzyP7XOfXhJiOi/Zr0SReXeWxliybu13hSXnu+j+oF
 mB/wBb8/VRqpQxDMBsn80JBtf5S5+A4no4pHXQ55B3Bh25QXRsfkhacGt0//RtUrz6
 u4csIH2CPa8+r3hG4RiUVtJ/Ye9mzX2dT4dIZEs3xd72WawnEVXFlCwM4dFlt9gLRa
 QW7PAuhpWkboTNJjEkLAkU1KWJsvvqEpDKv7S/IlB8jf9HqhCVwYjuGvuCLjANmXPM
 9MZfq3ywVe33Q==
X-Mailman-Approved-At: Tue, 08 Sep 2020 13:53:55 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 0/6] xsk: exit NAPI loop when
 AF_XDP Rx ring is full
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
Cc: Maxim Mikityanskiy <maximmi@mellanox.com>, hawk@kernel.org,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 bpf@vger.kernel.org, davem@davemloft.net, magnus.karlsson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMC0wOS0wNCAxNjo1OSwgQmrDtnJuIFTDtnBlbCB3cm90ZToKPiBPbiAyMDIwLTA5LTA0
IDE1OjUzLCBCasO2cm4gVMO2cGVsIHdyb3RlOgo+PiBUaGlzIHNlcmllcyBhZGRyZXNzZXMgYSBw
cm9ibGVtIHRoYXQgYXJpc2VzIHdoZW4gQUZfWERQIHplcm8tY29weSBpcyAKPj4gZW5hYmxlZCwg
YW5kIHRoZSBrZXJuZWwgc29mdGlycSBSeCBwcm9jZXNzaW5nIGFuZCB1c2VybGFuZCBwcm9jZXNz
Cj4+IGlzIHJ1bm5pbmcgb24gdGhlIHNhbWUgY29yZS4KPj4KPiBbLi4uXQo+Pgo+IAo+IEBNYXhp
bSBJJ20gbm90IHdlbGwgdmVyc2VkIGluIE1lbGxhbm94IGRyaXZlcnMuIFdvdWxkIHRoaXMgYmUg
cmVsZXZhbnQgCj4gdG8gbWx4NSBhcyB3ZWxsPwoKVGhhbmtzIGZvciBsZXR0aW5nIG1lIGtub3cg
YWJvdXQgdGhpcyBzZXJpZXMhIFNvIHRoZSBiYXNpYyBpZGVhIGlzIHRvIApzdG9wIHByb2Nlc3Np
bmcgaGFyZHdhcmUgY29tcGxldGlvbnMgaWYgdGhlIFJYIHJpbmcgZ2V0cyBmdWxsLCBiZWNhdXNl
IAp0aGUgYXBwbGljYXRpb24gZGlkbid0IGhhdmUgY2hhbmNlIHRvIHJ1bj8gWWVzLCBJIHRoaW5r
IGl0J3MgYWxzbyAKcmVsZXZhbnQgdG8gbWx4NSwgdGhlIGlzc3VlIGlzIG5vdCBkcml2ZXItc3Bl
Y2lmaWMsIGFuZCBhIHNpbWlsYXIgZml4IGlzIAphcHBsaWNhYmxlLiBIb3dldmVyLCBpdCBtYXkg
bGVhZCB0byBjb21wbGV0aW9uIHF1ZXVlIG92ZXJmbG93cyAtIHNvbWUgCmFuYWx5c2lzIGlzIG5l
ZWRlZCB0byB1bmRlcnN0YW5kIHdoYXQgaGFwcGVucyB0aGVuIGFuZCBob3cgdG8gaGFuZGxlIGl0
LgoKUmVnYXJkaW5nIHRoZSBmZWF0dXJlLCBJIHRoaW5rIGl0IHNob3VsZCBiZSBvcHQtaW4gKGRp
c2FibGVkIGJ5IApkZWZhdWx0KSwgYmVjYXVzZSBvbGQgYXBwbGljYXRpb25zIG1heSBub3Qgd2Fr
ZXVwIFJYIGFmdGVyIHRoZXkgcHJvY2VzcyAKcGFja2V0cyBpbiB0aGUgUlggcmluZy4gSXMgaXQg
cmVxdWlyZWQgdG8gY2hhbmdlIHhkcHNvY2sgYWNjb3JkaW5nbHk/IApBbHNvLCB3aGVuIG5lZWRf
d2FrZXVwIGlzIGRpc2FibGVkLCB5b3VyIGRyaXZlciBpbXBsZW1lbnRhdGlvbiBzZWVtcyB0byAK
cXVpdCBOQVBJIGFueXdheSwgYnV0IGl0IHNob3VsZG4ndCBoYXBwZW4sIGJlY2F1c2Ugbm8gb25l
IHdpbGwgc2VuZCBhIAp3YWtldXAuCgpXYWl0aW5nIHVudGlsIHRoZSBSWCByaW5nIGZpbGxzIHVw
LCB0aGVuIHBhc3NpbmcgY29udHJvbCB0byB0aGUgCmFwcGxpY2F0aW9uIGFuZCB3YWl0aW5nIHVu
dGlsIHRoZSBoYXJkd2FyZSBjb21wbGV0aW9uIHF1ZXVlIGZpbGxzIHVwLCAKYW5kIHNvIG9uIGlu
Y3JlYXNlcyBsYXRlbmN5IC0gdGhlIGJ1c3kgcG9sbGluZyBhcHByb2FjaCBzb3VuZHMgbW9yZSAK
bGVnaXQgaGVyZS4KClRoZSBiZWhhdmlvciBtYXkgYmUgZGlmZmVyZW50IGRlcGVuZGluZyBvbiB0
aGUgZHJpdmVyIGltcGxlbWVudGF0aW9uOgoKMS4gSWYgeW91IGFybSB0aGUgY29tcGxldGlvbiBx
dWV1ZSBhbmQgbGVhdmUgaW50ZXJydXB0cyBlbmFibGVkIG9uIGVhcmx5IApleGl0IHRvbywgdGhl
IGFwcGxpY2F0aW9uIHdpbGwgc29vbiBiZSBpbnRlcnJ1cHRlZCBhbnl3YXkgYW5kIHdvbid0IGhh
dmUgCm11Y2ggdGltZSB0byBwcm9jZXNzIG1hbnkgcGFja2V0cywgbGVhZGluZyB0byBhcHAgPC0+
IE5BUEkgcGluZy1wb25nIG9uZSAKcGFja2V0IGF0IGEgdGltZSwgbWFraW5nIE5BUEkgaW5lZmZp
Y2llbnQuCgoyLiBJZiB5b3UgZG9uJ3QgYXJtIHRoZSBjb21wbGV0aW9uIHF1ZXVlIG9uIGVhcmx5
IGV4aXQgYW5kIHdhaXQgZm9yIHRoZSAKZXhwbGljaXQgd2FrZXVwIGZyb20gdGhlIGFwcGxpY2F0
aW9uLCBpdCB3aWxsIGVhc2lseSBvdmVyZmxvdyB0aGUgCmhhcmR3YXJlIGNvbXBsZXRpb24gcXVl
dWUsIGJlY2F1c2Ugd2UgZG9uJ3QgaGF2ZSBhIHN5bW1ldHJpYyBtZWNoYW5pc20gCnRvIHN0b3Ag
dGhlIGFwcGxpY2F0aW9uIG9uIGltbWluZW50IGhhcmR3YXJlIHF1ZXVlIG92ZXJmbG93LiBJdCBk
b2Vzbid0IApmZWVsIGNvcnJlY3QgYW5kIG1heSBiZSB0cmlja2llciB0byBoYW5kbGU6IGlmIHRo
ZSBhcHBsaWNhdGlvbiBpcyB0b28gCnNsb3csIHN1Y2ggZHJvcHMgc2hvdWxkIGhhcHBlbiBvbiBk
cml2ZXIva2VybmVsIGxldmVsLCBub3QgaW4gaGFyZHdhcmUuCgpXaGljaCBiZWhhdmlvciBpcyB1
c2VkIGluIHlvdXIgZHJpdmVycz8gT3IgYW0gSSBtaXNzaW5nIHNvbWUgbW9yZSBvcHRpb25zPwoK
QlRXLCBpdCBzaG91bGQgYmUgYmV0dGVyIHRvIHBhc3MgY29udHJvbCB0byB0aGUgYXBwbGljYXRp
b24gYmVmb3JlIHRoZSAKZmlyc3QgZHJvcHBlZCBwYWNrZXQsIG5vdCBhZnRlciBpdCBoYXMgYmVl
biBkcm9wcGVkLgoKU29tZSB3b3JrbG9hZHMgZGlmZmVyZW50IGZyb20gcHVyZSBBRl9YRFAsIGZv
ciBleGFtcGxlLCA1MC81MCBBRl9YRFAgYW5kIApYRFBfVFggbWF5IHN1ZmZlciBmcm9tIHN1Y2gg
YmVoYXZpb3IsIHNvIGl0J3MgYW5vdGhlciBwb2ludCB0byBtYWtlIGEgCmtub2Igb24gdGhlIGFw
cGxpY2F0aW9uIGxheWVyIHRvIGVuYWJsZS9kaXNhYmxlIGl0LgoKIEZyb20gdGhlIGRyaXZlciBB
UEkgcGVyc3BlY3RpdmUsIEkgd291bGQgcHJlZmVyIHRvIHNlZSBhIHNpbXBsZXIgQVBJIGlmIApw
b3NzaWJsZS4gVGhlIGN1cnJlbnQgQVBJIGV4cG9zZXMgdGhpbmdzIHRoYXQgdGhlIGRyaXZlciBz
aG91bGRuJ3Qga25vdyAKKEJQRiBtYXAgdHlwZSksIGFuZCByZXF1aXJlcyBYU0stc3BlY2lmaWMg
aGFuZGxpbmcuIEl0IHdvdWxkIGJlIGJldHRlciAKaWYgc29tZSBzcGVjaWZpYyBlcnJvciBjb2Rl
IHJldHVybmVkIGZyb20geGRwX2RvX3JlZGlyZWN0IHdhcyByZXNlcnZlZCAKdG8gbWVhbiAiZXhp
dCBOQVBJIGVhcmx5IGlmIHlvdSBzdXBwb3J0IGl0Ii4gVGhpcyB3YXkgd2Ugd291bGRuJ3QgbmVl
ZCAKdHdvIG5ldyBoZWxwZXJzLCB0d28geGRwX2RvX3JlZGlyZWN0IGZ1bmN0aW9ucywgYW5kIHRo
aXMgYXBwcm9hY2ggd291bGQgCmJlIGV4dGVuc2libGUgdG8gb3RoZXIgbm9uLVhTSyB1c2UgY2Fz
ZXMgd2l0aG91dCBmdXJ0aGVyIGNoYW5nZXMgaW4gdGhlIApkcml2ZXIsIGFuZCBhbHNvIHRoZSBs
b2dpYyB0byBvcHQtaW4gdGhlIGZlYXR1cmUgY291bGQgYmUgcHV0IGluc2lkZSB0aGUgCmtlcm5l
bC4KClRoYW5rcywKTWF4Cgo+IAo+IENoZWVycywKPiBCasO2cm4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxp
c3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
