Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B84B0429788
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Oct 2021 21:27:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 63356608DF;
	Mon, 11 Oct 2021 19:27:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cf2pFFcc04aX; Mon, 11 Oct 2021 19:27:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 966C3605B2;
	Mon, 11 Oct 2021 19:27:26 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D62421BF2A6
 for <intel-wired-lan@osuosl.org>; Mon, 11 Oct 2021 19:27:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C464D40371
 for <intel-wired-lan@osuosl.org>; Mon, 11 Oct 2021 19:27:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u5qu9GcDhdep for <intel-wired-lan@osuosl.org>;
 Mon, 11 Oct 2021 19:27:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7ADC840368
 for <intel-wired-lan@osuosl.org>; Mon, 11 Oct 2021 19:27:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10134"; a="214100410"
X-IronPort-AV: E=Sophos;i="5.85,365,1624345200"; d="scan'208";a="214100410"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 12:27:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,365,1624345200"; d="scan'208";a="460084369"
Received: from msu-dell.jf.intel.com ([10.166.233.5])
 by orsmga002.jf.intel.com with ESMTP; 11 Oct 2021 12:27:17 -0700
From: sudheer.mogilappagari@intel.com
To: intel-wired-lan@osuosl.org
Date: Mon, 11 Oct 2021 12:25:18 -0700
Message-Id: <20211011192518.1867431-4-sudheer.mogilappagari@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211011192518.1867431-1-sudheer.mogilappagari@intel.com>
References: <20211011192518.1867431-1-sudheer.mogilappagari@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 3/3] ice: Add tc-flower filter
 support for channel
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

From: Kiran Patil <kiran.patil@intel.com>

Add support to add/delete channel specific filter using tc-flower.
For now, only supported action is "skip_sw hw_tc <tc_num>"

Filter criteria is specific to channel and it can be
combination of L3, L3+L4, L2+L4.

Example:
MATCH criteria       Action
---------------------------
src and/or dest IPv4[6]/mask -> Forward to "hw_tc <tc_num>"
dest IPv4[6]/mask + dest L4 port -> Forward to "hw_tc <tc_num>"
dest MAC + dest L4 port -> Forward to "hw_tc <tc_num>"
src IPv4[6]/mask + src L4 port -> Forward to "hw_tc <tc_num>"
src MAC + src L4 port -> Forward to "hw_tc <tc_num>"

Adding tc-flower filter for channel using "hw_tc"
-------------------------------------------------
tc qdisc add dev <ethX> clsact

Above two steps are only needed the first time when adding
tc-flower filter.

tc filter add dev <ethX> protocol ip ingress prio 1 flower \
     dst_ip 192.168.0.1/32 ip_proto tcp dst_port 5001 \
     skip_sw hw_tc 1

tc filter show dev <ethX> ingress
filter protocol ip pref 1 flower chain 0
filter protocol ip pref 1 flower chain 0 handle 0x1 hw_tc 1
  eth_type ipv4
  ip_proto tcp
  dst_ip 192.168.0.1
  dst_port 5001
  skip_sw
  in_hw in_hw_count 1

Delete specific filter:
-------------------------
tc filter del  dev <ethx> ingress pref 1 handle 0x1 flower

Delete All filters:
------------------
tc filter del dev <ethX> ingress

Co-developed-by: Amritha Nambiar <amritha.nambiar@intel.com>
Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
Signed-off-by: Kiran Patil <kiran.patil@intel.com>
Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h        |   9 +-
 drivers/net/ethernet/intel/ice/ice_main.c   |  77 ++++++-
 drivers/net/ethernet/intel/ice/ice_switch.c | 119 +++++++++++
 drivers/net/ethernet/intel/ice/ice_switch.h |   2 +
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 217 +++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.h |  22 ++
 6 files changed, 438 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index ce7ebbc510dd..6f88385187fb 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -39,6 +39,9 @@
 #include <linux/cpu_rmap.h>
 #include <linux/dim.h>
 #include <net/pkt_cls.h>
+#include <net/tc_act/tc_mirred.h>
+#include <net/tc_act/tc_gact.h>
+#include <net/ip.h>
 #include <net/devlink.h>
 #include <net/ipv6.h>
 #include <net/xdp_sock.h>
