Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0812C1E58
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Nov 2020 07:38:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 849442094E;
	Tue, 24 Nov 2020 06:38:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3SxI71CKZukf; Tue, 24 Nov 2020 06:38:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0DD6F204D1;
	Tue, 24 Nov 2020 06:38:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8D1E01BF31B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Nov 2020 06:37:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8857E87151
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Nov 2020 06:37:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z9iYhw9mfpmu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Nov 2020 06:37:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 12B3887143
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Nov 2020 06:37:57 +0000 (UTC)
IronPort-SDR: G2Ul+hslGxtHoxJ50MTF5ETj/Y+/CXU0RY45yK9CMC1dpxfh9EnpDMvJ01GE7zy7JQ0RhMnknI
 7juV0io2PszQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9814"; a="171994761"
X-IronPort-AV: E=Sophos;i="5.78,365,1599548400"; d="scan'208";a="171994761"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2020 22:37:56 -0800
IronPort-SDR: b4i67xVfe9y16lGbOkmNgdkpHgpfhxVPsNRHvIfvaah6KBlbs8slIjwuVtxM8Rs9Viyp1yNTpj
 HZh6dHnR4bSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,365,1599548400"; d="scan'208";a="361747162"
Received: from npg-dpdk-haiyue-3.sh.intel.com ([10.67.118.203])
 by fmsmga004.fm.intel.com with ESMTP; 23 Nov 2020 22:37:53 -0800
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Nov 2020 14:23:52 +0800
Message-Id: <20201124062410.6824-3-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201124062410.6824-1-haiyue.wang@intel.com>
References: <20201124062410.6824-1-haiyue.wang@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC 02/20] ice: Support non word aligned input
 set field
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
Cc: Dan Nowlin <dan.nowlin@intel.com>, cunming.liang@intel.com,
 qi.z.zhang@intel.com, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Qi Zhang <qi.z.zhang@intel.com>

To support FDIR / RSS input set with protocol field like DSCP,
TTL, PROT, etc. which is not word aligned, we need to enable field
vector masking.

Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_fdir.c     |  62 ++-
 drivers/net/ethernet/intel/ice/ice_fdir.h     |   8 +
 .../net/ethernet/intel/ice/ice_flex_pipe.c    | 422 +++++++++++++++++-
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |   2 +-
 .../net/ethernet/intel/ice/ice_flex_type.h    |  17 +
 drivers/net/ethernet/intel/ice/ice_flow.c     | 121 ++++-
 drivers/net/ethernet/intel/ice/ice_flow.h     |   7 +
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |  16 +
 8 files changed, 621 insertions(+), 34 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c b/drivers/net/ethernet/intel/ice/ice_fdir.c
index 0dafd458de21..8e0deeee410a 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
@@ -470,6 +470,39 @@ static void ice_pkt_insert_ipv6_addr(u8 *pkt, int offset, __be32 *addr)
 		       sizeof(*addr));
 }
 
