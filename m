Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6350F9EAA8C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Dec 2024 09:25:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1FA4760807;
	Tue, 10 Dec 2024 08:25:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8xnA3S3_HZhC; Tue, 10 Dec 2024 08:25:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 685326080F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733819115;
	bh=mdMxgXQcFqkO7CCpWXQBZ29LckmV5B6FZuSWqT0xfcA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ezXuGmR0QK98Na26mVXo5ffAJ9fdt3g6sU/ZBq9z4Atpu+yPsIoNfDXXnG9WSz08X
	 ZzNJSaG7+exI7Zc9jaRza3rhiZqS8P+rh8P+sK7oUFBGfVBC/psDrn0kHKfApkIjae
	 Kb7KHvVWTGHsyPdmC2mNTYbcQFsmbPuKR/7amQMtr8mOLZFABrPJUuedH3lDhYlF1X
	 kWptS38KcZ/VRknsVawhLRrYFEYXwmqL/W8YsDIpaBRlCvCyh2I3UsHlXTWR9dysbL
	 JsH9M2HdSRXuY/QVvIEplhDiHe3aewpv3d3qrye+Wo9rRWQCE/5KViczFGkkMBzE3q
	 CpKjHHOEh8h6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 685326080F;
	Tue, 10 Dec 2024 08:25:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 47CE36F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 08:25:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 25CBE40003
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 08:25:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q5aQY-rHlB3G for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Dec 2024 08:25:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=anton.nadezhdin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0D0F440132
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0D0F440132
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0D0F440132
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 08:25:11 +0000 (UTC)
X-CSE-ConnectionGUID: lIIVT8l8Q5e9A99FjOVJwQ==
X-CSE-MsgGUID: 2X8SxCJXT5Ck5fBby2XkUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="34398260"
X-IronPort-AV: E=Sophos;i="6.12,221,1728975600"; d="scan'208";a="34398260"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 00:25:11 -0800
X-CSE-ConnectionGUID: OSQQ4H6oTgKO5Yrt8KK5cw==
X-CSE-MsgGUID: leNetnBlSCKIQnMHdKZLGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,221,1728975600"; d="scan'208";a="99398148"
Received: from host61.igk.intel.com ([10.123.220.61])
 by fmviesa003.fm.intel.com with ESMTP; 10 Dec 2024 00:25:10 -0800
From: Anton Nadezhdin <anton.nadezhdin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, richardcochran@gmail.com,
 Jacob Keller <jacob.e.keller@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Milena Olech <milena.olech@intel.com>,
 Anton Nadezhdin <anton.nadezhdin@intel.com>
Date: Tue, 10 Dec 2024 09:22:08 -0500
Message-ID: <20241210142333.320515-5-anton.nadezhdin@intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20241210142333.320515-1-anton.nadezhdin@intel.com>
References: <20241210142333.320515-1-anton.nadezhdin@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733819112; x=1765355112;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lT+Ayyo1NsfkzOHaNIvpQd02/Q4fftifKNcdVE3ZQZs=;
 b=XrmjRilE5TJHt1lTMkuSveEnJVNiwS6tHVDnMBwOS7oiNx+K4fR69ncg
 1x6DDlT6N9z65PX9mzkzElxGFBWvmHAlw/Xe9Wdz1i+k5Eikl8Hc8MYUm
 j8kgOjQCtRpuU7MMa7SdmANDQgUddfJMjDt8IVugq0JTqKPosLINDtf5i
 TSEXNWAtPGCjgBz2dVaDRqyjYYQ+OT2Wbrkje3nVzB8KpTb7rYXei+CUK
 +O89x7mgAu3FsIQwmEzDxcPh9PXsh7PK3Ca0JN0Me2XRpB2rHaQ/LGiik
 wAQAk2js0l7/qhraSOKXR2lPpprmZU/RIGAsJ702dLT/GEm93dAt6hLWJ
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XrmjRilE
Subject: [Intel-wired-lan] [PATCH iwl-next v2 4/5] ice: check low latency
 PHY timer update firmware capability
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

Newer versions of firmware support programming the PHY timer via the low
latency interface exposed over REG_LL_PROXY_L and REG_LL_PROXY_H. Add
support for checking the device capabilities for this feature.

Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 3 +++
 drivers/net/ethernet/intel/ice/ice_type.h   | 2 ++
 2 files changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index faba09b9d880..d23f413740c4 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2507,6 +2507,7 @@ ice_parse_1588_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
 
 	info->ts_ll_read = ((number & ICE_TS_LL_TX_TS_READ_M) != 0);
 	info->ts_ll_int_read = ((number & ICE_TS_LL_TX_TS_INT_READ_M) != 0);
+	info->ll_phy_tmr_update = ((number & ICE_TS_LL_PHY_TMR_UPDATE_M) != 0);
 
 	info->ena_ports = logical_id;
 	info->tmr_own_map = phys_id;
@@ -2529,6 +2530,8 @@ ice_parse_1588_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
 		  info->ts_ll_read);
 	ice_debug(hw, ICE_DBG_INIT, "dev caps: ts_ll_int_read = %u\n",
 		  info->ts_ll_int_read);
+	ice_debug(hw, ICE_DBG_INIT, "dev caps: ll_phy_tmr_update = %u\n",
+		  info->ll_phy_tmr_update);
 	ice_debug(hw, ICE_DBG_INIT, "dev caps: ieee_1588 ena_ports = %u\n",
 		  info->ena_ports);
 	ice_debug(hw, ICE_DBG_INIT, "dev caps: tmr_own_map = %u\n",
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 5f3af5f3d2cb..25d6dad1852b 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -369,6 +369,7 @@ struct ice_ts_func_info {
 #define ICE_TS_TMR1_ENA_M		BIT(26)
 #define ICE_TS_LL_TX_TS_READ_M		BIT(28)
 #define ICE_TS_LL_TX_TS_INT_READ_M	BIT(29)
+#define ICE_TS_LL_PHY_TMR_UPDATE_M	BIT(30)
 
 struct ice_ts_dev_info {
 	/* Device specific info */
@@ -383,6 +384,7 @@ struct ice_ts_dev_info {
 	u8 tmr1_ena;
 	u8 ts_ll_read;
 	u8 ts_ll_int_read;
+	u8 ll_phy_tmr_update;
 };
 
 #define ICE_NAC_TOPO_PRIMARY_M	BIT(0)
-- 
2.42.0

