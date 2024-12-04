Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C709E39A4
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Dec 2024 13:14:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C378181E6F;
	Wed,  4 Dec 2024 12:14:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s6ZdCiLtfTYj; Wed,  4 Dec 2024 12:14:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F34181EE6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733314462;
	bh=FoN0ycPW0wsPBnBJb6TK7An9t684BTSBAsG+r7mtUmE=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=vb0GvjE7Q5IytEe6NfGtLbt7VbZQrvPD5eATLrtxRKtH0vBXwbPV+NACLArJemfNu
	 2V4J2UmfpIEd9sCP18t/W10MswtIR9hc61MsrgZbKWEHd7tXbwZ2ZWHe+xQpkREuiY
	 Rm7FJfZWfx6iGyACwU/JOgDYu4q9Hdo5zsVyClPh0oqRWLaBNVFqpnxKddTTa6pUxj
	 BAf5fhCCccqUwnxQZh0cATaaaVxOU71NhSeEWPVcv5meldsKDfFVQl5OiB7BLK5FPK
	 hqg9RxIihGF/FpzUGxsJK7KRaoxdtf+VtFU7kTIa3ZM9nRJGPsN7YN1HE9d3lQViGP
	 142zm7DXWRLqw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F34181EE6;
	Wed,  4 Dec 2024 12:14:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6F4831DC8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 12:14:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 501E16074C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 12:14:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ujvnTuQz8aRR for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Dec 2024 12:14:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=konrad.knitter@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4EC4A606E0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4EC4A606E0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4EC4A606E0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 12:14:18 +0000 (UTC)
X-CSE-ConnectionGUID: 5Mq7NWL2SDyzjwUIq90DWQ==
X-CSE-MsgGUID: PSiJApAFQIiUsoM5eUGUxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="32919072"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="32919072"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 04:14:18 -0800
X-CSE-ConnectionGUID: WRF3INh2QX6DNdZrfko2BA==
X-CSE-MsgGUID: iCS+lnb9QZOr4SRtwnQJqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="93612616"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa007.fm.intel.com with ESMTP; 04 Dec 2024 04:14:13 -0800
Received: from kord.igk.intel.com (kord.igk.intel.com [10.123.220.9])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 36541312F8;
 Wed,  4 Dec 2024 12:14:12 +0000 (GMT)
From: Konrad Knitter <konrad.knitter@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 edumazet@google.com, davem@davemloft.net, andrew+netdev@lunn.ch,
 Konrad Knitter <konrad.knitter@intel.com>,
 Sharon Haroni <sharon.haroni@intel.com>,
 Nicholas Nunley <nicholas.d.nunley@intel.com>,
 Brett Creeley <brett.creeley@intel.com>
Date: Wed,  4 Dec 2024 13:27:38 +0100
Message-Id: <20241204122738.114511-1-konrad.knitter@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733314458; x=1764850458;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Avx9SSuE/lj0ezfngXAXDRLktdLfF8bQHWBAhNfi35c=;
 b=Cf46xocdPZV9GoOb4gReivhU1S+dL1pskcEsQdY5qy766DMTfUW6lx8k
 QKEaZ1tU54TmDGHAMwnAVDi4wxz5wAz6p2VgBfppONfRXJur8yYMb0v+A
 Wr13LPD+32PrfDef5r3mIc3ZG3VoLTZPGW6eeCbhE+9Jz2ayQTTWvg8Qn
 M6Zuu3t62IFQmkjTgcg/0kCM9qxckiMqF3XdT9kyC7h/4lKaJ/JirHwif
 3Xc8bIKbBuEZtZcKAuhksNyZUCnYwI43e1Vg0Uy/6ORqpwGh+sOVnp0R2
 ig6W7hT2T9HBCG67NoaY7oOReQPeiQb9cowU5h0m1CWK2ch1m8qjQf/Ou
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Cf46xocd
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: fw and port health status
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Firmware generates events for global events or port specific events.

Driver shall subscribe for health status events from firmware on supported
FW versions >= 1.7.6.
Driver shall expose those under specific health reporter, two new
reporters are introduced:
- FW health reporter shall represent global events (problems with the
image, recovery mode);
- Port health reporter shall represent port-specific events (module
failure).

