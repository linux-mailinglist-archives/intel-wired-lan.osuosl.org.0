Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C987724092
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jun 2023 13:12:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A2D646114B;
	Tue,  6 Jun 2023 11:12:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A2D646114B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686049949;
	bh=Qa6I6JdNxEQiAV6mCG7w0qNJe8CqsjA5NGxwOlfRNNE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=QQwiHVcARTJHhOETL+MqkhCtwF969rkblzQ/so5xZKApgHEgHMuTzef3hV8XyxnuD
	 cn52naYTYpR2Judan6m0p189bDWvOKT8+A0Txg+dNxLQZ/gqgi27TqKxllJDYLnuRo
	 q+ZUoMG1bKBnoBaeHlrOYs9y0RWU3GiLVWfHgpmcK/C9yk+qzfnw5uXaCWZNdKLpM/
	 1w2QPuM9XFPOHtdvTk46NvFvLelQVY7gBALV5/uTZnhnvOAsCGdpxG3YodHbH3oDaX
	 3Qyvhpumq9fRt4q5aqcCR9SGkACHywPJAgKIjKeMqQ51lSqWaJ4yYfmtvJDDWdgOpW
	 NuWWKaciCNeiA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yqp1LkXX2uUF; Tue,  6 Jun 2023 11:12:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A2CE6610F8;
	Tue,  6 Jun 2023 11:12:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A2CE6610F8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B3E231BF40F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 11:12:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 987C781E88
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 11:12:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 987C781E88
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L2WSY9OFivC9 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jun 2023 11:12:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E05081E30
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6E05081E30
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 11:12:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="354133110"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="354133110"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 04:12:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="1039138348"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="1039138348"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga005.fm.intel.com with ESMTP; 06 Jun 2023 04:12:09 -0700
Received: from pkitszel-desk.intel.com (unknown [10.254.152.99])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id D0B6833BC1;
 Tue,  6 Jun 2023 12:12:06 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  6 Jun 2023 13:11:49 +0200
Message-Id: <20230606111149.33890-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686049941; x=1717585941;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vYeFfMnYCJU2vHaXLJV0oJ0LE5l50vZdu1tloGT2M50=;
 b=GDwBqDw0WqMdUjcBDo0vIRIoBPIlpUBPGtyhNpfhhRm3cj+Sv5tD52gY
 VCSZjwrzCgWt8IDthoJu5QL7/nslSx4z5MUHP7Vp8wnhL7oZW7iT8c8Td
 U7kLdmNA0Ow7eqD+jM5wPVn8umdqgSxdkBMGSdzg+RsjUAWCLE2JcGmNo
 7C2WwSLbSN8Ikm/r0lie5BZ5/Id3+uxoBntmwXXpddALT4ohEjzkpb8bp
 sl9Zg/JbH+TF0fKS+ikPjFm34SRcJqb+MDGe+FnZuMurK54fRZiLUmVIj
 W9AMOLCTzKwz6EnPoZx7nouUHKNI70mJIoylILuzpjCy7hKOKK04+Sp45
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GDwBqDw0
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: clean up
 __ice_aq_get_set_rss_lut()
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Refactor __ice_aq_get_set_rss_lut() to improve reader experience and limit
misuse scenarios (undesired LUT size for given LUT type).

Allow only 3 RSS LUT type+size variants:
PF LUT sized 2048, GLOBAL LUT sized 512, and VSI LUT sized 64, which were
used on default flows prior to this commit.

Prior to the change, code was mixing the meaning of @params->lut_size and
@params->lut_type, flag assigning logic was cryptic, while long defines
made everything harder to follow.

Fix that by extracting some code out to separate helpers.
Drop some of "shift by 0" statements that originated from Intel's
internal HW documentation.

Drop some redundant VSI masks (since ice_is_vsi_valid() gives "valid" for
up to 0x300 VSIs).

After sweeping all the defines out of struct ice_aqc_get_set_rss_lut,
it fits into 7 lines.

Finally apply some cleanup to the callsite
(use of the new enums, tmp var for lengthy bit extraction).

