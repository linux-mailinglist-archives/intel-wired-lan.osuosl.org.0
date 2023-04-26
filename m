Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0B96EFA87
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Apr 2023 20:57:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D51F783C48;
	Wed, 26 Apr 2023 18:57:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D51F783C48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682535459;
	bh=JQQR4YmeuBQPLbTgyAMNHHH04MBbydZvcqe4x4hw/wo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=shHwrBSACjZUv8AQGfetpuiN8+L/XJIgnJZAttclnSvEtPyASzP8P7VD3jyTurYyh
	 oxiPp4lgLJYIikj+l2w15SPqXyOdyuinkuwCjQAlVjDfyO7yKprN8WeJvz8jhVL3GA
	 ibz7BEpjkUznvwzPEbChpEOzw5rVvbIJVDVax5Q2gZLWsQvNL2NZK5o5jM3BHVF911
	 0tUJHVYKkPxMzmjWVfFF3i5waJqMPx5bXqdmo9VrJH2c/qL8kMnoBiqq/RjhFJL0WK
	 eK1DW3RbcfflrCi2KtQUQQm7NSJCAk7gtvOYemFy9bMbRAQJrSL5/3IXhcNcWG95XH
	 /nVP9JKm3UluQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 21v1yV7jjruF; Wed, 26 Apr 2023 18:57:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 40CF183C39;
	Wed, 26 Apr 2023 18:57:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 40CF183C39
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9E5091BF5AE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Apr 2023 18:57:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 757C4607E1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Apr 2023 18:57:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 757C4607E1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id naAC-CLabBLA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Apr 2023 18:57:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 036FB60F4A
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 036FB60F4A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Apr 2023 18:57:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="327529662"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="327529662"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 11:57:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="868396231"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="868396231"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.168])
 by orsmga005.jf.intel.com with ESMTP; 26 Apr 2023 11:57:08 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 26 Apr 2023 11:50:46 -0700
Message-Id: <20230426185047.725910-2-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230426185047.725910-1-paul.greenwalt@intel.com>
References: <20230426185047.725910-1-paul.greenwalt@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682535445; x=1714071445;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zkd1xOG5NKj+rtaI9iHYcYx5XRino6LnQwWlpIFrHFE=;
 b=LvEEjUdqhTWQGZw0JHgDpOh90YaCZ6qN8yQ8WwpxQUnxseVr7RmqCHfP
 qTYl7XQiMCCf4rRB4Jnu1fvYq14SMwjyHhHvtZdSXDzzBiB22c5jj4vq7
 j3zNzgcl/P/G4BbvNb3EdXmBESWXBdg2WD5eCD9XTeeUSVu8CDu3Gn6V2
 Nn8gcviV+50mEudxhh47PktTlVIICVk4l0d2Q8DUwudJvgxWFOc9qp6N8
 iEZHuFjm5a1BuEm7vjexwM2eEpcsUiNIhl/hO1OLRINJKYQ8nsLNyyuDg
 Vfy6fe7n043Ur1MkPZj3ETlEpMqjGVKU9gN2m5CUEH//QHenWc19XB99y
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LvEEjUdq
Subject: [Intel-wired-lan] [PATCH net 2/3] ice: refactor PHY type to ethtool
 link mode
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Refactor ice_phy_type_to_ethtool to use phy_type_[low|high]_lkup table to
map PHY type to AQ link speed and ethtool link mode. This removes
complexity and simplifies future changes.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |   1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 309 +++----------------
 drivers/net/ethernet/intel/ice/ice_ethtool.h | 105 +++++++
 3 files changed, 141 insertions(+), 274 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_ethtool.h

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index d637032c8139..8b016511561f 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -32,6 +32,7 @@
 #include <linux/pkt_sched.h>
 #include <linux/if_bridge.h>
 #include <linux/ctype.h>
+#include <linux/linkmode.h>
 #include <linux/bpf.h>
 #include <linux/btf.h>
 #include <linux/auxiliary_bus.h>
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 8407c7175cf6..8d5cbbd0b3d5 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -4,6 +4,7 @@
 /* ethtool support for ice */
 
 #include "ice.h"
+#include "ice_ethtool.h"
 #include "ice_flow.h"
 #include "ice_fltr.h"
 #include "ice_lib.h"
