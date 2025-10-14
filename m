Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB817BD8445
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Oct 2025 10:48:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C292B83CF2;
	Tue, 14 Oct 2025 08:48:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id czQzwxBGdzxg; Tue, 14 Oct 2025 08:48:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 17B7383CF0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760431697;
	bh=J0UkbGphl872Co/0zFMJAroO/4Pmsac3D2C4KaLx+KQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=kWXW/dDlBAaOiJAyLrymnhloOwFvVneeOOklNqf6LH5VMza+2qod/8d6tjM7QfuGx
	 TXp6SABN+HXQ8Du/oK7KFQH0du/N1Au8sTRh6JCEWkq+JiNbj/k+xwwo7EENLY9PZZ
	 KC86n+ShEyS0/qu5tHIQV3bd7zl05R8+Dpqg2XaT8/+PCn2WWUhV/ns9o8qC1kCUsB
	 PfC7zHL02+p5revHGrE0MsMs0l+fxcqzXVg001sYC23ArUg3uM/b3pYSTMGrrDe2QY
	 khnD/UHlnPU9caKA3oOZKJ5Fj+b1hwRBS2ah2+iCiwg9NzjwvRuZnby6Us0/21WHkV
	 nK4q3O6mbYO2Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 17B7383CF0;
	Tue, 14 Oct 2025 08:48:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4819E294
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 08:48:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3983F83CE8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 08:48:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ySKFlRaoLJ20 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Oct 2025 08:48:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5EE8983CE6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5EE8983CE6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5EE8983CE6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 08:48:14 +0000 (UTC)
X-CSE-ConnectionGUID: k7cR87kJTNeXano4OPXTSw==
X-CSE-MsgGUID: v5COPUzdSoCfuhddonVWvw==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="62682566"
X-IronPort-AV: E=Sophos;i="6.19,227,1754982000"; d="scan'208";a="62682566"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 01:48:13 -0700
X-CSE-ConnectionGUID: h3SI6kNBR3qBEhemCW+23Q==
X-CSE-MsgGUID: l9dD1XpRTaCfKlJNa9aVvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,227,1754982000"; d="scan'208";a="182278908"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by fmviesa008.fm.intel.com with ESMTP; 14 Oct 2025 01:48:12 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 14 Oct 2025 10:46:18 +0200
Message-Id: <20251014084618.2746755-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760431695; x=1791967695;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OcJ2y8QL8cVOhDe3Y9UlXJ+LflkYfHbKKdnGQSd4CDM=;
 b=eG+5RxXRRKHumyn+f4QBxDn7rtB6DKAEJ73lQY8iOguMaSvt5fqlLX7E
 dqc8wseTyxoH6T/EmQz9Hor+hw1jpX/pwQWvmZ8Lz7pBTsD9NDn3ZdvmW
 hqWk6DnKeifSqCsoUyNWKLSkecQ09TdOK0pYKpTYi9E6Vgw47Q4pYx2aj
 ap4GpHwcG6cCGQy84guNZknHB7QPb+gp/Ka/YvuA5tz/73RoCnbKhWT4K
 4kFDg6m9d4ZRyKbNDC93jJsfAHwDSERyrIOKsFrq+1XbmHflQwF6cxDbJ
 jOb720J/KpEK8c2Jv25rmZZ6r1d2J+f8nGtVGFgJz71eLSkhBtb22ha7p
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eG+5RxXR
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: unify PHY FW loading status
 handler for E800 devices
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Unify handling of PHY firmware load delays across all E800 family
devices. There is an existing mechanism to poll GL_MNG_FWSM_FW_LOADING_M
bit of GL_MNG_FWSM register in order to verify whether PHY FW loading
completed or not. Previously, this logic was limited to E827 variants
only.

Also, inform a user of possible delay in initialization process, by
dumping informational message in dmesg log.

Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 81 ++++++---------------
 1 file changed, 24 insertions(+), 57 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 8e56354332ad..d05d371a9944 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -203,42 +203,6 @@ bool ice_is_generic_mac(struct ice_hw *hw)
 		hw->mac_type == ICE_MAC_GENERIC_3K_E825);
 }
 
