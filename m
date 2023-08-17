Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2424477F895
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 16:18:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B99F882348;
	Thu, 17 Aug 2023 14:18:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B99F882348
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692281936;
	bh=WwuDWMeSZrjFhTiapOIuyFR/k14WcDaQ4OZIN4s1pwo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7A1Ly0d8FAAyOQBR4a74+PBG4gJllGtCe2vGTKN1oGTvHvSqqSPDmiJHYacWDUIw6
	 N8hJVI2+0eMoSqgpuydS8MtxCn2S63/S3u2awx/M15AZxNtQVZ0Vmz1z6s5e2KfNv7
	 73NthjjIDf6+O9Ua4bVSsf/cLvIB/cf3s8NVItv/G0sPxunwCA7rCBLakB+V5SyQDJ
	 Fq+RkxMwzhPqCyRgtZ+wCsGme79eENYbE8vx1V6kbKu1noTtQKY1mmTfiJAgUH5pEK
	 kSSuEg1TxFszNsn8s3dEo/qfJYlSvsuF2ukNb5ljhhLZjnm2XErnn9RZ7TrsIiwiXz
	 Nn28YlrBqX2Jg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IYkn5cale72l; Thu, 17 Aug 2023 14:18:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3708283F4D;
	Thu, 17 Aug 2023 14:18:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3708283F4D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 62DE11BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 14:18:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 22C5E80630
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 14:18:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 22C5E80630
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rIcsrwaqboTm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 14:18:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F34B183F3E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 14:18:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F34B183F3E
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="403804243"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="403804243"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 07:18:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="981189759"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="981189759"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmsmga006.fm.intel.com with ESMTP; 17 Aug 2023 07:18:26 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Aug 2023 16:17:45 +0200
Message-Id: <20230817141746.18726-9-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230817141746.18726-1-karol.kolacinski@intel.com>
References: <20230817141746.18726-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692281908; x=1723817908;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OQRsx3WqqFpFWASfOUWVu0juRDG7sqTUcQ0lEcE6lLw=;
 b=U3LJeU2mcp5bsQs0HCgBbvWI5EBs6XPPZco1hM19CjHu2L+qaheBkct/
 5djSEYVn+4dV3jNf+PvmVkznaZciW789oxyII79YGOycG+HlYHCpGBbf5
 Tsu0einsx5jOQjUShaYTLqtjc3AMgmBt69uGjrhpNBdtxZvFn8gN/keW/
 bNEz3xpkGbNKBADCrElUt5QiyMy4VJZycEcA1Ztr9DRoaHesN5n86ypqN
 Qut8+X5RRwRtxaXC6WfPY2rdj1SjpV2HXF7+VqEEJTJrq62+0AaCwTPLH
 08jXP2MhJCqIESWdsn3jGCxkxznRFZRBQ+BIUTvXpGv0EZpl+dcJJhcMo
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U3LJeU2m
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 8/9] ice: restore timestamp
 configuration after reset
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 anthony.l.nguyen@intel.com, jesse.brandeburg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The driver calls ice_ptp_cfg_timestamp() during
ice_ptp_prepare_for_reset() to disable timestamping while the device is
resetting. It then attempts to restore timestamp configuration at the
end of ice_rebuild(). However, it currently forcibly calls
ice_ptp_cfg_timestamp() with a value of true when the device is not E810
and is the clock owner, while calling ice_ptp_cfg_timestamp() with a
value of false for all other devices.

This incorrectly forcibly disables timestamping on all ports except the
clock owner.

This was not detected previously due to a quirk of the LinuxPTP ptp4l
application. If ptp4l detects a missing timestamp, it enters a fault
state and performs recovery logic which includes executing SIOCSHWTSTAMP
again, restoring the now accidentally cleared configuration.

Not every application does this, and for these applications, timestamps
will mysteriously stop after a PF reset, without being restored until an
application restart.

Fix this by replacing ice_ptp_cfg_timestamp() with two new functions:

1) ice_ptp_disable_timestamp_mode() which unconditionally disables the
   timestamping logic in ice_ptp_prepare_for_reset() and
   ice_ptp_release()

2) ice_ptp_restore_timestamp_mode() which calls
   ice_ptp_restore_tx_interrupt() to restore Tx timestamping
   configuration, calls ice_set_rx_tstamp() to restore Rx timestamping
   configuration, and issues an immediate TSYN_TX interrupt to ensure
   that timestamps which may have occurred during the device reset get
   processed.

This obsoletes the ice_set_tx_tstamp() function which can now be safely
removed.