@@ -401,6 +404,7 @@ struct ice_vsi {
 	u16 num_chnl_rxq;
 	u16 num_chnl_txq;
 	u16 ch_rss_size;
+	u16 num_chnl_fltr;
 	/* store away rss size info before configuring ADQ channels so that,
 	 * it can be used after tc-qdisc delete, to get back RSS setting as
 	 * they were before
@@ -593,7 +597,10 @@ struct ice_pf {
 	struct auxiliary_device *adev;
 	int aux_idx;
 	u32 sw_int_count;
-
+	/* count of tc_flower filters specific to channel (aka where filter
+	 * action is "hw_tc <tc_num>")
+	 */
+	u16 num_dmac_chnl_fltrs;
 	struct hlist_head tc_flower_fltr_list;
 
 	__le64 nvm_phy_type_lo; /* NVM PHY type low */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index ad8cc87401a6..daf849df024f 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5270,6 +5270,12 @@ static int ice_set_mac_address(struct net_device *netdev, void *pi)
 		return -EBUSY;
 	}
 
+	if (ice_chnl_dmac_fltr_cnt(pf)) {
+		netdev_err(netdev, "can't set mac %pM. Device has tc-flower filters, delete all of them and try again\n",
+			   mac);
+		return -EAGAIN;
+	}
+
 	netif_addr_lock_bh(netdev);
 	ether_addr_copy(old_mac, netdev->dev_addr);
 	/* change the netdev's MAC address */
@@ -5524,6 +5530,13 @@ ice_set_features(struct net_device *netdev, netdev_features_t features)
 		dev_err(ice_pf_to_dev(pf), "ADQ is active, can't turn hw_tc_offload off\n");
 		return -EACCES;
 	}
+
+	if ((features & NETIF_F_HW_TC) &&
+	    !(netdev->features & NETIF_F_HW_TC))
+		set_bit(ICE_FLAG_CLS_FLOWER, pf->flags);
+	else
+		clear_bit(ICE_FLAG_CLS_FLOWER, pf->flags);
+
 	return ret;
 }
 
@@ -7577,6 +7590,57 @@ static int ice_create_q_channel(struct ice_vsi *vsi, struct ice_channel *ch)
 	return 0;
 }
 
+/**
+ * ice_rem_all_chnl_fltrs - removes all channel filters
+ * @pf: ptr to PF, TC-flower based filter are tracked at PF level
+ *
+ * Remove all advanced switch filters only if they are channel specific
+ * tc-flower based filter
+ */
+static void ice_rem_all_chnl_fltrs(struct ice_pf *pf)
+{
+	struct ice_tc_flower_fltr *fltr;
+	struct hlist_node *node;
+
+	/* to remove all channel filters, iterate an ordered list of filters */
+	hlist_for_each_entry_safe(fltr, node,
+				  &pf->tc_flower_fltr_list,
+				  tc_flower_node) {
+		struct ice_rule_query_data rule;
+		int status;
+
+		/* for now process only channel specific filters */
+		if (!ice_is_chnl_fltr(fltr))
+			continue;
+
+		rule.rid = fltr->rid;
+		rule.rule_id = fltr->rule_id;
+		rule.vsi_handle = fltr->dest_id;
+		status = ice_rem_adv_rule_by_id(&pf->hw, &rule);
+		if (status) {
+			if (status == -ENOENT)
+				dev_dbg(ice_pf_to_dev(pf), "TC flower filter (rule_id %u) does not exist\n",
+					rule.rule_id);
+			else
+				dev_err(ice_pf_to_dev(pf), "failed to delete TC flower filter, status %d\n",
+					status);
+		} else if (fltr->dest_vsi) {
+			/* update advanced switch filter count */
+			if (fltr->dest_vsi->type == ICE_VSI_CHNL) {
+				u32 flags = fltr->flags;
+
+				fltr->dest_vsi->num_chnl_fltr--;
+				if (flags & (ICE_TC_FLWR_FIELD_DST_MAC |
+					     ICE_TC_FLWR_FIELD_ENC_DST_MAC))
+					pf->num_dmac_chnl_fltrs--;
+			}
+		}
+
+		hlist_del(&fltr->tc_flower_node);
+		kfree(fltr);
+	}
+}
+
 /**
  * ice_remove_q_channels - Remove queue channels for the TCs
  * @vsi: VSI to be configured
@@ -7584,11 +7648,16 @@ static int ice_create_q_channel(struct ice_vsi *vsi, struct ice_channel *ch)
  *
  * Remove queue channels for the TCs
  */
