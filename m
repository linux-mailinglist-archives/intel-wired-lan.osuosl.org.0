Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE818A2EFD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Apr 2024 15:11:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E039A60833;
	Fri, 12 Apr 2024 13:11:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JoaWKCirMa6Q; Fri, 12 Apr 2024 13:11:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 163256077E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712927491;
	bh=Rb8vxXoLOo6eb2i09YgtqSz1m0mAquuSDNdhnxkKx7I=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nWVcvX6G6WivwGkpNIuWc5BbAxtcAV5v2OVfXW//ucIZx6ghZlXDd6XQAdOSTPNGI
	 MrtnzoxpnYoFOAd30xtsICUEWnCC9ymYqQMs8G92BC6O5BnCell7kNO5Gr9HaXcSyP
	 zW3sPqNCYinR1/1x1yv91ndFH49doExifc23E0BFzpKbW0JGOJTawcxBR0i7rhHykD
	 aet8ZYvQ3JzCsiJx9Ha7x8PDqB2kRdYbY6gm1QbRlxNc2+gtz9FVn2s0jwnv4G4Elo
	 mOhggnCKQsi8ZBYxegw4Q+Og3K86BCKsUtiYG3XBsz346b8thzK7fm252V0NpjNInY
	 HbqHCAuJglCAw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 163256077E;
	Fri, 12 Apr 2024 13:11:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BBB9B1BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 13:11:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A8B94606F5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 13:11:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ferf-mGoJUW1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Apr 2024 13:11:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DF60A605B7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF60A605B7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DF60A605B7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 13:11:25 +0000 (UTC)
X-CSE-ConnectionGUID: V2XAEsH+SO+i9oqCe9AmJg==
X-CSE-MsgGUID: IxnGZG3qTVujAeMznCL0Yw==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="12230973"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="12230973"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 06:11:22 -0700
X-CSE-ConnectionGUID: Y6pXWTaTSsa8qPFkzSv72Q==
X-CSE-MsgGUID: s6aX/gV6S0Cm7XokmfACCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="52384895"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmviesa001.fm.intel.com with ESMTP; 12 Apr 2024 06:11:20 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Apr 2024 15:06:49 +0200
Message-ID: <20240412131104.322851-20-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240412131104.322851-14-karol.kolacinski@intel.com>
References: <20240412131104.322851-14-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712927486; x=1744463486;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DPYv1ccyPCdxxFxGcWBOo0jshvs3m1PjZFe95E59i0U=;
 b=kFWQxwI+UqkwpreK0NL9ANB+QPBlXBg+WTrp27tvTlPZO743XHWfJk6y
 gd959ZbtpWok4Ch7eUl67ygE7QJLdVmjyJBV3reA5L4hwlTM8WnqYdLxd
 dOw1JXXeadYCVpEuONReK3kdAi5SJrqoBXlDh5kBWDpUy+B8d2PFG11ve
 K8gQRD842t8x3H1yqvRjv9XUBEwOAE4qONbyKWy2zbIlEvMB/+z0tLiRE
 UUl3xdJs69c9GNVI0BHVHovwfGtFheijukSZ1VjBC4313CcJU7SNJk+Ng
 8JjMD7t+8nJa78xN9ZggK2MDY2wWUDovBAvsf7ymZz8vuRLZbHxpEbFVi
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kFWQxwI+
Subject: [Intel-wired-lan] [PATCH v8 iwl-next 06/12] ice: Introduce
 ice_get_base_incval() helper
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
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

Add a new helper for getting base clock increment value for specific HW.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
V4 -> V5: Removed unused UNKNOWN_INCVAL_E82X

 drivers/net/ethernet/intel/ice/ice_ptp.c    |  9 +--------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h | 12 ++++++++++++
 2 files changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 6899b331f322..824d3f17587c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -7,8 +7,6 @@
 
 #define E810_OUT_PROP_DELAY_NS 1
 
-#define UNKNOWN_INCVAL_E82X 0x100000000ULL
-
 static const struct ptp_pin_desc ice_pin_desc_e810t[] = {
 	/* name    idx   func         chan */
 	{ "GNSS",  GNSS, PTP_PF_EXTTS, 0, { 0, } },
@@ -1210,12 +1208,7 @@ static u64 ice_base_incval(struct ice_pf *pf)
 	struct ice_hw *hw = &pf->hw;
 	u64 incval;
 
-	if (ice_is_e810(hw))
-		incval = ICE_PTP_NOMINAL_INCVAL_E810;
-	else if (ice_e82x_time_ref(hw) < NUM_ICE_TIME_REF_FREQ)
-		incval = ice_e82x_nominal_incval(ice_e82x_time_ref(hw));
-	else
-		incval = UNKNOWN_INCVAL_E82X;
+	incval = ice_get_base_incval(hw);
 
 	dev_dbg(ice_pf_to_dev(pf), "PTP: using base increment value of 0x%016llx\n",
 		incval);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 2d8ba9c2251d..cafae345d374 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -285,6 +285,18 @@ int ice_get_cgu_rclk_pin_info(struct ice_hw *hw, u8 *base_idx, u8 *pin_num);
 int ice_cgu_get_output_pin_state_caps(struct ice_hw *hw, u8 pin_id,
 				      unsigned long *caps);
 
+static inline u64 ice_get_base_incval(struct ice_hw *hw)
+{
+	switch (hw->ptp.phy_model) {
+	case ICE_PHY_E810:
+		return ICE_PTP_NOMINAL_INCVAL_E810;
+	case ICE_PHY_E82X:
+		return ice_e82x_nominal_incval(ice_e82x_time_ref(hw));
+	default:
+		return 0;
+	}
+}
+
 #define PFTSYN_SEM_BYTES	4
 
 #define ICE_PTP_CLOCK_INDEX_0	0x00
-- 
2.43.0

