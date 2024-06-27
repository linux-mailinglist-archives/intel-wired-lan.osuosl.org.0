Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E4291AAB5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2024 17:11:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B3CB260E53;
	Thu, 27 Jun 2024 15:11:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zUloe8sIZnw5; Thu, 27 Jun 2024 15:11:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF15F60E44
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719501103;
	bh=ZZSq/w3ZC3RpTI/IZZ0GdF7Chm+RN5N1sVcnpBaTqdM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ctPb/MDJok4FoFy6quJwbNrwdF9GnD8dR55+q/GJiFPWaxPdL7El6HhYRroSEct3z
	 1POXqa7tS5bott89utbbh1FzSsRlHCyOaDgBo7nY2PdsjPGKLMwucx2dIV1vNhO/38
	 4pLJT/bQx18TN4CJgL7A2TIUcaHnGAdMEEYYpx6QFUA+faJHw7PpIvZKIlS1fdTqNz
	 QRScEp+bXI4TZe7RjRRlYiRWjdaWljK0GNl9jQQhsm46j8saP2DKQxVKnRm762HQ7Y
	 hooUOvo5P5QyHfZIbePPMMg7ZkVqaD9hWTlF2Sb6ViKRNPwqodRihryOSvJ9oAymrg
	 uvqsUNo69dCQg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF15F60E44;
	Thu, 27 Jun 2024 15:11:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C717A1BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 15:11:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B0DC98411F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 15:11:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pUHk67xpxTap for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2024 15:11:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 27B7284140
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 27B7284140
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 27B7284140
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 15:11:38 +0000 (UTC)
X-CSE-ConnectionGUID: 2kNSWrcfQ4+cZTH798VZZg==
X-CSE-MsgGUID: OexE9+QCTjqe06A3bAoHdA==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="27222462"
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="27222462"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 08:11:36 -0700
X-CSE-ConnectionGUID: 0ob+loDcT8+dw2QCLzcUmg==
X-CSE-MsgGUID: DI6H2qVuQu611u1HxDOzhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="48759667"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.132])
 by fmviesa003.fm.intel.com with ESMTP; 27 Jun 2024 08:11:34 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jun 2024 17:09:25 +0200
Message-ID: <20240627151127.284884-10-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240627151127.284884-9-karol.kolacinski@intel.com>
References: <20240627151127.284884-9-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719501098; x=1751037098;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D8W7Wgw56etzDk8VdHnyV2Ub70+5dg8EPYJNxvKplC0=;
 b=oCNsglqObcruCLTyrkUGxsmGlcVje68MgBYYtCzFHbdQoOiNOi8VC8di
 1V5vB6x4MLYqZ8cPgf9UkP0Z/KgbliFcH0t+oUDQ6D9vmQyDg9tkTM9RC
 x8swvg2I4qgj3G6OhyHEeBiyRvcRD3Rcw1z6ql1ma0ICkOz/lXAirBFCS
 uxJ/JMEPs2q9fDYUb0eKTKm957DPEQXQEeFnsxcMm39aVJMVwyqC1MKJq
 oXwCCxJu83bOVBmI2Wfrwes+iQYkUjd2bBH5ed92T6KqPcwM3y3ZjI1CZ
 iMtj6KFJX2T4rfGF/GUEHqNyLePfBURrgiXRIH4ZUfMefeB4aVnOKTUWI
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oCNsglqO
Subject: [Intel-wired-lan] [PATCH iwl-next 1/7] ice: Implement
 ice_ptp_pin_desc
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
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add a new internal structure describing PTP pins.
Use the new structure for all non-E810T products.

Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 271 ++++++++++++++++-------
 drivers/net/ethernet/intel/ice/ice_ptp.h |  65 ++++--
 2 files changed, 229 insertions(+), 107 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index b652a3e25619..28b82c634194 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -5,6 +5,30 @@
 #include "ice_lib.h"
 #include "ice_trace.h"
 
