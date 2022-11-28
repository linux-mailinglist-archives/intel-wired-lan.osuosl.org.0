Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6B163B470
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Nov 2022 22:48:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 62AE540A1D;
	Mon, 28 Nov 2022 21:48:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 62AE540A1D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669672101;
	bh=s7z4i0ik4mrS5nFzkW9lqSZkJVSrhXSCh5KWK1s4wz0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5FXYPWOO1+zo+eoTS9JwbCkgzz599+HpOHN2G9MzWvjT4NWgVH73Zs62N07ERvf7c
	 2EyaUb0c5AubCg6JJ/axE+bu83CKi5TxgdE8RhDgc7tiCtWE5Iw7h1lr2j+6oS2Zc1
	 ksED/1Segp3o7de7UBm1M69FR/plxRgJ0fdYJIGNkKRRJJgV4fAKSJxYwQtW5jBe8o
	 +HC6x8oYHxCQDJCh6NqecrGZDUxYMKkaOiBmdSRcPrEr4xjN+nIaYLD1O3sTZIGY/R
	 eCmELxNZ689UPOAZKaFJmJTqzVOIx2SwBgdB9W/Us6mEcGn6jDg4x9RVtX3nodoWMi
	 +czFa0wLm2UKg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UnHNls5dJQhI; Mon, 28 Nov 2022 21:48:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0280540A5D;
	Mon, 28 Nov 2022 21:48:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0280540A5D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B7C4E1BF86C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 21:47:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BAFBC40A1D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 21:47:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BAFBC40A1D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pzO29iRfyMcZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Nov 2022 21:47:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B49040A1B
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4B49040A1B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 21:47:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="401240391"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="401240391"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 13:47:52 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="972430293"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="972430293"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.213.170.9])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 13:47:52 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 28 Nov 2022 13:47:49 -0800
Message-Id: <20221128214749.110-6-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221128214749.110-1-paul.m.stillwell.jr@intel.com>
References: <20221128214749.110-1-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669672073; x=1701208073;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ifcjtgvEyaQ8nao5URmujoCiqHnPBNjKinc9/XDDZMU=;
 b=hnEtrA5tkXe+19ASX7TYMCfx2JspbfxTOVjtbOd37ufxgT5MgtxlvsQm
 Fk+/1SMTuhPOUxFvTl+6R/OVKSzvWa7Ms2296oQ4NUS8CjdLrTQmzi3S7
 uTnDFIWYVetQsdnYw5VbDe4AlCFeIm7T4lmorIWlQgvloPROG03jbeMte
 hi4D0wKKznavTRVpXkqCjk12s+hXNslTk5siSabUKab+fBx/D/vLCPgL0
 yj+OBOt0+WroplxWIw0IQwiyKT79X1RYeMqPFDlU1o+Qd7S8ljFPypCgT
 sapjC/vSxtViUf+2XZ3TfFynTvqOFPxN11+zm3I2ksqZHDyDbG+gm8Jtm
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hnEtrA5t
Subject: [Intel-wired-lan] [PATCH net-next 5/5] ice: use debugfs to output
 FW log data
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

Also, a previous patch addded codde to disable FW logging when
the driver was unloaded. The code was added to
ice_devlink_unregister(), which didn't seem correct so move the
disabling of FW logging on driver unload to a better place.

Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile       |   3 +-
 drivers/net/ethernet/intel/ice/ice.h          |  24 ++++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_debugfs.c  | 109 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_devlink.c  |  20 ----
 drivers/net/ethernet/intel/ice/ice_main.c     |  98 ++++++++++++++++
 6 files changed, 235 insertions(+), 21 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_debugfs.c

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 750fed7e07d7..5e0013330c46 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -33,7 +33,8 @@ ice-y := ice_main.o	\
 	 ice_ethtool.o  \
 	 ice_repr.o	\
 	 ice_tc_lib.o	\
