Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF56765558
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jul 2023 15:51:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2907241F30;
	Thu, 27 Jul 2023 13:51:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2907241F30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690465901;
	bh=Cay4KqfDJPiFiiF0YtoMLJT2Fgl88MOfCplpvSFZ4YU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=meq9QdcCpRS8V5Q6xHXdXWf/lW0PEMv5mJqUf67fCdbGnZ+hqS+56gwIt2UwQ4sZW
	 u9xYGkXsssStBwuK/tH/tE8hfHQx/EnxVP2kj7lhOv5f9DVeMrwoFZCw3Ql94x4j0+
	 VfJleeopQVInyaJrV6b6lvqfBEFlwmLT4ORAMtbOEsirlMrtI+M6w/x1x1BFGyFT/n
	 +n4g19dAMk43tqwL5QgtqTR9HVGmRwHIobhisHBp8FIAYRlccMo4EVEfiYCtmO2qLB
	 1RAmEopFrYRBVObgy8CNhTlJ9d6NJf4uJWs7jysoCYnWdqN39QY8aYwvTTPsvXRxNV
	 jNppL+yeaQqEg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BH3hwJ369vF0; Thu, 27 Jul 2023 13:51:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 39A7041C22;
	Thu, 27 Jul 2023 13:51:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 39A7041C22
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 41D541BF429
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 13:51:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1B3784031F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 13:51:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B3784031F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iV2effX5P3gE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jul 2023 13:51:25 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 12F76400D0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 13:51:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12F76400D0
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="399249115"
X-IronPort-AV: E=Sophos;i="6.01,235,1684825200"; d="scan'208";a="399249115"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 06:51:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="730271421"
X-IronPort-AV: E=Sophos;i="6.01,235,1684825200"; d="scan'208";a="730271421"
Received: from mmichali-devpc.igk.intel.com ([10.211.235.239])
 by fmsmga007.fm.intel.com with ESMTP; 27 Jul 2023 06:51:23 -0700
From: Michal Michalik <michal.michalik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jul 2023 15:50:36 +0200
Message-Id: <20230727135037.28472-4-michal.michalik@intel.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20230727135037.28472-1-michal.michalik@intel.com>
References: <20230727135037.28472-1-michal.michalik@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690465885; x=1722001885;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=DQGDhaBgeAxZ5d04jcDOs1dMCYCg2O+gm6iQuvszpaU=;
 b=fAXTjimv0LYqEm3es8xu1dUnJDFP2VYnXmu0dEBfLlgfrY0NCjKmsunb
 rEzg5TenfxOZK5XWYc/G84q+2upT0zzl+KV5H6NUKK70aoKe/ZR8KStUf
 aAoxGokq/UeQLYopA3ZMI6dkbAtT//z0Tswc/KzqpVYZubbO6tfT00w/M
 DraLluOUkKGzmeQ6w+sv2+2roKcd9bPxlRtakGynow285h2HP8Q+jDEmr
 3Ii6eFlhvsIlYGuCiw7HmBh8j5ZIs85C2ieMTQfa1xOWUXVHUVqH4qsfi
 xMYG6DKyWMpkDCcHlay8Em8g+Gm+K6uU3Ai0i/iIUkoYWD5bAKzC93E6U
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fAXTjimv
Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/4] ice: PTP: add clock
 domain number to auxiliary interface
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
Cc: karol.kolacinski@intel.com, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The PHC clock id used to be moved between PFs using FW admin queue
shared parameters - move the implementation to auxiliary bus.

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Michal Michalik <michal.michalik@intel.com>
---
v2 -> v3:
* removed tag regarding kernel robot finding
* remove the ice_aqc_driver_params in separate commit

v1 -> v2:
* fixed the "static declaration of 'ice_ptp_clock_index' follows non-static
  declaration"
* removed no longer required 'ice_aqc_driver_params' params

 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |   5 -
 drivers/net/ethernet/intel/ice/ice_ethtool.c    |   2 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c        | 163 ++++--------------------
 drivers/net/ethernet/intel/ice/ice_ptp.h        |  11 +-
 4 files changed, 34 insertions(+), 147 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 29f7a98..e38d66e 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -2140,11 +2140,6 @@ struct ice_aqc_driver_shared_params {
 };
 
 enum ice_aqc_driver_params {
-	/* OS clock index for PTP timer Domain 0 */
-	ICE_AQC_DRIVER_PARAM_CLK_IDX_TMR0 = 0,
-	/* OS clock index for PTP timer Domain 1 */
-	ICE_AQC_DRIVER_PARAM_CLK_IDX_TMR1,
-
 	/* Add new parameters above */
 	ICE_AQC_DRIVER_PARAM_MAX = 16,
 };
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index ad4d470..d3cb08e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3285,7 +3285,7 @@ ice_get_ts_info(struct net_device *dev, struct ethtool_ts_info *info)
 				SOF_TIMESTAMPING_RX_HARDWARE |
 				SOF_TIMESTAMPING_RAW_HARDWARE;
 