+/**
+ * ice_pkt_insert_u8 - insert a u8 value into a memory buffer.
+ * @pkt: packet buffer
+ * @offset: offset into buffer
+ * @data: 8 bit value to convert and insert into pkt at offset
+ */
+static void ice_pkt_insert_u8(u8 *pkt, int offset, u8 data)
+{
+	memcpy(pkt + offset, &data, sizeof(data));
+}
+
+/**
+ * ice_pkt_insert_u8_tc - insert a u8 value into a memory buffer for TC ipv6.
+ * @pkt: packet buffer
+ * @offset: offset into buffer
+ * @data: 8 bit value to convert and insert into pkt at offset
+ *
+ * This function is designed for inserting Traffic Class (TC) for IPv6,
+ * since that TC is not aligned in number of bytes. Here we split it out
+ * into two part and fill each byte with data copy from pkt, then insert
+ * the two bytes data one by one.
+ */
+static void ice_pkt_insert_u8_tc(u8 *pkt, int offset, u8 data)
+{
+	u8 high, low;
+
+	high = (data >> 4) + (*(pkt + offset) & 0xF0);
+	memcpy(pkt + offset, &high, sizeof(high));
+
+	low = (*(pkt + offset + 1) & 0x0F) + ((data & 0x0F) << 4);
+	memcpy(pkt + offset + 1, &low, sizeof(low));
+}
+
 /**
  * ice_pkt_insert_u16 - insert a be16 value into a memory buffer
  * @pkt: packet buffer
@@ -530,11 +563,9 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
 		case IPPROTO_SCTP:
 			flow = ICE_FLTR_PTYPE_NONF_IPV4_SCTP;
 			break;
-		case IPPROTO_IP:
+		default:
 			flow = ICE_FLTR_PTYPE_NONF_IPV4_OTHER;
 			break;
-		default:
-			return ICE_ERR_PARAM;
 		}
 	} else if (input->flow_type == ICE_FLTR_PTYPE_NONF_IPV6_OTHER) {
 		switch (input->ip.v6.proto) {
@@ -547,11 +578,9 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
 		case IPPROTO_SCTP:
 			flow = ICE_FLTR_PTYPE_NONF_IPV6_SCTP;
 			break;
-		case IPPROTO_IP:
+		default:
 			flow = ICE_FLTR_PTYPE_NONF_IPV6_OTHER;
 			break;
-		default:
-			return ICE_ERR_PARAM;
 		}
 	} else {
 		flow = input->flow_type;
@@ -590,6 +619,8 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
 				   input->ip.v4.dst_ip);
 		ice_pkt_insert_u16(loc, ICE_IPV4_TCP_SRC_PORT_OFFSET,
 				   input->ip.v4.dst_port);
+		ice_pkt_insert_u8(loc, ICE_IPV4_TOS_OFFSET, input->ip.v4.tos);
+		ice_pkt_insert_u8(loc, ICE_IPV4_TTL_OFFSET, input->ip.v4.ttl);
 		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
 		if (frag)
 			loc[20] = ICE_FDIR_IPV4_PKT_FLAG_DF;
@@ -603,6 +634,8 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
 				   input->ip.v4.dst_ip);
 		ice_pkt_insert_u16(loc, ICE_IPV4_UDP_SRC_PORT_OFFSET,
 				   input->ip.v4.dst_port);
+		ice_pkt_insert_u8(loc, ICE_IPV4_TOS_OFFSET, input->ip.v4.tos);
+		ice_pkt_insert_u8(loc, ICE_IPV4_TTL_OFFSET, input->ip.v4.ttl);
 		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
 		ice_pkt_insert_mac_addr(loc + ETH_ALEN,
 					input->ext_data.src_mac);
@@ -616,6 +649,8 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
 				   input->ip.v4.dst_ip);
 		ice_pkt_insert_u16(loc, ICE_IPV4_SCTP_SRC_PORT_OFFSET,
 				   input->ip.v4.dst_port);
+		ice_pkt_insert_u8(loc, ICE_IPV4_TOS_OFFSET, input->ip.v4.tos);
+		ice_pkt_insert_u8(loc, ICE_IPV4_TTL_OFFSET, input->ip.v4.ttl);
 		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
 		break;
 	case ICE_FLTR_PTYPE_NONF_IPV4_OTHER:
@@ -623,7 +658,10 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
 				   input->ip.v4.src_ip);
 		ice_pkt_insert_u32(loc, ICE_IPV4_SRC_ADDR_OFFSET,
 				   input->ip.v4.dst_ip);
-		ice_pkt_insert_u16(loc, ICE_IPV4_PROTO_OFFSET, 0);
+		ice_pkt_insert_u8(loc, ICE_IPV4_TOS_OFFSET, input->ip.v4.tos);
+		ice_pkt_insert_u8(loc, ICE_IPV4_TTL_OFFSET, input->ip.v4.ttl);
+		ice_pkt_insert_u8(loc, ICE_IPV4_PROTO_OFFSET,
+				  input->ip.v4.proto);
 		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
 		break;
 	case ICE_FLTR_PTYPE_NONF_IPV6_TCP:
@@ -635,6 +673,8 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
 				   input->ip.v6.src_port);
 		ice_pkt_insert_u16(loc, ICE_IPV6_TCP_SRC_PORT_OFFSET,
 				   input->ip.v6.dst_port);
+		ice_pkt_insert_u8_tc(loc, ICE_IPV6_TC_OFFSET, input->ip.v6.tc);
+		ice_pkt_insert_u8(loc, ICE_IPV6_HLIM_OFFSET, input->ip.v6.hlim);
 		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
 		break;
 	case ICE_FLTR_PTYPE_NONF_IPV6_UDP:
@@ -646,6 +686,8 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
 				   input->ip.v6.src_port);
 		ice_pkt_insert_u16(loc, ICE_IPV6_UDP_SRC_PORT_OFFSET,
 				   input->ip.v6.dst_port);
+		ice_pkt_insert_u8_tc(loc, ICE_IPV6_TC_OFFSET, input->ip.v6.tc);
+		ice_pkt_insert_u8(loc, ICE_IPV6_HLIM_OFFSET, input->ip.v6.hlim);
 		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
 		break;
 	case ICE_FLTR_PTYPE_NONF_IPV6_SCTP:
@@ -657,6 +699,8 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
 				   input->ip.v6.src_port);
 		ice_pkt_insert_u16(loc, ICE_IPV6_SCTP_SRC_PORT_OFFSET,
 				   input->ip.v6.dst_port);
+		ice_pkt_insert_u8_tc(loc, ICE_IPV6_TC_OFFSET, input->ip.v6.tc);
+		ice_pkt_insert_u8(loc, ICE_IPV6_HLIM_OFFSET, input->ip.v6.hlim);
 		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
 		break;
 	case ICE_FLTR_PTYPE_NONF_IPV6_OTHER:
@@ -664,6 +708,10 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
 					 input->ip.v6.src_ip);
 		ice_pkt_insert_ipv6_addr(loc, ICE_IPV6_SRC_ADDR_OFFSET,
 					 input->ip.v6.dst_ip);
+		ice_pkt_insert_u8_tc(loc, ICE_IPV6_TC_OFFSET, input->ip.v6.tc);
+		ice_pkt_insert_u8(loc, ICE_IPV6_HLIM_OFFSET, input->ip.v6.hlim);
+		ice_pkt_insert_u8(loc, ICE_IPV6_PROTO_OFFSET,
+				  input->ip.v6.proto);
 		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
 		break;
 	default:
diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.h b/drivers/net/ethernet/intel/ice/ice_fdir.h
index 0876c88b4086..35e6e991057f 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.h
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.h
@@ -25,6 +25,12 @@
 #define ICE_IPV6_UDP_DST_PORT_OFFSET	56
 #define ICE_IPV6_SCTP_SRC_PORT_OFFSET	54
 #define ICE_IPV6_SCTP_DST_PORT_OFFSET	56
+#define ICE_IPV4_TOS_OFFSET		15
+#define ICE_IPV4_TTL_OFFSET		22
+#define ICE_IPV6_TC_OFFSET		14
+#define ICE_IPV6_HLIM_OFFSET		21
+#define ICE_IPV6_PROTO_OFFSET		20
+
 /* IP v4 has 2 flag bits that enable fragment processing: DF and MF. DF
  * requests that the packet not be fragmented. MF indicates that a packet has
  * been fragmented.
@@ -86,6 +92,7 @@ struct ice_fdir_v4 {
 	u8 tos;
 	u8 ip_ver;
 	u8 proto;
+	u8 ttl;
 };
 
 #define ICE_IPV6_ADDR_LEN_AS_U32		4
@@ -99,6 +106,7 @@ struct ice_fdir_v6 {
 	__be32 sec_parm_idx; /* security parameter index */
 	u8 tc;
 	u8 proto;