Firmware only reports problems when those are detected, it does not store
active fault list.
Driver will hold only last global and last port-specific event.
Driver will report all events via devlink health report,
so in case of multiple events of the same source they can be reviewed
using devlink autodump feature.

$ devlink health

pci/0000:b1:00.3:
  reporter fw
    state healthy error 0 recover 0 auto_dump true
  reporter port
    state error error 1 recover 0 last_dump_date 2024-03-17
	last_dump_time 09:29:29 auto_dump true

$ devlink health diagnose pci/0000:b1:00.3 reporter port

  Syndrome: 262
  Description: Module is not present.
  Possible Solution: Check that the module is inserted correctly.
  Port Number: 0

Tested on Intel Corporation Ethernet Controller E810-C for SFP

Co-developed-by: Sharon Haroni <sharon.haroni@intel.com>
Signed-off-by: Sharon Haroni <sharon.haroni@intel.com>
Co-developed-by: Nicholas Nunley <nicholas.d.nunley@intel.com>
Signed-off-by: Nicholas Nunley <nicholas.d.nunley@intel.com>
Co-developed-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Konrad Knitter <konrad.knitter@intel.com>
---
v2: 
- Removal of __VA_OPS__ usage. Style fixes.
Depends-on: https://lore.kernel.org/netdev/20240930133724.610512-1-przemyslaw.kitszel@intel.com/T/
---
 .../net/ethernet/intel/ice/devlink/health.c   | 253 +++++++++++++++++-
 .../net/ethernet/intel/ice/devlink/health.h   |  14 +-
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  87 ++++++
 drivers/net/ethernet/intel/ice/ice_common.c   |  38 +++
 drivers/net/ethernet/intel/ice/ice_common.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_main.c     |   3 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   5 +
 7 files changed, 400 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/devlink/health.c b/drivers/net/ethernet/intel/ice/devlink/health.c
index c7a8b8c9e1ca..c5a16879c916 100644
--- a/drivers/net/ethernet/intel/ice/devlink/health.c
+++ b/drivers/net/ethernet/intel/ice/devlink/health.c
@@ -1,13 +1,251 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright (c) 2024, Intel Corporation. */
 
-#include "health.h"
 #include "ice.h"
