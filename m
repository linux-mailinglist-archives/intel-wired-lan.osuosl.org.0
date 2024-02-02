Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F4484724B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Feb 2024 15:55:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B1A8143774;
	Fri,  2 Feb 2024 14:55:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B1A8143774
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706885736;
	bh=C707mKMBRFMUgv15CnDDyqPEt4+1lUG1o6To47YGuOA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lwtiOCXBk2/FAYzeY+7SFKiOIpPnCRtqygWCmP6aQzjWmgn4X0sflB/62KKKYUA/M
	 Q15CgQn4mbGmLG7mcBUS4oFnjL9oLuo3faysTDjeP1bFMqDXFFQ+xt2hFvpU0y3YcS
	 l3lmX25hBD3oNQngNt+5NMXOd/TTegYqDAQPMSdpj4F8WBYUv0tW5y1JlQ3zwKnTm3
	 5r1RY5zcivkMDSA1p9yxZjZpvOClHTY1zHS1oT3X3sfULEgpOfODgqdLtPQhNLvSMh
	 XcIapc4eQO99O3ZKYEm6O4gilBYUc2v/po5z00M62c2oGhSEyM5y/pEysI/5eDOFkP
	 +v53kuWiC1eOA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rs0_8yOawY6i; Fri,  2 Feb 2024 14:55:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3207B4375C;
	Fri,  2 Feb 2024 14:55:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3207B4375C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2A16C1BF423
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 14:55:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 18D44426DA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 14:55:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 18D44426DA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1YczuVEMXsms for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Feb 2024 14:55:24 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 53B5442686
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 14:55:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 53B5442686
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="10823009"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="10823009"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 06:55:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="98363"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa009.jf.intel.com with ESMTP; 02 Feb 2024 06:55:20 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  2 Feb 2024 15:59:21 +0100
Message-ID: <20240202145929.12444-2-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240202145929.12444-1-michal.swiatkowski@linux.intel.com>
References: <20240202145929.12444-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706885724; x=1738421724;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vWsbahQfcpqNK3s317DFSQY7+bxiMgald1TmElv2L58=;
 b=adyrLSoyyTCZWRth4I5EF1Ib0lUd3ThwIyODtdwLY1ougAauyVhFkWGT
 oOGjKlTOcaVK1lYOmk6Gy3pAILQBSi1N1FeWMmrjFeqMMmeCxj0hLDgxJ
 X3HzWyIhKFBpQf/txJtlfQf51O8ewzvQ3N0T0kL23o7TIlwdGaR+2n/AB
 qHnBfZ8VlXbJRaeGwXc+E6wEl2sGB602rgmkPgZL/rK0BEGwl+MdqNVLa
 EZB7ep0qPyczmWBZY0Z9mWjAaG8Z48npMeCKJSJPpEhv6DeaFwTGnrngb
 egcvRWoXZBM4/JmkMsDjWhJ3W4ak+2WJc28Dw9Au/vrLcTW49RfHDvOFd
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=adyrLSoy
Subject: [Intel-wired-lan] [iwl-next v2 1/8] ice: remove eswitch changing
 queues algorithm
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>, przemyslaw.kitszel@intel.com,
 sridhar.samudrala@intel.com, horms@kernel.org, netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Changing queues used by eswitch will be done through PF netdev.
