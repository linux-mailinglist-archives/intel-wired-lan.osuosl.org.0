Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C9EC2A45F87
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Feb 2025 13:41:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 70600403AA;
	Wed, 26 Feb 2025 12:41:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hLn9ww3nMKd3; Wed, 26 Feb 2025 12:41:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 77CB840359
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740573699;
	bh=AVQGMS6TXJi8NVapbCIPqmmWNULyiwNOzzYh95qNo6Q=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=TMb2Sh80jB992JKgbiW57gKW+clVxx/X7Lg7q+QU38cXfS2/YZT3rEJlAeumS4Abp
	 wR46fHjm6jqEq090csdqRenY8kJfkqvIAhwkZ380rKsT2fA64QSJJVG49Bgp1DfuBk
	 GSvYygXme0QEtzsYsU9W/PBLx55wnXNPttN0Gajz4sxrEDQSAooQYqFxGgovxUseMs
	 JMBN3TqDNRO0NYM3aiRLwuVZqK/vjD12p9U1WCShUN/dBK4qtnVbQ1zkVLFT4p8mUG
	 7xWbtoaJ057pfiNGa9ccdk8qmf3DtjMKNCrQCUKn83YC9W6NvGODIHDxet2rRML/Nw
	 /LQBesCNwZ36A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 77CB840359;
	Wed, 26 Feb 2025 12:41:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 846AC94F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 12:41:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 738BC60B39
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 12:41:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zo3KcUS2s-Pj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Feb 2025 12:41:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9550560632
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9550560632
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9550560632
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 12:41:36 +0000 (UTC)
X-CSE-ConnectionGUID: 6Ksb+gvJSwWJhuCy+cjXSw==
X-CSE-MsgGUID: 472szwVLQDO5mtJ32J+w0g==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="41259258"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="41259258"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 04:41:35 -0800
X-CSE-ConnectionGUID: OzUplYlUT0S491KkA4jXBA==
X-CSE-MsgGUID: f72xxEfzQOapx08Ge0Mwdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="116882902"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa008.fm.intel.com with ESMTP; 26 Feb 2025 04:41:33 -0800
Received: from ilmater.igk.intel.com (ilmater.igk.intel.com [10.123.220.50])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 19ECE12419;
 Wed, 26 Feb 2025 12:41:32 +0000 (GMT)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Wed, 26 Feb 2025 12:33:56 +0100
Message-ID: <20250226113409.446325-1-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740573697; x=1772109697;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2Wtl/99KUY6VSqZjgNxx680yUju/s18Trdq/SjzInIA=;
 b=bbKOE0cgTGd1yydGlqrnz9AdtAOOTYWb4whoJAcUx+qOuZ5tbJ2obgqC
 fe2WXqpYON+/gjMkRDFKXXzOUaOLfxX0qjBACr6Y12W5A8hUKdPNisFiZ
 6eQxG5yvEAb64SB18T9aM+k9DMKaOmwbtud/rcmQRRqTOjMd51kAfXSeQ
 5wyZ4ppkHBRzg6SwmN1ZaqSLrLqzPz7clNW4XnayAaPMhqGVJI2vT27rc
 6EFwBGEKJGyYoqZO4+PkP74M9ivOnm6Q6Sak5UCh3B9BL4dC2PdIcN3/L
 mazcFjKVdpkVN2ncpIUUGx+8oBEJ8qRs+AwWLi6h4X9wSOy+L3MEQ88Qo
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bbKOE0cg
Subject: [Intel-wired-lan] [PATCH iwl-next v1] ice: refactor the Tx
 scheduler feature
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

Embed ice_get_tx_topo_user_sel() inside the only caller:
ice_devlink_tx_sched_layers_get().
Instead of jump from the wrapper to the function that does "get" operation
it does "get" itself.

Remove unnecessary comment and make usage of str_enabled_disabled()
in ice_init_tx_topology().

Suggested-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
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
index b084839eb811..9d9cad81b336 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4544,10 +4544,10 @@ ice_init_tx_topology(struct ice_hw *hw, const struct firmware *firmware)
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
2.48.1

