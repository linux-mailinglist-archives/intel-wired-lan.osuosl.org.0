Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA35398FD7C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2024 08:47:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E6625410D0;
	Fri,  4 Oct 2024 06:47:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vDX_SCv2nJqr; Fri,  4 Oct 2024 06:47:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6819941095
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728024463;
	bh=CHqR7akrVq1Y4RDILdfHqqs7I4f2FZeAR8cF2theGsw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=uQhfG2VOPq2CqaR1H3UWW6pYfm8DhNtwLRHZnexn8RMnCiJ+Hlj2uPNDqT76ZYzjj
	 Juziop9j+6ihJMnN31zJ+SketccyMTDYuwUjuWIzgv2yE87tvvp1GjAA+oILb62LcY
	 Q0eK5duNNADILntnL4goFpN+Bm2/iaUv4TSB0CsyMH3q3gSfcn0TngxmtKBeWjEuIS
	 B9S7JIPf8qYZ01XG2uIuB8qnLh6amBXHKICWRx9BEkZzyXmDo4PgDUWHK7rOXbFq33
	 GxE1nKUrFbbMwQEYZw5aWr7UwY4mwHOPv6YHZouceclL6vh82vLsQWKdZZU5PCDUd3
	 wAZT9kQadAn1w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6819941095;
	Fri,  4 Oct 2024 06:47:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3D0031BF34E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 06:47:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2ADD2607E2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 06:47:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DNP_fGuzwpJP for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Oct 2024 06:47:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CA9366078E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA9366078E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CA9366078E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 06:47:39 +0000 (UTC)
X-CSE-ConnectionGUID: CFNtTXeNQoi4B0/lFJ1WzA==
X-CSE-MsgGUID: NRRZ0uumTwG2T7NCP8O77g==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="44703436"
X-IronPort-AV: E=Sophos;i="6.11,176,1725346800"; d="scan'208";a="44703436"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 23:47:38 -0700
X-CSE-ConnectionGUID: IHvKJOMaSIqqFTqIZJqtBA==
X-CSE-MsgGUID: Yd9JiF1aT+CgLJE9o3F+7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,176,1725346800"; d="scan'208";a="78611188"
Received: from kkolacin-desk1.ger.corp.intel.com (HELO
 kkolacin-desk1.igk.intel.com) ([10.217.160.108])
 by fmviesa003.fm.intel.com with ESMTP; 03 Oct 2024 23:47:37 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Oct 2024 08:47:13 +0200
Message-ID: <20241004064733.1362850-2-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728024459; x=1759560459;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Dh3siMHgpSTTHvkm1VGIPd6OdI+6vQIsrrQKKp0ru4M=;
 b=DcdQtzqawZsGRX7+NXaOEJIImw8tNZ9Byq+CAbH/T7EMlBMlnXE1k1Ni
 CLrN8GY29WLYn8nCnFHrmdBBB5JLyy9JZXJwKlLinljlu8GtfxbB50amn
 m2pQn66iJ3gACW3udwA72Qn2XVOPltS33ZB2GRBylfatWGmeHTDbR5u0b
 Dh1c6GAumsR4I66f/GCRKOG7xrx1bCZ7funlut1fqdLHY+Ji2w03QyY/p
 quanqKjnrGeoC9fkaspCfnRbZ+2hfFPYygz5Z8nIRKKSMP6qLGmA9hbG0
 M+56TKj7gtP1KAyeEbcC4TLX6azbRwIh2cKfIpCeaqA7Vtv6dA22PJj7K
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DcdQtzqa
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: Add in/out PTP pin delays
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
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

HW can have different input/output delays for each of the pins.
Add a field in ice_ptp_pin_desc structure to reflect that.

Implement external timestamp delay compensation.

Remove existing definitions and wrappers for periodic output propagation
delays.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 81 +++++++++++--------
 drivers/net/ethernet/intel/ice/ice_ptp.h      |  2 +
 .../net/ethernet/intel/ice/ice_ptp_consts.h   | 12 ---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   | 24 ------
 4 files changed, 49 insertions(+), 70 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 9bc22620f838..f5f51af33716 100644
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
 
@@ -1767,6 +1778,7 @@ static int ice_ptp_write_perout(struct ice_hw *hw, unsigned int chan,
 static int ice_ptp_cfg_perout(struct ice_pf *pf, struct ptp_perout_request *rq,
 			      int on)
 {
+	unsigned int gpio_pin, prop_delay;
 	u64 clk, period, start, phase;
 	struct ice_hw *hw = &pf->hw;
 	unsigned int gpio_pin;
@@ -1780,6 +1792,7 @@ static int ice_ptp_cfg_perout(struct ice_pf *pf, struct ptp_perout_request *rq,
 		return -EIO;
 
 	gpio_pin = pf->ptp.ice_pin_desc[pin_desc_idx].gpio[1];
+	prop_delay = pf->ptp.ice_pin_desc[pin_desc_idx].delay[1];
 	period = rq->period.sec * NSEC_PER_SEC + rq->period.nsec;
 
 	/* If we're disabling the output or period is 0, clear out CLKO and TGT
@@ -1811,11 +1824,11 @@ static int ice_ptp_cfg_perout(struct ice_pf *pf, struct ptp_perout_request *rq,
 	 * at the next multiple of period, maintaining phase.
 	 */
 	clk = ice_ptp_read_src_clk_reg(pf, NULL);
-	if (rq->flags & PTP_PEROUT_PHASE || start <= clk - ice_prop_delay(hw))
+	if (rq->flags & PTP_PEROUT_PHASE || start <= clk - prop_delay)
 		start = div64_u64(clk + period - 1, period) * period + phase;
 
 	/* Compensate for propagation delay from the generator to the pin. */
-	start -= ice_prop_delay(hw);
+	start -= prop_delay;
 
 	return ice_ptp_write_perout(hw, rq->index, gpio_pin, start, period);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 5af474285780..23cd7878bcc8 100644
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
index f81e2e9b0200..790534a6a905 100644
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
@@ -326,9 +324,6 @@ extern const struct ice_vernier_info_e82x e822_vernier[NUM_ICE_PTP_LNK_SPD];
  */
 #define ICE_E810_PLL_FREQ		812500000
 #define ICE_PTP_NOMINAL_INCVAL_E810	0x13b13b13bULL
-#define ICE_E810_OUT_PROP_DELAY_NS	1
-#define ICE_E810_E830_SYNC_DELAY	0
-#define ICE_E825C_OUT_PROP_DELAY_NS	11
 
 /* Device agnostic functions */
 u8 ice_get_ptp_src_clock_index(struct ice_hw *hw);
@@ -390,11 +385,6 @@ static inline u64 ice_e82x_nominal_incval(enum ice_time_ref_freq time_ref)
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
@@ -431,20 +421,6 @@ int ice_phy_cfg_ptp_1step_eth56g(struct ice_hw *hw, u8 port);
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

base-commit: f2589ad16e14b7102f1411e3385a2abf07076406
-- 
2.46.2

