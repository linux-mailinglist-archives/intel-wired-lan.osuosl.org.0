Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E656A3CBF44
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Jul 2021 00:29:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9985F402B7;
	Fri, 16 Jul 2021 22:29:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ah2R4Hv2gQkj; Fri, 16 Jul 2021 22:29:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9CE0A40156;
	Fri, 16 Jul 2021 22:29:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 87D171BF39D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jul 2021 22:29:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7916342243
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jul 2021 22:29:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WzR08cWHu8h8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jul 2021 22:29:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8149342211
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jul 2021 22:29:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10047"; a="208981786"
X-IronPort-AV: E=Sophos;i="5.84,246,1620716400"; d="scan'208";a="208981786"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 15:29:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,246,1620716400"; d="scan'208";a="497176524"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Jul 2021 15:29:13 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Jul 2021 15:16:42 -0700
Message-Id: <20210716221644.45946-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210716221644.45946-1-anthony.l.nguyen@intel.com>
References: <20210716221644.45946-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 5/7] ice: Add package PTYPE
 enable information
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

From: Haiyue Wang <haiyue.wang@intel.com>

Scan the 'Marker Ptype TCAM' section to retrieve the Rx parser PTYPE
enable information from the current package.

Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
---
 .../net/ethernet/intel/ice/ice_flex_pipe.c    | 76 +++++++++++++++++++
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |  4 +
 .../net/ethernet/intel/ice/ice_flex_type.h    | 20 +++++
 drivers/net/ethernet/intel/ice/ice_type.h     |  1 +
 4 files changed, 101 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index 06ac9badee77..915a00f73d34 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -313,6 +313,81 @@ ice_pkg_enum_entry(struct ice_seg *ice_seg, struct ice_pkg_enum *state,
 	return entry;
 }
 
+/**
+ * ice_hw_ptype_ena - check if the PTYPE is enabled or not
+ * @hw: pointer to the HW structure
+ * @ptype: the hardware PTYPE
+ */
+bool ice_hw_ptype_ena(struct ice_hw *hw, u16 ptype)
+{
+	return ptype < ICE_FLOW_PTYPE_MAX &&
+	       test_bit(ptype, hw->hw_ptype);
+}
+
+/**
+ * ice_marker_ptype_tcam_handler
+ * @sect_type: section type
+ * @section: pointer to section
+ * @index: index of the Marker PType TCAM entry to be returned
+ * @offset: pointer to receive absolute offset, always 0 for ptype TCAM sections
+ *
+ * This is a callback function that can be passed to ice_pkg_enum_entry.
+ * Handles enumeration of individual Marker PType TCAM entries.
+ */
+static void *
+ice_marker_ptype_tcam_handler(u32 sect_type, void *section, u32 index,
+			      u32 *offset)
+{
+	struct ice_marker_ptype_tcam_section *marker_ptype;
+
+	if (!section)
+		return NULL;
+
+	if (sect_type != ICE_SID_RXPARSER_MARKER_PTYPE)
+		return NULL;
+
+	if (index > ICE_MAX_MARKER_PTYPE_TCAMS_IN_BUF)
+		return NULL;
+
+	if (offset)
+		*offset = 0;
+
+	marker_ptype = section;
+	if (index >= le16_to_cpu(marker_ptype->count))
+		return NULL;
+
+	return marker_ptype->tcam + index;
+}
+
+/**
+ * ice_fill_hw_ptype - fill the enabled PTYPE bit information
+ * @hw: pointer to the HW structure
+ */
+static void ice_fill_hw_ptype(struct ice_hw *hw)
+{
+	struct ice_marker_ptype_tcam_entry *tcam;
+	struct ice_seg *seg = hw->seg;
+	struct ice_pkg_enum state;
+
+	bitmap_zero(hw->hw_ptype, ICE_FLOW_PTYPE_MAX);
+	if (!seg)
+		return;
+
+	memset(&state, 0, sizeof(state));
+
+	do {
+		tcam = ice_pkg_enum_entry(seg, &state,
+					  ICE_SID_RXPARSER_MARKER_PTYPE, NULL,
+					  ice_marker_ptype_tcam_handler);
+		if (tcam &&
+		    le16_to_cpu(tcam->addr) < ICE_MARKER_PTYPE_TCAM_ADDR_MAX &&
+		    le16_to_cpu(tcam->ptype) < ICE_FLOW_PTYPE_MAX)
+			set_bit(le16_to_cpu(tcam->ptype), hw->hw_ptype);
+
+		seg = NULL;
+	} while (tcam);
+}
+
 /**
  * ice_boost_tcam_handler
  * @sect_type: section type
@@ -1408,6 +1483,7 @@ enum ice_status ice_init_pkg(struct ice_hw *hw, u8 *buf, u32 len)
 		 */
 		ice_init_pkg_regs(hw);
 		ice_fill_blk_tbls(hw);
