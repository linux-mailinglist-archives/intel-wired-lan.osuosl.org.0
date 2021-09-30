Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBCA41DC53
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Sep 2021 16:32:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 306A0613F9;
	Thu, 30 Sep 2021 14:32:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n03wDgLX_p1i; Thu, 30 Sep 2021 14:31:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20D5C613F3;
	Thu, 30 Sep 2021 14:31:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 91EC71BF82C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 14:07:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7FBC560659
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 14:07:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hO8weje_baD5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Sep 2021 14:07:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 955C7605E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 14:07:26 +0000 (UTC)
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1633010842;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=IyrJmCu4eyZQOsViNW5NAFasbLvR7GyoPKIT5sQFDmc=;
 b=G4iMSzg1dC4/NYjfjfq6v9nSYh3KMTMxB1ItgZAGBVk7bVCx2nHxNdlBDa7gSL+VUc9FHY
 x177GYvSXVLXjoa4RZ3LYblskOqhaiMzBLoHfNqzjJ5ove0n0bbRYX9XefNWO5YbYU61tW
 yOxvQD873WOO67GKOeYrRJ1z86qFWuRNl/hE+ro7poo6+w/K2aWdbrNHoIE3Cxcurk4U3x
 ioxeswCvxmcFQC9aP10bjEL2LNSB8/5U4pWy99+qNAr065qNBg3943I+5OkjjuPPHU9CVb
 /IqSSaARF3sAXJdRjSEObelX0tDHPwXUXk+I5C1voHeWjr8r3apUodFXS/gVXA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1633010842;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=IyrJmCu4eyZQOsViNW5NAFasbLvR7GyoPKIT5sQFDmc=;
 b=UYqWDFCFbK5h07G8dyDHF4UJEMOC531yauPYAliwBIDZa0GOrD279WBo0Vucg1mguFQAbK
 V8jz11H9kuZHpeBg==
