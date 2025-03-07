Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB2BA568DF
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Mar 2025 14:26:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 34B66415D3;
	Fri,  7 Mar 2025 13:26:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mR_SAuM2E9Pr; Fri,  7 Mar 2025 13:26:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2AC11415D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741353993;
	bh=au1+XEsbZjBUedl7AZpY6YZOJvzcoZAcKD2n95lRmCw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5Ndar4fKNvlebGfSCfU5Vjwxpz5x5d56tBW0aplsPkBRttBfCkYb81dpsdWEIQQ13
	 Ct72Ijewm+eWT7AHwTRcz+LdaaPElAJK0c28MLEg2TLzR5IS1l11pFLN1BqAzyHGQu
	 vR8azvm8wo+8cT76UNCLFAsfQAa4pHKZOY3Ds2YyrpoeAsBF6XPEzx+5k5ZyYEKh0R
	 UHVMGz9bgNwyeCWiSrbN65K/ycrj0CFLw9kkB0O7ybggGc5bZv4DW55DfjUOqqEQ9t
	 H/x9HRL6zEs3NXgtRkvFnMcyYCrS4U4kSlAEK4L4fo4ckSAZyyX2b7sa4GtAGYtSId
	 4EaZrIT/IU6XA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2AC11415D6;
	Fri,  7 Mar 2025 13:26:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4D1C071F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 13:26:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 305F48419A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 13:26:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rCI_Cqs01ZYr for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Mar 2025 13:26:30 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1B6F38419D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B6F38419D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1B6F38419D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 13:26:29 +0000 (UTC)
X-CSE-ConnectionGUID: Z46IuYmERDyFzMM7MtvZTg==
X-CSE-MsgGUID: om1F27tlSIy1yxBzN9LIGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="53388023"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="53388023"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 05:26:29 -0800
X-CSE-ConnectionGUID: tHeIj6rFTu+CxgaAfIjzlg==
X-CSE-MsgGUID: dUQfI1UjR02M2Bgv2v4JPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="150119509"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by orviesa002.jf.intel.com with ESMTP; 07 Mar 2025 05:26:26 -0800
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Date: Fri,  7 Mar 2025 14:25:56 +0100
Message-ID: <20250307132555.119902-2-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741353990; x=1772889990;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JaBU89FKWRGCTWx9dfd6hRY4eU7nX649tfwEAzq/P4c=;
 b=dBcAJNVs3RaoG1BdtoGm+voOtfDZuKLuWACK9yDdvPTCNhfzk1Rpltdx
 Pvfy2hfqbT5/nFxPO0y4z4ovBSBc3l1OsKN1LDvhIKJX4JF9Dah5R+Y7J
 9HuX8mno7itS2jB51Cgf9naTRB+GVda6qAT8V4pept4P2z0ps3VZwmm6b
 RWK2R3+pg8+3WC5tBim0qafVQjS+WPU7dZPm39pNprwpH33/kz6yPsIry
 zzvC2M3ftZwmR+i1lqPWW0Ev9Pf3/9ZfUzcZtj4PZs+Zdc75I9VZxpsek
 rXlS+2NzDuOWUkPsU/Tzo2xobazxrhBH89LH7U0lORooCe8i3xPePaMG3
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dBcAJNVs
Subject: [Intel-wired-lan] [iwl-next v2] ice: refactor the Tx scheduler
 feature
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

From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

Simplify the code by eliminating an unnecessary wrapper function.
Previously, ice_devlink_tx_sched_layers_get() acted as a thin wrapper
around ice_get_tx_topo_user_sel(), adding no real value but increasing
code complexity. Since both functions were only used once, the wrapper
was redundant and contributed approximately 20 lines of unnecessary
code. Remove ice_get_tx_topo_user_sel() and moves its instructions
directly into ice_devlink_tx_sched_layers_get(), improving readability
and reducing function jumps, without altering functionality.

Also remove unnecessary comment and make usage of str_enabled_disabled() in
ice_init_tx_topology().

Suggested-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
---

v1->v2:
Expanded the commit message with the motivation for the changes, no code modifications.

---

 .../net/ethernet/intel/ice/devlink/devlink.c  | 56 +++++++------------
 drivers/net/ethernet/intel/ice/ice_ddp.c      |  2 -
 drivers/net/ethernet/intel/ice/ice_main.c     |  8 +--
 3 files changed, 23 insertions(+), 43 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
