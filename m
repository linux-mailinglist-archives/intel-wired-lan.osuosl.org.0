Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E995787B4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Jul 2022 18:45:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3005F60B5B;
	Mon, 18 Jul 2022 16:45:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3005F60B5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658162722;
	bh=E5GMdgqbfwilmTRJrklVuuoq2oLGy7+xCsdKiQU1REQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OB8f2veKORTOS2Bn05O/svBonr8C6Ev4QH12XI89ZoCRHT7a71fJFlrAFHmJMmktr
	 y1kKH0A6BGsyADS4hheoj53ii4JH0pmYqt4A7l0IZrM6eNZcKSXNkbhQ2KbpRHRoEs
	 eKBmxedAwQ/daOkIWO79+KnFTxt9PHpy6G/QQpyieFGE1Syx7rbPQ/EHhPemKlD82Z
	 VdHXF0nnE2oyUeXKjp49+f0pgwVL7D7lYs3zIkzjHRrNdam0lcjAJ9ovt62biTVh0n
	 UoQK2MRfzjQNDvhmGHvitvSjtJsnXa0s+Xvjp7c1prpoh5AWRoZVc+DlfH+0duVb+G
	 fcYelHi71uRSQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 532swXg-fFzz; Mon, 18 Jul 2022 16:45:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB8F860F32;
	Mon, 18 Jul 2022 16:45:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB8F860F32
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F1C871BF299
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jul 2022 16:45:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D9F3960F2B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jul 2022 16:45:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D9F3960F2B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tgkt3K93eX1B for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Jul 2022 16:45:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CFE2B60B5B
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CFE2B60B5B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jul 2022 16:45:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10412"; a="273096671"
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="273096671"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 09:45:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="572482735"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by orsmga006.jf.intel.com with ESMTP; 18 Jul 2022 09:45:09 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Jul 2022 18:42:44 +0200
Message-Id: <20220718164244.261979-2-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220718164244.261979-1-jedrzej.jagielski@intel.com>
References: <20220718164244.261979-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658162711; x=1689698711;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tXjy1Ub9TdXT0T2gzrY5Zz8cil1tFo5j4dnufZFrBSY=;
 b=Y6nhddMf3FfdeIG7SWq3iYfYB8roZx+0Tfdzm8nhoqyGPn1VYe4jUpKV
 6qtWh7NCimL1fKvjxEGeKAW5Y81H1psxEP0MHrP9S86QTC3Zh3jnjk1et
 5wbfZyR2ZjsmpJVMXbvsN0YZMs3O82rhja+XQD1mVGlSqE1FaGsmUj2hH
 zyQ8pEI7cMfFP3ShFudqRXB/J8wHxUqGYq+VwZr8mVLoYgeDRX/2EMAHl
 YlIwlSoEZgBftOt/+7TJHy5IzevdkwulZIq7cq1qr6J0UfxjaklzNcBe2
 xufWlUnDQAxyXlkqopLOae1Z0Ff6nx+V84y05ajOUbYp2CwbO/F7Pxxjv
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y6nhddMf
Subject: [Intel-wired-lan] [PATCH net v5 2/2] ice: Remove umac_shared
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Remove umac_shared as it was always true. Remove helper function
to set umac_shared. Remove the code depending on umac_shared
from ice_add_mac and ice_remove_mac.
Remove ice_find_ucast_rule_entry function as it was only
used when umac_shared was set to false.

Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c |  11 --
 drivers/net/ethernet/intel/ice/ice_common.h |   1 -
 drivers/net/ethernet/intel/ice/ice_main.c   |   2 -
 drivers/net/ethernet/intel/ice/ice_switch.c | 164 +-------------------
 drivers/net/ethernet/intel/ice/ice_type.h   |   3 -
 5 files changed, 5 insertions(+), 176 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 64748ecebabe..9619bdb9e49a 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -899,17 +899,6 @@ static void ice_get_itr_intrl_gran(struct ice_hw *hw)
 	}
 }
 
