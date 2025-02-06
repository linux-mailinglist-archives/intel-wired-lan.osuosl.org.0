Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A07A2A363
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2025 09:40:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 54DDA611B1;
	Thu,  6 Feb 2025 08:40:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fUmCAZCKs2ca; Thu,  6 Feb 2025 08:40:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8EC0E611A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738831238;
	bh=2zrkN9NcfxnbkT8wapfsZFJVOftWB9npROxyLtNmxf0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DdyyOf4cx7sU7k+X56xOsyk4QT+qE994nUS5RhiiqQXWm0lCeQc4a6uFsowysxMoU
	 UgkNqosAvbHXvwZEY7xKeldvCKDsCUZFvjxJzDrDdGty6a6dSbmc1hF0Li09uNIkUo
	 wkGO6bnUVjvh5Mlq1RZFNkWuofgYYi6/vmiWdK0gYk8Ty3Da5pnZe6vG/X0ACz9daI
	 2DbcqbKX78paoUPaW6VlK1ss1nGTkAa7OkXZa4PsWHhksPlk5CnVaq1gRF2izlQK3J
	 izrhPL2R/B+Z2KFqVkRiA/6iKPKuTVgMS0EiwEMETobcY8CQUE0vS6npvDYDifRhqw
	 MKhYkJDwL1nLA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8EC0E611A8;
	Thu,  6 Feb 2025 08:40:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8509712F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 08:40:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 80FE283B2A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 08:40:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CJjTf0-uQEtM for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2025 08:40:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B2E82818D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B2E82818D0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B2E82818D0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 08:40:35 +0000 (UTC)
X-CSE-ConnectionGUID: G1MupXWnSaqIa5zxDUfUZw==
X-CSE-MsgGUID: V6rBZ+bJRbqkCrRsw00DjQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="49667830"
X-IronPort-AV: E=Sophos;i="6.13,264,1732608000"; d="scan'208";a="49667830"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 00:40:35 -0800
X-CSE-ConnectionGUID: ZOFmWY+RRe6ycHGT+4prZQ==
X-CSE-MsgGUID: SaGMQzDSQimmq6EgFQSWRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,264,1732608000"; d="scan'208";a="110979404"
Received: from gklab-003-001.igk.intel.com ([10.211.3.1])
 by fmviesa006.fm.intel.com with ESMTP; 06 Feb 2025 00:40:34 -0800
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Feb 2025 09:36:55 +0100
Message-Id: <20250206083655.3005151-4-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20250206083655.3005151-1-grzegorz.nitka@intel.com>
References: <20250206083655.3005151-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738831236; x=1770367236;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rbLKv3hBZ+Wj7dmSl35OqyyYsnCfZZUSpGDd5rBfwPw=;
 b=RxJ1yMHCrXDERp++ioSp5Rhuo+mwxfDxcJAjrXZYlvT0gwyWustbTO6X
 EPSOsbh1DKRDv6AxeEe1DJ3tqbQ34nxMy8XaTy5lpVYdBze0rxbv0a2zp
 FNRXvbEHHjEelqNNmQXoN5BWydmQ2FTia1GH1ELOnZJXH+owvfDMO8NSH
 3xmBGBqBwXiYNuFcMCew/FUyhTxtpjK44cuwwshZd/lyg957D9xk6PItM
 jeLtpSY7Wj8gze5lqFC2fQFnjVX6s86OpbaAi6N/Ii6Zoi8rcdSSYsruM
 PCtVysSSL0MEaLROAdPqkO/GNjrcBUIv3eSwIFZOqKI1LAkrYnXdybPfk
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RxJ1yMHC
Subject: [Intel-wired-lan] [PATCH iwl-next v1 3/3] ice: E825C PHY register
 cleanup
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Karol Kolacinski <karol.kolacinski@intel.com>

