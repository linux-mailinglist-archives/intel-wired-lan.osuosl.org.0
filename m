Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A28BD390CB2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 May 2021 01:03:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3E6D7404DA;
	Tue, 25 May 2021 23:03:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xy1sTAeI66KQ; Tue, 25 May 2021 23:03:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2B411404D6;
	Tue, 25 May 2021 23:03:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 383341BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 May 2021 23:03:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2658640575
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 May 2021 23:03:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vZzaBK_CvQr7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 May 2021 23:03:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 171394056E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 May 2021 23:03:32 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id C20856140E;
 Tue, 25 May 2021 23:03:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621983812;
 bh=QhxsvamSXMWJxqaGVeAw0Ze987ooYgGDqsvI+KEZSIk=;
 h=Date:From:To:Cc:Subject:From;
 b=Bp0mlq2EKIPZvf9XmmkTUdmIkI2dY+67ntwk4C++tjVm6zgtmEe3L4RaWKkN6e02i
 N28mg4Yoptncrlwwc05oq/iZgRcgNsUr4KF4Dz3SACUNQEBtGOdo9QTkH0zNp6ZDVC
 ilH8FPj7IZ5fEkHREABt/aiHV7GVBMWDFtHpzEMzmAeRjIroXSa6foQGyhslv1o2Ax
 ZLVva3a6eK7TWb9J+WFlWmpLYQ34U5cJ77hC8T8DcPGORZ3L9QPypOqvZDcz3thSph
 7fD80ezGAkYPu40G2DOQBqMArLVI/PQnLboenTluCLl29ELLZuQ7dn3FmIdZkvxWe0
 BTlmFeTdhEjBg==
