Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A593E3E2665
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Aug 2021 10:49:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B6DFB60AC6;
	Fri,  6 Aug 2021 08:49:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0_WMTA0ayhFX; Fri,  6 Aug 2021 08:49:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 215EA605E5;
	Fri,  6 Aug 2021 08:49:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 77E5A1C115D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 08:49:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 755A583B34
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 08:49:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id reFTzWLIUCiP for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Aug 2021 08:49:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7869C83B40
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 08:49:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="211231432"
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="211231432"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2021 01:49:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="459299852"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga007.jf.intel.com with ESMTP; 06 Aug 2021 01:49:09 -0700
Received: from gklab-229-137.igk.intel.com (gklab-229-137.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1768n6kX030013
 for <intel-wired-lan@lists.osuosl.org>; Fri, 6 Aug 2021 09:49:08 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  6 Aug 2021 10:49:05 +0200
Message-Id: <1628239746-17380-9-git-send-email-wojciech.drewek@intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1628239746-17380-1-git-send-email-wojciech.drewek@intel.com>
References: <1628239746-17380-1-git-send-email-wojciech.drewek@intel.com>
Subject: [Intel-wired-lan] [PATCH net-next v6 8/9] ice: ndo_setup_tc
 implementation for PF
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Kiran Patil <kiran.patil@intel.com>

Implement ndo_setup_tc net device callback for TC HW offload on PF device.

ndo_setup_tc provides support for HW offloading various TC filters.
Add support for configuring the following filter with tc-flower:
- default L2 filters (src/dst mac addresses, ethertype, VLAN)
- variations of L3, L3+L4, L2+L3+L4 filters using advanced filters
(including ipv4 and ipv6 addresses).

Allow for adding/removing TC flows when PF device is configured in
eswitch switchdev mode. Two types of actions are supported at the
moment: FLOW_ACTION_DROP and FLOW_ACTION_REDIRECT.

Co-developed-by: Priyalee Kushwaha <priyalee.kushwaha@intel.com>
Signed-off-by: Priyalee Kushwaha <priyalee.kushwaha@intel.com>
Signed-off-by: Kiran Patil <kiran.patil@intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile     |   3 +-
 drivers/net/ethernet/intel/ice/ice.h        |   4 +
 drivers/net/ethernet/intel/ice/ice_main.c   |  68 +++
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 838 ++++++++++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_tc_lib.h | 129 +++++
 5 files changed, 1041 insertions(+), 1 deletion(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_tc_lib.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_tc_lib.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 1866be50095d..c36faa7d1471 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -27,7 +27,8 @@ ice-y := ice_main.o	\
 	 ice_fw_update.o \
 	 ice_lag.o	\
 	 ice_ethtool.o  \
-	 ice_repr.o
+	 ice_repr.o	\
+	 ice_tc_lib.o
 ice-$(CONFIG_PCI_IOV) += ice_virtchnl_allowlist.o
 ice-$(CONFIG_PCI_IOV) += ice_virtchnl_pf.o ice_sriov.o ice_virtchnl_fdir.o
 ice-$(CONFIG_PTP_1588_CLOCK) += ice_ptp.o ice_ptp_hw.o
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 5517e13bcba1..9bf70e6cd0de 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -64,6 +64,7 @@
 #include "ice_xsk.h"
 #include "ice_arfs.h"
 #include "ice_repr.h"
+#include "ice_eswitch.h"
 #include "ice_lag.h"
 
 #define ICE_BAR0		0
@@ -398,6 +399,7 @@ enum ice_pf_flags {
 	ICE_FLAG_PTP,			/* PTP is enabled by software */
 	ICE_FLAG_AUX_ENA,
 	ICE_FLAG_ADV_FEATURES,
+	ICE_FLAG_CLS_FLOWER,
 	ICE_FLAG_LINK_DOWN_ON_CLOSE_ENA,
 	ICE_FLAG_TOTAL_PORT_SHUTDOWN_ENA,
 	ICE_FLAG_NO_MEDIA,
@@ -511,6 +513,8 @@ struct ice_pf {
 	int aux_idx;
 	u32 sw_int_count;
 
+	struct hlist_head tc_flower_fltr_list;
+
 	__le64 nvm_phy_type_lo; /* NVM PHY type low */
 	__le64 nvm_phy_type_hi; /* NVM PHY type high */
 	struct ice_link_default_override_tlv link_dflt_override;
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 856249c49098..3cf8f24c77fc 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -20,6 +20,7 @@
 #define CREATE_TRACE_POINTS
 #include "ice_trace.h"
 #include "ice_eswitch.h"
+#include "ice_tc_lib.h"
 
 #define DRV_SUMMARY	"Intel(R) Ethernet Connection E800 Series Linux Driver"
 static const char ice_driver_string[] = DRV_SUMMARY;
@@ -7175,6 +7176,72 @@ static void ice_tx_timeout(struct net_device *netdev, unsigned int txqueue)
 }
 
 /**
+ * ice_setup_tc_cls_flower - flower classifier offloads
+ * @np: net device to configure
+ * @filter_dev: device on which filter is added
+ * @cls_flower: offload data
+ */
+static int
+ice_setup_tc_cls_flower(struct ice_netdev_priv *np,
+			struct net_device *filter_dev,
+			struct flow_cls_offload *cls_flower)
+{
+	struct ice_vsi *vsi = np->vsi;
+
+	if (cls_flower->common.chain_index)
+		return -EOPNOTSUPP;
+
+	switch (cls_flower->command) {
+	case FLOW_CLS_REPLACE:
+		return ice_add_cls_flower(filter_dev, vsi, cls_flower);
+	case FLOW_CLS_DESTROY:
+		return ice_del_cls_flower(vsi, cls_flower);
+	default:
+		return -EINVAL;
+	}
+}
+
+/**
+ * ice_setup_tc_block_cb - callback handler registered for TC block
+ * @type: TC SETUP type
+ * @type_data: TC flower offload data that contains user input
+ * @cb_priv: netdev private data
+ */
+static int
+ice_setup_tc_block_cb(enum tc_setup_type type, void *type_data, void *cb_priv)
+{
+	struct ice_netdev_priv *np = cb_priv;
+
+	switch (type) {
+	case TC_SETUP_CLSFLOWER:
+		return ice_setup_tc_cls_flower(np, np->vsi->netdev,
+					       type_data);
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
+static LIST_HEAD(ice_block_cb_list);
+
+static int
+ice_setup_tc(struct net_device *netdev, enum tc_setup_type type,
+	     void *type_data)
+{
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+
+	switch (type) {
+	case TC_SETUP_BLOCK:
+		return flow_block_cb_setup_simple(type_data,
+						  &ice_block_cb_list,
+						  ice_setup_tc_block_cb,
+						  np, np, true);
+	default:
+		return -EOPNOTSUPP;
+	}
+	return -EOPNOTSUPP;
+}
+
+/**
  * ice_open - Called when a network interface becomes active
  * @netdev: network interface device structure
  *
@@ -7377,6 +7444,7 @@ int ice_stop(struct net_device *netdev)
 	.ndo_get_vf_stats = ice_get_vf_stats,
 	.ndo_vlan_rx_add_vid = ice_vlan_rx_add_vid,
 	.ndo_vlan_rx_kill_vid = ice_vlan_rx_kill_vid,
+	.ndo_setup_tc = ice_setup_tc,
 	.ndo_set_features = ice_set_features,
 	.ndo_bridge_getlink = ice_bridge_getlink,
 	.ndo_bridge_setlink = ice_bridge_setlink,
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
new file mode 100644
index 000000000000..6a61888f80aa
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -0,0 +1,838 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2019-2021, Intel Corporation. */
+
+#include "ice.h"
+#include "ice_tc_lib.h"
+#include "ice_lib.h"
+#include "ice_fltr.h"
+
+/**
+ * ice_tc_count_lkups - determine lookup count for switch filter
+ * @flags: TC-flower flags
+ * @headers: Pointer to TC flower filter header structure
+ * @fltr: Pointer to outer TC filter structure
+ *
+ * Determine lookup count based on TC flower input for switch filter.
+ */
+static int
+ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_2_4_hdrs *headers,
+		   struct ice_tc_flower_fltr *fltr)
+{
+	int lkups_cnt = 0;
+
+	if (flags & ICE_TC_FLWR_FIELD_ETH_TYPE_ID)
+		lkups_cnt++;
+
+	/* is MAC fields specified? */
+	if (flags & (ICE_TC_FLWR_FIELD_DST_MAC | ICE_TC_FLWR_FIELD_SRC_MAC))
+		lkups_cnt++;
+
+	/* is VLAN specified? */
+	if (flags & ICE_TC_FLWR_FIELD_VLAN)
+		lkups_cnt++;
+
+	/* are IPv[4|6] fields specified? */
+	if (flags & (ICE_TC_FLWR_FIELD_DEST_IPV4 | ICE_TC_FLWR_FIELD_SRC_IPV4))
+		lkups_cnt++;
+	else if (flags & (ICE_TC_FLWR_FIELD_DEST_IPV6 |
+			  ICE_TC_FLWR_FIELD_SRC_IPV6))
+		lkups_cnt++;
+
+	/* is L4 (TCP/UDP/any other L4 protocol fields) specified? */
+	if (flags & (ICE_TC_FLWR_FIELD_DEST_L4_PORT |
+		     ICE_TC_FLWR_FIELD_SRC_L4_PORT))
+		lkups_cnt++;
+
+	return lkups_cnt;
+}
+
+/**
+ * ice_tc_fill_rules - fill filter rules based on TC fltr
+ * @hw: pointer to HW structure
+ * @flags: tc flower field flags
+ * @tc_fltr: pointer to TC flower filter
+ * @list: list of advance rule elements
+ * @rule_info: pointer to information about rule
+ * @l4_proto: pointer to information such as L4 proto type
+ *
+ * Fill ice_adv_lkup_elem list based on TC flower flags and
+ * TC flower headers. This list should be used to add
+ * advance filter in hardware.
+ */
+static int
+ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
+		  struct ice_tc_flower_fltr *tc_fltr,
+		  struct ice_adv_lkup_elem *list,
+		  struct ice_adv_rule_info *rule_info,
+		  u16 *l4_proto)
+{
+	struct ice_tc_flower_lyr_2_4_hdrs *headers = &tc_fltr->outer_headers;
+	int i = 0;
+
+	if (flags & ICE_TC_FLWR_FIELD_ETH_TYPE_ID) {
+		list[i].type = ICE_ETYPE_OL;
+		list[i].h_u.ethertype.ethtype_id = headers->l2_key.n_proto;
+		list[i].m_u.ethertype.ethtype_id = headers->l2_mask.n_proto;
+		i++;
+	}
+
+	if (flags & (ICE_TC_FLWR_FIELD_DST_MAC |
+		     ICE_TC_FLWR_FIELD_SRC_MAC)) {
+		struct ice_tc_l2_hdr *l2_key, *l2_mask;
+
+		l2_key = &headers->l2_key;
+		l2_mask = &headers->l2_mask;
+
+		list[i].type = ICE_MAC_OFOS;
+		if (flags & ICE_TC_FLWR_FIELD_DST_MAC) {
+			ether_addr_copy(list[i].h_u.eth_hdr.dst_addr,
+					l2_key->dst_mac);
+			ether_addr_copy(list[i].m_u.eth_hdr.dst_addr,
+					l2_mask->dst_mac);
+		}
+		if (flags & ICE_TC_FLWR_FIELD_SRC_MAC) {
+			ether_addr_copy(list[i].h_u.eth_hdr.src_addr,
+					l2_key->src_mac);
+			ether_addr_copy(list[i].m_u.eth_hdr.src_addr,
+					l2_mask->src_mac);
+		}
+		i++;
+	}
+
+	/* copy VLAN info */
+	if (flags & ICE_TC_FLWR_FIELD_VLAN) {
+		list[i].type = ICE_VLAN_OFOS;
+		list[i].h_u.vlan_hdr.vlan = headers->vlan_hdr.vlan_id;
+		list[i].m_u.vlan_hdr.vlan = cpu_to_be16(0xFFFF);
+		i++;
+	}
+
+	/* copy L3 (IPv[4|6]: src, dest) address */
+	if (flags & (ICE_TC_FLWR_FIELD_DEST_IPV4 |
+		     ICE_TC_FLWR_FIELD_SRC_IPV4)) {
+		struct ice_tc_l3_hdr *l3_key, *l3_mask;
+
+		list[i].type = ICE_IPV4_OFOS;
+		l3_key = &headers->l3_key;
+		l3_mask = &headers->l3_mask;
+		if (flags & ICE_TC_FLWR_FIELD_DEST_IPV4) {
+			list[i].h_u.ipv4_hdr.dst_addr = l3_key->dst_ipv4;
+			list[i].m_u.ipv4_hdr.dst_addr = l3_mask->dst_ipv4;
+		}
+		if (flags & ICE_TC_FLWR_FIELD_SRC_IPV4) {
+			list[i].h_u.ipv4_hdr.src_addr = l3_key->src_ipv4;
+			list[i].m_u.ipv4_hdr.src_addr = l3_mask->src_ipv4;
+		}
+		i++;
+	} else if (flags & (ICE_TC_FLWR_FIELD_DEST_IPV6 |
+			    ICE_TC_FLWR_FIELD_SRC_IPV6)) {
+		struct ice_ipv6_hdr *ipv6_hdr, *ipv6_mask;
+		struct ice_tc_l3_hdr *l3_key, *l3_mask;
+
+		list[i].type = ICE_IPV6_OFOS;
+		ipv6_hdr = &list[i].h_u.ipv6_hdr;
+		ipv6_mask = &list[i].m_u.ipv6_hdr;
+		l3_key = &headers->l3_key;
+		l3_mask = &headers->l3_mask;
+
+		if (flags & ICE_TC_FLWR_FIELD_DEST_IPV6) {
+			memcpy(&ipv6_hdr->dst_addr, &l3_key->dst_ipv6_addr,
+			       sizeof(l3_key->dst_ipv6_addr));
+			memcpy(&ipv6_mask->dst_addr, &l3_mask->dst_ipv6_addr,
+			       sizeof(l3_mask->dst_ipv6_addr));
+		}
+		if (flags & ICE_TC_FLWR_FIELD_SRC_IPV6) {
+			memcpy(&ipv6_hdr->src_addr, &l3_key->src_ipv6_addr,
+			       sizeof(l3_key->src_ipv6_addr));
+			memcpy(&ipv6_mask->src_addr, &l3_mask->src_ipv6_addr,
+			       sizeof(l3_mask->src_ipv6_addr));
+		}
+		i++;
+	}
+
+	/* copy L4 (src, dest) port */
+	if (flags & (ICE_TC_FLWR_FIELD_DEST_L4_PORT |
+		     ICE_TC_FLWR_FIELD_SRC_L4_PORT)) {
+		struct ice_tc_l4_hdr *l4_key, *l4_mask;
+
+		l4_key = &headers->l4_key;
+		l4_mask = &headers->l4_mask;
+		if (headers->l3_key.ip_proto == IPPROTO_TCP) {
+			list[i].type = ICE_TCP_IL;
+			/* detected L4 proto is TCP */
+			if (l4_proto)
+				*l4_proto = IPPROTO_TCP;
+		} else if (headers->l3_key.ip_proto == IPPROTO_UDP) {
+			list[i].type = ICE_UDP_ILOS;
+			/* detected L4 proto is UDP */
+			if (l4_proto)
+				*l4_proto = IPPROTO_UDP;
+		}
+		if (flags & ICE_TC_FLWR_FIELD_DEST_L4_PORT) {
+			list[i].h_u.l4_hdr.dst_port = l4_key->dst_port;
+			list[i].m_u.l4_hdr.dst_port = l4_mask->dst_port;
+		}
+		if (flags & ICE_TC_FLWR_FIELD_SRC_L4_PORT) {
+			list[i].h_u.l4_hdr.src_port = l4_key->src_port;
+			list[i].m_u.l4_hdr.src_port = l4_mask->src_port;
+		}
+		i++;
+	}
+
+	return i;
+}
+
+static int
+ice_eswitch_tc_parse_action(struct ice_tc_flower_fltr *fltr,
+			    struct flow_action_entry *act)
+{
+	struct ice_repr *repr;
+
+	switch (act->id) {
+	case FLOW_ACTION_DROP:
+		fltr->action.fltr_act = ICE_DROP_PACKET;
+		break;
+
+	case FLOW_ACTION_REDIRECT:
+		fltr->action.fltr_act = ICE_FWD_TO_VSI;
+
+		if (ice_is_port_repr_netdev(act->dev)) {
+			repr = ice_netdev_to_repr(act->dev);
+
+			fltr->dest_vsi = repr->src_vsi;
+			fltr->direction = ICE_ESWITCH_FLTR_INGRESS;
+		} else if (netif_is_ice(act->dev)) {
+			struct ice_netdev_priv *np = netdev_priv(act->dev);
+
+			fltr->dest_vsi = np->vsi;
+			fltr->direction = ICE_ESWITCH_FLTR_EGRESS;
+		} else {
+			NL_SET_ERR_MSG_MOD(fltr->extack, "Unsupported netdevice in switchdev mode");
+			return -EINVAL;
+		}
+
+		break;
+
+	default:
+		NL_SET_ERR_MSG_MOD(fltr->extack, "Unsupported action in switchdev mode");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int
+ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
+{
+	struct ice_tc_flower_lyr_2_4_hdrs *headers = &fltr->outer_headers;
+	struct ice_adv_rule_info rule_info = { 0 };
+	struct ice_rule_query_data rule_added;
+	struct ice_hw *hw = &vsi->back->hw;
+	struct ice_adv_lkup_elem *list;
+	u32 flags = fltr->flags;
+	enum ice_status status;
+	int lkups_cnt;
+	int ret = 0;
+	int i;
+
+	if (!flags || (flags & (ICE_TC_FLWR_FIELD_ENC_DEST_IPV4 |
+				ICE_TC_FLWR_FIELD_ENC_SRC_IPV4 |
+				ICE_TC_FLWR_FIELD_ENC_DEST_IPV6 |
+				ICE_TC_FLWR_FIELD_ENC_SRC_IPV6 |
+				ICE_TC_FLWR_FIELD_ENC_SRC_L4_PORT))) {
+		NL_SET_ERR_MSG_MOD(fltr->extack, "Unsupported encap field(s)");
+		return -EOPNOTSUPP;
+	}
+
+	lkups_cnt = ice_tc_count_lkups(flags, headers, fltr);
+	list = kcalloc(lkups_cnt, sizeof(*list), GFP_ATOMIC);
+	if (!list)
+		return -ENOMEM;
+
+	i = ice_tc_fill_rules(hw, flags, fltr, list, &rule_info, NULL);
+	if (i != lkups_cnt) {
+		ret = -EINVAL;
+		goto exit;
+	}
+
+	rule_info.sw_act.fltr_act = fltr->action.fltr_act;
+	if (fltr->action.fltr_act != ICE_DROP_PACKET)
+		rule_info.sw_act.vsi_handle = fltr->dest_vsi->idx;
+	/* For now, making priority to be highest, and it also becomes
+	 * the priority for recipe which will get created as a result of
+	 * new extraction sequence based on input set.
+	 * Priority '7' is max val for switch recipe, higher the number
+	 * results into order of switch rule evaluation.
+	 */
+	rule_info.priority = 7;
+
+	if (fltr->direction == ICE_ESWITCH_FLTR_INGRESS) {
+		rule_info.sw_act.flag |= ICE_FLTR_RX;
+		rule_info.sw_act.src = hw->pf_id;
+		rule_info.rx = true;
+	} else {
+		rule_info.sw_act.flag |= ICE_FLTR_TX;
+		rule_info.sw_act.src = vsi->idx;
+		rule_info.rx = false;
+	}
+
+	/* specify the cookie as filter_rule_id */
+	rule_info.fltr_rule_id = fltr->cookie;
+
+	status = ice_add_adv_rule(hw, list, lkups_cnt, &rule_info, &rule_added);
+	if (status == ICE_ERR_ALREADY_EXISTS) {
+		NL_SET_ERR_MSG_MOD(fltr->extack, "Unable to add filter because it already exist");
+		ret = -EINVAL;
+		goto exit;
+	} else if (status) {
+		NL_SET_ERR_MSG_MOD(fltr->extack, "Unable to add filter due to error");
+		ret = -EIO;
+		goto exit;
+	}
+
+	/* store the output params, which are needed later for removing
+	 * advanced switch filter
+	 */
+	fltr->rid = rule_added.rid;
+	fltr->rule_id = rule_added.rule_id;
+
+	if (fltr->direction == ICE_ESWITCH_FLTR_EGRESS) {
+		if (ice_fltr_update_flags(vsi, fltr->rule_id, fltr->rid,
+					  ICE_SINGLE_ACT_LAN_ENABLE))
+			ice_rem_adv_rule_by_id(hw, &rule_added);
+	}
+
+exit:
+	kfree(list);
+	return ret;
+}
+
+/**
+ * ice_tc_set_ipv4 - Parse IPv4 addresses from TC flower filter
+ * @match: Pointer to flow match structure
+ * @fltr: Pointer to filter structure
+ * @headers: inner or outer header fields
+ */
+static int
+ice_tc_set_ipv4(struct flow_match_ipv4_addrs *match,
+		struct ice_tc_flower_fltr *fltr,
+		struct ice_tc_flower_lyr_2_4_hdrs *headers)
+{
+	if (match->key->dst) {
+		fltr->flags |= ICE_TC_FLWR_FIELD_DEST_IPV4;
+		headers->l3_key.dst_ipv4 = match->key->dst;
+		headers->l3_mask.dst_ipv4 = match->mask->dst;
+	}
+	if (match->key->src) {
+		fltr->flags |= ICE_TC_FLWR_FIELD_SRC_IPV4;
+		headers->l3_key.src_ipv4 = match->key->src;
+		headers->l3_mask.src_ipv4 = match->mask->src;
+	}
+	return 0;
+}
+
+/**
+ * ice_tc_set_ipv6 - Parse IPv6 addresses from TC flower filter
+ * @match: Pointer to flow match structure
+ * @fltr: Pointer to filter structure
+ * @headers: inner or outer header fields
+ */
+static int
+ice_tc_set_ipv6(struct flow_match_ipv6_addrs *match,
+		struct ice_tc_flower_fltr *fltr,
+		struct ice_tc_flower_lyr_2_4_hdrs *headers)
+{
+	struct ice_tc_l3_hdr *l3_key, *l3_mask;
+
+	/* src and dest IPV6 address should not be LOOPBACK
+	 * (0:0:0:0:0:0:0:1), which can be represented as ::1
+	 */
+	if (ipv6_addr_loopback(&match->key->dst) ||
+	    ipv6_addr_loopback(&match->key->src)) {
+		NL_SET_ERR_MSG_MOD(fltr->extack, "Bad IPv6, addr is LOOPBACK");
+		return -EINVAL;
+	}
+	/* if src/dest IPv6 address is *,* error */
+	if (ipv6_addr_any(&match->mask->dst) &&
+	    ipv6_addr_any(&match->mask->src)) {
+		NL_SET_ERR_MSG_MOD(fltr->extack, "Bad src/dest IPv6, addr is any");
+		return -EINVAL;
+	}
+	if (!ipv6_addr_any(&match->mask->dst))
+		fltr->flags |= ICE_TC_FLWR_FIELD_DEST_IPV6;
+	if (!ipv6_addr_any(&match->mask->src))
+		fltr->flags |= ICE_TC_FLWR_FIELD_SRC_IPV6;
+
+	l3_key = &headers->l3_key;
+	l3_mask = &headers->l3_mask;
+
+	if (fltr->flags & ICE_TC_FLWR_FIELD_SRC_IPV6) {
+		memcpy(&l3_key->src_ipv6_addr, &match->key->src.s6_addr,
+		       sizeof(match->key->src.s6_addr));
+		memcpy(&l3_mask->src_ipv6_addr, &match->mask->src.s6_addr,
+		       sizeof(match->mask->src.s6_addr));
+	}
+	if (fltr->flags & ICE_TC_FLWR_FIELD_DEST_IPV6) {
+		memcpy(&l3_key->dst_ipv6_addr, &match->key->dst.s6_addr,
+		       sizeof(match->key->dst.s6_addr));
+		memcpy(&l3_mask->dst_ipv6_addr, &match->mask->dst.s6_addr,
+		       sizeof(match->mask->dst.s6_addr));
+	}
+
+	return 0;
+}
+
+/**
+ * ice_tc_set_port - Parse ports from TC flower filter
+ * @match: Flow match structure
+ * @fltr: Pointer to filter structure
+ * @headers: inner or outer header fields
+ */
+static int
+ice_tc_set_port(struct flow_match_ports match,
+		struct ice_tc_flower_fltr *fltr,
+		struct ice_tc_flower_lyr_2_4_hdrs *headers)
+{
+	if (match.key->dst) {
+		fltr->flags |= ICE_TC_FLWR_FIELD_DEST_L4_PORT;
+		headers->l4_key.dst_port = match.key->dst;
+		headers->l4_mask.dst_port = match.mask->dst;
+	}
+	if (match.key->src) {
+		fltr->flags |= ICE_TC_FLWR_FIELD_SRC_L4_PORT;
+		headers->l4_key.src_port = match.key->src;
+		headers->l4_mask.src_port = match.mask->src;
+	}
+	return 0;
+}
+
+/**
+ * ice_parse_cls_flower - Parse TC flower filters provided by kernel
+ * @vsi: Pointer to the VSI
+ * @filter_dev: Pointer to device on which filter is being added
+ * @f: Pointer to struct flow_cls_offload
+ * @fltr: Pointer to filter structure
+ */
+static int
+ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
+		     struct flow_cls_offload *f,
+		     struct ice_tc_flower_fltr *fltr)
+{
+	struct ice_tc_flower_lyr_2_4_hdrs *headers = &fltr->outer_headers;
+	struct flow_rule *rule = flow_cls_offload_flow_rule(f);
+	u16 n_proto_mask = 0, n_proto_key = 0, addr_type = 0;
+	struct flow_dissector *dissector;
+
+	dissector = rule->match.dissector;
+
+	if (dissector->used_keys &
+	    ~(BIT(FLOW_DISSECTOR_KEY_CONTROL) |
+	      BIT(FLOW_DISSECTOR_KEY_BASIC) |
+	      BIT(FLOW_DISSECTOR_KEY_ETH_ADDRS) |
+	      BIT(FLOW_DISSECTOR_KEY_VLAN) |
+	      BIT(FLOW_DISSECTOR_KEY_IPV4_ADDRS) |
+	      BIT(FLOW_DISSECTOR_KEY_IPV6_ADDRS) |
+	      BIT(FLOW_DISSECTOR_KEY_ENC_CONTROL) |
+	      BIT(FLOW_DISSECTOR_KEY_ENC_IP) |
+	      BIT(FLOW_DISSECTOR_KEY_PORTS))) {
+		NL_SET_ERR_MSG_MOD(fltr->extack, "Unsupported key used");
+		return -EOPNOTSUPP;
+	}
+
+	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_BASIC)) {
+		struct flow_match_basic match;
+
+		flow_rule_match_basic(rule, &match);
+
+		n_proto_key = ntohs(match.key->n_proto);
+		n_proto_mask = ntohs(match.mask->n_proto);
+
+		if (n_proto_key == ETH_P_ALL || n_proto_key == 0) {
+			n_proto_key = 0;
+			n_proto_mask = 0;
+		} else {
+			fltr->flags |= ICE_TC_FLWR_FIELD_ETH_TYPE_ID;
+		}
+
+		headers->l2_key.n_proto = cpu_to_be16(n_proto_key);
+		headers->l2_mask.n_proto = cpu_to_be16(n_proto_mask);
+		headers->l3_key.ip_proto = match.key->ip_proto;
+	}
+
+	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ETH_ADDRS)) {
+		struct flow_match_eth_addrs match;
+
+		flow_rule_match_eth_addrs(rule, &match);
+
+		if (!is_zero_ether_addr(match.key->dst)) {
+			ether_addr_copy(headers->l2_key.dst_mac,
+					match.key->dst);
+			ether_addr_copy(headers->l2_mask.dst_mac,
+					match.mask->dst);
+			fltr->flags |= ICE_TC_FLWR_FIELD_DST_MAC;
+		}
+
+		if (!is_zero_ether_addr(match.key->src)) {
+			ether_addr_copy(headers->l2_key.src_mac,
+					match.key->src);
+			ether_addr_copy(headers->l2_mask.src_mac,
+					match.mask->src);
+			fltr->flags |= ICE_TC_FLWR_FIELD_SRC_MAC;
+		}
+	}
+
+	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_VLAN) ||
+	    is_vlan_dev(filter_dev)) {
+		struct flow_dissector_key_vlan mask;
+		struct flow_dissector_key_vlan key;
+		struct flow_match_vlan match;
+
+		if (is_vlan_dev(filter_dev)) {
+			match.key = &key;
+			match.key->vlan_id = vlan_dev_vlan_id(filter_dev);
+			match.key->vlan_priority = 0;
+			match.mask = &mask;
+			memset(match.mask, 0xff, sizeof(*match.mask));
+			match.mask->vlan_priority = 0;
+		} else {
+			flow_rule_match_vlan(rule, &match);
+		}
+
+		if (match.mask->vlan_id) {
+			if (match.mask->vlan_id == VLAN_VID_MASK) {
+				fltr->flags |= ICE_TC_FLWR_FIELD_VLAN;
+			} else {
+				NL_SET_ERR_MSG_MOD(fltr->extack, "Bad VLAN mask");
+				return -EINVAL;
+			}
+		}
+
+		headers->vlan_hdr.vlan_id =
+				cpu_to_be16(match.key->vlan_id & VLAN_VID_MASK);
+		if (match.mask->vlan_priority)
+			headers->vlan_hdr.vlan_prio = match.key->vlan_priority;
+	}
+
+	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_CONTROL)) {
+		struct flow_match_control match;
+
+		flow_rule_match_control(rule, &match);
+
+		addr_type = match.key->addr_type;
+	}
+
+	if (addr_type == FLOW_DISSECTOR_KEY_IPV4_ADDRS) {
+		struct flow_match_ipv4_addrs match;
+
+		flow_rule_match_ipv4_addrs(rule, &match);
+		if (ice_tc_set_ipv4(&match, fltr, headers))
+			return -EINVAL;
+	}
+
+	if (addr_type == FLOW_DISSECTOR_KEY_IPV6_ADDRS) {
+		struct flow_match_ipv6_addrs match;
+
+		flow_rule_match_ipv6_addrs(rule, &match);
+		if (ice_tc_set_ipv6(&match, fltr, headers))
+			return -EINVAL;
+	}
+
+	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_PORTS)) {
+		struct flow_match_ports match;
+
+		flow_rule_match_ports(rule, &match);
+		if (ice_tc_set_port(match, fltr, headers))
+			return -EINVAL;
+		switch (headers->l3_key.ip_proto) {
+		case IPPROTO_TCP:
+		case IPPROTO_UDP:
+			break;
+		default:
+			NL_SET_ERR_MSG_MOD(fltr->extack, "Only UDP and TCP transport are supported");
+			return -EINVAL;
+		}
+	}
+	return 0;
+}
+
+/**
+ * ice_add_switch_fltr - Add TC flower filters
+ * @vsi: Pointer to VSI
+ * @fltr: Pointer to struct ice_tc_flower_fltr
+ *
+ * Add filter in HW switch block
+ */
+static int
+ice_add_switch_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
+{
+	if (ice_is_eswitch_mode_switchdev(vsi->back))
+		return ice_eswitch_add_tc_fltr(vsi, fltr);
+
+	return -EOPNOTSUPP;
+}
+
+/**
+ * ice_handle_tclass_action - Support directing to a traffic class
+ * @vsi: Pointer to VSI
+ * @cls_flower: Pointer to TC flower offload structure
+ * @fltr: Pointer to TC flower filter structure
+ *
+ * Support directing traffic to a traffic class
+ */
+static int
+ice_handle_tclass_action(struct ice_vsi *vsi,
+			 struct flow_cls_offload *cls_flower,
+			 struct ice_tc_flower_fltr *fltr)
+{
+	int tc = tc_classid_to_hwtc(vsi->netdev, cls_flower->classid);
+
+	if (tc < 0) {
+		NL_SET_ERR_MSG_MOD(fltr->extack, "Unable to add filter because specified destination is invalid");
+		return -EINVAL;
+	}
+	if (!tc) {
+		NL_SET_ERR_MSG_MOD(fltr->extack, "Unable to add filter because of invalid destination");
+		return -EINVAL;
+	}
+
+	if (!(vsi->tc_cfg.ena_tc & BIT(tc))) {
+		NL_SET_ERR_MSG_MOD(fltr->extack, "Unable to add filter because of non-existence destination");
+		return -EINVAL;
+	}
+
+	/* Redirect to a TC class or Queue Group */
+	fltr->action.fltr_act = ICE_FWD_TO_QGRP;
+	fltr->action.tc_class = tc;
+
+	return 0;
+}
+
+/**
+ * ice_parse_tc_flower_actions - Parse the actions for a TC filter
+ * @vsi: Pointer to VSI
+ * @cls_flower: Pointer to TC flower offload structure
+ * @fltr: Pointer to TC flower filter structure
+ *
+ * Parse the actions for a TC filter
+ */
+static int
+ice_parse_tc_flower_actions(struct ice_vsi *vsi,
+			    struct flow_cls_offload *cls_flower,
+			    struct ice_tc_flower_fltr *fltr)
+{
+	struct flow_rule *rule = flow_cls_offload_flow_rule(cls_flower);
+	struct flow_action *flow_action = &rule->action;
+	struct flow_action_entry *act;
+	int i;
+
+	if (cls_flower->classid)
+		return ice_handle_tclass_action(vsi, cls_flower, fltr);
+
+	if (!flow_action_has_entries(flow_action))
+		return -EINVAL;
+
+	flow_action_for_each(i, act, flow_action) {
+		if (ice_is_eswitch_mode_switchdev(vsi->back)) {
+			int err = ice_eswitch_tc_parse_action(fltr, act);
+
+			if (err)
+				return err;
+			continue;
+		}
+		/* Allow only one rule per filter */
+
+		/* Drop action */
+		if (act->id == FLOW_ACTION_DROP) {
+			fltr->action.fltr_act = ICE_DROP_PACKET;
+			return 0;
+		}
+		fltr->action.fltr_act = ICE_FWD_TO_VSI;
+	}
+	return 0;
+}
+
+/**
+ * ice_del_tc_fltr - deletes a filter from HW table
+ * @vsi: Pointer to VSI
+ * @fltr: Pointer to struct ice_tc_flower_fltr
+ *
+ * This function deletes a filter from HW table and manages book-keeping
+ */
+static int ice_del_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
+{
+	struct ice_rule_query_data rule_rem;
+	struct ice_pf *pf = vsi->back;
+	int err;
+
+	rule_rem.rid = fltr->rid;
+	rule_rem.rule_id = fltr->rule_id;
+	rule_rem.vsi_handle = fltr->dest_id;
+	err = ice_rem_adv_rule_by_id(&pf->hw, &rule_rem);
+	if (err) {
+		if (err == ICE_ERR_DOES_NOT_EXIST) {
+			NL_SET_ERR_MSG_MOD(fltr->extack, "filter does not exist\n");
+			return -ENOENT;
+		}
+		NL_SET_ERR_MSG_MOD(fltr->extack, "Failed to delete TC flower filter");
+		return -EIO;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_add_tc_fltr - adds a TC flower filter
+ * @netdev: Pointer to netdev
+ * @vsi: Pointer to VSI
+ * @f: Pointer to flower offload structure
+ * @__fltr: Pointer to struct ice_tc_flower_fltr
+ *
+ * This function parses TC-flower input fields, parses action,
+ * and adds a filter.
+ */
+static int
+ice_add_tc_fltr(struct net_device *netdev, struct ice_vsi *vsi,
+		struct flow_cls_offload *f,
+		struct ice_tc_flower_fltr **__fltr)
+{
+	struct ice_tc_flower_fltr *fltr;
+	int err;
+
+	/* by default, set output to be INVALID */
+	*__fltr = NULL;
+
+	fltr = kzalloc(sizeof(*fltr), GFP_KERNEL);
+	if (!fltr)
+		return -ENOMEM;
+
+	fltr->cookie = f->cookie;
+	fltr->extack = f->common.extack;
+	fltr->src_vsi = vsi;
+	INIT_HLIST_NODE(&fltr->tc_flower_node);
+
+	err = ice_parse_cls_flower(netdev, vsi, f, fltr);
+	if (err < 0)
+		goto err;
+
+	err = ice_parse_tc_flower_actions(vsi, f, fltr);
+	if (err < 0)
+		goto err;
+
+	err = ice_add_switch_fltr(vsi, fltr);
+	if (err < 0)
+		goto err;
+
+	/* return the newly created filter */
+	*__fltr = fltr;
+
+	return 0;
+err:
+	kfree(fltr);
+	return err;
+}
+
+/**
+ * ice_find_tc_flower_fltr - Find the TC flower filter in the list
+ * @pf: Pointer to PF
+ * @cookie: filter specific cookie
+ */
+static struct ice_tc_flower_fltr *
+ice_find_tc_flower_fltr(struct ice_pf *pf, unsigned long cookie)
+{
+	struct ice_tc_flower_fltr *fltr;
+
+	hlist_for_each_entry(fltr, &pf->tc_flower_fltr_list, tc_flower_node)
+		if (cookie == fltr->cookie)
+			return fltr;
+
+	return NULL;
+}
+
+/**
+ * ice_add_cls_flower - add TC flower filters
+ * @netdev: Pointer to filter device
+ * @vsi: Pointer to VSI
+ * @cls_flower: Pointer to flower offload structure
+ */
+int
+ice_add_cls_flower(struct net_device *netdev, struct ice_vsi *vsi,
+		   struct flow_cls_offload *cls_flower)
+{
+	struct netlink_ext_ack *extack = cls_flower->common.extack;
+	struct net_device *vsi_netdev = vsi->netdev;
+	struct ice_tc_flower_fltr *fltr;
+	struct ice_pf *pf = vsi->back;
+	int err;
+
+	if (ice_is_reset_in_progress(pf->state))
+		return -EBUSY;
+	if (test_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags))
+		return -EINVAL;
+
+	if (ice_is_port_repr_netdev(netdev))
+		vsi_netdev = netdev;
+
+	if (!(vsi_netdev->features & NETIF_F_HW_TC) &&
+	    !test_bit(ICE_FLAG_CLS_FLOWER, pf->flags)) {
+		/* Based on TC indirect notifications from kernel, all ice
+		 * devices get an instance of rule from higher level device.
+		 * Avoid triggering explicit error in this case.
+		 */
+		if (netdev == vsi_netdev)
+			NL_SET_ERR_MSG_MOD(extack, "can't apply TC flower filters, turn ON hw-tc-offload and try again");
+		return -EINVAL;
+	}
+
+	/* avoid duplicate entries, if exists - return error */
+	fltr = ice_find_tc_flower_fltr(pf, cls_flower->cookie);
+	if (fltr) {
+		NL_SET_ERR_MSG_MOD(extack, "filter cookie already exists, ignoring");
+		return -EEXIST;
+	}
+
+	/* prep and add TC-flower filter in HW */
+	err = ice_add_tc_fltr(netdev, vsi, cls_flower, &fltr);
+	if (err)
+		return err;
+
+	/* add filter into an ordered list */
+	hlist_add_head(&fltr->tc_flower_node, &pf->tc_flower_fltr_list);
+	return 0;
+}
+
+/**
+ * ice_del_cls_flower - delete TC flower filters
+ * @vsi: Pointer to VSI
+ * @cls_flower: Pointer to struct flow_cls_offload
+ */
+int
+ice_del_cls_flower(struct ice_vsi *vsi, struct flow_cls_offload *cls_flower)
+{
+	struct ice_tc_flower_fltr *fltr;
+	struct ice_pf *pf = vsi->back;
+	int err;
+
+	/* find filter */
+	fltr = ice_find_tc_flower_fltr(pf, cls_flower->cookie);
+	if (!fltr) {
+		if (hlist_empty(&pf->tc_flower_fltr_list))
+			return 0;
+
+		NL_SET_ERR_MSG_MOD(cls_flower->common.extack, "failed to delete TC flower filter because unable to find it");
+		return -EINVAL;
+	}
+
+	fltr->extack = cls_flower->common.extack;
+	/* delete filter from HW */
+	err = ice_del_tc_fltr(vsi, fltr);
+	if (err)
+		return err;
+
+	/* delete filter from an ordered list */
+	hlist_del(&fltr->tc_flower_node);
+
+	/* free the filter node */
+	kfree(fltr);
+
+	return 0;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.h b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
new file mode 100644
index 000000000000..883d2891f92c
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
@@ -0,0 +1,129 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2019-2021, Intel Corporation. */
+
+#ifndef _ICE_TC_LIB_H_
+#define _ICE_TC_LIB_H_
+
+#define ICE_TC_FLWR_FIELD_DST_MAC		BIT(0)
+#define ICE_TC_FLWR_FIELD_SRC_MAC		BIT(1)
+#define ICE_TC_FLWR_FIELD_VLAN			BIT(2)
+#define ICE_TC_FLWR_FIELD_DEST_IPV4		BIT(3)
+#define ICE_TC_FLWR_FIELD_SRC_IPV4		BIT(4)
+#define ICE_TC_FLWR_FIELD_DEST_IPV6		BIT(5)
+#define ICE_TC_FLWR_FIELD_SRC_IPV6		BIT(6)
+#define ICE_TC_FLWR_FIELD_DEST_L4_PORT		BIT(7)
+#define ICE_TC_FLWR_FIELD_SRC_L4_PORT		BIT(8)
+#define ICE_TC_FLWR_FIELD_TENANT_ID		BIT(9)
+#define ICE_TC_FLWR_FIELD_ENC_DEST_IPV4		BIT(10)
+#define ICE_TC_FLWR_FIELD_ENC_SRC_IPV4		BIT(11)
+#define ICE_TC_FLWR_FIELD_ENC_DEST_IPV6		BIT(12)
+#define ICE_TC_FLWR_FIELD_ENC_SRC_IPV6		BIT(13)
+#define ICE_TC_FLWR_FIELD_ENC_DEST_L4_PORT	BIT(14)
+#define ICE_TC_FLWR_FIELD_ENC_SRC_L4_PORT	BIT(15)
+#define ICE_TC_FLWR_FIELD_ENC_DST_MAC		BIT(16)
+#define ICE_TC_FLWR_FIELD_ETH_TYPE_ID		BIT(17)
+
+struct ice_tc_flower_action {
+	u32 tc_class;
+	enum ice_sw_fwd_act_type fltr_act;
+};
+
+struct ice_tc_vlan_hdr {
+	__be16 vlan_id; /* Only last 12 bits valid */
+	u16 vlan_prio; /* Only last 3 bits valid (valid values: 0..7) */
+};
+
+struct ice_tc_l2_hdr {
+	u8 dst_mac[ETH_ALEN];
+	u8 src_mac[ETH_ALEN];
+	__be16 n_proto;    /* Ethernet Protocol */
+};
+
+struct ice_tc_l3_hdr {
+	u8 ip_proto;    /* IPPROTO value */
+	union {
+		struct {
+			struct in_addr dst_ip;
+			struct in_addr src_ip;
+		} v4;
+		struct {
+			struct in6_addr dst_ip6;
+			struct in6_addr src_ip6;
+		} v6;
+	} ip;
+#define dst_ipv6	ip.v6.dst_ip6.s6_addr32
+#define dst_ipv6_addr	ip.v6.dst_ip6.s6_addr
+#define src_ipv6	ip.v6.src_ip6.s6_addr32
+#define src_ipv6_addr	ip.v6.src_ip6.s6_addr
+#define dst_ipv4	ip.v4.dst_ip.s_addr
+#define src_ipv4	ip.v4.src_ip.s_addr
+
+	u8 tos;
+	u8 ttl;
+};
+
+struct ice_tc_l4_hdr {
+	__be16 dst_port;
+	__be16 src_port;
+};
+
+struct ice_tc_flower_lyr_2_4_hdrs {
+	/* L2 layer fields with their mask */
+	struct ice_tc_l2_hdr l2_key;
+	struct ice_tc_l2_hdr l2_mask;
+	struct ice_tc_vlan_hdr vlan_hdr;
+	/* L3 (IPv4[6]) layer fields with their mask */
+	struct ice_tc_l3_hdr l3_key;
+	struct ice_tc_l3_hdr l3_mask;
+
+	/* L4 layer fields with their mask */
+	struct ice_tc_l4_hdr l4_key;
+	struct ice_tc_l4_hdr l4_mask;
+};
+
+enum ice_eswitch_fltr_direction {
+	ICE_ESWITCH_FLTR_INGRESS,
+	ICE_ESWITCH_FLTR_EGRESS,
+};
+
+struct ice_tc_flower_fltr {
+	struct hlist_node tc_flower_node;
+
+	/* cookie becomes filter_rule_id if rule is added successfully */
+	unsigned long cookie;
+
+	/* add_adv_rule returns information like recipe ID, rule_id. Store
+	 * those values since they are needed to remove advanced rule
+	 */
+	u16 rid;
+	u16 rule_id;
+	/* this could be queue/vsi_idx (sw handle)/queue_group, depending upon
+	 * destination type
+	 */
+	u16 dest_id;
+	/* if dest_id is vsi_idx, then need to store destination VSI ptr */
+	struct ice_vsi *dest_vsi;
+	/* direction of fltr for eswitch use case */
+	enum ice_eswitch_fltr_direction direction;
+
+	/* Parsed TC flower configuration params */
+	struct ice_tc_flower_lyr_2_4_hdrs outer_headers;
+	struct ice_tc_flower_lyr_2_4_hdrs inner_headers;
+	struct ice_vsi *src_vsi;
+	__be32 tenant_id;
+	u32 flags;
+	struct ice_tc_flower_action	action;
+
+	/* cache ptr which is used wherever needed to communicate netlink
+	 * messages
+	 */
+	struct netlink_ext_ack *extack;
+};
+
+int
+ice_add_cls_flower(struct net_device *netdev, struct ice_vsi *vsi,
+		   struct flow_cls_offload *cls_flower);
+int
+ice_del_cls_flower(struct ice_vsi *vsi, struct flow_cls_offload *cls_flower);
+
+#endif /* _ICE_TC_LIB_H_ */
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