-/**
- * ice_is_pf_c827 - check if pf contains c827 phy
- * @hw: pointer to the hw struct
- *
- * Return: true if the device has c827 phy.
- */
-static bool ice_is_pf_c827(struct ice_hw *hw)
-{
-	struct ice_aqc_get_link_topo cmd = {};
-	u8 node_part_number;
-	u16 node_handle;
-	int status;
-
-	if (hw->mac_type != ICE_MAC_E810)
-		return false;
-
-	if (hw->device_id != ICE_DEV_ID_E810C_QSFP)
-		return true;
-
-	cmd.addr.topo_params.node_type_ctx =
-		FIELD_PREP(ICE_AQC_LINK_TOPO_NODE_TYPE_M, ICE_AQC_LINK_TOPO_NODE_TYPE_PHY) |
-		FIELD_PREP(ICE_AQC_LINK_TOPO_NODE_CTX_M, ICE_AQC_LINK_TOPO_NODE_CTX_PORT);
-	cmd.addr.topo_params.index = 0;
-
-	status = ice_aq_get_netlist_node(hw, &cmd, &node_part_number,
-					 &node_handle);
-
-	if (status || node_part_number != ICE_AQC_GET_LINK_TOPO_NODE_NR_C827)
-		return false;
-
-	if (node_handle == E810C_QSFP_C827_0_HANDLE || node_handle == E810C_QSFP_C827_1_HANDLE)
-		return true;
-
-	return false;
-}
-
 /**
  * ice_clear_pf_cfg - Clear PF configuration
  * @hw: pointer to the hardware structure
@@ -958,30 +922,35 @@ static void ice_get_itr_intrl_gran(struct ice_hw *hw)
 }
 
 /**
- * ice_wait_for_fw - wait for full FW readiness
+ * ice_wait_fw_load - wait for PHY firmware loading to complete
  * @hw: pointer to the hardware structure
  * @timeout: milliseconds that can elapse before timing out
  *
- * Return: 0 on success, -ETIMEDOUT on timeout.
+ * On some cards, FW can load longer than usual,
+ * and could still not be ready before link is turned on.
+ * In these cases, we should wait until all's loaded.
+ *
+ * Return:
+ * * 0 on success (FW load is completed)
+ * * negative - on timeout
  */
-static int ice_wait_for_fw(struct ice_hw *hw, u32 timeout)
+static int ice_wait_fw_load(struct ice_hw *hw, u32 timeout)
 {
-	int fw_loading;
-	u32 elapsed = 0;
+	int fw_loading_reg;
 
-	while (elapsed <= timeout) {
-		fw_loading = rd32(hw, GL_MNG_FWSM) & GL_MNG_FWSM_FW_LOADING_M;
+	if (!timeout)
+		return 0;
 
-		/* firmware was not yet loaded, we have to wait more */
-		if (fw_loading) {
-			elapsed += 100;
-			msleep(100);
-			continue;
-		}
+	fw_loading_reg = rd32(hw, GL_MNG_FWSM) & GL_MNG_FWSM_FW_LOADING_M;
+	/* notify the user only once if PHY FW is still loading */
+	if (fw_loading_reg)
+		dev_info(ice_hw_to_dev(hw), "Link initialization is blocked by PHY FW initialization. Link initialization will continue after PHY FW initialization completes.\n");
+	else
 		return 0;
-	}
 
-	return -ETIMEDOUT;
+	return rd32_poll_timeout(hw, GL_MNG_FWSM, fw_loading_reg,
+				 !(fw_loading_reg & GL_MNG_FWSM_FW_LOADING_M),
+				 10000, timeout * 1000);
 }
 
 static int __fwlog_send_cmd(void *priv, struct libie_aq_desc *desc, void *buf,
@@ -1171,12 +1140,10 @@ int ice_init_hw(struct ice_hw *hw)
 	 * due to necessity of loading FW from an external source.
 	 * This can take even half a minute.
 	 */
-	if (ice_is_pf_c827(hw)) {
-		status = ice_wait_for_fw(hw, 30000);
-		if (status) {
-			dev_err(ice_hw_to_dev(hw), "ice_wait_for_fw timed out");
-			goto err_unroll_fltr_mgmt_struct;
-		}
+	status = ice_wait_fw_load(hw, 30000);
+	if (status) {
+		dev_err(ice_hw_to_dev(hw), "ice_wait_fw_load timed out");
+		goto err_unroll_fltr_mgmt_struct;
 	}
 
 	hw->lane_num = ice_get_phy_lane_number(hw);

base-commit: cbbc9ad6caed63e32e8a4b10001b041f7294ffa6
-- 
2.39.3

