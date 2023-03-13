Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D27A16B82D8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Mar 2023 21:36:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 63D1660E32;
	Mon, 13 Mar 2023 20:36:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63D1660E32
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678739789;
	bh=P0rV+BnJd8zXVM1xJ/4WuIXRsfRv7Tthm00BCjV96VE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8+0EXt8Ug+aFZN05z45rdtG1EcQRnf0+GDFOf8moaMPOXO8kpkoZnw4HDvHO6lDQR
	 7kpzxtxDQSTunU6KFuW6Aar7FSdEAWzPpaH+3RgWJva/yYeuXfER1g/hj7FI3pjT4f
	 MDaPcj0H9kLzvsHgeNhItikUnmzya1Pk1Yi1AHakZvXVYh2n8Wa9A1tCjywf7Ocp3k
	 fKaEdkHKPkjPeUZRoBBE8OgtKhKGCz6a4Nyo+wdHH7pUrDyksuZ/UtdTZ6QGQIxcSc
	 HjW89nqSr7nwxfArB3facZNCHYUnsUJGykFIqwQQTzJliQfh0xuXXEJALrXH17yrJa
	 Krsf+3VQBTKTA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ix3dPbc1ONlj; Mon, 13 Mar 2023 20:36:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 787ED60D89;
	Mon, 13 Mar 2023 20:36:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 787ED60D89
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A6DBE1BF2C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 20:36:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 230054173D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 20:36:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 230054173D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8bZmyJIP0tpc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Mar 2023 20:36:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 179AF41736
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 179AF41736
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 20:36:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="364913225"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="364913225"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 13:36:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="747732603"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="747732603"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.102])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 13:36:17 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Mar 2023 13:36:08 -0700
Message-Id: <20230313203608.1680781-3-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230313203608.1680781-1-jesse.brandeburg@intel.com>
References: <20230313203608.1680781-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678739779; x=1710275779;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VCPTPiyABYid1thuFeQbZUz9ZVLBNEdSttuKCZK3BXE=;
 b=X1iAm0wGlAHSTvN/zs2qHQVKv+tg2dHTYd3lJHouKZ2U00L4/roXbz2n
 U+z2oNSirB3b1J7v10vBrM0SgQxQgDqGuRCfKEDToTmLUepvYpdoHefXZ
 7KN9V9l6y1CWglQgesR8qzkx2lq5vxL/xrncIcN+s6hj6VLQerx3roKnV
 ZgANad+3Ef5Y9gBa0H6fOpif/bySx6TkwWZ27z82gaFzvRVOY/DC1yk7B
 0TZigNMZsTTlWb6VPbws7rz0N3BUq0zfWijS4h/Rc9nUBmLRZUfKuWBHt
 y6nyf35D2UNVyRfpxxGTLFYCTFBpbSR5AOed0c9AjmXjnFOTAwOl+NOwB
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=X1iAm0wG
Subject: [Intel-wired-lan] [PATCH net v1 2/2] ice: Fix ice_cfg_rdma_fltr()
 to only update relevant fields
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
Cc: netdev@vger.kernel.org, Brett Creeley <brett.creeley@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Robert Malz <robertx.malz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Brett Creeley <brett.creeley@intel.com>

The current implementation causes ice_vsi_update() to update all VSI
fields based on the cached VSI context. This also assumes that the
ICE_AQ_VSI_PROP_Q_OPT_VALID bit is set. This can cause problems if the
VSI context is not correctly synced by the driver. Fix this by only
updating the fields that correspond to ICE_AQ_VSI_PROP_Q_OPT_VALID.
Also, make sure to save the updated result in the cached VSI context
on success.

Fixes: 348048e724a0 ("ice: Implement iidc operations")
Co-developed-by: Robert Malz <robertx.malz@intel.com>
Signed-off-by: Robert Malz <robertx.malz@intel.com>
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Reviewed-by: Piotr Raczynski <piotr.raczynski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 26 +++++++++++++++++----
 1 file changed, 22 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 61f844d22512..46b36851af46 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -1780,18 +1780,36 @@ ice_update_vsi(struct ice_hw *hw, u16 vsi_handle, struct ice_vsi_ctx *vsi_ctx,
 int
 ice_cfg_rdma_fltr(struct ice_hw *hw, u16 vsi_handle, bool enable)
 {
-	struct ice_vsi_ctx *ctx;
+	struct ice_vsi_ctx *ctx, *cached_ctx;
+	int status;
+
+	cached_ctx = ice_get_vsi_ctx(hw, vsi_handle);
+	if (!cached_ctx)
+		return -ENOENT;
 
-	ctx = ice_get_vsi_ctx(hw, vsi_handle);
+	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 	if (!ctx)
-		return -EIO;
+		return -ENOMEM;
+
+	ctx->info.q_opt_rss = cached_ctx->info.q_opt_rss;
+	ctx->info.q_opt_tc = cached_ctx->info.q_opt_tc;
+	ctx->info.q_opt_flags = cached_ctx->info.q_opt_flags;
+
+	ctx->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_Q_OPT_VALID);
 
 	if (enable)
 		ctx->info.q_opt_flags |= ICE_AQ_VSI_Q_OPT_PE_FLTR_EN;
 	else
 		ctx->info.q_opt_flags &= ~ICE_AQ_VSI_Q_OPT_PE_FLTR_EN;
 
-	return ice_update_vsi(hw, vsi_handle, ctx, NULL);
+	status = ice_update_vsi(hw, vsi_handle, ctx, NULL);
+	if (!status) {
+		cached_ctx->info.q_opt_flags = ctx->info.q_opt_flags;
+		cached_ctx->info.valid_sections |= ctx->info.valid_sections;
+	}
+
+	kfree(ctx);
+	return status;
 }
 
 /**
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
