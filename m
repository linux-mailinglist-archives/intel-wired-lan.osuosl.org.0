Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 44AB491AABE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2024 17:11:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C9A960E6F;
	Thu, 27 Jun 2024 15:11:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sKVi3X5qm9LV; Thu, 27 Jun 2024 15:11:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4FDC60E62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719501114;
	bh=edACgmKxptmeDZEpcCLN8eRwxE3HgwH5r1WjaP1lkHM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vz6pHHgq8jeQKgOgr6Q/40vUo2V289upuafAOpzP42LIkKOtF+12zFHlSAmyjyZ/i
	 pmVsehZYrBMqWBT4GI4lYfyVco7OxgKzR2FT7dghaToHybFltRZaYmIYfcwldYwftF
	 H/f2HSb9NicJyuTsBZlkmJsVu8drb5Qb2qWEdXtPHGhjYU4aPbQk3Jt+Ai7zvDOl0C
	 AWW61hr5mKEsUIc2sc0PYGQu0Ou11A/nih5YfPyM8AEvL0u9pnGXFHLF9zYenHC5rQ
	 CBppzf6oi8FqQ30znCOPM82iBr1iTdWL6vI0rhtfR1iCF2rspcMVvsRhvnmWCxfRr7
	 g9ASr72+jp+aQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4FDC60E62;
	Thu, 27 Jun 2024 15:11:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 091E91BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 15:11:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 023A08411F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 15:11:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gWpyxjmX3n3B for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2024 15:11:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 189898411E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 189898411E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 189898411E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 15:11:48 +0000 (UTC)
X-CSE-ConnectionGUID: UymFcccnS7SG0K40lo1oew==
X-CSE-MsgGUID: R2jyVKvNRT6OZZK6pqQl4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="27222491"
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="27222491"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 08:11:48 -0700
X-CSE-ConnectionGUID: xQBLOYDtQVm9fr1BPCR4+Q==
X-CSE-MsgGUID: iarNenidRxSJchasXjSezg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="48759695"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.132])
 by fmviesa003.fm.intel.com with ESMTP; 27 Jun 2024 08:11:46 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jun 2024 17:09:31 +0200
Message-ID: <20240627151127.284884-16-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240627151127.284884-9-karol.kolacinski@intel.com>
References: <20240627151127.284884-9-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719501108; x=1751037108;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hMdcskGxXF+YpO+jOZWzLp+sR4o8ZBFvtTssMWgqTLM=;
 b=QL++YzgRKFyxItgMYRx/IIMpDAhE40/pmwcaBTUtejUK439tY8bxLvNX
 grZTQKVMqdjUsbpmZD1RJouMWToXhzEfSrIKHAnHEsEe2BvAwTAG1WE1f
 qj1I4brbX6zKGB/zWgDh5PkNkXe2ILQp6fyV7uVIqjBWiPoFPxPi87v/D
 K3O84Q+wQbN29L8kZkry7T7ynynRBAI+2XFkiv/utl1OJRXkiuAFdbhFO
 VN63EiDRgMMUgntdH2+7JGWGquxv1YYiVt0IDwWg5+qki+bWpIFbhgZR7
 k+c5GS1Fx3pPTqFFC701E1cc+UoXDbez2OQGlG6Yi+QBRvOt+bCAu1DrC
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QL++YzgR
Subject: [Intel-wired-lan] [PATCH iwl-next 7/7] ice: Enable 1PPS out from
 CGU for E825C products
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>

Implement 1PPS signal enabling/disabling in CGU. The amplitude is
always the maximum in this implementation

Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 10 ++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 21 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  1 +
 3 files changed, 32 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index d9ff94a4b293..b97ea2b61e5c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -4,6 +4,7 @@
 #include "ice.h"
 #include "ice_lib.h"
 #include "ice_trace.h"
+#include "ice_cgu_regs.h"
 
 static const char ice_pin_names[][64] = {
 	"SDP0",
@@ -1708,6 +1709,15 @@ static int ice_ptp_write_perout(struct ice_hw *hw, unsigned int chan,
 	/* 0. Reset mode & out_en in AUX_OUT */
 	wr32(hw, GLTSYN_AUX_OUT(chan, tmr_idx), 0);
 
+	if (ice_is_e825c(hw)) {
+		int err;
+
+		/* Enable/disable CGU 1PPS output for E825C */
+		err = ice_cgu_ena_pps_out(hw, !!period);
+		if (err)
+			return err;
+	}
+
 	/* 1. Write perout with half of required period value.
 	 * HW toggles output when source clock hits the TGT and then adds
 	 * GLTSYN_CLKO value to the target, so it ends up with 50% duty cycle.
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 07ecf2a86742..fa7cf8453b88 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -661,6 +661,27 @@ static int ice_cfg_cgu_pll_e825c(struct ice_hw *hw,
 	return 0;
 }
 
+#define ICE_ONE_PPS_OUT_AMP_MAX 3
+
+/**
+ * ice_cgu_ena_pps_out - Enable/disable 1PPS output
+ * @hw: pointer to the HW struct
+ * @ena: Enable/disable 1PPS output
+ */
+int ice_cgu_ena_pps_out(struct ice_hw *hw, bool ena)
+{
+	union nac_cgu_dword9 dw9;
+	int err;
+
+	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD9, &dw9.val);
+	if (err)
+		return err;
+
+	dw9.one_pps_out_en = ena;
+	dw9.one_pps_out_amp = ena * ICE_ONE_PPS_OUT_AMP_MAX;
+	return ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD9, dw9.val);
+}
+
 /**
  * ice_cfg_cgu_pll_dis_sticky_bits_e82x - disable TS PLL sticky bits
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index ff98f76969e3..382e84568256 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -331,6 +331,7 @@ extern const struct ice_vernier_info_e82x e822_vernier[NUM_ICE_PTP_LNK_SPD];
 
 /* Device agnostic functions */
 u8 ice_get_ptp_src_clock_index(struct ice_hw *hw);
+int ice_cgu_ena_pps_out(struct ice_hw *hw, bool ena);
 bool ice_ptp_lock(struct ice_hw *hw);
 void ice_ptp_unlock(struct ice_hw *hw);
 void ice_ptp_src_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd);
-- 
2.45.2

