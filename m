Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EEC21AC4D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 03:03:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5E42C87388;
	Fri, 10 Jul 2020 01:03:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id umRjY_OwAbHN; Fri, 10 Jul 2020 01:03:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 63B41873FA;
	Fri, 10 Jul 2020 01:03:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BF6BC1BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 01:02:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B80A789170
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 01:02:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DwQaT3pl4lxR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 01:02:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D70D289197
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 01:02:52 +0000 (UTC)
IronPort-SDR: Yp/6BHYCkohxzvwNenP1K2+r9INx8XnBj3dbRpRZlMPzsSghUgK/jNaPMVCUL+IvaTjHjUI0xr
 HANJ7FQJyCtw==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="209662991"
X-IronPort-AV: E=Sophos;i="5.75,332,1589266800"; d="scan'208";a="209662991"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 18:02:52 -0700
IronPort-SDR: u1W1WM6uzFUPQTW3jYI+xOw5YQTSXnbG3IsBscnxXUixmpKpCZBNR0u2l5lBTdIks2sFwNtktb
 7zcjZTKCsyHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,332,1589266800"; d="scan'208";a="458118873"
Received: from dpdk51.sh.intel.com ([10.67.111.82])
 by orsmga005.jf.intel.com with ESMTP; 09 Jul 2020 18:02:51 -0700
From: Qi Zhang <qi.z.zhang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 10 Jul 2020 09:06:33 +0800
Message-Id: <20200710010644.33817-6-qi.z.zhang@intel.com>
X-Mailer: git-send-email 2.13.6
In-Reply-To: <20200710010644.33817-1-qi.z.zhang@intel.com>
References: <20200710010644.33817-1-qi.z.zhang@intel.com>
Subject: [Intel-wired-lan] [PATCH S48 v5 05/16] ice: Support to separate
 GTP-U uplink and downlink
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
Cc: qi.z.zhang@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

To apply different input set for GTP-U packet with or without extend
header as well as GTP-U uplink and downlink, we need to add TCAM mask
matching capability. This allows comprehending different PTYPE
attributes by examining flags from the parser. Using this method,
different profiles can be used by examining flag values from the parser.

Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_flex_pipe.c | 102 ++++++++++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_flex_pipe.h |   1 +
 drivers/net/ethernet/intel/ice/ice_flex_type.h |  61 +++++++++++++++
 drivers/net/ethernet/intel/ice/ice_flow.c      |  88 ++++++++++++++++++++-
 4 files changed, 242 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index a8750e7e1546..7940caf3441a 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -2552,20 +2552,22 @@ static bool ice_tcam_ent_rsrc_type(enum ice_block blk, u16 *rsrc_type)
  * ice_alloc_tcam_ent - allocate hardware TCAM entry
  * @hw: pointer to the HW struct
  * @blk: the block to allocate the TCAM for
+ * @btm: true to allocate from bottom of table, false to allocate from top
  * @tcam_idx: pointer to variable to receive the TCAM entry
  *
  * This function allocates a new entry in a Profile ID TCAM for a specific
  * block.
  */
 static enum ice_status
