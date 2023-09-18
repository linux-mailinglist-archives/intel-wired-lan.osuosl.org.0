Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF4C7A4B8C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Sep 2023 17:18:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 200B0614E7;
	Mon, 18 Sep 2023 15:18:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 200B0614E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695050322;
	bh=iyp6AQPTF6yU0OVOTs3So+zRbfJeZpbddmr04++2BvA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VJ5DSCgcDOy+ZylzQnYrq1kk1T77OnuwlokhC5IeuhTXR7asvnkQ1OF+CPB6i65nL
	 U0t6/x9q9EoEFAHK7rnh1NGfMn5rL2Pq3IfWDrnStXCri3X0IJ+cSyjZuJEBDI4eyX
	 cUHl7DlxB7RCL4/aaOJ8LyS/pt8PlAFEoohlTVHf69imaTOlPQmQMbkpQKtbB+/sos
	 QpDJCvEaftoLPqc1QWczcSr/kW+ErsF94YItwfrTXy+yjYjIpSm/1Tyyf+k1rF0JLA
	 G9fXyQHzU58ZnutWHebZnu//6DoE8jBoDqhT5824avTRvdRPlNJR67pJ/bGYr2T5i+
	 B2RhIq25rMx8g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id agVCBDxeSZx0; Mon, 18 Sep 2023 15:18:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC7DE614DA;
	Mon, 18 Sep 2023 15:18:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC7DE614DA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 60B331BF312
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:18:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3ABFD614C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:18:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3ABFD614C2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qin7uefSsB4X for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Sep 2023 13:18:39 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6EF7A614BF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:18:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6EF7A614BF
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="446112699"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="446112699"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:11:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="811341426"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="811341426"
Received: from nprotaso-mobl1.ccr.corp.intel.com (HELO
 ijarvine-mobl2.ger.corp.intel.com) ([10.252.49.156])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:11:30 -0700
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: linux-pci@vger.kernel.org, Bjorn Helgaas <helgaas@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Lukas Wunner <lukas@wunner.de>, "Rafael J . Wysocki" <rafael@kernel.org>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 linux-kernel@vger.kernel.org, Nirmal Patel <nirmal.patel@linux.intel.com>,
 Jonathan Derrick <jonathan.derrick@linux.dev>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>
Date: Mon, 18 Sep 2023 16:10:51 +0300
Message-Id: <20230918131103.24119-2-ilpo.jarvinen@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230918131103.24119-1-ilpo.jarvinen@linux.intel.com>
References: <20230918131103.24119-1-ilpo.jarvinen@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 18 Sep 2023 15:18:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695043119; x=1726579119;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4RLnw7kq3hIGZLooWQrGpuOQSJqB/nglTVJsokARwac=;
 b=GFOZca9Sc6hPw2G2U9fs2KifAJIHsESsuBktPK5wtPGCkrewLNnG8pO/
 0hO2sh60S0ptL0tn8YCYA5xuD62akjRq/+D/p1bTjk4KgyEOuTfdjWKXd
 kcR3MVWLsoosy3C1jPpTHkh+1Apgk99mYB2oRdHvUbLgeTAdI5B2co2L6
 2mcP1aGDzF0HH/t79mIDWQNFKmKLlwtozEymOxNw/dJ5jtKw1WkGpc5I5
 A4SukmRCjzAYB7+uyYefah+VZQC2sYuByXODWTavyL/JD+FYudxwJqwit
 WbJ3VaR4hja5Pl0LEFYd+2TQqxiYiLXtKCM/kZUwUCv8yQHeZm/AhTR84
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GFOZca9S
Subject: [Intel-wired-lan] [PATCH v2 01/13] PCI/ASPM: Rename
 pci_enable_link_state() to pci_set_default_link_state()
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
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 linux-bluetooth@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 linux-mediatek@lists.infradead.org, ath11k@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rdma@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

