Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7108D253662
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Aug 2020 20:15:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E405020417;
	Wed, 26 Aug 2020 18:15:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DU8WswegECCd; Wed, 26 Aug 2020 18:15:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 58CD822739;
	Wed, 26 Aug 2020 18:15:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CA6C41BF980
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 18:15:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C6A6386880
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 18:15:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NeGfAJJlDZwT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Aug 2020 18:15:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DF7D586A59
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 18:15:23 +0000 (UTC)
IronPort-SDR: RoU/eUwReWsgHaSoeWlRWr4Oc5roQZoDnHND63lXK62jGgFrjKMUpEzk0RJvZJN8NJmJs6JRKs
 UfvI1YgNlsIA==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="157395926"
X-IronPort-AV: E=Sophos;i="5.76,356,1592895600"; d="scan'208";a="157395926"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 11:15:23 -0700
IronPort-SDR: 37ZKfB3ym3yGV6sZ2/f3au2fPoleQdX831NBkCFSEPGN0xFmskkmQUMBYQpv2js1TTcnUc2KTL
 w2KynqDVlDhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,356,1592895600"; d="scan'208";a="444139474"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.33])
 by orsmga004.jf.intel.com with ESMTP; 26 Aug 2020 11:15:22 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 26 Aug 2020 11:14:48 -0700
Message-Id: <20200826181448.1176594-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.28.0.218.ge27853923b9d.dirty
In-Reply-To: <20200826181448.1176594-1-jacob.e.keller@intel.com>
References: <20200826181448.1176594-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 2/2] ice: add additional debug logging
 for firmware update
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

While debugging a recent failure to update the flash of an ice device,
I found it helpful to add additional logging which helped determine the
root cause of the problem being a timeout issue.

Add some extra dev_dbg() logging messages which can be enabled using the
dynamic debug facility, including one for ice_aq_wait_for_event that
will use jiffies to capture a rough estimate of how long we waited for
the completion of a firmware command.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_devlink.c  |  3 +++
 .../net/ethernet/intel/ice/ice_fw_update.c    | 27 ++++++++++++++-----
 drivers/net/ethernet/intel/ice/ice_main.c     |  9 +++++++
 3 files changed, 33 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 111d6bfe4222..b6f5faf73ec3 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -271,6 +271,9 @@ ice_devlink_flash_update(struct devlink *devlink, const char *path,
 		return err;
 	}
 
+	dev_dbg(dev, "Beginning flash update with file '%s', preservation level %u\n",
+		params->file_name, preservation);
+
 	devlink_flash_update_begin_notify(devlink);
 	devlink_flash_update_status_notify(devlink, "Preparing to flash",
 					   component, 0, 0);
diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
index 29397a83699d..14a3b6838461 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
@@ -43,6 +43,8 @@ ice_send_package_data(struct pldmfw *context, const u8 *data, u16 length)
 	enum ice_status status;
 	u8 *package_data;
 
+	dev_dbg(dev, "Sending PLDM record package data to firmware\n");
+
 	package_data = kmemdup(data, length, GFP_KERNEL);
 	if (!package_data)
 		return -ENOMEM;
