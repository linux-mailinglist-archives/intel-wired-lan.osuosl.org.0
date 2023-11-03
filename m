Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8285C7E0C67
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Nov 2023 00:47:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8AAA241EA9;
	Fri,  3 Nov 2023 23:47:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8AAA241EA9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699055237;
	bh=ZTxOn1jsfr0PxSBuKXHV6pnjonzVrm3fNx2ZOO2kwsM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5M4gsH3Gcn9obJnrokf1X2bArcuycdviZgoC64WMrt8zPinH+hY4UxFFnHjLxgA+E
	 WLcCALkN6FcKoZ+6CFItQJo3BjoObNyrHYlG14rJ7truLq0VHeMQYG1g3PiNOQzQ88
	 nsEYlCBdN2jnMkypn1SG+HVYceUny93Rg2htsXl/t+41x83HWSvNrEL+PPU3A547gd
	 yIsIGq2PfE6ZtmWZHPkFZOlBhANpUl34dFY/Yvr+u9me6hxRhqHuvPG/AGBHQYUx/B
	 FWqhqpyOARmbOUpCNxb2OAEVQP8Og3fL/i3cQfAivcGYvPLmch2Grf2cUd9nj+pCmk
	 8nJytajy9e88A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4PR66MD5fL_K; Fri,  3 Nov 2023 23:47:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D20CF41E90;
	Fri,  3 Nov 2023 23:47:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D20CF41E90
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2E98E1BF20D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Nov 2023 23:47:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1490C823F9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Nov 2023 23:47:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1490C823F9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vLbl5LSPkwxR for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Nov 2023 23:47:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 039B6823F6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Nov 2023 23:47:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 039B6823F6
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="374076061"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; d="scan'208";a="374076061"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 16:47:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="905504344"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; d="scan'208";a="905504344"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 16:47:03 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri,  3 Nov 2023 16:46:58 -0700
Message-ID: <20231103234658.511859-4-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231103234658.511859-1-jacob.e.keller@intel.com>
References: <20231103234658.511859-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699055225; x=1730591225;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I6miPb4f5Ejvw4Kxn9y8pqM+f1RWCJWfcYeJOpjGU24=;
 b=NlKHUw8c1XFkNxOqfVg1md7F0jKmL4a7pQsv+bwa/iBC3QqFKEVDjIHk
 PD5s4+qv/i7+kLhvEe1PbMPsL7I5nnJ5D7eG3B9oKXMOongyjopxrHWpZ
 v4jhVUlh/5g+ryRMbdEHK1szbjUG36laX3UX7TkbsYPxvyPsHwffNnd2i
 /rKg93Qq0XhEhclklpmXNZ3H8UOBUqt9MNDVghllvJku9pnLoqv65OfLA
 fsmuTsC+j0XuGNbrTeKrFwwOSAi7V0913SlwSQCpIOflFag0w0uw0t1YL
 wpohCJJlRyxKuPA0NgYedywWU+9NIV73qCkP5MwJkIgMknFpxRRDcK0No
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NlKHUw8c
Subject: [Intel-wired-lan] [PATCH iwl-net 3/3] ice: restore timestamp
 configuration after device reset
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The driver calls ice_ptp_cfg_timestamp() during ice_ptp_prepare_for_reset()
to disable timestamping while the device is resetting. This operation
destroys the user requested configuration. While the driver does call
ice_ptp_cfg_timestamp in ice_rebuild() to restore some hardware settings
after a reset, it unconditionally passes true or false, resulting in
failure to restore previous user space configuration.

This results in a device reset forcibly disabling timestamp configuration
regardless of current user settings.

This was not detected previously due to a quirk of the LinuxPTP ptp4l
application. If ptp4l detects a missing timestamp, it enters a fault state
and performs recovery logic which includes executing SIOCSHWTSTAMP again,
restoring the now accidentally cleared configuration.

Not every application does this, and for these applications, timestamps
will mysteriously stop after a PF reset, without being restored until an
application restart.

Fix this by replacing ice_ptp_cfg_timestamp() with two new functions:

1) ice_ptp_disable_timestamp_mode() which unconditionally disables the
   timestamping logic in ice_ptp_prepare_for_reset() and ice_ptp_release()

2) ice_ptp_restore_timestamp_mode() which calls
   ice_ptp_restore_tx_interrupt() to restore Tx timestamping configuration,
   calls ice_set_rx_tstamp() to restore Rx timestamping configuration, and
   issues an immediate TSYN_TX interrupt to ensure that timestamps which
   may have occurred during the device reset get processed.

Modify the ice_ptp_set_timestamp_mode to directly save the user
configuration and then call ice_ptp_restore_timestamp_mode. This way, reset
no longer destroys the saved user configuration.

