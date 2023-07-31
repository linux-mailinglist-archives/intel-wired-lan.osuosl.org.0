Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF2A769A84
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Jul 2023 17:12:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC75D60BD7;
	Mon, 31 Jul 2023 15:12:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC75D60BD7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690816366;
	bh=fG+kZDvQxuXz2wuSXnDgHUUdbXwl7m0q1EhqUxlj8OQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=yOpym8UdNZ8X7I8//06jHQldtRYFvPI9yIchsgOGPwyd+2CMjbrGb6As8gRwN+h/Y
	 +j45M2y7+3f39/ZOrVG0V6dBWNcVaItNe5ENGCdG8YDqwB/qP6SowXNgG6OXJ15KQP
	 mKMb2L7d9Tt8ircfhWwOXHUKBvV0CzQWgQOtQhHbdyt5U2pussV4kVEmvdhYdd37Ik
	 dny4c+5q0q7K7O3hQ+4ccgtzClKFh/tv1sfvhvzl0FnE3rF2zLeEmwEgGEw5igJyW4
	 +Zxlzxn4AW6pMSyQsKSGqoFb/sfL/8R9WC41ScGuPnssh5fUEFn+dD80j5JtNdK+9p
	 ej5cLnULMBHLQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9FQQ-Jo7FIUo; Mon, 31 Jul 2023 15:12:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5667360A7D;
	Mon, 31 Jul 2023 15:12:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5667360A7D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EB4C21BF3BA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 15:12:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C026981E18
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 15:12:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C026981E18
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gk4t-rzQ_JIw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jul 2023 15:12:39 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 31 Jul 2023 15:12:39 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 735FA81DED
Received: from mgamail.intel.com (unknown [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 735FA81DED
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 15:12:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="369052022"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="369052022"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 08:05:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="842303587"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="842303587"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga002.fm.intel.com with ESMTP; 31 Jul 2023 08:05:29 -0700
Received: from pelor.igk.intel.com (pelor.igk.intel.com [10.123.220.13])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 21CC633BD3;
 Mon, 31 Jul 2023 16:05:28 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 31 Jul 2023 11:01:52 -0400
Message-Id: <20230731150152.514984-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690816359; x=1722352359;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mfg0fFT8pyAiL4Y8zY4UgK4DPBkftWARxayvh6W0eC4=;
 b=WaAmeyVEhrlbAYXOu3/cSoVI+svh9iFX7PkdoXpXLapOZBSBvI4WUdIl
 fO3S/Jr1Kvb+E096/u5+xO/08sKUh1DklgrUwdUvwAqLXLR98DW687q4b
 +hNEGGcozQh6kakcsyx0oVOPXuWWjEdK+TJ66vZyQD/Df4pfseISieTh+
 c4s0KtujPx4trrZZ4IkVbIbRgNlr4M9ddcEQj8npmX/iNZGNTdKnuRn0M
 wFmXMggO2zl99kTEdlj23KWnJ66o4LK84rcgwVabSU4jt4bHdpT4naogi
 X+prq3uHMV/W4v+ZduBoKRnKAMEPIkaUiYuLY2zm/Awd7OrOv+2D0BmuL
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WaAmeyVE
Subject: [Intel-wired-lan] [PATCH iwl-next v4] ice: drop two params from
 ice_aq_alloc_free_res()
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
Cc: Henry Tieman <henry.w.tieman@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Drop @num_entries and @cd params, latter of which was always NULL.

Number of entities to alloc is passed in internal buffer, the outer layer
(that @num_entries was assigned to) meaning is closer to "the number of
requests", which was =1 in all cases.
ice_free_hw_res() was always called with 1 as its @num arg.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

--

v4 (after longer break): rebase and cover recent LAG related code;
	drop minor patch from the series, to be sent later;
v3: v2 was broken (code from v1 sent), proper "logic fix" vs v1 here;
v2: fixed logic, I was fooled.
---
 drivers/net/ethernet/intel/ice/ice_common.c | 24 +++++++--------------
 drivers/net/ethernet/intel/ice/ice_common.h |  7 +++---
 drivers/net/ethernet/intel/ice/ice_lag.c    |  9 ++++----
 drivers/net/ethernet/intel/ice/ice_switch.c | 16 ++++++--------
 4 files changed, 22 insertions(+), 34 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index fef66b447677..a0e43599eb55 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2000,37 +2000,31 @@ void ice_release_res(struct ice_hw *hw, enum ice_aq_res_ids res)
 /**
  * ice_aq_alloc_free_res - command to allocate/free resources
  * @hw: pointer to the HW struct
- * @num_entries: number of resource entries in buffer
  * @buf: Indirect buffer to hold data parameters and response
  * @buf_size: size of buffer for indirect commands
  * @opc: pass in the command opcode
- * @cd: pointer to command details structure or NULL
  *
  * Helper function to allocate/free resources using the admin queue commands
  */
-int
-ice_aq_alloc_free_res(struct ice_hw *hw, u16 num_entries,
-		      struct ice_aqc_alloc_free_res_elem *buf, u16 buf_size,
-		      enum ice_adminq_opc opc, struct ice_sq_cd *cd)
+int ice_aq_alloc_free_res(struct ice_hw *hw,
+			  struct ice_aqc_alloc_free_res_elem *buf, u16 buf_size,
+			  enum ice_adminq_opc opc)
 {
 	struct ice_aqc_alloc_free_res_cmd *cmd;
 	struct ice_aq_desc desc;
 
 	cmd = &desc.params.sw_res_ctrl;
 
-	if (!buf)
-		return -EINVAL;
-
-	if (buf_size < flex_array_size(buf, elem, num_entries))
+	if (!buf || buf_size < flex_array_size(buf, elem, 1))
 		return -EINVAL;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, opc);
 
 	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
 
-	cmd->num_entries = cpu_to_le16(num_entries);
+	cmd->num_entries = cpu_to_le16(1);
 
-	return ice_aq_send_cmd(hw, &desc, buf, buf_size, cd);
+	return ice_aq_send_cmd(hw, &desc, buf, buf_size, NULL);
 }
 
 /**
@@ -2060,8 +2054,7 @@ ice_alloc_hw_res(struct ice_hw *hw, u16 type, u16 num, bool btm, u16 *res)
 	if (btm)
 		buf->res_type |= cpu_to_le16(ICE_AQC_RES_TYPE_FLAG_SCAN_BOTTOM);
 
-	status = ice_aq_alloc_free_res(hw, 1, buf, buf_len,
-				       ice_aqc_opc_alloc_res, NULL);
+	status = ice_aq_alloc_free_res(hw, buf, buf_len, ice_aqc_opc_alloc_res);
 	if (status)
 		goto ice_alloc_res_exit;
 
@@ -2095,8 +2088,7 @@ int ice_free_hw_res(struct ice_hw *hw, u16 type, u16 num, u16 *res)
 	buf->res_type = cpu_to_le16(type);
 	memcpy(buf->elem, res, sizeof(*buf->elem) * num);
 
-	status = ice_aq_alloc_free_res(hw, num, buf, buf_len,
-				       ice_aqc_opc_free_res, NULL);
+	status = ice_aq_alloc_free_res(hw, buf, buf_len, ice_aqc_opc_free_res);
 	if (status)
 		ice_debug(hw, ICE_DBG_SW, "CQ CMD Buffer:\n");
 
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 5a016b16b9ba..514d06ab925c 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -39,10 +39,9 @@ int
 ice_alloc_hw_res(struct ice_hw *hw, u16 type, u16 num, bool btm, u16 *res);
 int
 ice_free_hw_res(struct ice_hw *hw, u16 type, u16 num, u16 *res);
-int
-ice_aq_alloc_free_res(struct ice_hw *hw, u16 num_entries,
-		      struct ice_aqc_alloc_free_res_elem *buf, u16 buf_size,
-		      enum ice_adminq_opc opc, struct ice_sq_cd *cd);
+int ice_aq_alloc_free_res(struct ice_hw *hw,
+			  struct ice_aqc_alloc_free_res_elem *buf, u16 buf_size,
+			  enum ice_adminq_opc opc);
 bool ice_is_sbq_supported(struct ice_hw *hw);
 struct ice_ctl_q_info *ice_get_sbq(struct ice_hw *hw);
 int
diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 36b7044717e8..bdd9166e6bf5 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -985,9 +985,8 @@ ice_lag_set_swid(u16 primary_swid, struct ice_lag *local_lag,
 	/* if unlinnking need to free the shared resource */
 	if (!link && local_lag->bond_swid) {
 		buf->elem[0].e.sw_resp = cpu_to_le16(local_lag->bond_swid);
-		status = ice_aq_alloc_free_res(&local_lag->pf->hw, 1, buf,
-					       buf_len, ice_aqc_opc_free_res,
-					       NULL);
+		status = ice_aq_alloc_free_res(&local_lag->pf->hw, buf,
+					       buf_len, ice_aqc_opc_free_res);
 		if (status)
 			dev_err(ice_pf_to_dev(local_lag->pf), "Error freeing SWID during LAG unlink\n");
 		local_lag->bond_swid = 0;
@@ -1004,8 +1003,8 @@ ice_lag_set_swid(u16 primary_swid, struct ice_lag *local_lag,
 			cpu_to_le16(local_lag->pf->hw.port_info->sw_id);
 	}
 
-	status = ice_aq_alloc_free_res(&local_lag->pf->hw, 1, buf, buf_len,
-				       ice_aqc_opc_alloc_res, NULL);
+	status = ice_aq_alloc_free_res(&local_lag->pf->hw, buf, buf_len,
+				       ice_aqc_opc_alloc_res);
 	if (status)
 		dev_err(ice_pf_to_dev(local_lag->pf), "Error subscribing to SWID 0x%04X\n",
 			local_lag->bond_swid);
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index a7afb612fe32..8d14e9324b9e 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -1847,7 +1847,7 @@ ice_aq_alloc_free_vsi_list(struct ice_hw *hw, u16 *vsi_list_id,
 	if (opc == ice_aqc_opc_free_res)
 		sw_buf->elem[0].e.sw_resp = cpu_to_le16(*vsi_list_id);
 
-	status = ice_aq_alloc_free_res(hw, 1, sw_buf, buf_len, opc, NULL);
+	status = ice_aq_alloc_free_res(hw, sw_buf, buf_len, opc);
 	if (status)
 		goto ice_aq_alloc_free_vsi_list_exit;
 
@@ -2101,8 +2101,8 @@ int ice_alloc_recipe(struct ice_hw *hw, u16 *rid)
 	sw_buf->res_type = cpu_to_le16((ICE_AQC_RES_TYPE_RECIPE <<
 					ICE_AQC_RES_TYPE_S) |
 					ICE_AQC_RES_TYPE_FLAG_SHARED);
-	status = ice_aq_alloc_free_res(hw, 1, sw_buf, buf_len,
-				       ice_aqc_opc_alloc_res, NULL);
+	status = ice_aq_alloc_free_res(hw, sw_buf, buf_len,
+				       ice_aqc_opc_alloc_res);
 	if (!status)
 		*rid = le16_to_cpu(sw_buf->elem[0].e.sw_resp);
 	kfree(sw_buf);
@@ -4496,8 +4496,7 @@ ice_alloc_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
 	buf->res_type = cpu_to_le16(((type << ICE_AQC_RES_TYPE_S) &
 				      ICE_AQC_RES_TYPE_M) | alloc_shared);
 
-	status = ice_aq_alloc_free_res(hw, 1, buf, buf_len,
-				       ice_aqc_opc_alloc_res, NULL);
+	status = ice_aq_alloc_free_res(hw, buf, buf_len, ice_aqc_opc_alloc_res);
 	if (status)
 		goto exit;
 
@@ -4535,8 +4534,7 @@ ice_free_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
 				      ICE_AQC_RES_TYPE_M) | alloc_shared);
 	buf->elem[0].e.sw_resp = cpu_to_le16(counter_id);
 
-	status = ice_aq_alloc_free_res(hw, 1, buf, buf_len,
-				       ice_aqc_opc_free_res, NULL);
+	status = ice_aq_alloc_free_res(hw, buf, buf_len, ice_aqc_opc_free_res);
 	if (status)
 		ice_debug(hw, ICE_DBG_SW, "counter resource could not be freed\n");
 
@@ -4578,8 +4576,8 @@ int ice_share_res(struct ice_hw *hw, u16 type, u8 shared, u16 res_id)
 					    ~ICE_AQC_RES_TYPE_FLAG_SHARED);
 
 	buf->elem[0].e.sw_resp = cpu_to_le16(res_id);
-	status = ice_aq_alloc_free_res(hw, 1, buf, buf_len,
-				       ice_aqc_opc_share_res, NULL);
+	status = ice_aq_alloc_free_res(hw, buf, buf_len,
+				       ice_aqc_opc_share_res);
 	if (status)
 		ice_debug(hw, ICE_DBG_SW, "Could not set resource type %u id %u to %s\n",
 			  type, res_id, shared ? "SHARED" : "DEDICATED");

base-commit: 79dc5308c824de000283d82a4496567bbedae5db
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
