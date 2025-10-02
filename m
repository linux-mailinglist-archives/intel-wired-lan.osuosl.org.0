Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C9EBB3D61
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Oct 2025 14:03:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5CDD261AD1;
	Thu,  2 Oct 2025 12:03:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iBRSM7XPZiws; Thu,  2 Oct 2025 12:03:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A36661ADB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759406588;
	bh=2CEiHET7zve6p7zmBOaT2oja/USGVHYVTyZc4GHP4P0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=HMR+dJhG3v6pdz6gbCCmxP2sBJn/k6jXS7S9ybPLESHKB+ZU0pcbMPCy6qJn69CiO
	 4NLX6Uxfv+/gJLfbifSarZHatvcsF2VbLB2JZ5DgeFBmXsf4vFx1ijdpE7/wfz9m/L
	 +nF3/dJQpUnJOsKmKycaIoKwIKNhaCretPimEXwtdTUuGSnjgA6O5nIAp5nsp2nxKg
	 RRLZ4h5XV4il/rxRhvqch+AmbC/R8RaXY+Kr8/sovSxoO7txo95a+WrhM1bYcqjTVG
	 yluKGAIbQzPdlEtYQUvsvKXKoY7jfcQaXMilV7h1xZ3dUmnfX/EAuwXW5NReKiAKXS
	 r+/AckW1Utw+Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A36661ADB;
	Thu,  2 Oct 2025 12:03:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id CECBF72
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Oct 2025 12:03:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B524461AD1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Oct 2025 12:03:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UBwQ6XhSNUJB for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Oct 2025 12:03:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CDA7961798
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CDA7961798
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CDA7961798
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Oct 2025 12:03:04 +0000 (UTC)
X-CSE-ConnectionGUID: rX9Nx/HmTKeap1MtkyufEg==
X-CSE-MsgGUID: 7j5aDe0tQcyqY3/dWjGB1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="72794383"
X-IronPort-AV: E=Sophos;i="6.18,309,1751266800"; d="scan'208";a="72794383"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 05:03:04 -0700
X-CSE-ConnectionGUID: VIElLJVGTrC1R3X82YHA0w==
X-CSE-MsgGUID: +HjNAPBQSlywIWbHmzCy0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,309,1751266800"; d="scan'208";a="216145213"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa001.jf.intel.com with ESMTP; 02 Oct 2025 05:03:01 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, horms@kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Thu,  2 Oct 2025 13:56:21 +0200
Message-Id: <20251002115621.2648997-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759406585; x=1790942585;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JpBQxgk6E9FNEhin1KF763+JfzMkGqV1FCQt/OUKW2U=;
 b=AXhhvalLXmc5iLbyyMYflYG/7hT4soK2+Kr/q8KQBKNzcq+ophGhaNZm
 lKZ012MheoVCd8qSfjYrcURUiIzT/GTxhDG4FIPbXe/9axv5wzcj8HQ8B
 l4z0eIpTCrT9Fo0/Hanq86xGZDIrEo3Fi8cp58q0JOOZyIxsnSaMfCh+Y
 IiVepuZpX/tOtEZ8gisPxqiZ/5oDJkjFFTd2o8bviDoeVOfMP+Tq73aBA
 GehGW6+JDVT/vA8rZi3pY/aD+yeI5nr9tULG46C609ASK+jvphyPxE4ai
 4ZXwyKvocMGQFlv2BQZSm0KMXEptgA2iafMA7+f99BEG0IisBXjORiwJV
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AXhhvalL
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: add support for
 unmanaged dpll on E830 NIC
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

Hardware variants of E830 may support an unmanaged DPLL where the
configuration is hardcoded within the hardware and firmware, meaning
users cannot modify settings. However, users are able to check the DPLL
lock status and obtain configuration information through the Linux DPLL
subsystem.

Availability of 'loss of lock' health status code determines if such
support is available, if true, register single dpll device with 1 input
and 1 output and provide hardcoded/read only properties of a pin and
dpll device. User is only allowed to check dpll device status and receive
notifications on dpll lock status change.