+		ice_fill_hw_ptype(hw);
 	} else {
 		ice_debug(hw, ICE_DBG_INIT, "package load failed, %d\n",
 			  status);
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
index 8a58e79729b9..995b33d37b67 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
@@ -25,6 +25,10 @@ int ice_udp_tunnel_set_port(struct net_device *netdev, unsigned int table,
 int ice_udp_tunnel_unset_port(struct net_device *netdev, unsigned int table,
 			      unsigned int idx, struct udp_tunnel_info *ti);
 
+/* Rx parser PTYPE functions */
+bool ice_hw_ptype_ena(struct ice_hw *hw, u16 ptype);
+
+/* XLT2/VSI group functions */
 enum ice_status
 ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 	     const struct ice_ptype_attributes *attr, u16 attr_cnt,
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_type.h b/drivers/net/ethernet/intel/ice/ice_flex_type.h
index 7d8b517a63c9..647304f88b78 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_type.h
@@ -158,6 +158,7 @@ struct ice_meta_sect {
 #define ICE_SID_CDID_KEY_BUILDER_RSS	47
 #define ICE_SID_CDID_REDIR_RSS		48
 
+#define ICE_SID_RXPARSER_MARKER_PTYPE	55
 #define ICE_SID_RXPARSER_BOOST_TCAM	56
 #define ICE_SID_TXPARSER_BOOST_TCAM	66
 
@@ -321,6 +322,25 @@ struct ice_boost_tcam_section {
 	sizeof(struct ice_boost_tcam_entry), \
 	sizeof(struct ice_boost_tcam_entry))
 
+/* package Marker Ptype TCAM entry */
+struct ice_marker_ptype_tcam_entry {
+#define ICE_MARKER_PTYPE_TCAM_ADDR_MAX	1024
+	__le16 addr;
+	__le16 ptype;
+	u8 keys[20];
+};
+
+struct ice_marker_ptype_tcam_section {
+	__le16 count;
+	__le16 reserved;
+	struct ice_marker_ptype_tcam_entry tcam[];
+};
+
+#define ICE_MAX_MARKER_PTYPE_TCAMS_IN_BUF	\
+	ICE_MAX_ENTRIES_IN_BUF(struct_size((struct ice_marker_ptype_tcam_section *)0, tcam, 1) - \
+	sizeof(struct ice_marker_ptype_tcam_entry), \
+	sizeof(struct ice_marker_ptype_tcam_entry))
+
 struct ice_xlt1_section {
 	__le16 count;
 	__le16 offset;
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 95bf4fd6f6b8..dcaa6bfab484 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -933,6 +933,7 @@ struct ice_hw {
 	struct mutex rss_locks;	/* protect RSS configuration */
 	struct list_head rss_list_head;
 	struct ice_mbx_snapshot mbx_snapshot;
+	DECLARE_BITMAP(hw_ptype, ICE_FLOW_PTYPE_MAX);
 };
 
 /* Statistics collected by each port, VSI, VEB, and S-channel */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
