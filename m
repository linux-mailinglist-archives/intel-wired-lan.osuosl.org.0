Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C57496332C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2024 22:57:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0DC8A60E1D;
	Wed, 28 Aug 2024 20:57:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n7yJa9bgjjmd; Wed, 28 Aug 2024 20:57:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D09760D77
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724878659;
	bh=lEqRKt6DS1P2cqBDnRpOo6EDcFUivNmFQDsq6cKzsx0=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eKpTLiuPmkETsNpfV8/Ly4YRfeqI9x+SUukmY4kyxEf2FRuX/sk36u9BIIfsW2yH5
	 O/xckciMz4sq6viZgyn0VHdvuRLyp9TFj/v6OuGbbqnKqM0CLauNRK19ZLZjQhS1UB
	 UZotH22yJo6CBf0d+DsOps1Y1n9db0zxs1xkCMRemOJl0IgY8lbY4lKJwdYB5T0A4G
	 1ZefnotG1RSk6XxpVc+DX+fYa1gF1HX+Ts8QdN+KbtHvnknHjZeztlTpp0xWDBS1cZ
	 WsmJB0myPNqHYEYZ9/vGrt/1eK5FhWmQVdORyE7RLE0tqMSHQCETYmOXn9sjE4GBtN
	 Fqe4md6Eu2PwA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3D09760D77;
	Wed, 28 Aug 2024 20:57:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1B88C1BF409
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F370260DED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pMpW7wFBkvwG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Aug 2024 20:57:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 07DCD60B65
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 07DCD60B65
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 07DCD60B65
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:31 +0000 (UTC)
X-CSE-ConnectionGUID: iMQZ8qPKSVyG3JRFljuwLQ==
X-CSE-MsgGUID: 77pRLGbuS8WLjRudtGva+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="34592621"
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="34592621"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:57:31 -0700
X-CSE-ConnectionGUID: kcD8ZhpMQCS4GtkvBuSX1Q==
X-CSE-MsgGUID: z8P0+UXzSv6jayJSVXJnFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="64049994"
Received: from jekeller-desk.jf.intel.com ([10.166.241.20])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:57:29 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 28 Aug 2024 13:57:29 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240828-e810-live-migration-jk-prep-ctx-functions-v2-13-558ab9e240f5@intel.com>
References: <20240828-e810-live-migration-jk-prep-ctx-functions-v2-0-558ab9e240f5@intel.com>
In-Reply-To: <20240828-e810-live-migration-jk-prep-ctx-functions-v2-0-558ab9e240f5@intel.com>
To: Vladimir Oltean <olteanv@gmail.com>, netdev <netdev@vger.kernel.org>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
X-Mailer: b4 0.14.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724878653; x=1756414653;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=xufRkKg+iM6RsUdSlYQ0D3X5D5y0afXbEi6v8MIfOwg=;
 b=g4WYo2zb33D27nLFTYZh3mksgloJ+3QGFydnC7QnXAS5VC+eaHTf5LoX
 +zFoDtCoPl2c/0KkgOek+Jw9OhEdP6MjfTK7n83ikiX7JW0jV+We+zDlR
 PmZGOcCLcB3ZBDmDfcLlrKy0l3XWOyf1HkKWEyz0HDS0kzmT4+XWgAsOH
 VEYnrSHq0ghoKDnq+B2mAYK77DYyZB6QztBZWAg5BA13XH0eVUQlZ2NLs
 zEcfnYUSkOeiwnrfdBHW/YDPQZBQPpgQ/C7bdzOeG4DHaYww7AHZEBaLM
 qP9ymVw+20KFjnTVh5xyDUJ0tTJREu4LRmRSPSbL5ej7puFeyYH26flaI
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g4WYo2zb
Subject: [Intel-wired-lan] [PATCH iwl-next v2 13/13] ice: cleanup Rx queue
 context programming functions
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice_copy_rxq_ctx_to_hw() and ice_write_rxq_ctx() functions perform some
defensive checks which are typically frowned upon by kernel style
guidelines.

In particular, they perform NULL checks on buffers which are never expected
to be NULL. Both functions are only called once and always have valid
buffers pointing to stack memory. These checks only serve to hide potential
programming error, as we will not produce the normal crash dump on a NULL
access.

In addition, ice_copy_rxq_ctx_to_hw() cannot fail in another way, so could
be made void.

