Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9DC6A8B3E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Mar 2023 22:51:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 628B982179;
	Thu,  2 Mar 2023 21:51:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 628B982179
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677793907;
	bh=YrbXGOWqr3jTQYmtLwVso5vXLKqaoZRfSoZVipLdTm8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XcwIYxxnylxW2Md+SyDl3Ky9r8wajHTgulvcVnh4NEh6QdPAnSCmQqiwwaY9hGYaf
	 iAdui1g6GnLJTiWXUiLV7xI/LoXJ1BR69NYzau5VIP4QRBA9w8Tv5FcjSEmltiYD6G
	 PtXx6HRt6pHSiSKXAuoANwmGdUMtD9Iod3nd3g2xJaTH71U/G0B/HtvF/zk4LQeI1S
	 1j/ptPNkvzeeLAtxD4Vp97wvPVG3OsWqOcURo6qxnxmjePfdLe90daGjrY3YdbdR1x
	 ADVvPtwSFoS21zaJi0+m063gFmUYAygfAzlNZhGepkHP8CPsHhUnYInpJ1srVC4alq
	 A166CzEzNFfxA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fjgNWw6bWhaX; Thu,  2 Mar 2023 21:51:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 19CAE8186A;
	Thu,  2 Mar 2023 21:51:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 19CAE8186A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 95CBA1BF306
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Mar 2023 21:51:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4276260C34
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Mar 2023 21:51:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4276260C34
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OO_QPG7Uie41 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Mar 2023 21:51:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3421E6109C
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3421E6109C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Mar 2023 21:51:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="399672222"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="399672222"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 13:51:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="652570015"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="652570015"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.213.174.245])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 13:51:19 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  2 Mar 2023 13:51:09 -0800
Message-Id: <20230302215109.124-6-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230302215109.124-1-paul.m.stillwell.jr@intel.com>
References: <20230302215109.124-1-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677793888; x=1709329888;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+GxXcnxaDCUrhU6VJNUsJEKqlV2flaXxl16OIRmohts=;
 b=jdmFDeiuQSSVVn+7OwUcBKGChWUk7GdBri2YqbEHMmXAKP+zKgmWpkaX
 wS3PCFiPVpaFAEzG4YuihzwW6hj5RE7u2qPlOAJFkHumRmBFWBk4Q9ptB
 1vaKz0H32LGtqABGmk2y3B/msD02FH59H/Q3msA5wS09lEdKP/9HIyZIv
 WpwXq3A1a/hhbgr54SKmH0AabQt8R73/gziH/1trpwA/QdutM+vKJSgkA
 VDkR9TEc/umCtEIscnpK4WEcr5gzQDAF9HqEBt/x4hVKqqx28+3C5+U9d
 4cpuTWwVzovTV28gntYO1OPD7NYr8ee2W5a59CFkMIQV9/v6h2Yyr+7zu
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jdmFDeiu
Subject: [Intel-wired-lan] [PATCH net-next v9 5/5] ice: add ability to
 enable FW logging and capture data
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

Once the FW logging is configured then users need to be able to enable
logging and capture the data. To enable/disable FW logging use 'enable
fwlog' and 'disable fwlog'. An example command to enable FW logging:

echo enable fwlog > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog

Once logging is enable the user should read the data using something
like:

cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog > log_data.bin

