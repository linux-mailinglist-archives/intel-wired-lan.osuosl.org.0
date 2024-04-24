Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB388B0B28
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Apr 2024 15:38:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 709A5416A0;
	Wed, 24 Apr 2024 13:38:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FTH17eHGvMV2; Wed, 24 Apr 2024 13:38:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A3ECA415BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713965888;
	bh=9QQPDgxtdSF16g/cJtmnoQl19ZIgBW0OlgPD90jSLRs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=f9XteEGN1VBWg4gwHHmqh5PxX+2vWJAe7FaiUX73p/T9im3n/Dpz7zzfhtiRURbxa
	 pOk8xIC7rJ9dAI/OSgU8o67Y0d3hdfRm9VGthjz04qNj9nxj6aoq9lcM6Nzg4B/GY4
	 lzGCbhOriobuOY/+D4wRhKVQsHE3xCnzLMZY/jtPoRZ0EKI/V33NcIOshT8tQhVKy5
	 h4JrKdwo7QYLpFQdZUuPEuF2wsp0ke3EfHKc1e3u5zjR3NykMDrHNDTlvTwX113bBX
	 EWaCZRY/Kg2vGhj0Vr3x/SFFp5EtwkYrpzzssCLAZPG/A068P6CPZtmyCZ98g1EqHS
	 5D95Akedc20Ww==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A3ECA415BD;
	Wed, 24 Apr 2024 13:38:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 048AB1BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 13:38:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E3E2C60A65
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 13:38:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wv03eh2g1JqN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Apr 2024 13:38:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0A065605CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A065605CE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0A065605CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 13:38:03 +0000 (UTC)
X-CSE-ConnectionGUID: x8XEu5cKRGajtL9SPKDekg==
X-CSE-MsgGUID: pfvrY6gFQwOxCjGFB+zIGg==
X-IronPort-AV: E=McAfee;i="6600,9927,11054"; a="27110501"
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; d="scan'208";a="27110501"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 06:38:03 -0700
X-CSE-ConnectionGUID: 48H5X69yS/K6MpN6oEiyXQ==
X-CSE-MsgGUID: Eucl3E22TPyUPL1s1UUzNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; d="scan'208";a="24601268"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orviesa010.jf.intel.com with ESMTP; 24 Apr 2024 06:37:58 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 Apr 2024 15:30:18 +0200
Message-ID: <20240424133542.113933-25-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240424133542.113933-16-karol.kolacinski@intel.com>
References: <20240424133542.113933-16-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713965884; x=1745501884;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WHGksUCw2van3vja+RvHfGk3dTU+4lfcucDK0sX8ZEA=;
 b=jeWxm0troLVihVPeBF2SRKlS1Hd7jS8mPMx1/8YmcNAhda8J2mQ1Spag
 obaYiVWM9JouY6FftAbdXxC76gVGE4LIGAQOWxlYYA4i1hOp6nwc61fRB
 FfhTXLLSne3GWSHxomj+x4lxKAwLJOdgMitKDgoKsaknd0Qk1ToQJln94
 sGLtvh3/1I9Napd+E1fTgL/7NNny+DNoFEzIa1g6NYGrkZpERIcPd3W65
 2gltxbcxYMrCRCjzA2IkF+1hTEb58JY46URGPQWr0+YuERXkpErPqn0AW
 +/uNUTPIoDs5lK4gZKmHQ3lFQXc8Jt9KwIgbIEj1+Ft2EwNwE8CmjDNJF
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jeWxm0tr
Subject: [Intel-wired-lan] [PATCH v10 iwl-next 10/12] ice: Add NAC Topology
 device capability parser
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
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 Pawel Kaminski <pawel.kaminski@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Prathisna Padmasanan <prathisna.padmasanan@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Grzegorz Nitka <grzegorz.nitka@intel.com>

Add new device capability ICE_AQC_CAPS_NAC_TOPOLOGY which allows to
determine the mode of operation (1 or 2 NAC).
Define a new structure to store data from new capability and
corresponding parser code.

