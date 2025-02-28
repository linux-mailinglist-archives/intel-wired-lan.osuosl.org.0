Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 895D1A49401
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Feb 2025 09:51:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1032B82AC3;
	Fri, 28 Feb 2025 08:51:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MkTWCMbm1081; Fri, 28 Feb 2025 08:51:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 605DB82983
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740732704;
	bh=QLIqeVweOMpyLyOABCjyq6KBNU5/7kH65PNUYvKte8I=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xu2WMRo3IoUTR4HCANBLn34fZ90srKYvSBbFzdIPa4tPrpxxqCIudeM+rGy5kP1m9
	 CJWKw28k4XfDJ8WHXyxIFmw1grEfw1SUbMr4Zf3aVnOUGHLsmctpxhV4Tkq7dJebVt
	 m1l5T1TMjqD6G1/VAO6DKLkS/hYKje9aN7/PbwqkzsNxUVjki7Inldv6hP2OL93waI
	 U/U0QL04U/NVzAmL3N9/z1mMoLKWboSa5qllR6K+w5WrA4QJKp//4efGA4GobU6Y81
	 GV8+fYfqUGofIAXwVUgN8vvyyzz2kmxNLHIMCuFJcBCjkFDDhklVIswn9sj8cVuple
	 ZAjFVnooXF44Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 605DB82983;
	Fri, 28 Feb 2025 08:51:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7642494F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 08:51:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 52C5C60699
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 08:51:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i_JMqfyaBAHs for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Feb 2025 08:51:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9EB93600CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9EB93600CA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9EB93600CA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 08:51:39 +0000 (UTC)
X-CSE-ConnectionGUID: 7HTHhB0ATxeY8dO0fPASvg==
X-CSE-MsgGUID: 5DD5+yUPSeSfolawuFAWzQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="40829552"
X-IronPort-AV: E=Sophos;i="6.13,321,1732608000"; d="scan'208";a="40829552"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 00:51:39 -0800
X-CSE-ConnectionGUID: VomsmPNnRP6kELT1EiIlmA==
X-CSE-MsgGUID: mdzroFcJQyCtkuEGBBx5HQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,321,1732608000"; d="scan'208";a="121894637"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa005.fm.intel.com with ESMTP; 28 Feb 2025 00:51:38 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Fri, 28 Feb 2025 09:37:37 +0100
Message-Id: <20250228083739.209076-3-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250228083739.209076-1-jedrzej.jagielski@intel.com>
References: <20250228083739.209076-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740732699; x=1772268699;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LVDZfMPOEih0ayuqtp6N23jO8XWCLAEalFTiBen0j1s=;
 b=nKtYzOMccbJwDg83kyOIZYso5lrDU4ou9K0sTAh1F2x6Yho0yWtBipPX
 T7lsRBhARejuOuLyAGJIQMt2GyIfiawymUL/fzM4xeB63gvMrG2TceixH
 iXx1Oy1oFd9dR/BiU5nQxWb8/nAaYO7gqAPu1C5HQ8SmMQ23c5YYo7P8t
 CDGxbZDI9P21FW0ynLG/frNIQbvI7zq4oscKO6sP0kPzOaOUfP170Gbfn
 gZpZFyvAqufETYx2cm1SrbVxLz+BiBXxRyDm9ATK0pPXWhUFpBvIYvaVx
 nuVgXTQXQ2GTsNoHZR1dwXNbezocOY2Xwx0IlRVt2HnKlLejXIfG/Ct32
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nKtYzOMc
Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/4] ixgbe: add support for
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