-	info->phc_index = ice_get_ptp_clock_index(pf);
+	info->phc_index = ice_ptp_clock_index(pf);
 
 	info->tx_types = BIT(HWTSTAMP_TX_OFF) | BIT(HWTSTAMP_TX_ON);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 30b532b9..97b8581 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -340,131 +340,6 @@ void ice_ptp_cfg_timestamp(struct ice_pf *pf, bool ena)
 }
 
 /**
- * ice_get_ptp_clock_index - Get the PTP clock index
- * @pf: the PF pointer
- *
- * Determine the clock index of the PTP clock associated with this device. If
- * this is the PF controlling the clock, just use the local access to the
- * clock device pointer.
- *
- * Otherwise, read from the driver shared parameters to determine the clock
- * index value.
- *
- * Returns: the index of the PTP clock associated with this device, or -1 if
- * there is no associated clock.
- */
-int ice_get_ptp_clock_index(struct ice_pf *pf)
-{
-	struct device *dev = ice_pf_to_dev(pf);
-	enum ice_aqc_driver_params param_idx;
-	struct ice_hw *hw = &pf->hw;
-	u8 tmr_idx;
-	u32 value;
-	int err;
-
-	/* Use the ptp_clock structure if we're the main PF */
-	if (pf->ptp.clock)
-		return ptp_clock_index(pf->ptp.clock);
-
-	tmr_idx = hw->func_caps.ts_func_info.tmr_index_assoc;
-	if (!tmr_idx)
-		param_idx = ICE_AQC_DRIVER_PARAM_CLK_IDX_TMR0;
-	else
-		param_idx = ICE_AQC_DRIVER_PARAM_CLK_IDX_TMR1;
-
-	err = ice_aq_get_driver_param(hw, param_idx, &value, NULL);
-	if (err) {
-		dev_err(dev, "Failed to read PTP clock index parameter, err %d aq_err %s\n",
-			err, ice_aq_str(hw->adminq.sq_last_status));
-		return -1;
-	}
-
-	/* The PTP clock index is an integer, and will be between 0 and
-	 * INT_MAX. The highest bit of the driver shared parameter is used to
-	 * indicate whether or not the currently stored clock index is valid.
-	 */
-	if (!(value & PTP_SHARED_CLK_IDX_VALID))
-		return -1;
-
-	return value & ~PTP_SHARED_CLK_IDX_VALID;
-}
-
-/**
- * ice_set_ptp_clock_index - Set the PTP clock index
- * @pf: the PF pointer
- *
- * Set the PTP clock index for this device into the shared driver parameters,
- * so that other PFs associated with this device can read it.
- *
- * If the PF is unable to store the clock index, it will log an error, but
- * will continue operating PTP.
- */
-static void ice_set_ptp_clock_index(struct ice_pf *pf)
-{
-	struct device *dev = ice_pf_to_dev(pf);
-	enum ice_aqc_driver_params param_idx;
-	struct ice_hw *hw = &pf->hw;
-	u8 tmr_idx;
-	u32 value;
-	int err;
-
-	if (!pf->ptp.clock)
-		return;
-
-	tmr_idx = hw->func_caps.ts_func_info.tmr_index_assoc;
-	if (!tmr_idx)
-		param_idx = ICE_AQC_DRIVER_PARAM_CLK_IDX_TMR0;
-	else
-		param_idx = ICE_AQC_DRIVER_PARAM_CLK_IDX_TMR1;
-
-	value = (u32)ptp_clock_index(pf->ptp.clock);
-	if (value > INT_MAX) {
-		dev_err(dev, "PTP Clock index is too large to store\n");
-		return;
-	}
-	value |= PTP_SHARED_CLK_IDX_VALID;
-
-	err = ice_aq_set_driver_param(hw, param_idx, value, NULL);
-	if (err) {
-		dev_err(dev, "Failed to set PTP clock index parameter, err %d aq_err %s\n",
-			err, ice_aq_str(hw->adminq.sq_last_status));
-	}
-}
-
-/**
- * ice_clear_ptp_clock_index - Clear the PTP clock index
- * @pf: the PF pointer
- *
- * Clear the PTP clock index for this device. Must be called when
- * unregistering the PTP clock, in order to ensure other PFs stop reporting
- * a clock object that no longer exists.
- */
-static void ice_clear_ptp_clock_index(struct ice_pf *pf)
-{
-	struct device *dev = ice_pf_to_dev(pf);
-	enum ice_aqc_driver_params param_idx;
-	struct ice_hw *hw = &pf->hw;
-	u8 tmr_idx;
-	int err;
-
-	/* Do not clear the index if we don't own the timer */
-	if (!hw->func_caps.ts_func_info.src_tmr_owned)
-		return;
-
-	tmr_idx = hw->func_caps.ts_func_info.tmr_index_assoc;
-	if (!tmr_idx)
-		param_idx = ICE_AQC_DRIVER_PARAM_CLK_IDX_TMR0;
-	else
-		param_idx = ICE_AQC_DRIVER_PARAM_CLK_IDX_TMR1;
-
-	err = ice_aq_set_driver_param(hw, param_idx, 0, NULL);
-	if (err) {
-		dev_dbg(dev, "Failed to clear PTP clock index parameter, err %d aq_err %s\n",
-			err, ice_aq_str(hw->adminq.sq_last_status));
-	}
-}
-
-/**
  * ice_ptp_read_src_clk_reg - Read the source clock register
  * @pf: Board private structure
  * @sts: Optional parameter for holding a pair of system timestamps from
@@ -2451,7 +2326,6 @@ static void ice_ptp_set_caps(struct ice_pf *pf)
 static long ice_ptp_create_clock(struct ice_pf *pf)
 {
 	struct ptp_clock_info *info;
-	struct ptp_clock *clock;
 	struct device *dev;
 
 	/* No need to create a clock device if we already have one */
