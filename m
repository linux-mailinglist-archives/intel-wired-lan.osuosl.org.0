Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F6C119685
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Dec 2019 22:28:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5BD32855D7;
	Tue, 10 Dec 2019 21:27:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SmhJpp4b4m90; Tue, 10 Dec 2019 21:27:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AEE328574A;
	Tue, 10 Dec 2019 21:27:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AA4901BF580
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2019 21:10:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A71AB87C2C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2019 21:10:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QpyKMrzB0SYf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Dec 2019 21:10:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 16F3B879A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2019 21:10:12 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 22FE8246B8;
 Tue, 10 Dec 2019 21:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576012211;
 bh=fPVTs/fg7aQhDVEVKsn+kl9tgK6QXcIfCPo695DbGS8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nTe/j59fGQwAwcruTCr1QG/cTeclCTGyAQ9ay6Ql9aJIwLpsKN1kwM3cTcZV3Z5VV
 ZodC40zvjctW5J0NrzBxl7TVqeOwKI+NaCaFpFK0O0++OlqJ1x3UA5zFRcG8jfS1Yx
 fSDoYUpDFfdYi4BcqqdEsjdIqZSSxvfZgnzVCLXY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue, 10 Dec 2019 16:04:28 -0500
Message-Id: <20191210210735.9077-124-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Mailman-Approved-At: Tue, 10 Dec 2019 21:27:55 +0000
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.4 163/350] i40e: Wrong
 'Advertised FEC modes' after set FEC to AUTO
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
Cc: Sasha Levin <sashal@kernel.org>, Jaroslaw Gawin <jaroslawx.gawin@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogSmFyb3NsYXcgR2F3aW4gPGphcm9zbGF3eC5nYXdpbkBpbnRlbC5jb20+CgpbIFVwc3Ry
ZWFtIGNvbW1pdCBlNDJiN2U5Y2VmY2E5ZGQwMDhjYmFmZmZjYTk3Mjg1Y2YyNjRmNzJkIF0KCkZp
eCBkaXNwbGF5IG9mIHBhcmFtZXRlcnMgIkNvbmZpZ3VyZWQgRkVDIGVuY29kaW5nczoiIGFuZCAi
QWR2ZXJ0aXNlZApGRUMgbW9kZXM6IiBpbiBldGh0b29sLiAgSW1wbGVtZW50ZWQgYnkgc2V0dGlu
ZyBwcm9wZXIgRkVDIGJpdHMgaW4K4oCcYWR2ZXJ0aXNpbmfigJ0gYml0bWFzayBvZiBsaW5rX21v
ZGVzIHN0cnVjdCBhbmQg4oCcZmVj4oCdIGJpdG1hc2sgaW4KZXRodG9vbF9mZWNwYXJhbSBzdHJ1
Y3QuIFdpdGhvdXQgdGhpcyBwYXRjaCB3cm9uZyBGRUMgc2V0dGluZ3MKY2FuIGJlIHNob3duLgoK
U2lnbmVkLW9mZi1ieTogSmFyb3NsYXcgR2F3aW4gPGphcm9zbGF3eC5nYXdpbkBpbnRlbC5jb20+
ClRlc3RlZC1ieTogQW5kcmV3IEJvd2VycyA8YW5kcmV3eC5ib3dlcnNAaW50ZWwuY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBKZWZmIEtpcnNoZXIgPGplZmZyZXkudC5raXJzaGVyQGludGVsLmNvbT4KU2ln
bmVkLW9mZi1ieTogU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJuZWwub3JnPgotLS0KIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9jb21tb24uYyB8IDEzICsrKysrKy0tCiAuLi4v
bmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9ldGh0b29sLmMgICAgfCAzMiArKysrKysrKyst
LS0tLS0tLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKyksIDE5IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9j
b21tb24uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9jb21tb24uYwpp
bmRleCA3NTYwZjA2NzY4ZTA2Li4zMTYwYjViYmU2NzI4IDEwMDY0NAotLS0gYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfY29tbW9uLmMKKysrIGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2NvbW1vbi5jCkBAIC0yNTcxLDkgKzI1NzEsMTYgQEAgbm9p
bmxpbmVfZm9yX3N0YWNrIGk0MGVfc3RhdHVzIGk0MGVfdXBkYXRlX2xpbmtfaW5mbyhzdHJ1Y3Qg
aTQwZV9odyAqaHcpCiAJCWlmIChzdGF0dXMpCiAJCQlyZXR1cm4gc3RhdHVzOwogCi0JCWh3LT5w
aHkubGlua19pbmZvLnJlcV9mZWNfaW5mbyA9Ci0JCQlhYmlsaXRpZXMuZmVjX2NmZ19jdXJyX21v
ZF9leHRfaW5mbyAmCi0JCQkoSTQwRV9BUV9SRVFVRVNUX0ZFQ19LUiB8IEk0MEVfQVFfUkVRVUVT
VF9GRUNfUlMpOworCQlpZiAoYWJpbGl0aWVzLmZlY19jZmdfY3Vycl9tb2RfZXh0X2luZm8gJgor
CQkgICAgSTQwRV9BUV9FTkFCTEVfRkVDX0FVVE8pCisJCQlody0+cGh5LmxpbmtfaW5mby5yZXFf
ZmVjX2luZm8gPQorCQkJCShJNDBFX0FRX1JFUVVFU1RfRkVDX0tSIHwKKwkJCQkgSTQwRV9BUV9S
RVFVRVNUX0ZFQ19SUyk7CisJCWVsc2UKKwkJCWh3LT5waHkubGlua19pbmZvLnJlcV9mZWNfaW5m
byA9CisJCQkJYWJpbGl0aWVzLmZlY19jZmdfY3Vycl9tb2RfZXh0X2luZm8gJgorCQkJCShJNDBF
X0FRX1JFUVVFU1RfRkVDX0tSIHwKKwkJCQkgSTQwRV9BUV9SRVFVRVNUX0ZFQ19SUyk7CiAKIAkJ
bWVtY3B5KGh3LT5waHkubGlua19pbmZvLm1vZHVsZV90eXBlLCAmYWJpbGl0aWVzLm1vZHVsZV90
eXBlLAogCQkgICAgICAgc2l6ZW9mKGh3LT5waHkubGlua19pbmZvLm1vZHVsZV90eXBlKSk7CmRp
ZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfZXRodG9vbC5j
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2V0aHRvb2wuYwppbmRleCA0
MWUxMjQwYWNhZWE1Li5iNTc3ZTZhZGYzYmZmIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pNDBlL2k0MGVfZXRodG9vbC5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2k0MGUvaTQwZV9ldGh0b29sLmMKQEAgLTcyMiw3ICs3MjIsMTQgQEAgc3RhdGljIHZv
aWQgaTQwZV9nZXRfc2V0dGluZ3NfbGlua191cF9mZWModTggcmVxX2ZlY19pbmZvLAogCWV0aHRv
b2xfbGlua19rc2V0dGluZ3NfYWRkX2xpbmtfbW9kZShrcywgc3VwcG9ydGVkLCBGRUNfUlMpOwog
CWV0aHRvb2xfbGlua19rc2V0dGluZ3NfYWRkX2xpbmtfbW9kZShrcywgc3VwcG9ydGVkLCBGRUNf
QkFTRVIpOwogCi0JaWYgKEk0MEVfQVFfU0VUX0ZFQ19SRVFVRVNUX1JTICYgcmVxX2ZlY19pbmZv
KSB7CisJaWYgKChJNDBFX0FRX1NFVF9GRUNfUkVRVUVTVF9SUyAmIHJlcV9mZWNfaW5mbykgJiYK
KwkgICAgKEk0MEVfQVFfU0VUX0ZFQ19SRVFVRVNUX0tSICYgcmVxX2ZlY19pbmZvKSkgeworCQll
dGh0b29sX2xpbmtfa3NldHRpbmdzX2FkZF9saW5rX21vZGUoa3MsIGFkdmVydGlzaW5nLAorCQkJ
CQkJICAgICBGRUNfTk9ORSk7CisJCWV0aHRvb2xfbGlua19rc2V0dGluZ3NfYWRkX2xpbmtfbW9k
ZShrcywgYWR2ZXJ0aXNpbmcsCisJCQkJCQkgICAgIEZFQ19CQVNFUik7CisJCWV0aHRvb2xfbGlu
a19rc2V0dGluZ3NfYWRkX2xpbmtfbW9kZShrcywgYWR2ZXJ0aXNpbmcsIEZFQ19SUyk7CisJfSBl
bHNlIGlmIChJNDBFX0FRX1NFVF9GRUNfUkVRVUVTVF9SUyAmIHJlcV9mZWNfaW5mbykgewogCQll
dGh0b29sX2xpbmtfa3NldHRpbmdzX2FkZF9saW5rX21vZGUoa3MsIGFkdmVydGlzaW5nLCBGRUNf
UlMpOwogCX0gZWxzZSBpZiAoSTQwRV9BUV9TRVRfRkVDX1JFUVVFU1RfS1IgJiByZXFfZmVjX2lu
Zm8pIHsKIAkJZXRodG9vbF9saW5rX2tzZXR0aW5nc19hZGRfbGlua19tb2RlKGtzLCBhZHZlcnRp
c2luZywKQEAgLTczMCwxMiArNzM3LDYgQEAgc3RhdGljIHZvaWQgaTQwZV9nZXRfc2V0dGluZ3Nf
bGlua191cF9mZWModTggcmVxX2ZlY19pbmZvLAogCX0gZWxzZSB7CiAJCWV0aHRvb2xfbGlua19r
c2V0dGluZ3NfYWRkX2xpbmtfbW9kZShrcywgYWR2ZXJ0aXNpbmcsCiAJCQkJCQkgICAgIEZFQ19O
T05FKTsKLQkJaWYgKEk0MEVfQVFfU0VUX0ZFQ19BVVRPICYgcmVxX2ZlY19pbmZvKSB7Ci0JCQll
dGh0b29sX2xpbmtfa3NldHRpbmdzX2FkZF9saW5rX21vZGUoa3MsIGFkdmVydGlzaW5nLAotCQkJ
CQkJCSAgICAgRkVDX1JTKTsKLQkJCWV0aHRvb2xfbGlua19rc2V0dGluZ3NfYWRkX2xpbmtfbW9k
ZShrcywgYWR2ZXJ0aXNpbmcsCi0JCQkJCQkJICAgICBGRUNfQkFTRVIpOwotCQl9CiAJfQogfQog
CkBAIC0xNDM3LDYgKzE0MzgsNyBAQCBzdGF0aWMgaW50IGk0MGVfZ2V0X2ZlY19wYXJhbShzdHJ1
Y3QgbmV0X2RldmljZSAqbmV0ZGV2LAogCXN0cnVjdCBpNDBlX2h3ICpodyA9ICZwZi0+aHc7CiAJ
aTQwZV9zdGF0dXMgc3RhdHVzID0gMDsKIAlpbnQgZXJyID0gMDsKKwl1OCBmZWNfY2ZnOwogCiAJ
LyogR2V0IHRoZSBjdXJyZW50IHBoeSBjb25maWcgKi8KIAltZW1zZXQoJmFiaWxpdGllcywgMCwg
c2l6ZW9mKGFiaWxpdGllcykpOwpAQCAtMTQ0OCwxOCArMTQ1MCwxNiBAQCBzdGF0aWMgaW50IGk0
MGVfZ2V0X2ZlY19wYXJhbShzdHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2LAogCX0KIAogCWZlY3Bh
cmFtLT5mZWMgPSAwOwotCWlmIChhYmlsaXRpZXMuZmVjX2NmZ19jdXJyX21vZF9leHRfaW5mbyAm
IEk0MEVfQVFfU0VUX0ZFQ19BVVRPKQorCWZlY19jZmcgPSBhYmlsaXRpZXMuZmVjX2NmZ19jdXJy
X21vZF9leHRfaW5mbzsKKwlpZiAoZmVjX2NmZyAmIEk0MEVfQVFfU0VUX0ZFQ19BVVRPKQogCQlm
ZWNwYXJhbS0+ZmVjIHw9IEVUSFRPT0xfRkVDX0FVVE87Ci0JaWYgKChhYmlsaXRpZXMuZmVjX2Nm
Z19jdXJyX21vZF9leHRfaW5mbyAmCi0JICAgICBJNDBFX0FRX1NFVF9GRUNfUkVRVUVTVF9SUykg
fHwKLQkgICAgKGFiaWxpdGllcy5mZWNfY2ZnX2N1cnJfbW9kX2V4dF9pbmZvICYKLQkgICAgIEk0
MEVfQVFfU0VUX0ZFQ19BQklMSVRZX1JTKSkKKwllbHNlIGlmIChmZWNfY2ZnICYgKEk0MEVfQVFf
U0VUX0ZFQ19SRVFVRVNUX1JTIHwKKwkJIEk0MEVfQVFfU0VUX0ZFQ19BQklMSVRZX1JTKSkKIAkJ
ZmVjcGFyYW0tPmZlYyB8PSBFVEhUT09MX0ZFQ19SUzsKLQlpZiAoKGFiaWxpdGllcy5mZWNfY2Zn
X2N1cnJfbW9kX2V4dF9pbmZvICYKLQkgICAgIEk0MEVfQVFfU0VUX0ZFQ19SRVFVRVNUX0tSKSB8
fAotCSAgICAoYWJpbGl0aWVzLmZlY19jZmdfY3Vycl9tb2RfZXh0X2luZm8gJiBJNDBFX0FRX1NF
VF9GRUNfQUJJTElUWV9LUikpCisJZWxzZSBpZiAoZmVjX2NmZyAmIChJNDBFX0FRX1NFVF9GRUNf
UkVRVUVTVF9LUiB8CisJCSBJNDBFX0FRX1NFVF9GRUNfQUJJTElUWV9LUikpCiAJCWZlY3BhcmFt
LT5mZWMgfD0gRVRIVE9PTF9GRUNfQkFTRVI7Ci0JaWYgKGFiaWxpdGllcy5mZWNfY2ZnX2N1cnJf
bW9kX2V4dF9pbmZvID09IDApCisJaWYgKGZlY19jZmcgPT0gMCkKIAkJZmVjcGFyYW0tPmZlYyB8
PSBFVEhUT09MX0ZFQ19PRkY7CiAKIAlpZiAoaHctPnBoeS5saW5rX2luZm8uZmVjX2luZm8gJiBJ
NDBFX0FRX0NPTkZJR19GRUNfS1JfRU5BKQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0
CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
