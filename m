Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9796F59E597
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Aug 2022 17:06:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7459B4093A;
	Tue, 23 Aug 2022 15:05:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7459B4093A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661267159;
	bh=gfmaodHpKI3uDLvd/yo8HMq/xT2s0kERIJDgB3lWwls=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=XNGO3Q9IYObIJh3FW7Z15ARWmIyF2y42Jln87/Ek2pJ3DcnUlXYz3TTIPyTZcvtt9
	 Re1iSE6rqHO/k7YDSTjWFmRXBE+raIulyq1C7iRIxRhCzwfeXI/DDMFdaAHhfr4C93
	 VuLKsjK2yVlbdVl7thnjBJBpCnikyzdsDAQHFDKOhl6AV6HFnOmGpkyql9RNJI/d+V
	 yCqcd0YFSk7uJbF15gauzWxC1THtJGPAM7Q6BeKPCNX6Lc6J4hy58MIF/skxEULhRM
	 JEU/lDYICshhJ4mQMf1+GfvnuT/KMZmbkGFQnHtlWSCvvpsP8nj9etgxdE1CrMj6QB
	 hCAnZd+Jpfy2g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mm240wpinE7B; Tue, 23 Aug 2022 15:05:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE75B4092E;
	Tue, 23 Aug 2022 15:05:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DE75B4092E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 489EF1BF31E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 15:05:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2DE614092E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 15:05:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2DE614092E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EpXTDCfFamwy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Aug 2022 15:05:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 036D140922
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 036D140922
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 15:05:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="293712119"
X-IronPort-AV: E=Sophos;i="5.93,258,1654585200"; d="scan'208";a="293712119"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 08:05:37 -0700
X-IronPort-AV: E=Sophos;i="5.93,258,1654585200"; d="scan'208";a="638690197"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.7])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 08:05:34 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 23 Aug 2022 08:05:28 -0700
Message-Id: <20220823150528.3613617-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.37.1.394.gc50926e1f488
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661267151; x=1692803151;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5cHkLZtf5Gob6krHYGZz0q+jULm2GHiY3Lmc9u7mFmA=;
 b=k8qdZxXuOCOZwFxcEiDZeYsGLuNyhcr1fAJTN/3LxKeVZHclCf48ZmeL
 tgReS2ZWPtfwjfV/lMe5EKQu/2SEzul/Lwv9V5hwmYyeuUhJ3x9GgMxQD
 w8oD6Cq871U0FZvKMAE2rE/7UttampvMJIlZNvzzr+CoDuwxmSJuhAMHS
 6zXMuXHCRRp5XS9B8+V3IhG7JEkYnsDbTQPeHMxANnMQ1im5uJk5Ocnnd
 D7lL4GWPPMnETP2RQ065hK/FFe4LWmgWvrLALIgCUD8MiTyNJ3JgIz2Yg
 HynHPjB7oWsDJpbi6WISV0b39BWS9IxKS/GrHeE1WZhedM4DSj/8H25fh
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=k8qdZxXu
Subject: [Intel-wired-lan] [PATCH net-next] ice: add helper function to
 check FW API version
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

Several functions in ice_common.c check the firmware API version to see if
the current API version meets some minimum requirement.

Improve the readability of these checks by introducing
ice_is_fw_api_min_ver, a helper function to perform that check.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 63 +++++++++++----------
 1 file changed, 32 insertions(+), 31 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 96f51b7c9898..e7c81cf8011e 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -5298,6 +5298,29 @@ ice_aq_get_gpio(struct ice_hw *hw, u16 gpio_ctrl_handle, u8 pin_idx,
 	return 0;
 }
 
