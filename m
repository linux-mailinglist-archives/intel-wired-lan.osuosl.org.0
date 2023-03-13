Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 980146B8600
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Mar 2023 00:19:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2C0E1409D7;
	Mon, 13 Mar 2023 23:19:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C0E1409D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678749559;
	bh=adUZoXnTgUiS1yVf91JaV/HiIu6KPWmdYl+wJzpY1fw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wRz+A1JU6eU3qIPZDpiFaIaChz/+njKv8LLHJPR0YlenJMsYqQVPjDle/ejkYIYAv
	 ulnat503FIHJE2FV7e03CA9kb9K4jUpCUgNcRyGYrYXJz8rG7TNPzMm+zNjCvhhbo9
	 L35unuqQbWphkCMXIbCQ4XRY40P1eFpJBFtyCK3h0paKbg09UxC/yMPnbgZex0bKl8
	 7p1TthAmvgOfNisK4QlajY7EIRuzLdUiZNlEBNu8GJljwkNW+lupBAVtATAWW68fx1
	 +R04jZgdvEa0JuRWO/KMGfs3Dgp2SoF5L0+rojNkWrfkmxgnSU/EDbRUozqXV930oT
	 Hfqb+zOxQ5zww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ux0hUMxB7RkK; Mon, 13 Mar 2023 23:19:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1DCED4056C;
	Mon, 13 Mar 2023 23:19:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1DCED4056C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0321B1BF377
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 23:19:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F3AF841548
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 23:18:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F3AF841548
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fqy7CDf1dykk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Mar 2023 23:18:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0A4334146F
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0A4334146F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 23:18:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="335979588"
X-IronPort-AV: E=Sophos;i="5.98,258,1673942400"; d="scan'208";a="335979588"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 16:18:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="743076277"
X-IronPort-AV: E=Sophos;i="5.98,258,1673942400"; d="scan'208";a="743076277"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.212.10.39])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 16:18:55 -0700
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Mar 2023 16:18:38 -0700
Message-Id: <20230313231841.113-3-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230313231841.113-1-paul.m.stillwell.jr@intel.com>
References: <20230313231841.113-1-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678749537; x=1710285537;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kq4XAejVDlMDHnrGeq6MOEKYTzrVZSfC5yyEPVQQKKo=;
 b=DqcAsf1R9LqG3ZbtecqSlWmOod+PNpAoWZJkhBJzmvgdCHYpbIxZ0YrK
 jphxGUEgACrQPj4JBgSw7s9J0+s3DxalefnGlOeC3osnNiCVKDSHzWPOY
 SMAqm1Zh5muSBJppM5nG6zBg2H8FAbWHDrZi0JjiugaeKcES8H5AH5xMX
 gmJrIf5wKy2ZV4BhrBokIf8mBhZShruRJVwLS0WLFPMl1hbR/662Zaax6
 aTbe8f7zjAzFx40Xz/VcshlGnYrtXtXNbw5CGiG5M6RU1Ni5UBQDFyMO8
 /FbNkrz9JhSv5QgkKE+DbsX+fpD0Vp08Ifz1gBCSCokOjdnMWvk4DheCg
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DqcAsf1R
Subject: [Intel-wired-lan] [PATCH net-next v11 2/5] ice: enable debugfs to
 check FW logging status
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
Cc: Brett Creeley <brett.creeley@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Users want the ability to debug FW issues by retrieving the
FW logs from the E8xx devices. Enable debugfs to query the driver
to see if the NVM image allows FW logging and to see if FW
logging is currently running.

If the NVM supports FW logging then the file 'fwlog' will be created
under the PCI device ID for the ice driver. If the file does not exist
then either the NVM doesn't support FW logging or debugfs is not enabled
on the system.

To see the status of FW logging use 'dump fwlog_cfg' like this:

echo dump fwlog_cfg > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog

