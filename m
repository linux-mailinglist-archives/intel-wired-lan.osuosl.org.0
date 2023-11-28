Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBDFD7FCAD1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Nov 2023 00:27:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6059643534;
	Tue, 28 Nov 2023 23:27:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6059643534
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701214047;
	bh=NTYLHonjo+GdsDIldRaWFPLyppYOSmgCEuUJ2Y8VW8s=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=09chX2tTatOOyUZ7yr0cjYuiSZH6sT99RO/3U5EWqxR7XNRxf5e6Qu4yWOfJ6oQB9
	 HaUd389D1wMrmonqiD4VZMZd2Zk2NmwOQrT68PMMtE4qdovAZtlG1hDDYoNRojUAOU
	 iJw4/Fi9wZLPqJedwGhAzeVFV2jMy2zi8fyAJD+PPurL87/1O5PfMQb1uMYVmQGaOY
	 AL22cDkrPFUFIM2qmbGpQoHxAulnn4mDRIUNDFdVv50fdi1opqzGzxSUOWGCr1gGsO
	 fDRsMvUoke1GL3qAa+E7BFCjYk9Nr7ATZPfLyEIfglm6+SbffTiZ1VqT4SysvYI+Jl
	 jCnC/Lgi3L5MA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uLcQZHmCJ4x2; Tue, 28 Nov 2023 23:27:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5508C416D5;
	Tue, 28 Nov 2023 23:27:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5508C416D5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3616A1BF32D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 23:27:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6423841715
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 23:27:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6423841715
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ylHm2AampFSm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Nov 2023 23:26:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ABA21416D5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 23:26:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ABA21416D5
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="11752858"
X-IronPort-AV: E=Sophos;i="6.04,234,1695711600"; d="scan'208";a="11752858"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 15:26:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="1016070994"
X-IronPort-AV: E=Sophos;i="6.04,234,1695711600"; d="scan'208";a="1016070994"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.213.183.163])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 15:26:54 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 Nov 2023 15:26:44 -0800
Message-Id: <20231128232647.114-3-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231128232647.114-1-paul.m.stillwell.jr@intel.com>
References: <20231128232647.114-1-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701214017; x=1732750017;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7ekPXoQKm49TlUj3JyCN2IyXIbbjNjqWv1Q/8T9cHpE=;
 b=bz5mIErtacjXkj1jzA0s7d1fbf9/Swa9kZAOc/8q/9j0ksxftt7L6ZhQ
 QX8+C8Amwbx5H44ZC13oc5O2ImcWx/D0FsHucApFz3Y6GLLH7QtuxSx2m
 c/c6m0CkTc5e5kBMWAgCij+/gWFgDxCFRM1atMTwuwgvd5EOI7HqOlonU
 rWHHhalm5LTg0cth5CzPVGoX1eYJUClbWtwaUD9ahvlw8uCIG8qNMBCKM
 geLATSzSwaZazZKcNgNkxUxi1airphEN9GOf57foJjDQv99GlHCUgLkSk
 niuBfwDblumL3cgjvHiBZ13yI/55iA4iG/kiZGLOTUBXS+ZVRR4wR4EB7
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bz5mIErt
Subject: [Intel-wired-lan] [PATCH net-next v18 2/5] ice: configure FW logging
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
Cc: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Users want the ability to debug FW issues by retrieving the
FW logs from the E8xx devices. Use debugfs to allow the user to
configure the log level and number of messages for FW logging.

If FW logging is supported on the E8xx then the file 'fwlog' will be
created under the PCI device ID for the ice driver. If the file does not
exist then either the E8xx doesn't support FW logging or debugfs is not
enabled on the system.

One thing users want to do is control which events are reported. The
user can read and write the 'fwlog/modules/<module name>' to get/set
the log levels. Each module in the FW that suports logging has a file
under 'fwlog/modules' that supports reading (to see what the current log
level is) and writing (to change the log level).

The format to set the log levels for a module are:

  # echo <log level> > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/<module>

The supported log levels are:

      *	none
      *	error
      *	warning
      *	normal
      *	verbose

Each level includes the messages from the previous/lower level