This obsoletes the ice_set_tx_tstamp() function which can now be safely
removed.

With this change, all devices should now restore Tx and Rx timestamping
functionality correctly after a PF reset without application intervention.

Fixes: 77a781155a65 ("ice: enable receive hardware timestamping")
Fixes: ea9b847cda64 ("ice: enable transmit timestamps for E810 devices")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 12 +---
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 76 ++++++++++++++---------
 drivers/net/ethernet/intel/ice/ice_ptp.h  |  5 +-
 3 files changed, 52 insertions(+), 41 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 6607fa6fe556..fb9c93f37e84 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -7401,15 +7401,6 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 		goto err_vsi_rebuild;
 	}
 
-	/* configure PTP timestamping after VSI rebuild */
-	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags)) {
-		if (pf->ptp.tx_interrupt_mode == ICE_PTP_TX_INTERRUPT_SELF)
-			ice_ptp_cfg_timestamp(pf, false);
-		else if (pf->ptp.tx_interrupt_mode == ICE_PTP_TX_INTERRUPT_ALL)
-			/* for E82x PHC owner always need to have interrupts */
-			ice_ptp_cfg_timestamp(pf, true);
-	}
-
 	err = ice_vsi_rebuild_by_type(pf, ICE_VSI_SWITCHDEV_CTRL);
 	if (err) {
 		dev_err(dev, "Switchdev CTRL VSI rebuild failed: %d\n", err);
@@ -7461,6 +7452,9 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 	ice_plug_aux_dev(pf);
 	if (ice_is_feature_supported(pf, ICE_F_SRIOV_LAG))
 		ice_lag_rebuild(pf);
+
+	/* Restore timestamp mode settings after VSI rebuild */
+	ice_ptp_restore_timestamp_mode(pf);
 	return;
 
 err_vsi_rebuild:
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 624d05b4bbd9..71f405f8a6fe 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -294,18 +294,6 @@ static void ice_ptp_cfg_tx_interrupt(struct ice_pf *pf)
 	wr32(hw, PFINT_OICR_ENA, val);
 }
 
-/**
- * ice_set_tx_tstamp - Enable or disable Tx timestamping
- * @pf: The PF pointer to search in
- * @on: bool value for whether timestamps are enabled or disabled
- */
-static void ice_set_tx_tstamp(struct ice_pf *pf, bool on)
-{
-	pf->ptp.tstamp_config.tx_type = on ? HWTSTAMP_TX_ON : HWTSTAMP_TX_OFF;
-
-	ice_ptp_cfg_tx_interrupt(pf);
-}
-
 /**
  * ice_set_rx_tstamp - Enable or disable Rx timestamping
  * @pf: The PF pointer to search in
@@ -317,7 +305,7 @@ static void ice_set_rx_tstamp(struct ice_pf *pf, bool on)
 	u16 i;
 
 	vsi = ice_get_main_vsi(pf);
-	if (!vsi)
+	if (!vsi || !vsi->rx_rings)
 		return;
 
 	/* Set the timestamp flag for all the Rx rings */
@@ -326,23 +314,50 @@ static void ice_set_rx_tstamp(struct ice_pf *pf, bool on)
 			continue;
 		vsi->rx_rings[i]->ptp_rx = on;
 	}
-
-	pf->ptp.tstamp_config.rx_filter = on ? HWTSTAMP_FILTER_ALL :
-					       HWTSTAMP_FILTER_NONE;
 }
 
 /**
- * ice_ptp_cfg_timestamp - Configure timestamp for init/deinit
+ * ice_ptp_disable_timestamp_mode - Disable current timestamp mode
  * @pf: Board private structure
- * @ena: bool value to enable or disable time stamp
  *
- * This function will configure timestamping during PTP initialization
- * and deinitialization
+ * Called during preparation for reset to temporarily disable timestamping on
+ * the device. Called during remove to disable timestamping while cleaning up
+ * driver resources.
  */
