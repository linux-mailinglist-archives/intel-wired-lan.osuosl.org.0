Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E037BAE23
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Oct 2023 23:46:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDEAB6FA3A;
	Thu,  5 Oct 2023 21:46:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DDEAB6FA3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696542413;
	bh=HlGT19zVsipqOWw3g7nAm+LoumdyIl7nJ4GOvzKqzmc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=X3lkUAcXSU5TYfa/kOCu6j+MHQvb8LWSvozRO7xReyAd44WMp7elSuBNCQxGh7dhZ
	 qHno6dtphkunIF+hkteiFcT4Dbz1D5Hr4ZUdwUAy+dsYeF//q9do7sZ0Qr9HU6BJRo
	 kWyTK9/s8paXQ/fXe4hiVTfhJ9dDHbrzN067lu/gQR1l+qNXLNvzA5AT+ooWjbkkY/
	 XPUdvihnsMgCkIZvlV+4vFeEJDAo9INHhpwTmfdVs7p43AEZbzzTiPxj07KtXhXEJH
	 /0jjb/pdU/U5ljpRZZ2tLwP4APASQ0mpFoFM+F7O1ddD/FY/Hb4aw53V3SLdpj4PoA
	 n8fOl90yBw+dQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q8PP9o2VaVwe; Thu,  5 Oct 2023 21:46:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 655FC611D5;
	Thu,  5 Oct 2023 21:46:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 655FC611D5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 40EC01BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 21:46:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C3DFD41DE9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 21:46:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3DFD41DE9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bx8Tqa0j_MPy for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Oct 2023 21:46:33 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 073AE41E39
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 21:46:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 073AE41E39
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="373977685"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="373977685"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 14:46:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="822271031"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="822271031"
Received: from tsicinsk-mobl.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.249.35.190])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 14:46:22 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Date: Thu,  5 Oct 2023 15:46:02 -0600
Message-Id: <20231005214607.3178614-2-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231005214607.3178614-1-ahmed.zaki@intel.com>
References: <20231005214607.3178614-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696542392; x=1728078392;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=32akxHSYhb17D+XQtNXel6BwEp9EweKFmYRPZqxIveM=;
 b=ja4Y3jo6JNl4VqGygJa4gn1e9RYFrmpEDXrsoICjjeb13QtD3/64zGpA
 vV70vO9YvrvqJ86yqasThTBeY70xwNvFjdIfi1fplTen03IrbiMRQoqhO
 K3KYehz2gQmL/c2Jy/7pOcOdJlKO3nriO5u1Ms+EIsYVbUcqS+Jr1qHEM
 WKkV1R0cWHL7NuxIT6CetIxQXROin0laN0J2grO0W67U+Lqayu8dREVMz
 QHLfYAdhFOJKW9DrnAgRMhjF9nUjzzF72/eln9aZKflvImAui3PG3CfF2
 o/jVzoeDrRwkAHeL0M33i4CZ3kMawNaORhZ59gmEq3K71aXNYm9nhUht2
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ja4Y3jo6
Subject: [Intel-wired-lan] [PATCH net-next 1/6] net: ethtool: allow
 symmetric RSS hash for any flow type
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 intel-wired-lan@lists.osuosl.org, Ahmed Zaki <ahmed.zaki@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