With this change, all devices should now restore Tx and Rx timestamping
functionality correctly after a PF reset without application
intervention.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 10 +---
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 72 +++++++++++++++++------
 drivers/net/ethernet/intel/ice/ice_ptp.h  |  4 +-
 3 files changed, 59 insertions(+), 27 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 8bf632de0a34..3a8ba04c8e19 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -7415,14 +7415,8 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
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
+	/* Restore timestamp mode settings after VSI rebuild */
+	ice_ptp_restore_timestamp_mode(pf);
 
 	err = ice_vsi_rebuild_by_type(pf, ICE_VSI_SWITCHDEV_CTRL);
 	if (err) {
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 321d1e681d2c..373ca79803af 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -299,14 +299,27 @@ static void ice_ptp_cfg_tx_interrupt(struct ice_pf *pf, bool on)
 }
 
 /**
- * ice_set_tx_tstamp - Enable or disable Tx timestamping
- * @pf: The PF pointer to search in
- * @on: bool value for whether timestamps are enabled or disabled
+ * ice_ptp_restore_tx_interrupt - Restore Tx timestamp interrupt after reset
+ * @pf: Board private structure
  */
-static void ice_set_tx_tstamp(struct ice_pf *pf, bool on)
+static void ice_ptp_restore_tx_interrupt(struct ice_pf *pf)
 {
-	if (pf->ptp.tx_interrupt_mode == ICE_PTP_TX_INTERRUPT_SELF)
-		ice_ptp_cfg_tx_interrupt(pf, on);
+	bool enable;
+
+	switch (pf->ptp.tx_interrupt_mode) {
+	case ICE_PTP_TX_INTERRUPT_ALL:
+		enable = true;
+		break;
+	case ICE_PTP_TX_INTERRUPT_NONE:
+		enable = false;
+		break;
+	case ICE_PTP_TX_INTERRUPT_SELF:
+	default:
+		enable = pf->ptp.tstamp_config.tx_type == HWTSTAMP_TX_ON;
+		break;
+	}
+
+	ice_ptp_cfg_tx_interrupt(pf, enable);
 }
 
 /**
@@ -332,17 +345,41 @@ static void ice_set_rx_tstamp(struct ice_pf *pf, bool on)
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
+	ice_ptp_cfg_tx_interrupt(pf, false);
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
+	ice_ptp_restore_tx_interrupt(pf);
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
@@ -2048,11 +2085,9 @@ ice_ptp_set_timestamp_mode(struct ice_pf *pf, struct hwtstamp_config *config)
 {
 	switch (config->tx_type) {
 	case HWTSTAMP_TX_OFF:
-		ice_set_tx_tstamp(pf, false);
 		pf->ptp.tstamp_config.tx_type = HWTSTAMP_TX_OFF;
 		break;
 	case HWTSTAMP_TX_ON:
-		ice_set_tx_tstamp(pf, true);
 		pf->ptp.tstamp_config.tx_type = HWTSTAMP_TX_ON;
 		break;
 	default:
@@ -2085,6 +2120,9 @@ ice_ptp_set_timestamp_mode(struct ice_pf *pf, struct hwtstamp_config *config)
 		return -ERANGE;
 	}
 
+	/* Make sure interrupt settings are restored */
+	ice_ptp_restore_tx_interrupt(pf);
+
 	return 0;
 }
 
@@ -2462,7 +2500,7 @@ ice_ptp_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	ptp->state = ICE_PTP_RESETTING;
 
 	/* Disable timestamping for both Tx and Rx */
-	ice_ptp_cfg_timestamp(pf, false);
+	ice_ptp_disable_timestamp_mode(pf);
 
 	kthread_cancel_delayed_work_sync(&ptp->work);
 
@@ -3115,7 +3153,7 @@ void ice_ptp_release(struct ice_pf *pf)
 	pf->ptp.state = ICE_PTP_UNINIT;
 
 	/* Disable timestamping for both Tx and Rx */
-	ice_ptp_cfg_timestamp(pf, false);
+	ice_ptp_disable_timestamp_mode(pf);
 
 	ice_ptp_remove_auxbus_device(pf);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 210e2a1b35a5..bd5826ba3576 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -306,7 +306,7 @@ int ice_ptp_clock_index(struct ice_pf *pf);
 struct ice_pf;
 int ice_ptp_set_ts_config(struct ice_pf *pf, struct ifreq *ifr);
 int ice_ptp_get_ts_config(struct ice_pf *pf, struct ifreq *ifr);
-void ice_ptp_cfg_timestamp(struct ice_pf *pf, bool ena);
+void ice_ptp_restore_timestamp_mode(struct ice_pf *pf);
 
 void ice_ptp_extts_event(struct ice_pf *pf);
 s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb);
@@ -332,7 +332,7 @@ static inline int ice_ptp_get_ts_config(struct ice_pf *pf, struct ifreq *ifr)
 	return -EOPNOTSUPP;
 }
 
-static inline void ice_ptp_cfg_timestamp(struct ice_pf *pf, bool ena) { }
+static inline void ice_ptp_restore_timestamp_mode(struct ice_pf *pf) { }
 
 static inline void ice_ptp_extts_event(struct ice_pf *pf) { }
 static inline s8
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
