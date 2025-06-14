Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 68032AD9EB0
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Jun 2025 20:09:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EE550810CF;
	Sat, 14 Jun 2025 18:09:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7DNrf6s-Nicl; Sat, 14 Jun 2025 18:09:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C250B810B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749924559;
	bh=/QL7866X9t7XSuLkXbjQo6/eELxtGPuFclKWjRKQ1Sg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7U/u9r41L1MC9T7eBneypPcE0c5/oizWehwMiEWaUafVnykNyB0LCVP4s+37emIpd
	 qDs9OJ5NQ7L9ty4zvdldXzYnu/YsP5uMiy9t0h3PAJOqmn9Mr2OUfx2moo9eugLKNu
	 fblDGwFEABlluHoGPZ0AlE0cW7Mcr+2cBBAKEI6VAGpBGUmS+ZmCQupjx9xrBB6dP+
	 1JXSiyZJ+j49bES1M9ykErhM5OXYk91jFgFoYjM66NfTdXgLdiW3DUnHyHrdP9nuZp
	 OqP1mFizA5r1qBzp0jgSXbFOASWBODWYSNA/RtvK03aInGvtiKq62uhTj+w149Ce1R
	 HNHX2OdVwLTCA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C250B810B9;
	Sat, 14 Jun 2025 18:09:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A6E0C151
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 18:09:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 98EEE4033D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 18:09:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gwSL0hHopkZT for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Jun 2025 18:09:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6801340B3B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6801340B3B
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6801340B3B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 18:09:15 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 9BFE85C59AB;
 Sat, 14 Jun 2025 18:06:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D58DC4AF09;
 Sat, 14 Jun 2025 18:09:14 +0000 (UTC)
From: Jakub Kicinski <kuba@kernel.org>
To: davem@davemloft.net
Cc: netdev@vger.kernel.org, edumazet@google.com, pabeni@redhat.com,
 andrew+netdev@lunn.ch, horms@kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, michal.swiatkowski@linux.intel.com, joe@dama.to,
 Jakub Kicinski <kuba@kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Sat, 14 Jun 2025 11:09:06 -0700
Message-ID: <20250614180907.4167714-7-kuba@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250614180907.4167714-1-kuba@kernel.org>
References: <20250614180907.4167714-1-kuba@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1749924555;
 bh=KNIACJe6x9oNwcWL3LLP7JjD3ww7BSRVaLKKHwihEiY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bc2oyWi/Pynx1/B1TgAF9fDXjtYKaiVr+Xzq7/NbLlpYXTfWcZpIDhvPi0LIu2Aoh
 qSB2eqPSPRd5nx7WWP+F+ZqhQ0wJF4W0EWvBNy/0Z02XT0hUN5+bnyR4CYdz+mkggF
 wVrhcR6jpsWHGJBppHY6WcTxvTyQ2trrzEJhlW2TKES2+ebavdDUlBnYdt7Yh4rjqf
 +HJ64aRRgp6Bh36SRwZhrWWSkVad/fHi9lbD/5wGrEuBwm9O7W4C6xVA2zR9WoztWr
 x33bn6wZgN7VBAimQcazJ4XnJECbwD7B8Uzzpk+JP2j4uK29y8j2vLWXxpeqbEPARm
 38hrBpU/hvZoQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=bc2oyWi/
Subject: [Intel-wired-lan] [PATCH net-next v2 6/7] eth: ice: migrate to new
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
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 59 ++++++--------------
 1 file changed, 18 insertions(+), 41 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 5863a86482f5..ea7e8b879b48 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2797,14 +2797,7 @@ ice_set_link_ksettings(struct net_device *netdev,
 	return err;
 }
 
-/**
- * ice_parse_hdrs - parses headers from RSS hash input
- * @nfc: ethtool rxnfc command
- *
- * This function parses the rxnfc command and returns intended
- * header types for RSS configuration
- */
-static u32 ice_parse_hdrs(struct ethtool_rxnfc *nfc)
+static u32 ice_parse_hdrs(const struct ethtool_rxfh_fields *nfc)
 {
 	u32 hdrs = ICE_FLOW_SEG_HDR_NONE;
 
@@ -2869,15 +2862,7 @@ static u32 ice_parse_hdrs(struct ethtool_rxnfc *nfc)
 	return hdrs;
 }
 
-/**
- * ice_parse_hash_flds - parses hash fields from RSS hash input
- * @nfc: ethtool rxnfc command
- * @symm: true if Symmetric Topelitz is set
- *
- * This function parses the rxnfc command and returns intended
- * hash fields for RSS configuration
- */
-static u64 ice_parse_hash_flds(struct ethtool_rxnfc *nfc, bool symm)
+static u64 ice_parse_hash_flds(const struct ethtool_rxfh_fields *nfc, bool symm)
 {
 	u64 hfld = ICE_HASH_INVALID;
 
@@ -2974,16 +2959,13 @@ static u64 ice_parse_hash_flds(struct ethtool_rxnfc *nfc, bool symm)
 	return hfld;
 }
 
