Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C2E6761A6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Jan 2023 00:35:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 55567416DA;
	Fri, 20 Jan 2023 23:35:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 55567416DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674257747;
	bh=Ryc6sPfPcJueXlCfwfkszOnsNLK+5tLtpzoqdB0/XCM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vH2TcNqvuNkpIUjf7GzjQOpP0BpNHNbNxUeRieVi5YBvjZyv272M0pZOEs/TKPI9c
	 nSgLFVONZxbsTiPzvaxI3IDdkUENc6jrHLMqkQLT+d811x3pROXb1pfgCozryT35rR
	 ccuw260yMyDW5ufvD2lTBv3kvvuTp30bKNdyJQgt1+xcTRIhzBgBSZXf2YKjQsA8EQ
	 h32mlsLUPGV/tG6U2+sX5le94H5Ip94jXwyVDhaoZG2lHz7tSkKpsSdanCSVsZS2W5
	 ShwbqZFtmbGU0XFiPewj31RDZrr0lkWmOG7dV+Ptu/KWLEawAeMdRT4XBqEzXcFdEO
	 CCIeblvL4jFyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FwL43tWkizMw; Fri, 20 Jan 2023 23:35:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D5CEE409E9;
	Fri, 20 Jan 2023 23:35:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D5CEE409E9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 765401BF4D5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 23:35:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 562BB409EF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 23:35:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 562BB409EF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hVrL35k5w-pY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Jan 2023 23:35:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E8384416DA
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E8384416DA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 23:35:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="327813072"
X-IronPort-AV: E=Sophos;i="5.97,233,1669104000"; d="scan'208";a="327813072"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 15:35:21 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="784714864"
X-IronPort-AV: E=Sophos;i="5.97,233,1669104000"; d="scan'208";a="784714864"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.209.130.224])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 15:35:20 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Jan 2023 15:35:11 -0800
Message-Id: <20230120233511.131-6-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230120233511.131-1-paul.m.stillwell.jr@intel.com>
References: <20230120233511.131-1-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674257721; x=1705793721;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+I/Bt4hdbl+GdkthZNKvbMge8KcLx0mgqUDdfL5NBSo=;
 b=clIgcHVuJolC0FJPCUsg87z/n7vvIeFl5gsS81l295U3uC1rRj3XOH2n
 CHsJf3bhvJtcaXPO5xd/+6/Nh0PYiVBRc6E3N3lifFxO4HBjO9+qFEMIm
 stNJT5Rl3unMbVW6qNqgX8XtnqCQPuxUASTrj7YgQMGgfCZPPOMxtiIZO
 8lTSIENFuOzZW/8xz1QpB2xKEhe+RVpeJdrBCumFMekOryEK7VWMCphW5
 SGqIV2fnU+r4vjz6mIwFsAkwn8j6a1bBmaVRXjnxByv4kgpRkj9SSWDwK
 cVTEmXpfQJ5vC1zZDFHciDzEdi8kFYZr+zhkJe7GE9Zlb5WvW+//DFyjs
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=clIgcHVu
Subject: [Intel-wired-lan] [PATCH net-next v7 5/5] ice: use debugfs to
 output FW log data
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

The FW log data can be quite large so we don't want to use syslog.
Instead take advantage of debugfs to write the data to.

The file is binary data and users should send them to us to
work with the FW team to decode them.

An example of how to retrieve the data using debugfs is:

cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog > fwlog

Also updated the documentation to add the new parameters.

Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
---
 Documentation/networking/devlink/ice.rst      |  39 ++++++
 drivers/net/ethernet/intel/ice/Makefile       |   4 +-
 drivers/net/ethernet/intel/ice/ice.h          |  22 ++++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_debugfs.c  | 115 ++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.c    |   2 +-
 drivers/net/ethernet/intel/ice/ice_main.c     | 124 ++++++++++++++----
 7 files changed, 278 insertions(+), 29 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_debugfs.c

diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
index 625efb3777d5..546a618ae7a2 100644
--- a/Documentation/networking/devlink/ice.rst
+++ b/Documentation/networking/devlink/ice.rst
@@ -7,6 +7,45 @@ ice devlink support
 This document describes the devlink features implemented by the ``ice``
 device driver.
 
+Parameters
+=============
+
+.. list-table:: Driver-specific parameters implemented
+   :widths: 5 5 5 85
+
+   * - Name
+     - Type
+     - Mode
+     - Description
+   * - ``fwlog_supported``
+     - Boolean
+     - runtime
+     - This parameter indicates to the user whether FW loggiing is supported
+       or not in the currently loaded FW.
+   * - ``fwlog_enabled``
+     - Boolean
+     - runtime
+     - This parameter indicates to the user whether the driver is currently
+       getting FW logs or not.
+   * - ``fwlog_level``
+     - u8
+     - runtime
+     - This parameter indicates the current log level. Each level includes the
+       messages from the previous/lower level. Valid values are
+
+          * ``0`` - no logging
+          * ``1`` - error logging
+          * ``2`` - warning logging
+          * ``3`` - normal logging
+          * ``4`` - verbose logging
+   * - ``fwlog_resolution``
+     - u8
+     - runtime
+     - This parameter indicates the number of log messages to included in a
+       single ARQ event. The range is 1-128 (1 means push every log message,
+       128 means push only when the max AQ command buffer is full). The
+       suggested value is 10.
+
 Info versions
 =============
 
diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 6e4680ad097c..452a440a9810 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -34,7 +34,8 @@ ice-y := ice_main.o	\
 	 ice_ethtool.o  \
 	 ice_repr.o	\
 	 ice_tc_lib.o	\
-	 ice_fwlog.o
+	 ice_fwlog.o	\
+	 ice_debugfs.o
 ice-$(CONFIG_PCI_IOV) +=	\
 	ice_sriov.o		\
 	ice_virtchnl.o		\
@@ -49,3 +50,4 @@ ice-$(CONFIG_RFS_ACCEL) += ice_arfs.o
 ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
 ice-$(CONFIG_ICE_SWITCHDEV) += ice_eswitch.o
 ice-$(CONFIG_ICE_GNSS) += ice_gnss.o
