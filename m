Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B58CB4742F2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Dec 2021 13:52:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 650C1813E0;
	Tue, 14 Dec 2021 12:52:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tBqPFBL1sQUl; Tue, 14 Dec 2021 12:52:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 20337813DB;
	Tue, 14 Dec 2021 12:52:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A84F81BF30C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 12:52:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9460440182
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 12:52:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZTflpSaMwURR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Dec 2021 12:52:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1535440146
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 12:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639486331; x=1671022331;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=94sOSIBcsXnKUbzDVDapcQMEDBSCdGdL/4Xun1mUMx4=;
 b=KGUZwhKLw5R98kxayA3GyMGJzTkZ/ax5fwUFQOUE53UZKuWl0WD3HdPn
 OolxQWeIx+vCMi26OM/4j2FJluX3R+PLON4gu5nH7T3FqF8xywVgBgh4I
 Acw7OjEXCrbp6N2MGdDtRSq3ikaF41nLlsQYqMRYfG2rSgSObmUuym011
 mHHQyNiJYJ+F6R803VyyG74sTgk0jUgALzQGYFpuQDPiMpaXMZSGodMX1
 6eVUWKUNlx6DT0h8GKd4A9Bx5SYymI2L2SqbVw1XBrSsyEhUpLFwr7iTY
 T0p14/Veu2UHpmCFmhC/SkV+bq4UpVLpTCUCk0PwRZj/jI5KWvF2ks6FD w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="238916312"
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="238916312"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 04:52:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="463784819"
Received: from kkolacin-desk1.igk.intel.com ([172.22.229.172])
 by orsmga003.jf.intel.com with ESMTP; 14 Dec 2021 04:52:09 -0800
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 14 Dec 2021 13:51:49 +0100
Message-Id: <20211214125149.460499-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Subject: [Intel-wired-lan] [PATCH intel-next] ice: Fix E810 PTP reset flow
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

The PF reset does not reset PHC and PHY clocks so it's unnecessary to
stop them and reinitialize after the reset.
Configuring timestamping changes the VSI fields so it needs to be
performed after VSIs are initialized, which was not done in case of a
reset.

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c |   7 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 200 ++++++++++++++++++----
 drivers/net/ethernet/intel/ice/ice_ptp.h  |   8 +
 3 files changed, 180 insertions(+), 35 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a3ce54a78859..dc1c3d8e7272 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -539,7 +539,7 @@ ice_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	ice_pf_dis_all_vsi(pf, false);
 
 	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
-		ice_ptp_release(pf);
+		ice_ptp_prepare_for_reset(pf);
 
 	if (hw->port_info)
 		ice_sched_clear_port(hw->port_info);
@@ -6728,7 +6728,7 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 	 * fail.
 	 */
 	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
-		ice_ptp_init(pf);
+		ice_ptp_reset(pf);
 
 	/* rebuild PF VSI */
 	err = ice_vsi_rebuild_by_type(pf, ICE_VSI_PF);
@@ -6737,6 +6737,9 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 		goto err_vsi_rebuild;
 	}
 
+	/* configure PTP timestamping after VSI rebuild */
+		ice_ptp_cfg_timestamp(pf, false);
+
 	err = ice_vsi_rebuild_by_type(pf, ICE_VSI_SWITCHDEV_CTRL);
 	if (err) {
 		dev_err(dev, "Switchdev CTRL VSI rebuild failed: %d\n", err);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index bf7247c6f58e..450a4cbf9cef 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -313,7 +313,7 @@ static void ice_set_rx_tstamp(struct ice_pf *pf, bool on)
  * This function will configure timestamping during PTP initialization
  * and deinitialization
  */
-static void ice_ptp_cfg_timestamp(struct ice_pf *pf, bool ena)
+void ice_ptp_cfg_timestamp(struct ice_pf *pf, bool ena)
 {
 	ice_set_tx_tstamp(pf, ena);
 	ice_set_rx_tstamp(pf, ena);
@@ -1783,6 +1783,120 @@ static void ice_ptp_periodic_work(struct kthread_work *work)
 				   msecs_to_jiffies(500));
 }
 
