Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D837A4B99
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Sep 2023 17:19:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AAF5561503;
	Mon, 18 Sep 2023 15:19:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AAF5561503
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695050354;
	bh=74/NSHVy3b2ws43pSyg4bHoAPJtWI/95drvjJl0arOk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7IVkeXUoHMj+iFxfodLPXPsk9QNhJWkM/2wQE/YeBrlD3WUTP7xwC8PwAZI0D5mde
	 7uSA03Ngpi2wKk1zIPjEmp4by+NHAxbwXxssJTPtza/jvd1cbSZJxklGNpajupnvFm
	 YxzDNrub9Yf2iGbPlAg1R55fILuPle4CazCQDXdDCEJxxxW0SOzxy/nlpnKB3ysXGi
	 VLlFLi3yjtkBi3qT5FEwgQn97R/BP+01RduEXuujp3WqqVQkI5emT6nCU//JvKqBfz
	 H1DBDbXg1tQe9gslnw0IDUezYWvjpHu3yAZ9PCbUJlDBHvxXcceN+8FNETJlP/iuPP
	 mLhwYnFp7HHVw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j-vgfDy6I924; Mon, 18 Sep 2023 15:19:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 989E9614DA;
	Mon, 18 Sep 2023 15:19:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 989E9614DA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 518D91BF312
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:20:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3819781F20
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:20:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3819781F20
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DjBm2OdusGHs for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Sep 2023 13:20:24 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 949E281F0E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:20:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 949E281F0E
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="446113504"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="446113504"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:13:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="811342626"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="811342626"
Received: from nprotaso-mobl1.ccr.corp.intel.com (HELO
 ijarvine-mobl2.ger.corp.intel.com) ([10.252.49.156])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:13:01 -0700
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: linux-pci@vger.kernel.org, Bjorn Helgaas <helgaas@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Lukas Wunner <lukas@wunner.de>, "Rafael J . Wysocki" <rafael@kernel.org>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 linux-kernel@vger.kernel.org, Kalle Valo <kvalo@kernel.org>,
 Jeff Johnson <quic_jjohnson@quicinc.com>, ath10k@lists.infradead.org,
 linux-wireless@vger.kernel.org
Date: Mon, 18 Sep 2023 16:10:59 +0300
Message-Id: <20230918131103.24119-10-ilpo.jarvinen@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230918131103.24119-1-ilpo.jarvinen@linux.intel.com>
References: <20230918131103.24119-1-ilpo.jarvinen@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 18 Sep 2023 15:18:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695043224; x=1726579224;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1z4zU2kddqvhSnJhYzQ+kzmt/kJVDZXOqL2l9VfDNaA=;
 b=BzbhOanzWSaVaXcPlsCbyLHfxhGn/O3Ocimw38MPu6kLckWjk6DwWjNH
 1lLS7d7FRdL9c2wV0x6B1q1i1zpC3PBGERnvIemZqIS7CvNAkimt6NPz+
 ocfgss+/0Big5EjAdc8rxVvN6aRdys3xcU9QFQ7JufVYUKIQuVvWs4NlC
 UVMp9/uxIJyHLj4JaiQeNkCnvTHjzD0EaIUPsfoTm+kASSCqnKWJzpKed
 q+QaUCmTK4s5Oc8ThrGGMfc8dYIwcih3+1YXj8XOYgh3hZaJaLVspmJvG
 J3CbGenMcIPobAMEg7amNicgOCcvxOEUb+hMkbDAS2+5BrSS8a5rtpVNO
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BzbhOanz
Subject: [Intel-wired-lan] [PATCH v2 09/13] wifi: ath10k: Use
 pci_disable/enable_link_state()
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
Cc: ath12k@lists.infradead.org, netdev@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, linux-mediatek@lists.infradead.org,
 =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, ath11k@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rdma@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

