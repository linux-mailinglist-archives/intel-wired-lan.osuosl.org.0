Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C6459A2EF76
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 15:15:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C25080C7D;
	Mon, 10 Feb 2025 14:15:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n1SVfD-pYBym; Mon, 10 Feb 2025 14:15:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 77FA180B97
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739196909;
	bh=nEMqPZ2vm8Tp4RRy6L4xw6YwQsYjIXuIISeX1ABSjfQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8A8+7lHKmSgTtc3+smbxEHbWBNfk2MZezYM19hnDspvp5KI7TKF6uCmxujH6ONm3T
	 wdz8lOykGcbDtynatE8YnyFyssqIdYSz53P/y8drgkxTIf0N6zOdCDqpUE4ZkYdHr/
	 mc8BgZNuUNuzeSCaIghx9yvGSzZaiI/7PEXL6BSwRZkjDtLfFLlgx6V7Q/y8RIm1eN
	 LMe6d85jihzJ141PM0JSd6iEl61U4QfB7uGpj/3B+vMG8zlre2zNFA7ExYHdcA3xYT
	 hXQvX4JMY4prlzaWOsUao9ESSfiA69W+8UIRyOuC/Sc3L+RwCzooLSH7pwvZBa0/bc
	 B3v8FVktmLY+A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 77FA180B97;
	Mon, 10 Feb 2025 14:15:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2E4CC199
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 14:15:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 10AD260B4B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 14:15:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2_WRNNZc8c9E for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 14:15:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 36C4E60B1D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 36C4E60B1D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 36C4E60B1D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 14:15:07 +0000 (UTC)
X-CSE-ConnectionGUID: ZzyP5+3TTh2KL2BAadGVzQ==
X-CSE-MsgGUID: bAHAQ2C8TdyQvykFGCT5lA==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="39927472"
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="39927472"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 06:15:07 -0800
X-CSE-ConnectionGUID: SU6UcNeeR5+lnQS0hNY1/A==
X-CSE-MsgGUID: rKQrHTaBTvC7OYRAdpVdzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117421090"
Received: from gklab-003-001.igk.intel.com ([10.211.3.1])
 by orviesa005.jf.intel.com with ESMTP; 10 Feb 2025 06:15:04 -0800
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 10 Feb 2025 15:11:11 +0100
Message-Id: <20250210141112.3445723-3-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20250210141112.3445723-1-grzegorz.nitka@intel.com>
References: <20250210141112.3445723-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739196907; x=1770732907;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PPVkgZx+AtQtXQ8oeZE/FkHs7vyn7TFeR6ufEITPCVs=;
 b=mGIDevYBjFz+2C5FkQU12q2XhV22EQHzkc2zeIbJsnmevkHIl2i9FSQI
 DpoJphoqIYL20vyIxMCmQEBlMQz1QmaKiv7VQOyW8b8AQKABKJ4zsE8uc
 Jmjb9j/PjPUEfncFGl5OdJ0hGfxe0fiOll3yuLesge9wUXobM0dmihdiM
 bmdWLLN+wq4P+KZ19rXcOVOVXf7m74w2jA2OWRzsmI/T4cAlOxjc4df56
 ar3lCikgVBaoORbTM+CFApSf2sfU3o5K73tm27PJbFHlRfaWyE4jecN7k
 s6V7HEFomMZW2DkKyuHgMaIggMy+bEw84PP3xjJFrnaifPAJGifNX85J6
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mGIDevYB
Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/3] ice: Refactor E825C PHY
 registers info struct
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
 anthony.l.nguyen@intel.com, horms@kernel.org, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Karol Kolacinski <karol.kolacinski@intel.com>

Simplify ice_phy_reg_info_eth56g struct definition to include base
address for the very first quad. Use base address info and 'step'
value to determine address for specific PHY quad.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 .../net/ethernet/intel/ice/ice_ptp_consts.h   | 75 ++++---------------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  6 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  4 +-
 3 files changed, 20 insertions(+), 65 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