Date: Tue, 25 May 2021 18:04:29 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Message-ID: <20210525230429.GA175658@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-wired-lan] [PATCH][next] iavf: Replace one-element array in
 struct virtchnl_iwarp_qvlist_info and iavf_qvlist_info
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
Cc: linux-hardening@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
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
ZXhpYmxlLWFycmF5IG1lbWJlciBpbiBzdHJ1Y3QKdmlydGNobmxfaXdhcnBfcXZsaXN0X2luZm8g
YW5kIGlhdmZfcXZsaXN0X2luZm8gaW5zdGVhZCBvZiBvbmUtZWxlbWVudCBhcnJheSwKYW5kIHVz
ZSB0aGUgZmxleF9hcnJheV9zaXplKCkgaGVscGVyLgoKWzFdIGh0dHBzOi8vZW4ud2lraXBlZGlh
Lm9yZy93aWtpL0ZsZXhpYmxlX2FycmF5X21lbWJlcgpbMl0gaHR0cHM6Ly93d3cua2VybmVsLm9y
Zy9kb2MvaHRtbC92NS4xMC9wcm9jZXNzL2RlcHJlY2F0ZWQuaHRtbCN6ZXJvLWxlbmd0aC1hbmQt
b25lLWVsZW1lbnQtYXJyYXlzCgpMaW5rOiBodHRwczovL2dpdGh1Yi5jb20vS1NQUC9saW51eC9p
c3N1ZXMvNzkKU2lnbmVkLW9mZi1ieTogR3VzdGF2byBBLiBSLiBTaWx2YSA8Z3VzdGF2b2Fyc0Br
ZXJuZWwub3JnPgotLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV92aXJ0
Y2hubF9wZi5jIHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX2Ns
aWVudC5jICAgICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZf
Y2xpZW50LmggICAgICB8IDIgKy0KIGluY2x1ZGUvbGludXgvYXZmL3ZpcnRjaG5sLmggICAgICAg
ICAgICAgICAgICAgICAgIHwgOCArKysrLS0tLQogNCBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlv
bnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaTQwZS9pNDBlX3ZpcnRjaG5sX3BmLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pNDBlL2k0MGVfdmlydGNobmxfcGYuYwppbmRleCBjMGFmYWM4Y2YzM2IuLjZjNTVmZTljYzEz
MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3ZpcnRj
aG5sX3BmLmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3ZpcnRj
aG5sX3BmLmMKQEAgLTUxNSw3ICs1MTUsNyBAQCBzdGF0aWMgaW50IGk0MGVfY29uZmlnX2l3YXJw
X3F2bGlzdChzdHJ1Y3QgaTQwZV92ZiAqdmYsCiAKIAlrZnJlZSh2Zi0+cXZsaXN0X2luZm8pOwog
CXZmLT5xdmxpc3RfaW5mbyA9IGt6YWxsb2Moc3RydWN0X3NpemUodmYtPnF2bGlzdF9pbmZvLCBx
dl9pbmZvLAotCQkJCQkgICAgICBxdmxpc3RfaW5mby0+bnVtX3ZlY3RvcnMgLSAxKSwKKwkJCQkJ
ICAgICAgcXZsaXN0X2luZm8tPm51bV92ZWN0b3JzKSwKIAkJCQkgIEdGUF9LRVJORUwpOwogCWlm
ICghdmYtPnF2bGlzdF9pbmZvKSB7CiAJCXJldCA9IC1FTk9NRU07CmRpZmYgLS1naXQgYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfY2xpZW50LmMgYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfY2xpZW50LmMKaW5kZXggMGM3N2U0MTcxODA4Li5lNzBk
YTA1ZWYzMjIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2
Zl9jbGllbnQuYworKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfY2xp
ZW50LmMKQEAgLTQ3MCw3ICs0NzAsNyBAQCBzdGF0aWMgaW50IGlhdmZfY2xpZW50X3NldHVwX3F2
bGlzdChzdHJ1Y3QgaWF2Zl9pbmZvICpsZGV2LAogCiAJdl9xdmxpc3RfaW5mbyA9IChzdHJ1Y3Qg
dmlydGNobmxfaXdhcnBfcXZsaXN0X2luZm8gKilxdmxpc3RfaW5mbzsKIAltc2dfc2l6ZSA9IHN0
cnVjdF9zaXplKHZfcXZsaXN0X2luZm8sIHF2X2luZm8sCi0JCQkgICAgICAgdl9xdmxpc3RfaW5m
by0+bnVtX3ZlY3RvcnMgLSAxKTsKKwkJCSAgICAgICB2X3F2bGlzdF9pbmZvLT5udW1fdmVjdG9y
cyk7CiAKIAlhZGFwdGVyLT5jbGllbnRfcGVuZGluZyB8PSBCSVQoVklSVENITkxfT1BfQ09ORklH
X0lXQVJQX0lSUV9NQVApOwogCWVyciA9IGlhdmZfYXFfc2VuZF9tc2dfdG9fcGYoJmFkYXB0ZXIt
Pmh3LApkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX2Ns
aWVudC5oIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX2NsaWVudC5oCmlu
ZGV4IDlhN2NmMzllYTc1YS4uYjE0YTgyYjY1NjI2IDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfY2xpZW50LmgKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWF2Zi9pYXZmX2NsaWVudC5oCkBAIC01Myw3ICs1Myw3IEBAIHN0cnVjdCBpYXZm
X3F2X2luZm8gewogCiBzdHJ1Y3QgaWF2Zl9xdmxpc3RfaW5mbyB7CiAJdTMyIG51bV92ZWN0b3Jz
OwotCXN0cnVjdCBpYXZmX3F2X2luZm8gcXZfaW5mb1sxXTsKKwlzdHJ1Y3QgaWF2Zl9xdl9pbmZv
IHF2X2luZm9bXTsKIH07CiAKICNkZWZpbmUgSUFWRl9DTElFTlRfTVNJWF9BTEwgMHhGRkZGRkZG
RgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9hdmYvdmlydGNobmwuaCBiL2luY2x1ZGUvbGlu
dXgvYXZmL3ZpcnRjaG5sLmgKaW5kZXggODVhNjg3YmM2MDk2Li4xNWI5ODI5MTEzMjEgMTAwNjQ0
Ci0tLSBhL2luY2x1ZGUvbGludXgvYXZmL3ZpcnRjaG5sLmgKKysrIGIvaW5jbHVkZS9saW51eC9h
dmYvdmlydGNobmwuaApAQCAtNjU4LDEwICs2NTgsMTAgQEAgVklSVENITkxfQ0hFQ0tfU1RSVUNU
X0xFTigxMiwgdmlydGNobmxfaXdhcnBfcXZfaW5mbyk7CiAKIHN0cnVjdCB2aXJ0Y2hubF9pd2Fy
cF9xdmxpc3RfaW5mbyB7CiAJdTMyIG51bV92ZWN0b3JzOwotCXN0cnVjdCB2aXJ0Y2hubF9pd2Fy
cF9xdl9pbmZvIHF2X2luZm9bMV07CisJc3RydWN0IHZpcnRjaG5sX2l3YXJwX3F2X2luZm8gcXZf
aW5mb1tdOwogfTsKIAotVklSVENITkxfQ0hFQ0tfU1RSVUNUX0xFTigxNiwgdmlydGNobmxfaXdh
cnBfcXZsaXN0X2luZm8pOworVklSVENITkxfQ0hFQ0tfU1RSVUNUX0xFTig0LCB2aXJ0Y2hubF9p
d2FycF9xdmxpc3RfaW5mbyk7CiAKIC8qIFZGIHJlc2V0IHN0YXRlcyAtIHRoZXNlIGFyZSB3cml0
dGVuIGludG8gdGhlIFJTVEFUIHJlZ2lzdGVyOgogICogVkZHRU5fUlNUQVQgb24gdGhlIFZGCkBA
IC0xMDY5LDggKzEwNjksOCBAQCB2aXJ0Y2hubF92Y192YWxpZGF0ZV92Zl9tc2coc3RydWN0IHZp
cnRjaG5sX3ZlcnNpb25faW5mbyAqdmVyLCB1MzIgdl9vcGNvZGUsCiAJCQkJZXJyX21zZ19mb3Jt
YXQgPSB0cnVlOwogCQkJCWJyZWFrOwogCQkJfQotCQkJdmFsaWRfbGVuICs9ICgocXYtPm51bV92
ZWN0b3JzIC0gMSkgKgotCQkJCXNpemVvZihzdHJ1Y3QgdmlydGNobmxfaXdhcnBfcXZfaW5mbykp
OworCQkJdmFsaWRfbGVuICs9IGZsZXhfYXJyYXlfc2l6ZShxdiwgcXZfaW5mbywKKwkJCQkJCSAg
ICAgcXYtPm51bV92ZWN0b3JzKTsKIAkJfQogCQlicmVhazsKIAljYXNlIFZJUlRDSE5MX09QX0NP
TkZJR19SU1NfS0VZOgotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVk
LWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLXdpcmVkLWxhbgo=
