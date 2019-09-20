Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F558B96A8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Sep 2019 19:40:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5BEF285A6E;
	Fri, 20 Sep 2019 17:40:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zQ2dg5CKrJ5Q; Fri, 20 Sep 2019 17:40:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6072885A74;
	Fri, 20 Sep 2019 17:40:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 06F8F1BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2019 17:39:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 03DF485764
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2019 17:39:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qW_6OBFaJex0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Sep 2019 17:39:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AB501857C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2019 17:39:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Sep 2019 10:39:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,529,1559545200"; d="scan'208";a="212635326"
Received: from alicemic-1.jf.intel.com ([10.166.17.62])
 by fmsmga004.fm.intel.com with ESMTP; 20 Sep 2019 10:39:51 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.michael@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Sep 2019 02:17:17 -0700
Message-Id: <20190920091724.51767-3-alice.michael@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190920091724.51767-1-alice.michael@intel.com>
References: <20190920091724.51767-1-alice.michael@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH S10 03/10] i40e: Wrong 'Advertised
 FEC modes' after set FEC to AUTO
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
Cc: Jaroslaw Gawin <jaroslawx.gawin@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogSmFyb3NsYXcgR2F3aW4gPGphcm9zbGF3eC5nYXdpbkBpbnRlbC5jb20+CgpGaXggZGlz
cGxheSBvZiBwYXJhbWV0ZXJzICJDb25maWd1cmVkIEZFQyBlbmNvZGluZ3M6IiBhbmQgIkFkdmVy
dGlzZWQKRkVDIG1vZGVzOiIgaW4gZXRodG9vbC4gIEltcGxlbWVudGVkIGJ5IHNldHRpbmcgcHJv
cGVyIEZFQyBiaXRzIGluCuKAnGFkdmVydGlzaW5n4oCdIGJpdG1hc2sgb2YgbGlua19tb2RlcyBz
dHJ1Y3QgYW5kIOKAnGZlY+KAnSBiaXRtYXNrIGluCmV0aHRvb2xfZmVjcGFyYW0gc3RydWN0LiBX
aXRob3V0IHRoaXMgcGF0Y2ggd3JvbmcgRkVDIHNldHRpbmdzCmNhbiBiZSBzaG93bi4KClNpZ25l
ZC1vZmYtYnk6IEphcm9zbGF3IEdhd2luIDxqYXJvc2xhd3guZ2F3aW5AaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9jb21tb24uYyB8IDEzICsrKysr
Ky0tCiAuLi4vbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9ldGh0b29sLmMgICAgfCAzMiAr
KysrKysrKystLS0tLS0tLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKyksIDE5
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0
MGUvaTQwZV9jb21tb24uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9j
b21tb24uYwppbmRleCBkMzdjNmUwZTVmMDguLmYxZDY3MjY3Yzk4MyAxMDA2NDQKLS0tIGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2NvbW1vbi5jCisrKyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9jb21tb24uYwpAQCAtMjU3MCw5ICsyNTcwLDE2
IEBAIG5vaW5saW5lX2Zvcl9zdGFjayBpNDBlX3N0YXR1cyBpNDBlX3VwZGF0ZV9saW5rX2luZm8o
c3RydWN0IGk0MGVfaHcgKmh3KQogCQlpZiAoc3RhdHVzKQogCQkJcmV0dXJuIHN0YXR1czsKIAot
CQlody0+cGh5LmxpbmtfaW5mby5yZXFfZmVjX2luZm8gPQotCQkJYWJpbGl0aWVzLmZlY19jZmdf
Y3Vycl9tb2RfZXh0X2luZm8gJgotCQkJKEk0MEVfQVFfUkVRVUVTVF9GRUNfS1IgfCBJNDBFX0FR
X1JFUVVFU1RfRkVDX1JTKTsKKwkJaWYgKGFiaWxpdGllcy5mZWNfY2ZnX2N1cnJfbW9kX2V4dF9p
bmZvICYKKwkJICAgIEk0MEVfQVFfRU5BQkxFX0ZFQ19BVVRPKQorCQkJaHctPnBoeS5saW5rX2lu
Zm8ucmVxX2ZlY19pbmZvID0KKwkJCQkoSTQwRV9BUV9SRVFVRVNUX0ZFQ19LUiB8CisJCQkJIEk0
MEVfQVFfUkVRVUVTVF9GRUNfUlMpOworCQllbHNlCisJCQlody0+cGh5LmxpbmtfaW5mby5yZXFf
ZmVjX2luZm8gPQorCQkJCWFiaWxpdGllcy5mZWNfY2ZnX2N1cnJfbW9kX2V4dF9pbmZvICYKKwkJ
CQkoSTQwRV9BUV9SRVFVRVNUX0ZFQ19LUiB8CisJCQkJIEk0MEVfQVFfUkVRVUVTVF9GRUNfUlMp
OwogCiAJCW1lbWNweShody0+cGh5LmxpbmtfaW5mby5tb2R1bGVfdHlwZSwgJmFiaWxpdGllcy5t
b2R1bGVfdHlwZSwKIAkJICAgICAgIHNpemVvZihody0+cGh5LmxpbmtfaW5mby5tb2R1bGVfdHlw
ZSkpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2V0
aHRvb2wuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9ldGh0b29sLmMK
aW5kZXggYzgxNGM3NTZiNGJiLi43NjViYzUxNzRlYWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9ldGh0b29sLmMKKysrIGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2V0aHRvb2wuYwpAQCAtNzYxLDcgKzc2MSwxNCBAQCBzdGF0
aWMgdm9pZCBpNDBlX2dldF9zZXR0aW5nc19saW5rX3VwX2ZlYyh1OCByZXFfZmVjX2luZm8sCiAJ
ZXRodG9vbF9saW5rX2tzZXR0aW5nc19hZGRfbGlua19tb2RlKGtzLCBzdXBwb3J0ZWQsIEZFQ19S
Uyk7CiAJZXRodG9vbF9saW5rX2tzZXR0aW5nc19hZGRfbGlua19tb2RlKGtzLCBzdXBwb3J0ZWQs
IEZFQ19CQVNFUik7CiAKLQlpZiAoSTQwRV9BUV9TRVRfRkVDX1JFUVVFU1RfUlMgJiByZXFfZmVj
X2luZm8pIHsKKwlpZiAoKEk0MEVfQVFfU0VUX0ZFQ19SRVFVRVNUX1JTICYgcmVxX2ZlY19pbmZv
KSAmJgorCSAgICAoSTQwRV9BUV9TRVRfRkVDX1JFUVVFU1RfS1IgJiByZXFfZmVjX2luZm8pKSB7
CisJCWV0aHRvb2xfbGlua19rc2V0dGluZ3NfYWRkX2xpbmtfbW9kZShrcywgYWR2ZXJ0aXNpbmcs
CisJCQkJCQkgICAgIEZFQ19OT05FKTsKKwkJZXRodG9vbF9saW5rX2tzZXR0aW5nc19hZGRfbGlu
a19tb2RlKGtzLCBhZHZlcnRpc2luZywKKwkJCQkJCSAgICAgRkVDX0JBU0VSKTsKKwkJZXRodG9v
bF9saW5rX2tzZXR0aW5nc19hZGRfbGlua19tb2RlKGtzLCBhZHZlcnRpc2luZywgRkVDX1JTKTsK
Kwl9IGVsc2UgaWYgKEk0MEVfQVFfU0VUX0ZFQ19SRVFVRVNUX1JTICYgcmVxX2ZlY19pbmZvKSB7
CiAJCWV0aHRvb2xfbGlua19rc2V0dGluZ3NfYWRkX2xpbmtfbW9kZShrcywgYWR2ZXJ0aXNpbmcs
IEZFQ19SUyk7CiAJfSBlbHNlIGlmIChJNDBFX0FRX1NFVF9GRUNfUkVRVUVTVF9LUiAmIHJlcV9m
ZWNfaW5mbykgewogCQlldGh0b29sX2xpbmtfa3NldHRpbmdzX2FkZF9saW5rX21vZGUoa3MsIGFk
dmVydGlzaW5nLApAQCAtNzY5LDEyICs3NzYsNiBAQCBzdGF0aWMgdm9pZCBpNDBlX2dldF9zZXR0
aW5nc19saW5rX3VwX2ZlYyh1OCByZXFfZmVjX2luZm8sCiAJfSBlbHNlIHsKIAkJZXRodG9vbF9s
aW5rX2tzZXR0aW5nc19hZGRfbGlua19tb2RlKGtzLCBhZHZlcnRpc2luZywKIAkJCQkJCSAgICAg
RkVDX05PTkUpOwotCQlpZiAoSTQwRV9BUV9TRVRfRkVDX0FVVE8gJiByZXFfZmVjX2luZm8pIHsK
LQkJCWV0aHRvb2xfbGlua19rc2V0dGluZ3NfYWRkX2xpbmtfbW9kZShrcywgYWR2ZXJ0aXNpbmcs
Ci0JCQkJCQkJICAgICBGRUNfUlMpOwotCQkJZXRodG9vbF9saW5rX2tzZXR0aW5nc19hZGRfbGlu
a19tb2RlKGtzLCBhZHZlcnRpc2luZywKLQkJCQkJCQkgICAgIEZFQ19CQVNFUik7Ci0JCX0KIAl9
CiB9CiAKQEAgLTE0NzYsNiArMTQ3Nyw3IEBAIHN0YXRpYyBpbnQgaTQwZV9nZXRfZmVjX3BhcmFt
KHN0cnVjdCBuZXRfZGV2aWNlICpuZXRkZXYsCiAJc3RydWN0IGk0MGVfaHcgKmh3ID0gJnBmLT5o
dzsKIAlpNDBlX3N0YXR1cyBzdGF0dXMgPSAwOwogCWludCBlcnIgPSAwOworCXU4IGZlY19jZmc7
CiAKIAkvKiBHZXQgdGhlIGN1cnJlbnQgcGh5IGNvbmZpZyAqLwogCW1lbXNldCgmYWJpbGl0aWVz
LCAwLCBzaXplb2YoYWJpbGl0aWVzKSk7CkBAIC0xNDg3LDE4ICsxNDg5LDE2IEBAIHN0YXRpYyBp
bnQgaTQwZV9nZXRfZmVjX3BhcmFtKHN0cnVjdCBuZXRfZGV2aWNlICpuZXRkZXYsCiAJfQogCiAJ
ZmVjcGFyYW0tPmZlYyA9IDA7Ci0JaWYgKGFiaWxpdGllcy5mZWNfY2ZnX2N1cnJfbW9kX2V4dF9p
bmZvICYgSTQwRV9BUV9TRVRfRkVDX0FVVE8pCisJZmVjX2NmZyA9IGFiaWxpdGllcy5mZWNfY2Zn
X2N1cnJfbW9kX2V4dF9pbmZvOworCWlmIChmZWNfY2ZnICYgSTQwRV9BUV9TRVRfRkVDX0FVVE8p
CiAJCWZlY3BhcmFtLT5mZWMgfD0gRVRIVE9PTF9GRUNfQVVUTzsKLQlpZiAoKGFiaWxpdGllcy5m
ZWNfY2ZnX2N1cnJfbW9kX2V4dF9pbmZvICYKLQkgICAgIEk0MEVfQVFfU0VUX0ZFQ19SRVFVRVNU
X1JTKSB8fAotCSAgICAoYWJpbGl0aWVzLmZlY19jZmdfY3Vycl9tb2RfZXh0X2luZm8gJgotCSAg
ICAgSTQwRV9BUV9TRVRfRkVDX0FCSUxJVFlfUlMpKQorCWVsc2UgaWYgKGZlY19jZmcgJiAoSTQw
RV9BUV9TRVRfRkVDX1JFUVVFU1RfUlMgfAorCQkgSTQwRV9BUV9TRVRfRkVDX0FCSUxJVFlfUlMp
KQogCQlmZWNwYXJhbS0+ZmVjIHw9IEVUSFRPT0xfRkVDX1JTOwotCWlmICgoYWJpbGl0aWVzLmZl
Y19jZmdfY3Vycl9tb2RfZXh0X2luZm8gJgotCSAgICAgSTQwRV9BUV9TRVRfRkVDX1JFUVVFU1Rf
S1IpIHx8Ci0JICAgIChhYmlsaXRpZXMuZmVjX2NmZ19jdXJyX21vZF9leHRfaW5mbyAmIEk0MEVf
QVFfU0VUX0ZFQ19BQklMSVRZX0tSKSkKKwllbHNlIGlmIChmZWNfY2ZnICYgKEk0MEVfQVFfU0VU
X0ZFQ19SRVFVRVNUX0tSIHwKKwkJIEk0MEVfQVFfU0VUX0ZFQ19BQklMSVRZX0tSKSkKIAkJZmVj
cGFyYW0tPmZlYyB8PSBFVEhUT09MX0ZFQ19CQVNFUjsKLQlpZiAoYWJpbGl0aWVzLmZlY19jZmdf
Y3Vycl9tb2RfZXh0X2luZm8gPT0gMCkKKwlpZiAoZmVjX2NmZyA9PSAwKQogCQlmZWNwYXJhbS0+
ZmVjIHw9IEVUSFRPT0xfRkVDX09GRjsKIAogCWlmIChody0+cGh5LmxpbmtfaW5mby5mZWNfaW5m
byAmIEk0MEVfQVFfQ09ORklHX0ZFQ19LUl9FTkEpCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5n
IGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
