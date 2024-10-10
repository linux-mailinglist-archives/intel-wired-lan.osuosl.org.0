Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C6C99835B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Oct 2024 12:17:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5F67481778;
	Thu, 10 Oct 2024 10:17:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jodqiA523H_a; Thu, 10 Oct 2024 10:17:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2AF1681779
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728555441;
	bh=bnuN6VeyOD0dzOYQioEpDr4tVX0/3Hjp2epfiTFsMyA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=7DlMV0g+FdhLdL3+oM+69nSsE9svncSarGEX09K3HCxX/0dpD2fHzfUWNo7P4gMyu
	 fjmGehE5lUc//C8Imh5/hBa8tebCGUoSzC6aDcwdBY/KM/5czUZVZQP7NbL+8ncYxU
	 KBubtZTU6gMk8/R3pG6H4TB02HNE9wBc0q/6AdH3d/1aLFxyUJpiQg43PrwFbqhXTy
	 meWIrILaUTyd6zP9GA1MAfizqhQ8ysojLcCMc1YY301gwu9qUdpwpuTjQ6rXEaMnD/
	 RuuG11uaVczIqE32hqM37f9NTs7Az1Y41RhFQV1VcbSGw7w5HNbQw5+75FrqjVWNi0
	 FC12lPiVPurCg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2AF1681779;
	Thu, 10 Oct 2024 10:17:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5EA1A1BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2024 10:17:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 55FC440175
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2024 10:17:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id To75NjVI9GdC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Oct 2024 10:17:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E069E40135
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E069E40135
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E069E40135
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2024 10:17:17 +0000 (UTC)
X-CSE-ConnectionGUID: 1vHpjw3zSnyocZE3Q4WRmw==
X-CSE-MsgGUID: XK4osEYVSX+OIfgYT0XNgQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="38547286"
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="38547286"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 03:17:17 -0700
X-CSE-ConnectionGUID: nJLI03xGSN2WJR3F+d+PdA==
X-CSE-MsgGUID: ZnM41lytSu+y7itbacprdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="77370920"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa008.jf.intel.com with ESMTP; 10 Oct 2024 03:17:16 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 10 Oct 2024 12:12:53 +0200
Message-Id: <20241010101253.994271-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728555438; x=1760091438;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gTpZiKsQbgNWNkIOCRR+lw12mg2XWmquDlTShX3G99I=;
 b=D3oKpQLtajb/ghqpUPCtVeuXRwNxhFLXru3FZmToLkcOwBVmLQzzjD85
 mWDv/yeROtWcIRYGLEJFOlIsUkTFpqDgOapj9bE57s4jjnw0v5/SEzQIu
 7ZavMb+uw604C4ieH5d2aOU/Lk/754RO7ALr5jsKno1Zl7KeViuvdem0n
 D39huGI07rOcmRsNmksy7C57yQU8Q/HsAQn00lxfIHMy9cfVZPXnUxlxR
 D3OyfroSLldiYVqt/CrfNZBcnNDa0EBvw9R/b5Mav86SIshj0psF4ucdf
 Qn2zQ13LNwI5KnO0EE6k2XaCAEqf37oE3CFRb8Yzz0sO4t2IjBs4IldAQ
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=D3oKpQLt
Subject: [Intel-wired-lan] [PATCH iwl-net v3] ice: fix crash on probe for
 DPLL enabled E810 LOM
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The E810 Lan On Motherboard (LOM) design is vendor specific. Intel
provides the reference design, but it is up to vendor on the final
product design. For some cases, like Linux DPLL support, the static
values defined in the driver does not reflect the actual LOM design.
Current implementation of dpll pins is causing the crash on probe
of the ice driver for such DPLL enabled E810 LOM designs:

