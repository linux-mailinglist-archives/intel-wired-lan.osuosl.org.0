Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B8942A270F0
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Feb 2025 13:06:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 469D640729;
	Tue,  4 Feb 2025 12:06:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZcJuex7l1pCp; Tue,  4 Feb 2025 12:06:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7CEF3410E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738670763;
	bh=fHF8WR1459PHSOHmJrdeb4KNbFmmXVvuGFb4dPs7wj8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HQEl/PpX63/ZATkQRUW3Vzr9CxBkGr/xuZ4N+B+lb7mMvwJCPhQ1ps1X8rTSrrsuc
	 rxvzw4pBAsGyIhcEBUjN5I6dkia91+/jbctgFoHejDA7Ac8YExhr27y+w2KsRR/UAL
	 HXQ/fp4qdrXIqDWsD7gL/53YRipi3sK3n1gjLlas2d3KtDT7L432usovuYGYdi7gPg
	 tB01GHJZMF7F/DPX3qLwiipv3mw14InoLPTl3JBRf/rXU+wzrPmlK6IrUZWdQYU66i
	 1FCDVjLuHQ6yATBHzJvsl8Fow+s5l8ieXhn+76WvnzBRBWw5TqxzZu8oNJ+s/58Sjc
	 4xWSVeMVwsmgA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7CEF3410E4;
	Tue,  4 Feb 2025 12:06:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id EA4FE185
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 12:06:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CE3C060071
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 12:06:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kiVCRlgAl690 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Feb 2025 12:06:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8CC276078D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8CC276078D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8CC276078D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 12:06:00 +0000 (UTC)
X-CSE-ConnectionGUID: Kz64cGB8R+yLNExk2PGlYQ==
X-CSE-MsgGUID: giXf2ygdSpur6GtWo8YUxA==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="38424866"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="38424866"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 04:06:00 -0800
X-CSE-ConnectionGUID: kKHzs6KEQHuWP8fgX9g4lQ==
X-CSE-MsgGUID: Jz+kRdOEQTO48iKs2MdylQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="147783264"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa001.jf.intel.com with ESMTP; 04 Feb 2025 04:05:56 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 4392232CB1;
 Tue,  4 Feb 2025 12:05:55 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: Larysa Zaremba <larysa.zaremba@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Date: Tue,  4 Feb 2025 12:50:55 +0100
Message-ID: <20250204115111.1652453-6-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250204115111.1652453-1-larysa.zaremba@intel.com>
References: <20250204115111.1652453-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738670760; x=1770206760;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/zSoQGaBaS/fy5tWbjFe/S/mo+6hFj/9T+VgMsge1Q0=;
 b=GD2xnGHWLpllwmkhfWk4Jo/VNAHc7JQx7QiEWQfUT5PJ9cLFtTwTnFMp
 foBrogG7zU4CZlMU/Bte5uNuPw5E2QjawwnJS8ErNGIbeQigmBjur8/84
 YXXC0EoUHH+XOyMbsml1DibxoaGVvFgg0G1jaDvX3nrDqu/KPFwPqjVrd
 tniGGOV22TXsDvC4CSamx82Nc8jRDju707GwYgVTjhd/aAbDXr6j8iP4n
 BASPi1rorkxQMRuIBkwGivcaNh1D7EbT3Z50YBZqEYlogAF9GRv2LnjHc
 BJbtuXUmaXl47A5siKpuA7SIevB1LcNl6StAzwHLs6NsPf518yWZgyFOg
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GD2xnGHW
Subject: [Intel-wired-lan] [PATCH iwl-next v2 5/6] ice: support egress drop
 rules on PF
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tc clsact qdisc allows us to add offloaded egress rules with commands such
as the following one:

tc filter add dev <ifname> egress protocol lldp flower skip_sw action drop

Support the egress rule drop action when added to PF, with a few caveats:
* in switchdev mode, all PF traffic has to go uplink with an exception for
  LLDP that can be delegated to a single VSI at a time
* in legacy mode, we cannot delegate LLDP functionality to another VSI, so
  such packets from PF should not be blocked.

