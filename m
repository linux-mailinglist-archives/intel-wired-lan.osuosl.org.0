Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FAE0AD7FED
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jun 2025 03:01:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D6EF04089F;
	Fri, 13 Jun 2025 01:01:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jxTG_eLr3XsF; Fri, 13 Jun 2025 01:01:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 369E94088D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749776504;
	bh=zI0XI8IZlLARDY0ONlK8tKsH1DGh3A/+Hv7ieiuhoOw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cxYAU8erlfHTMQ9zguLTQAT3cCG65YMm8i1rB4iPu5qiSrlAVSjGyp6TzFhaI1rMR
	 7Ii2LhJBS8kfdqZzmxfu3pxSM2jY6TniyqphfYBEOxkwdkdyAXM0/s5nsTh2VmMatC
	 Npfg4b+2zs3jBKfzBD+CUuZmWtgwBoTw8Xz75Bvs54L1zY3XfqiOyseQROo5rL7Wd7
	 69b1fqCcKn5y7oKt44hpkCX9TcHBoW1jPPaWwMdmjamS2Ms9DZT5w6aHzg4TQ+0yZd
	 RXYacCc9YhLD0mh7V12DAM2NsBOCc4ZoRihoeRCjquDjJMFXUmOiCjvRD8PIwLRrxQ
	 hajbyX7cr3xwA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 369E94088D;
	Fri, 13 Jun 2025 01:01:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 229251BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 01:01:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8AF6481471
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 01:01:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id czTZufhAp-90 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jun 2025 01:01:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CF37081387
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF37081387
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CF37081387
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 01:01:38 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id E38B5A52229;
 Fri, 13 Jun 2025 01:01:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 403ADC4CEEB;
 Fri, 13 Jun 2025 01:01:37 +0000 (UTC)
From: Jakub Kicinski <kuba@kernel.org>
To: davem@davemloft.net
Cc: netdev@vger.kernel.org, edumazet@google.com, pabeni@redhat.com,
 andrew+netdev@lunn.ch, horms@kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, michal.swiatkowski@linux.intel.com,
 Jakub Kicinski <kuba@kernel.org>
Date: Thu, 12 Jun 2025 18:01:09 -0700
Message-ID: <20250613010111.3548291-6-kuba@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250613010111.3548291-1-kuba@kernel.org>
References: <20250613010111.3548291-1-kuba@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1749776497;
 bh=HK2AeD3XJ4OWXWWBdY5aiiZ6qWJ669IK5xUN6wC3TG8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BsxLI3+pe5sKoj5g3g7RHkRjdkw66QkD9Gx1V+7AjK4Oc7XPaiUkZ9oYK9+XaVqty
 hv/mb0SNq/3cQTc4w8sDWKnPAztLBddw6XXagv8WDKZVk4vRZ+wyMQwOFnFyhWXZ/9
 X+kxeDdxgqN5tnNCMdDnVJ3nlzecQD3bVGx2PRZivecLn8Zo46COyU99/Fr34AUxH7
 M9pDK/GMVHpSgtBDoPcHGUAvg7PW/8WyGlPKu7TDIa7b9RR7Ir/dsyGJBO/tbDdYSj
 T1Gf3G8N9ayoISP1U+b2iau23InCdvtwPnd5HjBVHdkTkfvRmBQZpRFcYXCrB2YHl3
 aBImPc98XMccg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=BsxLI3+p
Subject: [Intel-wired-lan] [PATCH net-next 5/7] eth: i40e: migrate to new
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
 .../net/ethernet/intel/i40e/i40e_ethtool.c    | 38 +++++++------------
 1 file changed, 14 insertions(+), 24 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index c7f2d85eafcd..2ff17d50135c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -3139,15 +3139,12 @@ static int i40e_set_per_queue_coalesce(struct net_device *netdev, u32 queue,
 	return __i40e_set_coalesce(netdev, ec, queue);
 }
 