+	u8 hlim;
 };
 
 struct ice_fdir_extra {
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index eb11df8deae8..c92a49387253 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -2361,18 +2361,82 @@ ice_vsig_add_mv_vsi(struct ice_hw *hw, enum ice_block blk, u16 vsi, u16 vsig)
 }
 
 /**
- * ice_find_prof_id - find profile ID for a given field vector
+ * ice_prof_has_mask_idx - determine if profile index masking is identical
+ * @hw: pointer to the hardware structure
+ * @blk: HW block
+ * @prof: profile to check
+ * @idx: profile index to check
+ * @mask: mask to match
+ */
+static bool
+ice_prof_has_mask_idx(struct ice_hw *hw, enum ice_block blk, u8 prof, u16 idx,
+		      u16 mask)
+{
+	bool expect_no_mask = false;
+	bool found = false;
+	bool match = false;
+	u16 i;
+
+	/* If mask is 0x0000 or 0xffff, then there is no masking */
+	if (mask == 0 || mask == 0xffff)
+		expect_no_mask = true;
+
+	/* Scan the enabled masks on this profile, for the specified idx */
+	for (i = hw->blk[blk].masks.first; i < hw->blk[blk].masks.first +
+	     hw->blk[blk].masks.count; i++)
+		if (hw->blk[blk].es.mask_ena[prof] & BIT(i))
+			if (hw->blk[blk].masks.masks[i].in_use &&
+			    hw->blk[blk].masks.masks[i].idx == idx) {
+				found = true;
+				if (hw->blk[blk].masks.masks[i].mask == mask)
+					match = true;
+				break;
+			}
+
+	if (expect_no_mask) {
+		if (found)
+			return false;
+	} else {
+		if (!match)
+			return false;
+	}
+
+	return true;
+}
+
+/**
+ * ice_prof_has_mask - determine if profile masking is identical
+ * @hw: pointer to the hardware structure
+ * @blk: HW block
+ * @prof: profile to check
+ * @masks: masks to match
+ */
+static bool
+ice_prof_has_mask(struct ice_hw *hw, enum ice_block blk, u8 prof, u16 *masks)
+{
+	u16 i;
+
+	/* es->mask_ena[prof] will have the mask */
+	for (i = 0; i < hw->blk[blk].es.fvw; i++)
+		if (!ice_prof_has_mask_idx(hw, blk, prof, i, masks[i]))
+			return false;
+
+	return true;
+}
+
+/**
+ * ice_find_prof_id_with_mask - find profile ID for a given field vector
  * @hw: pointer to the hardware structure
  * @blk: HW block
  * @fv: field vector to search for
+ * @masks: masks for fv
  * @prof_id: receives the profile ID
  */
 static enum ice_status
-ice_find_prof_id(struct ice_hw *hw, enum ice_block blk,
-		 struct ice_fv_word *fv, u8 *prof_id)
+ice_find_prof_id_with_mask(struct ice_hw *hw, enum ice_block blk,
+			   struct ice_fv_word *fv, u16 *masks, u8 *prof_id)
 {
 	struct ice_es *es = &hw->blk[blk].es;
-	u16 off;
 	u8 i;
 
 	/* For FD, we don't want to re-use a existed profile with the same
@@ -2382,11 +2446,15 @@ ice_find_prof_id(struct ice_hw *hw, enum ice_block blk,
 		return ICE_ERR_DOES_NOT_EXIST;
 
 	for (i = 0; i < (u8)es->count; i++) {
-		off = i * es->fvw;
+		u16 off = i * es->fvw;
 
 		if (memcmp(&es->t[off], fv, es->fvw * sizeof(*fv)))
 			continue;
 
+		/* check if masks settings are the same for this profile */
+		if (masks && !ice_prof_has_mask(hw, blk, i, masks))
+			continue;
+
 		*prof_id = i;
 		return 0;
 	}
@@ -2542,6 +2610,330 @@ ice_prof_inc_ref(struct ice_hw *hw, enum ice_block blk, u8 prof_id)
 	return 0;
 }
 