Co-developed-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
---
v10->v11: none
no data on previous versions
---
 drivers/net/ethernet/intel/ice/Makefile       |   4 +-
 drivers/net/ethernet/intel/ice/ice.h          |  20 ++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  76 +++++
 drivers/net/ethernet/intel/ice/ice_common.c   |   4 +
 drivers/net/ethernet/intel/ice/ice_debugfs.c  | 280 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.c    | 159 ++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.h    |  54 ++++
 drivers/net/ethernet/intel/ice/ice_main.c     |   5 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   4 +
 9 files changed, 605 insertions(+), 1 deletion(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_debugfs.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 5d89392f969b..3290f594286e 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -33,7 +33,8 @@ ice-y := ice_main.o	\
 	 ice_lag.o	\
 	 ice_ethtool.o  \
 	 ice_repr.o	\
-	 ice_tc_lib.o
+	 ice_tc_lib.o	\
+	 ice_fwlog.o
 ice-$(CONFIG_PCI_IOV) +=	\
 	ice_sriov.o		\
 	ice_virtchnl.o		\
@@ -48,3 +49,4 @@ ice-$(CONFIG_RFS_ACCEL) += ice_arfs.o
 ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
 ice-$(CONFIG_ICE_SWITCHDEV) += ice_eswitch.o
 ice-$(CONFIG_GNSS) += ice_gnss.o
+ice-$(CONFIG_DEBUG_FS) += ice_debugfs.o
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index aa32111afd6e..5b44e400b740 100644
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
@@ -872,6 +873,25 @@ static inline bool ice_is_adq_active(struct ice_pf *pf)
 	return false;
 }
 
+#ifdef CONFIG_DEBUG_FS
+void ice_debugfs_fwlog_init(struct ice_pf *pf);
+void ice_debugfs_init(void);
+void ice_debugfs_exit(void);
+int
+ice_pf_fwlog_update_modules(struct ice_pf *pf, u8 log_level,
+			    unsigned long events);
+#else
+static inline void ice_debugfs_fwlog_init(struct ice_pf *pf) { }
+static inline void ice_debugfs_init(void) { }
+static inline void ice_debugfs_exit(void) { }
+static int
+ice_pf_fwlog_update_modules(struct ice_pf *pf, u8 log_level,
+			    unsigned long events)
+{
+	return -EOPNOTSUPP;
+}
+#endif /* CONFIG_DEBUG_FS */
+
 bool netif_is_ice(struct net_device *dev);
 int ice_vsi_setup_tx_rings(struct ice_vsi *vsi);
 int ice_vsi_setup_rx_rings(struct ice_vsi *vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index e1b95cc3a538..80e5376ca064 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -2038,6 +2038,77 @@ struct ice_aqc_event_lan_overflow {
 	u8 reserved[8];
 };
 
+enum ice_aqc_fw_logging_mod {
+	ICE_AQC_FW_LOG_ID_GENERAL = 0,
+	ICE_AQC_FW_LOG_ID_CTRL,
+	ICE_AQC_FW_LOG_ID_LINK,
+	ICE_AQC_FW_LOG_ID_LINK_TOPO,
+	ICE_AQC_FW_LOG_ID_DNL,
+	ICE_AQC_FW_LOG_ID_I2C,
+	ICE_AQC_FW_LOG_ID_SDP,
+	ICE_AQC_FW_LOG_ID_MDIO,
+	ICE_AQC_FW_LOG_ID_ADMINQ,
+	ICE_AQC_FW_LOG_ID_HDMA,
+	ICE_AQC_FW_LOG_ID_LLDP,
+	ICE_AQC_FW_LOG_ID_DCBX,
+	ICE_AQC_FW_LOG_ID_DCB,
+	ICE_AQC_FW_LOG_ID_XLR,
+	ICE_AQC_FW_LOG_ID_NVM,
+	ICE_AQC_FW_LOG_ID_AUTH,
+	ICE_AQC_FW_LOG_ID_VPD,
+	ICE_AQC_FW_LOG_ID_IOSF,
+	ICE_AQC_FW_LOG_ID_PARSER,
+	ICE_AQC_FW_LOG_ID_SW,
+	ICE_AQC_FW_LOG_ID_SCHEDULER,
+	ICE_AQC_FW_LOG_ID_TXQ,
+	ICE_AQC_FW_LOG_ID_RSVD,
+	ICE_AQC_FW_LOG_ID_POST,
+	ICE_AQC_FW_LOG_ID_WATCHDOG,
+	ICE_AQC_FW_LOG_ID_TASK_DISPATCH,
+	ICE_AQC_FW_LOG_ID_MNG,
+	ICE_AQC_FW_LOG_ID_SYNCE,
+	ICE_AQC_FW_LOG_ID_HEALTH,
+	ICE_AQC_FW_LOG_ID_TSDRV,
+	ICE_AQC_FW_LOG_ID_PFREG,
+	ICE_AQC_FW_LOG_ID_MDLVER,
+	ICE_AQC_FW_LOG_ID_MAX,
+};
+
+/* Set FW Logging configuration (indirect 0xFF30)
+ * Query FW Logging (indirect 0xFF32)
+ */
+struct ice_aqc_fw_log {
+	u8 cmd_flags;
+#define ICE_AQC_FW_LOG_CONF_UART_EN	BIT(0)
+#define ICE_AQC_FW_LOG_CONF_AQ_EN	BIT(1)
+#define ICE_AQC_FW_LOG_QUERY_REGISTERED	BIT(2)
+#define ICE_AQC_FW_LOG_AQ_QUERY		BIT(2)
+
+	u8 rsp_flag;
+	__le16 fw_rt_msb;
+	union {
+		struct {
+			__le32 fw_rt_lsb;
+		} sync;
+		struct {
+			__le16 log_resolution;
+			__le16 mdl_cnt;
+		} cfg;
+	} ops;
+	__le32 addr_high;
+	__le32 addr_low;
+};
+
+/* Response Buffer for:
+ *    Set Firmware Logging Configuration (0xFF30)
+ *    Query FW Logging (0xFF32)
+ */
+struct ice_aqc_fw_log_cfg_resp {
+	__le16 module_identifier;
+	u8 log_level;
+	u8 rsvd0;
+};
+
 /**
  * struct ice_aq_desc - Admin Queue (AQ) descriptor
  * @flags: ICE_AQ_FLAG_* flags
@@ -2114,6 +2185,7 @@ struct ice_aq_desc {
 		struct ice_aqc_add_update_free_vsi_resp add_update_free_vsi_res;
 		struct ice_aqc_download_pkg download_pkg;
 		struct ice_aqc_driver_shared_params drv_shared_params;
+		struct ice_aqc_fw_log fw_log;
 		struct ice_aqc_set_mac_lb set_mac_lb;
 		struct ice_aqc_alloc_free_res_cmd sw_res_ctrl;
 		struct ice_aqc_set_mac_cfg set_mac_cfg;
@@ -2294,6 +2366,10 @@ enum ice_adminq_opc {
 
 	/* Standalone Commands/Events */
 	ice_aqc_opc_event_lan_overflow			= 0x1001,
+
+	/* FW Logging Commands */
+	ice_aqc_opc_fw_logs_config			= 0xFF30,
+	ice_aqc_opc_fw_logs_query			= 0xFF32,
 };
 
 #endif /* _ICE_ADMINQ_CMD_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 39ed1c6877f4..da55db0170dd 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -879,6 +879,10 @@ int ice_init_hw(struct ice_hw *hw)
 	if (status)
 		goto err_unroll_cqinit;
 
