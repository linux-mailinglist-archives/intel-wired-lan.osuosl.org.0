Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 590CD89BDF3
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Apr 2024 13:18:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 60BB5407D9;
	Mon,  8 Apr 2024 11:18:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vixs2hVLezfy; Mon,  8 Apr 2024 11:18:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 58AFE402BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712575127;
	bh=ME3bEomIPzUXKw2WqICZ2/ab4rdggYnxOV5IOvqPE/Q=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wF5YcSjRT2o6UPjrJ962UO/77l9VM6Ma56lkBqT188PTF6gSiPKfP6avLr1A0OFcV
	 ORWQ5UBug1eQwketZSeobEOrCxOFkgTMhkvst9xZ4OUnaXs8CwKTjBdwg7I9/9yn8o
	 PiKysO8N68bsqjXMntDaD6vGbIgA//tdVRWt/sYAlmS624moJ46XzpOJu8M7RSSDt0
	 A5moMIOG8S0bEEnrNrG2mw9fN/ug6RfO2CgKepj5NmInEV1S/7bI/wzDHnZwBXPF8/
	 k/SQQ0zItV9E/HfaJjDk11jA4BhBIGfjV+7uwmCn660pEzgfiEqRRch9SMCz9eBQSv
	 J64XHqjE09BIA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 58AFE402BD;
	Mon,  8 Apr 2024 11:18:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 34F031BF340
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 11:18:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2F20680B8D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 11:18:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q8oT6c1oAAnJ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Apr 2024 11:18:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 41420801CC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 41420801CC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 41420801CC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 11:18:42 +0000 (UTC)
X-CSE-ConnectionGUID: H468RMD8S7O1Nef1Pac67A==
X-CSE-MsgGUID: esyUqMUEQeG8UbTaNSxtPw==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="18988614"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="18988614"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 04:18:42 -0700
X-CSE-ConnectionGUID: /FY4a8vKRpKQTlwleQ/FCA==
X-CSE-MsgGUID: VO+UvHPdTLWhviLUN4pBLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="19904949"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmviesa009.fm.intel.com with ESMTP; 08 Apr 2024 04:18:39 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  8 Apr 2024 13:07:31 +0200
Message-ID: <20240408111814.404583-24-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240408111814.404583-14-karol.kolacinski@intel.com>
References: <20240408111814.404583-14-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712575122; x=1744111122;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6A24ukeqBsdpqBMasg5hlRfcXNB/pTlkiSMKZH5/E0s=;
 b=CwFPrOF1W0vOCS0gXJkAZ0cWGvAmSz9z+2dT/KU7s1wtpmyqSgwLagPv
 gwSYZ711EJFZBnpWZ63M/R9kRdmFavhhE2ZFuVoWz3hK6p/HY/xfGWEeK
 eevbGCsDGJSZ1hUDB1E2rkF3EOIiehl4Zp/xV78PtfdDlYH97ati6kivU
 2VegDDgLwszR4gIy7KU2FuR/1hKc3aMwsX+TemMiychtAS+Y6ZBfl2WK6
 4hdS0KGq/QKhPyFFZp23N7Iz4LO92CkjWOPxNJ+5lpBAeB8EuR7JPc7q/
 8gfbhq4IfArhjgdrkNc3nELEWxqqddvUgIPgPw56hG0qkSSk+hGElXFfs
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CwFPrOF1
Subject: [Intel-wired-lan] [PATCH v7 iwl-next 10/12] ice: Add NAC Topology
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
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_common.c   | 31 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_type.h     | 10 ++++++
 3 files changed, 42 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index e76c388b9905..621a2ca7093e 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -122,6 +122,7 @@ struct ice_aqc_list_caps_elem {
 #define ICE_AQC_CAPS_POST_UPDATE_RESET_RESTRICT		0x0077
 #define ICE_AQC_CAPS_NVM_MGMT				0x0080
 #define ICE_AQC_CAPS_TX_SCHED_TOPO_COMP_MODE		0x0085
+#define ICE_AQC_CAPS_NAC_TOPOLOGY			0x0087
 #define ICE_AQC_CAPS_FW_LAG_SUPPORT			0x0092
 #define ICE_AQC_BIT_ROCEV2_LAG				0x01
 #define ICE_AQC_BIT_SRIOV_LAG				0x02
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index c41eed5643d6..7d9dcd047a22 100644
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
index 39d8fc08d651..841860784e3c 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -374,6 +374,15 @@ struct ice_ts_dev_info {
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
@@ -395,6 +404,7 @@ struct ice_hw_dev_caps {
 	u32 num_flow_director_fltr;	/* Number of FD filters available */
 	struct ice_ts_dev_info ts_dev_info;
 	u32 num_funcs;
+	struct ice_nac_topology nac_topo;
 	/* bitmap of supported sensors
 	 * bit 0 - internal temperature sensor
 	 * bit 31:1 - Reserved
-- 
2.43.0