Also, simplify the rule direction logic, it was previously derived from
actions, but actually can be inherited from the tc block (and flipped in
case of port representors).

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c |  4 ++
 drivers/net/ethernet/intel/ice/ice_main.c    | 56 ++++++++++++---
 drivers/net/ethernet/intel/ice/ice_repr.c    |  3 +-
 drivers/net/ethernet/intel/ice/ice_tc_lib.c  | 73 ++++++++++++++------
 drivers/net/ethernet/intel/ice/ice_tc_lib.h  |  2 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c    | 17 ++---
 6 files changed, 117 insertions(+), 38 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index b44a375e6365..70a523e962d8 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -246,6 +246,10 @@ ice_eswitch_set_target_vsi(struct sk_buff *skb,
 	u64 cd_cmd, dst_vsi;
 
 	if (!dst) {
+		struct ethhdr *eth = (struct ethhdr *)skb_mac_header(skb);
+
+		if (unlikely(eth->h_proto == htons(ETH_P_LLDP)))
+			return;
 		cd_cmd = ICE_TX_CTX_DESC_SWTCH_UPLINK << ICE_TXD_CTX_QW1_CMD_S;
 		off->cd_qw1 |= (cd_cmd | ICE_TX_DESC_DTYPE_CTX);
 	} else {
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a03e1819e6d5..453d4350534b 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -8371,11 +8371,13 @@ void ice_tx_timeout(struct net_device *netdev, unsigned int txqueue)
  * @np: net device to configure
  * @filter_dev: device on which filter is added
  * @cls_flower: offload data
+ * @ingress: if the rule is added to an ingress block
  */
 static int
 ice_setup_tc_cls_flower(struct ice_netdev_priv *np,
 			struct net_device *filter_dev,
-			struct flow_cls_offload *cls_flower)
+			struct flow_cls_offload *cls_flower,
+			bool ingress)
 {
 	struct ice_vsi *vsi = np->vsi;
 
@@ -8384,7 +8386,7 @@ ice_setup_tc_cls_flower(struct ice_netdev_priv *np,
 
 	switch (cls_flower->command) {
 	case FLOW_CLS_REPLACE:
-		return ice_add_cls_flower(filter_dev, vsi, cls_flower);
+		return ice_add_cls_flower(filter_dev, vsi, cls_flower, ingress);
 	case FLOW_CLS_DESTROY:
 		return ice_del_cls_flower(vsi, cls_flower);
 	default:
@@ -8393,20 +8395,42 @@ ice_setup_tc_cls_flower(struct ice_netdev_priv *np,
 }
 
 /**
- * ice_setup_tc_block_cb - callback handler registered for TC block
+ * ice_setup_tc_block_cb_ingress - callback handler for ingress TC block
  * @type: TC SETUP type
  * @type_data: TC flower offload data that contains user input
  * @cb_priv: netdev private data
  */
 static int
-ice_setup_tc_block_cb(enum tc_setup_type type, void *type_data, void *cb_priv)
+ice_setup_tc_block_cb_ingress(enum tc_setup_type type, void *type_data,
+			      void *cb_priv)
 {
 	struct ice_netdev_priv *np = cb_priv;
 
 	switch (type) {
 	case TC_SETUP_CLSFLOWER:
 		return ice_setup_tc_cls_flower(np, np->vsi->netdev,
-					       type_data);
+					       type_data, true);
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
+/**
+ * ice_setup_tc_block_cb_egress - callback handler for egress TC block
+ * @type: TC SETUP type
+ * @type_data: TC flower offload data that contains user input
+ * @cb_priv: netdev private data
+ */
+static int
+ice_setup_tc_block_cb_egress(enum tc_setup_type type, void *type_data,
+			     void *cb_priv)
+{
+	struct ice_netdev_priv *np = cb_priv;
+
+	switch (type) {
+	case TC_SETUP_CLSFLOWER:
+		return ice_setup_tc_cls_flower(np, np->vsi->netdev,
+					       type_data, false);
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -9351,16 +9375,32 @@ ice_setup_tc(struct net_device *netdev, enum tc_setup_type type,
 	     void *type_data)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
+	enum flow_block_binder_type binder_type;
 	struct ice_pf *pf = np->vsi->back;
+	flow_setup_cb_t *flower_handler;
 	bool locked = false;
 	int err;
 
 	switch (type) {
 	case TC_SETUP_BLOCK:
+		binder_type =
+			((struct flow_block_offload *)type_data)->binder_type;
+
+		switch (binder_type) {
+		case FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS:
+			flower_handler = ice_setup_tc_block_cb_ingress;
+			break;
+		case FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS:
+			flower_handler = ice_setup_tc_block_cb_egress;
+			break;
+		default:
+			return -EOPNOTSUPP;
+		}
+
 		return flow_block_cb_setup_simple(type_data,
 						  &ice_block_cb_list,
-						  ice_setup_tc_block_cb,
-						  np, np, true);
+						  flower_handler,
+						  np, np, false);
 	case TC_SETUP_QDISC_MQPRIO:
 		if (ice_is_eswitch_mode_switchdev(pf)) {
 			netdev_err(netdev, "TC MQPRIO offload not supported, switchdev is enabled\n");
@@ -9421,7 +9461,7 @@ ice_indr_setup_block_cb(enum tc_setup_type type, void *type_data,
 	case TC_SETUP_CLSFLOWER:
 		return ice_setup_tc_cls_flower(np, priv->netdev,
 					       (struct flow_cls_offload *)
-					       type_data);
+					       type_data, false);
 	default:
 		return -EOPNOTSUPP;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index fb7a1b9a4313..f81bf60f8365 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -219,7 +219,8 @@ ice_repr_setup_tc_cls_flower(struct ice_repr *repr,
 {
 	switch (flower->command) {
 	case FLOW_CLS_REPLACE:
-		return ice_add_cls_flower(repr->netdev, repr->src_vsi, flower);
+		return ice_add_cls_flower(repr->netdev, repr->src_vsi, flower,
+					  true);
 	case FLOW_CLS_DESTROY:
 		return ice_del_cls_flower(repr->src_vsi, flower);
 	default:
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 2acc9ea5b98b..095c1fe51d97 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -681,26 +681,26 @@ static int ice_tc_setup_action(struct net_device *filter_dev,
 	fltr->action.fltr_act = action;
 
 	if (ice_is_port_repr_netdev(filter_dev) &&
-	    ice_is_port_repr_netdev(target_dev)) {
+	    ice_is_port_repr_netdev(target_dev) &&
+	    fltr->direction == ICE_ESWITCH_FLTR_EGRESS) {
 		repr = ice_netdev_to_repr(target_dev);
 
 		fltr->dest_vsi = repr->src_vsi;
-		fltr->direction = ICE_ESWITCH_FLTR_EGRESS;
 	} else if (ice_is_port_repr_netdev(filter_dev) &&
-		   ice_tc_is_dev_uplink(target_dev)) {
+		   ice_tc_is_dev_uplink(target_dev) &&
+		   fltr->direction == ICE_ESWITCH_FLTR_EGRESS) {
 		repr = ice_netdev_to_repr(filter_dev);
 
 		fltr->dest_vsi = repr->src_vsi->back->eswitch.uplink_vsi;
-		fltr->direction = ICE_ESWITCH_FLTR_EGRESS;
 	} else if (ice_tc_is_dev_uplink(filter_dev) &&
-		   ice_is_port_repr_netdev(target_dev)) {
+		   ice_is_port_repr_netdev(target_dev) &&
+		   fltr->direction == ICE_ESWITCH_FLTR_INGRESS) {
 		repr = ice_netdev_to_repr(target_dev);
 
 		fltr->dest_vsi = repr->src_vsi;
-		fltr->direction = ICE_ESWITCH_FLTR_INGRESS;
 	} else {
 		NL_SET_ERR_MSG_MOD(fltr->extack,
-				   "Unsupported netdevice in switchdev mode");
+				   "The action is not supported for this netdevice");
 		return -EINVAL;
 	}
 
@@ -713,13 +713,11 @@ ice_tc_setup_drop_action(struct net_device *filter_dev,
 {
 	fltr->action.fltr_act = ICE_DROP_PACKET;
 
-	if (ice_is_port_repr_netdev(filter_dev)) {
-		fltr->direction = ICE_ESWITCH_FLTR_EGRESS;
-	} else if (ice_tc_is_dev_uplink(filter_dev)) {
-		fltr->direction = ICE_ESWITCH_FLTR_INGRESS;
-	} else {
+	if (!ice_tc_is_dev_uplink(filter_dev) &&
+	    !(ice_is_port_repr_netdev(filter_dev) &&
+	      fltr->direction == ICE_ESWITCH_FLTR_INGRESS)) {
 		NL_SET_ERR_MSG_MOD(fltr->extack,
-				   "Unsupported netdevice in switchdev mode");
+				   "The action is not supported for this netdevice");
 		return -EINVAL;
 	}
 
@@ -809,6 +807,11 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 		rule_info.sw_act.flag |= ICE_FLTR_RX;
 		rule_info.sw_act.src = hw->pf_id;
 		rule_info.flags_info.act = ICE_SINGLE_ACT_LB_ENABLE;
+	} else if (fltr->direction == ICE_ESWITCH_FLTR_EGRESS &&
+		   !fltr->dest_vsi && vsi == vsi->back->eswitch.uplink_vsi) {
+		/* PF to Uplink */
+		rule_info.sw_act.flag |= ICE_FLTR_TX;
+		rule_info.sw_act.src = vsi->idx;
 	} else if (fltr->direction == ICE_ESWITCH_FLTR_EGRESS &&
 		   fltr->dest_vsi == vsi->back->eswitch.uplink_vsi) {
 		/* VF to Uplink */
@@ -1051,8 +1054,13 @@ ice_add_tc_flower_adv_fltr(struct ice_vsi *vsi,
 			tc_fltr->action.fwd.q.hw_queue, lkups_cnt);
 		break;
 	case ICE_DROP_PACKET:
-		rule_info.sw_act.flag |= ICE_FLTR_RX;
-		rule_info.sw_act.src = hw->pf_id;
+		if (tc_fltr->direction == ICE_ESWITCH_FLTR_EGRESS) {
+			rule_info.sw_act.flag |= ICE_FLTR_TX;
+			rule_info.sw_act.src = vsi->idx;
+		} else {
+			rule_info.sw_act.flag |= ICE_FLTR_RX;
+			rule_info.sw_act.src = hw->pf_id;
+		}
 		rule_info.priority = ICE_SWITCH_FLTR_PRIO_VSI;
 		break;
 	default:
@@ -1458,11 +1466,12 @@ ice_parse_tunnel_attr(struct net_device *dev, struct flow_rule *rule,
  * @filter_dev: Pointer to device on which filter is being added
  * @f: Pointer to struct flow_cls_offload
  * @fltr: Pointer to filter structure
+ * @ingress: if the rule is added to an ingress block
  */
 static int
 ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 		     struct flow_cls_offload *f,
-		     struct ice_tc_flower_fltr *fltr)
+		     struct ice_tc_flower_fltr *fltr, bool ingress)
 {
 	struct ice_tc_flower_lyr_2_4_hdrs *headers = &fltr->outer_headers;
 	struct flow_rule *rule = flow_cls_offload_flow_rule(f);
@@ -1546,6 +1555,20 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 			fltr->flags |= ICE_TC_FLWR_FIELD_ETH_TYPE_ID;
 		}
 
+		if (!ingress) {
+			bool switchdev =
+				ice_is_eswitch_mode_switchdev(vsi->back);
+
+			if (switchdev != (n_proto_key == ETH_P_LLDP)) {
+				NL_SET_ERR_MSG_FMT_MOD(fltr->extack,
+						       "%sLLDP filtering is not supported on egress in %s mode",
+						       switchdev ? "Non-" : "",
+						       switchdev ? "switchdev" :
+								   "legacy");
+				return -EOPNOTSUPP;
+			}
+		}
+
 		headers->l2_key.n_proto = cpu_to_be16(n_proto_key);
 		headers->l2_mask.n_proto = cpu_to_be16(n_proto_mask);
 		headers->l3_key.ip_proto = match.key->ip_proto;
@@ -1721,6 +1744,14 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 			return -EINVAL;
 		}
 	}
+
+	/* Ingress filter on representor results in an egress filter in HW
+	 * and vice versa
+	 */
+	ingress = ice_is_port_repr_netdev(filter_dev) ? !ingress : ingress;
+	fltr->direction = ingress ? ICE_ESWITCH_FLTR_INGRESS :
+				    ICE_ESWITCH_FLTR_EGRESS;
+
 	return 0;
 }
 
@@ -1970,6 +2001,7 @@ static int ice_del_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
  * @vsi: Pointer to VSI
  * @f: Pointer to flower offload structure
  * @__fltr: Pointer to struct ice_tc_flower_fltr
+ * @ingress: if the rule is added to an ingress block
  *
  * This function parses TC-flower input fields, parses action,
  * and adds a filter.
@@ -1977,7 +2009,7 @@ static int ice_del_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 static int
 ice_add_tc_fltr(struct net_device *netdev, struct ice_vsi *vsi,
 		struct flow_cls_offload *f,
-		struct ice_tc_flower_fltr **__fltr)
+		struct ice_tc_flower_fltr **__fltr, bool ingress)
 {
 	struct ice_tc_flower_fltr *fltr;
 	int err;
@@ -1994,7 +2026,7 @@ ice_add_tc_fltr(struct net_device *netdev, struct ice_vsi *vsi,
 	fltr->src_vsi = vsi;
 	INIT_HLIST_NODE(&fltr->tc_flower_node);
 
-	err = ice_parse_cls_flower(netdev, vsi, f, fltr);
+	err = ice_parse_cls_flower(netdev, vsi, f, fltr, ingress);
 	if (err < 0)
 		goto err;
 
@@ -2037,10 +2069,11 @@ ice_find_tc_flower_fltr(struct ice_pf *pf, unsigned long cookie)
  * @netdev: Pointer to filter device
  * @vsi: Pointer to VSI
  * @cls_flower: Pointer to flower offload structure
+ * @ingress: if the rule is added to an ingress block
  */
 int
 ice_add_cls_flower(struct net_device *netdev, struct ice_vsi *vsi,
-		   struct flow_cls_offload *cls_flower)
+		   struct flow_cls_offload *cls_flower, bool ingress)
 {
 	struct netlink_ext_ack *extack = cls_flower->common.extack;
 	struct net_device *vsi_netdev = vsi->netdev;
@@ -2075,7 +2108,7 @@ ice_add_cls_flower(struct net_device *netdev, struct ice_vsi *vsi,
 	}
 
 	/* prep and add TC-flower filter in HW */
-	err = ice_add_tc_fltr(netdev, vsi, cls_flower, &fltr);
+	err = ice_add_tc_fltr(netdev, vsi, cls_flower, &fltr, ingress);
 	if (err)
 		return err;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.h b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
index d84f153517ec..da09fbba03ad 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
@@ -213,7 +213,7 @@ static inline int ice_chnl_dmac_fltr_cnt(struct ice_pf *pf)
 struct ice_vsi *ice_locate_vsi_using_queue(struct ice_vsi *vsi, int queue);
 int
 ice_add_cls_flower(struct net_device *netdev, struct ice_vsi *vsi,
-		   struct flow_cls_offload *cls_flower);
+		   struct flow_cls_offload *cls_flower, bool ingress);
 int
 ice_del_cls_flower(struct ice_vsi *vsi, struct flow_cls_offload *cls_flower);
 void ice_replay_tc_fltrs(struct ice_pf *pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 1e4f6f6ee449..0e5107fe62ad 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -2440,19 +2440,20 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct ice_tx_ring *tx_ring)
 
 	/* allow CONTROL frames egress from main VSI if FW LLDP disabled */
 	eth = (struct ethhdr *)skb_mac_header(skb);
-	if (unlikely((skb->priority == TC_PRIO_CONTROL ||
-		      eth->h_proto == htons(ETH_P_LLDP)) &&
-		     vsi->type == ICE_VSI_PF &&
-		     vsi->port_info->qos_cfg.is_sw_lldp))
-		offload.cd_qw1 |= (u64)(ICE_TX_DESC_DTYPE_CTX |
-					ICE_TX_CTX_DESC_SWTCH_UPLINK <<
-					ICE_TXD_CTX_QW1_CMD_S);
 
-	ice_tstamp(tx_ring, skb, first, &offload);
 	if ((ice_is_switchdev_running(vsi->back) ||
 	     ice_lag_is_switchdev_running(vsi->back)) &&
 	    vsi->type != ICE_VSI_SF)
 		ice_eswitch_set_target_vsi(skb, &offload);
+	else if (unlikely((skb->priority == TC_PRIO_CONTROL ||
+			   eth->h_proto == htons(ETH_P_LLDP)) &&
+			   vsi->type == ICE_VSI_PF &&
+			   vsi->port_info->qos_cfg.is_sw_lldp))
+		offload.cd_qw1 |= (u64)(ICE_TX_DESC_DTYPE_CTX |
+					ICE_TX_CTX_DESC_SWTCH_UPLINK <<
+					ICE_TXD_CTX_QW1_CMD_S);
+
+	ice_tstamp(tx_ring, skb, first, &offload);
 
 	if (offload.cd_qw1 & ICE_TX_DESC_DTYPE_CTX) {
 		struct ice_tx_ctx_desc *cdesc;
-- 
2.43.0

