Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3338BC9C4
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 May 2024 10:42:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6CCB740692;
	Mon,  6 May 2024 08:42:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E5B3HuiOxgPq; Mon,  6 May 2024 08:42:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B22D406FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714984931;
	bh=39Yf1KJSxqZ7zvtViJ/UmU1HkuZhsl2+hAtwoummFz4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LDv8Ptq6wkCtWuTzVZoBBkRjPbiBqYAUO+kMbyo0EPpmlteDj9kt7ffhl/Fyb1CMZ
	 3KcUMQ2duD1dOhZb0dkrXgahjz6o+XwFlS50eA+DU7rP8FlqTIUXweQSizJ4VBqaQD
	 C3+ZgBYE0rF6W+MTwPqxmkgYOD+cQiy1AsSBrlMEsA80xE5ss0ocf06ekQ2LczvPJA
	 hswCimEgADcswlxrJbzGBTG3VjJA0istaikM+5ZaX7Y9K8z9unxoMHRbdR11Z0QRUc
	 mdEUaKrPNldTkVvMILtI+OLQCBAyqneGsJoMa6jp2kX3Kyc0AvfC3aKAtNZ4yd+ws/
	 w7DwEwZnvGvJQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B22D406FA;
	Mon,  6 May 2024 08:42:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1A4231BF38A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 08:42:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F1E74405FF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 08:42:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iwjR4YGcoVTP for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 May 2024 08:42:08 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 035084052F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 035084052F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 035084052F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 08:42:07 +0000 (UTC)
X-CSE-ConnectionGUID: rmr4CQbPRJy8UV0PGPlhpQ==
X-CSE-MsgGUID: Hyc8p08XStm6oB3vHcESZA==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="14505086"
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="14505086"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 01:42:08 -0700
X-CSE-ConnectionGUID: WfXbfj1eSsWmECgF58x2rQ==
X-CSE-MsgGUID: gIwZVl8lTfyiCN2HaPHEaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="28050144"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa009.fm.intel.com with ESMTP; 06 May 2024 01:42:05 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  6 May 2024 10:46:51 +0200
Message-ID: <20240506084653.532111-3-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240506084653.532111-1-michal.swiatkowski@linux.intel.com>
References: <20240506084653.532111-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714984928; x=1746520928;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B59y0OHZt/PVAUvbSujWwKMvKq2f0cNWW0Wk3aT1bRM=;
 b=Uj8ZLfpMFnsB9CWjT/4NqztoMePCiSMjGOAXMD/MuK7vmmfiq8WueV59
 VpGzUZEFgPIW/DnGOE7b4CvzGUSLDhHQz+bz8ieTLM+zBBAg4g1+bNweD
 563lK0PhxHyctm53HGKHiVV/1lPTeLH3jJ7pktMrENXyKWdH7tk8DErV7
 JLMsneEShd5Urr3FLmjR31ldNToFcVec4lmKd14Vg+GfksGuaNNcrgw+0
 I7wGqmML7OXfPWnJzs7npnF4xP1dlFyhaHOP4JRtlQlYl1iRaRrf7tjDA
 AeKPb2RkCKkZjxKqESwUFJlUqWReixn9KEx7kL6bqFMoyCEiEF26LWAh+
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Uj8ZLfpM
Subject: [Intel-wired-lan] [iwl-next v2 2/4] ice: move devlink locking
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
index c4b69655cdf5..10073342e4f0 100644
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
index b102db8b829a..7b57a6561a5a 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -423,6 +423,7 @@ static void ice_eswitch_start_reprs(struct ice_pf *pf)
 int
 ice_eswitch_attach(struct ice_pf *pf, struct ice_vf *vf)
 {
+	struct devlink *devlink = priv_to_devlink(pf);
 	struct ice_repr *repr;
 	int err;
 
@@ -437,7 +438,9 @@ ice_eswitch_attach(struct ice_pf *pf, struct ice_vf *vf)
 
 	ice_eswitch_stop_reprs(pf);
 
+	devl_lock(devlink);
 	repr = ice_repr_add_vf(vf);
+	devl_unlock(devlink);
 	if (IS_ERR(repr)) {
 		err = PTR_ERR(repr);
 		goto err_create_repr;
@@ -460,7 +463,9 @@ ice_eswitch_attach(struct ice_pf *pf, struct ice_vf *vf)
 err_xa_alloc:
 	ice_eswitch_release_repr(pf, repr);
 err_setup_repr:
+	devl_lock(devlink);
 	ice_repr_rem_vf(repr);
+	devl_unlock(devlink);
 err_create_repr:
 	if (xa_empty(&pf->eswitch.reprs))
 		ice_eswitch_disable_switchdev(pf);
@@ -484,6 +489,7 @@ void ice_eswitch_detach(struct ice_pf *pf, struct ice_vf *vf)
 		ice_eswitch_disable_switchdev(pf);
 
 	ice_eswitch_release_repr(pf, repr);
+	devl_lock(devlink);
 	ice_repr_rem_vf(repr);
 
 	if (xa_empty(&pf->eswitch.reprs)) {
@@ -491,12 +497,11 @@ void ice_eswitch_detach(struct ice_pf *pf, struct ice_vf *vf)
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