index ac46d1183300..003cdfada3ca 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
@@ -10,70 +10,25 @@
 /* Constants defined for the PTP 1588 clock hardware. */
 
 const struct ice_phy_reg_info_eth56g eth56g_phy_res[NUM_ETH56G_PHY_RES] = {
-	/* ETH56G_PHY_REG_PTP */
-	{
-		/* base_addr */
-		{
-			0x092000,
-			0x126000,
-			0x1BA000,
-			0x24E000,
-			0x2E2000,
-		},
-		/* step */
-		0x98,
+	[ETH56G_PHY_REG_PTP] = {
+		.base_addr = 0x092000,
+		.step = 0x98,
 	},
-	/* ETH56G_PHY_MEM_PTP */
-	{
-		/* base_addr */
-		{
-			0x093000,
-			0x127000,
-			0x1BB000,
-			0x24F000,
-			0x2E3000,
-		},
-		/* step */
-		0x200,
+	[ETH56G_PHY_MEM_PTP] = {
+		.base_addr = 0x093000,
+		.step = 0x200,
 	},
-	/* ETH56G_PHY_REG_XPCS */
-	{
-		/* base_addr */
-		{
-			0x000000,
-			0x009400,
-			0x128000,
-			0x1BC000,
-			0x250000,
-		},
-		/* step */
-		0x21000,
+	[ETH56G_PHY_REG_XPCS] = {
+		.base_addr = 0x000000,
+		.step = 0x21000,
 	},
-	/* ETH56G_PHY_REG_MAC */
-	{
-		/* base_addr */
-		{
-			0x085000,
-			0x119000,
-			0x1AD000,
-			0x241000,
-			0x2D5000,
-		},
-		/* step */
-		0x1000,
+	[ETH56G_PHY_REG_MAC] = {
+		.base_addr = 0x085000,
+		.step = 0x1000,
 	},
-	/* ETH56G_PHY_REG_GPCS */
-	{
-		/* base_addr */
-		{
-			0x084000,
-			0x118000,
-			0x1AC000,
-			0x240000,
-			0x2D4000,
-		},
-		/* step */
-		0x400,
+	[ETH56G_PHY_REG_GPCS] = {
+		.base_addr = 0x084000,
+		.step = 0x400,
 	},
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index fbaf2819e40e..89bb8461284a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -1010,7 +1010,7 @@ static int ice_phy_res_address_eth56g(struct ice_hw *hw, u8 lane,
 
 	/* Lanes 4..7 are in fact 0..3 on a second PHY */
 	lane %= hw->ptp.ports_per_phy;
-	*addr = eth56g_phy_res[res_type].base[0] +
+	*addr = eth56g_phy_res[res_type].base_addr +
 		lane * eth56g_phy_res[res_type].step + offset;
 
 	return 0;
@@ -1240,7 +1240,7 @@ static int ice_write_quad_ptp_reg_eth56g(struct ice_hw *hw, u8 port,
 	if (port >= hw->ptp.num_lports)
 		return -EIO;
 
-	addr = eth56g_phy_res[ETH56G_PHY_REG_PTP].base[0] + offset;
+	addr = eth56g_phy_res[ETH56G_PHY_REG_PTP].base_addr + offset;
 
 	return ice_write_phy_eth56g(hw, port, addr, val);
 }
@@ -1265,7 +1265,7 @@ static int ice_read_quad_ptp_reg_eth56g(struct ice_hw *hw, u8 port,
 	if (port >= hw->ptp.num_lports)
 		return -EIO;
 
-	addr = eth56g_phy_res[ETH56G_PHY_REG_PTP].base[0] + offset;
+	addr = eth56g_phy_res[ETH56G_PHY_REG_PTP].base_addr + offset;
 
 	return ice_read_phy_eth56g(hw, port, addr, val);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 8442d1d60351..cca81391b6ad 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -65,14 +65,14 @@ enum ice_eth56g_link_spd {
 
 /**
  * struct ice_phy_reg_info_eth56g - ETH56G PHY register parameters
- * @base: base address for each PHY block
+ * @base_addr: base address for each PHY block
  * @step: step between PHY lanes
  *
  * Characteristic information for the various PHY register parameters in the
  * ETH56G devices
  */
 struct ice_phy_reg_info_eth56g {
-	u32 base[NUM_ETH56G_PHY_RES];
+	u32 base_addr;
 	u32 step;
 };
 
-- 
2.39.3