+/**
+ * ice_write_prof_mask_reg - write profile mask register
+ * @hw: pointer to the HW struct
+ * @blk: hardware block
+ * @mask_idx: mask index
+ * @idx: index of the FV which will use the mask
+ * @mask: the 16-bit mask
+ */
+static void
+ice_write_prof_mask_reg(struct ice_hw *hw, enum ice_block blk, u16 mask_idx,
+			u16 idx, u16 mask)
+{
+	u32 offset;
+	u32 val;
+
+	switch (blk) {
+	case ICE_BLK_RSS:
+		offset = GLQF_HMASK(mask_idx);
+		val = (idx << GLQF_HMASK_MSK_INDEX_S) & GLQF_HMASK_MSK_INDEX_M;
+		val |= (mask << GLQF_HMASK_MASK_S) & GLQF_HMASK_MASK_M;
+		break;
+	case ICE_BLK_FD:
+		offset = GLQF_FDMASK(mask_idx);
+		val = (idx << GLQF_FDMASK_MSK_INDEX_S) & GLQF_FDMASK_MSK_INDEX_M;
+		val |= (mask << GLQF_FDMASK_MASK_S) & GLQF_FDMASK_MASK_M;
+		break;
+	default:
+		ice_debug(hw, ICE_DBG_PKG, "No profile masks for block %d\n",
+			  blk);
+		return;
+	}
+
+	wr32(hw, offset, val);
+	ice_debug(hw, ICE_DBG_PKG, "write mask, blk %d (%d): %x = %x\n",
+		  blk, idx, offset, val);
+}
+
+/**
+ * ice_write_prof_mask_enable_res - write profile mask enable register
+ * @hw: pointer to the HW struct
+ * @blk: hardware block
+ * @prof_id: profile ID
+ * @enable_mask: enable mask
+ */
+static void
+ice_write_prof_mask_enable_res(struct ice_hw *hw, enum ice_block blk,
+			       u16 prof_id, u32 enable_mask)
+{
+	u32 offset;
+
+	switch (blk) {
+	case ICE_BLK_RSS:
+		offset = GLQF_HMASK_SEL(prof_id);
+		break;
+	case ICE_BLK_FD:
+		offset = GLQF_FDMASK_SEL(prof_id);
+		break;
+	default:
+		ice_debug(hw, ICE_DBG_PKG, "No profile masks for block %d\n",
+			  blk);
+		return;
+	}
+
+	wr32(hw, offset, enable_mask);
+	ice_debug(hw, ICE_DBG_PKG, "write mask enable, blk %d (%d): %x = %x\n",
+		  blk, prof_id, offset, enable_mask);
+}
+
+/**
+ * ice_init_prof_masks - initial prof masks
+ * @hw: pointer to the HW struct
+ * @blk: hardware block
+ */
+static void ice_init_prof_masks(struct ice_hw *hw, enum ice_block blk)
+{
+	u16 per_pf;
+	u16 i;
+
+	mutex_init(&hw->blk[blk].masks.lock);
+
+	per_pf = ICE_PROF_MASK_COUNT / hw->dev_caps.num_funcs;
+
+	hw->blk[blk].masks.count = per_pf;
+	hw->blk[blk].masks.first = hw->pf_id * per_pf;
+
+	memset(hw->blk[blk].masks.masks, 0, sizeof(hw->blk[blk].masks.masks));
+
+	for (i = hw->blk[blk].masks.first;
+	     i < hw->blk[blk].masks.first + hw->blk[blk].masks.count; i++)
+		ice_write_prof_mask_reg(hw, blk, i, 0, 0);
+}
+
+/**
+ * ice_init_all_prof_masks - initialize all prof masks
+ * @hw: pointer to the HW struct
+ */
+static void ice_init_all_prof_masks(struct ice_hw *hw)
+{
+	ice_init_prof_masks(hw, ICE_BLK_RSS);
+	ice_init_prof_masks(hw, ICE_BLK_FD);
+}
+
+/**
+ * ice_alloc_prof_mask - allocate profile mask
+ * @hw: pointer to the HW struct
+ * @blk: hardware block
+ * @idx: index of FV which will use the mask
+ * @mask: the 16-bit mask
+ * @mask_idx: variable to receive the mask index
+ */
+static enum ice_status
+ice_alloc_prof_mask(struct ice_hw *hw, enum ice_block blk, u16 idx, u16 mask,
+		    u16 *mask_idx)
+{
+	bool found_unused = false, found_copy = false;
+	enum ice_status status = ICE_ERR_MAX_LIMIT;
+	u16 unused_idx = 0, copy_idx = 0;
+	u16 i;
+
+	if (blk != ICE_BLK_RSS && blk != ICE_BLK_FD)
+		return ICE_ERR_PARAM;
+
+	mutex_lock(&hw->blk[blk].masks.lock);
+
+	for (i = hw->blk[blk].masks.first;
+	     i < hw->blk[blk].masks.first + hw->blk[blk].masks.count; i++)
+		if (hw->blk[blk].masks.masks[i].in_use) {
+			/* if mask is in use and it exactly duplicates the
+			 * desired mask and index, then in can be reused
+			 */
+			if (hw->blk[blk].masks.masks[i].mask == mask &&
+			    hw->blk[blk].masks.masks[i].idx == idx) {
+				found_copy = true;
+				copy_idx = i;
+				break;
+			}
+		} else {
+			/* save off unused index, but keep searching in case
+			 * there is an exact match later on
+			 */
+			if (!found_unused) {
+				found_unused = true;
+				unused_idx = i;
+			}
+		}
+
+	if (found_copy)
+		i = copy_idx;
+	else if (found_unused)
+		i = unused_idx;
+	else
+		goto err_ice_alloc_prof_mask;
+
+	/* update mask for a new entry */
+	if (found_unused) {
+		hw->blk[blk].masks.masks[i].in_use = true;
+		hw->blk[blk].masks.masks[i].mask = mask;
+		hw->blk[blk].masks.masks[i].idx = idx;
+		hw->blk[blk].masks.masks[i].ref = 0;
+		ice_write_prof_mask_reg(hw, blk, i, idx, mask);
+	}
+
+	hw->blk[blk].masks.masks[i].ref++;
+	*mask_idx = i;
+	status = 0;
+
+err_ice_alloc_prof_mask:
+	mutex_unlock(&hw->blk[blk].masks.lock);
+
+	return status;
+}
+
+/**
+ * ice_free_prof_mask - free profile mask
+ * @hw: pointer to the HW struct
+ * @blk: hardware block
+ * @mask_idx: index of mask
+ */
+static enum ice_status
+ice_free_prof_mask(struct ice_hw *hw, enum ice_block blk, u16 mask_idx)
+{
+	if (blk != ICE_BLK_RSS && blk != ICE_BLK_FD)
+		return ICE_ERR_PARAM;
+
+	if (!(mask_idx >= hw->blk[blk].masks.first &&
+	      mask_idx < hw->blk[blk].masks.first + hw->blk[blk].masks.count))
+		return ICE_ERR_DOES_NOT_EXIST;
+
+	mutex_lock(&hw->blk[blk].masks.lock);
+
+	if (!hw->blk[blk].masks.masks[mask_idx].in_use)
+		goto exit_ice_free_prof_mask;
+
+	if (hw->blk[blk].masks.masks[mask_idx].ref > 1) {
+		hw->blk[blk].masks.masks[mask_idx].ref--;
+		goto exit_ice_free_prof_mask;
+	}
+
+	/* remove mask */
+	hw->blk[blk].masks.masks[mask_idx].in_use = false;
+	hw->blk[blk].masks.masks[mask_idx].mask = 0;
+	hw->blk[blk].masks.masks[mask_idx].idx = 0;
+
+	/* update mask as unused entry */
+	ice_debug(hw, ICE_DBG_PKG, "Free mask, blk %d, mask %d\n", blk,
+		  mask_idx);
+	ice_write_prof_mask_reg(hw, blk, mask_idx, 0, 0);
+
+exit_ice_free_prof_mask:
+	mutex_unlock(&hw->blk[blk].masks.lock);
+
+	return 0;
+}
+
+/**
+ * ice_free_prof_masks - free all profile masks for a profile
+ * @hw: pointer to the HW struct
+ * @blk: hardware block
+ * @prof_id: profile ID
+ */
+static enum ice_status
+ice_free_prof_masks(struct ice_hw *hw, enum ice_block blk, u16 prof_id)
+{
+	u32 mask_bm;
+	u16 i;
+
+	if (blk != ICE_BLK_RSS && blk != ICE_BLK_FD)
+		return ICE_ERR_PARAM;
+
+	mask_bm = hw->blk[blk].es.mask_ena[prof_id];
+	for (i = 0; i < BITS_PER_BYTE * sizeof(mask_bm); i++)
+		if (mask_bm & BIT(i))
+			ice_free_prof_mask(hw, blk, i);
+
+	return 0;
+}
+
+/**
+ * ice_shutdown_prof_masks - releases lock for masking
+ * @hw: pointer to the HW struct
+ * @blk: hardware block
+ *
+ * This should be called before unloading the driver
+ */
+static void ice_shutdown_prof_masks(struct ice_hw *hw, enum ice_block blk)
+{
+	u16 i;
+
+	mutex_lock(&hw->blk[blk].masks.lock);
+
+	for (i = hw->blk[blk].masks.first;
+	     i < hw->blk[blk].masks.first + hw->blk[blk].masks.count; i++) {
+		ice_write_prof_mask_reg(hw, blk, i, 0, 0);
+
+		hw->blk[blk].masks.masks[i].in_use = false;
+		hw->blk[blk].masks.masks[i].idx = 0;
+		hw->blk[blk].masks.masks[i].mask = 0;
+	}
+
+	mutex_unlock(&hw->blk[blk].masks.lock);
+	mutex_destroy(&hw->blk[blk].masks.lock);
+}
+
+/**
+ * ice_shutdown_all_prof_masks - releases all locks for masking
+ * @hw: pointer to the HW struct
+ *
+ * This should be called before unloading the driver
+ */
+static void ice_shutdown_all_prof_masks(struct ice_hw *hw)
+{
+	ice_shutdown_prof_masks(hw, ICE_BLK_RSS);
+	ice_shutdown_prof_masks(hw, ICE_BLK_FD);
+}
+
+/**
+ * ice_update_prof_masking - set registers according to masking
+ * @hw: pointer to the HW struct
+ * @blk: hardware block
+ * @prof_id: profile ID
+ * @masks: masks
+ */
+static enum ice_status
+ice_update_prof_masking(struct ice_hw *hw, enum ice_block blk, u16 prof_id,
+			u16 *masks)
+{
+	bool err = false;
+	u32 ena_mask = 0;
+	u16 idx;
+	u16 i;
+
+	/* Only support FD and RSS masking, otherwise nothing to be done */
+	if (blk != ICE_BLK_RSS && blk != ICE_BLK_FD)
+		return 0;
+
+	for (i = 0; i < hw->blk[blk].es.fvw; i++)
+		if (masks[i] && masks[i] != 0xFFFF) {
+			if (!ice_alloc_prof_mask(hw, blk, i, masks[i], &idx)) {
+				ena_mask |= BIT(idx);
+			} else {
+				/* not enough bitmaps */
+				err = true;
+				break;
+			}
+		}
+
+	if (err) {
+		/* free any bitmaps we have allocated */
+		for (i = 0; i < BITS_PER_BYTE * sizeof(ena_mask); i++)
+			if (ena_mask & BIT(i))
+				ice_free_prof_mask(hw, blk, i);
+
+		return ICE_ERR_OUT_OF_RANGE;
+	}
+
+	/* enable the masks for this profile */
+	ice_write_prof_mask_enable_res(hw, blk, prof_id, ena_mask);
+
+	/* store enabled masks with profile so that they can be freed later */
+	hw->blk[blk].es.mask_ena[prof_id] = ena_mask;
+
+	return 0;
+}
+
 /**
  * ice_write_es - write an extraction sequence to hardware
  * @hw: pointer to the HW struct
@@ -2581,6 +2973,7 @@ ice_prof_dec_ref(struct ice_hw *hw, enum ice_block blk, u8 prof_id)
 	if (hw->blk[blk].es.ref_count[prof_id] > 0) {
 		if (!--hw->blk[blk].es.ref_count[prof_id]) {
 			ice_write_es(hw, blk, prof_id, NULL);
+			ice_free_prof_masks(hw, blk, prof_id);
 			return ice_free_prof_id(hw, blk, prof_id);
 		}
 	}
@@ -2943,6 +3336,7 @@ void ice_free_hw_tbls(struct ice_hw *hw)
 		devm_kfree(ice_hw_to_dev(hw), hw->blk[i].es.t);
 		devm_kfree(ice_hw_to_dev(hw), hw->blk[i].es.ref_count);
 		devm_kfree(ice_hw_to_dev(hw), hw->blk[i].es.written);
+		devm_kfree(ice_hw_to_dev(hw), hw->blk[i].es.mask_ena);
 	}
 
 	list_for_each_entry_safe(r, rt, &hw->rss_list_head, l_entry) {
@@ -2950,6 +3344,7 @@ void ice_free_hw_tbls(struct ice_hw *hw)
 		devm_kfree(ice_hw_to_dev(hw), r);
 	}
 	mutex_destroy(&hw->rss_locks);
+	ice_shutdown_all_prof_masks(hw);
 	memset(hw->blk, 0, sizeof(hw->blk));
 }
 
@@ -3003,6 +3398,7 @@ void ice_clear_hw_tbls(struct ice_hw *hw)
 		memset(es->t, 0, es->count * sizeof(*es->t) * es->fvw);
 		memset(es->ref_count, 0, es->count * sizeof(*es->ref_count));
 		memset(es->written, 0, es->count * sizeof(*es->written));
+		memset(es->mask_ena, 0, es->count * sizeof(*es->mask_ena));
 	}
 }
 
@@ -3016,6 +3412,7 @@ enum ice_status ice_init_hw_tbls(struct ice_hw *hw)
 
 	mutex_init(&hw->rss_locks);
 	INIT_LIST_HEAD(&hw->rss_list_head);
+	ice_init_all_prof_masks(hw);
 	for (i = 0; i < ICE_BLK_COUNT; i++) {
 		struct ice_prof_redir *prof_redir = &hw->blk[i].prof_redir;
 		struct ice_prof_tcam *prof = &hw->blk[i].prof;
@@ -3118,6 +3515,11 @@ enum ice_status ice_init_hw_tbls(struct ice_hw *hw)
 					   sizeof(*es->written), GFP_KERNEL);
 		if (!es->written)
 			goto err;
+
+		es->mask_ena = devm_kcalloc(ice_hw_to_dev(hw), es->count,
+					    sizeof(*es->mask_ena), GFP_KERNEL);
+		if (!es->mask_ena)
+			goto err;
 	}
 	return 0;
 
@@ -3724,15 +4126,16 @@ ice_update_fd_swap(struct ice_hw *hw, u16 prof_id, struct ice_fv_word *es)
  * @id: profile tracking ID
  * @ptypes: array of bitmaps indicating ptypes (ICE_FLOW_PTYPE_MAX bits)
  * @es: extraction sequence (length of array is determined by the block)
+ * @masks: mask for extraction sequence
  *
- * This function registers a profile, which matches a set of PTGs with a
+ * This function registers a profile, which matches a set of PTYPES with a
  * particular extraction sequence. While the hardware profile is allocated
  * it will not be written until the first call to ice_add_flow that specifies
  * the ID value used here.
  */
 enum ice_status
 ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