The modules that are supported are:

      *	general
      *	ctrl
      *	link
      *	link_topo
      *	dnl
      *	i2c
      *	sdp
      *	mdio
      *	adminq
      *	hdma
      *	lldp
      *	dcbx
      *	dcb
      *	xlr
      *	nvm
      *	auth
      *	vpd
      *	iosf
      *	parser
      *	sw
      *	scheduler
      *	txq
      *	rsvd
      *	post
      *	watchdog
      *	task_dispatch
      *	mng
      *	synce
      *	health
      *	tsdrv
      *	pfreg
      *	mdlver
      *	all

The module 'all' is a special module which allows the user to read or
write to all of the modules.

The following example command would set the DCB module to the 'normal'
log level:

  # echo normal > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/dcb

If the user wants to set the DCB, Link, and the AdminQ modules to
'verbose' then the commands are:

  # echo verbose > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/dcb
  # echo verbose > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/link
  # echo verbose > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/adminq

If the user wants to set all modules to the 'warning' level then the
command is:

  # echo warning > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/all

If the user wants to disable logging for a module then they can set the
level to 'none'. An example setting the 'watchdog' module is:

  # echo none > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/watchdog

If the user wants to see what the log level is for a specific module
then the command is:

  # cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/dcb

This will return the log level for the DCB module. If the user wants to
see the log level for all the modules then the command is:

  # cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/all

Writing to the module file will update the configuration, but NOT enable the
configuration (that is a separate command).

In addition to configuring the modules, the user can also configure the
number of log messages (nr_messages) to include in a single Admin Receive
Queue (ARQ) event.The range is 1-128 (1 means push every log message, 128
means push only when the max AQ command buffer is full). The suggested
value is 10.

To see/change the resolution the user can read/write the
'fwlog/nr_messages' file. An example changing the value to 50 is

  # echo 50 > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/nr_messages

To see the current value of 'nr_messages' then the command is:

  # cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/nr_messages

Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
---
v17->v18: none
v16->v17: updates based on community feedback
- create a file per FW log module under 'fwlog/modules/' instead of having
  a single file for all the modules. This simplifies the code for writing
  the log level because we don't have to parse the module name
- rename 'resolution' to 'nr_messages' to better reflect what it
  represents
- add a structure to track all the file dentries for the FW modules
- moved ice_fwlog_deinit() from a subsequent patch to this patch because
  the driver has to free the dentry tracking memory
- removed the code that printed the entire FW log configuration; only
  print the module info or the number of messages
- fixed an issue where we were using the wrong length when copying data
  from the user for parsing the command line
- release memory sooner in ice_debugfs_parse_cmd_line() so it always
  gets released
v15->v16:
- moved ice_debugfs_exit() to fix unreachable code issue
- removed CONFIG_DEBUG_FS defines because they aren't needed
v14->v15: changed PAGE_SIZE to ICE_AQ_MAX_BUF_LEN
v13->v14: none
v12->v13: pulled out 'enable' code and put into a separate patch
v11->v12:
- rewrote debugfs code to use separate file for reading/writing
  the configuration status (fwlog/modules)
