Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 421CFA4C021
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Mar 2025 13:20:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC4A2607BC;
	Mon,  3 Mar 2025 12:20:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FcCO91VcaF_m; Mon,  3 Mar 2025 12:20:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4A7A860791
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741004436;
	bh=QLIqeVweOMpyLyOABCjyq6KBNU5/7kH65PNUYvKte8I=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EG+jnfqpdtDZssTxGgj3W04+GLt9izB969pBccy44y9cvkFFG0FFAe5c5l8m7WA45
	 X4TwPsUFNolVF0kRqsA3QO6VEJ5CnnXb+QU3qBFDd5pcM81gPv7UxkrZ5lElOnfAo9
	 2FCVgAt1OKD1mcILtOsBcqnuQVhoMK2rVRtPuEK8O2Yth5pcAiiHvdww4MjbteiF9i
	 /cZXX1ciYqTxlid8hAK3ma4VOyxa0leejt1679WHWBmx26HHer5/a3YFQvVeIDzC7B
	 kaVsyebW1Cn8FSjPhSM4O82aVhkQX6atAEUnKNc3mDbQoJttLV9rTpR7T8ekFrxtKU
	 GlXSI1WOB8mcQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4A7A860791;
	Mon,  3 Mar 2025 12:20:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 67D95D2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 12:20:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4B37181EC9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 12:20:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ppz1jPV_peUo for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Mar 2025 12:20:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 53A3881E89
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 53A3881E89
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 53A3881E89
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 12:20:33 +0000 (UTC)
X-CSE-ConnectionGUID: dAWjgZaKSSO7jkt5njBKeg==
X-CSE-MsgGUID: U4SuOTfdSHarjW+lwVKbNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="41052437"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="41052437"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 04:20:33 -0800
X-CSE-ConnectionGUID: eHoIPpWPSZurtQOQzUbPTg==
X-CSE-MsgGUID: /3VzKCQuQJK0rwn+QvsFCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="117976113"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa007.fm.intel.com with ESMTP; 03 Mar 2025 04:20:31 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, andrew@lunn.ch,
 pmenzel@molgen.mpg.de, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Mon,  3 Mar 2025 13:06:28 +0100
Message-Id: <20250303120630.226353-3-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250303120630.226353-1-jedrzej.jagielski@intel.com>
References: <20250303120630.226353-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741004433; x=1772540433;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LVDZfMPOEih0ayuqtp6N23jO8XWCLAEalFTiBen0j1s=;
 b=M4jtm58ztZPeDtEh2lQVBvbTJmjbdds/VeU3VOQhZeF0LvA7aMgsW8IN
 9n5w+DYSoIVbg/lLscOyq/dba07r7Pc2ubjnABNEHHr9iui22GwVpWj+p
 xompDqLsXl9DmHUs+mdGU9m+0JGCFbG4SQtBX7Ksz72D0tjRyTQQxe4ZN
 t9Kpgu9yngSJnuwOrLHUzqa/EV5xl1/ZY1Q8AqOYlrWY4OHivZX5bS8Um
 Nk0E6vGNNVJaTCHHDhvnm+Ftaa8G5aAKh0GPkr1PrXnmtrsQsuZWoVuCc
 F5YFwCGWShucWmB9jBTsoX36EAe1cN7pBY3fjUTatUr9v1IA7PVX6j/C4
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M4jtm58z
Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/4] ixgbe: add support for
 ACPI WOL for E610
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

Currently only APM (Advanced Power Management) is supported by
the ixgbe driver. It works for magic packets only, as for different
sources of wake-up E610 adapter utilizes different feature.

Add E610 specific implementation of ixgbe_set_wol() callback. When
any of broadcast/multicast/unicast wake-up is set, disable APM and
configure ACPI (Advanced Configuration and Power Interface).

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 46 ++++++++++++++++++-
 1 file changed, 45 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 83d9ee3941e5..abc8c279192a 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -2365,6 +2365,50 @@ static int ixgbe_set_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
 	return 0;
 }
 
+static int ixgbe_set_wol_acpi(struct net_device *netdev,
+			      struct ethtool_wolinfo *wol)
+{
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
+	struct ixgbe_hw *hw = &adapter->hw;
+	u32 grc;
+
+	if (ixgbe_wol_exclusion(adapter, wol))
+		return wol->wolopts ? -EOPNOTSUPP : 0;
+
+	/* disable APM wakeup */
+	grc = IXGBE_READ_REG(hw, IXGBE_GRC_X550EM_a);
+	grc &= ~IXGBE_GRC_APME;
+	IXGBE_WRITE_REG(hw, IXGBE_GRC_X550EM_a, grc);
+
+	/* erase existing filters */
+	IXGBE_WRITE_REG(hw, IXGBE_WUFC, 0);
+	adapter->wol = 0;
+
+	if (wol->wolopts & WAKE_UCAST)
+		adapter->wol |= IXGBE_WUFC_EX;
+	if (wol->wolopts & WAKE_MCAST)
+		adapter->wol |= IXGBE_WUFC_MC;
+	if (wol->wolopts & WAKE_BCAST)
+		adapter->wol |= IXGBE_WUFC_BC;
+
+	IXGBE_WRITE_REG(hw, IXGBE_WUC, IXGBE_WUC_PME_EN);
+	IXGBE_WRITE_REG(hw, IXGBE_WUFC, adapter->wol);
+
+	hw->wol_enabled = adapter->wol;
+	device_set_wakeup_enable(&adapter->pdev->dev, adapter->wol);
+
+	return 0;
+}
+
+static int ixgbe_set_wol_e610(struct net_device *netdev,
+			      struct ethtool_wolinfo *wol)
+{
+	if (wol->wolopts & (WAKE_UCAST | WAKE_MCAST | WAKE_BCAST))
+		return ixgbe_set_wol_acpi(netdev, wol);
+	else
+		return ixgbe_set_wol(netdev, wol);
+}
+
 static int ixgbe_nway_reset(struct net_device *netdev)
 {
 	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
@@ -3656,7 +3700,7 @@ static const struct ethtool_ops ixgbe_ethtool_ops_e610 = {
 	.get_regs_len           = ixgbe_get_regs_len,
 	.get_regs               = ixgbe_get_regs,
 	.get_wol                = ixgbe_get_wol,
-	.set_wol                = ixgbe_set_wol,
+	.set_wol                = ixgbe_set_wol_e610,
 	.nway_reset             = ixgbe_nway_reset,
 	.get_link               = ethtool_op_get_link,
 	.get_eeprom_len         = ixgbe_get_eeprom_len,
-- 
2.31.1

