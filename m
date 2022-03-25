Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0D54E7137
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Mar 2022 11:31:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4E0F60AE8;
	Fri, 25 Mar 2022 10:31:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1lxcuAsdF5L1; Fri, 25 Mar 2022 10:31:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6BC6761074;
	Fri, 25 Mar 2022 10:31:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 162261BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Mar 2022 10:31:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 02F504038B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Mar 2022 10:31:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5IpP0-Eti95v for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Mar 2022 10:31:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CCA9440320
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Mar 2022 10:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648204292; x=1679740292;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LD2724wOdBqXrmyqyUm1yHKiJvydGLhUjDR1wWbCT2s=;
 b=OdJBftXL+4qMlgO2D06iRfNPD8KOFHYh9VME2jQ3auKNSIpigQYC6aEC
 afVhsUNVabSvN3S5m38q5Gkgc6xbgFtYYGQytzUx4obSe/D/bHcc4t78Y
 b+T+bOVaFtr30NL0Lj2N/u2Ah9WIPEna+kU3Hw0/VKZo8noIJWb+xtmzd
 sd6AKmEy3kRsFi7aFmmpjGMTrplNgvUzJNsmGYMoxR6/+2VzGI1MjIKz9
 7J216SvGa+p2qMQY6vb6Gu01krAheOvFB/VyQwpgov02ryCUwWc0QEXPx
 cPrVZ8TiCnX2REISju1USLkc18nO1rsTHltBJABl0d6deZezl9Fwk5wp0 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="321801226"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="321801226"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 03:31:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="553189128"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by fmsmga007.fm.intel.com with ESMTP; 25 Mar 2022 03:31:30 -0700
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 25 Mar 2022 11:30:49 +0100
Message-Id: <20220325103048.3371-1-martyna.szapar-mudlaw@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] ice: Add support for vlan tpid
 filters in switchdev
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
Cc: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Enable support for adding TC rules that filter on the VLAN tag type
in switchdev mode.

Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>
---
 .../ethernet/intel/ice/ice_protocol_type.h    |  7 ++-
 drivers/net/ethernet/intel/ice/ice_switch.c   | 59 ++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_switch.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   | 21 +++++++
 drivers/net/ethernet/intel/ice/ice_tc_lib.h   |  1 +
 .../net/ethernet/intel/ice/ice_vlan_mode.c    |  1 -
 6 files changed, 85 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_protocol_type.h b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
index f8bd0990641b..6773599c5c55 100644
--- a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
@@ -111,13 +111,18 @@ enum ice_prot_id {
 #define ICE_GRE_OF_HW		64
 
 #define ICE_UDP_OF_HW	52 /* UDP Tunnels */
-#define ICE_META_DATA_ID_HW 255 /* this is used for tunnel type */
+#define ICE_META_DATA_ID_HW 255 /* this is used for tunnel and vlan type */
 
 #define ICE_MDID_SIZE 2
+
 #define ICE_TUN_FLAG_MDID 21
 #define ICE_TUN_FLAG_MDID_OFF (ICE_MDID_SIZE * ICE_TUN_FLAG_MDID)
 #define ICE_TUN_FLAG_MASK 0xFF
 
+#define ICE_VLAN_FLAG_MDID 20
+#define ICE_VLAN_FLAG_MDID_OFF (ICE_MDID_SIZE * ICE_VLAN_FLAG_MDID)
+#define ICE_PKT_FLAGS_0_TO_15_VLAN_FLAGS_MASK 0xD000
+
 #define ICE_TUN_FLAG_FV_IND 2
 
 /* Mapping of software defined protocol ID to hardware defined protocol ID */
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index f047137294a9..9de623332bb7 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -5543,10 +5543,11 @@ static bool ice_tun_type_match_word(enum ice_sw_tunnel_type tun_type, u16 *mask)
  * ice_add_special_words - Add words that are not protocols, such as metadata
  * @rinfo: other information regarding the rule e.g. priority and action info
  * @lkup_exts: lookup word structure
+ * @dvm_ena: is double VLAN mode enabled
  */
 static int
 ice_add_special_words(struct ice_adv_rule_info *rinfo,
-		      struct ice_prot_lkup_ext *lkup_exts)
+		      struct ice_prot_lkup_ext *lkup_exts, bool dvm_ena)
 {
 	u16 mask;
 
@@ -5565,6 +5566,19 @@ ice_add_special_words(struct ice_adv_rule_info *rinfo,
 		}
 	}
 
