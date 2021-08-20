Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7B93F2403
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Aug 2021 02:06:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A6A5A817C0;
	Fri, 20 Aug 2021 00:06:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5GUTSK_FfjZy; Fri, 20 Aug 2021 00:06:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B2E2280FF7;
	Fri, 20 Aug 2021 00:06:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3915A1BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 00:05:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2462A60B4D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 00:05:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 14JqxSsejTz5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Aug 2021 00:05:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EB3D2607A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 00:05:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10081"; a="280413579"
X-IronPort-AV: E=Sophos;i="5.84,336,1620716400"; d="scan'208";a="280413579"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 17:05:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,336,1620716400"; d="scan'208";a="512317471"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
 by fmsmga004.fm.intel.com with ESMTP; 19 Aug 2021 17:05:29 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 19 Aug 2021 17:08:52 -0700
Message-Id: <20210820000859.680522-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210820000859.680522-1-anthony.l.nguyen@intel.com>
References: <20210820000859.680522-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue v4 05/12] ice: manage VSI antispoof
 and destination override
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

Implement functions to make setting VSI security config easier.
Main function ice_update_security fills security section field and
checks against error in updating VSI. Rest functions are responsible
for correct filling config according to user esceptations.

This helper is needed because destination override is located in
this section. Driver has to set this bit to allow sttering Tx packet
on VSI based on value in Tx descriptors.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 61 ++++++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_lib.h | 11 +++++
 2 files changed, 72 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 274cbca8b1c4..f3414a3a5e56 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3571,3 +3571,64 @@ int ice_set_link(struct ice_vsi *vsi, bool ena)
 
 	return 0;
 }
+
+/**
+ * ice_vsi_update_security - update security block in VSI
+ * @vsi: pointer to VSI structure
+ * @fill: function pointer to fill ctx
+ */
+int ice_vsi_update_security(struct ice_vsi *vsi,
+			    void (*fill)(struct ice_vsi_ctx *))
+{
+	struct ice_vsi_ctx ctx = { 0 };
+
+	ctx.info = vsi->info;
+	ctx.info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_SECURITY_VALID);
+	fill(&ctx);
+
+	if (ice_update_vsi(&vsi->back->hw, vsi->idx, &ctx, NULL))
+		return -ENODEV;
+
+	vsi->info = ctx.info;
+	return 0;
+}
+
+/**
+ * ice_vsi_ctx_set_antispoof - set antispoof function in VSI ctx
+ * @ctx: pointer to VSI ctx structure
+ */
+void ice_vsi_ctx_set_antispoof(struct ice_vsi_ctx *ctx)
+{
+	ctx->info.sec_flags |= ICE_AQ_VSI_SEC_FLAG_ENA_MAC_ANTI_SPOOF |
+			       (ICE_AQ_VSI_SEC_TX_VLAN_PRUNE_ENA <<
+		 ICE_AQ_VSI_SEC_TX_PRUNE_ENA_S);
+}
+
+/**
+ * ice_vsi_ctx_clear_antispoof - clear antispoof function in VSI ctx
+ * @ctx: pointer to VSI ctx structure
+ */
+void ice_vsi_ctx_clear_antispoof(struct ice_vsi_ctx *ctx)
+{
+	ctx->info.sec_flags &= ~ICE_AQ_VSI_SEC_FLAG_ENA_MAC_ANTI_SPOOF &
+		~(ICE_AQ_VSI_SEC_TX_VLAN_PRUNE_ENA <<
+		  ICE_AQ_VSI_SEC_TX_PRUNE_ENA_S);
+}
+
+/**
+ * ice_vsi_ctx_set_allow_override - allow destination override on VSI
+ * @ctx: pointer to VSI ctx structure
+ */
+void ice_vsi_ctx_set_allow_override(struct ice_vsi_ctx *ctx)
+{
+	ctx->info.sec_flags |= ICE_AQ_VSI_SEC_FLAG_ALLOW_DEST_OVRD;
+}
+
+/**
+ * ice_vsi_ctx_clear_allow_override - turn off destination override on VSI
+ * @ctx: pointer to VSI ctx structure
+ */
+void ice_vsi_ctx_clear_allow_override(struct ice_vsi_ctx *ctx)
+{
+	ctx->info.sec_flags &= ~ICE_AQ_VSI_SEC_FLAG_ALLOW_DEST_OVRD;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index cf57945ecc41..781eba6c1991 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -116,4 +116,15 @@ bool ice_is_vsi_dflt_vsi(struct ice_sw *sw, struct ice_vsi *vsi);
 int ice_set_dflt_vsi(struct ice_sw *sw, struct ice_vsi *vsi);
 
 int ice_clear_dflt_vsi(struct ice_sw *sw);
+
+int ice_vsi_update_security(struct ice_vsi *vsi,
+			    void (*fill)(struct ice_vsi_ctx *));
+
+void ice_vsi_ctx_set_antispoof(struct ice_vsi_ctx *ctx);
+
+void ice_vsi_ctx_clear_antispoof(struct ice_vsi_ctx *ctx);
+
+void ice_vsi_ctx_set_allow_override(struct ice_vsi_ctx *ctx);
+
+void ice_vsi_ctx_clear_allow_override(struct ice_vsi_ctx *ctx);
 #endif /* !_ICE_LIB_H_ */
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
