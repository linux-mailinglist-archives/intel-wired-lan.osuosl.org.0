Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9D0A2CADC
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 19:08:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BBD8684B2C;
	Fri,  7 Feb 2025 18:08:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DeNjRttty9Lm; Fri,  7 Feb 2025 18:08:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 36A3384B28
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738951729;
	bh=cg8iqeR0tNvTT5mUBKStaZWqnWFxDlaJmdA5Sagjy6M=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BkStT81NzLYucjA5nhyXvieiOzqaX270SyV152VlZPGySHvn5dYLFFDx/rIS1Uhcj
	 wcWtY9TfhvCHaP0txRVipY6HvN17S7XTZkv56YQvpxTuevIBQPZokkGLEo6/bbPnGu
	 iyQrbMIJs2YPVkQbCNzrV/OTXAgphmmcmhKLeUJV6fd9SG3VeeqhzOMVlDgQvdG7iS
	 6tUOAue+5XoUggOyNPFcqsC7UvFjaYGJb4se74o19VmU+He184VlyQh72kvFW07pKy
	 ID3MxRcbWLSN7YWrLjkxuMBIb3jP5hTvACw2D9XbUNPIi9pcY/6gn9ckq0XUu4wTaN
	 kM9SECzTg9XNA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 36A3384B28;
	Fri,  7 Feb 2025 18:08:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2F7A6CF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 18:08:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 13C0840012
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 18:08:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vXmDNPPyTL48 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 18:08:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A7C64405EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A7C64405EB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A7C64405EB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 18:08:43 +0000 (UTC)
X-CSE-ConnectionGUID: We6ieyNBTPKnZD7QrFlXlA==
X-CSE-MsgGUID: +trmht6WSPmqiDVYKaW74w==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="39865641"
X-IronPort-AV: E=Sophos;i="6.13,267,1732608000"; d="scan'208";a="39865641"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 10:08:43 -0800
X-CSE-ConnectionGUID: xyQzFZSbTMemrI8WyIUZwA==
X-CSE-MsgGUID: h2D79qE2QzOWhtyaF9g4+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="112486335"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa008.jf.intel.com with ESMTP; 07 Feb 2025 10:08:41 -0800
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 Milena Olech <milena.olech@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Fri,  7 Feb 2025 19:02:53 +0100
Message-Id: <20250207180254.549314-3-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250207180254.549314-1-arkadiusz.kubalewski@intel.com>
References: <20250207180254.549314-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738951724; x=1770487724;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4hS/umAz9mz+//7TdttHyzARevwwWok3Jzzz/wdrTk8=;
 b=e1CStJLdUgYV/C2CVDbwgPyhleULA1IqhAEJaCGKvZefBae/jNPYEA8k
 XFR5nnesv1l3r35PNiBjFFd8m8337sl+MfVr9B7sOHsieum4HaeZwcZh9
 Viag3+IITgSbFSUf+3hJ/uO8FawpYta9vpnDAc3TQZzwIq3ZI6XC0BW0T
 wtiMpS5GmqPijwqOsILxQxMHTJxFgdyb3BjdpXNYDCrrQBGVNw44E6zky
 QlXSX29KCYgCK+A4aV7NNFCQSMau6utskJsF+s2xbo6P/ndrSC0VSU5FZ
 fQBqmRBxAvIslG0wjMdWrqn7p2eQxGSUuFo85wqmP8G7OQrv+nS8uAVT9
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e1CStJLd
Subject: [Intel-wired-lan] [PATCH iwl-next 2/3] ice: change SMA pins to SDP
 in PTP API
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

From: Karol Kolacinski <karol.kolacinski@intel.com>

This change aligns E810 PTP pin control to all other products.

Currently, SMA/U.FL port expanders are controlled together with SDP pins
connected to 1588 clock. To align this, separate this control by
exposing only SDP20..23 pins in PTP API on adapters with DPLL.

Clear error for all E810 on absent NVM pin section or other errors to
allow proper initialization on SMA E810 with NVM section.

