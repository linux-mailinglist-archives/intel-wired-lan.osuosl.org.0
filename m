Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 318A575233E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jul 2023 15:17:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C98BF61399;
	Thu, 13 Jul 2023 13:17:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C98BF61399
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689254264;
	bh=ztpyacUSZdIllDGuyfYeZAWdLPftcyPLLYuSXxZrquc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=1cpfsqrf8uepXB6Qze3RTo1KZOF0o43UNQO4gDz0DGf/YDtZ6salftty/fcB+pnWp
	 nMevoqMuX9lqu+39/E9CQmNxxJeD5ub9oqpYCqYip06tlQOvNrt+yKSI3+Q7Msshsu
	 YBjEFB229vBy6rW0uj1PAXGiU7aVd7P8SuURwE6zVuQqHu4H0v702ru1zJUirq+KU9
	 y+5OCEq1NKQDppGQ6TvoaMKmSiTBGmfcyRu57tLeYmjUTTLivJ2GZ/7YaTNgSmJBC/
	 8GAJOv2eRPPl2HYBRHgm94GiWsMgURTJ+RKLdx7uWY72H9J1qzoz6hvub6PAV14moj
	 qxmNXxHLF3kCw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SqNi5dRpGDbs; Thu, 13 Jul 2023 13:17:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6447661373;
	Thu, 13 Jul 2023 13:17:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6447661373
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BFFD51BF3E1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 13:17:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A5595400D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 13:17:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A5595400D7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pBF6Wsy_DH9D for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jul 2023 13:17:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB686403D6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BB686403D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 13:17:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="344776804"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="344776804"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 06:17:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="751629420"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="751629420"
Received: from s240.igk.intel.com (HELO DevelopmentVM.nql.local)
 ([10.102.18.202])
 by orsmga008.jf.intel.com with ESMTP; 13 Jul 2023 06:17:33 -0700
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 13 Jul 2023 15:21:23 +0200
Message-Id: <20230713132124.1514647-1-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689254256; x=1720790256;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OGOY+2zKs9Y+wF1VB8fShToMm3R0Fj5oSJ/JFjf7jKo=;
 b=PVg4wLZgQgd2oRI5Mv1lSmTB/7Hm8CJYc5JvopQfo7HQCfozmkf0RXQE
 imP2C5goD4E0a9RFMTKqvgNMIwxdD4M2Qi3CkkV3jKzIHTQEGxdjopA5c
 PRGHY+T+bQecYWja7bnsLbG5/8c/a60QnRtoMI+1D+KMdeFOhcpRxlI+f
 CdK/Oah9EtYuWs9CUikg8TBVgSP52Qc50BSs2r/gqtBpXBHpzLLim3aUE
 Mnk7x67eXGzkd9Wgs/V4yudKDXRW/kyrxUDogtl+2aFJNGPmuzrLsQdIi
 wPDPJUEhdwC7egSXE+dqv0/ZLqahIlajWrsLWadlzSMZPcAdcYRFn6Jo5
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PVg4wLZg
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ice: Add get C827 PHY
 index function
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Karol Kolacinski <karol.kolacinski@intel.com>

Add a function to find the C827 PHY node handle and return C827 PHY
index for the E810 products.

In order to bring this function to full functionality, some
helpers for this were written by Michal Michalik.

Co-developed-by: Michal Michalik <michal.michalik@intel.com>
Signed-off-by: Michal Michalik <michal.michalik@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
---
v2: Fixed warnings when building under certain configurations
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_common.c   | 62 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h   |  5 ++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  3 +
 4 files changed, 71 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 5062c445a27e..8b1d2c4c46e9 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1404,6 +1404,7 @@ struct ice_aqc_get_link_topo {
 	struct ice_aqc_link_topo_addr addr;
 	u8 node_part_num;
 #define ICE_AQC_GET_LINK_TOPO_NODE_NR_PCA9575	0x21
+#define ICE_AQC_GET_LINK_TOPO_NODE_NR_C827	0x31
 	u8 rsvd[9];
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index e5e2461ef117..ecf22e12176d 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -5,6 +5,7 @@
 #include "ice_sched.h"
 #include "ice_adminq_cmd.h"
 #include "ice_flow.h"
+#include "ice_ptp_hw.h"
 
 #define ICE_PF_RESET_WAIT_COUNT	300
 
@@ -2449,6 +2450,67 @@ ice_parse_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
 	ice_recalc_port_limited_caps(hw, &dev_p->common_cap);
 }
 
