Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 754B7AD7FEE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jun 2025 03:01:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F2D8F83A77;
	Fri, 13 Jun 2025 01:01:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id veYIVfDTp_08; Fri, 13 Jun 2025 01:01:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 581C282161
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749776505;
	bh=QjL+ppevvibshSzwoK98oWAYXgqH9OpAJWN5g6Dw/3A=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=59qFlXNlhOPPLDf8zQe0Hj4iKNDVQjHOSzt4suCYFL86axsmW4uXA6BSxu5YrOWo8
	 Yb0+HDytkFvTyzcbmCWyVP/793mW14QwCpLKYh9LKZ5+XPVfsBtDgS8ZmEMHabR2UX
	 dswJ3QjzKhcqP8+3RmHYEoRufH+8i0eOh1KPFyUIJj/2/RD9aFO3+n1tn1J6Q7dRNJ
	 b4I2K8859ve+3yNPnAKRkx2otCck7TxbJ2sAFGcf5XKUU6ru4RbiudtG+t7bLJ+yGW
	 EQyNzmYiD7JUZ3nVxGRhJwTUw3lfGEQbBwA46WRZestR5prTx4Xyx6ZArcy4aqRX0l
	 +xk4+x7EX+Sqw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 581C282161;
	Fri, 13 Jun 2025 01:01:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 238331BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 01:01:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0A2A760EA5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 01:01:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JnbSPZJheuiz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jun 2025 01:01:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 400B160AD4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 400B160AD4
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 400B160AD4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 01:01:40 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 5E3ACA52229;
 Fri, 13 Jun 2025 01:01:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87865C4CEF1;
 Fri, 13 Jun 2025 01:01:38 +0000 (UTC)
From: Jakub Kicinski <kuba@kernel.org>
To: davem@davemloft.net
Cc: netdev@vger.kernel.org, edumazet@google.com, pabeni@redhat.com,
 andrew+netdev@lunn.ch, horms@kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, michal.swiatkowski@linux.intel.com,
 Jakub Kicinski <kuba@kernel.org>
Date: Thu, 12 Jun 2025 18:01:11 -0700
Message-ID: <20250613010111.3548291-8-kuba@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250613010111.3548291-1-kuba@kernel.org>
References: <20250613010111.3548291-1-kuba@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1749776499;
 bh=iqaX8+NFX5CbJ1m2/rcDhdqFSndIMpO0hb8Vmrtf3A8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Qgv6xrFSoOcY1EMisRQYX+kh/RFwAQpAMN9+c06Tuho7dLA2ADAnj/w95X3Yv2Qj8
 15DFXJN+oV9vXAgSP1uj1T8KfBFe0fQLAdsLDf9UjC+2fenCHSF8JZYnBZ5VPw1ffD
 DfvW7jD9EJqelOMWGTtySgCyMsAUN0kXLAiajYsg0apGjhPS1WCtx+qbFy0USYNQO8
 GkwBr/pyW5jNa6HP00dZz6ceeTXtctyLpT1ZQuSn/x6RecHPcmpy98AzzM4oBgmH1W
 Al2vcP+snPADDXv6DFdtsOvwtwqTkLDpK1tSEgUmxOa4N6bYrPTuRLYE56mr0012ZY
 DNE3MumUoV4Jg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Qgv6xrFS
Subject: [Intel-wired-lan] [PATCH net-next 7/7] eth: iavf: migrate to new
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

I'm deleting all the boilerplate kdoc from the affected functions.
It is somewhere between pointless and incorrect, just a burden for
people refactoring the code.

Signed-off-by: Jakub Kicinski <kuba@kernel.org>
---
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 52 ++++---------------
 1 file changed, 11 insertions(+), 41 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 2b2b315205b5..05d72be3fe80 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -1307,14 +1307,7 @@ static int iavf_del_fdir_ethtool(struct iavf_adapter *adapter, struct ethtool_rx
 	return iavf_fdir_del_fltr(adapter, false, fsp->location);
 }
 
