Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 79130826EC2
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jan 2024 13:47:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6381040083;
	Mon,  8 Jan 2024 12:47:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6381040083
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704718069;
	bh=lrSGGaUrvuQ3FQTXd+jsX7hNn3amXe/P2Oc9rC7RrQU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L3m/Mw7yTfs2dKNTqEQySf7Ft/NeTynvvRrbIJTDuXowhBQbVS+gDrwFKInIK6n4c
	 FqyboVbV6Y35VhxtwHXDLO0GheVMTQf0k6evyj6YaYdYt3KrFI2PdUl2zjQorblbbf
	 lCO9JCbncVafl1oE1URkgRg19iLDZ/qWSb6DEcw7alrRBoWTc7YNYThj7rBZjwIz5W
	 wX6Elh4o0Wm3SeNwe6YCK5D02xzwSIxrRgQmau+Bj/Z5xONY/hihBcT5bgGgrnYnoU
	 vUd/4Djcv/2IB57Ixrja7+AjtVoEM7OvAFm4ADzYWPF6f199NbPHlay9dUtRmrrmj3
	 KgZSEpYuDx3rg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KzW3Yyoas-UF; Mon,  8 Jan 2024 12:47:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4153415CE;
	Mon,  8 Jan 2024 12:47:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D4153415CE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8016F1BF44A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jan 2024 12:47:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5394F60FA0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jan 2024 12:47:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5394F60FA0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DnoGnCmq81Rj for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jan 2024 12:47:38 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 44FA460F92
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jan 2024 12:47:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 44FA460F92
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="11359553"
X-IronPort-AV: E=Sophos;i="6.04,341,1695711600"; d="scan'208";a="11359553"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 04:47:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="904791306"
X-IronPort-AV: E=Sophos;i="6.04,341,1695711600"; d="scan'208";a="904791306"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orsmga004.jf.intel.com with ESMTP; 08 Jan 2024 04:47:24 -0800
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  8 Jan 2024 13:47:12 +0100
Message-Id: <20240108124717.1845481-2-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240108124717.1845481-1-karol.kolacinski@intel.com>
References: <20240108124717.1845481-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704718058; x=1736254058;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CunmSQjTFkA52vfpwtbtfjzgdRXVSH84X5ERHMRo9Pc=;
 b=mK7YpU9r6itWNciiDxHgjpCmEkbbmSNShFvPR7bQ3X7Gq0ydgmUK0jP0
 t8HmUszi+AFlSXFZgtkS/H64bshsaKya/EYeunKHOL/JMUiAnev2XYecm
 wChHT+lwwqO09UmLkqKfmds4CjLlTG06nCnpJt4UQXhqdIQ80cxLSbGlk
 OwGLGg3wKsU5UUQbYtIh7wC0zqT2aqDTbOEQdRyETgMknVCqasPbfW47f
 219IKYQc1Y6UwI3K/if3i/HePPhprddtfkYin3SsG8AvhZKQ8UFgCG6BP
 aoewB3uvkh5/lmxvebKxYPo/rVVLY4dHQoAT1qznuja8LoqxKaK2Pj6Vo
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mK7YpU9r
Subject: [Intel-wired-lan] [PATCH v5 iwl-next 1/6] ice: introduce PTP state
 machine
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
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add PTP state machine so that the driver can correctly identify PTP
state around resets.
When the driver got information about ungraceful reset, PTP was not
prepared for reset and it returned error. When this situation occurs,
prepare PTP before rebuilding its structures.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
---
V3 -> V4: removed merge conflict leftovers
V2 -> V3: fixed Tx timestamps missing by moving ICE_PTP_READY before
          ice_ptp_init_work()

 drivers/net/ethernet/intel/ice/ice.h         |   1 -
 drivers/net/ethernet/intel/ice/ice_ethtool.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 112 +++++++++++--------
 drivers/net/ethernet/intel/ice/ice_ptp.h     |  10 ++
 4 files changed, 76 insertions(+), 49 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index e841f6c4f1c4..a4ba60e17d0b 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -493,7 +493,6 @@ enum ice_pf_flags {
 	ICE_FLAG_DCB_ENA,
 	ICE_FLAG_FD_ENA,
 	ICE_FLAG_PTP_SUPPORTED,		/* PTP is supported by NVM */
-	ICE_FLAG_PTP,			/* PTP is enabled by software */
 	ICE_FLAG_ADV_FEATURES,
 	ICE_FLAG_TC_MQPRIO,		/* support for Multi queue TC */
 	ICE_FLAG_CLS_FLOWER,
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index f25e43881df2..3cc364a4d682 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3361,7 +3361,7 @@ ice_get_ts_info(struct net_device *dev, struct ethtool_ts_info *info)
 	struct ice_pf *pf = ice_netdev_to_pf(dev);
 
 	/* only report timestamping if PTP is enabled */
-	if (!test_bit(ICE_FLAG_PTP, pf->flags))
+	if (pf->ptp.state != ICE_PTP_READY)
 		return ethtool_op_get_ts_info(dev, info);
 
 	info->so_timestamping = SOF_TIMESTAMPING_TX_SOFTWARE |
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 3b6605c8585e..d7de65f8dd53 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1430,7 +1430,7 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
 	struct ice_ptp_port *ptp_port;
 	struct ice_hw *hw = &pf->hw;
 
-	if (!test_bit(ICE_FLAG_PTP, pf->flags))
+	if (pf->ptp.state != ICE_PTP_READY)
 		return;
 
 	if (WARN_ON_ONCE(port >= ICE_NUM_EXTERNAL_PORTS))
@@ -2162,7 +2162,7 @@ int ice_ptp_get_ts_config(struct ice_pf *pf, struct ifreq *ifr)
 {
 	struct hwtstamp_config *config;
 
-	if (!test_bit(ICE_FLAG_PTP, pf->flags))
+	if (pf->ptp.state != ICE_PTP_READY)
 		return -EIO;
 
 	config = &pf->ptp.tstamp_config;
@@ -2232,7 +2232,7 @@ int ice_ptp_set_ts_config(struct ice_pf *pf, struct ifreq *ifr)
 	struct hwtstamp_config config;
 	int err;
 
-	if (!test_bit(ICE_FLAG_PTP, pf->flags))
+	if (pf->ptp.state != ICE_PTP_READY)
 		return -EAGAIN;
 
 	if (copy_from_user(&config, ifr->ifr_data, sizeof(config)))
@@ -2616,7 +2616,7 @@ static void ice_ptp_periodic_work(struct kthread_work *work)
 	struct ice_pf *pf = container_of(ptp, struct ice_pf, ptp);
 	int err;
 
-	if (!test_bit(ICE_FLAG_PTP, pf->flags))
+	if (pf->ptp.state != ICE_PTP_READY)
 		return;
 
 	err = ice_ptp_update_cached_phctime(pf);
@@ -2628,6 +2628,42 @@ static void ice_ptp_periodic_work(struct kthread_work *work)
 				   msecs_to_jiffies(err ? 10 : 500));
 }
 
