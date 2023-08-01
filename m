Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A616476B19F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 12:19:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2E68417FC;
	Tue,  1 Aug 2023 10:19:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2E68417FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690885195;
	bh=ugmoDQHzZCZsntZq2CCh9ZWqaUvmZ3F8q2U7WALVAyQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=bSAonIrZBmCyUUqX+3GXamup60KRRMO9m8OLfDHIhinsj5MDEMUgFuLKagds5C6Br
	 D/c4xxmIEKBx/nPz6srIevh6x4QkZaT8wMPDyZYh5hwWirUlDsjgqRXK76juoc5i9A
	 rUhN3qqMpIosEQaBIUVelkML9J40Uascw9xAhbst1CI4F+8nHJEmddztkmtxM913hW
	 zoIH48njmumEoE42oTsA7Jg7fdUZIlYHb5D0jd456i+cq45R4+EbiPY1GbYe/rU8GY
	 DVENuC5GgnbUYAE6Dryv17ohKHvHJkwVAppED18Kl8zAnaU6tU5OGY5aWx5ym6Z12i
	 XpJ53AFivzCeA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QKVNrY2phA3O; Tue,  1 Aug 2023 10:19:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D86FC40214;
	Tue,  1 Aug 2023 10:19:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D86FC40214
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 19D121BF290
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 10:19:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 93C214087F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 10:19:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93C214087F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ig6nj3jWqAu1 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 10:19:28 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DBC2C40342
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 10:19:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DBC2C40342
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="349555346"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="349555346"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 03:19:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="872019053"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga001.fm.intel.com with ESMTP; 01 Aug 2023 03:19:25 -0700
Received: from pelor.igk.intel.com (pelor.igk.intel.com [10.123.220.13])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id A04FD33BE9;
 Tue,  1 Aug 2023 11:19:22 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Tue,  1 Aug 2023 06:15:45 -0400
Message-Id: <20230801101545.519944-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690885167; x=1722421167;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=O9RfXJX4TP06lynab0snbQmLxZB68gFqwKvCV+X9z6c=;
 b=kdjCgEibpFSE0Yc8CXsBOQE/TIvD7I1QjN8WuoShhoqQzVWE8D7E7sL3
 /dXvc/4zoZL4FXPt9AeZaB03CA+MoU5BhoxADP119yEyF6zW8EIDTARzE
 nPptpV9d+c3umO4e1KLytuBP/Q16KOEbSXIjnxs698cbSOQqqtSJvu5J4
 KtjPq518SedQ2Lki/lZpt4SHOxZqKKPMyVNUbsJ9Mx6FMAyylkOkmlYqy
 rVD4ueUhLAkC1X5ltFCc75O3m7L9cZdfAO31rGIM0w0PynSAMXFdEKFyy
 y7dc/bVkz8dafC16IUdssoQqgDKEQXqQ28ibVuKS4DfELyEX3kMUMrVXQ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kdjCgEib
Subject: [Intel-wired-lan] [PATCH] ice: split ice_aq_wait_for_event() func
 into two
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mitigate race between registering on wait list and receiving
AQ Response from FW.

ice_aq_prep_for_event() should be called before sending AQ command,
ice_aq_wait_for_event() should be called after sending AQ command,
to wait for AQ Response.

struct ice_aq_task is exposed to callers, what takes burden of memory
ownership out from AQ-wait family of functions.

Embed struct ice_rq_event_info event into struct ice_aq_task
(instead of it being a ptr), to remove some more code from the callers.

Additional fix: one of the checks in ice_aq_check_events() was off by one.

Please note, that this was found by reading the code,
an actual race has not yet materialized.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          | 21 +++-
 .../net/ethernet/intel/ice/ice_fw_update.c    | 45 +++++----
 drivers/net/ethernet/intel/ice/ice_main.c     | 98 +++++++++----------
 3 files changed, 92 insertions(+), 72 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 34be1cb1e28f..3ac645afbc8d 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -931,8 +931,25 @@ void ice_fdir_release_flows(struct ice_hw *hw);
 void ice_fdir_replay_flows(struct ice_hw *hw);
 void ice_fdir_replay_fltrs(struct ice_pf *pf);
 int ice_fdir_create_dflt_rules(struct ice_pf *pf);