-	 ice_fwlog.o
+	 ice_fwlog.o	\
+	 ice_debugfs.o
 ice-$(CONFIG_PCI_IOV) +=	\
 	ice_sriov.o		\
 	ice_virtchnl.o		\
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index ea64bcff108a..c8f1f34b8fbc 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -552,6 +552,9 @@ struct ice_pf {
 	struct ice_vsi_stats **vsi_stats;
 	struct ice_sw *first_sw;	/* first switch created by firmware */
 	u16 eswitch_mode;		/* current mode of eswitch */
+#ifdef CONFIG_DEBUG_FS
+	struct dentry *ice_debugfs_pf;
+#endif /* CONFIG_DEBUG_FS */
 	struct ice_vfs vfs;
 	DECLARE_BITMAP(features, ICE_F_MAX);
 	DECLARE_BITMAP(state, ICE_STATE_NBITS);
@@ -634,6 +637,8 @@ struct ice_pf {
 #define ICE_VF_AGG_NODE_ID_START	65
 #define ICE_MAX_VF_AGG_NODES		32
 	struct ice_agg_node vf_agg_node[ICE_MAX_VF_AGG_NODES];
+	struct list_head fwlog_data_list;
+	u8 fwlog_list_count;
 };
 
 struct ice_netdev_priv {
@@ -648,6 +653,15 @@ struct ice_netdev_priv {
 	struct list_head tc_indr_block_priv_list;
 };
 
+struct ice_fwlog_data {
+	struct list_head list;
+	u16 data_size;
+	u8 *data;
+};
+
+/* define the maximum number of items that can be in the list */
+#define ICE_FWLOG_MAX_SIZE	64
+
 /**
  * ice_vector_ch_enabled
  * @qv: pointer to q_vector, can be NULL
@@ -872,6 +886,16 @@ static inline bool ice_is_adq_active(struct ice_pf *pf)
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
index 8fa18bc5d441..d17bcc778bdd 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -2406,11 +2406,13 @@ enum ice_adminq_opc {
 
 	/* Standalone Commands/Events */
 	ice_aqc_opc_event_lan_overflow			= 0x1001,
+
 	/* FW Logging Commands */
 	ice_aqc_opc_fw_logs_config			= 0xFF30,
 	ice_aqc_opc_fw_logs_register			= 0xFF31,
 	ice_aqc_opc_fw_logs_query			= 0xFF32,
 	ice_aqc_opc_fw_logs_event			= 0xFF33,
+	ice_aqc_opc_fw_logs_get				= 0xFF34,
 };
 
 #endif /* _ICE_ADMINQ_CMD_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
new file mode 100644
index 000000000000..767df937f56a
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
@@ -0,0 +1,109 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c) 2018, Intel Corporation. */
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
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 923556e6ae79..148902b515bf 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -1739,26 +1739,6 @@ void ice_devlink_register(struct ice_pf *pf)
  */
 void ice_devlink_unregister(struct ice_pf *pf)
 {
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
-
 	devlink_unregister(priv_to_devlink(pf));
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 517702af327c..01cf4cb78009 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1213,6 +1213,45 @@ ice_handle_link_event(struct ice_pf *pf, struct ice_rq_event_info *event)
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
+	if (pf->fwlog_list_count >= ICE_FWLOG_MAX_SIZE) {
+		dev_info(dev, "Reached max list size for fwlog list!\n");
+		return;
+	}
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
@@ -1486,6 +1525,9 @@ static int __ice_clean_ctrlq(struct ice_pf *pf, enum ice_ctl_q q_type)
 			if (!ice_is_malicious_vf(pf, &event, i, pending))
 				ice_vc_process_vf_msg(pf, &event);
 			break;
+		case ice_aqc_opc_fw_logs_event:
+			ice_get_fwlog_data(pf, &event);
+			break;
 		case ice_aqc_opc_lldp_set_mib_change:
 			ice_dcb_process_lldp_set_mib_change(pf, &event);
 			break;
@@ -4688,6 +4730,52 @@ static int ice_register_netdev(struct ice_pf *pf)
 	return err;
 }
 
+/**
+ * ice_pf_fwlog_init - initialize FW logging on device init
+ * @pf: pointer to the PF struct
+ *
+ * This should always be called after ice_hw_init().
+ */
+static void
+ice_pf_fwlog_init(struct ice_pf *pf)
+{
+	INIT_LIST_HEAD(&pf->fwlog_data_list);
+}
+
+/**
+ * ice_pf_fwlog_deinit - clear FW logging metadata on device exit
+ * @pf: pointer to the PF struct
+ */
+static void
+ice_pf_fwlog_deinit(struct ice_pf *pf)
+{
+	struct ice_fwlog_data *fwlog, *fwlog_tmp;
+	struct ice_hw *hw = &pf->hw;
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
 /**
  * ice_probe - Device initialization routine
  * @pdev: PCI device information struct
@@ -4773,8 +4861,12 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		goto err_exit_unroll;
 	}
 
+	ice_pf_fwlog_init(pf);
+
 	ice_init_feature_support(pf);
 
+	ice_debugfs_fwlog_init(pf);
+
 	err = ice_init_ddp_config(hw, pf);
 
 	/* during topology change ice_init_hw may fail */
@@ -5139,6 +5231,8 @@ static void ice_remove(struct pci_dev *pdev)
 		msleep(100);
 	}
 
+	ice_pf_fwlog_deinit(pf);
+
 	ice_tc_indir_block_remove(pf);
 
 	if (test_bit(ICE_FLAG_SRIOV_ENA, pf->flags)) {
@@ -5620,10 +5714,13 @@ static int __init ice_module_init(void)
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
@@ -5640,6 +5737,7 @@ static void __exit ice_module_exit(void)
 {
 	pci_unregister_driver(&ice_driver);
 	destroy_workqueue(ice_wq);
+	ice_debugfs_exit();
 	pr_info("module unloaded\n");
 }
 module_exit(ice_module_exit);
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
