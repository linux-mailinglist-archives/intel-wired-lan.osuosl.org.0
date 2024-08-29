Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 671FB96434F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Aug 2024 13:42:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3FDAC61177;
	Thu, 29 Aug 2024 11:42:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KNOnALIX8DGD; Thu, 29 Aug 2024 11:42:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A1A876115C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724931734;
	bh=Y7r7YsUgLoKMfB/HvMMDklWApTNX1hF/YyIYZP9NuMk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ndw3tHBgS19zu8gGpUfNe0JJont/I1ARyYaKPx9PzvKNIpemQgSxqmAGPXO/wJa1t
	 fqW+CkY+8lfpJobUQbc5MkNLhZy0t1E5BSjPAywzv6gg5s+3vbDxd5DEiCAVDEctOx
	 PxIbc/zbzTVqqvhzw9bIrnuOWMZN6uItXSiPkZCDYCJSCqqP/XE8R6p5rO8dxty1S2
	 CFybIsYtO0xpLukpwvUGneQwhRyGdKpU89LSVxRpUWEFNsyn3zFXUF3+ym426XN4Qa
	 9iXfucfHTlQs6q5GW8ln+o7Y1I3uWMkDKWrQfv5j40B9GR4VBzmVdk41T0HAW9ga3N
	 KylK1L+ghtglA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A1A876115C;
	Thu, 29 Aug 2024 11:42:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 520551BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 11:42:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3D2CE813D0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 11:42:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cwol254tPIY1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Aug 2024 11:42:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 80DC281BFA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80DC281BFA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 80DC281BFA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 11:42:11 +0000 (UTC)
X-CSE-ConnectionGUID: ZJSedkGkSeifkrUjVCfNAg==
X-CSE-MsgGUID: 3ylo8EbySGGADpMPYkkJDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="23092330"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="23092330"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 04:42:11 -0700
X-CSE-ConnectionGUID: m3EtpyI5QEOQQwrEpG8emg==
X-CSE-MsgGUID: YYigrl9ESLKNPBIrqdQUEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="64045401"
Received: from kkolacin-desk1.igk.intel.com ([10.217.160.108])
 by orviesa007.jf.intel.com with ESMTP; 29 Aug 2024 04:42:09 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 29 Aug 2024 13:37:39 +0200
Message-ID: <20240829114201.1030938-12-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240829114201.1030938-9-karol.kolacinski@intel.com>
References: <20240829114201.1030938-9-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724931731; x=1756467731;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2mQSaneFaAvse1S7g/x7TBTbL628yvuAB8xbMvb2QkY=;
 b=Tw9BBNXoeyf6vZLjTvK1/CAECTj+QOLy8rLbFo1MmtYFUzAvj1SZvLGM
 jiEF9YN3YN5ecmUpjBi2E7dcMIm2pKHwVQnOGfXzlNQ0dMTiqrb23hqev
 iMgsg+Sy6fFoMNmm4k3j+LZAzEhEn4PQ3fKRs+Lcp143l4jA3CIQ8TsYt
 PFJPRM4uZo/4aFiH8njfagWHSfdQVAt4v5X02dCn+l7W5JLkoWNfsRtC6
 y7D6ATVOASmyKlTYJ5hEfKkj2flM1Tu0EMxWRWcS5xHzPbSO3X2KFaqTQ
 RsfKSpUvuCkMB7RYBkaV7U+yoxUjRSFHrxj2fqdE6MJOfQ0ujvdU+Zt8M
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Tw9BBNXo
Subject: [Intel-wired-lan] [PATCH v9 iwl-next 3/7] ice: Use FIELD_PREP for
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

