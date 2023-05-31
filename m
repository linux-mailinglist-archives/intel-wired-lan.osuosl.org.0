Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48644718010
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 14:39:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CA78B40525;
	Wed, 31 May 2023 12:39:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CA78B40525
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685536744;
	bh=d7zUqjYQqPrt5B4T/CHHhTXQsg05kTAQm4Il0oIe+nM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=onPJiOpKmbXAL9/pdQ8EVRXBftNe19oNFTXGtG9lkqeNW7EeH9mmeS1nHXuHDWrdz
	 Tdvd7bZN3E5KSQyU06KGTtL/+LIEZizxd0oZ6AzrLdFVkgsUjUTAnXrz3T9hZ4fhcG
	 TEyFY1yp+OzQ9Xn0zC4eBlS7ONnyVKT+eHIRUj9x9eqqoM3K43w8LNclSWweEIBL7q
	 1jHSAi1yHnEKoP72A351NPsirZrajh54fgMtK+bcgysn2LOt8NKxTfpQpKpGdwCNXj
	 /162QYiBCCviMn5hJfhofFHNY3UFrEh3jF+ZM958NM8dpSC+bxOpN3PXiMWqZRGeVI
	 K1iFk7O9hc+4g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XEjg3vOPs7qZ; Wed, 31 May 2023 12:39:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 560B440289;
	Wed, 31 May 2023 12:39:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 560B440289
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CD6B01BF5AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 12:38:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B05BB81A6D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 12:38:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B05BB81A6D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zqnPhjk7eCsX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 May 2023 12:38:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C8C4A81A47
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C8C4A81A47
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 12:38:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="344734908"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="344734908"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 05:38:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="739940721"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="739940721"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga001.jf.intel.com with ESMTP; 31 May 2023 05:38:53 -0700
Received: from pkitszel-desk.tendawifi.com (unknown [10.255.201.128])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 555F635FDB;
 Wed, 31 May 2023 13:38:50 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 31 May 2023 14:38:40 +0200
Message-Id: <20230531123840.20346-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685536736; x=1717072736;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Vy+uOT3ju/hl8XWtJFkR+mfVq367Qt5iElYH8wFqgsY=;
 b=R7nTIn0pWjp8YE8Xo/7ueXD8oGKmHcIqm2p/x6er133inCsWD7EhmKBf
 DRyhMIqsOCdHMfJu5u8HDnBL1qppYcbLRZc52/rcPjJrs/JVOcEAA4ODh
 1E49F0T8n8tHxdTOWSddU5RUiGk9rv+qFQYPsRraPeNnTDCQqMmb1cudp
 fDmNBN5Ut2CZUuLErW4qRYSHnp+YJPkmcIRCXi7agc3GLGUHqYgzOqRjS
 3JpyBZ8e0G1hxCOVV111ZgnYrlwLTgHC7FUOW41lWt2fTHIGQD0wFnkeC
 gamTkdLchHvgHr+Pu77y1E2d9LXO7btQiAtU5iBDQRQFq2OthoKmwX32b
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R7nTIn0p
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: remove null checks
 before devm_kfree() calls
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
Cc: Simon Horman <simon.horman@corigine.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Victor Raj <victor.raj@intel.com>,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

We all know they are redundant.

v2: sending to proper IWL address

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Michal Wilczynski <michal.wilczynski@intel.com>
Reviewed-by: Simon Horman <simon.horman@corigine.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c   |  6 +--
 drivers/net/ethernet/intel/ice/ice_controlq.c |  3 +-
 drivers/net/ethernet/intel/ice/ice_flow.c     | 23 ++--------
 drivers/net/ethernet/intel/ice/ice_lib.c      | 42 +++++++------------
 drivers/net/ethernet/intel/ice/ice_sched.c    | 11 ++---
 drivers/net/ethernet/intel/ice/ice_switch.c   | 19 +++------
 6 files changed, 29 insertions(+), 75 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index eb2dc0983776..6acb40f3c202 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -814,8 +814,7 @@ static void ice_cleanup_fltr_mgmt_struct(struct ice_hw *hw)
 				devm_kfree(ice_hw_to_dev(hw), lst_itr);
 			}
 		}
