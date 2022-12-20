Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2FE65240F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Dec 2022 17:01:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 040C74090E;
	Tue, 20 Dec 2022 16:01:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 040C74090E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671552112;
	bh=oUWuwrkL2eTcl4HnrT3GyQ6nnoZsRQXxdMfArvx8uvs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=qsTqSeeFx2wGwAcX6nU3N9PHrW+0e5LAZ9IvE26eqHdectRtD/mhh8tmZ0xEapesG
	 5zQ3qFaIsuOzVDQtPieoXVG/FXK+4dyHxWUTNDTw0q4hVNvIZA5hG3jX/s/hXHaA6M
	 wnzlqFlh7vYI4s+EvuZGB6HNLmywBz7iC7eJR0onZDNFTPWSxP1bSVud+MlsvpS06v
	 hWrs0VvxJ6l+x7QP85jn/gzLwiaTVmMkv3paf6B/3rstCdZ8h1quCMVltQi4fgwniS
	 ysNPA3lRjank3QdlWBJs0k+NFtl6FLZkoN4S6nzRp6ViKCWBYMmX6rQgcOa3jhNk4I
	 n7mYpEuKPdDRw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6o1VANfZ85f7; Tue, 20 Dec 2022 16:01:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8C15F402C3;
	Tue, 20 Dec 2022 16:01:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C15F402C3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C9ADE1BF4DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 11:57:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9C95241299
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 11:57:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C95241299
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T0Fl8GyTCfXz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Dec 2022 11:57:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DDE98408B6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DDE98408B6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 11:57:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="307276126"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="307276126"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 03:57:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="683381381"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="683381381"
Received: from sczapladev.igk.intel.com ([10.237.94.132])
 by orsmga001.jf.intel.com with ESMTP; 20 Dec 2022 03:57:14 -0800
From: Sebastian Czapla <sebastianx.czapla@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Dec 2022 12:57:06 +0100
Message-Id: <20221220115706.3394297-1-sebastianx.czapla@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 20 Dec 2022 16:01:37 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671537436; x=1703073436;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tHg4F+jZx4YtKzAkjXE3mP2uh4erAVPOPH46OBK4FeU=;
 b=OH1XMaZ2mqnmFFRzAJtIdznjgipOaRvdkBewkSr0I1aS1ue12II6Y0LT
 0lCyfmOvFyki1CXYgTjSwNFlEJQUKkCf7tM/Mp4MvUYZ9V0SFeXL3aqR9
 86kZZSUIhsvYqcu5+KMGSr8Zkk9ZHip8CSppFtPsJSGQ9Xt1QkxgsGiI2
 xPxkZgIER7b6ffS09Q3ZUcdNxjVlXlaqzJdf/Xrv1FMquoA+GUD4beYMf
 sEeFVmD5dyq6bAyaZUeHCeld+wKKr+R97GkwZKVgJeiJare7lyeWwInhF
 tn+6LT1eVQXOzCu2VB/THKTnaUOSOHuluW40CzLrsqXQ+umiAzRmvDcGz
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OH1XMaZ2
Subject: [Intel-wired-lan] [PATCH net-next v1] i40e: Add flag for disabling
 VF source pruning
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
Cc: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>,
 Sebastian Czapla <sebastianx.czapla@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Allow user to change source pruning for VF VSIs. This allows VFs to
receive packets with MAC_SRC and MAC_DST equal to VFs mac.

Added priv flag vf-source-pruning to allow user to change
source pruning setting. Reset all VSIs to commit the setting.
If vf-source-pruning is off and VF is trusted on with spoofchk off
then disable source pruning on specific VF takes effect.

