Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE1B72DEE0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 12:15:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C0499416E3;
	Tue, 13 Jun 2023 10:15:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C0499416E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686651309;
	bh=7rzRiYmwoSVPlwKkAbP4MXZW4ONZRE+Yn8Xki6CzQS8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VhSTNvH7wBwW2DdfTfTIs++ZjBEt7jmtQM6oLR+QV7/a/U8PcgZvCEXTlrWOBJS0L
	 wVTSReMj3MxNVYiAFHn/y88SAME9SMRzNFtMZOHDthdC5uZaCzOOeRHr/EEft1ijhM
	 b7+4NUyvjgl7KM1H6n6IZdZnsYw32ohcnLS5E8YY3Uy3O3/Q+hZPNfTOQglz/V3gzu
	 OSDn6jC8jFYypVpLBqj+Ox2stY9cDYBUJ8HraM1tftpIXV9qnrCVFjLojIroa5JvXW
	 acHFq06YyMiXpAtUTJNLTnu6Znkq8hIt2EmBpszY0HxxIYmthVEMjV4+PslXavFy8T
	 VliWE5LXUVshQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yFSV7ZELdeTR; Tue, 13 Jun 2023 10:15:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9D0B1403E0;
	Tue, 13 Jun 2023 10:15:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D0B1403E0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 566E21BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 10:14:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 57907409FB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 10:14:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57907409FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IsBnvHI9R1VY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 10:14:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 353F4409F3
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 353F4409F3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 10:14:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="424168074"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="424168074"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 03:14:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="885787130"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="885787130"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga005.jf.intel.com with ESMTP; 13 Jun 2023 03:14:41 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id B9F0C35820;
 Tue, 13 Jun 2023 11:14:40 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Jun 2023 12:13:23 +0200
Message-Id: <20230613101330.87734-6-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230613101330.87734-1-wojciech.drewek@intel.com>
References: <20230613101330.87734-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686651284; x=1718187284;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AESFojjzaa+7IcmWawxnNiN1nmca6WAY0k/xlyoPLZs=;
 b=Pxi/xNkjbjpgf3u0E2nrPduoAyvFXXso+o+Ie6k7Zb2MV+fO1eraiWSw
 94Vft96lcBPrdI4/qjqLz3jqJZnhdYR/TF1odzPanAZcVuwCkuhEK5/rc
 nDoCOMFiTMTn+oyRkO+tyG/AUMjtF6C3YaVC/2wLrrz6eIq/A8JvROWh6
 P4TsUlZ9lSTOXwg2/bSfBro//ouNsxdkn/kQ3s0cHcDJNTk6DjJt4j8do
 QG1bJNvh5v+KfqZ0RTrF2QReVFbx5LuaK31zFhF0NGWkvHTFFnUFbL5O/
 qWuGU/YiI+PxslwU19ElW1K8FMqzANGo6oLyf25K9+1YM2MLAPMP/xONH
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Pxi/xNkj
Subject: [Intel-wired-lan] [PATCH iwl-next v5 05/12] ice: Unset src prune on
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, simon.horman@corigine.com,
 dan.carpenter@linaro.org
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

Reviewed-by: Simon Horman <simon.horman@corigine.com>
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
