Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3966448EA7D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jan 2022 14:20:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 241BE404F1;
	Fri, 14 Jan 2022 13:20:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FJhmFeJS-8xo; Fri, 14 Jan 2022 13:19:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 71D8D404B7;
	Fri, 14 Jan 2022 13:19:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 072C91BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 13:19:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E9F5560B4D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 13:19:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cwN8jXsC2aBP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jan 2022 13:19:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0F7F260034
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 13:19:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642166388; x=1673702388;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DZBJ5juzHqU6hpC2BYoWK45cI9IpdRVlmm6F+iwPzT0=;
 b=LjWPEpfDH/16OoMRsT+M0lS+NwTdlxHcQCqjRm6oD5CEA94D7m5TcLat
 Ea2qzL67cpWl63v3m60FYPwqXDEi1zQkfg1xd7M4nyIfLqQFH2uH4m4F0
 stjMPU/HPLg09ZiZHcopLpVQ7x0Hd4KiTxgp6H0/M2h/noR+6TG4RX1DC
 fz+33z7BeBnGgikYCwlx+q3Z3d9gIQF8Gqm7Z8idtNwvPdrMlULBpyNPL
 8y1AEzy4OJVoNy7tMfwcVnH6xK2DgIMM2q+GJq/Sb6/7UK2d2nbxPMG+3
 eiF33bjMU//JjedXOx7hRPP6Om69SVnDUGHzt8NrabGwPdCw26yjG5qj5 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="330591851"
X-IronPort-AV: E=Sophos;i="5.88,288,1635231600"; d="scan'208";a="330591851"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 05:19:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,288,1635231600"; d="scan'208";a="670851123"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by fmsmga001.fm.intel.com with ESMTP; 14 Jan 2022 05:19:46 -0800
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 14 Jan 2022 13:19:29 +0000
Message-Id: <20220114131931.346687-3-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220114131931.346687-1-jedrzej.jagielski@intel.com>
References: <20220114131931.346687-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 2/4] i40e: Add new versions of
 send ASQ command functions
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

ASQ send command functions are returning only i40e status codes
yet some calling functions also need Admin Queue status
that is stored in hw->aq.asq_last_status. Since hw object
is stored on a heap it introduces a possibility for
a race condition in access to hw if calling function is not
fast enough to read hw->aq.asq_last_status before next
send ASQ command is executed.

Add new versions of send ASQ command functions that return
Admin Queue status on the stack to avoid race conditions
in access to hw->aq.asq_last_status.
Add new _v2 version of i40e_aq_remove_macvlan that is using
new _v2 versions of ASQ send command functions and returns
the Admin Queue status on the stack.

Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_adminq.c | 92 +++++++++++++++++--
 drivers/net/ethernet/intel/i40e/i40e_common.c | 46 ++++++++++
 .../net/ethernet/intel/i40e/i40e_prototype.h  | 20 ++++
 3 files changed, 150 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.c b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
index 7abef88801fb..42439f725aa4 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
@@ -769,7 +769,7 @@ static bool i40e_asq_done(struct i40e_hw *hw)
 }
 
 /**
- *  i40e_asq_send_command_atomic - send command to Admin Queue
+ *  i40e_asq_send_command_atomic_exec - send command to Admin Queue
  *  @hw: pointer to the hw struct
  *  @desc: prefilled descriptor describing the command (non DMA mem)
  *  @buff: buffer to use for indirect commands
@@ -780,11 +780,13 @@ static bool i40e_asq_done(struct i40e_hw *hw)
  *  This is the main send command driver routine for the Admin Queue send
  *  queue.  It runs the queue, cleans the queue, etc
  **/
