Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FDDAD9EAD
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Jun 2025 20:09:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D5B7A80F08;
	Sat, 14 Jun 2025 18:09:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SWyfQ6c30vFa; Sat, 14 Jun 2025 18:09:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4542B8109F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749924558;
	bh=giC9PV+iYtx8dbeEIAU4DBy11WFkLJ9iP0NH5gNpuQc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=teKP560Vkxt738FPwTnd03gyFW/yBwR44ubMpTok3XXczjA1xL1z+OFz7mT6YIxpC
	 XicAaToj1rAGh2hYQ3oN57LVlOVx0njvAcUEk7YfaFTFSddThGaF0d3a+PbpChdA2O
	 mkzucVAxdbsDNr7axrHrFPPvs2QE77Ba5AIwaZI9YfZBeCSdhEu/IqE7FH4Qa+Myoo
	 qyLNuYnD8I+3F9uQxkp0AxrPP8n6MU8QItDPnzv7TeQe4H41fzrsGA7TnyN6B1IyoM
	 XgpHiFBvXDy1mEBdo5xxIdFy4/tOtzh3LNbDLrg30PNRMaHpC4k+AWc3zuhlMLMLRu
	 2MOoZmvyk5H5g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4542B8109F;
	Sat, 14 Jun 2025 18:09:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BD46C177
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 18:09:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A3DEF40B94
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 18:09:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QPKHeCi4s2lK for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Jun 2025 18:09:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0BDAF4033D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0BDAF4033D
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0BDAF4033D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 18:09:14 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 4EEEB5C59C6;
 Sat, 14 Jun 2025 18:06:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16E01C4CEF3;
 Sat, 14 Jun 2025 18:09:13 +0000 (UTC)
From: Jakub Kicinski <kuba@kernel.org>
To: davem@davemloft.net
Cc: netdev@vger.kernel.org, edumazet@google.com, pabeni@redhat.com,
 andrew+netdev@lunn.ch, horms@kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, michal.swiatkowski@linux.intel.com, joe@dama.to,
 Jakub Kicinski <kuba@kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Sat, 14 Jun 2025 11:09:04 -0700
Message-ID: <20250614180907.4167714-5-kuba@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250614180907.4167714-1-kuba@kernel.org>
References: <20250614180907.4167714-1-kuba@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1749924553;
 bh=9UOYjumfzFj1YP/sbEZWRQIvmCADIa12+t7J4nrYsoQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=alwP46Fq1v7PA+w0p6c5Wgx3ULCT05hM9mZT8KMvamE1nH1lqfr4hdgeFAJGqg5fv
 XgGpDDHgcHmDtirGpHcgLrw6HS+Cm7Qr/cpKIVfdSnS95QenlMUr4yFuPOmDV0ZKMj
 OEX2hHAUzpA71zYpXDdrojdJZAkBdgXdhMy07MgIzeVSnGA1ADYmc3VWnpuuoUjPlo
 0BRBiIjyIn1fqGxmtsKbwCNerhzxeRSyYxEJUjJUTjULtDAMPitbSE2vjSBNlXo4L8
 JjGEZPSGGVjHKFgdCnfRYskb40blPAMSVhp0RPE9pMuxGWkfgYZCaZV/eeoKsrDWxD
 +nEtffw5Hrrxg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=alwP46Fq
Subject: [Intel-wired-lan] [PATCH net-next v2 4/7] eth: fm10k: migrate to
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
.get callback moves out of the switch and set_rxnfc disappears
as ETHTOOL_SRXFH as the only functionality.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jakub Kicinski <kuba@kernel.org>
---
 .../net/ethernet/intel/fm10k/fm10k_ethtool.c  | 34 ++++++-------------
 1 file changed, 10 insertions(+), 24 deletions(-)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
index 1bc5b6c0b897..1954a04460d1 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
@@ -691,9 +691,11 @@ static int fm10k_set_coalesce(struct net_device *dev,
 	return 0;
 }
 
-static int fm10k_get_rss_hash_opts(struct fm10k_intfc *interface,
-				   struct ethtool_rxnfc *cmd)
+static int fm10k_get_rssh_fields(struct net_device *dev,
+				 struct ethtool_rxfh_fields *cmd)
 {
+	struct fm10k_intfc *interface = netdev_priv(dev);
+
 	cmd->data = 0;
 
 	/* Report default options for RSS on fm10k */
@@ -743,9 +745,6 @@ static int fm10k_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
 		cmd->data = interface->num_rx_queues;
 		ret = 0;
 		break;
-	case ETHTOOL_GRXFH:
-		ret = fm10k_get_rss_hash_opts(interface, cmd);
-		break;
 	default:
 		break;
 	}
@@ -753,9 +752,11 @@ static int fm10k_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
 	return ret;
 }
 
-static int fm10k_set_rss_hash_opt(struct fm10k_intfc *interface,
-				  struct ethtool_rxnfc *nfc)
+static int fm10k_set_rssh_fields(struct net_device *dev,
+				 const struct ethtool_rxfh_fields *nfc,
+				 struct netlink_ext_ack *extack)
 {
+	struct fm10k_intfc *interface = netdev_priv(dev);
 	int rss_ipv4_udp = test_bit(FM10K_FLAG_RSS_FIELD_IPV4_UDP,
 				    interface->flags);
 	int rss_ipv6_udp = test_bit(FM10K_FLAG_RSS_FIELD_IPV6_UDP,
@@ -871,22 +872,6 @@ static int fm10k_set_rss_hash_opt(struct fm10k_intfc *interface,
 	return 0;
 }
 
-static int fm10k_set_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd)
-{
-	struct fm10k_intfc *interface = netdev_priv(dev);
-	int ret = -EOPNOTSUPP;
-
-	switch (cmd->cmd) {
-	case ETHTOOL_SRXFH:
-		ret = fm10k_set_rss_hash_opt(interface, cmd);
-		break;
-	default:
-		break;
-	}
-
-	return ret;
-}
-
 static int fm10k_mbx_test(struct fm10k_intfc *interface, u64 *data)
 {
 	struct fm10k_hw *hw = &interface->hw;
@@ -1176,7 +1161,6 @@ static const struct ethtool_ops fm10k_ethtool_ops = {
 	.get_coalesce		= fm10k_get_coalesce,
 	.set_coalesce		= fm10k_set_coalesce,
 	.get_rxnfc		= fm10k_get_rxnfc,
-	.set_rxnfc		= fm10k_set_rxnfc,
 	.get_regs               = fm10k_get_regs,
 	.get_regs_len           = fm10k_get_regs_len,
 	.self_test		= fm10k_self_test,
@@ -1186,6 +1170,8 @@ static const struct ethtool_ops fm10k_ethtool_ops = {
 	.get_rxfh_key_size	= fm10k_get_rssrk_size,
 	.get_rxfh		= fm10k_get_rssh,
 	.set_rxfh		= fm10k_set_rssh,
+	.get_rxfh_fields	= fm10k_get_rssh_fields,
+	.set_rxfh_fields	= fm10k_set_rssh_fields,
 	.get_channels		= fm10k_get_channels,
 	.set_channels		= fm10k_set_channels,
 	.get_ts_info		= ethtool_op_get_ts_info,
-- 
2.49.0