+ice-$(CONFIG_DEBUG_FS) += ice_debugfs.o
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index cd81974822cc..252f6c0acf99 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -552,6 +552,7 @@ struct ice_pf {
 	struct ice_vsi_stats **vsi_stats;
 	struct ice_sw *first_sw;	/* first switch created by firmware */
 	u16 eswitch_mode;		/* current mode of eswitch */
+	struct dentry *ice_debugfs_pf;
 	struct ice_vfs vfs;
 	DECLARE_BITMAP(features, ICE_F_MAX);
 	DECLARE_BITMAP(state, ICE_STATE_NBITS);
@@ -634,6 +635,8 @@ struct ice_pf {
 #define ICE_VF_AGG_NODE_ID_START	65
 #define ICE_MAX_VF_AGG_NODES		32
 	struct ice_agg_node vf_agg_node[ICE_MAX_VF_AGG_NODES];
+	struct list_head fwlog_data_list;
+	u8 fwlog_list_count;
 };
 
 struct ice_netdev_priv {
@@ -648,6 +651,15 @@ struct ice_netdev_priv {
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
@@ -872,6 +884,16 @@ static inline bool ice_is_adq_active(struct ice_pf *pf)
 	return false;
 }
 
+#ifdef CONFIG_DEBUG_FS
+void ice_debugfs_fwlog_init(struct ice_pf *pf);
+void ice_debugfs_init(void);
+void ice_debugfs_exit(void);
+#else
+static inline void ice_debugfs_fwlog_init(struct ice_pf *pf) { }
+static inline void ice_debugfs_init(void) { }
+static inline void ice_debugfs_exit(void) { }
+#endif /* CONFIG_DEBUG_FS */
+
 bool netif_is_ice(struct net_device *dev);
 int ice_vsi_setup_tx_rings(struct ice_vsi *vsi);
 int ice_vsi_setup_rx_rings(struct ice_vsi *vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 1af036beeb45..27c2cea29c51 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -2377,6 +2377,7 @@ enum ice_adminq_opc {
 	ice_aqc_opc_fw_logs_config			= 0xFF30,
 	ice_aqc_opc_fw_logs_register			= 0xFF31,
 	ice_aqc_opc_fw_logs_query			= 0xFF32,
+	ice_aqc_opc_fw_logs_event			= 0xFF33,
 };
 
 #endif /* _ICE_ADMINQ_CMD_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
new file mode 100644
index 000000000000..c6e48a345f34
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
@@ -0,0 +1,115 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c) 2022, Intel Corporation. */
+
+#include <linux/fs.h>
+#include <linux/debugfs.h>
+#include <linux/random.h>
+#include "ice.h"
+
+static struct dentry *ice_debugfs_root;
+
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
+	if (list_empty(&pf->fwlog_data_list)) {
+		return 0;
+	}
+
+	list_for_each_entry(log, &pf->fwlog_data_list, list) {
+		u16 cur_buf_len = log->data_size;
+		int retval;
+
+		if (cur_buf_len >= count)
+			break;
+
+		retval = copy_to_user(buffer, log->data, cur_buf_len);
+		if (retval)
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
+static const struct file_operations ice_debugfs_command_fops = {
+	.owner = THIS_MODULE,
+	.open  = simple_open,
+	.read = ice_debugfs_command_read,
+};
+
+/**
+ * ice_debugfs_fwlog_init - setup the debugfs directory
+ * @pf: the ice that is starting up
+ */
+void ice_debugfs_fwlog_init(struct ice_pf *pf)
+{
+	const char *name = pci_name(pf->pdev);
+	struct dentry *pfile;
+
+	/* only support fw log commands on PF 0 */
+	if (pf->hw.bus.func)
+		return;
+
+	pf->ice_debugfs_pf = debugfs_create_dir(name, ice_debugfs_root);
+	if (IS_ERR(pf->ice_debugfs_pf))
+		return;
+
+	pfile = debugfs_create_file("fwlog", 0400, pf->ice_debugfs_pf, pf,
+				    &ice_debugfs_command_fops);
+	if (!pfile)
+		goto create_failed;
+
+	return;
+
+create_failed:
+	dev_err(ice_pf_to_dev(pf), "debugfs dir/file for %s failed\n", name);
+	debugfs_remove_recursive(pf->ice_debugfs_pf);
+}
+
+/**
+ * ice_debugfs_init - create root directory for debugfs entries
+ */
+void ice_debugfs_init(void)
+{
+	ice_debugfs_root = debugfs_create_dir(KBUILD_MODNAME, NULL);
+	if (IS_ERR(ice_debugfs_root))
+		pr_info("init of debugfs failed\n");
+}
+
+/**
+ * ice_debugfs_exit - remove debugfs entries
+ */
+void ice_debugfs_exit(void)
+{
+	debugfs_remove_recursive(ice_debugfs_root);
+	ice_debugfs_root = NULL;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
index 22c3c249824a..a6b468123bc0 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
@@ -67,7 +67,7 @@ static bool valid_cfg(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
 	}
 
 	return valid_module_entries(hw, cfg->module_entries,
-				    ICE_AQC_FW_LOG_ID_MAX))
+				    ICE_AQC_FW_LOG_ID_MAX);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index c7aa47cea8b1..d870fc940015 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1369,6 +1369,43 @@ ice_handle_link_event(struct ice_pf *pf, struct ice_rq_event_info *event)
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
@@ -1642,6 +1679,9 @@ static int __ice_clean_ctrlq(struct ice_pf *pf, enum ice_ctl_q q_type)
 			if (!ice_is_malicious_vf(pf, &event, i, pending))
 				ice_vc_process_vf_msg(pf, &event);
 			break;
+		case ice_aqc_opc_fw_logs_event:
+			ice_get_fwlog_data(pf, &event);
+			break;
 		case ice_aqc_opc_lldp_set_mib_change:
 			ice_dcb_process_lldp_set_mib_change(pf, &event);
 			break;
@@ -4679,33 +4719,6 @@ static void ice_unregister_netdev(struct ice_vsi *vsi)
 	clear_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state);
 }
 
