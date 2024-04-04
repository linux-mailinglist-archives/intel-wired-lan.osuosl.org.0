Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A0A898439
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 11:36:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3961D41BAD;
	Thu,  4 Apr 2024 09:36:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VI8cK0QYleYV; Thu,  4 Apr 2024 09:36:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 51E6141B8D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712223385;
	bh=H5udNiakvu49bnL5ndUsa8abyyl+Ka0X8VJeIfc5ijc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QmoKXEAOANn7eCTeXVr/qtW9Vxfati0XMQFaaWs3zz2nMlbbOkWE0PO/DHQF6kcxE
	 HMfj0NyVdM747Q/bLVF6wFY9Jb288XyBPmqcF0j11rS+lEI1paVI3uF4S4ADpmZEsc
	 /zhnuLj6qYkPTYqDNMuRkwuR4pYHjQOcQakkwXEPQeHUNFCughR+RQi6kEVAM8oStD
	 oKWL8c2kWQuq0I6qNP2++Ukkog8FqPamsoNf5c2fkjR1DZNSIe+OaC8TnWY3nQkR1f
	 NsRh8R67ayme/M74MMXTqGAhVgNhGe9bJMSl2106wqIik6g2BNoXUCzURtzxEZT6n+
	 JOgRh3d+Df57A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 51E6141B8D;
	Thu,  4 Apr 2024 09:36:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E31411BF3D5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 09:36:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DB9A382F4F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 09:36:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id koc6AIu3oZmt for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Apr 2024 09:36:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F3A3C82F0F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3A3C82F0F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F3A3C82F0F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 09:36:21 +0000 (UTC)
X-CSE-ConnectionGUID: dx1jkZKfTKGSTLmfW72cjw==
X-CSE-MsgGUID: SVOq4Q4CQDWEHUXqcvIUpA==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="29966611"
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="29966611"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 02:23:09 -0700
X-CSE-ConnectionGUID: D4bW7w3LS4+snqaj1WB2xw==
X-CSE-MsgGUID: YbgHc2W2SCmkuz+XwNiI6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="56180791"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orviesa001.jf.intel.com with ESMTP; 04 Apr 2024 02:23:06 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  4 Apr 2024 11:09:58 +0200
Message-ID: <20240404092238.26975-24-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240404092238.26975-14-karol.kolacinski@intel.com>
References: <20240404092238.26975-14-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712223382; x=1743759382;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IVBDs4L7Qd+JaeX6DTI07/w8MFx+zEAa5k58OsyrFq4=;
 b=db15I7m5vqbgdK8fe1ItNLDIj1U0W8uDiHYhe+WMn7CU2vCkKCHjJzSO
 DadaRFwfsezk7RnoRO6JwH4/YS8kc1C8gicsv7AH+KmZYitv/w/4qwEdj
 O0BIEn5uEri7OFxLhf7KISyoSuBIMWHz4vUmTjgoRWAB6wspn8yOiIm/g
 zvckEjzdsBV5aAjR3f8dvgPEJyFE08mIG/Bi5y6dJP1zHqwioEXmP0ysL
 GPjbGOLc4VnhFNP/RYNKyCnC7PLawlnWnzPg2VjfOz8/xIBEsuWuGxIQE
 pWi0AycyfWc0Rsjd7slEQwcVmzD2ab3X5K7aJuwBF9ClbjCE26R8XsBge
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=db15I7m5
Subject: [Intel-wired-lan] [PATCH v5 iwl-next 10/12] ice: Add NAC Topology
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
index 540c0bdca936..8eaf030a29c9 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -121,6 +121,7 @@ struct ice_aqc_list_caps_elem {
 #define ICE_AQC_CAPS_PCIE_RESET_AVOIDANCE		0x0076
 #define ICE_AQC_CAPS_POST_UPDATE_RESET_RESTRICT		0x0077
 #define ICE_AQC_CAPS_NVM_MGMT				0x0080
+#define ICE_AQC_CAPS_NAC_TOPOLOGY			0x0087
 #define ICE_AQC_CAPS_FW_LAG_SUPPORT			0x0092
 #define ICE_AQC_BIT_ROCEV2_LAG				0x01
 #define ICE_AQC_BIT_SRIOV_LAG				0x02
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 8ae257f8a191..d53e6794eace 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2583,6 +2583,34 @@ ice_parse_sensor_reading_cap(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
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
@@ -2634,6 +2662,9 @@ ice_parse_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
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
index 2baf305a0c95..948c4bdbb206 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -372,6 +372,15 @@ struct ice_ts_dev_info {
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
@@ -393,6 +402,7 @@ struct ice_hw_dev_caps {
 	u32 num_flow_director_fltr;	/* Number of FD filters available */
 	struct ice_ts_dev_info ts_dev_info;
 	u32 num_funcs;
+	struct ice_nac_topology nac_topo;
 	/* bitmap of supported sensors
 	 * bit 0 - internal temperature sensor
 	 * bit 31:1 - Reserved
-- 
2.43.0