+/**
+ * ice_is_fw_api_min_ver
+ * @hw: pointer to the hardware structure
+ * @maj: major version
+ * @min: minor version
+ * @patch: patch version
+ *
+ * Checks if the firmware API is minimum version
+ */
+static bool ice_is_fw_api_min_ver(struct ice_hw *hw, u8 maj, u8 min, u8 patch)
+{
+	if (hw->api_maj_ver == maj) {
+		if (hw->api_min_ver > min)
+			return true;
+		if (hw->api_min_ver == min && hw->api_patch >= patch)
+			return true;
+	} else if (hw->api_maj_ver > maj) {
+		return true;
+	}
+
+	return false;
+}
+
 /**
  * ice_is_fw_min_ver
  * @hw: pointer to the hardware structure
@@ -5335,17 +5358,9 @@ static bool ice_is_fw_min_ver(struct ice_hw *hw, u8 branch, u8 maj, u8 min,
  */
 bool ice_fw_supports_link_override(struct ice_hw *hw)
 {
-	if (hw->api_maj_ver == ICE_FW_API_LINK_OVERRIDE_MAJ) {
-		if (hw->api_min_ver > ICE_FW_API_LINK_OVERRIDE_MIN)
-			return true;
-		if (hw->api_min_ver == ICE_FW_API_LINK_OVERRIDE_MIN &&
-		    hw->api_patch >= ICE_FW_API_LINK_OVERRIDE_PATCH)
-			return true;
-	} else if (hw->api_maj_ver > ICE_FW_API_LINK_OVERRIDE_MAJ) {
-		return true;
-	}
-
-	return false;
+	return ice_is_fw_api_min_ver(hw, ICE_FW_API_LINK_OVERRIDE_MAJ,
+				     ICE_FW_API_LINK_OVERRIDE_MIN,
+				     ICE_FW_API_LINK_OVERRIDE_PATCH);
 }
 
 /**
@@ -5478,16 +5493,9 @@ bool ice_fw_supports_lldp_fltr_ctrl(struct ice_hw *hw)
 	if (hw->mac_type != ICE_MAC_E810)
 		return false;
 
-	if (hw->api_maj_ver == ICE_FW_API_LLDP_FLTR_MAJ) {
-		if (hw->api_min_ver > ICE_FW_API_LLDP_FLTR_MIN)
-			return true;
-		if (hw->api_min_ver == ICE_FW_API_LLDP_FLTR_MIN &&
-		    hw->api_patch >= ICE_FW_API_LLDP_FLTR_PATCH)
-			return true;
-	} else if (hw->api_maj_ver > ICE_FW_API_LLDP_FLTR_MAJ) {
-		return true;
-	}
-	return false;
+	return ice_is_fw_api_min_ver(hw, ICE_FW_API_LLDP_FLTR_MAJ,
+				     ICE_FW_API_LLDP_FLTR_MIN,
+				     ICE_FW_API_LLDP_FLTR_PATCH);
 }
 
 /**
@@ -5537,16 +5545,9 @@ int ice_lldp_execute_pending_mib(struct ice_hw *hw)
  */
 bool ice_fw_supports_report_dflt_cfg(struct ice_hw *hw)
 {
-	if (hw->api_maj_ver == ICE_FW_API_REPORT_DFLT_CFG_MAJ) {
-		if (hw->api_min_ver > ICE_FW_API_REPORT_DFLT_CFG_MIN)
-			return true;
-		if (hw->api_min_ver == ICE_FW_API_REPORT_DFLT_CFG_MIN &&
-		    hw->api_patch >= ICE_FW_API_REPORT_DFLT_CFG_PATCH)
-			return true;
-	} else if (hw->api_maj_ver > ICE_FW_API_REPORT_DFLT_CFG_MAJ) {
-		return true;
-	}
-	return false;
+	return ice_is_fw_api_min_ver(hw, ICE_FW_API_REPORT_DFLT_CFG_MAJ,
+				     ICE_FW_API_REPORT_DFLT_CFG_MIN,
+				     ICE_FW_API_REPORT_DFLT_CFG_PATCH);
 }
 
 /**

base-commit: 90b3bee3a23249977852079b908270afc6ee03bb
prerequisite-patch-id: 0410da0e98c471eb87819eba41169befed1b9c0e
prerequisite-patch-id: 88c93486586ee62eb0d20b8c5f0ba725be63087d
-- 
2.37.1.394.gc50926e1f488

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