When present, the DPLL device locks to an external signal provided
through the PCIe/OCP pin. The expected input signal is 1PPS
(1 Pulse Per Second) embedded on a 10MHz reference clock.
The DPLL produces output:
- for MAC (Media Access Control) & PHY (Physical Layer) clocks,
- 1PPS for synchronization of onboard PHC (Precision Hardware Clock) timer.

Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
v2:
- add missing 'err = -ENOMEM;',
- remove __free(x),
- arange defined variables as last in the line,
- remove dead code,
- add check for netlist node presence,
- rebase.

This patch shall apply cleanly if both patches are present:
- "ice: add TS PLL control for E825 devices"
- "ice: add recovery clock and clock 1588 control for E825c"
---
 .../device_drivers/ethernet/intel/ice.rst     |  83 +++++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   5 +
 drivers/net/ethernet/intel/ice/ice_common.c   | 135 ++++++++
 drivers/net/ethernet/intel/ice/ice_common.h   |   8 +
 drivers/net/ethernet/intel/ice/ice_dpll.c     | 305 ++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_dpll.h     |  11 +
 drivers/net/ethernet/intel/ice/ice_main.c     |  14 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  46 +++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   1 +
 9 files changed, 586 insertions(+), 22 deletions(-)

diff --git a/Documentation/networking/device_drivers/ethernet/intel/ice.rst b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
index 0bca293cf9cb..c5cf9af75ca9 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/ice.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
@@ -941,6 +941,89 @@ To see input signal on those PTP pins, you need to configure DPLL properly.
 Output signal is only visible on DPLL and to send it to the board SMA/U.FL pins,
 DPLL output pins have to be manually configured.
 
