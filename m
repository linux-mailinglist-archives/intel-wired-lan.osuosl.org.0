Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CB568DDDA
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Feb 2023 17:25:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C4B481EA6;
	Tue,  7 Feb 2023 16:25:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C4B481EA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675787118;
	bh=ROm4/Jos9JR0Htsl8K68gMmRg/DCdxr6lxmNxewPmBs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=b+xdKTePH4BvS8qQwLd4d5arcUe4CVS2IPwGQKFgHO+0USlnFCR4QuSeJqolwQCPL
	 Dvx4408d1aeNOWBofyMHUc9FTXOLOe9CIyQUfZ+/zOpcXoWP7sW4DJhIUhd2fGZPha
	 JGcY8AFgDXYCPD7Hv7JZumvkapDh9vX+TuoiTXET6VUhBs8VJTvQLgB/pTZSwX6CvM
	 7EOnhqMXvcZzbhTaFcvBp5iF5lToDoFRucshEHUKgNTuj92ZQfuyzKMIHP8EwUbDhA
	 x3T6zoJdHrMXKfUzbK5TGRq9YLg6oL83jPJbrDxoJczrNvcyLFmR3bigrn2A1GjI/v
	 3wYUn9EW/B0QQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nz_PMdzVY6ZL; Tue,  7 Feb 2023 16:25:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6166181E67;
	Tue,  7 Feb 2023 16:25:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6166181E67
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A23021BF5F8
 for <intel-wired-lan@osuosl.org>; Tue,  7 Feb 2023 16:25:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7B06C40A4B
 for <intel-wired-lan@osuosl.org>; Tue,  7 Feb 2023 16:25:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B06C40A4B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aSjbiuYoAxB9 for <intel-wired-lan@osuosl.org>;
 Tue,  7 Feb 2023 16:25:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 86A6740120
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 86A6740120
 for <intel-wired-lan@osuosl.org>; Tue,  7 Feb 2023 16:25:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="330842112"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="330842112"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 08:25:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="730494623"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="730494623"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga008.fm.intel.com with ESMTP; 07 Feb 2023 08:25:08 -0800
Received: from baltimore.igk.intel.com (baltimore.igk.intel.com [10.102.21.1])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 057F537844;
 Tue,  7 Feb 2023 16:25:07 +0000 (GMT)