-/**
- * ice_set_umac_shared
- * @hw: pointer to the hw struct
- *
- * Set boolean flag to allow unicast MAC sharing
- */
-void ice_set_umac_shared(struct ice_hw *hw)
-{
-	hw->umac_shared = true;
-}
-
 /**
  * ice_init_hw - main hardware initialization routine
  * @hw: pointer to the hardware structure
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 8a66f86c8893..872ea7d2332d 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -16,7 +16,6 @@
 #define ICE_SQ_SEND_DELAY_TIME_MS	10
 #define ICE_SQ_SEND_MAX_EXECUTE		3
 
-void ice_set_umac_shared(struct ice_hw *hw);
 int ice_init_hw(struct ice_hw *hw);
 void ice_deinit_hw(struct ice_hw *hw);
 int ice_check_reset(struct ice_hw *hw);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index bea750bebdb6..0c5780bccb38 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4667,8 +4667,6 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		ice_set_safe_mode_caps(hw);
 	}
 
-	ice_set_umac_shared(hw);
-
 	err = ice_init_pf(pf);
 	if (err) {
 		dev_err(dev, "ice_init_pf failed: %d\n", err);
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index b7f3876d8d12..6650d777e361 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -3424,31 +3424,17 @@ bool ice_vlan_fltr_exist(struct ice_hw *hw, u16 vlan_id, u16 vsi_handle)
  * ice_add_mac - Add a MAC address based filter rule
  * @hw: pointer to the hardware structure
  * @m_list: list of MAC addresses and forwarding information
- *
- * IMPORTANT: When the umac_shared flag is set to false and m_list has
- * multiple unicast addresses, the function assumes that all the
- * addresses are unique in a given add_mac call. It doesn't
- * check for duplicates in this case, removing duplicates from a given
- * list should be taken care of in the caller of this function.
  */
 int ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
 {
-	struct ice_sw_rule_lkup_rx_tx *s_rule, *r_iter;
 	struct ice_fltr_list_entry *m_list_itr;
-	struct list_head *rule_head;
-	u16 total_elem_left, s_rule_size;
 	struct ice_switch_info *sw;
-	struct mutex *rule_lock; /* Lock to protect filter rule list */
-	u16 num_unicast = 0;
 	int status = 0;
-	u8 elem_sent;
 
 	if (!m_list || !hw)
 		return -EINVAL;
 
-	s_rule = NULL;
 	sw = hw->switch_info;
-	rule_lock = &sw->recp_list[ICE_SW_LKUP_MAC].filt_rule_lock;
 	list_for_each_entry(m_list_itr, m_list, list_entry) {
 		u8 *add = &m_list_itr->fltr_info.l_data.mac.mac_addr[0];
 		u16 vsi_handle;
@@ -3467,106 +3453,14 @@ int ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
 		if (m_list_itr->fltr_info.lkup_type != ICE_SW_LKUP_MAC ||
 		    is_zero_ether_addr(add))
 			return -EINVAL;
-		if (is_unicast_ether_addr(add) && !hw->umac_shared) {
-			/* Don't overwrite the unicast address */
-			mutex_lock(rule_lock);
-			if (ice_find_rule_entry(hw, ICE_SW_LKUP_MAC,
-						&m_list_itr->fltr_info)) {
-				mutex_unlock(rule_lock);
-				return -EEXIST;
-			}
-			mutex_unlock(rule_lock);
-			num_unicast++;
-		} else if (is_multicast_ether_addr(add) ||
-			   (is_unicast_ether_addr(add) && hw->umac_shared)) {
-			m_list_itr->status =
-				ice_add_rule_internal(hw, ICE_SW_LKUP_MAC,
-						      m_list_itr);
-			if (m_list_itr->status)
-				return m_list_itr->status;
-		}
-	}
-
-	mutex_lock(rule_lock);
-	/* Exit if no suitable entries were found for adding bulk switch rule */
-	if (!num_unicast) {
-		status = 0;
-		goto ice_add_mac_exit;
-	}
-
-	rule_head = &sw->recp_list[ICE_SW_LKUP_MAC].filt_rules;
-
-	/* Allocate switch rule buffer for the bulk update for unicast */
-	s_rule_size = ICE_SW_RULE_RX_TX_ETH_HDR_SIZE(s_rule);
-	s_rule = devm_kcalloc(ice_hw_to_dev(hw), num_unicast, s_rule_size,
-			      GFP_KERNEL);
-	if (!s_rule) {
-		status = -ENOMEM;
-		goto ice_add_mac_exit;
-	}
-
-	r_iter = s_rule;
-	list_for_each_entry(m_list_itr, m_list, list_entry) {
-		struct ice_fltr_info *f_info = &m_list_itr->fltr_info;
-		u8 *mac_addr = &f_info->l_data.mac.mac_addr[0];
-
-		if (is_unicast_ether_addr(mac_addr)) {
-			ice_fill_sw_rule(hw, &m_list_itr->fltr_info, r_iter,
-					 ice_aqc_opc_add_sw_rules);
-			r_iter = (typeof(s_rule))((u8 *)r_iter + s_rule_size);
-		}
-	}
-
-	/* Call AQ bulk switch rule update for all unicast addresses */
-	r_iter = s_rule;
-	/* Call AQ switch rule in AQ_MAX chunk */
-	for (total_elem_left = num_unicast; total_elem_left > 0;
-	     total_elem_left -= elem_sent) {
-		struct ice_sw_rule_lkup_rx_tx *entry = r_iter;
-
-		elem_sent = min_t(u8, total_elem_left,
-				  (ICE_AQ_MAX_BUF_LEN / s_rule_size));
-		status = ice_aq_sw_rules(hw, entry, elem_sent * s_rule_size,
-					 elem_sent, ice_aqc_opc_add_sw_rules,
-					 NULL);
-		if (status)
-			goto ice_add_mac_exit;
-		r_iter = (typeof(s_rule))
-			((u8 *)r_iter + (elem_sent * s_rule_size));
-	}
-
-	/* Fill up rule ID based on the value returned from FW */
-	r_iter = s_rule;
-	list_for_each_entry(m_list_itr, m_list, list_entry) {
-		struct ice_fltr_info *f_info = &m_list_itr->fltr_info;
-		u8 *mac_addr = &f_info->l_data.mac.mac_addr[0];
-		struct ice_fltr_mgmt_list_entry *fm_entry;
-
-		if (is_unicast_ether_addr(mac_addr)) {
-			f_info->fltr_rule_id = le16_to_cpu(r_iter->index);
-			f_info->fltr_act = ICE_FWD_TO_VSI;
-			/* Create an entry to track this MAC address */
-			fm_entry = devm_kzalloc(ice_hw_to_dev(hw),
-						sizeof(*fm_entry), GFP_KERNEL);
-			if (!fm_entry) {
-				status = -ENOMEM;
-				goto ice_add_mac_exit;
-			}
-			fm_entry->fltr_info = *f_info;
-			fm_entry->vsi_count = 1;
-			/* The book keeping entries will get removed when
-			 * base driver calls remove filter AQ command
-			 */
 
-			list_add(&fm_entry->list_entry, rule_head);
-			r_iter = (typeof(s_rule))((u8 *)r_iter + s_rule_size);
-		}
+		m_list_itr->status =
+			ice_add_rule_internal(hw, ICE_SW_LKUP_MAC,
+					      m_list_itr);
+		if (m_list_itr->status)
+			return m_list_itr->status;
 	}
 
-ice_add_mac_exit:
-	mutex_unlock(rule_lock);
-	if (s_rule)
-		devm_kfree(ice_hw_to_dev(hw), s_rule);
 	return status;
 }
 
