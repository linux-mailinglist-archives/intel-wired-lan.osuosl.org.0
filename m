Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uKcDEPrF/WkpigAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 13:16:10 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2454F5913
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 13:16:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 48911615CE;
	Fri,  8 May 2026 11:16:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dP-fks5_YzEQ; Fri,  8 May 2026 11:16:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8408E615BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778238965;
	bh=wvLxAJ4h3Eb08IxOga/7i2TI4RGuIM3Cso7BePTH7U4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=VZysLORvBiX0Ex1HNU6Yi2jNMP9kDUPXW9Y2sUFp5Rl78NhdYbMEKABU0ASbmhKBm
	 +f7gryfA1QaAn2U81ztCpM5AgYE+L2t7B1RkoqsGQodJ/DLFEdDRkwJhhtKA1hmiZ5
	 oUa5ImphHnlfmwD9XddDfJtD2yHPanPgtt4gbOGWXQb+ERlSBQb1sMNvubiKYZsp2I
	 895Ey8jYrru/6HvHmrhAhzXK/dud6mP81hT3RKx3sTKxMQ0QoVma1CHJnPXuRhy6Ri
	 aKU5hHHr1Mgm80vXIhFflB/oVcJGP2ydYCZbJ5sG+IKC02PHQ3OO6cWwJjgQcdEN+7
	 whO4iQ3Fxjr/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8408E615BC;
	Fri,  8 May 2026 11:16:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0618A317
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 11:16:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DF9E640579
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 11:16:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hHx_dDP5UJsc for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 11:16:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 22BAA40574
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 22BAA40574
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 22BAA40574
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 11:16:01 +0000 (UTC)
X-CSE-ConnectionGUID: ldcHIlHrSSCTist/ArPkKg==
X-CSE-MsgGUID: tLIVRyxKSsCdmBC4E5fhqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="78226271"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="78226271"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 04:16:01 -0700
X-CSE-ConnectionGUID: KynP2kKYSlC7DhjUMczXyA==
X-CSE-MsgGUID: 8SQB96RKS1K4CIuDT7f+fA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="238522467"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa004.fm.intel.com with ESMTP; 08 May 2026 04:15:57 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  8 May 2026 13:08:56 +0200
Message-ID: <20260508110856.550999-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778238962; x=1809774962;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=n5tcy6gAREAwWdn0QWeHAy2C4epcxSEnweD1r/RsANE=;
 b=Sqd4j9eYaQ91fFgDMwvX/GYC6I2H4555Ths9RhqnRcRS1gyPdanWXEhu
 sZkKuYUAAPLKXGctOHeJcBfCTyAuCKVnck+uxv7qT6zDh4kwG9AeWD9P1
 ku56KXG3iKhfRQJ4kU/NBUDtnS3TJqYYOSwBse8F/VMP8RjBCuxNWafm4
 wWxbci7LT2LjyqvsZxUz1t6ijxHcbQAZ//F6G9zdYDWW39gzC6W2VlfFt
 M+ZqmmfSliumhTQelfgVLy7cKroy72385KuJwdDc6mozCgq0e8/ceNjlR
 3HI5JeOKQ1CRJg6mWB3kAHW7P0Ngv1AGIvXNoJeZbyR9RFf6GgrpNl5cA
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Sqd4j9eY
Subject: [Intel-wired-lan] [PATCH iwl-next v12] ice: add support for
 unmanaged DPLL on E830 NIC
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
Cc: pmenzel@molgen.mpg.de, linux-doc@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 aleksandr.loktionov@intel.com, anthony.l.nguyen@intel.com,
 zoltan.fodor@intel.com, horms@kernel.org, przemyslaw.kitszel@intel.com,
 vgrinber@redhat.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 1E2454F5913
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,mpg.de:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Hardware variants of E830 may support an unmanaged DPLL where the
configuration is hardcoded within the hardware and firmware, meaning
users cannot modify settings. However, users are able to check the DPLL
lock status and obtain configuration information through the Linux DPLL
and devlink health subsystem.

Availability of 'loss of lock' health status code determines if such
support is available, if true, register single DPLL device with 1 input
and 1 output and provide hardcoded/read only properties of a pin and
DPLL device. User is only allowed to check DPLL device status and receive
notifications on DPLL lock status change.

When present, the DPLL device locks to an external signal provided
through the PCIe/OCP pin. The expected input signal is 1PPS
(1 Pulse Per Second) embedded on a 10MHz reference clock.
The DPLL produces output:
- for MAC (Media Access Control) & PHY (Physical Layer) clocks,
- 1PPS for synchronization of onboard PHC (Precision Hardware Clock) timer.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
v12:
- remove HAVE_DPLL_ESYNC ifdef
- guard ice_dpll_lock_state_set_unmanaged() call in health event handler
  with test_bit(ICE_FLAG_DPLL, pf->flags) and pf->dplls.unmanaged
- add NULL guards for first/second dpll in ice_dpll_deinit_direct_pins()
- add comments explaining intentional continue in
  ice_dpll_init_info_direct_pins() for unmanaged pins
v11:
- rebase and fix conflicts
---
 .../device_drivers/ethernet/intel/ice.rst     |  83 +++++
 .../net/ethernet/intel/ice/devlink/health.c   |   6 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  12 +
 drivers/net/ethernet/intel/ice/ice_common.c   | 136 ++++++++
 drivers/net/ethernet/intel/ice/ice_common.h   |   8 +
 drivers/net/ethernet/intel/ice/ice_dpll.c     | 314 ++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_dpll.h     |  10 +
 drivers/net/ethernet/intel/ice/ice_main.c     |  11 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  46 +++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   1 +
 10 files changed, 604 insertions(+), 23 deletions(-)

diff --git a/Documentation/networking/device_drivers/ethernet/intel/ice.rst b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
index 0bca293cf9cb..09877066b031 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/ice.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
@@ -941,6 +941,89 @@ To see input signal on those PTP pins, you need to configure DPLL properly.
 Output signal is only visible on DPLL and to send it to the board SMA/U.FL pins,
 DPLL output pins have to be manually configured.
 