-static void ice_remove_q_channels(struct ice_vsi *vsi, bool __maybe_unused rem_fltr)
+static void ice_remove_q_channels(struct ice_vsi *vsi, bool rem_fltr)
 {
 	struct ice_channel *ch, *ch_tmp;
+	struct ice_pf *pf = vsi->back;
 	int i;
 
+	/* remove all tc-flower based filter if they are channel filters only */
+	if (rem_fltr)
+		ice_rem_all_chnl_fltrs(pf);
+
 	/* perform cleanup for channels if they exist */
 	list_for_each_entry_safe(ch, ch_tmp, &vsi->ch_list, list) {
 		struct ice_vsi *ch_vsi;
@@ -7854,6 +7923,12 @@ static int ice_setup_tc_mqprio_qdisc(struct net_device *netdev, void *type_data)
 		}
 		memcpy(&vsi->mqprio_qopt, mqprio_qopt, sizeof(*mqprio_qopt));
 		set_bit(ICE_FLAG_TC_MQPRIO, pf->flags);
+		/* don't assume state of hw_tc_offload during driver load
+		 * and set the flag for TC flower filter if hw_tc_offload
+		 * already ON
+		 */
+		if (vsi->netdev->features & NETIF_F_HW_TC)
+			set_bit(ICE_FLAG_CLS_FLOWER, pf->flags);
 		break;
 	default:
 		return -EINVAL;
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 61178f9aa31f..844cdd544581 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -2330,6 +2330,125 @@ ice_remove_rule_internal(struct ice_hw *hw, u8 recp_id,
 	return status;
 }
 
+/**
+ * ice_mac_fltr_exist - does this MAC filter exist for given VSI
+ * @hw: pointer to the hardware structure
+ * @mac: MAC address to be checked (for MAC filter)
+ * @vsi_handle: check MAC filter for this VSI
+ */
+bool ice_mac_fltr_exist(struct ice_hw *hw, u8 *mac, u16 vsi_handle)
+{
+	struct ice_fltr_mgmt_list_entry *entry;
+	struct list_head *rule_head;
+	struct ice_switch_info *sw;
+	struct mutex *rule_lock; /* Lock to protect filter rule list */
+	u16 hw_vsi_id;
+
+	if (!ice_is_vsi_valid(hw, vsi_handle))
+		return false;
+
+	hw_vsi_id = ice_get_hw_vsi_num(hw, vsi_handle);
+	sw = hw->switch_info;
+	rule_head = &sw->recp_list[ICE_SW_LKUP_MAC].filt_rules;
+	if (!rule_head)
+		return false;
+
+	rule_lock = &sw->recp_list[ICE_SW_LKUP_MAC].filt_rule_lock;
+	mutex_lock(rule_lock);
+	list_for_each_entry(entry, rule_head, list_entry) {
+		struct ice_fltr_info *f_info = &entry->fltr_info;
+		u8 *mac_addr = &f_info->l_data.mac.mac_addr[0];
+
+		if (is_zero_ether_addr(mac_addr))
+			continue;
+
+		if (f_info->flag != ICE_FLTR_TX ||
+		    f_info->src_id != ICE_SRC_ID_VSI ||
+		    f_info->lkup_type != ICE_SW_LKUP_MAC ||
+		    f_info->fltr_act != ICE_FWD_TO_VSI ||
+		    hw_vsi_id != f_info->fwd_id.hw_vsi_id)
+			continue;
+
+		if (ether_addr_equal(mac, mac_addr)) {
+			mutex_unlock(rule_lock);
+			return true;
+		}
+	}
+	mutex_unlock(rule_lock);
+	return false;
+}
+
+/**
+ * ice_vlan_fltr_exist - does this VLAN filter exist for given VSI
+ * @hw: pointer to the hardware structure
+ * @vlan_id: VLAN ID
+ * @vsi_handle: check MAC filter for this VSI
+ */
+bool ice_vlan_fltr_exist(struct ice_hw *hw, u16 vlan_id, u16 vsi_handle)
+{
+	struct ice_fltr_mgmt_list_entry *entry;
+	struct list_head *rule_head;
+	struct ice_switch_info *sw;
+	struct mutex *rule_lock; /* Lock to protect filter rule list */
+	u16 hw_vsi_id;
+
+	if (vlan_id > ICE_MAX_VLAN_ID)
+		return false;
+
+	if (!ice_is_vsi_valid(hw, vsi_handle))
+		return false;
+
+	hw_vsi_id = ice_get_hw_vsi_num(hw, vsi_handle);
+	sw = hw->switch_info;
+	rule_head = &sw->recp_list[ICE_SW_LKUP_VLAN].filt_rules;
+	if (!rule_head)
+		return false;
+
+	rule_lock = &sw->recp_list[ICE_SW_LKUP_VLAN].filt_rule_lock;
+	mutex_lock(rule_lock);
+	list_for_each_entry(entry, rule_head, list_entry) {
+		struct ice_fltr_info *f_info = &entry->fltr_info;
+		u16 entry_vlan_id = f_info->l_data.vlan.vlan_id;
+		struct ice_vsi_list_map_info *map_info;
+
+		if (entry_vlan_id > ICE_MAX_VLAN_ID)
+			continue;
+
+		if (f_info->flag != ICE_FLTR_TX ||
+		    f_info->src_id != ICE_SRC_ID_VSI ||
+		    f_info->lkup_type != ICE_SW_LKUP_VLAN)
+			continue;
+
+		/* Only allowed filter action are FWD_TO_VSI/_VSI_LIST */
+		if (f_info->fltr_act != ICE_FWD_TO_VSI &&
+		    f_info->fltr_act != ICE_FWD_TO_VSI_LIST)
+			continue;
+
+		if (f_info->fltr_act == ICE_FWD_TO_VSI) {
+			if (hw_vsi_id != f_info->fwd_id.hw_vsi_id)
+				continue;
+		} else if (f_info->fltr_act == ICE_FWD_TO_VSI_LIST) {
+			/* If filter_action is FWD_TO_VSI_LIST, make sure
+			 * that VSI being checked is part of VSI list
+			 */
+			if (entry->vsi_count == 1 &&
+			    entry->vsi_list_info) {
+				map_info = entry->vsi_list_info;
+				if (!test_bit(vsi_handle, map_info->vsi_map))
+					continue;
+			}
+		}
+
+		if (vlan_id == entry_vlan_id) {
+			mutex_unlock(rule_lock);
+			return true;
+		}
+	}
+	mutex_unlock(rule_lock);
+
+	return false;
+}
+
 /**
  * ice_add_mac - Add a MAC address based filter rule
  * @hw: pointer to the hardware structure
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index 4a471cccb3d5..b63be32afa9e 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -341,6 +341,8 @@ int ice_remove_mac(struct ice_hw *hw, struct list_head *m_lst);
 int ice_add_eth_mac(struct ice_hw *hw, struct list_head *em_list);
 int ice_remove_eth_mac(struct ice_hw *hw, struct list_head *em_list);
 int ice_cfg_rdma_fltr(struct ice_hw *hw, u16 vsi_handle, bool enable);
+bool ice_mac_fltr_exist(struct ice_hw *hw, u8 *mac, u16 vsi_handle);
+bool ice_vlan_fltr_exist(struct ice_hw *hw, u16 vlan_id, u16 vsi_handle);
 void ice_remove_vsi_fltr(struct ice_hw *hw, u16 vsi_handle);
 int ice_add_vlan(struct ice_hw *hw, struct list_head *m_list);
 int ice_remove_vlan(struct ice_hw *hw, struct list_head *v_list);
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index dc6672bd4613..fe71201aa488 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -301,6 +301,136 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 	return ret;
 }
 
+/**
+ * ice_add_tc_flower_adv_fltr - add appropriate filter rules
+ * @vsi: Pointer to VSI
+ * @tc_fltr: Pointer to TC flower filter structure
+ *
+ * based on filter parameters using Advance recipes supported
+ * by OS package.
+ */
+static int
+ice_add_tc_flower_adv_fltr(struct ice_vsi *vsi,
+			   struct ice_tc_flower_fltr *tc_fltr)
+{
+	struct ice_tc_flower_lyr_2_4_hdrs *headers = &tc_fltr->outer_headers;
+	struct ice_adv_rule_info rule_info = {0};
+	struct ice_rule_query_data rule_added;
+	struct ice_adv_lkup_elem *list;
+	struct ice_pf *pf = vsi->back;
+	struct ice_hw *hw = &pf->hw;
+	u32 flags = tc_fltr->flags;
+	struct ice_vsi *ch_vsi;
+	struct device *dev;
+	u16 lkups_cnt = 0;
+	u16 l4_proto = 0;
+	int ret = 0;
+	u16 i = 0;
+
+	dev = ice_pf_to_dev(pf);
+	if (ice_is_safe_mode(pf)) {
+		NL_SET_ERR_MSG_MOD(tc_fltr->extack, "Unable to add filter because driver is in safe mode");
+		return -EOPNOTSUPP;
+	}
+
+	if (!flags || (flags & (ICE_TC_FLWR_FIELD_ENC_DEST_IPV4 |
+				ICE_TC_FLWR_FIELD_ENC_SRC_IPV4 |
+				ICE_TC_FLWR_FIELD_ENC_DEST_IPV6 |
+				ICE_TC_FLWR_FIELD_ENC_SRC_IPV6 |
+				ICE_TC_FLWR_FIELD_ENC_SRC_L4_PORT))) {
+		NL_SET_ERR_MSG_MOD(tc_fltr->extack, "Unsupported encap field(s)");
+		return -EOPNOTSUPP;
+	}
+
+	/* get the channel (aka ADQ VSI) */
+	if (tc_fltr->dest_vsi)
+		ch_vsi = tc_fltr->dest_vsi;
+	else
+		ch_vsi = vsi->tc_map_vsi[tc_fltr->action.tc_class];
+
+	lkups_cnt = ice_tc_count_lkups(flags, headers, tc_fltr);
+	list = kcalloc(lkups_cnt, sizeof(*list), GFP_ATOMIC);
+	if (!list)
+		return -ENOMEM;
+
+	i = ice_tc_fill_rules(hw, flags, tc_fltr, list, &rule_info, &l4_proto);
+	if (i != lkups_cnt) {
+		ret = -EINVAL;
+		goto exit;
+	}
+
+	rule_info.sw_act.fltr_act = tc_fltr->action.fltr_act;
+	if (tc_fltr->action.tc_class >= ICE_CHNL_START_TC) {
+		if (!ch_vsi) {
+			NL_SET_ERR_MSG_MOD(tc_fltr->extack, "Unable to add filter because specified destination doesn't exist");
+			ret = -EINVAL;
+			goto exit;
+		}
+
+		rule_info.sw_act.fltr_act = ICE_FWD_TO_VSI;
+		rule_info.sw_act.vsi_handle = ch_vsi->idx;
+		rule_info.priority = 7;
+		rule_info.sw_act.src = hw->pf_id;
+		rule_info.rx = true;
+		dev_dbg(dev, "add switch rule for TC:%u vsi_idx:%u, lkups_cnt:%u\n",
+			tc_fltr->action.tc_class,
+			rule_info.sw_act.vsi_handle, lkups_cnt);
+	} else {
+		rule_info.sw_act.flag |= ICE_FLTR_TX;
+		rule_info.sw_act.src = vsi->idx;
+		rule_info.rx = false;
+	}
+
+	/* specify the cookie as filter_rule_id */
+	rule_info.fltr_rule_id = tc_fltr->cookie;
+
+	ret = ice_add_adv_rule(hw, list, lkups_cnt, &rule_info, &rule_added);
+	if (ret == -EEXIST) {
+		NL_SET_ERR_MSG_MOD(tc_fltr->extack,
+				   "Unable to add filter because it already exist");
+		ret = -EINVAL;
+		goto exit;
+	} else if (ret) {
+		NL_SET_ERR_MSG_MOD(tc_fltr->extack,
+				   "Unable to add filter due to error");
+		ret = -EIO;
+		goto exit;
+	}
+
+	/* store the output params, which are needed later for removing
+	 * advanced switch filter
+	 */
+	tc_fltr->rid = rule_added.rid;
+	tc_fltr->rule_id = rule_added.rule_id;
+	if (tc_fltr->action.tc_class > 0 && ch_vsi) {
+		/* For PF ADQ, VSI type is set as ICE_VSI_CHNL, and
+		 * for PF ADQ filter, it is not yet set in tc_fltr,
+		 * hence store the dest_vsi ptr in tc_fltr
+		 */
+		if (ch_vsi->type == ICE_VSI_CHNL)
+			tc_fltr->dest_vsi = ch_vsi;
+		/* keep track of advanced switch filter for
+		 * destination VSI (channel VSI)
+		 */
+		ch_vsi->num_chnl_fltr++;
+		/* in this case, dest_id is VSI handle (sw handle) */
+		tc_fltr->dest_id = rule_added.vsi_handle;
+
+		/* keeps track of channel filters for PF VSI */
+		if (vsi->type == ICE_VSI_PF &&
+		    (flags & (ICE_TC_FLWR_FIELD_DST_MAC |
+			      ICE_TC_FLWR_FIELD_ENC_DST_MAC)))
+			pf->num_dmac_chnl_fltrs++;
+	}
+	dev_dbg(dev, "added switch rule (lkups_cnt %u, flags 0x%x) for TC %u, rid %u, rule_id %u, vsi_idx %u\n",
+		lkups_cnt, flags,
+		tc_fltr->action.tc_class, rule_added.rid,
+		rule_added.rule_id, rule_added.vsi_handle);
+exit:
+	kfree(list);
+	return ret;
+}
+
 /**
  * ice_tc_set_ipv4 - Parse IPv4 addresses from TC flower filter
  * @match: Pointer to flow match structure
@@ -559,10 +689,13 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 static int
 ice_add_switch_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 {
+	if (fltr->action.fltr_act == ICE_FWD_TO_QGRP)
+		return -EOPNOTSUPP;
+
 	if (ice_is_eswitch_mode_switchdev(vsi->back))
 		return ice_eswitch_add_tc_fltr(vsi, fltr);
 
-	return -EOPNOTSUPP;
+	return ice_add_tc_flower_adv_fltr(vsi, fltr);
 }
 
 /**
@@ -579,6 +712,7 @@ ice_handle_tclass_action(struct ice_vsi *vsi,
 			 struct ice_tc_flower_fltr *fltr)
 {
 	int tc = tc_classid_to_hwtc(vsi->netdev, cls_flower->classid);
+	struct ice_vsi *main_vsi;
 
 	if (tc < 0) {
 		NL_SET_ERR_MSG_MOD(fltr->extack, "Unable to add filter because specified destination is invalid");
@@ -589,13 +723,69 @@ ice_handle_tclass_action(struct ice_vsi *vsi,
 		return -EINVAL;
 	}
 
-	if (!(vsi->tc_cfg.ena_tc & BIT(tc))) {
+	if (!(vsi->all_enatc & BIT(tc))) {
 		NL_SET_ERR_MSG_MOD(fltr->extack, "Unable to add filter because of non-existence destination");
 		return -EINVAL;
 	}
 
 	/* Redirect to a TC class or Queue Group */
-	fltr->action.fltr_act = ICE_FWD_TO_QGRP;
+	main_vsi = ice_get_main_vsi(vsi->back);
+	if (!main_vsi || !main_vsi->netdev) {
+		NL_SET_ERR_MSG_MOD(fltr->extack,
+				   "Unable to add filter because of invalid netdevice");
+		return -EINVAL;
+	}
+
+	if ((fltr->flags & ICE_TC_FLWR_FIELD_TENANT_ID) &&
+	    (fltr->flags & (ICE_TC_FLWR_FIELD_DST_MAC |
+			   ICE_TC_FLWR_FIELD_SRC_MAC))) {
+		NL_SET_ERR_MSG_MOD(fltr->extack,
+				   "Unable to add filter because filter using tunnel key and inner MAC is unsupported combination");
+		return -EOPNOTSUPP;
+	}
+
+	/* For ADQ, filter must include dest MAC address, otherwise unwanted
+	 * packets with unrelated MAC address get delivered to ADQ VSIs as long
+	 * as remaining filter criteria is satisfied such as dest IP address
+	 * and dest/src L4 port. Following code is trying to handle:
+	 * 1. For non-tunnel, if user specify MAC addresses, use them (means
+	 * this code won't do anything
+	 * 2. For non-tunnel, if user didn't specify MAC address, add implicit
+	 * dest MAC to be lower netdev's active unicast MAC address
+	 */
+	if (!(fltr->flags & ICE_TC_FLWR_FIELD_DST_MAC)) {
+		ether_addr_copy(fltr->outer_headers.l2_key.dst_mac,
+				main_vsi->netdev->dev_addr);
+		eth_broadcast_addr(fltr->outer_headers.l2_mask.dst_mac);
+		fltr->flags |= ICE_TC_FLWR_FIELD_DST_MAC;
+	}
+
+	/* validate specified dest MAC address, make sure either it belongs to
+	 * lower netdev or any of MACVLAN. MACVLANs MAC address are added as
+	 * unicast MAC filter destined to main VSI.
+	 */
+	if (!ice_mac_fltr_exist(&main_vsi->back->hw,
+				fltr->outer_headers.l2_key.dst_mac,
+				main_vsi->idx)) {
+		NL_SET_ERR_MSG_MOD(fltr->extack,
+				   "Unable to add filter because legacy MAC filter for specified destination doesn't exist");
+		return -EINVAL;
+	}
+
+	/* Make sure VLAN is already added to main VSI, before allowing ADQ to
+	 * add a VLAN based filter such as MAC + VLAN + L4 port.
+	 */
+	if (fltr->flags & ICE_TC_FLWR_FIELD_VLAN) {
+		u16 vlan_id = be16_to_cpu(fltr->outer_headers.vlan_hdr.vlan_id);
+
+		if (!ice_vlan_fltr_exist(&main_vsi->back->hw, vlan_id,
+					 main_vsi->idx)) {
+			NL_SET_ERR_MSG_MOD(fltr->extack,
+					   "Unable to add filter because legacy VLAN filter for specified destination doesn't exist");
+			return -EINVAL;
+		}
+	}
+	fltr->action.fltr_act = ICE_FWD_TO_VSI;
 	fltr->action.tc_class = tc;
 
 	return 0;
@@ -637,8 +827,8 @@ ice_parse_tc_flower_actions(struct ice_vsi *vsi,
 
 		/* Drop action */
 		if (act->id == FLOW_ACTION_DROP) {
-			fltr->action.fltr_act = ICE_DROP_PACKET;
-			return 0;
+			NL_SET_ERR_MSG_MOD(fltr->extack, "Unsupported action DROP");
+			return -EINVAL;
 		}
 		fltr->action.fltr_act = ICE_FWD_TO_VSI;
 	}
@@ -671,6 +861,20 @@ static int ice_del_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 		return -EIO;
 	}
 
