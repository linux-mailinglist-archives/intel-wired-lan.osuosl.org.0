Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CD989BDED
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Apr 2024 13:18:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F21940718;
	Mon,  8 Apr 2024 11:18:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ocgHY6gY3fb7; Mon,  8 Apr 2024 11:18:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 85EDA406DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712575117;
	bh=lYHdnnw2qKAtpvQ2kemVzAOapKRjAidwzIOr84RTuS8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dCkZE5dvPF/QTVk+MpMMD+PX9UzpBt6bKWmz30fu7cHRpUW+0Zx4agQhqc4EIKdfZ
	 idHB1St/7W0dnBeB2JiN0QXoLyHQIBoqekSXcBdSx6IAF6ZxLFrd+xUDYl/hxGVQrj
	 beWye/8Voaqui4YrnSZDE6+S4s8m9Uhm2I2FPowFOZaC/tZBvX4TpeMrsJQzxhHKzE
	 ggG4MLrPs1FpgfZnql6xHEpITl8KjAEWp1GYK0XfuVQPpF9TVDYxQ4EoymdHelUOYv
	 TROk9lzn3/foPcH43G80yUEzHprD1MntFvSUGijz++UIXBiBoj2ViStj14Pp/HVL0v
	 q+dyOGrcn1nEA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85EDA406DF;
	Mon,  8 Apr 2024 11:18:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B03EC1BF340
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 11:18:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9D2E881B6D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 11:18:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5puyhr1FOSSy for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Apr 2024 11:18:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E0AC981B3E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E0AC981B3E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E0AC981B3E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 11:18:31 +0000 (UTC)
X-CSE-ConnectionGUID: IXkYDx0AQHSbPmt2u40Zvw==
X-CSE-MsgGUID: VedH8DyvSz2q4rppdGYyvA==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="18988565"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="18988565"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 04:18:32 -0700
X-CSE-ConnectionGUID: X2dks8SvQFSwZjM0HbN6Vw==
X-CSE-MsgGUID: /wf85y9DSpKTAnoRp/M1Fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="19904907"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmviesa009.fm.intel.com with ESMTP; 08 Apr 2024 04:18:29 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  8 Apr 2024 13:07:27 +0200
Message-ID: <20240408111814.404583-20-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240408111814.404583-14-karol.kolacinski@intel.com>
References: <20240408111814.404583-14-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712575112; x=1744111112;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EDP/v5xXtSkV1N6Kc62noURJd38e2/GkI2l5z25K0HY=;
 b=h7w/hhkUsttOMni+VdsZjc1Gj33irzjuLZcAp5Td8yz6YOUrQfahnrQv
 vuZk6CyadW/kjAGAr+48+irO417dwnrNzIqSyq79VcbfmSHx7FU02Ffui
 6EZ8jEaLc9QBmU+uJBAJHA3SmKaNARS1shviMA8RlvRK3hhcUDZDR3aPa
 2Se2ZJfH73SSQyUyHrA8elJqxAS+794iB/JfWhMtpzTqLqJSbTiVRr9bl
 9ahnvi+KEZwQf7k3xFQZLnyj+xyhSBOweoC6o75CNaJ+UtkYzvd4AWAPP
 o82V2jzPTm4dVHtbf2PNABZSluVl2DS2cSak/YGTE46pTeqjZ7sxcXLw4
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h7w/hhkU
Subject: [Intel-wired-lan] [PATCH v7 iwl-next 06/12] ice: Introduce
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
index 48c0bc179110..f10ddf598f58 100644
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

