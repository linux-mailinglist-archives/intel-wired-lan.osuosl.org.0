Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A8C923F54
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2024 15:45:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2BBEA81EBE;
	Tue,  2 Jul 2024 13:45:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JYf2iiHnnkH2; Tue,  2 Jul 2024 13:45:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 50DC081BBD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719927918;
	bh=VBZ1vGNQEONlRqaZuGgfKIhLA3E8hkg1GZlzj9K4GdI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AtmYQ5okMjyNukSaNxMg3zrR8SJTZLZ8EaUP6eIyLdUFv9zEZVDeKRYVH7VkiOfwo
	 sPU8T/rWfcsbacAL2MPErlIVysA3cEHsmazjsdZdg3bQgXDYzaI1E9I0kvwY0YkOvj
	 y8sLsV0uZsoVbZOWAcTc3t4VMkFCpG0mM/KgbDJsHE99PlwIWmFf7pGM0JBsYUklHo
	 6D/lezbn4kZkQuVfQLW9E7UncN1GD8gGjB7x54HePFAa0lh9mkPSq6sH0NfZ0fOyUk
	 9VycOvXZfApuOamELyIp8QVwi2KiZB6N+QeQM9BcSigUA4RK7ro7MdR7PY6rYYL1lU
	 qkesUUggWO3Sw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 50DC081BBD;
	Tue,  2 Jul 2024 13:45:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE2A61BF313
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 13:45:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D6058410E5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 13:45:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iCG7jUyV8AKb for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2024 13:45:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D3904410E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D3904410E4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D3904410E4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 13:45:12 +0000 (UTC)
X-CSE-ConnectionGUID: ewUf5/gOT/Ki/KrBrjHOyg==
X-CSE-MsgGUID: OjXNw1sLRYGVcHSLszS2pA==
X-IronPort-AV: E=McAfee;i="6700,10204,11121"; a="16826454"
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="16826454"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 06:45:13 -0700
X-CSE-ConnectionGUID: OOUin8nsR7C+CGKVloLV0A==
X-CSE-MsgGUID: qW/DPDclTjW8iI3vIYrU2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="83460586"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.132])
 by orviesa001.jf.intel.com with ESMTP; 02 Jul 2024 06:45:10 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Jul 2024 15:41:36 +0200
Message-ID: <20240702134448.132374-16-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240702134448.132374-9-karol.kolacinski@intel.com>
References: <20240702134448.132374-9-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719927913; x=1751463913;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7SFDDXFpHqGUQddHeHjcsdcr2pOj5KTCvACLolxvAm0=;
 b=bdWA3dCrDb1n5U3KyXAtWQ7jtf2I5FqADlvfTvWGIBxyDABWvnc2PzZI
 QsdkNcquwbqVWk/6SwEYhFRsh9E11RiCYk9sVMvD2J3FA8iuT5bCqe0GU
 Xk/lSl8KYcPFJEBM6++VrdMHuMI2zdv4s4hA7IH9kM7q+KL3npBtmtvtR
 hJy4Eorr+ynqSbIj5rRsLOI3ZhN9Q/o8hxW7D+CmxdBO0z41QdhnMJm3L
 Yi58bawd8QNdZ2rEVNYhgaG/q5rdaFgquAZEBBvQfbAKb6zB/duYuf7Mw
 H/pWj/a5fPzQLN4L+/0VCdK4YTyc880Zy9Hj6pubuvFS1WXKz9wVYugtK
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bdWA3dCr
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 7/7] ice: Enable 1PPS out from
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
index e324d96c34c6..11fbf2bbcae7 100644
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
2.45.2