cGNpX2VuYWJsZV9saW5rX3N0YXRlKCkgYW5kIHBjaV9kaXNhYmxlX2xpbmtfc3RhdGUoKSBhcmUg
bm90IHBhaXJlZApzeW1tZXRyaWNhbGx5IGRlc3BpdGUgdGhlaXIgbmFtZXMgc3VnZ2VzdGluZyBv
dGhlcndpc2UuCnBjaV9lbmFibGVfbGlua19zdGF0ZSgpIHR3ZWFrcyBsaW5rIHN0YXRlIHdoZW4g
dGhlICJkZWZhdWx0IiBwb2xpY3kgaXMKaW4gdXNlIHJhdGhlciB0aGFuIGV4YWN0bHkgImVuYWJs
aW5nIiBzb21lIGxpbmsgc3RhdGVzLiBPYnZpb3VzbHksIHdoZW4KdGhlIGRlZmF1bHQgcG9saWN5
IGlzIGluIHVzZSBhbmQgdGhlIGRlZmF1bHQgbGluayBzdGF0ZSBpcyBjaGFuZ2VkLApzb21lIGxp
bmsgc3RhdGVzIG1heSBnZXQgZW5hYmxlZCBidXQgdGhhdCBpcyBhIHNlY29uZGFyeSBlZmZlY3Qu
CgpUaHVzLCByZW5hbWUgcGNpX2VuYWJsZV9saW5rX3N0YXRlKCkgdG8gcGNpX3NldF9kZWZhdWx0
X2xpbmtfc3RhdGUoKSB0bwpiZXR0ZXIgbWF0Y2ggd2hhdCBpdCBkb2VzLiBUaGUgcmVuYW1lIGFs
c28gZnJlZXMKcGNpX2VuYWJsZV9saW5rX3N0YXRlKCkgbmFtZSBzbyB0aGF0IGEgZnVuY3Rpb24g
dGhhdCBwYWlycwpzeW1tZXRyaWNhbGx5IHdpdGggcGNpX2Rpc2FibGVfbGlua19zdGF0ZSgpIGNh
biBiZSBhZGRlZCBsYXRlci4KClNpZ25lZC1vZmYtYnk6IElscG8gSsOkcnZpbmVuIDxpbHBvLmph
cnZpbmVuQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3ZtZC5j
IHwgMiArLQogZHJpdmVycy9wY2kvcGNpZS9hc3BtLmMgICAgICB8IDggKysrKy0tLS0KIGluY2x1
ZGUvbGludXgvcGNpLmggICAgICAgICAgfCA0ICsrLS0KIDMgZmlsZXMgY2hhbmdlZCwgNyBpbnNl
cnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvdm1kLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3ZtZC5jCmluZGV4IGFkNTZkZjk4
YjhlNi4uZTQyNGNlODk3ZDIzIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3Zt
ZC5jCisrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvdm1kLmMKQEAgLTc1Miw3ICs3NTIsNyBA
QCBzdGF0aWMgaW50IHZtZF9wbV9lbmFibGVfcXVpcmsoc3RydWN0IHBjaV9kZXYgKnBkZXYsIHZv
aWQgKnVzZXJkYXRhKQogCWlmICghKGZlYXR1cmVzICYgVk1EX0ZFQVRfQklPU19QTV9RVUlSSykp
CiAJCXJldHVybiAwOwogCi0JcGNpX2VuYWJsZV9saW5rX3N0YXRlKHBkZXYsIFBDSUVfTElOS19T
VEFURV9BTEwpOworCXBjaV9zZXRfZGVmYXVsdF9saW5rX3N0YXRlKHBkZXYsIFBDSUVfTElOS19T
VEFURV9BTEwpOwogCiAJcG9zID0gcGNpX2ZpbmRfZXh0X2NhcGFiaWxpdHkocGRldiwgUENJX0VY
VF9DQVBfSURfTFRSKTsKIAlpZiAoIXBvcykKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL3BjaWUv
YXNwbS5jIGIvZHJpdmVycy9wY2kvcGNpZS9hc3BtLmMKaW5kZXggMWJmNjMwMDU5MjY0Li5mYzkw
OWUyMDM2NWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGNpL3BjaWUvYXNwbS5jCisrKyBiL2RyaXZl
cnMvcGNpL3BjaWUvYXNwbS5jCkBAIC0xMTAyLDggKzExMDIsOCBAQCBpbnQgcGNpX2Rpc2FibGVf
bGlua19zdGF0ZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwgaW50IHN0YXRlKQogRVhQT1JUX1NZTUJP
TChwY2lfZGlzYWJsZV9saW5rX3N0YXRlKTsKIAogLyoqCi0gKiBwY2lfZW5hYmxlX2xpbmtfc3Rh
dGUgLSBDbGVhciBhbmQgc2V0IHRoZSBkZWZhdWx0IGRldmljZSBsaW5rIHN0YXRlIHNvIHRoYXQK
LSAqIHRoZSBsaW5rIG1heSBiZSBhbGxvd2VkIHRvIGVudGVyIHRoZSBzcGVjaWZpZWQgc3RhdGVz
LiBOb3RlIHRoYXQgaWYgdGhlCisgKiBwY2lfc2V0X2RlZmF1bHRfbGlua19zdGF0ZSAtIENsZWFy
IGFuZCBzZXQgdGhlIGRlZmF1bHQgZGV2aWNlIGxpbmsgc3RhdGUgc28KKyAqIHRoYXQgdGhlIGxp
bmsgbWF5IGJlIGFsbG93ZWQgdG8gZW50ZXIgdGhlIHNwZWNpZmllZCBzdGF0ZXMuIE5vdGUgdGhh
dCBpZiB0aGUKICAqIEJJT1MgZGlkbid0IGdyYW50IEFTUE0gY29udHJvbCB0byB0aGUgT1MsIHRo
aXMgZG9lcyBub3RoaW5nIGJlY2F1c2Ugd2UgY2FuJ3QKICAqIHRvdWNoIHRoZSBMTktDVEwgcmVn
aXN0ZXIuIEFsc28gbm90ZSB0aGF0IHRoaXMgZG9lcyBub3QgZW5hYmxlIHN0YXRlcwogICogZGlz
YWJsZWQgYnkgcGNpX2Rpc2FibGVfbGlua19zdGF0ZSgpLiBSZXR1cm4gMCBvciBhIG5lZ2F0aXZl
IGVycm5vLgpAQCAtMTExMSw3ICsxMTExLDcgQEAgRVhQT1JUX1NZTUJPTChwY2lfZGlzYWJsZV9s
aW5rX3N0YXRlKTsKICAqIEBwZGV2OiBQQ0kgZGV2aWNlCiAgKiBAc3RhdGU6IE1hc2sgb2YgQVNQ
TSBsaW5rIHN0YXRlcyB0byBlbmFibGUKICAqLwotaW50IHBjaV9lbmFibGVfbGlua19zdGF0ZShz
dHJ1Y3QgcGNpX2RldiAqcGRldiwgaW50IHN0YXRlKQoraW50IHBjaV9zZXRfZGVmYXVsdF9saW5r
X3N0YXRlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LCBpbnQgc3RhdGUpCiB7CiAJc3RydWN0IHBjaWVf
bGlua19zdGF0ZSAqbGluayA9IHBjaWVfYXNwbV9nZXRfbGluayhwZGV2KTsKIApAQCAtMTE1Myw3
ICsxMTUzLDcgQEAgaW50IHBjaV9lbmFibGVfbGlua19zdGF0ZShzdHJ1Y3QgcGNpX2RldiAqcGRl
diwgaW50IHN0YXRlKQogCiAJcmV0dXJuIDA7CiB9Ci1FWFBPUlRfU1lNQk9MKHBjaV9lbmFibGVf
bGlua19zdGF0ZSk7CitFWFBPUlRfU1lNQk9MKHBjaV9zZXRfZGVmYXVsdF9saW5rX3N0YXRlKTsK
IAogc3RhdGljIGludCBwY2llX2FzcG1fc2V0X3BvbGljeShjb25zdCBjaGFyICp2YWwsCiAJCQkJ
Y29uc3Qgc3RydWN0IGtlcm5lbF9wYXJhbSAqa3ApCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4
L3BjaS5oIGIvaW5jbHVkZS9saW51eC9wY2kuaAppbmRleCA4YzdjMmMzYzZjNjUuLjdkZjU2OTg4
ZmY0OCAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9wY2kuaAorKysgYi9pbmNsdWRlL2xpbnV4
L3BjaS5oCkBAIC0xNzc2LDcgKzE3NzYsNyBAQCBleHRlcm4gYm9vbCBwY2llX3BvcnRzX25hdGl2
ZTsKICNpZmRlZiBDT05GSUdfUENJRUFTUE0KIGludCBwY2lfZGlzYWJsZV9saW5rX3N0YXRlKHN0
cnVjdCBwY2lfZGV2ICpwZGV2LCBpbnQgc3RhdGUpOwogaW50IHBjaV9kaXNhYmxlX2xpbmtfc3Rh
dGVfbG9ja2VkKHN0cnVjdCBwY2lfZGV2ICpwZGV2LCBpbnQgc3RhdGUpOwotaW50IHBjaV9lbmFi
bGVfbGlua19zdGF0ZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwgaW50IHN0YXRlKTsKK2ludCBwY2lf
c2V0X2RlZmF1bHRfbGlua19zdGF0ZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwgaW50IHN0YXRlKTsK
IHZvaWQgcGNpZV9ub19hc3BtKHZvaWQpOwogYm9vbCBwY2llX2FzcG1fc3VwcG9ydF9lbmFibGVk
KHZvaWQpOwogYm9vbCBwY2llX2FzcG1fZW5hYmxlZChzdHJ1Y3QgcGNpX2RldiAqcGRldik7CkBA
IC0xNzg1LDcgKzE3ODUsNyBAQCBzdGF0aWMgaW5saW5lIGludCBwY2lfZGlzYWJsZV9saW5rX3N0
YXRlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LCBpbnQgc3RhdGUpCiB7IHJldHVybiAwOyB9CiBzdGF0
aWMgaW5saW5lIGludCBwY2lfZGlzYWJsZV9saW5rX3N0YXRlX2xvY2tlZChzdHJ1Y3QgcGNpX2Rl
diAqcGRldiwgaW50IHN0YXRlKQogeyByZXR1cm4gMDsgfQotc3RhdGljIGlubGluZSBpbnQgcGNp
X2VuYWJsZV9saW5rX3N0YXRlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LCBpbnQgc3RhdGUpCitzdGF0
aWMgaW5saW5lIGludCBwY2lfc2V0X2RlZmF1bHRfbGlua19zdGF0ZShzdHJ1Y3QgcGNpX2RldiAq
cGRldiwgaW50IHN0YXRlKQogeyByZXR1cm4gMDsgfQogc3RhdGljIGlubGluZSB2b2lkIHBjaWVf
bm9fYXNwbSh2b2lkKSB7IH0KIHN0YXRpYyBpbmxpbmUgYm9vbCBwY2llX2FzcG1fc3VwcG9ydF9l
bmFibGVkKHZvaWQpIHsgcmV0dXJuIGZhbHNlOyB9Ci0tIAoyLjMwLjIKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5n
IGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