@@ -3932,38 +3826,6 @@ int ice_cfg_dflt_vsi(struct ice_hw *hw, u16 vsi_handle, bool set, u8 direction)
 	return status;
 }
 
-/**
- * ice_find_ucast_rule_entry - Search for a unicast MAC filter rule entry
- * @hw: pointer to the hardware structure
- * @recp_id: lookup type for which the specified rule needs to be searched
- * @f_info: rule information
- *
- * Helper function to search for a unicast rule entry - this is to be used
- * to remove unicast MAC filter that is not shared with other VSIs on the
- * PF switch.
- *
- * Returns pointer to entry storing the rule if found
- */
-static struct ice_fltr_mgmt_list_entry *
-ice_find_ucast_rule_entry(struct ice_hw *hw, u8 recp_id,
-			  struct ice_fltr_info *f_info)
-{
-	struct ice_switch_info *sw = hw->switch_info;
-	struct ice_fltr_mgmt_list_entry *list_itr;
-	struct list_head *list_head;
-
-	list_head = &sw->recp_list[recp_id].filt_rules;
-	list_for_each_entry(list_itr, list_head, list_entry) {
-		if (!memcmp(&f_info->l_data, &list_itr->fltr_info.l_data,
-			    sizeof(f_info->l_data)) &&
-		    f_info->fwd_id.hw_vsi_id ==
-		    list_itr->fltr_info.fwd_id.hw_vsi_id &&
-		    f_info->flag == list_itr->fltr_info.flag)
-			return list_itr;
-	}
-	return NULL;
-}
-
 /**
  * ice_remove_mac - remove a MAC address based filter rule
  * @hw: pointer to the hardware structure
@@ -3980,15 +3842,12 @@ ice_find_ucast_rule_entry(struct ice_hw *hw, u8 recp_id,
 int ice_remove_mac(struct ice_hw *hw, struct list_head *m_list)
 {
 	struct ice_fltr_list_entry *list_itr, *tmp;
-	struct mutex *rule_lock; /* Lock to protect filter rule list */
 
 	if (!m_list)
 		return -EINVAL;
 
