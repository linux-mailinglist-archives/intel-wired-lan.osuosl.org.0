Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D71CCAF7642
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Jul 2025 15:55:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2D3DC83B23;
	Thu,  3 Jul 2025 13:55:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q2XepSrA6LM1; Thu,  3 Jul 2025 13:55:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 974D683B18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751550908;
	bh=kT7E1uKEPvpRG5hov7aWmqu7fUH17xT9FDSRsK/g6XY=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=jG2Ut3peYzthTrd32p2OvD2eFYY6efA48ngbml8TjnoBi4mIb03z2GvJdc1/dvnzC
	 KWXXdGpPS41P8CVNqVfyNMCJSArLa+QYmRjNZ8QWm2V0AndStWzyaFbC+2/E6elGTP
	 8NouozgTwIswVzdi78EbCvbV9e9j/+++AgtA6M8bHY7MlprLyQCv9yRw+83Gv1kepa
	 FJaMSwqJ7KZ+ZT94eLD7n7QQQ3DW549RoSgKf0XfFO+dCUOiqbaUsOElC8eL3VfuZc
	 GuDwzm/V5IIFTG23Vb5JoXlQPU/5ldQUwt0W9XEbkubDgUE7HnoQzfuiZPtzB8DHHW
	 QHrpVwsOL3CBg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 974D683B18;
	Thu,  3 Jul 2025 13:55:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 930AC128
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jul 2025 13:55:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 78A144077D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jul 2025 13:55:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZBW4M_Sz-rYy for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Jul 2025 13:55:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0A97840778
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0A97840778
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0A97840778
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jul 2025 13:55:05 +0000 (UTC)
X-CSE-ConnectionGUID: M2ChPaXyTMqNwuzlWz3JeQ==
X-CSE-MsgGUID: zy51th8kSVGXMm9BF9xYUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11483"; a="57686475"
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="57686475"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 06:55:05 -0700
X-CSE-ConnectionGUID: qk/NDg/CQqGXpK88qOdaeQ==
X-CSE-MsgGUID: Tcy81jYfStyVG4fhdZsddQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="153790451"
Received: from amlin-018-252.igk.intel.com ([10.102.18.252])
 by orviesa010.jf.intel.com with ESMTP; 03 Jul 2025 06:55:04 -0700
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, andrew@lunn.ch,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Thu,  3 Jul 2025 16:09:18 +0200
Message-ID: <20250703140918.287365-1-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751550906; x=1783086906;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+54lP9mDg81fXI9UcMd+4iV2j0kH4ZJuSiWgoz5VMp4=;
 b=YZRXmPws6sSFOtGXI4fz08oUDju9i4cgoDS4//YgubPvpv0lVcOfIKMH
 u+9GcqfTIPXnb7VTVb60yIhx6U1e2cGBNA4DTD62hhZHURxXk6QhURHEf
 ODeugxI4Iok999QzEL2DNq6PEHpDeVuvz861CvDZUc+tCONumnjhR7SFc
 OGvEd4dOhzM6iocGWzzleGmUel/xcnelbHQiHGYodZQCWbsXTgilOJvXG
 hFY6dvC1S0h70Pw60ZX05GyL4pCVkNzdgc0K2uItfj8y/nR0Hx9ke542q
 c/o1eZmwrD0Y5XgVGdYs3WHSSvcmpyv5TTyfq/xxdTA9nCOT4cqo1YQgF
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YZRXmPws
Subject: [Intel-wired-lan] [iwl-next] ixgbe: add the 2.5G and 5G speed in
 auto-negotiation for E610
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

Enable the 2.5G and 5G speed in auto-negotiation for E610 at driver load.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 35 +++++++------------
 1 file changed, 12 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index d741164..b202639 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -1953,6 +1953,16 @@ int ixgbe_identify_phy_e610(struct ixgbe_hw *hw)
 	    phy_type_low  & IXGBE_PHY_TYPE_LOW_1G_SGMII    ||
 	    phy_type_high & IXGBE_PHY_TYPE_HIGH_1G_USXGMII)
 		hw->phy.speeds_supported |= IXGBE_LINK_SPEED_1GB_FULL;