@@ -1658,15 +1659,26 @@ ice_mask_min_supported_speeds(struct ice_hw *hw,
 		*phy_types_low &= ~ICE_PHY_TYPE_LOW_MASK_MIN_1G;
 }
 
-#define ice_ethtool_advertise_link_mode(aq_link_speed, ethtool_link_mode)    \
-	do {								     \
-		if (req_speeds & (aq_link_speed) ||			     \
-		    (!req_speeds &&					     \
-		     (advert_phy_type_lo & phy_type_mask_lo ||		     \
-		      advert_phy_type_hi & phy_type_mask_hi)))		     \
-			ethtool_link_ksettings_add_link_mode(ks, advertising,\
-							ethtool_link_mode);  \
-	} while (0)
+/**
+ * ice_linkmode_set_bit - set link mode bit
+ * @phy_to_ethtool: PHY type to ethtool link mode struct to set
+ * @ks: ethtool link ksettings struct to fill out
+ * @req_speeds: speed requested by user
+ * @advert_phy_type: advertised PHY type
+ * @phy_type: PHY type
+ */
+static void
+ice_linkmode_set_bit(const struct ice_phy_type_to_ethtool *phy_to_ethtool,
+		     struct ethtool_link_ksettings *ks, u32 req_speeds,
+		     u64 advert_phy_type, u32 phy_type)
+{
+	linkmode_set_bit(phy_to_ethtool->link_mode, ks->link_modes.supported);
+
+	if (req_speeds & phy_to_ethtool->aq_link_speed ||
+	    (!req_speeds && advert_phy_type & BIT(phy_type)))
+		linkmode_set_bit(phy_to_ethtool->link_mode,
+				 ks->link_modes.advertising);
+}
 
 /**
  * ice_phy_type_to_ethtool - convert the phy_types to ethtool link modes
@@ -1682,11 +1694,10 @@ ice_phy_type_to_ethtool(struct net_device *netdev,
 	struct ice_pf *pf = vsi->back;
 	u64 advert_phy_type_lo = 0;
 	u64 advert_phy_type_hi = 0;
-	u64 phy_type_mask_lo = 0;
-	u64 phy_type_mask_hi = 0;
 	u64 phy_types_high = 0;
 	u64 phy_types_low = 0;
-	u16 req_speeds;
+	u32 req_speeds;
+	u32 i;
 
 	req_speeds = vsi->port_info->phy.link_info.req_speeds;
 
@@ -1743,272 +1754,22 @@ ice_phy_type_to_ethtool(struct net_device *netdev,
 		advert_phy_type_hi = vsi->port_info->phy.phy_type_high;
 	}
 
-	ethtool_link_ksettings_zero_link_mode(ks, supported);
-	ethtool_link_ksettings_zero_link_mode(ks, advertising);
-
-	phy_type_mask_lo = ICE_PHY_TYPE_LOW_100BASE_TX |
-			   ICE_PHY_TYPE_LOW_100M_SGMII;
-	if (phy_types_low & phy_type_mask_lo) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     100baseT_Full);
-
-		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_100MB,
-						100baseT_Full);
-	}
-
-	phy_type_mask_lo = ICE_PHY_TYPE_LOW_1000BASE_T |
-			   ICE_PHY_TYPE_LOW_1G_SGMII;
-	if (phy_types_low & phy_type_mask_lo) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     1000baseT_Full);
-		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_1000MB,
-						1000baseT_Full);
-	}
-
-	phy_type_mask_lo = ICE_PHY_TYPE_LOW_1000BASE_KX;
-	if (phy_types_low & phy_type_mask_lo) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     1000baseKX_Full);
-		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_1000MB,
-						1000baseKX_Full);
-	}
-
-	phy_type_mask_lo = ICE_PHY_TYPE_LOW_1000BASE_SX |
-			   ICE_PHY_TYPE_LOW_1000BASE_LX;
-	if (phy_types_low & phy_type_mask_lo) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     1000baseX_Full);
-		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_1000MB,
-						1000baseX_Full);
-	}
-
-	phy_type_mask_lo = ICE_PHY_TYPE_LOW_2500BASE_T;
-	if (phy_types_low & phy_type_mask_lo) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     2500baseT_Full);
-		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_2500MB,
-						2500baseT_Full);
-	}
-
-	phy_type_mask_lo = ICE_PHY_TYPE_LOW_2500BASE_X |
-			   ICE_PHY_TYPE_LOW_2500BASE_KX;
-	if (phy_types_low & phy_type_mask_lo) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     2500baseX_Full);
-		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_2500MB,
-						2500baseX_Full);
-	}
-
-	phy_type_mask_lo = ICE_PHY_TYPE_LOW_5GBASE_T |
-			   ICE_PHY_TYPE_LOW_5GBASE_KR;
-	if (phy_types_low & phy_type_mask_lo) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     5000baseT_Full);
-		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_5GB,
-						5000baseT_Full);
-	}
-
-	phy_type_mask_lo = ICE_PHY_TYPE_LOW_10GBASE_T |
-			   ICE_PHY_TYPE_LOW_10G_SFI_DA |
-			   ICE_PHY_TYPE_LOW_10G_SFI_AOC_ACC |
-			   ICE_PHY_TYPE_LOW_10G_SFI_C2C;
-	if (phy_types_low & phy_type_mask_lo) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     10000baseT_Full);
-		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_10GB,
-						10000baseT_Full);
-	}
-
-	phy_type_mask_lo = ICE_PHY_TYPE_LOW_10GBASE_KR_CR1;
-	if (phy_types_low & phy_type_mask_lo) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     10000baseKR_Full);
-		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_10GB,
-						10000baseKR_Full);
-	}
-
-	phy_type_mask_lo = ICE_PHY_TYPE_LOW_10GBASE_SR;
-	if (phy_types_low & phy_type_mask_lo) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     10000baseSR_Full);
-		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_10GB,
-						10000baseSR_Full);
-	}
-
-	phy_type_mask_lo = ICE_PHY_TYPE_LOW_10GBASE_LR;
-	if (phy_types_low & phy_type_mask_lo) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     10000baseLR_Full);
-		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_10GB,
-						10000baseLR_Full);
-	}
-
-	phy_type_mask_lo = ICE_PHY_TYPE_LOW_25GBASE_T |
-			   ICE_PHY_TYPE_LOW_25GBASE_CR |
-			   ICE_PHY_TYPE_LOW_25GBASE_CR_S |
-			   ICE_PHY_TYPE_LOW_25GBASE_CR1 |
-			   ICE_PHY_TYPE_LOW_25G_AUI_AOC_ACC |
-			   ICE_PHY_TYPE_LOW_25G_AUI_C2C;
-	if (phy_types_low & phy_type_mask_lo) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     25000baseCR_Full);
-		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_25GB,
-						25000baseCR_Full);
-	}
-
-	phy_type_mask_lo = ICE_PHY_TYPE_LOW_25GBASE_SR |
-			   ICE_PHY_TYPE_LOW_25GBASE_LR;
-	if (phy_types_low & phy_type_mask_lo) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     25000baseSR_Full);
-		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_25GB,
-						25000baseSR_Full);
-	}
-
-	phy_type_mask_lo = ICE_PHY_TYPE_LOW_25GBASE_KR |
-			   ICE_PHY_TYPE_LOW_25GBASE_KR_S |
-			   ICE_PHY_TYPE_LOW_25GBASE_KR1;
-	if (phy_types_low & phy_type_mask_lo) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     25000baseKR_Full);
-		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_25GB,
-						25000baseKR_Full);
-	}
-
-	phy_type_mask_lo = ICE_PHY_TYPE_LOW_40GBASE_KR4;
-	if (phy_types_low & phy_type_mask_lo) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     40000baseKR4_Full);
-		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_40GB,
-						40000baseKR4_Full);
-	}
-
-	phy_type_mask_lo = ICE_PHY_TYPE_LOW_40GBASE_CR4 |
-			   ICE_PHY_TYPE_LOW_40G_XLAUI_AOC_ACC |
-			   ICE_PHY_TYPE_LOW_40G_XLAUI;
-	if (phy_types_low & phy_type_mask_lo) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     40000baseCR4_Full);
-		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_40GB,
-						40000baseCR4_Full);
-	}
-
-	phy_type_mask_lo = ICE_PHY_TYPE_LOW_40GBASE_SR4;
-	if (phy_types_low & phy_type_mask_lo) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     40000baseSR4_Full);
-		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_40GB,
-						40000baseSR4_Full);
-	}
-
-	phy_type_mask_lo = ICE_PHY_TYPE_LOW_40GBASE_LR4;
-	if (phy_types_low & phy_type_mask_lo) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     40000baseLR4_Full);
-		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_40GB,
-						40000baseLR4_Full);
-	}
-
-	phy_type_mask_lo = ICE_PHY_TYPE_LOW_50GBASE_CR2 |
-			   ICE_PHY_TYPE_LOW_50G_LAUI2_AOC_ACC |
-			   ICE_PHY_TYPE_LOW_50G_LAUI2 |
-			   ICE_PHY_TYPE_LOW_50G_AUI2_AOC_ACC |
-			   ICE_PHY_TYPE_LOW_50G_AUI2 |
-			   ICE_PHY_TYPE_LOW_50GBASE_CP |
-			   ICE_PHY_TYPE_LOW_50GBASE_SR |
-			   ICE_PHY_TYPE_LOW_50G_AUI1_AOC_ACC |
-			   ICE_PHY_TYPE_LOW_50G_AUI1;
-	if (phy_types_low & phy_type_mask_lo) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     50000baseCR2_Full);
-		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_50GB,
-						50000baseCR2_Full);
-	}
-
-	phy_type_mask_lo = ICE_PHY_TYPE_LOW_50GBASE_KR2 |
-			   ICE_PHY_TYPE_LOW_50GBASE_KR_PAM4;
-	if (phy_types_low & phy_type_mask_lo) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     50000baseKR2_Full);
-		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_50GB,
-						50000baseKR2_Full);
-	}
-
-	phy_type_mask_lo = ICE_PHY_TYPE_LOW_50GBASE_SR2 |
-			   ICE_PHY_TYPE_LOW_50GBASE_LR2 |
-			   ICE_PHY_TYPE_LOW_50GBASE_FR |
-			   ICE_PHY_TYPE_LOW_50GBASE_LR;
-	if (phy_types_low & phy_type_mask_lo) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     50000baseSR2_Full);
-		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_50GB,
-						50000baseSR2_Full);
-	}
-
-	phy_type_mask_lo = ICE_PHY_TYPE_LOW_100GBASE_CR4 |
-			   ICE_PHY_TYPE_LOW_100G_CAUI4_AOC_ACC |
-			   ICE_PHY_TYPE_LOW_100G_CAUI4 |
-			   ICE_PHY_TYPE_LOW_100G_AUI4_AOC_ACC |
-			   ICE_PHY_TYPE_LOW_100G_AUI4 |
-			   ICE_PHY_TYPE_LOW_100GBASE_CR_PAM4;
-	phy_type_mask_hi = ICE_PHY_TYPE_HIGH_100G_CAUI2_AOC_ACC |
-			   ICE_PHY_TYPE_HIGH_100G_CAUI2 |
-			   ICE_PHY_TYPE_HIGH_100G_AUI2_AOC_ACC |
-			   ICE_PHY_TYPE_HIGH_100G_AUI2;
-	if (phy_types_low & phy_type_mask_lo ||
-	    phy_types_high & phy_type_mask_hi) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     100000baseCR4_Full);
-		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_100GB,
-						100000baseCR4_Full);
-	}
-
-	if (phy_types_low & ICE_PHY_TYPE_LOW_100GBASE_CP2) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     100000baseCR2_Full);
-		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_100GB,
-						100000baseCR2_Full);
-	}
-
-	if (phy_types_low & ICE_PHY_TYPE_LOW_100GBASE_SR4) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     100000baseSR4_Full);
-		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_100GB,
-						100000baseSR4_Full);
-	}
-
-	if (phy_types_low & ICE_PHY_TYPE_LOW_100GBASE_SR2) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     100000baseSR2_Full);
-		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_100GB,
-						100000baseSR2_Full);
-	}
-
-	phy_type_mask_lo = ICE_PHY_TYPE_LOW_100GBASE_LR4 |
-			   ICE_PHY_TYPE_LOW_100GBASE_DR;
-	if (phy_types_low & phy_type_mask_lo) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     100000baseLR4_ER4_Full);
-		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_100GB,
-						100000baseLR4_ER4_Full);
-	}
+	linkmode_zero(ks->link_modes.supported);
+	linkmode_zero(ks->link_modes.advertising);
 
-	phy_type_mask_lo = ICE_PHY_TYPE_LOW_100GBASE_KR4 |
-			   ICE_PHY_TYPE_LOW_100GBASE_KR_PAM4;
-	if (phy_types_low & phy_type_mask_lo) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     100000baseKR4_Full);
-		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_100GB,
-						100000baseKR4_Full);
+	for (i = 0; i < BITS_PER_TYPE(u64); i++) {
+		if (phy_types_low & BIT_ULL(i))
+			ice_linkmode_set_bit(&phy_type_low_lkup[i], ks,
+					     req_speeds, advert_phy_type_lo,
+					     i);
 	}
 
-	if (phy_types_high & ICE_PHY_TYPE_HIGH_100GBASE_KR2_PAM4) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     100000baseKR2_Full);
-		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_100GB,
-						100000baseKR2_Full);
+	for (i = 0; i < BITS_PER_TYPE(u64); i++) {
+		if (phy_types_high & BIT_ULL(i))
+			ice_linkmode_set_bit(&phy_type_high_lkup[i], ks,
+					     req_speeds, advert_phy_type_hi,
+					     i);
 	}
-
 }
 
 #define TEST_SET_BITS_TIMEOUT	50
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.h b/drivers/net/ethernet/intel/ice/ice_ethtool.h
new file mode 100644
index 000000000000..00043ea9469a
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.h
@@ -0,0 +1,105 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2023 Intel Corporation */
+
+#ifndef _ICE_ETHTOOL_H_
+#define _ICE_ETHTOOL_H_
+
+struct ice_phy_type_to_ethtool {
+	u64 aq_link_speed;
+	u8 link_mode;
+};
+
+/* Macro to make PHY type to Ethtool link mode table entry.
+ * The index is the PHY type.
+ */
+#define ICE_PHY_TYPE(LINK_SPEED, ETHTOOL_LINK_MODE) {\
+	.aq_link_speed = ICE_AQ_LINK_SPEED_##LINK_SPEED, \
+	.link_mode = ETHTOOL_LINK_MODE_##ETHTOOL_LINK_MODE##_BIT, \
+}
+
+/* Lookup table mapping PHY type low to link speed and Ethtool link modes.
+ * Array index corresponds to HW PHY type bit, see
+ * ice_adminq_cmd.h:ICE_PHY_TYPE_LOW_*.
+ */
+static const struct ice_phy_type_to_ethtool
+phy_type_low_lkup[] = {
+	[0] = ICE_PHY_TYPE(100MB, 100baseT_Full),
+	[1] = ICE_PHY_TYPE(100MB, 100baseT_Full),
+	[2] = ICE_PHY_TYPE(1000MB, 1000baseT_Full),
+	[3] = ICE_PHY_TYPE(1000MB, 1000baseX_Full),
+	[4] = ICE_PHY_TYPE(1000MB, 1000baseX_Full),
+	[5] = ICE_PHY_TYPE(1000MB, 1000baseKX_Full),
+	[6] = ICE_PHY_TYPE(1000MB, 1000baseT_Full),
+	[7] = ICE_PHY_TYPE(2500MB, 2500baseT_Full),
+	[8] = ICE_PHY_TYPE(2500MB, 2500baseX_Full),
+	[9] = ICE_PHY_TYPE(2500MB, 2500baseX_Full),
+	[10] = ICE_PHY_TYPE(5GB, 5000baseT_Full),
+	[11] = ICE_PHY_TYPE(5GB, 5000baseT_Full),
+	[12] = ICE_PHY_TYPE(10GB, 10000baseT_Full),
+	[13] = ICE_PHY_TYPE(10GB, 10000baseT_Full),
+	[14] = ICE_PHY_TYPE(10GB, 10000baseSR_Full),
+	[15] = ICE_PHY_TYPE(10GB, 10000baseLR_Full),
+	[16] = ICE_PHY_TYPE(10GB, 10000baseKR_Full),
+	[17] = ICE_PHY_TYPE(10GB, 10000baseT_Full),
+	[18] = ICE_PHY_TYPE(10GB, 10000baseKR_Full),
+	[19] = ICE_PHY_TYPE(25GB, 25000baseCR_Full),
+	[20] = ICE_PHY_TYPE(25GB, 25000baseCR_Full),
+	[21] = ICE_PHY_TYPE(25GB, 25000baseCR_Full),
+	[22] = ICE_PHY_TYPE(25GB, 25000baseCR_Full),
+	[23] = ICE_PHY_TYPE(25GB, 25000baseSR_Full),
+	[24] = ICE_PHY_TYPE(25GB, 25000baseSR_Full),
+	[25] = ICE_PHY_TYPE(25GB, 25000baseKR_Full),
+	[26] = ICE_PHY_TYPE(25GB, 25000baseKR_Full),
+	[27] = ICE_PHY_TYPE(25GB, 25000baseKR_Full),
+	[28] = ICE_PHY_TYPE(25GB, 25000baseCR_Full),
+	[29] = ICE_PHY_TYPE(25GB, 25000baseKR_Full),
+	[30] = ICE_PHY_TYPE(40GB, 40000baseCR4_Full),
+	[31] = ICE_PHY_TYPE(40GB, 40000baseSR4_Full),
+	[32] = ICE_PHY_TYPE(40GB, 40000baseLR4_Full),
+	[33] = ICE_PHY_TYPE(40GB, 40000baseKR4_Full),
+	[34] = ICE_PHY_TYPE(40GB, 40000baseCR4_Full),
+	[35] = ICE_PHY_TYPE(40GB, 40000baseCR4_Full),
+	[36] = ICE_PHY_TYPE(50GB, 50000baseCR2_Full),
+	[37] = ICE_PHY_TYPE(50GB, 50000baseSR2_Full),
+	[38] = ICE_PHY_TYPE(50GB, 50000baseSR2_Full),
+	[39] = ICE_PHY_TYPE(50GB, 50000baseKR2_Full),
+	[40] = ICE_PHY_TYPE(50GB, 50000baseCR2_Full),
+	[41] = ICE_PHY_TYPE(50GB, 50000baseCR2_Full),
+	[42] = ICE_PHY_TYPE(50GB, 50000baseCR2_Full),
+	[43] = ICE_PHY_TYPE(50GB, 50000baseCR2_Full),
+	[44] = ICE_PHY_TYPE(50GB, 50000baseCR2_Full),
+	[45] = ICE_PHY_TYPE(50GB, 50000baseCR2_Full),
+	[46] = ICE_PHY_TYPE(50GB, 50000baseSR2_Full),
+	[47] = ICE_PHY_TYPE(50GB, 50000baseSR2_Full),
+	[48] = ICE_PHY_TYPE(50GB, 50000baseKR2_Full),
+	[49] = ICE_PHY_TYPE(50GB, 50000baseCR2_Full),
+	[50] = ICE_PHY_TYPE(50GB, 50000baseCR2_Full),
+	[51] = ICE_PHY_TYPE(100GB, 100000baseCR4_Full),
+	[52] = ICE_PHY_TYPE(100GB, 100000baseSR4_Full),
+	[53] = ICE_PHY_TYPE(100GB, 100000baseLR4_ER4_Full),
+	[54] = ICE_PHY_TYPE(100GB, 100000baseKR4_Full),
+	[55] = ICE_PHY_TYPE(100GB, 100000baseCR4_Full),
+	[56] = ICE_PHY_TYPE(100GB, 100000baseCR4_Full),
+	[57] = ICE_PHY_TYPE(100GB, 100000baseCR4_Full),
+	[58] = ICE_PHY_TYPE(100GB, 100000baseCR4_Full),
+	[59] = ICE_PHY_TYPE(100GB, 100000baseCR4_Full),
+	[60] = ICE_PHY_TYPE(100GB, 100000baseKR4_Full),
+	[61] = ICE_PHY_TYPE(100GB, 100000baseCR2_Full),
+	[62] = ICE_PHY_TYPE(100GB, 100000baseSR2_Full),
+	[63] = ICE_PHY_TYPE(100GB, 100000baseLR4_ER4_Full),
+};
+
+/* Lookup table mapping PHY type high to link speed and Ethtool link modes.
+ * Array index corresponds to HW PHY type bit, see
+ * ice_adminq_cmd.h:ICE_PHY_TYPE_HIGH_*
+ */
+static const struct ice_phy_type_to_ethtool
+phy_type_high_lkup[] = {
+	[0] = ICE_PHY_TYPE(100GB, 100000baseKR2_Full),
+	[1] = ICE_PHY_TYPE(100GB, 100000baseCR4_Full),
+	[2] = ICE_PHY_TYPE(100GB, 100000baseCR4_Full),
+	[3] = ICE_PHY_TYPE(100GB, 100000baseCR4_Full),
+	[4] = ICE_PHY_TYPE(100GB, 100000baseCR4_Full),
+};
+
+#endif /* !_ICE_ETHTOOL_H_ */
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
