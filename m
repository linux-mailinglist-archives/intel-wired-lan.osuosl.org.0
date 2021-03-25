Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8825B349C82
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Mar 2021 23:45:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3171284B54;
	Thu, 25 Mar 2021 22:45:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cbPrI4fF4tzb; Thu, 25 Mar 2021 22:45:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F31684B53;
	Thu, 25 Mar 2021 22:45:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1112A1BF909
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 20F5784B54
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EYwpEbuUBcH6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Mar 2021 22:45:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 69E3884B58
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:04 +0000 (UTC)
IronPort-SDR: K1ZAvHE1nv8Vw7YGSwiYsK5UdGxb9iTcoNhdLriiKqvX+BvfPOgFo67zQ57ToElQGrGl9XWEHd
 z0KReMcl1XWA==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="255031232"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="255031232"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 15:45:01 -0700
IronPort-SDR: 4MqUqRDQYYMxx4ZNs4vBP/9WyPCY6T2IOvYGoVIBSEyxz2kgKitxHWTrktyfRNemOn7dHjOzsw
 WM1BQ0VzJ7vQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="375251362"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga003.jf.intel.com with ESMTP; 25 Mar 2021 15:45:01 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Mar 2021 15:35:04 -0700
Message-Id: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S57 01/14] ice: Re-send some AQ commands,
 as result of EBUSY AQ error
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

From: Chinh T Cao <chinh.t.cao@intel.com>

Retry sending some AQ commands, as result of EBUSY AQ error.
ice_aqc_opc_get_link_topo
ice_aqc_opc_lldp_stop
ice_aqc_opc_lldp_start
ice_aqc_opc_lldp_filter_ctrl

This change follows the latest guidelines from HW team. It is
better to retry the same AQ command several times, as the result
of EBUSY, instead of returning error to the caller right away.

Signed-off-by: Chinh T Cao <chinh.t.cao@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c   | 81 ++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_common.h   |  3 +
 drivers/net/ethernet/intel/ice/ice_controlq.c |  2 +-
 3 files changed, 84 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 34fddbc30822..f1573d653321 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1292,6 +1292,85 @@ const struct ice_ctx_ele ice_tlan_ctx_info[] = {
  */
 DEFINE_MUTEX(ice_global_cfg_lock_sw);
 
+/**
+ * ice_should_retry_sq_send_cmd
+ * @opcode: AQ opcode
+ *
+ * Decide if we should retry the send command routine for the ATQ, depending
+ * on the opcode.
+ */
+static bool ice_should_retry_sq_send_cmd(u16 opcode)
+{
+	switch (opcode) {
+	case ice_aqc_opc_get_link_topo:
+	case ice_aqc_opc_lldp_stop:
+	case ice_aqc_opc_lldp_start:
+	case ice_aqc_opc_lldp_filter_ctrl:
+		return true;
+	}
+
+	return false;
+}
+
+/**
+ * ice_sq_send_cmd_retry - send command to Control Queue (ATQ)
+ * @hw: pointer to the HW struct
+ * @cq: pointer to the specific Control queue
+ * @desc: prefilled descriptor describing the command
+ * @buf: buffer to use for indirect commands (or NULL for direct commands)
+ * @buf_size: size of buffer for indirect commands (or 0 for direct commands)
+ * @cd: pointer to command details structure
+ *
+ * Retry sending the FW Admin Queue command, multiple times, to the FW Admin
+ * Queue if the EBUSY AQ error is returned.
+ */
+static enum ice_status
+ice_sq_send_cmd_retry(struct ice_hw *hw, struct ice_ctl_q_info *cq,
+		      struct ice_aq_desc *desc, void *buf, u16 buf_size,
+		      struct ice_sq_cd *cd)
+{
+	struct ice_aq_desc desc_cpy;
+	enum ice_status status;
+	bool is_cmd_for_retry;
+	u8 *buf_cpy = NULL;
+	u8 idx = 0;
+	u16 opcode;
+
+	opcode = le16_to_cpu(desc->opcode);
+	is_cmd_for_retry = ice_should_retry_sq_send_cmd(opcode);
+	memset(&desc_cpy, 0, sizeof(desc_cpy));
+
+	if (is_cmd_for_retry) {
+		if (buf) {
+			buf_cpy = kzalloc(buf_size, GFP_KERNEL);
+			if (!buf_cpy)
+				return ICE_ERR_NO_MEMORY;
+		}
+
+		memcpy(&desc_cpy, desc, sizeof(desc_cpy));
+	}
+
+	do {
+		status = ice_sq_send_cmd(hw, cq, desc, buf, buf_size, cd);
+
+		if (!is_cmd_for_retry || !status ||
+		    hw->adminq.sq_last_status != ICE_AQ_RC_EBUSY)
+			break;
+
+		if (buf_cpy)
+			memcpy(buf, buf_cpy, buf_size);
+
+		memcpy(desc, &desc_cpy, sizeof(desc_cpy));
+
+		mdelay(ICE_SQ_SEND_DELAY_TIME_MS);
+
+	} while (++idx < ICE_SQ_SEND_MAX_EXECUTE);
+
+	kfree(buf_cpy);
+
+	return status;
+}
+
 /**
  * ice_aq_send_cmd - send FW Admin Queue command to FW Admin Queue
  * @hw: pointer to the HW struct
@@ -1333,7 +1412,7 @@ ice_aq_send_cmd(struct ice_hw *hw, struct ice_aq_desc *desc, void *buf,
 		break;
 	}
 
-	status = ice_sq_send_cmd(hw, &hw->adminq, desc, buf, buf_size, cd);
+	status = ice_sq_send_cmd_retry(hw, &hw->adminq, desc, buf, buf_size, cd);
 	if (lock_acquired)
 		mutex_unlock(&ice_global_cfg_lock_sw);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 81fd69cb1485..d14406b11c92 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -11,6 +11,9 @@
 #include "ice_switch.h"
 #include <linux/avf/virtchnl.h>
 
+#define ICE_SQ_SEND_DELAY_TIME_MS	10
+#define ICE_SQ_SEND_MAX_EXECUTE		3
+
 enum ice_status ice_init_hw(struct ice_hw *hw);
 void ice_deinit_hw(struct ice_hw *hw);
 enum ice_status ice_check_reset(struct ice_hw *hw);
diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
index b2d8a5932b1d..0f207a42ea77 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.c
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
@@ -892,7 +892,7 @@ static bool ice_sq_done(struct ice_hw *hw, struct ice_ctl_q_info *cq)
  * ice_sq_send_cmd - send command to Control Queue (ATQ)
  * @hw: pointer to the HW struct
  * @cq: pointer to the specific Control queue
- * @desc: prefilled descriptor describing the command (non DMA mem)
+ * @desc: prefilled descriptor describing the command
  * @buf: buffer to use for indirect commands (or NULL for direct commands)
  * @buf_size: size of buffer for indirect commands (or 0 for direct commands)
  * @cd: pointer to command details structure
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
