Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D27423A1B47
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Jun 2021 18:52:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 74B62403DA;
	Wed,  9 Jun 2021 16:52:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e6PdM9jq3cKL; Wed,  9 Jun 2021 16:52:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5A83540166;
	Wed,  9 Jun 2021 16:52:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 021161BF29D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 16:51:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 102E240496
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 16:51:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mODyTfJVPRKj for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Jun 2021 16:51:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1F0C34054B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 16:51:50 +0000 (UTC)
IronPort-SDR: bcMNw2cx1gWU+IvzQaQ26fSYYde4sHZM3k6wnMhRee6UiX8ciceFvAbG+P3c8ckFN2s+BSky9X
 lLN2FlgrNB6Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="290743485"
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="290743485"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 09:51:49 -0700
IronPort-SDR: 9YpngTiYIOsZId8A7gcuhRftMe0EgmXLrgo8BJVLmfUfCb+AxuBJWRsVBeVR1Usg1QmZ/ls7jP
 QgwZKcgpHesA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="638054848"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by fmsmga005.fm.intel.com with ESMTP; 09 Jun 2021 09:51:48 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Jun 2021 09:39:51 -0700
Message-Id: <20210609163953.52440-7-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210609163953.52440-1-anthony.l.nguyen@intel.com>
References: <20210609163953.52440-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 6/8] ice: report the PTP clock index in
 ethtool .get_ts_info
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

From: Jacob Keller <jacob.e.keller@intel.com>

Now that the driver registers a PTP clock device that represents the
clock hardware, it is important that the clock index is reported via the
ethtool .get_ts_info callback.

The underlying hardware resource is shared between multiple PF
functions. Only one function owns the hardware resources associated with
a timer, but multiple functions may be associated with it for the
purposes of timestamping.

To support this, the owning PF will store the clock index into the
driver shared parameters buffer in firmware. Other PFs will look up the
clock index by reading the driver shared parameter on demand when
requested via the .get_ts_info ethtool function.

In this way, all functions which are tied to the same timer are able to
report the clock index. Userspace software such as ptp4l performs
a look up on the netdev to determine the associated clock, and all
commands to control or configure the clock will be handled through the
controlling PF.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c |  22 +++-
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 129 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp.h     |   5 +
 3 files changed, 155 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 1f30f24648d8..01466b9f29b7 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3195,6 +3195,26 @@ ice_set_rxfh(struct net_device *netdev, const u32 *indir, const u8 *key,
 	return 0;
 }
 
