Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EEFED13112
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 15:18:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D9BCB84EDB;
	Mon, 12 Jan 2026 14:18:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C9B6kh0rSqtn; Mon, 12 Jan 2026 14:18:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 411D684EE1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768227527;
	bh=E/U9t2Jhetq+zBPAOZ7hn2n/egA2h246k6dFrD3/vQQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RGluBRzVz9oVWhQW9/pgVIyMvA+RpIm4YsbVskXDP+gyr4WWeRY+qbQUKSrB6A5tn
	 OPc1i/W4AAmw5ovKKSwljNW6l+PkUXdZUX6g/3Rg5r4yfBn6a4ZX7e7JNwu8cedAgW
	 ceOrdgUTxnPv4JNR5mBAT24PUldDaBcRqW8/vm7oHm5Pl4N8ZpxKa4uFCt1z6g2K7v
	 HaLI9GPua/q+B+1HXIegcMaC9zGSqVQY5psk6BiVznpAdD45nvIXoj+DqmVp1+HJNi
	 PMwq/zSCwYoHqaRjezeMWyEH3CRnOW4D1DyvrtKcctB5aK+N+RXhwuCGQv5T/5U689
	 eLKNnsCmrPNgw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 411D684EE1;
	Mon, 12 Jan 2026 14:18:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E05E818D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 14:18:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C738B6F4F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 14:18:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0lhnq_cc0RlC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 14:18:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D943E6F4E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D943E6F4E5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D943E6F4E5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 14:18:44 +0000 (UTC)
X-CSE-ConnectionGUID: XkufiST3SliX/XqCqC/hXA==
X-CSE-MsgGUID: DLWFGCPCRcGOpVLeqvszUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11669"; a="73352294"
X-IronPort-AV: E=Sophos;i="6.21,221,1763452800"; d="scan'208";a="73352294"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 06:18:45 -0800
X-CSE-ConnectionGUID: 4sI+qMeaTKu6tQwKVRxUDQ==
X-CSE-MsgGUID: mkXci2x4QDim20my20ZE1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,221,1763452800"; d="scan'208";a="227355644"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa002.fm.intel.com with ESMTP; 12 Jan 2026 06:18:43 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Mon, 12 Jan 2026 15:01:06 +0100
Message-Id: <20260112140108.1173835-6-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20260112140108.1173835-1-jedrzej.jagielski@intel.com>
References: <20260112140108.1173835-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768227525; x=1799763525;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AXdINbRBuIy9g/76USC93YCAVLgclKx3SgzFPZ3UToQ=;
 b=I87l8soC6ktDrkr6TNVMlfcQ1TPdWL0cxqMHY6KRMxLqAFyqkpmC0txG
 tnJBsGThTRt/EfV+qm9OWaFkVQPGFqLfz3x8z5okHRuXyUK/xg4+7p3Kz
 xRoWsdYDHtFAsAucnV+BxG7YBm/pOkylMqBF/bisUHK1d9hxzfx4EBiad
 K0Y/j6S/2dQpSqoe8oiBaDfU5FJcrXQ9IdjWZio0Uiu3cEeBnWUnNZ5zF
 GxnqH9R3euroG+zTymQsum9JQdcdLpITqKajAHBykC2j8ADPrEo5HJURb
 wNSl/hxkmM6c0JR2OZDtq+oTkNczE9v4nRXXOX2BO7hE18mT8ohgGFsVn
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I87l8soC
Subject: [Intel-wired-lan] [PATCH iwl-next v1 5/7] ixgbe: move EEE config
 validation out of ixgbe_set_eee()
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

To make this part of the code mode reusable move all
EEE input checks out of ixgbe_set_eee().

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 95 +++++++++++--------
 1 file changed, 54 insertions(+), 41 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 5764530b9667..7a7a58fd065d 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -3551,6 +3551,44 @@ static const struct {
 	{ FW_PHY_ACT_UD_2_10G_KR_EEE, ETHTOOL_LINK_MODE_10000baseKR_Full_BIT},
 };
 