WARNING: (...) at drivers/dpll/dpll_core.c:495 dpll_pin_get+0x2c4/0x330
...
Call Trace:
 <TASK>
 ? __warn+0x83/0x130
 ? dpll_pin_get+0x2c4/0x330
 ? report_bug+0x1b7/0x1d0
 ? handle_bug+0x42/0x70
 ? exc_invalid_op+0x18/0x70
 ? asm_exc_invalid_op+0x1a/0x20
 ? dpll_pin_get+0x117/0x330
 ? dpll_pin_get+0x2c4/0x330
 ? dpll_pin_get+0x117/0x330
 ice_dpll_get_pins.isra.0+0x52/0xe0 [ice]
...

The number of dpll pins enabled by LOM vendor is greater than expected
and defined in the driver for Intel designed NICs, which causes the crash.

Prevent the crash and allow generic pin initialization within Linux DPLL
subsystem for DPLL enabled E810 LOM designs.

Newly designed solution for described issue will be based on "per HW
design" pin initialization. It requires pin information dynamically
acquired from the firmware and is already in progress, planned for
next-tree only.

Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
Reviewed-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
v3:
- use ARRAY_SIZE()/sizeof() and remove length define
- initialize also input pins with the generic pins approach
- remove unused OCXO input pin properities
---
 drivers/net/ethernet/intel/ice/ice_dpll.c   | 70 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 21 ++++++-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  1 +
 3 files changed, 90 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index 74c0e7319a4c..d5ad6d84007c 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -10,6 +10,7 @@
 #define ICE_DPLL_PIN_IDX_INVALID		0xff
 #define ICE_DPLL_RCLK_NUM_PER_PF		1
 #define ICE_DPLL_PIN_ESYNC_PULSE_HIGH_PERCENT	25