+/**
+ * ice_aq_get_netlist_node
+ * @hw: pointer to the hw struct
+ * @cmd: get_link_topo AQ structure
+ * @node_part_number: output node part number if node found
+ * @node_handle: output node handle parameter if node found
+ */
+int
+ice_aq_get_netlist_node(struct ice_hw *hw, struct ice_aqc_get_link_topo *cmd,
+			u8 *node_part_number, u16 *node_handle)
+{
+	struct ice_aq_desc desc;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_link_topo);
+	desc.params.get_link_topo = *cmd;
+
+	if (ice_aq_send_cmd(hw, &desc, NULL, 0, NULL))
+		return -EIO;
+
+	if (node_handle)
+		*node_handle = le16_to_cpu(desc.params.get_link_topo.addr.handle);
+	if (node_part_number)
+		*node_part_number = desc.params.get_link_topo.node_part_num;
+
+	return 0;
+}
+
+/**
+ * ice_is_pf_c827 - check if pf contains c827 phy
+ * @hw: pointer to the hw struct
+ */
+bool ice_is_pf_c827(struct ice_hw *hw)
+{
+	struct ice_aqc_get_link_topo cmd = {};
+	u8 node_part_number;
+	u16 node_handle;
+	int status;
+
+	if (hw->mac_type != ICE_MAC_E810)
+		return false;
+
+	if (hw->device_id != ICE_DEV_ID_E810C_QSFP)
+		return true;
+
+	cmd.addr.topo_params.node_type_ctx =
+		FIELD_PREP(ICE_AQC_LINK_TOPO_NODE_TYPE_M, ICE_AQC_LINK_TOPO_NODE_TYPE_PHY) |
+		FIELD_PREP(ICE_AQC_LINK_TOPO_NODE_CTX_M, ICE_AQC_LINK_TOPO_NODE_CTX_PORT);
+	cmd.addr.topo_params.index = 0;
+
+	status = ice_aq_get_netlist_node(hw, &cmd, &node_part_number,
+					 &node_handle);
+
+	if (status || node_part_number != ICE_AQC_GET_LINK_TOPO_NODE_NR_C827)
+		return false;
+
+	if (node_handle == E810C_QSFP_C827_0_HANDLE || node_handle == E810C_QSFP_C827_1_HANDLE)
+		return true;
+
+	return false;
+}
+
 /**
  * ice_aq_list_caps - query function/device capabilities
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index db95a1d2d878..b819867b9bb4 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -16,6 +16,7 @@
 #define ICE_SQ_SEND_DELAY_TIME_MS	10
 #define ICE_SQ_SEND_MAX_EXECUTE		3
 
+bool ice_is_pf_c827(struct ice_hw *hw);
 int ice_init_hw(struct ice_hw *hw);
 void ice_deinit_hw(struct ice_hw *hw);
 int ice_check_reset(struct ice_hw *hw);
@@ -94,6 +95,10 @@ ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
 		    struct ice_aqc_get_phy_caps_data *caps,
 		    struct ice_sq_cd *cd);
 int
+ice_aq_get_netlist_node(struct ice_hw *hw, struct ice_aqc_get_link_topo *cmd,
+			u8 *node_part_number, u16 *node_handle);
+bool ice_is_pf_c827(struct ice_hw *hw);
+int
 ice_aq_list_caps(struct ice_hw *hw, void *buf, u16 buf_size, u32 *cap_count,
 		 enum ice_adminq_opc opc, struct ice_sq_cd *cd);
 int
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index ec773d9bc094..ba4ab96073e0 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -112,6 +112,9 @@ struct ice_cgu_pll_params_e822 {
 extern const struct
 ice_cgu_pll_params_e822 e822_cgu_params[NUM_ICE_TIME_REF_FREQ];
 
+#define E810C_QSFP_C827_0_HANDLE 2
+#define E810C_QSFP_C827_1_HANDLE 3
+
 /* Table of constants related to possible TIME_REF sources */
 extern const struct ice_time_ref_info_e822 e822_time_ref[NUM_ICE_TIME_REF_FREQ];
 
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
