Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E68552BBB3A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Nov 2020 01:46:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A520585772;
	Sat, 21 Nov 2020 00:46:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TS6LGdyD34SG; Sat, 21 Nov 2020 00:46:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A060D873FB;
	Sat, 21 Nov 2020 00:46:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BD6661BF475
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:46:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B6E8E2E145
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:46:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mmLauGZ1ERtU for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Nov 2020 00:46:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id C5C2E2E133
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:46:35 +0000 (UTC)
IronPort-SDR: sW6fcsyORcHvRg7hvoDbSbuGEgUTOLBNHm8h9wxSqd0cY4swWugRE5aSbqK1Qt4wLcZUJXrDrm
 C96mk5fWpTcw==
X-IronPort-AV: E=McAfee;i="6000,8403,9811"; a="235707873"
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="235707873"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 16:46:34 -0800
IronPort-SDR: jyQfgqABaf+/l3eYF4GupOAiQvV2K2aceoE3CmZTQWroRK0rpO+mcXwxsBb3b17yrQHYckYVZ3
 vmlWVKoeyZyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="331520168"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga006.jf.intel.com with ESMTP; 20 Nov 2020 16:46:33 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Nov 2020 16:39:37 -0800
Message-Id: <20201121003938.48514-13-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201121003938.48514-1-anthony.l.nguyen@intel.com>
References: <20201121003938.48514-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S54 13/14] ice: remove unnecessary casts
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Bruce Allan <bruce.w.allan@intel.com>

Casting a void * rvalue in an assignment is unnecessary in C; remove the
casts.

Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c    |  6 +++---
 drivers/net/ethernet/intel/ice/ice_controlq.c  |  4 ++--
 drivers/net/ethernet/intel/ice/ice_flex_pipe.c | 10 +++++-----
 drivers/net/ethernet/intel/ice/ice_switch.c    |  2 +-
 4 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 9eb0be73cb7b..d4caedae112b 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -110,7 +110,7 @@ ice_aq_manage_mac_read(struct ice_hw *hw, void *buf, u16 buf_size,
 	if (status)
 		return status;
 
-	resp = (struct ice_aqc_manage_mac_read_resp *)buf;
+	resp = buf;
 	flags = le16_to_cpu(cmd->flags) & ICE_AQC_MAN_MAC_READ_M;
 
 	if (!(flags & ICE_AQC_MAN_MAC_LAN_ADDR_VALID)) {
@@ -1979,7 +1979,7 @@ ice_parse_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
 	struct ice_aqc_list_caps_elem *cap_resp;
 	u32 i;
 
-	cap_resp = (struct ice_aqc_list_caps_elem *)buf;
+	cap_resp = buf;
 
 	memset(func_p, 0, sizeof(*func_p));
 
@@ -2109,7 +2109,7 @@ ice_parse_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
 	struct ice_aqc_list_caps_elem *cap_resp;
 	u32 i;
 
-	cap_resp = (struct ice_aqc_list_caps_elem *)buf;
+	cap_resp = buf;
 
 	memset(dev_p, 0, sizeof(*dev_p));
 
diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
index 4db12d1f5808..b2d8a5932b1d 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.c
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
@@ -838,7 +838,7 @@ static u16 ice_clean_sq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
  */
 static void ice_debug_cq(struct ice_hw *hw, void *desc, void *buf, u16 buf_len)
 {
-	struct ice_aq_desc *cq_desc = (struct ice_aq_desc *)desc;
+	struct ice_aq_desc *cq_desc = desc;
 	u16 len;
 
 	if (!IS_ENABLED(CONFIG_DYNAMIC_DEBUG) &&
@@ -868,7 +868,7 @@ static void ice_debug_cq(struct ice_hw *hw, void *desc, void *buf, u16 buf_len)
 		if (buf_len < len)
 			len = buf_len;
 
-		ice_debug_array(hw, ICE_DBG_AQ_DESC_BUF, 16, 1, (u8 *)buf, len);
+		ice_debug_array(hw, ICE_DBG_AQ_DESC_BUF, 16, 1, buf, len);
 	}
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index 15ac977d2a8e..fb0390e10659 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -2733,7 +2733,7 @@ static void ice_fill_tbl(struct ice_hw *hw, enum ice_block block_id, u32 sid)
 		case ICE_SID_XLT1_RSS:
 		case ICE_SID_XLT1_ACL:
 		case ICE_SID_XLT1_PE:
-			xlt1 = (struct ice_xlt1_section *)sect;
+			xlt1 = sect;
 			src = xlt1->value;
 			sect_len = le16_to_cpu(xlt1->count) *
 				sizeof(*hw->blk[block_id].xlt1.t);
@@ -2746,7 +2746,7 @@ static void ice_fill_tbl(struct ice_hw *hw, enum ice_block block_id, u32 sid)
 		case ICE_SID_XLT2_RSS:
 		case ICE_SID_XLT2_ACL:
 		case ICE_SID_XLT2_PE:
-			xlt2 = (struct ice_xlt2_section *)sect;
+			xlt2 = sect;
 			src = (__force u8 *)xlt2->value;
 			sect_len = le16_to_cpu(xlt2->count) *
 				sizeof(*hw->blk[block_id].xlt2.t);
@@ -2759,7 +2759,7 @@ static void ice_fill_tbl(struct ice_hw *hw, enum ice_block block_id, u32 sid)
 		case ICE_SID_PROFID_TCAM_RSS:
 		case ICE_SID_PROFID_TCAM_ACL:
 		case ICE_SID_PROFID_TCAM_PE:
-			pid = (struct ice_prof_id_section *)sect;
+			pid = sect;
 			src = (u8 *)pid->entry;
 			sect_len = le16_to_cpu(pid->count) *
 				sizeof(*hw->blk[block_id].prof.t);
@@ -2772,7 +2772,7 @@ static void ice_fill_tbl(struct ice_hw *hw, enum ice_block block_id, u32 sid)
 		case ICE_SID_PROFID_REDIR_RSS:
 		case ICE_SID_PROFID_REDIR_ACL:
 		case ICE_SID_PROFID_REDIR_PE:
-			pr = (struct ice_prof_redir_section *)sect;
+			pr = sect;
 			src = pr->redir_value;
 			sect_len = le16_to_cpu(pr->count) *
 				sizeof(*hw->blk[block_id].prof_redir.t);
@@ -2785,7 +2785,7 @@ static void ice_fill_tbl(struct ice_hw *hw, enum ice_block block_id, u32 sid)
 		case ICE_SID_FLD_VEC_RSS:
 		case ICE_SID_FLD_VEC_ACL:
 		case ICE_SID_FLD_VEC_PE:
-			es = (struct ice_sw_fv_section *)sect;
+			es = sect;
 			src = (u8 *)es->fv;
 			sect_len = (u32)(le16_to_cpu(es->count) *
 					 hw->blk[block_id].es.fvw) *
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index c33612132ddf..67c965a3f5d2 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -603,7 +603,7 @@ enum ice_status ice_get_initial_sw_cfg(struct ice_hw *hw)
 		}
 	} while (req_desc && !status);
 
-	devm_kfree(ice_hw_to_dev(hw), (void *)rbuf);
+	devm_kfree(ice_hw_to_dev(hw), rbuf);
 	return status;
 }
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
