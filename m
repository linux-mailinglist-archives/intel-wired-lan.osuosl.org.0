Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 50AF5390C89
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 May 2021 00:59:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8FDB640608;
	Tue, 25 May 2021 22:59:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T16WVH0Wfbvd; Tue, 25 May 2021 22:59:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5012040575;
	Tue, 25 May 2021 22:59:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 710FE1BF29F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 May 2021 22:59:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5E39B40600
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 May 2021 22:59:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UM2XhN7nM6Q6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 May 2021 22:59:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4E26440575
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 May 2021 22:59:42 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id E8BD1613D5;
 Tue, 25 May 2021 22:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621983581;
 bh=gTZAgrzB4+T/6N1sAeSXHaiO0/ElpJNF7LZZgYhlfYQ=;
 h=Date:From:To:Cc:Subject:From;
 b=PipcE7xDG+yf/31f2wV1b8p7s8c0CmOAE+z4YUwdAaSwQ5QJp5XOhxU3s18vGKm0b
 bheC0DmbiAyIshUQbGdb00isAsklfM7saJNNl+LqnF6TAtQPrRG4O7qPeU5gkqTO7o
 u9lsT3FlXOK1DrVC7takFogdo6P/s9DSWGxy1wyMdhceKXJWJsk7/lx5rMVyiLLjII
 bDPtNjvD+i3BxO4Reu5+FqHeF0KfYKFjz/qcmiNLKe6tsy1GF98LJ35s9fxdxSCKfd
 dr0C+86CkWhy2E+gA9aDXW/6WM2JkpwGrhfsQ0PiyWgZm+zd2P8sjx8PRJ8uszXIo0
 y9/M/ZOqbF7zA==
