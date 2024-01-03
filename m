Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CE18229BF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jan 2024 09:51:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2914D41737;
	Wed,  3 Jan 2024 08:50:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2914D41737
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704271859;
	bh=zfyPY3LB2BHUhA+3E8r0/MEY/w6HXM++ghW3rNe7AEE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=rNAbfBkhegBMPrs7KWn8z02DDP863T17y/F1n9Qc6Trr26HTNnSWUq2qdCDEN0WQx
	 LwwqCSC2D2lNdUo4IAzRfMVAmfTVvzzmGFf0Er+AykaGLeqBJrs2KOn3BiK9NU8aYM
	 PV9Zj4RyaE3gETh3tkhMOg9E86c2BKptwpqlnY3eKU3ahJGgP723Yx81ezn71Lezy/
	 17NoGU5T/XJlddIspIEU+n4B0oKg/VxpujbRJVACnYNcIc0Toq7o464l/VFmykDuUi
	 69osQsZvXeLGEgEXBYrJmicpIfa2fOYwFbkpi3O/qztjeznPm3N1EdJa9HniSWxlmE
	 d+ZfkODNWdFHg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E0ehA2J4knuu; Wed,  3 Jan 2024 08:50:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A0224174C;
	Wed,  3 Jan 2024 08:50:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A0224174C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EEE711BF471
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 08:50:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C606441737
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 08:50:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C606441737
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rL26_CmqsISd for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jan 2024 08:50:52 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 269B641729
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 08:50:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 269B641729
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="394133597"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="394133597"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 00:50:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="923475593"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="923475593"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.160.232])
 by fmsmga001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 00:50:47 -0800
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Jan 2024 10:50:44 +0200
Message-Id: <20240103085044.283741-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704271852; x=1735807852;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/Viml5juaYaLpOZXS+bmIOwYfCg7iCi9r4WcOWmTzNY=;
 b=LcHoEXTuIG3jvH879MsnmBPzQ/CVfwGwEIm5XIcw7sURmLHEIbbP7WAa
 REAoCOd5EzpxryF25k7+VUWjzotjQMPB4bR+IiRhSKkfhp24tCzpc8pa8
 FYpiSVSlW47hnuq0F0CJsbqqLufsDelsWTWMqEKGVgJpXldu/HokFPD5C
 YnibMd6ktBj2vk7667cG3pevti1Xvhi1WdDDLYYIoqMeAT3AEPSDsoPIX
 DBYFoPvz23Ygqo+ZgfqFMbQRUNH7QJlH5nVMhVZjMcpr8wtNJVgzjGhF4
 mCy2reCUgC0sa9Zd8jHDI28i8fNC4XIGXGMJ0fWskHOV2B9MMQ9Dk+kPk
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LcHoEXTu
Subject: [Intel-wired-lan] [PATH iwl-next v1 1/1] e1000e: Minor flow
 correction in e1000_shutdown function
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
Cc: david.m.ertman@intel.com, Vitaly Lifshits <vitaly.lifshits@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Added a missing curly braces to avoid entering to an if statement
where it is not always required in e1000_shutdown function.
This improves code readability and might prevent a non-deterministic
behaviour in the future.

Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index af5d9d97a0d6..cc8c531ec3df 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6688,14 +6688,14 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
 	if (adapter->hw.phy.type == e1000_phy_igp_3) {
 		e1000e_igp3_phy_powerdown_workaround_ich8lan(&adapter->hw);
 	} else if (hw->mac.type >= e1000_pch_lpt) {
-		if (wufc && !(wufc & (E1000_WUFC_EX | E1000_WUFC_MC | E1000_WUFC_BC)))
+		if (wufc && !(wufc & (E1000_WUFC_EX | E1000_WUFC_MC | E1000_WUFC_BC))) {
 			/* ULP does not support wake from unicast, multicast
 			 * or broadcast.
 			 */
 			retval = e1000_enable_ulp_lpt_lp(hw, !runtime);
-
-		if (retval)
-			return retval;
+			if (retval)
+				return retval;
+		}
 	}
 
 	/* Ensure that the appropriate bits are set in LPI_CTRL
-- 
2.34.1