-	     struct ice_fv_word *es)
+	     struct ice_fv_word *es, u16 *masks)
 {
 	u32 bytes = DIV_ROUND_UP(ICE_FLOW_PTYPE_MAX, BITS_PER_BYTE);
 	DECLARE_BITMAP(ptgs_used, ICE_XLT1_CNT);
@@ -3746,7 +4149,7 @@ ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 	mutex_lock(&hw->blk[blk].es.prof_map_lock);
 
 	/* search for existing profile */
-	status = ice_find_prof_id(hw, blk, es, &prof_id);
+	status = ice_find_prof_id_with_mask(hw, blk, es, masks, &prof_id);
 	if (status) {
 		/* allocate profile ID */
 		status = ice_alloc_prof_id(hw, blk, &prof_id);
@@ -3764,6 +4167,9 @@ ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 			if (status)
 				goto err_ice_add_prof;
 		}
+		status = ice_update_prof_masking(hw, blk, prof_id, masks);
+		if (status)
+			goto err_ice_add_prof;
 
 		/* and write new es */
 		ice_write_es(hw, blk, prof_id, es);
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
index 61fd8f2fc959..fb5f1461d692 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
@@ -27,7 +27,7 @@ int ice_udp_tunnel_unset_port(struct net_device *netdev, unsigned int table,
 
 enum ice_status
 ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
-	     struct ice_fv_word *es);
+	     struct ice_fv_word *es, u16 *masks);
 enum ice_status
 ice_add_prof_id_flow(struct ice_hw *hw, enum ice_block blk, u16 vsi, u64 hdl);
 enum ice_status
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_type.h b/drivers/net/ethernet/intel/ice/ice_flex_type.h
index 24063c1351b2..48e24c8bd219 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_type.h
@@ -335,6 +335,7 @@ struct ice_es {
 	u16 count;
 	u16 fvw;
 	u16 *ref_count;
+	u32 *mask_ena;
 	struct list_head prof_map;
 	struct ice_fv_word *t;
 	struct mutex prof_map_lock;	/* protect access to profiles list */
@@ -478,6 +479,21 @@ struct ice_prof_redir {
 	u16 count;
 };
 
+struct ice_mask {
+	u16 mask;	/* 16-bit mask */
+	u16 idx;	/* index */
+	u16 ref;	/* reference count */
+	u8 in_use;	/* non-zero if used */
+};
+
+struct ice_masks {
+	struct mutex lock;  /* lock to protect this structure */
+	u16 first;	/* first mask owned by the PF */
+	u16 count;	/* number of masks owned by the PF */
+#define ICE_PROF_MASK_COUNT 32
+	struct ice_mask masks[ICE_PROF_MASK_COUNT];
+};
+
 /* Tables per block */
 struct ice_blk_info {
 	struct ice_xlt1 xlt1;
@@ -485,6 +501,7 @@ struct ice_blk_info {
 	struct ice_prof_tcam prof;
 	struct ice_prof_redir prof_redir;
 	struct ice_es es;
+	struct ice_masks masks;
 	u8 overwrite; /* set to true to allow overwrite of table entries */
 	u8 is_list_init;
 };
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index adb614915187..fbdea03afc61 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -9,12 +9,21 @@ struct ice_flow_field_info {
 	enum ice_flow_seg_hdr hdr;
 	s16 off;	/* Offset from start of a protocol header, in bits */
 	u16 size;	/* Size of fields in bits */
+	u16 mask;	/* 16-bit mask for field */
 };
 
 #define ICE_FLOW_FLD_INFO(_hdr, _offset_bytes, _size_bytes) { \
 	.hdr = _hdr, \
 	.off = (_offset_bytes) * BITS_PER_BYTE, \
 	.size = (_size_bytes) * BITS_PER_BYTE, \
+	.mask = 0, \
+}
+
+#define ICE_FLOW_FLD_INFO_MSK(_hdr, _offset_bytes, _size_bytes, _mask) { \
+	.hdr = _hdr, \
+	.off = (_offset_bytes) * BITS_PER_BYTE, \
+	.size = (_size_bytes) * BITS_PER_BYTE, \
+	.mask = _mask, \
 }
 
 /* Table containing properties of supported protocol header fields */
