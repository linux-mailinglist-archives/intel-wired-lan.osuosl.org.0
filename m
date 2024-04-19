Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 515B88AB429
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Apr 2024 19:08:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A60B940903;
	Fri, 19 Apr 2024 17:08:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 28YP3feseLSs; Fri, 19 Apr 2024 17:08:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA7294078D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713546532;
	bh=r3ek3TnTdOWgOdyPjh3fxNg/cPnkk2eQhYLTVjvBN0g=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VnrSEIhZg6ws+k/NQsx7oe02gczNN6ObxD/QAP718YswTmJVI129Q+r55/gIyuTNp
	 19pzt3inAYlUTvEx+inaPndG8tKGN+41DfRfqJmGv9I0UjuFmQ32N1kvKn++hqTKRQ
	 wL62BF6QyM+42mJpKOvCTGBT+P5SIuMjG8uQN8Nk8wqbV5KX7A8QzCUrsfdvn+8oLU
	 B6NUfRRdwahpYKE7vCQdRNxmpJsyqvGoxFlmBIA7JyR+oxkRlsQmAs/KmVenvRF8TT
	 m2W6Ktw5SSc9048MLXCkLeL497CBcsVb6FbRY8gR3HGgJgO3TTShoCeR9bbh/Rqv3U
	 O32bbogp9+KOQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA7294078D;
	Fri, 19 Apr 2024 17:08:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D010D1BF314
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 17:08:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BC94840237
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 17:08:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uWnzlp1zM7tl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Apr 2024 17:08:48 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CD470407A2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD470407A2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CD470407A2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 17:08:47 +0000 (UTC)
X-CSE-ConnectionGUID: NILGC7UYSmagf0JCEuqmrQ==
X-CSE-MsgGUID: qz2eYQCRSv6WPremLfv7vQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11049"; a="26674296"
X-IronPort-AV: E=Sophos;i="6.07,214,1708416000"; d="scan'208";a="26674296"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 10:08:47 -0700
X-CSE-ConnectionGUID: 41OvF0zaSfKxlv68FUP/KQ==
X-CSE-MsgGUID: KYYNKwR6S+2eft2TM352MA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,214,1708416000"; d="scan'208";a="27847166"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa005.fm.intel.com with ESMTP; 19 Apr 2024 10:08:45 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 19 Apr 2024 19:13:34 +0200
Message-ID: <20240419171336.11617-3-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240419171336.11617-1-michal.swiatkowski@linux.intel.com>
References: <20240419171336.11617-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713546528; x=1745082528;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ve378FFAuh6ujx2bfirUF+q8me2wL6AE4VK5U++MuzA=;
 b=FHswuvAOxyv9vGARX7hrrmRX8mtEpd0lpVHu+eQscPL3voyZN69F+Wk5
 dfXZGdZlhzKS4Vm9bj7pEMwbhq+WuCIfTJ9jR40PUmWLzFCw6mYrtl6yQ
 Im0rdS+dDQp0YcgOkERp0OcQQRCNVKSFBNdzaUiHe6Nj4lGAR2un4XwFt
 TyYYIcWHhKRrPzx3c5ZH9Jb0De7Q4DFvEGCiF9gQv9xgKYXo2PmLeDbiL
 ug9vjhKmY/HNrsffvxH1FwTLKMzqWFYEs0dHbxmKOkDadX3PQfpjjGaK0
 bEGxjTLMqxwFbMgS1GfxBDImESIw3zVyK4Fa+4LRdnKfuKU2NRocZzVUW
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FHswuvAO
Subject: [Intel-wired-lan] [iwl-next v1 2/4] ice: move devlink locking
 outside the port creation
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

In case of subfunction lock will be taken for whole port creation. Do
the same in VF case.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/devlink/devlink.c      | 2 --
 drivers/net/ethernet/intel/ice/devlink/devlink_port.c | 4 ++--
 drivers/net/ethernet/intel/ice/ice_eswitch.c          | 9 +++++++--
 drivers/net/ethernet/intel/ice/ice_repr.c             | 2 --
 4 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
