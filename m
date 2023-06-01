Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8274B71F476
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jun 2023 23:15:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8AAF541726;
	Thu,  1 Jun 2023 21:15:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8AAF541726
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685654128;
	bh=x0ib/fWoC+ha3r1dm4eG/rJvXPSx3riD+dq4xvSgDCM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VNRMSLslp25RgIKggAyBPWwC2g42+VPqs5P01CCZQYF11IeSaIj/cwteV3fJaPpWx
	 a5LHEI5aPrfZMaL8NvzYPotSzP/Xoqy3UQBeNYLp1DbAfdoCd44RWKiygtXTyxEWX0
	 GXOuDj4BVA1kJ5WqmQbIvesn5e4n3yTRoamhE0U5K7DiuTdqxDG6WbMOQmUYR58dl0
	 w+Wlv/5DE3hx8Oy/sFBJlSgosZgZN1oU7+KrTb9bUjf+P9E5M5d7FJggU3NpIGtiQS
	 ziex8KC1K/LQ+a5ggBc/qExNnP+q2PrzKhCBvQ8ruy/Y39q5UnMGb2BeocpKyue9OY
	 GZAblEg0Mdg3Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cnAD14gLwayS; Thu,  1 Jun 2023 21:15:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 064BF40499;
	Thu,  1 Jun 2023 21:15:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 064BF40499
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DCA021BF573
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 21:15:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C32BB8439B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 21:15:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C32BB8439B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4qXcLckg_HLK for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Jun 2023 21:15:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B637B841B1
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B637B841B1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 21:15:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="421500839"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="421500839"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 14:15:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="737249192"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="737249192"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 14:15:13 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Thu,  1 Jun 2023 14:15:03 -0700
Message-ID: <20230601211507.707619-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.40.0.471.gbd7f14d9353b
In-Reply-To: <20230601211507.707619-1-jacob.e.keller@intel.com>
References: <20230601211507.707619-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685654116; x=1717190116;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s82g8SvOLJZoy5iUrQO4zWOPPM8DAIdQ7OhaVl9DQEI=;
 b=VPInXFYCeTZ2IkrUAkfTgUuDp36QPI7QRHHmbmA2yPVmepmlCetrbJo/
 KsB9mtjlTdgk2kf5RVJM4ekjSvjgwKqEmn6/vLhdK6jfA5y+eltW5I8sU
 3QQODhwCvFsWrhAy0r209NJcnNzUj/qCubCrm2uD23vxrOeMNSmfR5YZy
 RkL531G+69T4QMxvaIX7iRPM5PMAZEJ0aRA/5/L82R2/+i9Rita5SXAol
 /BnzLJmU85vucdAXkjBP+8gxCdnXBa4SSBFRmIrrodNks1Uu5exOsLANj
 xBItUC4QicPepDKyTz+hk2FXRSdTu4X+nxpsXdtwxtyvJn/fxvrZ7TA+y
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VPInXFYC
Subject: [Intel-wired-lan] [PATCH iwl-next v3 1/5] ice: handle extts in the
 miscellaneous interrupt thread
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Karol Kolacinski <karol.kolacinski@intel.com>

The ice_ptp_extts_work() and ice_ptp_periodic_work() functions are both
scheduled on the same kthread worker, pf.ptp.kworker. The
ice_ptp_periodic_work() function sends to the firmware to interact with the
PHY, and must block to wait for responses.

This can cause delay in responding to the PFINT_OICR_TSYN_EVNT interrupt
cause, ultimately resulting in disruption to processing an input signal of
the frequency is high enough. In our testing, even 100 Hz signals get
disrupted.

Fix this by instead processing the signal inside the miscellaneous
interrupt thread prior to handling Tx timestamps.

Use atomic bits in a new pf->misc_thread bitmap in order to safely
communicate which tasks require processing within the
ice_misc_intr_thread_fn(). This ensures the communication of desired tasks
from the ice_misc_intr() are correctly processed without racing even in the
event that the interrupt triggers again before the thread function exits.