+	if (rinfo->vlan_type != 0 && dvm_ena) {
+		if (lkup_exts->n_val_words < ICE_MAX_CHAIN_WORDS) {
+			u8 word = lkup_exts->n_val_words++;
+
+			lkup_exts->fv_words[word].prot_id = ICE_META_DATA_ID_HW;
+			lkup_exts->fv_words[word].off = ICE_VLAN_FLAG_MDID_OFF;
+			lkup_exts->field_mask[word] =
+					ICE_PKT_FLAGS_0_TO_15_VLAN_FLAGS_MASK;
+		} else {
+			return -ENOSPC;
+		}
+	}
+
 	return 0;
 }
 
@@ -5684,7 +5698,7 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	/* Create any special protocol/offset pairs, such as looking at tunnel
 	 * bits by extracting metadata
 	 */
-	status = ice_add_special_words(rinfo, lkup_exts);
+	status = ice_add_special_words(rinfo, lkup_exts, ice_is_dvm_ena(hw));
 	if (status)
 		goto err_free_lkup_exts;
 
@@ -6017,6 +6031,36 @@ ice_fill_adv_packet_tun(struct ice_hw *hw, enum ice_sw_tunnel_type tun_type,
 	return -EIO;
 }
 
+/**
+ * ice_fill_adv_packet_vlan - fill dummy packet with vlan tag type
+ * @vlan_type: vlan tag type
+ * @pkt: dummy packet to fill in
+ * @offsets: offset info for the dummy packet
+ */
+static int
+ice_fill_adv_packet_vlan(u16 vlan_type, u8 *pkt,
+			 const struct ice_dummy_pkt_offsets *offsets)
+{
+	u16 i;
+
+	/* Find VLAN header and insert vlan tpid */
+	for (i = 0; offsets[i].type != ICE_PROTOCOL_LAST; i++) {
+		if (offsets[i].type == ICE_VLAN_OFOS ||
+		    offsets[i].type == ICE_VLAN_EX) {
+			struct ice_vlan_hdr *hdr;
+			u16 offset;
+
+			offset = offsets[i].offset;
+			hdr = (struct ice_vlan_hdr *)&pkt[offset];
+			hdr->type = cpu_to_be16(vlan_type);
+
+			return 0;
+		}
+	}
+
+	return -EIO;
+}
+
 /**
  * ice_find_adv_rule_entry - Search a rule entry
  * @hw: pointer to the hardware structure
@@ -6052,6 +6096,7 @@ ice_find_adv_rule_entry(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 			}
 		if (rinfo->sw_act.flag == list_itr->rule_info.sw_act.flag &&
 		    rinfo->tun_type == list_itr->rule_info.tun_type &&
+		    rinfo->vlan_type == list_itr->rule_info.vlan_type &&
 		    lkups_matched)
 			return list_itr;
 	}
@@ -6338,6 +6383,14 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 			goto err_ice_add_adv_rule;
 	}
 
+	if (rinfo->vlan_type != 0 && ice_is_dvm_ena(hw)) {
+		status = ice_fill_adv_packet_vlan(rinfo->vlan_type,
+						  s_rule->pdata.lkup_tx_rx.hdr,
+						  profile->offsets);
+		if (status)
+			goto err_ice_add_adv_rule;
+	}
+
 	status = ice_aq_sw_rules(hw, (struct ice_aqc_sw_rules *)s_rule,
 				 rule_buf_sz, 1, ice_aqc_opc_add_sw_rules,
 				 NULL);
@@ -6576,7 +6629,7 @@ ice_rem_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	/* Create any special protocol/offset pairs, such as looking at tunnel
 	 * bits by extracting metadata
 	 */