@@ -32,6 +41,18 @@ struct ice_flow_field_info ice_flds_info[ICE_FLOW_FIELD_IDX_MAX] = {
 	/* ICE_FLOW_FIELD_IDX_ETH_TYPE */
 	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ETH, 0, sizeof(__be16)),
 	/* IPv4 / IPv6 */
+	/* ICE_FLOW_FIELD_IDX_IPV4_DSCP */
+	ICE_FLOW_FLD_INFO_MSK(ICE_FLOW_SEG_HDR_IPV4, 0, 1, 0x00fc),
+	/* ICE_FLOW_FIELD_IDX_IPV6_DSCP */
+	ICE_FLOW_FLD_INFO_MSK(ICE_FLOW_SEG_HDR_IPV6, 0, 1, 0x0ff0),
+	/* ICE_FLOW_FIELD_IDX_IPV4_TTL */
+	ICE_FLOW_FLD_INFO_MSK(ICE_FLOW_SEG_HDR_NONE, 8, 1, 0xff00),
+	/* ICE_FLOW_FIELD_IDX_IPV4_PROT */
+	ICE_FLOW_FLD_INFO_MSK(ICE_FLOW_SEG_HDR_NONE, 8, 1, 0x00ff),
+	/* ICE_FLOW_FIELD_IDX_IPV6_TTL */
+	ICE_FLOW_FLD_INFO_MSK(ICE_FLOW_SEG_HDR_NONE, 6, 1, 0x00ff),
+	/* ICE_FLOW_FIELD_IDX_IPV6_PROT */
+	ICE_FLOW_FLD_INFO_MSK(ICE_FLOW_SEG_HDR_NONE, 6, 1, 0xff00),
 	/* ICE_FLOW_FIELD_IDX_IPV4_SA */
 	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_IPV4, 12, sizeof(struct in_addr)),
 	/* ICE_FLOW_FIELD_IDX_IPV4_DA */
