Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 622468A8939
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Apr 2024 18:45:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE52D40872;
	Wed, 17 Apr 2024 16:45:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LRFb89DLkDXB; Wed, 17 Apr 2024 16:45:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 08C944087C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713372331;
	bh=V3VPvUI0sdDRxi40WJZUQYSRUZlNR3uYRBDrZrW4VpU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AXOkY2mC9kIDCNIZYxgmMdHBpUm9OA5fg2etfnvxL4xLFH7swZbKGaEDIwp1ys3C7
	 QP4xE+kSRSCl9FIXwRiChIguzSMayhXyUexueoIMGYYHXe2j+hhyQn/7T3Nz95r6MB
	 xpPnzWMXpgP0W8WGojY6YUiZbJ8UPF5edyUU3RePjBjRL86Vqj99zP+KcZjX6AZgL9
	 SKERtHGej6aNlKfCsvaZVMizUJEpV5DqFJJa7wi7ICkE7BNag2ZbDmPLPCApyxNSTf
	 Ya0lW45LtBbub7E5+UxY7aGyvNHHe+gz4BTpK2H9ybTnsgIkO5WO6jCPG3rFwbCfb8
	 kc3EYZ/yEtjnA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 08C944087C;
	Wed, 17 Apr 2024 16:45:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B6CC71BF29F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 16:45:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A34A8403B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 16:45:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5nEULeH6rUm0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Apr 2024 16:45:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C7FEC40114
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C7FEC40114
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C7FEC40114
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 16:45:22 +0000 (UTC)
X-CSE-ConnectionGUID: +W0EYGMSQimfCgMjlkuyMw==
X-CSE-MsgGUID: EPAD0zHbS8Ke6x+IqGNB+w==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="12660746"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="12660746"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 09:45:23 -0700
X-CSE-ConnectionGUID: EoNUfsInRTS+V0m3IqKM1A==
X-CSE-MsgGUID: iCQY8LvkQNKoKbknTmB0Yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="27470726"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orviesa004.jf.intel.com with ESMTP; 17 Apr 2024 09:45:20 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 17 Apr 2024 18:39:16 +0200
Message-ID: <20240417164410.850175-26-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240417164410.850175-14-karol.kolacinski@intel.com>
References: <20240417164410.850175-14-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713372323; x=1744908323;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EDyYj5VheP0vi3JxirikLeBUZtKqHex88WbSl3TFM80=;
 b=R2A/sM4mYaNZDSwcDWl+AYQ2hzOx92WA8tdzxqVtSZT0cQj42s0MRqm5
 JEbCNZ/4wAntkbOykQrkKHbZKEx+uu0kqSDjXZWLpg442GiVkziB2zj7Y
 /XwYPsoaPaDO62Ll4067fK9HDngXjN2y/oSH9xYTp+U66w26kCfcDolQg
 8RlhKtnofSrPDUyxlfFgcgf6T3XmvrDVw7KT1wa6qdGZULYxn7GgQbhm/
 HTWqwmzaSlgfFXfZKBJp399uV9mbL4JDJjTA/qxtYOEQknngs+GY9RUwo
 ZhH0VVKjzvIbbuTAU4F+weI+7UXulG9ECCBOLt50odMNn3TykgErQlUgn
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R2A/sM4m
Subject: [Intel-wired-lan] [PATCH v9 iwl-next 12/12] ice: Adjust PTP init
 for 2x50G E825C devices
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
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Grzegorz Nitka <grzegorz.nitka@intel.com>

From FW/HW perspective, 2 port topology in E825C devices requires
merging of 2 port mapping internally and breakout mapping externally.
As a consequence, it requires different port numbering from PTP code
perspective.
For that topology, pf_id can not be used to index PTP ports. Even if
the 2nd port is identified as port with pf_id = 1, all PHY operations
need to be performed as it was port 2. Thus, special mapping is needed
for the 2nd port.
This change adds detection of 2x50G topology and applies 'custom'
mapping on the 2nd port.

Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
V4 -> V5: - reworded commit mesage
          - renamed GLGEN_SWITCH_MODE_CONFIG_SELECT_25X4_ON_SINGLE_QUAD_M to
            GLGEN_SWITCH_MODE_CONFIG_25X4_QUAD_M

 .../net/ethernet/intel/ice/ice_hw_autogen.h   |  4 ++++
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  5 +++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 22 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_type.h     |  9 ++++++++
 4 files changed, 40 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index cfac1d432c15..91cbae1eec89 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -157,6 +157,8 @@
 #define GLGEN_RTRIG_CORER_M			BIT(0)
 #define GLGEN_RTRIG_GLOBR_M			BIT(1)
 #define GLGEN_STAT				0x000B612C