YXRoMTBrIGRyaXZlciBhZGp1c3RzIEFTUE0gc3RhdGUgaXRzZWxmIHdoaWNoIGxlYXZlcyBBU1BN
IHNlcnZpY2UKZHJpdmVyIGluIFBDSSBjb3JlIHVuYXdhcmUgb2YgdGhlIGxpbmsgc3RhdGUgY2hh
bmdlcyB0aGUgZHJpdmVyCmltcGxlbWVudGVkLgoKQ2FsbCBwY2lfZGlzYWJsZV9saW5rX3N0YXRl
KCkgYW5kIHBjaV9lbmFibGVfbGlua19zdGF0ZSgpIGluc3RlYWQgb2YKYWRqdXN0aW5nIEFTUE1D
IGZpZWxkIGluIExOS0NUTCBkaXJlY3RseSBpbiB0aGUgZHJpdmVyIGFuZCBsZXQgUENJIGNvcmUK
aGFuZGxlIHRoZSBBU1BNIHN0YXRlIG1hbmFnZW1lbnQuCgpTaWduZWQtb2ZmLWJ5OiBJbHBvIErD
pHJ2aW5lbiA8aWxwby5qYXJ2aW5lbkBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9uZXQv
d2lyZWxlc3MvYXRoL2F0aDEway9wY2kuYyB8IDggKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAz
IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQv
d2lyZWxlc3MvYXRoL2F0aDEway9wY2kuYyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgx
MGsvcGNpLmMKaW5kZXggMjNmMzY2MjIxOTM5Li42NGY3MTMzY2UxMjIgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvcGNpLmMKKysrIGIvZHJpdmVycy9uZXQvd2ly
ZWxlc3MvYXRoL2F0aDEway9wY2kuYwpAQCAtMTk2Myw5ICsxOTYzLDggQEAgc3RhdGljIGludCBh
dGgxMGtfcGNpX2hpZl9zdGFydChzdHJ1Y3QgYXRoMTBrICphcikKIAlhdGgxMGtfcGNpX2lycV9l
bmFibGUoYXIpOwogCWF0aDEwa19wY2lfcnhfcG9zdChhcik7CiAKLQlwY2llX2NhcGFiaWxpdHlf
Y2xlYXJfYW5kX3NldF93b3JkKGFyX3BjaS0+cGRldiwgUENJX0VYUF9MTktDVEwsCi0JCQkJCSAg
IFBDSV9FWFBfTE5LQ1RMX0FTUE1DLAotCQkJCQkgICBhcl9wY2ktPmxpbmtfY3RsICYgUENJX0VY
UF9MTktDVExfQVNQTUMpOworCXBjaV9lbmFibGVfbGlua19zdGF0ZShhcl9wY2ktPnBkZXYsIGFy
X3BjaS0+bGlua19jdGwgJgorCQkJICAgICAgKFBDSUVfTElOS19TVEFURV9MMFMgfCBQQ0lFX0xJ
TktfU1RBVEVfTDEpKTsKIAogCXJldHVybiAwOwogfQpAQCAtMjgyMiw4ICsyODIxLDcgQEAgc3Rh
dGljIGludCBhdGgxMGtfcGNpX2hpZl9wb3dlcl91cChzdHJ1Y3QgYXRoMTBrICphciwKIAogCXBj
aWVfY2FwYWJpbGl0eV9yZWFkX3dvcmQoYXJfcGNpLT5wZGV2LCBQQ0lfRVhQX0xOS0NUTCwKIAkJ
CQkgICZhcl9wY2ktPmxpbmtfY3RsKTsKLQlwY2llX2NhcGFiaWxpdHlfY2xlYXJfd29yZChhcl9w
Y2ktPnBkZXYsIFBDSV9FWFBfTE5LQ1RMLAotCQkJCSAgIFBDSV9FWFBfTE5LQ1RMX0FTUE1DKTsK
KwlwY2lfZGlzYWJsZV9saW5rX3N0YXRlKGFyX3BjaS0+cGRldiwgUENJRV9MSU5LX1NUQVRFX0ww
UyB8IFBDSUVfTElOS19TVEFURV9MMSk7CiAKIAkvKgogCSAqIEJyaW5nIHRoZSB0YXJnZXQgdXAg
Y2xlYW5seS4KLS0gCjIuMzAuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