@@ -229,6 +231,8 @@ ice_send_component_table(struct pldmfw *context, struct pldmfw_component *compon
 	comp_tbl->cvs_len = component->version_len;
 	memcpy(comp_tbl->cvs, component->version_string, component->version_len);
 
+	dev_dbg(dev, "Sending component table to firmware:\n");
+
 	status = ice_nvm_pass_component_tbl(hw, (u8 *)comp_tbl, length,
 					    transfer_flag, &comp_response,
 					    &comp_response_code, NULL);
@@ -279,11 +283,13 @@ ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
 
 	memset(&event, 0, sizeof(event));
 
+	dev_dbg(dev, "Writing block of %u bytes for module 0x%02x at offset %u\n", block_size, module, offset);
+
 	status = ice_aq_update_nvm(hw, module, offset, block_size, block,
 				   last_cmd, 0, NULL);
 	if (status) {
-		dev_err(dev, "Failed to program flash module 0x%02x at offset %u, err %s aq_err %s\n",
-			module, offset, ice_stat_str(status),
+		dev_err(dev, "Failed to flash module 0x%02x with block of size %u at offset %u, err %s aq_err %s\n",
+			module, block_size, offset, ice_stat_str(status),
 			ice_aq_str(hw->adminq.sq_last_status));
 		NL_SET_ERR_MSG_MOD(extack, "Failed to program flash module");
 		return -EIO;
@@ -297,8 +303,8 @@ ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
 	 */
 	err = ice_aq_wait_for_event(pf, ice_aqc_opc_nvm_write, 15*HZ, &event);
 	if (err) {
-		dev_err(dev, "Timed out waiting for firmware write completion for module 0x%02x, err %d\n",
-			module, err);
+		dev_err(dev, "Timed out while trying to flash module 0x%02x with block of size %u at offset %u, err %d\n",
+			module, block_size, offset, err);
 		NL_SET_ERR_MSG_MOD(extack, "Timed out waiting for firmware");
 		return -EIO;
 	}
@@ -324,8 +330,8 @@ ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
 	}
 
 	if (completion_retval) {
-		dev_err(dev, "Firmware failed to program flash module 0x%02x at offset %u, completion err %s\n",
-			module, offset,
+		dev_err(dev, "Firmware ailed to flash module 0x%02x with block of size %u at offset %u, err %s\n",
+			module, block_size, offset,
 			ice_aq_str((enum ice_aq_err)completion_retval));
 		NL_SET_ERR_MSG_MOD(extack, "Firmware failed to program flash module");
 		return -EIO;
@@ -356,12 +362,15 @@ ice_write_nvm_module(struct ice_pf *pf, u16 module, const char *component,
 		     const u8 *image, u32 length,
 		     struct netlink_ext_ack *extack)
 {
+	struct device *dev = ice_pf_to_dev(pf);
 	struct devlink *devlink;
 	u32 offset = 0;
 	bool last_cmd;
 	u8 *block;
 	int err;
 
+	dev_dbg(dev, "Beginning write of flash component '%s', module 0x%02x\n", component, module);
+
 	devlink = priv_to_devlink(pf);
 
 	devlink_flash_update_status_notify(devlink, "Flashing",
@@ -394,6 +403,8 @@ ice_write_nvm_module(struct ice_pf *pf, u16 module, const char *component,
 						   component, offset, length);
 	} while (!last_cmd);
 
+	dev_dbg(dev, "Completed write of flash component '%s', module 0x%02x\n", component, module);
+
 	if (err)
 		devlink_flash_update_status_notify(devlink, "Flashing failed",
 						   component, length, length);
@@ -431,6 +442,8 @@ ice_erase_nvm_module(struct ice_pf *pf, u16 module, const char *component,
 	enum ice_status status;
 	int err;
 
+	dev_dbg(dev, "Beginning erase of flash component '%s', module 0x%02x\n", component, module);
+
 	memset(&event, 0, sizeof(event));
 
 	devlink = priv_to_devlink(pf);
@@ -476,6 +489,8 @@ ice_erase_nvm_module(struct ice_pf *pf, u16 module, const char *component,
 		goto out_notify_devlink;
 	}
 
+	dev_dbg(dev, "Completed erase of flash component '%s', module 0x%02x\n", component, module);
+
 out_notify_devlink:
 	if (err)
 		devlink_flash_update_status_notify(devlink, "Erasing failed",
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 4634b48949bb..c623cdf29d6b 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1057,7 +1057,9 @@ struct ice_aq_task {
 int ice_aq_wait_for_event(struct ice_pf *pf, u16 opcode, unsigned long timeout,
 			  struct ice_rq_event_info *event)
 {
+	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_aq_task *task;
+	unsigned long start;
 	long ret;
 	int err;
 
@@ -1074,6 +1076,8 @@ int ice_aq_wait_for_event(struct ice_pf *pf, u16 opcode, unsigned long timeout,
 	hlist_add_head(&task->entry, &pf->aq_wait_list);
 	spin_unlock_bh(&pf->aq_wait_lock);
 
+	start = jiffies;
+
 	ret = wait_event_interruptible_timeout(pf->aq_wait_queue, task->state,
 					       timeout);
 	switch (task->state) {
@@ -1092,6 +1096,11 @@ int ice_aq_wait_for_event(struct ice_pf *pf, u16 opcode, unsigned long timeout,
 		break;
 	}
 
+	dev_dbg(dev, "Waited %u msecs (max %u msecs) for firmware response to op 0x%04x\n",
+		jiffies_to_msecs(jiffies - start),
+		jiffies_to_msecs(timeout),
+		opcode);
+
 	spin_lock_bh(&pf->aq_wait_lock);
 	hlist_del(&task->entry);
 	spin_unlock_bh(&pf->aq_wait_lock);
-- 
2.28.0.218.ge27853923b9d.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
