Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1C1966024
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2024 13:10:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F2668414F;
	Fri, 30 Aug 2024 11:10:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u78XxJZWVEJd; Fri, 30 Aug 2024 11:10:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1AD4C842FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725016252;
	bh=VWYH47WZFZDbZ0YFvrphtqrZ4MKaa0TyqRYd7aXZoqk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mTGC+d69YMVGwJBnlvv3CUCjoV9Yigb5hxs0TByiqUFcMEoDey7g35NHRVXzdewsw
	 yjBdPlVMDydTde9FiItCJBB9+jkc/Ye2akD37jvgaG8l/bcQRdrNxQMR2u3LmoLpXW
	 Bc9221TV34miNpcUytKck6AQyxCF8IGxWqYH+Au+qLyYdQhzxhsb3cPAuen8ej8zyQ
	 V9zrm6a65c6uI92K7HY579LZtL2GwFbyOTIZOmhsihnWFJOuOaV5MaG/aX88OFxsgy
	 3Exq8wWvrF5fCzoaJIcm5WpFlsmobsj9sKMTgrEy2SalbtRKtjFhHSA28Bi1tTws9o
	 RyHQpIFtwT/aw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1AD4C842FC;
	Fri, 30 Aug 2024 11:10:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F5D81BF370
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 11:10:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 789AD42432
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 11:10:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZFBjPkXyI6e4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2024 11:10:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D90084243C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D90084243C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D90084243C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 11:10:45 +0000 (UTC)
X-CSE-ConnectionGUID: G43s5BRJQNyGDPiXZ/dlCA==
X-CSE-MsgGUID: 8E8c6oWuR4iYLpY2wJ48gg==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23517594"
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="23517594"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 04:10:46 -0700
X-CSE-ConnectionGUID: 47Hq4FKvRwqiNAvNp0alKQ==
X-CSE-MsgGUID: clAnOng6RV2tCehDWGgcYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="68273644"
Received: from kkolacin-desk1.igk.intel.com ([10.217.160.108])
 by fmviesa005.fm.intel.com with ESMTP; 30 Aug 2024 04:10:43 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 30 Aug 2024 13:07:20 +0200
Message-ID: <20240830111028.1112040-13-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240830111028.1112040-9-karol.kolacinski@intel.com>
References: <20240830111028.1112040-9-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725016246; x=1756552246;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0ThILN6vFzNk3gkr3ZfU+Y+6Y90zLXedfIMzW1qv0hU=;
 b=NLRAM/5ax13WlS1NuhkIhdO1n910YvGXKldPbZstwIpGZtitpxB8IPjM
 M4Q174BFaiHbmV/9mB/sxcIAgmW1q4Ibztbk4koXwgtefsLiF8C2wy1x9
 magsyDENC8hZpnf8SAEVHD7GMYuII0/snER69b/5QOPEX4Ua7tkeBMOAz
 1S7sMuAFqoxpP3xE6XLNVMHrMZ0mTKgz41ZC5Ra6kiqTt1JZUAqdG6VH6
 om2Wie/W7d9711exQ178PWoonBr3XV4LmjpU0q9VAAKZvtsVccq9ZZUEo
 qVV3AjRtpVDIraTrHe8kzrAB0vQOkN/pmRky/DdJp7rzfFIly48Jc8XQy
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NLRAM/5a
Subject: [Intel-wired-lan] [PATCH v4 iwl-next 4/7] ice: Cache perout/extts
 requests and check flags
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
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 Simon Horman <horms@kernel.org>, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Cache original PTP GPIO requests instead of saving each parameter in
internal structures for periodic output or external timestamp request.

Factor out all periodic output register writes from ice_ptp_cfg_clkout
to a separate function to improve readability.

Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
---
V1 -> V2: Fixed unresolved merge conflict

 drivers/net/ethernet/intel/ice/ice_ptp.c      | 360 +++++++++---------
 drivers/net/ethernet/intel/ice/ice_ptp.h      |  27 +-
 .../net/ethernet/intel/ice/ice_ptp_consts.h   |   2 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  27 +-
 4 files changed, 212 insertions(+), 204 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 09c95ffc4693..4d6f7efe18da 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1572,33 +1572,41 @@ void ice_ptp_extts_event(struct ice_pf *pf)
 /**
  * ice_ptp_cfg_extts - Configure EXTTS pin and channel
  * @pf: Board private structure
- * @chan: GPIO channel (0-3)
- * @config: desired EXTTS configuration.
- * @store: If set to true, the values will be stored
+ * @rq: External timestamp request
+ * @on: Enable/disable flag
  *
  * Configure an external timestamp event on the requested channel.
  *
- * Return: 0 on success, -EOPNOTUSPP on unsupported flags
+ * Return: 0 on success, negative error code otherwise
  */