The output file is a binary file that will be decoded by the FW
team for debugging.

Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          | 11 +++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  3 +
 drivers/net/ethernet/intel/ice/ice_debugfs.c  | 50 +++++++++++
 drivers/net/ethernet/intel/ice/ice_main.c     | 89 +++++++++++++++++++
 4 files changed, 153 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index f57ad5526b19..9d2bc06ed529 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -636,6 +636,8 @@ struct ice_pf {
 #define ICE_VF_AGG_NODE_ID_START	65
 #define ICE_MAX_VF_AGG_NODES		32
 	struct ice_agg_node vf_agg_node[ICE_MAX_VF_AGG_NODES];
+	struct list_head fwlog_data_list;
+	u8 fwlog_list_count;
 };
 
 struct ice_netdev_priv {
@@ -650,6 +652,15 @@ struct ice_netdev_priv {
 	struct list_head tc_indr_block_priv_list;
 };
 
+struct ice_fwlog_data {
+	struct list_head list;
+	u16 data_size;
+	u8 *data;
+};
+
+/* define the maximum number of items that can be in the list */
+#define ICE_FWLOG_MAX_SIZE	128
+
 /**
  * ice_vector_ch_enabled
  * @qv: pointer to q_vector, can be NULL
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index a611e0d98bd0..68ab19678dbe 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -2075,7 +2075,9 @@ enum ice_aqc_fw_logging_mod {
 };
 
 /* Set FW Logging configuration (indirect 0xFF30)
+ * Register for FW Logging (indirect 0xFF31)
  * Query FW Logging (indirect 0xFF32)
+ * FW Log Event (indirect 0xFF33)
  */
 struct ice_aqc_fw_log {
 	u8 cmd_flags;
@@ -2375,6 +2377,7 @@ enum ice_adminq_opc {
 	ice_aqc_opc_fw_logs_config			= 0xFF30,
 	ice_aqc_opc_fw_logs_register			= 0xFF31,
 	ice_aqc_opc_fw_logs_query			= 0xFF32,
+	ice_aqc_opc_fw_logs_event			= 0xFF33,
 };
 
 #endif /* _ICE_ADMINQ_CMD_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
index cead1c71ff50..7952cfafaa66 100644
--- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
@@ -10,6 +10,55 @@
 
 static struct dentry *ice_debugfs_root;
 
+/**
+ * ice_debugfs_command_read - read from command datum
+ * @filp: the opened file
+ * @buffer: where to write the data for the user to read
+ * @count: the size of the user's buffer
+ * @ppos: file position offset
+ */
+static ssize_t ice_debugfs_command_read(struct file *filp, char __user *buffer,
+					size_t count, loff_t *ppos)
+{
+	struct ice_pf *pf = filp->private_data;
+	struct ice_fwlog_data *log, *tmp_log;
+	int data_copied = 0;
+	int copy_count = 0;
+
+	if (list_empty(&pf->fwlog_data_list))
+		return 0;
+
+	list_for_each_entry(log, &pf->fwlog_data_list, list) {
+		u16 cur_buf_len = log->data_size;
+
+		if (cur_buf_len >= count)
+			break;
+
+		if (copy_to_user(buffer, log->data, cur_buf_len))
+			return -EFAULT;
+
+		data_copied += cur_buf_len;
+		buffer += cur_buf_len;
+		count -= cur_buf_len;
+		*ppos += cur_buf_len;
+		copy_count++;
+	}
+
+	/* only free the data once we know there weren't any errors */
+	list_for_each_entry_safe(log, tmp_log, &pf->fwlog_data_list, list) {
+		if (!copy_count)
+			break;
+
+		vfree(log->data);
+		list_del(&log->list);
+		vfree(log);
+		pf->fwlog_list_count--;
+		copy_count--;
+	}
+
+	return data_copied;
+}
+
 static const char *module_id_to_name(u16 module_id)
 {
 	switch (module_id) {
@@ -289,6 +338,7 @@ ice_debugfs_command_write(struct file *filp, const char __user *buf,
 static const struct file_operations ice_debugfs_command_fops = {
 	.owner = THIS_MODULE,
 	.open  = simple_open,
+	.read = ice_debugfs_command_read,
 	.write = ice_debugfs_command_write,
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 3610c56748b7..92ff1292f8fe 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5,6 +5,7 @@
 
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
+#include <linux/vmalloc.h>
 #include <generated/utsrelease.h>
 #include "ice.h"
 #include "ice_base.h"
@@ -1239,6 +1240,43 @@ ice_handle_link_event(struct ice_pf *pf, struct ice_rq_event_info *event)
 	return status;
 }
 
+/**
+ * ice_get_fwlog_data - copy the FW log data from ARQ event
+ * @pf: PF that the FW log event is associated with
+ * @event: event structure containing FW log data
+ */
+static void
+ice_get_fwlog_data(struct ice_pf *pf, struct ice_rq_event_info *event)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_fwlog_data *fwlog;
+
+	if (pf->fwlog_list_count >= ICE_FWLOG_MAX_SIZE)
+		return;
+
+	fwlog = vmalloc(sizeof(*fwlog));
+	if (!fwlog) {
+		dev_warn(dev, "Couldn't allocate memory for FWlog element\n");
+		return;
+	}
+
+	INIT_LIST_HEAD(&fwlog->list);
+
+	fwlog->data_size = le16_to_cpu(event->desc.datalen);
+	fwlog->data = vzalloc(fwlog->data_size);
+	if (!fwlog->data) {
+		dev_warn(dev, "Couldn't allocate memory for FWlog data\n");
+		vfree(fwlog);
+		return;
+	}
+
+	memcpy(fwlog->data, event->msg_buf, fwlog->data_size);
+
+	list_add_tail(&fwlog->list, &pf->fwlog_data_list);
+
+	pf->fwlog_list_count++;
+}
+
 enum ice_aq_task_state {
 	ICE_AQ_TASK_WAITING = 0,
 	ICE_AQ_TASK_COMPLETE,
@@ -1519,6 +1557,9 @@ static int __ice_clean_ctrlq(struct ice_pf *pf, enum ice_ctl_q q_type)
 
 			ice_vc_process_vf_msg(pf, &event, &data);
 			break;
+		case ice_aqc_opc_fw_logs_event:
+			ice_get_fwlog_data(pf, &event);
+			break;
 		case ice_aqc_opc_lldp_set_mib_change:
 			ice_dcb_process_lldp_set_mib_change(pf, &event);
 			break;
@@ -4746,6 +4787,52 @@ static void ice_deinit_eth(struct ice_pf *pf)
 	ice_decfg_netdev(vsi);
 }
 
+/**
+ * ice_pf_fwlog_init - initialize FW logging on device init
+ * @pf: pointer to the PF struct
+ */
+static void ice_pf_fwlog_init(struct ice_pf *pf)
+{
+	/* only supported on PF 0 */
+	if (pf->hw.bus.func)
+		return;
+
+	INIT_LIST_HEAD(&pf->fwlog_data_list);
+}
+
+/**
+ * ice_pf_fwlog_deinit - clear FW logging metadata on device exit
+ * @pf: pointer to the PF struct
+ */
+static void ice_pf_fwlog_deinit(struct ice_pf *pf)
+{
+	struct ice_fwlog_data *fwlog, *fwlog_tmp;
+	struct ice_hw *hw = &pf->hw;
+	int err;
+
+	/* only supported on PF 0 */
+	if (pf->hw.bus.func)
+		return;
+
+	/* make sure FW logging is disabled to not put the FW in a weird state
+	 * for the next driver load
+	 */
+	hw->fwlog_cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
+	err = ice_fwlog_set(hw, &hw->fwlog_cfg);
+	if (err)
+		dev_warn(ice_pf_to_dev(pf), "Unable to turn off FW logging, status: %d\n",
+			 err);
+
+	err = ice_fwlog_unregister(hw);
+	if (err)
+		dev_warn(ice_pf_to_dev(pf), "Unable to unregister FW logging, status: %d\n",
+			 err);
+
+	list_for_each_entry_safe(fwlog, fwlog_tmp, &pf->fwlog_data_list, list) {
+		vfree(fwlog->data);
+		vfree(fwlog);
+	}
+}
 static int ice_init_dev(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
@@ -5253,6 +5340,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		hw->debug_mask = debug;
 #endif
 
+	ice_pf_fwlog_init(pf);
 	ice_debugfs_fwlog_init(pf);
 
 	err = ice_init(pf);
@@ -5362,6 +5450,7 @@ static void ice_remove(struct pci_dev *pdev)
 		msleep(100);
 	}
 
+	ice_pf_fwlog_deinit(pf);
 	ice_debugfs_exit();
 
 	if (test_bit(ICE_FLAG_SRIOV_ENA, pf->flags)) {
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