Note that flags for 128 and 64 sized VSI LUT are the same,
and 64 is used everywhere in the code (updated to new enum here), it just
happened that there was 128 in flag name.

__ice_aq_get_set_rss_key() uses the same VSI valid bit, make constant
common for it and __ice_aq_get_set_rss_lut().

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  55 ++++---
 drivers/net/ethernet/intel/ice/ice_common.c   | 139 +++++++-----------
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   1 -
 drivers/net/ethernet/intel/ice/ice_lib.c      |  20 +--
 drivers/net/ethernet/intel/ice/ice_type.h     |   9 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |   6 +-
 6 files changed, 96 insertions(+), 134 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 63d3e1dcbba5..6ea0d4c017f0 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1781,11 +1781,10 @@ struct ice_aqc_lldp_filter_ctrl {
 	u8 reserved2[12];
 };
 
+#define ICE_AQC_RSS_VSI_VALID BIT(15)
+
 /* Get/Set RSS key (indirect 0x0B04/0x0B02) */
 struct ice_aqc_get_set_rss_key {
-#define ICE_AQC_GSET_RSS_KEY_VSI_VALID	BIT(15)
-#define ICE_AQC_GSET_RSS_KEY_VSI_ID_S	0
-#define ICE_AQC_GSET_RSS_KEY_VSI_ID_M	(0x3FF << ICE_AQC_GSET_RSS_KEY_VSI_ID_S)
 	__le16 vsi_id;
 	u8 reserved[6];
 	__le32 addr_high;
@@ -1803,35 +1802,33 @@ struct ice_aqc_get_set_rss_keys {
 	u8 extended_hash_key[ICE_AQC_GET_SET_RSS_KEY_DATA_HASH_KEY_SIZE];
 };
 
+enum ice_lut_type {
+	ICE_LUT_VSI = 0,
+	ICE_LUT_PF = 1,
+	ICE_LUT_GLOBAL = 2,
+};
+
+enum ice_lut_size {
+	ICE_LUT_VSI_SIZE = 64,
+	ICE_LUT_GLOBAL_SIZE = 512,
+	ICE_LUT_PF_SIZE = 2048,
+};
+
+/* enum ice_aqc_lut_flags combines constants used to fill
+ * &ice_aqc_get_set_rss_lut ::flags, which is an amalgamation of global LUT ID,
+ * LUT size and LUT type, last of which does not need neither shift nor mask.
+ */
+enum ice_aqc_lut_flags {
+	ICE_AQC_LUT_SIZE_SMALL = BIT(1), /* size = 64 or 128 */
+	ICE_AQC_LUT_SIZE_512 = BIT(2),
+	ICE_AQC_LUT_SIZE_2K = BIT(3),
+
+	ICE_AQC_LUT_GLOBAL_IDX = GENMASK(7, 4),
+};
+
 /* Get/Set RSS LUT (indirect 0x0B05/0x0B03) */
 struct ice_aqc_get_set_rss_lut {
-#define ICE_AQC_GSET_RSS_LUT_VSI_VALID	BIT(15)
-#define ICE_AQC_GSET_RSS_LUT_VSI_ID_S	0
-#define ICE_AQC_GSET_RSS_LUT_VSI_ID_M	(0x3FF << ICE_AQC_GSET_RSS_LUT_VSI_ID_S)
 	__le16 vsi_id;
-#define ICE_AQC_GSET_RSS_LUT_TABLE_TYPE_S	0
-#define ICE_AQC_GSET_RSS_LUT_TABLE_TYPE_M	\
-				(0x3 << ICE_AQC_GSET_RSS_LUT_TABLE_TYPE_S)
-
-#define ICE_AQC_GSET_RSS_LUT_TABLE_TYPE_VSI	 0
-#define ICE_AQC_GSET_RSS_LUT_TABLE_TYPE_PF	 1
-#define ICE_AQC_GSET_RSS_LUT_TABLE_TYPE_GLOBAL	 2
-
-#define ICE_AQC_GSET_RSS_LUT_TABLE_SIZE_S	 2
-#define ICE_AQC_GSET_RSS_LUT_TABLE_SIZE_M	 \
-				(0x3 << ICE_AQC_GSET_RSS_LUT_TABLE_SIZE_S)
-
-#define ICE_AQC_GSET_RSS_LUT_TABLE_SIZE_128	 128
-#define ICE_AQC_GSET_RSS_LUT_TABLE_SIZE_128_FLAG 0
-#define ICE_AQC_GSET_RSS_LUT_TABLE_SIZE_512	 512
-#define ICE_AQC_GSET_RSS_LUT_TABLE_SIZE_512_FLAG 1
-#define ICE_AQC_GSET_RSS_LUT_TABLE_SIZE_2K	 2048
-#define ICE_AQC_GSET_RSS_LUT_TABLE_SIZE_2K_FLAG	 2
-
-#define ICE_AQC_GSET_RSS_LUT_GLOBAL_IDX_S	 4
-#define ICE_AQC_GSET_RSS_LUT_GLOBAL_IDX_M	 \
-				(0xF << ICE_AQC_GSET_RSS_LUT_GLOBAL_IDX_S)
-
 	__le16 flags;
 	__le32 reserved;
 	__le32 addr_high;
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 6acb40f3c202..af4c8ddcafb0 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -3869,6 +3869,30 @@ ice_aq_sff_eeprom(struct ice_hw *hw, u16 lport, u8 bus_addr,
 	return status;
 }
 
+static enum ice_lut_size ice_lut_type_to_size(enum ice_lut_type type)
+{
+	switch (type) {
+	case ICE_LUT_VSI:
+		return ICE_LUT_VSI_SIZE;
+	case ICE_LUT_GLOBAL:
+		return ICE_LUT_GLOBAL_SIZE;
+	case ICE_LUT_PF:
+		return ICE_LUT_PF_SIZE;
+	}
+}
+
+static enum ice_aqc_lut_flags ice_lut_size_to_flag(enum ice_lut_size size)
+{
+	switch (size) {
+	case ICE_LUT_VSI_SIZE:
+		return ICE_AQC_LUT_SIZE_SMALL;
+	case ICE_LUT_GLOBAL_SIZE:
+		return ICE_AQC_LUT_SIZE_512;
+	case ICE_LUT_PF_SIZE:
+		return ICE_AQC_LUT_SIZE_2K;
+	}
+}
+
 /**
  * __ice_aq_get_set_rss_lut
  * @hw: pointer to the hardware structure
@@ -3878,95 +3902,44 @@ ice_aq_sff_eeprom(struct ice_hw *hw, u16 lport, u8 bus_addr,
  * Internal function to get (0x0B05) or set (0x0B03) RSS look up table
  */
 static int
-__ice_aq_get_set_rss_lut(struct ice_hw *hw, struct ice_aq_get_set_rss_lut_params *params, bool set)
+__ice_aq_get_set_rss_lut(struct ice_hw *hw,
+			 struct ice_aq_get_set_rss_lut_params *params, bool set)
 {
-	u16 flags = 0, vsi_id, lut_type, lut_size, glob_lut_idx, vsi_handle;
-	struct ice_aqc_get_set_rss_lut *cmd_resp;
+	u16 opcode, vsi_id, vsi_handle = params->vsi_handle, glob_lut_idx = 0;
+	enum ice_lut_type lut_type = params->lut_type;
+	struct ice_aqc_get_set_rss_lut *desc_params;
+	enum ice_aqc_lut_flags flags;
+	enum ice_lut_size lut_size;
 	struct ice_aq_desc desc;
-	int status;
-	u8 *lut;
+	u8 *lut = params->lut;
 
-	if (!params)
-		return -EINVAL;
 
-	vsi_handle = params->vsi_handle;
-	lut = params->lut;
+	if (!lut || !ice_is_vsi_valid(hw, vsi_handle))
+		return -EINVAL;
 
-	if (!ice_is_vsi_valid(hw, vsi_handle) || !lut)
+	lut_size = ice_lut_type_to_size(lut_type);
+	if (lut_size > params->lut_size)
 		return -EINVAL;
+	else if (set && lut_size != params->lut_size)
+		return -EINVAL;
+
+	opcode = set ? ice_aqc_opc_set_rss_lut : ice_aqc_opc_get_rss_lut;
+	ice_fill_dflt_direct_cmd_desc(&desc, opcode);
+	if (set)
+		desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
 
-	lut_size = params->lut_size;
-	lut_type = params->lut_type;
-	glob_lut_idx = params->global_lut_id;
+	desc_params = &desc.params.get_set_rss_lut;
 	vsi_id = ice_get_hw_vsi_num(hw, vsi_handle);
+	desc_params->vsi_id = cpu_to_le16(vsi_id | ICE_AQC_RSS_VSI_VALID);
 
-	cmd_resp = &desc.params.get_set_rss_lut;
+	if (lut_type == ICE_LUT_GLOBAL)
+		glob_lut_idx = FIELD_PREP(ICE_AQC_LUT_GLOBAL_IDX,
+					  params->global_lut_id);
 
-	if (set) {
-		ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_rss_lut);
-		desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
-	} else {
-		ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_rss_lut);
-	}
+	flags = lut_type | glob_lut_idx | ice_lut_size_to_flag(lut_size);
+	desc_params->flags = cpu_to_le16(flags);
 
-	cmd_resp->vsi_id = cpu_to_le16(((vsi_id <<
-					 ICE_AQC_GSET_RSS_LUT_VSI_ID_S) &
-					ICE_AQC_GSET_RSS_LUT_VSI_ID_M) |
-				       ICE_AQC_GSET_RSS_LUT_VSI_VALID);
-
-	switch (lut_type) {
-	case ICE_AQC_GSET_RSS_LUT_TABLE_TYPE_VSI:
-	case ICE_AQC_GSET_RSS_LUT_TABLE_TYPE_PF:
-	case ICE_AQC_GSET_RSS_LUT_TABLE_TYPE_GLOBAL:
-		flags |= ((lut_type << ICE_AQC_GSET_RSS_LUT_TABLE_TYPE_S) &
-			  ICE_AQC_GSET_RSS_LUT_TABLE_TYPE_M);
-		break;
-	default:
-		status = -EINVAL;
-		goto ice_aq_get_set_rss_lut_exit;
-	}
-
-	if (lut_type == ICE_AQC_GSET_RSS_LUT_TABLE_TYPE_GLOBAL) {
-		flags |= ((glob_lut_idx << ICE_AQC_GSET_RSS_LUT_GLOBAL_IDX_S) &
-			  ICE_AQC_GSET_RSS_LUT_GLOBAL_IDX_M);
-
-		if (!set)
-			goto ice_aq_get_set_rss_lut_send;
-	} else if (lut_type == ICE_AQC_GSET_RSS_LUT_TABLE_TYPE_PF) {
-		if (!set)
-			goto ice_aq_get_set_rss_lut_send;
-	} else {
-		goto ice_aq_get_set_rss_lut_send;
-	}
-
-	/* LUT size is only valid for Global and PF table types */
-	switch (lut_size) {
-	case ICE_AQC_GSET_RSS_LUT_TABLE_SIZE_128:
-		break;
-	case ICE_AQC_GSET_RSS_LUT_TABLE_SIZE_512:
-		flags |= (ICE_AQC_GSET_RSS_LUT_TABLE_SIZE_512_FLAG <<
-			  ICE_AQC_GSET_RSS_LUT_TABLE_SIZE_S) &
-			 ICE_AQC_GSET_RSS_LUT_TABLE_SIZE_M;
-		break;
-	case ICE_AQC_GSET_RSS_LUT_TABLE_SIZE_2K:
-		if (lut_type == ICE_AQC_GSET_RSS_LUT_TABLE_TYPE_PF) {
-			flags |= (ICE_AQC_GSET_RSS_LUT_TABLE_SIZE_2K_FLAG <<
-				  ICE_AQC_GSET_RSS_LUT_TABLE_SIZE_S) &
-				 ICE_AQC_GSET_RSS_LUT_TABLE_SIZE_M;
-			break;
-		}
-		fallthrough;
-	default:
-		status = -EINVAL;
-		goto ice_aq_get_set_rss_lut_exit;
-	}
-
-ice_aq_get_set_rss_lut_send:
-	cmd_resp->flags = cpu_to_le16(flags);
-	status = ice_aq_send_cmd(hw, &desc, lut, lut_size, NULL);
-
-ice_aq_get_set_rss_lut_exit:
-	return status;
+	return ice_aq_send_cmd(hw, &desc, lut, lut_size, NULL);
 }
 
 /**
@@ -4008,12 +3981,10 @@ static int
 __ice_aq_get_set_rss_key(struct ice_hw *hw, u16 vsi_id,
 			 struct ice_aqc_get_set_rss_keys *key, bool set)
 {
-	struct ice_aqc_get_set_rss_key *cmd_resp;
+	struct ice_aqc_get_set_rss_key *desc_params;
 	u16 key_size = sizeof(*key);
 	struct ice_aq_desc desc;
 
-	cmd_resp = &desc.params.get_set_rss_key;
-
 	if (set) {
 		ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_rss_key);
 		desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
@@ -4021,10 +3992,8 @@ __ice_aq_get_set_rss_key(struct ice_hw *hw, u16 vsi_id,
 		ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_rss_key);
 	}
 
-	cmd_resp->vsi_id = cpu_to_le16(((vsi_id <<
-					 ICE_AQC_GSET_RSS_KEY_VSI_ID_S) &
-					ICE_AQC_GSET_RSS_KEY_VSI_ID_M) |
-				       ICE_AQC_GSET_RSS_KEY_VSI_VALID);
+	desc_params = &desc.params.get_set_rss_key;
+	desc_params->vsi_id = cpu_to_le16(vsi_id | ICE_AQC_RSS_VSI_VALID);
 
 	return ice_aq_send_cmd(hw, &desc, key, key_size, NULL);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index a92dc9a16035..20f40dfeb761 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -489,7 +489,6 @@
 #define VSIQF_FD_CNT_FD_BCNT_M			ICE_M(0x3FFF, 16)
 #define VSIQF_FD_SIZE(_VSI)			(0x00462000 + ((_VSI) * 4))
 #define VSIQF_HKEY_MAX_INDEX			12
-#define VSIQF_HLUT_MAX_INDEX			15
 #define PFPM_APM				0x000B8080
 #define PFPM_APM_APME_M				BIT(0)
 #define PFPM_WUFC				0x0009DC00
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index c3722c68af99..984b381386ff 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -907,6 +907,7 @@ static void ice_vsi_set_rss_params(struct ice_vsi *vsi)
 {
 	struct ice_hw_common_caps *cap;
 	struct ice_pf *pf = vsi->back;
+	u16 max_rss_size;
 
 	if (!test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {
 		vsi->rss_size = 1;
@@ -914,32 +915,31 @@ static void ice_vsi_set_rss_params(struct ice_vsi *vsi)
 	}
 
 	cap = &pf->hw.func_caps.common_cap;
+	max_rss_size = BIT(cap->rss_table_entry_width);
 	switch (vsi->type) {
 	case ICE_VSI_CHNL:
 	case ICE_VSI_PF:
 		/* PF VSI will inherit RSS instance of PF */
 		vsi->rss_table_size = (u16)cap->rss_table_size;
 		if (vsi->type == ICE_VSI_CHNL)
