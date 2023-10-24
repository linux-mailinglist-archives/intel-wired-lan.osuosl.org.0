Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 941C07D4EF4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 13:35:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 25A92401A0;
	Tue, 24 Oct 2023 11:35:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 25A92401A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698147340;
	bh=RgpWKhODqImPJYty8waEMOeVxmezo6o7ZuYT1c1bMqk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L7RQKHl2rVYvsAsut8PyuuB6bEglnZL6jVcm23WDst+10FjY8qVfZ/d3vwwdmG749
	 1uYruEKERCVuBtvuuhRst/n0tD6lQfyBLPd+Ox4LdmfMH4kfmw/BW5empkKzL6TOYU
	 yFU+2i5bjEtvFSjE2IGUe9sU85MWOcYZcpdpN7pdMFerMNOinJNvDQaeWNwYw4pElW
	 NM+gLLPW+U/mRa1sreBzsJqFgwyp/zIkF9pxaA8YSu1Hhb1O8lEw8eaGCBoX2qnm8N
	 cQnnNGzKkbzqFE5dP6QNhLsKJ5neOlFplxzl5qj4K/d1EqlkRJ+odJiWXOwDwQ0XZK
	 zm8gG5SdZ1rRg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e-Y5Hm5MR7Bm; Tue, 24 Oct 2023 11:35:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A3BF7401D6;
	Tue, 24 Oct 2023 11:35:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A3BF7401D6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E1FE11BF311
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:35:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B8B7243122
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:35:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B8B7243122
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mkhiV_IKpKw4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 11:35:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7ECEE42ECD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:35:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7ECEE42ECD
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="5660559"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="5660559"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 04:35:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="6146195"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orviesa001.jf.intel.com with ESMTP; 24 Oct 2023 04:33:46 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Oct 2023 13:09:25 +0200
Message-ID: <20231024110929.19423-12-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
References: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698147306; x=1729683306;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UDza0CtWUshxrTl/FeH1wXYRvzIQIlSrAmdeUD85wSM=;
 b=UMRbjVlmcpQLewJI1WtOGBlamdMI1w/0n043ZET3y0KuQjwOm6oa+ZkE
 qmIlg4gBXes+HLk8UKEP90p3RS4B77syLM6Bp8gwa++1FDAuQyfoy35KX
 3b/9B+fqLYfEZ2pEekOi7V5wfhmZUEIzM2FSrRe/aIEBJBJcfLzPSEQKw
 gkV4QwknfxsD3Iti+gsvGHmFUJi1f7zExEsR0eQEHTx5MKQLi3DRgen2W
 gaDXF3KW1UBgdaE5a69YO+BXEmODRrM0xQ35jGAll1xbdrB+jtiZpsKUu
 SeRDIYyCJxqgIWbHYx0OWzjv7fV4Lem4MxtHCUBFZHMZ9roR2htuqcLRg
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UMRbjVlm
Subject: [Intel-wired-lan] [PATCH iwl-next v1 11/15] ice: set Tx topology
 every time new repr is added
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 piotr.raczynski@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

It is needed to track correct Tx topology. Update it every time new
representor is created or remove node in case of removing corresponding
representor.

Still clear all node when removing switchdev mode as part of Tx topology
isn't related only to representors. Also clear ::rate_note value to
prevent skipping this node next time Tx topology is created.

