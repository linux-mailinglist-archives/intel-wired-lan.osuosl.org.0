Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A404FA359C0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Feb 2025 10:09:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0AA2D41715;
	Fri, 14 Feb 2025 09:09:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kb5O0vNXhRd0; Fri, 14 Feb 2025 09:09:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10D0B4170B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739524151;
	bh=eKMKSyVSYDepNnM9upZVR99YQmGJXL6JgjMgf7X+CJ4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8IwaV+X1v2JHXNWrZtCGDXl7UxnGJc5WD7tJQUnES5W6s9GO2dCteziVGOP8lgf8F
	 ojdwMuaN7/2mY1gUtmu5fog+/QMJH2PlWuSJ3qlss3Pw9cWXNmfeCZ+9jOKp62/rG0
	 Rg7AIOwxMBugZqcQ00WUK01sS7lqKQymi1LX1CNEgc/SU1nFKWSn6IEKwNV7raBPIk
	 l2KXIioVV3wPpYM90P10Z3ZRo1+Ceh6t1NWT+Fua7acI+vG6L+Ru5j5ONWlvFpfHaJ
	 V46OyhlI0aKYGs//Zx1s88dflOMRyO7QQbaFkE1fYe2MC2yuk1MpoF7rHpCHerDp56
	 q+RSH/NUJiLhg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 10D0B4170B;
	Fri, 14 Feb 2025 09:09:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B0DC9C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 09:09:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9F98584923
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 09:09:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y-LF6AMuZ5B0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2025 09:09:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 49F258491F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 49F258491F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 49F258491F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 09:09:07 +0000 (UTC)
X-CSE-ConnectionGUID: 3jTvwuIrTYebvwO8JrPTzA==
X-CSE-MsgGUID: jSyW2AP4ThSLQy03TW+usQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="65617743"
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="65617743"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 01:09:07 -0800
X-CSE-ConnectionGUID: wZSr0NYlR+Kj5R+j+qIuDw==
X-CSE-MsgGUID: oh2v35BGRWaRNxsHBAAJuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="113145501"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa009.jf.intel.com with ESMTP; 14 Feb 2025 01:09:03 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id CA97E37B87;
 Fri, 14 Feb 2025 09:09:01 +0000 (GMT)
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
Date: Fri, 14 Feb 2025 09:50:39 +0100
Message-ID: <20250214085215.2846063-6-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250214085215.2846063-1-larysa.zaremba@intel.com>
References: <20250214085215.2846063-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739524147; x=1771060147;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z1/qqmlwgOmvUo6D/xLHuujSP1URmq8/yjq084Kxy0c=;
 b=ctSs6ZH0gSXOlVaQOcSb5oKQIU2KuNt73joX2xnaE3Ryuqs6vHQBkABn
 3xLok4b2N2DKOrh7pwuN8IvZjMBbGuQuWldzuZaUZC14yGUKCK/+0948E
 PiUoUCh06mmk6UOPnuwTOUgVRJVMIJAOcDYRoNbS9zRMy+qAtEqc1dInh
 69BzU/N2DfkQO2uK1S7OVk3saSQqYfFVYrGCW86NVDiSwQ/uU4In60EMu
 Bp5090Zeg8cMBzzxZlcapp7XFprHakL7pSohkiP6Bx+igLPTFd2ggM2b4
 TqWpf3V8joO7mc4X05wY7dUi/WKzz6zTSdJwRb93AkHeYzW368TXlVAWv
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ctSs6ZH0
Subject: [Intel-wired-lan] [PATCH iwl-next v4 5/6] ice: support egress drop
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
 drivers/net/ethernet/intel/ice/ice_eswitch.c |  4 +
 drivers/net/ethernet/intel/ice/ice_main.c    | 63 ++++++++++++--
 drivers/net/ethernet/intel/ice/ice_repr.c    |  3 +-
 drivers/net/ethernet/intel/ice/ice_tc_lib.c  | 86 +++++++++++++++-----
 drivers/net/ethernet/intel/ice/ice_tc_lib.h  |  9 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c    | 17 ++--
 6 files changed, 138 insertions(+), 44 deletions(-)

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
index a03e1819e6d5..e9bc1c38bcc7 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -8371,11 +8371,16 @@ void ice_tx_timeout(struct net_device *netdev, unsigned int txqueue)
  * @np: net device to configure
  * @filter_dev: device on which filter is added
  * @cls_flower: offload data
