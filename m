Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C92B0772A0B
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 18:04:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA9D160F15;
	Mon,  7 Aug 2023 16:04:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA9D160F15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691424262;
	bh=WcsxRobOuVjPUa1qrsNCVkvwo7LRHjVJWZCMs5gXb2A=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kdE/u5/PCxHQL/e3uwISSCy6nSQrmi3RGtCOA8GXPc0iXdp/smqjOKSFX8oDWYEZo
	 EbmeFJpP16dyRxVmF7e19L8je8X16XDCwOu8wZxgzc47o0ea4e6/zW06F8HiRR361s
	 xkdy0wVjtNSS0PF0S6ES+Rl9ct/sDbkYUNrUEguih0ojuDhHovJ6o494Xwxh4u8ung
	 Wxnm57PV664aKGECNJtp07CmocY+hEkIK+rPsQA28xUlalDBusJZjdjj2fpQzc0ohc
	 QYY6Pl2rPLFJRS0QCHgqJdK5e76lqY8lia1Cp51agO57mx6o8dTXCVOQpWQBtLGLIc
	 jukWTuL89Z30g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1cliP3uD5Q7h; Mon,  7 Aug 2023 16:04:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E864C60674;
	Mon,  7 Aug 2023 16:04:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E864C60674
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 81BCB1BF280
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 16:04:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C77E081F50
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 16:01:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C77E081F50
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 97eAmw2774mJ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 16:01:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2774E80EC9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 16:01:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2774E80EC9
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="401553933"
X-IronPort-AV: E=Sophos;i="6.01,262,1684825200"; d="scan'208";a="401553933"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 09:01:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="977492991"
X-IronPort-AV: E=Sophos;i="6.01,262,1684825200"; d="scan'208";a="977492991"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga006.fm.intel.com with ESMTP; 07 Aug 2023 09:01:42 -0700
Received: from pelor.igk.intel.com (pelor.igk.intel.com [10.123.220.13])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id B3BD7312DA;
 Mon,  7 Aug 2023 17:01:41 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  7 Aug 2023 11:58:47 -0400
Message-Id: <20230807155848.90907-3-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230807155848.90907-1-przemyslaw.kitszel@intel.com>
References: <20230807155848.90907-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691424105; x=1722960105;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wltPn6G/xNnBZJWCG3f0JWFLPq8uJ8cV34aHzJmN45c=;
 b=nePfLSIBNQPd4X5aui6+PTppN02hWvnWX7nXtD+B51deeklEmn6a7U+b
 pDM7Plm7J0mbItt4mVTznh/VsLhurFFQ9YwyRDo2YZVWE8uPT1CSh8AFz
 ubTcGL6157V1vyRkmv1Z5ubTogavHiXJcBf0BRce6ESktLbMHS2Az3sPV
 EWnEGuQg0HSUI2yKgxOt05DLcXQphkaDGY+sUx6sB5TPU3tHitPLJ/eNf
 GnGjVjgPtnm7Trz1UCtPsf1GajgHh47irj2tyLo0X0KfkDInnQFxgsYx9
 j3WXS9XVai84u2ouGqT+wj/twN0OJTtEh9Nd4kYmuByxkQ12+1suYQiIV
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nePfLSIB
Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/3] ice: embed
 &ice_rq_event_info event into struct ice_aq_task
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
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Expose struct ice_aq_task to callers,
what takes burden of memory ownership out from AQ-wait family of functions,
and reduces need for heap-based allocations.

Embed struct ice_rq_event_info event into struct ice_aq_task
(instead of it being a ptr). to remove some more code from the callers.

Subsequent commit will improve more based on this one.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

---
add/remove: 0/0 grow/shrink: 3/1 up/down: 266/-68 (198)
---
 drivers/net/ethernet/intel/ice/ice.h          | 20 ++++++++-
 .../net/ethernet/intel/ice/ice_fw_update.c    | 42 +++++++++----------
 drivers/net/ethernet/intel/ice/ice_main.c     | 29 ++-----------
 3 files changed, 42 insertions(+), 49 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 34be1cb1e28f..6346283c5d14 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -931,8 +931,24 @@ void ice_fdir_release_flows(struct ice_hw *hw);
 void ice_fdir_replay_flows(struct ice_hw *hw);
 void ice_fdir_replay_fltrs(struct ice_pf *pf);
 int ice_fdir_create_dflt_rules(struct ice_pf *pf);
-int ice_aq_wait_for_event(struct ice_pf *pf, u16 opcode, unsigned long timeout,
-			  struct ice_rq_event_info *event);
+
+enum ice_aq_task_state {
+	ICE_AQ_TASK_WAITING,
+	ICE_AQ_TASK_COMPLETE,
+	ICE_AQ_TASK_CANCELED,
+};
+
+struct ice_aq_task {
+	struct hlist_node entry;
+	struct ice_rq_event_info event;
+	enum ice_aq_task_state state;
+	u16 opcode;
+};
+
+
+int ice_aq_wait_for_event(struct ice_pf *pf, struct ice_aq_task *task,
+			  u16 opcode, unsigned long timeout);
+
 int ice_open(struct net_device *netdev);
 int ice_open_internal(struct net_device *netdev);
 int ice_stop(struct net_device *netdev);
diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
index 3dc5662d62a6..819b70823e9c 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
@@ -293,13 +293,12 @@ ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
 {
 	u16 completion_module, completion_retval;
 	struct device *dev = ice_pf_to_dev(pf);
-	struct ice_rq_event_info event;
+	struct ice_aq_task task = {};
 	struct ice_hw *hw = &pf->hw;
+	struct ice_aq_desc *desc;
 	u32 completion_offset;
 	int err;
 
-	memset(&event, 0, sizeof(event));
-
 	dev_dbg(dev, "Writing block of %u bytes for module 0x%02x at offset %u\n",
 		block_size, module, offset);
 
@@ -319,7 +318,7 @@ ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
 	 * is conservative and is intended to prevent failure to update when
 	 * firmware is slow to respond.
 	 */
-	err = ice_aq_wait_for_event(pf, ice_aqc_opc_nvm_write, 15 * HZ, &event);
+	err = ice_aq_wait_for_event(pf, &task, ice_aqc_opc_nvm_write, 15 * HZ);
 	if (err) {
 		dev_err(dev, "Timed out while trying to flash module 0x%02x with block of size %u at offset %u, err %d\n",
 			module, block_size, offset, err);
@@ -327,11 +326,12 @@ ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
 		return -EIO;
 	}
 
-	completion_module = le16_to_cpu(event.desc.params.nvm.module_typeid);
-	completion_retval = le16_to_cpu(event.desc.retval);
+	desc = &task.event.desc;
+	completion_module = le16_to_cpu(desc->params.nvm.module_typeid);
+	completion_retval = le16_to_cpu(desc->retval);
 
-	completion_offset = le16_to_cpu(event.desc.params.nvm.offset_low);
-	completion_offset |= event.desc.params.nvm.offset_high << 16;
+	completion_offset = le16_to_cpu(desc->params.nvm.offset_low);
+	completion_offset |= desc->params.nvm.offset_high << 16;
 
 	if (completion_module != module) {
 		dev_err(dev, "Unexpected module_typeid in write completion: got 0x%x, expected 0x%x\n",
@@ -363,8 +363,8 @@ ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
 	 */
 	if (reset_level && last_cmd && module == ICE_SR_1ST_NVM_BANK_PTR) {
 		if (hw->dev_caps.common_cap.pcie_reset_avoidance) {
-			*reset_level = (event.desc.params.nvm.cmd_flags &
-					ICE_AQC_NVM_RESET_LVL_M);
+			*reset_level = desc->params.nvm.cmd_flags &
+				       ICE_AQC_NVM_RESET_LVL_M;
 			dev_dbg(dev, "Firmware reported required reset level as %u\n",
 				*reset_level);
 		} else {
@@ -479,15 +479,14 @@ ice_erase_nvm_module(struct ice_pf *pf, u16 module, const char *component,
 {
 	u16 completion_module, completion_retval;
 	struct device *dev = ice_pf_to_dev(pf);
-	struct ice_rq_event_info event;
+	struct ice_aq_task task = {};
 	struct ice_hw *hw = &pf->hw;
+	struct ice_aq_desc *desc;
 	struct devlink *devlink;
 	int err;
 
 	dev_dbg(dev, "Beginning erase of flash component '%s', module 0x%02x\n", component, module);
 
-	memset(&event, 0, sizeof(event));
-
 	devlink = priv_to_devlink(pf);
 
 	devlink_flash_update_timeout_notify(devlink, "Erasing", component, ICE_FW_ERASE_TIMEOUT);
@@ -502,7 +501,7 @@ ice_erase_nvm_module(struct ice_pf *pf, u16 module, const char *component,
 		goto out_notify_devlink;
 	}
 
-	err = ice_aq_wait_for_event(pf, ice_aqc_opc_nvm_erase, ICE_FW_ERASE_TIMEOUT * HZ, &event);
+	err = ice_aq_wait_for_event(pf, &task, ice_aqc_opc_nvm_erase, ICE_FW_ERASE_TIMEOUT * HZ);
 	if (err) {
 		dev_err(dev, "Timed out waiting for firmware to respond with erase completion for %s (module 0x%02x), err %d\n",
 			component, module, err);
@@ -510,8 +509,9 @@ ice_erase_nvm_module(struct ice_pf *pf, u16 module, const char *component,
 		goto out_notify_devlink;
 	}
 
-	completion_module = le16_to_cpu(event.desc.params.nvm.module_typeid);
-	completion_retval = le16_to_cpu(event.desc.retval);
+	desc = &task.event.desc;
+	completion_module = le16_to_cpu(desc->params.nvm.module_typeid);
+	completion_retval = le16_to_cpu(desc->retval);
 
 	if (completion_module != module) {
 		dev_err(dev, "Unexpected module_typeid in erase completion for %s: got 0x%x, expected 0x%x\n",
@@ -560,14 +560,12 @@ ice_switch_flash_banks(struct ice_pf *pf, u8 activate_flags,
 		       u8 *emp_reset_available, struct netlink_ext_ack *extack)
 {
 	struct device *dev = ice_pf_to_dev(pf);
-	struct ice_rq_event_info event;
+	struct ice_aq_task task = {};
 	struct ice_hw *hw = &pf->hw;
 	u16 completion_retval;
 	u8 response_flags;
 	int err;
 
-	memset(&event, 0, sizeof(event));
-
 	err = ice_nvm_write_activate(hw, activate_flags, &response_flags);
 	if (err) {
 		dev_err(dev, "Failed to switch active flash banks, err %d aq_err %s\n",
@@ -592,8 +590,8 @@ ice_switch_flash_banks(struct ice_pf *pf, u8 activate_flags,
 		}
 	}
 
-	err = ice_aq_wait_for_event(pf, ice_aqc_opc_nvm_write_activate, 30 * HZ,
-				    &event);
+	err = ice_aq_wait_for_event(pf, &task, ice_aqc_opc_nvm_write_activate,
+				    30 * HZ);
 	if (err) {
 		dev_err(dev, "Timed out waiting for firmware to switch active flash banks, err %d\n",
 			err);
@@ -601,7 +599,7 @@ ice_switch_flash_banks(struct ice_pf *pf, u8 activate_flags,
 		return err;
 	}
 
-	completion_retval = le16_to_cpu(event.desc.retval);
+	completion_retval = le16_to_cpu(task.event.desc.retval);
 	if (completion_retval) {
 		dev_err(dev, "Firmware failed to switch active flash banks aq_err %s\n",
 			ice_aq_str((enum ice_aq_err)completion_retval));
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index f2ad2153589a..36772215b8c6 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1250,26 +1250,12 @@ ice_handle_link_event(struct ice_pf *pf, struct ice_rq_event_info *event)
 	return status;
 }
 
-enum ice_aq_task_state {
-	ICE_AQ_TASK_WAITING = 0,
-	ICE_AQ_TASK_COMPLETE,
-	ICE_AQ_TASK_CANCELED,
-};
-
-struct ice_aq_task {
-	struct hlist_node entry;
-
-	u16 opcode;
-	struct ice_rq_event_info *event;
-	enum ice_aq_task_state state;
-};
-
 /**
  * ice_aq_wait_for_event - Wait for an AdminQ event from firmware
  * @pf: pointer to the PF private structure
+ * @task: ptr to task structure
  * @opcode: the opcode to wait for
  * @timeout: how long to wait, in jiffies
- * @event: storage for the event info
  *
  * Waits for a specific AdminQ completion event on the ARQ for a given PF. The
  * current thread will be put to sleep until the specified event occurs or
@@ -1281,22 +1267,16 @@ struct ice_aq_task {
  *
  * Returns: zero on success, or a negative error code on failure.
  */
-int ice_aq_wait_for_event(struct ice_pf *pf, u16 opcode, unsigned long timeout,
-			  struct ice_rq_event_info *event)
+int ice_aq_wait_for_event(struct ice_pf *pf, struct ice_aq_task *task,
+			  u16 opcode, unsigned long timeout)
 {
 	struct device *dev = ice_pf_to_dev(pf);
-	struct ice_aq_task *task;
 	unsigned long start;
 	long ret;
 	int err;
 
-	task = kzalloc(sizeof(*task), GFP_KERNEL);
-	if (!task)
-		return -ENOMEM;
-
 	INIT_HLIST_NODE(&task->entry);
 	task->opcode = opcode;
-	task->event = event;
 	task->state = ICE_AQ_TASK_WAITING;
 
 	spin_lock_bh(&pf->aq_wait_lock);
@@ -1331,7 +1311,6 @@ int ice_aq_wait_for_event(struct ice_pf *pf, u16 opcode, unsigned long timeout,
 	spin_lock_bh(&pf->aq_wait_lock);
 	hlist_del(&task->entry);
 	spin_unlock_bh(&pf->aq_wait_lock);
-	kfree(task);
 
 	return err;
 }
@@ -1367,7 +1346,7 @@ static void ice_aq_check_events(struct ice_pf *pf, u16 opcode,
 		if (task->state || task->opcode != opcode)
 			continue;
 
-		task_ev = task->event;
+		task_ev = &task->event;
 		memcpy(&task_ev->desc, &event->desc, sizeof(event->desc));
 		task_ev->msg_len = event->msg_len;
 
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
