Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CADE48BE131
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 May 2024 13:40:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 786DE406F8;
	Tue,  7 May 2024 11:40:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2uL37pDYzNj7; Tue,  7 May 2024 11:40:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7796540210
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715082051;
	bh=byRgUaItHvg5/YjQ6ovLYFbPjbRgTZAmLy52RZmDUNA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JJNSwJ8VR0yNTGzRsKWg0vR1pDqKAHhChb2vmuktqhFe1b+t5sXB2ugvJA64iOLpy
	 QisFFCpfPjWJuyzKFNwEVJDyadyXaC3t4bZdq4GNxdwQKNfG9XdkUAoao+EkrKlT3C
	 linTRlZpKnILygmlAKyNweGCEgPuT1M/r7elbq78OgP4QtzyZVMgP9WgCYcaZ6M+Wd
	 l6Fy2+z+PeJfoSMd/F5tlIYUJSzuqo4ds6KFx80z5CoVLtetZAacwGLOtWp1B0dpNv
	 p/d55PYZeVExr678Hslvto0QNSoX9iWXcF33LIFQYaguThWdw7ORV04eDaw5q7cFi0
	 YoKIlA4bWZs4A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7796540210;
	Tue,  7 May 2024 11:40:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5CD571BF5A0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 11:40:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 489A640223
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 11:40:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D5Kwwjj69fIj for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 May 2024 11:40:48 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 645EA40154
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 645EA40154
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 645EA40154
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 11:40:48 +0000 (UTC)
X-CSE-ConnectionGUID: Xsb1qd8TQlCeqQ/6NilnyA==
X-CSE-MsgGUID: l8K4Lux5Teeas8QKdzzCTA==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="22029320"
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="22029320"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 04:40:49 -0700
X-CSE-ConnectionGUID: HTz5vSOcQTGxzYiWUNCPVQ==
X-CSE-MsgGUID: dwhDXAsnS/aHYs5xQu74HQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="28576731"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa009.jf.intel.com with ESMTP; 07 May 2024 04:40:45 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  7 May 2024 13:45:13 +0200
Message-ID: <20240507114516.9765-13-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240507114516.9765-1-michal.swiatkowski@linux.intel.com>
References: <20240507114516.9765-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715082049; x=1746618049;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=31Jejpe3OCSHK0a4fqPAn9kRSu7BW8zo2Jx5VlDmJB0=;
 b=IVp31S0eKykCCbhS7qreAcQJ/H8IAps/Md+t/bqjPYES/cswOPWfM/fR
 b2BAuz9jZSno2vn7plxssthXgqTnM/tpG1l0xc0KQdI/l6Q/lZAWeDApp
 D5rpEJflA5V61rEspQez40rlWYue1Ri0p9ETwGV8emEKT9jZ4t6RGKf2g
 CRfVdnDy8OLiSr7Py+X0W7qKVCcyR+UBRo9Lu5270obkOfW5UHuuGPzUJ
 L7J1sLRic//8ytNUuv5L1PUzqgtZ0g7oINiTrgmj0bMF32N/N+qXA74W/
 mMFlnH3i49XyS9847QndpUGCr8iiFoqZ7z1R4o+fq2nS21LkxQsE/iqzm
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IVp31S0e
Subject: [Intel-wired-lan] [iwl-next v1 12/14] ice: support subfunction
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
index 3d887e7ee78c..e8929e91aff2 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
@@ -732,7 +732,8 @@ int ice_devlink_create_sf_port(struct ice_dynamic_port *dyn_port)
  */
 void ice_devlink_destroy_sf_port(struct ice_dynamic_port *dyn_port)
 {
-       devl_port_unregister(&dyn_port->devlink_port);
+	devl_rate_leaf_destroy(&dyn_port->devlink_port);
+	devl_port_unregister(&dyn_port->devlink_port);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index ec4f5b8b46e6..da7489f8d9a7 100644
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
 
@@ -472,6 +472,8 @@ static int ice_repr_add_sf(struct ice_repr *repr)
 	if (err)
 		goto err_netdev;
 
+	ice_repr_set_tx_topology(sf->vsi->back, priv_to_devlink(sf->vsi->back));
+
 	return 0;
 
 err_netdev:
-- 
2.42.0

