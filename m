Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1A28C3D4B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2024 10:33:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C6DA80EAE;
	Mon, 13 May 2024 08:33:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hkj5zG3CMLF0; Mon, 13 May 2024 08:33:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5AE82838AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715589204;
	bh=83i1u19wfiwDJCndxuNBvKJOybkrIf3K+3L/3KGOPow=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tVNn5QqLbCWGtMxHsVWXsZ3vjt4n0W2ZvoeD00Ip/3kqo4u0dK49YJ407jG717Pyb
	 pUvhAADp30h1LTPep64nhCpzaIpmTilHatt7UOIzZDAUDwAgAXVG1nEaTsjjy0y9UU
	 eJdgqgXTsngrinj8SZYOkZoOtGTKhwVeFK6WKTfVN8xb62ETyNchj6gdE7aDYl9GPx
	 MeeGNoIg4+5Ldr+2Oa70dGGiqqA4TDcTy0skMIhmRN13WLSiuPHbJ4C/f3R9A12lXI
	 sm2M0Jg3az7L3FtdMIAObHiV7g4SgXDr8ceoDLYDm/diXa1eS5fead11ScuOE2BSHS
	 SpHOSJZ3bPsuA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5AE82838AF;
	Mon, 13 May 2024 08:33:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1DF061BF86C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 08:33:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0837F410BB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 08:33:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CwfhhrSjGlHy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2024 08:33:16 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C455A4109D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C455A4109D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C455A4109D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 08:33:15 +0000 (UTC)
X-CSE-ConnectionGUID: lU2qpIIRSNKXDWnDAN0usA==
X-CSE-MsgGUID: sMxNvbF4Tny0SrlcMu90Lw==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="22914888"
X-IronPort-AV: E=Sophos;i="6.08,157,1712646000"; d="scan'208";a="22914888"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 01:33:16 -0700
X-CSE-ConnectionGUID: Le6IqeusRYWKNOB1mjWEuQ==
X-CSE-MsgGUID: T7hfFznrSFOp73MWeSzQLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,157,1712646000"; d="scan'208";a="30303657"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa006.fm.intel.com with ESMTP; 13 May 2024 01:33:13 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 May 2024 10:37:33 +0200
Message-ID: <20240513083735.54791-14-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240513083735.54791-1-michal.swiatkowski@linux.intel.com>
References: <20240513083735.54791-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715589196; x=1747125196;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C/EWifzkSNWIuKFqdcq9a3AmjIXnAVjbBnwdZsSvHiU=;
 b=Okcf1srRPfQch1OuicL+NY4fwcdLFq4sfbgN3XdUuquOYclMX4186oDU
 9plkddS5TQaFLWKPdihl7Fr4hCdwrLJn/H+NGdkm2gH6lW7ElDAJVUYx4
 Vo4tD35npvi4jpwgDMbD4H98Jufgx7DlLYLamVgltcjNIupJb3mY3zpyn
 8QouhuWGt58EiIdPYg+pgquo+1EnfBtA3MLv6sZLfcSXCRXKp5WfkjGmx
 1mN8TgUpsNHoXfa0/hqtHpi1LmMFtpkqP457PvPICfGLqNzjVQKBXQkDt
 aIaA2GX9EF8H5z3id9y1tjoATCluYQoMvnEAfAnrW6r8e1nk/ekwwsy1t
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Okcf1srR
Subject: [Intel-wired-lan] [iwl-next v2 13/15] ice: support subfunction
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 michal.kubiak@intel.com, pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com
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
 drivers/net/ethernet/intel/ice/devlink/devlink.c     | 12 ++++++++++++
 .../net/ethernet/intel/ice/devlink/devlink_port.c    |  3 ++-
 drivers/net/ethernet/intel/ice/ice_repr.c            | 12 +++++++-----
 3 files changed, 21 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
index c1fe3726f6c0..22aa19c3c784 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
@@ -746,6 +746,7 @@ static void ice_traverse_tx_tree(struct devlink *devlink, struct ice_sched_node
 				 struct ice_sched_node *tc_node, struct ice_pf *pf)
 {
 	struct devlink_rate *rate_node = NULL;
+	struct ice_dynamic_port *sf;
 	struct ice_vf *vf;
 	int i;
 
@@ -757,6 +758,7 @@ static void ice_traverse_tx_tree(struct devlink *devlink, struct ice_sched_node
 		/* create root node */
 		rate_node = devl_rate_node_create(devlink, node, node->name, NULL);
 	} else if (node->vsi_handle &&
+		   pf->vsi[node->vsi_handle]->type == ICE_VSI_VF &&
 		   pf->vsi[node->vsi_handle]->vf) {
 		vf = pf->vsi[node->vsi_handle]->vf;
 		if (!vf->devlink_port.devlink_rate)
@@ -765,6 +767,16 @@ static void ice_traverse_tx_tree(struct devlink *devlink, struct ice_sched_node
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
diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
index 78b5ec6941b4..5db284ef0f94 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
@@ -673,7 +673,8 @@ int ice_devlink_create_sf_port(struct ice_dynamic_port *dyn_port)
  */
 void ice_devlink_destroy_sf_port(struct ice_dynamic_port *dyn_port)
 {
-       devl_port_unregister(&dyn_port->devlink_port);
+	devl_rate_leaf_destroy(&dyn_port->devlink_port);
+	devl_port_unregister(&dyn_port->devlink_port);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index 78abfdf5d47b..00d4a9125dfa 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -347,16 +347,13 @@ static void ice_repr_rem_sf(struct ice_repr *repr)
 	ice_devlink_destroy_sf_port(repr->sf);
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
 
@@ -408,6 +405,7 @@ static struct ice_repr *ice_repr_create(struct ice_vsi *src_vsi)
 static int ice_repr_add_vf(struct ice_repr *repr)
 {
 	struct ice_vf *vf = repr->vf;
+	struct devlink *devlink;
 	int err;
 
 	err = ice_devlink_create_vf_port(vf);
@@ -424,7 +422,9 @@ static int ice_repr_add_vf(struct ice_repr *repr)
 		goto err_cfg_vsi;
 
 	ice_virtchnl_set_repr_ops(vf);
-	ice_repr_set_tx_topology(vf->pf);
+
+	devlink = priv_to_devlink(vf->pf);
+	ice_repr_set_tx_topology(vf->pf, devlink);
 
 	return 0;
 
@@ -480,6 +480,8 @@ static int ice_repr_add_sf(struct ice_repr *repr)
 	if (err)
 		goto err_netdev;
 
+	ice_repr_set_tx_topology(sf->vsi->back, priv_to_devlink(sf->vsi->back));
+
 	return 0;
 
 err_netdev:
-- 
2.42.0

