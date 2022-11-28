Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4EAD63AE59
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Nov 2022 18:04:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 37C4F400DB;
	Mon, 28 Nov 2022 17:04:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 37C4F400DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669655064;
	bh=pP1fGXeD7rHWOaNiAcBeHGwbVaHbH7doFoXlbiDPXnE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2DZXdmR71Y9XoebabLto33VZrYwToukt45K8U2LawBP1uZUcWcR76X7IcAVRN+NEk
	 ++tbUCKPho4LvGA6NmceXN3S4dB/OCeHmQsDl8KNq2f9/5ubRAOQOIhdBO5i+tF2+l
	 U3xt1oguIXFdK9/Btvc/ysoPtipTcIW9xkSqhfpH0qGnd3BYzIqDzQKddlcsm78hXT
	 Gog675DK46MRP8YNWDTwCbhvAxcTB3x9vyn7702lpJKMfZnUT2jjiGo7Hy8Rx7xrUR
	 uzDp/Ojhr2F+CRD8rZjCRHNBSP0vuQZMP0hKvLVS8nmOyr0hO9ZyTpKmYPFIt4dL+c
	 GsjObC5VmxJVg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tv1Qnz8O58l0; Mon, 28 Nov 2022 17:04:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E60784026E;
	Mon, 28 Nov 2022 17:04:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E60784026E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7416B1BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 17:04:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5C679813B9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 17:04:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5C679813B9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id biq5lPyMPV-v for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Nov 2022 17:04:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 73E72813AC
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 73E72813AC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 17:04:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="379149447"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="379149447"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 09:03:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="676111220"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="676111220"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga001.jf.intel.com with ESMTP; 28 Nov 2022 09:03:50 -0800
Received: from kord.igk.intel.com (kord.igk.intel.com [10.123.220.9])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 2ASH3VNt017147; Mon, 28 Nov 2022 17:03:49 GMT
From: Mikael Barsehyan <mikael.barsehyan@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 28 Nov 2022 18:03:54 +0100
Message-Id: <20221128170354.2537171-3-mikael.barsehyan@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20221128170354.2537171-1-mikael.barsehyan@intel.com>
References: <20221128170354.2537171-1-mikael.barsehyan@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669655056; x=1701191056;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kfwn351DguIKX8hwbd408b3ebiWC8zBfC4XC+Gr+oNo=;
 b=erWaAii99csuggIu/UGM00k0kuWVR5K8Jw6gbzSCMOLHjdfqntuVVmjK
 t+fGCcOloLSS2gjjVWiCArg15Ssv7iRZ3qkfPjH3L2n7payFCwPEsPLx3
 pJNMg5O1L+LK63j7O5dHsD0ZzfKwvFWZjbMYGgebdQdK5o4Frr0HpGXf+
 WjtZsflWVVdl9WzafM1TaScR7AFh4OfI53ZtGFbYHss6g3vb9v3TR2JkN
 awILKRumr3GnVwdHdJmYfMqk/EyzEoF7dnFZpFDJc6jdKQlN0zGFuR6hm
 C+lTQZ4pARc8F1Z3V/mULphi8Tzlr0cm5Ln3hrTPXy1OyHbDoh0NN74uQ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=erWaAii9
Subject: [Intel-wired-lan] [PATCH net-next v1 2/2] ice: Implement
 ETHTOOL_FEC_ALL support
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>

In case of ETHTOOL_FEC_ALL we enable same flags in fw
as in case of ETHTOOL_FEC_AUTO. One additional flag that
we anable is ICE_AQC_PHY_FEC_DIS which allow to detect
No-Fec mode.

Introduce ice_fw_supports_fec_all function which
checks if this feature is supported by the firmware.