Fixes: 172db5f91d5f ("ice: add support for auxiliary input/output pins")
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      |  7 ++++++
 drivers/net/ethernet/intel/ice/ice_main.c | 29 ++++++++++++++++-------
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 12 +++-------
 drivers/net/ethernet/intel/ice/ice_ptp.h  |  4 ++--
 4 files changed, 33 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 176e281dfa24..9109006336f0 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -509,6 +509,12 @@ enum ice_pf_flags {
 	ICE_PF_FLAGS_NBITS		/* must be last */
 };
 
+enum ice_misc_thread_tasks {
+	ICE_MISC_THREAD_EXTTS_EVENT,
+	ICE_MISC_THREAD_TX_TSTAMP,
+	ICE_MISC_THREAD_NBITS		/* must be last */
+};
+
 struct ice_switchdev_info {
 	struct ice_vsi *control_vsi;
 	struct ice_vsi *uplink_vsi;
@@ -552,6 +558,7 @@ struct ice_pf {
 	DECLARE_BITMAP(features, ICE_F_MAX);
 	DECLARE_BITMAP(state, ICE_STATE_NBITS);
 	DECLARE_BITMAP(flags, ICE_PF_FLAGS_NBITS);
+	DECLARE_BITMAP(misc_thread, ICE_MISC_THREAD_NBITS);
 	unsigned long *avail_txqs;	/* bitmap to track PF Tx queue usage */
 	unsigned long *avail_rxqs;	/* bitmap to track PF Rx queue usage */
 	unsigned long serv_tmr_period;
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index c7d7104dbadc..0beb6afc0b2d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3139,20 +3139,28 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 
 	if (oicr & PFINT_OICR_TSYN_TX_M) {
 		ena_mask &= ~PFINT_OICR_TSYN_TX_M;
-		if (!hw->reset_ongoing)
+		if (!hw->reset_ongoing) {
+			set_bit(ICE_MISC_THREAD_TX_TSTAMP, pf->misc_thread);
 			ret = IRQ_WAKE_THREAD;
+		}
 	}
 
 	if (oicr & PFINT_OICR_TSYN_EVNT_M) {
 		u8 tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 		u32 gltsyn_stat = rd32(hw, GLTSYN_STAT(tmr_idx));
 
-		/* Save EVENTs from GTSYN register */
-		pf->ptp.ext_ts_irq |= gltsyn_stat & (GLTSYN_STAT_EVENT0_M |
-						     GLTSYN_STAT_EVENT1_M |
-						     GLTSYN_STAT_EVENT2_M);
 		ena_mask &= ~PFINT_OICR_TSYN_EVNT_M;
-		kthread_queue_work(pf->ptp.kworker, &pf->ptp.extts_work);
+
+		if (hw->func_caps.ts_func_info.src_tmr_owned) {
+			/* Save EVENTs from GLTSYN register */
+			pf->ptp.ext_ts_irq |= gltsyn_stat &
+					      (GLTSYN_STAT_EVENT0_M |
+					       GLTSYN_STAT_EVENT1_M |
+					       GLTSYN_STAT_EVENT2_M);
+
+			set_bit(ICE_MISC_THREAD_EXTTS_EVENT, pf->misc_thread);
+			ret = IRQ_WAKE_THREAD;
+		}
 	}
 
 #define ICE_AUX_CRIT_ERR (PFINT_OICR_PE_CRITERR_M | PFINT_OICR_HMC_ERR_M | PFINT_OICR_PE_PUSH_M)
@@ -3196,8 +3204,13 @@ static irqreturn_t ice_misc_intr_thread_fn(int __always_unused irq, void *data)
 	if (ice_is_reset_in_progress(pf->state))
 		return IRQ_HANDLED;
 
-	while (!ice_ptp_process_ts(pf))
-		usleep_range(50, 100);
+	if (test_and_clear_bit(ICE_MISC_THREAD_EXTTS_EVENT, pf->misc_thread))
+		ice_ptp_extts_event(pf);
+
+	if (test_and_clear_bit(ICE_MISC_THREAD_TX_TSTAMP, pf->misc_thread)) {
+		while (!ice_ptp_process_ts(pf))
+			usleep_range(50, 100);
+	}
 
 	return IRQ_HANDLED;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index d4b6c997141d..6f51ebaf1d70 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1458,15 +1458,11 @@ static int ice_ptp_adjfine(struct ptp_clock_info *info, long scaled_ppm)
 }
 
 /**
- * ice_ptp_extts_work - Workqueue task function
- * @work: external timestamp work structure
- *
- * Service for PTP external clock event
+ * ice_ptp_extts_event - Process PTP external clock event
+ * @pf: Board private structure
  */
-static void ice_ptp_extts_work(struct kthread_work *work)
+void ice_ptp_extts_event(struct ice_pf *pf)
 {
-	struct ice_ptp *ptp = container_of(work, struct ice_ptp, extts_work);
-	struct ice_pf *pf = container_of(ptp, struct ice_pf, ptp);
 	struct ptp_clock_event event;
 	struct ice_hw *hw = &pf->hw;
 	u8 chan, tmr_idx;
@@ -2558,7 +2554,6 @@ void ice_ptp_prepare_for_reset(struct ice_pf *pf)
 	ice_ptp_cfg_timestamp(pf, false);
 
 	kthread_cancel_delayed_work_sync(&ptp->work);
-	kthread_cancel_work_sync(&ptp->extts_work);
 
 	if (test_bit(ICE_PFR_REQ, pf->state))
 		return;
@@ -2656,7 +2651,6 @@ static int ice_ptp_init_work(struct ice_pf *pf, struct ice_ptp *ptp)
 
 	/* Initialize work functions */
 	kthread_init_delayed_work(&ptp->work, ice_ptp_periodic_work);
-	kthread_init_work(&ptp->extts_work, ice_ptp_extts_work);
 
 	/* Allocate a kworker for handling work required for the ports
 	 * connected to the PTP hardware clock.
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 9cda2f43e0e5..9f8902c1e743 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -169,7 +169,6 @@ struct ice_ptp_port {
  * struct ice_ptp - data used for integrating with CONFIG_PTP_1588_CLOCK
  * @port: data for the PHY port initialization procedure
  * @work: delayed work function for periodic tasks
- * @extts_work: work function for handling external Tx timestamps
  * @cached_phc_time: a cached copy of the PHC time for timestamp extension
  * @cached_phc_jiffies: jiffies when cached_phc_time was last updated
  * @ext_ts_chan: the external timestamp channel in use
@@ -190,7 +189,6 @@ struct ice_ptp_port {
 struct ice_ptp {
 	struct ice_ptp_port port;
 	struct kthread_delayed_work work;
-	struct kthread_work extts_work;
 	u64 cached_phc_time;
 	unsigned long cached_phc_jiffies;
 	u8 ext_ts_chan;
@@ -256,6 +254,7 @@ int ice_ptp_get_ts_config(struct ice_pf *pf, struct ifreq *ifr);
 void ice_ptp_cfg_timestamp(struct ice_pf *pf, bool ena);
 int ice_get_ptp_clock_index(struct ice_pf *pf);
 
+void ice_ptp_extts_event(struct ice_pf *pf);
 s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb);
 bool ice_ptp_process_ts(struct ice_pf *pf);
 
@@ -284,6 +283,7 @@ static inline int ice_get_ptp_clock_index(struct ice_pf *pf)
 	return -1;
 }
 
+static inline void ice_ptp_extts_event(struct ice_pf *pf) { }
 static inline s8
 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb)
 {
-- 
2.40.0.471.gbd7f14d9353b

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