Without this patch it is not possible to change source pruning
setting on VF VSIs.

Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Sebastian Czapla <sebastianx.czapla@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h        |  2 +
 .../net/ethernet/intel/i40e/i40e_ethtool.c    | 13 +++-
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 70 ++++++++++++++-----
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 66 ++++++++++++++++-
 .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  2 +
 5 files changed, 134 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 60e351665c70..b1e4fa903e57 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -603,6 +603,7 @@ struct i40e_pf {
  *   in abilities field of i40e_aq_set_phy_config structure
  */
 #define I40E_FLAG_TOTAL_PORT_SHUTDOWN_ENABLED	BIT(27)
+#define I40E_FLAG_VF_SOURCE_PRUNING		BIT(31)
 
 	struct i40e_client_instance *cinst;
 	bool stat_offsets_loaded;
@@ -1287,6 +1288,7 @@ void i40e_ptp_stop(struct i40e_pf *pf);
 int i40e_ptp_alloc_pins(struct i40e_pf *pf);
 int i40e_update_adq_vsi_queues(struct i40e_vsi *vsi, int vsi_offset);
 int i40e_is_vsi_uplink_mode_veb(struct i40e_vsi *vsi);
+i40e_status i40e_configure_source_pruning(struct i40e_vsi *vsi, bool enable);
 i40e_status i40e_get_partition_bw_setting(struct i40e_pf *pf);
 i40e_status i40e_set_partition_bw_setting(struct i40e_pf *pf);
 i40e_status i40e_commit_partition_bw_setting(struct i40e_pf *pf);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 887a735fe2a7..781824e2c011 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -457,6 +457,7 @@ static const struct i40e_priv_flags i40e_gstrings_priv_flags[] = {
 	I40E_PRIV_FLAG("base-r-fec", I40E_FLAG_BASE_R_FEC, 0),
 	I40E_PRIV_FLAG("vf-vlan-pruning",
 		       I40E_FLAG_VF_VLAN_PRUNING, 0),
+	I40E_PRIV_FLAG("vf-source-pruning", I40E_FLAG_VF_SOURCE_PRUNING, 0),
 };
 
 #define I40E_PRIV_FLAGS_STR_LEN ARRAY_SIZE(i40e_gstrings_priv_flags)
@@ -5294,7 +5295,8 @@ static int i40e_set_priv_flags(struct net_device *dev, u32 flags)
 	if (changed_flags & I40E_FLAG_DISABLE_FW_LLDP)
 		reset_needed = I40E_PF_RESET_AND_REBUILD_FLAG;
 	if (changed_flags & (I40E_FLAG_VEB_STATS_ENABLED |
-	    I40E_FLAG_LEGACY_RX | I40E_FLAG_SOURCE_PRUNING_DISABLED))
+	    I40E_FLAG_LEGACY_RX | I40E_FLAG_SOURCE_PRUNING_DISABLED |
+	    I40E_FLAG_VF_SOURCE_PRUNING))
 		reset_needed = BIT(__I40E_PF_RESET_REQUESTED);
 
 	/* Before we finalize any flag changes, we need to perform some
@@ -5446,6 +5448,15 @@ static int i40e_set_priv_flags(struct net_device *dev, u32 flags)
 		}
 	}
 
+	if (changed_flags & I40E_FLAG_VF_SOURCE_PRUNING) {
+		if (orig_flags & I40E_FLAG_VF_SOURCE_PRUNING)
+			dev_info(&pf->pdev->dev,
+				 "VF source pruning disabled. To take effect please make sure to disable spoof checking and enable trust on selected VF's\n");
+		else
+			dev_info(&pf->pdev->dev,
+				 "VF source pruning enabled on all VF's\n");
+	}
+
 	/* Now that we've checked to ensure that the new flags are valid, load
 	 * them into place. Since we only modify flags either (a) during
 	 * initialization or (b) while holding the RTNL lock, we don't need
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 94feea3b2599..573773a4e3aa 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -12874,6 +12874,9 @@ static int i40e_sw_init(struct i40e_pf *pf)
 		dev_info(&pf->pdev->dev,
 			 "total-port-shutdown was enabled, link-down-on-close is forced on\n");
 	}
+	/* VSIs by default have source pruning enabled */
+	pf->flags |= I40E_FLAG_VF_SOURCE_PRUNING;
+
 	mutex_init(&pf->switch_mutex);
 
 sw_init_done:
