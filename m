Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD55542122
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jun 2022 06:29:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9337260F88;
	Wed,  8 Jun 2022 04:29:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5XV1UdM7yhLp; Wed,  8 Jun 2022 04:29:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 75473608A5;
	Wed,  8 Jun 2022 04:29:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 94B2B1BF873
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 04:29:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 81ED44157F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 04:29:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=126.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ev82orpAzqE1 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jun 2022 04:29:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from m15111.mail.126.com (m15111.mail.126.com [220.181.15.111])
 by smtp4.osuosl.org (Postfix) with ESMTP id B20CA414C7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 04:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=Mime-Version:Subject:From:Date:Message-Id; bh=WxyPW
 EOB1JMmC5Tz2pZg2DeAuPERJR4vSk4T6uboS7g=; b=YJe4XGYjQdu07v7Qzwi2x
 JGOaleLLFktzSA/dnL2I0ojAYEQZr4YRmVqmf0w9v4fb99uHFgrpwvKEq6mfprb+
 grHnPaIr5WNyyLVFBJ1J9aubq9PU4J6cjOEBXrFxZcQ2Rz12G48C4x1louuY+9OB
 rXqFESqEMIEwdtTBqPKIRs=
Received: from smtpclient.apple (unknown [223.104.66.113])
 by smtp1 (Coremail) with SMTP id C8mowABnRd56JaBid61oDg--.23726S2;
 Wed, 08 Jun 2022 12:28:43 +0800 (CST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.80.82.1.1\))
From: =?utf-8?B?5qKB56S85a2m?= <lianglixuehao@126.com>
In-Reply-To: <83e2fd08cabc0227d105c80d8e0538f546754cc7.camel@gmail.com>
Date: Wed, 8 Jun 2022 12:28:42 +0800
Message-Id: <8186B505-91E9-42A8-AED5-2CC54B9813B5@126.com>
References: <20220601150428.33945-1-lianglixuehao@126.com>
 <f16ef33a4b12cebae2e2300a509014cd5de4a0d2.camel@gmail.com>
 <0362CDDC-AE9B-448C-BE7C-D563B12D5A61@126.com>
 <83e2fd08cabc0227d105c80d8e0538f546754cc7.camel@gmail.com>
To: Alexander H Duyck <alexander.duyck@gmail.com>
X-Mailer: Apple Mail (2.3696.80.82.1.1)
X-CM-TRANSID: C8mowABnRd56JaBid61oDg--.23726S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxAFWrZFW7uw1ftw17ArWkJFb_yoWruFW3pF
 ZYgFWakryDJr409ws7Xr48XFWF9Fn5Jay5Gr98J3sa9wn8ur1xZF40kw45u34UJwn3A3W2
 vFW7Z34DCF90yaDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07Un6pQUUUUU=
X-Originating-IP: [223.104.66.113]
X-CM-SenderInfo: xold0w5ol03vxkdrqiyswou0bp/1tbiog8aFlx5hmFvUgAAse
Subject: Re: [Intel-wired-lan] [PATCH v4] igb: Assign random MAC address
 instead of fail in case of invalid one
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, lianglixue@greatwall.com.cn,
 Netdev <netdev@vger.kernel.org>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGksCiAgIFRoYW5rIHlvdSB2ZXJ5IG11Y2ggZm9yIHlvdXIgYW5hbHlzaXMgYW5kIGV4cGxhbmF0