-i40e_status
-i40e_asq_send_command_atomic(struct i40e_hw *hw, struct i40e_aq_desc *desc,
-			     void *buff, /* can be NULL */ u16  buff_size,
-			     struct i40e_asq_cmd_details *cmd_details,
-			     bool is_atomic_context)
+static i40e_status
+i40e_asq_send_command_atomic_exec(struct i40e_hw *hw,
+				  struct i40e_aq_desc *desc,
+				  void *buff, /* can be NULL */
+				  u16  buff_size,
+				  struct i40e_asq_cmd_details *cmd_details,
+				  bool is_atomic_context)
 {
 	i40e_status status = 0;
 	struct i40e_dma_mem *dma_buff = NULL;
@@ -794,8 +796,6 @@ i40e_asq_send_command_atomic(struct i40e_hw *hw, struct i40e_aq_desc *desc,
 	u16  retval = 0;
 	u32  val = 0;
 
-	mutex_lock(&hw->aq.asq_mutex);
-
 	if (hw->aq.asq.count == 0) {
 		i40e_debug(hw, I40E_DEBUG_AQ_MESSAGE,
 			   "AQTX: Admin queue not initialized.\n");
@@ -969,6 +969,36 @@ i40e_asq_send_command_atomic(struct i40e_hw *hw, struct i40e_aq_desc *desc,
 	}
 
 asq_send_command_error:
+	return status;
+}
+
+/**
+ *  i40e_asq_send_command_atomic - send command to Admin Queue
+ *  @hw: pointer to the hw struct
+ *  @desc: prefilled descriptor describing the command (non DMA mem)
+ *  @buff: buffer to use for indirect commands
+ *  @buff_size: size of buffer for indirect commands
+ *  @cmd_details: pointer to command details structure
+ *  @is_atomic_context: is the function called in an atomic context?
+ *
+ *  Acquires the lock and calls the main send command execution
+ *  routine.
+ **/
+i40e_status
+i40e_asq_send_command_atomic(struct i40e_hw *hw,
+			     struct i40e_aq_desc *desc,
+			     void *buff, /* can be NULL */
+			     u16  buff_size,
+			     struct i40e_asq_cmd_details *cmd_details,
+			     bool is_atomic_context)
+{
+	i40e_status status;
+
+	mutex_lock(&hw->aq.asq_mutex);
+	status = i40e_asq_send_command_atomic_exec(hw, desc, buff, buff_size,
+						   cmd_details,
+						   is_atomic_context);
+
 	mutex_unlock(&hw->aq.asq_mutex);
 	return status;
 }
@@ -982,6 +1012,52 @@ i40e_asq_send_command(struct i40e_hw *hw, struct i40e_aq_desc *desc,
 					    cmd_details, false);
 }
 
+/**
+ *  i40e_asq_send_command_atomic_v2 - send command to Admin Queue
+ *  @hw: pointer to the hw struct
+ *  @desc: prefilled descriptor describing the command (non DMA mem)
+ *  @buff: buffer to use for indirect commands
+ *  @buff_size: size of buffer for indirect commands
+ *  @cmd_details: pointer to command details structure
+ *  @is_atomic_context: is the function called in an atomic context?
+ *  @aq_status: pointer to Admin Queue status return value
+ *
+ *  Acquires the lock and calls the main send command execution
+ *  routine. Returns the last Admin Queue status in aq_status
+ *  to avoid race conditions in access to hw->aq.asq_last_status.
+ **/
+i40e_status
+i40e_asq_send_command_atomic_v2(struct i40e_hw *hw,
+				struct i40e_aq_desc *desc,
+				void *buff, /* can be NULL */
+				u16  buff_size,
+				struct i40e_asq_cmd_details *cmd_details,
+				bool is_atomic_context,
+				enum i40e_admin_queue_err *aq_status)
+{
+	i40e_status status;
+
+	mutex_lock(&hw->aq.asq_mutex);
+	status = i40e_asq_send_command_atomic_exec(hw, desc, buff,
+						   buff_size,
+						   cmd_details,
+						   is_atomic_context);
+	if (aq_status)
+		*aq_status = hw->aq.asq_last_status;
+	mutex_unlock(&hw->aq.asq_mutex);
+	return status;
+}
+
+i40e_status
+i40e_asq_send_command_v2(struct i40e_hw *hw, struct i40e_aq_desc *desc,
+			 void *buff, /* can be NULL */ u16  buff_size,
+			 struct i40e_asq_cmd_details *cmd_details,
+			 enum i40e_admin_queue_err *aq_status)
+{
+	return i40e_asq_send_command_atomic_v2(hw, desc, buff, buff_size,
+					       cmd_details, true, aq_status);
+}
+
 /**
  *  i40e_fill_default_direct_cmd_desc - AQ descriptor helper function
  *  @desc:     pointer to the temp descriptor (non DMA mem)
diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index e830987a8c6d..d3e2b3005f86 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -2723,6 +2723,52 @@ i40e_status i40e_aq_remove_macvlan(struct i40e_hw *hw, u16 seid,
 	return status;
 }
 
+/**
+ * i40e_aq_remove_macvlan_v2
+ * @hw: pointer to the hw struct
+ * @seid: VSI for the mac address
+ * @mv_list: list of macvlans to be removed
+ * @count: length of the list
+ * @cmd_details: pointer to command details structure or NULL
+ * @aq_status: pointer to Admin Queue status return value
+ *
+ * Remove MAC/VLAN addresses from the HW filtering.
+ * The _v2 version returns the last Admin Queue status in aq_status
+ * to avoid race conditions in access to hw->aq.asq_last_status.
+ * It also calls _v2 versions of asq_send_command functions to
+ * get the aq_status on the stack.
+ **/
+i40e_status
+i40e_aq_remove_macvlan_v2(struct i40e_hw *hw, u16 seid,
+			  struct i40e_aqc_remove_macvlan_element_data *mv_list,
+			  u16 count, struct i40e_asq_cmd_details *cmd_details,
+			  enum i40e_admin_queue_err *aq_status)
+{
+	struct i40e_aqc_macvlan *cmd;
+	struct i40e_aq_desc desc;
+	u16 buf_size;
+
+	if (count == 0 || !mv_list || !hw)
+		return I40E_ERR_PARAM;
+
+	buf_size = count * sizeof(*mv_list);
+
+	/* prep the rest of the request */
+	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_remove_macvlan);
+	cmd = (struct i40e_aqc_macvlan *)&desc.params.raw;
+	cmd->num_addresses = cpu_to_le16(count);
+	cmd->seid[0] = cpu_to_le16(I40E_AQC_MACVLAN_CMD_SEID_VALID | seid);
+	cmd->seid[1] = 0;
+	cmd->seid[2] = 0;
+
+	desc.flags |= cpu_to_le16((u16)(I40E_AQ_FLAG_BUF | I40E_AQ_FLAG_RD));
+	if (buf_size > I40E_AQ_LARGE_BUF)
+		desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_LB);
+
+	return i40e_asq_send_command_atomic_v2(hw, &desc, mv_list, buf_size,
+						 cmd_details, true, aq_status);
+}
+
 /**
  * i40e_mirrorrule_op - Internal helper function to add/delete mirror rule
  * @hw: pointer to the hw struct
diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
index 9241b6005ad3..4ace56a911d9 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
@@ -27,10 +27,25 @@ i40e_asq_send_command(struct i40e_hw *hw, struct i40e_aq_desc *desc,
 		      void *buff, /* can be NULL */ u16  buff_size,
 		      struct i40e_asq_cmd_details *cmd_details);
 i40e_status