+	/* update advanced switch filter count for destination
+	 * VSI if filter destination was VSI
+	 */
+	if (fltr->dest_vsi) {
+		if (fltr->dest_vsi->type == ICE_VSI_CHNL) {
+			fltr->dest_vsi->num_chnl_fltr--;
+
+			/* keeps track of channel filters for PF VSI */
+			if (vsi->type == ICE_VSI_PF &&
+			    (fltr->flags & (ICE_TC_FLWR_FIELD_DST_MAC |
+					    ICE_TC_FLWR_FIELD_ENC_DST_MAC)))
+				pf->num_dmac_chnl_fltrs--;
+		}
+	}
 	return 0;
 }
 
@@ -809,7 +1013,8 @@ ice_del_cls_flower(struct ice_vsi *vsi, struct flow_cls_offload *cls_flower)
 	/* find filter */
 	fltr = ice_find_tc_flower_fltr(pf, cls_flower->cookie);
 	if (!fltr) {
-		if (hlist_empty(&pf->tc_flower_fltr_list))
+		if (!test_bit(ICE_FLAG_TC_MQPRIO, pf->flags) &&
+		    hlist_empty(&pf->tc_flower_fltr_list))
 			return 0;
 
 		NL_SET_ERR_MSG_MOD(cls_flower->common.extack, "failed to delete TC flower filter because unable to find it");
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.h b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
index d90e9e37ae25..ee9b284fcc02 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
@@ -120,6 +120,28 @@ struct ice_tc_flower_fltr {
 	struct netlink_ext_ack *extack;
 };
 
+/**
+ * ice_is_chnl_fltr - is this a valid channel filter
+ * @f: Pointer to tc-flower filter
+ *
+ * Criteria to determine of given filter is valid channel filter
+ * or not is based on its "destination". If destination is hw_tc (aka tc_class)
+ * and it is non-zero, then it is valid channel (aka ADQ) filter
+ */
+static inline bool ice_is_chnl_fltr(struct ice_tc_flower_fltr *f)
+{
+	return !!f->action.tc_class;
+}
+
+/**
+ * ice_chnl_dmac_fltr_cnt - DMAC based CHNL filter count
+ * @pf: Pointer to PF
+ */
+static inline int ice_chnl_dmac_fltr_cnt(struct ice_pf *pf)
+{
+	return pf->num_dmac_chnl_fltrs;
+}
+
 int
 ice_add_cls_flower(struct net_device *netdev, struct ice_vsi *vsi,
 		   struct flow_cls_offload *cls_flower);
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