+ * @ingress: if the rule is added to an ingress block
+ *
+ * Return: 0 if the flower was successfully added or deleted,
+ *	   negative error code otherwise.
  */
 static int
 ice_setup_tc_cls_flower(struct ice_netdev_priv *np,
 			struct net_device *filter_dev,
-			struct flow_cls_offload *cls_flower)
+			struct flow_cls_offload *cls_flower,
+			bool ingress)
 {
 	struct ice_vsi *vsi = np->vsi;
 
@@ -8384,7 +8389,7 @@ ice_setup_tc_cls_flower(struct ice_netdev_priv *np,
 
 	switch (cls_flower->command) {
 	case FLOW_CLS_REPLACE:
-		return ice_add_cls_flower(filter_dev, vsi, cls_flower);
+		return ice_add_cls_flower(filter_dev, vsi, cls_flower, ingress);
 	case FLOW_CLS_DESTROY:
 		return ice_del_cls_flower(vsi, cls_flower);
 	default:
@@ -8393,20 +8398,46 @@ ice_setup_tc_cls_flower(struct ice_netdev_priv *np,
 }
 
 /**
- * ice_setup_tc_block_cb - callback handler registered for TC block
+ * ice_setup_tc_block_cb_ingress - callback handler for ingress TC block
  * @type: TC SETUP type
  * @type_data: TC flower offload data that contains user input
  * @cb_priv: netdev private data
+ *
+ * Return: 0 if the setup was successful, negative error code otherwise.
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
+ *
+ * Return: 0 if the setup was successful, negative error code otherwise.
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
@@ -9351,16 +9382,32 @@ ice_setup_tc(struct net_device *netdev, enum tc_setup_type type,
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
@@ -9421,7 +9468,7 @@ ice_indr_setup_block_cb(enum tc_setup_type type, void *type_data,
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
index d8d28d74222a..229cd29ff92a 100644
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
@@ -1458,11 +1466,16 @@ ice_parse_tunnel_attr(struct net_device *dev, struct flow_rule *rule,
  * @filter_dev: Pointer to device on which filter is being added
  * @f: Pointer to struct flow_cls_offload
  * @fltr: Pointer to filter structure
+ * @ingress: if the rule is added to an ingress block
+ *
+ * Return: 0 if the flower was parsed successfully, -EINVAL if the flower
+ *	   cannot be parsed, -EOPNOTSUPP if such filter cannot be configured
+ *	   for the given VSI.
  */
 static int
 ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 		     struct flow_cls_offload *f,
-		     struct ice_tc_flower_fltr *fltr)
+		     struct ice_tc_flower_fltr *fltr, bool ingress)
 {
 	struct ice_tc_flower_lyr_2_4_hdrs *headers = &fltr->outer_headers;
 	struct flow_rule *rule = flow_cls_offload_flow_rule(f);
@@ -1546,6 +1559,20 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
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
@@ -1721,6 +1748,14 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
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
 
@@ -1970,14 +2005,18 @@ static int ice_del_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
  * @vsi: Pointer to VSI
  * @f: Pointer to flower offload structure
  * @__fltr: Pointer to struct ice_tc_flower_fltr
+ * @ingress: if the rule is added to an ingress block
  *
  * This function parses TC-flower input fields, parses action,
  * and adds a filter.
+ *
+ * Return: 0 if the filter was successfully added,
+ *	   negative error code otherwise.
  */
 static int
 ice_add_tc_fltr(struct net_device *netdev, struct ice_vsi *vsi,
 		struct flow_cls_offload *f,
-		struct ice_tc_flower_fltr **__fltr)
+		struct ice_tc_flower_fltr **__fltr, bool ingress)
 {
 	struct ice_tc_flower_fltr *fltr;
 	int err;
@@ -1994,7 +2033,7 @@ ice_add_tc_fltr(struct net_device *netdev, struct ice_vsi *vsi,
 	fltr->src_vsi = vsi;
 	INIT_HLIST_NODE(&fltr->tc_flower_node);
 
-	err = ice_parse_cls_flower(netdev, vsi, f, fltr);
+	err = ice_parse_cls_flower(netdev, vsi, f, fltr, ingress);
 	if (err < 0)
 		goto err;
 
@@ -2037,10 +2076,13 @@ ice_find_tc_flower_fltr(struct ice_pf *pf, unsigned long cookie)
  * @netdev: Pointer to filter device
  * @vsi: Pointer to VSI
  * @cls_flower: Pointer to flower offload structure
+ * @ingress: if the rule is added to an ingress block
+ *
+ * Return: 0 if the flower was successfully added,
+ *	   negative error code otherwise.
  */
-int
-ice_add_cls_flower(struct net_device *netdev, struct ice_vsi *vsi,
-		   struct flow_cls_offload *cls_flower)
+int ice_add_cls_flower(struct net_device *netdev, struct ice_vsi *vsi,
+		       struct flow_cls_offload *cls_flower, bool ingress)
 {
 	struct netlink_ext_ack *extack = cls_flower->common.extack;
 	struct net_device *vsi_netdev = vsi->netdev;
@@ -2075,7 +2117,7 @@ ice_add_cls_flower(struct net_device *netdev, struct ice_vsi *vsi,
 	}
 
 	/* prep and add TC-flower filter in HW */
-	err = ice_add_tc_fltr(netdev, vsi, cls_flower, &fltr);
+	err = ice_add_tc_fltr(netdev, vsi, cls_flower, &fltr, ingress);
 	if (err)
 		return err;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.h b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
index d84f153517ec..df9f90f793b9 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
@@ -211,11 +211,10 @@ static inline int ice_chnl_dmac_fltr_cnt(struct ice_pf *pf)
 }
 
 struct ice_vsi *ice_locate_vsi_using_queue(struct ice_vsi *vsi, int queue);
-int
-ice_add_cls_flower(struct net_device *netdev, struct ice_vsi *vsi,
-		   struct flow_cls_offload *cls_flower);
-int
-ice_del_cls_flower(struct ice_vsi *vsi, struct flow_cls_offload *cls_flower);
+int ice_add_cls_flower(struct net_device *netdev, struct ice_vsi *vsi,
+		       struct flow_cls_offload *cls_flower, bool ingress);
+int ice_del_cls_flower(struct ice_vsi *vsi,
+		       struct flow_cls_offload *cls_flower);
 void ice_replay_tc_fltrs(struct ice_pf *pf);
 bool ice_is_tunnel_supported(struct net_device *dev);
 
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

