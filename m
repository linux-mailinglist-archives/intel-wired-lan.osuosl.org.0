Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D5642756FAC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jul 2023 00:17:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A279D60F4B;
	Mon, 17 Jul 2023 22:17:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A279D60F4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689632250;
	bh=LCH3HVUXNqygpKz8pihglN2lG3kS7wrkq/TV4fd3m4E=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=xRZJ9S4n6PzWyO6A22xb4gwQcRtQulxUi5oJ7eCokCMVePZ143Cb8Cc3Wubt5n2XO
	 eGXfSUBLksDwPlRV+Xor4/atwgs9JuBqetAeoDIAuc4UdCFicUhfK6GvKpzMoZLH8B
	 dptOnTsgqOuVyymFmoZm8F462WvxEjOffziYsDF3FLnpiKnrQYH9gHisdEVrIbxli0
	 v38rzzXWk1mKfnJGtDbdg1JP8oDOGBzIXbCR1+a1Z4/eDb6MzNGD3UHYZ7lJmREoTM
	 Uf0BwKladwjws5Vttxx2V6hSezq12PIX6qiZZRZJ8pUWtY1pvbItOSmIOB+qJCD/Ha
	 QDHe8e4juD1YA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vpqYAD3DWDyo; Mon, 17 Jul 2023 22:17:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2960260F32;
	Mon, 17 Jul 2023 22:17:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2960260F32
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C40F71BF388
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 22:17:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A942A8199D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 22:17:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A942A8199D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z41BgBdN4cuT for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jul 2023 22:17:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 947A981769
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 947A981769
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 22:17:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="396889143"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="396889143"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 15:17:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="700659539"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="700659539"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 15:17:22 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon, 17 Jul 2023 15:17:13 -0700
Message-ID: <20230717221713.2249044-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689632243; x=1721168243;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=K6BH9S4f0Yzmay8ML7JxbdN24kdMDnvf22769bfsdy4=;
 b=Z/fDyMP/4jRjMPA9M3KqiehHuDQ5M7VJeYGOWChv/X0n/TtgLC1mFTRq
 WKZEnOrUTa5m4Tz7g5wzRriavp6N2XGYD5z2wDk8F9W122Qtq93kqcEqh
 YpxeUygWiwSDBHJXtLDjtgSJ7aGwhpF/Mz1z8u526LIYyqdCU7EHd51sG
 5fo1qE/mRYP/SiZSExhXwk20S1HKw9I4xD9bt9Uexi8U9dIRkZkjcXZc7
 xMEDMF8MbHCBzVmPoEAVeP6y+HPkFGZSyDdw4AeAhxtg/hHPi5W9aaD7l
 I9eyHcKLqiQGFVBHwcHxrCDpHZdWEx4pkyR3q682ddFcwN3SuyPNsMujC
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z/fDyMP/
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: introduce hw->phy_model for
 handling PTP PHY differences
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice driver has PTP support which works across a couple of different
device families. The device families each have different PHY hardware which
have unique requirements for programming.

Today, there is E810-based hardware, and E822-based hardware. To handle
this, the driver checks the ice_is_e810() function to separate between the
two existing families of hardware.

Future development is going to add new hardware designs which have further
unique requirements. To make this easier, introduce a phy_model field to
the HW structure. This field represents what PHY model the current device
has, and is used to allow distinguishing which logic a particular device
needs.

This will make supporting future upcoming hardware easier, by providing an
obvious place to initialize the PHY model, and by already using switch/case
statements instead of the previous if statements.

