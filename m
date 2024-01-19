Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAFE7833019
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Jan 2024 22:12:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E1CDE409F8;
	Fri, 19 Jan 2024 21:12:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E1CDE409F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705698740;
	bh=5TuQrJzVX/8BfHWeiUyLYceiIpZ/AI7jkMyUWwrfPF4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=o2e7UFNUuwBYjEBkFihUuXV2oxzpdfnDjrU4L/R4akDhREtLzM8/ejOwwPwsj/Ey+
	 MYSI2A9qUB4E8/d5RjItw2Q+JQbJ9WGMtw8bxX5pmx1sMQIR5Lwd8yhfD0qeMuYcIK
	 6UCkgvnFdKiTQefk3Zb0G7bJUL7EzSyCHIcAhZWvrgvEg3CkJIwEQe+g5aoF9ESHaN
	 wiwyvU5+4+kYuIasTVdcTU/NskC4sigpw5PmIdvH8iC/t5t/QR9MEFEnRd9czOnpk8
	 0qivXP7AJkw1GMpn+eEhIOIPsZE26b/QLicPB9X5BAA3mIpH+07IABt6J9RluaAzO7
	 Gdr4N/Ssqn1wg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kMKV_6YHDy6T; Fri, 19 Jan 2024 21:12:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ADFD640180;
	Fri, 19 Jan 2024 21:12:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ADFD640180
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4B6351BF38E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jan 2024 21:12:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1EEEB401B1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jan 2024 21:12:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1EEEB401B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I1RiyvyjHsTI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Jan 2024 21:12:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D86D040129
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jan 2024 21:12:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D86D040129
X-IronPort-AV: E=McAfee;i="6600,9927,10957"; a="7529336"
X-IronPort-AV: E=Sophos;i="6.05,206,1701158400"; 
   d="scan'208";a="7529336"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 13:12:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10957"; a="761230792"
X-IronPort-AV: E=Sophos;i="6.05,206,1701158400"; d="scan'208";a="761230792"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 13:12:10 -0800
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 19 Jan 2024 13:15:17 -0800
Message-ID: <20240119211517.127142-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705698732; x=1737234732;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VTxLlaqQIdEdyLHXFM3nehEeMzb6CcJh8bBSgGh6Zyw=;
 b=e8bzxpQ3+X7yjTkpeFQyryJy1bWHDhIxvZpLFgP4ba0rH/HJ29sYmVKZ
 Bbz+y0AC97A++EQtWPm/7XQvmOr6rGcPeeNGq75hqrN61r28wozV41nvZ
 G+0EgelT8LdQ4SJpfCAF/8+MGuaL0NmvNPXyVH7Gs6eWSm/g9nsZ9y6RI
 dA8pGy6Ge7KFCQcMdLdg5WBNeH2N/WjnSPzECOrRAOLBBPIhhmjfLT/oI
 lu7kkju4HzBUSFO/nrBhNE+GaBfMtvNuztmUSgc3owee4uNagyzXNYeDl
 iGzVOBhUls0RSv49983beJfKSOCbQhWk21iBFeX6sdXWobvZBaPF2/OeJ
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e8bzxpQ3
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Add check for lport
 extraction to LAG init
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
Cc: netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

To fully support initializing the LAG support code, a DDP package that
extracts the logical port from the metadata is required.  If such a
package is not present, there could be difficulties in supporting some
bond types.

Add a check into the initialization flow that will bypass the new paths
if any of the support pieces are missing.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Fixes: df006dd4b1dc ("ice: Add initial support framework for LAG")
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lag.c | 25 ++++++++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_lag.h |  3 +++
 2 files changed, 26 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 2a25323105e5..467372d541d2 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -151,6 +151,27 @@ ice_lag_find_hw_by_lport(struct ice_lag *lag, u8 lport)
 	return NULL;
 }
 
+/**
+ * ice_pkg_has_lport_extract - check if lport extraction supported
+ * @hw: HW struct
+ */
+static bool ice_pkg_has_lport_extract(struct ice_hw *hw)
+{
+	int i;
+
+	for (i = 0; i < hw->blk[ICE_BLK_SW].es.count; i++) {
+		u16 offset;
+		u8 fv_prot;
+
+		ice_find_prot_off(hw, ICE_BLK_SW, ICE_SW_DEFAULT_PROFILE, i,
+				  &fv_prot, &offset);
+		if (fv_prot == ICE_FV_PROT_MDID &&
+		    offset == ICE_LP_EXT_BUF_OFFSET)
+			return true;
+	}
+	return false;
+}
+
 /**
  * ice_lag_find_primary - returns pointer to primary interfaces lag struct
  * @lag: local interfaces lag struct
@@ -1206,7 +1227,7 @@ static void ice_lag_del_prune_list(struct ice_lag *lag, struct ice_pf *event_pf)
 }
 
 /**
- * ice_lag_init_feature_support_flag - Check for NVM support for LAG
+ * ice_lag_init_feature_support_flag - Check for package and NVM support for LAG
  * @pf: PF struct
  */
 static void ice_lag_init_feature_support_flag(struct ice_pf *pf)
@@ -1219,7 +1240,7 @@ static void ice_lag_init_feature_support_flag(struct ice_pf *pf)
 	else
 		ice_clear_feature_support(pf, ICE_F_ROCE_LAG);
 
-	if (caps->sriov_lag)
+	if (caps->sriov_lag && ice_pkg_has_lport_extract(&pf->hw))
 		ice_set_feature_support(pf, ICE_F_SRIOV_LAG);
 	else
 		ice_clear_feature_support(pf, ICE_F_SRIOV_LAG);
diff --git a/drivers/net/ethernet/intel/ice/ice_lag.h b/drivers/net/ethernet/intel/ice/ice_lag.h
index ede833dfa658..183b38792ef2 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.h
+++ b/drivers/net/ethernet/intel/ice/ice_lag.h
@@ -17,6 +17,9 @@ enum ice_lag_role {
 #define ICE_LAG_INVALID_PORT 0xFF
 
 #define ICE_LAG_RESET_RETRIES		5
+#define ICE_SW_DEFAULT_PROFILE		0
+#define ICE_FV_PROT_MDID		255
+#define ICE_LP_EXT_BUF_OFFSET		32
 
 struct ice_pf;
 struct ice_vf;
-- 
2.43.0

