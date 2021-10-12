Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C621942ABF6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Oct 2021 20:33:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6331D81CA0;
	Tue, 12 Oct 2021 18:33:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7IEP9qMJw4fw; Tue, 12 Oct 2021 18:33:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E56580E8D;
	Tue, 12 Oct 2021 18:33:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 975761BF317
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 18:33:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 913EB4028C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 18:33:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VXoruynjddar for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Oct 2021 18:33:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D8848403E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 18:33:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="250640575"
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="250640575"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 11:33:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="491100332"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
 by orsmga008.jf.intel.com with ESMTP; 12 Oct 2021 11:33:02 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 12 Oct 2021 11:31:05 -0700
Message-Id: <20211012183106.2315477-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211012183106.2315477-1-anthony.l.nguyen@intel.com>
References: <20211012183106.2315477-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue v2 3/4] ice: low level support for
 tunnels
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

From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Add definition of UDP tunnel dummy packets. Fill destination port value
in filter based on UDP tunnel port. Append tunnel flags to switch filter
definition in case of matching the tunnel.

Both vxlan and geneve are UDP tunnels, so only one new header is needed.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |  26 +-
 .../net/ethernet/intel/ice/ice_flex_type.h    |   2 +
 .../ethernet/intel/ice/ice_protocol_type.h    |   9 +
 drivers/net/ethernet/intel/ice/ice_switch.c   | 264 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_switch.h   |   2 +
 5 files changed, 300 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index 3013411e4a5b..171df32cef33 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -1641,6 +1641,26 @@ static struct ice_buf_build *ice_pkg_buf_alloc(struct ice_hw *hw)
 	return bld;
 }
 
+/**
+ * ice_get_sw_prof_type - determine switch profile type
+ * @hw: pointer to the HW structure
+ * @fv: pointer to the switch field vector
+ */
+static enum ice_prof_type
+ice_get_sw_prof_type(struct ice_hw *hw, struct ice_fv *fv)
+{
+	u16 i;
+
+	for (i = 0; i < hw->blk[ICE_BLK_SW].es.fvw; i++) {
+		/* UDP tunnel will have UDP_OF protocol ID and VNI offset */
+		if (fv->ew[i].prot_id == (u8)ICE_PROT_UDP_OF &&
+		    fv->ew[i].off == ICE_VNI_OFFSET)
+			return ICE_PROF_TUN_UDP;
+	}
+
+	return ICE_PROF_NON_TUN;
+}
+
 /**
  * ice_get_sw_fv_bitmap - Get switch field vector bitmap based on profile type
  * @hw: pointer to hardware structure
@@ -1664,6 +1684,7 @@ ice_get_sw_fv_bitmap(struct ice_hw *hw, enum ice_prof_type req_profs,
 	bitmap_zero(bm, ICE_MAX_NUM_PROFILES);
 	ice_seg = hw->seg;
 	do {
+		enum ice_prof_type prof_type;
 		u32 offset;
 
 		fv = ice_pkg_enum_entry(ice_seg, &state, ICE_SID_FLD_VEC_SW,
@@ -1671,7 +1692,10 @@ ice_get_sw_fv_bitmap(struct ice_hw *hw, enum ice_prof_type req_profs,
 		ice_seg = NULL;
 
 		if (fv) {
-			if (req_profs & ICE_PROF_NON_TUN)
+			/* Determine field vector type */
+			prof_type = ice_get_sw_prof_type(hw, fv);
+
+			if (req_profs & prof_type)
 				set_bit((u16)offset, bm);
 		}
 	} while (fv);
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_type.h b/drivers/net/ethernet/intel/ice/ice_flex_type.h
index c73fde45b266..fce1bd929467 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_type.h
@@ -656,6 +656,8 @@ struct ice_chs_chg {
 
 enum ice_prof_type {
 	ICE_PROF_NON_TUN = 0x1,
+	ICE_PROF_TUN_UDP = 0x2,
+	ICE_PROF_TUN_ALL = 0x6,
 	ICE_PROF_ALL = 0xFF,
 };
 #endif /* _ICE_FLEX_TYPE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_protocol_type.h b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
index d717d1158545..e4a8024de3f7 100644
--- a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
@@ -48,6 +48,7 @@ enum ice_sw_tunnel_type {
 	ICE_NON_TUN = 0,
 	ICE_SW_TUN_VXLAN,
 	ICE_SW_TUN_GENEVE,
+	ICE_ALL_TUNNELS /* All tunnel types including NVGRE */
 };
 
 /* Decoders for ice_prot_id:
@@ -83,6 +84,8 @@ enum ice_prot_id {
 	ICE_PROT_INVALID	= 255  /* when offset == ICE_FV_OFFSET_INVAL */
 };
 