+#include "ice_adminq_cmd.h" /* for enum ice_aqc_health_status_elem */
+#include "health.h"
 #include "ice_ethtool_common.h"
 
 #define ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, obj, name) \
 	devlink_fmsg_put(fmsg, #name, (obj)->name)
 
+#define ICE_HEALTH_STATUS_DATA_SIZE 2
+
+struct ice_health_status {
+	enum ice_aqc_health_status code;
+	const char *description;
+	const char *solution;
+	const char *data_label[ICE_HEALTH_STATUS_DATA_SIZE];
+};
+
+/*
+ * In addition to the health status codes provided below, the firmware might
+ * generate Health Status Codes that are not pertinent to the end-user.
+ * For instance, Health Code 0x1002 is triggered when the command fails.
+ * Such codes should be disregarded by the end-user.
+ * The below lookup requires to be sorted by code.
+ */
+
+static const char *const ice_common_port_solutions =
+	"Check your cable connection. Change or replace the module or cable. Manually set speed and duplex.";
+static const char *const ice_port_number_label = "Port Number";
+static const char *const ice_update_nvm_solution = "Update to the latest NVM image.";
+
+static const struct ice_health_status ice_health_status_lookup[] = {
+	{ICE_AQC_HEALTH_STATUS_ERR_UNKNOWN_MOD_STRICT, "An unsupported module was detected",
+		ice_common_port_solutions, {ice_port_number_label}},
+	{ICE_AQC_HEALTH_STATUS_ERR_MOD_TYPE, "Module type is not supported.",
+		"Change or replace the module or cable.", {ice_port_number_label}},
+	{ICE_AQC_HEALTH_STATUS_ERR_MOD_QUAL, "Module is not qualified.",
+		ice_common_port_solutions, {ice_port_number_label}},
+	{ICE_AQC_HEALTH_STATUS_ERR_MOD_COMM,
+		"Device cannot communicate with the module.",
+		"Check your cable connection. Change or replace the module or cable. Manually set speed and duplex.",
+		{ice_port_number_label}},
+	{ICE_AQC_HEALTH_STATUS_ERR_MOD_CONFLICT, "Unresolved module conflict.",
+		"Manually set speed/duplex or change the port option. If the problem persists, use a cable/module that is found in the supported modules and cables list for this device.",
+		{ice_port_number_label}},
+	{ICE_AQC_HEALTH_STATUS_ERR_MOD_NOT_PRESENT, "Module is not present.",
+		"Check that the module is inserted correctly. If the problem persists, use a cable/module that is found in the supported modules and cables list for this device.",
+		{ice_port_number_label}},
+	{ICE_AQC_HEALTH_STATUS_INFO_MOD_UNDERUTILIZED, "Underutilized module.",
+		"Change or replace the module or cable. Change the port option",
+		{ice_port_number_label}},
+	{ICE_AQC_HEALTH_STATUS_ERR_UNKNOWN_MOD_LENIENT, "An unsupported module was detected",
+		ice_common_port_solutions, {ice_port_number_label}},
+	{ICE_AQC_HEALTH_STATUS_ERR_INVALID_LINK_CFG, "Invalid link configuration.",
+		NULL, {ice_port_number_label}},
+	{ICE_AQC_HEALTH_STATUS_ERR_PORT_ACCESS, "Port hardware access error.",
+		ice_update_nvm_solution, {ice_port_number_label}},
+	{ICE_AQC_HEALTH_STATUS_ERR_PORT_UNREACHABLE, "A port is unreachable.",
+		"Change the port option. Update to the latest NVM image."},
+	{ICE_AQC_HEALTH_STATUS_INFO_PORT_SPEED_MOD_LIMITED, "Port speed is limited due to module.",
+		"Change the module or configure the port option to match the current module speed. Change the port option.",
+		{ice_port_number_label}},
+	{ICE_AQC_HEALTH_STATUS_ERR_PARALLEL_FAULT,
+		"All configured link modes were attempted but failed to establish link. The device will restart the process to establish link.",
+		"Check link partner connection and configuration.",
+		{ice_port_number_label}},
+	{ICE_AQC_HEALTH_STATUS_INFO_PORT_SPEED_PHY_LIMITED,
+		"Port speed is limited by PHY capabilities.",
+		"Change the module to align to port option.", {ice_port_number_label}},
+	{ICE_AQC_HEALTH_STATUS_ERR_NETLIST_TOPO, "LOM topology netlist is corrupted.",
+		ice_update_nvm_solution, {ice_port_number_label}},
+	{ICE_AQC_HEALTH_STATUS_ERR_NETLIST, "Unrecoverable netlist error.",
+		ice_update_nvm_solution, {ice_port_number_label}},
+	{ICE_AQC_HEALTH_STATUS_ERR_TOPO_CONFLICT, "Port topology conflict.",
+		"Change the port option. Update to the latest NVM image."},
+	{ICE_AQC_HEALTH_STATUS_ERR_LINK_HW_ACCESS, "Unrecoverable hardware access error.",
+		ice_update_nvm_solution, {ice_port_number_label}},
+	{ICE_AQC_HEALTH_STATUS_ERR_LINK_RUNTIME, "Unrecoverable runtime error.",
+		ice_update_nvm_solution, {ice_port_number_label}},
+	{ICE_AQC_HEALTH_STATUS_ERR_DNL_INIT, "Link management engine failed to initialize.",
+		ice_update_nvm_solution, {ice_port_number_label}},
+	{ICE_AQC_HEALTH_STATUS_ERR_PHY_FW_LOAD,
+		"Failed to load the firmware image in the external PHY.",
+		ice_update_nvm_solution, {ice_port_number_label}},
+	{ICE_AQC_HEALTH_STATUS_INFO_RECOVERY, "The device is in firmware recovery mode.",
+		ice_update_nvm_solution, {"Extended Error"}},
+	{ICE_AQC_HEALTH_STATUS_ERR_FLASH_ACCESS, "The flash chip cannot be accessed.",
+		"If issue persists, call customer support.", {"Access Type"}},
+	{ICE_AQC_HEALTH_STATUS_ERR_NVM_AUTH, "NVM authentication failed.",
+		ice_update_nvm_solution},
+	{ICE_AQC_HEALTH_STATUS_ERR_OROM_AUTH, "Option ROM authentication failed",
+		ice_update_nvm_solution},
+	{ICE_AQC_HEALTH_STATUS_ERR_DDP_AUTH, "DDP package authentication failed.",
+		"Update to latest base driver and DDP package."},
+	{ICE_AQC_HEALTH_STATUS_ERR_NVM_COMPAT, "NVM image is incompatible.",
+		ice_update_nvm_solution},
+	{ICE_AQC_HEALTH_STATUS_ERR_OROM_COMPAT, "Option ROM is incompatible.",
+		ice_update_nvm_solution, {"Expected PCI Device ID", "Expected Module ID"}},
+	{ICE_AQC_HEALTH_STATUS_ERR_DCB_MIB,
+		"Supplied MIB file is invalid. DCB reverted to default configuration.",
+		"Disable FW-LLDP and check DCBx system configuration.",
+		{ice_port_number_label, "MIB ID"}},
+};
+
+static int ice_health_status_lookup_compare(const void *a, const void *b)
+{
+	return ((struct ice_health_status *)a)->code - ((struct ice_health_status *)b)->code;
+}
+
+static const struct ice_health_status *ice_get_health_status(u16 code)
+{
+	struct ice_health_status key = { .code = code };
+
+	return bsearch(&key, ice_health_status_lookup, ARRAY_SIZE(ice_health_status_lookup),
+		       sizeof(struct ice_health_status), ice_health_status_lookup_compare);
+}
+
+static void ice_describe_status_code(struct devlink_fmsg *fmsg,
+				     struct ice_aqc_health_status_elem *hse)
+{
+	static const char *const aux_label[] = { "Aux Data 1", "Aux Data 2" };
+	const struct ice_health_status *health_code;
+	u32 internal_data[2];
+	u16 status_code;
+
+	status_code = le16_to_cpu(hse->health_status_code);
+
+	devlink_fmsg_put(fmsg, "Syndrome", status_code);
+	if (status_code) {
+		internal_data[0] = le32_to_cpu(hse->internal_data1);
+		internal_data[1] = le32_to_cpu(hse->internal_data2);
+
+		health_code = ice_get_health_status(status_code);
+		if (!health_code)
+			return;
+
+		devlink_fmsg_string_pair_put(fmsg, "Description", health_code->description);
+		if (health_code->solution)
+			devlink_fmsg_string_pair_put(fmsg, "Possible Solution",
+						     health_code->solution);
+
+		for (int i = 0; i < ICE_HEALTH_STATUS_DATA_SIZE; i++) {
+			if (internal_data[i] != ICE_AQC_HEALTH_STATUS_UNDEFINED_DATA)
+				devlink_fmsg_u32_pair_put(fmsg,
+							  health_code->data_label[i] ?
+							  health_code->data_label[i] :
+							  aux_label[i],
+							  internal_data[i]);
+		}
+	}
+}
+
+static int
+ice_port_reporter_dump(struct devlink_health_reporter *reporter, struct devlink_fmsg *fmsg,
+		       void *priv_ctx, struct netlink_ext_ack __always_unused *extack)
+{
+	struct ice_pf *pf = devlink_health_reporter_priv(reporter);
+
+	ice_describe_status_code(fmsg, &pf->health_reporters.port_status);
+	return 0;
+}
+
+static int
+ice_fw_reporter_dump(struct devlink_health_reporter *reporter, struct devlink_fmsg *fmsg,
+		     void *priv_ctx, struct netlink_ext_ack *extack)
+{
+	struct ice_pf *pf = devlink_health_reporter_priv(reporter);
+
+	ice_describe_status_code(fmsg, &pf->health_reporters.fw_status);
+	return 0;
+}
+
+static void ice_config_health_events(struct ice_pf *pf, bool enable)
+{
+	u8 enable_bits = 0;
+	int ret;
+
+	if (enable)
+		enable_bits = ICE_AQC_HEALTH_STATUS_SET_PF_SPECIFIC_MASK |
+			      ICE_AQC_HEALTH_STATUS_SET_GLOBAL_MASK;
+
+	ret = ice_aq_set_health_status_cfg(&pf->hw, enable_bits);
+	if (ret)
+		dev_err(ice_pf_to_dev(pf), "Failed to %s firmware health events, err %d aq_err %s\n",
+			str_enable_disable(enable), ret,
+			ice_aq_str(pf->hw.adminq.sq_last_status));
+}
+
+/**
+ * ice_process_health_status_event - Process the health status event from FW
+ * @pf: pointer to the PF structure
+ * @event: event structure containing the Health Status Event opcode
+ *
+ * Decode the Health Status Events and print the associated messages
+ */
+void ice_process_health_status_event(struct ice_pf *pf, struct ice_rq_event_info *event)
+{
+	const struct ice_aqc_health_status_elem *health_info;
+	u16 count;
+
+	health_info = (struct ice_aqc_health_status_elem *)event->msg_buf;
+	count = le16_to_cpu(event->desc.params.get_health_status.health_status_count);
+
+	if (count > (event->buf_len / sizeof(*health_info))) {
+		dev_err(ice_pf_to_dev(pf), "Received a health status event with invalid element count\n");
+		return;
+	}
+
+	for (int i = 0; i < count; i++) {
+		const struct ice_health_status *health_code;
+		u16 status_code;
+
+		status_code = le16_to_cpu(health_info->health_status_code);
+		health_code = ice_get_health_status(status_code);
+
+		if (health_code) {
+			switch (health_info->event_source) {
+			case ICE_AQC_HEALTH_STATUS_GLOBAL:
+				pf->health_reporters.fw_status = *health_info;
+				devlink_health_report(pf->health_reporters.fw,
+						      "FW syndrome reported", NULL);
+				break;
+			case ICE_AQC_HEALTH_STATUS_PF:
+			case ICE_AQC_HEALTH_STATUS_PORT:
+				pf->health_reporters.port_status = *health_info;
+				devlink_health_report(pf->health_reporters.port,
+						      "Port syndrome reported", NULL);
+				break;
+			default:
+				dev_err(ice_pf_to_dev(pf), "Health code with unknown source\n");
+			}
+		} else {
+			u32 data1, data2;
+			u16 source;
+
+			source = le16_to_cpu(health_info->event_source);
+			data1 = le32_to_cpu(health_info->internal_data1);
+			data2 = le32_to_cpu(health_info->internal_data2);
+			dev_dbg(ice_pf_to_dev(pf),
+				"Received internal health status code 0x%08x, source: 0x%08x, data1: 0x%08x, data2: 0x%08x",
+				status_code, source, data1, data2);
+		}
+		health_info++;
+	}
+}
+
 /**
  * ice_devlink_health_report - boilerplate to call given @reporter
  *
@@ -244,6 +482,8 @@ ice_init_devlink_rep(struct ice_pf *pf,
 
 ICE_DEFINE_HEALTH_REPORTER_OPS(mdd);
 ICE_DEFINE_HEALTH_REPORTER_OPS(tx_hang);
+ICE_DEFINE_HEALTH_REPORTER_OPS(fw);
+ICE_DEFINE_HEALTH_REPORTER_OPS(port);
 
 /**
  * ice_health_init - allocate and init all ice devlink health reporters and
@@ -257,6 +497,12 @@ void ice_health_init(struct ice_pf *pf)
 
 	reps->mdd = ice_init_devlink_rep(pf, &ice_mdd_reporter_ops);
 	reps->tx_hang = ice_init_devlink_rep(pf, &ice_tx_hang_reporter_ops);
+
+	if (ice_is_fw_health_report_supported(&pf->hw)) {
+		reps->fw = ice_init_devlink_rep(pf, &ice_fw_reporter_ops);
+		reps->port = ice_init_devlink_rep(pf, &ice_port_reporter_ops);
+		ice_config_health_events(pf, true);
+	}
 }
 
 /**
@@ -279,6 +525,11 @@ void ice_health_deinit(struct ice_pf *pf)
 {
 	ice_deinit_devl_reporter(pf->health_reporters.mdd);
 	ice_deinit_devl_reporter(pf->health_reporters.tx_hang);
+	if (ice_is_fw_health_report_supported(&pf->hw)) {
+		ice_deinit_devl_reporter(pf->health_reporters.fw);
+		ice_deinit_devl_reporter(pf->health_reporters.port);
+		ice_config_health_events(pf, false);
+	}
 }
 
 static
diff --git a/drivers/net/ethernet/intel/ice/devlink/health.h b/drivers/net/ethernet/intel/ice/devlink/health.h
index a08c7bd174cf..280c429feec8 100644
--- a/drivers/net/ethernet/intel/ice/devlink/health.h
+++ b/drivers/net/ethernet/intel/ice/devlink/health.h
@@ -13,8 +13,10 @@
  * devlink health mechanism for ice driver.
  */
 
+struct ice_aqc_health_status_elem;
 struct ice_pf;
 struct ice_tx_ring;
+struct ice_rq_event_info;
 
 enum ice_mdd_src {
 	ICE_MDD_SRC_TX_PQM,
@@ -25,17 +27,23 @@ enum ice_mdd_src {
 
 /**
  * struct ice_health - stores ice devlink health reporters and accompanied data
- * @tx_hang: devlink health reporter for tx_hang event
+ * @fw: devlink health reporter for FW Health Status events
  * @mdd: devlink health reporter for MDD detection event
+ * @port: devlink health reporter for Port Health Status events
+ * @tx_hang: devlink health reporter for tx_hang event
  * @tx_hang_buf: pre-allocated place to put info for Tx hang reporter from
  *               non-sleeping context
  * @tx_ring: ring that the hang occured on
  * @head: descriptior head
  * @intr: interrupt register value
  * @vsi_num: VSI owning the queue that the hang occured on
+ * @fw_status: buffer for last received FW Status event
+ * @port_status: buffer for last received Port Status event
  */
 struct ice_health {
+	struct devlink_health_reporter *fw;
 	struct devlink_health_reporter *mdd;
+	struct devlink_health_reporter *port;
 	struct devlink_health_reporter *tx_hang;
 	struct_group_tagged(ice_health_tx_hang_buf, tx_hang_buf,
 		struct ice_tx_ring *tx_ring;
@@ -43,8 +51,12 @@ struct ice_health {
 		u32 intr;
 		u16 vsi_num;
 	);
+	struct ice_aqc_health_status_elem fw_status;
+	struct ice_aqc_health_status_elem port_status;
 };
 
+void ice_process_health_status_event(struct ice_pf *pf,
+				     struct ice_rq_event_info *event);
 
 void ice_health_init(struct ice_pf *pf);
 void ice_health_deinit(struct ice_pf *pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index ce590991de38..232a1facf397 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -2511,6 +2511,87 @@ enum ice_aqc_fw_logging_mod {
 	ICE_AQC_FW_LOG_ID_MAX,
 };
 
+enum ice_aqc_health_status_mask {
+	ICE_AQC_HEALTH_STATUS_SET_PF_SPECIFIC_MASK = BIT(0),
+	ICE_AQC_HEALTH_STATUS_SET_ALL_PF_MASK      = BIT(1),
+	ICE_AQC_HEALTH_STATUS_SET_GLOBAL_MASK      = BIT(2),
+};
+
+/* Set Health Status (direct 0xFF20) */
+struct ice_aqc_set_health_status_cfg {
+	u8 event_source;
+	u8 reserved[15];
+};
+
+enum ice_aqc_health_status {
+	ICE_AQC_HEALTH_STATUS_ERR_UNKNOWN_MOD_STRICT		= 0x101,
+	ICE_AQC_HEALTH_STATUS_ERR_MOD_TYPE			= 0x102,
+	ICE_AQC_HEALTH_STATUS_ERR_MOD_QUAL			= 0x103,
+	ICE_AQC_HEALTH_STATUS_ERR_MOD_COMM			= 0x104,
+	ICE_AQC_HEALTH_STATUS_ERR_MOD_CONFLICT			= 0x105,
+	ICE_AQC_HEALTH_STATUS_ERR_MOD_NOT_PRESENT		= 0x106,
+	ICE_AQC_HEALTH_STATUS_INFO_MOD_UNDERUTILIZED		= 0x107,
+	ICE_AQC_HEALTH_STATUS_ERR_UNKNOWN_MOD_LENIENT		= 0x108,
+	ICE_AQC_HEALTH_STATUS_ERR_MOD_DIAGNOSTIC_FEATURE	= 0x109,
+	ICE_AQC_HEALTH_STATUS_ERR_INVALID_LINK_CFG		= 0x10B,
+	ICE_AQC_HEALTH_STATUS_ERR_PORT_ACCESS			= 0x10C,
+	ICE_AQC_HEALTH_STATUS_ERR_PORT_UNREACHABLE		= 0x10D,
+	ICE_AQC_HEALTH_STATUS_INFO_PORT_SPEED_MOD_LIMITED	= 0x10F,
+	ICE_AQC_HEALTH_STATUS_ERR_PARALLEL_FAULT		= 0x110,
+	ICE_AQC_HEALTH_STATUS_INFO_PORT_SPEED_PHY_LIMITED	= 0x111,
+	ICE_AQC_HEALTH_STATUS_ERR_NETLIST_TOPO			= 0x112,
+	ICE_AQC_HEALTH_STATUS_ERR_NETLIST			= 0x113,
+	ICE_AQC_HEALTH_STATUS_ERR_TOPO_CONFLICT			= 0x114,
+	ICE_AQC_HEALTH_STATUS_ERR_LINK_HW_ACCESS		= 0x115,
+	ICE_AQC_HEALTH_STATUS_ERR_LINK_RUNTIME			= 0x116,
+	ICE_AQC_HEALTH_STATUS_ERR_DNL_INIT			= 0x117,
+	ICE_AQC_HEALTH_STATUS_ERR_PHY_NVM_PROG			= 0x120,
+	ICE_AQC_HEALTH_STATUS_ERR_PHY_FW_LOAD			= 0x121,
+	ICE_AQC_HEALTH_STATUS_INFO_RECOVERY			= 0x500,
+	ICE_AQC_HEALTH_STATUS_ERR_FLASH_ACCESS			= 0x501,
+	ICE_AQC_HEALTH_STATUS_ERR_NVM_AUTH			= 0x502,
+	ICE_AQC_HEALTH_STATUS_ERR_OROM_AUTH			= 0x503,
+	ICE_AQC_HEALTH_STATUS_ERR_DDP_AUTH			= 0x504,
+	ICE_AQC_HEALTH_STATUS_ERR_NVM_COMPAT			= 0x505,
+	ICE_AQC_HEALTH_STATUS_ERR_OROM_COMPAT			= 0x506,
+	ICE_AQC_HEALTH_STATUS_ERR_NVM_SEC_VIOLATION		= 0x507,
+	ICE_AQC_HEALTH_STATUS_ERR_OROM_SEC_VIOLATION		= 0x508,
+	ICE_AQC_HEALTH_STATUS_ERR_DCB_MIB			= 0x509,
+	ICE_AQC_HEALTH_STATUS_ERR_MNG_TIMEOUT			= 0x50A,
+	ICE_AQC_HEALTH_STATUS_ERR_BMC_RESET			= 0x50B,
+	ICE_AQC_HEALTH_STATUS_ERR_LAST_MNG_FAIL			= 0x50C,
+	ICE_AQC_HEALTH_STATUS_ERR_RESOURCE_ALLOC_FAIL		= 0x50D,
+	ICE_AQC_HEALTH_STATUS_ERR_FW_LOOP			= 0x1000,
+	ICE_AQC_HEALTH_STATUS_ERR_FW_PFR_FAIL			= 0x1001,
+	ICE_AQC_HEALTH_STATUS_ERR_LAST_FAIL_AQ			= 0x1002,
+};
+
+/* Get Health Status (indirect 0xFF22) */
+struct ice_aqc_get_health_status {
+	__le16 health_status_count;
+	u8 reserved[6];
+	__le32 addr_high;
+	__le32 addr_low;
+};
+
+enum ice_aqc_health_status_scope {
+	ICE_AQC_HEALTH_STATUS_PF	= 0x1,
+	ICE_AQC_HEALTH_STATUS_PORT	= 0x2,
+	ICE_AQC_HEALTH_STATUS_GLOBAL	= 0x3,
+};
+
+#define ICE_AQC_HEALTH_STATUS_UNDEFINED_DATA	0xDEADBEEF
+
+/* Get Health Status event buffer entry (0xFF22),
+ * repeated per reported health status.
+ */
+struct ice_aqc_health_status_elem {
+	__le16 health_status_code;
+	__le16 event_source;
+	__le32 internal_data1;
+	__le32 internal_data2;
+};
+
 /* Set FW Logging configuration (indirect 0xFF30)
  * Register for FW Logging (indirect 0xFF31)
  * Query FW Logging (indirect 0xFF32)
@@ -2651,6 +2732,8 @@ struct ice_aq_desc {
 		struct ice_aqc_get_link_status get_link_status;
 		struct ice_aqc_event_lan_overflow lan_overflow;
 		struct ice_aqc_get_link_topo get_link_topo;
+		struct ice_aqc_set_health_status_cfg set_health_status_cfg;
+		struct ice_aqc_get_health_status get_health_status;
 		struct ice_aqc_dnl_call_command dnl_call;
 		struct ice_aqc_i2c read_write_i2c;
 		struct ice_aqc_read_i2c_resp read_i2c_resp;
@@ -2853,6 +2936,10 @@ enum ice_adminq_opc {
 	/* Standalone Commands/Events */
 	ice_aqc_opc_event_lan_overflow			= 0x1001,
 
+	/* SystemDiagnostic commands */
+	ice_aqc_opc_set_health_status_cfg		= 0xFF20,
+	ice_aqc_opc_get_health_status			= 0xFF22,
+
 	/* FW Logging Commands */
 	ice_aqc_opc_fw_logs_config			= 0xFF30,
 	ice_aqc_opc_fw_logs_register			= 0xFF31,
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index faba09b9d880..9c61318d3027 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -6047,6 +6047,44 @@ bool ice_is_phy_caps_an_enabled(struct ice_aqc_get_phy_caps_data *caps)
 	return false;
 }
 
+/**
+ * ice_is_fw_health_report_supported
+ * @hw: pointer to the hardware structure
+ *
+ * Return: true if firmware supports health status reports,
+ * false otherwise
+ */
+bool ice_is_fw_health_report_supported(struct ice_hw *hw)
+{
+	return ice_is_fw_api_min_ver(hw, ICE_FW_API_HEALTH_REPORT_MAJ,
+				     ICE_FW_API_HEALTH_REPORT_MIN,
+				     ICE_FW_API_HEALTH_REPORT_PATCH);
+}
+
+/**
+ * ice_aq_set_health_status_cfg - Configure FW health events
+ * @hw: pointer to the HW struct
+ * @event_source: type of diagnostic events to enable
+ *
+ * Configure the health status event types that the firmware will send to this
+ * PF. The supported event types are: PF-specific, all PFs, and global.
+ *
+ * Return: 0 on success, negative error code otherwise.
+ */
+int ice_aq_set_health_status_cfg(struct ice_hw *hw, u8 event_source)
+{
+	struct ice_aqc_set_health_status_cfg *cmd;
+	struct ice_aq_desc desc;
+
+	cmd = &desc.params.set_health_status_cfg;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_health_status_cfg);
+
+	cmd->event_source = event_source;
+
+	return ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
+}
+
 /**
  * ice_aq_set_lldp_mib - Set the LLDP MIB
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 52a1b72cce26..e132851dc0f0 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -141,6 +141,8 @@ int
 ice_get_link_default_override(struct ice_link_default_override_tlv *ldo,
 			      struct ice_port_info *pi);
 bool ice_is_phy_caps_an_enabled(struct ice_aqc_get_phy_caps_data *caps);
+bool ice_is_fw_health_report_supported(struct ice_hw *hw);
+int ice_aq_set_health_status_cfg(struct ice_hw *hw, u8 event_source);
 int ice_aq_get_phy_equalization(struct ice_hw *hw, u16 data_in, u16 op_code,
 				u8 serdes_num, int *output);
 int
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 7b9be612cf33..36cfbe771d1b 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1567,6 +1567,9 @@ static int __ice_clean_ctrlq(struct ice_pf *pf, enum ice_ctl_q q_type)
 		case ice_aqc_opc_lldp_set_mib_change:
 			ice_dcb_process_lldp_set_mib_change(pf, &event);
 			break;
+		case ice_aqc_opc_get_health_status:
+			ice_process_health_status_event(pf, &event);
+			break;
 		default:
 			dev_dbg(dev, "%s Receive Queue unknown event 0x%04x ignored\n",
 				qtype, opcode);
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index e2e6b2119889..42ac5a9f1cf4 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -1207,4 +1207,9 @@ struct ice_aq_get_set_rss_lut_params {
 #define ICE_FW_API_REPORT_DFLT_CFG_MIN		7
 #define ICE_FW_API_REPORT_DFLT_CFG_PATCH	3
 
+/* AQ API version for Health Status support */
+#define ICE_FW_API_HEALTH_REPORT_MAJ		1
+#define ICE_FW_API_HEALTH_REPORT_MIN		7
+#define ICE_FW_API_HEALTH_REPORT_PATCH		6
+
 #endif /* _ICE_TYPE_H_ */
-- 
2.38.1