-		if (recps[i].root_buf)
-			devm_kfree(ice_hw_to_dev(hw), recps[i].root_buf);
+		devm_kfree(ice_hw_to_dev(hw), recps[i].root_buf);
 	}
 	ice_rm_all_sw_replay_rule_info(hw);
 	devm_kfree(ice_hw_to_dev(hw), sw->recp_list);
@@ -1011,8 +1010,7 @@ static int ice_cfg_fw_log(struct ice_hw *hw, bool enable)
 	}
 
 out:
-	if (data)
-		devm_kfree(ice_hw_to_dev(hw), data);
+	devm_kfree(ice_hw_to_dev(hw), data);
 
 	return status;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
index d2faf1baad2f..e4cb5055b999 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.c
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
@@ -339,8 +339,7 @@ do {									\
 		}							\
 	}								\
 	/* free the buffer info list */					\
-	if ((qi)->ring.cmd_buf)						\
-		devm_kfree(ice_hw_to_dev(hw), (qi)->ring.cmd_buf);	\
+	devm_kfree(ice_hw_to_dev(hw), (qi)->ring.cmd_buf);		\
 	/* free DMA head */						\
 	devm_kfree(ice_hw_to_dev(hw), (qi)->ring.dma_head);		\
 } while (0)
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index ef103e47a8dc..85cca572c22a 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -1303,23 +1303,6 @@ ice_flow_find_prof_id(struct ice_hw *hw, enum ice_block blk, u64 prof_id)
 	return NULL;
 }
 
-/**
- * ice_dealloc_flow_entry - Deallocate flow entry memory
- * @hw: pointer to the HW struct
- * @entry: flow entry to be removed
- */
-static void
-ice_dealloc_flow_entry(struct ice_hw *hw, struct ice_flow_entry *entry)
-{
-	if (!entry)
-		return;
-
-	if (entry->entry)
-		devm_kfree(ice_hw_to_dev(hw), entry->entry);
-
-	devm_kfree(ice_hw_to_dev(hw), entry);
-}
-
 /**
  * ice_flow_rem_entry_sync - Remove a flow entry
  * @hw: pointer to the HW struct
@@ -1335,7 +1318,8 @@ ice_flow_rem_entry_sync(struct ice_hw *hw, enum ice_block __always_unused blk,
 
 	list_del(&entry->l_entry);
 
-	ice_dealloc_flow_entry(hw, entry);
+	devm_kfree(ice_hw_to_dev(hw), entry->entry);
+	devm_kfree(ice_hw_to_dev(hw), entry);
 
 	return 0;
 }
@@ -1662,8 +1646,7 @@ ice_flow_add_entry(struct ice_hw *hw, enum ice_block blk, u64 prof_id,
 
 out:
 	if (status && e) {
-		if (e->entry)
-			devm_kfree(ice_hw_to_dev(hw), e->entry);
+		devm_kfree(ice_hw_to_dev(hw), e->entry);
 		devm_kfree(ice_hw_to_dev(hw), e);
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index e8142bea2eb2..c3722c68af99 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -321,31 +321,19 @@ static void ice_vsi_free_arrays(struct ice_vsi *vsi)
 
 	dev = ice_pf_to_dev(pf);
 
-	if (vsi->af_xdp_zc_qps) {
-		bitmap_free(vsi->af_xdp_zc_qps);
-		vsi->af_xdp_zc_qps = NULL;
-	}
+	bitmap_free(vsi->af_xdp_zc_qps);
+	vsi->af_xdp_zc_qps = NULL;
 	/* free the ring and vector containers */