+	if (phy_type_low  & IXGBE_PHY_TYPE_LOW_2500BASE_T   ||
+	    phy_type_low  & IXGBE_PHY_TYPE_LOW_2500BASE_X   ||
+	    phy_type_low  & IXGBE_PHY_TYPE_LOW_2500BASE_KX  ||
+	    phy_type_high & IXGBE_PHY_TYPE_HIGH_2500M_SGMII ||
+	    phy_type_high & IXGBE_PHY_TYPE_HIGH_2500M_USXGMII)
+		hw->phy.speeds_supported |= IXGBE_LINK_SPEED_2_5GB_FULL;
+	if (phy_type_low  & IXGBE_PHY_TYPE_LOW_5GBASE_T  ||
+	    phy_type_low  & IXGBE_PHY_TYPE_LOW_5GBASE_KR ||
+	    phy_type_high & IXGBE_PHY_TYPE_HIGH_5G_USXGMII)
+		hw->phy.speeds_supported |= IXGBE_LINK_SPEED_5GB_FULL;
 	if (phy_type_low  & IXGBE_PHY_TYPE_LOW_10GBASE_T       ||
 	    phy_type_low  & IXGBE_PHY_TYPE_LOW_10G_SFI_DA      ||
 	    phy_type_low  & IXGBE_PHY_TYPE_LOW_10GBASE_SR      ||
@@ -1963,31 +1973,10 @@ int ixgbe_identify_phy_e610(struct ixgbe_hw *hw)
 	    phy_type_high & IXGBE_PHY_TYPE_HIGH_10G_USXGMII)
 		hw->phy.speeds_supported |= IXGBE_LINK_SPEED_10GB_FULL;
 
-	/* 2.5 and 5 Gbps link speeds must be excluded from the
-	 * auto-negotiation set used during driver initialization due to
-	 * compatibility issues with certain switches. Those issues do not
-	 * exist in case of E610 2.5G SKU device (0x57b1).
-	 */
-	if (!hw->phy.autoneg_advertised &&
-	    hw->device_id != IXGBE_DEV_ID_E610_2_5G_T)
+	/* Initialize autoneg speeds */
+	if (!hw->phy.autoneg_advertised)
 		hw->phy.autoneg_advertised = hw->phy.speeds_supported;
 
-	if (phy_type_low  & IXGBE_PHY_TYPE_LOW_2500BASE_T   ||
-	    phy_type_low  & IXGBE_PHY_TYPE_LOW_2500BASE_X   ||
-	    phy_type_low  & IXGBE_PHY_TYPE_LOW_2500BASE_KX  ||
-	    phy_type_high & IXGBE_PHY_TYPE_HIGH_2500M_SGMII ||
-	    phy_type_high & IXGBE_PHY_TYPE_HIGH_2500M_USXGMII)
-		hw->phy.speeds_supported |= IXGBE_LINK_SPEED_2_5GB_FULL;
-
-	if (!hw->phy.autoneg_advertised &&
-	    hw->device_id == IXGBE_DEV_ID_E610_2_5G_T)
-		hw->phy.autoneg_advertised = hw->phy.speeds_supported;
-
-	if (phy_type_low  & IXGBE_PHY_TYPE_LOW_5GBASE_T  ||
-	    phy_type_low  & IXGBE_PHY_TYPE_LOW_5GBASE_KR ||
-	    phy_type_high & IXGBE_PHY_TYPE_HIGH_5G_USXGMII)
-		hw->phy.speeds_supported |= IXGBE_LINK_SPEED_5GB_FULL;
-
 	/* Set PHY ID */
 	memcpy(&hw->phy.id, pcaps.phy_id_oui, sizeof(u32));
 
-- 
2.47.1