Astute reviewers may notice that there are a handful of remaining checks
for ice_is_e810() left in ice_ptp.c  These conflict with some other
cleanup patches in development, and will be fixed in the near future.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c    |  32 ++++--
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 104 ++++++++++++++++----
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   2 +
 drivers/net/ethernet/intel/ice/ice_type.h   |   8 ++
 4 files changed, 120 insertions(+), 26 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index db78bf156df4..8ac5afbbf9c2 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1366,6 +1366,7 @@ ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
 void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
 {
 	struct ice_ptp_port *ptp_port;
+	struct ice_hw *hw = &pf->hw;
 
 	if (!test_bit(ICE_FLAG_PTP, pf->flags))
 		return;
@@ -1380,11 +1381,18 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
 	/* Update cached link status for this port immediately */
 	ptp_port->link_up = linkup;
 
-	/* E810 devices do not need to reconfigure the PHY */
-	if (ice_is_e810(&pf->hw))
+	switch (hw->phy_model) {
+	case ICE_PHY_E810:
+		/* Do not reconfigure E810 PHY */
 		return;
+	case ICE_PHY_E822:
 
-	ice_ptp_port_phy_restart(ptp_port);
+		ice_ptp_port_phy_restart(ptp_port);
+
+		return;
+	default:
+		dev_warn(ice_pf_to_dev(pf), "%s: Unknown PHY type\n", __func__);
+	}
 }
 
 /**
@@ -2702,14 +2710,22 @@ static int ice_ptp_init_work(struct ice_pf *pf, struct ice_ptp *ptp)
  */
 static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
 {
+	struct ice_hw *hw = &pf->hw;
+
 	mutex_init(&ptp_port->ps_lock);
 
-	if (ice_is_e810(&pf->hw))
+	switch (hw->phy_model) {
+	case ICE_PHY_E810:
 		return ice_ptp_init_tx_e810(pf, &ptp_port->tx);
+	case ICE_PHY_E822:
+		kthread_init_delayed_work(&ptp_port->ov_work,
+					  ice_ptp_wait_for_offsets);
 
-	kthread_init_delayed_work(&ptp_port->ov_work,
-				  ice_ptp_wait_for_offsets);
-	return ice_ptp_init_tx_e822(pf, &ptp_port->tx, ptp_port->port_num);
+		return ice_ptp_init_tx_e822(pf, &ptp_port->tx,
+					    ptp_port->port_num);
+	default:
+		return -ENODEV;
+	}
 }
 
 /**
@@ -2730,6 +2746,8 @@ void ice_ptp_init(struct ice_pf *pf)
 	struct ice_hw *hw = &pf->hw;
 	int err;
 
+	ice_ptp_init_phy_model(hw);
+
 	/* If this function owns the clock hardware, it must allocate and
 	 * configure the PTP clock device to represent it.
 	 */
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index f174bac58aba..8afedd28ff94 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -3138,6 +3138,23 @@ void ice_ptp_unlock(struct ice_hw *hw)
 	wr32(hw, PFTSYN_SEM + (PFTSYN_SEM_BYTES * hw->pf_id), 0);
 }
 
+/**
+ * ice_ptp_init_phy_model - Initialize hw->phy_model based on device type
+ * @hw: pointer to the HW structure
+ *
+ * Determine the PHY model for the device, and initialize hw->phy_model
+ * for use by other functions.
+ */
+int ice_ptp_init_phy_model(struct ice_hw *hw)
+{
+	if (ice_is_e810(hw))
+		hw->phy_model = ICE_PHY_E810;
+	else
+		hw->phy_model = ICE_PHY_E822;
+
+	return 0;
+}
+
 /**
  * ice_ptp_tmr_cmd - Prepare and trigger a timer sync command
  * @hw: pointer to HW struct
@@ -3156,10 +3173,17 @@ static int ice_ptp_tmr_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
 	ice_ptp_src_cmd(hw, cmd);
 
 	/* Next, prepare the ports */
-	if (ice_is_e810(hw))
+	switch (hw->phy_model) {
+	case ICE_PHY_E810:
 		err = ice_ptp_port_cmd_e810(hw, cmd);
-	else
+		break;
+	case ICE_PHY_E822:
 		err = ice_ptp_port_cmd_e822(hw, cmd);
+		break;
+	default:
+		err = -EOPNOTSUPP;
+	}
+
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to prepare PHY ports for timer command %u, err %d\n",
 			  cmd, err);
@@ -3202,10 +3226,17 @@ int ice_ptp_init_time(struct ice_hw *hw, u64 time)
 
 	/* PHY timers */
 	/* Fill Rx and Tx ports and send msg to PHY */
-	if (ice_is_e810(hw))
+	switch (hw->phy_model) {
+	case ICE_PHY_E810:
 		err = ice_ptp_prep_phy_time_e810(hw, time & 0xFFFFFFFF);
-	else
+		break;
+	case ICE_PHY_E822:
 		err = ice_ptp_prep_phy_time_e822(hw, time & 0xFFFFFFFF);
+		break;
+	default:
+		err = -EOPNOTSUPP;
+	}
+
 	if (err)
 		return err;
 
@@ -3237,10 +3268,17 @@ int ice_ptp_write_incval(struct ice_hw *hw, u64 incval)
 	wr32(hw, GLTSYN_SHADJ_L(tmr_idx), lower_32_bits(incval));
 	wr32(hw, GLTSYN_SHADJ_H(tmr_idx), upper_32_bits(incval));
 
-	if (ice_is_e810(hw))
+	switch (hw->phy_model) {
+	case ICE_PHY_E810:
 		err = ice_ptp_prep_phy_incval_e810(hw, incval);
-	else
+		break;
+	case ICE_PHY_E822:
 		err = ice_ptp_prep_phy_incval_e822(hw, incval);
+		break;
+	default:
+		err = -EOPNOTSUPP;
+	}
+
 	if (err)
 		return err;
 
