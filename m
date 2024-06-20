Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 42682910436
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2024 14:32:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D0129846DF;
	Thu, 20 Jun 2024 12:32:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t8J-28wspT6v; Thu, 20 Jun 2024 12:32:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 03012846CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718886726;
	bh=/43PUASpkPVC1JDQRKKZ66QXtzQ0VtcNRDKaElr6+8Q=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pgjLzFVueNo+Fee7HMtgFJNmuN6OQidnKTFlGs9l9CMbzG0IPtNzYj+I7vlyuEZae
	 mS8e2Uhh08s506MAlYmDqR3mHJGMOpRcy7RC30efY/Lmoh+7ah1041EYlNJAqG7FJK
	 ozGtM8P4BiST6/8Qw/GUXataFvQEmOBTnn5w7cAJouZdwvrGqX9aW5Mr2BSkyJyt67
	 ZZ1FeNAaQQsLOaK4CHGJKX7wo2mwkN8t+0l4LVnIUooPWhBBXze1/ySi2/QKnlzQ0c
	 OZoiEEIOnBRhRFnkUeeEP3M/ZJQWs7StJhMLFlswjD1cRJogbeDkBLk21PRKA/ykdr
	 SAB903fwO37ew==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03012846CD;
	Thu, 20 Jun 2024 12:32:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D57E31BF573
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 12:32:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C26CA42EC1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 12:32:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jLtQMAP7MJIK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2024 12:31:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7E9A042EC7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E9A042EC7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7E9A042EC7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 12:31:59 +0000 (UTC)
X-CSE-ConnectionGUID: yzzHRK8ZSjyVmSafZNieMw==
X-CSE-MsgGUID: 88DozPRpQEWrxL4IWeQHEg==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="41262884"
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="41262884"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2024 05:31:59 -0700
X-CSE-ConnectionGUID: IYyCxUfsQtSVpxvh5w046Q==
X-CSE-MsgGUID: v180nmyBTdq/vRSY5L7B0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="79712944"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orviesa001.jf.intel.com with ESMTP; 20 Jun 2024 05:31:57 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 20 Jun 2024 14:27:08 +0200
Message-ID: <20240620123141.1582255-2-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240620123141.1582255-1-karol.kolacinski@intel.com>
References: <20240620123141.1582255-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718886719; x=1750422719;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5RJdPOCakhv37Sb2K3GgbnSTJe4TN8LZIGZh9v++JTY=;
 b=fQ+aN/LkGJMm3j9kB2ZDD1NRdWoC2IemsMaNXLiqmI/fA353tgU57+Yj
 CF9l9TiFrc/qZoGMjtslFzKhTD+hGzc84NnII4p6Lq1UabQzc1jW2Knbt
 Y0WoSihj+iSx0r+NMP6eHnSPak7P+EiiYPAukijVht9yIF7SKn/ufQfRz
 m/KuUCDtjAKhlStRcskpNKg2P52WFbP4AOPixxlkIHiMzIv7vzem+mwz0
 20LEzzq4QgMoGIhAzOaQ8fc/zF/uS31T6+uFcbEKMG7kmOZkIdKs8zCS7
 oqDjQdkHRyK27apJApZOL4+yn68PF9219P5AY6BCyBpbyY5RCBEl2+747
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fQ+aN/Lk
Subject: [Intel-wired-lan] [PATCH v2 iwl-net 1/3] ice: Fix improper extts
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
running, channel remains enabled. As a result, in the next run of the
app, two channels are enabled and the information "extts on unexpected
channel" is printed to the user.

To avoid that, extts events shall be disabled when PTP is released.

Fixes: 172db5f91d5f ("ice: add support for auxiliary input/output pins")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
V1 -> V2: removed extra space and fixed return value in
          ice_ptp_gpio_enable_e823()

 drivers/net/ethernet/intel/ice/ice_ptp.c | 106 ++++++++++++++++++-----
 drivers/net/ethernet/intel/ice/ice_ptp.h |   8 ++
 2 files changed, 92 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 0f17fc1181d2..d8ff9f26010c 100644
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
+		if (config->flags  & PTP_FALLING_EDGE)
 			aux_reg |= GLTSYN_AUX_IN_0_EVNTLVL_FALLING_EDGE;
-		if (extts_flags & PTP_RISING_EDGE)
+		if (config->flags  & PTP_RISING_EDGE)
 			aux_reg |= GLTSYN_AUX_IN_0_EVNTLVL_RISING_EDGE;
 
 		/* Write GPIO CTL reg.
@@ -1636,9 +1633,48 @@ ice_ptp_cfg_extts(struct ice_pf *pf, bool ena, unsigned int chan, u32 gpio_pin,
 
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
+		if (pf->ptp.extts_channels[i].ena) {
+			ice_ptp_cfg_extts(pf, i, &pf->ptp.extts_channels[i],
+					  false);
+		}
+	}
 }
 
 /**
@@ -1795,7 +1831,6 @@ ice_ptp_gpio_enable_e810(struct ptp_clock_info *info,
 			 struct ptp_clock_request *rq, int on)
 {
 	struct ice_pf *pf = ptp_info_to_pf(info);
-	struct ice_perout_channel clk_cfg = {0};
 	bool sma_pres = false;
 	unsigned int chan;
 	u32 gpio_pin;
@@ -1806,6 +1841,9 @@ ice_ptp_gpio_enable_e810(struct ptp_clock_info *info,
 
 	switch (rq->type) {
 	case PTP_CLK_REQ_PEROUT:
+	{
+		struct ice_perout_channel clk_cfg = {};
+
 		chan = rq->perout.index;
 		if (sma_pres) {
 			if (chan == ice_pin_desc_e810t[SMA1].chan)
@@ -1833,7 +1871,11 @@ ice_ptp_gpio_enable_e810(struct ptp_clock_info *info,
 
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
@@ -1849,9 +1891,13 @@ ice_ptp_gpio_enable_e810(struct ptp_clock_info *info,
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
@@ -1869,21 +1915,31 @@ static int ice_ptp_gpio_enable_e823(struct ptp_clock_info *info,
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
@@ -2720,6 +2776,10 @@ static int ice_ptp_rebuild_owner(struct ice_pf *pf)
 		ice_ptp_restart_all_phy(pf);
 	}
 
+	/* Re-enable all periodic outputs and external timestamp events */
+	ice_ptp_enable_all_clkout(pf);
+	ice_ptp_enable_all_extts(pf);
+
 	return 0;
 }
 
@@ -3275,6 +3335,8 @@ void ice_ptp_release(struct ice_pf *pf)
 
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
2.43.0

