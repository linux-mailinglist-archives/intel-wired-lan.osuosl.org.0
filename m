Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CCD762EE1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jul 2023 09:56:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7E64141C30;
	Wed, 26 Jul 2023 07:56:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E64141C30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690358197;
	bh=qXuJt8gLrKcDceSsKiEUT6Ol09akchSk4MgK8fMQ5QU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6blkvQcCimoITEj/pLgLnB7ScEKMgscVzesnqNwymdAUxAcDLqNB/2NbpMldhf1B6
	 0/D7+SU3xWGcSZBFnE7lM9qzLfjOt/y/Uxalo9PObZeyKDyIde5E/Xvw5etC3GO0Mf
	 MhW6gia61IF+2UgIuSskx+cMU3rqDSmU+BQDcaYbxcl3INCiGyjG1esF1vkTxyjg3r
	 +vLLa4Y0BbL0zcFRUqt93yHcnSmO3BpJkVcpqUnyyJOd5/gFlNq3+P5jXR2R9fEhit
	 /1nLYEP00b/mZMED8x/FRTwd3K/+iTHLqiwavHSWAhaPUq0YrBV2OWFRhOSn6x8BZC
	 s2QgKOcykWQWw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SVym9dAArWWf; Wed, 26 Jul 2023 07:56:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DEF0541C2F;
	Wed, 26 Jul 2023 07:56:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DEF0541C2F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5A6241BF592
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 07:56:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2D61C41B66
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 07:56:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D61C41B66
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZTXgneBtCAte for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jul 2023 07:56:29 +0000 (UTC)
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ECC7041B97
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 07:56:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ECC7041B97
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="371554998"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="371554998"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 00:49:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="720364450"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="720364450"
Received: from s240.igk.intel.com (HELO DevelopmentVM.nql.local)
 ([10.102.18.202])
 by orsmga007.jf.intel.com with ESMTP; 26 Jul 2023 00:49:23 -0700
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 26 Jul 2023 09:53:14 +0200
Message-Id: <20230726075314.101816-2-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230726075314.101816-1-jan.sokolowski@intel.com>
References: <20230726075314.101816-1-jan.sokolowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690358188; x=1721894188;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8Dz1JaLU4WTsD4oD/JXa2o3zVoHsnYwaYEtKsSMOk9U=;
 b=Iw1pubzAvM/aeidO0BcmEIehjwNQxTyD8XO4l3gxp6qylSEnPWaD+pGf
 wGHFF8gtbKQhDmAmv49NStGIqzCTKKhCNC0JLHmyQ8vI7GfGjodxpKd0Z
 /2Exu3RaPyQbeJmqarMMqcyU88XYu8f+vDrUWISHEYwPT81LxMDJ232+A
 GseRvLR7iUsj1j1KJu8sj7lJTY+tPPPF6DLHKqwx9/Hww/enQZbBH48/w
 u4rf5HMQfqTS26qRA1ZquvcXDQR05svb+XEpEzqTXSydOuGmKIDTAJAkL
 Ghf299Fa0sUEvZsN6WszS1vzi21e9ALRUPHlX6GB9LzjyDPhvkZOqibHb
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Iw1pubzA
Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/2] ice: remove unused methods
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

Following methods were found to no longer be in use:
ice_is_pca9575_present
ice_mac_fltr_exist
ice_napi_del

Remove them.

Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c    | 15 -------
 drivers/net/ethernet/intel/ice/ice_lib.h    |  2 -
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 19 --------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  1 -
 drivers/net/ethernet/intel/ice/ice_switch.c | 48 ---------------------
 drivers/net/ethernet/intel/ice/ice_switch.h |  1 -
 6 files changed, 86 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 3ff2f32a2ab0..d3fb2b7535e7 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2943,21 +2943,6 @@ void ice_vsi_dis_irq(struct ice_vsi *vsi)
 		synchronize_irq(vsi->q_vectors[i]->irq.virq);
 }
 
