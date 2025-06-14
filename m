Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE71AD9EAF
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Jun 2025 20:09:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 05B0A607A3;
	Sat, 14 Jun 2025 18:09:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ObocWW60l5te; Sat, 14 Jun 2025 18:09:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5189860EB4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749924560;
	bh=15jQg4hR7vSG2EHRFtcDbjsg1nvaXfwJaxzYZopfidg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PQUSWAvIAVmSNEC3JMKfC9s1jT8iPQpL1km6rEEHTMfGpmBzt6/of5PZp3MOI5LVA
	 KUCuS7+LUUceyKug2/kv344h72ltLd8FRQb0kupCRoG9AGsdCq10qTiogrjaCrybpk
	 JFxAiP+Yhb/aQY2H8JXrb+vydtoQ5ENls4lKnOk+o/luNSFOIvG2qVYg93YLtH+1qS
	 l/vHJ/2in0cUnb1JKT6lbQUYEeBEqzficQwqF4+oWuuvBLlkyDL/U1RtD86j5MpI20
	 UE37+JTneyWAEBPml2JHeO7p4KlyLdttkN8SUldMHLG5LvQRo+hRkt9BNiW14/np+L
	 AEM5uTQbxrQIg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5189860EB4;
	Sat, 14 Jun 2025 18:09:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4EB14177
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 18:09:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 40994405D3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 18:09:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OpVDo612sgmk for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Jun 2025 18:09:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8B4174050E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B4174050E
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8B4174050E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 18:09:17 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 1EDDAA50918;
 Sat, 14 Jun 2025 18:09:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38E4EC4CEF0;
 Sat, 14 Jun 2025 18:09:15 +0000 (UTC)
From: Jakub Kicinski <kuba@kernel.org>
To: davem@davemloft.net
Cc: netdev@vger.kernel.org, edumazet@google.com, pabeni@redhat.com,
 andrew+netdev@lunn.ch, horms@kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, michal.swiatkowski@linux.intel.com, joe@dama.to,
 Jakub Kicinski <kuba@kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Sat, 14 Jun 2025 11:09:07 -0700
Message-ID: <20250614180907.4167714-8-kuba@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250614180907.4167714-1-kuba@kernel.org>
References: <20250614180907.4167714-1-kuba@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1749924555;
 bh=X0mP9OHWTTAw1gQ3zIlbt3YiOvIsGkRLLNr6heRWY0E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FNK4W8Hj85ZZ33too2Rt1MVCX5IGDObS0slyViC5x76LPtPfJnG4i1sDy8dGkkmZj
 gM7YGPZmXw7May9y5wbLSOCwj39An9gH0bB6kWKuDXxrzgLyV/33w0V9ymjOtu3DjE
 /iLrJUpw9lclvV9jfoTr4FEcjNOFf9bRwK7IK4xgoy4o7N99kXBvSiblJmW78kDFmx
 k6IKMSr603V05M6EmMOX0pjrsATrQ09s/5yULl58WN6nac8P0u7D+KMYffuy8C1j7i
 qMggOEVoFHQQbSAk7XLNDqWAIeTS90yicPHtz6NBlBVN3aQK1FVv7RNA7Sh2n0YoBU
 e9LNArsYxxPxw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=FNK4W8Hj
Subject: [Intel-wired-lan] [PATCH net-next v2 7/7] eth: iavf: migrate to new
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

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
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