Date: Tue, 25 May 2021 18:00:38 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Faisal Latif <faisal.latif@intel.com>,
 Shiraz Saleem <shiraz.saleem@intel.com>,
 Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Message-ID: <20210525230038.GA175516@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-wired-lan] [PATCH][next] i40e: Replace one-element array
 with flexible-array member
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
Cc: linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org
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
ZXhpYmxlLWFycmF5IG1lbWJlciBpbiBzdHJ1Y3QKaTQwZV9xdmxpc3RfaW5mbyBpbnN0ZWFkIG9m
IG9uZS1lbGVtZW50IGFycmF5LCBhbmQgdXNlIHRoZSBzdHJ1Y3Rfc2l6ZSgpCmhlbHBlci4KClsx
XSBodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9GbGV4aWJsZV9hcnJheV9tZW1iZXIKWzJd
IGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvdjUuMTAvcHJvY2Vzcy9kZXByZWNhdGVk
Lmh0bWwjemVyby1sZW5ndGgtYW5kLW9uZS1lbGVtZW50LWFycmF5cwoKTGluazogaHR0cHM6Ly9n
aXRodWIuY29tL0tTUFAvbGludXgvaXNzdWVzLzc5ClNpZ25lZC1vZmYtYnk6IEd1c3Rhdm8gQS4g
Ui4gU2lsdmEgPGd1c3Rhdm9hcnNAa2VybmVsLm9yZz4KLS0tCiBkcml2ZXJzL2luZmluaWJhbmQv
aHcvaTQwaXcvaTQwaXdfbWFpbi5jICAgICAgfCA1ICsrLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pNDBlL2k0MGVfY2xpZW50LmMgfCAyICstCiBpbmNsdWRlL2xpbnV4L25ldC9pbnRl
bC9pNDBlX2NsaWVudC5oICAgICAgICAgfCAyICstCiAzIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2luZmluaWJhbmQv
aHcvaTQwaXcvaTQwaXdfbWFpbi5jIGIvZHJpdmVycy9pbmZpbmliYW5kL2h3L2k0MGl3L2k0MGl3
X21haW4uYwppbmRleCBiNDk2ZjMwY2UwNjYuLjM2NGY2OWNkNjIwZiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9pbmZpbmliYW5kL2h3L2k0MGl3L2k0MGl3X21haW4uYworKysgYi9kcml2ZXJzL2luZmlu
aWJhbmQvaHcvaTQwaXcvaTQwaXdfbWFpbi5jCkBAIC0xNDIzLDcgKzE0MjMsNyBAQCBzdGF0aWMg
ZW51bSBpNDBpd19zdGF0dXNfY29kZSBpNDBpd19zYXZlX21zaXhfaW5mbyhzdHJ1Y3QgaTQwaXdf
ZGV2aWNlICppd2RldiwKIAlzdHJ1Y3QgaTQwZV9xdl9pbmZvICppd19xdmluZm87CiAJdTMyIGNl
cV9pZHg7CiAJdTMyIGk7Ci0JdTMyIHNpemU7CisJc2l6ZV90IHNpemU7CiAKIAlpZiAoIWxkZXYt
Pm1zaXhfY291bnQpIHsKIAkJaTQwaXdfcHJfZXJyKCJObyBNU0ktWCB2ZWN0b3JzXG4iKTsKQEAg
LTE0MzMsOCArMTQzMyw3IEBAIHN0YXRpYyBlbnVtIGk0MGl3X3N0YXR1c19jb2RlIGk0MGl3X3Nh
dmVfbXNpeF9pbmZvKHN0cnVjdCBpNDBpd19kZXZpY2UgKml3ZGV2LAogCWl3ZGV2LT5tc2l4X2Nv
dW50ID0gbGRldi0+bXNpeF9jb3VudDsKIAogCXNpemUgPSBzaXplb2Yoc3RydWN0IGk0MGl3X21z
aXhfdmVjdG9yKSAqIGl3ZGV2LT5tc2l4X2NvdW50OwotCXNpemUgKz0gc2l6ZW9mKHN0cnVjdCBp
NDBlX3F2bGlzdF9pbmZvKTsKLQlzaXplICs9ICBzaXplb2Yoc3RydWN0IGk0MGVfcXZfaW5mbykg
KiBpd2Rldi0+bXNpeF9jb3VudCAtIDE7CisJc2l6ZSArPSBzdHJ1Y3Rfc2l6ZShpd19xdmxpc3Qs
IHF2X2luZm8sIGl3ZGV2LT5tc2l4X2NvdW50KTsKIAlpd2Rldi0+aXdfbXNpeHRibCA9IGt6YWxs
b2Moc2l6ZSwgR0ZQX0tFUk5FTCk7CiAKIAlpZiAoIWl3ZGV2LT5pd19tc2l4dGJsKQpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2NsaWVudC5jIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2NsaWVudC5jCmluZGV4IDMyZjNmYWNi
ZWQxYS4uNjNlYWIxNGEyNmRmIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pNDBlL2k0MGVfY2xpZW50LmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQw
ZS9pNDBlX2NsaWVudC5jCkBAIC01NzksNyArNTc5LDcgQEAgc3RhdGljIGludCBpNDBlX2NsaWVu
dF9zZXR1cF9xdmxpc3Qoc3RydWN0IGk0MGVfaW5mbyAqbGRldiwKIAl1MzIgdl9pZHgsIGksIHJl
Z19pZHgsIHJlZzsKIAogCWxkZXYtPnF2bGlzdF9pbmZvID0ga3phbGxvYyhzdHJ1Y3Rfc2l6ZShs
ZGV2LT5xdmxpc3RfaW5mbywgcXZfaW5mbywKLQkJCQkgICAgcXZsaXN0X2luZm8tPm51bV92ZWN0
b3JzIC0gMSksIEdGUF9LRVJORUwpOworCQkJCSAgICBxdmxpc3RfaW5mby0+bnVtX3ZlY3RvcnMp
LCBHRlBfS0VSTkVMKTsKIAlpZiAoIWxkZXYtPnF2bGlzdF9pbmZvKQogCQlyZXR1cm4gLUVOT01F
TTsKIAlsZGV2LT5xdmxpc3RfaW5mby0+bnVtX3ZlY3RvcnMgPSBxdmxpc3RfaW5mby0+bnVtX3Zl
Y3RvcnM7CmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L25ldC9pbnRlbC9pNDBlX2NsaWVudC5o
IGIvaW5jbHVkZS9saW51eC9uZXQvaW50ZWwvaTQwZV9jbGllbnQuaAppbmRleCBmNDEzODdhODk2
OWYuLmZkN2JjODYwYTI0MSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9uZXQvaW50ZWwvaTQw
ZV9jbGllbnQuaAorKysgYi9pbmNsdWRlL2xpbnV4L25ldC9pbnRlbC9pNDBlX2NsaWVudC5oCkBA
IC00OCw3ICs0OCw3IEBAIHN0cnVjdCBpNDBlX3F2X2luZm8gewogCiBzdHJ1Y3QgaTQwZV9xdmxp
c3RfaW5mbyB7CiAJdTMyIG51bV92ZWN0b3JzOwotCXN0cnVjdCBpNDBlX3F2X2luZm8gcXZfaW5m
b1sxXTsKKwlzdHJ1Y3QgaTQwZV9xdl9pbmZvIHF2X2luZm9bXTsKIH07CiAKIAotLSAKMi4yNy4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13
aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8v
bGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
