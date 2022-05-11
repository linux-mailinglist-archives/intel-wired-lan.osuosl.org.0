Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA7252363F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 May 2022 16:54:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C11F940B73;
	Wed, 11 May 2022 14:54:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id umfAxMK_KlxK; Wed, 11 May 2022 14:54:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C084C40B94;
	Wed, 11 May 2022 14:54:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 93C391BF3C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 14:54:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7E9CF40B82
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 14:54:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jG6hJS_9WPLQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 May 2022 14:54:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C4AF940B73
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 14:54:00 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id E944F61E6478B;
 Wed, 11 May 2022 16:53:56 +0200 (CEST)
Message-ID: <f486b0a0-2f6b-13e9-e905-8ad9163020a7@molgen.mpg.de>
Date: Wed, 11 May 2022 16:53:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: lixue liang <lianglixue@greatwall.com.cn>
References: <20220511080716.10054-1-lianglixue@greatwall.com.cn>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220511080716.10054-1-lianglixue@greatwall.com.cn>
Subject: Re: [Intel-wired-lan] 
 =?utf-8?b?W1BBVENIXSBpZ2JfbWFpbu+8mkFkZGVkIGlu?=
 =?utf-8?q?valid_mac_address_handling_in_igb=5Fprobe?=
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
Cc: kuba@kernel.org, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBMaXh1ZSwKCgpUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4gUGxlYXNlIHRhZyBwYXRjaCBp
dGVyYXRpb25zIHdpdGggYSB2ZXJzaW9uLiAKKFVzZSBgLXYgMmAgaW4gYGdpdCBzZW5kLWVtYWls
YCBmb3IgZXhhbXBsZS4pCgpBbSAxMS4wNS4yMiB1bSAxMDowNyBzY2hyaWViIGxpeHVlIGxpYW5n
OgoKUGxlYXNlIHVzZSB0aGUgbm9ybWFsIGNvbG9uIDogaW4gdGhlIHN1bW1hcnkuCgpBbHNvLCBw
bGVhc2UgdXNlIGltcGVyYXRpdmUgbW9vZCBpbiBwcmVzZW50IHRlbnNlOiBBZGQg4oCmCgpCdXQs
IGluIHRoaXMgY2FzZQoKSGFuZGxlIGludmFsaWQgTUFDIGFkZHJlc3Mg4oCmCgppcyBzaG9ydGVy
LiBPcjoKCkFzc2lnbiByYW5kb20gTUFDIGFkZHJlc3MgaW5zdGVhZCBvZiBmYWlsIGluIGNhc2Ug
b2YgaW52YWxpZCBvbmUKCj4gSW4gc29tZSBjYXNlcywgd2hlbiB0aGUgdXNlciB1c2VzIGlnYl9z
ZXRfZWVwcm9tIHRvIG1vZGlmeQo+IHRoZSBtYWMgYWRkcmVzcyB0byBiZSBpbnZhbGlkLCB0aGUg
aWdiIGRyaXZlciB3aWxsIGZhaWwgdG8gbG9hZC4KPiBJZiB0aGVyZSBpcyBubyBuZXR3b3JrIGNh
cmQgZGV2aWNlLCB0aGUgdXNlciBtdXN0IG1vZGlmeSBpdCB0bwo+IGEgdmFsaWQgbWFjIGFkZHJl
c3MgYnkgb3RoZXIgbWVhbnMuIEl0IGlzIG9ubHkgdGhlIGludmFsaWQKPiBtYWMgYWRkcmVzcyB0
aGF0IGNhdXNlcyB0aGUgZHJpdmVyIFRoZSBmYXRhbCBwcm9ibGVtIG9mCgrigKYgTUFDIGFkZHJl
c3MgY2F1c2luZyB0aGUgZHJpdmVyIHRvIGZhaWx1cmUuIFRoZSBmYXRhbCDigKYKCj4gbG9hZGlu
ZyBmYWlsdXJlIHdpbGwgY2F1c2UgbW9zdCB1c2VycyBubyBjaG9pY2UgYnV0IHRvIHRyb3VibGUu
CgpNYXliZSByZW1vdmUgdGhpcyBzZW50ZW5jZSwgb3IgcmVwaHJhc2UuCgo+IFNpbmNlIHRoZSBt
YWMgYWRkcmVzcyBtYXkgYmUgY2hhbmdlZCB0byBiZSBpbnZhbGlkLCBpdCBtdXN0Cj4gYWxzbyBi
ZSBjaGFuZ2VkIHRvIGEgdmFsaWQgbWFjIGFkZHJlc3MsIHRoZW4gYWRkIGEgcmFuZG9tCj4gdmFs
aWQgbWFjIGFkZHJlc3MgdG8gcmVwbGFjZSB0aGUgaW52YWxpZCBtYWMgYWRkcmVzcyBpbiB0aGUK
PiBkcml2ZXIsIGNvbnRpbnVlIHRvIGxvYWQgdGhlIGlnYiBuZXR3b3JrIGNhcmQgZHJpdmVyLAo+
IGFuZCBvdXRwdXQgdGhlIHJlbGV2YW50IGxvZyByZW1pbmRlci4gdml0YWwgdG8gdGhlIHVzZXIu
CgpQbGVhc2UgcmVmbG93IGZvciA3NSBjaGFyYWN0ZXJzIHBlciBsaW5lLiAoTW9yZSB3b3JkcyBm
aXQgaW4gb25lIGxpbmUuKQoKPiBTaWduZWQtb2ZmLWJ5OiBsaXh1ZSBsaWFuZyA8bGlhbmdsaXh1
ZUBncmVhdHdhbGwuY29tLmNuPgo+IC0tLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWdiL2lnYl9tYWluLmMgfCA3ICsrKystLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlv
bnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdi
L2lnYl9tYWluLmMKPiBpbmRleCAzNGIzM2IyMWUwZGMuLmE1MTM1NzBjMmFkNiAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYwo+ICsrKyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jCj4gQEAgLTMzNTksOSArMzM1
OSwxMCBAQCBzdGF0aWMgaW50IGlnYl9wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwgY29uc3Qg
c3RydWN0IHBjaV9kZXZpY2VfaWQgKmVudCkKPiAgIAlldGhfaHdfYWRkcl9zZXQobmV0ZGV2LCBo
dy0+bWFjLmFkZHIpOwo+ICAgCj4gICAJaWYgKCFpc192YWxpZF9ldGhlcl9hZGRyKG5ldGRldi0+
ZGV2X2FkZHIpKSB7Cj4gLQkJZGV2X2VycigmcGRldi0+ZGV2LCAiSW52YWxpZCBNQUMgQWRkcmVz
c1xuIik7Cj4gLQkJZXJyID0gLUVJTzsKPiAtCQlnb3RvIGVycl9lZXByb207Cj4gKwkJZXRoX3Jh
bmRvbV9hZGRyKG5ldGRldi0+ZGV2X2FkZHIpOwo+ICsJCW1lbWNweShody0+bWFjLmFkZHIsIG5l
dGRldi0+ZGV2X2FkZHIsIG5ldGRldi0+YWRkcl9sZW4pOwo+ICsJCWRldl9pbmZvKCZwZGV2LT5k
ZXYsCj4gKwkJCSAiSW52YWxpZCBNYWMgQWRkcmVzcywgYWxyZWFkeSBnb3QgcmFuZG9tIE1hYyBB
ZGRyZXNzXG4iKTsKCklzIHRoZXJlIGEgdmFsaWQgTUFDIGFkZHJlc3MgdGhhdCBzaG91bGQgYmUg
b25seSB1c2VkIGZvciB0ZXN0aW5nLiBNYXliZSAKdGhhdCBjYW4gYmUgdXNlZC4gTWF5YmUgYWxz
byBsb2cgdGhlIGFkZHJlc3MuCgpMYXN0bHksIHBsZWFzZSBmdWxseSBjYXBpdGFsaXplIE1BQy4K
Cj4gICAJfQo+ICAgCj4gICAJaWdiX3NldF9kZWZhdWx0X21hY19maWx0ZXIoYWRhcHRlcik7CgoK
S2luZCByZWdhcmRzLAoKUGF1bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
