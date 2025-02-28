Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D734A49403
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Feb 2025 09:51:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E47F960AAE;
	Fri, 28 Feb 2025 08:51:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6w_nGLQjXCOb; Fri, 28 Feb 2025 08:51:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F6CB6F56D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740732706;
	bh=thjahGREjYao7GMvWCOLol4UYp9dDrpWAfgNvEbvnTk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BoaUe2y8gLa8c9ODuLeNY3mOcskd0rLYC+/4yIwqeAZBIBZ11rSsDfODcGXG9nBxe
	 fbITIxBIAirIhKBQ3pC3gI+qRovpbkrqxMJ02I12QWxJUJshBxQcjIXyzWYRMv/GsT
	 95JFWWws6MnNAF0I2fwLoFRNkAe3u5YyPvuobrZRHfBv/yeLsHD11NlIYSACCj9/1/
	 VBLcObErmive5g4EJyHzmB+VdGcbJaH2fuNawwqikZ550ovWyETNnsuFiv8OM2w9lt
	 365R4QoYMrDu+OChCybX1WFEvrwQdw8Kbzbj5qEkI3fbq4D02YqP4KnE5iyTJ0hr9C
	 hEiNAfhZcgnDw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F6CB6F56D;
	Fri, 28 Feb 2025 08:51:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0FDAD68
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 08:51:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F298C60699
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 08:51:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nz21sFj2WAeh for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Feb 2025 08:51:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 48FA5600CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 48FA5600CA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 48FA5600CA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 08:51:42 +0000 (UTC)
X-CSE-ConnectionGUID: oxBTJYHEQQ61lRWQKiHAvw==
X-CSE-MsgGUID: LYZSONOfSheA0BQlCYnE3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="40829558"
X-IronPort-AV: E=Sophos;i="6.13,321,1732608000"; d="scan'208";a="40829558"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 00:51:42 -0800
X-CSE-ConnectionGUID: PoQEAtFlQIOpX/i+fZKH5Q==
X-CSE-MsgGUID: DrdmiowyRwOTFa24c8VqSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,321,1732608000"; d="scan'208";a="121894644"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa005.fm.intel.com with ESMTP; 28 Feb 2025 00:51:41 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Fri, 28 Feb 2025 09:37:39 +0100
Message-Id: <20250228083739.209076-5-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250228083739.209076-1-jedrzej.jagielski@intel.com>
References: <20250228083739.209076-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740732702; x=1772268702;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y/X7I97y3KmpTxfy43jwScELt+nsMlXGsmAtqxFdbn4=;
 b=dswSq4FewlgwCbA8UyyBrfx6GOOLwNXEctdGHHs1/8IvitgATeyVjeFs
 VIdnZXQgWAtOkx7p1a7d9y0okd+Fh1yttqlZYEFcDEJh3p4k1x+0sy/pO
 fTEN9d1QroL47X95C4de1nUnHbgct55wxWqUZDYZ5hQRIVBm7Hos05XKB
 Dlaw/KzfAVTGtafF5BAdh7nFNS2LwqChppZSw9yunpMGWyqmBB9yUft+E
 W2eZ+UmCcDInfyDPe8n3YIg9aiZ0T3dXXGvYBkS0bZwLo+KfsZdffVc+O
 L6cDfQVmhWxn43nvujiP4lt9TL0DE3nC9Rt3PLjBUZK2mryGO5r0uOVH8
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dswSq4Fe
Subject: [Intel-wired-lan] [PATCH iwl-next v2 4/4] ixgbe: apply different
 rules for setting FC on E610
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

E610 device doesn't support disabling FC autonegotiation.

Create dedicated E610 .set_pauseparam() implementation and assign
it to ixgbe_ethtool_ops_e610.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 57 ++++++++++++++++---
 1 file changed, 49 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 35a0d3e5ac4a..49ced536d679 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -564,6 +564,22 @@ static void ixgbe_get_pauseparam(struct net_device *netdev,
 	}
 }
 
+static void ixgbe_set_pauseparam_finalize(struct net_device *netdev,
+					  struct ixgbe_fc_info *fc)
+{
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
+	struct ixgbe_hw *hw = &adapter->hw;
+
+	/* If the thing changed then we'll update and use new autoneg. */
+	if (memcmp(fc, &hw->fc, sizeof(*fc))) {
+		hw->fc = *fc;
+		if (netif_running(netdev))
+			ixgbe_reinit_locked(adapter);
+		else
+			ixgbe_reset(adapter);
+	}
+}
+
 static int ixgbe_set_pauseparam(struct net_device *netdev,
 				struct ethtool_pauseparam *pause)
 {
@@ -592,15 +608,40 @@ static int ixgbe_set_pauseparam(struct net_device *netdev,
 	else
 		fc.requested_mode = ixgbe_fc_none;
 
-	/* if the thing changed then we'll update and use new autoneg */
-	if (memcmp(&fc, &hw->fc, sizeof(struct ixgbe_fc_info))) {
-		hw->fc = fc;
-		if (netif_running(netdev))
-			ixgbe_reinit_locked(adapter);
-		else
-			ixgbe_reset(adapter);
+	ixgbe_set_pauseparam_finalize(netdev, &fc);
+
+	return 0;
+}
+
+static int ixgbe_set_pauseparam_e610(struct net_device *netdev,
+				     struct ethtool_pauseparam *pause)
+{
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
+	struct ixgbe_hw *hw = &adapter->hw;
+	struct ixgbe_fc_info fc = hw->fc;
+
+	if (!ixgbe_device_supports_autoneg_fc(hw))
+		return -EOPNOTSUPP;
+
+	if (pause->autoneg == AUTONEG_DISABLE) {
+		netdev_info(netdev,
+			"Cannot disable autonegotiation on this device.\n");
+		return -EOPNOTSUPP;
 	}
 
+	fc.disable_fc_autoneg = false;
+
+	if (pause->rx_pause && pause->tx_pause)
+		fc.requested_mode = ixgbe_fc_full;
+	else if (pause->rx_pause)
+		fc.requested_mode = ixgbe_fc_rx_pause;
+	else if (pause->tx_pause)
+		fc.requested_mode = ixgbe_fc_tx_pause;
+	else
+		fc.requested_mode = ixgbe_fc_none;
+
+	ixgbe_set_pauseparam_finalize(netdev, &fc);
+
 	return 0;
 }
 
@@ -3730,7 +3771,7 @@ static const struct ethtool_ops ixgbe_ethtool_ops_e610 = {
 	.set_ringparam          = ixgbe_set_ringparam,
 	.get_pause_stats	= ixgbe_get_pause_stats,
 	.get_pauseparam         = ixgbe_get_pauseparam,
-	.set_pauseparam         = ixgbe_set_pauseparam,
+	.set_pauseparam         = ixgbe_set_pauseparam_e610,
 	.get_msglevel           = ixgbe_get_msglevel,
 	.set_msglevel           = ixgbe_set_msglevel,
 	.self_test              = ixgbe_diag_test,
-- 
2.31.1