-	status = ice_add_special_words(rinfo, &lkup_exts);
+	status = ice_add_special_words(rinfo, &lkup_exts, ice_is_dvm_ena(hw));
 	if (status)
 		return status;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index ecac75e71395..a7eacf45a89d 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -195,6 +195,7 @@ struct ice_adv_rule_info {
 	u32 priority;
 	u8 rx; /* true means LOOKUP_RX otherwise LOOKUP_TX */
 	u16 fltr_rule_id;
+	u16 vlan_type;
 	struct ice_adv_rule_flags_info flags_info;
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 9efc089b30fe..9221049898ac 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -138,6 +138,18 @@ ice_sw_type_from_tunnel(enum ice_tunnel_type type)
 	}
 }
 
+static u16 ice_check_supported_vlan_tpid(u16 vlan_tpid)
+{
+	switch (vlan_tpid) {
+	case ETH_P_8021Q:
+	case ETH_P_8021AD:
+	case ETH_P_QINQ1:
+		return vlan_tpid;
+	default:
+		return 0;
+	}
+}
+
 static int
 ice_tc_fill_tunnel_outer(u32 flags, struct ice_tc_flower_fltr *fltr,
 			 struct ice_adv_lkup_elem *list)
@@ -273,8 +285,11 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
 {
 	struct ice_tc_flower_lyr_2_4_hdrs *headers = &tc_fltr->outer_headers;
 	bool inner = false;
+	u16 vlan_tpid = 0;
 	int i = 0;
 
+	rule_info->vlan_type = vlan_tpid;
+
 	rule_info->tun_type = ice_sw_type_from_tunnel(tc_fltr->tunnel_type);
 	if (tc_fltr->tunnel_type != TNL_LAST) {
 		i = ice_tc_fill_tunnel_outer(flags, tc_fltr, list);
@@ -315,6 +330,10 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
 
 	/* copy VLAN info */
 	if (flags & ICE_TC_FLWR_FIELD_VLAN) {
+		vlan_tpid = be16_to_cpu(headers->vlan_hdr.vlan_tpid);
+		rule_info->vlan_type =
+				ice_check_supported_vlan_tpid(vlan_tpid);
+
 		if (flags & ICE_TC_FLWR_FIELD_CVLAN)
 			list[i].type = ICE_VLAN_EX;
 		else
@@ -1073,6 +1092,8 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 				cpu_to_be16(match.key->vlan_id & VLAN_VID_MASK);
 		if (match.mask->vlan_priority)
 			headers->vlan_hdr.vlan_prio = match.key->vlan_priority;
+		if (match.mask->vlan_tpid)
+			headers->vlan_hdr.vlan_tpid = match.key->vlan_tpid;
 	}
 
 	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_CVLAN)) {
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.h b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
index 87acfe5b0e4d..0193874cd203 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
@@ -41,6 +41,7 @@ struct ice_tc_flower_action {
 struct ice_tc_vlan_hdr {
 	__be16 vlan_id; /* Only last 12 bits valid */
 	u16 vlan_prio; /* Only last 3 bits valid (valid values: 0..7) */
+	__be16 vlan_tpid;
 };
 
 struct ice_tc_l2_hdr {
diff --git a/drivers/net/ethernet/intel/ice/ice_vlan_mode.c b/drivers/net/ethernet/intel/ice/ice_vlan_mode.c
index 1b618de592b7..bcda2e004807 100644
--- a/drivers/net/ethernet/intel/ice/ice_vlan_mode.c
+++ b/drivers/net/ethernet/intel/ice/ice_vlan_mode.c
@@ -199,7 +199,6 @@ static bool ice_is_dvm_supported(struct ice_hw *hw)
 #define ICE_SW_LKUP_VLAN_PKT_FLAGS_LKUP_IDX		2
 #define ICE_SW_LKUP_PROMISC_VLAN_LOC_LKUP_IDX		2
 #define ICE_PKT_FLAGS_0_TO_15_FV_IDX			1
-#define ICE_PKT_FLAGS_0_TO_15_VLAN_FLAGS_MASK		0xD000
 static struct ice_update_recipe_lkup_idx_params ice_dvm_dflt_recipes[] = {
 	{
 		/* Update recipe ICE_SW_LKUP_VLAN to filter based on the
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
