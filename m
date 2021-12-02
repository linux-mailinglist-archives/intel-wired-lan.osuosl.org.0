Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AAA6466878
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Dec 2021 17:40:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F91F83F6A;
	Thu,  2 Dec 2021 16:40:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AHmggLvKpTrb; Thu,  2 Dec 2021 16:40:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BEC2483F85;
	Thu,  2 Dec 2021 16:40:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 464B41BF5EA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 16:40:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 357DF40A50
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 16:40:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v8rdyrVEbc1l for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Dec 2021 16:40:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6A5CE40A40
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 16:40:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="297540771"
X-IronPort-AV: E=Sophos;i="5.87,282,1631602800"; d="scan'208";a="297540771"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 08:40:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,282,1631602800"; d="scan'208";a="513256883"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.133])
 by orsmga008.jf.intel.com with ESMTP; 02 Dec 2021 08:40:21 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  2 Dec 2021 08:38:39 -0800
Message-Id: <20211202163852.36436-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v3 01/14] ice: Refactor
 spoofcheck configuration functions
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Brett Creeley <brett.creeley@intel.com>

Add functions to configure Tx VLAN antispoof based on iproute
configuration and/or VLAN mode and VF driver support. This is needed
later so the driver can control when it can be configured. Also, add
functions that can be used to enable and disable MAC and VLAN
spoofcheck. Move spoofchk configuration during VSI setup into the
SR-IOV initialization path and into the post VSI rebuild flow for VF
VSIs.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c      |  19 ---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 159 ++++++++++++++----
 2 files changed, 128 insertions(+), 50 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 5ef959769104..2db3cd6d8907 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1125,25 +1125,6 @@ static int ice_vsi_init(struct ice_vsi *vsi, bool init_vsi)
 				cpu_to_le16(ICE_AQ_VSI_PROP_RXQ_MAP_VALID);
 	}
 
-	/* enable/disable MAC and VLAN anti-spoof when spoofchk is on/off
-	 * respectively
-	 */
-	if (vsi->type == ICE_VSI_VF) {
-		ctxt->info.valid_sections |=
-			cpu_to_le16(ICE_AQ_VSI_PROP_SECURITY_VALID);
-		if (pf->vf[vsi->vf_id].spoofchk) {
-			ctxt->info.sec_flags |=
-				ICE_AQ_VSI_SEC_FLAG_ENA_MAC_ANTI_SPOOF |
-				(ICE_AQ_VSI_SEC_TX_VLAN_PRUNE_ENA <<
-				 ICE_AQ_VSI_SEC_TX_PRUNE_ENA_S);
-		} else {
-			ctxt->info.sec_flags &=
-				~(ICE_AQ_VSI_SEC_FLAG_ENA_MAC_ANTI_SPOOF |
-				  (ICE_AQ_VSI_SEC_TX_VLAN_PRUNE_ENA <<
-				   ICE_AQ_VSI_SEC_TX_PRUNE_ENA_S));
-		}
-	}
-
 	/* Allow control frames out of main VSI */
 	if (vsi->type == ICE_VSI_PF) {
 		ctxt->info.sec_flags |= ICE_AQ_VSI_SEC_FLAG_ALLOW_DEST_OVRD;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 8f2045b7c29f..f947d936def3 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -837,6 +837,114 @@ static int ice_vf_rebuild_host_vlan_cfg(struct ice_vf *vf)
 	return 0;
 }
 