+/**
+ * ice_ptp_prepare_for_reset - Prepare PTP for reset
+ * @pf: Board private structure
+ */
+void ice_ptp_prepare_for_reset(struct ice_pf *pf)
+{
+	struct ice_ptp *ptp = &pf->ptp;
+	u8 src_tmr;
+
+	if (ptp->state != ICE_PTP_READY)
+		return;
+
+	ptp->state = ICE_PTP_RESETTING;
+
+	/* Disable timestamping for both Tx and Rx */
+	ice_ptp_disable_timestamp_mode(pf);
+
+	kthread_cancel_delayed_work_sync(&ptp->work);
+
+	if (test_bit(ICE_PFR_REQ, pf->state))
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
  * ice_ptp_reset - Initialize PTP hardware clock support after reset
  * @pf: Board private structure
@@ -2640,6 +2676,16 @@ void ice_ptp_reset(struct ice_pf *pf)
 	int err, itr = 1;
 	u64 time_diff;
 
+	if (ptp->state != ICE_PTP_RESETTING) {
+		if (ptp->state == ICE_PTP_READY) {
+			ice_ptp_prepare_for_reset(pf);
+		} else {
+			err = -EINVAL;
+			dev_err(ice_pf_to_dev(pf), "PTP was not initialized\n");
+			goto err;
+		}
+	}
+
 	if (test_bit(ICE_PFR_REQ, pf->state) ||
 	    !ice_pf_src_tmr_owned(pf))
 		goto pfr;
@@ -2700,7 +2746,7 @@ void ice_ptp_reset(struct ice_pf *pf)
 	if (err)
 		goto err;
 
-	set_bit(ICE_FLAG_PTP, pf->flags);
+	ptp->state = ICE_PTP_READY;
 
 	/* Restart the PHY timestamping block */
 	if (!test_bit(ICE_PFR_REQ, pf->state) &&
@@ -2714,6 +2760,7 @@ void ice_ptp_reset(struct ice_pf *pf)
 	return;
 
 err:
+	ptp->state = ICE_PTP_ERROR;
 	dev_err(ice_pf_to_dev(pf), "PTP reset failed %d\n", err);
 }
 
@@ -2922,39 +2969,6 @@ int ice_ptp_clock_index(struct ice_pf *pf)
 	return clock ? ptp_clock_index(clock) : -1;
 }
 