@@ -13906,6 +13909,54 @@ int i40e_is_vsi_uplink_mode_veb(struct i40e_vsi *vsi)
 	return 0;
 }
 
+/**
+ * i40e_configure_source_pruning
+ * @vsi: VSI to disable source pruning on
+ * @enable: enable or disable pruning
+ *
+ * Enable/disable vsi source pruning based on enable flag
+ **/
+i40e_status i40e_configure_source_pruning(struct i40e_vsi *vsi, bool enable)
+{
+	struct i40e_pf *pf = vsi->back;
+	struct i40e_hw *hw = &pf->hw;
+	struct i40e_vsi_context ctxt;
+	i40e_status ret;
+
+	memset(&ctxt, 0, sizeof(ctxt));
+
+	ctxt.seid = vsi->seid;
+	ctxt.pf_num = hw->pf_id;
+	if (vsi->type == I40E_VSI_SRIOV)
+		ctxt.vf_num = vsi->vf_id + hw->func_caps.vf_base_id;
+	ret = i40e_aq_get_vsi_params(hw, &ctxt, NULL);
+	if (ret) {
+		dev_info(&pf->pdev->dev,
+			 "couldn't get vsi config, err %s\n",
+			 i40e_stat_str(hw, ret));
+		return ret;
+	}
+
+	if (vsi->type == I40E_VSI_MAIN)
+		ctxt.flags = I40E_AQ_VSI_TYPE_PF;
+	else if (vsi->type == I40E_VSI_SRIOV)
+		ctxt.flags = I40E_AQ_VSI_TYPE_VF;
+
+	ctxt.info.valid_sections = cpu_to_le16(I40E_AQ_VSI_PROP_SWITCH_VALID);
+	if (enable)
+		ctxt.info.switch_id &=
+			~cpu_to_le16(I40E_AQ_VSI_SW_ID_FLAG_LOCAL_LB);
+	else
+		ctxt.info.switch_id |=
+			cpu_to_le16(I40E_AQ_VSI_SW_ID_FLAG_LOCAL_LB);
+	ret = i40e_aq_update_vsi_params(&pf->hw, &ctxt, NULL);
+	if (ret)
+		dev_err(&pf->pdev->dev,
+			"Update VSI failed, err %s\n",
+			i40e_stat_str(&pf->hw, ret));
+	return ret;
+}
+
 /**
  * i40e_add_vsi - Add a VSI to the switch
  * @vsi: the VSI being configured
@@ -13960,24 +14011,9 @@ static int i40e_add_vsi(struct i40e_vsi *vsi)
 		 * the VSI to disable source pruning.
 		 */
 		if (pf->flags & I40E_FLAG_SOURCE_PRUNING_DISABLED) {
-			memset(&ctxt, 0, sizeof(ctxt));
-			ctxt.seid = pf->main_vsi_seid;
-			ctxt.pf_num = pf->hw.pf_id;
-			ctxt.vf_num = 0;
-			ctxt.info.valid_sections |=
-				     cpu_to_le16(I40E_AQ_VSI_PROP_SWITCH_VALID);
-			ctxt.info.switch_id =
-				   cpu_to_le16(I40E_AQ_VSI_SW_ID_FLAG_LOCAL_LB);
-			ret = i40e_aq_update_vsi_params(hw, &ctxt, NULL);
-			if (ret) {
-				dev_info(&pf->pdev->dev,
-					 "update vsi failed, err %s aq_err %s\n",
-					 i40e_stat_str(&pf->hw, ret),
-					 i40e_aq_str(&pf->hw,
-						     pf->hw.aq.asq_last_status));
-				ret = -ENOENT;
+			ret = i40e_configure_source_pruning(vsi, false);
+			if (ret)
 				goto err;
-			}
 		}
 
 		/* MFP mode setup queue map and update VSI */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 635f93d60318..d36bea6ddce3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -590,6 +590,61 @@ static int i40e_config_iwarp_qvlist(struct i40e_vf *vf,
 	return ret;
 }
 
