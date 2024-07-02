Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97094923C42
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2024 13:18:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4549E4168A;
	Tue,  2 Jul 2024 11:18:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MHe9EjaKIddj; Tue,  2 Jul 2024 11:18:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 419D741669
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719919112;
	bh=/dZ1meFGIQqJQ9AzsjPBzD23DC4gvpFPk1Evk69UCyY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nx89awBWXrFMFboGGY5Dd4Dfz7cSxMZjMtHA1Kogu4uhHbFbGXlqn5WHufBnxUsCy
	 3DWl012cLDrIOLnLNq7XW4zthi2VZ6dvLgz7mmRwShRrOQI6BMKIjNw82oqunopY9x
	 0DerldVJX2201DXLf0Yy8TiOXHbl8xjvagFJ51zzA3Zzuqj40YDDMBUyw49J+I5AT4
	 wTCBt8HYSqdnv/l5EDuoiXBBAHGLtPGDlWcsskStFRI5mcRgXXo/kMFqXis0+rGEtT
	 5EnlDtsf6MjnR4XE2O2pOKHxMWYCXVbva95ydnA/1BmQqQMjpcfz3Jf1nINTvkeGEU
	 7tTQD5iCRXHrA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 419D741669;
	Tue,  2 Jul 2024 11:18:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 85BA61BF310
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 11:18:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 73EAD60B70
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 11:18:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k7Lfm7xg61HC for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2024 11:18:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8352A60B46
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8352A60B46
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8352A60B46
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 11:18:27 +0000 (UTC)
X-CSE-ConnectionGUID: IlaZV9UzQ/ysLCtDPqjTNw==
X-CSE-MsgGUID: Km4k3nAJTZqCILiEksk6UA==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="28482088"
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="28482088"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 04:18:27 -0700
X-CSE-ConnectionGUID: G8DSsgD7RYeX76+EaqYdFQ==
X-CSE-MsgGUID: i2PxeV9OQmKyzSBL4G3Ulw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="46006200"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.132])
 by orviesa009.jf.intel.com with ESMTP; 02 Jul 2024 04:18:25 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Jul 2024 13:13:19 +0200
Message-ID: <20240702111807.87802-2-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240702111807.87802-1-karol.kolacinski@intel.com>
References: <20240702111807.87802-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719919108; x=1751455108;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LFF4hYrDG1ny0IheAOY2IuOlIQuC8p8+kN7VhFoyBC0=;
 b=J7O/Uhp7EXHZOoK7wRdua50sTfAqZ+V0aa0sUVz3l3QSvshD9SI2opaT
 YeQ659PwNUHKKy0fcPtmUHbcqA+GtJoeAjPEO+ei68Cc+X3oSlJp1tBnb
 Q5slM4VcuXHEsp3rUZmwvjBvSuDDKy4li+tRHQm9PU9JpkS61w2aZOrVu
 Zta0hyzUL5k3QCxf+yjyQRQw4zPMGdY1o8/gVIc5c4MyOYPO6xOQ1oVwI
 qOeEIezS5Tr4XXPnY9/LDTXyE2ne/v/yJWulqFXx9j54vGxH45y7D4JJV
 bFwYDHVpBaQBvo87T9pDVcMhiFDC8JIHfokI7CJEPBZe1GzHCb+hFXdmR
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J7O/Uhp7
Subject: [Intel-wired-lan] [PATCH v3 iwl-net 1/3] ice: Fix improper extts
 handling
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
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Jacob Keller <jacob.e.keller@intel.com>, Milena Olech <milena.olech@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Milena Olech <milena.olech@intel.com>

Extts events are disabled and enabled by the application ts2phc.
However, in case where the driver is removed when the application is
running, a specific extts event remains enabled and can cause a kernel
crash.
As a side effect, when the driver is reloaded and application is started
again, remaining extts event for the channel from a previous run will
keep firing and the message "extts on unexpected channel" might be
printed to the user.

To avoid that, extts events shall be disabled when PTP is released.

Fixes: 172db5f91d5f ("ice: add support for auxiliary input/output pins")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
V2 -> V3: adjusted formatting and reworded commit message
V1 -> V2: removed extra space and fixed return value in
          ice_ptp_gpio_enable_e823()

 drivers/net/ethernet/intel/ice/ice_ptp.c | 105 ++++++++++++++++++-----
 drivers/net/ethernet/intel/ice/ice_ptp.h |   8 ++
 2 files changed, 91 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 0f17fc1181d2..4d6555fadd83 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1584,27 +1584,24 @@ void ice_ptp_extts_event(struct ice_pf *pf)
 /**
  * ice_ptp_cfg_extts - Configure EXTTS pin and channel
  * @pf: Board private structure
- * @ena: true to enable; false to disable
  * @chan: GPIO channel (0-3)
- * @gpio_pin: GPIO pin
- * @extts_flags: request flags from the ptp_extts_request.flags
+ * @config: desired EXTTS configuration.
+ * @store: If set to true, the values will be stored
+ *
+ * Configure an external timestamp event on the requested channel.
  */