aW9uLCBXaGF0IHlvdSBzYWlkIGlzIGluZGVlZCB2ZXJ5IHJlYXNvbmFibGUsIAphbmQgbGVhZCBt
ZSB0byBmdXJ0aGVyIHVuZGVyc3RhbmRpbmcgb2YgdGhlc2Ugc2NlbmFyaW9zLiAKCkkgd2lsbCBw
cm92aWRlIGEgbmV3IHBhdGNoIGJhc2VkIG9uIHlvdXIgc3VnZ2VzdGlvbi4KCktpbmQgcmVnYXJk
cywKCkxpeHVlCgo+IDIwMjLlubQ25pyIN+aXpSAwMTowNO+8jEFsZXhhbmRlciBIIER1eWNrIDxh
bGV4YW5kZXIuZHV5Y2tAZ21haWwuY29tPiDlhpnpgZPvvJoKPiAKPiBPbiBNb24sIDIwMjItMDYt
MDYgYXQgMjI6MzUgKzA4MDAsIOaigeekvOWtpiB3cm90ZToKPj4gSGksCj4+IHRoYW5rIHlvdSB2
ZXJ5IG11Y2ggZm9yIHlvdXIgc3VnZ2VzdGlvbi4KPj4gCj4+IEFzIHlvdSBzYWlkLCB0aGUgd2F5
IHRvIGNhdXNlIOKAmEludmFsaWQgTUFDIGFkZHJlc3PigJkgaXMgbm90IG9ubHkgdGhyb3VnaCBp
Z2Jfc2V0X2VlcHJvbSwKPj4gYnV0IGFsc28gc29tZSBwcmUtcHJvZHVjdGlvbiBvciB1bmluaXRp
YWxpemVkIGJvYXJkcy4KPj4gCj4+IEJ1dCBpZiBzZXQgYnkgbW9kdWxlIHBhcmFtZXRlcnMsIGVz
cGVjaWFsbHkgaW4gdGhlIGNhc2Ugb2YgQ09ORklHX0lHQj15LAo+PiBUaGUgc2l0dWF0aW9uIG1h
eSBiZSBtb3JlIHRyb3VibGVzb21lLCBiZWNhdXNlIGZvciBtb3N0IHVzZXJzLCBpZiB0aGUgc3lz
dGVtIGRvZXMgbm90IHByb3Blcmx5IGxvYWQgYW5kIGdlbmVyYXRlIAo+PiB0aGUgbmV0d29yayBj
YXJkIGRldmljZSwgdGhleSBjYW4gb25seSBhc2sgdGhlIGhvc3Qgc3VwcGxpZXIgZm9yIGhlbHAu
QnV0LAo+IAo+IEEgbW9kdWxlIHBhcmFtZXRlciBjYW4gYmUgcGFzc2VkIGFzIGEgcGFydCBvZiB0
aGUga2VybmVsIGNvbW1hbmQgbGluZQo+IGluIHRoZSBjYXNlIG9mIENPTkZJR19JR0I9eS4gU28g
aXQgaXMgc3RpbGwgc29tZXRoaW5nIHRoYXQgY2FuIGJlIGRlYWx0Cj4gd2l0aCB2aWEgbW9kdWxl
IHBhcmFtZXRlcnMuCj4gCj4+ICgxKSBJZiB0aGUgaW52YWxpZCBtYWMgYWRkcmVzcyBpcyBjYXVz
ZWQgYnkgaWdiX3NldF9lZXByb20sIGl0IGlzIHJlbGF0aXZlbHkgbW9yZSBjb252ZW5pZW50IGZv
ciBtb3N0IG9wZXJhdGlvbnMgZW5naW5lZXJzIAo+PiB0byBjaGFuZ2UgdGhlIGludmFsaWQgbWFj
IGFkZHJlc3MgdG8gdGhlIG1hYyBhZGRyZXNzIHRoZXkgdGhpbmsgc2hvdWxkIGJlIHZhbGlkIGJ5
IGV0aHRvb2wsIHdoaWNoIG1heSBzdGlsbCBiZSBJbnZhbGlkLgo+PiBBdCB0aGlzIHRpbWUsYXNz
aWduZWQgcmFuZG9tIE1BQyBhZGRyZXNzIHdoaWNoIGlzIHZhbGlkIGJ5IHRoZSBkcml2ZXIgZW5h
YmxlcyB0aGUgbmV0d29yayBjYXJkIGRyaXZlciB0byBjb250aW51ZSB0byBjb21wbGV0ZSB0aGUg
bG9hZGluZy4KPj4gQXMgZm9yIHdoYXQgeW91IG1lbnRpb25lZCwgaW4gdGhpcyBjYXNlIGlmIHRo
ZSB1c2VyIGRvZXMgbm90IG5vdGljZSB0aGF0IHRoZSBkcml2ZXIgaGFkIHVzZWQgYSByYW5kb20g
bWFjIGFkZHJlc3MsCj4+IGl0IG1heSBsZWFkIHRvIG90aGVyIHByb2JsZW1zLmJ1dCB0aGUgZmFj
dCBpcyB0aGF0IGlmIHRoZSB1c2VyIGRlbGliZXJhdGVseSBzZXRzIGEgY3VzdG9taXplZCBtYWMg
YWRkcmVzcywgCj4+IHRoZSB1c2VyIHNob3VsZCBwYXkgYXR0ZW50aW9uIHRvIHdoZXRoZXIgdGhl
IG1hYyBhZGRyZXNzIGlzIHN1Y2Nlc3NmdWxseSBjaGFuZ2VkLCBhbmQgYWxzbyBwYXkgYXR0ZW50
aW9uIHRvIHRoZSAKPj4gZXhwZWN0ZWQgcmVzdWx0IGFmdGVyIGNoYW5naW5nIHRoZSBtYWMgYWRk
cmVzcy5XaGVuIHVzZXJzIGZpbmQgdGhhdCB0aGUgY3VzdG9tIG1hYyBhZGRyZXNzIGNhbm5vdCAK
Pj4gYmUgc3VjY2Vzc2Z1bGx5IGNoYW5nZWQgdG8gdGhlIGN1c3RvbWl6ZWQgb25lLCB0aGV5IGNh
biBjb250aW51ZSBkZWJ1Z2dpbmcsIHdoaWNoIGlzIGVhc2llciB0aGFuIGxvb2tpbmcgZm9yIAo+
PiB0aGUgaG9zdCBzdXBwbGllcuKAmXMgc3VwcG9ydCBmcm9tIHRoZSB2ZXJ5IGZpcnN0IHRpbWUg
b2Yg4oCcSW52YWxpZCBNQUMgYWRkcmVzc+KAnS4KPiAKPiBUaGUgcHJvYmxlbSBpcywgaGF2aW5n
IGEgcmFuZG9tIE1BQyBhZGRyZXNzIGF1dG9tYXRpY2FsbHkgYXNzaWduZWQKPiBtYWtlcyBpdCBs
ZXNzIGxpa2VseSB0byBkZXRlY3QgaXNzdWVzIGNhdXNlZCBieSAoMSkuIFdoYXQgSSBoYXZlIHNl
ZW4KPiBpbiB0aGUgcGFzdCBpcyBwZW9wbGUgcHJvZ3JhbSBFRVBST01zIGFuZCBvdmVyd3JpdGUg
dGhpbmdzIGxpa2UgYSBNQUMKPiBhZGRyZXNzIHRvIGFsbCAwcy4gVGhpcyBjYXVzZXMgYW4gb2J2
aW91cyBwcm9ibGVtIHdpdGggdGhlIGN1cnJlbnQKPiBkcml2ZXIuIElmIGl0IGlzIGNoYW5nZWQg
dG8ganVzdCBkZWZhdWx0IHRvIHVzaW5nIGEgcmFuZG9tIE1BQyBhZGRyZXNzCj4gd2hlbiB0aGlz
IG9jY3VycyB0aGUgaXNzdWUgY2FuIGJlIGVhc2lseSBvdmVybG9va2VkIGFuZCB3aWxsIGxpa2Vs
eQo+IGxlYWQgdG8gbW9yZSBkaWZmaWN1bHR5IGluIHRyeWluZyB0byBtYWludGFpbiB0aGUgZGV2
aWNlIGFzIGl0IGJlY29tZXMKPiBoYXJkZXIgdG8gaWRlbnRpZnkgaWYgdGhlcmUgbWF5IGJlIEVF
UFJPTSBpc3N1ZXMuCj4gCj4+ICgyKSBJZiB0aGUgaW52YWxpZCBtYWMgYWRkcmVzcyBpcyBjYXVz
ZWQgZHVyaW5nIHByZS1wcm9kdWN0aW9uIG9yIGluaXRpYWxpemF0aW9uIG9mIHRoZSBib2FyZCwg
aXQgaXMgZXZlbiBtb3JlIG5lY2Vzc2FyeSAKPj4gdG8gdXNlIGEgcmFuZG9tIG1hYyBhZGRyZXNz
IHRvIGNvbXBsZXRlIHRoZSBsb2FkaW5nIG9mIHRoZSBuZXR3b3JrIGNhcmQsIGJlY2F1c2UgdGhl
IHVzZXIgb25seSBjYXJlcyBhYm91dCB3aGV0aGVyIAo+PiB0aGUgbmV0d29yayBjYXJkIGlzIGxv
YWRlZCwgbm90IHdoYXQgdGhlIHZhbGlkIE1BQyBhZGRyZXNzIGlzLgo+IAo+IFRoaXMgaXNuJ3Qg
bmVjZXNzYXJpbHkgdHJ1ZS4gV2hhdCBJIHdhcyBnZXR0aW5nIGF0IGlzIHRoYXQgaW4gdGhlIHBy
ZS0KPiBwcm9kdWN0aW9uIGNhc2UgdGhlcmUgbWF5IG5vdCBiZSBhbiBFRVBST00gZXZlbiBsb2Fk
ZWQgYW5kIGFzIG9uZSBvZgo+IHRoZSBpbml0aWFsIHN0ZXBzIGl0IHdpbGwgYmUgbmVjZXNzYXJ5
IHRvIHB1dCBvbmUgdG9nZXRoZXIgZm9yIHRoZQo+IGRldmljZS4KPiAKPiBUaGUgdXNlciBjb3Vs
ZCBlaXRoZXIgbWFrZSB0aGUgbW9kdWxlIHBhcmFtZXRlciBwZXJtZW5hbnQgYW5kIGhhdmUgaXQK
PiB1c2VkIGZvciBldmVyeSBib290LCBvciB0aGV5IG1pZ2h0IGp1c3QgaGF2ZSB0byBzZXQgaXQg
b25jZSBpbiBvcmRlciB0bwo+IGxvYWQgYSB2YWxpZCBFRVBST00gaW1hZ2Ugb24gdGhlIHN5c3Rl
bS4KPiAKPj4gQW5kIEkgYWxzbyBub3RpY2VkIHRoYXQgaXhnYnZlZl9zd19pbml0IGFsc28gdXNl
cyBhIHJhbmRvbSB2YWxpZCBtYWMgYWRkcmVzcyB0byBjb250aW51ZSBsb2FkaW5nIHRoZSBkcml2
ZXIgd2hlbiAKPj4gdGhlIGFkZHJlc3MgaXMgaW52YWxpZC4gSW4gYWRkaXRpb24sIG5ldHdvcmsg
Y2FyZCBkcml2ZXJzIHN1Y2ggYXMgbWFydmVsbCwgYnJvYWRjb20sIHJlYWx0ZWssIGV0Yy4sIHdo
ZW4gYW4gaW52YWxpZCAKPj4gTUFDIGFkZHJlc3MgaXMgZGV0ZWN0ZWQsIGl0IGFsc28gZG9lcyBu
b3QgZGlyZWN0bHkgZXhpdCB0aGUgZHJpdmVyIGxvYWRpbmcsIGJ1dCB1c2VzIGEgcmFuZG9tIHZh
bGlkIE1BQyBhZGRyZXNzLgo+IAo+IFRoZSBWRiBkcml2ZXJzIGFzc2lnbiBhIHJhbmRvbSBNQUMg
YWRkcmVzcyBkdWUgdG8gbW9yZSBoaXN0b3JpYyByZWFzb25zCj4gdGhhbiBhbnl0aGluZyBlbHNl
LiBJbiBhZGRpdGlvbiBnZW5lcmFsbHkgdGhlIHVzZSBvZiB0aGUgcmFuZG9tIE1BQwo+IGFkZHJl
c3MgaXMgbW9yZS1vci1sZXNzIGZyb3duZWQgdXBvbi4gVGhlcmUgaXMgbG9naWMgaW4gaXhnYmV2
ZiB0aGF0Cj4gd2lsbCBjYXVzZSB0aGUgUEYgdG8gcmVqZWN0IHRoZSBWRiBNQUMgYWRkcmVzcyBh
bmQgb3ZlcndyaXRlIHRoZSBNQUMKPiBhZGRyZXNzIGZyb20gdGhlIFBGIHNpZGUuCj4gCj4gQXMg
ZmFyIGFzIHRoZSBvdGhlciBkcml2ZXJzIHRoZXkgaGF2ZSB0aGVpciByZWFzb25zLiBJbiBtYW55
IGNhc2VzIEkKPiBzdXNwZWN0IHRoZSBkcml2ZXIgaXMgaW50ZW5kZWQgZm9yIGFuIGVtYmVkZGVk
IGVudmlyb25tZW50IHdoZXJlIHRoZQo+IHVzZXIgbWlnaHQgbm90IGJlIGFibGUgdG8gcmVhY2gg
dGhlIGRldmljZSBpZiB0aGUgTklDIGRvZXNuJ3QgY29tZSB1cC4KPiAKPiBUaGUgaWdiIGRyaXZl
ciBpcyBtZWFudCB0byB0eXBpY2FsbHkgYmUgdXNlZCBpbiBhIGRlc2t0b3AgZW52aXJvbm1lbnQu
Cj4gQ2F0Y2hpbmcgYSBtYWxmb3JtZWQgTUFDIGFkZHJlc3MgaXMgaW1wb3J0YW50IGFzIGEgcGFy
dCBvZiB0aGF0IGFzIGl0Cj4gaXMgb25lIG9mIHRoZSBoZWFsdGggY2hlY2tzIGZvciB0aGUgZGV2
aWNlLiBUaGF0IGlzIHdoeSBJIGFtIG9wZW4gdG8KPiBzdXBwb3J0aW5nIGl0IGJ5IGRlZmF1bHQs
IGJ1dCBvbmx5IGlmIGl0IGlzIHZpYSBhIG1vZHVsZSBwYXJhbWV0ZXIgdG8KPiBzcGVjaWZ5IHRo
ZSBiZWhhdmlvci4gT3RoZXJ3aXNlIHdlIGFyZSBjaGFuZ2luZyBhIGtleSBwaWVjZSBvZiBkcml2
ZXIKPiBiZWhhdmlvciBhbmQgd2lsbCBiZSBwb3RlbnRpYWxseSBtYXNraW5nIEVFUFJPTSBpc3N1
ZXMuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBz
Oi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