+static int
+ice_get_ts_info(struct net_device *dev, struct ethtool_ts_info *info)
+{
+	struct ice_pf *pf = ice_netdev_to_pf(dev);
+
+	/* only report timestamping if PTP is enabled */
+	if (!test_bit(ICE_FLAG_PTP, pf->flags))
+		return ethtool_op_get_ts_info(dev, info);
+
+	info->so_timestamping = SOF_TIMESTAMPING_SOFTWARE;
+
+	info->phc_index = ice_get_ptp_clock_index(pf);
+
+	info->tx_types = BIT(HWTSTAMP_TX_OFF);
+
+	info->rx_filters = BIT(HWTSTAMP_FILTER_NONE);
+
+	return 0;
+}
+
 /**
  * ice_get_max_txq - return the maximum number of Tx queues for in a PF
  * @pf: PF structure
@@ -3986,7 +4006,7 @@ static const struct ethtool_ops ice_ethtool_ops = {
 	.set_rxfh		= ice_set_rxfh,
 	.get_channels		= ice_get_channels,
 	.set_channels		= ice_set_channels,
-	.get_ts_info		= ethtool_op_get_ts_info,
+	.get_ts_info		= ice_get_ts_info,
 	.get_per_queue_coalesce	= ice_get_per_q_coalesce,
 	.set_per_queue_coalesce	= ice_set_per_q_coalesce,
 	.get_fecparam		= ice_get_fecparam,
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 80a551942bf9..fd6e2ab03b9f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -4,6 +4,131 @@
 #include "ice.h"
 #include "ice_lib.h"
 
+/**
+ * ice_get_ptp_clock_index - Get the PTP clock index
+ * @pf: the PF pointer
+ *
+ * Determine the clock index of the PTP clock associated with this device. If
+ * this is the PF controlling the clock, just use the local access to the
+ * clock device pointer.
+ *
+ * Otherwise, read from the driver shared parameters to determine the clock
+ * index value.
+ *
+ * Returns: the index of the PTP clock associated with this device, or -1 if
+ * there is no associated clock.
+ */
+int ice_get_ptp_clock_index(struct ice_pf *pf)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	enum ice_aqc_driver_params param_idx;
+	struct ice_hw *hw = &pf->hw;
+	u8 tmr_idx;
+	u32 value;
+	int err;
+
+	/* Use the ptp_clock structure if we're the main PF */
+	if (pf->ptp.clock)
+		return ptp_clock_index(pf->ptp.clock);
+
+	tmr_idx = hw->func_caps.ts_func_info.tmr_index_assoc;
+	if (!tmr_idx)
+		param_idx = ICE_AQC_DRIVER_PARAM_CLK_IDX_TMR0;
+	else
+		param_idx = ICE_AQC_DRIVER_PARAM_CLK_IDX_TMR1;
+
+	err = ice_aq_get_driver_param(hw, param_idx, &value, NULL);
+	if (err) {
+		dev_err(dev, "Failed to read PTP clock index parameter, err %d aq_err %s\n",
+			err, ice_aq_str(hw->adminq.sq_last_status));
+		return -1;
+	}
+
+	/* The PTP clock index is an integer, and will be between 0 and
+	 * INT_MAX. The highest bit of the driver shared parameter is used to
+	 * indicate whether or not the currently stored clock index is valid.
+	 */
+	if (!(value & PTP_SHARED_CLK_IDX_VALID))
+		return -1;
+
+	return value & ~PTP_SHARED_CLK_IDX_VALID;
+}
+
+/**
+ * ice_set_ptp_clock_index - Set the PTP clock index
+ * @pf: the PF pointer
+ *
+ * Set the PTP clock index for this device into the shared driver parameters,
+ * so that other PFs associated with this device can read it.
+ *
+ * If the PF is unable to store the clock index, it will log an error, but
+ * will continue operating PTP.
+ */
+static void ice_set_ptp_clock_index(struct ice_pf *pf)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	enum ice_aqc_driver_params param_idx;
+	struct ice_hw *hw = &pf->hw;
+	u8 tmr_idx;
+	u32 value;
+	int err;
+
+	if (!pf->ptp.clock)
+		return;
+
+	tmr_idx = hw->func_caps.ts_func_info.tmr_index_assoc;
+	if (!tmr_idx)
+		param_idx = ICE_AQC_DRIVER_PARAM_CLK_IDX_TMR0;
+	else
+		param_idx = ICE_AQC_DRIVER_PARAM_CLK_IDX_TMR1;
+
+	value = (u32)ptp_clock_index(pf->ptp.clock);
+	if (value > INT_MAX) {
+		dev_err(dev, "PTP Clock index is too large to store\n");
+		return;
+	}
+	value |= PTP_SHARED_CLK_IDX_VALID;
+
+	err = ice_aq_set_driver_param(hw, param_idx, value, NULL);
+	if (err) {
+		dev_err(dev, "Failed to set PTP clock index parameter, err %d aq_err %s\n",
+			err, ice_aq_str(hw->adminq.sq_last_status));
+	}
+}
+
+/**
+ * ice_clear_ptp_clock_index - Clear the PTP clock index
+ * @pf: the PF pointer
+ *
+ * Clear the PTP clock index for this device. Must be called when
+ * unregistering the PTP clock, in order to ensure other PFs stop reporting
+ * a clock object that no longer exists.
+ */
+static void ice_clear_ptp_clock_index(struct ice_pf *pf)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	enum ice_aqc_driver_params param_idx;
+	struct ice_hw *hw = &pf->hw;
+	u8 tmr_idx;
+	int err;
+
+	/* Do not clear the index if we don't own the timer */
+	if (!hw->func_caps.ts_func_info.src_tmr_owned)
+		return;
+
+	tmr_idx = hw->func_caps.ts_func_info.tmr_index_assoc;
+	if (!tmr_idx)
+		param_idx = ICE_AQC_DRIVER_PARAM_CLK_IDX_TMR0;
+	else
+		param_idx = ICE_AQC_DRIVER_PARAM_CLK_IDX_TMR1;
+
+	err = ice_aq_set_driver_param(hw, param_idx, 0, NULL);
+	if (err) {
+		dev_dbg(dev, "Failed to clear PTP clock index parameter, err %d aq_err %s\n",
+			err, ice_aq_str(hw->adminq.sq_last_status));
+	}
+}
+
 /**
  * ice_ptp_read_src_clk_reg - Read the source clock register
  * @pf: Board private structure
@@ -378,6 +503,9 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
 	if (err)
 		goto err_clk;
 
+	/* Store the PTP clock index for other PFs */
+	ice_set_ptp_clock_index(pf);
+
 	return 0;
 
 err_clk:
@@ -432,6 +560,7 @@ void ice_ptp_release(struct ice_pf *pf)
 	if (!pf->ptp.clock)
 		return;
 
+	ice_clear_ptp_clock_index(pf);
 	ptp_clock_unregister(pf->ptp.clock);
 	pf->ptp.clock = NULL;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 838ee92de9e2..d8b2563fea28 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -27,9 +27,14 @@ struct ice_ptp {
 
 #if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
 struct ice_pf;
+int ice_get_ptp_clock_index(struct ice_pf *pf);
 void ice_ptp_init(struct ice_pf *pf);
 void ice_ptp_release(struct ice_pf *pf);
 #else /* IS_ENABLED(CONFIG_PTP_1588_CLOCK) */
+static inline int ice_get_ptp_clock_index(struct ice_pf *pf)
+{
+	return -1;
+}
 static inline void ice_ptp_init(struct ice_pf *pf) { }
 static inline void ice_ptp_release(struct ice_pf *pf) { }
 #endif /* IS_ENABLED(CONFIG_PTP_1588_CLOCK) */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
