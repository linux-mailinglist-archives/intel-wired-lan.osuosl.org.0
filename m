Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DED0077EE05
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 02:01:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 68E7041781;
	Thu, 17 Aug 2023 00:01:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 68E7041781
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692230476;
	bh=/BYGAUHxaSu03/MeofP8rTcttlESwKRDblmf0VVbELk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DoKA1vPFB6UFHFhQ+6tJ119/2jrC8vGsevelFz+5TIbl+CmhjMJOdx1fqfVb3xSZW
	 V3kSLFTlsx9dA5cFnf/OmoaD2+/IuJSW8ii9fLSEXrqoip9BBanvOqEp01I+mohM61
	 EJn7+QZlgrgDzMKXDDjPeDOIBv5xJDzanxxWHKsJQNCcHz8UiZXCodhAh6MnCGUKq7
	 hwvRzvdEvK6QGxTJWRtL1bVVm1tkPmNuXinA4uu34WQPfIHdDwwsB2X7C/n9y5xT7z
	 XV+OYnGqHSgpvu/JeOJejVWLoL2+D0DoUseKSAjIE8MnA41abmAx8JRmBhH4Qwy0b6
	 ggNwBi9E6Kd5g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F6HyieAyah5L; Thu, 17 Aug 2023 00:01:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0965841774;
	Thu, 17 Aug 2023 00:01:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0965841774
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9956C1BF2AF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 00:01:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7DFEF613FA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 00:01:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7DFEF613FA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z7yenhUXdWWp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 00:01:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 41F2561318
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 00:01:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 41F2561318
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="403649714"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="403649714"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 17:01:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="799805052"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="799805052"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 17:01:04 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 16 Aug 2023 17:00:58 -0700
Message-ID: <20230817000058.2433236-6-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
In-Reply-To: <20230817000058.2433236-1-jacob.e.keller@intel.com>
References: <20230817000058.2433236-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692230466; x=1723766466;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V2sNjmrp+He9YWj8f/vUToQezdeAYTRygQQvBAQq+GI=;
 b=JqpxczhjKMwkSWG5rIA3sEZGoWkNP1bgwrGm+kyO2Z2r2cAjNxHuTsQw
 HZ5imJpPPP5Mhw8/jKy5Ha79QMVXHgc4cRRl87lH/3eMz2D49YPHQpyeO
 H+ZJLrCNFtGepQ3l6/73BZ7ZzDRBRT+RDDA0DoAGLt8DuOEjKVl2FYZVh
 55zKdXQx3y9XYz24+8Hvod+0hGtZ98BWsyy5pISe7qPlsaF/cF0ccn2Vx
 xbQDUFs2WQCD+OiO2T9jlkO/i8KJWUhMNnM8Som6NtADUnJbjZ8FqK8Dz
 xePpGn01yz0tnrIkMTU7mI8toD6W2xzV11SD9ZsyzYLcqmOqjqPGgqLTm
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Jqpxczhj
Subject: [Intel-wired-lan] [PATCH iwl-next v2 5/5] ice: check netlist before
 enabling ICE_F_GNSS
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Similar to the change made for ICE_F_SMA_CTRL, check the netlist before
enabling support for ICE_F_GNSS. This ensures that the driver only enables
the GNSS feature on devices which actually have the feature enabled in the
firmware device configuration.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Changes since v1:
* rename ice_is_gps_present_e810t() to ice_is_gps_in_netlist_e810t() and
  move it into ice_common.c
* call ice_is_gps_present_e810t() from ice_gnss_is_gps_present()

 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |  2 ++
 drivers/net/ethernet/intel/ice/ice_common.c     | 15 +++++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h     |  1 +
 drivers/net/ethernet/intel/ice/ice_gnss.c       |  3 +++
 drivers/net/ethernet/intel/ice/ice_lib.c        |  6 ++----
 5 files changed, 23 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 82c4daf0a825..2f0d4bffe210 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1368,6 +1368,7 @@ struct ice_aqc_link_topo_params {
 #define ICE_AQC_LINK_TOPO_NODE_TYPE_MEZZ	7
 #define ICE_AQC_LINK_TOPO_NODE_TYPE_ID_EEPROM	8
 #define ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_MUX	10
+#define ICE_AQC_LINK_TOPO_NODE_TYPE_GPS		11
 #define ICE_AQC_LINK_TOPO_NODE_CTX_S		4
 #define ICE_AQC_LINK_TOPO_NODE_CTX_M		\
 				(0xF << ICE_AQC_LINK_TOPO_NODE_CTX_S)
@@ -1407,6 +1408,7 @@ struct ice_aqc_get_link_topo {
 #define ICE_AQC_GET_LINK_TOPO_NODE_NR_PCA9575			0x21
 #define ICE_AQC_GET_LINK_TOPO_NODE_NR_C827			0x31
 #define ICE_ACQ_GET_LINK_TOPO_NODE_NR_GEN_CLK_MUX		0x47
+#define ICE_ACQ_GET_LINK_TOPO_NODE_NR_GEN_GPS			0x48
 	u8 rsvd[9];
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 3d1b87151dc6..cbfe9ee2ffdf 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2565,6 +2565,21 @@ bool ice_is_clock_mux_in_netlist_e810t(struct ice_hw *hw)
 	return true;
 }
 
+/**
+ * ice_is_gps_in_netlist_e810t
+ * @hw: pointer to the hw struct
+ *
+ * Check if the GPS generic device is present in the netlist
+ */
+bool ice_is_gps_in_netlist_e810t(struct ice_hw *hw)
+{
+	if (ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_GPS,
+				  ICE_ACQ_GET_LINK_TOPO_NODE_NR_GEN_GPS, NULL))
+		return false;
+
+	return true;
+}
+
 /**
  * ice_aq_list_caps - query function/device capabilities
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index a7a55c536150..14296c64b445 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -94,6 +94,7 @@ ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
 		    struct ice_sq_cd *cd);
 bool ice_is_pf_c827(struct ice_hw *hw);
 bool ice_is_clock_mux_in_netlist_e810t(struct ice_hw *hw);
+bool ice_is_gps_in_netlist_e810t(struct ice_hw *hw);
 int
 ice_aq_list_caps(struct ice_hw *hw, void *buf, u16 buf_size, u32 *cap_count,
 		 enum ice_adminq_opc opc, struct ice_sq_cd *cd);
diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index 75c9de675f20..e29f8067dd25 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -389,6 +389,9 @@ bool ice_gnss_is_gps_present(struct ice_hw *hw)
 	if (!hw->func_caps.ts_func_info.src_tmr_owned)
 		return false;
 
+	if (!ice_is_gps_in_netlist_e810t(hw))
+		return false;
+
 #if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
 	if (ice_is_e810t(hw)) {
 		int err;
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index fe4bf5967d32..2fec5dffe3bf 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3991,10 +3991,8 @@ void ice_init_feature_support(struct ice_pf *pf)
 			break;
 		if (ice_is_clock_mux_in_netlist_e810t(&pf->hw))
 			ice_set_feature_support(pf, ICE_F_SMA_CTRL);
-		if (ice_is_e810t(&pf->hw)) {
-			if (ice_gnss_is_gps_present(&pf->hw))
-				ice_set_feature_support(pf, ICE_F_GNSS);
-		}
+		if (ice_gnss_is_gps_present(&pf->hw))
+			ice_set_feature_support(pf, ICE_F_GNSS);
 		break;
 	default:
 		break;
-- 
2.41.0.1.g9857a21e0017.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