Co-developed-by: Prathisna Padmasanan <prathisna.padmasanan@intel.com>
Signed-off-by: Prathisna Padmasanan <prathisna.padmasanan@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Reviewed-by: Pawel Kaminski <pawel.kaminski@intel.com>
Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  2 ++
 drivers/net/ethernet/intel/ice/ice_common.c   | 31 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_type.h     | 10 ++++++
 3 files changed, 43 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 540c0bdca936..4c125e06310a 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -121,6 +121,8 @@ struct ice_aqc_list_caps_elem {
 #define ICE_AQC_CAPS_PCIE_RESET_AVOIDANCE		0x0076
 #define ICE_AQC_CAPS_POST_UPDATE_RESET_RESTRICT		0x0077
 #define ICE_AQC_CAPS_NVM_MGMT				0x0080
+#define ICE_AQC_CAPS_TX_SCHED_TOPO_COMP_MODE		0x0085
+#define ICE_AQC_CAPS_NAC_TOPOLOGY			0x0087
 #define ICE_AQC_CAPS_FW_LAG_SUPPORT			0x0092
 #define ICE_AQC_BIT_ROCEV2_LAG				0x01
 #define ICE_AQC_BIT_SRIOV_LAG				0x02
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index b225f4a8bc21..3e4db33f9d40 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2588,6 +2588,34 @@ ice_parse_sensor_reading_cap(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
 		  dev_p->supported_sensors);
 }
 
+/**
+ * ice_parse_nac_topo_dev_caps - Parse ICE_AQC_CAPS_NAC_TOPOLOGY cap
+ * @hw: pointer to the HW struct
+ * @dev_p: pointer to device capabilities structure
+ * @cap: capability element to parse
+ *
+ * Parse ICE_AQC_CAPS_NAC_TOPOLOGY for device capabilities.
+ */
+static void ice_parse_nac_topo_dev_caps(struct ice_hw *hw,
+					struct ice_hw_dev_caps *dev_p,
+					struct ice_aqc_list_caps_elem *cap)
+{
+	dev_p->nac_topo.mode = le32_to_cpu(cap->number);
+	dev_p->nac_topo.id = le32_to_cpu(cap->phys_id) & ICE_NAC_TOPO_ID_M;
+
+	dev_info(ice_hw_to_dev(hw),
+		 "PF is configured in %s mode with IP instance ID %d\n",
+		 (dev_p->nac_topo.mode & ICE_NAC_TOPO_PRIMARY_M) ?
+		 "primary" : "secondary", dev_p->nac_topo.id);
+
+	ice_debug(hw, ICE_DBG_INIT, "dev caps: nac topology is_primary = %d\n",
+		  !!(dev_p->nac_topo.mode & ICE_NAC_TOPO_PRIMARY_M));
+	ice_debug(hw, ICE_DBG_INIT, "dev caps: nac topology is_dual = %d\n",
+		  !!(dev_p->nac_topo.mode & ICE_NAC_TOPO_DUAL_M));
+	ice_debug(hw, ICE_DBG_INIT, "dev caps: nac topology id = %d\n",
+		  dev_p->nac_topo.id);
+}
+
 /**
  * ice_parse_dev_caps - Parse device capabilities
  * @hw: pointer to the HW struct
@@ -2639,6 +2667,9 @@ ice_parse_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
 		case ICE_AQC_CAPS_SENSOR_READING:
 			ice_parse_sensor_reading_cap(hw, dev_p, &cap_resp[i]);
 			break;
+		case ICE_AQC_CAPS_NAC_TOPOLOGY:
+			ice_parse_nac_topo_dev_caps(hw, dev_p, &cap_resp[i]);
+			break;
 		default:
 			/* Don't list common capabilities as unknown */
 			if (!found)
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 62ff21b3ee22..f4eb0d03ee4f 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -373,6 +373,15 @@ struct ice_ts_dev_info {
 	u8 ts_ll_int_read;
 };
 
+#define ICE_NAC_TOPO_PRIMARY_M	BIT(0)
+#define ICE_NAC_TOPO_DUAL_M	BIT(1)
+#define ICE_NAC_TOPO_ID_M	GENMASK(0xF, 0)
+
+struct ice_nac_topology {
+	u32 mode;
+	u8 id;
+};
+
 /* Function specific capabilities */
 struct ice_hw_func_caps {
 	struct ice_hw_common_caps common_cap;
@@ -394,6 +403,7 @@ struct ice_hw_dev_caps {
 	u32 num_flow_director_fltr;	/* Number of FD filters available */
 	struct ice_ts_dev_info ts_dev_info;
 	u32 num_funcs;
+	struct ice_nac_topology nac_topo;
 	/* bitmap of supported sensors
 	 * bit 0 - internal temperature sensor
 	 * bit 31:1 - Reserved
-- 
2.43.0

