Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA399E36EB
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Dec 2024 10:48:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D978E84550;
	Wed,  4 Dec 2024 09:48:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8IfQycc7d-36; Wed,  4 Dec 2024 09:48:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 84FAE84554
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733305706;
	bh=rt8NcC2POP2UgWEKKYa/ivb5RowNKM/Ka9Kyg04bK98=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DJHt70/6DzX9aMrLgk/ylMqobW8XUlWOvJCVKgbaWL13nPBnRXPjwLYOkgOy/Z+n8
	 upjWsO8h6a5QTRaFveWE1M3VgxvD62GO8KkOiAdFI70F+yts2mk9Q/3fK8eC98StaW
	 psAMQfTty/l6xjeFkWxlCDU/sVS4QWPoXrrMHZ4BW4icIjsUT2biHy1F8e22PId66l
	 t6E+I2p8bqGv9E5tfBzOJRkOfENTaZyTeL87oRfCQAm3QC89X89zODTgz4kOEjgYyd
	 7lr8hhCU58fFf/FsgmC2XAr9z7WR/5QHjsIjoWAKCrQm/bOHzkw8Zn/WFsl//pzrcC
	 j4VoovI4+50fQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 84FAE84554;
	Wed,  4 Dec 2024 09:48:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1A4301DD1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 09:48:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 15C2F60618
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 09:48:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EMLmqsi2Z9L0 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Dec 2024 09:48:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D5505606A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5505606A6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D5505606A6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 09:48:23 +0000 (UTC)
X-CSE-ConnectionGUID: 9S2GqPWFTp2476BtejzI4g==
X-CSE-MsgGUID: gFChQI4rQmKsNuQDBWxtrA==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="44226548"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="44226548"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 01:48:22 -0800
X-CSE-ConnectionGUID: qEBVk4oMSjCerb0GVgLYaQ==
X-CSE-MsgGUID: 0Er58sZfRoGC16Vlm8AoCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="94143038"
Received: from kkolacin-desk1.ger.corp.intel.com (HELO
 kkolacin-desk1.igk.intel.com) ([10.217.160.108])
 by orviesa007.jf.intel.com with ESMTP; 04 Dec 2024 01:48:21 -0800
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Karol Kolacinski <karol.kolacinski@intel.com>
Date: Wed,  4 Dec 2024 10:46:11 +0100
Message-ID: <20241204094816.337884-2-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733305703; x=1764841703;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2tY6kQCLtEPbCrPcxjIdFKsuqIsXtAQSPJMhwqxJRQ0=;
 b=eUd79Txz28vkapmcEIfp2ACbqW0soX+2WiLRWBstTIJtwi8WR8VRCCCc
 17K1Fsv1rUg49qUjsRMQ2AoNyw1t6ZbO6m9aDcHUTSn86SneQ5svBhD73
 re2T7VDgKruEPazvpiR2zlnFDw5kvKSp6MEw6kjWCg4VQiLb+AK8hjFG8
 1DxEmjMhHusqIgSZWb4R5kfvl3TwR21FvEt+tkTw4uoZq9cVIf3bQdBdo
 TZXB11JJErmkE+Uuko1IKpx45erMHMoF+l6npREmswLN6J2reHvf1AaQ6
 FJCg0hmjB/Utbk39tValPWi0b6FdPn4NInWUe1SuqdUpR6LEL6fDFcpDB
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eUd79Txz
Subject: [Intel-wired-lan] [PATCH v3 iwl-next] ice: Add in/out PTP pin delays
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

HW can have different input/output delays for each of the pins.

Currently, only E82X adapters have delay compensation based on TSPLL
config and E810 adapters have constant 1 ms compensation, both cases
only for output delays and the same one for all pins.

E825 adapters have different delays for SDP and other pins. Those
delays are also based on direction and input delays are different than
output ones. This is the main reason for moving delays to pin
description structure.

Add a field in ice_ptp_pin_desc structure to reflect that. Delay values
are based on approximate calculations of HW delays based on HW spec.

Implement external timestamp (input) delay compensation.

Remove existing definitions and wrappers for periodic output propagation
delays.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
V2 -> V3: rebased, renamed prop_delay to prop_delay_ns, reworded commit
          message to be more descriptive