Future support for VF Live Migration will need to introduce an inverse
function for reading Rx queue context from HW registers to unpack it, as
well as functions to pack and unpack Tx queue context from HW.

Rather than copying these style issues into the new functions, lets first
cleanup the existing code.

For the ice_copy_rxq_ctx_to_hw() function:

 * Remove the NULL parameter check.
 * Move the Rx queue index check out of this function.
 * Convert the function to a void return.
 * Use a simple int variable instead of a u8 for the for loop index.
 * Use a local variable and array syntax to access the rxq_ctx.
 * Update the function description to better align with kernel doc style.

For the ice_write_rxq_ctx() function:

 * Use the more common '= {}' syntax for initializing the context buffer.
 * Move the Rx queue index check into this function.
 * Update the function description with a Returns: to align with kernel doc
   style.

These changes align the existing write functions to current kernel
style, and will align with the style of the new functions added when we
implement live migration in a future series.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 42 ++++++++++++-----------------
 1 file changed, 17 insertions(+), 25 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 67273e4af7ff..bf4f4b6195f9 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1357,34 +1357,22 @@ int ice_reset(struct ice_hw *hw, enum ice_reset_req req)
 }
 
 /**
- * ice_copy_rxq_ctx_to_hw
+ * ice_copy_rxq_ctx_to_hw - Copy packed Rx queue context to HW registers
  * @hw: pointer to the hardware structure
- * @ice_rxq_ctx: pointer to the rxq context
+ * @rxq_ctx: pointer to the packed Rx queue context
  * @rxq_index: the index of the Rx queue
- *
- * Copies rxq context from dense structure to HW register space
  */
-static int
-ice_copy_rxq_ctx_to_hw(struct ice_hw *hw, u8 *ice_rxq_ctx, u32 rxq_index)
+static void ice_copy_rxq_ctx_to_hw(struct ice_hw *hw, u8 *rxq_ctx,
+				   u32 rxq_index)
 {
-	u8 i;
-
-	if (!ice_rxq_ctx)
-		return -EINVAL;
-
-	if (rxq_index > QRX_CTRL_MAX_INDEX)
-		return -EINVAL;
-
 	/* Copy each dword separately to HW */
-	for (i = 0; i < ICE_RXQ_CTX_SIZE_DWORDS; i++) {
-		wr32(hw, QRX_CONTEXT(i, rxq_index),
-		     *((u32 *)(ice_rxq_ctx + (i * sizeof(u32)))));
+	for (int i = 0; i < ICE_RXQ_CTX_SIZE_DWORDS; i++) {
+		u32 ctx = ((u32 *)rxq_ctx)[i];
 
-		ice_debug(hw, ICE_DBG_QCTX, "qrxdata[%d]: %08X\n", i,
-			  *((u32 *)(ice_rxq_ctx + (i * sizeof(u32)))));
+		wr32(hw, QRX_CONTEXT(i, rxq_index), ctx);
+
+		ice_debug(hw, ICE_DBG_QCTX, "qrxdata[%d]: %08X\n", i, ctx);
 	}
-
-	return 0;
 }
 
 /**
@@ -1497,23 +1485,27 @@ const struct ice_ctx_ele ice_rlan_ctx_info[] = {
 /**
  * ice_write_rxq_ctx - Write Rx Queue context to hardware
  * @hw: pointer to the hardware structure
- * @rlan_ctx: pointer to the rxq context
+ * @rlan_ctx: pointer to the packed Rx queue context
  * @rxq_index: the index of the Rx queue
  *
  * Pack the sparse Rx Queue context into dense hardware format and write it
  * into the HW register space.
+ *
+ * Return: 0 on success, or -EINVAL if the Rx queue index is invalid.
  */
 int ice_write_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
 		      u32 rxq_index)
 {
-	u8 ctx_buf[ICE_RXQ_CTX_SZ] = { 0 };
+	u8 ctx_buf[ICE_RXQ_CTX_SZ] = {};
 
-	if (!rlan_ctx)
+	if (rxq_index > QRX_CTRL_MAX_INDEX)
 		return -EINVAL;
 
 	ice_pack_rxq_ctx(rlan_ctx, ctx_buf);
 
-	return ice_copy_rxq_ctx_to_hw(hw, ctx_buf, rxq_index);
+	ice_copy_rxq_ctx_to_hw(hw, ctx_buf, rxq_index);
+
+	return 0;
 }
 
 /* LAN Tx Queue Context */

-- 
2.46.0.124.g2dc1a81c8933

