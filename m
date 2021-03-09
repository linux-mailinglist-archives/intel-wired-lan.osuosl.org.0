Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 69666331D7B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Mar 2021 04:26:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 72B6E83A76;
	Tue,  9 Mar 2021 03:26:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4pHBTzNsUUsV; Tue,  9 Mar 2021 03:26:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C4A12835E0;
	Tue,  9 Mar 2021 03:26:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6087A1BF3CA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 03:26:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 47EF383595
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 03:26:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8KRq3HJQe_2I for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Mar 2021 03:26:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0AA3583542
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 03:26:03 +0000 (UTC)
IronPort-SDR: 248uBRuPq5gqrYgj8cOWMFnu0to9vyZmrgoLKirk/R7OvNle7cIxGOjxJ8nTTxn5bcq1Iueu4y
 wyV/Q2lItwZA==
X-IronPort-AV: E=McAfee;i="6000,8403,9917"; a="187512304"
X-IronPort-AV: E=Sophos;i="5.81,234,1610438400"; d="scan'208";a="187512304"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 19:26:02 -0800
IronPort-SDR: rOnZgHgKh+mXnJIcya4Y7UEgtcXkk/qGLKfi8Lsnrp6mT14IIzAAARSbadkQTDpIOOm+XUdI1Y
 CWEdi6tKJduw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,234,1610438400"; d="scan'208";a="602436829"
Received: from npg-dpdk-haiyue-1.sh.intel.com ([10.67.118.220])
 by fmsmga005.fm.intel.com with ESMTP; 08 Mar 2021 19:26:01 -0800
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  9 Mar 2021 11:08:01 +0800
Message-Id: <20210309030815.5299-5-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210309030815.5299-1-haiyue.wang@intel.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [Patch v5 04/18] ice: Support to separate GTP-U
 uplink and downlink
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
 qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Qi Zhang <qi.z.zhang@intel.com>

To apply different input set for GTP-U packet with or without extend
header as well as GTP-U uplink and downlink, we need to add TCAM mask
matching capability. This allows comprehending different PTYPE
attributes by examining flags from the parser. Using this method,
different profiles can be used by examining flag values from the parser.

Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
---
 .../net/ethernet/intel/ice/ice_flex_pipe.c    | 106 +++++++++++++++---
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |   1 +
 .../net/ethernet/intel/ice/ice_flex_type.h    |  61 ++++++++++
 drivers/net/ethernet/intel/ice/ice_flow.c     |  88 ++++++++++++++-
 4 files changed, 241 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index 0511772f4710..88a0c2daf29f 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -2506,20 +2506,22 @@ static bool ice_tcam_ent_rsrc_type(enum ice_block blk, u16 *rsrc_type)
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
@@ -4113,12 +4115,67 @@ ice_update_fd_swap(struct ice_hw *hw, u16 prof_id, struct ice_fv_word *es)
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
@@ -4129,6 +4186,7 @@ ice_update_fd_swap(struct ice_hw *hw, u16 prof_id, struct ice_fv_word *es)
  */
 enum ice_status
 ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
+	     const struct ice_ptype_attributes *attr, u16 attr_cnt,
 	     struct ice_fv_word *es, u16 *masks)
 {
 	u32 bytes = DIV_ROUND_UP(ICE_FLOW_PTYPE_MAX, BITS_PER_BYTE);
@@ -4198,7 +4256,6 @@ ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 				 BITS_PER_BYTE) {
 			u16 ptype;
 			u8 ptg;
-			u8 m;
 
 			ptype = byte * BITS_PER_BYTE + bit;
 
@@ -4213,15 +4270,25 @@ ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
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
 
-			/* nothing left in byte, then exit */
-			m = ~(u8)((1 << (bit + 1)) - 1);
-			if (!(ptypes[byte] & m))
-				break;
+				if (++prof->ptg_cnt >=
+				    ICE_MAX_PTG_PER_PROFILE)
+					break;
+			}
 		}
 
 		bytes--;
@@ -4732,7 +4799,12 @@ ice_prof_tcam_ena_dis(struct ice_hw *hw, enum ice_block blk, bool enable,
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
 
@@ -4742,8 +4814,8 @@ ice_prof_tcam_ena_dis(struct ice_hw *hw, enum ice_block blk, bool enable,
 		return ICE_ERR_NO_MEMORY;
 
 	status = ice_tcam_write_entry(hw, blk, tcam->tcam_idx, tcam->prof_id,
-				      tcam->ptg, vsig, 0, 0, vl_msk, dc_msk,
-				      nm_msk);
+				      tcam->ptg, vsig, 0, tcam->attr.flags,
+				      vl_msk, dc_msk, nm_msk);
 	if (status)
 		goto err_ice_prof_tcam_ena_dis;
 
@@ -4891,7 +4963,12 @@ ice_add_prof_id_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsig, u64 hdl,
 		}
 
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
@@ -4900,6 +4977,7 @@ ice_add_prof_id_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsig, u64 hdl,
 		t->tcam[i].ptg = map->ptg[i];
 		t->tcam[i].prof_id = map->prof_id;
 		t->tcam[i].tcam_idx = tcam_idx;
+		t->tcam[i].attr = map->attr[i];
 		t->tcam[i].in_use = true;
 
 		p->type = ICE_TCAM_ADD;
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
index 08c5b4386536..8a58e79729b9 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
@@ -27,6 +27,7 @@ int ice_udp_tunnel_unset_port(struct net_device *netdev, unsigned int table,
 
 enum ice_status
 ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
+	     const struct ice_ptype_attributes *attr, u16 attr_cnt,
 	     struct ice_fv_word *es, u16 *masks);
 enum ice_status
 ice_add_prof_id_flow(struct ice_hw *hw, enum ice_block blk, u16 vsi, u64 hdl);
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_type.h b/drivers/net/ethernet/intel/ice/ice_flex_type.h
index 48e24c8bd219..2221ae3b22f6 100644
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
@@ -373,12 +431,14 @@ struct ice_prof_map {
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
@@ -530,6 +590,7 @@ struct ice_chs_chg {
 	u16 vsig;
 	u16 orig_vsig;
 	u16 tcam_idx;
+	struct ice_ptype_attrib_info attr;
 };
 
 #define ICE_FLOW_PTYPE_MAX		ICE_XLT1_CNT
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index 6b6e8ed798aa..750f44572475 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -378,6 +378,76 @@ static const u32 ice_ptypes_gtpc_tid[] = {
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
@@ -484,6 +554,9 @@ struct ice_flow_prof_params {
 	 * This will give us the direction flags.
 	 */
 	struct ice_fv_word es[ICE_MAX_FV_WORDS];
+	/* attributes can be used to add attributes to a particular PTYPE */
+	const struct ice_ptype_attributes *attr;
+	u16 attr_cnt;
 
 	u16 mask[ICE_MAX_FV_WORDS];
 	DECLARE_BITMAP(ptypes, ICE_FLOW_PTYPE_MAX);
@@ -690,14 +763,26 @@ ice_flow_proc_seg_hdrs(struct ice_flow_prof_params *params)
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
@@ -1260,7 +1345,8 @@ ice_flow_add_prof_sync(struct ice_hw *hw, enum ice_block blk,
 
 	/* Add a HW profile for this flow profile */
 	status = ice_add_prof(hw, blk, prof_id, (u8 *)params->ptypes,
-			      params->es, params->mask);
+			      params->attr, params->attr_cnt, params->es,
+			      params->mask);
 	if (status) {
 		ice_debug(hw, ICE_DBG_FLOW, "Error adding a HW flow profile\n");
 		goto out;
-- 
2.30.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