-/**
- * ice_pf_fwlog_deinit - clear FW logging metadata on device exit
- * @pf: pointer to the PF struct
- */
-static void ice_pf_fwlog_deinit(struct ice_pf *pf)
-{
-	struct ice_hw *hw = &pf->hw;
-
-	/* make sure FW logging is disabled to not put the FW in a weird state
-	 * for the next driver load
-	 */
-	if (hw->fwlog_ena) {
-		int status;
-
-		hw->fwlog_cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
-		status = ice_fwlog_set(hw, &hw->fwlog_cfg);
-		if (status)
-			dev_warn(ice_pf_to_dev(pf), "Unable to turn off FW logging, status: %d\n",
-				 status);
-
-		status = ice_fwlog_unregister(hw);
-		if (status)
-			dev_warn(ice_pf_to_dev(pf), "Unable to unregister FW logging, status: %d\n",
-				 status);
-	}
-}
-
 /**
  * ice_cfg_netdev - Allocate, configure and register a netdev
  * @vsi: the VSI associated with the new netdev
@@ -4832,6 +4845,56 @@ static void ice_deinit_eth(struct ice_pf *pf)
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
+
+	/* only supported on PF 0 */
+	if (pf->hw.bus.func)
+		return;
+
+	/* make sure FW logging is disabled to not put the FW in a weird state
+	 * for the next driver load
+	 */
+	if (hw->fwlog_ena) {
+		int status;
+
+		hw->fwlog_cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
+		status = ice_fwlog_set(hw, &hw->fwlog_cfg);
+		if (status)
+			dev_warn(ice_pf_to_dev(pf), "Unable to turn off FW logging, status: %d\n",
+				 status);
+
+		status = ice_fwlog_unregister(hw);
+		if (status)
+			dev_warn(ice_pf_to_dev(pf), "Unable to unregister FW logging, status: %d\n",
+				 status);
+	}
+
+	list_for_each_entry_safe(fwlog, fwlog_tmp, &pf->fwlog_data_list, list) {
+		vfree(fwlog->data);
+		vfree(fwlog);
+	}
+}
+
 static int ice_init_dev(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
@@ -5334,6 +5397,9 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		hw->debug_mask = debug;
 #endif
 
+	ice_pf_fwlog_init(pf);
+	ice_debugfs_fwlog_init(pf);
+
 	err = ice_init(pf);
 	if (err)
 		goto err_init;
@@ -5444,6 +5510,7 @@ static void ice_remove(struct pci_dev *pdev)
 	}
 
 	ice_pf_fwlog_deinit(pf);
+	ice_debugfs_exit();
 
 	if (test_bit(ICE_FLAG_SRIOV_ENA, pf->flags)) {
 		set_bit(ICE_VF_RESETS_DISABLED, pf->state);
@@ -5907,10 +5974,13 @@ static int __init ice_module_init(void)
 		return -ENOMEM;
 	}
 
+	ice_debugfs_init();
+
 	status = pci_register_driver(&ice_driver);
 	if (status) {
 		pr_err("failed to register PCI driver, err %d\n", status);
 		destroy_workqueue(ice_wq);
+		ice_debugfs_exit();
 	}
 
 	return status;
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