@@ -3296,10 +3334,17 @@ int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj)
 	wr32(hw, GLTSYN_SHADJ_L(tmr_idx), 0);
 	wr32(hw, GLTSYN_SHADJ_H(tmr_idx), adj);
 
-	if (ice_is_e810(hw))
+	switch (hw->phy_model) {
+	case ICE_PHY_E810:
 		err = ice_ptp_prep_phy_adj_e810(hw, adj);
-	else
+		break;
+	case ICE_PHY_E822:
 		err = ice_ptp_prep_phy_adj_e822(hw, adj);
+		break;
+	default:
+		err = -EOPNOTSUPP;
+	}
+
 	if (err)
 		return err;
 
@@ -3319,10 +3364,14 @@ int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj)
  */
 int ice_read_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx, u64 *tstamp)
 {
-	if (ice_is_e810(hw))
+	switch (hw->phy_model) {
+	case ICE_PHY_E810:
 		return ice_read_phy_tstamp_e810(hw, block, idx, tstamp);
-	else
+	case ICE_PHY_E822:
 		return ice_read_phy_tstamp_e822(hw, block, idx, tstamp);
+	default:
+		return -EOPNOTSUPP;
+	}
 }
 
 /**
@@ -3337,10 +3386,14 @@ int ice_read_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx, u64 *tstamp)
  */
 int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx)
 {
-	if (ice_is_e810(hw))
+	switch (hw->phy_model) {
+	case ICE_PHY_E810:
 		return ice_clear_phy_tstamp_e810(hw, block, idx);
-	else
+	case ICE_PHY_E822:
 		return ice_clear_phy_tstamp_e822(hw, block, idx);
+	default:
+		return -EOPNOTSUPP;
+	}
 }
 
 /**
@@ -3349,10 +3402,14 @@ int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx)
  */
 void ice_ptp_reset_ts_memory(struct ice_hw *hw)
 {
-	if (ice_is_e810(hw))
+	switch (hw->phy_model) {
+	case ICE_PHY_E822:
+		ice_ptp_reset_ts_memory_e822(hw);
+		break;
+	case ICE_PHY_E810:
+	default:
 		return;
-
-	ice_ptp_reset_ts_memory_e822(hw);
+	}
 }
 
 /**
@@ -3371,10 +3428,14 @@ int ice_ptp_init_phc(struct ice_hw *hw)
 	/* Clear event err indications for auxiliary pins */
 	(void)rd32(hw, GLTSYN_STAT(src_idx));
 
-	if (ice_is_e810(hw))
+	switch (hw->phy_model) {
+	case ICE_PHY_E810:
 		return ice_ptp_init_phc_e810(hw);
-	else
+	case ICE_PHY_E822:
 		return ice_ptp_init_phc_e822(hw);
+	default:
+		return -EOPNOTSUPP;
+	}
 }
 
 /**
@@ -3390,10 +3451,15 @@ int ice_ptp_init_phc(struct ice_hw *hw)
  */
 int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready)
 {
-	if (ice_is_e810(hw))
+	switch (hw->phy_model) {
+	case ICE_PHY_E810:
 		return ice_get_phy_tx_tstamp_ready_e810(hw, block,
 							tstamp_ready);
-	else
+	case ICE_PHY_E822:
 		return ice_get_phy_tx_tstamp_ready_e822(hw, block,
 							tstamp_ready);
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index ba4ab96073e0..c17d9dcf96f2 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -203,6 +203,8 @@ int ice_write_sma_ctrl_e810t(struct ice_hw *hw, u8 data);
 int ice_read_pca9575_reg_e810t(struct ice_hw *hw, u8 offset, u8 *data);
 bool ice_is_pca9575_present(struct ice_hw *hw);
 
+int ice_ptp_init_phy_model(struct ice_hw *hw);
+
 #define PFTSYN_SEM_BYTES	4
 
 #define ICE_PTP_CLOCK_INDEX_0	0x00
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index f1231a8162af..581b18cd32d0 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -805,6 +805,13 @@ struct ice_mbx_data {
 	u16 async_watermark_val;
 };
 
+/* PHY model */
+enum ice_phy_model {
+	ICE_PHY_UNSUP = -1,
+	ICE_PHY_E810  = 1,
+	ICE_PHY_E822,
+};
+
 /* Port hardware description */
 struct ice_hw {
 	u8 __iomem *hw_addr;
@@ -826,6 +833,7 @@ struct ice_hw {
 	u8 revision_id;
 
 	u8 pf_id;		/* device profile info */
+	enum ice_phy_model phy_model;
 
 	u16 max_burst_size;	/* driver sets this value */
 

base-commit: 3a78e3e1ac7da2f416519fc52260761e563d9509
-- 
2.41.0.1.g9857a21e0017.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