+#define ICE_VNI_OFFSET		12 /* offset of VNI from ICE_PROT_UDP_OF */
+
 #define ICE_MAC_OFOS_HW		1
 #define ICE_MAC_IL_HW		4
 #define ICE_ETYPE_OL_HW		9
@@ -96,6 +99,12 @@ enum ice_prot_id {
 #define ICE_UDP_ILOS_HW		53
 
 #define ICE_UDP_OF_HW	52 /* UDP Tunnels */
+#define ICE_META_DATA_ID_HW 255 /* this is used for tunnel type */
+
+#define ICE_MDID_SIZE 2
+#define ICE_TUN_FLAG_MDID 21
+#define ICE_TUN_FLAG_MDID_OFF (ICE_MDID_SIZE * ICE_TUN_FLAG_MDID)
+#define ICE_TUN_FLAG_MASK 0xFF
 
 #define ICE_TUN_FLAG_FV_IND 2
 
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index a4a299012f9f..b0df70688189 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -35,6 +35,105 @@ struct ice_dummy_pkt_offsets {
 	u16 offset; /* ICE_PROTOCOL_LAST indicates end of list */
 };
 
+static const struct ice_dummy_pkt_offsets dummy_udp_tun_tcp_packet_offsets[] = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_ETYPE_OL,		12 },
+	{ ICE_IPV4_OFOS,	14 },
+	{ ICE_UDP_OF,		34 },
+	{ ICE_VXLAN,		42 },
+	{ ICE_GENEVE,		42 },
+	{ ICE_VXLAN_GPE,	42 },
+	{ ICE_MAC_IL,		50 },
+	{ ICE_IPV4_IL,		64 },
+	{ ICE_TCP_IL,		84 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+static const u8 dummy_udp_tun_tcp_packet[] = {
+	0x00, 0x00, 0x00, 0x00,  /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x08, 0x00,		/* ICE_ETYPE_OL 12 */
+
+	0x45, 0x00, 0x00, 0x5a, /* ICE_IPV4_OFOS 14 */
+	0x00, 0x01, 0x00, 0x00,
+	0x40, 0x11, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x12, 0xb5, /* ICE_UDP_OF 34 */
+	0x00, 0x46, 0x00, 0x00,
+
+	0x00, 0x00, 0x65, 0x58, /* ICE_VXLAN 42 */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_IL 50 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x08, 0x00,
+
+	0x45, 0x00, 0x00, 0x28, /* ICE_IPV4_IL 64 */
+	0x00, 0x01, 0x00, 0x00,
+	0x40, 0x06, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* ICE_TCP_IL 84 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x50, 0x02, 0x20, 0x00,
+	0x00, 0x00, 0x00, 0x00
+};
+
+static const struct ice_dummy_pkt_offsets dummy_udp_tun_udp_packet_offsets[] = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_ETYPE_OL,		12 },
+	{ ICE_IPV4_OFOS,	14 },
+	{ ICE_UDP_OF,		34 },
+	{ ICE_VXLAN,		42 },
+	{ ICE_GENEVE,		42 },
+	{ ICE_VXLAN_GPE,	42 },
+	{ ICE_MAC_IL,		50 },
+	{ ICE_IPV4_IL,		64 },
+	{ ICE_UDP_ILOS,		84 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+static const u8 dummy_udp_tun_udp_packet[] = {
+	0x00, 0x00, 0x00, 0x00,  /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x08, 0x00,		/* ICE_ETYPE_OL 12 */
+
+	0x45, 0x00, 0x00, 0x4e, /* ICE_IPV4_OFOS 14 */
+	0x00, 0x01, 0x00, 0x00,
+	0x00, 0x11, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x12, 0xb5, /* ICE_UDP_OF 34 */
+	0x00, 0x3a, 0x00, 0x00,
+
+	0x00, 0x00, 0x65, 0x58, /* ICE_VXLAN 42 */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_IL 50 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x08, 0x00,
+
+	0x45, 0x00, 0x00, 0x1c, /* ICE_IPV4_IL 64 */
+	0x00, 0x01, 0x00, 0x00,
+	0x00, 0x11, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* ICE_UDP_ILOS 84 */
+	0x00, 0x08, 0x00, 0x00,
+};
+
 /* offset info for MAC + IPv4 + UDP dummy packet */
 static const struct ice_dummy_pkt_offsets dummy_udp_packet_offsets[] = {
 	{ ICE_MAC_OFOS,		0 },
@@ -3463,6 +3562,8 @@ static const struct ice_prot_ext_tbl_entry ice_prot_ext[ICE_PROTOCOL_LAST] = {
 	{ ICE_TCP_IL,		{ 0, 2 } },
 	{ ICE_UDP_OF,		{ 0, 2 } },
 	{ ICE_UDP_ILOS,		{ 0, 2 } },
+	{ ICE_VXLAN,		{ 8, 10, 12, 14 } },
+	{ ICE_GENEVE,		{ 8, 10, 12, 14 } },
 };
 
 static struct ice_protocol_entry ice_prot_id_tbl[ICE_PROTOCOL_LAST] = {
@@ -3477,6 +3578,8 @@ static struct ice_protocol_entry ice_prot_id_tbl[ICE_PROTOCOL_LAST] = {
 	{ ICE_TCP_IL,		ICE_TCP_IL_HW },
 	{ ICE_UDP_OF,		ICE_UDP_OF_HW },
 	{ ICE_UDP_ILOS,		ICE_UDP_ILOS_HW },
+	{ ICE_VXLAN,		ICE_UDP_OF_HW },
+	{ ICE_GENEVE,		ICE_UDP_OF_HW },
 };
 
 /**
@@ -4080,6 +4183,7 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 		recp->chain_idx = entry->chain_idx;
 		recp->priority = buf[buf_idx].content.act_ctrl_fwd_priority;
 		recp->n_grp_count = rm->n_grp_count;
+		recp->tun_type = rm->tun_type;
 		recp->recp_created = true;
 	}
 	rm->root_buf = buf;
@@ -4160,6 +4264,54 @@ ice_get_fv(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 	return status;
 }
 
+/**
+ * ice_tun_type_match_word - determine if tun type needs a match mask
+ * @tun_type: tunnel type
+ * @mask: mask to be used for the tunnel
+ */
+static bool ice_tun_type_match_word(enum ice_sw_tunnel_type tun_type, u16 *mask)
+{
+	switch (tun_type) {
+	case ICE_SW_TUN_GENEVE:
+	case ICE_SW_TUN_VXLAN:
+		*mask = ICE_TUN_FLAG_MASK;
+		return true;
+
+	default:
+		*mask = 0;
+		return false;
+	}
+}
+
+/**
+ * ice_add_special_words - Add words that are not protocols, such as metadata
+ * @rinfo: other information regarding the rule e.g. priority and action info
+ * @lkup_exts: lookup word structure
+ */
+static enum ice_status
+ice_add_special_words(struct ice_adv_rule_info *rinfo,
+		      struct ice_prot_lkup_ext *lkup_exts)
+{
+	u16 mask;
+
+	/* If this is a tunneled packet, then add recipe index to match the
+	 * tunnel bit in the packet metadata flags.
+	 */
+	if (ice_tun_type_match_word(rinfo->tun_type, &mask)) {
+		if (lkup_exts->n_val_words < ICE_MAX_CHAIN_WORDS) {
+			u8 word = lkup_exts->n_val_words++;
+
+			lkup_exts->fv_words[word].prot_id = ICE_META_DATA_ID_HW;
+			lkup_exts->fv_words[word].off = ICE_TUN_FLAG_MDID_OFF;
+			lkup_exts->field_mask[word] = mask;
+		} else {
+			return ICE_ERR_MAX_LIMIT;
+		}
+	}
+
+	return 0;
+}
+
 /* ice_get_compat_fv_bitmap - Get compatible field vector bitmap for rule
  * @hw: pointer to hardware structure
  * @rinfo: other information regarding the rule e.g. priority and action info
@@ -4169,9 +4321,27 @@ static void
 ice_get_compat_fv_bitmap(struct ice_hw *hw, struct ice_adv_rule_info *rinfo,
 			 unsigned long *bm)
 {
+	enum ice_prof_type prof_type;
+
 	bitmap_zero(bm, ICE_MAX_NUM_PROFILES);
 
-	ice_get_sw_fv_bitmap(hw, ICE_PROF_NON_TUN, bm);
+	switch (rinfo->tun_type) {
+	case ICE_NON_TUN:
+		prof_type = ICE_PROF_NON_TUN;
+		break;
+	case ICE_ALL_TUNNELS:
+		prof_type = ICE_PROF_TUN_ALL;
+		break;
+	case ICE_SW_TUN_GENEVE:
+	case ICE_SW_TUN_VXLAN:
+		prof_type = ICE_PROF_TUN_UDP;
+		break;
+	default:
+		prof_type = ICE_PROF_ALL;
+		break;
+	}
+
+	ice_get_sw_fv_bitmap(hw, prof_type, bm);
 }
 
 /**
@@ -4197,6 +4367,7 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	enum ice_status status = 0;
 	struct ice_sw_recipe *rm;
 	u16 match_tun_mask = 0;
+	u16 mask;
 	u8 i;
 
 	if (!lkups_cnt)
@@ -4253,6 +4424,10 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	if (status)
 		goto err_unroll;
 
+	if (ice_tun_type_match_word(rinfo->tun_type, &mask) &&
+	    rm->n_grp_count > 1)
+		match_tun_mask = mask;
+
 	/* set the recipe priority if specified */
 	rm->priority = (u8)rinfo->priority;
 
@@ -4270,6 +4445,13 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 		set_bit((u16)fvit->profile_id, profiles);
 	}
 
+	/* Create any special protocol/offset pairs, such as looking at tunnel
+	 * bits by extracting metadata
+	 */
+	status = ice_add_special_words(rinfo, lkup_exts);
+	if (status)
+		goto err_free_lkup_exts;
+
 	/* Look for a recipe which matches our requested fv / mask list */
 	*rid = ice_find_recp(hw, lkup_exts);
 	if (*rid < ICE_MAX_NUM_RECIPES)
@@ -4353,6 +4535,7 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
  */
 static void
 ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
+		      enum ice_sw_tunnel_type tun_type,
 		      const u8 **pkt, u16 *pkt_len,
 		      const struct ice_dummy_pkt_offsets **offsets)
 {
@@ -4376,6 +4559,21 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 			ipv6 = true;
 	}
 
+	if (tun_type == ICE_SW_TUN_VXLAN ||
+	    tun_type == ICE_SW_TUN_GENEVE) {
+		if (tcp) {
+			*pkt = dummy_udp_tun_tcp_packet;
+			*pkt_len = sizeof(dummy_udp_tun_tcp_packet);
+			*offsets = dummy_udp_tun_tcp_packet_offsets;
+			return;
+		}
+
+		*pkt = dummy_udp_tun_udp_packet;
+		*pkt_len = sizeof(dummy_udp_tun_udp_packet);
+		*offsets = dummy_udp_tun_udp_packet_offsets;
+		return;
+	}
+
 	if (udp && !ipv6) {
 		if (vlan) {
 			*pkt = dummy_vlan_udp_packet;
@@ -4496,6 +4694,10 @@ ice_fill_adv_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 		case ICE_SCTP_IL:
 			len = sizeof(struct ice_sctp_hdr);
 			break;
+		case ICE_VXLAN:
+		case ICE_GENEVE:
+			len = sizeof(struct ice_udp_tnl_hdr);
+			break;
 		default:
 			return ICE_ERR_PARAM;
 		}
@@ -4525,6 +4727,48 @@ ice_fill_adv_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 	return 0;
 }
 
+/**
+ * ice_fill_adv_packet_tun - fill dummy packet with udp tunnel port
+ * @hw: pointer to the hardware structure
+ * @tun_type: tunnel type
+ * @pkt: dummy packet to fill in
+ * @offsets: offset info for the dummy packet
+ */
+static enum ice_status
+ice_fill_adv_packet_tun(struct ice_hw *hw, enum ice_sw_tunnel_type tun_type,
+			u8 *pkt, const struct ice_dummy_pkt_offsets *offsets)
+{
+	u16 open_port, i;
+
+	switch (tun_type) {
+	case ICE_SW_TUN_VXLAN:
+	case ICE_SW_TUN_GENEVE:
+		if (!ice_get_open_tunnel_port(hw, &open_port))
+			return ICE_ERR_CFG;
+		break;
+
+	default:
+		/* Nothing needs to be done for this tunnel type */
+		return 0;
+	}
+
+	/* Find the outer UDP protocol header and insert the port number */
+	for (i = 0; offsets[i].type != ICE_PROTOCOL_LAST; i++) {
+		if (offsets[i].type == ICE_UDP_OF) {
+			struct ice_l4_hdr *hdr;
+			u16 offset;
+
+			offset = offsets[i].offset;
+			hdr = (struct ice_l4_hdr *)&pkt[offset];
+			hdr->dst_port = cpu_to_be16(open_port);
+
+			return 0;
+		}
+	}
+
+	return ICE_ERR_CFG;
+}
+
 /**
  * ice_find_adv_rule_entry - Search a rule entry
  * @hw: pointer to the hardware structure
@@ -4559,6 +4803,7 @@ ice_find_adv_rule_entry(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 				break;
 			}
 		if (rinfo->sw_act.flag == list_itr->rule_info.sw_act.flag &&
+		    rinfo->tun_type == list_itr->rule_info.tun_type &&
 		    lkups_matched)
 			return list_itr;
 	}
@@ -4733,7 +4978,7 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 		return ICE_ERR_PARAM;
 
 	/* make sure that we can locate a dummy packet */
-	ice_find_dummy_packet(lkups, lkups_cnt, &pkt, &pkt_len,
+	ice_find_dummy_packet(lkups, lkups_cnt, rinfo->tun_type, &pkt, &pkt_len,
 			      &pkt_offsets);
 	if (!pkt) {
 		status = ICE_ERR_PARAM;
@@ -4844,6 +5089,14 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	if (status)
 		goto err_ice_add_adv_rule;
 
+	if (rinfo->tun_type != ICE_NON_TUN) {
+		status = ice_fill_adv_packet_tun(hw, rinfo->tun_type,
+						 s_rule->pdata.lkup_tx_rx.hdr,
+						 pkt_offsets);
+		if (status)
+			goto err_ice_add_adv_rule;
+	}
+
 	status = ice_aq_sw_rules(hw, (struct ice_aqc_sw_rules *)s_rule,
 				 rule_buf_sz, 1, ice_aqc_opc_add_sw_rules,
 				 NULL);
@@ -5079,6 +5332,13 @@ ice_rem_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 			return ICE_ERR_CFG;
 	}
 
+	/* Create any special protocol/offset pairs, such as looking at tunnel
+	 * bits by extracting metadata
+	 */
+	status = ice_add_special_words(rinfo, &lkup_exts);
+	if (status)
+		return status;
+
 	rid = ice_find_recp(hw, &lkup_exts);
 	/* If did not find a recipe that match the existing criteria */
 	if (rid == ICE_MAX_NUM_RECIPES)
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index e779681da59e..d898b25db385 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -212,6 +212,8 @@ struct ice_sw_recipe {
 	/* Bit map specifying the IDs associated with this group of recipe */
 	DECLARE_BITMAP(r_bitmap, ICE_MAX_NUM_RECIPES);
 
+	enum ice_sw_tunnel_type tun_type;
+
 	/* List of type ice_fltr_mgmt_list_entry or adv_rule */
 	u8 adv_rule;
 	struct list_head filt_rules;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