-void ice_ptp_cfg_timestamp(struct ice_pf *pf, bool ena)
+static void ice_ptp_disable_timestamp_mode(struct ice_pf *pf)
 {
-	ice_set_tx_tstamp(pf, ena);
-	ice_set_rx_tstamp(pf, ena);
+	struct ice_hw *hw = &pf->hw;
+	u32 val;
+
+	val = rd32(hw, PFINT_OICR_ENA);
+	val &= ~PFINT_OICR_TSYN_TX_M;
+	wr32(hw, PFINT_OICR_ENA, val);
+
+	ice_set_rx_tstamp(pf, false);
+}
+
+/**
+ * ice_ptp_restore_timestamp_mode - Restore timestamp configuration
+ * @pf: Board private structure
+ *
+ * Called at the end of rebuild to restore timestamp configuration after
+ * a device reset.
+ */
+void ice_ptp_restore_timestamp_mode(struct ice_pf *pf)
+{
+	struct ice_hw *hw = &pf->hw;
+	bool enable_rx;
+
+	ice_ptp_cfg_tx_interrupt(pf);
+
+	enable_rx = pf->ptp.tstamp_config.rx_filter == HWTSTAMP_FILTER_ALL;
+	ice_set_rx_tstamp(pf, enable_rx);
+
+	/* Trigger an immediate software interrupt to ensure that timestamps
+	 * which occurred during reset are handled now.
+	 */
+	wr32(hw, PFINT_OICR, PFINT_OICR_TSYN_TX_M);
+	ice_flush(hw);
 }
 
 /**
@@ -2043,10 +2058,10 @@ ice_ptp_set_timestamp_mode(struct ice_pf *pf, struct hwtstamp_config *config)
 {
 	switch (config->tx_type) {
 	case HWTSTAMP_TX_OFF:
-		ice_set_tx_tstamp(pf, false);
+		pf->ptp.tstamp_config.tx_type = HWTSTAMP_TX_OFF;
 		break;
 	case HWTSTAMP_TX_ON:
-		ice_set_tx_tstamp(pf, true);
+		pf->ptp.tstamp_config.tx_type = HWTSTAMP_TX_ON;
 		break;
 	default:
 		return -ERANGE;
@@ -2054,7 +2069,7 @@ ice_ptp_set_timestamp_mode(struct ice_pf *pf, struct hwtstamp_config *config)
 
 	switch (config->rx_filter) {
 	case HWTSTAMP_FILTER_NONE:
-		ice_set_rx_tstamp(pf, false);
+		pf->ptp.tstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
 		break;
 	case HWTSTAMP_FILTER_PTP_V1_L4_EVENT:
 	case HWTSTAMP_FILTER_PTP_V1_L4_SYNC:
@@ -2070,12 +2085,15 @@ ice_ptp_set_timestamp_mode(struct ice_pf *pf, struct hwtstamp_config *config)
 	case HWTSTAMP_FILTER_PTP_V2_L4_DELAY_REQ:
 	case HWTSTAMP_FILTER_NTP_ALL:
 	case HWTSTAMP_FILTER_ALL:
-		ice_set_rx_tstamp(pf, true);
+		pf->ptp.tstamp_config.rx_filter = HWTSTAMP_FILTER_ALL;
 		break;
 	default:
 		return -ERANGE;
 	}
 
+	/* Immediately update the device timestamping mode */
+	ice_ptp_restore_timestamp_mode(pf);
+
 	return 0;
 }
 
@@ -2743,7 +2761,7 @@ void ice_ptp_prepare_for_reset(struct ice_pf *pf)
 	clear_bit(ICE_FLAG_PTP, pf->flags);
 
 	/* Disable timestamping for both Tx and Rx */
-	ice_ptp_cfg_timestamp(pf, false);
+	ice_ptp_disable_timestamp_mode(pf);
 
 	kthread_cancel_delayed_work_sync(&ptp->work);
 
@@ -3061,7 +3079,7 @@ void ice_ptp_release(struct ice_pf *pf)
 		return;
 
 	/* Disable timestamping for both Tx and Rx */
-	ice_ptp_cfg_timestamp(pf, false);
+	ice_ptp_disable_timestamp_mode(pf);
 
 	ice_ptp_remove_auxbus_device(pf);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 8f6f94392756..06a330867fc9 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -292,7 +292,7 @@ int ice_ptp_clock_index(struct ice_pf *pf);
 struct ice_pf;
 int ice_ptp_set_ts_config(struct ice_pf *pf, struct ifreq *ifr);
 int ice_ptp_get_ts_config(struct ice_pf *pf, struct ifreq *ifr);
-void ice_ptp_cfg_timestamp(struct ice_pf *pf, bool ena);
+void ice_ptp_restore_timestamp_mode(struct ice_pf *pf);
 
 void ice_ptp_extts_event(struct ice_pf *pf);
 s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb);
@@ -317,8 +317,7 @@ static inline int ice_ptp_get_ts_config(struct ice_pf *pf, struct ifreq *ifr)
 	return -EOPNOTSUPP;
 }
 
-static inline void ice_ptp_cfg_timestamp(struct ice_pf *pf, bool ena) { }
-
+static inline void ice_ptp_restore_timestamp_mode(struct ice_pf *pf) { }
 static inline void ice_ptp_extts_event(struct ice_pf *pf) { }
 static inline s8
 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb)
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