-/**
- * ice_ptp_prepare_for_reset - Prepare PTP for reset
- * @pf: Board private structure
- */
-void ice_ptp_prepare_for_reset(struct ice_pf *pf)
-{
-	struct ice_ptp *ptp = &pf->ptp;
-	u8 src_tmr;
-
-	clear_bit(ICE_FLAG_PTP, pf->flags);
-
-	/* Disable timestamping for both Tx and Rx */
-	ice_ptp_disable_timestamp_mode(pf);
-
-	kthread_cancel_delayed_work_sync(&ptp->work);
-
-	if (test_bit(ICE_PFR_REQ, pf->state))
-		return;
-
-	ice_ptp_release_tx_tracker(pf, &pf->ptp.port.tx);
-
-	/* Disable periodic outputs */
-	ice_ptp_disable_all_clkout(pf);
-
-	src_tmr = ice_get_ptp_src_clock_index(&pf->hw);
-
-	/* Disable source clock */
-	wr32(&pf->hw, GLTSYN_ENA(src_tmr), (u32)~GLTSYN_ENA_TSYN_ENA_M);
-
-	/* Acquire PHC and system timer to restore after reset */
-	ptp->reset_time = ktime_get_real_ns();
-}
-
 /**
  * ice_ptp_init_owner - Initialize PTP_1588_CLOCK device
  * @pf: Board private structure
@@ -3195,6 +3209,8 @@ void ice_ptp_init(struct ice_pf *pf)
 	struct ice_hw *hw = &pf->hw;
 	int err;
 
+	ptp->state = ICE_PTP_INITIALIZING;
+
 	ice_ptp_init_phy_model(hw);
 
 	ice_ptp_init_tx_interrupt_mode(pf);
@@ -3219,12 +3235,13 @@ void ice_ptp_init(struct ice_pf *pf)
 	/* Configure initial Tx interrupt settings */
 	ice_ptp_cfg_tx_interrupt(pf);
 
-	set_bit(ICE_FLAG_PTP, pf->flags);
-	err = ice_ptp_init_work(pf, ptp);
+	err = ice_ptp_create_auxbus_device(pf);
 	if (err)
 		goto err;
 
-	err = ice_ptp_create_auxbus_device(pf);
+	ptp->state = ICE_PTP_READY;
+
+	err = ice_ptp_init_work(pf, ptp);
 	if (err)
 		goto err;
 
@@ -3237,7 +3254,7 @@ void ice_ptp_init(struct ice_pf *pf)
 		ptp_clock_unregister(ptp->clock);
 		pf->ptp.clock = NULL;
 	}
-	clear_bit(ICE_FLAG_PTP, pf->flags);
+	ptp->state = ICE_PTP_ERROR;
 	dev_err(ice_pf_to_dev(pf), "PTP failed %d\n", err);
 }
 
@@ -3250,9 +3267,11 @@ void ice_ptp_init(struct ice_pf *pf)
  */
 void ice_ptp_release(struct ice_pf *pf)
 {
-	if (!test_bit(ICE_FLAG_PTP, pf->flags))
+	if (pf->ptp.state != ICE_PTP_READY)
 		return;
 
+	pf->ptp.state = ICE_PTP_UNINIT;
+
 	/* Disable timestamping for both Tx and Rx */
 	ice_ptp_disable_timestamp_mode(pf);
 
@@ -3260,8 +3279,6 @@ void ice_ptp_release(struct ice_pf *pf)
 
 	ice_ptp_release_tx_tracker(pf, &pf->ptp.port.tx);
 
-	clear_bit(ICE_FLAG_PTP, pf->flags);
-
 	kthread_cancel_delayed_work_sync(&pf->ptp.work);
 
 	ice_ptp_port_phy_stop(&pf->ptp.port);
@@ -3271,6 +3288,9 @@ void ice_ptp_release(struct ice_pf *pf)
 		pf->ptp.kworker = NULL;
 	}
 
+	if (ice_pf_src_tmr_owned(pf))
+		ice_ptp_unregister_auxbus_driver(pf);
+
 	if (!pf->ptp.clock)
 		return;
 
@@ -3280,7 +3300,5 @@ void ice_ptp_release(struct ice_pf *pf)
 	ptp_clock_unregister(pf->ptp.clock);
 	pf->ptp.clock = NULL;
 
-	ice_ptp_unregister_auxbus_driver(pf);
-
 	dev_info(ice_pf_to_dev(pf), "Removed PTP clock\n");
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 087dd32d8762..2457380142e1 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -203,8 +203,17 @@ struct ice_ptp_port_owner {
 
 #define GLTSYN_TGT_H_IDX_MAX		4
 
+enum ice_ptp_state {
+	ICE_PTP_UNINIT = 0,
+	ICE_PTP_INITIALIZING,
+	ICE_PTP_READY,
+	ICE_PTP_RESETTING,
+	ICE_PTP_ERROR,
+};
+
 /**
  * struct ice_ptp - data used for integrating with CONFIG_PTP_1588_CLOCK
+ * @state: current state of PTP state machine
  * @tx_interrupt_mode: the TX interrupt mode for the PTP clock
  * @port: data for the PHY port initialization procedure
  * @ports_owner: data for the auxiliary driver owner
@@ -227,6 +236,7 @@ struct ice_ptp_port_owner {
  * @late_cached_phc_updates: number of times cached PHC update is late
  */
 struct ice_ptp {
+	enum ice_ptp_state state;
 	enum ice_ptp_tx_interrupt tx_interrupt_mode;
 	struct ice_ptp_port port;
 	struct ice_ptp_port_owner ports_owner;
-- 
2.40.1