-/**
- * ice_napi_del - Remove NAPI handler for the VSI
- * @vsi: VSI for which NAPI handler is to be removed
- */
-void ice_napi_del(struct ice_vsi *vsi)
-{
-	int v_idx;
-
-	if (!vsi->netdev)
-		return;
-
-	ice_for_each_q_vector(vsi, v_idx)
-		netif_napi_del(&vsi->q_vectors[v_idx]->napi);
-}
-
 /**
  * ice_vsi_release - Delete a VSI and free its resources
  * @vsi: the VSI being removed
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 9f2a361a4d8c..f24f5d1e6f9c 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -91,8 +91,6 @@ void ice_vsi_cfg_netdev_tc(struct ice_vsi *vsi, u8 ena_tc);
 struct ice_vsi *
 ice_vsi_setup(struct ice_pf *pf, struct ice_vsi_cfg_params *params);
 
-void ice_napi_del(struct ice_vsi *vsi);
-
 int ice_vsi_release(struct ice_vsi *vsi);
 
 void ice_vsi_close(struct ice_vsi *vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 4dab0611137a..6cb332bdee8a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -3063,25 +3063,6 @@ int ice_read_pca9575_reg_e810t(struct ice_hw *hw, u8 offset, u8 *data)
 	return ice_aq_read_i2c(hw, link_topo, 0, addr, 1, data, NULL);
 }
 
-/**
- * ice_is_pca9575_present
- * @hw: pointer to the hw struct
- *
- * Check if the SW IO expander is present in the netlist
- */
-bool ice_is_pca9575_present(struct ice_hw *hw)
-{
-	u16 handle = 0;
-	int status;
-
-	if (!ice_is_e810t(hw))
-		return false;
-
-	status = ice_get_pca9575_handle(hw, &handle);
-
-	return !status && handle;
-}
-
 /* Device agnostic functions
  *
  * The following functions implement shared behavior common to both E822 and
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 8eab12aa8905..da815d001d28 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -197,7 +197,6 @@ int ice_phy_cfg_rx_offset_e822(struct ice_hw *hw, u8 port);
 int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data);
 int ice_write_sma_ctrl_e810t(struct ice_hw *hw, u8 data);
 int ice_read_pca9575_reg_e810t(struct ice_hw *hw, u8 offset, u8 *data);
-bool ice_is_pca9575_present(struct ice_hw *hw);
 
 void ice_ptp_init_phy_model(struct ice_hw *hw);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index a7afb612fe32..24c3f481848b 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -3408,54 +3408,6 @@ ice_remove_rule_internal(struct ice_hw *hw, u8 recp_id,
 	return status;
 }
 
-/**
- * ice_mac_fltr_exist - does this MAC filter exist for given VSI
- * @hw: pointer to the hardware structure
- * @mac: MAC address to be checked (for MAC filter)
- * @vsi_handle: check MAC filter for this VSI
- */
-bool ice_mac_fltr_exist(struct ice_hw *hw, u8 *mac, u16 vsi_handle)
-{
-	struct ice_fltr_mgmt_list_entry *entry;
-	struct list_head *rule_head;
-	struct ice_switch_info *sw;
-	struct mutex *rule_lock; /* Lock to protect filter rule list */
-	u16 hw_vsi_id;
-
-	if (!ice_is_vsi_valid(hw, vsi_handle))
-		return false;
-
-	hw_vsi_id = ice_get_hw_vsi_num(hw, vsi_handle);
-	sw = hw->switch_info;
-	rule_head = &sw->recp_list[ICE_SW_LKUP_MAC].filt_rules;
-	if (!rule_head)
-		return false;
-
-	rule_lock = &sw->recp_list[ICE_SW_LKUP_MAC].filt_rule_lock;
-	mutex_lock(rule_lock);
-	list_for_each_entry(entry, rule_head, list_entry) {
-		struct ice_fltr_info *f_info = &entry->fltr_info;
-		u8 *mac_addr = &f_info->l_data.mac.mac_addr[0];
-
-		if (is_zero_ether_addr(mac_addr))
-			continue;
-
-		if (f_info->flag != ICE_FLTR_TX ||
-		    f_info->src_id != ICE_SRC_ID_VSI ||
-		    f_info->lkup_type != ICE_SW_LKUP_MAC ||
-		    f_info->fltr_act != ICE_FWD_TO_VSI ||
-		    hw_vsi_id != f_info->fwd_id.hw_vsi_id)
-			continue;
-
-		if (ether_addr_equal(mac, mac_addr)) {
-			mutex_unlock(rule_lock);
-			return true;
-		}
-	}
-	mutex_unlock(rule_lock);
-	return false;
-}
-
 /**
  * ice_vlan_fltr_exist - does this VLAN filter exist for given VSI
  * @hw: pointer to the hardware structure
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index 0bd4320e39df..db7e501b7e0a 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -371,7 +371,6 @@ int ice_add_vlan(struct ice_hw *hw, struct list_head *m_list);
 int ice_remove_vlan(struct ice_hw *hw, struct list_head *v_list);
 int ice_add_mac(struct ice_hw *hw, struct list_head *m_lst);
 int ice_remove_mac(struct ice_hw *hw, struct list_head *m_lst);
-bool ice_mac_fltr_exist(struct ice_hw *hw, u8 *mac, u16 vsi_handle);
 bool ice_vlan_fltr_exist(struct ice_hw *hw, u16 vlan_id, u16 vsi_handle);
 int ice_add_eth_mac(struct ice_hw *hw, struct list_head *em_list);
 int ice_remove_eth_mac(struct ice_hw *hw, struct list_head *em_list);
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