+static const char ice_pin_names[][64] = {
+	"SDP0",
+	"SDP1",
+	"SDP2",
+	"SDP3",
+	"TIME_SYNC",
+	"1PPS"
+};
+
+static const struct ice_ptp_pin_desc ice_pin_desc_e82x[] = {
+	/* name,      gpio */
+	{  TIME_SYNC, { -1,  4 }},
+	{  ONE_PPS,   {  5, -1 }},
+};
+
+static const struct ice_ptp_pin_desc ice_pin_desc_e810[] = {
+	/* name,      gpio */
+	{  SDP0,      { 0,  0 }},
+	{  SDP1,      { 1,  1 }},
+	{  SDP2,      { 2,  2 }},
+	{  SDP3,      { 3,  3 }},
+	{  ONE_PPS,   { 5, -1 }},
+};
+
 #define E810_OUT_PROP_DELAY_NS 1
 
 static const struct ptp_pin_desc ice_pin_desc_e810t[] = {
@@ -16,6 +40,29 @@ static const struct ptp_pin_desc ice_pin_desc_e810t[] = {
 	{ "U.FL2", UFL2, PTP_PF_NONE, 2, { 0, } },
 };
 
+/**
+ * ice_ptp_find_pin_idx - Find pin index in ptp_pin_desc
+ * @pf: Board private structure
+ * @func: Pin function
+ * @chan: GPIO channel
+ *
+ * Return: positive pin number when pin is present, -1 otherwise
+ */
+static int ice_ptp_find_pin_idx(struct ice_pf *pf, enum ptp_pin_function func,
+				unsigned int chan)
+{
+	const struct ptp_clock_info *info = &pf->ptp.info;
+	int i;
+
+	for (i = 0; i < info->n_pins; i++) {
+		if (info->pin_config[i].func == func &&
+		    info->pin_config[i].chan == chan)
+			return i;
+	}
+
+	return -1;
+}
+
 /**
  * ice_get_sma_config_e810t
  * @hw: pointer to the hw struct
@@ -1906,14 +1953,14 @@ static void ice_ptp_enable_all_clkout(struct ice_pf *pf)
 }
 
 /**
- * ice_ptp_gpio_enable_e810 - Enable/disable ancillary features of PHC
+ * ice_ptp_gpio_enable_e810t - Enable/disable ancillary features of PHC
  * @info: the driver's PTP info structure
  * @rq: The requested feature to change
  * @on: Enable/disable flag
  */
 static int
-ice_ptp_gpio_enable_e810(struct ptp_clock_info *info,
-			 struct ptp_clock_request *rq, int on)
+ice_ptp_gpio_enable_e810t(struct ptp_clock_info *info,
+			  struct ptp_clock_request *rq, int on)
 {
 	struct ice_pf *pf = ptp_info_to_pf(info);
 	bool sma_pres = false;
@@ -1936,22 +1983,18 @@ ice_ptp_gpio_enable_e810(struct ptp_clock_info *info,
 				clk_cfg.gpio_pin = GPIO_22;
 			else
 				return -1;
-		} else if (ice_is_e810t(&pf->hw)) {
+		} else {
 			if (chan == 0)
 				clk_cfg.gpio_pin = GPIO_20;
 			else
 				clk_cfg.gpio_pin = GPIO_22;
-		} else if (chan == PPS_CLK_GEN_CHAN) {
-			clk_cfg.gpio_pin = PPS_PIN_INDEX;
-		} else {
-			clk_cfg.gpio_pin = chan;
 		}
 
 		clk_cfg.flags = rq->perout.flags;
-		clk_cfg.period = ((rq->perout.period.sec * NSEC_PER_SEC) +
-				   rq->perout.period.nsec);
-		clk_cfg.start_time = ((rq->perout.start.sec * NSEC_PER_SEC) +
-				       rq->perout.start.nsec);
+		clk_cfg.period = rq->perout.period.sec * NSEC_PER_SEC +
+				 rq->perout.period.nsec;
+		clk_cfg.start_time = rq->perout.start.sec * NSEC_PER_SEC +
+				     rq->perout.start.nsec;
 		clk_cfg.ena = !!on;
 
 		return ice_ptp_cfg_clkout(pf, chan, &clk_cfg, true);
@@ -1966,13 +2009,11 @@ ice_ptp_gpio_enable_e810(struct ptp_clock_info *info,
 				gpio_pin = GPIO_21;
 			else
 				gpio_pin = GPIO_23;
-		} else if (ice_is_e810t(&pf->hw)) {
+		} else {
 			if (chan == 0)
 				gpio_pin = GPIO_21;
 			else
 				gpio_pin = GPIO_23;
-		} else {
-			gpio_pin = chan;
 		}
 
 		extts_cfg.flags = rq->extts.flags;
@@ -1987,34 +2028,90 @@ ice_ptp_gpio_enable_e810(struct ptp_clock_info *info,
 }
 
 /**
- * ice_ptp_gpio_enable_e823 - Enable/disable ancillary features of PHC
+ * ice_verify_pin - verify if pin supports requested pin function
  * @info: the driver's PTP info structure
+ * @pin: Pin index
+ * @func: Assigned function
+ * @chan: Assigned channel
+ *
+ * Return: 0 on success, -EOPNOTSUPP when function is not supported.
+ */
+static int ice_verify_pin(struct ptp_clock_info *info, unsigned int pin,
+			  enum ptp_pin_function func, unsigned int chan)
+{
+	struct ice_pf *pf = ptp_info_to_pf(info);
+	const struct ice_ptp_pin_desc *pin_desc;
+
+	pin_desc = &pf->ptp.ice_pin_desc[pin];
+
+	/* Is assigned function allowed? */
+	switch (func) {
+	case PTP_PF_EXTTS:
+		if (pin_desc->gpio[0] < 0)
+			return -EOPNOTSUPP;
+		break;
+	case PTP_PF_PEROUT:
+		if (pin_desc->gpio[1] < 0)
+			return -EOPNOTSUPP;
+		break;
+	case PTP_PF_NONE:
+		break;
+	case PTP_PF_PHYSYNC:
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_ptp_gpio_enable - Enable/disable ancillary features of PHC
+ * @info: The driver's PTP info structure
  * @rq: The requested feature to change
  * @on: Enable/disable flag
+ *
+ * Return: 0 on success, -EOPNOTSUPP when request type is not supported
  */
-static int ice_ptp_gpio_enable_e823(struct ptp_clock_info *info,
-				    struct ptp_clock_request *rq, int on)
+static int ice_ptp_gpio_enable(struct ptp_clock_info *info,
+			       struct ptp_clock_request *rq, int on)
 {
 	struct ice_pf *pf = ptp_info_to_pf(info);
+	int err;
 
 	switch (rq->type) {
-	case PTP_CLK_REQ_PPS:
+	case PTP_CLK_REQ_PEROUT:
 	{
-		struct ice_perout_channel clk_cfg = {};
+		struct ice_perout_channel clk_cfg;
+		int pin_desc_idx;
+
+		pin_desc_idx = ice_ptp_find_pin_idx(pf, PTP_PF_PEROUT,
+						    rq->perout.index);
+		if (pin_desc_idx < 0)
+			return -EIO;
+
 
 		clk_cfg.flags = rq->perout.flags;
-		clk_cfg.gpio_pin = PPS_PIN_INDEX;
-		clk_cfg.period = NSEC_PER_SEC;
+		clk_cfg.gpio_pin = pf->ptp.ice_pin_desc[pin_desc_idx].gpio[1];
+		clk_cfg.period = rq->perout.period.sec * NSEC_PER_SEC +
+				 rq->perout.period.nsec;
+		clk_cfg.start_time = rq->perout.start.sec * NSEC_PER_SEC +
+				     rq->perout.start.nsec;
 		clk_cfg.ena = !!on;
 
-		return ice_ptp_cfg_clkout(pf, PPS_CLK_GEN_CHAN, &clk_cfg, true);
+		return ice_ptp_cfg_clkout(pf, rq->perout.index, &clk_cfg, true);
 	}
 	case PTP_CLK_REQ_EXTTS:
 	{
 		struct ice_extts_channel extts_cfg = {};
+		int pin_desc_idx;
+
+		pin_desc_idx = ice_ptp_find_pin_idx(pf, PTP_PF_EXTTS,
+						    rq->extts.index);
+		if (pin_desc_idx < 0)
+			return -EIO;
 
 		extts_cfg.flags = rq->extts.flags;
-		extts_cfg.gpio_pin = TIME_SYNC_PIN_INDEX;
+		extts_cfg.gpio_pin = pf->ptp.ice_pin_desc[pin_desc_idx].gpio[0];
 		extts_cfg.ena = !!on;
 
 		return ice_ptp_cfg_extts(pf, rq->extts.index, &extts_cfg, true);
@@ -2409,6 +2506,40 @@ u64 ice_ptp_get_rx_hwts(const union ice_32b_rx_flex_desc *rx_desc,
 	return ts_ns;
 }
 
+/**
+ * ice_ptp_setup_pin_cfg - setup PTP pin_config structure
+ * @pf: Board private structure
+ */
+static void ice_ptp_setup_pin_cfg(struct ice_pf *pf)
+{
+	uint extts_chans = 0;
+	uint po_chans = 0;
+	uint i;
+
+	for (i = 0; i < pf->ptp.info.n_pins; i++) {
+		const struct ice_ptp_pin_desc *desc = &pf->ptp.ice_pin_desc[i];
+		struct ptp_pin_desc *pin = &pf->ptp.pin_desc[i];
+		const char *name = NULL;
+
+		name = ice_pin_names[desc->name_idx];
+		strscpy(pin->name, name, sizeof(pin->name));
+
+		pin->index = i;
+		if (desc->gpio[0] >= 0 && desc->gpio[1] < 0) {
+			pin->func = PTP_PF_EXTTS;
+			pin->chan = extts_chans++;
+		} else if (desc->gpio[1] >= 0 && desc->gpio[0] < 0) {
+			pin->func = PTP_PF_PEROUT;
+			pin->chan = po_chans++;
+		} else {
+			pin->func = PTP_PF_NONE;
+			pin->chan = 0;
+		}
+	}
+
+	pf->ptp.info.pin_config = pf->ptp.pin_desc;
+}
+
 /**
  * ice_ptp_disable_sma_pins_e810t - Disable E810-T SMA pins
  * @pf: pointer to the PF structure
@@ -2462,61 +2593,41 @@ ice_ptp_setup_sma_pins_e810t(struct ice_pf *pf, struct ptp_clock_info *info)
 }
 
 /**
- * ice_ptp_setup_pins_e810 - Setup PTP pins in sysfs
+ * ice_ptp_setup_pins_e810t - Setup PTP pins in sysfs
  * @pf: pointer to the PF instance
- * @info: PTP clock capabilities
  */
-static void
-ice_ptp_setup_pins_e810(struct ice_pf *pf, struct ptp_clock_info *info)
-{
-	if (ice_is_feature_supported(pf, ICE_F_SMA_CTRL)) {
-		info->n_ext_ts = N_EXT_TS_E810;
-		info->n_per_out = N_PER_OUT_E810T;
-		info->n_pins = NUM_PTP_PINS_E810T;
-		info->verify = ice_verify_pin_e810t;
-
-		/* Complete setup of the SMA pins */
-		ice_ptp_setup_sma_pins_e810t(pf, info);
-	} else if (ice_is_e810t(&pf->hw)) {
-		info->n_ext_ts = N_EXT_TS_NO_SMA_E810T;
-		info->n_per_out = N_PER_OUT_NO_SMA_E810T;
-	} else {
-		info->n_per_out = N_PER_OUT_E810;
-		info->n_ext_ts = N_EXT_TS_E810;
-	}
-}
-
-/**
- * ice_ptp_setup_pins_e823 - Setup PTP pins in sysfs
- * @pf: pointer to the PF instance
- * @info: PTP clock capabilities
- */
-static void
-ice_ptp_setup_pins_e823(struct ice_pf *pf, struct ptp_clock_info *info)
+static void ice_ptp_setup_pins_e810t(struct ice_pf *pf)
 {
-	info->pps = 1;
-	info->n_per_out = 0;
-	info->n_ext_ts = 1;
+	pf->ptp.info.enable = ice_ptp_gpio_enable_e810t;
+	pf->ptp.info.n_pins = NUM_PTP_PINS_E810T;
+	pf->ptp.info.verify = ice_verify_pin_e810t;
+
+	/* Complete setup of the SMA pins */
+	ice_ptp_setup_sma_pins_e810t(pf, &pf->ptp.info);
 }
 
 /**
- * ice_ptp_set_funcs_e82x - Set specialized functions for E82x support
+ * ice_ptp_set_funcs_e82x - Set specialized functions for E82X support
  * @pf: Board private structure
- * @info: PTP info to fill
  *
- * Assign functions to the PTP capabiltiies structure for E82x devices.
+ * Assign functions to the PTP capabilities structure for E82X devices.
  * Functions which operate across all device families should be set directly
- * in ice_ptp_set_caps. Only add functions here which are distinct for E82x
+ * in ice_ptp_set_caps. Only add functions here which are distinct for E82X
  * devices.
  */
-static void
-ice_ptp_set_funcs_e82x(struct ice_pf *pf, struct ptp_clock_info *info)
+static void ice_ptp_set_funcs_e82x(struct ice_pf *pf)
 {
 #ifdef CONFIG_ICE_HWTS
 	if (boot_cpu_has(X86_FEATURE_ART) &&
 	    boot_cpu_has(X86_FEATURE_TSC_KNOWN_FREQ))
-		info->getcrosststamp = ice_ptp_getcrosststamp_e82x;
+		pf->ptp.info.getcrosststamp = ice_ptp_getcrosststamp_e82x;
+
 #endif /* CONFIG_ICE_HWTS */
+	pf->ptp.info.enable = ice_ptp_gpio_enable;
+	pf->ptp.info.verify = ice_verify_pin;
+	pf->ptp.ice_pin_desc = ice_pin_desc_e82x;
+	pf->ptp.info.n_pins = ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e82x);
+	ice_ptp_setup_pin_cfg(pf);
 }
 
 /**
@@ -2532,27 +2643,15 @@ ice_ptp_set_funcs_e82x(struct ice_pf *pf, struct ptp_clock_info *info)
 static void
 ice_ptp_set_funcs_e810(struct ice_pf *pf, struct ptp_clock_info *info)
 {
-	info->enable = ice_ptp_gpio_enable_e810;
-	ice_ptp_setup_pins_e810(pf, info);
-}
-
-/**
- * ice_ptp_set_funcs_e823 - Set specialized functions for E823 support
- * @pf: Board private structure
- * @info: PTP info to fill
- *
- * Assign functions to the PTP capabiltiies structure for E823 devices.
- * Functions which operate across all device families should be set directly
- * in ice_ptp_set_caps. Only add functions here which are distinct for e823
- * devices.
- */
-static void
-ice_ptp_set_funcs_e823(struct ice_pf *pf, struct ptp_clock_info *info)
-{
-	ice_ptp_set_funcs_e82x(pf, info);
+	if (ice_is_e810t(&pf->hw) &&
+	    ice_is_feature_supported(pf, ICE_F_SMA_CTRL)) {
+		ice_ptp_setup_pins_e810t(pf);
+		return;
+	}
 
-	info->enable = ice_ptp_gpio_enable_e823;
-	ice_ptp_setup_pins_e823(pf, info);
+	pf->ptp.ice_pin_desc = ice_pin_desc_e810;
+	pf->ptp.info.n_pins = ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e810);
+	ice_ptp_setup_pin_cfg(pf);
 }
 
 /**
@@ -2572,13 +2671,13 @@ static void ice_ptp_set_caps(struct ice_pf *pf)
 	info->adjfine = ice_ptp_adjfine;
 	info->gettimex64 = ice_ptp_gettimex64;
 	info->settime64 = ice_ptp_settime64;
+	info->n_per_out = GLTSYN_TGT_H_IDX_MAX;
+	info->n_ext_ts = GLTSYN_EVNT_H_IDX_MAX;
 
 	if (ice_is_e810(&pf->hw))
 		ice_ptp_set_funcs_e810(pf, info);
-	else if (ice_is_e823(&pf->hw))
-		ice_ptp_set_funcs_e823(pf, info);
 	else
-		ice_ptp_set_funcs_e82x(pf, info);
+		ice_ptp_set_funcs_e82x(pf);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 1d87dd67284d..982769dba832 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -221,6 +221,46 @@ enum ice_ptp_state {
 	ICE_PTP_ERROR,
 };
 
+enum ice_ptp_pin {
+	SDP0 = 0,
+	SDP1,
+	SDP2,
+	SDP3,
+	TIME_SYNC,
+	ONE_PPS
+};
+
+/* Per-channel register definitions */
+#define GLTSYN_AUX_OUT(_chan, _idx)	(GLTSYN_AUX_OUT_0(_idx) + ((_chan) * 8))
+#define GLTSYN_AUX_IN(_chan, _idx)	(GLTSYN_AUX_IN_0(_idx) + ((_chan) * 8))
+#define GLTSYN_CLKO(_chan, _idx)	(GLTSYN_CLKO_0(_idx) + ((_chan) * 8))
+#define GLTSYN_TGT_L(_chan, _idx)	(GLTSYN_TGT_L_0(_idx) + ((_chan) * 16))
+#define GLTSYN_TGT_H(_chan, _idx)	(GLTSYN_TGT_H_0(_idx) + ((_chan) * 16))
+#define GLTSYN_EVNT_L(_chan, _idx)	(GLTSYN_EVNT_L_0(_idx) + ((_chan) * 16))
+#define GLTSYN_EVNT_H(_chan, _idx)	(GLTSYN_EVNT_H_0(_idx) + ((_chan) * 16))
+#define GLTSYN_EVNT_H_IDX_MAX		3
+
+/* Pin definitions for PTP */
+#define PPS_CLK_GEN_CHAN		3
+#define PPS_PIN_INDEX			5
+#define ICE_N_PINS_MAX			6
+#define ICE_PIN_DESC_ARR_LEN(_arr)	(sizeof(_arr) / \
+					 sizeof(struct ice_ptp_pin_desc))
+
+/**
+ * struct ice_ptp_pin_desc - hardware pin description data
+ * @name_idx: index of the name of pin in ice_pin_names
+ * @gpio: the associated GPIO input and output pins
+ *
+ * Structure describing a PTP-capable GPIO pin that extends ptp_pin_desc array
+ * for the device. Device families have separate sets of available pins with
+ * varying restrictions.
+ */
+struct ice_ptp_pin_desc {
+	int name_idx;
+	int gpio[2];
+};
+
 /**
  * struct ice_ptp - data used for integrating with CONFIG_PTP_1588_CLOCK
  * @state: current state of PTP state machine
@@ -232,6 +272,8 @@ enum ice_ptp_state {
  * @cached_phc_jiffies: jiffies when cached_phc_time was last updated
  * @ext_ts_chan: the external timestamp channel in use
  * @ext_ts_irq: the external timestamp IRQ in use
+ * @pin_desc: structure defining pins
+ * @ice_pin_desc: internal structure describing pin relations
  * @kworker: kwork thread for handling periodic work
  * @perout_channels: periodic output data
  * @extts_channels: channels for external timestamps
@@ -257,6 +299,8 @@ struct ice_ptp {
 	u8 ext_ts_chan;
 	u8 ext_ts_irq;
 	struct kthread_worker *kworker;
+	struct ptp_pin_desc pin_desc[ICE_N_PINS_MAX];
+	const struct ice_ptp_pin_desc *ice_pin_desc;
 	struct ice_perout_channel perout_channels[GLTSYN_TGT_H_IDX_MAX];
 	struct ice_extts_channel extts_channels[GLTSYN_TGT_H_IDX_MAX];
 	struct ptp_clock_info info;
@@ -290,27 +334,6 @@ struct ice_ptp {
 #define FIFO_EMPTY			BIT(2)
 #define FIFO_OK				0xFF
 #define ICE_PTP_FIFO_NUM_CHECKS		5
-/* Per-channel register definitions */
-#define GLTSYN_AUX_OUT(_chan, _idx)	(GLTSYN_AUX_OUT_0(_idx) + ((_chan) * 8))
-#define GLTSYN_AUX_IN(_chan, _idx)	(GLTSYN_AUX_IN_0(_idx) + ((_chan) * 8))
-#define GLTSYN_CLKO(_chan, _idx)	(GLTSYN_CLKO_0(_idx) + ((_chan) * 8))
-#define GLTSYN_TGT_L(_chan, _idx)	(GLTSYN_TGT_L_0(_idx) + ((_chan) * 16))
-#define GLTSYN_TGT_H(_chan, _idx)	(GLTSYN_TGT_H_0(_idx) + ((_chan) * 16))
-#define GLTSYN_EVNT_L(_chan, _idx)	(GLTSYN_EVNT_L_0(_idx) + ((_chan) * 16))
-#define GLTSYN_EVNT_H(_chan, _idx)	(GLTSYN_EVNT_H_0(_idx) + ((_chan) * 16))
-#define GLTSYN_EVNT_H_IDX_MAX		3
-
-/* Pin definitions for PTP PPS out */
-#define PPS_CLK_GEN_CHAN		3
-#define PPS_CLK_SRC_CHAN		2
-#define PPS_PIN_INDEX			5
-#define TIME_SYNC_PIN_INDEX		4
-#define N_EXT_TS_E810			3
-#define N_PER_OUT_E810			4
-#define N_PER_OUT_E810T			3
-#define N_PER_OUT_NO_SMA_E810T		2
-#define N_EXT_TS_NO_SMA_E810T		2
-#define ETH_GLTSYN_ENA(_i)		(0x03000348 + ((_i) * 4))
 
 #if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
 int ice_ptp_clock_index(struct ice_pf *pf);
-- 
2.45.2