-ice_alloc_tcam_ent(struct ice_hw *hw, enum ice_block blk, u16 *tcam_idx)
+ice_alloc_tcam_ent(struct ice_hw *hw, enum ice_block blk, bool btm,
+		   u16 *tcam_idx)
 {
 	u16 res_type;
 
 	if (!ice_tcam_ent_rsrc_type(blk, &res_type))
 		return ICE_ERR_PARAM;
 
-	return ice_alloc_hw_res(hw, res_type, 1, true, tcam_idx);
+	return ice_alloc_hw_res(hw, res_type, 1, btm, tcam_idx);
 }
 
 /**
@@ -4153,12 +4155,67 @@ ice_update_fd_swap(struct ice_hw *hw, u16 prof_id, struct ice_fv_word *es)
 	return 0;
 }
 
+/* The entries here needs to match the order of enum ice_ptype_attrib */
+static const struct ice_ptype_attrib_info ice_ptype_attributes[] = {
+	{ ICE_GTP_PDU_EH,	ICE_GTP_PDU_FLAG_MASK },
+	{ ICE_GTP_SESSION,	ICE_GTP_FLAGS_MASK },
+	{ ICE_GTP_DOWNLINK,	ICE_GTP_FLAGS_MASK },
+	{ ICE_GTP_UPLINK,	ICE_GTP_FLAGS_MASK },
+};
+
+/**
+ * ice_get_ptype_attrib_info - get ptype attribute information
+ * @type: attribute type
+ * @info: pointer to variable to the attribute information
+ */
+static void
+ice_get_ptype_attrib_info(enum ice_ptype_attrib_type type,
+			  struct ice_ptype_attrib_info *info)
+{
+	*info = ice_ptype_attributes[type];
+}
+
+/**
+ * ice_add_prof_attrib - add any PTG with attributes to profile
+ * @prof: pointer to the profile to which PTG entries will be added
+ * @ptg: PTG to be added
+ * @ptype: PTYPE that needs to be looked up
+ * @attr: array of attributes that will be considered
+ * @attr_cnt: number of elements in the attribute array
+ */
+static enum ice_status
+ice_add_prof_attrib(struct ice_prof_map *prof, u8 ptg, u16 ptype,
+		    const struct ice_ptype_attributes *attr, u16 attr_cnt)
+{
+	bool found = false;
+	u16 i;
+
+	for (i = 0; i < attr_cnt; i++)
+		if (attr[i].ptype == ptype) {
+			found = true;
+
+			prof->ptg[prof->ptg_cnt] = ptg;
+			ice_get_ptype_attrib_info(attr[i].attrib,
+						  &prof->attr[prof->ptg_cnt]);
+
+			if (++prof->ptg_cnt >= ICE_MAX_PTG_PER_PROFILE)
+				return ICE_ERR_MAX_LIMIT;
+		}
+
+	if (!found)
+		return ICE_ERR_DOES_NOT_EXIST;
+
+	return 0;
+}
+
 /**
  * ice_add_prof - add profile
  * @hw: pointer to the HW struct
  * @blk: hardware block
  * @id: profile tracking ID
  * @ptypes: array of bitmaps indicating ptypes (ICE_FLOW_PTYPE_MAX bits)
+ * @attr: array of attributes
+ * @attr_cnt: number of elements in attrib array
  * @es: extraction sequence (length of array is determined by the block)
  * @masks: mask for extraction sequence
  *
@@ -4169,6 +4226,7 @@ ice_update_fd_swap(struct ice_hw *hw, u16 prof_id, struct ice_fv_word *es)
  */
 enum ice_status
 ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