-static int ice_ptp_cfg_extts(struct ice_pf *pf, unsigned int chan,
-			     struct ice_extts_channel *config, bool store)
+static int ice_ptp_cfg_extts(struct ice_pf *pf, struct ptp_extts_request *rq,
+			     int on)
 {
-	u32 func, aux_reg, gpio_reg, irq_reg;
+	u32 aux_reg, gpio_reg, irq_reg;
 	struct ice_hw *hw = &pf->hw;
+	unsigned int chan, gpio_pin;
+	int pin_desc_idx;
 	u8 tmr_idx;
 
 	/* Reject requests with unsupported flags */
-	if (config->flags & ~(PTP_ENABLE_FEATURE |
-			      PTP_RISING_EDGE |
-			      PTP_FALLING_EDGE |
-			      PTP_STRICT_FLAGS))
+
+	if (rq->flags & ~(PTP_ENABLE_FEATURE |
+			  PTP_RISING_EDGE |
+			  PTP_FALLING_EDGE |
+			  PTP_STRICT_FLAGS))
 		return -EOPNOTSUPP;
 
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
+	chan = rq->index;
 
+	pin_desc_idx = ice_ptp_find_pin_idx(pf, PTP_PF_EXTTS, chan);
+	if (pin_desc_idx < 0)
+		return -EIO;
+
+	gpio_pin = pf->ptp.ice_pin_desc[pin_desc_idx].gpio[0];
 	irq_reg = rd32(hw, PFINT_OICR_ENA);
 
-	if (config->ena) {
+	if (on) {
 		/* Enable the interrupt */
 		irq_reg |= PFINT_OICR_TSYN_EVNT_M;
 		aux_reg = GLTSYN_AUX_IN_0_INT_ENA_M;
@@ -1607,33 +1615,38 @@ static int ice_ptp_cfg_extts(struct ice_pf *pf, unsigned int chan,
 #define GLTSYN_AUX_IN_0_EVNTLVL_FALLING_EDGE	BIT(1)
 
 		/* set event level to requested edge */
-		if (config->flags & PTP_FALLING_EDGE)
+		if (rq->flags & PTP_FALLING_EDGE)
 			aux_reg |= GLTSYN_AUX_IN_0_EVNTLVL_FALLING_EDGE;
-		if (config->flags & PTP_RISING_EDGE)
+		if (rq->flags & PTP_RISING_EDGE)
 			aux_reg |= GLTSYN_AUX_IN_0_EVNTLVL_RISING_EDGE;
 
 		/* Write GPIO CTL reg.
 		 * 0x1 is input sampled by EVENT register(channel)
 		 * + num_in_channels * tmr_idx
 		 */
-		func = 1 + chan + (tmr_idx * 3);
-		gpio_reg = FIELD_PREP(GLGEN_GPIO_CTL_PIN_FUNC_M, func);
-		pf->ptp.ext_ts_chan |= (1 << chan);
+		gpio_reg = FIELD_PREP(GLGEN_GPIO_CTL_PIN_FUNC_M,
+				      1 + chan + (tmr_idx * 3));
 	} else {
+		bool last_enabled = true;
+
 		/* clear the values we set to reset defaults */
 		aux_reg = 0;
 		gpio_reg = 0;
-		pf->ptp.ext_ts_chan &= ~(1 << chan);
-		if (!pf->ptp.ext_ts_chan)
+
+		for (unsigned int i = 0; i < pf->ptp.info.n_ext_ts; i++)
+			if ((pf->ptp.extts_rqs[i].flags &
+			     PTP_ENABLE_FEATURE) &&
+			    i != chan) {
+				last_enabled = false;
+			}
+
+		if (last_enabled)
 			irq_reg &= ~PFINT_OICR_TSYN_EVNT_M;
 	}
 
 	wr32(hw, PFINT_OICR_ENA, irq_reg);
 	wr32(hw, GLTSYN_AUX_IN(chan, tmr_idx), aux_reg);
-	wr32(hw, GLGEN_GPIO_CTL(config->gpio_pin), gpio_reg);
-
-	if (store)
-		memcpy(&pf->ptp.extts_channels[chan], config, sizeof(*config));
+	wr32(hw, GLGEN_GPIO_CTL(gpio_pin), gpio_reg);
 
 	return 0;
 }
@@ -1644,16 +1657,10 @@ static int ice_ptp_cfg_extts(struct ice_pf *pf, unsigned int chan,
  */
 static void ice_ptp_disable_all_extts(struct ice_pf *pf)
 {
-	struct ice_extts_channel extts_cfg = {};
-	int i;
-
-	for (i = 0; i < pf->ptp.info.n_ext_ts; i++) {
-		if (pf->ptp.extts_channels[i].ena) {
-			extts_cfg.gpio_pin = pf->ptp.extts_channels[i].gpio_pin;
-			extts_cfg.ena = false;
-			ice_ptp_cfg_extts(pf, i, &extts_cfg, false);
-		}
-	}
+	for (unsigned int i = 0; i < pf->ptp.info.n_ext_ts ; i++)
+		if (pf->ptp.extts_rqs[i].flags & PTP_ENABLE_FEATURE)
+			ice_ptp_cfg_extts(pf, &pf->ptp.extts_rqs[i],
+					  false);
 
 	synchronize_irq(pf->oicr_irq.virq);
 }
@@ -1666,158 +1673,169 @@ static void ice_ptp_disable_all_extts(struct ice_pf *pf)
  */
 static void ice_ptp_enable_all_extts(struct ice_pf *pf)
 {
-	int i;
-
-	for (i = 0; i < pf->ptp.info.n_ext_ts; i++) {
-		if (pf->ptp.extts_channels[i].ena)
-			ice_ptp_cfg_extts(pf, i, &pf->ptp.extts_channels[i],
-					  false);
-	}
+	for (unsigned int i = 0; i < pf->ptp.info.n_ext_ts ; i++)
+		if (pf->ptp.extts_rqs[i].flags & PTP_ENABLE_FEATURE)
+			ice_ptp_cfg_extts(pf, &pf->ptp.extts_rqs[i],
+					  true);
 }
 
 /**
- * ice_ptp_cfg_clkout - Configure clock to generate periodic wave
- * @pf: Board private structure
- * @chan: GPIO channel (0-3)
- * @config: desired periodic clk configuration. NULL will disable channel
- * @store: If set to true the values will be stored
+ * ice_ptp_write_perout - Write periodic wave parameters to HW
+ * @hw: pointer to the HW struct
+ * @chan: target channel
+ * @gpio_pin: target GPIO pin
+ * @start: target time to start periodic output
+ * @period: target period
  *
- * Configure the internal clock generator modules to generate the clock wave of
- * specified period.
+ * Return: 0 on success, negative error code otherwise
  */
-static int ice_ptp_cfg_clkout(struct ice_pf *pf, unsigned int chan,
-			      struct ice_perout_channel *config, bool store)
+static int ice_ptp_write_perout(struct ice_hw *hw, unsigned int chan,
+				unsigned int gpio_pin, u64 start, u64 period)
 {
-	u64 current_time, period, start_time, phase;
-	struct ice_hw *hw = &pf->hw;
-	u32 func, val, gpio_pin;
-	u8 tmr_idx;
-
-	if (config && config->flags & ~PTP_PEROUT_PHASE)
-		return -EOPNOTSUPP;
 
-	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
+	u8 tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
+	u32 val = 0;
 
 	/* 0. Reset mode & out_en in AUX_OUT */
 	wr32(hw, GLTSYN_AUX_OUT(chan, tmr_idx), 0);
 
-	/* If we're disabling the output, clear out CLKO and TGT and keep
-	 * output level low
+	/* 1. Write perout with half of required period value.
+	 * HW toggles output when source clock hits the TGT and then adds
+	 * GLTSYN_CLKO value to the target, so it ends up with 50% duty cycle.
 	 */
-	if (!config || !config->ena) {
-		wr32(hw, GLTSYN_CLKO(chan, tmr_idx), 0);
-		wr32(hw, GLTSYN_TGT_L(chan, tmr_idx), 0);
-		wr32(hw, GLTSYN_TGT_H(chan, tmr_idx), 0);
-
-		val = GLGEN_GPIO_CTL_PIN_DIR_M;
-		gpio_pin = pf->ptp.perout_channels[chan].gpio_pin;
-		wr32(hw, GLGEN_GPIO_CTL(gpio_pin), val);
-
-		/* Store the value if requested */
-		if (store)
-			memset(&pf->ptp.perout_channels[chan], 0,
-			       sizeof(struct ice_perout_channel));
-
-		return 0;
-	}
-	period = config->period;
-	start_time = config->start_time;
-	div64_u64_rem(start_time, period, &phase);
-	gpio_pin = config->gpio_pin;
-
-	/* 1. Write clkout with half of required period value */
-	if (period & 0x1) {
-		dev_err(ice_pf_to_dev(pf), "CLK Period must be an even value\n");
-		goto err;
-	}
-
 	period >>= 1;
 
-	/* For proper operation, the GLTSYN_CLKO must be larger than clock tick
+	/* For proper operation, GLTSYN_CLKO must be larger than clock tick and
+	 * period has to fit in 32 bit register.
 	 */
 #define MIN_PULSE 3
-	if (period <= MIN_PULSE || period > U32_MAX) {
-		dev_err(ice_pf_to_dev(pf), "CLK Period must be > %d && < 2^33",
-			MIN_PULSE * 2);
-		goto err;
+	if (!!period && (period <= MIN_PULSE || period > U32_MAX)) {
+		dev_err(ice_hw_to_dev(hw), "CLK period ticks must be >= %d && <= 2^32",
+			MIN_PULSE);
+		return -EIO;
 	}
 
 	wr32(hw, GLTSYN_CLKO(chan, tmr_idx), lower_32_bits(period));
 
-	/* Allow time for programming before start_time is hit */
-	current_time = ice_ptp_read_src_clk_reg(pf, NULL);
-
-	/* if start time is in the past start the timer at the nearest second
-	 * maintaining phase
-	 */
-	if (start_time < current_time)
-		start_time = roundup_u64(current_time, NSEC_PER_SEC) + phase;
-
-	if (ice_is_e810(hw))
-		start_time -= E810_OUT_PROP_DELAY_NS;
-	else
-		start_time -= ice_e82x_pps_delay(ice_e82x_time_ref(hw));
-
 	/* 2. Write TARGET time */
-	wr32(hw, GLTSYN_TGT_L(chan, tmr_idx), lower_32_bits(start_time));
-	wr32(hw, GLTSYN_TGT_H(chan, tmr_idx), upper_32_bits(start_time));
+	wr32(hw, GLTSYN_TGT_L(chan, tmr_idx), lower_32_bits(start));
+	wr32(hw, GLTSYN_TGT_H(chan, tmr_idx), upper_32_bits(start));
 
 	/* 3. Write AUX_OUT register */
-	val = GLTSYN_AUX_OUT_0_OUT_ENA_M | GLTSYN_AUX_OUT_0_OUTMOD_M;
+	if (!!period)
+		val = GLTSYN_AUX_OUT_0_OUT_ENA_M | GLTSYN_AUX_OUT_0_OUTMOD_M;
 	wr32(hw, GLTSYN_AUX_OUT(chan, tmr_idx), val);
 
 	/* 4. write GPIO CTL reg */
-	func = 8 + chan + (tmr_idx * 4);
-	val = GLGEN_GPIO_CTL_PIN_DIR_M |
-	      FIELD_PREP(GLGEN_GPIO_CTL_PIN_FUNC_M, func);
+	val = GLGEN_GPIO_CTL_PIN_DIR_M;
+	if (!!period)
+		val |= FIELD_PREP(GLGEN_GPIO_CTL_PIN_FUNC_M,
+				  8 + chan + (tmr_idx * 4));
+
 	wr32(hw, GLGEN_GPIO_CTL(gpio_pin), val);
 
-	/* Store the value if requested */
-	if (store) {
-		memcpy(&pf->ptp.perout_channels[chan], config,
-		       sizeof(struct ice_perout_channel));
-		pf->ptp.perout_channels[chan].start_time = phase;
+	return 0;
+}
+
+/**
+ * ice_ptp_cfg_perout - Configure clock to generate periodic wave
+ * @pf: Board private structure
+ * @rq: Periodic output request
+ * @on: Enable/disable flag
+ *
+ * Configure the internal clock generator modules to generate the clock wave of
+ * specified period.
+ *
+ * Return: 0 on success, negative error code otherwise
+ */
+static int ice_ptp_cfg_perout(struct ice_pf *pf, struct ptp_perout_request *rq,
+			      int on)
+{
+	u64 clk, period, start, phase;
+	struct ice_hw *hw = &pf->hw;
+	unsigned int gpio_pin;
+	int pin_desc_idx;
+
+	if (rq->flags & ~PTP_PEROUT_PHASE)
+		return -EOPNOTSUPP;
+
+	pin_desc_idx = ice_ptp_find_pin_idx(pf, PTP_PF_PEROUT, rq->index);
+	if (pin_desc_idx < 0)
+		return -EIO;
+
+	gpio_pin = pf->ptp.ice_pin_desc[pin_desc_idx].gpio[1];
+	period = rq->period.sec * NSEC_PER_SEC + rq->period.nsec;
+
+	/* If we're disabling the output or period is 0, clear out CLKO and TGT
+	 * and keep output level low.
+	 */
+	if (!on || !period)
+		return ice_ptp_write_perout(hw, rq->index, gpio_pin, 0, 0);
+
+	if (strncmp(pf->ptp.pin_desc[pin_desc_idx].name, "1PPS", 64) == 0 &&
+	    period != NSEC_PER_SEC && hw->ptp.phy_model == ICE_PHY_E82X) {
+		dev_err(ice_pf_to_dev(pf), "1PPS pin supports only 1 s period\n");
+		return -EOPNOTSUPP;
 	}
 
-	return 0;
-err:
-	dev_err(ice_pf_to_dev(pf), "PTP failed to cfg per_clk\n");
-	return -EFAULT;
+	if (period & 0x1) {
+		dev_err(ice_pf_to_dev(pf), "CLK Period must be an even value\n");
+		return -EIO;
+	}
+
+	start = rq->start.sec * NSEC_PER_SEC + rq->start.nsec;
+
+	/* If PTP_PEROUT_PHASE is set, rq has phase instead of start time */
+	if (rq->flags & PTP_PEROUT_PHASE)
+		phase = start;
+	else
+		div64_u64_rem(start, period, &phase);
+
+	/* If we have only phase or start time is in the past, start the timer
+	 * at the next multiple of period, maintaining phase.
+	 */
+	clk = ice_ptp_read_src_clk_reg(pf, NULL);
+	if (rq->flags & PTP_PEROUT_PHASE || start <= clk - ice_prop_delay(hw))
+		start = div64_u64(clk + period - 1, period) * period + phase;
+
+	/* Compensate for propagation delay from the generator to the pin. */
+	start -= ice_prop_delay(hw);
+
+	return ice_ptp_write_perout(hw, rq->index, gpio_pin, start, period);
 }
 
 /**
- * ice_ptp_disable_all_clkout - Disable all currently configured outputs
- * @pf: pointer to the PF structure
+ * ice_ptp_disable_all_perout - Disable all currently configured outputs
+ * @pf: Board private structure
  *
  * Disable all currently configured clock outputs. This is necessary before
- * certain changes to the PTP hardware clock. Use ice_ptp_enable_all_clkout to
+ * certain changes to the PTP hardware clock. Use ice_ptp_enable_all_perout to
  * re-enable the clocks again.
  */
-static void ice_ptp_disable_all_clkout(struct ice_pf *pf)
+static void ice_ptp_disable_all_perout(struct ice_pf *pf)
 {
-	uint i;
-
-	for (i = 0; i < pf->ptp.info.n_per_out; i++)
-		if (pf->ptp.perout_channels[i].ena)
-			ice_ptp_cfg_clkout(pf, i, NULL, false);
+	for (unsigned int i = 0; i < pf->ptp.info.n_per_out; i++)
+		if (pf->ptp.perout_rqs[i].period.sec ||
+		    pf->ptp.perout_rqs[i].period.nsec)
+			ice_ptp_cfg_perout(pf, &pf->ptp.perout_rqs[i],
+					   false);
 }
 
 /**
- * ice_ptp_enable_all_clkout - Enable all configured periodic clock outputs
- * @pf: pointer to the PF structure
+ * ice_ptp_enable_all_perout - Enable all configured periodic clock outputs
+ * @pf: Board private structure
  *
  * Enable all currently configured clock outputs. Use this after
- * ice_ptp_disable_all_clkout to reconfigure the output signals according to
+ * ice_ptp_disable_all_perout to reconfigure the output signals according to
  * their configuration.
  */
-static void ice_ptp_enable_all_clkout(struct ice_pf *pf)
+static void ice_ptp_enable_all_perout(struct ice_pf *pf)
 {
-	uint i;
-
-	for (i = 0; i < pf->ptp.info.n_per_out; i++)
-		if (pf->ptp.perout_channels[i].ena)
-			ice_ptp_cfg_clkout(pf, i, &pf->ptp.perout_channels[i],
-					   false);
+	for (unsigned int i = 0; i < pf->ptp.info.n_per_out; i++)
+		if (pf->ptp.perout_rqs[i].period.sec ||
+		    pf->ptp.perout_rqs[i].period.nsec)
+			ice_ptp_cfg_perout(pf, &pf->ptp.perout_rqs[i],
+					   true);
 }
 
 /**
@@ -1863,50 +1881,40 @@ static int ice_verify_pin(struct ptp_clock_info *info, unsigned int pin,
  * @rq: The requested feature to change
  * @on: Enable/disable flag
  *
- * Return: 0 on success, -EOPNOTSUPP when request type is not supported
+ * Return: 0 on success, negative error code otherwise
  */
 static int ice_ptp_gpio_enable(struct ptp_clock_info *info,
 			       struct ptp_clock_request *rq, int on)
 {
 	struct ice_pf *pf = ptp_info_to_pf(info);
+	int err;
 
 	switch (rq->type) {
 	case PTP_CLK_REQ_PEROUT:
 	{
-		struct ice_perout_channel clk_cfg;
-		int pin_desc_idx;
-
-		pin_desc_idx = ice_ptp_find_pin_idx(pf, PTP_PF_PEROUT,
-						    rq->perout.index);
-		if (pin_desc_idx < 0)
-			return -EIO;
+		struct ptp_perout_request *cached =
+			&pf->ptp.perout_rqs[rq->perout.index];
 
-
-		clk_cfg.flags = rq->perout.flags;
-		clk_cfg.gpio_pin = pf->ptp.ice_pin_desc[pin_desc_idx].gpio[1];
-		clk_cfg.period = rq->perout.period.sec * NSEC_PER_SEC +
-				 rq->perout.period.nsec;
-		clk_cfg.start_time = rq->perout.start.sec * NSEC_PER_SEC +
-				     rq->perout.start.nsec;
-		clk_cfg.ena = !!on;
-
-		return ice_ptp_cfg_clkout(pf, rq->perout.index, &clk_cfg, true);
+		err = ice_ptp_cfg_perout(pf, &rq->perout, on);
+		if (!err) {
+			*cached = rq->perout;
+		} else {
+			cached->period.sec = 0;
+			cached->period.nsec = 0;
+		}
+		return err;
 	}
 	case PTP_CLK_REQ_EXTTS:
 	{
-		struct ice_extts_channel extts_cfg = {};
-		int pin_desc_idx;
-
-		pin_desc_idx = ice_ptp_find_pin_idx(pf, PTP_PF_EXTTS,
-						    rq->extts.index);
-		if (pin_desc_idx < 0)
-			return -EIO;
+		struct ptp_extts_request *cached =
+			&pf->ptp.extts_rqs[rq->extts.index];
 
-		extts_cfg.flags = rq->extts.flags;
-		extts_cfg.gpio_pin = pf->ptp.ice_pin_desc[pin_desc_idx].gpio[0];
-		extts_cfg.ena = !!on;
-
-		return ice_ptp_cfg_extts(pf, rq->extts.index, &extts_cfg, true);
+		err = ice_ptp_cfg_extts(pf, &rq->extts, on);
+		if (!err)
+			*cached = rq->extts;
+		else
+			cached->flags &= ~PTP_ENABLE_FEATURE;
+		return err;
 	}
 	default:
 		return -EOPNOTSUPP;
@@ -1966,7 +1974,7 @@ ice_ptp_settime64(struct ptp_clock_info *info, const struct timespec64 *ts)
 	}
 
 	/* Disable periodic outputs */
-	ice_ptp_disable_all_clkout(pf);
+	ice_ptp_disable_all_perout(pf);
 
 	err = ice_ptp_write_init(pf, &ts64);
 	ice_ptp_unlock(hw);
@@ -1975,7 +1983,7 @@ ice_ptp_settime64(struct ptp_clock_info *info, const struct timespec64 *ts)
 		ice_ptp_reset_cached_phctime(pf);
 
 	/* Reenable periodic outputs */
-	ice_ptp_enable_all_clkout(pf);
+	ice_ptp_enable_all_perout(pf);
 
 	/* Recalibrate and re-enable timestamp blocks for E822/E823 */
 	if (hw->ptp.phy_model == ICE_PHY_E82X)
@@ -2037,12 +2045,12 @@ static int ice_ptp_adjtime(struct ptp_clock_info *info, s64 delta)
 	}
 
 	/* Disable periodic outputs */
-	ice_ptp_disable_all_clkout(pf);
+	ice_ptp_disable_all_perout(pf);
 
 	err = ice_ptp_write_adj(pf, delta);
 
 	/* Reenable periodic outputs */
-	ice_ptp_enable_all_clkout(pf);
+	ice_ptp_enable_all_perout(pf);
 
 	ice_ptp_unlock(hw);
 
@@ -2639,7 +2647,7 @@ void ice_ptp_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	ice_ptp_release_tx_tracker(pf, &pf->ptp.port.tx);
 
 	/* Disable periodic outputs */
-	ice_ptp_disable_all_clkout(pf);
+	ice_ptp_disable_all_perout(pf);
 
 	src_tmr = ice_get_ptp_src_clock_index(&pf->hw);
 
@@ -2716,7 +2724,7 @@ static int ice_ptp_rebuild_owner(struct ice_pf *pf)
 	}
 
 	/* Re-enable all periodic outputs and external timestamp events */
-	ice_ptp_enable_all_clkout(pf);
+	ice_ptp_enable_all_perout(pf);
 	ice_ptp_enable_all_extts(pf);
 
 	return 0;
@@ -3296,7 +3304,7 @@ void ice_ptp_release(struct ice_pf *pf)
 		return;
 
 	/* Disable periodic outputs */
-	ice_ptp_disable_all_clkout(pf);
+	ice_ptp_disable_all_perout(pf);
 
 	ptp_clock_unregister(pf->ptp.clock);
 	pf->ptp.clock = NULL;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 4ef6819cfeeb..dc1f5a95b970 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -8,19 +8,6 @@
 #include <linux/kthread.h>
 
 #include "ice_ptp_hw.h"
-struct ice_perout_channel {
-	bool ena;
-	u32 gpio_pin;
-	u32 flags;
-	u64 period;
-	u64 start_time;
-};
-
-struct ice_extts_channel {
-	bool ena;
-	u32 gpio_pin;
-	u32 flags;
-};
 
 /* The ice hardware captures Tx hardware timestamps in the PHY. The timestamp
  * is stored in a buffer of registers. Depending on the specific hardware,
@@ -259,13 +246,12 @@ struct ice_ptp_pin_desc {
  * @work: delayed work function for periodic tasks
  * @cached_phc_time: a cached copy of the PHC time for timestamp extension
  * @cached_phc_jiffies: jiffies when cached_phc_time was last updated
- * @ext_ts_chan: the external timestamp channel in use
+ * @kworker: kwork thread for handling periodic work
  * @ext_ts_irq: the external timestamp IRQ in use
  * @pin_desc: structure defining pins
  * @ice_pin_desc: internal structure describing pin relations
- * @kworker: kwork thread for handling periodic work
- * @perout_channels: periodic output data
- * @extts_channels: channels for external timestamps
+ * @perout_rqs: cached periodic output requests
+ * @extts_rqs: cached external timestamp requests
  * @info: structure defining PTP hardware capabilities
  * @clock: pointer to registered PTP clock device
  * @tstamp_config: hardware timestamping configuration
@@ -285,13 +271,12 @@ struct ice_ptp {
 	struct kthread_delayed_work work;
 	u64 cached_phc_time;
 	unsigned long cached_phc_jiffies;
-	u8 ext_ts_chan;
-	u8 ext_ts_irq;
 	struct kthread_worker *kworker;
+	u8 ext_ts_irq;
 	struct ptp_pin_desc pin_desc[ICE_N_PINS_MAX];
 	const struct ice_ptp_pin_desc *ice_pin_desc;
-	struct ice_perout_channel perout_channels[GLTSYN_TGT_H_IDX_MAX];
-	struct ice_extts_channel extts_channels[GLTSYN_TGT_H_IDX_MAX];
+	struct ptp_perout_request perout_rqs[GLTSYN_TGT_H_IDX_MAX];
+	struct ptp_extts_request extts_rqs[GLTSYN_EVNT_H_IDX_MAX];
 	struct ptp_clock_info info;
 	struct ptp_clock *clock;
 	struct hwtstamp_config tstamp_config;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
index e6980b94a6c1..585ce200c60f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
@@ -334,7 +334,7 @@ struct ice_eth56g_mac_reg_cfg eth56g_mac_cfg[NUM_ICE_ETH56G_LNK_SPD] = {
  * reference. See the struct ice_time_ref_info_e82x for information about the
  * meaning of each constant.
  */
-const struct ice_time_ref_info_e82x e822_time_ref[NUM_ICE_TIME_REF_FREQ] = {
+const struct ice_time_ref_info_e82x e82x_time_ref[NUM_ICE_TIME_REF_FREQ] = {
 	/* ICE_TIME_REF_FREQ_25_000 -> 25 MHz */
 	{
 		/* pll_freq */
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 264b290392d7..c42831449787 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -316,7 +316,7 @@ ice_cgu_pll_params_e825c e825c_cgu_params[NUM_ICE_TIME_REF_FREQ];
 extern const struct ice_phy_reg_info_eth56g eth56g_phy_res[NUM_ETH56G_PHY_RES];
 
 /* Table of constants related to possible TIME_REF sources */
-extern const struct ice_time_ref_info_e82x e822_time_ref[NUM_ICE_TIME_REF_FREQ];
+extern const struct ice_time_ref_info_e82x e82x_time_ref[NUM_ICE_TIME_REF_FREQ];
 
 /* Table of constants for Vernier calibration on E822 */
 extern const struct ice_vernier_info_e82x e822_vernier[NUM_ICE_PTP_LNK_SPD];
@@ -326,7 +326,8 @@ extern const struct ice_vernier_info_e82x e822_vernier[NUM_ICE_PTP_LNK_SPD];
  */
 #define ICE_E810_PLL_FREQ		812500000
 #define ICE_PTP_NOMINAL_INCVAL_E810	0x13b13b13bULL
-#define E810_OUT_PROP_DELAY_NS 1
+#define ICE_E810_OUT_PROP_DELAY_NS	1
+#define ICE_E825C_OUT_PROP_DELAY_NS	11
 
 /* Device agnostic functions */
 u8 ice_get_ptp_src_clock_index(struct ice_hw *hw);
@@ -358,7 +359,7 @@ void ice_ptp_reset_ts_memory_quad_e82x(struct ice_hw *hw, u8 quad);
  *
  * Returns the current TIME_REF from the capabilities structure.
  */
-static inline enum ice_time_ref_freq ice_e82x_time_ref(struct ice_hw *hw)
+static inline enum ice_time_ref_freq ice_e82x_time_ref(const struct ice_hw *hw)
 {
 	return hw->func_caps.ts_func_info.time_ref;
 }
@@ -379,17 +380,17 @@ ice_set_e82x_time_ref(struct ice_hw *hw, enum ice_time_ref_freq time_ref)
 
 static inline u64 ice_e82x_pll_freq(enum ice_time_ref_freq time_ref)
 {
-	return e822_time_ref[time_ref].pll_freq;
+	return e82x_time_ref[time_ref].pll_freq;
 }
 
 static inline u64 ice_e82x_nominal_incval(enum ice_time_ref_freq time_ref)
 {
-	return e822_time_ref[time_ref].nominal_incval;
+	return e82x_time_ref[time_ref].nominal_incval;
 }
 
 static inline u64 ice_e82x_pps_delay(enum ice_time_ref_freq time_ref)
 {
-	return e822_time_ref[time_ref].pps_delay;
+	return e82x_time_ref[time_ref].pps_delay;
 }
 
 /* E822 Vernier calibration functions */
@@ -431,6 +432,20 @@ int ice_phy_cfg_ptp_1step_eth56g(struct ice_hw *hw, u8 port);
 #define ICE_ETH56G_NOMINAL_THRESH4	0x7777
 #define ICE_ETH56G_NOMINAL_TX_THRESH	0x6
 
+static inline u64 ice_prop_delay(const struct ice_hw *hw)
+{
+	switch (hw->ptp.phy_model) {
+	case ICE_PHY_ETH56G:
+		return ICE_E825C_OUT_PROP_DELAY_NS;
+	case ICE_PHY_E810:
+		return ICE_E810_OUT_PROP_DELAY_NS;
+	case ICE_PHY_E82X:
+		return ice_e82x_pps_delay(ice_e82x_time_ref(hw));
+	default:
+		return 0;
+	}
+}
+
 /**
  * ice_get_base_incval - Get base clock increment value
  * @hw: pointer to the HW struct
-- 
2.46.0