+static int ixgbe_validate_keee(struct net_device *netdev,
+			       struct ethtool_keee *keee_requested)
+{
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
+	struct ethtool_keee keee_stored = {};
+	int err;
+
+	if (!(adapter->flags2 & IXGBE_FLAG2_EEE_CAPABLE))
+		return -EOPNOTSUPP;
+
+	err = netdev->ethtool_ops->get_eee(netdev, &keee_stored);
+	if (err)
+		return err;
+
+	if (keee_stored.tx_lpi_enabled != keee_requested->tx_lpi_enabled) {
+		e_err(drv, "Setting EEE tx-lpi is not supported\n");
+		return -EINVAL;
+	}
+
+	if (keee_stored.tx_lpi_timer != keee_requested->tx_lpi_timer) {
+		e_err(drv,
+		      "Setting EEE Tx LPI timer is not supported\n");
+		return -EINVAL;
+	}
+
+	if (!linkmode_equal(keee_stored.advertised,
+			    keee_requested->advertised)) {
+		e_err(drv,
+		      "Setting EEE advertised speeds is not supported\n");
+		return -EINVAL;
+	}
+
+	if (keee_stored.eee_enabled == keee_requested->eee_enabled)
+		return -EALREADY;
+
+	return 0;
+}
+
 static int
 ixgbe_get_eee_fw(struct ixgbe_adapter *adapter, struct ethtool_keee *edata)
 {
@@ -3609,53 +3647,28 @@ static int ixgbe_set_eee(struct net_device *netdev, struct ethtool_keee *edata)
 {
 	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_hw *hw = &adapter->hw;
-	struct ethtool_keee eee_data;
 	int ret_val;
 
-	if (!(adapter->flags2 & IXGBE_FLAG2_EEE_CAPABLE))
-		return -EOPNOTSUPP;
-
-	memset(&eee_data, 0, sizeof(struct ethtool_keee));
-
-	ret_val = ixgbe_get_eee(netdev, &eee_data);
-	if (ret_val)
+	ret_val = ixgbe_validate_keee(netdev, edata);
+	if (ret_val == -EALREADY)
+		return 0;
+	else if (ret_val)
 		return ret_val;
 
-	if (eee_data.eee_enabled && !edata->eee_enabled) {
-		if (eee_data.tx_lpi_enabled != edata->tx_lpi_enabled) {
-			e_err(drv, "Setting EEE tx-lpi is not supported\n");
-			return -EINVAL;
-		}
-
-		if (eee_data.tx_lpi_timer != edata->tx_lpi_timer) {
-			e_err(drv,
-			      "Setting EEE Tx LPI timer is not supported\n");
-			return -EINVAL;
-		}
-
-		if (!linkmode_equal(eee_data.advertised, edata->advertised)) {
-			e_err(drv,
-			      "Setting EEE advertised speeds is not supported\n");
-			return -EINVAL;
-		}
+	if (edata->eee_enabled) {
+		adapter->flags2 |= IXGBE_FLAG2_EEE_ENABLED;
+		hw->phy.eee_speeds_advertised =
+					   hw->phy.eee_speeds_supported;
+	} else {
+		adapter->flags2 &= ~IXGBE_FLAG2_EEE_ENABLED;
+		hw->phy.eee_speeds_advertised = 0;
 	}
 
-	if (eee_data.eee_enabled != edata->eee_enabled) {
-		if (edata->eee_enabled) {
-			adapter->flags2 |= IXGBE_FLAG2_EEE_ENABLED;
-			hw->phy.eee_speeds_advertised =
-						   hw->phy.eee_speeds_supported;
-		} else {
-			adapter->flags2 &= ~IXGBE_FLAG2_EEE_ENABLED;
-			hw->phy.eee_speeds_advertised = 0;
-		}
-
-		/* reset link */
-		if (netif_running(netdev))
-			ixgbe_reinit_locked(adapter);
-		else
-			ixgbe_reset(adapter);
-	}
+	/* reset link */
+	if (netif_running(netdev))
+		ixgbe_reinit_locked(adapter);
+	else
+		ixgbe_reset(adapter);
 
 	return 0;
 }
-- 
2.31.1