index b179eaccc774..6af7a940b6fe 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
@@ -794,10 +794,8 @@ int ice_devlink_rate_init_tx_topology(struct devlink *devlink, struct ice_vsi *v
 
 	tc_node = pi->root->children[0];
 	mutex_lock(&pi->sched_lock);
-	devl_lock(devlink);
 	for (i = 0; i < tc_node->num_children; i++)
 		ice_traverse_tx_tree(devlink, tc_node->children[i], tc_node, pf);
-	devl_unlock(devlink);
 	mutex_unlock(&pi->sched_lock);
 
 	return 0;
diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
index 13e6790d3cae..c9fbeebf7fb9 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
@@ -407,7 +407,7 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
 	devlink_port_attrs_set(devlink_port, &attrs);
 	devlink = priv_to_devlink(pf);
 
-	err = devlink_port_register(devlink, devlink_port, vsi->idx);
+	err = devl_port_register(devlink, devlink_port, vsi->idx);
 	if (err) {
 		dev_err(dev, "Failed to create devlink port for VF %d, error %d\n",
 			vf->vf_id, err);
@@ -426,5 +426,5 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
 void ice_devlink_destroy_vf_port(struct ice_vf *vf)
 {
 	devl_rate_leaf_destroy(&vf->devlink_port);
-	devlink_port_unregister(&vf->devlink_port);
+	devl_port_unregister(&vf->devlink_port);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index c902848cf88e..aeee1eb17a03 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -420,6 +420,7 @@ static void ice_eswitch_start_reprs(struct ice_pf *pf)
 int
 ice_eswitch_attach(struct ice_pf *pf, struct ice_vf *vf)
 {
+	struct devlink *devlink = priv_to_devlink(pf);
 	struct ice_repr *repr;
 	int err;
 
@@ -434,7 +435,9 @@ ice_eswitch_attach(struct ice_pf *pf, struct ice_vf *vf)
 
 	ice_eswitch_stop_reprs(pf);
 
+	devl_lock(devlink);
 	repr = ice_repr_add_vf(vf);
+	devl_unlock(devlink);
 	if (IS_ERR(repr)) {
 		err = PTR_ERR(repr);
 		goto err_create_repr;
@@ -457,7 +460,9 @@ ice_eswitch_attach(struct ice_pf *pf, struct ice_vf *vf)
 err_xa_alloc:
 	ice_eswitch_release_repr(pf, repr);
 err_setup_repr:
+	devl_lock(devlink);
 	ice_repr_rem_vf(repr);
+	devl_unlock(devlink);
 err_create_repr:
 	if (xa_empty(&pf->eswitch.reprs))
 		ice_eswitch_disable_switchdev(pf);
@@ -481,6 +486,7 @@ void ice_eswitch_detach(struct ice_pf *pf, struct ice_vf *vf)
 		ice_eswitch_disable_switchdev(pf);
 
 	ice_eswitch_release_repr(pf, repr);
+	devl_lock(devlink);
 	ice_repr_rem_vf(repr);
 
 	if (xa_empty(&pf->eswitch.reprs)) {
@@ -488,12 +494,11 @@ void ice_eswitch_detach(struct ice_pf *pf, struct ice_vf *vf)
 		 * no point in keeping the nodes
 		 */
 		ice_devlink_rate_clear_tx_topology(ice_get_main_vsi(pf));
-		devl_lock(devlink);
 		devl_rate_nodes_destroy(devlink);
-		devl_unlock(devlink);
 	} else {
 		ice_eswitch_start_reprs(pf);
 	}
+	devl_unlock(devlink);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index fe83f305cc7d..35a6ac8c0466 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -285,9 +285,7 @@ ice_repr_reg_netdev(struct net_device *netdev)
 
 static void ice_repr_remove_node(struct devlink_port *devlink_port)
 {
-	devl_lock(devlink_port->devlink);
 	devl_rate_leaf_destroy(devlink_port);
-	devl_unlock(devlink_port->devlink);
 }
 
 /**
-- 
2.42.0