V1 -> V2: removed duplicate gpio_pin variable and restored missing
          ICE_E810_E830_SYNC_DELAY

 drivers/net/ethernet/intel/ice/ice_ptp.c      | 82 +++++++++++--------
 drivers/net/ethernet/intel/ice/ice_ptp.h      |  2 +
 .../net/ethernet/intel/ice/ice_ptp_consts.h   | 12 ---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   | 23 ------
 4 files changed, 49 insertions(+), 70 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index d8ed4240f225..b2dba54e6457 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -16,28 +16,28 @@ static const char ice_pin_names[][64] = {
 };
 
 static const struct ice_ptp_pin_desc ice_pin_desc_e82x[] = {
-	/* name,        gpio */
-	{  TIME_SYNC, {  4, -1 }},
-	{  ONE_PPS,   { -1,  5 }},
+	/* name,        gpio,       delay */
+	{  TIME_SYNC, {  4, -1 }, { 0,  0 }},
+	{  ONE_PPS,   { -1,  5 }, { 0, 11 }},
 };
 
 static const struct ice_ptp_pin_desc ice_pin_desc_e825c[] = {
-	/* name,        gpio */
-	{  SDP0,      {  0,  0 }},
-	{  SDP1,      {  1,  1 }},
-	{  SDP2,      {  2,  2 }},
-	{  SDP3,      {  3,  3 }},
-	{  TIME_SYNC, {  4, -1 }},
-	{  ONE_PPS,   { -1,  5 }},
+	/* name,        gpio,       delay */
+	{  SDP0,      {  0,  0 }, { 15, 14 }},
+	{  SDP1,      {  1,  1 }, { 15, 14 }},
+	{  SDP2,      {  2,  2 }, { 15, 14 }},
+	{  SDP3,      {  3,  3 }, { 15, 14 }},
+	{  TIME_SYNC, {  4, -1 }, { 11,  0 }},
+	{  ONE_PPS,   { -1,  5 }, {  0,  9 }},
 };
 
 static const struct ice_ptp_pin_desc ice_pin_desc_e810[] = {
-	/* name,      gpio */
-	{  SDP0,    {  0, 0 }},
-	{  SDP1,    {  1, 1 }},
-	{  SDP2,    {  2, 2 }},
-	{  SDP3,    {  3, 3 }},
-	{  ONE_PPS, { -1, 5 }},
+	/* name,        gpio,       delay */
+	{  SDP0,      {  0,  0 }, { 0, 1 }},
+	{  SDP1,      {  1,  1 }, { 0, 1 }},
+	{  SDP2,      {  2,  2 }, { 0, 1 }},
+	{  SDP3,      {  3,  3 }, { 0, 1 }},
+	{  ONE_PPS,   { -1,  5 }, { 0, 1 }},
 };
 
 static const char ice_pin_names_nvm[][64] = {
@@ -49,12 +49,12 @@ static const char ice_pin_names_nvm[][64] = {
 };
 
 static const struct ice_ptp_pin_desc ice_pin_desc_e810_sma[] = {
-	/* name,   gpio */
-	{  GNSS, {  1, -1 }},
-	{  SMA1, {  1,  0 }},
-	{  UFL1, { -1,  0 }},
-	{  SMA2, {  3,  2 }},
-	{  UFL2, {  3, -1 }},
+	/* name,   gpio,       delay */
+	{  GNSS, {  1, -1 }, { 0, 0 }},
+	{  SMA1, {  1,  0 }, { 0, 1 }},
+	{  UFL1, { -1,  0 }, { 0, 1 }},
+	{  SMA2, {  3,  2 }, { 0, 1 }},
+	{  UFL2, {  3, -1 }, { 0, 0 }},
 };
 
 static struct ice_pf *ice_get_ctrl_pf(struct ice_pf *pf)
@@ -1561,18 +1561,29 @@ void ice_ptp_extts_event(struct ice_pf *pf)
 	 * Event is defined in GLTSYN_EVNT_0 register
 	 */
 	for (chan = 0; chan < GLTSYN_EVNT_H_IDX_MAX; chan++) {
+		int pin_desc_idx;
+
 		/* Check if channel is enabled */
-		if (pf->ptp.ext_ts_irq & (1 << chan)) {
-			lo = rd32(hw, GLTSYN_EVNT_L(chan, tmr_idx));
-			hi = rd32(hw, GLTSYN_EVNT_H(chan, tmr_idx));
-			event.timestamp = (((u64)hi) << 32) | lo;
-			event.type = PTP_CLOCK_EXTTS;
-			event.index = chan;
-
-			/* Fire event */
-			ptp_clock_event(pf->ptp.clock, &event);
-			pf->ptp.ext_ts_irq &= ~(1 << chan);
+		if (!(pf->ptp.ext_ts_irq & (1 << chan)))
+			continue;
+
+		lo = rd32(hw, GLTSYN_EVNT_L(chan, tmr_idx));
+		hi = rd32(hw, GLTSYN_EVNT_H(chan, tmr_idx));
+		event.timestamp = (u64)hi << 32 | lo;
+
+		/* Add delay compensation */
+		pin_desc_idx = ice_ptp_find_pin_idx(pf, PTP_PF_EXTTS, chan);
+		if (pin_desc_idx >= 0) {
+			const struct ice_ptp_pin_desc *desc;
+
+			desc = &pf->ptp.ice_pin_desc[pin_desc_idx];
+			event.timestamp -= desc->delay[0];
 		}
+
+		event.type = PTP_CLOCK_EXTTS;
+		event.index = chan;
+		pf->ptp.ext_ts_irq &= ~(1 << chan);
+		ptp_clock_event(pf->ptp.clock, &event);
 	}
 }
 
@@ -1767,9 +1778,9 @@ static int ice_ptp_write_perout(struct ice_hw *hw, unsigned int chan,
 static int ice_ptp_cfg_perout(struct ice_pf *pf, struct ptp_perout_request *rq,
 			      int on)
 {
+	unsigned int gpio_pin, prop_delay_ns;
 	u64 clk, period, start, phase;
 	struct ice_hw *hw = &pf->hw;
-	unsigned int gpio_pin;
 	int pin_desc_idx;
 
 	if (rq->flags & ~PTP_PEROUT_PHASE)
@@ -1780,6 +1791,7 @@ static int ice_ptp_cfg_perout(struct ice_pf *pf, struct ptp_perout_request *rq,
 		return -EIO;
 
 	gpio_pin = pf->ptp.ice_pin_desc[pin_desc_idx].gpio[1];
+	prop_delay_ns = pf->ptp.ice_pin_desc[pin_desc_idx].delay[1];
 	period = rq->period.sec * NSEC_PER_SEC + rq->period.nsec;
 
 	/* If we're disabling the output or period is 0, clear out CLKO and TGT
@@ -1811,11 +1823,11 @@ static int ice_ptp_cfg_perout(struct ice_pf *pf, struct ptp_perout_request *rq,
 	 * at the next multiple of period, maintaining phase.
 	 */
 	clk = ice_ptp_read_src_clk_reg(pf, NULL);
-	if (rq->flags & PTP_PEROUT_PHASE || start <= clk - ice_prop_delay(hw))
+	if (rq->flags & PTP_PEROUT_PHASE || start <= clk - prop_delay_ns)
 		start = div64_u64(clk + period - 1, period) * period + phase;
 
 	/* Compensate for propagation delay from the generator to the pin. */
-	start -= ice_prop_delay(hw);
+	start -= prop_delay_ns;
 
 	return ice_ptp_write_perout(hw, rq->index, gpio_pin, start, period);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 99d48cf15ddc..56c480bb29ad 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -210,6 +210,7 @@ enum ice_ptp_pin_nvm {
  * struct ice_ptp_pin_desc - hardware pin description data
  * @name_idx: index of the name of pin in ice_pin_names
  * @gpio: the associated GPIO input and output pins
+ * @delay: input and output signal delays in nanoseconds
  *
  * Structure describing a PTP-capable GPIO pin that extends ptp_pin_desc array
  * for the device. Device families have separate sets of available pins with
@@ -218,6 +219,7 @@ enum ice_ptp_pin_nvm {
 struct ice_ptp_pin_desc {
 	int name_idx;
 	int gpio[2];
+	unsigned int delay[2];
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
index 585ce200c60f..c3e9b78087a8 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
@@ -341,8 +341,6 @@ const struct ice_time_ref_info_e82x e82x_time_ref[NUM_ICE_TIME_REF_FREQ] = {
 		823437500, /* 823.4375 MHz PLL */
 		/* nominal_incval */
 		0x136e44fabULL,
-		/* pps_delay */
-		11,
 	},
 
 	/* ICE_TIME_REF_FREQ_122_880 -> 122.88 MHz */
@@ -351,8 +349,6 @@ const struct ice_time_ref_info_e82x e82x_time_ref[NUM_ICE_TIME_REF_FREQ] = {
 		783360000, /* 783.36 MHz */
 		/* nominal_incval */
 		0x146cc2177ULL,
-		/* pps_delay */
-		12,
 	},
 
 	/* ICE_TIME_REF_FREQ_125_000 -> 125 MHz */
@@ -361,8 +357,6 @@ const struct ice_time_ref_info_e82x e82x_time_ref[NUM_ICE_TIME_REF_FREQ] = {
 		796875000, /* 796.875 MHz */
 		/* nominal_incval */
 		0x141414141ULL,
-		/* pps_delay */
-		12,
 	},
 
 	/* ICE_TIME_REF_FREQ_153_600 -> 153.6 MHz */
@@ -371,8 +365,6 @@ const struct ice_time_ref_info_e82x e82x_time_ref[NUM_ICE_TIME_REF_FREQ] = {
 		816000000, /* 816 MHz */
 		/* nominal_incval */
 		0x139b9b9baULL,
-		/* pps_delay */
-		12,
 	},
 
 	/* ICE_TIME_REF_FREQ_156_250 -> 156.25 MHz */
@@ -381,8 +373,6 @@ const struct ice_time_ref_info_e82x e82x_time_ref[NUM_ICE_TIME_REF_FREQ] = {
 		830078125, /* 830.78125 MHz */
 		/* nominal_incval */
 		0x134679aceULL,
-		/* pps_delay */
-		11,
 	},
 
 	/* ICE_TIME_REF_FREQ_245_760 -> 245.76 MHz */
@@ -391,8 +381,6 @@ const struct ice_time_ref_info_e82x e82x_time_ref[NUM_ICE_TIME_REF_FREQ] = {
 		783360000, /* 783.36 MHz */
 		/* nominal_incval */
 		0x146cc2177ULL,
-		/* pps_delay */
-		12,
 	},
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 5c11d8a69fd3..5b4dc921deee 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -80,7 +80,6 @@ struct ice_phy_reg_info_eth56g {
  * struct ice_time_ref_info_e82x
  * @pll_freq: Frequency of PLL that drives timer ticks in Hz
  * @nominal_incval: increment to generate nanoseconds in GLTSYN_TIME_L
- * @pps_delay: propagation delay of the PPS output signal
  *
  * Characteristic information for the various TIME_REF sources possible in the
  * E822 devices
@@ -88,7 +87,6 @@ struct ice_phy_reg_info_eth56g {
 struct ice_time_ref_info_e82x {
 	u64 pll_freq;
 	u64 nominal_incval;
-	u8 pps_delay;
 };
 
 /**
@@ -326,9 +324,7 @@ extern const struct ice_vernier_info_e82x e822_vernier[NUM_ICE_PTP_LNK_SPD];
  */
 #define ICE_E810_PLL_FREQ		812500000
 #define ICE_PTP_NOMINAL_INCVAL_E810	0x13b13b13bULL
-#define ICE_E810_OUT_PROP_DELAY_NS	1
 #define ICE_E810_E830_SYNC_DELAY	0
-#define ICE_E825C_OUT_PROP_DELAY_NS	11
 
 /* Device agnostic functions */
 u8 ice_get_ptp_src_clock_index(struct ice_hw *hw);
@@ -390,11 +386,6 @@ static inline u64 ice_e82x_nominal_incval(enum ice_time_ref_freq time_ref)
 	return e82x_time_ref[time_ref].nominal_incval;
 }
 
-static inline u64 ice_e82x_pps_delay(enum ice_time_ref_freq time_ref)
-{
-	return e82x_time_ref[time_ref].pps_delay;
-}
-
 /* E822 Vernier calibration functions */
 int ice_stop_phy_timer_e82x(struct ice_hw *hw, u8 port, bool soft_reset);
 int ice_start_phy_timer_e82x(struct ice_hw *hw, u8 port);
@@ -432,20 +423,6 @@ int ice_phy_cfg_ptp_1step_eth56g(struct ice_hw *hw, u8 port);
 #define ICE_ETH56G_NOMINAL_THRESH4	0x7777
 #define ICE_ETH56G_NOMINAL_TX_THRESH	0x6
 
-static inline u64 ice_prop_delay(const struct ice_hw *hw)
-{
-	switch (hw->mac_type) {
-	case ICE_MAC_E810:
-		return ICE_E810_OUT_PROP_DELAY_NS;
-	case ICE_MAC_GENERIC:
-		return ice_e82x_pps_delay(ice_e82x_time_ref(hw));
-	case ICE_MAC_GENERIC_3K_E825:
-		return ICE_E825C_OUT_PROP_DELAY_NS;
-	default:
-		return 0;
-	}
-}
-
 /**
  * ice_get_base_incval - Get base clock increment value
  * @hw: pointer to the HW struct

base-commit: 4376b34cf49c2f38e761beacd173d1dc15a255fd
-- 
2.47.1

