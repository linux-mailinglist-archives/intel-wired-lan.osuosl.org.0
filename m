Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 14207390CC6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 May 2021 01:09:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 83B1B60BB6;
	Tue, 25 May 2021 23:09:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jkJutcQiPtO5; Tue, 25 May 2021 23:09:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 819A160629;
	Tue, 25 May 2021 23:09:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7719B1BF479
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 May 2021 23:09:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 64E2840599
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 May 2021 23:09:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LFP1bQWAArSG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 May 2021 23:09:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 608A940282
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 May 2021 23:09:45 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4D31260698;
 Tue, 25 May 2021 23:09:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621984185;
 bh=1IkQtMPV3pvDAz3GCbMK1VEmISi6kSMEwWFVrA8jUo0=;
 h=Date:From:To:Cc:Subject:From;
 b=RB5aUqSs5y5a0IPYATmM/7VYF11+WRr09WqC3gEYEA2Q4zJMK8R+YWGQA/PPfP7RB
 BSJoBgpus6zhTXr3FmYv/nKIH6vUISzRTYbKkAoSIB2m0VVxBi56dZjLJKXJToHg3O
 EKRL90ryK6eCVEyGBBRWK/iPZ2sXjmYsY+dzMfLXnQZ3eLqLHCwZH1c02tadRCALZB
 Oq39UvA77qtT48sggJE3dtXCeHmrPyVBeF0/qLTB6FIabYbB+8XdaXPuG1nEQBLnWZ
 J4TAiAbbA74rCsBZ3WcQS7eO/Qe2cVxvxI88gUJezW3qQoiCpf/O/PYq97VS7Ns+Tm
 DMS1we9IflxIA==
Date: Tue, 25 May 2021 18:10:41 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Message-ID: <20210525231041.GA175914@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-wired-lan] [PATCH][next] iavf: Replace one-element array in
 struct virtchnl_tc_info
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
ZXhpYmxlLWFycmF5IG1lbWJlciBpbiBzdHJ1Y3QKdmlydGNobmxfdGNfaW5mbyBpbnN0ZWFkIG9m
IG9uZS1lbGVtZW50IGFycmF5LCBhbmQgdXNlIHRoZSBmbGV4X2FycmF5X3NpemUoKQpoZWxwZXIu
CgpbMV0gaHR0cHM6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvRmxleGlibGVfYXJyYXlfbWVtYmVy
ClsyXSBodHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9odG1sL3Y1LjEwL3Byb2Nlc3MvZGVwcmVj
YXRlZC5odG1sI3plcm8tbGVuZ3RoLWFuZC1vbmUtZWxlbWVudC1hcnJheXMKCkxpbms6IGh0dHBz
Oi8vZ2l0aHViLmNvbS9LU1BQL2xpbnV4L2lzc3Vlcy83OQpTaWduZWQtb2ZmLWJ5OiBHdXN0YXZv
IEEuIFIuIFNpbHZhIDxndXN0YXZvYXJzQGtlcm5lbC5vcmc+Ci0tLQogZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3ZpcnRjaG5sLmMgfCAyICstCiBpbmNsdWRlL2xpbnV4L2F2
Zi92aXJ0Y2hubC5oICAgICAgICAgICAgICAgICAgICB8IDcgKysrLS0tLQogMiBmaWxlcyBjaGFu
Z2VkLCA0IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3ZpcnRjaG5sLmMgYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfdmlydGNobmwuYwppbmRleCAxMjNhNzM3ZjY5NTUuLmNm
MmFjNTc3YTk2ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9p
YXZmX3ZpcnRjaG5sLmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZm
X3ZpcnRjaG5sLmMKQEAgLTEwMjEsNyArMTAyMSw3IEBAIHZvaWQgaWF2Zl9lbmFibGVfY2hhbm5l
bHMoc3RydWN0IGlhdmZfYWRhcHRlciAqYWRhcHRlcikKIAkJcmV0dXJuOwogCX0KIAotCWxlbiA9
IHN0cnVjdF9zaXplKHZ0aSwgbGlzdCwgYWRhcHRlci0+bnVtX3RjIC0gMSk7CisJbGVuID0gc3Ry
dWN0X3NpemUodnRpLCBsaXN0LCBhZGFwdGVyLT5udW1fdGMpOwogCXZ0aSA9IGt6YWxsb2MobGVu
LCBHRlBfS0VSTkVMKTsKIAlpZiAoIXZ0aSkKIAkJcmV0dXJuOwpkaWZmIC0tZ2l0IGEvaW5jbHVk
ZS9saW51eC9hdmYvdmlydGNobmwuaCBiL2luY2x1ZGUvbGludXgvYXZmL3ZpcnRjaG5sLmgKaW5k
ZXggY2RhMGM5OGNhOTc4Li5iNTU0OTEzODA0YmQgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgv
YXZmL3ZpcnRjaG5sLmgKKysrIGIvaW5jbHVkZS9saW51eC9hdmYvdmlydGNobmwuaApAQCAtNTI5
LDEwICs1MjksMTAgQEAgVklSVENITkxfQ0hFQ0tfU1RSVUNUX0xFTigxNiwgdmlydGNobmxfY2hh
bm5lbF9pbmZvKTsKIHN0cnVjdCB2aXJ0Y2hubF90Y19pbmZvIHsKIAl1MzIJbnVtX3RjOwogCXUz
MglwYWQ7Ci0Jc3RydWN0CXZpcnRjaG5sX2NoYW5uZWxfaW5mbyBsaXN0WzFdOworCXN0cnVjdAl2
aXJ0Y2hubF9jaGFubmVsX2luZm8gbGlzdFtdOwogfTsKIAotVklSVENITkxfQ0hFQ0tfU1RSVUNU
X0xFTigyNCwgdmlydGNobmxfdGNfaW5mbyk7CitWSVJUQ0hOTF9DSEVDS19TVFJVQ1RfTEVOKDgs
IHZpcnRjaG5sX3RjX2luZm8pOwogCiAvKiBWSVJUQ0hOTF9BRERfQ0xPVURfRklMVEVSCiAgKiBW
SVJUQ0hOTF9ERUxfQ0xPVURfRklMVEVSCkBAIC0xMTA2LDggKzExMDYsNyBAQCB2aXJ0Y2hubF92
Y192YWxpZGF0ZV92Zl9tc2coc3RydWN0IHZpcnRjaG5sX3ZlcnNpb25faW5mbyAqdmVyLCB1MzIg
dl9vcGNvZGUsCiAJCWlmIChtc2dsZW4gPj0gdmFsaWRfbGVuKSB7CiAJCQlzdHJ1Y3QgdmlydGNo
bmxfdGNfaW5mbyAqdnRpID0KIAkJCQkoc3RydWN0IHZpcnRjaG5sX3RjX2luZm8gKiltc2c7Ci0J
CQl2YWxpZF9sZW4gKz0gKHZ0aS0+bnVtX3RjIC0gMSkgKgotCQkJCSAgICAgc2l6ZW9mKHN0cnVj
dCB2aXJ0Y2hubF9jaGFubmVsX2luZm8pOworCQkJdmFsaWRfbGVuICs9IGZsZXhfYXJyYXlfc2l6
ZSh2dGksIGxpc3QsIHZ0aS0+bnVtX3RjKTsKIAkJCWlmICh2dGktPm51bV90YyA9PSAwKQogCQkJ
CWVycl9tc2dfZm9ybWF0ID0gdHJ1ZTsKIAkJfQotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBs
aXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
