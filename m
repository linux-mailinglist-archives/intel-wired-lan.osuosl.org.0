Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 610088B0B22
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Apr 2024 15:38:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A42D041686;
	Wed, 24 Apr 2024 13:37:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nVmSFYPur9Qz; Wed, 24 Apr 2024 13:37:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 77DFD415ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713965877;
	bh=oYuAiaa+AKSf2UGBPc4e5mE8nqtgb4cRQJ2BKD9fBNc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=k85qVC2aokJ4wFB3g9B7rV0B6N7fSOU3KrfGz8LpSRbOK0OsvT39ijzvuxvfRK+h5
	 0wdXfx0GjF9wpyVzf2R2Zx1JtTGX0tCuVvTps2Bt56/QtUqEPsVnp7mSrLESaECXub
	 fAaHl4w0467x7Vxotp2AIfNA2bBBNFXsHAq6t/SSCcZC+hmg2wQkAWaz3iC2YGdGy8
	 irYl5WYjvAFoeH5RkwGdy5h+7sMK2Mfwac1rnEhViC01e/cCYIXurF2sYLBeX2iAE4
	 uVwbKinTTZe1xSTM77Ct3KTF4pZrvJqIT+vM1y1RXUodG3NBPfZrkLdYz+3yzEXrmp
	 /fzc2LtDJi7Hg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 77DFD415ED;
	Wed, 24 Apr 2024 13:37:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 806FF1BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 13:37:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7A6D860A65
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 13:37:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IOsbTdRHBTuc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Apr 2024 13:37:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C4A5D605CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C4A5D605CE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C4A5D605CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 13:37:50 +0000 (UTC)
X-CSE-ConnectionGUID: cb6c79KZRre/cjIS+K+vSQ==
X-CSE-MsgGUID: ao5OOTT+SP6TGDvMgrReww==
X-IronPort-AV: E=McAfee;i="6600,9927,11054"; a="27110480"
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; d="scan'208";a="27110480"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 06:37:49 -0700
X-CSE-ConnectionGUID: ajWBKAMRQYqqSEL8Ms+xdw==
X-CSE-MsgGUID: dH2T6as4Q1uDmLdMgFYJPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; d="scan'208";a="24601128"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orviesa010.jf.intel.com with ESMTP; 24 Apr 2024 06:37:47 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 Apr 2024 15:30:14 +0200
Message-ID: <20240424133542.113933-21-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240424133542.113933-16-karol.kolacinski@intel.com>
References: <20240424133542.113933-16-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713965870; x=1745501870;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zxtw6q2FZh2PnVubMGNSdvsJbu5toIuxCc9Ms/yAMPw=;
 b=XfZ8g6e3oexXvwCa/i26AIxhFjxcDfoo1EBQtG53SS/R/Qagai4F3L96
 zrw4g4FcmF6Y4+57o6BSTbgbBXeqYKCHbSlb2uakpR+TQLbv4U1nY5h/h
 WdCJReuKzPLsNRvjs1SqNuQsM/3hdu9Oec4Upu+g1a9ceO7Jnt2yFpjer
 ka8XxyJoexx8mebckZu1ZG3ZowGrO7Fp8tmVs2IPfjmdVZI6zMKOcVTkV
 3rgYVoS2DeyO/3iKrKswb/4I3iyC5+3JEsQovJzmIuooMTbbiNIIzOpq+
 Gx8HtY0opm6q0/q1KKWnsVmitlZvvRepcEj0tUY8BEPAlmeSGV0U4bGUq
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XfZ8g6e3
Subject: [Intel-wired-lan] [PATCH v10 iwl-next 06/12] ice: Introduce
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
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h | 18 ++++++++++++++++++
 2 files changed, 19 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 4ed2213247f7..923011c9609a 100644
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
index 2d8ba9c2251d..3fe12a1694fc 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -285,6 +285,24 @@ int ice_get_cgu_rclk_pin_info(struct ice_hw *hw, u8 *base_idx, u8 *pin_num);
 int ice_cgu_get_output_pin_state_caps(struct ice_hw *hw, u8 pin_id,
 				      unsigned long *caps);
 
+/**
+ * ice_get_base_incval - Get base clock increment value
+ * @hw: pointer to the HW struct
+ *
+ * Return: base clock increment value for supported PHYs, 0 otherwise
+ */
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