-int ice_aq_wait_for_event(struct ice_pf *pf, u16 opcode, unsigned long timeout,
-			  struct ice_rq_event_info *event);
+
+enum ice_aq_task_state {
+	ICE_AQ_TASK_NOT_PREPARED,
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
+void ice_aq_prep_for_event(struct ice_pf *pf, struct ice_aq_task *task,
+			   u16 opcode);
+int ice_aq_wait_for_event(struct ice_pf *pf, struct ice_aq_task *task,
+			  unsigned long timeout);
 int ice_open(struct net_device *netdev);
 int ice_open_internal(struct net_device *netdev);
 int ice_stop(struct net_device *netdev);
diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
index 3dc5662d62a6..319a2d6fe26c 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
@@ -293,16 +293,17 @@ ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
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
 
+	ice_aq_prep_for_event(pf, &task, ice_aqc_opc_nvm_write);
+
 	err = ice_aq_update_nvm(hw, module, offset, block_size, block,
 				last_cmd, 0, NULL);
 	if (err) {
@@ -319,19 +320,20 @@ ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
 	 * is conservative and is intended to prevent failure to update when
 	 * firmware is slow to respond.
 	 */
-	err = ice_aq_wait_for_event(pf, ice_aqc_opc_nvm_write, 15 * HZ, &event);
+	err = ice_aq_wait_for_event(pf, &task, 15 * HZ);
 	if (err) {
 		dev_err(dev, "Timed out while trying to flash module 0x%02x with block of size %u at offset %u, err %d\n",
 			module, block_size, offset, err);
 		NL_SET_ERR_MSG_MOD(extack, "Timed out waiting for firmware");
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
@@ -363,8 +365,8 @@ ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
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
@@ -479,39 +481,41 @@ ice_erase_nvm_module(struct ice_pf *pf, u16 module, const char *component,
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
 
+	ice_aq_prep_for_event(pf, &task, ice_aqc_opc_nvm_erase);
+
 	err = ice_aq_erase_nvm(hw, module, NULL);
 	if (err) {
 		dev_err(dev, "Failed to erase %s (module 0x%02x), err %d aq_err %s\n",
 			component, module, err,
 			ice_aq_str(hw->adminq.sq_last_status));
 		NL_SET_ERR_MSG_MOD(extack, "Failed to erase flash module");
 		err = -EIO;
 		goto out_notify_devlink;
 	}
 
-	err = ice_aq_wait_for_event(pf, ice_aqc_opc_nvm_erase, ICE_FW_ERASE_TIMEOUT * HZ, &event);
+	err = ice_aq_wait_for_event(pf, &task, ICE_FW_ERASE_TIMEOUT * HZ);
 	if (err) {
 		dev_err(dev, "Timed out waiting for firmware to respond with erase completion for %s (module 0x%02x), err %d\n",
 			component, module, err);
 		NL_SET_ERR_MSG_MOD(extack, "Timed out waiting for firmware");
 		goto out_notify_devlink;
 	}
 
-	completion_module = le16_to_cpu(event.desc.params.nvm.module_typeid);
-	completion_retval = le16_to_cpu(event.desc.retval);
+	desc = &task.event.desc;
+	completion_module = le16_to_cpu(desc->params.nvm.module_typeid);
+	completion_retval = le16_to_cpu(desc->retval);
 
 	if (completion_module != module) {
 		dev_err(dev, "Unexpected module_typeid in erase completion for %s: got 0x%x, expected 0x%x\n",
@@ -560,13 +564,13 @@ ice_switch_flash_banks(struct ice_pf *pf, u8 activate_flags,
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
+	ice_aq_prep_for_event(pf, &task, ice_aqc_opc_nvm_write_activate);
 
 	err = ice_nvm_write_activate(hw, activate_flags, &response_flags);
 	if (err) {
@@ -592,16 +596,15 @@ ice_switch_flash_banks(struct ice_pf *pf, u8 activate_flags,
 		}
 	}
 
-	err = ice_aq_wait_for_event(pf, ice_aqc_opc_nvm_write_activate, 30 * HZ,
-				    &event);
+	err = ice_aq_wait_for_event(pf, &task, 30 * HZ);
 	if (err) {
 		dev_err(dev, "Timed out waiting for firmware to switch active flash banks, err %d\n",
 			err);
 		NL_SET_ERR_MSG_MOD(extack, "Timed out waiting for firmware");
 		return err;
 	}
 
-	completion_retval = le16_to_cpu(event.desc.retval);
+	completion_retval = le16_to_cpu(task.event.desc.retval);
 	if (completion_retval) {
 		dev_err(dev, "Firmware failed to switch active flash banks aq_err %s\n",
 			ice_aq_str((enum ice_aq_err)completion_retval));
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a73895483e6c..7d2e50968277 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1250,88 +1250,86 @@ ice_handle_link_event(struct ice_pf *pf, struct ice_rq_event_info *event)
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
+/**
+ * ice_aq_prep_for_event - Prepare to wait for an AdminQ event from firmware
+ * @pf: pointer to the PF private structure
+ * @task: intermediate helper storage and identifier for waiting
+ * @opcode: the opcode to wait for
+ *
+ * Prepares to wait for a specific AdminQ completion event on the ARQ for
+ * a given PF. Actual wait would be done by a call to ice_aq_wait_for_event().
+ *
+ * Calls are separated to allow caller registering for event before sending
+ * the command, which mitigates a race between registering and FW responding.
+ *
+ * To obtain only the descriptor contents, pass an task->event with null
+ * msg_buf. If the complete data buffer is desired, allocate the
+ * task->event.msg_buf with enough space ahead of time.
+ */
+void ice_aq_prep_for_event(struct ice_pf *pf, struct ice_aq_task *task,
+			   u16 opcode)
+{
+	INIT_HLIST_NODE(&task->entry);
+	task->opcode = opcode;
+	task->state = ICE_AQ_TASK_WAITING;
 
-	u16 opcode;
-	struct ice_rq_event_info *event;
-	enum ice_aq_task_state state;
-};
+	spin_lock_bh(&pf->aq_wait_lock);
+	hlist_add_head(&task->entry, &pf->aq_wait_list);
+	spin_unlock_bh(&pf->aq_wait_lock);
+}
 
 /**
  * ice_aq_wait_for_event - Wait for an AdminQ event from firmware
  * @pf: pointer to the PF private structure
- * @opcode: the opcode to wait for
+ * @task: ptr prepared by ice_aq_prep_for_event()
  * @timeout: how long to wait, in jiffies
- * @event: storage for the event info
  *
  * Waits for a specific AdminQ completion event on the ARQ for a given PF. The
  * current thread will be put to sleep until the specified event occurs or
  * until the given timeout is reached.
  *
- * To obtain only the descriptor contents, pass an event without an allocated
- * msg_buf. If the complete data buffer is desired, allocate the
- * event->msg_buf with enough space ahead of time.
- *
  * Returns: zero on success, or a negative error code on failure.
  */
-int ice_aq_wait_for_event(struct ice_pf *pf, u16 opcode, unsigned long timeout,
-			  struct ice_rq_event_info *event)
+int ice_aq_wait_for_event(struct ice_pf *pf, struct ice_aq_task *task,
+			  unsigned long timeout)
 {
+	enum ice_aq_task_state *state = &task->state;
 	struct device *dev = ice_pf_to_dev(pf);
-	struct ice_aq_task *task;
-	unsigned long start;
+	unsigned long start = jiffies;
 	long ret;
 	int err;
 
-	task = kzalloc(sizeof(*task), GFP_KERNEL);
-	if (!task)
-		return -ENOMEM;
-
-	INIT_HLIST_NODE(&task->entry);
-	task->opcode = opcode;
-	task->event = event;
-	task->state = ICE_AQ_TASK_WAITING;
-
-	spin_lock_bh(&pf->aq_wait_lock);
-	hlist_add_head(&task->entry, &pf->aq_wait_list);
-	spin_unlock_bh(&pf->aq_wait_lock);
-
-	start = jiffies;
-
-	ret = wait_event_interruptible_timeout(pf->aq_wait_queue, task->state,
+	ret = wait_event_interruptible_timeout(pf->aq_wait_queue,
+					       *state != ICE_AQ_TASK_WAITING,
 					       timeout);
-	switch (task->state) {
+	switch (*state) {
+	case ICE_AQ_TASK_NOT_PREPARED:
+		WARN(1, "call to %s without ice_aq_prep_for_event()", __func__);
+		err = -EINVAL;
+		break;
 	case ICE_AQ_TASK_WAITING:
 		err = ret < 0 ? ret : -ETIMEDOUT;
 		break;
 	case ICE_AQ_TASK_CANCELED:
 		err = ret < 0 ? ret : -ECANCELED;
 		break;
 	case ICE_AQ_TASK_COMPLETE:
 		err = ret < 0 ? ret : 0;
 		break;
 	default:
-		WARN(1, "Unexpected AdminQ wait task state %u", task->state);
+		WARN(1, "Unexpected AdminQ wait task state %u", *state);
 		err = -EINVAL;
 		break;
 	}
 
 	dev_dbg(dev, "Waited %u msecs (max %u msecs) for firmware response to op 0x%04x\n",
 		jiffies_to_msecs(jiffies - start),
 		jiffies_to_msecs(timeout),
-		opcode);
+		task->opcode);
 
 	spin_lock_bh(&pf->aq_wait_lock);
 	hlist_del(&task->entry);
 	spin_unlock_bh(&pf->aq_wait_lock);
-	kfree(task);
 
 	return err;
 }
@@ -1362,18 +1360,20 @@ static void ice_aq_check_events(struct ice_pf *pf, u16 opcode,
 
 	spin_lock_bh(&pf->aq_wait_lock);
 	hlist_for_each_entry(task, &pf->aq_wait_list, entry) {
-		if (task->state || task->opcode != opcode)
+		if (task->state != ICE_AQ_TASK_WAITING)
+			continue;
+		if (task->opcode != opcode)
 			continue;
 
-		memcpy(&task->event->desc, &event->desc, sizeof(event->desc));
-		task->event->msg_len = event->msg_len;
+		memcpy(&task->event.desc, &event->desc, sizeof(event->desc));
+		task->event.msg_len = event->msg_len;
 
 		/* Only copy the data buffer if a destination was set */
-		if (task->event->msg_buf &&
-		    task->event->buf_len > event->buf_len) {
-			memcpy(task->event->msg_buf, event->msg_buf,
+		if (task->event.msg_buf &&
+		    task->event.buf_len >= event->buf_len) {
+			memcpy(task->event.msg_buf, event->msg_buf,
 			       event->buf_len);
-			task->event->buf_len = event->buf_len;
+			task->event.buf_len = event->buf_len;
 		}
 
 		task->state = ICE_AQ_TASK_COMPLETE;
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
