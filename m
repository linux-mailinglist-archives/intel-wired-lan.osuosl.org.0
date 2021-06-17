Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5F93AC4CF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Jun 2021 09:18:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 623FC4023B;
	Fri, 18 Jun 2021 07:18:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TkEQ5qvJLvE3; Fri, 18 Jun 2021 07:18:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B20C40236;
	Fri, 18 Jun 2021 07:18:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4C6CE1BF392
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jun 2021 07:18:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3C7F883A55
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jun 2021 07:18:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CVxIIiCLchVc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Jun 2021 07:18:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6CA9483A3E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jun 2021 07:18:28 +0000 (UTC)
IronPort-SDR: 22a1FH2KegUxIZwmHKEVH/raRPzDcZ2FzWk402WsdD3dRT+Hp6sG1BaQ/35A1XfwDsGv4QY3hf
 YD/KbP7o+HcQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10018"; a="193822126"
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="193822126"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 00:18:27 -0700
IronPort-SDR: StLwcgh/PCfi0HTIS9X91kVuVJpdeJk+czcBdAOi9EPtnmtRTxXmapNxq2XBFGoSyt9Hm1V7Mx
 Zf3FSrJzoelw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="485588364"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga001.jf.intel.com with ESMTP; 18 Jun 2021 00:18:27 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 18 Jun 2021 01:44:06 +0200
Message-Id: <20210617234413.104069-6-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210617234413.104069-1-michal.swiatkowski@linux.intel.com>
References: <20210617234413.104069-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 05/12] ice: manage VSI antispoof
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
