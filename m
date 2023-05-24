Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 037A070F632
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 May 2023 14:23:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8145761120;
	Wed, 24 May 2023 12:23:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8145761120
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684930983;
	bh=iSCawQfPlzYIp6RhjPJ/F6L6xZaOniwuoG0RqfYhaio=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6Ppw81zdjPxVGbjw6ZrCKBkXRfuI9Ij96aOTu25ZvMfU/2Rvf0HvNVXhaKYZeKhN8
	 /dUidTWTPjKeExqWwtwrSoPJpewyf7ivHpe1W1H5S0R0nhsqWRGsNakALgZ1aN0ZSr
	 FroQgGS/2s1NutGNVT/6oKdPpQoCJMJz4IjgUwXPjw7vGFv0w9Y19jh2YZEfE5Km/O
	 u3u5xEbIkn7bOfcnPkkiLgupwDLSq/TW9ezi03VKHFkK03ZX1tXXAMT92tL/jASl3Q
	 lBNZDkiVWQWrw1KTJsXfwJ5qd2bczG4PAXNsNZXKDL70xJT5NK5QfkAzETmRoJ/ETn
	 cizO6/R9zsiNw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n39pA_YU4P-6; Wed, 24 May 2023 12:23:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 55C9661190;
	Wed, 24 May 2023 12:23:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 55C9661190
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A287A1BF354
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 12:22:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8765E41CDE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 12:22:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8765E41CDE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HauIBNSix1aE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 May 2023 12:22:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C36A041CDC
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C36A041CDC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 12:22:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="439900971"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="439900971"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 05:22:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="950995929"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="950995929"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga006.fm.intel.com with ESMTP; 24 May 2023 05:22:36 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 3D3403782D;
 Wed, 24 May 2023 13:22:35 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 May 2023 14:21:13 +0200
Message-Id: <20230524122121.15012-6-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230524122121.15012-1-wojciech.drewek@intel.com>
References: <20230524122121.15012-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684930958; x=1716466958;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tJHYS1D+DuCqmg6wf2r4ihvHN4TALwGfSZd23lEepI4=;
 b=FWbk1/dZcjvIjVQ4/gP6IrqbO6wr4JCV1EcIjRWWPWGDtpltOPYh6XSe
 N1N9OHDsrjfaxUnhwuiC/vzfp0KsVThug0KkkBQRo5jegf2ut+g4mD77k
 8c2gXO1C24cZmFqd7tNWzKWbBpOXtReleFu5lCGe7UVNYb3qbnlV7zCBm
 rVxVXUkuhjqUUwtEWfc+z5OpgcvgI5fm6ESl9kHIyhTwO/B1yPRNRCxsh
 W+JSELKCTcjmLbNfxNx4HQpJ3/bDRQ1MZmczC4h7Oysc0RdyQj7YC9leJ
 iFIVhKPtXo7eM/q2JLArjQT0sjhG4eeQY1+GdGGTAgWkUvA0fVKtgXEFx
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FWbk1/dZ
Subject: [Intel-wired-lan] [PATCH iwl-next v4 05/13] ice: Unset src prune on
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
