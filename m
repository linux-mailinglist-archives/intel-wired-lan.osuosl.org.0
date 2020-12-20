Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DBE2DF499
	for <lists+intel-wired-lan@lfdr.de>; Sun, 20 Dec 2020 10:17:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 031498756C;
	Sun, 20 Dec 2020 09:17:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U+GA5PPcV8FB; Sun, 20 Dec 2020 09:16:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 11F7687570;
	Sun, 20 Dec 2020 09:16:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D46AC1BF2F3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Dec 2020 09:16:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CE88E203EA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Dec 2020 09:16:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vBDJDx5reYwL for <intel-wired-lan@lists.osuosl.org>;
 Sun, 20 Dec 2020 09:16:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id D004420352
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Dec 2020 09:16:56 +0000 (UTC)
IronPort-SDR: qgGGWSFlZiMHvxR5QjizvmuSWrn/TwwKwUfdO68ENR0ZJYEjT4pa5b1bMB3Pl8mcV131jayP4B
 uc+j1kRNljXA==
X-IronPort-AV: E=McAfee;i="6000,8403,9840"; a="239711047"
X-IronPort-AV: E=Sophos;i="5.78,434,1599548400"; d="scan'208";a="239711047"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2020 01:16:55 -0800
IronPort-SDR: XaFRApMobz+gvNVfUaviedbh42GMA9YJSGNAr2WTRWRnJReoOTcayRPChoQcTfFFNST2Df5j2d
 /ZL/xsnEpd7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,434,1599548400"; d="scan'208";a="389937908"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by fmsmga002.fm.intel.com with ESMTP; 20 Dec 2020 01:16:53 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun, 20 Dec 2020 11:16:49 +0200
Message-Id: <20201220091649.2150077-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Expose the gPHY firmware
 version
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

Complete to commit 6093e11d357d ("igc: Expose the NVM version")
and expose the gPHY (i225 PHY) firmware version

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  2 +-
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  9 +++++++--
 drivers/net/ethernet/intel/igc/igc_phy.c     | 19 +++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_phy.h     |  1 +
 drivers/net/ethernet/intel/igc/igc_regs.h    |  1 +
 5 files changed, 29 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 29be8833956a..1ce72d65d37e 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -221,7 +221,7 @@ struct igc_adapter {
 	ktime_t ptp_reset_start; /* Reset time in clock mono */
 
 	struct bpf_prog *xdp_prog;
-	char fw_version[16];
+	char fw_version[32];
 };
 
 void igc_up(struct igc_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 56997de15a1e..6b89a10f1d02 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -131,16 +131,21 @@ static void igc_ethtool_get_drvinfo(struct net_device *netdev,
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	struct igc_hw *hw = &adapter->hw;
 	u16 nvm_version = 0;
+	u16 gphy_version = 0;
 
 	strlcpy(drvinfo->driver, igc_driver_name, sizeof(drvinfo->driver));
 
 	/* NVM image version is reported as firmware version for i225 device */
 	hw->nvm.ops.read(hw, IGC_NVM_DEV_STARTER, 1, &nvm_version);
 
+	/* gPHY firmware version is reported as PHY FW version */
+	gphy_version = igc_read_phy_fw_version(hw);
+
 	scnprintf(adapter->fw_version,
 		  sizeof(adapter->fw_version),
-		  "%x",
-		  nvm_version);
+		  "%x:%x",
+		  nvm_version,
+		  gphy_version);
 
 	strlcpy(drvinfo->fw_version, adapter->fw_version,
 		sizeof(drvinfo->fw_version));
diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
index 8e1799508edc..346f78e8034c 100644
--- a/drivers/net/ethernet/intel/igc/igc_phy.c
+++ b/drivers/net/ethernet/intel/igc/igc_phy.c
@@ -791,3 +791,22 @@ s32 igc_read_phy_reg_gpy(struct igc_hw *hw, u32 offset, u16 *data)
 
 	return ret_val;
 }
+
+/**
+ * igc_read_phy_fw_version - Read gPHY 211 firmware version
+ * @hw: pointer to the HW structure
+ */
+u16 igc_read_phy_fw_version(struct igc_hw *hw)
+{
+	struct igc_phy_info *phy = &hw->phy;
+	u16 gphy_version = 0;
+	u16 ret_val = 0;
+
+	/* NVM image version is reported as firmware version for i225 device */
+	ret_val = phy->ops.read_reg(hw, IGC_GPHY_VERSION, &gphy_version);
+
+	if (ret_val)
+		hw_dbg("igc_phy: read wrong gphy version\n");
+
+	return gphy_version;
+}
diff --git a/drivers/net/ethernet/intel/igc/igc_phy.h b/drivers/net/ethernet/intel/igc/igc_phy.h
index 25cba33de7e2..1b031372d206 100644
--- a/drivers/net/ethernet/intel/igc/igc_phy.h
+++ b/drivers/net/ethernet/intel/igc/igc_phy.h
@@ -17,5 +17,6 @@ void igc_power_up_phy_copper(struct igc_hw *hw);
 void igc_power_down_phy_copper(struct igc_hw *hw);
 s32 igc_write_phy_reg_gpy(struct igc_hw *hw, u32 offset, u16 data);
 s32 igc_read_phy_reg_gpy(struct igc_hw *hw, u32 offset, u16 *data);
+u16 igc_read_phy_fw_version(struct igc_hw *hw);
 
 #endif
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index b52dd9d737e8..3e5cb7aef9da 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -13,6 +13,7 @@
 #define IGC_MDICNFG		0x00E04  /* MDC/MDIO Configuration - RW */
 #define IGC_CONNSW		0x00034  /* Copper/Fiber switch control - RW */
 #define IGC_I225_PHPM		0x00E14  /* I225 PHY Power Management */
+#define IGC_GPHY_VERSION	0x0001E  /* I225 gPHY Firmware Version */
 
 /* Internal Packet Buffer Size Registers */
 #define IGC_RXPBS		0x02404  /* Rx Packet Buffer Size - RW */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