+Unmanaged DPLL Support
+----------------------
+Hardware variants of E830 may support an unmanaged DPLL:
+
+- Intel® Ethernet Network Adapter E830-XXVDA8F for OCP 3.0,
+
+- Intel® Ethernet Network Adapter E830-XXVDA4F.
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
+    'mode': 'automatic',
+    'mode-supported': ['automatic'],
+    'module-name': 'ice',
+    'type': 'eec'}]
+
 GNSS module
 -----------
 Requires kernel compiled with CONFIG_GNSS=y or CONFIG_GNSS=m.
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 859e9c66f3e7..20551069ecce 100644
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
@@ -2675,6 +2679,7 @@ enum ice_adminq_opc {
 
 	/* System Diagnostic commands */
 	ice_aqc_opc_set_health_status_cfg		= 0xFF20,
+	ice_aqc_opc_get_supported_health_status_codes	= 0xFF21,
 	ice_aqc_opc_get_health_status			= 0xFF22,
 
 	/* FW Logging Commands */
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index fac5db0d5c3c..31a3d6b0cd25 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -3081,6 +3081,29 @@ bool ice_is_cgu_in_netlist(struct ice_hw *hw)
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
@@ -6343,6 +6366,118 @@ bool ice_is_fw_health_report_supported(struct ice_hw *hw)
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
+				   struct ice_aqc_health_status_elem *buff,
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
+	struct ice_aqc_health_status_elem *buff;
+	int ret;
+
+	buff = kcalloc(BUFF_SIZE, sizeof(*buff), GFP_KERNEL);
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
+	buff = kcalloc(BUFF_SIZE, sizeof(*buff), GFP_KERNEL);
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
index e700ac0dc347..cbecee66e2a7 100644
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
index 21e8069d2c0f..100b365d146a 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -21,6 +21,8 @@
 #define ICE_DPLL_TSPLL_INPUT_NUM_E825		1
 #define ICE_DPLL_TSPLL_OUTPUT_NUM_E825		1
 #define ICE_DPLL_TSPLL_IDX_E825			1
+#define ICE_DPLL_HEALTH_STATUS_LOCKED		1
+#define ICE_DPLL_HEALTH_STATUS_UNLOCKED		0
 
 #define ICE_DPLL_PIN_SW_INPUT_ABS(in_idx) \
 	(ICE_DPLL_SW_PIN_INPUT_BASE_SFP + (in_idx))
@@ -98,6 +100,10 @@ static struct dpll_pin_frequency ice_cgu_pin_freq_156_25mhz[] = {
 	DPLL_PIN_FREQUENCY_RANGE(156250000, 156250000),
 };
 
+static const struct dpll_pin_frequency ice_esync_range_unmanaged[] = {
+	DPLL_PIN_FREQUENCY_1PPS,
+};
+
 /**
  * ice_dpll_is_sw_pin - check if given pin shall be controlled by SW
  * @pf: private board structure
@@ -1185,9 +1191,11 @@ ice_dpll_pin_state_get(const struct dpll_pin *pin, void *pin_priv,
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
 	    pin_type == ICE_DPLL_PIN_TYPE_OUTPUT ||
 	    pin_type == ICE_DPLL_PIN_TYPE_INPUT_TSPLL_E825)
@@ -2341,9 +2349,12 @@ ice_dpll_input_esync_get(const struct dpll_pin *pin, void *pin_priv,
 		mutex_unlock(&pf->dplls.lock);
 		return -EOPNOTSUPP;
 	}
-	esync->range = ice_esync_range;
+	if (pf->dplls.unmanaged)
+		esync->range = ice_esync_range_unmanaged;
+	else
+		esync->range = ice_esync_range;
 	esync->range_num = ARRAY_SIZE(ice_esync_range);
-	if (p->flags[0] & ICE_AQC_GET_CGU_IN_CFG_FLG2_ESYNC_EN) {
+	if (p->flags[0] & ICE_DPLL_IN_ESYNC_ENABLED) {
 		esync->freq = DPLL_PIN_FREQUENCY_1_HZ;
 		esync->pulse = ICE_DPLL_PIN_ESYNC_PULSE_HIGH_PERCENT;
 	} else {
@@ -2873,6 +2884,21 @@ static const struct dpll_pin_ops ice_dpll_output_ops = {
 	.esync_get = ice_dpll_output_esync_get,
 };
 
+static const struct dpll_pin_ops ice_dpll_input_unmanaged_ops = {
+	.frequency_get = ice_dpll_input_frequency_get,
+	.direction_get = ice_dpll_input_direction,
+	.state_on_dpll_get = ice_dpll_input_state_get,
+#if defined(HAVE_DPLL_ESYNC)
+	.esync_get = ice_dpll_input_esync_get,
+#endif /* HAVE_DPLL_ESYNC */
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
@@ -3486,9 +3512,11 @@ ice_dpll_init_direct_pins(struct ice_pf *pf, bool cgu,
 		ret = ice_dpll_register_pins(first, pins, ops, count);
 		if (ret)
 			goto release_pins;
-		ret = ice_dpll_register_pins(second, pins, ops, count);
-		if (ret)
-			goto unregister_first;
+		if (second) {
+			ret = ice_dpll_register_pins(second, pins, ops, count);
+			if (ret)
+				goto unregister_first;
+		}
 	}
 	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825) {
 		ret = ice_dpll_register_pins(first, pins, ops, count);
@@ -3684,6 +3712,18 @@ static void ice_dpll_deinit_pins(struct ice_pf *pf, bool cgu)
 	struct ice_dpll *dp = &d->pps;
 	struct ice_dpll *dt = &d->tspll;
 
+	if (d->unmanaged) {
+		ice_dpll_unregister_pins(de->dpll, inputs,
+					 &ice_dpll_input_unmanaged_ops,
+					 num_inputs);
+		ice_dpll_unregister_pins(de->dpll, outputs,
+					 &ice_dpll_output_unmanaged_ops,
+					 num_outputs);
+		ice_dpll_release_pins(inputs, num_inputs);
+		ice_dpll_release_pins(outputs, num_outputs);
+		return;
+	}
+
 	ice_dpll_deinit_rclk_pin(pf);
 	if (cgu) {
 		ice_dpll_unregister_pins(dp->dpll, inputs, &ice_dpll_input_ops,
@@ -3751,8 +3791,13 @@ static int ice_dpll_init_pins(struct ice_pf *pf, bool cgu)
 		output_ops = NULL;
 		break;
 	default:
-		input_ops = &ice_dpll_input_ops;
-		output_ops = &ice_dpll_output_ops;
+		if (!pf->dplls.unmanaged) {
+			input_ops = &ice_dpll_input_ops;
+			output_ops = &ice_dpll_output_ops;
+		} else {
+			input_ops = &ice_dpll_input_unmanaged_ops;
+			output_ops = &ice_dpll_output_unmanaged_ops;
+		}
 		break;
 	}
 	ret = ice_dpll_init_direct_pins(pf, cgu, pf->dplls.inputs, 0,
@@ -3761,13 +3806,15 @@ static int ice_dpll_init_pins(struct ice_pf *pf, bool cgu)
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
@@ -3936,7 +3983,7 @@ ice_dpll_init_dpll(struct ice_pf *pf, struct ice_dpll *d, bool cgu,
 
 		if (type == DPLL_TYPE_PPS && ice_dpll_is_pps_phase_monitor(pf))
 			ops =  &ice_dpll_pom_ops;
-		if (cgu)
+		if (!pf->dplls.unmanaged)
 			ice_dpll_update_state(pf, d, true);
 		ret = dpll_device_register(d->dpll, type, ops, d);
 		if (ret) {
@@ -3963,6 +4010,33 @@ static void ice_dpll_deinit_worker(struct ice_pf *pf)
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
@@ -4211,6 +4285,15 @@ ice_dpll_init_info_direct_pins(struct ice_pf *pf,
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
+				continue;
+			}
 			ret = ice_aq_get_cgu_ref_prio(hw, de->dpll_idx, i,
 						      &de->input_prio[i]);
 			if (ret)
@@ -4224,6 +4307,12 @@ ice_dpll_init_info_direct_pins(struct ice_pf *pf,
 			if (ice_dpll_is_sw_pin(pf, i, true))
 				pins[i].hidden = true;
 		} else {
+			if (pf->dplls.unmanaged) {
+				pins[i].freq = ice_dpll_pin_freq_info(hw, i,
+								      input);
+				pins[i].state[0] = DPLL_PIN_STATE_CONNECTED;
+				continue;
+			}
 			ret = ice_cgu_get_output_pin_state_caps(hw, i, &caps);
 			if (ret)
 				return ret;
@@ -4241,10 +4330,13 @@ ice_dpll_init_info_direct_pins(struct ice_pf *pf,
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
@@ -4430,6 +4522,81 @@ static void ice_dpll_deinit_info(struct ice_pf *pf)
 	kfree(pf->dplls.pps.input_prio);
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
+	struct ice_dpll *de = &d->eec;
+	int ret = 0;
+
+	d->clock_id = ice_generate_clock_id(pf);
+	d->num_inputs = ice_cgu_get_pin_num(&pf->hw, true);
+	d->num_outputs = ice_cgu_get_pin_num(&pf->hw, false);
+	ice_dpll_lock_state_init_unmanaged(pf);
+	d->inputs = kcalloc(d->num_inputs, sizeof(*d->inputs), GFP_KERNEL);
+	if (!d->inputs)
+		return -ENOMEM;
+
+	ret = ice_dpll_init_pins_info(pf, ICE_DPLL_PIN_TYPE_INPUT);
+	if (ret)
+		goto deinit_info;
+
+	d->outputs = kcalloc(d->num_outputs, sizeof(*d->outputs), GFP_KERNEL);
+	if (!d->outputs) {
+		ret = -ENOMEM;
+		goto deinit_info;
+	}
+
+	ret = ice_dpll_init_pins_info(pf, ICE_DPLL_PIN_TYPE_OUTPUT);
+	if (ret)
+		goto deinit_info;
+
+	de->mode = DPLL_MODE_AUTOMATIC;
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
  * ice_dpll_init_info_e825c - prepare pf's dpll information structure for e825c
  * device
@@ -4542,6 +4709,7 @@ static int ice_dpll_init_info(struct ice_pf *pf, bool cgu)
 	dp->dpll_idx = abilities.pps_dpll_idx;
 	d->num_inputs = abilities.num_inputs;
 	d->num_outputs = abilities.num_outputs;
+
 	d->input_phase_adj_max = le32_to_cpu(abilities.max_in_phase_adj) &
 		ICE_AQC_GET_CGU_MAX_PHASE_ADJ;
 	d->output_phase_adj_max = le32_to_cpu(abilities.max_out_phase_adj) &
@@ -4610,6 +4778,42 @@ static int ice_dpll_init_info(struct ice_pf *pf, bool cgu)
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
+				       struct ice_aqc_health_status_elem *buff,
+				       bool notify)
+{
+	u32 internal_data = le32_to_cpu(buff->internal_data1);
+	struct ice_dpll *d = &pf->dplls.eec;
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
+	if (notify)
+		dpll_device_change_ntf(d->dpll);
+}
+
 /**
  * ice_dpll_deinit - Disable the driver/HW support for dpll subsystem
  * the dpll device.
@@ -4629,18 +4833,59 @@ void ice_dpll_deinit(struct ice_pf *pf)
 	if (pf->dplls.periodic_work)
 		ice_dpll_deinit_worker(pf);
 
-	ice_dpll_deinit_pins(pf, cgu);
-	if (pf->hw.mac_type != ICE_MAC_GENERIC_3K_E825)
-		ice_dpll_deinit_dpll(pf, &pf->dplls.pps, cgu);
-	else
+	ice_dpll_deinit_pins(pf, cgu || pf->dplls.unmanaged);
+	if (pf->hw.mac_type != ICE_MAC_GENERIC_3K_E825) {
+		if (!pf->dplls.unmanaged)
+			ice_dpll_deinit_dpll(pf, &pf->dplls.pps, cgu);
+	} else {
 		ice_dpll_deinit_dpll(pf, &pf->dplls.tspll, cgu);
-	ice_dpll_deinit_dpll(pf, &pf->dplls.eec, cgu);
+	}
+	ice_dpll_deinit_dpll(pf, &pf->dplls.eec, cgu || pf->dplls.unmanaged);
 	ice_dpll_deinit_info(pf);
 	mutex_destroy(&pf->dplls.lock);
 }
 
 /**
- * ice_dpll_init - initialize support for dpll subsystem
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
+	err = ice_dpll_init_info_unmanaged(pf);
+	if (err)
+		goto err_exit;
+	mutex_init(&d->lock);
+	err = ice_dpll_init_dpll(pf, &pf->dplls.eec, true, DPLL_TYPE_EEC);
+	if (err)
+		goto deinit_info;
+	err = ice_dpll_init_pins(pf, true);
+	if (err)
+		goto deinit_eec;
+	set_bit(ICE_FLAG_DPLL, pf->flags);
+
+	return;
+
+deinit_eec:
+	ice_dpll_deinit_dpll(pf, &pf->dplls.eec, true);
+deinit_info:
+	ice_dpll_deinit_info(pf);
+	mutex_destroy(&d->lock);
+err_exit:
+	dev_warn(ice_pf_to_dev(pf), "DPLLs init failure err:%d\n", err);
+}
+
+/**
+ * ice_dpll_init_managed - initialize support for managed dpll subsystem
  * @pf: board private structure
  *
  * Set up the device dplls, register them and pins connected within Linux dpll
@@ -4649,7 +4894,7 @@ void ice_dpll_deinit(struct ice_pf *pf)
  *
  * Context: Initializes pf->dplls.lock mutex.
  */
-void ice_dpll_init(struct ice_pf *pf)
+static void ice_dpll_init_managed(struct ice_pf *pf)
 {
 	bool cgu = ice_is_feature_supported(pf, ICE_F_CGU);
 	struct ice_dplls *d = &pf->dplls;
@@ -4703,3 +4948,21 @@ void ice_dpll_init(struct ice_pf *pf)
 	mutex_destroy(&d->lock);
 	dev_warn(ice_pf_to_dev(pf), "DPLLs init failure err:%d\n", err);
 }
+
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
+void ice_dpll_init(struct ice_pf *pf)
+{
+	if (!pf->dplls.unmanaged)
+		ice_dpll_init_managed(pf);
+	else
+		ice_dpll_init_unmanaged(pf);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.h b/drivers/net/ethernet/intel/ice/ice_dpll.h
index 57cfcfc66be1..c1523af2e0ec 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.h
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.h
@@ -8,6 +8,9 @@
 
 #define ICE_DPLL_RCLK_NUM_MAX	4
 
+#define ICE_DPLL_UNMANAGED_PIN_NUM	4
+#define ICE_DPLL_IN_ESYNC_ENABLED	ICE_AQC_GET_CGU_IN_CFG_FLG2_ESYNC_EN
+
 /**
  * enum ice_dpll_pin_sw - enumerate ice software pin indices:
  * @ICE_DPLL_PIN_SW_1_IDX: index of first SW pin
@@ -143,6 +146,7 @@ struct ice_dplls {
 	s32 output_phase_adj_max;
 	u32 periodic_counter;
 	bool generic;
+	bool unmanaged;
 	void (*periodic_work)(struct kthread_work *work);
 };
 
@@ -156,9 +160,16 @@ ice_dpll_pin_store_state(struct ice_dpll_pin *pin, int parent, bool state)
 #if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
 void ice_dpll_init(struct ice_pf *pf);
 void ice_dpll_deinit(struct ice_pf *pf);
+void ice_dpll_lock_state_set_unmanaged(struct ice_pf *pf,
+				       struct ice_aqc_health_status_elem *buff,
+				       bool notify);
 #else
 static inline void ice_dpll_init(struct ice_pf *pf) { }
 static inline void ice_dpll_deinit(struct ice_pf *pf) { }
+static inline void
+ice_dpll_lock_state_set_unmanaged(struct ice_pf *pf,
+				  struct ice_aqc_health_status_elem *buff,
+				  bool notify) { }
 #endif
 
 #endif
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0b6175ade40d..b16ede1f139d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4797,8 +4797,20 @@ static void ice_init_features(struct ice_pf *pf)
 	if (ice_is_feature_supported(pf, ICE_F_GNSS))
 		ice_gnss_init(pf);
 
+	/* Initialize unmanaged DPLL detection */
+	{
+		u16 code = ICE_AQC_HEALTH_STATUS_INFO_LOSS_OF_LOCK;
+		int err;
+
+		err = ice_is_health_status_code_supported(&pf->hw, code,
+							  &pf->dplls.unmanaged);
+		if (err || !ice_is_unmanaged_cgu_in_netlist(&pf->hw))
+			pf->dplls.unmanaged = false;
+	}
+
 	if (ice_is_feature_supported(pf, ICE_F_CGU) ||
-	    ice_is_feature_supported(pf, ICE_F_PHY_RCLK))
+	    ice_is_feature_supported(pf, ICE_F_PHY_RCLK) ||
+	    pf->dplls.unmanaged)
 		ice_dpll_init(pf);
 
 	/* Note: Flow director init failure is non-fatal to load */
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 10496e4e641c..7adf88d7ef0b 100644
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
@@ -136,6 +140,18 @@ static const struct ice_cgu_pin_desc ice_e825c_inputs[] = {
 	{ "CLK_IN_1",	 0, DPLL_PIN_TYPE_MUX, 0 },
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
@@ -5703,6 +5719,24 @@ ice_cgu_get_pin_desc(struct ice_hw *hw, bool input, int *size)
 	case ICE_DEV_ID_E825C_SGMII:
 		t = ice_get_pin_desc_e82x(hw, input, size);
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
@@ -5729,6 +5763,18 @@ int ice_cgu_get_num_pins(struct ice_hw *hw, bool input)
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
index 2c2fa1e73ee0..1d5d0f37f8db 100644
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
-- 
2.38.1

