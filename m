Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D92618063E0
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 02:02:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C65F6142B;
	Wed,  6 Dec 2023 01:02:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C65F6142B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701824531;
	bh=hvxujWb2vkyNBH3zVLvHqJ9JNaXWVGuBmduUkiVKwDw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FvJnQtSI2HCGaMmnCmxW/cp1gU2vDSieREU/YmV35DRqxFKAdRR+IlgvxSC9Acvux
	 8ynjawdvMACzX5T0w9WOKjxJjWCyZtsvAbbQH59zv+3kqZvLkU1lXLt0xT4kPPBBSl
	 P614L5gQlhht3QkxWaDG95nAyM3mSX/yGc+HmFGt4VINWHwpLDypKy+PNg7CE5/XgB
	 bWc+AchT76CNPT7Zxq6WIuxUCEpX6KXbRRG2qZTK6e437IZUOAgIOBt3sK2c6d+MAC
	 uFtfBkScQUNyGzLx3vjNA3TVx/7O4SHtG+rBraJPbMzZ8+Dqrug1fjRe5Jl12PlvlD
	 ZdKQc+JIjOi4w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VIinwWIjIb9w; Wed,  6 Dec 2023 01:02:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 01ABE61182;
	Wed,  6 Dec 2023 01:02:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 01ABE61182
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9221D1BF97D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 01:01:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8AB25417E9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 01:01:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8AB25417E9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xf5x9uD7LqKb for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 01:01:34 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 946AB41721
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 01:01:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 946AB41721
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="12700300"
X-IronPort-AV: E=Sophos;i="6.04,254,1695711600"; d="scan'208";a="12700300"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 17:01:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="841655258"
X-IronPort-AV: E=Sophos;i="6.04,254,1695711600"; d="scan'208";a="841655258"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 17:01:33 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  5 Dec 2023 17:01:06 -0800
Message-Id: <20231206010114.2259388-8-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
References: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701824495; x=1733360495;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e+QFVfyXGcOfgMRqYt0Z+hr05kpCo5q2ht81uNlADsI=;
 b=hlxLElSKq60AK0qQQ1Xj0m1/CLREx0GNO29B4u1j8nszC76cCCOcnaDF
 RDoD6NVzKBuieiVEUtAVEyRemRPV7Qb4lpjrsURvJXyy+Mfji/sxOGjL1
 LOl0tl+H3zenc0swqpDFK8xSPQyUe0/QUTKxwTaWt/THeRY4TtfSSfG00
 9Eg5pnKXF9yYi5/U1gaRzxtt3SHgLynM+KIq+v07QI4fw9t+Z6rzsshtw
 IVcmerXujHBzMqphc+ngG50FonUkTpJunIzRvBQJD6NcFfkmuYhVXoice
 sPa6sXyu+oO1itxFmaZ/uagbzTUjWg5/0n19kpCoC2ayFJuN8QqqzLHLf
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hlxLElSK
Subject: [Intel-wired-lan] [PATCH iwl-next v2 07/15] ice: fix pre-shifted
 bit usage
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
Cc: przemyslaw.kitszel@intel.com, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 aleksander.lobakin@intel.com, marcin.szycik@linux.intel.com, horms@kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

While converting to FIELD_PREP() and FIELD_GET(), it was noticed that
some of the RSS defines had *included* the shift in their definitions.
This is completely outside of normal, such that a developer could easily
make a mistake and shift at the usage site (like when using
FIELD_PREP()).

Rename the defines and set them to the "pre-shifted values" so they
match the template the driver normally uses for masks and the member
bits of the mask, which also allows the driver to use FIELD_PREP
correctly with these values. Use GENMASK() for this changed MASK value.

