Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F85AD9EA6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Jun 2025 20:09:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8FA9A6078B;
	Sat, 14 Jun 2025 18:09:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XXg9CPqXonB5; Sat, 14 Jun 2025 18:09:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 01DA3607A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749924557;
	bh=cGHEbMVctn5C7w8Ot7atJn3Ur85h+I5074yc84gGUEc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IDB1+MCC4on17PJQhrnhBl5uW5xoeX68PsY2bOzeqQK3B0d41JJcAC8QSKaS/Yrkz
	 iuphMF0sXY+xqsN1fHfddzzd0j1GsCmri1OqtB+nDQ6biYC52Vd38slOBevXJhOD50
	 WmgVcczkoMgUIUZFUZNs41VJmCJ5Wi1ogYFcZo0i0PumvZosNgh+K7BZPHStMBX3x9
	 CLWLZ/0y6PFJo+PKspahr5ppQmkhBRVJGsLjrW6R7QYT6PMMwcVbR9wEWB9mOnl/hO
	 Jf+AjXTzoXFl/bwz5ahviw4BGvDWmhnzSStrbLzSkJxqFitwVz5SHkxyzXSqYUlfWM
	 SJGdUSwoPqLJA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 01DA3607A3;
	Sat, 14 Jun 2025 18:09:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 73C11151
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 18:09:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5A504406EE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 18:09:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S2CWjf2nF_2g for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Jun 2025 18:09:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C13054050E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C13054050E
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C13054050E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 18:09:13 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id E4C975C5523;
 Sat, 14 Jun 2025 18:06:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5243C4CEF3;
 Sat, 14 Jun 2025 18:09:11 +0000 (UTC)
From: Jakub Kicinski <kuba@kernel.org>
To: davem@davemloft.net
Cc: netdev@vger.kernel.org, edumazet@google.com, pabeni@redhat.com,
 andrew+netdev@lunn.ch, horms@kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, michal.swiatkowski@linux.intel.com, joe@dama.to,
 Jakub Kicinski <kuba@kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Sat, 14 Jun 2025 11:09:02 -0700
Message-ID: <20250614180907.4167714-3-kuba@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250614180907.4167714-1-kuba@kernel.org>
References: <20250614180907.4167714-1-kuba@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1749924552;
 bh=N3g2ptwY5sj9yKa+MsmWTJbDQDQFqtCkmfgsSBqEot0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bkKsKXC9IYAVeyRRLWLvMx40cazzAf3qcG8bPI2ZvlHBLF6rNjdIUJ8Z8iyYyEjfd
 W26pKYmFePlkkX5KKyKX2IvjccJ5hCthlcvHOfD+p+xYzvo3N4aofA/grQ7QeTt1g3
 balDhu84SC+cyQMUTGaGgKYPD5j8mkBJTYilQBhsH+QsWJ0wn3zVMkOXG/hI2MO5Hs
 wme565xjMd0sYkMC7/E+CAlGask7YPXdSlUpsJHH+zhGeNNiRDhZMxJZxQB6rYPJ//
 cFZpVp37WOX6SVQ/VfzYyACe9IGR3LMSa7pYMyBfFt7+RYURfwyw3/1TBFCFHB4+Ta
 M6UQPc3Xo6dpQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=bkKsKXC9
Subject: [Intel-wired-lan] [PATCH net-next v2 2/7] eth: igc: migrate to new
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

