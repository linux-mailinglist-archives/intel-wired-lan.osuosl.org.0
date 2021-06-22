Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F19893B130C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jun 2021 06:56:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 242804052A;
	Wed, 23 Jun 2021 04:56:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3F1s4Uuho1_l; Wed, 23 Jun 2021 04:56:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F0D9F405AD;
	Wed, 23 Jun 2021 04:56:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2D8131BF364
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 04:55:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4C1B06069C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 04:55:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tgcHRZVby3pZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jun 2021 04:55:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1D24960694
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 04:55:41 +0000 (UTC)
IronPort-SDR: BQsslh7/rj0WYSjyhgd8CbVh43Wcwq8/4uxEX3hLeXSyO2tI9GrOPMdMDMVZxnSDM/qgdFEqum
 A/7JCpXNbCtw==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="204185981"
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="204185981"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 21:55:40 -0700
IronPort-SDR: VaemuffhH0K0LGHopwDm8eoEiRYND0NvC4sQ91ekbEf3VVs2Ad13t84aU3W31J5vq3L637lPeg
 s1Qki3rw22mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="490547877"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga002.fm.intel.com with ESMTP; 22 Jun 2021 21:55:39 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 22 Jun 2021 23:21:28 +0200
Message-Id: <20210622212134.341728-6-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210622212134.341728-1-michal.swiatkowski@linux.intel.com>
References: <20210622212134.341728-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 05/12] ice: manage VSI
 antispoof and destination override
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

Implement functions to make setting VSI security config easier.
Main function ice_update_security fills security section field and
checks against error in updating VSI. Rest functions are responsible
for correct filling config according to user esceptations.

This helper is needed because destination override is located in
this section. Driver has to set this bit to allow sttering Tx packet
on VSI based on value in Tx descriptors.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
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
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
