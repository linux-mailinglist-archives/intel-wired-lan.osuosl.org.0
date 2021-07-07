Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF9D3BF28C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jul 2021 01:41:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3262560AC4;
	Wed,  7 Jul 2021 23:41:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jI327TwtGULZ; Wed,  7 Jul 2021 23:41:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 37844605C8;
	Wed,  7 Jul 2021 23:41:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2831E1BF48C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jul 2021 23:41:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3C8F483004
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jul 2021 23:41:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H_LIWAo9Cq8s for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jul 2021 23:41:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5B41683342
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jul 2021 23:41:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="273250407"
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="273250407"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 16:41:13 -0700
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="411136316"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.4])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 16:41:13 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed,  7 Jul 2021 16:41:03 -0700
Message-Id: <20210707234108.4071506-9-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.31.1.331.gb0c09ab8796f
In-Reply-To: <20210707234108.4071506-1-jacob.e.keller@intel.com>
References: <20210707234108.4071506-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next v3 08/13] ice: introduce
 ice_ptp_init_phc function
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

When we enable support for E822 devices, there are some additional
steps required to initialize the PTP hardware clock. To make this easier
to implement as device-specific behavior, refactor the register setups
in ice_ptp_init_owner to a new ice_ptp_init_phc function defined in
ice_ptp_hw.c

This function will have a common section, and an e810 specific
sub-implementation.

This will enable easily extending the functionality to cover the E822
specific setup required to initialize the hardware clock generation
unit. It also makes it clear which steps are E810 specific vs which ones
are necessary for all ice devices.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 38 +++++++++------------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 34 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  1 +
 3 files changed, 52 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 501fb707cea2..4bfd7f73002a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1454,24 +1454,14 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
 	struct timespec64 ts;
-	u8 src_idx;
 	int err;
 
-	wr32(hw, GLTSYN_SYNC_DLAY, 0);
-
-	/* Clear some HW residue and enable source clock */
-	src_idx = hw->func_caps.ts_func_info.tmr_index_owned;
-
-	/* Enable source clocks */
-	wr32(hw, GLTSYN_ENA(src_idx), GLTSYN_ENA_TSYN_ENA_M);
-
-	/* Enable PHY time sync */
-	err = ice_ptp_init_phy_e810(hw);
-	if (err)
-		goto err_exit;
-
-	/* Clear event status indications for auxiliary pins */
-	(void)rd32(hw, GLTSYN_STAT(src_idx));
+	err = ice_ptp_init_phc(hw);
+	if (err) {
+		dev_err(dev, "Failed to initialize PHC, err %d\n",
+			err);
+		return err;
+	}
 
 	/* Acquire the global hardware lock */
 	if (!ice_ptp_lock(hw)) {
@@ -1516,12 +1506,16 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
 }
 
 /**
- * ice_ptp_init - Initialize the PTP support after device probe or reset
+ * ice_ptp_init - Initialize PTP hardware clock support
  * @pf: Board private structure
  *
- * This function sets device up for PTP support. The first time it is run, it
- * will create a clock device. It does not create a clock device if one
- * already exists. It also reconfigures the device after a reset.
+ * Setup the device for interacting with the PTP hardware clock for all
+ * functions, both the function that owns the clock hardware, and the
+ * functions connected to the clock hardware.
+ *
+ * The clock owner will allocate and register a ptp_clock with the
+ * PTP_1588_CLOCK infrastructure. All functions allocate a kthread and work
+ * items used for asynchronous work such as Tx timestamps and periodic work.
  */
 void ice_ptp_init(struct ice_pf *pf)
 {
@@ -1534,7 +1528,9 @@ void ice_ptp_init(struct ice_pf *pf)
 	if (!ice_is_e810(hw))
 		return;
 
-	/* Check if this PF owns the source timer */
+	/* If this function owns the clock hardware, it must allocate and
+	 * configure the PTP clock device to represent it.
+	 */
 	if (hw->func_caps.ts_func_info.src_tmr_owned) {
 		err = ice_ptp_init_owner(pf);
 		if (err)
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 5dbd4d91dba1..65e866e536ec 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -213,6 +213,21 @@ int ice_ptp_init_phy_e810(struct ice_hw *hw)
 	return err;
 }
 
+/**
+ * ice_ptp_init_phc_e810 - Perform E810 specific PHC initialization
+ * @hw: pointer to HW struct
+ *
+ * Perform E810-specific PTP hardware clock initialization steps.
+ */
+static int ice_ptp_init_phc_e810(struct ice_hw *hw)
+{
+	/* Ensure synchronization delay is zero */
+	wr32(hw, GLTSYN_SYNC_DLAY, 0);
+
+	/* Initialize the PHY */
+	return ice_ptp_init_phy_e810(hw);
+}
+
 /**
  * ice_ptp_prep_phy_time_e810 - Prepare PHY port with initial time
  * @hw: Board private structure
@@ -649,3 +664,22 @@ int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx)
 {
 	return ice_clear_phy_tstamp_e810(hw, block, idx);
 }
+
+/**
+ * ice_ptp_init_phc - Initialize PTP hardware clock
+ * @hw: pointer to the HW struct
+ *
+ * Perform the steps required to initialize the PTP hardware clock.
+ */
+int ice_ptp_init_phc(struct ice_hw *hw)
+{
+	u8 src_idx = hw->func_caps.ts_func_info.tmr_index_owned;
+
+	/* Enable source clocks */
+	wr32(hw, GLTSYN_ENA(src_idx), GLTSYN_ENA_TSYN_ENA_M);
+
+	/* Clear event err indications for auxiliary pins */
+	(void)rd32(hw, GLTSYN_STAT(src_idx));
+
+	return ice_ptp_init_phc_e810(hw);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 55a414e87018..821abec0f8dc 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -27,6 +27,7 @@ int ice_ptp_write_incval_locked(struct ice_hw *hw, u64 incval);
 int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj);
 int ice_read_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx, u64 *tstamp);
 int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx);
+int ice_ptp_init_phc(struct ice_hw *hw);
 
 /* E810 family functions */
 int ice_ptp_init_phy_e810(struct ice_hw *hw);
-- 
2.31.1.331.gb0c09ab8796f

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
