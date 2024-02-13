Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BE68529C4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 08:23:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E441460B4C;
	Tue, 13 Feb 2024 07:23:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oFQR56D3T9gd; Tue, 13 Feb 2024 07:23:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2567160B3E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707809029;
	bh=TCi8F5/6DXYyKkBxxeeqYOUOJ2WHUDKi7rFRFBFhLQI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UOmz49ht6bELWoVVzmVE9B8ikc8wo2+si26lC63Yqw1uNY4b2GkNuF3dBZVKFcoMB
	 bCp+LQ4sB45QwsiBIYLVB4s9TxLE3+MD6kbj+eh4ULip9kQZW30wYwoN86/xJo2d+C
	 81hJqfoPEfx/3dU8T6/fmcfm/Ufq5uUMfjQhErmMTjjF/n0qyiGf3c8CQV9aTYdV26
	 ZZHuU4yKLoRBErxXscCc0hZ8MLhsnGDTLjX6QEpGPQi9XkaT3E9UhthZQHWPLf0XhT
	 Cpkvu+m2tdb0SNBDuHBD6c4h3SBucA4Mv5nJtoeJ0E66o/0TlHJJRHgPqbo5iELGC9
	 82Nm3g+jvCbDQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2567160B3E;
	Tue, 13 Feb 2024 07:23:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5B0D61BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 07:23:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 468064085C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 07:23:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1smQSja-Z1dj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 07:23:44 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6259940833
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6259940833
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6259940833
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 07:23:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="27248038"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; d="scan'208";a="27248038"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 23:23:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; 
   d="scan'208";a="7385481"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa003.fm.intel.com with ESMTP; 12 Feb 2024 23:23:40 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Feb 2024 08:27:22 +0100
Message-ID: <20240213072724.77275-14-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
References: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707809024; x=1739345024;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VmI/PtpXcW9Gvn2IejRZMeIizERy58OcwOlW6tQ82MA=;
 b=YigdkLWPUmFaeHE94ah84GCA2MZ5cle7hupchNNyx/7nzJhSqJloN0Ye
 dd3jvQKOwSbQomTNKXshTzz92e0MCtxJqkDAdPRituEpxD+8ddy/p3o7i
 FLpWFlIaNfU82McwgaA3HLBTi9vUpkxg/VrTk9HeQKDj4PU+duKDkYxkQ
 oyTae34arUlj4NAwFYiH7HxHJNQhRen+yDdwJyP8xuE4QELgqP6P0Vhez
 8xnH5kF8nU23VHa6Dd2tE88QrJgll0gTb5NS+Bs5rq5FHdKeM5eKKmy0S
 SxmwgC527/NAsHDhmtSYXPG40pRQjtYVOHF+5EQwyTSBtR4F6Z7TtseCC
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YigdkLWP
Subject: [Intel-wired-lan] [iwl-next v1 13/15] ice: support subfunction
 devlink Tx topology
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 netdev@vger.kernel.org, michal.kubiak@intel.com, pio.raczynski@gmail.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Flow for creating Tx topology is the same as for VF port representors,
but the devlink port is stored in different place (sf->devlink_port).

