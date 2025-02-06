Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA98A2A361
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2025 09:40:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E48F44179B;
	Thu,  6 Feb 2025 08:40:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ne6hRTiwWQLe; Thu,  6 Feb 2025 08:40:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6719417B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738831235;
	bh=V54u9ZzugiDpcdzOFFpxEk5d8PCryyND/B9xwzW3wTQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HOZS3znqR9gWXtyOBJHtdHG0lHFFp95f+jR6iTAtVTUWHNrm10M9+7hCFZyzFGGf7
	 M19OAIxjerJKbCinqSiCfJYBCD3sRkVVEz+gacVl9hM5ZX+6DwK6CRjAl/gDx7TSGG
	 YQFT15k78TPw4kft/Wi8liVPfpGpks8LaUbH2i8PPMkmZGD4F9GB9DhpoAE1nOBlLj
	 00GVYI3xQmKhStAzPurTDc+uS8YnOeHM2UwKqpBnrRW7k+78M9IirLnWD+4BZ4dLmJ
	 /eBrjfuB9Mj7YD0fvQEROeHUKK/xBFTfW+5HehYrL6rrCOoNYepSDMMXUf85bdhvTx
	 a98ObwXKp2jXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C6719417B7;
	Thu,  6 Feb 2025 08:40:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C630C12F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 08:40:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ABB37817A5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 08:40:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WOaQb8kf_8G7 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2025 08:40:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B42E681649
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B42E681649
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B42E681649
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 08:40:32 +0000 (UTC)
X-CSE-ConnectionGUID: 3bHcmhsASj6ErWD3jSbB8w==
X-CSE-MsgGUID: 0AKGbXrsSWC+DSSa6zDlZg==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="49667826"
X-IronPort-AV: E=Sophos;i="6.13,264,1732608000"; d="scan'208";a="49667826"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 00:40:32 -0800
X-CSE-ConnectionGUID: TsBTAi/DS6C1xxtiXa07Zg==
X-CSE-MsgGUID: pTCpoKX1TAeou44rFB7xMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,264,1732608000"; d="scan'208";a="110979390"
Received: from gklab-003-001.igk.intel.com ([10.211.3.1])
 by fmviesa006.fm.intel.com with ESMTP; 06 Feb 2025 00:40:31 -0800
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Feb 2025 09:36:54 +0100
Message-Id: <20250206083655.3005151-3-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20250206083655.3005151-1-grzegorz.nitka@intel.com>
References: <20250206083655.3005151-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738831233; x=1770367233;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z6PGNnGXoikoYsPEQiGiz3uQUXRt68IyszS2WX20zE0=;
 b=H2nDE6Q/+lUB/LgEzOE26Sci1bh9awVYufI/qkVWwP1ivJqwUjWjG2z3
 PCwcphTAMEG4OfZ9lf7ryLSeIaHtPCJkVbOKYVKo9zaKZwjjTsMLt06cs
 AzVzQqXotziVhXNXOh7dWok8XW8OO/KBT2WK4O98v9MrZLz1ECS5Gqo4U
 RiASudYxmuXkh3ub3qdzJj8FY0N0d6n/26hU+3su7a+nC+RRFkrEdH0RX
 hzA14NA7CRr+FFWNuwA8D0JZTkqQCHGwcS6+DXZeHYW3BTgtNH3egLdus
 NEpwVvdPgh0fH2aqNCnM51HPtjTi/qEux1MZdAGiCSICVej4+3RJAtxGy
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H2nDE6Q/
Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/3] ice: Refactor E825C PHY
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
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
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
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  2 +-
 3 files changed, 19 insertions(+), 64 deletions(-)

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
index c3dea6d61de4..5c61bc3a2c25 100644
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
index 10295fa9a383..63a63ef64aaa 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -72,7 +72,7 @@ enum ice_eth56g_link_spd {
  * ETH56G devices
  */
 struct ice_phy_reg_info_eth56g {
-	u32 base[NUM_ETH56G_PHY_RES];
+	u32 base_addr;
 	u32 step;
 };
 
-- 
2.39.3