-			vsi->rss_size = min_t(u16, vsi->num_rxq,
-					      BIT(cap->rss_table_entry_width));
+			vsi->rss_size = min_t(u16, vsi->num_rxq, max_rss_size);
 		else
 			vsi->rss_size = min_t(u16, num_online_cpus(),
-					      BIT(cap->rss_table_entry_width));
-		vsi->rss_lut_type = ICE_AQC_GSET_RSS_LUT_TABLE_TYPE_PF;
+					      max_rss_size);
+		vsi->rss_lut_type = ICE_LUT_PF;
 		break;
 	case ICE_VSI_SWITCHDEV_CTRL:
-		vsi->rss_table_size = ICE_VSIQF_HLUT_ARRAY_SIZE;
-		vsi->rss_size = min_t(u16, num_online_cpus(),
-				      BIT(cap->rss_table_entry_width));
-		vsi->rss_lut_type = ICE_AQC_GSET_RSS_LUT_TABLE_TYPE_VSI;
+		vsi->rss_table_size = ICE_LUT_VSI_SIZE;
+		vsi->rss_size = min_t(u16, num_online_cpus(), max_rss_size);
+		vsi->rss_lut_type = ICE_LUT_VSI;
 		break;
 	case ICE_VSI_VF:
 		/* VF VSI will get a small RSS table.
 		 * For VSI_LUT, LUT size should be set to 64 bytes.
 		 */