When creating VF devlink lock isn't taken, when creating subfunction it
is. Setting Tx topology function needs to take this lock, check if it
was taken before to not do it twice.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_devlink.c | 14 ++++++++++++--
 drivers/net/ethernet/intel/ice/ice_repr.c    | 14 +++++++++-----
 2 files changed, 21 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 6278ff3eb7c9..503e175140ad 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -595,6 +595,7 @@ static void ice_traverse_tx_tree(struct devlink *devlink, struct ice_sched_node
 				 struct ice_sched_node *tc_node, struct ice_pf *pf)
 {
 	struct devlink_rate *rate_node = NULL;
+	struct ice_dynamic_port *sf;
 	struct ice_vf *vf;
 	int i;
 
@@ -606,6 +607,7 @@ static void ice_traverse_tx_tree(struct devlink *devlink, struct ice_sched_node
 		/* create root node */
 		rate_node = devl_rate_node_create(devlink, node, node->name, NULL);
 	} else if (node->vsi_handle &&
+		   pf->vsi[node->vsi_handle]->type == ICE_VSI_VF &&
 		   pf->vsi[node->vsi_handle]->vf) {
 		vf = pf->vsi[node->vsi_handle]->vf;
 		if (!vf->devlink_port.devlink_rate)
@@ -614,6 +616,16 @@ static void ice_traverse_tx_tree(struct devlink *devlink, struct ice_sched_node
 			 */
 			devl_rate_leaf_create(&vf->devlink_port, node,
 					      node->parent->rate_node);
+	} else if (node->vsi_handle &&
+		   pf->vsi[node->vsi_handle]->type == ICE_VSI_SF &&
+		   pf->vsi[node->vsi_handle]->sf) {
+		sf = pf->vsi[node->vsi_handle]->sf;
+		if (!sf->devlink_port.devlink_rate)
+			/* leaf nodes doesn't have children
+			 * so we don't set rate_node
+			 */
+			devl_rate_leaf_create(&sf->devlink_port, node,
+					      node->parent->rate_node);
 	} else if (node->info.data.elem_type != ICE_AQC_ELEM_TYPE_LEAF &&
 		   node->parent->rate_node) {
 		rate_node = devl_rate_node_create(devlink, node, node->name,
@@ -645,10 +657,8 @@ int ice_devlink_rate_init_tx_topology(struct devlink *devlink, struct ice_vsi *v
 
 	tc_node = pi->root->children[0];
 	mutex_lock(&pi->sched_lock);
-	devl_lock(devlink);
 	for (i = 0; i < tc_node->num_children; i++)
 		ice_traverse_tx_tree(devlink, tc_node->children[i], tc_node, pf);
-	devl_unlock(devlink);
 	mutex_unlock(&pi->sched_lock);
 
 	return 0;
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index 125bcf2e4c00..fb0171afa43e 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -380,19 +380,17 @@ static void ice_repr_rem_vf(struct ice_repr *repr)
 
 static void ice_repr_rem_sf(struct ice_repr *repr)
 {
+	devl_rate_leaf_destroy(&repr->sf->devlink_port);
 	unregister_netdev(repr->netdev);
 }
 
-static void ice_repr_set_tx_topology(struct ice_pf *pf)
+static void ice_repr_set_tx_topology(struct ice_pf *pf, struct devlink *devlink)
 {
-	struct devlink *devlink;
-
 	/* only export if ADQ and DCB disabled and eswitch enabled*/
 	if (ice_is_adq_active(pf) || ice_is_dcb_active(pf) ||
 	    !ice_is_switchdev_running(pf))
 		return;
 
-	devlink = priv_to_devlink(pf);
 	ice_devlink_rate_init_tx_topology(devlink, ice_get_main_vsi(pf));
 }
 
@@ -444,6 +442,7 @@ static struct ice_repr *ice_repr_create(struct ice_vsi *src_vsi)
 static int ice_repr_add_vf(struct ice_repr *repr)
 {
 	struct ice_vf *vf = repr->vf;
+	struct devlink *devlink;
 	int err;
 
 	err = ice_devlink_create_vf_port(vf);
@@ -456,7 +455,9 @@ static int ice_repr_add_vf(struct ice_repr *repr)
 		goto err_netdev;
 
 	ice_virtchnl_set_repr_ops(vf);
-	ice_repr_set_tx_topology(vf->pf);
+
+	devlink = priv_to_devlink(vf->pf);
+	ice_repr_set_tx_topology(vf->pf, devlink);
 
 	return 0;
 
@@ -493,6 +494,9 @@ static int ice_repr_add_sf(struct ice_repr *repr)
 	struct ice_dynamic_port *sf = repr->sf;
 
 	SET_NETDEV_DEVLINK_PORT(repr->netdev, &sf->devlink_port);
+
+	ice_repr_set_tx_topology(sf->vsi->back, priv_to_devlink(sf->vsi->back));
+
 	return ice_repr_reg_netdev(repr->netdev, &ice_repr_sf_netdev_ops);
 }
 
-- 
2.42.0