From: Pawel Chmielewski <pawel.chmielewski@intel.com>
To: netdev@vger.kernel.org
Date: Tue,  7 Feb 2023 17:23:03 +0100
Message-Id: <20230207162303.140750-1-pawel.chmielewski@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675787111; x=1707323111;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=I2pBOKC0dUujwtyCj+FFCnmPWyms8KwzC2UaOu5+CBw=;
 b=F32/JQvvKRi/JOiWgGkl3h8RSk98TpQzjBVIJjWha5aLFDAWdIgTN9bO
 cu0m1X6xWFOI6XJ3trrhaExRcy21zwB7/pTSNPaX4fzgSNb8hXXFo/Myz
 pOGao/ypw1GWyM3znvxK/OIdbElms6Jb31gp623O0qsZHgylR+lS1yCMZ
 erehRqea2yFdlQZe9cwWul54IA5inuxC0OkbHi45jK7qsLIEjCGnQ3A7i
 9qBS6wBDrwEbSDlKLDBiQ2UyEUQxIb2JZ/mfx6gy+EWoOoOKV0AhW0X79
 djY/+41CxNuWoyXho1kefb48kbNylkPdi3eHagqU3arI+T7+pAPLS6J4B
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=F32/JQvv
Subject: [Intel-wired-lan] [PATCH net-next v2 1/1] ice: add support BIG TCP
 on IPv6
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
Cc: intel-wired-lan@osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RW5hYmxlIHNlbmRpbmcgQklHIFRDUCBwYWNrZXRzIG9uIElQdjYgaW4gdGhlIGljZSBkcml2ZXIg
dXNpbmcgZ2VuZXJpYwppcHY2X2hvcG9wdF9qdW1ib19yZW1vdmUgaGVscGVyIGZvciBzdHJpcHBp
bmcgSEJIIGhlYWRlci4KClRlc3RlZDoKbmV0cGVyZiAtdCBUQ1BfUlIgLUggMjAwMTpkYjg6MDpm
MTAxOjoxICAtLSAtcjgwMDAwLDgwMDAwIC1PIE1JTl9MQVRFTkNZLFA5MF9MQVRFTkNZLFA5OV9M
QVRFTkNZLFRSQU5TQUNUSU9OX1JBVEUKClRlc3RlZCBvbiB0d28gZGlmZmVyZW50IHNldHVwcy4g
SW4gYm90aCBjYXNlcywgdGhlIGZvbGxvd2luZyBzZXR0aW5ncyB3ZXJlCmFwcGxpZWQgYWZ0ZXIg
bG9hZGluZyB0aGUgY2hhbmdlZCBkcml2ZXI6CgppcCBsaW5rIHNldCBkZXYgZW5wMTc1czBmMW5w
MSBnc29fbWF4X3NpemUgMTMwMDAwCmlwIGxpbmsgc2V0IGRldiBlbnAxNzVzMGYxbnAxIGdyb19t
YXhfc2l6ZSAxMzAwMDAKaXAgbGluayBzZXQgZGV2IGVucDE3NXMwZjFucDEgbXR1IDkwMDAKCkZp
cnN0IHNldHVwOgpCZWZvcmU6Ck1pbmltdW3CoMKgwqDCoMKgIDkwdGjCoMKgwqDCoMKgwqDCoMKg
IDk5dGjCoMKgwqDCoMKgwqDCoMKgIFRyYW5zYWN0aW9uCkxhdGVuY3nCoMKgwqDCoMKgIFBlcmNl
bnRpbGXCoMKgIFBlcmNlbnRpbGXCoMKgIFJhdGUKTWljcm9zZWNvbmRzIExhdGVuY3nCoMKgwqDC
oMKgIExhdGVuY3nCoMKgwqDCoMKgIFRyYW4vcwrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgTWlj
cm9zZWNvbmRzIE1pY3Jvc2Vjb25kcwoxMzTCoMKgwqDCoMKgwqDCoMKgwqAgMjc5wqDCoMKgwqDC
oMKgwqDCoMKgIDQxMMKgwqDCoMKgwqDCoMKgwqDCoCAzOTYxLjU4NAoKQWZ0ZXI6Ck1pbmltdW3C
oMKgwqDCoMKgIDkwdGjCoMKgwqDCoMKgwqDCoMKgIDk5dGjCoMKgwqDCoMKgwqDCoMKgIFRyYW5z
YWN0aW9uCkxhdGVuY3nCoMKgwqDCoMKgIFBlcmNlbnRpbGXCoMKgIFBlcmNlbnRpbGXCoMKgIFJh
dGUKTWljcm9zZWNvbmRzIExhdGVuY3nCoMKgwqDCoMKgIExhdGVuY3nCoMKgwqDCoMKgIFRyYW4v
cwrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgTWljcm9zZWNvbmRzIE1pY3Jvc2Vjb25kcwoxMzXC
oMKgwqDCoMKgwqDCoMKgwqAgMTc4wqDCoMKgwqDCoMKgwqDCoMKgIDIxNsKgwqDCoMKgwqDCoMKg
wqDCoCA2MDkzLjQwNAoKVGhlIG90aGVyIHNldHVwOgpCZWZvcmU6Ck1pbmltdW0gICAgICA5MHRo
ICAgICAgICAgOTl0aCAgICAgICAgIFRyYW5zYWN0aW9uCkxhdGVuY3kgICAgICBQZXJjZW50aWxl
ICAgUGVyY2VudGlsZSAgIFJhdGUKTWljcm9zZWNvbmRzIExhdGVuY3kgICAgICBMYXRlbmN5ICAg
ICAgVHJhbi9zCiAgICAgICAgICAgICBNaWNyb3NlY29uZHMgTWljcm9zZWNvbmRzCjIxOCAgICAg
ICAgICA0MTQgICAgICAgICAgNDc4ICAgICAgICAgIDI5NDQuNzY1CgpBZnRlcjoKTWluaW11bSAg
ICAgIDkwdGggICAgICAgICA5OXRoICAgICAgICAgVHJhbnNhY3Rpb24KTGF0ZW5jeSAgICAgIFBl
cmNlbnRpbGUgICBQZXJjZW50aWxlICAgUmF0ZQpNaWNyb3NlY29uZHMgTGF0ZW5jeSAgICAgIExh
dGVuY3kgICAgICBUcmFuL3MKICAgICAgICAgICAgIE1pY3Jvc2Vjb25kcyBNaWNyb3NlY29uZHMK
MTQ2ICAgICAgICAgIDIzOCAgICAgICAgICAyNjYgICAgICAgICAgNDcwMC41OTYKClNpZ25lZC1v
ZmYtYnk6IFBhd2VsIENobWllbGV3c2tpIDxwYXdlbC5jaG1pZWxld3NraUBpbnRlbC5jb20+Ci0t
LQoKQ2hhbmdlcyBzaW5jZSB2MToKICogQWRkZWQgdGVzdGluZyByZXN1bHRzCi0tLQogZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZS5oICAgICAgfCAyICsrCiBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYyB8IDIgKysKIGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfdHhyeC5jIHwgMyArKysKIDMgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZS5o
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZS5oCmluZGV4IDNkMjZmZjQxMjJl
MC4uYzc3NGZkZDQ4MmNkIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlLmgKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZS5oCkBAIC0x
MjIsNiArMTIyLDggQEAKIAogI2RlZmluZSBJQ0VfTUFYX01UVQkoSUNFX0FRX1NFVF9NQUNfRlJB
TUVfU0laRV9NQVggLSBJQ0VfRVRIX1BLVF9IRFJfUEFEKQogCisjZGVmaW5lIElDRV9NQVhfVFNP
X1NJWkUgMTMxMDcyCisKICNkZWZpbmUgSUNFX1VQX1RBQkxFX1RSQU5TTEFURSh2YWwsIGkpIFwK
IAkJKCgodmFsKSA8PCBJQ0VfQVFfVlNJX1VQX1RBQkxFX1VQIyNpIyNfUykgJiBcCiAJCSAgSUNF
X0FRX1ZTSV9VUF9UQUJMRV9VUCMjaSMjX00pCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfbWFpbi5jCmluZGV4IDIyYjhhZDA1ODI4Ni4uOGM3NGE0OGFkMGQzIDEwMDY0NAotLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYworKysgYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYwpAQCAtMzQyMSw2ICszNDIxLDggQEAg
c3RhdGljIHZvaWQgaWNlX3NldF9uZXRkZXZfZmVhdHVyZXMoc3RydWN0IG5ldF9kZXZpY2UgKm5l
dGRldikKIAkgKiBiZSBjaGFuZ2VkIGF0IHJ1bnRpbWUKIAkgKi8KIAluZXRkZXYtPmh3X2ZlYXR1
cmVzIHw9IE5FVElGX0ZfUlhGQ1M7CisKKwluZXRpZl9zZXRfdHNvX21heF9zaXplKG5ldGRldiwg
SUNFX01BWF9UU09fU0laRSk7CiB9CiAKIC8qKgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV90eHJ4LmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX3R4cnguYwppbmRleCBjY2YwOWM5NTdhMWMuLmJlZjkyN2FmYjc2NiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eHJ4LmMKKysrIGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eHJ4LmMKQEAgLTIyOTcsNiArMjI5Nyw5IEBA
IGljZV94bWl0X2ZyYW1lX3Jpbmcoc3RydWN0IHNrX2J1ZmYgKnNrYiwgc3RydWN0IGljZV90eF9y
aW5nICp0eF9yaW5nKQogCiAJaWNlX3RyYWNlKHhtaXRfZnJhbWVfcmluZywgdHhfcmluZywgc2ti
KTsKIAorCWlmICh1bmxpa2VseShpcHY2X2hvcG9wdF9qdW1ib19yZW1vdmUoc2tiKSkpCisJCWdv
dG8gb3V0X2Ryb3A7CisKIAljb3VudCA9IGljZV94bWl0X2Rlc2NfY291bnQoc2tiKTsKIAlpZiAo
aWNlX2Noa19saW5lYXJpemUoc2tiLCBjb3VudCkpIHsKIAkJaWYgKF9fc2tiX2xpbmVhcml6ZShz
a2IpKQotLSAKMi4zNy4zCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vv
c2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdp
cmVkLWxhbgo=
