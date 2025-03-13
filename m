Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E1525A5F73B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Mar 2025 15:06:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43534419AF;
	Thu, 13 Mar 2025 14:06:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W6ZLYqEOWAj1; Thu, 13 Mar 2025 14:06:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 90B34419C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741874765;
	bh=8eQFTe4m8e5vF4QC8G2hADmhbCNwrw81mBBSmnurk48=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=JcRI/rmhcYG7MLYw1DlfoiiQ2yuiFujZeeeVt9DwZ+kNJA4hTL1XeP53ojl9P26Ny
	 4EAaSxILtr33lnPmkvXoi0hR/+Yhxp8+Qz3vxXK6kqRxzyDOgAsau0GSciSrGGRUKm
	 VRVTxkXmamqyGli13fOU/olQ1GiJ6wfkzZG8Xc7WXiu4/1hBCtWQ8f+Dz+rq29Sbhz
	 ReixiXzPHUOr+Nmyw/42eDiIPo496gchjBB7uQVz6SDo6CNnAio+LiVpWKlczDLwLa
	 Cjinpx25d9O0hXzv88yf/3HPeVpSGrE3fNd5NaWj5ieTbJhE2L6LR0W8LXqxulUayr
	 bEvMKaGsV2axA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 90B34419C7;
	Thu, 13 Mar 2025 14:06:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 05A11EA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Mar 2025 14:06:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E719D4198C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Mar 2025 14:06:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o4zMnz5FBmwa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Mar 2025 14:06:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BB3F4417BC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB3F4417BC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BB3F4417BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Mar 2025 14:06:01 +0000 (UTC)
X-CSE-ConnectionGUID: cxnzWSpxRxW6uhNtOH4OiA==
X-CSE-MsgGUID: J/KsN5dSRdG3dDJsSYnwRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="53642744"
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="53642744"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 07:06:01 -0700
X-CSE-ConnectionGUID: qTbQq65YQ5WmCcYK+2Qn9A==
X-CSE-MsgGUID: owyaFCnBQP6VHO2OPSnI1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="125586238"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.51])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 07:06:00 -0700
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>
Date: Thu, 13 Mar 2025 16:05:56 +0200
Message-Id: <20250313140556.1064965-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741874762; x=1773410762;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=I+RHCEBL16xOHZraamxZh/XArBuvN4vqlszHVhegNSA=;
 b=mxk/lTkurCIJqADN5Ra1Uaiuc4J6P9bzbNSitcrV/De34TbzvmYibH7G
 LJvpwarI358+fz4z03W4Wyvovg1iUT2dQWEDVCLb0zWLLaYyfNnaq9y1t
 gikbY0lk94XMiLkXMR6KPAfukrl3cn8twofQZwDc5wb2NRJCfDGs3ELEX
 Jsffk0bcSbGt8IpYk8+DwJCkXqlP98GN+zkSMx9f3qy0KpjRp+ZEUsqHg
 +4Ak1/MLzVCTkHhwSC3/EgMYaSmS+EdliEfghvXZ9KeNKFd+7zZZNmztz
 9JQtIX/tN+H77V3KV7nxoSMUDaZD3T7ZaBuLLkPJUBlj1wEiH8aVvKTBu
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mxk/lTku
Subject: [Intel-wired-lan] [PATCH iwl-net v4 1/1] e1000e: change k1
 configuration on MTP and later platforms
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Starting from Meteor Lake, the Kumeran interface between the integrated
MAC and the I219 PHY works at a different frequency. This causes sporadic
MDI errors when accessing the PHY, and in rare circumstances could lead
to packet corruption.

To overcome this, introduce minor changes to the Kumeran idle
state (K1) parameters during device initialization. Hardware reset
reverts this configuration, therefore it needs to be applied in a few
places.

Fixes: cc23f4f0b6b9 ("e1000e: Add support for Meteor Lake")
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
v4: fix a typo
v3: refactor code to avoid edge case errors
v2: address community comments
v1: initial version
---
 drivers/net/ethernet/intel/e1000e/defines.h |  3 +
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 80 +++++++++++++++++++--
 drivers/net/ethernet/intel/e1000e/ich8lan.h |  4 ++
 3 files changed, 82 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/defines.h b/drivers/net/ethernet/intel/e1000e/defines.h
index 5e2cfa73f889..8294a7c4f122 100644
--- a/drivers/net/ethernet/intel/e1000e/defines.h
+++ b/drivers/net/ethernet/intel/e1000e/defines.h
@@ -803,4 +803,7 @@
 /* SerDes Control */
 #define E1000_GEN_POLL_TIMEOUT          640
 
+#define E1000_FEXTNVM12_PHYPD_CTRL_MASK	0x00C00000
+#define E1000_FEXTNVM12_PHYPD_CTRL_P1	0x00800000
+
 #endif /* _E1000_DEFINES_H_ */
diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 2f9655cf5dd9..364378133526 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -285,6 +285,45 @@ static void e1000_toggle_lanphypc_pch_lpt(struct e1000_hw *hw)
 	}
 }
 
