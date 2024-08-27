Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 694E596197D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2024 23:53:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7AAED40688;
	Tue, 27 Aug 2024 21:53:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EdfwcfogduHQ; Tue, 27 Aug 2024 21:53:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B9DB406BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724795588;
	bh=8SxwvcIwQVrbpBLPJGjKcDgj/YHAqc2iYtpqdNpH3Qk=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=r9Szu7EljmpYPn//shh+W07TxnuFpRJe6qbVfryRv3DWycTmS3Yz9Y1jC+wxExxG4
	 y58iQkT+fhsPBT5pi5DmsmrbUBcTZTwNSQBwMZn953+nIYPdiC9sPqAAi+1IDnYl5T
	 NJ+uIzqz90YfyIBmqFCIccKi/9jlGDVs6m3JLELBRl0dqPIHdECmVOCRZ+g6eYUElw
	 XUdy4B4KO18qMypr1iuofbwGFzO3hsfo4NKQ22N8ZZAu2vsfhWovnbfjKFD1IN/SYK
	 zkKtsBIumW5KMzFHILw8O1XGQEDv5inSb6qw9EfG3faUtV20LoYxT5omTLEPXPaIdB
	 K5+UfkBzeaSrA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B9DB406BD;
	Tue, 27 Aug 2024 21:53:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 14DCC1BF97C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 21:52:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5B08E40A81
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 21:52:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aaC23KTwZTz8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2024 21:52:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C9FAC40A8A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C9FAC40A8A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C9FAC40A8A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 21:52:50 +0000 (UTC)
X-CSE-ConnectionGUID: WzZ/EV3HQLOuBtAIJWW+9w==
X-CSE-MsgGUID: MYQN3YT8TyCd3GIm7FDn6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="27068861"
X-IronPort-AV: E=Sophos;i="6.10,181,1719903600"; d="scan'208";a="27068861"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 14:52:46 -0700
X-CSE-ConnectionGUID: uhNebUS4R/CxN6PT5JnBEQ==
X-CSE-MsgGUID: HP6W5g4vQB2aQNWHuOiPTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,181,1719903600"; d="scan'208";a="63189520"
Received: from jekeller-desk.jf.intel.com ([10.166.241.20])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 14:52:46 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 27 Aug 2024 14:52:16 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240827-e810-live-migration-jk-prep-ctx-functions-v1-13-0442e2e42d32@intel.com>
References: <20240827-e810-live-migration-jk-prep-ctx-functions-v1-0-0442e2e42d32@intel.com>
In-Reply-To: <20240827-e810-live-migration-jk-prep-ctx-functions-v1-0-0442e2e42d32@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Vladimir Oltean <olteanv@gmail.com>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 "netdev netdev"@vger.kernel.org
X-Mailer: b4 0.14.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724795571; x=1756331571;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=0R1nKCI8w1B0MLgMnxXGJ+dMizzIv8nBrW8fS8e58rs=;
 b=EGMJv+fLlyHYJG+YZFJCNWO/Vk86J+z9HRCzhdBwIu4oyjDZvwK7y16A
 IgSw3lWBF1h7852Y6IgSYsnPBLiStgzHwCnBxjQ24wyGP8rqujgVD2etT
 rQKKvXqDrUch3x2o37OcZpJRd5j5qCSSy4ulD91UW9JHYmrHxE7Ehfwye
 FJ/41grpSWRZXFpjXLvAgZjl1PYDoPsAzb1ht0lpRAGa2xfQBybBjCTXX
 eFO2v0AOdIYqZtLp6gsIWBvaEgPi8OFedC/QfC4UIFkj2/NXPCflcirfe
 iVCQOxQO81t1DRPY99GKbtORnGCZFxpOLZHu6aWrOhNgb3lQNFgaVD9GR
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EGMJv+fL
Subject: [Intel-wired-lan] [PATCH iwl-next 13/13] ice: cleanup Rx queue
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
index 67273e4af7ff..3480a16d6452 100644
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
+ * Returns: 0 on success, or -EINVAL if the Rx queue index is invalid.
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