+	     const struct ice_ptype_attributes *attr, u16 attr_cnt,
 	     struct ice_fv_word *es, u16 *masks)
 {
 	u32 bytes = DIV_ROUND_UP(ICE_FLOW_PTYPE_MAX, BITS_PER_BYTE);
@@ -4253,10 +4311,25 @@ ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 				continue;
 
 			set_bit(ptg, ptgs_used);
-			prof->ptg[prof->ptg_cnt] = ptg;
-
-			if (++prof->ptg_cnt >= ICE_MAX_PTG_PER_PROFILE)
+			/* Check to see there are any attributes for
+			 * this ptype, and add them if found.
+			 */
+			status = ice_add_prof_attrib(prof, ptg, ptype,
+						     attr, attr_cnt);
+			if (status == ICE_ERR_MAX_LIMIT)
 				break;
+			if (status) {
+				/* This is simple a ptype/PTG with no
+				 * attribute
+				 */
+				prof->ptg[prof->ptg_cnt] = ptg;
+				prof->attr[prof->ptg_cnt].flags = 0;
+				prof->attr[prof->ptg_cnt].mask = 0;
+
+				if (++prof->ptg_cnt >=
+				    ICE_MAX_PTG_PER_PROFILE)
+					break;
+			}
 
 			/* nothing left in byte, then exit */
 			m = ~(u8)((1 << (bit + 1)) - 1);
@@ -4779,7 +4852,12 @@ ice_prof_tcam_ena_dis(struct ice_hw *hw, enum ice_block blk, bool enable,
 	}
 
 	/* for re-enabling, reallocate a TCAM */
-	status = ice_alloc_tcam_ent(hw, blk, &tcam->tcam_idx);
+	/* for entries with empty attribute masks, allocate entry from
+	 * the bottom of the TCAM table; otherwise, allocate from the
+	 * top of the table in order to give it higher priority
+	 */
+	status = ice_alloc_tcam_ent(hw, blk, tcam->attr.mask == 0,
+				    &tcam->tcam_idx);
 	if (status)
 		return status;
 
@@ -4789,8 +4867,8 @@ ice_prof_tcam_ena_dis(struct ice_hw *hw, enum ice_block blk, bool enable,
 		return ICE_ERR_NO_MEMORY;
 
 	status = ice_tcam_write_entry(hw, blk, tcam->tcam_idx, tcam->prof_id,
-				      tcam->ptg, vsig, 0, 0, vl_msk, dc_msk,
-				      nm_msk);
+				      tcam->ptg, vsig, 0, tcam->attr.flags,
+				      vl_msk, dc_msk, nm_msk);
 	if (status)
 		goto err_ice_prof_tcam_ena_dis;
 
@@ -4933,7 +5011,12 @@ ice_add_prof_id_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsig, u64 hdl,
 			goto err_ice_add_prof_id_vsig;
 
 		/* allocate the TCAM entry index */
-		status = ice_alloc_tcam_ent(hw, blk, &tcam_idx);
+		/* for entries with empty attribute masks, allocate entry from
+		 * the bottom of the TCAM table; otherwise, allocate from the
+		 * top of the table in order to give it higher priority
+		 */
+		status = ice_alloc_tcam_ent(hw, blk, map->attr[i].mask == 0,
+					    &tcam_idx);
 		if (status) {
 			devm_kfree(ice_hw_to_dev(hw), p);
 			goto err_ice_add_prof_id_vsig;
@@ -4942,6 +5025,7 @@ ice_add_prof_id_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsig, u64 hdl,
 		t->tcam[i].ptg = map->ptg[i];
 		t->tcam[i].prof_id = map->prof_id;
 		t->tcam[i].tcam_idx = tcam_idx;
+		t->tcam[i].attr = map->attr[i];
 		t->tcam[i].in_use = true;
 
 		p->type = ICE_TCAM_ADD;
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
index ea3f3ef5994a..7c88af314949 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
@@ -28,6 +28,7 @@ bool ice_tunnel_port_in_use(struct ice_hw *hw, u16 port, u16 *index);
 
 enum ice_status
 ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
+	     const struct ice_ptype_attributes *attr, u16 attr_cnt,
 	     struct ice_fv_word *es, u16 *masks);
 enum ice_status
 ice_add_prof_id_flow(struct ice_hw *hw, enum ice_block blk, u16 vsi, u64 hdl);
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_type.h b/drivers/net/ethernet/intel/ice/ice_flex_type.h
index 0cfeedc0805f..c7913d4a211d 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_type.h
@@ -190,6 +190,64 @@ enum ice_sect {
 	ICE_SECT_COUNT
 };
 
+#define ICE_MAC_IPV4_GTPU_IPV4_FRAG	331
+#define ICE_MAC_IPV4_GTPU_IPV4_PAY	332
+#define ICE_MAC_IPV4_GTPU_IPV4_UDP_PAY	333
+#define ICE_MAC_IPV4_GTPU_IPV4_TCP	334
+#define ICE_MAC_IPV4_GTPU_IPV4_ICMP	335
+#define ICE_MAC_IPV6_GTPU_IPV4_FRAG	336
+#define ICE_MAC_IPV6_GTPU_IPV4_PAY	337
+#define ICE_MAC_IPV6_GTPU_IPV4_UDP_PAY	338
+#define ICE_MAC_IPV6_GTPU_IPV4_TCP	339
+#define ICE_MAC_IPV6_GTPU_IPV4_ICMP	340
+#define ICE_MAC_IPV4_GTPU_IPV6_FRAG	341
+#define ICE_MAC_IPV4_GTPU_IPV6_PAY	342
+#define ICE_MAC_IPV4_GTPU_IPV6_UDP_PAY	343
+#define ICE_MAC_IPV4_GTPU_IPV6_TCP	344
+#define ICE_MAC_IPV4_GTPU_IPV6_ICMPV6	345
+#define ICE_MAC_IPV6_GTPU_IPV6_FRAG	346
+#define ICE_MAC_IPV6_GTPU_IPV6_PAY	347
+#define ICE_MAC_IPV6_GTPU_IPV6_UDP_PAY	348
+#define ICE_MAC_IPV6_GTPU_IPV6_TCP	349
+#define ICE_MAC_IPV6_GTPU_IPV6_ICMPV6	350
+
+/* Attributes that can modify PTYPE definitions.
+ *
+ * These values will represent special attributes for PTYPES, which will
+ * resolve into metadata packet flags definitions that can be used in the TCAM
+ * for identifying a PTYPE with specific characteristics.
+ */
+enum ice_ptype_attrib_type {
+	/* GTP PTYPES */
+	ICE_PTYPE_ATTR_GTP_PDU_EH,
+	ICE_PTYPE_ATTR_GTP_SESSION,
+	ICE_PTYPE_ATTR_GTP_DOWNLINK,
+	ICE_PTYPE_ATTR_GTP_UPLINK,
+};
+
+struct ice_ptype_attrib_info {
+	u16 flags;
+	u16 mask;
+};
+
+/* TCAM flag definitions */
+#define ICE_GTP_PDU			BIT(14)
+#define ICE_GTP_PDU_LINK		BIT(13)
+
+/* GTP attributes */
+#define ICE_GTP_PDU_FLAG_MASK		(ICE_GTP_PDU)
+#define ICE_GTP_PDU_EH			ICE_GTP_PDU
+
+#define ICE_GTP_FLAGS_MASK		(ICE_GTP_PDU | ICE_GTP_PDU_LINK)
+#define ICE_GTP_SESSION			0
+#define ICE_GTP_DOWNLINK		ICE_GTP_PDU
+#define ICE_GTP_UPLINK			(ICE_GTP_PDU | ICE_GTP_PDU_LINK)
+
+struct ice_ptype_attributes {
+	u16 ptype;
+	enum ice_ptype_attrib_type attrib;
+};
+
 /* package labels */
 struct ice_label {
 	__le16 value;
@@ -374,12 +432,14 @@ struct ice_prof_map {
 	u8 prof_id;
 	u8 ptg_cnt;
 	u8 ptg[ICE_MAX_PTG_PER_PROFILE];
+	struct ice_ptype_attrib_info attr[ICE_MAX_PTG_PER_PROFILE];
 };
 
 #define ICE_INVALID_TCAM	0xFFFF
 
 struct ice_tcam_inf {
 	u16 tcam_idx;
+	struct ice_ptype_attrib_info attr;
 	u8 ptg;
 	u8 prof_id;
 	u8 in_use;
@@ -531,6 +591,7 @@ struct ice_chs_chg {
 	u16 vsig;
 	u16 orig_vsig;
 	u16 tcam_idx;
+	struct ice_ptype_attrib_info attr;
 };
 
 #define ICE_FLOW_PTYPE_MAX		ICE_XLT1_CNT
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index ee1d0761a22d..c7c1d4aec99e 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -330,6 +330,76 @@ static const u32 ice_ptypes_gtpc_tid[] = {
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 };
 
+/* Packet types for GTPU */
+static const struct ice_ptype_attributes ice_attr_gtpu_eh[] = {
+	{ ICE_MAC_IPV4_GTPU_IPV4_FRAG,	  ICE_PTYPE_ATTR_GTP_PDU_EH },
+	{ ICE_MAC_IPV4_GTPU_IPV4_PAY,	  ICE_PTYPE_ATTR_GTP_PDU_EH },
+	{ ICE_MAC_IPV4_GTPU_IPV4_UDP_PAY, ICE_PTYPE_ATTR_GTP_PDU_EH },
+	{ ICE_MAC_IPV4_GTPU_IPV4_TCP,	  ICE_PTYPE_ATTR_GTP_PDU_EH },
+	{ ICE_MAC_IPV4_GTPU_IPV4_ICMP,	  ICE_PTYPE_ATTR_GTP_PDU_EH },
+	{ ICE_MAC_IPV6_GTPU_IPV4_FRAG,	  ICE_PTYPE_ATTR_GTP_PDU_EH },
+	{ ICE_MAC_IPV6_GTPU_IPV4_PAY,	  ICE_PTYPE_ATTR_GTP_PDU_EH },
+	{ ICE_MAC_IPV6_GTPU_IPV4_UDP_PAY, ICE_PTYPE_ATTR_GTP_PDU_EH },
+	{ ICE_MAC_IPV6_GTPU_IPV4_TCP,	  ICE_PTYPE_ATTR_GTP_PDU_EH },
+	{ ICE_MAC_IPV6_GTPU_IPV4_ICMP,	  ICE_PTYPE_ATTR_GTP_PDU_EH },
+	{ ICE_MAC_IPV4_GTPU_IPV6_FRAG,	  ICE_PTYPE_ATTR_GTP_PDU_EH },
+	{ ICE_MAC_IPV4_GTPU_IPV6_PAY,	  ICE_PTYPE_ATTR_GTP_PDU_EH },
+	{ ICE_MAC_IPV4_GTPU_IPV6_UDP_PAY, ICE_PTYPE_ATTR_GTP_PDU_EH },
+	{ ICE_MAC_IPV4_GTPU_IPV6_TCP,	  ICE_PTYPE_ATTR_GTP_PDU_EH },
+	{ ICE_MAC_IPV4_GTPU_IPV6_ICMPV6,  ICE_PTYPE_ATTR_GTP_PDU_EH },
+	{ ICE_MAC_IPV6_GTPU_IPV6_FRAG,	  ICE_PTYPE_ATTR_GTP_PDU_EH },
+	{ ICE_MAC_IPV6_GTPU_IPV6_PAY,	  ICE_PTYPE_ATTR_GTP_PDU_EH },
+	{ ICE_MAC_IPV6_GTPU_IPV6_UDP_PAY, ICE_PTYPE_ATTR_GTP_PDU_EH },
+	{ ICE_MAC_IPV6_GTPU_IPV6_TCP,	  ICE_PTYPE_ATTR_GTP_PDU_EH },
+	{ ICE_MAC_IPV6_GTPU_IPV6_ICMPV6,  ICE_PTYPE_ATTR_GTP_PDU_EH },
+};
+
+static const struct ice_ptype_attributes ice_attr_gtpu_down[] = {
+	{ ICE_MAC_IPV4_GTPU_IPV4_FRAG,	  ICE_PTYPE_ATTR_GTP_DOWNLINK },
+	{ ICE_MAC_IPV4_GTPU_IPV4_PAY,	  ICE_PTYPE_ATTR_GTP_DOWNLINK },
+	{ ICE_MAC_IPV4_GTPU_IPV4_UDP_PAY, ICE_PTYPE_ATTR_GTP_DOWNLINK },
+	{ ICE_MAC_IPV4_GTPU_IPV4_TCP,	  ICE_PTYPE_ATTR_GTP_DOWNLINK },
+	{ ICE_MAC_IPV4_GTPU_IPV4_ICMP,	  ICE_PTYPE_ATTR_GTP_DOWNLINK },
+	{ ICE_MAC_IPV6_GTPU_IPV4_FRAG,	  ICE_PTYPE_ATTR_GTP_DOWNLINK },
+	{ ICE_MAC_IPV6_GTPU_IPV4_PAY,	  ICE_PTYPE_ATTR_GTP_DOWNLINK },
+	{ ICE_MAC_IPV6_GTPU_IPV4_UDP_PAY, ICE_PTYPE_ATTR_GTP_DOWNLINK },
+	{ ICE_MAC_IPV6_GTPU_IPV4_TCP,	  ICE_PTYPE_ATTR_GTP_DOWNLINK },
+	{ ICE_MAC_IPV6_GTPU_IPV4_ICMP,	  ICE_PTYPE_ATTR_GTP_DOWNLINK },
+	{ ICE_MAC_IPV4_GTPU_IPV6_FRAG,	  ICE_PTYPE_ATTR_GTP_DOWNLINK },
+	{ ICE_MAC_IPV4_GTPU_IPV6_PAY,	  ICE_PTYPE_ATTR_GTP_DOWNLINK },
+	{ ICE_MAC_IPV4_GTPU_IPV6_UDP_PAY, ICE_PTYPE_ATTR_GTP_DOWNLINK },
+	{ ICE_MAC_IPV4_GTPU_IPV6_TCP,	  ICE_PTYPE_ATTR_GTP_DOWNLINK },
+	{ ICE_MAC_IPV4_GTPU_IPV6_ICMPV6,  ICE_PTYPE_ATTR_GTP_DOWNLINK },
+	{ ICE_MAC_IPV6_GTPU_IPV6_FRAG,	  ICE_PTYPE_ATTR_GTP_DOWNLINK },
+	{ ICE_MAC_IPV6_GTPU_IPV6_PAY,	  ICE_PTYPE_ATTR_GTP_DOWNLINK },
+	{ ICE_MAC_IPV6_GTPU_IPV6_UDP_PAY, ICE_PTYPE_ATTR_GTP_DOWNLINK },
+	{ ICE_MAC_IPV6_GTPU_IPV6_TCP,	  ICE_PTYPE_ATTR_GTP_DOWNLINK },
+	{ ICE_MAC_IPV6_GTPU_IPV6_ICMPV6,  ICE_PTYPE_ATTR_GTP_DOWNLINK },
+};
+
+static const struct ice_ptype_attributes ice_attr_gtpu_up[] = {
+	{ ICE_MAC_IPV4_GTPU_IPV4_FRAG,	  ICE_PTYPE_ATTR_GTP_UPLINK },
+	{ ICE_MAC_IPV4_GTPU_IPV4_PAY,	  ICE_PTYPE_ATTR_GTP_UPLINK },
+	{ ICE_MAC_IPV4_GTPU_IPV4_UDP_PAY, ICE_PTYPE_ATTR_GTP_UPLINK },
+	{ ICE_MAC_IPV4_GTPU_IPV4_TCP,	  ICE_PTYPE_ATTR_GTP_UPLINK },
+	{ ICE_MAC_IPV4_GTPU_IPV4_ICMP,	  ICE_PTYPE_ATTR_GTP_UPLINK },
+	{ ICE_MAC_IPV6_GTPU_IPV4_FRAG,	  ICE_PTYPE_ATTR_GTP_UPLINK },
+	{ ICE_MAC_IPV6_GTPU_IPV4_PAY,	  ICE_PTYPE_ATTR_GTP_UPLINK },
+	{ ICE_MAC_IPV6_GTPU_IPV4_UDP_PAY, ICE_PTYPE_ATTR_GTP_UPLINK },
+	{ ICE_MAC_IPV6_GTPU_IPV4_TCP,	  ICE_PTYPE_ATTR_GTP_UPLINK },
+	{ ICE_MAC_IPV6_GTPU_IPV4_ICMP,	  ICE_PTYPE_ATTR_GTP_UPLINK },
+	{ ICE_MAC_IPV4_GTPU_IPV6_FRAG,	  ICE_PTYPE_ATTR_GTP_UPLINK },
+	{ ICE_MAC_IPV4_GTPU_IPV6_PAY,	  ICE_PTYPE_ATTR_GTP_UPLINK },
+	{ ICE_MAC_IPV4_GTPU_IPV6_UDP_PAY, ICE_PTYPE_ATTR_GTP_UPLINK },
+	{ ICE_MAC_IPV4_GTPU_IPV6_TCP,	  ICE_PTYPE_ATTR_GTP_UPLINK },
+	{ ICE_MAC_IPV4_GTPU_IPV6_ICMPV6,  ICE_PTYPE_ATTR_GTP_UPLINK },
+	{ ICE_MAC_IPV6_GTPU_IPV6_FRAG,	  ICE_PTYPE_ATTR_GTP_UPLINK },
+	{ ICE_MAC_IPV6_GTPU_IPV6_PAY,	  ICE_PTYPE_ATTR_GTP_UPLINK },
+	{ ICE_MAC_IPV6_GTPU_IPV6_UDP_PAY, ICE_PTYPE_ATTR_GTP_UPLINK },
+	{ ICE_MAC_IPV6_GTPU_IPV6_TCP,	  ICE_PTYPE_ATTR_GTP_UPLINK },
+	{ ICE_MAC_IPV6_GTPU_IPV6_ICMPV6,  ICE_PTYPE_ATTR_GTP_UPLINK },
+};
+
 static const u32 ice_ptypes_gtpu[] = {
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
@@ -436,6 +506,9 @@ struct ice_flow_prof_params {
 	 * This will give us the direction flags.
 	 */
 	struct ice_fv_word es[ICE_MAX_FV_WORDS];
+	/* attributes can be used to add attributes to a particular PTYPE */
+	const struct ice_ptype_attributes *attr;
+	u16 attr_cnt;
 
 	u16 mask[ICE_MAX_FV_WORDS];
 	DECLARE_BITMAP(ptypes, ICE_FLOW_PTYPE_MAX);
@@ -631,14 +704,26 @@ ice_flow_proc_seg_hdrs(struct ice_flow_prof_params *params)
 			src = (const unsigned long *)ice_ptypes_gtpu;
 			bitmap_and(params->ptypes, params->ptypes, src,
 				   ICE_FLOW_PTYPE_MAX);
+
+			/* Attributes for GTP packet with downlink */
+			params->attr = ice_attr_gtpu_down;
+			params->attr_cnt = ARRAY_SIZE(ice_attr_gtpu_down);
 		} else if (hdrs & ICE_FLOW_SEG_HDR_GTPU_UP) {
 			src = (const unsigned long *)ice_ptypes_gtpu;
 			bitmap_and(params->ptypes, params->ptypes, src,
 				   ICE_FLOW_PTYPE_MAX);
+
+			/* Attributes for GTP packet with uplink */
+			params->attr = ice_attr_gtpu_up;
+			params->attr_cnt = ARRAY_SIZE(ice_attr_gtpu_up);
 		} else if (hdrs & ICE_FLOW_SEG_HDR_GTPU_EH) {
 			src = (const unsigned long *)ice_ptypes_gtpu;
 			bitmap_and(params->ptypes, params->ptypes, src,
 				   ICE_FLOW_PTYPE_MAX);
+
+			/* Attributes for GTP packet with Extension Header */
+			params->attr = ice_attr_gtpu_eh;
+			params->attr_cnt = ARRAY_SIZE(ice_attr_gtpu_eh);
 		} else if (hdrs & ICE_FLOW_SEG_HDR_GTPU_IP) {
 			src = (const unsigned long *)ice_ptypes_gtpu;
 			bitmap_and(params->ptypes, params->ptypes, src,
@@ -1198,7 +1283,8 @@ ice_flow_add_prof_sync(struct ice_hw *hw, enum ice_block blk,
 
 	/* Add a HW profile for this flow profile */
 	status = ice_add_prof(hw, blk, prof_id, (u8 *)params.ptypes,
-			      params.es, params.mask);
+			      params.attr, params.attr_cnt, params.es,
+			      params.mask);
 	if (status) {
 		ice_debug(hw, ICE_DBG_FLOW, "Error adding a HW flow profile\n");
 		goto out;
-- 
2.13.6

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
