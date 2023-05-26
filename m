Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D60712FFD
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 May 2023 00:23:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8396E84DDA;
	Fri, 26 May 2023 22:23:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8396E84DDA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685139793;
	bh=K9ziKSrW5DEminbr8HZ1Q1oIda9Zu2q7R0Ab2pIvet8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0JL8kBxUc6ukQJBGepV8fTBvIx5L5sSUexyfScGvcEdT7SZL9F6dX8amKqaacDkR3
	 LGz7qWsBbUKZIEZNI5VOxFoyUtaLOJBCl/5/NsQgDWAd4duwj0Cb2sPeU1n1DPcObx
	 Tpl4qTGsxFnOEsJPQOUwp400WCPCRQglLLk9kShZdOcyOeAiSPWWAhYx0ImP8KA8pP
	 c5QyeKgrcbfzv2SiObJKWlsmWrfNN82smJpoHDq74rZhXsZODBKYTYM4vxTlIkWzto
	 ZH+aX41yefJtK060sJNKDyswuaW+T3kAp+iJszIP36krzk7GDFUkMN8fOjNpYb2fVP
	 4f5KKqQoNhXPA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kFHMxKnpCHeN; Fri, 26 May 2023 22:23:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3167E84D99;
	Fri, 26 May 2023 22:23:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3167E84D99
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A81DE1BF33D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 22:22:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C97DD42A97
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 22:22:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C97DD42A97
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zMhQ5LJRxHYn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 May 2023 22:22:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 89A7842A99
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 89A7842A99
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 22:22:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="338912478"
X-IronPort-AV: E=Sophos;i="6.00,195,1681196400"; d="scan'208";a="338912478"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 15:22:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="1035510109"
X-IronPort-AV: E=Sophos;i="6.00,195,1681196400"; d="scan'208";a="1035510109"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 15:22:04 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri, 26 May 2023 15:21:54 -0700
Message-ID: <20230526222158.2685796-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.40.0.471.gbd7f14d9353b
In-Reply-To: <20230526222158.2685796-1-jacob.e.keller@intel.com>
References: <20230526222158.2685796-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685139773; x=1716675773;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mJe2erO/PmyqV4YC1+IcvL9L/L7WE7SNPEJmQ7avJIw=;
 b=KaH6l96Qja4MA0/xwSV+YSZbYSwlIETM9/kci88+kIPUuliMgApuH5iy
 qSXR2IOj/8VrocHwsyNbt0k7dB/Fx5ZJVbcSKQxfO2yRUiGmpQp7LcBNV
 qSBSfB/E+G93LgjNuvyigrMqNVgvu7mHPmS3cf/lgs8ouefv4VotVRF5r
 v3VwUJnM7uNfiteJT9rk2gi2tvRq8fB2TNeYMTZHYXOE/XILByJhMM2Fa
 V2nbxd0NSt8Z60vOzQG1xFMUZttUj7gUuvROcuzP4oc79rCsjX1Lhwjjv
 iXJBA3a0BGfNM8C+5Uf/etpU5F5GtEjtlw39jPuqM68/ZGbKjUHpUJuvQ
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KaH6l96Q
Subject: [Intel-wired-lan] [PATCH iwl-next 1/5] ice: handle extts in the
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

Note the unconditional usleep_range loop in ice_mics_intr_thread_fn() is
pre-existing. While concerning, it will be removed in the last change in a
following chance that refactors to use a software-triggered interrupt
instead.

Fixes: 172db5f91d5f ("ice: add support for auxiliary input/output pins")
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      |  1 +
 drivers/net/ethernet/intel/ice/ice_main.c | 33 +++++++++++++++++------
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 12 +++------
 drivers/net/ethernet/intel/ice/ice_ptp.h  |  4 +--
 4 files changed, 31 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 176e281dfa24..4256b9f5a25f 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -580,6 +580,7 @@ struct ice_pf {
 	u32 hw_csum_rx_error;
 	u32 oicr_err_reg;
 	struct msi_map oicr_irq;	/* Other interrupt cause MSIX vector */
+	u16 oicr_misc;		/* Misc interrupts to handle in bottom half */
 	u16 max_pf_txqs;	/* Total Tx queues PF wide */
 	u16 max_pf_rxqs;	/* Total Rx queues PF wide */
 	u16 num_lan_msix;	/* Total MSIX vectors for base driver */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index c7d7104dbadc..9e4d7d884115 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3139,20 +3139,28 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 
 	if (oicr & PFINT_OICR_TSYN_TX_M) {
 		ena_mask &= ~PFINT_OICR_TSYN_TX_M;
-		if (!hw->reset_ongoing)
+		if (!hw->reset_ongoing) {
+			pf->oicr_misc |= PFINT_OICR_TSYN_TX_M;
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
+			pf->oicr_misc |= PFINT_OICR_TSYN_EVNT_M;
+			ret = IRQ_WAKE_THREAD;
+		}
 	}
 
 #define ICE_AUX_CRIT_ERR (PFINT_OICR_PE_CRITERR_M | PFINT_OICR_HMC_ERR_M | PFINT_OICR_PE_PUSH_M)
@@ -3196,8 +3204,16 @@ static irqreturn_t ice_misc_intr_thread_fn(int __always_unused irq, void *data)
 	if (ice_is_reset_in_progress(pf->state))
 		return IRQ_HANDLED;
 
-	while (!ice_ptp_process_ts(pf))
-		usleep_range(50, 100);
+	if (pf->oicr_misc & PFINT_OICR_TSYN_EVNT_M) {
+		ice_ptp_extts_event(pf);
+		pf->oicr_misc &= ~PFINT_OICR_TSYN_EVNT_M;
+	}
+
+	if (pf->oicr_misc & PFINT_OICR_TSYN_TX_M) {
+		while (!ice_ptp_process_ts(pf))
+			usleep_range(50, 100);
+		pf->oicr_misc &= ~PFINT_OICR_TSYN_TX_M;
+	}
 
 	return IRQ_HANDLED;
 }
@@ -4958,6 +4974,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	pf = ice_allocate_pf(dev);
 	if (!pf)
 		return -ENOMEM;
+	pf->oicr_misc = 0;
 
 	/* initialize Auxiliary index to invalid value */
 	pf->aux_idx = -1;
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
