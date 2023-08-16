Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EAEF777E346
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 16:10:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 827EA41E5A;
	Wed, 16 Aug 2023 14:10:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 827EA41E5A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692195001;
	bh=IbsbMmCCIb0fpweNz3qo2Y3cl6dMH8xUUVgySFA+/+E=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IRlk8Hs02s76RitDCCnEIS7RyFzMiJ2YKy8laOEFXQWChG+wj533ZQfbUb+R3+Rnz
	 NifMB27V36/gCDR/BwlpaZO3m4drGHZMINa1+lVZT3qd0NIrTRcOrVeWbVHJFE175z
	 wnzhek9cFzL3RvLGn4TjxgJLdJZl8BdCbjW0fSQRFlk6omVO88YPxkmg5id3lrWaFt
	 myDc9jFdgUL0hcy1PbCtcvf/gL5gQWwwqnsmKl5ePJEmUogTa9baxAGKh0pqMT9AY6
	 afZjHKioidwodBzAREliKUP1jpCexdIioVe9zWkOhurTa9LgxHKSKKIDoTLW+SJFOm
	 2t7xTVxgkUy+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r5jz0w2G_20U; Wed, 16 Aug 2023 14:10:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E012C41BD6;
	Wed, 16 Aug 2023 14:09:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E012C41BD6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1ACC41BF41B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 14:09:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E2F6A8212E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 14:09:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2F6A8212E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hyFNKNfPjF4t for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 14:09:28 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0E88C82F4F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 14:09:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E88C82F4F
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="375312798"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="375312798"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 07:09:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="980753078"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="980753078"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga006.fm.intel.com with ESMTP; 16 Aug 2023 07:09:25 -0700
Received: from pelor.igk.intel.com (pelor.igk.intel.com [10.123.220.13])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 81AFF3542A;
 Wed, 16 Aug 2023 15:09:24 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: Kees Cook <keescook@chromium.org>,
	netdev@vger.kernel.org
