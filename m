Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D6BF0756CD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2019 20:22:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2F53D2268D;
	Thu, 25 Jul 2019 18:22:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s1mCmbVXm-6I; Thu, 25 Jul 2019 18:22:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 242D52266F;
	Thu, 25 Jul 2019 18:22:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F25A71BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 18:22:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EFCF3865AB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 18:22:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x4ZhQDZw6UGD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2019 18:22:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 39F8986582
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 18:22:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 11:22:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,307,1559545200"; d="scan'208";a="193897599"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga004.fm.intel.com with ESMTP; 25 Jul 2019 11:22:17 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jul 2019 02:53:52 -0700
Message-Id: <20190725095401.24590-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190725095401.24590-1-anthony.l.nguyen@intel.com>
References: <20190725095401.24590-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S25 03/12] ice: Don't allow VSI to remove
 unassociated ucast filter
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

From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>

If a VSI is not using a unicast filter or did not configure that
particular unicast filter, driver should not allow it to be removed
by the rogue VSI.

Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 56 +++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 6b68ff8dae18..2e6ea062fa2a 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -2136,6 +2136,38 @@ ice_cfg_dflt_vsi(struct ice_hw *hw, u16 vsi_handle, bool set, u8 direction)
 	return status;
 }
 
+/**
+ * ice_find_ucast_rule_entry - Search for a unicast MAC filter rule entry
+ * @hw: pointer to the hardware structure
+ * @recp_id: lookup type for which the specified rule needs to be searched
+ * @f_info: rule information
+ *
+ * Helper function to search for a unicast rule entry - this is to be used
+ * to remove unicast MAC filter that is not shared with other VSIs on the
+ * PF switch.
+ *
+ * Returns pointer to entry storing the rule if found
+ */
+static struct ice_fltr_mgmt_list_entry *
+ice_find_ucast_rule_entry(struct ice_hw *hw, u8 recp_id,
+			  struct ice_fltr_info *f_info)
+{
+	struct ice_switch_info *sw = hw->switch_info;
+	struct ice_fltr_mgmt_list_entry *list_itr;
+	struct list_head *list_head;
+
+	list_head = &sw->recp_list[recp_id].filt_rules;
+	list_for_each_entry(list_itr, list_head, list_entry) {
+		if (!memcmp(&f_info->l_data, &list_itr->fltr_info.l_data,
+			    sizeof(f_info->l_data)) &&
+		    f_info->fwd_id.hw_vsi_id ==
+		    list_itr->fltr_info.fwd_id.hw_vsi_id &&
+		    f_info->flag == list_itr->fltr_info.flag)
+			return list_itr;
+	}
+	return NULL;
+}
+
 /**
  * ice_remove_mac - remove a MAC address based filter rule
  * @hw: pointer to the hardware structure
@@ -2153,15 +2185,39 @@ enum ice_status
 ice_remove_mac(struct ice_hw *hw, struct list_head *m_list)
 {
 	struct ice_fltr_list_entry *list_itr, *tmp;
+	struct mutex *rule_lock; /* Lock to protect filter rule list */
 
 	if (!m_list)
 		return ICE_ERR_PARAM;
 
+	rule_lock = &hw->switch_info->recp_list[ICE_SW_LKUP_MAC].filt_rule_lock;
 	list_for_each_entry_safe(list_itr, tmp, m_list, list_entry) {
 		enum ice_sw_lkup_type l_type = list_itr->fltr_info.lkup_type;
+		u8 *add = &list_itr->fltr_info.l_data.mac.mac_addr[0];
+		u16 vsi_handle;
 
 		if (l_type != ICE_SW_LKUP_MAC)
 			return ICE_ERR_PARAM;
+
+		vsi_handle = list_itr->fltr_info.vsi_handle;
+		if (!ice_is_vsi_valid(hw, vsi_handle))
+			return ICE_ERR_PARAM;
+
+		list_itr->fltr_info.fwd_id.hw_vsi_id =
+					ice_get_hw_vsi_num(hw, vsi_handle);
+		if (is_unicast_ether_addr(add) && !hw->ucast_shared) {
+			/* Don't remove the unicast address that belongs to
+			 * another VSI on the switch, since it is not being
+			 * shared...
+			 */
+			mutex_lock(rule_lock);
+			if (!ice_find_ucast_rule_entry(hw, ICE_SW_LKUP_MAC,
+						       &list_itr->fltr_info)) {
+				mutex_unlock(rule_lock);
+				return ICE_ERR_DOES_NOT_EXIST;
+			}
+			mutex_unlock(rule_lock);
+		}
 		list_itr->status = ice_remove_rule_internal(hw,
 							    ICE_SW_LKUP_MAC,
 							    list_itr);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