-/**
- * ice_set_rss_hash_opt - Enable/Disable flow types for RSS hash
- * @vsi: the VSI being configured
- * @nfc: ethtool rxnfc command
- *
- * Returns Success if the flow input set is supported.
- */
 static int
-ice_set_rss_hash_opt(struct ice_vsi *vsi, struct ethtool_rxnfc *nfc)
+ice_set_rxfh_fields(struct net_device *netdev,
+		    const struct ethtool_rxfh_fields *nfc,
+		    struct netlink_ext_ack *extack)
 {
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
 	struct ice_rss_hash_cfg cfg;
 	struct device *dev;
@@ -3029,14 +3011,11 @@ ice_set_rss_hash_opt(struct ice_vsi *vsi, struct ethtool_rxnfc *nfc)
 	return 0;
 }
 
-/**
- * ice_get_rss_hash_opt - Retrieve hash fields for a given flow-type
- * @vsi: the VSI being configured
- * @nfc: ethtool rxnfc command
- */
-static void
-ice_get_rss_hash_opt(struct ice_vsi *vsi, struct ethtool_rxnfc *nfc)
+static int
+ice_get_rxfh_fields(struct net_device *netdev, struct ethtool_rxfh_fields *nfc)
 {
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
 	struct device *dev;
 	u64 hash_flds;
@@ -3049,21 +3028,21 @@ ice_get_rss_hash_opt(struct ice_vsi *vsi, struct ethtool_rxnfc *nfc)
 	if (ice_is_safe_mode(pf)) {
 		dev_dbg(dev, "Advanced RSS disabled. Package download failed, vsi num = %d\n",
 			vsi->vsi_num);
-		return;
+		return 0;
 	}
 
 	hdrs = ice_parse_hdrs(nfc);
 	if (hdrs == ICE_FLOW_SEG_HDR_NONE) {
 		dev_dbg(dev, "Header type is not valid, vsi num = %d\n",
 			vsi->vsi_num);
-		return;
+		return 0;
 	}
 
 	hash_flds = ice_get_rss_cfg(&pf->hw, vsi->idx, hdrs, &symm);
 	if (hash_flds == ICE_HASH_INVALID) {
 		dev_dbg(dev, "No hash fields found for the given header type, vsi num = %d\n",
 			vsi->vsi_num);
-		return;
+		return 0;
 	}
 
 	if (hash_flds & ICE_FLOW_HASH_FLD_IPV4_SA ||
@@ -3090,6 +3069,8 @@ ice_get_rss_hash_opt(struct ice_vsi *vsi, struct ethtool_rxnfc *nfc)
 	    hash_flds & ICE_FLOW_HASH_FLD_GTPU_UP_TEID ||
 	    hash_flds & ICE_FLOW_HASH_FLD_GTPU_DWN_TEID)
 		nfc->data |= (u64)RXH_GTP_TEID;
+
+	return 0;
 }
 
 /**
@@ -3109,8 +3090,6 @@ static int ice_set_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd)
 		return ice_add_fdir_ethtool(vsi, cmd);
 	case ETHTOOL_SRXCLSRLDEL:
 		return ice_del_fdir_ethtool(vsi, cmd);
-	case ETHTOOL_SRXFH:
-		return ice_set_rss_hash_opt(vsi, cmd);
 	default:
 		break;
 	}
@@ -3153,10 +3132,6 @@ ice_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 	case ETHTOOL_GRXCLSRLALL:
 		ret = ice_get_fdir_fltr_ids(hw, cmd, (u32 *)rule_locs);
 		break;
-	case ETHTOOL_GRXFH:
-		ice_get_rss_hash_opt(vsi, cmd);
-		ret = 0;
-		break;
 	default:
 		break;
 	}
@@ -4816,6 +4791,8 @@ static const struct ethtool_ops ice_ethtool_ops = {
 	.get_rxfh_indir_size	= ice_get_rxfh_indir_size,
 	.get_rxfh		= ice_get_rxfh,
 	.set_rxfh		= ice_set_rxfh,
+	.get_rxfh_fields	= ice_get_rxfh_fields,
+	.set_rxfh_fields	= ice_set_rxfh_fields,
 	.get_channels		= ice_get_channels,
 	.set_channels		= ice_set_channels,
 	.get_ts_info		= ice_get_ts_info,
-- 
2.49.0