-	rule_lock = &hw->switch_info->recp_list[ICE_SW_LKUP_MAC].filt_rule_lock;
 	list_for_each_entry_safe(list_itr, tmp, m_list, list_entry) {
 		enum ice_sw_lkup_type l_type = list_itr->fltr_info.lkup_type;
-		u8 *add = &list_itr->fltr_info.l_data.mac.mac_addr[0];
 		u16 vsi_handle;
 
 		if (l_type != ICE_SW_LKUP_MAC)
@@ -4000,19 +3859,6 @@ int ice_remove_mac(struct ice_hw *hw, struct list_head *m_list)
 
 		list_itr->fltr_info.fwd_id.hw_vsi_id =
 					ice_get_hw_vsi_num(hw, vsi_handle);
-		if (is_unicast_ether_addr(add) && !hw->umac_shared) {
-			/* Don't remove the unicast address that belongs to
-			 * another VSI on the switch, since it is not being
-			 * shared...
-			 */
-			mutex_lock(rule_lock);
-			if (!ice_find_ucast_rule_entry(hw, ICE_SW_LKUP_MAC,
-						       &list_itr->fltr_info)) {
-				mutex_unlock(rule_lock);
-				return -ENOENT;
-			}
-			mutex_unlock(rule_lock);
-		}
 		list_itr->status = ice_remove_rule_internal(hw,
 							    ICE_SW_LKUP_MAC,
 							    list_itr);
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index bef7c3ba1a20..2ca24df10433 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -889,9 +889,6 @@ struct ice_hw {
 	/* INTRL granularity in 1 us */
 	u8 intrl_gran;
 
-	/* true if VSIs can share unicast MAC addr */
-	u8 umac_shared;
-
 #define ICE_PHY_PER_NAC		1
 #define ICE_MAX_QUAD		2
 #define ICE_NUM_QUAD_TYPE	2
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
