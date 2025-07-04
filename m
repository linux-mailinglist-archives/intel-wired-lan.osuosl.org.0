Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E2CC2AF9326
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jul 2025 14:52:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 69EDD40D1D;
	Fri,  4 Jul 2025 12:52:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Yqf35H6e-C5T; Fri,  4 Jul 2025 12:52:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BEF0740D2E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751633535;
	bh=cqvHr1SItF7KaCFRb/3Cen6ulTAvJveYU7sZY7+Jenc=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5R9loemPR4umDM4Hz+U+ZQJRRQusdkyd2uT6kSwbu7MLDxCY0P8qEBqeoZ+JSd7g+
	 66yhpG4Q9EisDISTNxiPtEjWrcnf7EvDOlYKOQUAzIIeAhyUQhg6a3/FdzViOVy3wV
	 YwUQHV1Uh9FQpHM8ZekbGFS/Ujt7ZGYURv7Q0tzaSotN2K4Qqni7T8qWmfOifAvoq8
	 o0tfXqghioTwDJ5feyVTNeQ5UvBuvJrq9X02z1s2cXXnXTGD+AaNzK98Ve+6R2rIW2
	 ALWpPAlHcgDXNN84fRSW8xg8vFYEk/GeuCu7AbMyHSjg81+sq1EOWOqXRwmPU3SzXi
	 20EB02IZov0/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BEF0740D2E;
	Fri,  4 Jul 2025 12:52:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1F14D15F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 12:52:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 10E5040367
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 12:52:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4y--OwHNwUbZ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jul 2025 12:52:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3B82840106
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B82840106
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3B82840106
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 12:52:13 +0000 (UTC)
X-CSE-ConnectionGUID: FkIpngAXTHS0kYdRPoXzgA==
X-CSE-MsgGUID: PPSS66RLR02cF+qbDW4JWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11483"; a="64660136"
X-IronPort-AV: E=Sophos;i="6.16,287,1744095600"; d="scan'208";a="64660136"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2025 05:52:13 -0700
X-CSE-ConnectionGUID: UvMSU6XUScas0Yn5Y0BKvQ==
X-CSE-MsgGUID: ClfXJyNQStOm6u6sB87fig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,287,1744095600"; d="scan'208";a="154764656"
Received: from amlin-018-252.igk.intel.com ([10.102.18.252])
 by orviesa007.jf.intel.com with ESMTP; 04 Jul 2025 05:52:11 -0700
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, andrew@lunn.ch, pmenzel@molgen.mpg.de,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Fri,  4 Jul 2025 15:06:24 +0200
Message-ID: <20250704130624.372651-1-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751633533; x=1783169533;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UpJO7tHztgaENI7GQIg23EKFxr+O+WGUa8QjAu6KUcw=;
 b=S/IYOStY/iuRRZEnCK4WewgtdChyNJVD227fwManc6mNzOdMlmEDQ7Y9
 qho4r2WR8kMIzjsxiAHSe0q/D4QjBHcc5QbnKGtBK68KAs0eHyG2C/OJL
 q8IC9v++GR14Oqn2of8ayUDXiiHzbpi03AK+KURAve01P3Fc/G6sTK5Vw
 XklC6XzXUasAoL9+8QUZooWjGJi3/ZAYVTxEtM9Igo8x5jNrlZCpPXpJL
 u3LpopwqKgvSsVHrwdVnfEu1VPUrIJ3Ch2ZKRoFLWqcOzuS6yXeGYUF4y
 75/z5iBadXdKh6JOrQYL4LKnB9zqGkXA6s2O0O+GRighAcxFkdFnnYRnQ
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=S/IYOStY
Subject: [Intel-wired-lan] [iwl-next v2] ixgbe: add the 2.5G and 5G speeds
 in auto-negotiation for E610
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

The auto-negotiation limitation for 2.5G and 5G speeds is no longer true
for X550 successors like E610 adapter. Enable the 2.5G and 5G speeds in
auto-negotiation for E610 at driver load.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
v1 -> v2
  More details in commit message
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