To: intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org
Date: Thu, 30 Sep 2021 16:06:51 +0200
Message-Id: <20210930140651.2249972-1-bigeasy@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 30 Sep 2021 14:31:55 +0000
Subject: [Intel-wired-lan] [PATCH net-next v2] ixgbe: Consider xsk pool's
 frame size for MTU size
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
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Kurt Kanzenbach <kurt@linutronix.de>, Jakub Kicinski <kuba@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhlIGRyaXZlciBoYXMgdG8gYSBlbnN1cmUgdGhhdCBhIG5ldHdvcmsgcGFja2V0IGlzIG5vdCB1
c2luZyBtb3JlIHRoYW4Kb25lIHBhZ2UgZm9yIGl0cyBkYXRhIGlmIGEgWERQIHByb2dyYW0gaXMg
dXNlZC4KVGhpcyByZXN1bHRzIGluIGFuIHVwcGVyIGxpbWl0IG9mIDE1MDAgYnl0ZXMuIFRoaXMg
Y2FuIGJlIGluY3JlYXNlZCBhCmxpdHRsZSBpZiB0aGUgTVRVIHdhcyBwcm9ncmFtbWVkIHRvIDE1
MTQuLjMwNzIgYnl0ZXMgYmVmb3JlIGxvYWRpbmcgdGhlClhEUCBwcm9ncmFtLiBCeSBzZXR0aW5n
IHRoaXMgaW5jcmVhc2VkIE1UVSBzaXplIHRoZSBkcml2ZXIgd2lsbCBzZXQgdGhlCl9fSVhHQkVf
UlhfM0tfQlVGRkVSIGZsYWcgd2hpY2ggaW4gdHVybiB3aWxsIGFsbG93IHRvIHVzZSAzS2lCIGFz
IHRoZQp1cHBlciBsaW1pdC4KVGhpcyBsb29rcyBsaWtlIGEgaGFjayBhbmQgdGhlIHVwcGVyIGxp
bWl0IGlzIGNvdWxkIGluY3JlYXNlZCBmdXJ0aGVyLgpJZiB0aGUgdXNlciBjb25maWd1cmVkIGEg
bWVtb3J5IHBvb2wgdGhlbiBQQUdFX1NJWkUgaXMgdXNlZCBhcyBCU0laRVBLVAphbmQgUkxQTUwg
aXMgc2V0IHRvIHBvb2wncyBtZW1vcnkgc2l6ZSBhcyBpcyB0aGUgY2FyZCdzIG1heGltdW0gZnJh
bWUKc2l6ZS4KVGhlIHJlc3VsdCBpcyB0aGF0IGEgTVRVIG9mIDM1MjAgYnl0ZXMgY2FuIGJlIHBy
b2dyYW1tZWQgYW5kIGV2ZXJ5CnBhY2tldCBpcyBzdG9yZWQgYSBzaW5nbGUgcGFnZS4KCklmIGEg
UlggcmluZyBoYXMgYSBwb29sIGFzc2lnbmVkIHVzZSBpdHMgc2l6ZSB3aGlsZSBjb21wYXJpbmcg
Zm9yIHRoZQptYXhpbWFsIE1UVSBzaXplLgoKU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIEFuZHJ6
ZWogU2lld2lvciA8YmlnZWFzeUBsaW51dHJvbml4LmRlPgotLS0KdjHigKZ2MjogUmVtb3ZlIFJG
Qy4gUmVwb3N0IG9mCglodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjEwNjIyMTYyNjE2LmVh
ZGsydTVobWY0cnU1amRAbGludXRyb25peC5kZQoKIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2l4Z2JlL2l4Z2JlX21haW4uYyB8IDIxICsrKysrKysrKysrKysrKysrLS0KIDEgZmlsZSBjaGFu
Z2VkLCAxOSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21haW4uYwppbmRleCAyNGUwNmJhNmY1ZTkzLi5lZDQ1
MWYzMmUxOTgwIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9p
eGdiZV9tYWluLmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVf
bWFpbi5jCkBAIC02NzIyLDYgKzY3MjIsMjMgQEAgc3RhdGljIHZvaWQgaXhnYmVfZnJlZV9hbGxf
cnhfcmVzb3VyY2VzKHN0cnVjdCBpeGdiZV9hZGFwdGVyICphZGFwdGVyKQogCQkJaXhnYmVfZnJl
ZV9yeF9yZXNvdXJjZXMoYWRhcHRlci0+cnhfcmluZ1tpXSk7CiB9CiAKK3N0YXRpYyBpbnQgaXhn
YmVfdmFsaWRhdGVfZnJhbWVfc2l6ZSh1bnNpZ25lZCBpbnQgZnJhbWVfc2l6ZSwKKwkJCQkgICAg
IHN0cnVjdCBpeGdiZV9yaW5nICpyaW5nKQoreworCXN0cnVjdCB4c2tfYnVmZl9wb29sICp4c2tf
cG9vbDsKKwl1bnNpZ25lZCBpbnQgYnVmX2xlbjsKKworCXhza19wb29sID0gcmluZy0+eHNrX3Bv
b2w7CisJaWYgKHhza19wb29sKQorCQlidWZfbGVuID0geHNrX3Bvb2xfZ2V0X3J4X2ZyYW1lX3Np
emUoeHNrX3Bvb2wpOworCWVsc2UKKwkJYnVmX2xlbiA9IGl4Z2JlX3J4X2J1ZnN6KHJpbmcpOwor
CisJaWYgKGZyYW1lX3NpemUgPiBidWZfbGVuKQorCQlyZXR1cm4gLUVJTlZBTDsKKwlyZXR1cm4g
MDsKK30KKwogLyoqCiAgKiBpeGdiZV9jaGFuZ2VfbXR1IC0gQ2hhbmdlIHRoZSBNYXhpbXVtIFRy
YW5zZmVyIFVuaXQKICAqIEBuZXRkZXY6IG5ldHdvcmsgaW50ZXJmYWNlIGRldmljZSBzdHJ1Y3R1
cmUKQEAgLTY3NDEsNyArNjc1OCw3IEBAIHN0YXRpYyBpbnQgaXhnYmVfY2hhbmdlX210dShzdHJ1
Y3QgbmV0X2RldmljZSAqbmV0ZGV2LCBpbnQgbmV3X210dSkKIAkJZm9yIChpID0gMDsgaSA8IGFk
YXB0ZXItPm51bV9yeF9xdWV1ZXM7IGkrKykgewogCQkJc3RydWN0IGl4Z2JlX3JpbmcgKnJpbmcg
PSBhZGFwdGVyLT5yeF9yaW5nW2ldOwogCi0JCQlpZiAobmV3X2ZyYW1lX3NpemUgPiBpeGdiZV9y
eF9idWZzeihyaW5nKSkgeworCQkJaWYgKGl4Z2JlX3ZhbGlkYXRlX2ZyYW1lX3NpemUobmV3X2Zy
YW1lX3NpemUsIHJpbmcpKSB7CiAJCQkJZV93YXJuKHByb2JlLCAiUmVxdWVzdGVkIE1UVSBzaXpl
IGlzIG5vdCBzdXBwb3J0ZWQgd2l0aCBYRFBcbiIpOwogCQkJCXJldHVybiAtRUlOVkFMOwogCQkJ
fQpAQCAtMTAxMjYsNyArMTAxNDMsNyBAQCBzdGF0aWMgaW50IGl4Z2JlX3hkcF9zZXR1cChzdHJ1
Y3QgbmV0X2RldmljZSAqZGV2LCBzdHJ1Y3QgYnBmX3Byb2cgKnByb2cpCiAJCWlmIChyaW5nX2lz
X3JzY19lbmFibGVkKHJpbmcpKQogCQkJcmV0dXJuIC1FSU5WQUw7CiAKLQkJaWYgKGZyYW1lX3Np
emUgPiBpeGdiZV9yeF9idWZzeihyaW5nKSkKKwkJaWYgKGl4Z2JlX3ZhbGlkYXRlX2ZyYW1lX3Np
emUoZnJhbWVfc2l6ZSwgcmluZykpCiAJCQlyZXR1cm4gLUVJTlZBTDsKIAl9CiAKLS0gCjIuMzMu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
