Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6036596602B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2024 13:11:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6FA1184360;
	Fri, 30 Aug 2024 11:10:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 52H4mro4u2u6; Fri, 30 Aug 2024 11:10:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 87A1A84155
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725016258;
	bh=vWkF/kbwW/TpAUQ3frVuCUcfjJ+tuzws3q5IqtIrDRw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DYp5xYfHoIgIRIjmJ38qAE5BuACdn0qHJRVRnUdbkcgd0Af26zSsh2JF0K5GsHDx/
	 8eqYawOnzSUCffhgpSEYGVhI25l4du9W54wtzN4mrBSWnFLTCQIQbOOMDcgcSLzVls
	 MVSVu5amdzGAWZkvganTYCuAVVTtJdp4KEiGHe2/Tptl04OULQeckv+7BMaN+3C4UR
	 bTT/yDyzQDr+wr0gUQ11RVsqDsT3trWB3OqwhAsEti7eDUQU5xdUmB9yg++XxxwnXY
	 iX4FjGFjB8gEpyDwjW3XLI0RRRdNGT/EsqtqZNZUW53MHsAKrgEmILzLsxF2id0Tbt
	 +hcpHmHQQFW0Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 87A1A84155;
	Fri, 30 Aug 2024 11:10:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 36C731BF370
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 11:10:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2332541A70
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 11:10:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gj8NiP52bGEi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2024 11:10:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 08A2C41A6E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 08A2C41A6E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 08A2C41A6E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 11:10:51 +0000 (UTC)
X-CSE-ConnectionGUID: agF36aMXSim8fRr13CXu7Q==
X-CSE-MsgGUID: G4F9/PpuSL2f8GdeqpHxaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23517616"
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="23517616"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 04:10:52 -0700
X-CSE-ConnectionGUID: 57drXlLGR3OF4jigw67lEg==
X-CSE-MsgGUID: DhW8FnVOQHWC3u78YM4jVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="68273677"
Received: from kkolacin-desk1.igk.intel.com ([10.217.160.108])
 by fmviesa005.fm.intel.com with ESMTP; 30 Aug 2024 04:10:49 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 30 Aug 2024 13:07:23 +0200
Message-ID: <20240830111028.1112040-16-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240830111028.1112040-9-karol.kolacinski@intel.com>
References: <20240830111028.1112040-9-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725016252; x=1756552252;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=u3cUfzSKD0VjJiTqsSm49z1DKxsoO9Ejng/IhWZGTlA=;
 b=HwKv26Tl7rHJrY3GxFaiVLo9VwikvBuhO+sw/4Hn/87Ec4BYkOAiTz91
 oi/m4yl9uJ6b32AqqXjUyfP9nU9EFjRApu7ZSWEwk+xKBdH1Tt5c7IzQQ
 3SCX+AP9oz0U5hT0fQKoDizJ9WVbfwRipKl1tWJ5WWEGrkkTvzwtppXY7
 8TY0Qv19JSb51CiRXrSqDa37gijOj+wEgPicKLyvBIkieLCpfLLRTBJO/
 Mqj1o4NAz2xL+PoQAKYkttP60/jSeeRozfLPLmgBLrUu7VWj8G29h1E07
 /xrtGVst1XW00p7rc/e8jX9h37r5Z43Avapszj7UNLcfEvqaMhR9H7LyK
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HwKv26Tl
Subject: [Intel-wired-lan] [PATCH v4 iwl-next 7/7] ice: Enable 1PPS out from
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
 Simon Horman <horms@kernel.org>, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>

Implement configuring 1PPS signal output from CGU. Use maximal amplitude
because Linux PTP pin API does not have any way for user to set signal
level.

This change is necessary for E825C products to properly output any
signal from 1PPS pin.

Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
---
V1 -> V2: Added return value description, renamed the function and
          enable parameter. Reworded commit message.

 drivers/net/ethernet/intel/ice/ice_ptp.c    | 10 +++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 23 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  1 +
 3 files changed, 34 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 753709ef1ab2..382aa8d9a23a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -4,6 +4,7 @@
 #include "ice.h"
 #include "ice_lib.h"
 #include "ice_trace.h"
+#include "ice_cgu_regs.h"
 
 static const char ice_pin_names[][64] = {
 	"SDP0",
@@ -1699,6 +1700,15 @@ static int ice_ptp_write_perout(struct ice_hw *hw, unsigned int chan,
 	/* 0. Reset mode & out_en in AUX_OUT */
 	wr32(hw, GLTSYN_AUX_OUT(chan, tmr_idx), 0);
 
+	if (ice_is_e825c(hw)) {
+		int err;
+
+		/* Enable/disable CGU 1PPS output for E825C */
+		err = ice_cgu_cfg_pps_out(hw, !!period);
+		if (err)
+			return err;
+	}
+
 	/* 1. Write perout with half of required period value.
 	 * HW toggles output when source clock hits the TGT and then adds
 	 * GLTSYN_CLKO value to the target, so it ends up with 50% duty cycle.
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 07ecf2a86742..6dff422b7f4e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -661,6 +661,29 @@ static int ice_cfg_cgu_pll_e825c(struct ice_hw *hw,
 	return 0;
 }
 
+#define ICE_ONE_PPS_OUT_AMP_MAX 3
+
+/**
+ * ice_cgu_cfg_pps_out - Configure 1PPS output from CGU
+ * @hw: pointer to the HW struct
+ * @enable: true to enable 1PPS output, false to disable it
+ *
+ * Return: 0 on success, other negative error code when CGU read/write failed
+ */
+int ice_cgu_cfg_pps_out(struct ice_hw *hw, bool enable)
+{
+	union nac_cgu_dword9 dw9;
+	int err;
+
+	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD9, &dw9.val);
+	if (err)
+		return err;
+
+	dw9.one_pps_out_en = enable;
+	dw9.one_pps_out_amp = enable * ICE_ONE_PPS_OUT_AMP_MAX;
+	return ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD9, dw9.val);
+}
+
 /**
  * ice_cfg_cgu_pll_dis_sticky_bits_e82x - disable TS PLL sticky bits
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index ff98f76969e3..fc946fcd28b9 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -331,6 +331,7 @@ extern const struct ice_vernier_info_e82x e822_vernier[NUM_ICE_PTP_LNK_SPD];
 
 /* Device agnostic functions */
 u8 ice_get_ptp_src_clock_index(struct ice_hw *hw);
+int ice_cgu_cfg_pps_out(struct ice_hw *hw, bool enable);
 bool ice_ptp_lock(struct ice_hw *hw);
 void ice_ptp_unlock(struct ice_hw *hw);
 void ice_ptp_src_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd);
-- 
2.46.0

