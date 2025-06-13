Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B694FAD7FE8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jun 2025 03:01:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EBE2E838E0;
	Fri, 13 Jun 2025 01:01:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lv0wWwTn2_TQ; Fri, 13 Jun 2025 01:01:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F65B817BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749776499;
	bh=N4rGKDj2MRyEjv/MHKnLC2wE+hyqrn/3t04Qn+Mj9f0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KkAOx5f3Lc0HPruv2DMGQO2X/wQcHb/IeBBqR7jManql9QZb65FhkljxNX3cktTMB
	 ZrStzMC8c7ovGO/x+L5aKNW1eldcN5A0yrTomv7qRJganMd+rSBsxXW7Q1phT5Ykb2
	 a0VFWbf/iQZBzcFo1iaiXJGo2gZcpyXvr6I53T5bKR5po9DP0EDIT13WMOKxFPDO5q
	 hcYGf8FfrI95RxiOiEJNcNq07U0WTLnUyC3Snq5CYYjdYsd56Mn/RwqG6vUhijIP+W
	 laL1HsTYLLvf7mcSlSGi1Plr54yq1F7WAhsgLw/AEpwjfnKly+BQhzw9WfSrYYOM+C
	 jtwrE01qtRVDA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F65B817BA;
	Fri, 13 Jun 2025 01:01:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7FE511E0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 01:01:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 714B881387
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 01:01:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VULn4cki2xND for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jun 2025 01:01:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C20918133A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C20918133A
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C20918133A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 01:01:36 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id C1F12A52214;
 Fri, 13 Jun 2025 01:01:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8C12C4CEF0;
 Fri, 13 Jun 2025 01:01:34 +0000 (UTC)
From: Jakub Kicinski <kuba@kernel.org>
To: davem@davemloft.net
Cc: netdev@vger.kernel.org, edumazet@google.com, pabeni@redhat.com,
 andrew+netdev@lunn.ch, horms@kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, michal.swiatkowski@linux.intel.com,
 Jakub Kicinski <kuba@kernel.org>
Date: Thu, 12 Jun 2025 18:01:05 -0700
Message-ID: <20250613010111.3548291-2-kuba@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250613010111.3548291-1-kuba@kernel.org>
References: <20250613010111.3548291-1-kuba@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1749776495;
 bh=NTwPvUsk4QNe1ETRBmwqN7Lcoqw2Xz3GU5c8UpRSfAc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IPPaMzV0OF4RumM2C5y4qSCdI8opH1+MlZzImntQVmAhBpkpVQi1V7P5aWCcU5OND
 tIyuwjPlO5P/F4x20ZqsgdnkmeIgS+8+iD+/9IMo6dQB8NLBESS2tz8Vv0YdrQLN2/
 g8j1gc78t8d2TwSswRnP1XRNPfE2gsdGwJ4TkLUxSxUPoMmvmt8mEcJmVzAH/lX/ao
 sapj2IsGnX5/F83xvwutxX+r92TBdFvzmadvf/CKgnO2wj8gBT5RKr1NdKcZX35wiM
 sr2+PyRVJnlMTjt1PNlY4tG1iuqau+rGUIHzH7G7PNFmHgFr14/fX1Znnz77OZMWIJ
 X21ty+UDtfzaQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=IPPaMzV0
Subject: [Intel-wired-lan] [PATCH net-next 1/7] eth: igb: migrate to new
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