-	if (vsi->q_vectors) {
-		devm_kfree(dev, vsi->q_vectors);
-		vsi->q_vectors = NULL;
-	}
-	if (vsi->tx_rings) {
-		devm_kfree(dev, vsi->tx_rings);
-		vsi->tx_rings = NULL;
-	}
-	if (vsi->rx_rings) {
-		devm_kfree(dev, vsi->rx_rings);
-		vsi->rx_rings = NULL;
-	}
-	if (vsi->txq_map) {
-		devm_kfree(dev, vsi->txq_map);
-		vsi->txq_map = NULL;
-	}
-	if (vsi->rxq_map) {
-		devm_kfree(dev, vsi->rxq_map);
-		vsi->rxq_map = NULL;
-	}
+	devm_kfree(dev, vsi->q_vectors);
+	vsi->q_vectors = NULL;
+	devm_kfree(dev, vsi->tx_rings);
+	vsi->tx_rings = NULL;
+	devm_kfree(dev, vsi->rx_rings);
+	vsi->rx_rings = NULL;
+	devm_kfree(dev, vsi->txq_map);
+	vsi->txq_map = NULL;
+	devm_kfree(dev, vsi->rxq_map);
+	vsi->rxq_map = NULL;
 }
 
 /**
@@ -902,10 +890,8 @@ static void ice_rss_clean(struct ice_vsi *vsi)
 
 	dev = ice_pf_to_dev(pf);
 
-	if (vsi->rss_hkey_user)
-		devm_kfree(dev, vsi->rss_hkey_user);
-	if (vsi->rss_lut_user)
-		devm_kfree(dev, vsi->rss_lut_user);
+	devm_kfree(dev, vsi->rss_hkey_user);
+	devm_kfree(dev, vsi->rss_lut_user);
 
 	ice_vsi_clean_rss_flow_fld(vsi);
 	/* remove RSS replay list */
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index b7682de0ae05..b664d60fd037 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -358,10 +358,7 @@ void ice_free_sched_node(struct ice_port_info *pi, struct ice_sched_node *node)
 				node->sibling;
 	}
 
-	/* leaf nodes have no children */
-	if (node->children)
-		devm_kfree(ice_hw_to_dev(hw), node->children);
-
+	devm_kfree(ice_hw_to_dev(hw), node->children);
 	kfree(node->name);
 	xa_erase(&pi->sched_node_ids, node->id);
 	devm_kfree(ice_hw_to_dev(hw), node);
@@ -859,10 +856,8 @@ void ice_sched_cleanup_all(struct ice_hw *hw)
 	if (!hw)
 		return;
 
-	if (hw->layer_info) {
-		devm_kfree(ice_hw_to_dev(hw), hw->layer_info);
-		hw->layer_info = NULL;
-	}
+	devm_kfree(ice_hw_to_dev(hw), hw->layer_info);
+	hw->layer_info = NULL;
 
 	ice_sched_clear_port(hw->port_info);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index d69efd33beee..49be0d2532eb 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -1636,21 +1636,16 @@ ice_save_vsi_ctx(struct ice_hw *hw, u16 vsi_handle, struct ice_vsi_ctx *vsi)
  */
 static void ice_clear_vsi_q_ctx(struct ice_hw *hw, u16 vsi_handle)
 {
-	struct ice_vsi_ctx *vsi;
+	struct ice_vsi_ctx *vsi = ice_get_vsi_ctx(hw, vsi_handle);
 	u8 i;
 
-	vsi = ice_get_vsi_ctx(hw, vsi_handle);
 	if (!vsi)
 		return;
 	ice_for_each_traffic_class(i) {
-		if (vsi->lan_q_ctx[i]) {
-			devm_kfree(ice_hw_to_dev(hw), vsi->lan_q_ctx[i]);
-			vsi->lan_q_ctx[i] = NULL;
-		}
-		if (vsi->rdma_q_ctx[i]) {
-			devm_kfree(ice_hw_to_dev(hw), vsi->rdma_q_ctx[i]);
-			vsi->rdma_q_ctx[i] = NULL;
-		}
+		devm_kfree(ice_hw_to_dev(hw), vsi->lan_q_ctx[i]);
+		vsi->lan_q_ctx[i] = NULL;
+		devm_kfree(ice_hw_to_dev(hw), vsi->rdma_q_ctx[i]);
+		vsi->rdma_q_ctx[i] = NULL;
 	}
 }
 
@@ -5486,9 +5481,7 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 		devm_kfree(ice_hw_to_dev(hw), fvit);
 	}
 
-	if (rm->root_buf)
-		devm_kfree(ice_hw_to_dev(hw), rm->root_buf);
-
+	devm_kfree(ice_hw_to_dev(hw), rm->root_buf);
 	kfree(rm);
 
 err_free_lkup_exts:
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
