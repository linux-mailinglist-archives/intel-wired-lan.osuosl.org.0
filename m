Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C55776137
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Aug 2023 15:36:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9F121414E8;
	Wed,  9 Aug 2023 13:36:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9F121414E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691588178;
	bh=KclCvl/TmR7s5rXRiF5gbcAFccd/hAMdAp+lSE/8Lok=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=d2pgps7yaelnBBtuBBenGBmWIviOBcDplfrxTlVZtkQ7sKUa/R7I2cXSmlBSeNZfb
	 +LqUjgObrFJTT1H442vX31wpMMBalbw0ByOxYr/UB6rnXiC5mE15+BAaoRETC15wrr
	 a+HLo1EzTjQahfWlwUvcgxjVD7o9uVGVhYcyk3Xm/3s4cOTwiql2/V7t3etRyeH5x7
	 qjmOnx6+xpk6bk6sB+kSoU+v9Kr7EeMpBrnqihHX4dNhtLBp7Hnp6oYSznKAfopDlU
	 HS5OqnOK+x7Gz0WFJ8VxuvgyEcZJNJuSrDcmigdyeefcEVe4iiU3hD1WwKhKqaC0kV
	 4jN0FkZKhy1Mg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vhka6V6dPlUf; Wed,  9 Aug 2023 13:36:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 12DA340CBE;
	Wed,  9 Aug 2023 13:36:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12DA340CBE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 089681BF842
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 13:35:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CE29082062
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 13:35:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE29082062
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OcBCTPN-S5D6 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Aug 2023 13:35:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 02E9B82055
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 13:35:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 02E9B82055
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="402086852"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="402086852"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2023 06:35:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="725401499"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="725401499"
Received: from s240.igk.intel.com (HELO DevelopmentVM.nql.local)
 ([10.102.18.202])
 by orsmga007.jf.intel.com with ESMTP; 09 Aug 2023 06:35:23 -0700
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Aug 2023 15:39:07 +0200
Message-Id: <20230809133913.2652736-2-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230809133913.2652736-1-jan.sokolowski@intel.com>
References: <20230809133913.2652736-1-jan.sokolowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691588145; x=1723124145;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MoWtnroJgyj0GfMNGCnxO+FV036I3a5M1Oq71sKB+uE=;
 b=kwp2Ab/axeFckh/RkVQPF19/iO7J4zUIIK+KSX2K51LGpj72QN6spzwE
 q3Q+hjfCdYV9otAsdJNoCaclPQEFFXQm/yWPq2Bc2HCafQ01IBThnVg6t
 K1SqAhwI+yDSdO7IqeasUNgUMwqUVnZnl7qJnu13jIg3KP3wgO9TvTnam
 aljl9vp2RpFt6Gjeffc7cKRnGJ5Wh//0vQYyYM38ez7Y8UONrVjZGZEzP
 7ZftxQJ0ljul5lRFSudv4N6l7KxHPMQHxoRWV2zgLbf+LfCOOzIAKdcrm
 1FREDGg+t0KqjMHceNFmqVqm0LMEuXYValJdH57ZeBAwSIe8TGkOFWO97
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kwp2Ab/a
Subject: [Intel-wired-lan] [PATCH iwl-next v3 1/7] ice: remove unused methods
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
index 8d14e9324b9e..2f77b684ff76 100644
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
