Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F58666374
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Jan 2023 20:19:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3795F60E64;
	Wed, 11 Jan 2023 19:19:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3795F60E64
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673464789;
	bh=gVN4ouc+8+y1+FfCQtvQ59Y5PH4fmlismbScW+J08Bc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hSXVDUIOPDumd+dQK7JAIMvEZiFqCUnkVyNcpQKR9g7TlEoO5F0IgP8RPui4tAkjG
	 rppckEJwFoe/PbrhndSWttBuMPjAf82ewo5qDkeLOFMrVX4VpSps9dU1cgYd0xsoqb
	 i0TEfsCHphdV66xIL4nnxk2rK9p21ENi1q+F/m+OvHKlKDsWUXuWOQbXC7ltPk4WdX
	 NAsmMZPCrK1SBU4CTfzbq7A9STEyvch80Bg//W6w3LK/HHVE68h2TXdrQsg6ETQZps
	 wpGUsvPIkPGr9CtG+TNkC7kPDlAq6u/2527TLjbNNaeWzy+GzU7qz+aQR7wfnER9dd
	 SK+3KdCYR0SDg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 31-nkzFUiABL; Wed, 11 Jan 2023 19:19:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5A57600B9;
	Wed, 11 Jan 2023 19:19:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5A57600B9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 95AFB1BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 19:19:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 94AE8600B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 19:19:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94AE8600B8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LBUFvTpN5sTE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Jan 2023 19:19:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 117EF60E73
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 117EF60E73
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 19:19:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="321205226"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; d="scan'208";a="321205226"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 11:19:19 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="902892244"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; d="scan'208";a="902892244"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.212.10.187])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 11:19:19 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 11 Jan 2023 11:19:06 -0800
Message-Id: <20230111191906.131-6-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230111191906.131-1-paul.m.stillwell.jr@intel.com>
References: <20230111191906.131-1-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673464760; x=1705000760;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3z5soiOvhffQQaOHSGO6crNHIq8xkEYmj+JeySEwcbo=;
 b=NOxj+kdafNXiXTNXtpxUHI/NkSnTJiXxRkku3+VATHdcFzsqcGKG2znO
 sDLStYeuRaBFqgGZNf0jJQppSDb76+VECkTIaRk5b+Ts5nc8RkYByTLyn
 RN/7PqwTVOvyfx0k+YRcDSc+ioDHa98mAhth+Z57KlsEUT40EHGvaRaUT
 bJRFT+qXzrsCfAYSkG8zcfNEqirjlfvIwR61eFyW/6o5h+2iMIfFVApCP
 Eii3nBmGkWdTA0C6xwoiBYjVV4roJDSfnGsW9wP+AErdg8Lk33spri0x+
 dHulyZeI4Yv9IqWkgOiD8tBbmyG0ABFFu3335vl0YEVKJEMK8hdegIyhK
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NOxj+kda
Subject: [Intel-wired-lan] [PATCH net-next v5 5/5] ice: use debugfs to
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
 drivers/net/ethernet/intel/ice/ice_debugfs.c  | 109 +++++++++++++++
 drivers/net/ethernet/intel/ice/ice_main.c     | 124 ++++++++++++++----
 6 files changed, 271 insertions(+), 28 deletions(-)
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
index c3475834d536..b3e45d92cb20 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -549,6 +549,7 @@ struct ice_pf {
 	struct ice_vsi_stats **vsi_stats;
 	struct ice_sw *first_sw;	/* first switch created by firmware */
 	u16 eswitch_mode;		/* current mode of eswitch */
+	struct dentry *ice_debugfs_pf;
 	struct ice_vfs vfs;
 	DECLARE_BITMAP(features, ICE_F_MAX);
 	DECLARE_BITMAP(state, ICE_STATE_NBITS);
@@ -631,6 +632,8 @@ struct ice_pf {
 #define ICE_VF_AGG_NODE_ID_START	65
 #define ICE_MAX_VF_AGG_NODES		32
 	struct ice_agg_node vf_agg_node[ICE_MAX_VF_AGG_NODES];
+	struct list_head fwlog_data_list;
+	u8 fwlog_list_count;
 };
 
 struct ice_netdev_priv {
@@ -645,6 +648,15 @@ struct ice_netdev_priv {
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
@@ -869,6 +881,16 @@ static inline bool ice_is_adq_active(struct ice_pf *pf)
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
index 000000000000..682bef0b62e8
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
@@ -0,0 +1,109 @@
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
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_fwlog_data *log, *tmp_log;
+	int data_copied = 0;
+
+	if (list_empty(&pf->fwlog_data_list)) {
+		dev_info(dev, "FW log is empty\n");
+		return 0;
+	}
+
+	list_for_each_entry_safe(log, tmp_log, &pf->fwlog_data_list, list) {
+		u16 cur_buf_len = log->data_size;
+		int retval;
+
+		if (cur_buf_len > count)
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
+
+		/* don't delete the list element until we know it got copied */
+		kfree(log->data);
+		list_del(&log->list);
+		kfree(log);
+		pf->fwlog_list_count--;
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
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 593efc064f5b..7bcc08a9e64f 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1212,6 +1212,43 @@ ice_handle_link_event(struct ice_pf *pf, struct ice_rq_event_info *event)
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
+	fwlog = kzalloc(sizeof(*fwlog), GFP_KERNEL);
+	if (!fwlog) {
+		dev_warn(dev, "Couldn't allocate memory for FWlog element\n");
+		return;
+	}
+
+	INIT_LIST_HEAD(&fwlog->list);
+
+	fwlog->data_size = le16_to_cpu(event->desc.datalen);
+	fwlog->data = kzalloc(fwlog->data_size, GFP_KERNEL);
+	if (!fwlog->data) {
+		dev_warn(dev, "Couldn't allocate memory for FWlog data\n");
+		kfree(fwlog);
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
@@ -1485,6 +1522,9 @@ static int __ice_clean_ctrlq(struct ice_pf *pf, enum ice_ctl_q q_type)
 			if (!ice_is_malicious_vf(pf, &event, i, pending))
 				ice_vc_process_vf_msg(pf, &event);
 			break;
+		case ice_aqc_opc_fw_logs_event:
+			ice_get_fwlog_data(pf, &event);
+			break;
 		case ice_aqc_opc_lldp_set_mib_change:
 			ice_dcb_process_lldp_set_mib_change(pf, &event);
 			break;
@@ -4500,33 +4540,6 @@ static void ice_unregister_netdev(struct ice_vsi *vsi)
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
@@ -4653,6 +4666,56 @@ static void ice_deinit_eth(struct ice_pf *pf)
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
+		kfree(fwlog->data);
+		kfree(fwlog);
+	}
+}
+
 static int ice_init_dev(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
@@ -5156,6 +5219,9 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		hw->debug_mask = debug;
 #endif
 
+	ice_pf_fwlog_init(pf);
+	ice_debugfs_fwlog_init(pf);
+
 	err = ice_init(pf);
 	if (err)
 		goto err_init;
@@ -5265,6 +5331,7 @@ static void ice_remove(struct pci_dev *pdev)
 	}
 
 	ice_pf_fwlog_deinit(pf);
+	ice_debugfs_exit();
 
 	if (test_bit(ICE_FLAG_SRIOV_ENA, pf->flags)) {
 		set_bit(ICE_VF_RESETS_DISABLED, pf->state);
@@ -5728,10 +5795,13 @@ static int __init ice_module_init(void)
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