U3ltbWV0cmljIFJTUyBoYXNoIGZ1bmN0aW9ucyBhcmUgYmVuZWZpY2lhbCBpbiBhcHBsaWNhdGlv
bnMgdGhhdCBtb25pdG9yCmJvdGggVHggYW5kIFJ4IHBhY2tldHMgb2YgdGhlIHNhbWUgZmxvdyAo
SURTLCBzb2Z0d2FyZSBmaXJld2FsbHMsIC4uZXRjKS4KR2V0dGluZyBhbGwgdHJhZmZpYyBvZiB0
aGUgc2FtZSBmbG93IG9uIHRoZSBzYW1lIFJYIHF1ZXVlIHJlc3VsdHMgaW4KaGlnaGVyIENQVSBj
YWNoZSBlZmZpY2llbmN5LgoKT25seSBmaWVsZHMgdGhhdCBoYXMgY291bnRlcnBhcnRzIGluIHRo
ZSBvdGhlciBkaXJlY3Rpb24gY2FuIGJlCmFjY2VwdGVkOyBJUCBzcmMvZHN0IGFuZCBMNCBzcmMv
ZHN0IHBvcnRzLgoKVGhlIHVzZXIgbWF5IHJlcXVlc3QgUlNTIGhhc2ggc3ltbWV0cnkgZm9yIGEg
c3BlY2lmaWMgZmxvdyB0eXBlLCB2aWE6CgogICAgIyBldGh0b29sIC1OfC1VIGV0aDAgcngtZmxv
dy1oYXNoIDxmbG93X3R5cGU+IHN8ZHxmfG4gc3ltbWV0cmljCgpvciB0dXJuIHN5bW1ldHJ5IG9m
ZiAoYXN5bW1ldHJpYykgYnk6CgogICAgIyBldGh0b29sIC1OfC1VIGV0aDAgcngtZmxvdy1oYXNo
IDxmbG93X3R5cGU+IHN8ZHxmfG4KClJldmlld2VkLWJ5OiBXb2pjaWVjaCBEcmV3ZWsgPHdvamNp
ZWNoLmRyZXdla0BpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFobWVkIFpha2kgPGFobWVkLnph
a2lAaW50ZWwuY29tPgotLS0KIERvY3VtZW50YXRpb24vbmV0d29ya2luZy9zY2FsaW5nLnJzdCB8
ICA2ICsrKysrKwogaW5jbHVkZS91YXBpL2xpbnV4L2V0aHRvb2wuaCAgICAgICAgIHwgIDEgKwog
bmV0L2V0aHRvb2wvaW9jdGwuYyAgICAgICAgICAgICAgICAgIHwgMTEgKysrKysrKysrKysKIDMg
ZmlsZXMgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vbmV0d29ya2luZy9zY2FsaW5nLnJzdCBiL0RvY3VtZW50YXRpb24vbmV0d29ya2luZy9zY2Fs
aW5nLnJzdAppbmRleCA5MmM5ZmI0NmQ2YTIuLjY0ZjNkNzU2NjQwNyAxMDA2NDQKLS0tIGEvRG9j
dW1lbnRhdGlvbi9uZXR3b3JraW5nL3NjYWxpbmcucnN0CisrKyBiL0RvY3VtZW50YXRpb24vbmV0
d29ya2luZy9zY2FsaW5nLnJzdApAQCAtNDQsNiArNDQsMTIgQEAgYnkgbWFza2luZyBvdXQgdGhl
IGxvdyBvcmRlciBzZXZlbiBiaXRzIG9mIHRoZSBjb21wdXRlZCBoYXNoIGZvciB0aGUKIHBhY2tl
dCAodXN1YWxseSBhIFRvZXBsaXR6IGhhc2gpLCB0YWtpbmcgdGhpcyBudW1iZXIgYXMgYSBrZXkg
aW50byB0aGUKIGluZGlyZWN0aW9uIHRhYmxlIGFuZCByZWFkaW5nIHRoZSBjb3JyZXNwb25kaW5n
IHZhbHVlLgogCitTb21lIE5JQ3Mgc3VwcG9ydCBzeW1tZXRyaWMgUlNTIGhhc2hpbmcgd2hlcmUs
IGlmIHRoZSBJUCAoc291cmNlIGFkZHJlc3MsCitkZXN0aW5hdGlvbiBhZGRyZXNzKSBhbmQgVENQ
L1VEUCAoc291cmNlIHBvcnQsIGRlc3RpbmF0aW9uIHBvcnQpIHR1cGxlcworYXJlIHN3YXBwZWQs
IHRoZSBjb21wdXRlZCBoYXNoIGlzIHRoZSBzYW1lLiBUaGlzIGlzIGJlbmVmaWNpYWwgaW4gc29t
ZQorYXBwbGljYXRpb25zIHRoYXQgbW9uaXRvciBUQ1AvSVAgZmxvd3MgKElEUywgZmlyZXdhbGxz
LCAuLi5ldGMpIGFuZCBuZWVkCitib3RoIGRpcmVjdGlvbnMgb2YgdGhlIGZsb3cgdG8gbGFuZCBv
biB0aGUgc2FtZSBSeCBxdWV1ZSAoYW5kIENQVSkuCisKIFNvbWUgYWR2YW5jZWQgTklDcyBhbGxv
dyBzdGVlcmluZyBwYWNrZXRzIHRvIHF1ZXVlcyBiYXNlZCBvbgogcHJvZ3JhbW1hYmxlIGZpbHRl
cnMuIEZvciBleGFtcGxlLCB3ZWJzZXJ2ZXIgYm91bmQgVENQIHBvcnQgODAgcGFja2V0cwogY2Fu
IGJlIGRpcmVjdGVkIHRvIHRoZWlyIG93biByZWNlaXZlIHF1ZXVlLiBTdWNoIOKAnG4tdHVwbGXi
gJ0gZmlsdGVycyBjYW4KZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9saW51eC9ldGh0b29sLmgg
Yi9pbmNsdWRlL3VhcGkvbGludXgvZXRodG9vbC5oCmluZGV4IGY3ZmJhMGRjODdlNS4uYmY2N2M4
MDk0YWUwIDEwMDY0NAotLS0gYS9pbmNsdWRlL3VhcGkvbGludXgvZXRodG9vbC5oCisrKyBiL2lu
Y2x1ZGUvdWFwaS9saW51eC9ldGh0b29sLmgKQEAgLTIwMjUsNiArMjAyNSw3IEBAIHN0YXRpYyBp
bmxpbmUgaW50IGV0aHRvb2xfdmFsaWRhdGVfZHVwbGV4KF9fdTggZHVwbGV4KQogI2RlZmluZQlS
WEhfSVBfRFNUCSgxIDw8IDUpCiAjZGVmaW5lCVJYSF9MNF9CXzBfMQkoMSA8PCA2KSAvKiBzcmMg
cG9ydCBpbiBjYXNlIG9mIFRDUC9VRFAvU0NUUCAqLwogI2RlZmluZQlSWEhfTDRfQl8yXzMJKDEg
PDwgNykgLyogZHN0IHBvcnQgaW4gY2FzZSBvZiBUQ1AvVURQL1NDVFAgKi8KKyNkZWZpbmUJUlhI
X1NZTU1FVFJJQwkoMSA8PCAzMCkKICNkZWZpbmUJUlhIX0RJU0NBUkQJKDEgPDwgMzEpCiAKICNk
ZWZpbmUJUlhfQ0xTX0ZMT1dfRElTQwkweGZmZmZmZmZmZmZmZmZmZmZVTEwKZGlmZiAtLWdpdCBh
L25ldC9ldGh0b29sL2lvY3RsLmMgYi9uZXQvZXRodG9vbC9pb2N0bC5jCmluZGV4IDBiMGNlNGY4
MWMwMS4uNDQ3NDI2NTNhNGJkIDEwMDY0NAotLS0gYS9uZXQvZXRodG9vbC9pb2N0bC5jCisrKyBi
L25ldC9ldGh0b29sL2lvY3RsLmMKQEAgLTk4MCw2ICs5ODAsMTcgQEAgc3RhdGljIG5vaW5saW5l
X2Zvcl9zdGFjayBpbnQgZXRodG9vbF9zZXRfcnhuZmMoc3RydWN0IG5ldF9kZXZpY2UgKmRldiwK
IAlpZiAocmMpCiAJCXJldHVybiByYzsKIAorCS8qIElmIGEgc3ltbWV0cmljIGhhc2ggaXMgcmVx
dWVzdGVkLCB0aGVuOgorCSAqIDEgLSBubyBvdGhlciBmaWVsZHMgYmVzaWRlcyBJUCBzcmMvZHN0
IGFuZC9vciBMNCBzcmMvZHN0CisJICogMiAtIElmIHNyYyBpcyBzZXQsIGRzdCBtdXN0IGFsc28g
YmUgc2V0CisJICovCisJaWYgKChpbmZvLmRhdGEgJiBSWEhfU1lNTUVUUklDKSAmJgorCSAgICAo
KGluZm8uZGF0YSAmIH4oUlhIX1NZTU1FVFJJQyB8IFJYSF9JUF9TUkMgfCBSWEhfSVBfRFNUIHwK
KwkgICAgICBSWEhfTDRfQl8wXzEgfCBSWEhfTDRfQl8yXzMpKSB8fAorCSAgICAgKCEhKGluZm8u
ZGF0YSAmIFJYSF9JUF9TUkMpIF4gISEoaW5mby5kYXRhICYgUlhIX0lQX0RTVCkpIHx8CisJICAg
ICAoISEoaW5mby5kYXRhICYgUlhIX0w0X0JfMF8xKSBeICEhKGluZm8uZGF0YSAmIFJYSF9MNF9C
XzJfMykpKSkKKwkJcmV0dXJuIC1FSU5WQUw7CisKIAlyYyA9IGRldi0+ZXRodG9vbF9vcHMtPnNl
dF9yeG5mYyhkZXYsICZpbmZvKTsKIAlpZiAocmMpCiAJCXJldHVybiByYzsKLS0gCjIuMzQuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2ly
ZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xp
c3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
