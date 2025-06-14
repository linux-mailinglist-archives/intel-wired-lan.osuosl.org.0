Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF8CAD9EAA
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Jun 2025 20:09:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8CA8581091;
	Sat, 14 Jun 2025 18:09:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vP2dEKdeouGH; Sat, 14 Jun 2025 18:09:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9605881090
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749924557;
	bh=CDqJY15l37kQ+UWLf4Eab/+Z46xU/brlWCF/zFCMXXE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2hu21uHZc/vjEcbdZoc0KIQC8QgtTmL0O8AYD2FDVgdcrlh4Gg91LFnmgbI7hESD1
	 7xUOe7RW6H3U+aBCm2W9MAGyMUDWKLa1eIZL5vAOCP/N97426huODnoLysoMwYgCC7
	 g+bJzP+SK/yCwkdl0pOFmXk+m/S14d65LOvC7p+TsOfEUbNda2kAl28vNjBQBJoig9
	 k9ltC7lZV3/OsCGN6Iw4DD0iYKC+d6wnc+jh4fkQ9Y8c59ueug8N21dh1ptzgWP+qe
	 Syf32vcHXXV+GjrYMqQjwDgS3mZ/lmWVuiWxr5QmFnWKQk0tIlRRo11FIPE2d6DM+0
	 JN9WezHpiPOZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9605881090;
	Sat, 14 Jun 2025 18:09:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 10AF6151
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 18:09:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0267D80EB0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 18:09:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g6_eVt5KNd2B for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Jun 2025 18:09:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1B03F80E7B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B03F80E7B
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1B03F80E7B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 18:09:13 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 77EC05C59AB;
 Sat, 14 Jun 2025 18:06:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62592C4CEF4;
 Sat, 14 Jun 2025 18:09:12 +0000 (UTC)
From: Jakub Kicinski <kuba@kernel.org>
To: davem@davemloft.net
Cc: netdev@vger.kernel.org, edumazet@google.com, pabeni@redhat.com,
 andrew+netdev@lunn.ch, horms@kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, michal.swiatkowski@linux.intel.com, joe@dama.to,
 Jakub Kicinski <kuba@kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Sat, 14 Jun 2025 11:09:03 -0700
Message-ID: <20250614180907.4167714-4-kuba@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250614180907.4167714-1-kuba@kernel.org>
References: <20250614180907.4167714-1-kuba@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1749924552;
 bh=/3MNfq/1VKgqo7tF4QLu3IzV4Qis8K3i9KxsK9PbOyY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=U1pDVdliEMTxq78SueoRL+WGFDMeCjvUFVt1Iy84Cmc9C4nIlloo5x61XncGDbtas
 ToMQcDZAL+4i85qdjjvEeJexpBTAwZxzEHNcRrQI9kO4Ypvk64J0TLlZhgcaR56Hr3
 i+sOZd1MoIgKb7ARTkBXPC7boYQUd+t7DLrGPN2J9V1OAru5tDFmFfvkwepqC58RvA
 ss0Iet+GQwf2GlLNEBuKxgnPFux7uVYTU62tYnIgw4ce3ID/klBBKWBlsGaG25sVLN
 p2vkJamkM6ASVjy5qyC4buOO1gIsVd4B6veSK6rjxTbjc7AtE6LN2vyn6FgyyTfPDP
 V2txxeMzrL2gw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=U1pDVdli
Subject: [Intel-wired-lan] [PATCH net-next v2 3/7] eth: ixgbe: migrate to
 new RXFH callbacks
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

Migrate to new callbacks added by commit 9bb00786fc61 ("net: ethtool:
add dedicated callbacks for getting and setting rxfh fields").

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jakub Kicinski <kuba@kernel.org>
---
v2:
 - add callbacks to ixgbe_ethtool_ops
v1: https://lore.kernel.org/20250613010111.3548291-4-kuba@kernel.org
---
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 22 ++++++++++---------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 1dc1c6e611a4..25c3a09ad7f1 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -2753,9 +2753,11 @@ static int ixgbe_get_ethtool_fdir_all(struct ixgbe_adapter *adapter,
 	return 0;
 }
 
-static int ixgbe_get_rss_hash_opts(struct ixgbe_adapter *adapter,
-				   struct ethtool_rxnfc *cmd)
+static int ixgbe_get_rxfh_fields(struct net_device *dev,
+				 struct ethtool_rxfh_fields *cmd)
 {
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
+
 	cmd->data = 0;
 
 	/* Report default options for RSS on ixgbe */
@@ -2825,9 +2827,6 @@ static int ixgbe_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
 	case ETHTOOL_GRXCLSRLALL:
 		ret = ixgbe_get_ethtool_fdir_all(adapter, cmd, rule_locs);
 		break;
-	case ETHTOOL_GRXFH:
-		ret = ixgbe_get_rss_hash_opts(adapter, cmd);
-		break;
 	default:
 		break;
 	}
@@ -3079,9 +3078,11 @@ static int ixgbe_del_ethtool_fdir_entry(struct ixgbe_adapter *adapter,
 
 #define UDP_RSS_FLAGS (IXGBE_FLAG2_RSS_FIELD_IPV4_UDP | \
 		       IXGBE_FLAG2_RSS_FIELD_IPV6_UDP)
-static int ixgbe_set_rss_hash_opt(struct ixgbe_adapter *adapter,
-				  struct ethtool_rxnfc *nfc)
+static int ixgbe_set_rxfh_fields(struct net_device *dev,
+				 const struct ethtool_rxfh_fields *nfc,
+				 struct netlink_ext_ack *extack)
 {
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 	u32 flags2 = adapter->flags2;
 
 	/*
@@ -3204,9 +3205,6 @@ static int ixgbe_set_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd)
 	case ETHTOOL_SRXCLSRLDEL:
 		ret = ixgbe_del_ethtool_fdir_entry(adapter, cmd);
 		break;
-	case ETHTOOL_SRXFH:
-		ret = ixgbe_set_rss_hash_opt(adapter, cmd);
-		break;
 	default:
 		break;
 	}
@@ -3751,6 +3749,8 @@ static const struct ethtool_ops ixgbe_ethtool_ops = {
 	.get_rxfh_key_size	= ixgbe_get_rxfh_key_size,
 	.get_rxfh		= ixgbe_get_rxfh,
 	.set_rxfh		= ixgbe_set_rxfh,
+	.get_rxfh_fields	= ixgbe_get_rxfh_fields,
+	.set_rxfh_fields	= ixgbe_set_rxfh_fields,
 	.get_eee		= ixgbe_get_eee,
 	.set_eee		= ixgbe_set_eee,
 	.get_channels		= ixgbe_get_channels,
@@ -3797,6 +3797,8 @@ static const struct ethtool_ops ixgbe_ethtool_ops_e610 = {
 	.get_rxfh_key_size	= ixgbe_get_rxfh_key_size,
 	.get_rxfh		= ixgbe_get_rxfh,
 	.set_rxfh		= ixgbe_set_rxfh,
+	.get_rxfh_fields	= ixgbe_get_rxfh_fields,
+	.set_rxfh_fields	= ixgbe_set_rxfh_fields,
 	.get_eee		= ixgbe_get_eee,
 	.set_eee		= ixgbe_set_eee,
 	.get_channels		= ixgbe_get_channels,
-- 
2.49.0