+#define GLGEN_SWITCH_MODE_CONFIG		0x000B81E0
+#define GLGEN_SWITCH_MODE_CONFIG_25X4_QUAD_M	BIT(2)
 #define GLGEN_VFLRSTAT(_i)			(0x00093A04 + ((_i) * 4))
 #define PFGEN_CTRL				0x00091000
 #define PFGEN_CTRL_PFSWR_M			BIT(0)
@@ -177,6 +179,8 @@
 #define GLINT_CTL_ITR_GRAN_50_M			ICE_M(0xF, 24)
 #define GLINT_CTL_ITR_GRAN_25_S			28
 #define GLINT_CTL_ITR_GRAN_25_M			ICE_M(0xF, 28)
+#define GLGEN_MAC_LINK_TOPO			0x000B81DC
+#define GLGEN_MAC_LINK_TOPO_LINK_TOPO_M		GENMASK(1, 0)
 #define GLINT_DYN_CTL(_INT)			(0x00160000 + ((_INT) * 4))
 #define GLINT_DYN_CTL_INTENA_M			BIT(0)
 #define GLINT_DYN_CTL_CLEARPBA_M		BIT(1)
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 95c41a5a164b..402436b72322 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1472,6 +1472,8 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
 		return;
 
 	ptp_port = &pf->ptp.port;
+	if (ice_is_e825c(hw) && hw->ptp.is_2x50g_muxed_topo)
+		port *= 2;
 	if (WARN_ON_ONCE(ptp_port->port_num != port))
 		return;
 
@@ -3332,6 +3334,9 @@ void ice_ptp_init(struct ice_pf *pf)
 	}
 
 	ptp->port.port_num = hw->pf_id;
+	if (ice_is_e825c(hw) && hw->ptp.is_2x50g_muxed_topo)
+		ptp->port.port_num = hw->pf_id * 2;
+
 	err = ice_ptp_init_port(pf, &ptp->port);
 	if (err)
 		goto err;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index d2b9d275bd32..9baf226bc989 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -2660,6 +2660,26 @@ static int ice_get_phy_tx_tstamp_ready_eth56g(struct ice_hw *hw, u8 port,
 	return 0;
 }
 
+/**
+ * ice_is_muxed_topo - detect breakout 2x50G topology for E825C
+ * @hw: pointer to the HW struct
+ *
+ * Return: true if it's 2x50 breakout topology, false otherwise
+ */
+static bool ice_is_muxed_topo(struct ice_hw *hw)
+{
+	u8 link_topo;
+	bool mux;
+	u32 val;
+
+	val = rd32(hw, GLGEN_SWITCH_MODE_CONFIG);
+	mux = FIELD_GET(GLGEN_SWITCH_MODE_CONFIG_25X4_QUAD_M, val);
+	val = rd32(hw, GLGEN_MAC_LINK_TOPO);
+	link_topo = FIELD_GET(GLGEN_MAC_LINK_TOPO_LINK_TOPO_M, val);
+
+	return (mux && link_topo == ICE_LINK_TOPO_UP_TO_2_LINKS);
+}
+
 /**
  * ice_ptp_init_phy_e825c - initialize PHY parameters
  * @hw: pointer to the HW struct
@@ -2692,6 +2712,8 @@ static void ice_ptp_init_phy_e825c(struct ice_hw *hw)
 			return;
 		}
 	}
+
+	ptp->is_2x50g_muxed_topo = ice_is_muxed_topo(hw);
 }
 
 /* E822 family functions
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index a3557284036a..89a5aed7ee20 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -852,6 +852,14 @@ enum ice_phy_model {
 	ICE_PHY_ETH56G,
 };
 
+/* Global Link Topology */
+enum ice_global_link_topo {
+	ICE_LINK_TOPO_UP_TO_2_LINKS,
+	ICE_LINK_TOPO_UP_TO_4_LINKS,
+	ICE_LINK_TOPO_UP_TO_8_LINKS,
+	ICE_LINK_TOPO_RESERVED,
+};
+
 struct ice_ptp_hw {
 	enum ice_phy_model phy_model;
 	union ice_phy_params phy;
@@ -859,6 +867,7 @@ struct ice_ptp_hw {
 	u8 ports_per_phy;
 	bool primary_nac;
 	struct ice_hw *primary_hw;
+	bool is_2x50g_muxed_topo;
 };
 
 /* Port hardware description */
-- 
2.43.0