-/**
- * iavf_adv_rss_parse_hdrs - parses headers from RSS hash input
- * @cmd: ethtool rxnfc command
- *
- * This function parses the rxnfc command and returns intended
- * header types for RSS configuration
- */
-static u32 iavf_adv_rss_parse_hdrs(struct ethtool_rxnfc *cmd)
+static u32 iavf_adv_rss_parse_hdrs(const struct ethtool_rxfh_fields *cmd)
 {
 	u32 hdrs = IAVF_ADV_RSS_FLOW_SEG_HDR_NONE;
 
@@ -1350,15 +1343,8 @@ static u32 iavf_adv_rss_parse_hdrs(struct ethtool_rxnfc *cmd)
 	return hdrs;
 }
 
-/**
- * iavf_adv_rss_parse_hash_flds - parses hash fields from RSS hash input
- * @cmd: ethtool rxnfc command
- * @symm: true if Symmetric Topelitz is set
- *
- * This function parses the rxnfc command and returns intended hash fields for
- * RSS configuration
- */
-static u64 iavf_adv_rss_parse_hash_flds(struct ethtool_rxnfc *cmd, bool symm)
+static u64
+iavf_adv_rss_parse_hash_flds(const struct ethtool_rxfh_fields *cmd, bool symm)
 {
 	u64 hfld = IAVF_ADV_RSS_HASH_INVALID;
 
@@ -1416,17 +1402,12 @@ static u64 iavf_adv_rss_parse_hash_flds(struct ethtool_rxnfc *cmd, bool symm)
 	return hfld;
 }
 
-/**
- * iavf_set_adv_rss_hash_opt - Enable/Disable flow types for RSS hash
- * @adapter: pointer to the VF adapter structure
- * @cmd: ethtool rxnfc command
- *
- * Returns Success if the flow input set is supported.
- */
 static int
-iavf_set_adv_rss_hash_opt(struct iavf_adapter *adapter,
-			  struct ethtool_rxnfc *cmd)
+iavf_set_rxfh_fields(struct net_device *netdev,
+		     const struct ethtool_rxfh_fields *cmd,
+		     struct netlink_ext_ack *extack)
 {
+	struct iavf_adapter *adapter = netdev_priv(netdev);
 	struct iavf_adv_rss *rss_old, *rss_new;
 	bool rss_new_add = false;
 	bool symm = false;
@@ -1493,17 +1474,10 @@ iavf_set_adv_rss_hash_opt(struct iavf_adapter *adapter,
 	return err;
 }
 
-/**
- * iavf_get_adv_rss_hash_opt - Retrieve hash fields for a given flow-type
- * @adapter: pointer to the VF adapter structure
- * @cmd: ethtool rxnfc command
- *
- * Returns Success if the flow input set is supported.
- */
 static int
-iavf_get_adv_rss_hash_opt(struct iavf_adapter *adapter,
-			  struct ethtool_rxnfc *cmd)
+iavf_get_rxfh_fields(struct net_device *netdev, struct ethtool_rxfh_fields *cmd)
 {
+	struct iavf_adapter *adapter = netdev_priv(netdev);
 	struct iavf_adv_rss *rss;
 	u64 hash_flds;
 	u32 hdrs;
@@ -1568,9 +1542,6 @@ static int iavf_set_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd)
 	case ETHTOOL_SRXCLSRLDEL:
 		ret = iavf_del_fdir_ethtool(adapter, cmd);
 		break;
-	case ETHTOOL_SRXFH:
-		ret = iavf_set_adv_rss_hash_opt(adapter, cmd);
-		break;
 	default:
 		break;
 	}
@@ -1612,9 +1583,6 @@ static int iavf_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 	case ETHTOOL_GRXCLSRLALL:
 		ret = iavf_get_fdir_fltr_ids(adapter, cmd, (u32 *)rule_locs);
 		break;
-	case ETHTOOL_GRXFH:
-		ret = iavf_get_adv_rss_hash_opt(adapter, cmd);
-		break;
 	default:
 		break;
 	}
@@ -1812,6 +1780,8 @@ static const struct ethtool_ops iavf_ethtool_ops = {
 	.get_rxfh_indir_size	= iavf_get_rxfh_indir_size,
 	.get_rxfh		= iavf_get_rxfh,
 	.set_rxfh		= iavf_set_rxfh,
+	.get_rxfh_fields	= iavf_get_rxfh_fields,
+	.set_rxfh_fields	= iavf_set_rxfh_fields,
 	.get_channels		= iavf_get_channels,
 	.set_channels		= iavf_set_channels,
 	.get_rxfh_key_size	= iavf_get_rxfh_key_size,
-- 
2.49.0

