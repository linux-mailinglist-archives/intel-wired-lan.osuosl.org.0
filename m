Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 578886A8B3C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Mar 2023 22:51:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DEA4082161;
	Thu,  2 Mar 2023 21:51:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DEA4082161
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677793898;
	bh=c5zBQ9F8uy78Mwm8eve0NhqmAiqMA/tc+abiEUO0D4A=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=q9Qx/WvP3Xbf6QrnnOeGwIF7Hd3/z34P700+jjyggY/dLnhRMKlvPLTuGlo0UFyNX
	 CUfvr7HfT/HkXfrkNl+vGTDHytiWmuMI5ZVClgNoPVs0baBMnLjBZaWDs9o1HngfqI
	 BfwEjnhVU+ApTvlxo0wqd30rBSNlGB+VSzr1VMYcsTo6ixOgT/kIbIa7sXfHNJ7n8U
	 aTpD9tVsQ7Sr3CtT4Uywh/m9kfawSI2dBmkKdyhxt9hDGBfXkdXGOn1adoNISIFaTR
	 x6V5bsJpX1k/uEWwhN63wUlFRUffWDNBaLjpHJgOH8EOl9+AGNHsw232KRAiBB04Qy
	 2rcG93rBSxZag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FsRYy9dG5REU; Thu,  2 Mar 2023 21:51:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E71D813DA;
	Thu,  2 Mar 2023 21:51:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E71D813DA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4FFEB1BF306
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Mar 2023 21:51:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 67B68612E6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Mar 2023 21:51:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 67B68612E6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id frRwj1cjNDdg for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Mar 2023 21:51:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 79CBB60C34
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 79CBB60C34
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Mar 2023 21:51:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="399672220"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="399672220"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 13:51:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="652570008"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="652570008"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.213.174.245])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 13:51:19 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  2 Mar 2023 13:51:07 -0800
Message-Id: <20230302215109.124-4-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230302215109.124-1-paul.m.stillwell.jr@intel.com>
References: <20230302215109.124-1-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677793887; x=1709329887;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qUnIfg8SaT0lbj80sCGpkEv+Wbc79Cj2SlkqV1jNbYE=;
 b=UZdy/+ZdEkP8NXlIaSIK8P7c4BRFfNGEVfKVapx148q6eCHHVXdyVUOt
 CQ+xHgY86eRJIYPlewi0Kg9vrQKx6uvwfRnv3WFOijVKzZNUuuQPErDfD
 IAMgPX7ou3JATzI0XVyM2Ys3+73l3HrA/KDgHI0Mquxh5Yrxr4/RuRf92
 EyEMCxsZThvHuDdp1/t9T7rpMl8Aky5HqXcpJ7FcSOT9OGvQdtfg/tdX7
 U5QKyWKtajBXzkb9rQY0x9xKsPeb3u9QlEPp9udbteSt1xeIRYlheVRfd
 xl6iMiGF+41/gbZJL78BnbHE3cTuaQgl5ZERPikQHbmMl8XbHaPAHGdn0
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UZdy/+Zd
Subject: [Intel-wired-lan] [PATCH net-next v9 3/5] ice: add ability to set
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
 drivers/net/ethernet/intel/ice/ice_debugfs.c | 35 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_main.c    | 37 ++++++++++++++++++++
 2 files changed, 72 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
index 8a729217ef08..1df79d7d99eb 100644
--- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
@@ -148,6 +148,8 @@ static void ice_fwlog_dump_cfg(struct ice_hw *hw)
 
 	dev_info(dev, "Running FWLOG Configuration:\n");
 	ice_print_fwlog_config(hw, cfg);
+	dev_info(dev, "Staged FWLOG Configuration:\n");
+	ice_print_fwlog_config(hw, &hw->fwlog_cfg);
 
 	kfree(cfg);
 }
@@ -201,10 +203,43 @@ ice_debugfs_command_write(struct file *filp, const char __user *buf,
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
index 21937c6edf85..3610c56748b7 100644
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
+	u16 module_id, max_bits;
+	struct ice_hw *hw = &pf->hw;
+
+	if (log_level >= ICE_FWLOG_LEVEL_INVALID) {
+		dev_err(ice_pf_to_dev(pf), "Invalid FW log level %u, all level(s) >= %u are invalid\n",
+			log_level, ICE_FWLOG_LEVEL_INVALID);
+		return -EINVAL;
+	}
+
+	if (events >= BIT(ICE_AQC_FW_LOG_ID_MAX)) {
+		dev_err(ice_pf_to_dev(pf), "Invalid FW log events 0x%lx, all FW log event bits >= 0x%lx are invalid\n",
+			events, BIT(ICE_AQC_FW_LOG_ID_MAX));
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
