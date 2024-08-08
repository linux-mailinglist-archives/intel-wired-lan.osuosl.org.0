Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B8694BE08
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 14:58:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E41E60ABF;
	Thu,  8 Aug 2024 12:58:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CivLk9dDAAyX; Thu,  8 Aug 2024 12:58:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A0FCE60593
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723121920;
	bh=3N1hX1ZSSv5giDBY0dPtdFEEbWOnTqQoOALBLjVcKNE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fMBXzmct+a44S5m8z5hWHonlhKrV58/v4Pp8HNvGmLiSumoONPOGH8juM3NsV3n6N
	 qysYmMqPHoCXw9ZnnmVptTnIFED6doLh21Iwy+iXGDy614N37P5C765lbEbWyooXb3
	 tBMrd6b4qv/uNVAboaw7qZNGzrjtKb03JjrY/VkKPI+eMmR7QJ+97X44wlAy0Cm+HH
	 woNcKB+3aZkRJR4FKEFHgR5DZkgQ7zbapnOpCgvsRm7biJQa36tDox6mr+9eMdWtvC
	 eUHABlFOxrKwV4O+IAd6TNzvyFO6Gqi3A7Zek/Rjsc5fsuuBpDDMZz+Zdh1aqKpqyz
	 PRLrcULMLYppg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A0FCE60593;
	Thu,  8 Aug 2024 12:58:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 067AC1BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 12:58:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E601E60AB9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 12:58:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id acvrXKOw7i9x for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 12:58:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4232760AA7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4232760AA7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4232760AA7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 12:58:37 +0000 (UTC)
X-CSE-ConnectionGUID: 6lxPqYhQTfO2sfE1OzEyyw==
X-CSE-MsgGUID: 8d2YvWUtTjaPpchvuDLcBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="21404760"
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="21404760"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 05:58:34 -0700
X-CSE-ConnectionGUID: JkNpYmUaQxeGjHH0aj+fMQ==
X-CSE-MsgGUID: IgB/onBcT1WrGWZn/Gttkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="61595071"
Received: from unknown (HELO kkolacin-desk1.igk.intel.com) ([10.217.160.108])
 by fmviesa005.fm.intel.com with ESMTP; 08 Aug 2024 05:58:33 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Aug 2024 14:57:44 +0200
Message-ID: <20240808125825.560093-10-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240808125825.560093-8-karol.kolacinski@intel.com>
References: <20240808125825.560093-8-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723121917; x=1754657917;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+d8DdgduNTeedRsYArvK/lfw1KmycAiuex+juw2noZI=;
 b=edphm43TuZrGs+bJwk3Qf0Lgj8V8bLzOgHkRmkfx++T3l7BQnqgwBHE7
 zAnQHr+HBmgysDTzhX4pKROq3R7W2kPy2YsWq3JozFBXIelwsqF30Xg1X
 /cAcZ4Q16QyAyT1+XqnuOE720LIQ/v0Bbw3JWy0g9qsDB5HhNcCVj+B+s
 /ofG0wpdrNiGBoaHTwgIyVCcu/3uxAvdD+KvLZefQjZJ0Wtg9P8A+cXlF
 WJ+XwyMuds+qMJfDluASriYxJMYmyD6FzORhvkQgxIY0x6A/OSyHe4AxL
 /+gE40PaSSqb+mGp7Nc3cTPMyB87m4styFVEPOsc7IHAx8+MX+GTVhIBO
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=edphm43T
Subject: [Intel-wired-lan] [PATCH v5 iwl-next 2/6] ice: Use FIELD_PREP for
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
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Instead of using shifts and casts, use FIELD_PREP after reading 40b
timestamp values.

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c |  6 ++++--
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h | 13 +++++--------
 2 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 00c6483dbffc..d1b87838986d 100644
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
@@ -4952,7 +4953,8 @@ ice_read_phy_tstamp_e810(struct ice_hw *hw, u8 lport, u8 idx, u64 *tstamp)
 	/* For E810 devices, the timestamp is reported with the lower 32 bits
 	 * in the low register, and the upper 8 bits in the high register.
 	 */
-	*tstamp = ((u64)hi) << TS_HIGH_S | ((u64)lo & TS_LOW_M);
+	*tstamp = FIELD_PREP(PHY_EXT_40B_HIGH_M, hi) |
+		  FIELD_PREP(PHY_EXT_40B_LOW_M, lo);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 8a28155b206f..df94230d820f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -673,15 +673,12 @@ static inline u64 ice_get_base_incval(struct ice_hw *hw)
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
2.45.2