@@ -2464,11 +2338,11 @@ static long ice_ptp_create_clock(struct ice_pf *pf)
 	dev = ice_pf_to_dev(pf);
 
 	/* Attempt to register the clock before enabling the hardware. */
-	clock = ptp_clock_register(info, dev);
-	if (IS_ERR(clock))
-		return PTR_ERR(clock);
-
-	pf->ptp.clock = clock;
+	pf->ptp.clock = ptp_clock_register(info, dev);
+	if (IS_ERR(pf->ptp.clock)) {
+		dev_err(ice_pf_to_dev(pf), "Failed to register PTP clock device");
+		return PTR_ERR(pf->ptp.clock);
+	}
 
 	return 0;
 }
@@ -2830,6 +2704,28 @@ static void ice_ptp_unregister_auxbus_driver(struct ice_pf *pf)
 }
 
 /**
+ * ice_ptp_clock_index - Get the PTP clock index for this device
+ * @pf: Board private structure
+ *
+ * Returns: the PTP clock index associated with this PF, or -1 if no PTP clock
+ * is associated.
+ */
+int ice_ptp_clock_index(struct ice_pf *pf)
+{
+	struct auxiliary_device *aux_dev;
+	struct ice_pf *owner_pf;
+	struct ptp_clock *clock;
+
+	aux_dev = &pf->ptp.port.aux_dev;
+	owner_pf = ice_ptp_aux_dev_to_owner_pf(aux_dev);
+	if (!owner_pf)
+		return -1;
+	clock = owner_pf->ptp.clock;
+
+	return clock ? ptp_clock_index(clock) : -1;
+}
+
+/**
  * ice_ptp_prepare_for_reset - Prepare PTP for reset
  * @pf: Board private structure
  */
@@ -2927,9 +2823,6 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
 	if (err)
 		goto err_clk;
 
-	/* Store the PTP clock index for other PFs */
-	ice_set_ptp_clock_index(pf);
-
 	err = ice_ptp_register_auxbus_driver(pf);
 	if (err) {
 		dev_err(ice_pf_to_dev(pf), "Failed to register PTP auxbus driver");
@@ -2938,7 +2831,6 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
 
 	return 0;
 err_aux:
-	ice_clear_ptp_clock_index(pf);
 	ptp_clock_unregister(pf->ptp.clock);
 err_clk:
 	pf->ptp.clock = NULL;
@@ -3198,7 +3090,6 @@ void ice_ptp_release(struct ice_pf *pf)
 	/* Disable periodic outputs */
 	ice_ptp_disable_all_clkout(pf);
 
-	ice_clear_ptp_clock_index(pf);
 	ptp_clock_unregister(pf->ptp.clock);
 	pf->ptp.clock = NULL;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index d94c223..8f6f943 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -288,11 +288,11 @@ struct ice_ptp {
 #define ETH_GLTSYN_ENA(_i)		(0x03000348 + ((_i) * 4))
 
 #if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
+int ice_ptp_clock_index(struct ice_pf *pf);
 struct ice_pf;
 int ice_ptp_set_ts_config(struct ice_pf *pf, struct ifreq *ifr);
 int ice_ptp_get_ts_config(struct ice_pf *pf, struct ifreq *ifr);
 void ice_ptp_cfg_timestamp(struct ice_pf *pf, bool ena);
-int ice_get_ptp_clock_index(struct ice_pf *pf);
 
 void ice_ptp_extts_event(struct ice_pf *pf);
 s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb);
@@ -318,10 +318,6 @@ static inline int ice_ptp_get_ts_config(struct ice_pf *pf, struct ifreq *ifr)
 }
 
 static inline void ice_ptp_cfg_timestamp(struct ice_pf *pf, bool ena) { }
-static inline int ice_get_ptp_clock_index(struct ice_pf *pf)
-{
-	return -1;
-}
 
 static inline void ice_ptp_extts_event(struct ice_pf *pf) { }
 static inline s8
@@ -344,5 +340,10 @@ static inline void ice_ptp_release(struct ice_pf *pf) { }
 static inline void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
 {
 }
+
+static inline int ice_ptp_clock_index(struct ice_pf *pf)
+{
+	return -1;
+}
 #endif /* IS_ENABLED(CONFIG_PTP_1588_CLOCK) */
 #endif /* _ICE_PTP_H_ */
-- 
2.9.5

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