+/**
+ * ice_ptp_reset - Initialize PTP hardware clock support after reset
+ * @pf: Board private structure
+ */
+void ice_ptp_reset(struct ice_pf *pf)
+{
+	u8 src_idx = hw->func_caps.ts_func_info.tmr_index_owned;
+	struct ice_ptp *ptp = &pf->ptp;
+	struct ice_hw *hw = &pf->hw;
+	struct timespec64 ts;
+	int err = 1;
+	u64 time_diff;
+
+	if (test_bit(__ICE_PFR_REQ, pf->state))
+		goto pfr;
+
+	wr32(hw, GLTSYN_SYNC_DLAY, 0);
+
+	/* Enable source clocks */
+	wr32(hw, GLTSYN_ENA(src_idx), GLTSYN_ENA_TSYN_ENA_M);
+
+	/* Enable PHY time sync */
+	err = ice_ptp_init_phy_e810(hw);
+	if (err)
+		goto err;
+
+	/* Clear event status indications for auxiliary pins */
+	(void)rd32(hw, GLTSYN_STAT(src_idx));
+
+	/* Acquire the global hardware lock */
+	if (!ice_ptp_lock(hw)) {
+		err = -EBUSY;
+		goto err;
+	}
+
+	/* Write the increment time value to PHY and LAN */
+	err = ice_ptp_write_incval(hw, ICE_PTP_NOMINAL_INCVAL_E810);
+	if (err) {
+		ice_ptp_unlock(hw);
+		goto err;
+	}
+
+	/* Write the initial Time value to PHY and LAN using the cached PHC
+	 * time before the reset and time difference between stopping and
+	 * starting the clock.
+	 */
+	if (ptp->cached_phc_time) {
+		time_diff = ktime_get_real_ns() - ptp->reset_time;
+		ts = ns_to_timespec64(ptp->cached_phc_time + time_diff);
+	} else {
+		ts = ktime_to_timespec64(ktime_get_real());
+	}
+	err = ice_ptp_write_init(pf, &ts);
+	if (err) {
+		ice_ptp_unlock(hw);
+		goto err;
+	}
+
+	/* Release the global hardware lock */
+	ice_ptp_unlock(hw);
+
+pfr:
+	/* Init Tx structures */
+	if (ice_is_e810(&pf->hw))
+		err = ice_ptp_init_tx_e810(pf, &ptp->port.tx);
+	if (err)
+		goto err;
+
+	set_bit(ICE_FLAG_PTP, pf->flags);
+
+	/* Start periodic work going */
+	kthread_queue_delayed_work(ptp->kworker, &ptp->work, 0);
+
+	dev_info(ice_pf_to_dev(pf), "PTP reset successful\n");
+	return;
+
+err:
+	dev_err(ice_pf_to_dev(pf), "PTP reset failed %d\n", err);
+}
+
+/**
+ * ice_ptp_prepare_for_reset - Prepare PTP for reset
+ * @pf: Board private structure
+ */
+void ice_ptp_prepare_for_reset(struct ice_pf *pf)
+{
+	struct ice_ptp *ptp = &pf->ptp;
+	u8 src_tmr;
+
+	clear_bit(ICE_FLAG_PTP, pf->flags);
+
+	/* Disable timestamping for both Tx and Rx */
+	ice_ptp_cfg_timestamp(pf, false);
+
+	kthread_cancel_delayed_work_sync(&ptp->work);
+	kthread_cancel_work_sync(&ptp->extts_work);
+
+	if (test_bit(__ICE_PFR_REQ, pf->state))
+		return;
+
+	ice_ptp_release_tx_tracker(pf, &pf->ptp.port.tx);
+
+	/* Disable periodic outputs */
+	ice_ptp_disable_all_clkout(pf);
+
+	src_tmr = ice_get_ptp_src_clock_index(&pf->hw);
+
+	/* Disable source clock */
+	wr32(&pf->hw, GLTSYN_ENA(src_tmr), (u32)~GLTSYN_ENA_TSYN_ENA_M);
+
+	/* Acquire PHC and system timer to restore after reset */
+	ptp->reset_time = ktime_get_real_ns();
+}
+
 /**
  * ice_ptp_init_owner - Initialize PTP_1588_CLOCK device
  * @pf: Board private structure
@@ -1793,7 +1907,6 @@ static void ice_ptp_periodic_work(struct kthread_work *work)
  */
 static int ice_ptp_init_owner(struct ice_pf *pf)
 {
-	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
 	struct timespec64 ts;
 	u8 src_idx;
@@ -1852,11 +1965,48 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
 err_clk:
 	pf->ptp.clock = NULL;
 err_exit:
-	dev_err(dev, "PTP failed to register clock, err %d\n", err);
-
 	return err;
 }
 
