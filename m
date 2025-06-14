Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA1DAD9EA5
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Jun 2025 20:09:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3526B80EB6;
	Sat, 14 Jun 2025 18:09:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J-X0yk24AEE1; Sat, 14 Jun 2025 18:09:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7989180ED5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749924555;
	bh=vy+KJUcy541wJmfIwnhiG/xXwKF1Ruj0lWWMtjddZPM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xYAS3igTbicurxP9V9kttYRkLM8WlO7aJqkU/Kn+39fyEMUIzn4MFJo6T+P1ow4zJ
	 moKVyQR99DPeapGS9nTkT4MUMkWlZvkbQ05kjaIgHhgrJPnVrWmc3Wvd+rDNLFKHaS
	 XPfSG3QMcy3dxGLbtft4TiGZ3AF37L0Mon8i+tgJlCQlZDQQaKx6nUuac1SuNtGESQ
	 2jqkIfxNpJC89qwIvpvlhNUwDAw98ZINhg1hrSdbZgpkHfwwWI+IvFjOjy90iWsrD6
	 51LIbxnSf4YpFXABhq3UcimV2HoS/zYHOVRG8u8dOVh246tGFn1fBiJtgsGIdAkST+
	 ZER2zgPcavDMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7989180ED5;
	Sat, 14 Jun 2025 18:09:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 72260151
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 18:09:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 620766072F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 18:09:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4JPHPajnX35b for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Jun 2025 18:09:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 317BC6067F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 317BC6067F
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 317BC6067F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 18:09:11 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id B3F3C4A5F2;
 Sat, 14 Jun 2025 18:09:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17F2EC4CEF2;
 Sat, 14 Jun 2025 18:09:11 +0000 (UTC)
From: Jakub Kicinski <kuba@kernel.org>
To: davem@davemloft.net
Cc: netdev@vger.kernel.org, edumazet@google.com, pabeni@redhat.com,
 andrew+netdev@lunn.ch, horms@kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, michal.swiatkowski@linux.intel.com, joe@dama.to,
 Jakub Kicinski <kuba@kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Sat, 14 Jun 2025 11:09:01 -0700
Message-ID: <20250614180907.4167714-2-kuba@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250614180907.4167714-1-kuba@kernel.org>
References: <20250614180907.4167714-1-kuba@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1749924551;
 bh=k57sVhhiCCeU3pmSXiuH2DBELSdMUg2pLnUSwiDmhNA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iV4FdacJ66+OX67ZD36CSf+6GeeJqIUbeANdcmv54yGfM5JNQPb9uzvOVkQ4eQSea
 gl+PhAuRzNoFTUoxTA73xID2hk7ryPGQ2StLtT+EDrV+pPOlt6Fu7IsCHB0w6pohR7
 tKX96EsynqH1dgm4qoq6cvJ0Nq2frU322kSjN6XTjMoxM61ccfHV4q6xGmr8Ym7Otv
 gLkTwSqktFK2uhWvuHluzrsS2MYpBmApQJTLXiN3Clo9VMSh7Y460y583X6Xikm1KG
 stRjYi/bWipTgPrK3b3MIDHmlSDxmj5V1Lzr0cbJ3nxZRrjCezbfGFrn8QqeuvHt1q
 sTx0jFxix0HsA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=iV4FdacJ
Subject: [Intel-wired-lan] [PATCH net-next v2 1/7] eth: igb: migrate to new
 RXFH callbacks
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
Reviewed-by: Joe Damato <joe@dama.to>
Signed-off-by: Jakub Kicinski <kuba@kernel.org>
---
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index ca6ccbc13954..92ef33459aec 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -2500,9 +2500,11 @@ static int igb_get_ethtool_nfc_all(struct igb_adapter *adapter,
 	return 0;
 }
 
-static int igb_get_rss_hash_opts(struct igb_adapter *adapter,
-				 struct ethtool_rxnfc *cmd)
+static int igb_get_rxfh_fields(struct net_device *dev,
+			       struct ethtool_rxfh_fields *cmd)
 {
+	struct igb_adapter *adapter = netdev_priv(dev);
+
 	cmd->data = 0;
 
 	/* Report default options for RSS on igb */
@@ -2563,9 +2565,6 @@ static int igb_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
 	case ETHTOOL_GRXCLSRLALL:
 		ret = igb_get_ethtool_nfc_all(adapter, cmd, rule_locs);
 		break;
-	case ETHTOOL_GRXFH:
-		ret = igb_get_rss_hash_opts(adapter, cmd);
-		break;
 	default:
 		break;
 	}
@@ -2575,9 +2574,11 @@ static int igb_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
 
 #define UDP_RSS_FLAGS (IGB_FLAG_RSS_FIELD_IPV4_UDP | \
 		       IGB_FLAG_RSS_FIELD_IPV6_UDP)
-static int igb_set_rss_hash_opt(struct igb_adapter *adapter,
-				struct ethtool_rxnfc *nfc)
+static int igb_set_rxfh_fields(struct net_device *dev,
+			       const struct ethtool_rxfh_fields *nfc,
+			       struct netlink_ext_ack *extack)
 {
+	struct igb_adapter *adapter = netdev_priv(dev);
 	u32 flags = adapter->flags;
 
 	/* RSS does not support anything other than hashing
@@ -3005,9 +3006,6 @@ static int igb_set_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd)
 	int ret = -EOPNOTSUPP;
 
 	switch (cmd->cmd) {
-	case ETHTOOL_SRXFH:
-		ret = igb_set_rss_hash_opt(adapter, cmd);
-		break;
 	case ETHTOOL_SRXCLSRLINS:
 		ret = igb_add_ethtool_nfc_entry(adapter, cmd);
 		break;
@@ -3485,6 +3483,8 @@ static const struct ethtool_ops igb_ethtool_ops = {
 	.get_rxfh_indir_size	= igb_get_rxfh_indir_size,
 	.get_rxfh		= igb_get_rxfh,
 	.set_rxfh		= igb_set_rxfh,
+	.get_rxfh_fields	= igb_get_rxfh_fields,
+	.set_rxfh_fields	= igb_set_rxfh_fields,
 	.get_channels		= igb_get_channels,
 	.set_channels		= igb_set_channels,
 	.get_priv_flags		= igb_get_priv_flags,
-- 
2.49.0

