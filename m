Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A136B16D7
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Mar 2023 00:51:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 586546123A;
	Wed,  8 Mar 2023 23:51:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 586546123A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678319490;
	bh=H8YqRNzzthTpxrB2MZsui+VVZjLoOxVbmPU7pIRptMo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uiYhpg5nDA9gD3+CJmXl6jzWm9xQok3vzETnX+jd111mKCnlsfx+gT0lojaJD6xwz
	 sgHbcm+LrfodqtPg48jnpn3I/OFgib1vJ6QKmPJNP1OC5J7ALpbH15gXbIwoEXE4oA
	 sx0wm2gF19tE4aswW+IbgVDAMMJDTcKYQcXKQLl+Hm/livKy+gnIgHLivZdV5cne4m
	 m8kXhmDybyTbNhBly2tftjOoYZC3IwyjSp7Bk59PNT19d8QlNLV4YHoj5xpS3hM15u
	 6yH4a8EuoFGIKz/Snm15c9k1uo94rZOT5ecioaeQBvdrMecuSVpT9+AM1fqMJ5T7br
	 oe56iCg46wSjw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HXliol0qXEBc; Wed,  8 Mar 2023 23:51:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 156DE60E2F;
	Wed,  8 Mar 2023 23:51:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 156DE60E2F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CB9DE1BF417
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 23:51:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A28DB82003
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 23:51:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A28DB82003
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ihg-2bVco3fd for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Mar 2023 23:51:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9255882000
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9255882000
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 23:51:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="363945069"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="363945069"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 15:51:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="679526321"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="679526321"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.213.174.11])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 15:51:12 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  8 Mar 2023 15:51:00 -0800
Message-Id: <20230308235102.170-4-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230308235102.170-1-paul.m.stillwell.jr@intel.com>
References: <20230308235102.170-1-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678319475; x=1709855475;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EvM15hXYsK3TKGi67x0iVOcuBrCzK13PjW9kmhJfdQw=;
 b=csqvc31IkeprxruRIO8QMKIqlOhBnOYykpTn4/1rhkKcVJbmMwWM0JKX
 ibERMilVf5Z0JWmBilnn0rxj6FPE1KlV0Wbd6AYnOESFNiEH6zUNPLy5W
 iuXegieSqV42+z13kkQbm+KCe5IQQa4Fvfe4WMRWtRXvDYuwn84XNJRBp
 FBBLyWDH2hNhnsS541kFaCGIjzo6Ke85lJ1Wp99+L4X8fIuT0FSiBezDu
 SSE43HBOo3EOtNTboXfEQtynmchvrMe5URaB+6GXZGcFDYlKWQxEiDTPf
 zYIPDvlmPX7KeHzyEhSBeZsECjyDURQC07vMILKW6dbLLs90/MU4V7gCN
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=csqvc31I
Subject: [Intel-wired-lan] [PATCH net-next v10 3/5] ice: add ability to set
 FW log configuration
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

The FW log has several configuration options to control what gets output
and how often it gets output. Allow the user to set the log level,
events, and how often the FW generates messages with data in them
(resolution).

The command to set the configuration looks like:

update fwlog_cfg <fwlog_level> <fwlog_events> <fwlog_resolution>

where
fwlog_level is a value from 0-4 as described below
    Each level includes the messages from the previous/lower level
	0 - no logging
	1 - error logging
	2 - warning logging
	3 - normal logging
	4 - verbose logging

fwlog_events is a value from 0-32 that represents the module to receive
events for. The values are sent as a hex value where each bit represents
a specific module. The module values are:
	0 (0x00) - General
	1 (0x01) - Control (Resets + Autoload)
	2 (0x02) - Link Management
	3 (0x03) - Link Topology Detection
	4 (0x04) - DNL
	5 (0x05) - I2C
	6 (0x06) - SDP
	7 (0x07) - MDIO
	8 (0x08) - Admin Queue
	9 (0x09) - HDMA
	10 (0x0A) - LLDP
	11 (0x0B) - DCBX
	12 (0x0C) - DCB
	13 (0x0D) - XLR
	14 (0x0E) - NVM
	15 (0x0F) - Authentication
	16 (0x10) - VPD
	17 (0x11) - IOSF
	18 (0x12) - Parser
	19 (0x13) - Switch
	20 (0x14) - Scheduler
	21 (0x15) - Tx Queue Management
	22 (0x16) - Unsupported
	23 (0x17) - Post
	24 (0x18) - Watchdog
	25 (0x19) - Task Dispatcher
	26 (0x1A) - Manageability
	27 (0x1B) - Synce
	28 (0x1C) - Health
	29 (0x1D) - Time Sync
	30 (0x1E) - PF Registration
	31 (0x1F) - Module Version

fwlog_resolution is the number of log messages to included
in a single ARQ event. The range is 1-128 (1 means push every log
message, 128 means push only when the max AQ command buffer is full).
The suggested value is 10.

An example command to update the FW log configuration is:

echo update fwlog_cfg 4 0x82414821 50 > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog

The above command would set the log level to 4 (Verbose) for the
following modules
        0 (0x00) - General
        5 (0x05) - I2C
        11 (0x0B) - DCBX
        14 (0x0E) - NVM
        16 (0x10) - VPD
        22 (0x16) - Unsupported
        25 (0x19) - Task Dispatcher
        31 (0x1F) - Module Version

The setting of the configuration does NOT enable FW logging, that is a
separate command. There are effectively 2 configurations at this point:
the one that is currently running and the staged configuration.