+/**
+ * i40e_set_source_pruning
+ * @vf: pointer to the VF info
+ *
+ * This function set appropriate source pruning flag for vf.
+ * To disable source pruning on selected VFs the PF should set
+ * private flag 'vf-source-pruning' off, and VF should be set
+ * 'trusted' on and 'spoofchk' off.
+ * Otherwise, source pruning should still be enabled on VF.
+ **/
+static int i40e_set_source_pruning(struct i40e_vf *vf)
+{
+	struct i40e_pf *pf = vf->pf;
+	struct i40e_vsi *vsi;
+	bool pf_sp;
+
+	vsi = pf->vsi[vf->lan_vsi_idx];
+	pf_sp = !!(pf->flags & I40E_FLAG_VF_SOURCE_PRUNING);
+
+	if (pf_sp) {
+		if (!vf->source_pruning) {
+			vf->source_pruning = true;
+			dev_info(&pf->pdev->dev,
+				 "Source pruning enabled on VF %d\n",
+				 vf->vf_id);
+		}
+		return 0;
+	}
+
+	if (!vf->source_pruning && (!vf->trusted || vf->spoofchk)) {
+		if (vf->spoofchk &&
+		    test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
+			/* enable source pruning beyond vf reset */
+			if (i40e_configure_source_pruning(vsi, true))
+				return -EIO;
+		}
+		vf->source_pruning = true;
+		dev_info(&pf->pdev->dev,
+			 "Source pruning enabled on VF %d\n", vf->vf_id);
+	} else if ((vf->source_pruning && vf->trusted &&
+		   !vf->spoofchk) || !vf->source_pruning) {
+		if (i40e_configure_source_pruning(vsi, false))
+			return -EIO;
+
+		if (vf->source_pruning) {
+			vf->source_pruning = false;
+			dev_info(&pf->pdev->dev,
+				 "Source pruning disabled on VF %d\n",
+				 vf->vf_id);
+		}
+	}
+
+	return 0;
+}
+
 /**
  * i40e_config_vsi_tx_queue
  * @vf: pointer to the VF info
@@ -847,6 +902,9 @@ static int i40e_alloc_vsi_res(struct i40e_vf *vf, u8 idx)
 				vf->vf_id, ret);
 	}
 
+	if (!idx)
+		ret = i40e_set_source_pruning(vf);
+
 error_alloc_vsi_res:
 	return ret;
 }
@@ -1829,6 +1887,8 @@ int i40e_alloc_vfs(struct i40e_pf *pf, u16 num_alloc_vfs)
 
 		set_bit(I40E_VF_STATE_PRE_ENABLE, &vfs[i].vf_states);
 
+		/* assign source pruning default value */
+		vfs[i].source_pruning = true;
 	}
 	pf->num_alloc_vfs = num_alloc_vfs;
 
@@ -4717,7 +4777,6 @@ int i40e_ndo_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool enable)
 	if (enable == vf->spoofchk)
 		goto out;
 
-	vf->spoofchk = enable;
 	memset(&ctxt, 0, sizeof(ctxt));
 	ctxt.seid = pf->vsi[vf->lan_vsi_idx]->seid;
 	ctxt.pf_num = pf->hw.pf_id;
@@ -4730,7 +4789,12 @@ int i40e_ndo_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool enable)
 		dev_err(&pf->pdev->dev, "Error %d updating VSI parameters\n",
 			ret);
 		ret = -EIO;
+		goto out;
 	}
+	vf->spoofchk = enable;
+
+	ret = i40e_set_source_pruning(vf);
+
 out:
 	clear_bit(__I40E_VIRTCHNL_OP_PENDING, pf->state);
 	return ret;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
index 358bbdb58795..6c5e4979f21e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
@@ -80,6 +80,8 @@ struct i40e_vf {
 	u16 port_vlan_id;
 	bool pf_set_mac;	/* The VMM admin set the VF MAC address */
 	bool trusted;
+	bool source_pruning;
+
 
 	/* VSI indices - actual VSI pointers are maintained in the PF structure
 	 * When assigned, these will be non-zero, because VSI 0 is always
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
