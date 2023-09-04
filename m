Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EA46B791735
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Sep 2023 14:35:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 71C7D40976;
	Mon,  4 Sep 2023 12:34:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 71C7D40976
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693830899;
	bh=LnREiMa3mUn53bhug9cHQ6DX0atRDB2mgxHjOaKCuic=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rJbia6njMc0iOBdpsYD2G5PlIc3IxkW+tHcddkqLNH5HYL7eVSGJxvf5mdzda/QB4
	 i0P605kVI8HFpDGzgMYI1fGjDCXi8aIP2Py9UgpmblhkCHPAo/zYOGGyuPnNxHorsc
	 R8TF+1amgulksX69ZYUaQEzsOS/ivqgTPeaZSZnNbh1D921DlbJIe4jGADZwVnKrfg
	 YL7xINc1rdsAWQuoukgH4O2IkXtUMCw8zGEiwUPHwBePnWtMEL/Ldt4TI38jHLuF7D
	 QTxRozuYdmefagAvL0BGVOeEnLsZHc1MstfhaSeLMoY8bDithyk9o1xwnpN84/sBqg
	 LH93jzYK0fW2w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sb2MCJok5b7u; Mon,  4 Sep 2023 12:34:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2BC1140305;
	Mon,  4 Sep 2023 12:34:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2BC1140305
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C487D1BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 12:34:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 99AB9817A3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 12:34:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99AB9817A3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2RXwWc6udL2G for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Sep 2023 12:34:24 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DF4638177A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 12:34:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DF4638177A
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="373977186"
X-IronPort-AV: E=Sophos;i="6.02,226,1688454000"; d="scan'208";a="373977186"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2023 05:34:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="740749806"
X-IronPort-AV: E=Sophos;i="6.02,226,1688454000"; d="scan'208";a="740749806"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga002.jf.intel.com with ESMTP; 04 Sep 2023 05:34:20 -0700
Received: from pelor.igk.intel.com (pelor.igk.intel.com [10.123.220.13])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 4700635453;
 Mon,  4 Sep 2023 13:34:19 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: netdev@vger.kernel.org
Date: Mon,  4 Sep 2023 08:31:07 -0400
Message-Id: <20230904123107.116381-8-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230904123107.116381-1-przemyslaw.kitszel@intel.com>
References: <20230904123107.116381-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693830863; x=1725366863;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SZefFP9uepkSXMi6Yk72LIhrMtlK/vBNBKmsU8au6+o=;
 b=UB3iy8LcVleiSqSRTEoTIeGJlhpWI7MPEz/Z/oUoUwI+qudvZhBo3K0w
 zPvlxjrPaoRXlZV8EUit/QINmdRfRqBxCzPXtZb+shrNMBa9NhBnLGqRD
 JAYMs99LzB9MmJLt1ZQeswPF7GKmhOfQ7JxJoVYGIubNnXkS0ZJhXUFxG
 N9rFssF1oDONan8Ni8DbeAv1JZnQOp0GnuIs78hrIdeUjjMnSJk75uRyZ
 F9M98h7luKa5VxkxAjivK/ant+bThcgO4wSHaiYe01a2rb71ddL2PEOop
 Z/3zCZTC2uRiQ2voP/1u9ejMC2Mjx3DkTZw1fli1WKb2qYJXRLayvZFiE
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UB3iy8Lc
Subject: [Intel-wired-lan] [RFC net-next v4 7/7] ice: make use of
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
Cc: Kees Cook <keescook@chromium.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Steven Zou <steven.zou@intel.com>, Anthony Nguyen <anthony.l.nguyen@intel.com>,
 David Laight <David.Laight@ACULAB.COM>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>
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
index 2f77b684ff76..ee19f3aa3d19 100644
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
 
 	status = ice_aq_alloc_free_res(hw, sw_buf, buf_len, opc);
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
 	status = ice_aq_alloc_free_res(hw, sw_buf, buf_len,
 				       ice_aqc_opc_alloc_res);
 	if (!status)
 		*rid = le16_to_cpu(sw_buf->elem[0].e.sw_resp);
-	kfree(sw_buf);
 
 	return status;
 }
@@ -4434,28 +4421,19 @@ int
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
 
 	status = ice_aq_alloc_free_res(hw, buf, buf_len, ice_aqc_opc_alloc_res);
 	if (status)
-		goto exit;
+		return status;
 
 	*counter_id = le16_to_cpu(buf->elem[0].e.sw_resp);
-
-exit:
-	kfree(buf);
 	return status;
 }
 
@@ -4471,26 +4449,19 @@ int
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
 	buf->elem[0].e.sw_resp = cpu_to_le16(counter_id);
 
 	status = ice_aq_alloc_free_res(hw, buf, buf_len, ice_aqc_opc_free_res);
 	if (status)
 		ice_debug(hw, ICE_DBG_SW, "counter resource could not be freed\n");
 
-	kfree(buf);
 	return status;
 }
 
@@ -4508,15 +4479,10 @@ ice_free_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
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
@@ -4534,7 +4500,6 @@ int ice_share_res(struct ice_hw *hw, u16 type, u8 shared, u16 res_id)
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