Use ARRAY_SIZE for pin array instead of internal definition.

Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 254 ++++-------------------
 drivers/net/ethernet/intel/ice/ice_ptp.h |   3 -
 2 files changed, 39 insertions(+), 218 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 1bb0033347c7..a7aa6d5fb775 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -40,21 +40,19 @@ static const struct ice_ptp_pin_desc ice_pin_desc_e810[] = {
 	{  ONE_PPS,   { -1,  5 }, { 0, 1 }},
 };
 
-static const char ice_pin_names_nvm[][64] = {
-	"GNSS",
-	"SMA1",
-	"U.FL1",
-	"SMA2",
-	"U.FL2",
+static const char ice_pin_names_dpll[][64] = {
+	"SDP20",
+	"SDP21",
+	"SDP22",
+	"SDP23",
 };
 
-static const struct ice_ptp_pin_desc ice_pin_desc_e810_sma[] = {
+static const struct ice_ptp_pin_desc ice_pin_desc_dpll[] = {
 	/* name,   gpio,       delay */
-	{  GNSS, {  1, -1 }, { 0, 0 }},
-	{  SMA1, {  1,  0 }, { 0, 1 }},
-	{  UFL1, { -1,  0 }, { 0, 1 }},
-	{  SMA2, {  3,  2 }, { 0, 1 }},
-	{  UFL2, {  3, -1 }, { 0, 0 }},
+	{  SDP0, { -1,  0 }, { 0, 1 }},
+	{  SDP1, {  1, -1 }, { 0, 0 }},
+	{  SDP2, { -1,  2 }, { 0, 1 }},
+	{  SDP3, {  3, -1 }, { 0, 0 }},
 };
 
 static struct ice_pf *ice_get_ctrl_pf(struct ice_pf *pf)
@@ -92,101 +90,6 @@ static int ice_ptp_find_pin_idx(struct ice_pf *pf, enum ptp_pin_function func,
 	return -1;
 }
 
-/**
- * ice_ptp_update_sma_data - update SMA pins data according to pins setup
- * @pf: Board private structure
- * @sma_pins: parsed SMA pins status
- * @data: SMA data to update
- */
-static void ice_ptp_update_sma_data(struct ice_pf *pf, unsigned int sma_pins[],
-				    u8 *data)
-{
-	const char *state1, *state2;
-
-	/* Set the right state based on the desired configuration.
-	 * When bit is set, functionality is disabled.
-	 */
-	*data &= ~ICE_ALL_SMA_MASK;
-	if (!sma_pins[UFL1 - 1]) {
-		if (sma_pins[SMA1 - 1] == PTP_PF_EXTTS) {
-			state1 = "SMA1 Rx, U.FL1 disabled";
-			*data |= ICE_SMA1_TX_EN;
-		} else if (sma_pins[SMA1 - 1] == PTP_PF_PEROUT) {
-			state1 = "SMA1 Tx U.FL1 disabled";
-			*data |= ICE_SMA1_DIR_EN;
-		} else {
-			state1 = "SMA1 disabled, U.FL1 disabled";
-			*data |= ICE_SMA1_MASK;
-		}
-	} else {
-		/* U.FL1 Tx will always enable SMA1 Rx */
-		state1 = "SMA1 Rx, U.FL1 Tx";
-	}
-
-	if (!sma_pins[UFL2 - 1]) {
-		if (sma_pins[SMA2 - 1] == PTP_PF_EXTTS) {
-			state2 = "SMA2 Rx, U.FL2 disabled";
-			*data |= ICE_SMA2_TX_EN | ICE_SMA2_UFL2_RX_DIS;
-		} else if (sma_pins[SMA2 - 1] == PTP_PF_PEROUT) {
-			state2 = "SMA2 Tx, U.FL2 disabled";
-			*data |= ICE_SMA2_DIR_EN | ICE_SMA2_UFL2_RX_DIS;
-		} else {
-			state2 = "SMA2 disabled, U.FL2 disabled";
-			*data |= ICE_SMA2_MASK;
-		}
-	} else {
-		if (!sma_pins[SMA2 - 1]) {
-			state2 = "SMA2 disabled, U.FL2 Rx";
-			*data |= ICE_SMA2_DIR_EN | ICE_SMA2_TX_EN;
-		} else {
-			state2 = "SMA2 Tx, U.FL2 Rx";
-			*data |= ICE_SMA2_DIR_EN;
-		}
-	}
-
-	dev_dbg(ice_pf_to_dev(pf), "%s, %s\n", state1, state2);
-}
-
-/**
- * ice_ptp_set_sma_cfg - set the configuration of the SMA control logic
- * @pf: Board private structure
- *
- * Return: 0 on success, negative error code otherwise
- */
-static int ice_ptp_set_sma_cfg(struct ice_pf *pf)
-{
-	const struct ice_ptp_pin_desc *ice_pins = pf->ptp.ice_pin_desc;
-	struct ptp_pin_desc *pins = pf->ptp.pin_desc;
-	unsigned int sma_pins[ICE_SMA_PINS_NUM] = {};
-	int err;
-	u8 data;
-
-	/* Read initial pin state value */
-	err = ice_read_sma_ctrl(&pf->hw, &data);
-	if (err)
-		return err;
-
-	/* Get SMA/U.FL pins states */
-	for (int i = 0; i < pf->ptp.info.n_pins; i++)
-		if (pins[i].func) {
-			int name_idx = ice_pins[i].name_idx;
-
-			switch (name_idx) {
-			case SMA1:
-			case UFL1:
-			case SMA2:
-			case UFL2:
-				sma_pins[name_idx - 1] = pins[i].func;
-				break;
-			default:
-				continue;
-			}
-		}
-
-	ice_ptp_update_sma_data(pf, sma_pins, &data);
-	return ice_write_sma_ctrl(&pf->hw, data);
-}
-
 /**
  * ice_ptp_cfg_tx_interrupt - Configure Tx timestamp interrupt for the device
  * @pf: Board private structure
@@ -1884,63 +1787,6 @@ static void ice_ptp_enable_all_perout(struct ice_pf *pf)
 					   true);
 }
 
-/**
- * ice_ptp_disable_shared_pin - Disable enabled pin that shares GPIO
- * @pf: Board private structure
- * @pin: Pin index
- * @func: Assigned function
- *
- * Return: 0 on success, negative error code otherwise
- */
-static int ice_ptp_disable_shared_pin(struct ice_pf *pf, unsigned int pin,
-				      enum ptp_pin_function func)
-{
-	unsigned int gpio_pin;
-
-	switch (func) {
-	case PTP_PF_PEROUT:
-		gpio_pin = pf->ptp.ice_pin_desc[pin].gpio[1];
-		break;
-	case PTP_PF_EXTTS:
-		gpio_pin = pf->ptp.ice_pin_desc[pin].gpio[0];
-		break;
-	default:
-		return -EOPNOTSUPP;
-	}
-
-	for (unsigned int i = 0; i < pf->ptp.info.n_pins; i++) {
-		struct ptp_pin_desc *pin_desc = &pf->ptp.pin_desc[i];
-		unsigned int chan = pin_desc->chan;
-
-		/* Skip pin idx from the request */
-		if (i == pin)
-			continue;
-
-		if (pin_desc->func == PTP_PF_PEROUT &&
-		    pf->ptp.ice_pin_desc[i].gpio[1] == gpio_pin) {
-			pf->ptp.perout_rqs[chan].period.sec = 0;
-			pf->ptp.perout_rqs[chan].period.nsec = 0;
-			pin_desc->func = PTP_PF_NONE;
-			pin_desc->chan = 0;
-			dev_dbg(ice_pf_to_dev(pf), "Disabling pin %u with shared output GPIO pin %u\n",
-				i, gpio_pin);
-			return ice_ptp_cfg_perout(pf, &pf->ptp.perout_rqs[chan],
-						  false);
-		} else if (pf->ptp.pin_desc->func == PTP_PF_EXTTS &&
-			   pf->ptp.ice_pin_desc[i].gpio[0] == gpio_pin) {
-			pf->ptp.extts_rqs[chan].flags &= ~PTP_ENABLE_FEATURE;
-			pin_desc->func = PTP_PF_NONE;
-			pin_desc->chan = 0;
-			dev_dbg(ice_pf_to_dev(pf), "Disabling pin %u with shared input GPIO pin %u\n",
-				i, gpio_pin);
-			return ice_ptp_cfg_extts(pf, &pf->ptp.extts_rqs[chan],
-						 false);
-		}
-	}
-
-	return 0;
-}
-
 /**
  * ice_verify_pin - verify if pin supports requested pin function
  * @info: the driver's PTP info structure
@@ -1975,14 +1821,6 @@ static int ice_verify_pin(struct ptp_clock_info *info, unsigned int pin,
 		return -EOPNOTSUPP;
 	}
 
-	/* On adapters with SMA_CTRL disable other pins that share same GPIO */
-	if (ice_is_feature_supported(pf, ICE_F_SMA_CTRL)) {
-		ice_ptp_disable_shared_pin(pf, pin, func);
-		pf->ptp.pin_desc[pin].func = func;
-		pf->ptp.pin_desc[pin].chan = chan;
-		return ice_ptp_set_sma_cfg(pf);
-	}
-
 	return 0;
 }
 
@@ -2505,14 +2343,14 @@ static void ice_ptp_setup_pin_cfg(struct ice_pf *pf)
 	for (unsigned int i = 0; i < pf->ptp.info.n_pins; i++) {
 		const struct ice_ptp_pin_desc *desc = &pf->ptp.ice_pin_desc[i];
 		struct ptp_pin_desc *pin = &pf->ptp.pin_desc[i];
-		const char *name = NULL;
+		const char *name;
 
 		if (!ice_is_feature_supported(pf, ICE_F_SMA_CTRL))
 			name = ice_pin_names[desc->name_idx];
-		else if (desc->name_idx != GPIO_NA)
-			name = ice_pin_names_nvm[desc->name_idx];
-		if (name)
-			strscpy(pin->name, name, sizeof(pin->name));
+		else
+			name = ice_pin_names_dpll[desc->name_idx];
+
+		strscpy(pin->name, name, sizeof(pin->name));
 
 		pin->index = i;
 	}
@@ -2524,8 +2362,8 @@ static void ice_ptp_setup_pin_cfg(struct ice_pf *pf)
  * ice_ptp_disable_pins - Disable PTP pins
  * @pf: pointer to the PF structure
  *
- * Disable the OS access to the SMA pins. Called to clear out the OS
- * indications of pin support when we fail to setup the SMA control register.
+ * Disable the OS access to the pins. Called to clear out the OS
+ * indications of pin support when we fail to setup pin array.
  */
 static void ice_ptp_disable_pins(struct ice_pf *pf)
 {
@@ -2566,40 +2404,30 @@ static int ice_ptp_parse_sdp_entries(struct ice_pf *pf, __le16 *entries,
 	for (i = 0; i < num_entries; i++) {
 		u16 entry = le16_to_cpu(entries[i]);
 		DECLARE_BITMAP(bitmap, GPIO_NA);
-		unsigned int bitmap_idx;
+		unsigned int idx;
 		bool dir;
 		u16 gpio;
 
 		*bitmap = FIELD_GET(ICE_AQC_NVM_SDP_AC_PIN_M, entry);
+
+		/* Check if entry's pin bitmap is valid. */
+		if (bitmap_empty(bitmap, GPIO_NA))
+			continue;
+
 		dir = !!FIELD_GET(ICE_AQC_NVM_SDP_AC_DIR_M, entry);
 		gpio = FIELD_GET(ICE_AQC_NVM_SDP_AC_SDP_NUM_M, entry);
-		for_each_set_bit(bitmap_idx, bitmap, GPIO_NA + 1) {
-			unsigned int idx;
 
-			/* Check if entry's pin bit is valid */
-			if (bitmap_idx >= NUM_PTP_PINS_NVM &&
-			    bitmap_idx != GPIO_NA)
-				continue;
-
-			/* Check if pin already exists */
-			for (idx = 0; idx < ICE_N_PINS_MAX; idx++)
-				if (pins[idx].name_idx == bitmap_idx)
-					break;
-
-			if (idx == ICE_N_PINS_MAX) {
-				/* Pin not found, setup its entry and name */
-				idx = n_pins++;
-				pins[idx].name_idx = bitmap_idx;
-				if (bitmap_idx == GPIO_NA)
-					strscpy(pf->ptp.pin_desc[idx].name,
-						ice_pin_names[gpio],
-						sizeof(pf->ptp.pin_desc[idx]
-							       .name));
-			}
+		for (idx = 0; idx < ICE_N_PINS_MAX; idx++) {
+			if (pins[idx].name_idx == gpio)
+				break;
+		}
 
-			/* Setup in/out GPIO number */
-			pins[idx].gpio[dir] = gpio;
+		if (idx == ICE_N_PINS_MAX) {
+			/* Pin not found, setup its entry and name */
+			idx = n_pins++;
+			pins[idx].name_idx = gpio;
 		}
+		pins[idx].gpio[dir] = gpio;
 	}
 
 	for (i = 0; i < n_pins; i++) {
@@ -2627,10 +2455,10 @@ static void ice_ptp_set_funcs_e82x(struct ice_pf *pf)
 
 	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825) {
 		pf->ptp.ice_pin_desc = ice_pin_desc_e825c;
-		pf->ptp.info.n_pins = ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e825c);
+		pf->ptp.info.n_pins = ARRAY_SIZE(ice_pin_desc_e825c);
 	} else {
 		pf->ptp.ice_pin_desc = ice_pin_desc_e82x;
-		pf->ptp.info.n_pins = ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e82x);
+		pf->ptp.info.n_pins = ARRAY_SIZE(ice_pin_desc_e82x);
 	}
 	ice_ptp_setup_pin_cfg(pf);
 }
@@ -2656,15 +2484,13 @@ static void ice_ptp_set_funcs_e810(struct ice_pf *pf)
 	if (err) {
 		/* SDP section does not exist in NVM or is corrupted */
 		if (ice_is_feature_supported(pf, ICE_F_SMA_CTRL)) {
-			ptp->ice_pin_desc = ice_pin_desc_e810_sma;
-			ptp->info.n_pins =
-				ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e810_sma);
+			ptp->ice_pin_desc = ice_pin_desc_dpll;
+			ptp->info.n_pins = ARRAY_SIZE(ice_pin_desc_dpll);
 		} else {
 			pf->ptp.ice_pin_desc = ice_pin_desc_e810;
-			pf->ptp.info.n_pins =
-				ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e810);
-			err = 0;
+			pf->ptp.info.n_pins = ARRAY_SIZE(ice_pin_desc_e810);
 		}