Co-developed-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_common.c   | 53 ++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_common.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 13 ++++-
 drivers/net/ethernet/intel/ice/ice_main.c     |  3 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |  9 +++-
 6 files changed, 76 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 54c87ced4fad..4e3934c4e9b7 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1141,6 +1141,7 @@ struct ice_aqc_get_phy_caps_data {
 #define ICE_AQC_PHY_FEC_25G_RS_528_REQ			BIT(2)
 #define ICE_AQC_PHY_FEC_25G_KR_REQ			BIT(3)
 #define ICE_AQC_PHY_FEC_25G_RS_544_REQ			BIT(4)
+#define ICE_AQC_PHY_FEC_DIS				BIT(5)
 #define ICE_AQC_PHY_FEC_25G_RS_CLAUSE91_EN		BIT(6)
 #define ICE_AQC_PHY_FEC_25G_KR_CLAUSE74_EN		BIT(7)
 #define ICE_AQC_PHY_FEC_MASK				ICE_M(0xdf, 0)
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 0e9584e50d82..f7db43ac41e8 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -3300,8 +3300,11 @@ enum ice_fc_mode ice_caps_to_fc_mode(u8 caps)
  */
 enum ice_fec_mode ice_caps_to_fec_mode(u8 caps, u8 fec_options)
 {
-	if (caps & ICE_AQC_PHY_EN_AUTO_FEC)
+	if (caps & ICE_AQC_PHY_EN_AUTO_FEC) {
+		if (fec_options & ICE_AQC_PHY_FEC_DIS)
+			return ICE_FEC_ALL;
 		return ICE_FEC_AUTO;
+	}
 
 	if (fec_options & (ICE_AQC_PHY_FEC_10G_KR_40G_KR4_EN |
 			   ICE_AQC_PHY_FEC_10G_KR_40G_KR4_REQ |
@@ -3560,6 +3563,11 @@ ice_cfg_phy_fec(struct ice_port_info *pi, struct ice_aqc_set_phy_cfg_data *cfg,
 		/* Clear all FEC option bits. */
 		cfg->link_fec_opt &= ~ICE_AQC_PHY_FEC_MASK;
 		break;
+	case ICE_FEC_ALL:
+		if (!ice_fw_supports_fec_all(hw))
+			return -EOPNOTSUPP;
+		cfg->link_fec_opt |= ICE_AQC_PHY_FEC_DIS;
+		fallthrough;
 	case ICE_FEC_AUTO:
 		/* AND auto FEC bit, and all caps bits. */
 		cfg->caps &= ICE_AQC_PHY_CAPS_MASK;
@@ -5359,6 +5367,35 @@ static bool ice_is_fw_api_min_ver(struct ice_hw *hw, u8 maj, u8 min, u8 patch)
 	return false;
 }
 
+/**
+ * ice_is_fw_min_ver
+ * @hw: pointer to the hardware structure
+ * @branch: branch version
+ * @maj: major version
+ * @min: minor version
+ * @patch: patch version
+ *
+ * Checks if the firmware is minimum version
+ */
+static bool ice_is_fw_min_ver(struct ice_hw *hw, u8 branch, u8 maj, u8 min,
+			      u8 patch)
+{
+	if (hw->fw_branch == branch) {
+		if (hw->fw_maj_ver > maj)
+			return true;
+		if (hw->fw_maj_ver == maj) {
+			if (hw->fw_min_ver > min)
+				return true;
+			if (hw->fw_min_ver == min && hw->fw_patch >= patch)
+				return true;
+		}
+	} else if (hw->fw_branch > branch) {
+		return true;
+	}
+
+	return false;
+}
+
 /**
  * ice_fw_supports_link_override
  * @hw: pointer to the hardware structure
@@ -5559,6 +5596,20 @@ bool ice_fw_supports_report_dflt_cfg(struct ice_hw *hw)
 				     ICE_FW_API_REPORT_DFLT_CFG_PATCH);
 }
 
+/**
+ * ice_fw_supports_fec_all
+ * @hw: pointer to the hardware structure
+ *
+ * Checks if the firmware supports FEC disable in Auto FEC mode
+ */
+bool ice_fw_supports_fec_all(struct ice_hw *hw)
+{
+	return ice_is_fw_min_ver(hw, ICE_FW_FEC_DIS_AUTO_BRANCH,
+				 ICE_FW_FEC_DIS_AUTO_MAJ,
+				 ICE_FW_FEC_DIS_AUTO_MIN,
+				 ICE_FW_FEC_DIS_AUTO_PATCH);
+}
+
 /* each of the indexes into the following array match the speed of a return
  * value from the list of AQ returned speeds like the range:
  * ICE_AQ_LINK_SPEED_10MB .. ICE_AQ_LINK_SPEED_100GB excluding
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 6a7898565072..ef313ea680c5 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -110,6 +110,7 @@ int
 ice_aq_set_phy_cfg(struct ice_hw *hw, struct ice_port_info *pi,
 		   struct ice_aqc_set_phy_cfg_data *cfg, struct ice_sq_cd *cd);
 bool ice_fw_supports_link_override(struct ice_hw *hw);
+bool ice_fw_supports_fec_all(struct ice_hw *hw);
 int
 ice_get_link_default_override(struct ice_link_default_override_tlv *ldo,
 			      struct ice_port_info *pi);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index ba4ccc5f7d60..d8f8e1d214c0 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1187,12 +1187,20 @@ ice_set_fecparam(struct net_device *netdev, struct ethtool_fecparam *fecparam)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
+	struct ice_pf *pf = vsi->back;
 	enum ice_fec_mode fec;
 
 	switch (fecparam->fec) {
 	case ETHTOOL_FEC_AUTO:
 		fec = ICE_FEC_AUTO;
 		break;
+	case ETHTOOL_FEC_ALL:
+		if (!ice_fw_supports_fec_all(&pf->hw)) {
+			dev_warn(ice_pf_to_dev(vsi->back), "FEC ALL is not supported by current firmware\n");
+			return -EOPNOTSUPP;
+		}
+		fec = ICE_FEC_ALL;
+		break;
 	case ETHTOOL_FEC_RS:
 		fec = ICE_FEC_RS;
 		break;
@@ -1257,8 +1265,11 @@ ice_get_fecparam(struct net_device *netdev, struct ethtool_fecparam *fecparam)
 		goto done;
 
 	/* Set supported/configured FEC modes based on PHY capability */
-	if (caps->caps & ICE_AQC_PHY_EN_AUTO_FEC)
+	if (caps->caps & ICE_AQC_PHY_EN_AUTO_FEC) {
+		if (caps->link_fec_options & ICE_AQC_PHY_FEC_DIS)
+			fecparam->fec |= ETHTOOL_FEC_ALL;
 		fecparam->fec |= ETHTOOL_FEC_AUTO;
+	}
 	if (caps->link_fec_options & ICE_AQC_PHY_FEC_10G_KR_40G_KR4_EN ||
 	    caps->link_fec_options & ICE_AQC_PHY_FEC_10G_KR_40G_KR4_REQ ||
 	    caps->link_fec_options & ICE_AQC_PHY_FEC_25G_KR_CLAUSE74_EN ||
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 69984fea7fce..2bf27b40d09f 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2180,7 +2180,8 @@ static int ice_configure_phy(struct ice_vsi *vsi)
 	ice_cfg_phy_fec(pi, cfg, phy->curr_user_fec_req);
 
 	/* Can't provide what was requested; use PHY capabilities */
-	if (cfg->link_fec_opt !=
+	if (phy->curr_user_fec_req != ICE_FEC_ALL &&
+	    cfg->link_fec_opt !=
 	    (cfg->link_fec_opt & pcaps->link_fec_options)) {
 		cfg->caps |= pcaps->caps & ICE_AQC_PHY_EN_AUTO_FEC;
 		cfg->link_fec_opt = pcaps->link_fec_options;
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index f77992cbfa41..b60ac101db31 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -107,7 +107,8 @@ enum ice_fec_mode {
 	ICE_FEC_NONE = 0,
 	ICE_FEC_RS,
 	ICE_FEC_BASER,
-	ICE_FEC_AUTO
+	ICE_FEC_AUTO,
+	ICE_FEC_ALL
 };
 
 struct ice_phy_cache_mode_data {
@@ -1155,4 +1156,10 @@ struct ice_aq_get_set_rss_lut_params {
 #define ICE_FW_API_REPORT_DFLT_CFG_MIN		7
 #define ICE_FW_API_REPORT_DFLT_CFG_PATCH	3
 
+/* FW version for FEC disable in Auto FEC mode */
+#define ICE_FW_FEC_DIS_AUTO_BRANCH		1
+#define ICE_FW_FEC_DIS_AUTO_MAJ			7
+#define ICE_FW_FEC_DIS_AUTO_MIN			0
+#define ICE_FW_FEC_DIS_AUTO_PATCH		5
+
 #endif /* _ICE_TYPE_H_ */
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