Minor PTP register refactor, including logical grouping E825C 1-step
timestamping registers. Remove unused register definitions
(PHY_REG_GPCS_BITSLIP, PHY_REG_REVISION).
Also, apply preferred GENMASK macro (instead of ICE_M) for register
fields definition affected by this patch.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h | 31 ++++++++++-----------
 1 file changed, 14 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 63a63ef64aaa..6ca1561ec5e8 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -783,36 +783,19 @@ static inline bool ice_is_dual(struct ice_hw *hw)
 #define PHY_MAC_XIF_TS_SFD_ENA_M	ICE_M(0x1, 20)
 #define PHY_MAC_XIF_GMII_TS_SEL_M	ICE_M(0x1, 21)
 
-/* GPCS config register */
-#define PHY_GPCS_CONFIG_REG0		0x268
-#define PHY_GPCS_CONFIG_REG0_TX_THR_M	ICE_M(0xF, 24)
-#define PHY_GPCS_BITSLIP		0x5C
-
 #define PHY_TS_INT_CONFIG_THRESHOLD_M	ICE_M(0x3F, 0)
 #define PHY_TS_INT_CONFIG_ENA_M		BIT(6)
 
-/* 1-step PTP config */
-#define PHY_PTP_1STEP_CONFIG		0x270
-#define PHY_PTP_1STEP_T1S_UP64_M	ICE_M(0xF, 4)
-#define PHY_PTP_1STEP_T1S_DELTA_M	ICE_M(0xF, 8)
-#define PHY_PTP_1STEP_PEER_DELAY(_port)	(0x274 + 4 * (_port))
-#define PHY_PTP_1STEP_PD_ADD_PD_M	ICE_M(0x1, 0)
-#define PHY_PTP_1STEP_PD_DELAY_M	ICE_M(0x3fffffff, 1)
-#define PHY_PTP_1STEP_PD_DLY_V_M	ICE_M(0x1, 31)
-
 /* Macros to derive offsets for TimeStampLow and TimeStampHigh */
 #define PHY_TSTAMP_L(x) (((x) * 8) + 0)
 #define PHY_TSTAMP_U(x) (((x) * 8) + 4)
 
-#define PHY_REG_REVISION		0x85000
-
 #define PHY_REG_DESKEW_0		0x94
 #define PHY_REG_DESKEW_0_RLEVEL		GENMASK(6, 0)
 #define PHY_REG_DESKEW_0_RLEVEL_FRAC	GENMASK(9, 7)
 #define PHY_REG_DESKEW_0_RLEVEL_FRAC_W	3
 #define PHY_REG_DESKEW_0_VALID		GENMASK(10, 10)
 
-#define PHY_REG_GPCS_BITSLIP		0x5C
 #define PHY_REG_SD_BIT_SLIP(_port_offset)	(0x29C + 4 * (_port_offset))
 #define PHY_REVISION_ETH56G		0x10200
 #define PHY_VENDOR_TXLANE_THRESH	0x2000C
@@ -832,7 +815,21 @@ static inline bool ice_is_dual(struct ice_hw *hw)
 #define PHY_MAC_BLOCKTIME		0x50
 #define PHY_MAC_MARKERTIME		0x54
 #define PHY_MAC_TX_OFFSET		0x58
+#define PHY_GPCS_BITSLIP		0x5C
 
 #define PHY_PTP_INT_STATUS		0x7FD140
 
+/* ETH56G registers shared per quad */
+/* GPCS config register */
+#define PHY_GPCS_CONFIG_REG0		0x268
+#define PHY_GPCS_CONFIG_REG0_TX_THR_M	GENMASK(27, 24)
+/* 1-step PTP config */
+#define PHY_PTP_1STEP_CONFIG		0x270
+#define PHY_PTP_1STEP_T1S_UP64_M	GENMASK(7, 4)
+#define PHY_PTP_1STEP_T1S_DELTA_M	GENMASK(11, 8)
+#define PHY_PTP_1STEP_PEER_DELAY(_quad_lane)	(0x274 + 4 * (_quad_lane))
+#define PHY_PTP_1STEP_PD_ADD_PD_M	BIT(0)
+#define PHY_PTP_1STEP_PD_DELAY_M	GENMASK(30, 1)
+#define PHY_PTP_1STEP_PD_DLY_V_M	BIT(31)
+
 #endif /* _ICE_PTP_HW_H_ */
-- 
2.39.3