+static int ice_cfg_vlan_antispoof(struct ice_vsi *vsi, bool enable)
+{
+	struct ice_vsi_ctx *ctx;
+	int err;
+
+	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return -ENOMEM;
+
+	ctx->info.sec_flags = vsi->info.sec_flags;
+	ctx->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_SECURITY_VALID);
+
+	if (enable)
+		ctx->info.sec_flags |= ICE_AQ_VSI_SEC_TX_VLAN_PRUNE_ENA <<
+			ICE_AQ_VSI_SEC_TX_PRUNE_ENA_S;
+	else
+		ctx->info.sec_flags &= ~(ICE_AQ_VSI_SEC_TX_VLAN_PRUNE_ENA <<
+					 ICE_AQ_VSI_SEC_TX_PRUNE_ENA_S);
+
+	err = ice_update_vsi(&vsi->back->hw, vsi->idx, ctx, NULL);
+	if (err)
+		dev_err(ice_pf_to_dev(vsi->back), "Failed to configure Tx VLAN anti-spoof %s for VSI %d, error %d\n",
+			enable ? "ON" : "OFF", vsi->vsi_num, err);
+	else
+		vsi->info.sec_flags = ctx->info.sec_flags;
+
+	kfree(ctx);
+
+	return err;
+}
+
+static int ice_cfg_mac_antispoof(struct ice_vsi *vsi, bool enable)
+{
+	struct ice_vsi_ctx *ctx;
+	int err;
+
+	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return -ENOMEM;
+
+	ctx->info.sec_flags = vsi->info.sec_flags;
+	ctx->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_SECURITY_VALID);
+
+	if (enable)
+		ctx->info.sec_flags |= ICE_AQ_VSI_SEC_FLAG_ENA_MAC_ANTI_SPOOF;
+	else
+		ctx->info.sec_flags &= ~ICE_AQ_VSI_SEC_FLAG_ENA_MAC_ANTI_SPOOF;
+
+	err = ice_update_vsi(&vsi->back->hw, vsi->idx, ctx, NULL);
+	if (err)
+		dev_err(ice_pf_to_dev(vsi->back), "Failed to configure Tx MAC anti-spoof %s for VSI %d, error %d\n",
+			enable ? "ON" : "OFF", vsi->vsi_num, err);
+	else
+		vsi->info.sec_flags = ctx->info.sec_flags;
+
+	kfree(ctx);
+
+	return err;
+}
+
+/**
+ * ice_vsi_ena_spoofchk - enable Tx spoof checking for this VSI
+ * @vsi: VSI to enable Tx spoof checking for
+ */
+static int ice_vsi_ena_spoofchk(struct ice_vsi *vsi)
+{
+	int err;
+
+	err = ice_cfg_vlan_antispoof(vsi, true);
+	if (err)
+		return err;
+
+	return ice_cfg_mac_antispoof(vsi, true);
+}
+
+/**
+ * ice_vsi_dis_spoofchk - disable Tx spoof checking for this VSI
+ * @vsi: VSI to disable Tx spoof checking for
+ */
+static int ice_vsi_dis_spoofchk(struct ice_vsi *vsi)
+{
+	int err;
+
+	err = ice_cfg_vlan_antispoof(vsi, false);
+	if (err)
+		return err;
+
+	return ice_cfg_mac_antispoof(vsi, false);
+}
+
+/**
+ * ice_vf_set_spoofchk_cfg - apply Tx spoof checking setting
+ * @vf: VF set spoofchk for
+ * @vsi: VSI associated to the VF
+ */
+static int
+ice_vf_set_spoofchk_cfg(struct ice_vf *vf, struct ice_vsi *vsi)
+{
+	int err;
+
+	if (vf->spoofchk)
+		err = ice_vsi_ena_spoofchk(vsi);
+	else
+		err = ice_vsi_dis_spoofchk(vsi);
+
+	return err;
+}
+
 /**
  * ice_vf_rebuild_host_mac_cfg - add broadcast and the VF's perm_addr/LAA
  * @vf: VF to add MAC filters for
@@ -1344,6 +1452,10 @@ static void ice_vf_rebuild_host_cfg(struct ice_vf *vf)
 		dev_err(dev, "failed to rebuild Tx rate limiting configuration for VF %u\n",
 			vf->vf_id);
 
+	if (ice_vf_set_spoofchk_cfg(vf, vsi))
+		dev_err(dev, "failed to rebuild spoofchk configuration for VF %d\n",
+			vf->vf_id);
+
 	/* rebuild aggregator node config for main VF VSI */
 	ice_vf_rebuild_aggregator_node_cfg(vsi);
 }
@@ -1758,6 +1870,13 @@ static int ice_init_vf_vsi_res(struct ice_vf *vf)
 		goto release_vsi;
 	}
 
+	err = ice_vf_set_spoofchk_cfg(vf, vsi);
+	if (err) {
+		dev_warn(dev, "Failed to initialize spoofchk setting for VF %d\n",
+			 vf->vf_id);
+		goto release_vsi;
+	}
+
 	vf->num_mac = 1;
 
 	return 0;
@@ -2891,7 +3010,6 @@ int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_pf *pf = np->vsi->back;
-	struct ice_vsi_ctx *ctx;
 	struct ice_vsi *vf_vsi;
 	struct device *dev;
 	struct ice_vf *vf;
@@ -2924,37 +3042,16 @@ int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena)
 		return 0;
 	}
 
-	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
-	if (!ctx)
-		return -ENOMEM;
-
-	ctx->info.sec_flags = vf_vsi->info.sec_flags;
-	ctx->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_SECURITY_VALID);
-	if (ena) {
-		ctx->info.sec_flags |=
-			ICE_AQ_VSI_SEC_FLAG_ENA_MAC_ANTI_SPOOF |
-			(ICE_AQ_VSI_SEC_TX_VLAN_PRUNE_ENA <<
-			 ICE_AQ_VSI_SEC_TX_PRUNE_ENA_S);
-	} else {
-		ctx->info.sec_flags &=
-			~(ICE_AQ_VSI_SEC_FLAG_ENA_MAC_ANTI_SPOOF |
-			  (ICE_AQ_VSI_SEC_TX_VLAN_PRUNE_ENA <<
-			   ICE_AQ_VSI_SEC_TX_PRUNE_ENA_S));
-	}
-
-	ret = ice_update_vsi(&pf->hw, vf_vsi->idx, ctx, NULL);
-	if (ret) {
-		dev_err(dev, "Failed to %sable spoofchk on VF %d VSI %d\n error %d\n",
-			ena ? "en" : "dis", vf->vf_id, vf_vsi->vsi_num, ret);
-		goto out;
-	}
-
-	/* only update spoofchk state and VSI context on success */
-	vf_vsi->info.sec_flags = ctx->info.sec_flags;
-	vf->spoofchk = ena;
+	if (ena)
+		ret = ice_vsi_ena_spoofchk(vf_vsi);
+	else
+		ret = ice_vsi_dis_spoofchk(vf_vsi);
+	if (ret)
+		dev_err(dev, "Failed to set spoofchk %s for VF %d VSI %d\n error %d\n",
+			ena ? "ON" : "OFF", vf->vf_id, vf_vsi->vsi_num, ret);
+	else
+		vf->spoofchk = ena;
 
-out:
-	kfree(ctx);
 	return ret;
 }
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
