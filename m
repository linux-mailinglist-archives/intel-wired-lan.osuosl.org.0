Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 226D751F74C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 May 2022 10:53:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6364C414C1;
	Mon,  9 May 2022 08:53:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XiCeyd19nlcZ; Mon,  9 May 2022 08:53:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E88AD414A1;
	Mon,  9 May 2022 08:53:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 399D41BF306
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 May 2022 08:53:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 24C90813D1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 May 2022 08:53:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KwwIZcjHRzsi for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 May 2022 08:53:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EAC6181385
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 May 2022 08:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652086390; x=1683622390;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fHlBz0Et7emgU933wVpbwIHkzHN7vNIZ6WhnbEL18w8=;
 b=LJYkxX8iinM8PW7LbFXjU4mNX2Fb+m/wKBJ5qPXviCiXiBQJjx3xiHYr
 2PAuNE081glGKnqVxAIvTw/xNzu7CurwKiW8mBOvGnDXesvwVwr+0cNJv
 eSMGvORI0ph/KtTkDRvf9k8z92/5dSKLhPadcHNvr0nqC2Hr8T9R+SexH
 Lfiuv8q/wVDLLikNZukZCUm63WEoydT9jV0dKBck1FHveQfzmF2Y4KH4F
 6ijlt4VFxFpP7avM/aS6XEuiuPEHQoq5Rc1HNOuWT03uUM5lT6NFS2vO4
 sIksiSbRst86w3btrStfUHxP372mkPmWZTZD4/zd7pT5wFeVzoB0EfuYd A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10341"; a="256519568"
X-IronPort-AV: E=Sophos;i="5.91,210,1647327600"; d="scan'208";a="256519568"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 01:53:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,210,1647327600"; d="scan'208";a="738069694"
Received: from ccdlinuxdev12.iil.intel.com ([143.185.162.56])
 by orsmga005.jf.intel.com with ESMTP; 09 May 2022 01:53:01 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	dima.ruinskiy@intel.com
Date: Mon,  9 May 2022 11:52:54 +0300
Message-Id: <20220509085254.2436296-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] Revert "e1000e: Fix possible HW
 unit hang after an s0ix exit"
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This reverts commit 1866aa0d0d6492bc2f8d22d0df49abaccf50cddd.

Commit 1866aa0d0d64("e1000e: Fix possible HW unit hang after an s0ix exit")
was a workaround for CSME problem to handle messages comes via H2ME
mailbox. This problem has been fixed by patch "e1000e: Enable the GPT
clock before sending message to the CSME".

Fixes: 3e55d231716e ("e1000e: Add handshake with the CSME to support S0ix")
Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=214821
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/e1000e/hw.h      |  1 -
 drivers/net/ethernet/intel/e1000e/ich8lan.c |  4 ----
 drivers/net/ethernet/intel/e1000e/ich8lan.h |  1 -
 drivers/net/ethernet/intel/e1000e/netdev.c  | 26 ---------------------
 4 files changed, 32 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/hw.h b/drivers/net/ethernet/intel/e1000e/hw.h
index 13382df2f2ef..bcf680e83811 100644
--- a/drivers/net/ethernet/intel/e1000e/hw.h
+++ b/drivers/net/ethernet/intel/e1000e/hw.h
@@ -630,7 +630,6 @@ struct e1000_phy_info {
 	bool disable_polarity_correction;
 	bool is_mdix;
 	bool polarity_correction;
-	bool reset_disable;
 	bool speed_downgraded;
 	bool autoneg_wait_to_complete;
 };
diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index e6c8e6d5234f..9466f65a6da7 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -2050,10 +2050,6 @@ static s32 e1000_check_reset_block_ich8lan(struct e1000_hw *hw)
 	bool blocked = false;
 	int i = 0;
 
-	/* Check the PHY (LCD) reset flag */
-	if (hw->phy.reset_disable)
-		return true;
-
 	while ((blocked = !(er32(FWSM) & E1000_ICH_FWSM_RSPCIPHY)) &&
 	       (i++ < 30))
 		usleep_range(10000, 11000);
diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.h b/drivers/net/ethernet/intel/e1000e/ich8lan.h
index 638a3ddd7ada..2504b11c3169 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.h
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.h
@@ -271,7 +271,6 @@
 #define I217_CGFREG_ENABLE_MTA_RESET	0x0002
 #define I217_MEMPWR			PHY_REG(772, 26)
 #define I217_MEMPWR_DISABLE_SMB_RELEASE	0x0010
-#define I217_MEMPWR_MOEM		0x1000
 
 /* Receive Address Initial CRC Calculation */
 #define E1000_PCH_RAICC(_n)	(0x05F50 + ((_n) * 4))
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index c64102b29862..f1729940e46c 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6991,21 +6991,8 @@ static __maybe_unused int e1000e_pm_suspend(struct device *dev)
 	struct net_device *netdev = pci_get_drvdata(to_pci_dev(dev));
 	struct e1000_adapter *adapter = netdev_priv(netdev);
 	struct pci_dev *pdev = to_pci_dev(dev);
-	struct e1000_hw *hw = &adapter->hw;
-	u16 phy_data;
 	int rc;
 
-	if (er32(FWSM) & E1000_ICH_FWSM_FW_VALID &&
-	    hw->mac.type >= e1000_pch_adp) {
-		/* Mask OEM Bits / Gig Disable / Restart AN (772_26[12] = 1) */
-		e1e_rphy(hw, I217_MEMPWR, &phy_data);
-		phy_data |= I217_MEMPWR_MOEM;
-		e1e_wphy(hw, I217_MEMPWR, phy_data);
-
-		/* Disable LCD reset */
-		hw->phy.reset_disable = true;
-	}
-
 	e1000e_flush_lpic(pdev);
 
 	e1000e_pm_freeze(dev);
@@ -7027,8 +7014,6 @@ static __maybe_unused int e1000e_pm_resume(struct device *dev)
 	struct net_device *netdev = pci_get_drvdata(to_pci_dev(dev));
 	struct e1000_adapter *adapter = netdev_priv(netdev);
 	struct pci_dev *pdev = to_pci_dev(dev);
-	struct e1000_hw *hw = &adapter->hw;
-	u16 phy_data;
 	int rc;
 
 	/* Introduce S0ix implementation */
@@ -7039,17 +7024,6 @@ static __maybe_unused int e1000e_pm_resume(struct device *dev)
 	if (rc)
 		return rc;
 
-	if (er32(FWSM) & E1000_ICH_FWSM_FW_VALID &&
-	    hw->mac.type >= e1000_pch_adp) {
-		/* Unmask OEM Bits / Gig Disable / Restart AN 772_26[12] = 0 */
-		e1e_rphy(hw, I217_MEMPWR, &phy_data);
-		phy_data &= ~I217_MEMPWR_MOEM;
-		e1e_wphy(hw, I217_MEMPWR, phy_data);
-
-		/* Enable LCD reset */
-		hw->phy.reset_disable = false;
-	}
-
 	return e1000e_pm_thaw(dev);
 }
 
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