Do the same for the VLAN EMODE defines as well.

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
v2: no change
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h    | 18 +++++++++---------
 drivers/net/ethernet/intel/ice/ice_lib.c       |  7 ++++---
 drivers/net/ethernet/intel/ice/ice_virtchnl.c  | 10 +++++-----
 .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c  | 16 +++++++++++-----
 4 files changed, 29 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index f77a3c70f262..51c241ab6b8e 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -422,10 +422,10 @@ struct ice_aqc_vsi_props {
 #define ICE_AQ_VSI_INNER_VLAN_INSERT_PVID	BIT(2)
 #define ICE_AQ_VSI_INNER_VLAN_EMODE_S		3
 #define ICE_AQ_VSI_INNER_VLAN_EMODE_M		(0x3 << ICE_AQ_VSI_INNER_VLAN_EMODE_S)
-#define ICE_AQ_VSI_INNER_VLAN_EMODE_STR_BOTH	(0x0 << ICE_AQ_VSI_INNER_VLAN_EMODE_S)
-#define ICE_AQ_VSI_INNER_VLAN_EMODE_STR_UP	(0x1 << ICE_AQ_VSI_INNER_VLAN_EMODE_S)
-#define ICE_AQ_VSI_INNER_VLAN_EMODE_STR		(0x2 << ICE_AQ_VSI_INNER_VLAN_EMODE_S)
-#define ICE_AQ_VSI_INNER_VLAN_EMODE_NOTHING	(0x3 << ICE_AQ_VSI_INNER_VLAN_EMODE_S)
+#define ICE_AQ_VSI_INNER_VLAN_EMODE_STR_BOTH	0x0U
+#define ICE_AQ_VSI_INNER_VLAN_EMODE_STR_UP	0x1U
+#define ICE_AQ_VSI_INNER_VLAN_EMODE_STR		0x2U
+#define ICE_AQ_VSI_INNER_VLAN_EMODE_NOTHING	0x3U
 	u8 inner_vlan_reserved2[3];
 	/* ingress egress up sections */
 	__le32 ingress_table; /* bitmap, 3 bits per up */
@@ -491,11 +491,11 @@ struct ice_aqc_vsi_props {
 #define ICE_AQ_VSI_Q_OPT_RSS_GBL_LUT_S		2
 #define ICE_AQ_VSI_Q_OPT_RSS_GBL_LUT_M		(0xF << ICE_AQ_VSI_Q_OPT_RSS_GBL_LUT_S)
 #define ICE_AQ_VSI_Q_OPT_RSS_HASH_S		6
-#define ICE_AQ_VSI_Q_OPT_RSS_HASH_M		(0x3 << ICE_AQ_VSI_Q_OPT_RSS_HASH_S)
-#define ICE_AQ_VSI_Q_OPT_RSS_TPLZ		(0x0 << ICE_AQ_VSI_Q_OPT_RSS_HASH_S)
-#define ICE_AQ_VSI_Q_OPT_RSS_SYM_TPLZ		(0x1 << ICE_AQ_VSI_Q_OPT_RSS_HASH_S)
-#define ICE_AQ_VSI_Q_OPT_RSS_XOR		(0x2 << ICE_AQ_VSI_Q_OPT_RSS_HASH_S)
-#define ICE_AQ_VSI_Q_OPT_RSS_JHASH		(0x3 << ICE_AQ_VSI_Q_OPT_RSS_HASH_S)
+#define ICE_AQ_VSI_Q_OPT_RSS_HASH_M		GENMASK(7, 6)
+#define ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ		0x0U
+#define ICE_AQ_VSI_Q_OPT_RSS_HASH_SYM_TPLZ	0x1U
+#define ICE_AQ_VSI_Q_OPT_RSS_HASH_XOR		0x2U
+#define ICE_AQ_VSI_Q_OPT_RSS_HASH_JHASH		0x3U
 	u8 q_opt_tc;
 #define ICE_AQ_VSI_Q_OPT_TC_OVR_S		0
 #define ICE_AQ_VSI_Q_OPT_TC_OVR_M		(0x1F << ICE_AQ_VSI_Q_OPT_TC_OVR_S)
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 394f915290f6..453eba59abb2 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -984,7 +984,8 @@ static void ice_set_dflt_vsi_ctx(struct ice_hw *hw, struct ice_vsi_ctx *ctxt)
 	 */
 	if (ice_is_dvm_ena(hw)) {
 		ctxt->info.inner_vlan_flags |=
-			ICE_AQ_VSI_INNER_VLAN_EMODE_NOTHING;
+			FIELD_PREP(ICE_AQ_VSI_INNER_VLAN_EMODE_M,
+				   ICE_AQ_VSI_INNER_VLAN_EMODE_NOTHING);
 		ctxt->info.outer_vlan_flags =
 			FIELD_PREP(ICE_AQ_VSI_OUTER_VLAN_TX_MODE_M,
 				   ICE_AQ_VSI_OUTER_VLAN_TX_MODE_ALL);
@@ -1183,12 +1184,12 @@ static void ice_set_rss_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
 	case ICE_VSI_PF:
 		/* PF VSI will inherit RSS instance of PF */
 		lut_type = ICE_AQ_VSI_Q_OPT_RSS_LUT_PF;
-		hash_type = ICE_AQ_VSI_Q_OPT_RSS_TPLZ;
+		hash_type = ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
 		break;
 	case ICE_VSI_VF:
 		/* VF VSI will gets a small RSS table which is a VSI LUT type */
 		lut_type = ICE_AQ_VSI_Q_OPT_RSS_LUT_VSI;
-		hash_type = ICE_AQ_VSI_Q_OPT_RSS_TPLZ;
+		hash_type = ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
 		break;
 	default:
 		dev_dbg(dev, "Unsupported VSI type %s\n",
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 8bec83965e50..727aebe24b92 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -823,8 +823,8 @@ static int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8 *msg, bool add)
 		int status;
 
 		lut_type = ICE_AQ_VSI_Q_OPT_RSS_LUT_VSI;
-		hash_type = add ? ICE_AQ_VSI_Q_OPT_RSS_XOR :
-				ICE_AQ_VSI_Q_OPT_RSS_TPLZ;
+		hash_type = add ? ICE_AQ_VSI_Q_OPT_RSS_HASH_XOR :
+				ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
 
 		ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 		if (!ctx) {
@@ -832,9 +832,9 @@ static int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8 *msg, bool add)
 			goto error_param;
 		}
 
-		ctx->info.q_opt_rss = FIELD_PREP(ICE_AQ_VSI_Q_OPT_RSS_LUT_M,
-						 lut_type) |
-				      (hash_type & ICE_AQ_VSI_Q_OPT_RSS_HASH_M);
+		ctx->info.q_opt_rss =
+			FIELD_PREP(ICE_AQ_VSI_Q_OPT_RSS_LUT_M, lut_type) |
+			FIELD_PREP(ICE_AQ_VSI_Q_OPT_RSS_HASH_M, hash_type);
 
 		/* Preserve existing queueing option setting */
 		ctx->info.q_opt_rss |= (vsi->info.q_opt_rss &
diff --git a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
index 699bcb1e2f3a..2e9ad27cb9d1 100644
--- a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
@@ -131,6 +131,7 @@ static int ice_vsi_manage_vlan_stripping(struct ice_vsi *vsi, bool ena)
 {
 	struct ice_hw *hw = &vsi->back->hw;
 	struct ice_vsi_ctx *ctxt;
+	u8 *ivf;
 	int err;
 
 	/* do not allow modifying VLAN stripping when a port VLAN is configured
@@ -143,19 +144,24 @@ static int ice_vsi_manage_vlan_stripping(struct ice_vsi *vsi, bool ena)
 	if (!ctxt)
 		return -ENOMEM;
 
+	ivf = &ctxt->info.inner_vlan_flags;
+
 	/* Here we are configuring what the VSI should do with the VLAN tag in
 	 * the Rx packet. We can either leave the tag in the packet or put it in
 	 * the Rx descriptor.
 	 */
-	if (ena)
+	if (ena) {
 		/* Strip VLAN tag from Rx packet and put it in the desc */
-		ctxt->info.inner_vlan_flags = ICE_AQ_VSI_INNER_VLAN_EMODE_STR_BOTH;
-	else
+		*ivf = FIELD_PREP(ICE_AQ_VSI_INNER_VLAN_EMODE_M,
+				  ICE_AQ_VSI_INNER_VLAN_EMODE_STR_BOTH);
+	} else {
 		/* Disable stripping. Leave tag in packet */
-		ctxt->info.inner_vlan_flags = ICE_AQ_VSI_INNER_VLAN_EMODE_NOTHING;
+		*ivf = FIELD_PREP(ICE_AQ_VSI_INNER_VLAN_EMODE_M,
+				  ICE_AQ_VSI_INNER_VLAN_EMODE_NOTHING);
+	}
 
 	/* Allow all packets untagged/tagged */
-	ctxt->info.inner_vlan_flags |= ICE_AQ_VSI_INNER_VLAN_TX_MODE_ALL;
+	*ivf |= ICE_AQ_VSI_INNER_VLAN_TX_MODE_ALL;
 
 	ctxt->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_VLAN_VALID);
 
-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
