Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 21854580F64
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Jul 2022 10:52:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 955E7419AF;
	Tue, 26 Jul 2022 08:52:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 955E7419AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658825568;
	bh=Mk6p50s7qhQmB1ggIr7SSW7yduA3IKVHvQP9FdRTgLk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=oy/311Dc7Qvc15VyNs6mrn8Na9sKT/VslNbU7eKbPq0sEO4LKH8EZYDAOB3X4Abpj
	 DmSomahmjlcqwRir61BBiPfPDL55mA4AhXDfZWRWcsvnSg7gX1o/PYctxVQQSlZkgF
	 KiiD9SsuhR/n4uoKVEBlhAR1g9scnjN3fpZp6GhOQGdSvSUJnd1KytpHeSGQLDyNY0
	 JSwfZnwHM8EbEwc1kzI4wzUnMfNsMgUw8GAFgVk/SUcBTIHwkx3VFi4rgdQEliK8rr
	 h4wpzENxcUVxJV64rJeO5K3b6kAprSaxaUIU4lGgGzdbauJZVSnOwbdrzjWYvZSJYz
	 gfK+o49e2++lA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tjzxtejM2fFk; Tue, 26 Jul 2022 08:52:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF7D041635;
	Tue, 26 Jul 2022 08:52:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF7D041635
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D55BF1BF239
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 08:52:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B9D2E41635
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 08:52:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9D2E41635
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jzUl6_5EvnbP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jul 2022 08:52:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6BBA541634
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6BBA541634
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 08:52:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10419"; a="349600810"
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="349600810"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 01:52:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="776235990"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by orsmga005.jf.intel.com with ESMTP; 26 Jul 2022 01:52:37 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Jul 2022 10:50:07 +0200
Message-Id: <20220726085007.989536-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658825560; x=1690361560;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qzO55WwLL8Mh6ncagDH4KN1Kmxvp2BX2yod3bS2dpmA=;
 b=oBaX9kRZRukpyn84Kogi6Ooaeb/BoApXRzZyKLeODI+2tD0yrNcYGTzU
 V2U8QvaA+epN0JCq6KF5wgqqRe3sA2HSDwnMpfWNSvMTm9P/Be9Tx42Js
 z5TdOKPhhfS104TJN/3J361prov4kfmDiRJXkYrLNvbe0icxhRFGeHZXc
 9nQt/WTRdibsfkwy4oKBjs47QINBEfCCZB9EknElUv4V5AW4rby7W+Wef
 qA4KrkaGBexI3qvaGubuvlK/sYiXHO9hUqd6rGRMfp5aZnpaqIL+oqpSA
 yNRgJr5SwtLxLWKeOyv7xyVtTP4f0SRZZlOmfhok+UMEXCzsTp6/xgGD6
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oBaX9kRZ
Subject: [Intel-wired-lan] [PATCH net-next v1] ice: Remove ucast_shared
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

From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>

Remove ucast_shared as it was always true. Remove the code depending on
ucast_shared from ice_add_mac and ice_remove_mac.
Remove ice_find_ucast_rule_entry function as it was only
used when ucast_shared was set to false.

Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c   |   2 -
 drivers/net/ethernet/intel/ice/ice_switch.c | 164 +-------------------
 drivers/net/ethernet/intel/ice/ice_type.h   |   2 -
 3 files changed, 5 insertions(+), 163 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 47046c0bc93e..da212fbbd9d9 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4748,8 +4748,6 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		ice_set_safe_mode_caps(hw);
 	}
 
-	hw->ucast_shared = true;
-
 	err = ice_init_pf(pf);
 	if (err) {
 		dev_err(dev, "ice_init_pf failed: %d\n", err);
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 66d1e17896a6..b7e9b270b6a7 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -3295,31 +3295,17 @@ bool ice_vlan_fltr_exist(struct ice_hw *hw, u16 vlan_id, u16 vsi_handle)
  * ice_add_mac - Add a MAC address based filter rule
  * @hw: pointer to the hardware structure
  * @m_list: list of MAC addresses and forwarding information
- *
- * IMPORTANT: When the ucast_shared flag is set to false and m_list has
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
@@ -3338,106 +3324,13 @@ int ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
 		if (m_list_itr->fltr_info.lkup_type != ICE_SW_LKUP_MAC ||
 		    is_zero_ether_addr(add))
 			return -EINVAL;
-		if (is_unicast_ether_addr(add) && !hw->ucast_shared) {
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
-			   (is_unicast_ether_addr(add) && hw->ucast_shared)) {
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
+		m_list_itr->status = ice_add_rule_internal(hw, ICE_SW_LKUP_MAC,
+							   m_list_itr);
+		if (m_list_itr->status)
+			return m_list_itr->status;
 	}
 
-ice_add_mac_exit:
-	mutex_unlock(rule_lock);
-	if (s_rule)
-		devm_kfree(ice_hw_to_dev(hw), s_rule);
 	return status;
 }
 
@@ -3822,38 +3715,6 @@ ice_check_if_dflt_vsi(struct ice_port_info *pi, u16 vsi_handle,
 	return ret;
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
@@ -3870,15 +3731,12 @@ ice_find_ucast_rule_entry(struct ice_hw *hw, u8 recp_id,
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
@@ -3890,19 +3748,7 @@ int ice_remove_mac(struct ice_hw *hw, struct list_head *m_list)
 
 		list_itr->fltr_info.fwd_id.hw_vsi_id =
 					ice_get_hw_vsi_num(hw, vsi_handle);
-		if (is_unicast_ether_addr(add) && !hw->ucast_shared) {
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
+
 		list_itr->status = ice_remove_rule_internal(hw,
 							    ICE_SW_LKUP_MAC,
 							    list_itr);
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 830a77dfe6fa..52fbd903d256 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -886,8 +886,6 @@ struct ice_hw {
 	/* INTRL granularity in 1 us */
 	u8 intrl_gran;
 
-	u8 ucast_shared;	/* true if VSIs can share unicast addr */
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