+i40e_asq_send_command_v2(struct i40e_hw *hw,
+			 struct i40e_aq_desc *desc,
+			 void *buff, /* can be NULL */
+			 u16  buff_size,
+			 struct i40e_asq_cmd_details *cmd_details,
+			 enum i40e_admin_queue_err *aq_status);
+i40e_status
 i40e_asq_send_command_atomic(struct i40e_hw *hw, struct i40e_aq_desc *desc,
 			     void *buff, /* can be NULL */ u16  buff_size,
 			     struct i40e_asq_cmd_details *cmd_details,
 			     bool is_atomic_context);
+i40e_status
+i40e_asq_send_command_atomic_v2(struct i40e_hw *hw,
+				struct i40e_aq_desc *desc,
+				void *buff, /* can be NULL */
+				u16  buff_size,
+				struct i40e_asq_cmd_details *cmd_details,
+				bool is_atomic_context,
+				enum i40e_admin_queue_err *aq_status);
 
 /* debug function for adminq */
 void i40e_debug_aq(struct i40e_hw *hw, enum i40e_debug_mask mask,
@@ -153,6 +168,11 @@ i40e_status i40e_aq_add_macvlan(struct i40e_hw *hw, u16 vsi_id,
 i40e_status i40e_aq_remove_macvlan(struct i40e_hw *hw, u16 vsi_id,
 			struct i40e_aqc_remove_macvlan_element_data *mv_list,
 			u16 count, struct i40e_asq_cmd_details *cmd_details);
+i40e_status
+i40e_aq_remove_macvlan_v2(struct i40e_hw *hw, u16 seid,
+			  struct i40e_aqc_remove_macvlan_element_data *mv_list,
+			  u16 count, struct i40e_asq_cmd_details *cmd_details,
+			  enum i40e_admin_queue_err *aq_status);
 i40e_status i40e_aq_add_mirrorrule(struct i40e_hw *hw, u16 sw_seid,
 			u16 rule_type, u16 dest_vsi, u16 count, __le16 *mr_list,
 			struct i40e_asq_cmd_details *cmd_details,
-- 
2.18.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
