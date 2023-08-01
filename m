Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5657776B2FA
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 13:20:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F1F0340AD1;
	Tue,  1 Aug 2023 11:20:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F1F0340AD1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690888828;
	bh=SrY2XLwSKono5iN9e7xCG5j8QBe7esle2C6K1f0dj08=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0u12NJriUBrCNDYe/xdODtN1fFQ9uC8TFWK/Uh/EGdKTJtTGbrw7MYGr2sh8p729/
	 R2Ins/xp3hN8k63CB4lhCKWUre9PyQ/Fs+KEfYTQ5nqeCGIHunJvmGLRQDb8KcCE7b
	 8JdX/cSsl17uWGz2LRCcXYuk6RpUigodeog5V16AOFYPtjh+8cfdvdIVlNQA1YZPUm
	 ZKmZ+eMQA79vTDqK6xhCqtVrKfvUKuzCko2jxBJZfCyRWA8gok5WShPEkzxlVGdiKD
	 4PMtePVTn+9qEd5JkY1T39osn85kN3Gcs1+UxpGLdu2Xy5nMO6T9TDsuDOzKn1Upzd
	 tMKPv2ZsXg+xA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 07UBBwjDJ-F8; Tue,  1 Aug 2023 11:20:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AC8F4402B1;
	Tue,  1 Aug 2023 11:20:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC8F4402B1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 19A2F1BF290
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 11:20:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0162E4035D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 11:19:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0162E4035D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MYY5OPz9vk6d for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 11:19:54 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 54DE74025D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 11:19:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 54DE74025D
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="455644615"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="455644615"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 04:19:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="852416004"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="852416004"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga004.jf.intel.com with ESMTP; 01 Aug 2023 04:19:51 -0700
Received: from pkitszel-desk.tendawifi.com (unknown [10.255.193.236])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 4774B33E8F;
 Tue,  1 Aug 2023 12:19:50 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: Kees Cook <keescook@chromium.org>
