Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D094960B55
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2024 15:08:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D4DB440923;
	Tue, 27 Aug 2024 13:08:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J2fBQKTy3vWn; Tue, 27 Aug 2024 13:08:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2AA2740967
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724764126;
	bh=Y7r7YsUgLoKMfB/HvMMDklWApTNX1hF/YyIYZP9NuMk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oYlS6MiiEUEMLfHy10secodCmJR1T6Z9t6EiHuzxc0N92SmUmu5nqXW0HoMLxe0EZ
	 +01pdZXi1aqIjZwrlWAGwA2dsiHNIUQM0zXsXPBJPOLa/NjXZZUm0Mue5Iu/ZNE1Bh
	 lu+5uC1fFJ9jIDRXL/tgbtfvIwV04eqgdxJCfpvLQu6tSOVHgPBwIslOZQDfkKhyf3
	 gUhdR+GwAEef0lZ7HVnva3+PsyjJTeeButM5ZB/tZ0LXGoNEu342UlC9NvkDoJgs/M
	 2n7rerEfFcTwkMhhICqiMayFjIF5vT8beOduB4JQIBrAxDRSEAJ80oWN9LjWVLu2TG
	 TYhAjYZ9wOi+g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2AA2740967;
	Tue, 27 Aug 2024 13:08:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 887991BF21A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 13:08:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 76B3780BB9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 13:08:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ScrFeTENGEpi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2024 13:08:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AE08880A54
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE08880A54
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AE08880A54
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 13:08:39 +0000 (UTC)
X-CSE-ConnectionGUID: Z5eCGYZvTH6mgFHdW/X3nQ==
X-CSE-MsgGUID: 3N+4MRtwTsao7jN8lYXicQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="40710297"
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="40710297"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 06:08:40 -0700
X-CSE-ConnectionGUID: JuIon/ozThWoFiQaYizpyg==
X-CSE-MsgGUID: 2RKmWybiTDC7cDyANBXZ3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="93650100"
Received: from kkolacin-desk1.ger.corp.intel.com (HELO
 kkolacin-desk1.igk.intel.com) ([10.217.160.108])
 by fmviesa001.fm.intel.com with ESMTP; 27 Aug 2024 06:08:37 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 27 Aug 2024 14:50:45 +0200
Message-ID: <20240827130814.732181-12-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240827130814.732181-9-karol.kolacinski@intel.com>
References: <20240827130814.732181-9-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724764120; x=1756300120;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2mQSaneFaAvse1S7g/x7TBTbL628yvuAB8xbMvb2QkY=;
 b=B/DQIkD1J7eOdumVT0BPmE/tQ8HxWmPUrwp9yLXWKjKeW9E7IT4yeLkv
 WLElNsyKCjOtUi0mpwoKl1dag0Ghn2LYF5ChCqUsyRRdHHsRku9MTYra1
 ez7rvcl8upDL//7cXvLB7QU9WeR6/OVkkdVyzORYDT+2guAQv6gV0UtTt
 UM4ZjRRShPfQtco7aQAaIFeQMkb6JyQse5Xk/isI1ON7XUSs7BKtUC174
 DNgitiUqdaeYclHsb9XfR7wakkCV6S7qPMQ8dblSi1DmJjveTUXTbaBZp
 ++mkpaLWYItZ7bXj95340DGl2pzSxFG5AVymy2vyemX8saikiqQ+J4BYH
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=B/DQIkD1
Subject: [Intel-wired-lan] [PATCH v8 iwl-next 3/7] ice: Use FIELD_PREP for
 timestamp values
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Instead of using shifts and casts, use FIELD_PREP after reading 40b
timestamp values.

Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
V5 -> V6: Replaced removed macros with the new ones

 drivers/net/ethernet/intel/ice/ice_ptp_hw.c |  9 ++++++---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h | 13 +++++--------
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 0fc4092fd261..65a66225797e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -1520,7 +1520,8 @@ static int ice_read_ptp_tstamp_eth56g(struct ice_hw *hw, u8 port, u8 idx,
 	 * lower 8 bits in the low register, and the upper 32 bits in the high
 	 * register.
 	 */
-	*tstamp = ((u64)hi) << TS_PHY_HIGH_S | ((u64)lo & TS_PHY_LOW_M);
+	*tstamp = FIELD_PREP(PHY_40B_HIGH_M, hi) |
+		  FIELD_PREP(PHY_40B_LOW_M, lo);
 
 	return 0;
 }
@@ -3199,7 +3200,8 @@ ice_read_phy_tstamp_e82x(struct ice_hw *hw, u8 quad, u8 idx, u64 *tstamp)
 	 * lower 8 bits in the low register, and the upper 32 bits in the high
 	 * register.
 	 */
-	*tstamp = FIELD_PREP(TS_PHY_HIGH_M, hi) | FIELD_PREP(TS_PHY_LOW_M, lo);
+	*tstamp = FIELD_PREP(PHY_40B_HIGH_M, hi) |
+		  FIELD_PREP(PHY_40B_LOW_M, lo);
 
 	return 0;
 }
@@ -4952,7 +4954,8 @@ ice_read_phy_tstamp_e810(struct ice_hw *hw, u8 lport, u8 idx, u64 *tstamp)
 	/* For E810 devices, the timestamp is reported with the lower 32 bits
 	 * in the low register, and the upper 8 bits in the high register.
 	 */
-	*tstamp = ((u64)hi) << TS_HIGH_S | ((u64)lo & TS_LOW_M);
+	*tstamp = FIELD_PREP(PHY_EXT_40B_HIGH_M, hi) |
+		  FIELD_PREP(PHY_EXT_40B_LOW_M, lo);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 51bc691f1d0f..3968e064cc22 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -676,15 +676,12 @@ static inline bool ice_is_dual(struct ice_hw *hw)
 /* Source timer incval macros */
 #define INCVAL_HIGH_M			0xFF
 
-/* Timestamp block macros */
+/* PHY 40b registers macros */
+#define PHY_EXT_40B_LOW_M		GENMASK(31, 0)
+#define PHY_EXT_40B_HIGH_M		GENMASK_ULL(39, 32)
+#define PHY_40B_LOW_M			GENMASK(7, 0)
+#define PHY_40B_HIGH_M			GENMASK_ULL(39, 8)
 #define TS_VALID			BIT(0)
-#define TS_LOW_M			0xFFFFFFFF
-#define TS_HIGH_M			0xFF
-#define TS_HIGH_S			32
-
-#define TS_PHY_LOW_M			0xFF
-#define TS_PHY_HIGH_M			0xFFFFFFFF
-#define TS_PHY_HIGH_S			8
 
 #define BYTES_PER_IDX_ADDR_L_U		8
 #define BYTES_PER_IDX_ADDR_L		4
-- 
2.46.0

