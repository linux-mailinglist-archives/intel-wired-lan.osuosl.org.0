Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F389F7A4B95
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Sep 2023 17:18:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 871B1614F3;
	Mon, 18 Sep 2023 15:18:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 871B1614F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695050338;
	bh=IwVfBQePPwH7T7P1xm/K69E1F5wHUi026EpyYy6mT3g=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L2EBHMsks1ra5yCuxGTnpy2gMRWGsbTH4L7t1Yntqd/R8MNE2V0eDDvvjXQJkDf6f
	 MjDxAWfGw7DXnLzFd1TyGzdil436v2MaYdJcNsCIA/ke8NKs3efJ6n9Uozhh/t7wZS
	 q66KUmHSkXwIPXotkF38LMNo3os8ZqqSqBHrYqzWk7dxFYCGxK+hItXBXkIqKet/yB
	 Lpt0/36h2UfUxC24aflAiSQOaGgkNaIXxZeM7S6fkF5//M1P/5fvs2XnDflnXuxmfT
	 /CGvnJGjUD//Ww8qWneignxUcsQ2nUeOJJ8yKEYJpRnlOtvTcUgWQhTQ+knrELRuLN
	 1Cd0TaMe5R8EA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yK0-A5PHoVkZ; Mon, 18 Sep 2023 15:18:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E6DB614DE;
	Mon, 18 Sep 2023 15:18:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E6DB614DE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F2D0D1BF312
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:20:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C9CE181F20
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:20:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C9CE181F20
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ESi081A5MTTp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Sep 2023 13:20:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 03F2F81DD8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:20:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 03F2F81DD8
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="446113413"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="446113413"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:12:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="811342150"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="811342150"
Received: from nprotaso-mobl1.ccr.corp.intel.com (HELO
 ijarvine-mobl2.ger.corp.intel.com) ([10.252.49.156])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:12:30 -0700
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: linux-pci@vger.kernel.org, Bjorn Helgaas <helgaas@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Lukas Wunner <lukas@wunner.de>, "Rafael J . Wysocki" <rafael@kernel.org>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 linux-kernel@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>
Date: Mon, 18 Sep 2023 16:10:55 +0300
Message-Id: <20230918131103.24119-6-ilpo.jarvinen@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230918131103.24119-1-ilpo.jarvinen@linux.intel.com>
References: <20230918131103.24119-1-ilpo.jarvinen@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 18 Sep 2023 15:18:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695043219; x=1726579219;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uEKrgp0fS4TcV/kqj/T1ibXnz9U6nSS/hcSxBB6l/C0=;
 b=HssD19kj0kBQ02I1f7o8PnR+TFH7X46Qj5xkHL1OpokL+hr2fq+K6FS1
 UAZKz37hGsjc+346ZGMBHM1Tp8LBavq44jFfKHKydMb9LRHoo9YUYU19H
 XIWDmEGuJrlJMKTPBtnwy5OQAbGHp2gRMcyg8PCdvp4XjMaZWiiOLI8IH
 gjTKraTfV7s579Ea/pw9wXdWqUrpk/+nW5fG1URxM68BSQVU3AYX1uVQV
 b9yEAXO7yqtBSLV9SCKg5yblwmnWSrxkmmPxRJkqF+Ujq68CDwxnApSQJ
 jfYe8LwYn9H+axw7R6Mp65XgmOsKZhOtb3f3zCQVgtZNH9dp1HLYd6Fmm
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HssD19kj
Subject: [Intel-wired-lan] [PATCH v2 05/13] PCI/ASPM: Add
 pci_enable_link_state()
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

