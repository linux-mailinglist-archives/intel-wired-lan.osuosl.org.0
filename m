Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D6EAD7FEB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jun 2025 03:01:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 994D981D24;
	Fri, 13 Jun 2025 01:01:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MXEmozBNoFYN; Fri, 13 Jun 2025 01:01:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 11F26817BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749776500;
	bh=Cd/Oe0aXwrMaFUGGocZ4naalSlehfknUBPrtf0Cabhg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=X8jnwTs28E7aK/8YNQI8qfDJa+MJa8mm0L7tHcpWhKP6rPqoMmKuG16HgeObsk8hw
	 1Z941TNrkvkrqremo93gjJZkWqpWtlsxrELFRx/dMx5zjUOG0mUHFNdIKed5TGqi2B
	 XgCsg8SvQUWdDWl+/eS/5Jlyj9tEIZxUfWa23Wo5oyOof+pKFF56k0jvycRcB9ih9G
	 ZQYKBE/Vx7ktCtJgSbBywUA0w00zO9WI/Y+W81rmVCDojqlunfR9ZCIsSynz2DHQNE
	 p7d5Fe0gAhEaKjENet566Zug2fsxxxcg+ibYc24EJ8lTI2namLhk6CCvtGUwyCucWv
	 3cSqhAwLXoCbQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 11F26817BA;
	Fri, 13 Jun 2025 01:01:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 10A2B1BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 01:01:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EB486406CD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 01:01:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4hgAISHBDK33 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jun 2025 01:01:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 62696406B7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 62696406B7
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 62696406B7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 01:01:37 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 566935C6A5A;
 Fri, 13 Jun 2025 00:59:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EEF9C4CEF4;
 Fri, 13 Jun 2025 01:01:35 +0000 (UTC)
From: Jakub Kicinski <kuba@kernel.org>
To: davem@davemloft.net
Cc: netdev@vger.kernel.org, edumazet@google.com, pabeni@redhat.com,
 andrew+netdev@lunn.ch, horms@kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, michal.swiatkowski@linux.intel.com,
 Jakub Kicinski <kuba@kernel.org>
Date: Thu, 12 Jun 2025 18:01:06 -0700
Message-ID: <20250613010111.3548291-3-kuba@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250613010111.3548291-1-kuba@kernel.org>
References: <20250613010111.3548291-1-kuba@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1749776495;
 bh=aXp64FVZ8vBC59bZdDKbUAFWuUawl6rAwfae83yygCo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sk5UkXX0JWyh+fdmw6aNtCdpnwUFGXbHKUPRCtfVTkuhvt2cVfUbm13zQuTokL0AY
 +HewobJ/679t7p4sOb89+yThXjjnoAN6YUK7TzuWWBWabqHqMxKA42wTCGfPkczfev
 Ij9H9/B1O87m3Kb2bdFl/QKzNcfQzr1wVY6xZW5J0tX2hRbmzrDhbPaOOqG9xthJe9
 DjyIvP5fr4mEufG5FPPzAEdcC8pwYaFIhRsajCT8HNjsNu4igdvs1I4p3CtnSTRZn5
 TBIxdZFvK8g/YWDuVRxmmLrScpMaMh6Fq3XpgI0yQ4PWGJ6gUrLIU1H1u+6clvheCM
 MEMtjE17x2gEQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=sk5UkXX0
Subject: [Intel-wired-lan] [PATCH net-next 2/7] eth: igc: migrate to new
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

Signed-off-by: Jakub Kicinski <kuba@kernel.org>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 3fc1eded9605..e6cac8d4b862 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1045,9 +1045,11 @@ static int igc_ethtool_get_nfc_rules(struct igc_adapter *adapter,
 	return 0;
 }
 
-static int igc_ethtool_get_rss_hash_opts(struct igc_adapter *adapter,
-					 struct ethtool_rxnfc *cmd)
+static int igc_ethtool_get_rxfh_fields(struct net_device *dev,
+				       struct ethtool_rxfh_fields *cmd)
 {
+	struct igc_adapter *adapter = netdev_priv(dev);
+
 	cmd->data = 0;
 
 	/* Report default options for RSS on igc */
@@ -1103,8 +1105,6 @@ static int igc_ethtool_get_rxnfc(struct net_device *dev,
 		return igc_ethtool_get_nfc_rule(adapter, cmd);
 	case ETHTOOL_GRXCLSRLALL:
 		return igc_ethtool_get_nfc_rules(adapter, cmd, rule_locs);
-	case ETHTOOL_GRXFH:
-		return igc_ethtool_get_rss_hash_opts(adapter, cmd);
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -1112,9 +1112,11 @@ static int igc_ethtool_get_rxnfc(struct net_device *dev,
 
 #define UDP_RSS_FLAGS (IGC_FLAG_RSS_FIELD_IPV4_UDP | \
 		       IGC_FLAG_RSS_FIELD_IPV6_UDP)
-static int igc_ethtool_set_rss_hash_opt(struct igc_adapter *adapter,
-					struct ethtool_rxnfc *nfc)
+static int igc_ethtool_set_rxfh_fields(struct net_device *dev,
+				       const struct ethtool_rxfh_fields *nfc,
+				       struct netlink_ext_ack *extack)
 {
+	struct igc_adapter *adapter = netdev_priv(dev);
 	u32 flags = adapter->flags;
 
 	/* RSS does not support anything other than hashing
@@ -1425,8 +1427,6 @@ static int igc_ethtool_set_rxnfc(struct net_device *dev,
 	struct igc_adapter *adapter = netdev_priv(dev);
 
 	switch (cmd->cmd) {
-	case ETHTOOL_SRXFH:
-		return igc_ethtool_set_rss_hash_opt(adapter, cmd);
 	case ETHTOOL_SRXCLSRLINS:
 		return igc_ethtool_add_nfc_rule(adapter, cmd);
 	case ETHTOOL_SRXCLSRLDEL:
@@ -2144,6 +2144,8 @@ static const struct ethtool_ops igc_ethtool_ops = {
 	.get_rxfh_indir_size	= igc_ethtool_get_rxfh_indir_size,
 	.get_rxfh		= igc_ethtool_get_rxfh,
 	.set_rxfh		= igc_ethtool_set_rxfh,
+	.get_rxfh_fields	= igc_ethtool_get_rxfh_fields,
+	.set_rxfh_fields	= igc_ethtool_set_rxfh_fields,
 	.get_ts_info		= igc_ethtool_get_ts_info,
 	.get_channels		= igc_ethtool_get_channels,
 	.set_channels		= igc_ethtool_set_channels,
-- 
2.49.0