There is no need to reserve queues if the number of used queues
is known.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |  6 ----
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 34 --------------------
 drivers/net/ethernet/intel/ice/ice_eswitch.h |  4 ---
 drivers/net/ethernet/intel/ice/ice_sriov.c   |  3 --
 4 files changed, 47 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index a4ba60e17d0b..e5241b9dc3c9 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -527,12 +527,6 @@ struct ice_eswitch {
 	struct ice_esw_br_offloads *br_offloads;
 	struct xarray reprs;
 	bool is_running;
-	/* struct to allow cp queues management optimization */
-	struct {
-		int to_reach;
-		int value;
-		bool is_reaching;
-	} qs;
 };
 
 struct ice_agg_node {
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 9069725c71b4..2e999f801c0a 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -455,8 +455,6 @@ static int ice_eswitch_enable_switchdev(struct ice_pf *pf)
 		return -ENODEV;
 
 	ctrl_vsi = pf->eswitch.control_vsi;
-	/* cp VSI is createad with 1 queue as default */
-	pf->eswitch.qs.value = 1;
 	pf->eswitch.uplink_vsi = uplink_vsi;
 
 	if (ice_eswitch_setup_env(pf))
@@ -489,7 +487,6 @@ static void ice_eswitch_disable_switchdev(struct ice_pf *pf)
 	ice_vsi_release(ctrl_vsi);
 
 	pf->eswitch.is_running = false;
-	pf->eswitch.qs.is_reaching = false;
 }
 
 /**
@@ -620,18 +617,6 @@ ice_eswitch_cp_change_queues(struct ice_eswitch *eswitch, int change)
 	struct ice_vsi *cp = eswitch->control_vsi;
 	int queues = 0;
 
-	if (eswitch->qs.is_reaching) {
-		if (eswitch->qs.to_reach >= eswitch->qs.value + change) {
-			queues = eswitch->qs.to_reach;
-			eswitch->qs.is_reaching = false;
-		} else {
-			queues = 0;
-		}
-	} else if ((change > 0 && cp->alloc_txq <= eswitch->qs.value) ||
-		   change < 0) {
-		queues = cp->alloc_txq + change;
-	}
-
 	if (queues) {
 		cp->req_txq = queues;
 		cp->req_rxq = queues;
@@ -643,7 +628,6 @@ ice_eswitch_cp_change_queues(struct ice_eswitch *eswitch, int change)
 		ice_vsi_open(cp);
 	}
 
-	eswitch->qs.value += change;
 	ice_eswitch_remap_rings_to_vectors(eswitch);
 }
 
@@ -661,8 +645,6 @@ ice_eswitch_attach(struct ice_pf *pf, struct ice_vf *vf)
 		err = ice_eswitch_enable_switchdev(pf);
 		if (err)
 			return err;
-		/* Control plane VSI is created with 1 queue as default */
-		pf->eswitch.qs.to_reach -= 1;
 		change = 0;
 	}
 
@@ -756,19 +738,3 @@ int ice_eswitch_rebuild(struct ice_pf *pf)
 
 	return 0;
 }
-
-/**
- * ice_eswitch_reserve_cp_queues - reserve control plane VSI queues
- * @pf: pointer to PF structure
- * @change: how many more (or less) queues is needed
- *
- * Remember to call ice_eswitch_attach/detach() the "change" times.
- */
-void ice_eswitch_reserve_cp_queues(struct ice_pf *pf, int change)
-{
-	if (pf->eswitch.qs.value + change < 0)
-		return;
-
-	pf->eswitch.qs.to_reach = pf->eswitch.qs.value + change;
-	pf->eswitch.qs.is_reaching = true;
-}
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.h b/drivers/net/ethernet/intel/ice/ice_eswitch.h
index 1a288a03a79a..59d51c0d14e5 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.h
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.h
@@ -26,7 +26,6 @@ void ice_eswitch_set_target_vsi(struct sk_buff *skb,
 				struct ice_tx_offload_params *off);
 netdev_tx_t
 ice_eswitch_port_start_xmit(struct sk_buff *skb, struct net_device *netdev);
-void ice_eswitch_reserve_cp_queues(struct ice_pf *pf, int change);
 #else /* CONFIG_ICE_SWITCHDEV */
 static inline void ice_eswitch_detach(struct ice_pf *pf, struct ice_vf *vf) { }
 
@@ -77,8 +76,5 @@ ice_eswitch_port_start_xmit(struct sk_buff *skb, struct net_device *netdev)
 {
 	return NETDEV_TX_BUSY;
 }
-
-static inline void
-ice_eswitch_reserve_cp_queues(struct ice_pf *pf, int change) { }
 #endif /* CONFIG_ICE_SWITCHDEV */
 #endif /* _ICE_ESWITCH_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index a94a1c48c3de..706b5ee8ec89 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -170,8 +170,6 @@ void ice_free_vfs(struct ice_pf *pf)
 	else
 		dev_warn(dev, "VFs are assigned - not disabling SR-IOV\n");
 
-	ice_eswitch_reserve_cp_queues(pf, -ice_get_num_vfs(pf));
-
 	mutex_lock(&vfs->table_lock);
 
 	ice_for_each_vf(pf, bkt, vf) {
@@ -898,7 +896,6 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
 		goto err_unroll_sriov;
 	}
 
-	ice_eswitch_reserve_cp_queues(pf, num_vfs);
 	ret = ice_start_vfs(pf);
 	if (ret) {
 		dev_err(dev, "Failed to start %d VFs, err %d\n", num_vfs, ret);
-- 
2.42.0