+		err = 0;
 	} else {
 		desc = devm_kcalloc(ice_pf_to_dev(pf), ICE_N_PINS_MAX,
 				    sizeof(struct ice_ptp_pin_desc),
@@ -2682,8 +2508,6 @@ static void ice_ptp_set_funcs_e810(struct ice_pf *pf)
 	ptp->info.pin_config = ptp->pin_desc;
 	ice_ptp_setup_pin_cfg(pf);
 
-	if (ice_is_feature_supported(pf, ICE_F_SMA_CTRL))
-		err = ice_ptp_set_sma_cfg(pf);
 err:
 	if (err) {
 		devm_kfree(ice_pf_to_dev(pf), desc);
@@ -2709,7 +2533,7 @@ static void ice_ptp_set_funcs_e830(struct ice_pf *pf)
 #endif /* CONFIG_ICE_HWTS */
 	/* Rest of the config is the same as base E810 */
 	pf->ptp.ice_pin_desc = ice_pin_desc_e810;
-	pf->ptp.info.n_pins = ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e810);
+	pf->ptp.info.n_pins = ARRAY_SIZE(ice_pin_desc_e810);
 	ice_ptp_setup_pin_cfg(pf);
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 3b769a0cad00..c8dac5a5bcd9 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -202,9 +202,6 @@ enum ice_ptp_pin_nvm {
 
 /* Pin definitions for PTP */
 #define ICE_N_PINS_MAX			6
-#define ICE_SMA_PINS_NUM		4
-#define ICE_PIN_DESC_ARR_LEN(_arr)	(sizeof(_arr) / \
-					 sizeof(struct ice_ptp_pin_desc))
 
 /**
  * struct ice_ptp_pin_desc - hardware pin description data
-- 
2.38.1