Date: Wed, 16 Aug 2023 10:06:23 -0400
Message-Id: <20230816140623.452869-8-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230816140623.452869-1-przemyslaw.kitszel@intel.com>
References: <20230816140623.452869-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692194968; x=1723730968;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TRp69XY4FgD35Ke7p9oOxP9n/vDaawa0zdcnhmIGV1M=;
 b=hk0ZZmfJyBTyYyZd23Kyh2E15wG6VyWw9JDwv8wR2j8S0KmwHftcmfXN
 RIyb+xzRfeZ+wCx1odMMkh5NixZifMjpSMZygJ5uB6tMRXYNf04kUpLIy
 V7N4MaiFVRdagt+mcpcGukvaeB4nvWhYf8DcgASOQiTSpqEKwSbwYospS
 XyXraLbFwGyfuxMow66q8pdpv6E7X/EK8Tt49kPv/H5XjLKSLNhHWSO37
 f900ndpzwTwxMX/pSTRnQHhJ7X3G+rVeQG9eCAEOhGo1Uws8UIEbVQpfJ
 9+oUO08OAU9gcrGgzgJKE7Y1bqHgOsmHUVeZPmBdzUlFUHBxArJARe9/q
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hk0ZZmfJ
Subject: [Intel-wired-lan] [PATCH net-next v3 7/7] ice: make use of
 DEFINE_FLEX() in ice_switch.c
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Steven Zou <steven.zou@intel.com>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use DEFINE_FLEX() macro for 1-elem flex array members of ice_switch.c

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
add/remove: 2/2 grow/shrink: 3/6 up/down: 489/-470 (19)
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 63 +++++----------------
 1 file changed, 14 insertions(+), 49 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index a7afb612fe32..b5a1445ed256 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -1812,15 +1812,11 @@ ice_aq_alloc_free_vsi_list(struct ice_hw *hw, u16 *vsi_list_id,
 			   enum ice_sw_lkup_type lkup_type,
 			   enum ice_adminq_opc opc)
 {
-	struct ice_aqc_alloc_free_res_elem *sw_buf;
+	DEFINE_FLEX(struct ice_aqc_alloc_free_res_elem, sw_buf, elem, 1);
+	u16 buf_len = __struct_size(sw_buf);
 	struct ice_aqc_res_elem *vsi_ele;
-	u16 buf_len;
 	int status;
 
-	buf_len = struct_size(sw_buf, elem, 1);
-	sw_buf = devm_kzalloc(ice_hw_to_dev(hw), buf_len, GFP_KERNEL);
-	if (!sw_buf)
-		return -ENOMEM;
 	sw_buf->num_elems = cpu_to_le16(1);
 
 	if (lkup_type == ICE_SW_LKUP_MAC ||
@@ -1840,25 +1836,22 @@ ice_aq_alloc_free_vsi_list(struct ice_hw *hw, u16 *vsi_list_id,
 			sw_buf->res_type =
 				cpu_to_le16(ICE_AQC_RES_TYPE_VSI_LIST_PRUNE);
 	} else {
-		status = -EINVAL;
-		goto ice_aq_alloc_free_vsi_list_exit;
+		return -EINVAL;
 	}
 
 	if (opc == ice_aqc_opc_free_res)
 		sw_buf->elem[0].e.sw_resp = cpu_to_le16(*vsi_list_id);
 
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
@@ -2088,24 +2081,18 @@ ice_aq_get_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
  */
 int ice_alloc_recipe(struct ice_hw *hw, u16 *rid)
 {
-	struct ice_aqc_alloc_free_res_elem *sw_buf;
-	u16 buf_len;
+	DEFINE_FLEX(struct ice_aqc_alloc_free_res_elem, sw_buf, elem, 1);
+	u16 buf_len = __struct_size(sw_buf);
 	int status;
 
-	buf_len = struct_size(sw_buf, elem, 1);
-	sw_buf = kzalloc(buf_len, GFP_KERNEL);
-	if (!sw_buf)
-		return -ENOMEM;
-
 	sw_buf->num_elems = cpu_to_le16(1);
 	sw_buf->res_type = cpu_to_le16((ICE_AQC_RES_TYPE_RECIPE <<
 					ICE_AQC_RES_TYPE_S) |
 					ICE_AQC_RES_TYPE_FLAG_SHARED);
 	status = ice_aq_alloc_free_res(hw, 1, sw_buf, buf_len,
 				       ice_aqc_opc_alloc_res, NULL);
 	if (!status)
 		*rid = le16_to_cpu(sw_buf->elem[0].e.sw_resp);
-	kfree(sw_buf);
 
 	return status;
 }
@@ -4482,29 +4469,20 @@ int
 ice_alloc_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
 		   u16 *counter_id)
 {
-	struct ice_aqc_alloc_free_res_elem *buf;
-	u16 buf_len;
+	DEFINE_FLEX(struct ice_aqc_alloc_free_res_elem, buf, elem, 1);
+	u16 buf_len = __struct_size(buf);
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
+	DEFINE_FLEX(struct ice_aqc_alloc_free_res_elem, buf, elem, 1);
+	u16 buf_len = __struct_size(buf);
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
 
@@ -4558,15 +4529,10 @@ ice_free_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
  */
 int ice_share_res(struct ice_hw *hw, u16 type, u8 shared, u16 res_id)
 {
-	struct ice_aqc_alloc_free_res_elem *buf;
-	u16 buf_len;
+	DEFINE_FLEX(struct ice_aqc_alloc_free_res_elem, buf, elem, 1);
+	u16 buf_len = __struct_size(buf);
 	int status;
 
-	buf_len = struct_size(buf, elem, 1);
-	buf = kzalloc(buf_len, GFP_KERNEL);
-	if (!buf)
-		return -ENOMEM;
-
 	buf->num_elems = cpu_to_le16(1);
 	if (shared)
 		buf->res_type = cpu_to_le16(((type << ICE_AQC_RES_TYPE_S) &
@@ -4584,7 +4550,6 @@ int ice_share_res(struct ice_hw *hw, u16 type, u8 shared, u16 res_id)
 		ice_debug(hw, ICE_DBG_SW, "Could not set resource type %u id %u to %s\n",
 			  type, res_id, shared ? "SHARED" : "DEDICATED");
 
-	kfree(buf);
 	return status;
 }
 
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