+Unmanaged DPLL Support
+----------------------
+Hardware variants of E830 may support an unmanaged DPLL:
+
+- Intel(R) Ethernet Network Adapter E830-XXVDA8F for OCP 3.0,
+
+- Intel(R) Ethernet Network Adapter E830-XXVDA4F.
+
+In the case of the unmanaged DPLL, the configuration is hardcoded within the
+hardware and firmware, meaning users cannot modify settings. However,
+users can check the DPLL lock status and obtain configuration information
+through the Linux DPLL subsystem.
+
+When present, the DPLL device locks to an external signal provided through the
+PCIe/OCP pin. The expected input signal is 1PPS (1 Pulse Per Second) embedded
+on a 10MHz reference clock.
+The DPLL produces output:
+
+- for MAC (Media Access Control) & PHY (Physical Layer) clocks,
+
+- 1PPS for synchronization of onboard PHC (Precision Hardware Clock) timer.
+
+Requirements: The Linux kernel must have support for both the DPLL Subsystem
+and the Embedded Sync patch series.
+
+Example output of querying the Linux DPLL subsystem can be found below.
+
+.. code-block:: console
+  :caption: Dumping the DPLL pins
+
+  $ <ynl> --spec Documentation/netlink/specs/dpll.yaml --dump pin-get
+  [{'board-label': '1588-TIME_SYNC',
+    'capabilities': set(),
+    'clock-id': 282574471561216,
+    'esync-frequency': 1,
+    'esync-frequency-supported': [{'frequency-max': 1, 'frequency-min': 1}],
+    'esync-pulse': 25,
+    'frequency': 10000000,
+    'id': 13,
+    'module-name': 'ice',
+    'parent-device': [{'direction': 'input',
+                       'parent-id': 6,
+                       'state': 'connected'}],
+    'phase-adjust-max': 0,
+    'phase-adjust-min': 0,
+    'type': 'ext'},
+    {'board-label': 'MAC-PHY-CLK',
+      'capabilities': set(),
+    'clock-id': 282574471561216,
+    'frequency': 156250000,
+    'id': 14,
+    'module-name': 'ice',
+    'parent-device': [{'direction': 'output',
+                       'parent-id': 6,
+                       'state': 'connected'}],
+    'phase-adjust-max': 0,
+    'phase-adjust-min': 0,
+    'type': 'synce-eth-port'},
+  {'board-label': '1588-TIME_REF',
+    'capabilities': set(),
+    'clock-id': 282574471561216,
+    'frequency': 1,
+    'id': 15,
+    'module-name': 'ice',
+    'parent-device': [{'direction': 'output',
+                       'parent-id': 6,
+                       'state': 'connected'}],
+    'phase-adjust-max': 0,
+    'phase-adjust-min': 0,
+    'type': 'int-oscillator'}]
+
+.. code-block:: console
+  :caption: Dumping the DPLL devices
+
+  $ <ynl> --spec Documentation/netlink/specs/dpll.yaml --dump device-get
+  [{'clock-id': 282574471561216,
+    'id': 6,
+    'lock-status': 'locked',
+    'mode': 'manual',
+    'mode-supported': ['manual'],
+    'module-name': 'ice',
+    'type': 'pps'}]
+
 GNSS module
 -----------
 Requires kernel compiled with CONFIG_GNSS=y or CONFIG_GNSS=m.
diff --git a/drivers/net/ethernet/intel/ice/devlink/health.c b/drivers/net/ethernet/intel/ice/devlink/health.c
index 8e9a8a8178d4..a83eb9f104c8 100644
--- a/drivers/net/ethernet/intel/ice/devlink/health.c
+++ b/drivers/net/ethernet/intel/ice/devlink/health.c
@@ -101,6 +101,8 @@ static const struct ice_health_status ice_health_status_lookup[] = {
 		"Supplied MIB file is invalid. DCB reverted to default configuration.",
 		"Disable FW-LLDP and check DCBx system configuration.",
 		{ice_port_number_label, "MIB ID"}},
+	{ICE_AQC_HEALTH_STATUS_INFO_LOSS_OF_LOCK, "Local DPLL lock status",
+		NULL,},
 };
 
 static int ice_health_status_lookup_compare(const void *a, const void *b)
