Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 014AD390CD9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 May 2021 01:14:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D82F60B6A;
	Tue, 25 May 2021 23:14:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g6FxUjtXfR1O; Tue, 25 May 2021 23:14:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9801F60B64;
	Tue, 25 May 2021 23:14:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9C7111BF479
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 May 2021 23:14:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9603F404D6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 May 2021 23:14:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XR1awmhRMrZH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 May 2021 23:14:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D67A940185
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 May 2021 23:14:45 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 143226128B;
 Tue, 25 May 2021 23:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621984485;
 bh=/EdwyLQ+0LUXTaPyhPRLe2zoHvEb5leoOHuBg++UM1o=;
 h=Date:From:To:Cc:Subject:From;
 b=XOokvxXL/+Si6if87jIxVJLjCObnqn3ReG/G14b29kGq1OSabBmWJpLVkevuEKedY
 PTOw75MfoetLGNDb/bhJgoMKVy0ULwN+XQypsauhnOZ+N5pt1azVEXWUv8HIW3L76c
 +zAb2cmcdgxqmtz48WEdOGTQ8yr0lnwT3Z1zG3vYQfC+xrzWUoQFu25ys9F48uL7ZW
 f3+WPqWcR8p8DU3EenOKYkqFhc5K5RCBjMXHUPjlrEBn+k8L5vJ4hvsqTu4hBhkbrg
 UnZxl0PRVBxiAQSXjvfOS9IEfjwA2BtvloDdJGqvwCHfZp6vIIgz0Rrtad2llGe0Lu
 cL41sXnxe0xIQ==
Date: Tue, 25 May 2021 18:15:42 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20210525231542.GA176299@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-wired-lan] [PATCH][next] virtchnl: Replace one-element array
 in struct virtchnl_irq_map_info
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
Cc: linux-hardening@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhlcmUgaXMgYSByZWd1bGFyIG5lZWQgaW4gdGhlIGtlcm5lbCB0byBwcm92aWRlIGEgd2F5IHRv
IGRlY2xhcmUgaGF2aW5nIGEKZHluYW1pY2FsbHkgc2l6ZWQgc2V0IG9mIHRyYWlsaW5nIGVsZW1l
bnRzIGluIGEgc3RydWN0dXJlLiBLZXJuZWwgY29kZQpzaG91bGQgYWx3YXlzIHVzZSDigJxmbGV4
aWJsZSBhcnJheSBtZW1iZXJz4oCdWzFdIGZvciB0aGVzZSBjYXNlcy4gVGhlIG9sZGVyCnN0eWxl
IG9mIG9uZS1lbGVtZW50IG9yIHplcm8tbGVuZ3RoIGFycmF5cyBzaG91bGQgbm8gbG9uZ2VyIGJl
IHVzZWRbMl0uCgpSZWZhY3RvciB0aGUgY29kZSBhY2NvcmRpbmcgdG8gdGhlIHVzZSBvZiBhIGZs
ZXhpYmxlLWFycmF5IG1lbWJlciBpbiBzdHJ1Y3QKdmlydGNobmxfaXJxX21hcF9pbmZvIGluc3Rl
YWQgb2Ygb25lLWVsZW1lbnQgYXJyYXksIGFuZCB1c2UgdGhlCmZsZXhfYXJyYXlfc2l6ZSgpIGhl
bHBlci4KClsxXSBodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9GbGV4aWJsZV9hcnJheV9t
ZW1iZXIKWzJdIGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvdjUuMTAvcHJvY2Vzcy9k
ZXByZWNhdGVkLmh0bWwjemVyby1sZW5ndGgtYW5kLW9uZS1lbGVtZW50LWFycmF5cwoKTGluazog
aHR0cHM6Ly9naXRodWIuY29tL0tTUFAvbGludXgvaXNzdWVzLzc5ClNpZ25lZC1vZmYtYnk6IEd1
c3Rhdm8gQS4gUi4gU2lsdmEgPGd1c3Rhdm9hcnNAa2VybmVsLm9yZz4KLS0tCiBpbmNsdWRlL2xp
bnV4L2F2Zi92aXJ0Y2hubC5oIHwgOCArKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2F2Zi92
aXJ0Y2hubC5oIGIvaW5jbHVkZS9saW51eC9hdmYvdmlydGNobmwuaAppbmRleCBlZDljNDk5OGY4
YWMuLjdkZWQyYjQ1NDEyMiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9hdmYvdmlydGNobmwu
aAorKysgYi9pbmNsdWRlL2xpbnV4L2F2Zi92aXJ0Y2hubC5oCkBAIC0zNzgsMTAgKzM3OCwxMCBA
QCBWSVJUQ0hOTF9DSEVDS19TVFJVQ1RfTEVOKDEyLCB2aXJ0Y2hubF92ZWN0b3JfbWFwKTsKIAog
c3RydWN0IHZpcnRjaG5sX2lycV9tYXBfaW5mbyB7CiAJdTE2IG51bV92ZWN0b3JzOwotCXN0cnVj
dCB2aXJ0Y2hubF92ZWN0b3JfbWFwIHZlY21hcFsxXTsKKwlzdHJ1Y3QgdmlydGNobmxfdmVjdG9y
X21hcCB2ZWNtYXBbXTsKIH07CiAKLVZJUlRDSE5MX0NIRUNLX1NUUlVDVF9MRU4oMTQsIHZpcnRj
aG5sX2lycV9tYXBfaW5mbyk7CitWSVJUQ0hOTF9DSEVDS19TVFJVQ1RfTEVOKDIsIHZpcnRjaG5s
X2lycV9tYXBfaW5mbyk7CiAKIC8qIFZJUlRDSE5MX09QX0VOQUJMRV9RVUVVRVMKICAqIFZJUlRD
SE5MX09QX0RJU0FCTEVfUVVFVUVTCkBAIC0xMDA4LDggKzEwMDgsOCBAQCB2aXJ0Y2hubF92Y192
YWxpZGF0ZV92Zl9tc2coc3RydWN0IHZpcnRjaG5sX3ZlcnNpb25faW5mbyAqdmVyLCB1MzIgdl9v
cGNvZGUsCiAJCWlmIChtc2dsZW4gPj0gdmFsaWRfbGVuKSB7CiAJCQlzdHJ1Y3QgdmlydGNobmxf
aXJxX21hcF9pbmZvICp2aW1pID0KIAkJCSAgICAoc3RydWN0IHZpcnRjaG5sX2lycV9tYXBfaW5m
byAqKW1zZzsKLQkJCXZhbGlkX2xlbiArPSAodmltaS0+bnVtX3ZlY3RvcnMgKgotCQkJCSAgICAg
IHNpemVvZihzdHJ1Y3QgdmlydGNobmxfdmVjdG9yX21hcCkpOworCQkJdmFsaWRfbGVuICs9IGZs
ZXhfYXJyYXlfc2l6ZSh2aW1pLCB2ZWNtYXAsCisJCQkJCQkgICAgIHZpbWktPm51bV92ZWN0b3Jz
KTsKIAkJCWlmICh2aW1pLT5udW1fdmVjdG9ycyA9PSAwKQogCQkJCWVycl9tc2dfZm9ybWF0ID0g
dHJ1ZTsKIAkJfQotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