-		vsi->rss_table_size = ICE_VSIQF_HLUT_ARRAY_SIZE;
+		vsi->rss_table_size = ICE_LUT_VSI_SIZE;
 		vsi->rss_size = ICE_MAX_RSS_QS_PER_VF;
-		vsi->rss_lut_type = ICE_AQC_GSET_RSS_LUT_TABLE_TYPE_VSI;
+		vsi->rss_lut_type = ICE_LUT_VSI;
 		break;
 	case ICE_VSI_LB:
 		break;
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index df9171a1a34f..a073616671ef 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -1038,10 +1038,10 @@ enum ice_sw_fwd_act_type {
 };
 
 struct ice_aq_get_set_rss_lut_params {
-	u16 vsi_handle;		/* software VSI handle */
-	u16 lut_size;		/* size of the LUT buffer */
-	u8 lut_type;		/* type of the LUT (i.e. VSI, PF, Global) */
 	u8 *lut;		/* input RSS LUT for set and output RSS LUT for get */
+	enum ice_lut_size lut_size; /* size of the LUT buffer */
+	enum ice_lut_type lut_type; /* type of the LUT (i.e. VSI, PF, Global) */
+	u16 vsi_handle;		/* software VSI handle */
 	u8 global_lut_id;	/* only valid when lut_type is global */
 };
 
