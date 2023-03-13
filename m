Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ECA66B8601
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Mar 2023 00:19:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9F39740571;
	Mon, 13 Mar 2023 23:19:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9F39740571
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678749563;
	bh=HiOjqPMr1+nR2JS5rv2Vba+WwYgm4VfyDotEd743ZWE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OQehszwDLiRKFd6y8ajGsxOf7VSEeVA3i+RVXSTUkJz1SOVT1LIC+eHgF5xebYLNS
	 wB2Pg7A+QMb2bxLzNO4dJeKX8FEVjzXzBVlvKYEz10HNzR3Ts5H2R6HQ4hITD5+m5y
	 dV0EqigGwb71QaF1gTi00ZTvkC9GJkSDvgI4PwEHjMj7GFcvsGNUetn/hT4ItaAAaP
	 F0QJw914WT3P8tZb2GN6LO442c7qsOf6G1GYE3OqSauwVHsYA4hPuQPK7pCxVvfmwQ
	 V+f5w15Z4T79d5srh0HZq2DmZLZn1i6A+LFf7fBbkBK8BAwD4DXTOUFOspOqtJOZZ4
	 5+bwoeJ/fS6Jg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iog_1DU_8_7K; Mon, 13 Mar 2023 23:19:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2C6104056C;
	Mon, 13 Mar 2023 23:19:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C6104056C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 06D921BF377
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 23:19:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B032C410BA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 23:18:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B032C410BA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 87Z5LoYddXJN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Mar 2023 23:18:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 46FF641712
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 46FF641712
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 23:18:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="335979591"
X-IronPort-AV: E=Sophos;i="5.98,258,1673942400"; d="scan'208";a="335979591"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 16:18:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="743076286"
X-IronPort-AV: E=Sophos;i="5.98,258,1673942400"; d="scan'208";a="743076286"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.212.10.39])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 16:18:56 -0700
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Mar 2023 16:18:41 -0700
Message-Id: <20230313231841.113-6-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230313231841.113-1-paul.m.stillwell.jr@intel.com>
References: <20230313231841.113-1-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678749537; x=1710285537;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IEJCAMSMn7yb6+ZjtGcUIWkVlFb6HsnLNi0GmBHWTg0=;
 b=RGf4FpVcpWqnFA6YdO3/V+pGBJZElx4wuATXFXSeGV7wsGN3Z1bvPXAq
 cgfkkhnY/u4vTmABHXIB+B/QlFrKWoE4nFbdUzG0rrOFop21RipGaIdn9
 czNy1VagWw7B+AW9C3WN3Op4NTaAcDEb3RelNm725K1Sxg1glBuddeKn+
 gthr0YFIKZGmdx0pCSobYWBlWwPPcHp0R2FF9Sj/+YSr5TfQI0KcgSGQh
 r3cSRfRjfJPOv0BoYGRGZjkSlW+jdMJwqaH3v8aIRyeje7ijfybsDKtP9
 FCrYfB+SMBtTcZ82Xch48rjrPFJV3jCsp7cIw8VqNCavAen3ZenaH3b5o
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RGf4FpVc
Subject: [Intel-wired-lan] [PATCH net-next v11 5/5] ice: add ability to read
 FW logging data
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

Once logging is enable the user should read the data using something
like:

cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog > log_data.bin

The output file is a binary file that will be decoded by Intel for
debugging.

Also added documentation to
Documentation/networking/device-drivers/ethernet/intel/ice.rst

Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
---
v10->v11: none
no data on previous versions
---
 .../device_drivers/ethernet/intel/ice.rst     | 85 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice.h          | 11 +++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  2 +
 drivers/net/ethernet/intel/ice/ice_debugfs.c  | 51 +++++++++++
 drivers/net/ethernet/intel/ice/ice_main.c     | 90 +++++++++++++++++++
 5 files changed, 239 insertions(+)

diff --git a/Documentation/networking/device_drivers/ethernet/intel/ice.rst b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
index 5efea4dd1251..c59f4f89ee84 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/ice.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
@@ -913,6 +913,91 @@ driver writes raw bytes by the GNSS object to the receiver through i2c. Please
 refer to the hardware GNSS module documentation for configuration details.
 
 
