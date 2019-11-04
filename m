Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2AD0EE6D6
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2019 19:01:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2FFC78A9EE;
	Mon,  4 Nov 2019 18:01:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v0WSPxXXE9dL; Mon,  4 Nov 2019 18:01:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CC80B8A9A7;
	Mon,  4 Nov 2019 18:01:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AD9061BF388
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2019 18:01:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A139F8A9E8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2019 18:01:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A4Wi71AW-93V for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2019 18:01:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A07608A9EE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2019 18:01:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Nov 2019 10:01:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,267,1569308400"; d="scan'208";a="200098411"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga008.fm.intel.com with ESMTP; 04 Nov 2019 10:01:26 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 Nov 2019 01:31:07 -0800
Message-Id: <20191104093108.21542-14-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191104093108.21542-1-anthony.l.nguyen@intel.com>
References: <20191104093108.21542-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S32 v2 14/15] ice: use more accurate
 ICE_DBG mask types
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

From: Jacob Keller <jacob.e.keller@intel.com>

ice_debug_cq is passed a mask which is always ICE_DBG_AQ_CMD. Modify this
function, removing the mask parameter entirely, and directly use the more
appropriate ICE_DBG_AQ_DESC and ICE_DBG_AQ_DESC_BUF.

The function is only called from ice_controlq.c, and has no
other callers outside of that file. Move it and mark it static to avoid
namespace pollution.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c   | 50 ----------------
 drivers/net/ethernet/intel/ice/ice_common.h   |  2 -
 drivers/net/ethernet/intel/ice/ice_controlq.c | 57 +++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_type.h     |  2 +
 4 files changed, 53 insertions(+), 58 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index eb01c218c596..2c0dd2e2c232 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1273,56 +1273,6 @@ const struct ice_ctx_ele ice_tlan_ctx_info[] = {
 	{ 0 }
 };
 
-/**
- * ice_debug_cq
- * @hw: pointer to the hardware structure
- * @mask: debug mask
- * @desc: pointer to control queue descriptor
- * @buf: pointer to command buffer
- * @buf_len: max length of buf
- *
- * Dumps debug log about control command with descriptor contents.
- */
-void
-ice_debug_cq(struct ice_hw *hw, u32 __maybe_unused mask, void *desc, void *buf,
-	     u16 buf_len)
-{
-	struct ice_aq_desc *cq_desc = (struct ice_aq_desc *)desc;
-	u16 len;
-
-#ifndef CONFIG_DYNAMIC_DEBUG
-	if (!(mask & hw->debug_mask))
-		return;
-#endif
-
-	if (!desc)
-		return;
-
-	len = le16_to_cpu(cq_desc->datalen);
-
-	ice_debug(hw, mask,
-		  "CQ CMD: opcode 0x%04X, flags 0x%04X, datalen 0x%04X, retval 0x%04X\n",
-		  le16_to_cpu(cq_desc->opcode),
-		  le16_to_cpu(cq_desc->flags),
-		  le16_to_cpu(cq_desc->datalen), le16_to_cpu(cq_desc->retval));
-	ice_debug(hw, mask, "\tcookie (h,l) 0x%08X 0x%08X\n",
-		  le32_to_cpu(cq_desc->cookie_high),
-		  le32_to_cpu(cq_desc->cookie_low));
-	ice_debug(hw, mask, "\tparam (0,1)  0x%08X 0x%08X\n",
-		  le32_to_cpu(cq_desc->params.generic.param0),
-		  le32_to_cpu(cq_desc->params.generic.param1));
-	ice_debug(hw, mask, "\taddr (h,l)   0x%08X 0x%08X\n",
-		  le32_to_cpu(cq_desc->params.generic.addr_high),
-		  le32_to_cpu(cq_desc->params.generic.addr_low));
-	if (buf && cq_desc->datalen != 0) {
-		ice_debug(hw, mask, "Buffer:\n");
-		if (buf_len < len)
-			len = buf_len;
-
-		ice_debug_array(hw, mask, 16, 1, (u8 *)buf, len);
-	}
-}
-
 /* FW Admin Queue command wrappers */
 
 /* Software lock/mutex that is meant to be held while the Global Config Lock
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index c17c5724d33b..63d7963221a0 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -20,8 +20,6 @@ enum ice_fw_modes {
 
 enum ice_status ice_nvm_validate_checksum(struct ice_hw *hw);
 
-void
-ice_debug_cq(struct ice_hw *hw, u32 mask, void *desc, void *buf, u16 buf_len);
 enum ice_status ice_init_hw(struct ice_hw *hw);
 void ice_deinit_hw(struct ice_hw *hw);
 enum ice_status
diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
index c68709c7ef81..947728aada46 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.c
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
@@ -809,6 +809,52 @@ static u16 ice_clean_sq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 	return ICE_CTL_Q_DESC_UNUSED(sq);
 }
 
+/**
+ * ice_debug_cq
+ * @hw: pointer to the hardware structure
+ * @desc: pointer to control queue descriptor
+ * @buf: pointer to command buffer
+ * @buf_len: max length of buf
+ *
+ * Dumps debug log about control command with descriptor contents.
+ */
+static void ice_debug_cq(struct ice_hw *hw, void *desc, void *buf, u16 buf_len)
+{
+	struct ice_aq_desc *cq_desc = (struct ice_aq_desc *)desc;
+	u16 len;
+
+	if (!IS_ENABLED(CONFIG_DYNAMIC_DEBUG) &&
+	    !((ICE_DBG_AQ_DESC | ICE_DBG_AQ_DESC_BUF) & hw->debug_mask))
+		return;
+
+	if (!desc)
+		return;
+
+	len = le16_to_cpu(cq_desc->datalen);
+
+	ice_debug(hw, ICE_DBG_AQ_DESC,
+		  "CQ CMD: opcode 0x%04X, flags 0x%04X, datalen 0x%04X, retval 0x%04X\n",
+		  le16_to_cpu(cq_desc->opcode),
+		  le16_to_cpu(cq_desc->flags),
+		  le16_to_cpu(cq_desc->datalen), le16_to_cpu(cq_desc->retval));
+	ice_debug(hw, ICE_DBG_AQ_DESC, "\tcookie (h,l) 0x%08X 0x%08X\n",
+		  le32_to_cpu(cq_desc->cookie_high),
+		  le32_to_cpu(cq_desc->cookie_low));
+	ice_debug(hw, ICE_DBG_AQ_DESC, "\tparam (0,1)  0x%08X 0x%08X\n",
+		  le32_to_cpu(cq_desc->params.generic.param0),
+		  le32_to_cpu(cq_desc->params.generic.param1));
+	ice_debug(hw, ICE_DBG_AQ_DESC, "\taddr (h,l)   0x%08X 0x%08X\n",
+		  le32_to_cpu(cq_desc->params.generic.addr_high),
+		  le32_to_cpu(cq_desc->params.generic.addr_low));
+	if (buf && cq_desc->datalen != 0) {
+		ice_debug(hw, ICE_DBG_AQ_DESC_BUF, "Buffer:\n");
+		if (buf_len < len)
+			len = buf_len;
+
+		ice_debug_array(hw, ICE_DBG_AQ_DESC_BUF, 16, 1, (u8 *)buf, len);
+	}
+}
+
 /**
  * ice_sq_done - check if FW has processed the Admin Send Queue (ATQ)
  * @hw: pointer to the HW struct
@@ -934,10 +980,10 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 	}
 
 	/* Debug desc and buffer */