+	status = ice_fwlog_init(hw);
+	if (status)
+		ice_debug(hw, ICE_DBG_FW_LOG, "Error initializing FW logging: %d\n", status);
+
 	status = ice_clear_pf_cfg(hw);
 	if (status)
 		goto err_unroll_cqinit;
diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
new file mode 100644
index 000000000000..1319ec3e97b1
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
@@ -0,0 +1,280 @@
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
+static const char *module_id_to_name(u16 module_id)
+{
+	switch (module_id) {
+	case ICE_AQC_FW_LOG_ID_GENERAL:
+		return "General";
+	case ICE_AQC_FW_LOG_ID_CTRL:
+		return "Control (Resets + Autoload)";
+	case ICE_AQC_FW_LOG_ID_LINK:
+		return "Link Management";
+	case ICE_AQC_FW_LOG_ID_LINK_TOPO:
+		return "Link Topology Detection";
+	case ICE_AQC_FW_LOG_ID_DNL:
+		return "DNL";
+	case ICE_AQC_FW_LOG_ID_I2C:
+		return "I2C";
+	case ICE_AQC_FW_LOG_ID_SDP:
+		return "SDP";
+	case ICE_AQC_FW_LOG_ID_MDIO:
+		return "MDIO";
+	case ICE_AQC_FW_LOG_ID_ADMINQ:
+		return "Admin Queue";
+	case ICE_AQC_FW_LOG_ID_HDMA:
+		return "HDMA";
+	case ICE_AQC_FW_LOG_ID_LLDP:
+		return "LLDP";
+	case ICE_AQC_FW_LOG_ID_DCBX:
+		return "DCBX";
+	case ICE_AQC_FW_LOG_ID_DCB:
+		return "DCB";
+	case ICE_AQC_FW_LOG_ID_XLR:
+		return "XLR";
+	case ICE_AQC_FW_LOG_ID_NVM:
+		return "NVM";
+	case ICE_AQC_FW_LOG_ID_AUTH:
+		return "Authentication";
+	case ICE_AQC_FW_LOG_ID_VPD:
+		return "VPD";
+	case ICE_AQC_FW_LOG_ID_IOSF:
+		return "IOSF";
+	case ICE_AQC_FW_LOG_ID_PARSER:
+		return "Parser";
+	case ICE_AQC_FW_LOG_ID_SW:
+		return "Switch";
+	case ICE_AQC_FW_LOG_ID_SCHEDULER:
+		return "Scheduler";
+	case ICE_AQC_FW_LOG_ID_TXQ:
+		return "Tx Queue Management";
+	case ICE_AQC_FW_LOG_ID_POST:
+		return "Post";
+	case ICE_AQC_FW_LOG_ID_WATCHDOG:
+		return "Watchdog";
+	case ICE_AQC_FW_LOG_ID_TASK_DISPATCH:
+		return "Task Dispatcher";
+	case ICE_AQC_FW_LOG_ID_MNG:
+		return "Manageability";
+	case ICE_AQC_FW_LOG_ID_SYNCE:
+		return "Synce";
+	case ICE_AQC_FW_LOG_ID_HEALTH:
+		return "Health";
+	case ICE_AQC_FW_LOG_ID_TSDRV:
+		return "Time Sync";
+	case ICE_AQC_FW_LOG_ID_PFREG:
+		return "PF Registration";
+	case ICE_AQC_FW_LOG_ID_MDLVER:
+		return "Module Version";
+	default:
+		return "Unsupported";
+	}
+}
+
+static const char *log_level_to_name(u8 log_level)
+{
+	switch (log_level) {
+	case ICE_FWLOG_LEVEL_NONE:
+		return "None";
+	case ICE_FWLOG_LEVEL_ERROR:
+		return "Error";
+	case ICE_FWLOG_LEVEL_WARNING:
+		return "Warning";
+	case ICE_FWLOG_LEVEL_NORMAL:
+		return "Normal";
+	case ICE_FWLOG_LEVEL_VERBOSE:
+		return "Verbose";
+	default:
+		return "Unsupported";
+	}
+}
+
+static void ice_print_fwlog_config(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
+{
+	struct device *dev = ice_hw_to_dev(hw);
+	u16 i;
+
+	dev_info(dev, "Log_resolution: %d\n", cfg->log_resolution);
+	dev_info(dev, "Options: 0x%04x\n", cfg->options);
+	dev_info(dev, "\tarq_ena: %s\n",
+		 (cfg->options &
+		  ICE_FWLOG_OPTION_ARQ_ENA) ? "true" : "false");
+	dev_info(dev, "\tuart_ena: %s\n",
+		 (cfg->options &
+		  ICE_FWLOG_OPTION_UART_ENA) ? "true" : "false");
+	dev_info(dev, "\trunning: %s\n",
+		 (cfg->options &
+		  ICE_FWLOG_OPTION_IS_REGISTERED) ? "true" : "false");
+
+	dev_info(dev, "Module Entries:\n");
+	for (i = 0; i < ICE_AQC_FW_LOG_ID_MAX; i++) {
+		struct ice_fwlog_module_entry *entry =
+			&cfg->module_entries[i];
+
+		dev_info(dev, "\tModule ID %d (%s) Log Level %d (%s)\n",
+			 entry->module_id, module_id_to_name(entry->module_id),
+			 entry->log_level, log_level_to_name(entry->log_level));
+	}
+}
+
+/**
+ * ice_fwlog_dump_cfg - Dump current FW logging configuration
+ * @hw: pointer to the HW structure
+ */
+static void ice_fwlog_dump_cfg(struct ice_hw *hw)
+{
+	struct device *dev = ice_hw_to_dev(hw);
+	struct ice_fwlog_cfg *cfg;
+	int status;
+
+	cfg = kzalloc(sizeof(*cfg), GFP_KERNEL);
+	if (!cfg)
+		return;
+
+	status = ice_fwlog_get(hw, cfg);
+	if (status) {
+		kfree(cfg);
+		return;
+	}
+
+	dev_info(dev, "Running FWLOG Configuration:\n");
+	ice_print_fwlog_config(hw, cfg);
+
+	kfree(cfg);
+}
+
+/**
+ * ice_debugfs_command_write - write into command datum
+ * @filp: the opened file
+ * @buf: where to find the user's data
+ * @count: the length of the user's data
+ * @ppos: file position offset
+ */
+static ssize_t
+ice_debugfs_command_write(struct file *filp, const char __user *buf,
+			  size_t count, loff_t *ppos)
+{
+	struct ice_pf *pf = filp->private_data;
+	struct device *dev = ice_pf_to_dev(pf);
+	char *cmd_buf, *cmd_buf_tmp;
+	ssize_t ret;
+	char **argv;
+	int argc;
+
+	/* don't allow commands if the FW doesn't support it */
+	if (!ice_fwlog_supported(&pf->hw))
+		return -EOPNOTSUPP;
+
+	/* don't allow partial writes */
+	if (*ppos != 0)
+		return 0;
+
+	cmd_buf = memdup_user(buf, count + 1);
+	if (IS_ERR(cmd_buf))
+		return PTR_ERR(cmd_buf);
+	cmd_buf[count] = '\0';
+
+	/* the cmd_buf has a newline at the end of the command so
+	 * remove it
+	 */
+	cmd_buf_tmp = strchr(cmd_buf, '\n');
+	if (cmd_buf_tmp) {
+		*cmd_buf_tmp = '\0';
+		count = (size_t)cmd_buf_tmp - (size_t)cmd_buf + 1;
+	}
+
+	argv = argv_split(GFP_KERNEL, cmd_buf, &argc);
+	if (!argv) {
+		ret = -ENOMEM;
+		goto err_copy_from_user;
+	}
+
+	if (argc == 2 && !strncmp(argv[0], "dump", 4) &&
+	    !strncmp(argv[1], "fwlog_cfg", 9)) {
+		ice_fwlog_dump_cfg(&pf->hw);
+	} else {
+		dev_info(dev, "unknown or invalid command '%s'\n", cmd_buf);
+		dev_info(dev, "available commands\n");
+		dev_info(dev, "\t dump fwlog_cfg\n");
+		ret = -EINVAL;
+		goto command_write_error;
+	}
+
+	/* if we get here, nothing went wrong; return bytes copied */
+	ret = (ssize_t)count;
+
+command_write_error:
+	argv_free(argv);
+err_copy_from_user:
+	kfree(cmd_buf);
+
+	/* This function always consumes all of the written input, or produces
+	 * an error. Check and enforce this. Otherwise, the write operation
+	 * won't complete properly.
+	 */
+	if (WARN_ON(ret != (ssize_t)count && ret >= 0))
+		ret = -EIO;
+
+	return ret;
+}
+
+static const struct file_operations ice_debugfs_command_fops = {
+	.owner = THIS_MODULE,
+	.open  = simple_open,
+	.write = ice_debugfs_command_write,
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
new file mode 100644
index 000000000000..ffbbaef08ad6
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
@@ -0,0 +1,159 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c) 2022, Intel Corporation. */
+
+#include "ice.h"
+#include "ice_common.h"
+#include "ice_fwlog.h"
+
+/**
+ * ice_fwlog_init - Initialize FW logging configuration
+ * @hw: pointer to the HW structure
+ *
+ * This function should be called on driver initialization during
+ * ice_init_hw().
+ */
+int ice_fwlog_init(struct ice_hw *hw)
+{
+	int status;
+
+	ice_fwlog_set_supported(hw);
+
+	if (ice_fwlog_supported(hw)) {
+		/* read the current config from the FW and store it */
+		status = ice_fwlog_get(hw, &hw->fwlog_cfg);
+		if (status)
+			return status;
+
+		ice_debugfs_fwlog_init(hw->back);
+	} else {
+		dev_warn(ice_hw_to_dev(hw), "FW logging is not supported in this NVM image. Please update the NVM to get FW log support\n");
+	}
+
+	return 0;
+}
+
+/**
+ * ice_fwlog_supported - Cached for whether FW supports FW logging or not
+ * @hw: pointer to the HW structure
+ *
+ * This will always return false if called before ice_init_hw(), so it must be
+ * called after ice_init_hw().
+ */
+bool ice_fwlog_supported(struct ice_hw *hw)
+{
+	return hw->fwlog_supported;
+}
+
+/**
+ * ice_aq_fwlog_get - Get the current firmware logging configuration (0xFF32)
+ * @hw: pointer to the HW structure
+ * @cfg: firmware logging configuration to populate
+ */
+static int ice_aq_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
+{
+	struct ice_aqc_fw_log_cfg_resp *fw_modules;
+	struct ice_aqc_fw_log *cmd;
+	struct ice_aq_desc desc;
+	u16 module_id_cnt;
+	int status;
+	void *buf;
+	int i;
+
+	memset(cfg, 0, sizeof(*cfg));
+
+	buf = kzalloc(ICE_AQ_MAX_BUF_LEN, GFP_KERNEL);
+	if (!buf)
+		return -ENOMEM;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_fw_logs_query);
+	cmd = &desc.params.fw_log;
+
+	cmd->cmd_flags = ICE_AQC_FW_LOG_AQ_QUERY;
+
+	status = ice_aq_send_cmd(hw, &desc, buf, ICE_AQ_MAX_BUF_LEN, NULL);
+	if (status) {
+		ice_debug(hw, ICE_DBG_FW_LOG, "Failed to get FW log configuration\n");
+		goto status_out;
+	}
+
+	module_id_cnt = le16_to_cpu(cmd->ops.cfg.mdl_cnt);
+	if (module_id_cnt < ICE_AQC_FW_LOG_ID_MAX) {
+		ice_debug(hw, ICE_DBG_FW_LOG, "FW returned less than the expected number of FW log module IDs\n");
+	} else if (module_id_cnt > ICE_AQC_FW_LOG_ID_MAX) {
+		ice_debug(hw, ICE_DBG_FW_LOG, "FW returned more than expected number of FW log module IDs, setting module_id_cnt to software expected max %u\n",
+			  ICE_AQC_FW_LOG_ID_MAX);
+		module_id_cnt = ICE_AQC_FW_LOG_ID_MAX;
+	}
+
+	cfg->log_resolution = le16_to_cpu(cmd->ops.cfg.log_resolution);
+	if (cmd->cmd_flags & ICE_AQC_FW_LOG_CONF_AQ_EN)
+		cfg->options |= ICE_FWLOG_OPTION_ARQ_ENA;
+	if (cmd->cmd_flags & ICE_AQC_FW_LOG_CONF_UART_EN)
+		cfg->options |= ICE_FWLOG_OPTION_UART_ENA;
+	if (cmd->cmd_flags & ICE_AQC_FW_LOG_QUERY_REGISTERED)
+		cfg->options |= ICE_FWLOG_OPTION_IS_REGISTERED;
+
+	fw_modules = (struct ice_aqc_fw_log_cfg_resp *)buf;
+
+	for (i = 0; i < module_id_cnt; i++) {
+		struct ice_aqc_fw_log_cfg_resp *fw_module = &fw_modules[i];
+
+		cfg->module_entries[i].module_id =
+			le16_to_cpu(fw_module->module_identifier);
+		cfg->module_entries[i].log_level = fw_module->log_level;
+	}
+
+status_out:
+	kfree(buf);
+	return status;
+}
+
+/**
+ * ice_fwlog_get - Get the firmware logging settings
+ * @hw: pointer to the HW structure
+ * @cfg: config to populate based on current firmware logging settings
+ */
+int ice_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
+{
+	if (!ice_fwlog_supported(hw))
+		return -EOPNOTSUPP;
+
+	if (!cfg)
+		return -EINVAL;
+
+	return ice_aq_fwlog_get(hw, cfg);
+}
+
+/**
+ * ice_fwlog_set_supported - Set if FW logging is supported by FW
+ * @hw: pointer to the HW struct
+ *
+ * If FW returns success to the ice_aq_fwlog_get call then it supports FW
+ * logging, else it doesn't. Set the fwlog_supported flag accordingly.
+ *
+ * This function is only meant to be called during driver init to determine if
+ * the FW support FW logging.
+ */
+void ice_fwlog_set_supported(struct ice_hw *hw)
+{
+	struct ice_fwlog_cfg *cfg;
+	int status;
+
+	hw->fwlog_supported = false;
+
+	cfg = kzalloc(sizeof(*cfg), GFP_KERNEL);
+	if (!cfg)
+		return;
+
+	/* don't call ice_fwlog_get() because that would check to see if FW
+	 * logging is supported which is what the driver is determining now
+	 */
+	status = ice_aq_fwlog_get(hw, cfg);
+	if (status)
+		ice_debug(hw, ICE_DBG_FW_LOG, "ice_aq_fwlog_get failed, FW logging is not supported on this version of FW, status %d\n",
+			  status);
+	else
+		hw->fwlog_supported = true;
+
+	kfree(cfg);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.h b/drivers/net/ethernet/intel/ice/ice_fwlog.h
new file mode 100644
index 000000000000..9d60e77e2c5b
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.h
@@ -0,0 +1,54 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2022, Intel Corporation. */
+
+#ifndef _ICE_FWLOG_H_
+#define _ICE_FWLOG_H_
+#include "ice_adminq_cmd.h"
+
+struct ice_hw;
+
+/* Only a single log level should be set and all log levels under the set value
+ * are enabled, e.g. if log level is set to ICE_FW_LOG_LEVEL_VERBOSE, then all
+ * other log levels are included (except ICE_FW_LOG_LEVEL_NONE)
+ */
+enum ice_fwlog_level {
+	ICE_FWLOG_LEVEL_NONE = 0,
+	ICE_FWLOG_LEVEL_ERROR = 1,
+	ICE_FWLOG_LEVEL_WARNING = 2,
+	ICE_FWLOG_LEVEL_NORMAL = 3,
+	ICE_FWLOG_LEVEL_VERBOSE = 4,
+	ICE_FWLOG_LEVEL_INVALID, /* all values >= this entry are invalid */
+};
+
+struct ice_fwlog_module_entry {
+	/* module ID for the corresponding firmware logging event */
+	u16 module_id;
+	/* verbosity level for the module_id */
+	u8 log_level;
+};
+
+struct ice_fwlog_cfg {
+	/* list of modules for configuring log level */
+	struct ice_fwlog_module_entry module_entries[ICE_AQC_FW_LOG_ID_MAX];
+	/* options used to configure firmware logging */
+	u16 options;
+#define ICE_FWLOG_OPTION_ARQ_ENA		BIT(0)
+#define ICE_FWLOG_OPTION_UART_ENA		BIT(1)
+	/* set before calling ice_fwlog_init() so the PF registers for firmware
+	 * logging on initialization
+	 */
+#define ICE_FWLOG_OPTION_REGISTER_ON_INIT	BIT(2)
+	/* set in the ice_fwlog_get() response if the PF is registered for FW
+	 * logging events over ARQ
+	 */
+#define ICE_FWLOG_OPTION_IS_REGISTERED		BIT(3)
+
+	/* minimum number of log events sent per Admin Receive Queue event */
+	u16 log_resolution;
+};
+
+void ice_fwlog_set_supported(struct ice_hw *hw);
+bool ice_fwlog_supported(struct ice_hw *hw);
+int ice_fwlog_init(struct ice_hw *hw);
+int ice_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg);
+#endif /* _ICE_FWLOG_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index f476eb05ee36..47b95a1185f6 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5323,6 +5323,8 @@ static void ice_remove(struct pci_dev *pdev)
 		msleep(100);
 	}
 
+	ice_debugfs_exit();
+
 	if (test_bit(ICE_FLAG_SRIOV_ENA, pf->flags)) {
 		set_bit(ICE_VF_RESETS_DISABLED, pf->state);
 		ice_free_vfs(pf);
@@ -5784,10 +5786,13 @@ static int __init ice_module_init(void)
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
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index ce0b502365e9..dd3e11b7e3ed 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -17,6 +17,7 @@
 #include "ice_protocol_type.h"
 #include "ice_sbq_cmd.h"
 #include "ice_vlan_mode.h"
+#include "ice_fwlog.h"
 
 static inline bool ice_is_tc_ena(unsigned long bitmap, u8 tc)
 {
@@ -860,6 +861,9 @@ struct ice_hw {
 	u8 fw_patch;		/* firmware patch version */
 	u32 fw_build;		/* firmware build number */
 
+	struct ice_fwlog_cfg fwlog_cfg;
+	bool fwlog_supported; /* does hardware support FW logging? */
+
 /* Device max aggregate bandwidths corresponding to the GL_PWR_MODE_CTL
  * register. Used for determining the ITR/INTRL granularity during
  * initialization.
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