Date: Tue,  1 Aug 2023 13:19:23 +0200
Message-Id: <20230801111923.118268-3-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230801111923.118268-1-przemyslaw.kitszel@intel.com>
References: <20230801111923.118268-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690888794; x=1722424794;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p1jYw57KC9hDihhUz9gnl4OCqMqKWft5XvD3oOaXpVA=;
 b=XgqIZy9kLFPaCgQy1OP0/2KpnQGUA1L7h2UKvSKN44JeRtrfUPeuOpvs
 s4ekaXnHCNv8NdRGw/wGuN0sOnC9q+BI35oBKuEiCyWRgJ+vZ7CETqg+d
 AeAB/KNpmwB4rZk4Z3PzWysqYve/o+DTK0kX/5lSHfVEntsY8cwff/o+3
 TGbUqXMZiGlJDvZF8DcNk5scoRYXSkJeKnw5stT2E/9oehlKyHc/VQD0s
 u5q6O7mJsDUx5UC22T++tOHJeoQ0XM1QBG3BNnarNwQOXz4aB2ZYyQBGE
 2BhhB4UM1cMeyJpoPyRgDK/fgy3v/aR92zKyQtBDCRrPDl6N24VdDm2H5
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XgqIZy9k
Subject: [Intel-wired-lan] [RFC net-next 2/2] ice: make use of
 DECLARE_FLEX() in ice_switch.c
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use DECLARE_FLEX() macro for 1-elem flex array members of ice_switch.c

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 53 +++++----------------
 1 file changed, 12 insertions(+), 41 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index a7afb612fe32..41679cb6b548 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -1812,15 +1812,11 @@ ice_aq_alloc_free_vsi_list(struct ice_hw *hw, u16 *vsi_list_id,
 			   enum ice_sw_lkup_type lkup_type,
 			   enum ice_adminq_opc opc)
 {
-	struct ice_aqc_alloc_free_res_elem *sw_buf;
+	DECLARE_FLEX(struct ice_aqc_alloc_free_res_elem *, sw_buf, elem, 1);
+	u16 buf_len = struct_size(sw_buf, elem, 1);
 	struct ice_aqc_res_elem *vsi_ele;
-	u16 buf_len;
 	int status;
 
-	buf_len = struct_size(sw_buf, elem, 1);
-	sw_buf = devm_kzalloc(ice_hw_to_dev(hw), buf_len, GFP_KERNEL);
-	if (!sw_buf)
-		return -ENOMEM;
 	sw_buf->num_elems = cpu_to_le16(1);
 
 	if (lkup_type == ICE_SW_LKUP_MAC ||
@@ -1840,8 +1836,7 @@ ice_aq_alloc_free_vsi_list(struct ice_hw *hw, u16 *vsi_list_id,
 			sw_buf->res_type =
 				cpu_to_le16(ICE_AQC_RES_TYPE_VSI_LIST_PRUNE);
 	} else {
-		status = -EINVAL;
-		goto ice_aq_alloc_free_vsi_list_exit;
+		return -EINVAL;
 	}
 
 	if (opc == ice_aqc_opc_free_res)
@@ -1849,16 +1844,14 @@ ice_aq_alloc_free_vsi_list(struct ice_hw *hw, u16 *vsi_list_id,
 
 	status = ice_aq_alloc_free_res(hw, 1, sw_buf, buf_len, opc, NULL);
 	if (status)
-		goto ice_aq_alloc_free_vsi_list_exit;
+		return status;
 
 	if (opc == ice_aqc_opc_alloc_res) {
 		vsi_ele = &sw_buf->elem[0];
 		*vsi_list_id = le16_to_cpu(vsi_ele->e.sw_resp);
 	}
 
-ice_aq_alloc_free_vsi_list_exit:
-	devm_kfree(ice_hw_to_dev(hw), sw_buf);
-	return status;
+	return 0;
 }
 
 /**
@@ -2088,15 +2081,10 @@ ice_aq_get_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
  */
 int ice_alloc_recipe(struct ice_hw *hw, u16 *rid)
 {
-	struct ice_aqc_alloc_free_res_elem *sw_buf;
-	u16 buf_len;
+	DECLARE_FLEX(struct ice_aqc_alloc_free_res_elem *, sw_buf, elem, 1);
+	u16 buf_len = struct_size(sw_buf, elem, 1);
 	int status;
 
-	buf_len = struct_size(sw_buf, elem, 1);
-	sw_buf = kzalloc(buf_len, GFP_KERNEL);
-	if (!sw_buf)
-		return -ENOMEM;
-
 	sw_buf->num_elems = cpu_to_le16(1);
 	sw_buf->res_type = cpu_to_le16((ICE_AQC_RES_TYPE_RECIPE <<
 					ICE_AQC_RES_TYPE_S) |
@@ -2105,7 +2093,6 @@ int ice_alloc_recipe(struct ice_hw *hw, u16 *rid)
 				       ice_aqc_opc_alloc_res, NULL);
 	if (!status)
 		*rid = le16_to_cpu(sw_buf->elem[0].e.sw_resp);
-	kfree(sw_buf);
 
 	return status;
 }
@@ -4482,16 +4469,10 @@ int
 ice_alloc_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
 		   u16 *counter_id)
 {
-	struct ice_aqc_alloc_free_res_elem *buf;
-	u16 buf_len;
+	DECLARE_FLEX(struct ice_aqc_alloc_free_res_elem *, buf, elem, 1);
+	u16 buf_len = struct_size(buf, elem, 1);
 	int status;
 
-	/* Allocate resource */
-	buf_len = struct_size(buf, elem, 1);
-	buf = kzalloc(buf_len, GFP_KERNEL);
-	if (!buf)
-		return -ENOMEM;
-
 	buf->num_elems = cpu_to_le16(num_items);
 	buf->res_type = cpu_to_le16(((type << ICE_AQC_RES_TYPE_S) &
 				      ICE_AQC_RES_TYPE_M) | alloc_shared);
@@ -4499,12 +4480,9 @@ ice_alloc_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
 	status = ice_aq_alloc_free_res(hw, 1, buf, buf_len,
 				       ice_aqc_opc_alloc_res, NULL);
 	if (status)
-		goto exit;
+		return status;
 
 	*counter_id = le16_to_cpu(buf->elem[0].e.sw_resp);
-
-exit:
-	kfree(buf);
 	return status;
 }
 
@@ -4520,16 +4498,10 @@ int
 ice_free_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
 		  u16 counter_id)
 {
-	struct ice_aqc_alloc_free_res_elem *buf;
-	u16 buf_len;
+	DECLARE_FLEX(struct ice_aqc_alloc_free_res_elem *, buf, elem, 1);
+	u16 buf_len = struct_size(buf, elem, 1);
 	int status;
 
-	/* Free resource */
-	buf_len = struct_size(buf, elem, 1);
-	buf = kzalloc(buf_len, GFP_KERNEL);
-	if (!buf)
-		return -ENOMEM;
-
 	buf->num_elems = cpu_to_le16(num_items);
 	buf->res_type = cpu_to_le16(((type << ICE_AQC_RES_TYPE_S) &
 				      ICE_AQC_RES_TYPE_M) | alloc_shared);
@@ -4540,7 +4512,6 @@ ice_free_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
 	if (status)
 		ice_debug(hw, ICE_DBG_SW, "counter resource could not be freed\n");
 
-	kfree(buf);
 	return status;
 }
 
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