index fcb199efbea5..2355e21d115c 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
@@ -529,41 +529,6 @@ ice_devlink_reload_empr_finish(struct ice_pf *pf,
 	return 0;
 }
 
-/**
- * ice_get_tx_topo_user_sel - Read user's choice from flash
- * @pf: pointer to pf structure
- * @layers: value read from flash will be saved here
- *
- * Reads user's preference for Tx Scheduler Topology Tree from PFA TLV.
- *
- * Return: zero when read was successful, negative values otherwise.
- */
-static int ice_get_tx_topo_user_sel(struct ice_pf *pf, uint8_t *layers)
-{
-	struct ice_aqc_nvm_tx_topo_user_sel usr_sel = {};
-	struct ice_hw *hw = &pf->hw;
-	int err;
-
-	err = ice_acquire_nvm(hw, ICE_RES_READ);
-	if (err)
-		return err;
-
-	err = ice_aq_read_nvm(hw, ICE_AQC_NVM_TX_TOPO_MOD_ID, 0,
-			      sizeof(usr_sel), &usr_sel, true, true, NULL);
-	if (err)
-		goto exit_release_res;
-
-	if (usr_sel.data & ICE_AQC_NVM_TX_TOPO_USER_SEL)
-		*layers = ICE_SCHED_5_LAYERS;
-	else
-		*layers = ICE_SCHED_9_LAYERS;
-
-exit_release_res:
-	ice_release_nvm(hw);
-
-	return err;
-}
-
 /**
  * ice_update_tx_topo_user_sel - Save user's preference in flash
  * @pf: pointer to pf structure
@@ -610,19 +575,36 @@ static int ice_update_tx_topo_user_sel(struct ice_pf *pf, int layers)
  * @id: the parameter ID to set
  * @ctx: context to store the parameter value
  *
+ * Reads user's preference for Tx Scheduler Topology Tree from PFA TLV.
+ *
  * Return: zero on success and negative value on failure.
  */
 static int ice_devlink_tx_sched_layers_get(struct devlink *devlink, u32 id,
 					   struct devlink_param_gset_ctx *ctx)
 {
+	struct ice_aqc_nvm_tx_topo_user_sel usr_sel = {};
 	struct ice_pf *pf = devlink_priv(devlink);
+	struct ice_hw *hw = &pf->hw;
 	int err;
 
-	err = ice_get_tx_topo_user_sel(pf, &ctx->val.vu8);
+	err = ice_acquire_nvm(hw, ICE_RES_READ);
 	if (err)
 		return err;
 
-	return 0;
+	err = ice_aq_read_nvm(hw, ICE_AQC_NVM_TX_TOPO_MOD_ID, 0,
+			      sizeof(usr_sel), &usr_sel, true, true, NULL);
+	if (err)
+		goto exit_release_res;
+
+	if (usr_sel.data & ICE_AQC_NVM_TX_TOPO_USER_SEL)
+		ctx->val.vu8 = ICE_SCHED_5_LAYERS;
+	else
+		ctx->val.vu8 = ICE_SCHED_9_LAYERS;
+
+exit_release_res:
+	ice_release_nvm(hw);
+
+	return err;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
index 69d5b1a28491..a2f738eaf02e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
@@ -2324,8 +2324,6 @@ enum ice_ddp_state ice_copy_and_init_pkg(struct ice_hw *hw, const u8 *buf,
  * @flags: pointer to descriptor flags
  * @set: 0-get, 1-set topology
  *
- * The function will get or set Tx topology
- *
  * Return: zero when set was successful, negative values otherwise.
  */
 static int
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a03e1819e6d5..a55ec9be7b1d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4550,10 +4550,10 @@ ice_init_tx_topology(struct ice_hw *hw, const struct firmware *firmware)
 	dev = ice_pf_to_dev(pf);
 	err = ice_cfg_tx_topo(hw, firmware->data, firmware->size);
 	if (!err) {
-		if (hw->num_tx_sched_layers > num_tx_sched_layers)
-			dev_info(dev, "Tx scheduling layers switching feature disabled\n");
-		else
-			dev_info(dev, "Tx scheduling layers switching feature enabled\n");
+		dev_info(dev, "Tx scheduling layers switching feature %s\n",
+			 str_enabled_disabled(hw->num_tx_sched_layers <=
+					      num_tx_sched_layers));
+
 		/* if there was a change in topology ice_cfg_tx_topo triggered
 		 * a CORER and we need to re-init hw
 		 */
-- 
2.47.0