-	ice_debug(hw, ICE_DBG_AQ_MSG,
+	ice_debug(hw, ICE_DBG_AQ_DESC,
 		  "ATQ: Control Send queue desc and buffer:\n");
 
-	ice_debug_cq(hw, ICE_DBG_AQ_CMD, (void *)desc_on_ring, buf, buf_size);
+	ice_debug_cq(hw, (void *)desc_on_ring, buf, buf_size);
 
 	(cq->sq.next_to_use)++;
 	if (cq->sq.next_to_use == cq->sq.count)
@@ -986,7 +1032,7 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 	ice_debug(hw, ICE_DBG_AQ_MSG,
 		  "ATQ: desc and buffer writeback:\n");
 
-	ice_debug_cq(hw, ICE_DBG_AQ_CMD, (void *)desc, buf, buf_size);
+	ice_debug_cq(hw, (void *)desc, buf, buf_size);
 
 	/* save writeback AQ if requested */
 	if (details->wb_desc)
@@ -1084,10 +1130,9 @@ ice_clean_rq_elem(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 	if (e->msg_buf && e->msg_len)
 		memcpy(e->msg_buf, cq->rq.r.rq_bi[desc_idx].va, e->msg_len);
 
-	ice_debug(hw, ICE_DBG_AQ_MSG, "ARQ: desc and buffer:\n");
+	ice_debug(hw, ICE_DBG_AQ_DESC, "ARQ: desc and buffer:\n");
 
-	ice_debug_cq(hw, ICE_DBG_AQ_CMD, (void *)desc, e->msg_buf,
-		     cq->rq_buf_size);
+	ice_debug_cq(hw, (void *)desc, e->msg_buf, cq->rq_buf_size);
 
 	/* Restore the original datalen and buffer address in the desc,
 	 * FW updates datalen to indicate the event message size
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index d3d7049c97f0..eba8b04b8cbd 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -46,6 +46,8 @@ static inline u32 ice_round_to_num(u32 N, u32 R)
 #define ICE_DBG_PKG		BIT_ULL(16)
 #define ICE_DBG_RES		BIT_ULL(17)
 #define ICE_DBG_AQ_MSG		BIT_ULL(24)
+#define ICE_DBG_AQ_DESC		BIT_ULL(25)
+#define ICE_DBG_AQ_DESC_BUF	BIT_ULL(26)
 #define ICE_DBG_AQ_CMD		BIT_ULL(27)
 #define ICE_DBG_USER		BIT_ULL(31)
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