To allow the user to see what is going on the 'dump fwlog_cfg' command
now shows the 'Running' config and the 'Staged' config. This allows the
user to be able to compare the currently running configuration with
what will be enabled when the user executes the command to enable the
staged configuration.

Co-developed-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  3 ++
 drivers/net/ethernet/intel/ice/ice_debugfs.c  | 35 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_main.c     | 37 +++++++++++++++++++
 3 files changed, 75 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 80e5376ca064..558a17d38918 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -2092,6 +2092,9 @@ struct ice_aqc_fw_log {
 		} sync;
 		struct {
 			__le16 log_resolution;
+#define ICE_AQC_FW_LOG_MIN_RESOLUTION		(1)
+#define ICE_AQC_FW_LOG_MAX_RESOLUTION		(128)
+
 			__le16 mdl_cnt;
 		} cfg;
 	} ops;
diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
index 1319ec3e97b1..7cc1621fb237 100644
--- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
@@ -146,6 +146,8 @@ static void ice_fwlog_dump_cfg(struct ice_hw *hw)
 
 	dev_info(dev, "Running FWLOG Configuration:\n");
 	ice_print_fwlog_config(hw, cfg);
+	dev_info(dev, "Staged FWLOG Configuration:\n");
+	ice_print_fwlog_config(hw, &hw->fwlog_cfg);
 
 	kfree(cfg);
 }
@@ -199,10 +201,43 @@ ice_debugfs_command_write(struct file *filp, const char __user *buf,
 	if (argc == 2 && !strncmp(argv[0], "dump", 4) &&
 	    !strncmp(argv[1], "fwlog_cfg", 9)) {
 		ice_fwlog_dump_cfg(&pf->hw);
+	} else if (argc == 5 && !strncmp(argv[0], "update", 6) &&
+		   !strncmp(argv[1], "fwlog_cfg", 9)) {
+		struct ice_hw *hw = &pf->hw;
+		u8 log_level, resolution;
+		unsigned long events;
+
+		ret = kstrtou8(argv[2], 0, &log_level);
+		if (ret)
+			goto command_write_error;
+
+		ret = kstrtoul(argv[3], 0, &events);
+		if (ret)
+			goto command_write_error;
+
+		ret = kstrtou8(argv[4], 0, &resolution);
+		if (ret)
+			goto command_write_error;
+
+		if (resolution < ICE_AQC_FW_LOG_MIN_RESOLUTION ||
+		    resolution > ICE_AQC_FW_LOG_MAX_RESOLUTION) {
+			dev_err(dev, "Invalid FW log resolution %d, value must be between %d - %d\n",
+				resolution, ICE_AQC_FW_LOG_MIN_RESOLUTION,
+				ICE_AQC_FW_LOG_MAX_RESOLUTION);
+			ret = -EINVAL;
+			goto command_write_error;
+		}
+
+		ret = ice_pf_fwlog_update_modules(pf, log_level, events);
+		if (ret)
+			goto command_write_error;
+
+		hw->fwlog_cfg.log_resolution = resolution;
 	} else {
 		dev_info(dev, "unknown or invalid command '%s'\n", cmd_buf);
 		dev_info(dev, "available commands\n");
 		dev_info(dev, "\t dump fwlog_cfg\n");
+		dev_info(dev, "\t update fwlog_cfg <fwlog_level> <fwlog_events> <fwlog_resolution>");
 		ret = -EINVAL;
 		goto command_write_error;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 47b95a1185f6..ee13518e3c65 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4552,6 +4552,43 @@ static void ice_print_wake_reason(struct ice_pf *pf)
 	dev_info(ice_pf_to_dev(pf), "Wake reason: %s", wake_str);
 }
 
+/**
+ * ice_pf_fwlog_update_modules - update 1 or more modules via debugfs
+ * @pf: pointer to the PF struct
+ * @log_level: log_level to use for the @events
+ * @events: events to update
+ */
+int ice_pf_fwlog_update_modules(struct ice_pf *pf, u8 log_level,
+				unsigned long events)
+{
+	struct ice_fwlog_module_entry *entries;
+	struct ice_hw *hw = &pf->hw;
+	u16 module_id, max_bits;
+
+	if (log_level >= ICE_FWLOG_LEVEL_INVALID) {
+		dev_err(ice_pf_to_dev(pf), "Invalid FW log level %u, all level(s) >= %u are invalid\n",
+			log_level, ICE_FWLOG_LEVEL_INVALID);
+		return -EINVAL;
+	}
+
+	if (events >= BIT_ULL(ICE_AQC_FW_LOG_ID_MAX)) {
+		dev_err(ice_pf_to_dev(pf), "Invalid FW log events 0x%lx, all FW log event bits >= 0x%llx are invalid\n",
+			events, BIT_ULL(ICE_AQC_FW_LOG_ID_MAX));
+		return -EINVAL;
+	}
+
+	entries = (struct ice_fwlog_module_entry *)hw->fwlog_cfg.module_entries;
+
+	max_bits = min_t(u16, BITS_PER_TYPE(unsigned long),
+			 ICE_AQC_FW_LOG_ID_MAX);
+
+	for_each_set_bit(module_id, &events, max_bits) {
+		entries[module_id].log_level = log_level;
+	}
+
+	return 0;
+}
+
 /**
  * ice_register_netdev - register netdev
  * @vsi: pointer to the VSI struct
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