- added a file for configuring the resolution (fwlog/resolution)
v10->v11: none
no data on previous versions
---
 drivers/net/ethernet/intel/ice/Makefile       |   4 +-
 drivers/net/ethernet/intel/ice/ice.h          |   9 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  80 +++
 drivers/net/ethernet/intel/ice/ice_common.c   |   5 +
 drivers/net/ethernet/intel/ice/ice_debugfs.c  | 482 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.c    | 259 ++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.h    |  56 ++
 drivers/net/ethernet/intel/ice/ice_main.c     |  21 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   4 +
 9 files changed, 919 insertions(+), 1 deletion(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_debugfs.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index b40b4179b9f4..cddd82d4ca0f 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -34,7 +34,9 @@ ice-y := ice_main.o	\
 	 ice_lag.o	\
 	 ice_ethtool.o  \
 	 ice_repr.o	\
-	 ice_tc_lib.o
+	 ice_tc_lib.o	\
+	 ice_fwlog.o	\
+	 ice_debugfs.o
 ice-$(CONFIG_PCI_IOV) +=	\
 	ice_sriov.o		\
 	ice_virtchnl.o		\
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 3ea33947b878..8ff4751b0c42 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -570,6 +570,10 @@ struct ice_pf {
 	struct ice_vsi_stats **vsi_stats;
 	struct ice_sw *first_sw;	/* first switch created by firmware */
 	u16 eswitch_mode;		/* current mode of eswitch */
+	struct dentry *ice_debugfs_pf;
+	struct dentry *ice_debugfs_pf_fwlog;
+	/* keep track of all the dentires for FW log modules */
+	struct dentry **ice_debugfs_pf_fwlog_modules;
 	struct ice_vfs vfs;
 	DECLARE_BITMAP(features, ICE_F_MAX);
 	DECLARE_BITMAP(state, ICE_STATE_NBITS);
@@ -889,6 +893,11 @@ static inline bool ice_is_adq_active(struct ice_pf *pf)
 	return false;
 }
 
+void ice_debugfs_fwlog_init(struct ice_pf *pf);
+void ice_debugfs_init(void);
+void ice_debugfs_exit(void);
+void ice_pf_fwlog_update_module(struct ice_pf *pf, int log_level, int module);
+
 bool netif_is_ice(const struct net_device *dev);
 int ice_vsi_setup_tx_rings(struct ice_vsi *vsi);
 int ice_vsi_setup_rx_rings(struct ice_vsi *vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 775adca0a145..73452333d342 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -2356,6 +2356,81 @@ struct ice_aqc_event_lan_overflow {
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
+#define ICE_AQC_FW_LOG_CONF_SET_VALID	BIT(3)
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
+#define ICE_AQC_FW_LOG_MIN_RESOLUTION		(1)
+#define ICE_AQC_FW_LOG_MAX_RESOLUTION		(128)
+
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
@@ -2446,6 +2521,7 @@ struct ice_aq_desc {
 		struct ice_aqc_get_cgu_ref_prio get_cgu_ref_prio;
 		struct ice_aqc_get_cgu_info get_cgu_info;
 		struct ice_aqc_driver_shared_params drv_shared_params;
+		struct ice_aqc_fw_log fw_log;
 		struct ice_aqc_set_mac_lb set_mac_lb;
 		struct ice_aqc_alloc_free_res_cmd sw_res_ctrl;
 		struct ice_aqc_set_mac_cfg set_mac_cfg;
@@ -2643,6 +2719,10 @@ enum ice_adminq_opc {
 
 	/* Standalone Commands/Events */
 	ice_aqc_opc_event_lan_overflow			= 0x1001,
+
+	/* FW Logging Commands */
+	ice_aqc_opc_fw_logs_config			= 0xFF30,
+	ice_aqc_opc_fw_logs_query			= 0xFF32,
 };
 
 #endif /* _ICE_ADMINQ_CMD_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index ade2cff23856..eaa331c68c74 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -989,6 +989,10 @@ int ice_init_hw(struct ice_hw *hw)
 	if (status)
 		goto err_unroll_cqinit;
 
+	status = ice_fwlog_init(hw);
+	if (status)
+		ice_debug(hw, ICE_DBG_FW_LOG, "Error initializing FW logging: %d\n", status);
+
 	status = ice_clear_pf_cfg(hw);
 	if (status)
 		goto err_unroll_cqinit;
@@ -1138,6 +1142,7 @@ void ice_deinit_hw(struct ice_hw *hw)
 	ice_free_hw_tbls(hw);
 	mutex_destroy(&hw->tnl_lock);
 
+	ice_fwlog_deinit(hw);
 	ice_destroy_all_ctrlq(hw);
 
 	/* Clear VSI contexts if not already cleared */
diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
new file mode 100644
index 000000000000..75731cf91274
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
@@ -0,0 +1,482 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c) 2022, Intel Corporation. */
+
+#include <linux/fs.h>
+#include <linux/debugfs.h>
+#include <linux/random.h>
+#include <linux/vmalloc.h>
+#include "ice.h"
+
+static struct dentry *ice_debugfs_root;
+
+/* create a define that has an extra module that doesn't really exist. this
+ * is so we can add a module 'all' to easily enable/disable all the modules
+ */
+#define ICE_NR_FW_LOG_MODULES (ICE_AQC_FW_LOG_ID_MAX + 1)
+
+/* the ordering in this array is important. it matches the ordering of the
+ * values in the FW so the index is the same value as in ice_aqc_fw_logging_mod
+ */
+static const char * const ice_fwlog_module_string[] = {
+	"general",
+	"ctrl",
+	"link",
+	"link_topo",
+	"dnl",
+	"i2c",
+	"sdp",
+	"mdio",
+	"adminq",
+	"hdma",
+	"lldp",
+	"dcbx",
+	"dcb",
+	"xlr",
+	"nvm",
+	"auth",
+	"vpd",
+	"iosf",
+	"parser",
+	"sw",
+	"scheduler",
+	"txq",
+	"rsvd",
+	"post",
+	"watchdog",
+	"task_dispatch",
+	"mng",
+	"synce",
+	"health",
+	"tsdrv",
+	"pfreg",
+	"mdlver",
+	"all",
+};
+
+/* the ordering in this array is important. it matches the ordering of the
+ * values in the FW so the index is the same value as in ice_fwlog_level
+ */
+static const char * const ice_fwlog_level_string[] = {
+	"none",
+	"error",
+	"warning",
+	"normal",
+	"verbose",
+};
+
+/**
+ * ice_fwlog_print_module_cfg - print current FW logging module configuration
+ * @hw: pointer to the HW structure
+ * @module: module to print
+ * @buff: pointer to a buffer to hold the config strings
+ * @buff_size: size of the buffer in bytes
+ */
+static void ice_fwlog_print_module_cfg(struct ice_hw *hw, int module, char *buff,
+				       int buff_size)
+{
+	struct ice_fwlog_cfg *cfg = &hw->fwlog_cfg;
+	struct ice_fwlog_module_entry *entry;
+	int len;
+
+	if (module != ICE_AQC_FW_LOG_ID_MAX) {
+		entry =	&cfg->module_entries[module];
+		len = snprintf(buff, buff_size, "\tModule: %s, Log Level: %s\n",
+			       ice_fwlog_module_string[entry->module_id],
+			       ice_fwlog_level_string[entry->log_level]);
+		buff = buff + len;
+		buff_size -= len;
+	} else {
+		int i;
+
+		for (i = 0; i < ICE_AQC_FW_LOG_ID_MAX; i++) {
+			entry =	&cfg->module_entries[i];
+
+			len = snprintf(buff, buff_size, "\tModule: %s, Log Level: %s\n",
+				       ice_fwlog_module_string[entry->module_id],
+				       ice_fwlog_level_string[entry->log_level]);
+			buff = buff + len;
+			buff_size -= len;
+		}
+	}
+}
+
+/**
+ * ice_debugfs_parse_cmd_line - Parse the command line that was passed in
+ * @src: pointer to a buffer holding the command line
+ * @len: size of the buffer in bytes
+ * @argv: pointer to store the command line items
+ * @argc: pointer to store the number of command line items
+ */
+static ssize_t ice_debugfs_parse_cmd_line(const char __user *src, size_t len,
+					  char ***argv, int *argc)
+{
+	char *cmd_buf, *cmd_buf_tmp;
+
+	cmd_buf = memdup_user(src, len);
+	if (IS_ERR(cmd_buf))
+		return PTR_ERR(cmd_buf);
+	cmd_buf[len] = '\0';
+
+	/* the cmd_buf has a newline at the end of the command so
+	 * remove it
+	 */
+	cmd_buf_tmp = strchr(cmd_buf, '\n');
+	if (cmd_buf_tmp) {
+		*cmd_buf_tmp = '\0';
+		len = (size_t)cmd_buf_tmp - (size_t)cmd_buf;
+	}
+
+	*argv = argv_split(GFP_KERNEL, cmd_buf, argc);
+	kfree(cmd_buf);
+	if (!*argv)
+		return -ENOMEM;
+
+	return 0;
+}
+
+static int ice_find_module_by_dentry(struct ice_pf *pf, struct dentry *d)
+{
+	int i, module;
+
+	module = -1;
+	/* find the module based on the dentry */
+	for (i = 0; i < ICE_NR_FW_LOG_MODULES; i++) {
+		if (d == pf->ice_debugfs_pf_fwlog_modules[i]) {
+			module = i;
+			break;
+		}
+	}
+
+	return module;
+}
+
+/**
+ * ice_debugfs_module_read - read from 'module' file
+ * @filp: the opened file
+ * @buffer: where to write the data for the user to read
+ * @count: the size of the user's buffer
+ * @ppos: file position offset
+ */
+static ssize_t ice_debugfs_module_read(struct file *filp, char __user *buffer,
+				       size_t count, loff_t *ppos)
+{
+	struct dentry *dentry = filp->f_path.dentry;
+	struct ice_pf *pf = filp->private_data;
+	int status, module;
+	char *data = NULL;
+
+	/* don't allow commands if the FW doesn't support it */
+	if (!ice_fwlog_supported(&pf->hw))
+		return -EOPNOTSUPP;
+
+	module = ice_find_module_by_dentry(pf, dentry);
+	if (module < 0) {
+		dev_info(ice_pf_to_dev(pf), "unknown module\n");
+		return -EINVAL;
+	}
+
+	data = vzalloc(ICE_AQ_MAX_BUF_LEN);
+	if (!data) {
+		dev_warn(ice_pf_to_dev(pf), "Unable to allocate memory for FW configuration!\n");
+		return -ENOMEM;
+	}
+
+	ice_fwlog_print_module_cfg(&pf->hw, module, data, ICE_AQ_MAX_BUF_LEN);
+
+	if (count < strlen(data))
+		return -ENOSPC;
+
+	status = simple_read_from_buffer(buffer, count, ppos, data,
+					 strlen(data));
+	vfree(data);
+
+	return status;
+}
+
+/**
+ * ice_debugfs_module_write - write into 'module' file
+ * @filp: the opened file
+ * @buf: where to find the user's data
+ * @count: the length of the user's data
+ * @ppos: file position offset
+ */
+static ssize_t
+ice_debugfs_module_write(struct file *filp, const char __user *buf,
+			 size_t count, loff_t *ppos)
+{
+	struct dentry *dentry = filp->f_path.dentry;
+	struct ice_pf *pf = filp->private_data;
+	struct device *dev = ice_pf_to_dev(pf);
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
+	ret = ice_debugfs_parse_cmd_line(buf, count, &argv, &argc);
+	if (ret)
+		goto err_copy_from_user;
+
+	if (argc == 1) {
+		int module, log_level;
+
+		module = ice_find_module_by_dentry(pf, dentry);
+		if (module < 0) {
+			dev_info(dev, "unknown module\n");
+			ret = -EINVAL;
+			goto module_write_error;
+		}
+
+		log_level = sysfs_match_string(ice_fwlog_level_string, argv[0]);
+		if (log_level < 0) {
+			dev_info(dev, "unknown log level '%s'\n", argv[0]);
+			ret = -EINVAL;
+			goto module_write_error;
+		}
+
+		if (module != ICE_AQC_FW_LOG_ID_MAX) {
+			ice_pf_fwlog_update_module(pf, log_level, module);
+		} else {
+			/* the module 'all' is a shortcut so that we can set
+			 * all of the modules to the same level quickly
+			 */
+			int i;
+
+			for (i = 0; i < ICE_AQC_FW_LOG_ID_MAX; i++)
+				ice_pf_fwlog_update_module(pf, log_level, i);
+		}
+	} else {
+		dev_info(dev, "unknown or invalid command '%s'\n", argv[0]);
+		ret = -EINVAL;
+		goto module_write_error;
+	}
+
+	/* if we get here, nothing went wrong; return count since we didn't
+	 * really write anything
+	 */
+	ret = (ssize_t)count;
+
+module_write_error:
+	argv_free(argv);
+err_copy_from_user:
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
+static const struct file_operations ice_debugfs_module_fops = {
+	.owner = THIS_MODULE,
+	.open  = simple_open,
+	.read = ice_debugfs_module_read,
+	.write = ice_debugfs_module_write,
+};
+
+/**
+ * ice_debugfs_nr_messages_read - read from 'nr_messages' file
+ * @filp: the opened file
+ * @buffer: where to write the data for the user to read
+ * @count: the size of the user's buffer
+ * @ppos: file position offset
+ */
+static ssize_t ice_debugfs_nr_messages_read(struct file *filp,
+					    char __user *buffer, size_t count,
+					    loff_t *ppos)
+{
+	struct ice_pf *pf = filp->private_data;
+	struct ice_hw *hw = &pf->hw;
+	char buff[32] = {};
+	int status;
+
+	/* don't allow commands if the FW doesn't support it */
+	if (!ice_fwlog_supported(&pf->hw))
+		return -EOPNOTSUPP;
+
+	snprintf(buff, sizeof(buff), "%d\n",
+		 hw->fwlog_cfg.log_resolution);
+
+	status = simple_read_from_buffer(buffer, count, ppos, buff,
+					 strlen(buff));
+
+	return status;
+}
+
+/**
+ * ice_debugfs_nr_messages_write - write into 'nr_messages' file
+ * @filp: the opened file
+ * @buf: where to find the user's data
+ * @count: the length of the user's data
+ * @ppos: file position offset
+ */
+static ssize_t
+ice_debugfs_nr_messages_write(struct file *filp, const char __user *buf,
+			      size_t count, loff_t *ppos)
+{
+	struct ice_pf *pf = filp->private_data;
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_hw *hw = &pf->hw;
+	ssize_t ret;
+	char **argv;
+	int argc;
+
+	/* don't allow commands if the FW doesn't support it */
+	if (!ice_fwlog_supported(hw))
+		return -EOPNOTSUPP;
+
+	/* don't allow partial writes */
+	if (*ppos != 0)
+		return 0;
+
+	ret = ice_debugfs_parse_cmd_line(buf, count, &argv, &argc);
+	if (ret)
+		goto err_copy_from_user;
+
+	if (argc == 1) {
+		s16 nr_messages;
+
+		ret = kstrtos16(argv[0], 0, &nr_messages);
+		if (ret)
+			goto nr_messages_write_error;
+
+		if (nr_messages < ICE_AQC_FW_LOG_MIN_RESOLUTION ||
+		    nr_messages > ICE_AQC_FW_LOG_MAX_RESOLUTION) {
+			dev_err(dev, "Invalid FW log number of messages %d, value must be between %d - %d\n",
+				nr_messages, ICE_AQC_FW_LOG_MIN_RESOLUTION,
+				ICE_AQC_FW_LOG_MAX_RESOLUTION);
+			ret = -EINVAL;
+			goto nr_messages_write_error;
+		}
+
+		hw->fwlog_cfg.log_resolution = nr_messages;
+	} else {
+		dev_info(dev, "unknown or invalid command '%s'\n", argv[0]);
+		ret = -EINVAL;
+		goto nr_messages_write_error;
+	}
+
+	/* if we get here, nothing went wrong; return count since we didn't
+	 * really write anything
+	 */
+	ret = (ssize_t)count;
+
+nr_messages_write_error:
+	argv_free(argv);
+err_copy_from_user:
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
+static const struct file_operations ice_debugfs_nr_messages_fops = {
+	.owner = THIS_MODULE,
+	.open  = simple_open,
+	.read = ice_debugfs_nr_messages_read,
+	.write = ice_debugfs_nr_messages_write,
+};
+
+/**
+ * ice_debugfs_fwlog_init - setup the debugfs directory
+ * @pf: the ice that is starting up
+ */
+void ice_debugfs_fwlog_init(struct ice_pf *pf)
+{
+	const char *name = pci_name(pf->pdev);
+	struct dentry *fw_modules_dir;
+	struct dentry **fw_modules;
+	int i;
+
+	/* only support fw log commands on PF 0 */
+	if (pf->hw.bus.func)
+		return;
+
+	/* allocate space for this first because if it fails then we don't
+	 * need to unwind
+	 */
+	fw_modules = kcalloc(ICE_NR_FW_LOG_MODULES, sizeof(*fw_modules),
+			     GFP_KERNEL);
+
+	if (!fw_modules) {
+		pr_info("Unable to allocate space for modules\n");
+		return;
+	}
+
+	pf->ice_debugfs_pf = debugfs_create_dir(name, ice_debugfs_root);
+	if (IS_ERR(pf->ice_debugfs_pf)) {
+		pr_info("init of debugfs PCI dir failed\n");
+		kfree(fw_modules);
+		return;
+	}
+
+	pf->ice_debugfs_pf_fwlog = debugfs_create_dir("fwlog",
+						      pf->ice_debugfs_pf);
+	if (IS_ERR(pf->ice_debugfs_pf)) {
+		pr_info("init of debugfs fwlog dir failed\n");
+		return;
+	}
+
+	fw_modules_dir = debugfs_create_dir("modules",
+					    pf->ice_debugfs_pf_fwlog);
+	if (IS_ERR(fw_modules_dir)) {
+		pr_info("Unable to create modules dir\n");
+		kfree(fw_modules);
+		return;
+	}
+
+	for (i = 0; i < ICE_NR_FW_LOG_MODULES; i++) {
+		fw_modules[i] = debugfs_create_file(ice_fwlog_module_string[i],
+						    0600, fw_modules_dir, pf,
+						    &ice_debugfs_module_fops);
+
+		if (IS_ERR(fw_modules[i])) {
+			pr_info("Error creating module %s\n",
+				ice_fwlog_module_string[i]);
+			goto err_create_module_files;
+		}
+	}
+
+	debugfs_create_file("nr_messages", 0600,
+			    pf->ice_debugfs_pf_fwlog, pf,
+			    &ice_debugfs_nr_messages_fops);
+
+	pf->ice_debugfs_pf_fwlog_modules = fw_modules;
+
+	return;
+
+err_create_module_files:
+	debugfs_remove_recursive(pf->ice_debugfs_pf_fwlog);
+	kfree(fw_modules);
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
index 000000000000..54fed6f3c308
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
@@ -0,0 +1,259 @@
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
+ * ice_fwlog_deinit - unroll FW logging configuration
+ * @hw: pointer to the HW structure
+ *
+ * This function should be called in ice_deinit_hw().
+ */
+void ice_fwlog_deinit(struct ice_hw *hw)
+{
+	struct ice_pf *pf = hw->back;
+	int status;
+
+	/* only support fw log commands on PF 0 */
+	if (hw->bus.func)
+		return;
+
+	/* make sure FW logging is disabled to not put the FW in a weird state
+	 * for the next driver load
+	 */
+	hw->fwlog_cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
+	status = ice_fwlog_set(hw, &hw->fwlog_cfg);
+	if (status)
+		dev_warn(ice_hw_to_dev(hw), "Unable to turn off FW logging, status: %d\n", status);
+
+	kfree(pf->ice_debugfs_pf_fwlog_modules);
+
+	pf->ice_debugfs_pf_fwlog_modules = NULL;
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
+ * ice_aq_fwlog_set - Set FW logging configuration AQ command (0xFF30)
+ * @hw: pointer to the HW structure
+ * @entries: entries to configure
+ * @num_entries: number of @entries
+ * @options: options from ice_fwlog_cfg->options structure
+ * @log_resolution: logging resolution
+ */
+static int
+ice_aq_fwlog_set(struct ice_hw *hw, struct ice_fwlog_module_entry *entries,
+		 u16 num_entries, u16 options, u16 log_resolution)
+{
+	struct ice_aqc_fw_log_cfg_resp *fw_modules;
+	struct ice_aqc_fw_log *cmd;
+	struct ice_aq_desc desc;
+	int status;
+	int i;
+
+	fw_modules = kcalloc(num_entries, sizeof(*fw_modules), GFP_KERNEL);
+	if (!fw_modules)
+		return -ENOMEM;
+
+	for (i = 0; i < num_entries; i++) {
+		fw_modules[i].module_identifier =
+			cpu_to_le16(entries[i].module_id);
+		fw_modules[i].log_level = entries[i].log_level;
+	}
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_fw_logs_config);
+	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+
+	cmd = &desc.params.fw_log;
+
+	cmd->cmd_flags = ICE_AQC_FW_LOG_CONF_SET_VALID;
+	cmd->ops.cfg.log_resolution = cpu_to_le16(log_resolution);
+	cmd->ops.cfg.mdl_cnt = cpu_to_le16(num_entries);
+
+	if (options & ICE_FWLOG_OPTION_ARQ_ENA)
+		cmd->cmd_flags |= ICE_AQC_FW_LOG_CONF_AQ_EN;
+	if (options & ICE_FWLOG_OPTION_UART_ENA)
+		cmd->cmd_flags |= ICE_AQC_FW_LOG_CONF_UART_EN;
+
+	status = ice_aq_send_cmd(hw, &desc, fw_modules,
+				 sizeof(*fw_modules) * num_entries,
+				 NULL);
+
+	kfree(fw_modules);
+
+	return status;
+}
+
+/**
+ * ice_fwlog_set - Set the firmware logging settings
+ * @hw: pointer to the HW structure
+ * @cfg: config used to set firmware logging
+ *
+ * This function should be called whenever the driver needs to set the firmware
+ * logging configuration. It can be called on initialization, reset, or during
+ * runtime.
+ *
+ * If the PF wishes to receive FW logging then it must register via
+ * ice_fwlog_register. Note, that ice_fwlog_register does not need to be called
+ * for init.
+ */
+int ice_fwlog_set(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
+{
+	if (!ice_fwlog_supported(hw))
+		return -EOPNOTSUPP;
+
+	return ice_aq_fwlog_set(hw, cfg->module_entries,
+				ICE_AQC_FW_LOG_ID_MAX, cfg->options,
+				cfg->log_resolution);
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
index 000000000000..8e68ee02713b
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.h
@@ -0,0 +1,56 @@
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
+void ice_fwlog_deinit(struct ice_hw *hw);
+int ice_fwlog_set(struct ice_hw *hw, struct ice_fwlog_cfg *cfg);
+int ice_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg);
+#endif /* _ICE_FWLOG_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index febc4f2a53e1..7be5ef1e1e4c 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4354,6 +4354,22 @@ static void ice_print_wake_reason(struct ice_pf *pf)
 	dev_info(ice_pf_to_dev(pf), "Wake reason: %s", wake_str);
 }
 
+/**
+ * ice_pf_fwlog_update_module - update 1 module
+ * @pf: pointer to the PF struct
+ * @log_level: log_level to use for the @module
+ * @module: module to update
+ */
+void ice_pf_fwlog_update_module(struct ice_pf *pf, int log_level, int module)
+{
+	struct ice_fwlog_module_entry *entries;
+	struct ice_hw *hw = &pf->hw;
+
+	entries = (struct ice_fwlog_module_entry *)hw->fwlog_cfg.module_entries;
+
+	entries[module].log_level = log_level;
+}
+
 /**
  * ice_register_netdev - register netdev
  * @vsi: pointer to the VSI struct
@@ -5201,6 +5217,8 @@ static void ice_remove(struct pci_dev *pdev)
 		msleep(100);
 	}
 
+	ice_debugfs_exit();
+
 	if (test_bit(ICE_FLAG_SRIOV_ENA, pf->flags)) {
 		set_bit(ICE_VF_RESETS_DISABLED, pf->state);
 		ice_free_vfs(pf);
@@ -5672,6 +5690,8 @@ static int __init ice_module_init(void)
 		goto err_dest_wq;
 	}
 
+	ice_debugfs_init();
+
 	status = pci_register_driver(&ice_driver);
 	if (status) {
 		pr_err("failed to register PCI driver, err %d\n", status);
@@ -5682,6 +5702,7 @@ static int __init ice_module_init(void)
 
 err_dest_lag_wq:
 	destroy_workqueue(ice_lag_wq);
+	ice_debugfs_exit();
 err_dest_wq:
 	destroy_workqueue(ice_wq);
 	return status;
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 6c7a1423c815..ed8a1675224d 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -17,6 +17,7 @@
 #include "ice_protocol_type.h"
 #include "ice_sbq_cmd.h"
 #include "ice_vlan_mode.h"
+#include "ice_fwlog.h"
 
 static inline bool ice_is_tc_ena(unsigned long bitmap, u8 tc)
 {
@@ -878,6 +879,9 @@ struct ice_hw {
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