cGNpX2Rpc2FibGVfbGlua19zdGF0ZSgpIGxhY2tzIGEgc3ltbWV0cmljIHBhaXIuIFNvbWUgZHJp
dmVycyB3YW50IHRvCmRpc2FibGUgQVNQTSBkdXJpbmcgY2VydGFpbiBwaGFzZXMgb2YgdGhlaXIg
b3BlcmF0aW9uIGJ1dCB0aGVuCnJlLWVuYWJsZSBpdCBsYXRlciBvbi4gSWYgcGNpX2Rpc2FibGVf
bGlua19zdGF0ZSgpIGlzIG1hZGUgZm9yIHRoZQpkZXZpY2UsIHRoZXJlIGlzIGN1cnJlbnRseSBu
byB3YXkgdG8gcmUtZW5hYmxlIHRoZSBzdGF0ZXMgdGhhdCB3ZXJlCmRpc2FibGVkLgoKQWRkIHBj
aV9lbmFibGVfbGlua19zdGF0ZSgpIHRvIHJlbW92ZSBBU1BNIHN0YXRlcyBmcm9tIHRoZSBzdGF0
ZQpkaXNhYmxlIG1hc2suCgpTaWduZWQtb2ZmLWJ5OiBJbHBvIErDpHJ2aW5lbiA8aWxwby5qYXJ2
aW5lbkBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9wY2kvcGNpZS9hc3BtLmMgfCA0MiAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogaW5jbHVkZS9saW51eC9w
Y2kuaCAgICAgfCAgMiArKwogMiBmaWxlcyBjaGFuZ2VkLCA0NCBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9wY2kvcGNpZS9hc3BtLmMgYi9kcml2ZXJzL3BjaS9wY2llL2FzcG0u
YwppbmRleCA5MWRjOTVhY2E5MGYuLmY0NWQxOGQ0N2MyMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9w
Y2kvcGNpZS9hc3BtLmMKKysrIGIvZHJpdmVycy9wY2kvcGNpZS9hc3BtLmMKQEAgLTExMTcsNiAr
MTExNyw0OCBAQCBpbnQgcGNpX2Rpc2FibGVfbGlua19zdGF0ZShzdHJ1Y3QgcGNpX2RldiAqcGRl
diwgaW50IHN0YXRlKQogfQogRVhQT1JUX1NZTUJPTChwY2lfZGlzYWJsZV9saW5rX3N0YXRlKTsK
IAorLyoqCisgKiBwY2lfZW5hYmxlX2xpbmtfc3RhdGUgLSBSZS1lbmFibGUgZGV2aWNlJ3MgbGlu
ayBzdGF0ZQorICogQHBkZXY6IFBDSSBkZXZpY2UKKyAqIEBzdGF0ZTogQVNQTSBsaW5rIHN0YXRl
cyB0byByZS1lbmFibGUKKyAqCisgKiBFbmFibGUgZGV2aWNlJ3MgbGluayBzdGF0ZSB0aGF0IHdl
cmUgcHJldmlvdXNseSBkaXNhYmxlIHNvIHRoZSBsaW5rIGlzCisgKiBhbGxvd2VkIHRvIGVudGVy
IHRoZSBzcGVjaWZpYyBzdGF0ZXMuIE5vdGUgdGhhdCBpZiB0aGUgQklPUyBkaWRuJ3QgZ3JhbnQK
KyAqIEFTUE0gY29udHJvbCB0byB0aGUgT1MsIHRoaXMgZG9lcyBub3RoaW5nIGJlY2F1c2Ugd2Ug
Y2FuJ3QgdG91Y2ggdGhlCisgKiBMTktDVEwgcmVnaXN0ZXIuCisgKgorICogUmV0dXJuOiAwIG9y
IGEgbmVnYXRpdmUgZXJybm8uCisgKi8KK2ludCBwY2lfZW5hYmxlX2xpbmtfc3RhdGUoc3RydWN0
IHBjaV9kZXYgKnBkZXYsIGludCBzdGF0ZSkKK3sKKwlzdHJ1Y3QgcGNpZV9saW5rX3N0YXRlICps
aW5rID0gcGNpZV9hc3BtX2dldF9saW5rKHBkZXYpOworCisJaWYgKCFsaW5rKQorCQlyZXR1cm4g
LUVJTlZBTDsKKwkvKgorCSAqIEEgZHJpdmVyIHJlcXVlc3RlZCB0aGF0IEFTUE0gYmUgZW5hYmxl
ZCBvbiB0aGlzIGRldmljZSwgYnV0CisJICogaWYgd2UgZG9uJ3QgaGF2ZSBwZXJtaXNzaW9uIHRv
IG1hbmFnZSBBU1BNIChlLmcuLCBvbiBBQ1BJCisJICogc3lzdGVtcyB3ZSBoYXZlIHRvIG9ic2Vy
dmUgdGhlIEZBRFQgQUNQSV9GQURUX05PX0FTUE0gYml0IGFuZAorCSAqIHRoZSBfT1NDIG1ldGhv
ZCksIHdlIGNhbid0IGhvbm9yIHRoYXQgcmVxdWVzdC4KKwkgKi8KKwlpZiAoYXNwbV9kaXNhYmxl
ZCkgeworCQlwY2lfd2FybihwZGV2LCAiY2FuJ3QgZW5hYmxlIEFTUE07IE9TIGRvZXNuJ3QgaGF2
ZSBBU1BNIGNvbnRyb2xcbiIpOworCQlyZXR1cm4gLUVQRVJNOworCX0KKworCW11dGV4X2xvY2so
JmFzcG1fbG9jayk7CisJbGluay0+YXNwbV9kaXNhYmxlICY9IH5wY2lfbGlua19zdGF0ZV9tYXNr
KHN0YXRlKTsKKwlwY2llX2NvbmZpZ19hc3BtX2xpbmsobGluaywgcG9saWN5X3RvX2FzcG1fc3Rh
dGUobGluaykpOworCisJaWYgKHN0YXRlICYgUENJRV9MSU5LX1NUQVRFX0NMS1BNKQorCQlsaW5r
LT5jbGtwbV9kaXNhYmxlID0gMDsKKwlwY2llX3NldF9jbGtwbShsaW5rLCBwb2xpY3lfdG9fY2xr
cG1fc3RhdGUobGluaykpOworCW11dGV4X3VubG9jaygmYXNwbV9sb2NrKTsKKworCXJldHVybiAw
OworfQorRVhQT1JUX1NZTUJPTChwY2lfZW5hYmxlX2xpbmtfc3RhdGUpOworCiAvKioKICAqIHBj
aV9zZXRfZGVmYXVsdF9saW5rX3N0YXRlIC0gU2V0IHRoZSBkZWZhdWx0IGRldmljZSBsaW5rIHN0
YXRlCiAgKiBAcGRldjogUENJIGRldmljZQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9wY2ku
aCBiL2luY2x1ZGUvbGludXgvcGNpLmgKaW5kZXggM2MyNGNhMTY0MTA0Li44NDRkMDkyMzAyNjQg
MTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvcGNpLmgKKysrIGIvaW5jbHVkZS9saW51eC9wY2ku
aApAQCAtMTc3NiwxMSArMTc3NiwxMyBAQCBleHRlcm4gYm9vbCBwY2llX3BvcnRzX25hdGl2ZTsK
IGludCBwY2lfZGlzYWJsZV9saW5rX3N0YXRlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LCBpbnQgc3Rh
dGUpOwogaW50IHBjaV9kaXNhYmxlX2xpbmtfc3RhdGVfbG9ja2VkKHN0cnVjdCBwY2lfZGV2ICpw
ZGV2LCBpbnQgc3RhdGUpOwogI2lmZGVmIENPTkZJR19QQ0lFQVNQTQoraW50IHBjaV9lbmFibGVf
bGlua19zdGF0ZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwgaW50IHN0YXRlKTsKIGludCBwY2lfc2V0
X2RlZmF1bHRfbGlua19zdGF0ZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwgaW50IHN0YXRlKTsKIHZv
aWQgcGNpZV9ub19hc3BtKHZvaWQpOwogYm9vbCBwY2llX2FzcG1fc3VwcG9ydF9lbmFibGVkKHZv
aWQpOwogYm9vbCBwY2llX2FzcG1fZW5hYmxlZChzdHJ1Y3QgcGNpX2RldiAqcGRldik7CiAjZWxz
ZQorc3RhdGljIGlubGluZSBpbnQgcGNpX2VuYWJsZV9saW5rX3N0YXRlKHN0cnVjdCBwY2lfZGV2
ICpwZGV2LCBpbnQgc3RhdGUpIHsgcmV0dXJuIC1FT1BOT1RTVVBQOyB9CiBzdGF0aWMgaW5saW5l
IGludCBwY2lfc2V0X2RlZmF1bHRfbGlua19zdGF0ZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwgaW50
IHN0YXRlKQogeyByZXR1cm4gMDsgfQogc3RhdGljIGlubGluZSB2b2lkIHBjaWVfbm9fYXNwbSh2
b2lkKSB7IH0KLS0gCjIuMzAuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
