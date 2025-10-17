Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 30DC1BE73DC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Oct 2025 10:44:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D00A280F3F;
	Fri, 17 Oct 2025 08:44:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dVZ53Ji0fSFm; Fri, 17 Oct 2025 08:44:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4362480EDF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760690671;
	bh=FVr5xQujkNhNzrHpCiigOQSsfKV2AAoLfSL14J+j7XA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=1Rf1ZbC9zd+y/kauzAWt/DsXHaAjADPcGGQQZnsPnTxsRvjU4mnH4dOhmLEjbo5E7
	 8p96pNqlqmFz7nY/OOzp58QpqsFHNcZ9Zk4DQg8kAqt6H0t52RShBOHYRehvn6Z0eX
	 lnwLXifQ+BKc7bxsLxbLYo7YwjKRzfIs1n03nIGGJyzb3xi62NoClVhTD6BtZGUYcF
	 4owH3HzsOsPodCqmqAKaOQmL5S20Ktr74CI8p5G587uSWOZ3t8ngqwb+dDFdSJIhvk
	 WPAIDeLAKypb2oifjCasNMiuMMgBWFRE1fK01kb547ay6qlrvmpw2fSWGYl0sq5nlc
	 vUMx3+GfQ3x3g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4362480EDF;
	Fri, 17 Oct 2025 08:44:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 051571EB1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Oct 2025 08:44:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0254F40ACF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Oct 2025 08:44:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2ZC3tFQbjH6B for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Oct 2025 08:44:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0E8034096F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E8034096F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0E8034096F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Oct 2025 08:44:28 +0000 (UTC)
X-CSE-ConnectionGUID: YYYnoKQVRhynpdlsOH5+4A==
X-CSE-MsgGUID: DuMjA/aFTEiBXSwSRLBxsw==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="88367590"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="88367590"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 01:44:28 -0700
X-CSE-ConnectionGUID: 405iXWIUTgCJikW5one9Ag==
X-CSE-MsgGUID: 1Ohrd9QFTYSi4tH+y5wTKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="181876789"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by orviesa010.jf.intel.com with ESMTP; 17 Oct 2025 01:44:26 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 17 Oct 2025 10:42:28 +0200
Message-Id: <20251017084228.4140603-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760690669; x=1792226669;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kAQyU+o9QeNSim6ryxGcCJ6H49R7ppKizEttgq8uj6A=;
 b=Aln0B3WfmxbLa1PSE4v2iQnjHiKtjoSA/476j+wESVeRTyoNEolZcv7+
 BPlnDrLneo+nUfhYVA1XiQiNTE0lhC4bBdC9PfdntkdbEv/eMyd0MoO04
 Rcq1HZLPM4EJG5nnHjnpdly4U0v6Q9/EZOrNaiqsPugKccMzs3IFixw1B
 8HG1KZUUfjMQgUhlK+AoQU93kMmwweRhLGJvjOLPsAJ2/0IJGRBbbANkE
 7rQ6ztDM6pVx/CrEyi6hGPzjUhfz4WTXtiDfKqAFpUUydy6QBc41i6tOk
 Kz3H8ju4WKcw4dI1eKtEKIX0jZy828DdreVvVMPU8OD9vXg6WsZV+PpAr
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Aln0B3Wf
Subject: [Intel-wired-lan] [PATCH v2 iwl-next] ice: unify PHY FW loading
 status handler for E800 devices
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, netdev@vger.kernel.org,
 Simon Horman <horms@kernel.org>, Paul Menzel <pmenzel@molgen.mpg.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Unify handling of PHY firmware load delays across all E800 family
devices. There is an existing mechanism to poll GL_MNG_FWSM_FW_LOADING_M
bit of GL_MNG_FWSM register in order to verify whether PHY FW loading
completed or not. Previously, this logic was limited to E827 variants
only.

Also, inform a user of possible delay in initialization process, by
dumping informational message in dmesg log ("Link initialization is
blocked by PHY FW initialization. Link initialization will continue
after PHY FW initialization completes.").

Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
---
v1->v2:
 - rebased
 - pasted dmesg message into the commit message
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

base-commit: f642fdeedf5c09bacf13ccb213615daba617b5b4
-- 
2.39.3