+Firmware (FW) logging
+---------------------
+The driver supports FW logging via the debugfs interface on PF 0 only. In order
+for FW logging to work, the NVM must support it. The 'fwlog' file will only get
+created in the ice debugfs directory if the NVM supports FW logging.
+
+To see the status of FW logging the 'dump fwlog_cfg' command can be used::
+
+  # echo dump fwlog_cfg > /sys/kernel/debug/ice/<pci-dev>/fwlog
+
+To configure FW logging the 'update fwlog_cfg' command can be used::
+
+  # update fwlog_cfg <fwlog_level> <fwlog_events> <fwlog_resolution>
+
+where
+
+* fwlog_level is a value from 0-4 as described below. Each level includes the
+  messages from the previous/lower level
+
+      * 0 - no logging
+      * 1 - error logging
+      * 2 - warning logging
+      * 3 - normal logging
+      * 4 - verbose logging
+
+* fwlog_events is a value from 0-32 that represents the module to receive
+  events for. The values are sent as a hex value where each bit represents
+  a specific module. The module values are
+
+      * 0 (0x00) - General
+      * 1 (0x01) - Control (Resets + Autoload)
+      * 2 (0x02) - Link Management
+      * 3 (0x03) - Link Topology Detection
+      * 4 (0x04) - DNL
+      * 5 (0x05) - I2C
+      * 6 (0x06) - SDP
+      * 7 (0x07) - MDIO
+      * 8 (0x08) - Admin Queue
+      * 9 (0x09) - HDMA
+      * 10 (0x0A) - LLDP
+      * 11 (0x0B) - DCBX
+      * 12 (0x0C) - DCB
+      * 13 (0x0D) - XLR
+      * 14 (0x0E) - NVM
+      * 15 (0x0F) - Authentication
+      * 16 (0x10) - VPD
+      * 17 (0x11) - IOSF
+      * 18 (0x12) - Parser
+      * 19 (0x13) - Switch
+      * 20 (0x14) - Scheduler
+      * 21 (0x15) - Tx Queue Management
+      * 22 (0x16) - Unsupported
+      * 23 (0x17) - Post
+      * 24 (0x18) - Watchdog
+      * 25 (0x19) - Task Dispatcher
+      * 26 (0x1A) - Manageability
+      * 27 (0x1B) - Synce
+      * 28 (0x1C) - Health
+      * 29 (0x1D) - Time Sync
+      * 30 (0x1E) - PF Registration
+      * 31 (0x1F) - Module Version
+
+* fwlog_resolution is the number of log messages to included
+  in a single ARQ event. The range is 1-128 (1 means push every log
+  message, 128 means push only when the max AQ command buffer is full).
+  The suggested value is 10.
+
+An example command to enable FW logging is::
+
+  # echo update fwlog_cfg 4 0x82414821 50 > /sys/kernel/debug/ice/<pci-dev>/fwlog
+
+To turn on FW logging the 'enable fwlog' command can be used::
+
+  # echo enable fwlog > /sys/kernel/debug/ice/<pci-dev>/fwlog
+
+To turn off FW logging the 'disable fwlog' command can be used::
+
+  # echo disable fwlog > /sys/kernel/debug/ice/<pci-dev>/fwlog
+
+To read the data captured by the driver the user can read from the 'fwlog'
+file::
+
+  # cat /sys/kernel/debug/ice/<pci-dev>/fwlog > fwlog.bin
+
+
 Performance Optimization
 ========================
 Driver defaults are meant to fit a wide variety of workloads, but if further
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 8269f033e84d..0f22b6957d83 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -635,6 +635,8 @@ struct ice_pf {
 #define ICE_VF_AGG_NODE_ID_START	65
 #define ICE_MAX_VF_AGG_NODES		32
 	struct ice_agg_node vf_agg_node[ICE_MAX_VF_AGG_NODES];
+	struct list_head fwlog_data_list;
+	u8 fwlog_list_count;
 };
 
 struct ice_netdev_priv {
@@ -649,6 +651,15 @@ struct ice_netdev_priv {
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
index 1af036beeb45..56fcba403dec 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -2077,6 +2077,7 @@ enum ice_aqc_fw_logging_mod {
 /* Set FW Logging configuration (indirect 0xFF30)
  * Register for FW Logging (indirect 0xFF31)
  * Query FW Logging (indirect 0xFF32)
+ * FW Log Event (indirect 0xFF33)
  */
 struct ice_aqc_fw_log {
 	u8 cmd_flags;
@@ -2377,6 +2378,7 @@ enum ice_adminq_opc {
 	ice_aqc_opc_fw_logs_config			= 0xFF30,
 	ice_aqc_opc_fw_logs_register			= 0xFF31,
 	ice_aqc_opc_fw_logs_query			= 0xFF32,
+	ice_aqc_opc_fw_logs_event			= 0xFF33,
 };
 
 #endif /* _ICE_ADMINQ_CMD_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
index f9edaf871c87..ee9bf127d08f 100644
--- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
@@ -4,10 +4,60 @@
 #include <linux/fs.h>
 #include <linux/debugfs.h>
 #include <linux/random.h>
+#include <linux/vmalloc.h>
 #include "ice.h"
 
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
@@ -287,6 +337,7 @@ ice_debugfs_command_write(struct file *filp, const char __user *buf,
 static const struct file_operations ice_debugfs_command_fops = {
 	.owner = THIS_MODULE,
 	.open  = simple_open,
+	.read = ice_debugfs_command_read,
 	.write = ice_debugfs_command_write,
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a5ce84d84843..6ab8ad27af81 100644
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
@@ -5253,6 +5340,8 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		hw->debug_mask = debug;
 #endif
 
+	ice_pf_fwlog_init(pf);
+
 	err = ice_init(pf);
 	if (err)
 		goto err_init;
@@ -5360,6 +5449,7 @@ static void ice_remove(struct pci_dev *pdev)
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
