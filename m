Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B270A4C022
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Mar 2025 13:20:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E419181ECD;
	Mon,  3 Mar 2025 12:20:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R8FD0BB3sLSp; Mon,  3 Mar 2025 12:20:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 31BAF81EC9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741004439;
	bh=dCxkxP0MeYty6vUb71dpgQVtPPLCP3DLPNzV/J4FKlA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SeS6H33CdVweKl5Sdvoi5jwybeUHnMf2rwtlHAzcR/S2hwqbjs3u4CrFWaqngSGBG
	 nW5Cr2lC6BiC+Bi0BpSkSNqD2Udh0BrD/HYMQXKeyapZ2N9ZwhaTbS69t9jf1Pus+w
	 ikwux1aKZEYCaDJYVi7Dd6jEhqc6J5p28Gi0Uj+qso4AFQcn/VZDAgLJbzBGIUIvgk
	 F9LC8Uc6GErJ8OP+FjyVvqCbnP5CBQEUw54PQ/jv0C7CYM7EouSwAAmeaAb9DXFmBR
	 984AdJ6OdzIF7/OYvmNx6znvOC8Xrc3VvkJ59E3vgUB9QLCzjkbCfIq9YR6GDiwMxE
	 xmukbXhrE9q5Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 31BAF81EC9;
	Mon,  3 Mar 2025 12:20:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 38BD6C1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 12:20:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1D05D81E7F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 12:20:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vofKtkpjAeN7 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Mar 2025 12:20:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4ACB281E92
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4ACB281E92
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4ACB281E92
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 12:20:35 +0000 (UTC)
X-CSE-ConnectionGUID: WfQyddX8T6iG9tb9P3/syw==
X-CSE-MsgGUID: TRZjApPGQ4amdD7wKmQtAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="41052438"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="41052438"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 04:20:35 -0800
X-CSE-ConnectionGUID: 9gLn7UO2SCmS2hRUIKr5qA==
X-CSE-MsgGUID: f/7JmsJYQqG9If6XXUIInw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="117976121"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa007.fm.intel.com with ESMTP; 03 Mar 2025 04:20:33 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, andrew@lunn.ch,
 pmenzel@molgen.mpg.de, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Mon,  3 Mar 2025 13:06:29 +0100
Message-Id: <20250303120630.226353-4-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250303120630.226353-1-jedrzej.jagielski@intel.com>
References: <20250303120630.226353-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741004435; x=1772540435;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lxVDAkGGuTFeMA/Z9ZhlF1DbWFEZWkwlVgtu7I5oRcU=;
 b=NxXYb8qIeYniiLrogY6PI1UVvfsI89Q0CebSK9e9Cf9ZsAOvoegfKhGO
 HAH6B1U/nwtQky2uxiLhtVNew+UWA/ksWeLykamj2qXbSsvroOUV1Q4AC
 Wbq2+DnutWPXgWWu5BlwWQvfHPRbx28Xd3k2WSzzCO+vdPHKkCfP1wZOy
 KoykgTL4iQ/k54lGAkpAtcKwpBiZ6z9vkEuqh5+Od3mmPCdf9Zt9AfqlQ
 RQVfeumIu4frLzNYFJL30Jsy7Hozg4Lo9AbuP+whw82Jhqb1I50K4J++l
 jKyTO5LjKTs3WHs79G6bq4TknmRII9acuylS+GtRD0YoR6JvmcqBWQ3o3
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NxXYb8qI
Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/4] ixgbe: apply different
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
index abc8c279192a..17d937f672dc 100644
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
 
@@ -3710,7 +3751,7 @@ static const struct ethtool_ops ixgbe_ethtool_ops_e610 = {
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