+/**
+ * ice_ptp_init_work - Initialize PTP work threads
+ * @pf: Board private structure
+ * @ptp: PF PTP structure
+ */
+static int ice_ptp_init_work(struct ice_pf *pf, struct ice_ptp *ptp)
+{
+	struct kthread_worker *kworker;
+
+	/* Initialize work functions */
+	kthread_init_delayed_work(&ptp->work, ice_ptp_periodic_work);
+	kthread_init_work(&ptp->extts_work, ice_ptp_extts_work);
+
+	/* Allocate a kworker for handling work required for the ports
+	 * connected to the PTP hardware clock.
+	 */
+	kworker = kthread_create_worker(0, "ice-ptp-%s",
+					dev_name(ice_pf_to_dev(pf)));
+	if (IS_ERR(kworker))
+		return PTR_ERR(kworker);
+
+	ptp->kworker = kworker;
+
+	/* Start periodic work going */
+	kthread_queue_delayed_work(ptp->kworker, &ptp->work, 0);
+
+	return 0;
+}
+
+/**
+ * ice_ptp_init_port - Initialize PTP port structure
+ * @pf: Board private structure
+ * @ptp_port: PTP port structure
+ */
+static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
+{
+	return ice_ptp_init_tx_e810(pf, &ptp_port->tx);
+}
+
 /**
  * ice_ptp_init - Initialize the PTP support after device probe or reset
  * @pf: Board private structure
@@ -1867,8 +2017,7 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
  */
 void ice_ptp_init(struct ice_pf *pf)
 {
-	struct device *dev = ice_pf_to_dev(pf);
-	struct kthread_worker *kworker;
+	struct ice_ptp *ptp = &pf->ptp;
 	struct ice_hw *hw = &pf->hw;
 	int err;
 
@@ -1880,44 +2029,29 @@ void ice_ptp_init(struct ice_pf *pf)
 	if (hw->func_caps.ts_func_info.src_tmr_owned) {
 		err = ice_ptp_init_owner(pf);
 		if (err)
-			return;
+			goto err;
 	}
 
-	/* Disable timestamping for both Tx and Rx */
-	ice_ptp_cfg_timestamp(pf, false);
-
-	/* Initialize the PTP port Tx timestamp tracker */
-	ice_ptp_init_tx_e810(pf, &pf->ptp.port.tx);
-
-	/* Initialize work functions */
-	kthread_init_delayed_work(&pf->ptp.work, ice_ptp_periodic_work);
-	kthread_init_work(&pf->ptp.extts_work, ice_ptp_extts_work);
-
-	/* Allocate a kworker for handling work required for the ports
-	 * connected to the PTP hardware clock.
-	 */
-	kworker = kthread_create_worker(0, "ice-ptp-%s", dev_name(dev));
-	if (IS_ERR(kworker)) {
-		err = PTR_ERR(kworker);
-		goto err_kworker;
-	}
-	pf->ptp.kworker = kworker;
+	err = ice_ptp_init_port(pf, &ptp->port);
+	if (err)
+		goto err;
 
 	set_bit(ICE_FLAG_PTP, pf->flags);
+	err = ice_ptp_init_work(pf, ptp);
+	if (err)
+		goto err;
 
-	/* Start periodic work going */
-	kthread_queue_delayed_work(pf->ptp.kworker, &pf->ptp.work, 0);
-
-	dev_info(dev, "PTP init successful\n");
+	dev_info(ice_pf_to_dev(pf), "PTP init successful\n");
 	return;
 
-err_kworker:
+err:
 	/* If we registered a PTP clock, release it */
 	if (pf->ptp.clock) {
-		ptp_clock_unregister(pf->ptp.clock);
+		ptp_clock_unregister(ptp->clock);
 		pf->ptp.clock = NULL;
 	}
-	dev_err(dev, "PTP failed %d\n", err);
+	clear_bit(ICE_FLAG_PTP, pf->flags);
+	dev_err(ice_pf_to_dev(pf), "PTP failed %d\n", err);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index f71ad317d6c8..6f3bbf0718b0 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -121,6 +121,7 @@ struct ice_ptp_port {
  * @info: structure defining PTP hardware capabilities
  * @clock: pointer to registered PTP clock device
  * @tstamp_config: hardware timestamping configuration
+ * @reset_time: kernel time after clock stop on reset
  */
 struct ice_ptp {
 	struct ice_ptp_port port;
@@ -134,6 +135,7 @@ struct ice_ptp {
 	struct ptp_clock_info info;
 	struct ptp_clock *clock;
 	struct hwtstamp_config tstamp_config;
+	u64 reset_time;
 };
 
 #define __ptp_port_to_ptp(p) \
@@ -174,6 +176,7 @@ struct ice_ptp {
 struct ice_pf;
 int ice_ptp_set_ts_config(struct ice_pf *pf, struct ifreq *ifr);
 int ice_ptp_get_ts_config(struct ice_pf *pf, struct ifreq *ifr);
+void ice_ptp_cfg_timestamp(struct ice_pf *pf, bool ena);
 int ice_get_ptp_clock_index(struct ice_pf *pf);
 
 s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb);
@@ -182,6 +185,8 @@ void ice_ptp_process_ts(struct ice_pf *pf);
 void
 ice_ptp_rx_hwtstamp(struct ice_rx_ring *rx_ring,
 		    union ice_32b_rx_flex_desc *rx_desc, struct sk_buff *skb);
+void ice_ptp_reset(struct ice_pf *pf);
+void ice_ptp_prepare_for_reset(struct ice_pf *pf);
 void ice_ptp_init(struct ice_pf *pf);
 void ice_ptp_release(struct ice_pf *pf);
 #else /* IS_ENABLED(CONFIG_PTP_1588_CLOCK) */
@@ -195,6 +200,7 @@ static inline int ice_ptp_get_ts_config(struct ice_pf *pf, struct ifreq *ifr)
 	return -EOPNOTSUPP;
 }
 
+static inline void ice_ptp_cfg_timestamp(struct ice_pf *pf, bool ena) { }
 static inline int ice_get_ptp_clock_index(struct ice_pf *pf)
 {
 	return -1;
@@ -210,6 +216,8 @@ static inline void ice_ptp_process_ts(struct ice_pf *pf) { }
 static inline void
 ice_ptp_rx_hwtstamp(struct ice_rx_ring *rx_ring,
 		    union ice_32b_rx_flex_desc *rx_desc, struct sk_buff *skb) { }
+static inline void ice_ptp_reset(struct ice_pf *pf) { }
+static inline void ice_ptp_prepare_for_reset(struct ice_pf *pf) { }
 static inline void ice_ptp_init(struct ice_pf *pf) { }
 static inline void ice_ptp_release(struct ice_pf *pf) { }
 #endif /* IS_ENABLED(CONFIG_PTP_1588_CLOCK) */
-- 
2.32.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
