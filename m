Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A25970B87B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 May 2023 11:07:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DDC5440C2F;
	Mon, 22 May 2023 09:07:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DDC5440C2F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684746425;
	bh=iSCawQfPlzYIp6RhjPJ/F6L6xZaOniwuoG0RqfYhaio=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HQ8LviY0v0UQevpOC/nMKTuUI9TvhuiacMK8/fA0dyo/8kYQF5ddPoVFfqAywtYq/
	 jurKNomStoOAYTA5ToqlhTVK1Vxvqnm1apDOKUnqyrkqWrNI6qEqL/N2erQnNs/PV4
	 pVrTN3kd87o2X01z9oTv+8jayeg6b4k1H/cfTcmGa12IBEBj76JoaBH+OmmXQVnRcl
	 Dwdtlvnjt9tK9LSc97ApEX7WZ9xJDBFf39qAnRX7fgG8RXLZ67C+4lOpcbkfh41nhE
	 Y5Ilem+F5nPWZVLmYCTgUySoNP5mBil2vz29uLgUBy0IOda8eHGU/Tqjl4FT4YiOqq
	 lIwM8jaoHXC+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TQOwxBjWRFVe; Mon, 22 May 2023 09:07:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B80D4405DD;
	Mon, 22 May 2023 09:07:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B80D4405DD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 40FA11BF39F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 09:06:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4C8E260BAA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 09:06:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C8E260BAA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 65eBg4HNCDgj for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 May 2023 09:06:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2597A60784
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2597A60784
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 09:06:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10717"; a="337459267"
X-IronPort-AV: E=Sophos;i="6.00,183,1681196400"; d="scan'208";a="337459267"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 02:06:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10717"; a="847765464"
X-IronPort-AV: E=Sophos;i="6.00,183,1681196400"; d="scan'208";a="847765464"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga001.fm.intel.com with ESMTP; 22 May 2023 02:06:50 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id AE3F1365CB;
 Mon, 22 May 2023 10:06:49 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 22 May 2023 11:05:34 +0200
Message-Id: <20230522090542.45679-3-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230522090542.45679-1-wojciech.drewek@intel.com>
References: <20230522090542.45679-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684746414; x=1716282414;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tJHYS1D+DuCqmg6wf2r4ihvHN4TALwGfSZd23lEepI4=;
 b=cvN+2eU9iAU8gqZr9b41AkqRapK1X74C04zjDOuqFpGbBHj2hM/48aBv
 Yfux2oCql1PfnNDS85tJlx9bGNNf4PBdzMDOeOj6gsU8MmmnjWfIkK8SL
 41lGsdKm+2J14AyjEAI56AMeTOZh8MUqXcjNvGT4Ccxi8SZ4bPag+FOiE
 FL74tG+SWVPnYMn9s9OtJB4X9NSZ0hiayMtaCEq5NtimR52TgP/PrV/e0
 1XR+N/D1yf2laTLxqcPo6SuAMOZjrInxJVlqvOJEFW/RQgVjo1rU5birq
 g22uMmgCelkdUqFhIbkikhGmRN2Hdozn5vKweRl790TVg0aOwb27eqrGf
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cvN+2eU9
Subject: [Intel-wired-lan] [PATCH iwl-next v3 02/10] ice: Unset src prune on
 uplink VSI
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
Cc: netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In switchdev mode uplink VSI is supposed to receive all packets that
were not matched by existing filters. If ICE_AQ_VSI_SW_FLAG_LOCAL_LB
bit is unset and we have a filter associated with uplink VSI
which matches on dst mac equal to MAC1, then packets with src mac equal
to MAC1 will be pruned from reaching uplink VSI.

Fix this by updating uplink VSI with ICE_AQ_VSI_SW_FLAG_LOCAL_LB bit
set when configuring switchdev mode.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
v2: fix @ctx declaration in ice_vsi_update_local_lb
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c |  6 +++++
 drivers/net/ethernet/intel/ice/ice_lib.c     | 25 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_lib.h     |  1 +
 3 files changed, 32 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index bfd003135fc8..4fe235da1182 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -113,8 +113,13 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
 	if (ice_vsi_update_security(ctrl_vsi, ice_vsi_ctx_set_allow_override))
 		goto err_override_control;
 
+	if (ice_vsi_update_local_lb(uplink_vsi, true))
+		goto err_override_local_lb;
+
 	return 0;
 
+err_override_local_lb:
+	ice_vsi_update_security(ctrl_vsi, ice_vsi_ctx_clear_allow_override);
 err_override_control:
 	ice_vsi_update_security(uplink_vsi, ice_vsi_ctx_clear_allow_override);
 err_override_uplink:
@@ -391,6 +396,7 @@ static void ice_eswitch_release_env(struct ice_pf *pf)
 
 	vlan_ops = ice_get_compat_vsi_vlan_ops(uplink_vsi);
 
+	ice_vsi_update_local_lb(uplink_vsi, false);
 	ice_vsi_update_security(ctrl_vsi, ice_vsi_ctx_clear_allow_override);
 	ice_vsi_update_security(uplink_vsi, ice_vsi_ctx_clear_allow_override);
 	vlan_ops->ena_rx_filtering(uplink_vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 5ddb95d1073a..e8142bea2eb2 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -4117,3 +4117,28 @@ void ice_vsi_ctx_clear_allow_override(struct ice_vsi_ctx *ctx)
 {
 	ctx->info.sec_flags &= ~ICE_AQ_VSI_SEC_FLAG_ALLOW_DEST_OVRD;
 }
+
+/**
+ * ice_vsi_update_local_lb - update sw block in VSI with local loopback bit
+ * @vsi: pointer to VSI structure
+ * @set: set or unset the bit
+ */
+int
+ice_vsi_update_local_lb(struct ice_vsi *vsi, bool set)
+{
+	struct ice_vsi_ctx ctx = {
+		.info	= vsi->info,
+	};
+
+	ctx.info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_SW_VALID);
+	if (set)
+		ctx.info.sw_flags |= ICE_AQ_VSI_SW_FLAG_LOCAL_LB;
+	else
+		ctx.info.sw_flags &= ~ICE_AQ_VSI_SW_FLAG_LOCAL_LB;
+
+	if (ice_update_vsi(&vsi->back->hw, vsi->idx, &ctx, NULL))
+		return -ENODEV;
+
+	vsi->info = ctx.info;
+	return 0;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index e985766e6bb5..1628385a9672 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -157,6 +157,7 @@ void ice_vsi_ctx_clear_antispoof(struct ice_vsi_ctx *ctx);
 void ice_vsi_ctx_set_allow_override(struct ice_vsi_ctx *ctx);
 
 void ice_vsi_ctx_clear_allow_override(struct ice_vsi_ctx *ctx);
+int ice_vsi_update_local_lb(struct ice_vsi *vsi, bool set);
 int ice_vsi_add_vlan_zero(struct ice_vsi *vsi);
 int ice_vsi_del_vlan_zero(struct ice_vsi *vsi);
 bool ice_vsi_has_non_zero_vlans(struct ice_vsi *vsi);
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
