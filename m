Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B52D76B3C3
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 13:49:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 424EB405DD;
	Tue,  1 Aug 2023 11:49:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 424EB405DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690890575;
	bh=WLpPJKErBgdwULCR0GEjRch/M3sS6Kd/lA2SczduewY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4XJ267u3qU/u6DLMfHcAKnfhBnR56hUe5E5GQU/dpEM6mas1eH/sy2eX1ba5kF+ua
	 oBK+uDwthgpMZVnGe/lyIDnrCJR80blDqvj4B8894QzXvBPIbcnsKA1/zmGruDSktm
	 yS8p4ZHOGmJSBl13jxCZwTmKQHZjxvEoJZck4NOi6vojq26+tf9aqLcoCJRgfS6XKr
	 uPSEygxIPY1teYSq42PTpvDK8IQ9quoSvv51huq6pWqG9Fs6h41DKU5Kv0r4TYj0D8
	 eB4icnHCvyRcaMSMQVAXcnbmxb0q2j3bUDD5QI6ydTFdRQF8O95SU7RxM6lNICPiqD
	 /bNUZ8dxLXnsA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vgnhwv9FXsxW; Tue,  1 Aug 2023 11:49:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 76A5E4011A;
	Tue,  1 Aug 2023 11:49:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 76A5E4011A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 56B7F1BF97F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 11:49:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AECAA40194
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 11:49:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AECAA40194
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xd2nVSWo_5Pu for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 11:49:22 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DF4444011A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 11:49:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DF4444011A
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="433112511"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="433112511"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 04:49:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="902528640"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="902528640"
Received: from s240.igk.intel.com (HELO DevelopmentVM.nql.local)
 ([10.102.18.202])
 by orsmga005.jf.intel.com with ESMTP; 01 Aug 2023 04:49:20 -0700
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  1 Aug 2023 13:53:04 +0200
Message-Id: <20230801115309.697331-2-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230801115309.697331-1-jan.sokolowski@intel.com>
References: <20230801115309.697331-1-jan.sokolowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690890561; x=1722426561;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T2iM4YtkKd0y6cIhj66HUViH3YUUhzHdM7wxqwKMaZY=;
 b=IaTYJ10hia2R86LkoW64ilnVjVQa8zIUDJqAT+VJinTJ+3128hKSxN4u
 oH733m67yXgE80IHpLbBpbArIe36fNDC3KNrIs1AUf/RyjSqLgnwy1tN9
 dneU/PJSmDqayO/x1JhkNzBq3vAJ9g7nGLujG3IOIeE3pZc3LwyYU9VOQ
 Y9oaVr6InJ7nI1Ty55HdO5sAWTpwx8o8TxlHByi6Zrxik96AZfF8LEFzV
 CPOKHaTvEYZFcQ8HsP2jIuMofUDQO7McEs1exoWwVDO9PG5I2kM4JNPg3
 1BOikdM9B1KLnBovF0eE3f0zAPM3nCGjn4he9nyy+cglu2yQWdmz7CdBl
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IaTYJ10h
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/6] ice: remove unused methods
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
index 927518fcad51..54aa01d2a474 100644
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
index dd53fe968ad8..cb6599cb8be6 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -93,8 +93,6 @@ void ice_vsi_cfg_netdev_tc(struct ice_vsi *vsi, u8 ena_tc);
 struct ice_vsi *
 ice_vsi_setup(struct ice_pf *pf, struct ice_vsi_cfg_params *params);
 
-void ice_napi_del(struct ice_vsi *vsi);
-
 int ice_vsi_release(struct ice_vsi *vsi);
 
 void ice_vsi_close(struct ice_vsi *vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 526a70a83747..dd2fad831924 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -3113,25 +3113,6 @@ int ice_read_pca9575_reg_e810t(struct ice_hw *hw, u8 offset, u8 *data)
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
index 5987d3422dfe..3dc1d6e5468c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -202,7 +202,6 @@ int ice_ptp_init_phy_e810(struct ice_hw *hw);
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