+/**
+ * e1000_reconfigure_k1_exit_timeout - reconfigure K1 exit timeout to
+ * align to MTP and later platform requirements.
+ * @hw: pointer to the HW structure
+ *
+ * Context: PHY semaphore must be held by caller.
+ * Return: 0 on success, negative on failure
+ */
+static s32 e1000_reconfigure_k1_exit_timeout(struct e1000_hw *hw)
+{
+	u16 phy_timeout;
+	u32 fextnvm12;
+	s32 ret_val;
+
+	if (hw->mac.type < e1000_pch_mtp)
+		return 0;
+
+	/* Change Kumeran K1 power down state from P0s to P1 */
+	fextnvm12 = er32(FEXTNVM12);
+	fextnvm12 &= ~E1000_FEXTNVM12_PHYPD_CTRL_MASK;
+	fextnvm12 |= E1000_FEXTNVM12_PHYPD_CTRL_P1;
+	ew32(FEXTNVM12, fextnvm12);
+
+	/* Wait for the interface the settle */
+	usleep_range(1000, 1100);
+
+	/* Change K1 exit timeout */
+	ret_val = e1e_rphy_locked(hw, I217_PHY_TIMEOUTS_REG,
+				  &phy_timeout);
+	if (ret_val)
+		return ret_val;
+
+	phy_timeout &= ~I217_PHY_TIMEOUTS_K1_EXIT_TO_MASK;
+	phy_timeout |= 0xF00;
+
+	return e1e_wphy_locked(hw, I217_PHY_TIMEOUTS_REG,
+				  phy_timeout);
+}
+
 /**
  *  e1000_init_phy_workarounds_pchlan - PHY initialization workarounds
  *  @hw: pointer to the HW structure
@@ -327,15 +366,22 @@ static s32 e1000_init_phy_workarounds_pchlan(struct e1000_hw *hw)
 	 * LANPHYPC Value bit to force the interconnect to PCIe mode.
 	 */
 	switch (hw->mac.type) {
+	case e1000_pch_mtp:
+	case e1000_pch_lnp:
+	case e1000_pch_ptp:
+	case e1000_pch_nvp:
+		/* At this point the PHY might be inaccessible so don't
+		 * propagate the failure
+		 */
+		if (e1000_reconfigure_k1_exit_timeout(hw))
+			e_dbg("Failed to reconfigure K1 exit timeout\n");
+
+		fallthrough;
 	case e1000_pch_lpt:
 	case e1000_pch_spt:
 	case e1000_pch_cnp:
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
-	case e1000_pch_mtp:
-	case e1000_pch_lnp:
-	case e1000_pch_ptp:
-	case e1000_pch_nvp:
 		if (e1000_phy_is_accessible_pchlan(hw))
 			break;
 
@@ -419,8 +465,20 @@ static s32 e1000_init_phy_workarounds_pchlan(struct e1000_hw *hw)
 		 *  the PHY is in.
 		 */
 		ret_val = hw->phy.ops.check_reset_block(hw);
-		if (ret_val)
+		if (ret_val) {
 			e_err("ME blocked access to PHY after reset\n");
+			goto out;
+		}
+
+		if (hw->mac.type >= e1000_pch_mtp) {
+			ret_val = hw->phy.ops.acquire(hw);
+			if (ret_val) {
+				e_err("Failed to reconfigure K1 exit timeout\n");
+				goto out;
+			}
+			ret_val = e1000_reconfigure_k1_exit_timeout(hw);
+			hw->phy.ops.release(hw);
+		}
 	}
 
 out:
@@ -4888,6 +4946,18 @@ static s32 e1000_init_hw_ich8lan(struct e1000_hw *hw)
 	u16 i;
 
 	e1000_initialize_hw_bits_ich8lan(hw);
+	if (hw->mac.type >= e1000_pch_mtp) {
+		ret_val = hw->phy.ops.acquire(hw);
+		if (ret_val)
+			return ret_val;
+
+		ret_val = e1000_reconfigure_k1_exit_timeout(hw);
+		hw->phy.ops.release(hw);
+		if (ret_val) {
+			e_dbg("Error failed to reconfigure K1 exit timeout\n");
+			return ret_val;
+		}
+	}
 
 	/* Initialize identification LED */
 	ret_val = mac->ops.id_led_init(hw);
diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.h b/drivers/net/ethernet/intel/e1000e/ich8lan.h
index 2504b11c3169..5feb589a9b5f 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.h
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.h
@@ -219,6 +219,10 @@
 #define I217_PLL_CLOCK_GATE_REG	PHY_REG(772, 28)
 #define I217_PLL_CLOCK_GATE_MASK	0x07FF
 
+/* PHY Timeouts */
+#define I217_PHY_TIMEOUTS_REG                   PHY_REG(770, 21)
+#define I217_PHY_TIMEOUTS_K1_EXIT_TO_MASK       0x0FC0
+
 #define SW_FLAG_TIMEOUT		1000	/* SW Semaphore flag timeout in ms */
 
 /* Inband Control */
-- 
2.34.1