Reviewed-by: Piotr Raczynski <piotr.raczynski@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_devlink.c | 29 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_devlink.h |  1 +
 drivers/net/ethernet/intel/ice/ice_eswitch.c |  9 ++++++
 drivers/net/ethernet/intel/ice/ice_repr.c    | 27 +++++++++++++-----
 4 files changed, 59 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 80dc5445b50d..f4e24d11ebd0 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -810,6 +810,10 @@ static void ice_traverse_tx_tree(struct devlink *devlink, struct ice_sched_node
 	struct ice_vf *vf;
 	int i;
 
+	if (node->rate_node)
+		/* already added, skip to the next */
+		goto traverse_children;
+
 	if (node->parent == tc_node) {
 		/* create root node */
 		rate_node = devl_rate_node_create(devlink, node, node->name, NULL);
@@ -831,6 +835,7 @@ static void ice_traverse_tx_tree(struct devlink *devlink, struct ice_sched_node
 	if (rate_node && !IS_ERR(rate_node))
 		node->rate_node = rate_node;
 
+traverse_children:
 	for (i = 0; i < node->num_children; i++)
 		ice_traverse_tx_tree(devlink, node->children[i], tc_node, pf);
 }
@@ -861,6 +866,30 @@ int ice_devlink_rate_init_tx_topology(struct devlink *devlink, struct ice_vsi *v
 	return 0;
 }
 
+static void ice_clear_rate_nodes(struct ice_sched_node *node)
+{
+	node->rate_node = NULL;
+
+	for (int i = 0; i < node->num_children; i++)
+		ice_clear_rate_nodes(node->children[i]);
+}
+
+/**
+ * ice_devlink_rate_clear_tx_topology - clear node->rate_node
+ * @vsi: main vsi struct
+ *
+ * Clear rate_node to cleanup creation of Tx topology.
+ *
+ */
+void ice_devlink_rate_clear_tx_topology(struct ice_vsi *vsi)
+{
+	struct ice_port_info *pi = vsi->port_info;
+
+	mutex_lock(&pi->sched_lock);
+	ice_clear_rate_nodes(pi->root->children[0]);
+	mutex_unlock(&pi->sched_lock);
+}
+
 /**
  * ice_set_object_tx_share - sets node scheduling parameter
  * @pi: devlink struct instance
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.h b/drivers/net/ethernet/intel/ice/ice_devlink.h
index 6ec96779f52e..d291c0e2e17b 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.h
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.h
@@ -20,5 +20,6 @@ void ice_devlink_destroy_regions(struct ice_pf *pf);
 
 int ice_devlink_rate_init_tx_topology(struct devlink *devlink, struct ice_vsi *vsi);
 void ice_tear_down_devlink_rate_tree(struct ice_pf *pf);
+void ice_devlink_rate_clear_tx_topology(struct ice_vsi *vsi);
 
 #endif /* _ICE_DEVLINK_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 67231e43ffa6..db70a62429e3 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -519,6 +519,7 @@ static int ice_eswitch_enable_switchdev(struct ice_pf *pf)
 static void ice_eswitch_disable_switchdev(struct ice_pf *pf)
 {
 	struct ice_vsi *ctrl_vsi = pf->eswitch.control_vsi;
+	struct devlink *devlink = priv_to_devlink(pf);
 
 	ice_eswitch_napi_disable(&pf->eswitch.reprs);
 	ice_eswitch_br_offloads_deinit(pf);
@@ -526,6 +527,14 @@ static void ice_eswitch_disable_switchdev(struct ice_pf *pf)
 	ice_eswitch_release_reprs(pf);
 	ice_vsi_release(ctrl_vsi);
 	ice_repr_rem_from_all_vfs(pf);
+
+	/* since all port representors are destroyed, there is
+	 * no point in keeping the nodes
+	 */
+	ice_devlink_rate_clear_tx_topology(ice_get_main_vsi(pf));
+	devl_lock(devlink);
+	devl_rate_nodes_destroy(devlink);
+	devl_unlock(devlink);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index b29a3d010780..fa36cc932c5f 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -278,6 +278,13 @@ ice_repr_reg_netdev(struct net_device *netdev)
 	return register_netdev(netdev);
 }
 
+static void ice_repr_remove_node(struct devlink_port *devlink_port)
+{
+	devl_lock(devlink_port->devlink);
+	devl_rate_leaf_destroy(devlink_port);
+	devl_unlock(devlink_port->devlink);
+}
+
 /**
  * ice_repr_rem - remove representor from VF
  * @reprs: xarray storing representors
@@ -298,6 +305,7 @@ static void ice_repr_rem_vf(struct ice_vf *vf)
 	if (!repr)
 		return;
 
+	ice_repr_remove_node(&repr->vf->devlink_port);
 	unregister_netdev(repr->netdev);
 	ice_repr_rem(&vf->pf->eswitch.reprs, repr);
 	ice_devlink_destroy_vf_port(vf);
@@ -310,7 +318,6 @@ static void ice_repr_rem_vf(struct ice_vf *vf)
  */
 void ice_repr_rem_from_all_vfs(struct ice_pf *pf)
 {
-	struct devlink *devlink;
 	struct ice_vf *vf;
 	unsigned int bkt;
 
@@ -318,14 +325,19 @@ void ice_repr_rem_from_all_vfs(struct ice_pf *pf)
 
 	ice_for_each_vf(pf, bkt, vf)
 		ice_repr_rem_vf(vf);
+}
+
+static void ice_repr_set_tx_topology(struct ice_pf *pf)
+{
+	struct devlink *devlink;
+
+	/* only export if ADQ and DCB disabled and eswitch enabled*/
+	if (ice_is_adq_active(pf) || ice_is_dcb_active(pf) ||
+	    !ice_is_switchdev_running(pf))
+		return;
 
-	/* since all port representors are destroyed, there is
-	 * no point in keeping the nodes
-	 */
 	devlink = priv_to_devlink(pf);
-	devl_lock(devlink);
-	devl_rate_nodes_destroy(devlink);
-	devl_unlock(devlink);
+	ice_devlink_rate_init_tx_topology(devlink, ice_get_main_vsi(pf));
 }
 
 /**
@@ -415,6 +427,7 @@ static struct ice_repr *ice_repr_add_vf(struct ice_vf *vf)
 		goto err_netdev;
 
 	ice_virtchnl_set_repr_ops(vf);
+	ice_repr_set_tx_topology(vf->pf);
 
 	return repr;
 
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
