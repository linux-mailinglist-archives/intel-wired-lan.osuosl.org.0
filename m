Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 510429F2C6C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Dec 2024 09:56:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 026E140BD3;
	Mon, 16 Dec 2024 08:56:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m1G82WZOd28r; Mon, 16 Dec 2024 08:56:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E62640B3E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734339400;
	bh=4mIQ72azUSgsQKDsQqQf9EMuC/PO2kRKd5aUPD3/ByA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HOmaJbgDDzGY80eqeiIXE+EUMZZhDv8ygCfMOK986/A6kY3bIVL9TTe5VTzzzsD7/
	 sSBFj+oD8v0MNGsrH2SEGQCk5H1x0mmqQmzHKouCGy0epoLxgf5stObgSHFuzje3pQ
	 9mZeD7YMRHuayzXvfF5jdu8JcrHVJCMUTbxQ2UqXwSTJbJQ0sPf8CgX80srnVCjK/E
	 Dj6MpIiKA9cyHwqsdnMEdABO2Jwg/ytddWMHt78teQMEpPahYDp7bJo9D8UCwnjlat
	 JawMzMUVHSbG2ZRKrmM4EELUJUQkSFmV9JyhpVR2kRQ9pq8eAQ1X8uZ8Jow9C8Mii9
	 jJ9P4x01q6Q1w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5E62640B3E;
	Mon, 16 Dec 2024 08:56:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6957FCE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 08:56:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 584F28149B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 08:56:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZLzXid7uP3k8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Dec 2024 08:56:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=anton.nadezhdin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B0F3F8149C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0F3F8149C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B0F3F8149C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 08:56:36 +0000 (UTC)
X-CSE-ConnectionGUID: vNXzxFftQ+ODiJFuLszUJQ==
X-CSE-MsgGUID: 5tDifQEGQYST6ZZzbTiA8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11287"; a="34942408"
X-IronPort-AV: E=Sophos;i="6.12,238,1728975600"; d="scan'208";a="34942408"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 00:56:36 -0800
X-CSE-ConnectionGUID: pRm7sM6XR8CKKTk+fVbE4A==
X-CSE-MsgGUID: 9bMnidh6Sze03PSaZnMJmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102117193"
Received: from host61.igk.intel.com ([10.123.220.61])
 by orviesa005.jf.intel.com with ESMTP; 16 Dec 2024 00:56:33 -0800
From: Anton Nadezhdin <anton.nadezhdin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, richardcochran@gmail.com,
 Jacob Keller <jacob.e.keller@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Milena Olech <milena.olech@intel.com>,
 Anton Nadezhdin <anton.nadezhdin@intel.com>
Date: Mon, 16 Dec 2024 09:53:31 -0500
Message-ID: <20241216145453.333745-5-anton.nadezhdin@intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20241216145453.333745-1-anton.nadezhdin@intel.com>
References: <20241216145453.333745-1-anton.nadezhdin@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734339397; x=1765875397;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wW04zKWG6V/TS0MxKlNCR/JaRvA5BUZD2MRR6W8uDic=;
 b=ditcqNiElB0XRUV9o86yMl0j9rDFD+gPXlReS5gVM1VU1RFQpmNv/Zob
 kKdv/drBvhF0AHF+PuOVDjDpMeTbs42blR3KCs2pIZjAkjARGPXX3baww
 ouzx/C8krL2uNDDXHMxr/KhraHI+huiE4KXcSlPjPLwccbpMwlTRmvRSL
 6jAN9x1ABtWuV9WCNttK6S4qcnyj1vbJG/We4fBzHMywb2AJkF+SpR50O
 sVmVfmO2BmdMqOORgCvlxBCdGGwhelonQE86XiVn9BXh/YA7bb60ceh60
 weT5odp/tq5+eWiR/iYEg6nfefh+KSeqZRRnCgDdNMAlWx/DIVpQubuHp
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ditcqNiE
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
index 7b5cab253ce1..856e7417bb18 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2527,6 +2527,7 @@ ice_parse_1588_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
 
 	info->ts_ll_read = ((number & ICE_TS_LL_TX_TS_READ_M) != 0);
 	info->ts_ll_int_read = ((number & ICE_TS_LL_TX_TS_INT_READ_M) != 0);
+	info->ll_phy_tmr_update = ((number & ICE_TS_LL_PHY_TMR_UPDATE_M) != 0);
 
 	info->ena_ports = logical_id;
 	info->tmr_own_map = phys_id;
@@ -2549,6 +2550,8 @@ ice_parse_1588_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
 		  info->ts_ll_read);
 	ice_debug(hw, ICE_DBG_INIT, "dev caps: ts_ll_int_read = %u\n",
 		  info->ts_ll_int_read);
+	ice_debug(hw, ICE_DBG_INIT, "dev caps: ll_phy_tmr_update = %u\n",
+		  info->ll_phy_tmr_update);
 	ice_debug(hw, ICE_DBG_INIT, "dev caps: ieee_1588 ena_ports = %u\n",
 		  info->ena_ports);
 	ice_debug(hw, ICE_DBG_INIT, "dev caps: tmr_own_map = %u\n",
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 819dfff8370d..727ac9a9c571 100644
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