@@ -242,6 +244,10 @@ void ice_process_health_status_event(struct ice_pf *pf, struct ice_rq_event_info
 				pf->health_reporters.fw_status = *health_info;
 				devlink_health_report(pf->health_reporters.fw,
 						      "FW syndrome reported", NULL);
+				if (status_code == ICE_AQC_HEALTH_STATUS_INFO_LOSS_OF_LOCK &&
+				    test_bit(ICE_FLAG_DPLL, pf->flags) &&
+				    pf->dplls.unmanaged)
+					ice_dpll_lock_state_set_unmanaged(pf, health_info, true);
 				break;
 			case ICE_AQC_HEALTH_STATUS_PF:
 			case ICE_AQC_HEALTH_STATUS_PORT:
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index eeffbcf9480d..07fc72da347c 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1498,6 +1498,7 @@ struct ice_aqc_get_link_topo {
 #define ICE_AQC_GET_LINK_TOPO_NODE_NR_PCA9575		0x21
 #define ICE_AQC_GET_LINK_TOPO_NODE_NR_ZL30632_80032	0x24
 #define ICE_AQC_GET_LINK_TOPO_NODE_NR_SI5383_5384	0x25
+#define ICE_AQC_GET_LINK_TOPO_NODE_NR_ZL80640		0x27
 #define ICE_AQC_GET_LINK_TOPO_NODE_NR_E822_PHY		0x30
 #define ICE_AQC_GET_LINK_TOPO_NODE_NR_C827		0x31
 #define ICE_AQC_GET_LINK_TOPO_NODE_NR_GEN_CLK_MUX	0x47
@@ -2481,11 +2482,14 @@ enum ice_aqc_health_status {
 	ICE_AQC_HEALTH_STATUS_ERR_BMC_RESET			= 0x50B,
 	ICE_AQC_HEALTH_STATUS_ERR_LAST_MNG_FAIL			= 0x50C,
 	ICE_AQC_HEALTH_STATUS_ERR_RESOURCE_ALLOC_FAIL		= 0x50D,
+	ICE_AQC_HEALTH_STATUS_INFO_LOSS_OF_LOCK			= 0x601,
 	ICE_AQC_HEALTH_STATUS_ERR_FW_LOOP			= 0x1000,
 	ICE_AQC_HEALTH_STATUS_ERR_FW_PFR_FAIL			= 0x1001,
 	ICE_AQC_HEALTH_STATUS_ERR_LAST_FAIL_AQ			= 0x1002,
 };
 
+#define ICE_AQC_HEALTH_STATUS_CODE_NUM				64
+
 /* Get Health Status (indirect 0xFF22) */
 struct ice_aqc_get_health_status {
 	__le16 health_status_count;
@@ -2512,6 +2516,13 @@ struct ice_aqc_health_status_elem {
 	__le32 internal_data2;
 };
 
+/* Get Health Status response buffer entry, (0xFF21)
+ * repeated per reported health status
+ */
+struct ice_aqc_health_status_supp_elem {
+	__le16 health_status_code;
+};
+
 /* Admin Queue command opcodes */
 enum ice_adminq_opc {
 	/* AQ commands */
@@ -2675,6 +2686,7 @@ enum ice_adminq_opc {
 
 	/* System Diagnostic commands */
 	ice_aqc_opc_set_health_status_cfg		= 0xFF20,
+	ice_aqc_opc_get_supported_health_status_codes	= 0xFF21,
 	ice_aqc_opc_get_health_status			= 0xFF22,
 
 	/* FW Logging Commands */
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index b617a6bff891..ef856d686f0a 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -3048,6 +3048,29 @@ bool ice_is_cgu_in_netlist(struct ice_hw *hw)
 	return false;
 }
 
+/**
+ * ice_is_unmanaged_cgu_in_netlist - check for unmanaged CGU presence
+ * @hw: pointer to the hw struct
+ *
+ * Check if the unmanaged Clock Generation Unit (CGU) device is present in the netlist.
+ * Save the CGU part number in the hw structure for later use.
+ * Return:
+ * * true - unmanaged cgu is present
+ * * false - unmanaged cgu is not present
+ */
+bool ice_is_unmanaged_cgu_in_netlist(struct ice_hw *hw)
+{
+	if (!ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
+				   ICE_AQC_LINK_TOPO_NODE_CTX_GLOBAL,
+				   ICE_AQC_GET_LINK_TOPO_NODE_NR_ZL80640,
+				   NULL)) {
+		hw->cgu_part_number = ICE_AQC_GET_LINK_TOPO_NODE_NR_ZL80640;
+		return true;
+	}
+
+	return false;
+}
+
 /**
  * ice_is_gps_in_netlist
  * @hw: pointer to the hw struct
@@ -6310,6 +6333,119 @@ bool ice_is_fw_health_report_supported(struct ice_hw *hw)
 				     ICE_FW_API_HEALTH_REPORT_PATCH);
 }
 
+/**
+ * ice_aq_get_health_status_supported - get supported health status codes
+ * @hw: pointer to the HW struct
+ * @buff: pointer to buffer where health status elements will be stored
+ * @num: number of health status elements buffer can hold
+ *
+ * Return:
+ * * 0 - success,
+ * * negative - AQ error code.
+ */
+static int
+ice_aq_get_health_status_supported(struct ice_hw *hw,
+				   struct ice_aqc_health_status_supp_elem *buff,
+				   int num)
+{
+	u16 code = ice_aqc_opc_get_supported_health_status_codes;
+	struct libie_aq_desc desc;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, code);
+
+	return ice_aq_send_cmd(hw, &desc, buff, num * sizeof(*buff), NULL);
+}
+
+/**
+ * ice_aq_get_health_status - get current health status array from the firmware
+ * @hw: pointer to the HW struct
+ * @buff: pointer to buffer where health status elements will be stored
+ * @num: number of health status elements buffer can hold
+ *
+ * Return:
+ * * 0 - success,
+ * * negative - AQ error code.
+ */
+int ice_aq_get_health_status(struct ice_hw *hw,
+			     struct ice_aqc_health_status_elem *buff, int num)
+{
+	struct libie_aq_desc desc;
+
+	ice_fill_dflt_direct_cmd_desc(&desc,
+				      ice_aqc_opc_get_health_status);
+
+	return ice_aq_send_cmd(hw, &desc, buff, num * sizeof(*buff), NULL);
+}
+
+/**
+ * ice_is_health_status_code_supported - check if health status code is supported
+ * @hw: pointer to the hardware structure
+ * @code: health status code to check
+ * @supported: pointer to boolean result
+ *
+ * Return: 0 on success, negative error code otherwise
+ */
+int ice_is_health_status_code_supported(struct ice_hw *hw, u16 code,
+					bool *supported)
+{
+	const int BUFF_SIZE = ICE_AQC_HEALTH_STATUS_CODE_NUM;
+	struct ice_aqc_health_status_supp_elem *buff;
+	int ret;
+
+	*supported = false;
+	buff = kzalloc_objs(*buff, BUFF_SIZE);
+	if (!buff)
+		return -ENOMEM;
+	ret = ice_aq_get_health_status_supported(hw, buff, BUFF_SIZE);
+	if (ret)
+		goto free_buff;
+	for (int i = 0; i < BUFF_SIZE && buff[i].health_status_code; i++)
+		if (le16_to_cpu(buff[i].health_status_code) == code) {
+			*supported = true;
+			break;
+		}
+
+free_buff:
+	kfree(buff);
+	return ret;
+}
+
+/**
+ * ice_get_last_health_status_code - get last health status for given code
+ * @hw: pointer to the hardware structure
+ * @out: pointer to the health status struct to be filled
+ * @code: health status code to check
+ *
+ * Return: 0 on success, negative error code otherwise
+ */
+int ice_get_last_health_status_code(struct ice_hw *hw,
+				    struct ice_aqc_health_status_elem *out,
+				    u16 code)
+{
+	const int BUFF_SIZE = ICE_AQC_HEALTH_STATUS_CODE_NUM;
+	struct ice_aqc_health_status_elem *buff;
+	int ret, last_status = -1;
+
+	buff = kzalloc_objs(*buff, BUFF_SIZE);
+	if (!buff)
+		return -ENOMEM;
+	ret = ice_aq_get_health_status(hw, buff, BUFF_SIZE);
+	if (ret)
+		goto free_buff;
+	for (int i = 0; i < BUFF_SIZE && buff[i].health_status_code; i++)
+		if (le16_to_cpu(buff[i].health_status_code) == code)
+			last_status = i;
+
+	if (last_status >= 0)
+		memcpy(out, &buff[last_status], sizeof(*out));
+	else
+		memset(out, 0, sizeof(*out));
+
+free_buff:
+	kfree(buff);
+	return ret;
+}
+
 /**
  * ice_aq_set_health_status_cfg - Configure FW health events
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index ff6393e9be0c..ebced9edd5e3 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -162,6 +162,7 @@ ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
 bool ice_is_phy_rclk_in_netlist(struct ice_hw *hw);
 bool ice_is_clock_mux_in_netlist(struct ice_hw *hw);
 bool ice_is_cgu_in_netlist(struct ice_hw *hw);
+bool ice_is_unmanaged_cgu_in_netlist(struct ice_hw *hw);
 bool ice_is_gps_in_netlist(struct ice_hw *hw);
 int
 ice_aq_get_netlist_node(struct ice_hw *hw, struct ice_aqc_get_link_topo *cmd,
@@ -188,6 +189,13 @@ ice_get_link_default_override(struct ice_link_default_override_tlv *ldo,
 			      struct ice_port_info *pi);
 bool ice_is_phy_caps_an_enabled(struct ice_aqc_get_phy_caps_data *caps);
 bool ice_is_fw_health_report_supported(struct ice_hw *hw);
+int ice_aq_get_health_status(struct ice_hw *hw,
+			     struct ice_aqc_health_status_elem *buff, int num);
+int ice_is_health_status_code_supported(struct ice_hw *hw, u16 code,
+					bool *supported);
+int ice_get_last_health_status_code(struct ice_hw *hw,
+				    struct ice_aqc_health_status_elem *out,
+				    u16 code);
 int ice_aq_set_health_status_cfg(struct ice_hw *hw, u8 event_source);
 int ice_aq_get_phy_equalization(struct ice_hw *hw, u16 data_in, u16 op_code,
 				u8 serdes_num, int *output);
diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index b9c7df50123d..afe8a1480014 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -18,6 +18,8 @@
 #define ICE_DPLL_SW_PIN_INPUT_BASE_SFP		4
 #define ICE_DPLL_SW_PIN_INPUT_BASE_QSFP		6
 #define ICE_DPLL_SW_PIN_OUTPUT_BASE		0
+#define ICE_DPLL_HEALTH_STATUS_LOCKED		1
+#define ICE_DPLL_HEALTH_STATUS_UNLOCKED		0
 
 #define ICE_DPLL_PIN_SW_INPUT_ABS(in_idx) \
 	(ICE_DPLL_SW_PIN_INPUT_BASE_SFP + (in_idx))
@@ -80,6 +82,10 @@ static const struct dpll_pin_frequency ice_esync_range[] = {
 	DPLL_PIN_FREQUENCY_RANGE(0, DPLL_PIN_FREQUENCY_1_HZ),
 };
 
+static const struct dpll_pin_frequency ice_esync_range_unmanaged[] = {
+	DPLL_PIN_FREQUENCY_1PPS,
+};
+
 /**
  * ice_dpll_is_sw_pin - check if given pin shall be controlled by SW
  * @pf: private board structure
@@ -1089,9 +1095,11 @@ ice_dpll_pin_state_get(const struct dpll_pin *pin, void *pin_priv,
 		return -EBUSY;
 
 	mutex_lock(&pf->dplls.lock);
-	ret = ice_dpll_pin_state_update(pf, p, pin_type, extack);
-	if (ret)
-		goto unlock;
+	if (!pf->dplls.unmanaged) {
+		ret = ice_dpll_pin_state_update(pf, p, pin_type, extack);
+		if (ret)
+			goto unlock;
+	}
 	if (pin_type == ICE_DPLL_PIN_TYPE_INPUT ||
 	    pin_type == ICE_DPLL_PIN_TYPE_OUTPUT)
 		*state = p->state[d->dpll_idx];
@@ -2234,9 +2242,14 @@ ice_dpll_input_esync_get(const struct dpll_pin *pin, void *pin_priv,
 		mutex_unlock(&pf->dplls.lock);
 		return -EOPNOTSUPP;
 	}
-	esync->range = ice_esync_range;
-	esync->range_num = ARRAY_SIZE(ice_esync_range);
-	if (p->flags[0] & ICE_AQC_GET_CGU_IN_CFG_FLG2_ESYNC_EN) {
+	if (pf->dplls.unmanaged) {
+		esync->range = ice_esync_range_unmanaged;
+		esync->range_num = ARRAY_SIZE(ice_esync_range_unmanaged);
+	} else {
+		esync->range = ice_esync_range;
+		esync->range_num = ARRAY_SIZE(ice_esync_range);
+	}
+	if (p->flags[0] & ICE_DPLL_IN_ESYNC_ENABLED) {
 		esync->freq = DPLL_PIN_FREQUENCY_1_HZ;
 		esync->pulse = ICE_DPLL_PIN_ESYNC_PULSE_HIGH_PERCENT;
 	} else {
@@ -2671,6 +2684,19 @@ static const struct dpll_pin_ops ice_dpll_output_ops = {
 	.esync_get = ice_dpll_output_esync_get,
 };
 
+static const struct dpll_pin_ops ice_dpll_input_unmanaged_ops = {
+	.frequency_get = ice_dpll_input_frequency_get,
+	.direction_get = ice_dpll_input_direction,
+	.state_on_dpll_get = ice_dpll_input_state_get,
+	.esync_get = ice_dpll_input_esync_get,
+};
+
+static const struct dpll_pin_ops ice_dpll_output_unmanaged_ops = {
+	.frequency_get = ice_dpll_output_frequency_get,
+	.direction_get = ice_dpll_output_direction,
+	.state_on_dpll_get = ice_dpll_output_state_get,
+};
+
 static const struct dpll_device_ops ice_dpll_ops = {
 	.lock_status_get = ice_dpll_lock_status_get,
 	.mode_get = ice_dpll_mode_get,
@@ -3225,8 +3251,10 @@ ice_dpll_deinit_direct_pins(struct ice_pf *pf, bool cgu,
 			    struct dpll_device *second)
 {
 	if (cgu) {
-		ice_dpll_unregister_pins(first, pins, ops, count);
-		ice_dpll_unregister_pins(second, pins, ops, count);
+		if (first)
+			ice_dpll_unregister_pins(first, pins, ops, count);
+		if (second)
+			ice_dpll_unregister_pins(second, pins, ops, count);
 	}
 	ice_dpll_release_pins(pins, count);
 }
@@ -3258,12 +3286,15 @@ ice_dpll_init_direct_pins(struct ice_pf *pf, bool cgu,
 	int ret;
 
 	ret = ice_dpll_get_pins(pf, pins, start_idx, count, pf->dplls.clock_id);
-	if (ret)
+	if (!cgu || ret)
 		return ret;
-	if (cgu) {
+
+	if (first) {
 		ret = ice_dpll_register_pins(first, pins, ops, count);
 		if (ret)
 			goto release_pins;
+	}
+	if (second) {
 		ret = ice_dpll_register_pins(second, pins, ops, count);
 		if (ret)
 			goto unregister_first;
@@ -3272,7 +3303,8 @@ ice_dpll_init_direct_pins(struct ice_pf *pf, bool cgu,
 	return 0;
 
 unregister_first:
-	ice_dpll_unregister_pins(first, pins, ops, count);
+	if (first)
+		ice_dpll_unregister_pins(first, pins, ops, count);
 release_pins:
 	ice_dpll_release_pins(pins, count);
 	return ret;
@@ -3529,6 +3561,18 @@ static void ice_dpll_deinit_pins(struct ice_pf *pf, bool cgu)
 	struct ice_dpll *de = &d->eec;
 	struct ice_dpll *dp = &d->pps;
 
+	if (d->unmanaged) {
+		ice_dpll_unregister_pins(dp->dpll, inputs,
+					 &ice_dpll_input_unmanaged_ops,
+					 num_inputs);
+		ice_dpll_unregister_pins(dp->dpll, outputs,
+					 &ice_dpll_output_unmanaged_ops,
+					 num_outputs);
+		ice_dpll_release_pins(inputs, num_inputs);
+		ice_dpll_release_pins(outputs, num_outputs);
+		return;
+	}
+
 	ice_dpll_deinit_rclk_pin(pf);
 	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825)
 		ice_dpll_deinit_fwnode_pins(pf, pf->dplls.inputs, 0);
@@ -3713,23 +3757,29 @@ static int ice_dpll_init_pins(struct ice_pf *pf, bool cgu)
 	const struct dpll_pin_ops *input_ops;
 	int ret, count;
 
-	input_ops = &ice_dpll_input_ops;
-	output_ops = &ice_dpll_output_ops;
+	if (!pf->dplls.unmanaged) {
+		input_ops = &ice_dpll_input_ops;
+		output_ops = &ice_dpll_output_ops;
+	} else {
+		input_ops = &ice_dpll_input_unmanaged_ops;
+		output_ops = &ice_dpll_output_unmanaged_ops;
+	}
 
 	ret = ice_dpll_init_direct_pins(pf, cgu, pf->dplls.inputs, 0,
 					pf->dplls.num_inputs, input_ops,
-					pf->dplls.eec.dpll,
-					pf->dplls.pps.dpll);
+					pf->dplls.eec.dpll, pf->dplls.pps.dpll);
 	if (ret)
 		return ret;
 	count = pf->dplls.num_inputs;
-	if (cgu) {
+	if (cgu || pf->dplls.unmanaged) {
 		ret = ice_dpll_init_direct_pins(pf, cgu, pf->dplls.outputs,
 						count, pf->dplls.num_outputs,
 						output_ops, pf->dplls.eec.dpll,
 						pf->dplls.pps.dpll);
 		if (ret)
 			goto deinit_inputs;
+		if (pf->dplls.unmanaged)
+			return 0;
 		count += pf->dplls.num_outputs;
 		if (!pf->dplls.generic) {
 			ret = ice_dpll_init_direct_pins(pf, cgu, pf->dplls.sma,
@@ -3842,7 +3892,8 @@ ice_dpll_init_dpll(struct ice_pf *pf, struct ice_dpll *d, bool cgu,
 
 		if (type == DPLL_TYPE_PPS && ice_dpll_is_pps_phase_monitor(pf))
 			ops =  &ice_dpll_pom_ops;
-		ice_dpll_update_state(pf, d, true);
+		if (!pf->dplls.unmanaged)
+			ice_dpll_update_state(pf, d, true);
 		ret = dpll_device_register(d->dpll, type, ops, d);
 		if (ret) {
 			dpll_device_put(d->dpll, &d->tracker);
@@ -3869,6 +3920,33 @@ static void ice_dpll_deinit_worker(struct ice_pf *pf)
 	kthread_destroy_worker(d->kworker);
 }
 
+/**
+ * ice_dpll_pin_freq_info - find pin frequency from supported ones
+ * @hw: pointer to the hardware structure
+ * @pin_idx: pin index
+ * @input: if input pin
+ *
+ * This function searches through the array of supported frequencies for a
+ * DPLL pin and returns single frequency pin is capable, if pin support only
+ * one frequency. Shall be used only for dpll with driver hardcoded frequency.
+ *
+ * Return:
+ * * 0 - failure, pin uses multiple frequencies,
+ * * frequency - success.
+ */
+static u64 ice_dpll_pin_freq_info(struct ice_hw *hw, u8 pin_idx, bool input)
+{
+	struct dpll_pin_frequency *freqs;
+	u8 freq_num;
+
+	/* Get supported frequencies for this pin */
+	freqs = ice_cgu_get_pin_freq_supp(hw, pin_idx, input, &freq_num);
+	if (!freqs || freq_num != 1 || freqs[0].min != freqs[0].max)
+		return 0;
+
+	return freqs[0].min;
+}
+
 /**
  * ice_dpll_init_worker - Initialize DPLLs periodic worker
  * @pf: board private structure
@@ -4028,6 +4106,19 @@ ice_dpll_init_info_direct_pins(struct ice_pf *pf,
 		pins[i].prop.board_label = ice_cgu_get_pin_name(hw, i, input);
 		pins[i].prop.type = ice_cgu_get_pin_type(hw, i, input);
 		if (input) {
+			if (pf->dplls.unmanaged) {
+				pins[i].freq = ice_dpll_pin_freq_info(hw, i,
+								      input);
+				pins[i].state[0] = DPLL_PIN_STATE_CONNECTED;
+				pins[i].status =
+					ICE_AQC_GET_CGU_IN_CFG_STATUS_ESYNC_CAP;
+				pins[i].flags[0] = ICE_DPLL_IN_ESYNC_ENABLED;
+				/* skip priority, capabilities, phase range,
+				 * pin state AQ query and freq_supported -
+				 * not available for unmanaged DPLL
+				 */
+				continue;
+			}
 			ret = ice_aq_get_cgu_ref_prio(hw, de->dpll_idx, i,
 						      &de->input_prio[i]);
 			if (ret)
@@ -4041,6 +4132,16 @@ ice_dpll_init_info_direct_pins(struct ice_pf *pf,
 			if (ice_dpll_is_sw_pin(pf, i, true))
 				pins[i].hidden = true;
 		} else {
+			if (pf->dplls.unmanaged) {
+				pins[i].freq = ice_dpll_pin_freq_info(hw, i,
+								      input);
+				pins[i].state[0] = DPLL_PIN_STATE_CONNECTED;
+				/* skip output state caps, phase range,
+				 * pin state AQ query and freq_supported -
+				 * not available for unmanaged DPLL
+				 */
+				continue;
+			}
 			ret = ice_cgu_get_output_pin_state_caps(hw, i, &caps);
 			if (ret)
 				return ret;
@@ -4058,10 +4159,13 @@ ice_dpll_init_info_direct_pins(struct ice_pf *pf,
 		pins[i].prop.freq_supported_num = freq_supp_num;
 		pins[i].pf = pf;
 	}
-	if (input)
+	if (input && !pf->dplls.unmanaged) {
 		ret = ice_dpll_init_ref_sync_inputs(pf);
+		if (ret)
+			return ret;
+	}
 
-	return ret;
+	return 0;
 }
 
 /**
@@ -4271,7 +4375,6 @@ static int ice_dpll_init_info_e825c(struct ice_pf *pf)
 
 	d->clock_id = ice_generate_clock_id(pf);
 	d->num_inputs = ICE_SYNCE_CLK_NUM;
-
 	d->inputs = kzalloc_objs(*d->inputs, d->num_inputs);
 	if (!d->inputs)
 		return -ENOMEM;
@@ -4296,6 +4399,82 @@ static int ice_dpll_init_info_e825c(struct ice_pf *pf)
 	return ret;
 }
 
+/**
+ * ice_dpll_lock_state_init_unmanaged - initialize lock state for unmanaged dpll
+ * @pf: board private structure
+ *
+ * Initialize the lock state for unmanaged DPLL by checking health status.
+ * For unmanaged DPLL, we rely on hardware autonomous operation.
+ *
+ * Return:
+ * * 0 - success
+ * * negative - init failure reason
+ */
+static int ice_dpll_lock_state_init_unmanaged(struct ice_pf *pf)
+{
+	u16 code = ICE_AQC_HEALTH_STATUS_INFO_LOSS_OF_LOCK;
+	struct ice_aqc_health_status_elem buff;
+	int ret;
+
+	ret = ice_get_last_health_status_code(&pf->hw, &buff, code);
+	if (ret)
+		return ret;
+	ice_dpll_lock_state_set_unmanaged(pf, &buff, false);
+
+	return ret;
+}
+
+/**
+ * ice_dpll_init_info_unmanaged - init dpll information for unmanaged dpll
+ * @pf: board private structure
+ *
+ * Acquire (from HW) and set basic dpll information (on pf->dplls struct).
+ * For unmanaged dpll mode.
+ *
+ * Return:
+ * * 0 - success
+ * * negative - init failure reason
+ */
+static int ice_dpll_init_info_unmanaged(struct ice_pf *pf)
+{
+	struct ice_dplls *d = &pf->dplls;
+	int ret;
+
+	d->clock_id = ice_generate_clock_id(pf);
+	d->num_inputs = ice_cgu_get_pin_num(&pf->hw, true);
+	d->num_outputs = ice_cgu_get_pin_num(&pf->hw, false);
+	ret = ice_dpll_lock_state_init_unmanaged(pf);
+	if (ret)
+		return ret;
+	d->inputs = kzalloc_objs(*d->inputs, d->num_inputs);
+	if (!d->inputs)
+		return -ENOMEM;
+
+	ret = ice_dpll_init_pins_info(pf, ICE_DPLL_PIN_TYPE_INPUT);
+	if (ret)
+		goto deinit_info;
+
+	d->outputs = kzalloc_objs(*d->outputs, d->num_outputs);
+	if (!d->outputs) {
+		ret = -ENOMEM;
+		goto deinit_info;
+	}
+
+	ret = ice_dpll_init_pins_info(pf, ICE_DPLL_PIN_TYPE_OUTPUT);
+	if (ret)
+		goto deinit_info;
+
+	d->pps.mode = DPLL_MODE_MANUAL;
+	dev_dbg(ice_pf_to_dev(pf), "%s - success, inputs:%u, outputs:%u\n",
+		__func__, d->num_inputs, d->num_outputs);
+	return 0;
+deinit_info:
+	dev_err(ice_pf_to_dev(pf), "%s - fail: d->inputs:%p, d->outputs:%p\n",
+		__func__, d->inputs, d->outputs);
+	ice_dpll_deinit_info(pf);
+	return ret;
+}
+
 /**
  * ice_dpll_init_info - prepare pf's dpll information structure
  * @pf: board private structure
@@ -4395,6 +4574,42 @@ static int ice_dpll_init_info(struct ice_pf *pf, bool cgu)
 	return ret;
 }
 
+/**
+ * ice_dpll_lock_state_set_unmanaged - determine lock state from health status
+ * @pf: board private structure
+ * @buff: health status buffer
+ * @notify: if true, notify dpll device
+ *
+ * Set unmanaged dpll lock state based on health status code and internal data.
+ * Context: Acquires and releases pf->dplls.lock (must release before notify
+ * if called).
+ */
+void ice_dpll_lock_state_set_unmanaged(struct ice_pf *pf,
+				       const struct ice_aqc_health_status_elem *buff,
+				       bool notify)
+{
+	u32 internal_data = le32_to_cpu(buff->internal_data1);
+	struct ice_dpll *d = &pf->dplls.pps;
+
+	if (!ice_pf_src_tmr_owned(pf))
+		return;
+
+	mutex_lock(&pf->dplls.lock);
+	if (buff->health_status_code == 0 ||
+	    internal_data == ICE_DPLL_HEALTH_STATUS_LOCKED)
+		d->dpll_state = DPLL_LOCK_STATUS_LOCKED;
+	else
+		d->dpll_state = DPLL_LOCK_STATUS_UNLOCKED;
+
+	if (d->prev_dpll_state == d->dpll_state)
+		notify = false;
+	else
+		d->prev_dpll_state = d->dpll_state;
+	mutex_unlock(&pf->dplls.lock);
+	if (notify && d->dpll)
+		dpll_device_change_ntf(d->dpll);
+}
+
 /**
  * ice_dpll_deinit - Disable the driver/HW support for dpll subsystem
  * the dpll device.
@@ -4414,15 +4629,55 @@ void ice_dpll_deinit(struct ice_pf *pf)
 	if (cgu)
 		ice_dpll_deinit_worker(pf);
 
-	ice_dpll_deinit_pins(pf, cgu);
+	ice_dpll_deinit_pins(pf, cgu || pf->dplls.unmanaged);
 	if (!IS_ERR_OR_NULL(pf->dplls.pps.dpll))
-		ice_dpll_deinit_dpll(pf, &pf->dplls.pps, cgu);
+		ice_dpll_deinit_dpll(pf, &pf->dplls.pps,
+				     cgu || pf->dplls.unmanaged);
 	if (!IS_ERR_OR_NULL(pf->dplls.eec.dpll))
 		ice_dpll_deinit_dpll(pf, &pf->dplls.eec, cgu);
 	ice_dpll_deinit_info(pf);
 	mutex_destroy(&pf->dplls.lock);
 }
 
+/**
+ * ice_dpll_init_unmanaged - initialize support for unmanaged dpll subsystem
+ * @pf: board private structure
+ *
+ * Set up the device dplls for unmanaged mode, register them and pins connected
+ * within Linux dpll subsystem. Allow userspace to obtain state of DPLL.
+ *
+ * Context: Initializes pf->dplls.lock mutex.
+ */
+static void ice_dpll_init_unmanaged(struct ice_pf *pf)
+{
+	struct ice_dplls *d = &pf->dplls;
+	int err;
+
+	if (!ice_pf_src_tmr_owned(pf))
+		return;
+	mutex_init(&d->lock);
+	err = ice_dpll_init_info_unmanaged(pf);
+	if (err)
+		goto err_exit;
+	err = ice_dpll_init_dpll(pf, &pf->dplls.pps, true, DPLL_TYPE_PPS);
+	if (err)
+		goto deinit_info;
+	err = ice_dpll_init_pins(pf, true);
+	if (err)
+		goto deinit_pps;
+	set_bit(ICE_FLAG_DPLL, pf->flags);
+
+	return;
+
+deinit_pps:
+	ice_dpll_deinit_dpll(pf, &pf->dplls.pps, true);
+deinit_info:
+	ice_dpll_deinit_info(pf);
+err_exit:
+	mutex_destroy(&d->lock);
+	dev_warn(ice_pf_to_dev(pf), "DPLLs init failure err:%d\n", err);
+}
+
 /**
  * ice_dpll_init_e825 - initialize support for dpll subsystem
  * @pf: board private structure
@@ -4510,8 +4765,23 @@ static void ice_dpll_init_e810(struct ice_pf *pf)
 	dev_warn(ice_pf_to_dev(pf), "DPLLs init failure err:%d\n", err);
 }
 
+/**
+ * ice_dpll_init - initialize support for dpll subsystem
+ * @pf: board private structure
+ *
+ * Set up the device dplls, register them and pins connected within Linux dpll
+ * subsystem. Allow userspace to obtain state of DPLL and handling of DPLL
+ * configuration requests.
+ *
+ * Context: Initializes pf->dplls.lock mutex.
+ */
 void ice_dpll_init(struct ice_pf *pf)
 {
+	if (pf->dplls.unmanaged) {
+		ice_dpll_init_unmanaged(pf);
+		return;
+	}
+
 	switch (pf->hw.mac_type) {
 	case ICE_MAC_GENERIC_3K_E825:
 		ice_dpll_init_e825(pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.h b/drivers/net/ethernet/intel/ice/ice_dpll.h
index 8678575359b9..bb70c4333789 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.h
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.h
@@ -23,6 +23,8 @@
 #define ICE_CGU_R11_SYNCE_S_BYP_CLK	GENMASK(6, 1)
 
 #define ICE_CGU_BYPASS_MUX_OFFSET_E825C	3
+#define ICE_DPLL_UNMANAGED_PIN_NUM	4
+#define ICE_DPLL_IN_ESYNC_ENABLED	ICE_AQC_GET_CGU_IN_CFG_FLG2_ESYNC_EN
 
 /**
  * enum ice_dpll_pin_sw - enumerate ice software pin indices:
@@ -162,14 +164,22 @@ struct ice_dplls {
 	s32 output_phase_adj_max;
 	u32 periodic_counter;
 	bool generic;
+	bool unmanaged;
 };
 
 #if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
 void ice_dpll_init(struct ice_pf *pf);
 void ice_dpll_deinit(struct ice_pf *pf);
+void ice_dpll_lock_state_set_unmanaged(struct ice_pf *pf,
+				       const struct ice_aqc_health_status_elem *buff,
+				       bool notify);
 #else
 static inline void ice_dpll_init(struct ice_pf *pf) { }
 static inline void ice_dpll_deinit(struct ice_pf *pf) { }
+static inline void
+ice_dpll_lock_state_set_unmanaged(struct ice_pf *pf,
+				  const struct ice_aqc_health_status_elem *buff,
+				  bool notify) { }
 #endif
 
 #endif
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index b9a421773e91..1748e6e1ed01 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4716,7 +4716,9 @@ void ice_deinit_dev(struct ice_pf *pf)
 
 static void ice_init_features(struct ice_pf *pf)
 {
+	u16 code = ICE_AQC_HEALTH_STATUS_INFO_LOSS_OF_LOCK;
 	struct device *dev = ice_pf_to_dev(pf);
+	int err;
 
 	if (ice_is_safe_mode(pf))
 		return;
@@ -4728,8 +4730,15 @@ static void ice_init_features(struct ice_pf *pf)
 	if (ice_is_feature_supported(pf, ICE_F_GNSS))
 		ice_gnss_init(pf);
 
+	/* Initialize unmanaged DPLL detection */
+	err = ice_is_health_status_code_supported(&pf->hw, code,
+						  &pf->dplls.unmanaged);
+	if (err || !ice_is_unmanaged_cgu_in_netlist(&pf->hw))
+		pf->dplls.unmanaged = false;
+
 	if (ice_is_feature_supported(pf, ICE_F_CGU) ||
-	    ice_is_feature_supported(pf, ICE_F_PHY_RCLK))
+	    ice_is_feature_supported(pf, ICE_F_PHY_RCLK) ||
+	    pf->dplls.unmanaged)
 		ice_dpll_init(pf);
 
 	/* Note: Flow director init failure is non-fatal to load */
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 24fb7a3e14d6..d8d20b1ef209 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -20,6 +20,10 @@ static struct dpll_pin_frequency ice_cgu_pin_freq_10_mhz[] = {
 	DPLL_PIN_FREQUENCY_10MHZ,
 };
 
+static struct dpll_pin_frequency ice_cgu_pin_freq_156_25mhz[] = {
+	DPLL_PIN_FREQUENCY_RANGE(156250000, 156250000),
+};
+
 static const struct ice_cgu_pin_desc ice_e810t_sfp_cgu_inputs[] = {
 	{ "CVL-SDP22",	  ZL_REF0P, DPLL_PIN_TYPE_INT_OSCILLATOR,
 		ARRAY_SIZE(ice_cgu_pin_freq_common), ice_cgu_pin_freq_common },
@@ -131,6 +135,18 @@ static const struct ice_cgu_pin_desc ice_e823_zl_cgu_outputs[] = {
 	{ "NONE",	   ZL_OUT5, 0, 0 },
 };
 
+static const struct ice_cgu_pin_desc ice_e830_unmanaged_inputs[] = {
+	{ "1588-TIME_SYNC", 0, DPLL_PIN_TYPE_EXT,
+	  ARRAY_SIZE(ice_cgu_pin_freq_10_mhz), ice_cgu_pin_freq_10_mhz },
+};
+
+static const struct ice_cgu_pin_desc ice_e830_unmanaged_outputs[] = {
+	{ "MAC-PHY-CLK", 0, DPLL_PIN_TYPE_SYNCE_ETH_PORT,
+	  ARRAY_SIZE(ice_cgu_pin_freq_156_25mhz), ice_cgu_pin_freq_156_25mhz },
+	{ "1588-TIME_REF", 1, DPLL_PIN_TYPE_INT_OSCILLATOR,
+	  ARRAY_SIZE(ice_cgu_pin_freq_1_hz), ice_cgu_pin_freq_1_hz},
+};
+
 /* Low level functions for interacting with and managing the device clock used
  * for the Precision Time Protocol.
  *
@@ -5923,6 +5939,24 @@ ice_cgu_get_pin_desc(struct ice_hw *hw, bool input, int *size)
 	case ICE_DEV_ID_E823C_SGMII:
 		t = ice_cgu_get_pin_desc_e823(hw, input, size);
 		break;
+	case ICE_DEV_ID_E830CC_BACKPLANE:
+	case ICE_DEV_ID_E830CC_QSFP56:
+	case ICE_DEV_ID_E830CC_SFP:
+	case ICE_DEV_ID_E830CC_SFP_DD:
+	case ICE_DEV_ID_E830C_BACKPLANE:
+	case ICE_DEV_ID_E830C_QSFP:
+	case ICE_DEV_ID_E830C_SFP:
+	case ICE_DEV_ID_E830_XXV_BACKPLANE:
+	case ICE_DEV_ID_E830_XXV_QSFP:
+	case ICE_DEV_ID_E830_XXV_SFP:
+		if (input) {
+			t = ice_e830_unmanaged_inputs;
+			*size = ARRAY_SIZE(ice_e830_unmanaged_inputs);
+		} else {
+			t = ice_e830_unmanaged_outputs;
+			*size = ARRAY_SIZE(ice_e830_unmanaged_outputs);
+		}
+		break;
 	default:
 		break;
 	}
@@ -5949,6 +5983,18 @@ int ice_cgu_get_num_pins(struct ice_hw *hw, bool input)
 	return 0;
 }
 
+/**
+ * ice_cgu_get_pin_num - get pin description array size
+ * @hw: pointer to the hw struct
+ * @input: if request is done against input or output pins
+ *
+ * Return: size of pin description array for given hw.
+ */
+int ice_cgu_get_pin_num(struct ice_hw *hw, bool input)
+{
+	return ice_cgu_get_num_pins(hw, input);
+}
+
 /**
  * ice_cgu_get_pin_type - get pin's type
  * @hw: pointer to the hw struct
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 1c9e77dbc770..98bca7cae88d 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -357,6 +357,7 @@ int ice_read_sma_ctrl(struct ice_hw *hw, u8 *data);
 int ice_write_sma_ctrl(struct ice_hw *hw, u8 data);
 int ice_ptp_read_sdp_ac(struct ice_hw *hw, __le16 *entries, uint *num_entries);
 int ice_cgu_get_num_pins(struct ice_hw *hw, bool input);
+int ice_cgu_get_pin_num(struct ice_hw *hw, bool input);
 enum dpll_pin_type ice_cgu_get_pin_type(struct ice_hw *hw, u8 pin, bool input);
 struct dpll_pin_frequency *
 ice_cgu_get_pin_freq_supp(struct ice_hw *hw, u8 pin, bool input, u8 *num);

base-commit: 1a5abe9a93c8f8f0c9d10fc313aff320e4487268
-- 
2.47.0