@@ -1143,9 +1143,6 @@ struct ice_aq_get_set_rss_lut_params {
 
 #define ICE_SR_WORDS_IN_1KB		512
 
-/* Hash redirection LUT for VSI - maximum array size */
-#define ICE_VSIQF_HLUT_ARRAY_SIZE	((VSIQF_HLUT_MAX_INDEX + 1) * 4)
-
 /* AQ API version for LLDP_FILTER_CONTROL */
 #define ICE_FW_API_LLDP_FLTR_MAJ	1
 #define ICE_FW_API_LLDP_FLTR_MIN	7
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index efbc2968a7bf..92490fe655ea 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -500,7 +500,7 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 	vfres->num_queue_pairs = vsi->num_txq;
 	vfres->max_vectors = vf->pf->vfs.num_msix_per;
 	vfres->rss_key_size = ICE_VSIQF_HKEY_ARRAY_SIZE;
-	vfres->rss_lut_size = ICE_VSIQF_HLUT_ARRAY_SIZE;
+	vfres->rss_lut_size = ICE_LUT_VSI_SIZE;
 	vfres->max_mtu = ice_vc_get_max_frame_size(vf);
 
 	vfres->vsi_res[0].vsi_id = vf->lan_vsi_num;
@@ -962,7 +962,7 @@ static int ice_vc_config_rss_lut(struct ice_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
-	if (vrl->lut_entries != ICE_VSIQF_HLUT_ARRAY_SIZE) {
+	if (vrl->lut_entries != ICE_LUT_VSI_SIZE) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		goto error_param;
 	}
@@ -978,7 +978,7 @@ static int ice_vc_config_rss_lut(struct ice_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
-	if (ice_set_rss_lut(vsi, vrl->lut, ICE_VSIQF_HLUT_ARRAY_SIZE))
+	if (ice_set_rss_lut(vsi, vrl->lut, ICE_LUT_VSI_SIZE))
 		v_ret = VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR;
 error_param:
 	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_RSS_LUT, v_ret,
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
