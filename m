Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A39F964323
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Aug 2024 13:33:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 12CA86111D;
	Thu, 29 Aug 2024 11:33:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VKaq6s3cf3wq; Thu, 29 Aug 2024 11:33:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 529B361161
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724931204;
	bh=NmFqb9rX55S2QQ0P8awEa3jzzysmqEVBQWGY/dj7+Ck=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cZAzDqw2U0CYwo21pgGfCMit0fcFuYtqUmF02kAGNfQtY5hQL07CrMRs2eLUDG5h/
	 w3/ZZG2RjLkFISuf1nNjwyJ+AIfNGBw3oQpv8ynXrvDoqZTf/B18o1Y8TyyK82Kjta
	 Sb+rzxw0ecwfG4LVOaBUjXx0dwfK69zB26v5DWsgqxl+KxSmGyfgEwnrFrsSRK1uNL
	 SOuzY0rFrVZym9R/wqqlDBecIMLM+pp0th1cIpsNmCMes/C7hrqHlIDkReUrLtRc6u
	 dT1lUQXkSV3he9ba+YExwNCy4ht7Xw1WkziX5u2DLmJGFgxi/vlwG11GZ2zW+dN34z
	 E6O6C3hOsdgtw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 529B361161;
	Thu, 29 Aug 2024 11:33:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1BCB21BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 11:33:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 156324022B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 11:33:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4z78rEesAKq5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Aug 2024 11:33:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E78F5401F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E78F5401F6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E78F5401F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 11:33:18 +0000 (UTC)
X-CSE-ConnectionGUID: ubPL6HYSQp6ShCLAdrM0yw==
X-CSE-MsgGUID: hLU/+YzISOeekOHBnTmLmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="23677895"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="23677895"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 04:33:18 -0700
X-CSE-ConnectionGUID: SBja+CndSGic8cOqGCQg6g==
X-CSE-MsgGUID: F1uRUSsoSVum0eHkBXrF6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="63230630"
Received: from kkolacin-desk1.igk.intel.com ([10.217.160.108])
 by fmviesa007.fm.intel.com with ESMTP; 29 Aug 2024 04:33:17 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 29 Aug 2024 13:28:14 +0200
Message-ID: <20240829113257.1023835-16-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240829113257.1023835-9-karol.kolacinski@intel.com>
References: <20240829113257.1023835-9-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724931199; x=1756467199;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p7xgIQH0bb8bKwQrlGLYcFI7oXY+3QHoY5PQPeXaia8=;
 b=NcMkngPczHC65xN+qRcsQq21tVjKX0j/lGNpT2LmF7PfKlYax8oamkxo
 CSy4qP9gpmxVjkfq4GYYFR27A654tNX+2IFA5rH2zRLWSTQ3tYMxo6XSP
 xv/9wDkIL1eyn9bhPMPDWvJlH9uPRuM4u9NclcwJDj4Nz/X1iB/YV5SB/
 lPqFn06d9PtANWO2uqTL6epjt+HORQbVMBJVSB2kSUE6ep/GlP/LZavL8
 xp3kwv3ptSd7h181gdf49VB0QfrpJrtMYlL8zoP3VDTWjRmNaQ6qu1g7I
 AEq4Yp0Mm6AIqZfgHjub0IYCLJVVSOEme81bmDnQTOZ4YprD4lv4AKE6Q
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NcMkngPc
Subject: [Intel-wired-lan] [PATCH v3 iwl-next 7/7] ice: Enable 1PPS out from
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

Implement configuring 1PPS signal output from CGU. Use maximal amplitude
because Linux PTP pin API does not have any way for user to set signal
level.

This change is necessary for E825C products to properly output any
signal from 1PPS pin.

Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
V1 -> V2: Added return value description, renamed the function and
          enable parameter. Reworded commit message.

 drivers/net/ethernet/intel/ice/ice_ptp.c    | 10 +++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 23 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  1 +
 3 files changed, 34 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index a35ffc31f316..e275201dff36 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -4,6 +4,7 @@
 #include "ice.h"
 #include "ice_lib.h"
 #include "ice_trace.h"
+#include "ice_cgu_regs.h"
 
 static const char ice_pin_names[][64] = {
 	"SDP0",
@@ -1709,6 +1710,15 @@ static int ice_ptp_write_perout(struct ice_hw *hw, unsigned int chan,
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