-static int
-ice_ptp_cfg_extts(struct ice_pf *pf, bool ena, unsigned int chan, u32 gpio_pin,
-		  unsigned int extts_flags)
+static void ice_ptp_cfg_extts(struct ice_pf *pf, unsigned int chan,
+			      struct ice_extts_channel *config, bool store)
 {
 	u32 func, aux_reg, gpio_reg, irq_reg;
 	struct ice_hw *hw = &pf->hw;
 	u8 tmr_idx;
 
-	if (chan > (unsigned int)pf->ptp.info.n_ext_ts)
-		return -EINVAL;
-
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 
 	irq_reg = rd32(hw, PFINT_OICR_ENA);
 
-	if (ena) {
+	if (config->ena) {
 		/* Enable the interrupt */
 		irq_reg |= PFINT_OICR_TSYN_EVNT_M;
 		aux_reg = GLTSYN_AUX_IN_0_INT_ENA_M;
@@ -1613,9 +1610,9 @@ ice_ptp_cfg_extts(struct ice_pf *pf, bool ena, unsigned int chan, u32 gpio_pin,
 #define GLTSYN_AUX_IN_0_EVNTLVL_FALLING_EDGE	BIT(1)
 
 		/* set event level to requested edge */
-		if (extts_flags & PTP_FALLING_EDGE)
+		if (config->flags & PTP_FALLING_EDGE)
 			aux_reg |= GLTSYN_AUX_IN_0_EVNTLVL_FALLING_EDGE;
-		if (extts_flags & PTP_RISING_EDGE)
+		if (config->flags & PTP_RISING_EDGE)
 			aux_reg |= GLTSYN_AUX_IN_0_EVNTLVL_RISING_EDGE;
 
 		/* Write GPIO CTL reg.
@@ -1636,9 +1633,47 @@ ice_ptp_cfg_extts(struct ice_pf *pf, bool ena, unsigned int chan, u32 gpio_pin,
 
 	wr32(hw, PFINT_OICR_ENA, irq_reg);
 	wr32(hw, GLTSYN_AUX_IN(chan, tmr_idx), aux_reg);
-	wr32(hw, GLGEN_GPIO_CTL(gpio_pin), gpio_reg);
+	wr32(hw, GLGEN_GPIO_CTL(config->gpio_pin), gpio_reg);
 
-	return 0;
+	if (store)
+		memcpy(&pf->ptp.extts_channels[chan], config, sizeof(*config));
+}
+
+/**
+ * ice_ptp_disable_all_extts - Disable all EXTTS channels
+ * @pf: Board private structure
+ */
+static void ice_ptp_disable_all_extts(struct ice_pf *pf)
+{
+	struct ice_extts_channel extts_cfg = {};
+	int i;
+
+	for (i = 0; i < pf->ptp.info.n_ext_ts; i++) {
+		if (pf->ptp.extts_channels[i].ena) {
+			extts_cfg.gpio_pin = pf->ptp.extts_channels[i].gpio_pin;
+			extts_cfg.ena = false;
+			ice_ptp_cfg_extts(pf, i, &extts_cfg, false);
+		}
+	}
+
+	synchronize_irq(pf->oicr_irq.virq);
+}
+
+/**
+ * ice_ptp_enable_all_extts - Enable all EXTTS channels
+ * @pf: Board private structure
+ *
+ * Called during reset to restore user configuration.
+ */
+static void ice_ptp_enable_all_extts(struct ice_pf *pf)
+{
+	int i;
+
+	for (i = 0; i < pf->ptp.info.n_ext_ts; i++) {
+		if (pf->ptp.extts_channels[i].ena)
+			ice_ptp_cfg_extts(pf, i, &pf->ptp.extts_channels[i],
+					  false);
+	}
 }
 
 /**
@@ -1795,7 +1830,6 @@ ice_ptp_gpio_enable_e810(struct ptp_clock_info *info,
 			 struct ptp_clock_request *rq, int on)
 {
 	struct ice_pf *pf = ptp_info_to_pf(info);
-	struct ice_perout_channel clk_cfg = {0};
 	bool sma_pres = false;
 	unsigned int chan;
 	u32 gpio_pin;
@@ -1806,6 +1840,9 @@ ice_ptp_gpio_enable_e810(struct ptp_clock_info *info,
 
 	switch (rq->type) {
 	case PTP_CLK_REQ_PEROUT:
+	{
+		struct ice_perout_channel clk_cfg = {};
+
 		chan = rq->perout.index;
 		if (sma_pres) {
 			if (chan == ice_pin_desc_e810t[SMA1].chan)
@@ -1833,7 +1870,11 @@ ice_ptp_gpio_enable_e810(struct ptp_clock_info *info,
 
 		err = ice_ptp_cfg_clkout(pf, chan, &clk_cfg, true);
 		break;
+	}
 	case PTP_CLK_REQ_EXTTS:
+	{
+		struct ice_extts_channel extts_cfg = {};
+
 		chan = rq->extts.index;
 		if (sma_pres) {
 			if (chan < ice_pin_desc_e810t[SMA2].chan)
@@ -1849,9 +1890,13 @@ ice_ptp_gpio_enable_e810(struct ptp_clock_info *info,
 			gpio_pin = chan;
 		}
 
-		err = ice_ptp_cfg_extts(pf, !!on, chan, gpio_pin,
-					rq->extts.flags);
-		break;
+		extts_cfg.flags = rq->extts.flags;
+		extts_cfg.gpio_pin = gpio_pin;
+		extts_cfg.ena = !!on;
+
+		ice_ptp_cfg_extts(pf, chan, &extts_cfg, true);
+		return 0;
+	}
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -1869,21 +1914,31 @@ static int ice_ptp_gpio_enable_e823(struct ptp_clock_info *info,
 				    struct ptp_clock_request *rq, int on)
 {
 	struct ice_pf *pf = ptp_info_to_pf(info);
-	struct ice_perout_channel clk_cfg = {0};
 	int err;
 
 	switch (rq->type) {
 	case PTP_CLK_REQ_PPS:
+	{
+		struct ice_perout_channel clk_cfg = {};
+
 		clk_cfg.gpio_pin = PPS_PIN_INDEX;
 		clk_cfg.period = NSEC_PER_SEC;
 		clk_cfg.ena = !!on;
 
 		err = ice_ptp_cfg_clkout(pf, PPS_CLK_GEN_CHAN, &clk_cfg, true);
 		break;
+	}
 	case PTP_CLK_REQ_EXTTS:
-		err = ice_ptp_cfg_extts(pf, !!on, rq->extts.index,
-					TIME_SYNC_PIN_INDEX, rq->extts.flags);
-		break;
+	{
+		struct ice_extts_channel extts_cfg = {};
+
+		extts_cfg.flags = rq->extts.flags;
+		extts_cfg.gpio_pin = TIME_SYNC_PIN_INDEX;
+		extts_cfg.ena = !!on;
+
+		ice_ptp_cfg_extts(pf, rq->extts.index, &extts_cfg, true);
+		return 0;
+	}
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -2720,6 +2775,10 @@ static int ice_ptp_rebuild_owner(struct ice_pf *pf)
 		ice_ptp_restart_all_phy(pf);
 	}
 
+	/* Re-enable all periodic outputs and external timestamp events */
+	ice_ptp_enable_all_clkout(pf);
+	ice_ptp_enable_all_extts(pf);
+
 	return 0;
 }
 
@@ -3275,6 +3334,8 @@ void ice_ptp_release(struct ice_pf *pf)
 
 	ice_ptp_release_tx_tracker(pf, &pf->ptp.port.tx);
 
+	ice_ptp_disable_all_extts(pf);
+
 	kthread_cancel_delayed_work_sync(&pf->ptp.work);
 
 	ice_ptp_port_phy_stop(&pf->ptp.port);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 3af20025043a..f1171cdd93c8 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -33,6 +33,12 @@ struct ice_perout_channel {
 	u64 start_time;
 };
 
+struct ice_extts_channel {
+	bool ena;
+	u32 gpio_pin;
+	u32 flags;
+};
+
 /* The ice hardware captures Tx hardware timestamps in the PHY. The timestamp
  * is stored in a buffer of registers. Depending on the specific hardware,
  * this buffer might be shared across multiple PHY ports.
@@ -226,6 +232,7 @@ enum ice_ptp_state {
  * @ext_ts_irq: the external timestamp IRQ in use
  * @kworker: kwork thread for handling periodic work
  * @perout_channels: periodic output data
+ * @extts_channels: channels for external timestamps
  * @info: structure defining PTP hardware capabilities
  * @clock: pointer to registered PTP clock device
  * @tstamp_config: hardware timestamping configuration
@@ -249,6 +256,7 @@ struct ice_ptp {
 	u8 ext_ts_irq;
 	struct kthread_worker *kworker;
 	struct ice_perout_channel perout_channels[GLTSYN_TGT_H_IDX_MAX];
+	struct ice_extts_channel extts_channels[GLTSYN_TGT_H_IDX_MAX];
 	struct ptp_clock_info info;
 	struct ptp_clock *clock;
 	struct hwtstamp_config tstamp_config;
-- 
2.45.2

