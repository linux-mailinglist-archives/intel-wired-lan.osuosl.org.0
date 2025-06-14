Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 31DABAD9EAB
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Jun 2025 20:09:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7027460E96;
	Sat, 14 Jun 2025 18:09:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tn8qiwuc7H9L; Sat, 14 Jun 2025 18:09:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D1B5260E9B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749924558;
	bh=hxiekqr0BsR+Vnh8xKzJZQGlBU0FixLmHLeWk4whf2o=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WYiH3w1geDVW4UjWsm1Ws6qIjphnsv3wQVz8RWDJJflDVg25hGXNzrADJr1a7KwNi
	 o0uZp4h2aGQdgfcaVy42gD6gSoSvD87ew94na8iJ9sjrofiPXi7y57OwMZHpV8DuHO
	 3lkDKk2JaYEHrguhNH8XSl7pdcQRsiWiOYr6RwJRIjbMc3nLPuh+W7GVR1aU+KTIyF
	 hRTodx+74E2+x+YMX+w8DYsFonC3JTWpsutmjFtcvmqQKl2NuDiCfgwj4JAQcBRlnj
	 5e46/ldmzjp/xWKedyQfnUVS2EI624l0hI6jhRledE6RO+WCdeTAXlosM6qMENgkKg
	 hCcI/lvHMbwZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D1B5260E9B;
	Sat, 14 Jun 2025 18:09:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2AF8F151
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 18:09:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1D1E34033D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 18:09:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ySNbqE0C12bc for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Jun 2025 18:09:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 679F540AF7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 679F540AF7
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 679F540AF7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 18:09:15 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id DE33B5C59A3;
 Sat, 14 Jun 2025 18:06:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C48AFC4CEF0;
 Sat, 14 Jun 2025 18:09:13 +0000 (UTC)
From: Jakub Kicinski <kuba@kernel.org>
To: davem@davemloft.net
Cc: netdev@vger.kernel.org, edumazet@google.com, pabeni@redhat.com,
 andrew+netdev@lunn.ch, horms@kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, michal.swiatkowski@linux.intel.com, joe@dama.to,
 Jakub Kicinski <kuba@kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Sat, 14 Jun 2025 11:09:05 -0700
Message-ID: <20250614180907.4167714-6-kuba@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250614180907.4167714-1-kuba@kernel.org>
References: <20250614180907.4167714-1-kuba@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1749924554;
 bh=/l3F8PwOjdLxRnMQL7MyHKHPzGKl/abJTG+c3BGRhS0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cWk4QEm7lR1Y/P3TCY/HV5UdWJIxR8Vg6XFHnPOWezpL0YLEcMoHXudBp/qJy38i2
 53oTZqu/PgTx911YwjmPy10ilXWLuXbSLbLwdkl0DsROMHLnZtsIaabRjaEwQ9t6/l
 TU8iGIryxecnLnBg5qM17R/3+3poaqXDROBAZ1APAsQuTu20PUrxQGsMuTOJ2ONpzE
 PSEI8yksWBx0a5btYfzatlEWxqe8H08L1oNxGSDROdDZO1et0WlgE8dWHzpSkLnyFK
 3UcA8V+9oRy6bGNyoUZNhSBZ3eKLtKNO+KAeC4cTD8yIY2mc/RZQSsM/AFQC1SO5mV
 P5qWhFwr+M7XQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=cWk4QEm7
Subject: [Intel-wired-lan] [PATCH net-next v2 5/7] eth: i40e: migrate to new
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