+#define ICE_DPLL_PIN_GEN_RCLK_FREQ		1953125
 
 /**
  * enum ice_dpll_pin_type - enumerate ice pin types:
@@ -2063,6 +2064,73 @@ static int ice_dpll_init_worker(struct ice_pf *pf)
 	return 0;
 }
 
+/**
+ * ice_dpll_init_info_pins_generic - initializes generic pins info
+ * @pf: board private structure
+ * @input: if input pins initialized
+ *
+ * Init information for generic pins, cache them in PF's pins structures.
+ *
+ * Return:
+ * * 0 - success
+ * * negative - init failure reason
+ */
+static int ice_dpll_init_info_pins_generic(struct ice_pf *pf, bool input)
+{
+	struct ice_dpll *de = &pf->dplls.eec, *dp = &pf->dplls.pps;
+	static const char labels[][sizeof("99")] = {
+		"0", "1", "2", "3", "4", "5", "6", "7", "8",
+		"9", "10", "11", "12", "13", "14", "15" };
+	u32 cap = DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE;
+	enum ice_dpll_pin_type pin_type;
+	int i, pin_num, ret = -EINVAL;
+	struct ice_dpll_pin *pins;
+	u32 phase_adj_max;
+
+	if (input) {
+		pin_num = pf->dplls.num_inputs;
+		pins = pf->dplls.inputs;
+		phase_adj_max = pf->dplls.input_phase_adj_max;
+		pin_type = ICE_DPLL_PIN_TYPE_INPUT;
+		cap |= DPLL_PIN_CAPABILITIES_PRIORITY_CAN_CHANGE;
+	} else {
+		pin_num = pf->dplls.num_outputs;
+		pins = pf->dplls.outputs;
+		phase_adj_max = pf->dplls.output_phase_adj_max;
+		pin_type = ICE_DPLL_PIN_TYPE_OUTPUT;
+	}
+	if (pin_num > ARRAY_SIZE(labels))
+		return ret;
+
+	for (i = 0; i < pin_num; i++) {
+		pins[i].idx = i;
+		pins[i].prop.board_label = labels[i];
+		pins[i].prop.phase_range.min = phase_adj_max;
+		pins[i].prop.phase_range.max = -phase_adj_max;
+		pins[i].prop.capabilities = cap;
+		pins[i].pf = pf;
+		ret = ice_dpll_pin_state_update(pf, &pins[i], pin_type, NULL);
+		if (ret)
+			break;
+		if (input && pins[i].freq == ICE_DPLL_PIN_GEN_RCLK_FREQ)
+			pins[i].prop.type = DPLL_PIN_TYPE_MUX;
+		else
+			pins[i].prop.type = DPLL_PIN_TYPE_EXT;
+		if (!input)
+			continue;
+		ret = ice_aq_get_cgu_ref_prio(&pf->hw, de->dpll_idx, i,
+					      &de->input_prio[i]);
+		if (ret)
+			break;
+		ret = ice_aq_get_cgu_ref_prio(&pf->hw, dp->dpll_idx, i,
+					      &dp->input_prio[i]);
+		if (ret)
+			break;
+	}
+
+	return ret;
+}
+
 /**
  * ice_dpll_init_info_direct_pins - initializes direct pins info
  * @pf: board private structure
@@ -2101,6 +2169,8 @@ ice_dpll_init_info_direct_pins(struct ice_pf *pf,
 	default:
 		return -EINVAL;
 	}
+	if (num_pins != ice_cgu_get_num_pins(hw, input))
+		return ice_dpll_init_info_pins_generic(pf, input);
 
 	for (i = 0; i < num_pins; i++) {
 		caps = 0;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 3a33e6b9b313..ec8db830ac73 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -34,7 +34,6 @@ static const struct ice_cgu_pin_desc ice_e810t_sfp_cgu_inputs[] = {
 		ARRAY_SIZE(ice_cgu_pin_freq_common), ice_cgu_pin_freq_common },
 	{ "GNSS-1PPS",	  ZL_REF4P, DPLL_PIN_TYPE_GNSS,
 		ARRAY_SIZE(ice_cgu_pin_freq_1_hz), ice_cgu_pin_freq_1_hz },
-	{ "OCXO",	  ZL_REF4N, DPLL_PIN_TYPE_INT_OSCILLATOR, 0, },
 };
 
 static const struct ice_cgu_pin_desc ice_e810t_qsfp_cgu_inputs[] = {
@@ -52,7 +51,6 @@ static const struct ice_cgu_pin_desc ice_e810t_qsfp_cgu_inputs[] = {
 		ARRAY_SIZE(ice_cgu_pin_freq_common), ice_cgu_pin_freq_common },
 	{ "GNSS-1PPS",	  ZL_REF4P, DPLL_PIN_TYPE_GNSS,
 		ARRAY_SIZE(ice_cgu_pin_freq_1_hz), ice_cgu_pin_freq_1_hz },
-	{ "OCXO",	  ZL_REF4N, DPLL_PIN_TYPE_INT_OSCILLATOR, },
 };
 
 static const struct ice_cgu_pin_desc ice_e810t_sfp_cgu_outputs[] = {
@@ -5964,6 +5962,25 @@ ice_cgu_get_pin_desc(struct ice_hw *hw, bool input, int *size)
 	return t;
 }
 
+/**
+ * ice_cgu_get_num_pins - get pin description array size
+ * @hw: pointer to the hw struct
+ * @input: if request is done against input or output pins
+ *
+ * Return: size of pin description array for given hw.
+ */
+int ice_cgu_get_num_pins(struct ice_hw *hw, bool input)
+{
+	const struct ice_cgu_pin_desc *t;
+	int size;
+
+	t = ice_cgu_get_pin_desc(hw, input, &size);
+	if (t)
+		return size;
+
+	return 0;
+}
+
 /**
  * ice_cgu_get_pin_type - get pin's type
  * @hw: pointer to the hw struct
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 0852a34ade91..6cedc1a906af 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -404,6 +404,7 @@ int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data);
 int ice_write_sma_ctrl_e810t(struct ice_hw *hw, u8 data);
 int ice_read_pca9575_reg_e810t(struct ice_hw *hw, u8 offset, u8 *data);
 bool ice_is_pca9575_present(struct ice_hw *hw);
+int ice_cgu_get_num_pins(struct ice_hw *hw, bool input);
 enum dpll_pin_type ice_cgu_get_pin_type(struct ice_hw *hw, u8 pin, bool input);
 struct dpll_pin_frequency *
 ice_cgu_get_pin_freq_supp(struct ice_hw *hw, u8 pin, bool input, u8 *num);
-- 
2.38.1