-/**
- * i40e_get_rss_hash_opts - Get RSS hash Input Set for each flow type
- * @pf: pointer to the physical function struct
- * @cmd: ethtool rxnfc command
- *
- * Returns Success if the flow is supported, else Invalid Input.
- **/
-static int i40e_get_rss_hash_opts(struct i40e_pf *pf, struct ethtool_rxnfc *cmd)
+static int i40e_get_rxfh_fields(struct net_device *netdev,
+				struct ethtool_rxfh_fields *cmd)
 {
+	struct i40e_netdev_priv *np = netdev_priv(netdev);
+	struct i40e_vsi *vsi = np->vsi;
+	struct i40e_pf *pf = vsi->back;
 	struct i40e_hw *hw = &pf->hw;
 	u8 flow_pctype = 0;
 	u64 i_set = 0;
@@ -3545,9 +3542,6 @@ static int i40e_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 		cmd->data = vsi->rss_size;
 		ret = 0;
 		break;
-	case ETHTOOL_GRXFH:
-		ret = i40e_get_rss_hash_opts(pf, cmd);
-		break;
 	case ETHTOOL_GRXCLSRLCNT:
 		cmd->rule_cnt = pf->fdir_pf_active_filters;
 		/* report total rule count */
@@ -3576,7 +3570,7 @@ static int i40e_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
  * Returns value of bits to be set per user request
  **/
 static u64 i40e_get_rss_hash_bits(struct i40e_hw *hw,
-				  struct ethtool_rxnfc *nfc,
+				  const struct ethtool_rxfh_fields *nfc,
 				  u64 i_setc)
 {
 	u64 i_set = i_setc;
@@ -3621,15 +3615,13 @@ static u64 i40e_get_rss_hash_bits(struct i40e_hw *hw,
 }
 
 #define FLOW_PCTYPES_SIZE 64
-/**
- * i40e_set_rss_hash_opt - Enable/Disable flow types for RSS hash
- * @pf: pointer to the physical function struct
- * @nfc: ethtool rxnfc command
- *
- * Returns Success if the flow input set is supported.
- **/
-static int i40e_set_rss_hash_opt(struct i40e_pf *pf, struct ethtool_rxnfc *nfc)
+static int i40e_set_rxfh_fields(struct net_device *netdev,
+				const struct ethtool_rxfh_fields *nfc,
+				struct netlink_ext_ack *extack)
 {
+	struct i40e_netdev_priv *np = netdev_priv(netdev);
+	struct i40e_vsi *vsi = np->vsi;
+	struct i40e_pf *pf = vsi->back;
 	struct i40e_hw *hw = &pf->hw;
 	u64 hena = (u64)i40e_read_rx_ctl(hw, I40E_PFQF_HENA(0)) |
 		   ((u64)i40e_read_rx_ctl(hw, I40E_PFQF_HENA(1)) << 32);
@@ -4964,13 +4956,9 @@ static int i40e_set_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd)
 {
 	struct i40e_netdev_priv *np = netdev_priv(netdev);
 	struct i40e_vsi *vsi = np->vsi;
-	struct i40e_pf *pf = vsi->back;
 	int ret = -EOPNOTSUPP;
 
 	switch (cmd->cmd) {
-	case ETHTOOL_SRXFH:
-		ret = i40e_set_rss_hash_opt(pf, cmd);
-		break;
 	case ETHTOOL_SRXCLSRLINS:
 		ret = i40e_add_fdir_ethtool(vsi, cmd);
 		break;
@@ -5846,6 +5834,8 @@ static const struct ethtool_ops i40e_ethtool_ops = {
 	.get_rxfh_indir_size	= i40e_get_rxfh_indir_size,
 	.get_rxfh		= i40e_get_rxfh,
 	.set_rxfh		= i40e_set_rxfh,
+	.get_rxfh_fields	= i40e_get_rxfh_fields,
+	.set_rxfh_fields	= i40e_set_rxfh_fields,
 	.get_channels		= i40e_get_channels,
 	.set_channels		= i40e_set_channels,
 	.get_module_info	= i40e_get_module_info,
-- 
2.49.0