@@ -300,7 +321,7 @@ static const u32 ice_ptypes_mac_il[] = {
 /* Manage parameters and info. used during the creation of a flow profile */
 struct ice_flow_prof_params {
 	enum ice_block blk;
-	u16 entry_length; /* # of bytes formatted entry will require */
+u16 entry_length; /* # of bytes formatted entry will require */
 	u8 es_cnt;
 	struct ice_flow_prof *prof;
 
@@ -308,6 +329,8 @@ struct ice_flow_prof_params {
 	 * This will give us the direction flags.
 	 */
 	struct ice_fv_word es[ICE_MAX_FV_WORDS];
+
+	u16 mask[ICE_MAX_FV_WORDS];
 	DECLARE_BITMAP(ptypes, ICE_FLOW_PTYPE_MAX);
 };
 
@@ -529,6 +552,7 @@ ice_flow_xtract_pkt_flags(struct ice_hw *hw,
  * @params: information about the flow to be processed
  * @seg: packet segment index of the field to be extracted
  * @fld: ID of field to be extracted
+ * @match: bit field of all fields
  *
  * This function determines the protocol ID, offset, and size of the given
  * field. It then allocates one or more extraction sequence entries for the
@@ -536,12 +560,15 @@ ice_flow_xtract_pkt_flags(struct ice_hw *hw,
  */
 static enum ice_status
 ice_flow_xtract_fld(struct ice_hw *hw, struct ice_flow_prof_params *params,
-		    u8 seg, enum ice_flow_field fld)
+		    u8 seg, enum ice_flow_field fld, u64 match)
 {
+	enum ice_flow_field sib = ICE_FLOW_FIELD_IDX_MAX;
 	enum ice_prot_id prot_id = ICE_PROT_ID_INVAL;
 	u8 fv_words = hw->blk[params->blk].es.fvw;
 	struct ice_flow_fld_info *flds;
 	u16 cnt, ese_bits, i;
+	u16 sib_mask = 0;
+	u16 mask;
 	u16 off;
 
 	flds = params->prof->segs[seg].fields;
@@ -556,6 +583,50 @@ ice_flow_xtract_fld(struct ice_hw *hw, struct ice_flow_prof_params *params,
 	case ICE_FLOW_FIELD_IDX_ETH_TYPE:
 		prot_id = seg == 0 ? ICE_PROT_ETYPE_OL : ICE_PROT_ETYPE_IL;
 		break;
+	case ICE_FLOW_FIELD_IDX_IPV4_DSCP:
+		prot_id = seg == 0 ? ICE_PROT_IPV4_OF_OR_S : ICE_PROT_IPV4_IL;
+		break;
+	case ICE_FLOW_FIELD_IDX_IPV6_DSCP:
+		prot_id = seg == 0 ? ICE_PROT_IPV6_OF_OR_S : ICE_PROT_IPV6_IL;
+		break;
+	case ICE_FLOW_FIELD_IDX_IPV4_TTL:
+	case ICE_FLOW_FIELD_IDX_IPV4_PROT:
+		prot_id = seg == 0 ? ICE_PROT_IPV4_OF_OR_S : ICE_PROT_IPV4_IL;
+
+		/* TTL and PROT share the same extraction seq. entry.
+		 * Each is considered a sibling to the other in terms of sharing
+		 * the same extraction sequence entry.
+		 */
+		if (fld == ICE_FLOW_FIELD_IDX_IPV4_TTL)
+			sib = ICE_FLOW_FIELD_IDX_IPV4_PROT;
+		else if (fld == ICE_FLOW_FIELD_IDX_IPV4_PROT)
+			sib = ICE_FLOW_FIELD_IDX_IPV4_TTL;
+
+		/* If the sibling field is also included, that field's
+		 * mask needs to be included.
+		 */
+		if (match & BIT(sib))
+			sib_mask = ice_flds_info[sib].mask;
+		break;
+	case ICE_FLOW_FIELD_IDX_IPV6_TTL:
+	case ICE_FLOW_FIELD_IDX_IPV6_PROT:
+		prot_id = seg == 0 ? ICE_PROT_IPV6_OF_OR_S : ICE_PROT_IPV6_IL;
+
+		/* TTL and PROT share the same extraction seq. entry.
+		 * Each is considered a sibling to the other in terms of sharing
+		 * the same extraction sequence entry.
+		 */
+		if (fld == ICE_FLOW_FIELD_IDX_IPV6_TTL)
+			sib = ICE_FLOW_FIELD_IDX_IPV6_PROT;
+		else if (fld == ICE_FLOW_FIELD_IDX_IPV6_PROT)
+			sib = ICE_FLOW_FIELD_IDX_IPV6_TTL;
+
+		/* If the sibling field is also included, that field's
+		 * mask needs to be included.
+		 */
+		if (match & BIT(sib))
+			sib_mask = ice_flds_info[sib].mask;
+		break;
 	case ICE_FLOW_FIELD_IDX_IPV4_SA:
 	case ICE_FLOW_FIELD_IDX_IPV4_DA:
 		prot_id = seg == 0 ? ICE_PROT_IPV4_OF_OR_S : ICE_PROT_IPV4_IL;
@@ -589,6 +660,9 @@ ice_flow_xtract_fld(struct ice_hw *hw, struct ice_flow_prof_params *params,
 		/* ICMP type and code share the same extraction seq. entry */
 		prot_id = (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_IPV4) ?
 				ICE_PROT_ICMP_IL : ICE_PROT_ICMPV6_IL;
+		sib = fld == ICE_FLOW_FIELD_IDX_ICMP_TYPE ?
+			ICE_FLOW_FIELD_IDX_ICMP_CODE :
+			ICE_FLOW_FIELD_IDX_ICMP_TYPE;
 		break;
 	case ICE_FLOW_FIELD_IDX_GRE_KEYID:
 		prot_id = ICE_PROT_GRE_OF;
@@ -607,6 +681,7 @@ ice_flow_xtract_fld(struct ice_hw *hw, struct ice_flow_prof_params *params,
 		ICE_FLOW_FV_EXTRACT_SZ;
 	flds[fld].xtrct.disp = (u8)(ice_flds_info[fld].off % ese_bits);
 	flds[fld].xtrct.idx = params->es_cnt;
+	flds[fld].xtrct.mask = ice_flds_info[fld].mask;
 
 	/* Adjust the next field-entry index after accommodating the number of
 	 * entries this field consumes
@@ -616,24 +691,34 @@ ice_flow_xtract_fld(struct ice_hw *hw, struct ice_flow_prof_params *params,
 
 	/* Fill in the extraction sequence entries needed for this field */
 	off = flds[fld].xtrct.off;
+	mask = flds[fld].xtrct.mask;
 	for (i = 0; i < cnt; i++) {
-		u8 idx;
-
-		/* Make sure the number of extraction sequence required
-		 * does not exceed the block's capability
+		/* Only consume an extraction sequence entry if there is no
+		 * sibling field associated with this field or the sibling entry
+		 * already extracts the word shared with this field.
 		 */
-		if (params->es_cnt >= fv_words)
-			return ICE_ERR_MAX_LIMIT;
+		if (sib == ICE_FLOW_FIELD_IDX_MAX ||
+		    flds[sib].xtrct.prot_id == ICE_PROT_ID_INVAL ||
+		    flds[sib].xtrct.off != off) {
+			u8 idx;
 
-		/* some blocks require a reversed field vector layout */
-		if (hw->blk[params->blk].es.reverse)
-			idx = fv_words - params->es_cnt - 1;
-		else
-			idx = params->es_cnt;
+			/* Make sure the number of extraction sequence required
+			 * does not exceed the block's capability
+			 */
+			if (params->es_cnt >= fv_words)
+				return ICE_ERR_MAX_LIMIT;
 
-		params->es[idx].prot_id = prot_id;
-		params->es[idx].off = off;
-		params->es_cnt++;
+			/* some blocks require a reversed field vector layout */
+			if (hw->blk[params->blk].es.reverse)
+				idx = fv_words - params->es_cnt - 1;
+			else
+				idx = params->es_cnt;
+
+			params->es[idx].prot_id = prot_id;
+			params->es[idx].off = off;
+			params->mask[idx] = mask | sib_mask;
+			params->es_cnt++;
+		}
 
 		off += ICE_FLOW_FV_EXTRACT_SZ;
 	}
@@ -747,7 +832,7 @@ ice_flow_create_xtrct_seq(struct ice_hw *hw,
 
 		for_each_set_bit(j, (unsigned long *)&match,
 				 ICE_FLOW_FIELD_IDX_MAX) {
-			status = ice_flow_xtract_fld(hw, params, i, j);
+			status = ice_flow_xtract_fld(hw, params, i, j, match);
 			if (status)
 				return status;
 			clear_bit(j, (unsigned long *)&match);
@@ -1250,7 +1335,7 @@ ice_flow_add_prof_sync(struct ice_hw *hw, enum ice_block blk,
 
 	/* Add a HW profile for this flow profile */
 	status = ice_add_prof(hw, blk, prof_id, (u8 *)params->ptypes,
-			      params->es);
+			      params->es, params->mask);
 	if (status) {
 		ice_debug(hw, ICE_DBG_FLOW, "Error adding a HW flow profile\n");
 		goto out;
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index dc4aeaaf8acc..9a81c6e2bd4f 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -60,6 +60,12 @@ enum ice_flow_field {
 	ICE_FLOW_FIELD_IDX_C_VLAN,
 	ICE_FLOW_FIELD_IDX_ETH_TYPE,
 	/* L3 */
+	ICE_FLOW_FIELD_IDX_IPV4_DSCP,
+	ICE_FLOW_FIELD_IDX_IPV6_DSCP,
+	ICE_FLOW_FIELD_IDX_IPV4_TTL,
+	ICE_FLOW_FIELD_IDX_IPV4_PROT,
+	ICE_FLOW_FIELD_IDX_IPV6_TTL,
+	ICE_FLOW_FIELD_IDX_IPV6_PROT,
 	ICE_FLOW_FIELD_IDX_IPV4_SA,
 	ICE_FLOW_FIELD_IDX_IPV4_DA,
 	ICE_FLOW_FIELD_IDX_IPV6_SA,
@@ -160,6 +166,7 @@ struct ice_flow_seg_xtrct {
 	u16 off;	/* Starting offset of the field in header in bytes */
 	u8 idx;		/* Index of FV entry used */
 	u8 disp;	/* Displacement of field in bits fr. FV entry's start */
+	u16 mask;	/* Mask for field */
 };
 
 enum ice_flow_fld_match_type {
diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index 90abc8612a6a..bab05b3cf08f 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -303,8 +303,24 @@
 #define GLQF_FD_SIZE_FD_BSIZE_S			16
 #define GLQF_FD_SIZE_FD_BSIZE_M			ICE_M(0x7FFF, 16)
 #define GLQF_FDINSET(_i, _j)			(0x00412000 + ((_i) * 4 + (_j) * 512))
+#define GLQF_FDMASK(_i)				(0x00410800 + ((_i) * 4))
+#define GLQF_FDMASK_MAX_INDEX			31
+#define GLQF_FDMASK_MSK_INDEX_S			0
+#define GLQF_FDMASK_MSK_INDEX_M			ICE_M(0x1F, 0)
+#define GLQF_FDMASK_MASK_S			16
+#define GLQF_FDMASK_MASK_M			ICE_M(0xFFFF, 16)
 #define GLQF_FDMASK_SEL(_i)			(0x00410400 + ((_i) * 4))
 #define GLQF_FDSWAP(_i, _j)			(0x00413000 + ((_i) * 4 + (_j) * 512))
+#define GLQF_HMASK(_i)				(0x0040FC00 + ((_i) * 4))
+#define GLQF_HMASK_MAX_INDEX			31
+#define GLQF_HMASK_MSK_INDEX_S			0
+#define GLQF_HMASK_MSK_INDEX_M			ICE_M(0x1F, 0)
+#define GLQF_HMASK_MASK_S			16
+#define GLQF_HMASK_MASK_M			ICE_M(0xFFFF, 16)
+#define GLQF_HMASK_SEL(_i)			(0x00410000 + ((_i) * 4))
+#define GLQF_HMASK_SEL_MAX_INDEX		127
+#define GLQF_HMASK_SEL_MASK_SEL_S		0
+#define GLQF_HMASK_SEL_MASK_SEL_M
 #define PFQF_FD_ENA				0x0043A000
 #define PFQF_FD_ENA_FD_ENA_M			BIT(0)
 #define PFQF_FD_SIZE				0x00460100
-- 
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
