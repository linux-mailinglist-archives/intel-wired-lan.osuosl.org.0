Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F8CA2E4E9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 08:02:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BFB7340916;
	Mon, 10 Feb 2025 07:02:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aTU4D_sOWNBV; Mon, 10 Feb 2025 07:02:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BCBB840932
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739170955;
	bh=0yTAvDRShwqPyrNszjX5OLNeM6+7cqqT9Tho9Y4+4bo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ov2h68AuaR4MWjGqYH/Giz0p73PEDHJBpmLitCur43AYZ3sve3bJnXdTsZTt6acbO
	 SxjLf+zreK4ncL+QLtfIyNIzrnaUmjvNOfwxN58Vrl0+vSlhlqEBa/XKJgLx7KvPb6
	 sP4Rte4qxRiGcQ6USU/hiljFHevHGa0fX6nWG99DR4WeytIiCNpGtZ4PTITb52ATnR
	 6U+hgT//bj6GMZ9nB9KXogITaqy2cRt4yGh+R3EVUMvwjKThhUTrl1zRpt53zz0wdA
	 o1GAU82pmn46OnZq5CyOL/fcT0u9fqRF8uJtrJWodZih5f/Ci2Sma5cGg5FoliwhA7
	 8Kdn3TqF/CgQg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BCBB840932;
	Mon, 10 Feb 2025 07:02:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1FF4C6C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 07:02:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 02EB240916
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 07:02:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 74tMnNtL6yXN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 07:02:31 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DB1CB4090B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB1CB4090B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DB1CB4090B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 07:02:30 +0000 (UTC)
X-CSE-ConnectionGUID: E1+cOZudRvS5bcn63ZvvTw==
X-CSE-MsgGUID: wLCymezbRKiEbxo85urBbg==
X-IronPort-AV: E=McAfee;i="6700,10204,11340"; a="38937823"
X-IronPort-AV: E=Sophos;i="6.13,273,1732608000"; d="scan'208";a="38937823"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2025 23:02:29 -0800
X-CSE-ConnectionGUID: /Fg1vOxERIafZ2xExnREWA==
X-CSE-MsgGUID: i1EeuoL3SAmb3eJMK/A8ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,273,1732608000"; d="scan'208";a="112622475"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by fmviesa010.fm.intel.com with ESMTP; 09 Feb 2025 23:02:21 -0800
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Simon Horman <horms@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Furong Xu <0x1207@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Serge Semin <fancer.lancer@gmail.com>,
 Xiaolei Wang <xiaolei.wang@windriver.com>,
 Suraj Jaiswal <quic_jsuraj@quicinc.com>,
 Kory Maincent <kory.maincent@bootlin.com>, Gal Pressman <gal@nvidia.com>,
 Jesper Nilsson <jesper.nilsson@axis.com>,
 Andrew Halaney <ahalaney@redhat.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
Date: Mon, 10 Feb 2025 02:01:59 -0500
Message-Id: <20250210070207.2615418-2-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250210070207.2615418-1-faizal.abdul.rahim@linux.intel.com>
References: <20250210070207.2615418-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739170951; x=1770706951;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=TpYOtueF/X/bOTD/BAfQZ6kG6DphYPMy7LwUzpcrF8M=;
 b=JHGqXrHldpNKH18zKxBRsHFdnuViqWgJ1uXLN/ZgbzthRNfH8FSLfZxk
 mevxeiPtSVXlprP662Jzdjy3sMu0EAc8w8ZNUaW4E5OY4S67fdnfHSACq
 ARbpeLsXLiSs6yH6VD08ENpdEcLMsx5L1p9HBz7rzOFX+uRFLX3Nk4nb+
 uXqaFUsCXwO5VQaUYY69xGKoObWeILmmpo8HJSEt8K3S+alejefiW5xSg
 NQgUJLIGRjF5jlFSWPmVGrxBwAJhrb8PVfxli0dLGq+1s2pmR9m00CdmC
 T4WKaJTRsx8uvZ6MeEHkBvaAN1iurOt9WMzxZ1Zh/4tDENKdoPm+oObSJ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JHGqXrHl
Subject: [Intel-wired-lan] [PATCH iwl-next v4 1/9] net: ethtool: mm: extract
 stmmac verification logic into common library
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

From: Vladimir Oltean <vladimir.oltean@nxp.com>

It appears that stmmac is not the only hardware which requires a
software-driven verification state machine for the MAC Merge layer.

While on the one hand it's good to encourage hardware implementations,
on the other hand it's quite difficult to tolerate multiple drivers
implementing independently fairly non-trivial logic.

Extract the hardware-independent logic from stmmac into library code and
put it in ethtool. Name the state structure "mmsv" for MAC Merge
Software Verification. Let this expose an operations structure for
executing the hardware stuff: sync hardware with the tx_active boolean
(result of verification process), enable/disable the pMAC, send mPackets,
notify library of external events (reception of mPackets), as well as
link state changes.

Note that it is assumed that the external events are received in hardirq
context. If they are not, it is probably a good idea to disable hardirqs
when calling ethtool_mmsv_event_handle(), because the library does not
do so.

Also, the MM software verification process has no business with the
tx_min_frag_size, that is all the driver's to handle.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Co-developed-by: Choong Yong Liang <yong.liang.choong@linux.intel.com>
Signed-off-by: Choong Yong Liang <yong.liang.choong@linux.intel.com>
Co-developed-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Tested-by: Choong Yong Liang <yong.liang.choong@linux.intel.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac.h  |  16 +-
 .../ethernet/stmicro/stmmac/stmmac_ethtool.c  |  41 +---
 .../net/ethernet/stmicro/stmmac/stmmac_fpe.c  | 174 +++-----------
 .../net/ethernet/stmicro/stmmac/stmmac_fpe.h  |   5 -
 .../net/ethernet/stmicro/stmmac/stmmac_main.c |   8 +-
 include/linux/ethtool.h                       |  61 +++++
 net/ethtool/mm.c                              | 222 ++++++++++++++++++
 7 files changed, 327 insertions(+), 200 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac.h b/drivers/net/ethernet/stmicro/stmmac/stmmac.h
index f05cae103d83..c9cc41af258a 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac.h
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac.h
@@ -147,21 +147,9 @@ struct stmmac_channel {
 };
 
 struct stmmac_fpe_cfg {
-	/* Serialize access to MAC Merge state between ethtool requests
-	 * and link state updates.
-	 */
-	spinlock_t lock;
-
+	struct ethtool_mmsv mmsv;
 	const struct stmmac_fpe_reg *reg;
-	u32 fpe_csr;				/* MAC_FPE_CTRL_STS reg cache */
-
-	enum ethtool_mm_verify_status status;
-	struct timer_list verify_timer;
-	bool verify_enabled;
-	int verify_retries;
-	bool pmac_enabled;
-	u32 verify_time;
-	bool tx_enabled;
+	u32 fpe_csr;	/* MAC_FPE_CTRL_STS reg cache */
 };
 
 struct stmmac_tc_entry {
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c
index 918a32f8fda8..8e6b052e00d6 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c
@@ -1210,37 +1210,17 @@ static int stmmac_get_mm(struct net_device *ndev,
 			 struct ethtool_mm_state *state)
 {
 	struct stmmac_priv *priv = netdev_priv(ndev);
-	unsigned long flags;
 	u32 frag_size;
 
 	if (!stmmac_fpe_supported(priv))
 		return -EOPNOTSUPP;
 
-	spin_lock_irqsave(&priv->fpe_cfg.lock, flags);
+	ethtool_mmsv_get_mm(&priv->fpe_cfg.mmsv, state);
 
-	state->max_verify_time = STMMAC_FPE_MM_MAX_VERIFY_TIME_MS;
-	state->verify_enabled = priv->fpe_cfg.verify_enabled;
-	state->pmac_enabled = priv->fpe_cfg.pmac_enabled;
-	state->verify_time = priv->fpe_cfg.verify_time;
-	state->tx_enabled = priv->fpe_cfg.tx_enabled;
-	state->verify_status = priv->fpe_cfg.status;
 	state->rx_min_frag_size = ETH_ZLEN;
-
-	/* FPE active if common tx_enabled and
-	 * (verification success or disabled(forced))
-	 */
-	if (state->tx_enabled &&
-	    (state->verify_status == ETHTOOL_MM_VERIFY_STATUS_SUCCEEDED ||
-	     state->verify_status == ETHTOOL_MM_VERIFY_STATUS_DISABLED))
-		state->tx_active = true;
-	else
-		state->tx_active = false;
-
 	frag_size = stmmac_fpe_get_add_frag_size(priv);
 	state->tx_min_frag_size = ethtool_mm_frag_size_add_to_min(frag_size);
 
-	spin_unlock_irqrestore(&priv->fpe_cfg.lock, flags);
-
 	return 0;
 }
 
@@ -1248,8 +1228,6 @@ static int stmmac_set_mm(struct net_device *ndev, struct ethtool_mm_cfg *cfg,
 			 struct netlink_ext_ack *extack)
 {
 	struct stmmac_priv *priv = netdev_priv(ndev);
-	struct stmmac_fpe_cfg *fpe_cfg = &priv->fpe_cfg;
-	unsigned long flags;
 	u32 frag_size;
 	int err;
 
@@ -1258,23 +1236,8 @@ static int stmmac_set_mm(struct net_device *ndev, struct ethtool_mm_cfg *cfg,
 	if (err)
 		return err;
 
-	/* Wait for the verification that's currently in progress to finish */
-	timer_shutdown_sync(&fpe_cfg->verify_timer);
-
-	spin_lock_irqsave(&fpe_cfg->lock, flags);
-
-	fpe_cfg->verify_enabled = cfg->verify_enabled;
-	fpe_cfg->pmac_enabled = cfg->pmac_enabled;
-	fpe_cfg->verify_time = cfg->verify_time;
-	fpe_cfg->tx_enabled = cfg->tx_enabled;
-
-	if (!cfg->verify_enabled)
-		fpe_cfg->status = ETHTOOL_MM_VERIFY_STATUS_DISABLED;
-
+	ethtool_mmsv_set_mm(&priv->fpe_cfg.mmsv, cfg);
 	stmmac_fpe_set_add_frag_size(priv, frag_size);
-	stmmac_fpe_apply(priv);
-
-	spin_unlock_irqrestore(&fpe_cfg->lock, flags);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_fpe.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_fpe.c
index 3a4bee029c7f..75b470ee621a 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_fpe.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_fpe.c
@@ -27,12 +27,6 @@
 #define STMMAC_MAC_FPE_CTRL_STS_SVER	BIT(1)
 #define STMMAC_MAC_FPE_CTRL_STS_EFPE	BIT(0)
 
-/* FPE link-partner hand-shaking mPacket type */
-enum stmmac_mpacket_type {
-	MPACKET_VERIFY = 0,
-	MPACKET_RESPONSE = 1,
-};
-
 struct stmmac_fpe_reg {
 	const u32 mac_fpe_reg;		/* offset of MAC_FPE_CTRL_STS */
 	const u32 mtl_fpe_reg;		/* offset of MTL_FPE_CTRL_STS */
@@ -48,10 +42,10 @@ bool stmmac_fpe_supported(struct stmmac_priv *priv)
 		priv->hw->mac->fpe_map_preemption_class;
 }
 
-static void stmmac_fpe_configure(struct stmmac_priv *priv, bool tx_enable,
-				 bool pmac_enable)
+static void stmmac_fpe_configure_tx(struct ethtool_mmsv *mmsv, bool tx_enable)
 {
-	struct stmmac_fpe_cfg *cfg = &priv->fpe_cfg;
+	struct stmmac_fpe_cfg *cfg = container_of(mmsv, struct stmmac_fpe_cfg, mmsv);
+	struct stmmac_priv *priv = container_of(cfg, struct stmmac_priv, fpe_cfg);
 	const struct stmmac_fpe_reg *reg = cfg->reg;
 	u32 num_rxq = priv->plat->rx_queues_to_use;
 	void __iomem *ioaddr = priv->ioaddr;
@@ -68,6 +62,15 @@ static void stmmac_fpe_configure(struct stmmac_priv *priv, bool tx_enable,
 		cfg->fpe_csr = 0;
 	}
 	writel(cfg->fpe_csr, ioaddr + reg->mac_fpe_reg);
+}
+
+static void stmmac_fpe_configure_pmac(struct ethtool_mmsv *mmsv, bool pmac_enable)
+{
+	struct stmmac_fpe_cfg *cfg = container_of(mmsv, struct stmmac_fpe_cfg, mmsv);
+	struct stmmac_priv *priv = container_of(cfg, struct stmmac_priv, fpe_cfg);
+	const struct stmmac_fpe_reg *reg = cfg->reg;
+	void __iomem *ioaddr = priv->ioaddr;
+	u32 value;
 
 	value = readl(ioaddr + reg->int_en_reg);
 
@@ -85,47 +88,45 @@ static void stmmac_fpe_configure(struct stmmac_priv *priv, bool tx_enable,
 	writel(value, ioaddr + reg->int_en_reg);
 }
 
-static void stmmac_fpe_send_mpacket(struct stmmac_priv *priv,
-				    enum stmmac_mpacket_type type)
+static void stmmac_fpe_send_mpacket(struct ethtool_mmsv *mmsv,
+				    enum ethtool_mpacket type)
 {
-	const struct stmmac_fpe_reg *reg = priv->fpe_cfg.reg;
+	struct stmmac_fpe_cfg *cfg = container_of(mmsv, struct stmmac_fpe_cfg, mmsv);
+	struct stmmac_priv *priv = container_of(cfg, struct stmmac_priv, fpe_cfg);
+	const struct stmmac_fpe_reg *reg = cfg->reg;
 	void __iomem *ioaddr = priv->ioaddr;
-	u32 value = priv->fpe_cfg.fpe_csr;
+	u32 value = cfg->fpe_csr;
 
-	if (type == MPACKET_VERIFY)
+	if (type == ETHTOOL_MPACKET_VERIFY)
 		value |= STMMAC_MAC_FPE_CTRL_STS_SVER;
-	else if (type == MPACKET_RESPONSE)
+	else if (type == ETHTOOL_MPACKET_RESPONSE)
 		value |= STMMAC_MAC_FPE_CTRL_STS_SRSP;
 
 	writel(value, ioaddr + reg->mac_fpe_reg);
 }
 
+static const struct ethtool_mmsv_ops stmmac_mmsv_ops = {
+	.configure_tx = stmmac_fpe_configure_tx,
+	.configure_pmac = stmmac_fpe_configure_pmac,
+	.send_mpacket = stmmac_fpe_send_mpacket,
+};
+
 static void stmmac_fpe_event_status(struct stmmac_priv *priv, int status)
 {
 	struct stmmac_fpe_cfg *fpe_cfg = &priv->fpe_cfg;
+	struct ethtool_mmsv *mmsv = &fpe_cfg->mmsv;
 
-	/* This is interrupt context, just spin_lock() */
-	spin_lock(&fpe_cfg->lock);
-
-	if (!fpe_cfg->pmac_enabled || status == FPE_EVENT_UNKNOWN)
-		goto unlock_out;
+	if (status == FPE_EVENT_UNKNOWN)
+		return;
 
-	/* LP has sent verify mPacket */
 	if ((status & FPE_EVENT_RVER) == FPE_EVENT_RVER)
-		stmmac_fpe_send_mpacket(priv, MPACKET_RESPONSE);
+		ethtool_mmsv_event_handle(mmsv, ETHTOOL_MMSV_LP_SENT_VERIFY_MPACKET);
 
-	/* Local has sent verify mPacket */
-	if ((status & FPE_EVENT_TVER) == FPE_EVENT_TVER &&
-	    fpe_cfg->status != ETHTOOL_MM_VERIFY_STATUS_SUCCEEDED)
-		fpe_cfg->status = ETHTOOL_MM_VERIFY_STATUS_VERIFYING;
+	if ((status & FPE_EVENT_TVER) == FPE_EVENT_TVER)
+		ethtool_mmsv_event_handle(mmsv, ETHTOOL_MMSV_LD_SENT_VERIFY_MPACKET);
 
-	/* LP has sent response mPacket */
-	if ((status & FPE_EVENT_RRSP) == FPE_EVENT_RRSP &&
-	    fpe_cfg->status == ETHTOOL_MM_VERIFY_STATUS_VERIFYING)
-		fpe_cfg->status = ETHTOOL_MM_VERIFY_STATUS_SUCCEEDED;
-
-unlock_out:
-	spin_unlock(&fpe_cfg->lock);
+	if ((status & FPE_EVENT_RRSP) == FPE_EVENT_RRSP)
+		ethtool_mmsv_event_handle(mmsv, ETHTOOL_MMSV_LP_SENT_RESPONSE_MPACKET);
 }
 
 void stmmac_fpe_irq_status(struct stmmac_priv *priv)
@@ -164,119 +165,16 @@ void stmmac_fpe_irq_status(struct stmmac_priv *priv)
 	stmmac_fpe_event_status(priv, status);
 }
 
-/**
- * stmmac_fpe_verify_timer - Timer for MAC Merge verification
- * @t:  timer_list struct containing private info
- *
- * Verify the MAC Merge capability in the local TX direction, by
- * transmitting Verify mPackets up to 3 times. Wait until link
- * partner responds with a Response mPacket, otherwise fail.
- */
-static void stmmac_fpe_verify_timer(struct timer_list *t)
-{
-	struct stmmac_fpe_cfg *fpe_cfg = from_timer(fpe_cfg, t, verify_timer);
-	struct stmmac_priv *priv = container_of(fpe_cfg, struct stmmac_priv,
-						fpe_cfg);
-	unsigned long flags;
-	bool rearm = false;
-
-	spin_lock_irqsave(&fpe_cfg->lock, flags);
-
-	switch (fpe_cfg->status) {
-	case ETHTOOL_MM_VERIFY_STATUS_INITIAL:
-	case ETHTOOL_MM_VERIFY_STATUS_VERIFYING:
-		if (fpe_cfg->verify_retries != 0) {
-			stmmac_fpe_send_mpacket(priv, MPACKET_VERIFY);
-			rearm = true;
-		} else {
-			fpe_cfg->status = ETHTOOL_MM_VERIFY_STATUS_FAILED;
-		}
-
-		fpe_cfg->verify_retries--;
-		break;
-
-	case ETHTOOL_MM_VERIFY_STATUS_SUCCEEDED:
-		stmmac_fpe_configure(priv, true, true);
-		break;
-
-	default:
-		break;
-	}
-
-	if (rearm) {
-		mod_timer(&fpe_cfg->verify_timer,
-			  jiffies + msecs_to_jiffies(fpe_cfg->verify_time));
-	}
-
-	spin_unlock_irqrestore(&fpe_cfg->lock, flags);
-}
-
-static void stmmac_fpe_verify_timer_arm(struct stmmac_fpe_cfg *fpe_cfg)
-{
-	if (fpe_cfg->pmac_enabled && fpe_cfg->tx_enabled &&
-	    fpe_cfg->verify_enabled &&
-	    fpe_cfg->status != ETHTOOL_MM_VERIFY_STATUS_FAILED &&
-	    fpe_cfg->status != ETHTOOL_MM_VERIFY_STATUS_SUCCEEDED) {
-		timer_setup(&fpe_cfg->verify_timer, stmmac_fpe_verify_timer, 0);
-		mod_timer(&fpe_cfg->verify_timer, jiffies);
-	}
-}
-
 void stmmac_fpe_init(struct stmmac_priv *priv)
 {
-	priv->fpe_cfg.verify_retries = STMMAC_FPE_MM_MAX_VERIFY_RETRIES;
-	priv->fpe_cfg.verify_time = STMMAC_FPE_MM_MAX_VERIFY_TIME_MS;
-	priv->fpe_cfg.status = ETHTOOL_MM_VERIFY_STATUS_DISABLED;
-	timer_setup(&priv->fpe_cfg.verify_timer, stmmac_fpe_verify_timer, 0);
-	spin_lock_init(&priv->fpe_cfg.lock);
+	ethtool_mmsv_init(&priv->fpe_cfg.mmsv, priv->dev,
+			  &stmmac_mmsv_ops);
 
 	if ((!priv->fpe_cfg.reg || !priv->hw->mac->fpe_map_preemption_class) &&
 	    priv->dma_cap.fpesel)
 		dev_info(priv->device, "FPE is not supported by driver.\n");
 }
 
-void stmmac_fpe_apply(struct stmmac_priv *priv)
-{
-	struct stmmac_fpe_cfg *fpe_cfg = &priv->fpe_cfg;
-
-	/* If verification is disabled, configure FPE right away.
-	 * Otherwise let the timer code do it.
-	 */
-	if (!fpe_cfg->verify_enabled) {
-		stmmac_fpe_configure(priv, fpe_cfg->tx_enabled,
-				     fpe_cfg->pmac_enabled);
-	} else {
-		fpe_cfg->status = ETHTOOL_MM_VERIFY_STATUS_INITIAL;
-		fpe_cfg->verify_retries = STMMAC_FPE_MM_MAX_VERIFY_RETRIES;
-
-		if (netif_running(priv->dev))
-			stmmac_fpe_verify_timer_arm(fpe_cfg);
-	}
-}
-
-void stmmac_fpe_link_state_handle(struct stmmac_priv *priv, bool is_up)
-{
-	struct stmmac_fpe_cfg *fpe_cfg = &priv->fpe_cfg;
-	unsigned long flags;
-
-	timer_shutdown_sync(&fpe_cfg->verify_timer);
-
-	spin_lock_irqsave(&fpe_cfg->lock, flags);
-
-	if (is_up && fpe_cfg->pmac_enabled) {
-		/* VERIFY process requires pmac enabled when NIC comes up */
-		stmmac_fpe_configure(priv, false, true);
-
-		/* New link => maybe new partner => new verification process */
-		stmmac_fpe_apply(priv);
-	} else {
-		/* No link => turn off EFPE */
-		stmmac_fpe_configure(priv, false, false);
-	}
-
-	spin_unlock_irqrestore(&fpe_cfg->lock, flags);
-}
-
 int stmmac_fpe_get_add_frag_size(struct stmmac_priv *priv)
 {
 	const struct stmmac_fpe_reg *reg = priv->fpe_cfg.reg;
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_fpe.h b/drivers/net/ethernet/stmicro/stmmac/stmmac_fpe.h
index b884eac7142d..3fc46acf7001 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_fpe.h
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_fpe.h
@@ -9,15 +9,10 @@
 #include <linux/types.h>
 #include <linux/netdevice.h>
 
-#define STMMAC_FPE_MM_MAX_VERIFY_RETRIES	3
-#define STMMAC_FPE_MM_MAX_VERIFY_TIME_MS	128
-
 struct stmmac_priv;
 
-void stmmac_fpe_link_state_handle(struct stmmac_priv *priv, bool is_up);
 bool stmmac_fpe_supported(struct stmmac_priv *priv);
 void stmmac_fpe_init(struct stmmac_priv *priv);
-void stmmac_fpe_apply(struct stmmac_priv *priv);
 void stmmac_fpe_irq_status(struct stmmac_priv *priv);
 int stmmac_fpe_get_add_frag_size(struct stmmac_priv *priv);
 void stmmac_fpe_set_add_frag_size(struct stmmac_priv *priv, u32 add_frag_size);
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index d04543e5697b..8f723f9e84ba 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -992,7 +992,7 @@ static void stmmac_mac_link_down(struct phylink_config *config,
 		stmmac_set_eee_pls(priv, priv->hw, false);
 
 	if (stmmac_fpe_supported(priv))
-		stmmac_fpe_link_state_handle(priv, false);
+		ethtool_mmsv_link_state_handle(&priv->fpe_cfg.mmsv, false);
 }
 
 static void stmmac_mac_link_up(struct phylink_config *config,
@@ -1100,7 +1100,7 @@ static void stmmac_mac_link_up(struct phylink_config *config,
 		stmmac_set_eee_pls(priv, priv->hw, true);
 
 	if (stmmac_fpe_supported(priv))
-		stmmac_fpe_link_state_handle(priv, true);
+		ethtool_mmsv_link_state_handle(&priv->fpe_cfg.mmsv, true);
 
 	if (priv->plat->flags & STMMAC_FLAG_HWTSTAMP_CORRECT_LATENCY)
 		stmmac_hwtstamp_correct_latency(priv, priv);
@@ -4097,7 +4097,7 @@ static int stmmac_release(struct net_device *dev)
 	stmmac_release_ptp(priv);
 
 	if (stmmac_fpe_supported(priv))
-		timer_shutdown_sync(&priv->fpe_cfg.verify_timer);
+		ethtool_mmsv_stop(&priv->fpe_cfg.mmsv);
 
 	pm_runtime_put(priv->device);
 
@@ -7822,7 +7822,7 @@ int stmmac_suspend(struct device *dev)
 	rtnl_unlock();
 
 	if (stmmac_fpe_supported(priv))
-		timer_shutdown_sync(&priv->fpe_cfg.verify_timer);
+		ethtool_mmsv_stop(&priv->fpe_cfg.mmsv);
 
 	priv->speed = SPEED_UNKNOWN;
 	return 0;
diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
index 870994cc3ef7..ad612c52c447 100644
--- a/include/linux/ethtool.h
+++ b/include/linux/ethtool.h
@@ -17,9 +17,13 @@
 #include <linux/compat.h>
 #include <linux/if_ether.h>
 #include <linux/netlink.h>
+#include <linux/timer_types.h>
 #include <uapi/linux/ethtool.h>
 #include <uapi/linux/net_tstamp.h>
 
+#define ETHTOOL_MM_MAX_VERIFY_TIME_MS		128
+#define ETHTOOL_MM_MAX_VERIFY_RETRIES		3
+
 struct compat_ethtool_rx_flow_spec {
 	u32		flow_type;
 	union ethtool_flow_union h_u;
@@ -710,6 +714,63 @@ struct ethtool_mm_stats {
 	u64 MACMergeHoldCount;
 };
 
+enum ethtool_mmsv_event {
+	ETHTOOL_MMSV_LP_SENT_VERIFY_MPACKET,
+	ETHTOOL_MMSV_LD_SENT_VERIFY_MPACKET,
+	ETHTOOL_MMSV_LP_SENT_RESPONSE_MPACKET,
+};
+
+/* MAC Merge verification mPacket type */
+enum ethtool_mpacket {
+	ETHTOOL_MPACKET_VERIFY,
+	ETHTOOL_MPACKET_RESPONSE,
+};
+
+struct ethtool_mmsv;
+
+struct ethtool_mmsv_ops {
+	void (*configure_tx)(struct ethtool_mmsv *mmsv, bool tx_active);
+	void (*configure_pmac)(struct ethtool_mmsv *mmsv, bool pmac_enabled);
+	void (*send_mpacket)(struct ethtool_mmsv *mmsv, enum ethtool_mpacket mpacket);
+};
+
+/**
+ * struct ethtool_mmsv - MAC Merge Software Verification
+ * @ops: operations for MAC Merge Software Verification
+ * @dev: pointer to net_device structure
+ * @lock: serialize access to MAC Merge state between
+ *	  ethtool requests and link state updates.
+ * @status: current verification FSM state
+ * @verify_timer: timer for verification in local TX direction
+ * @verify_enabled: indicates if verification is enabled
+ * @verify_retries: number of retries for verification
+ * @pmac_enabled: indicates if the preemptible MAC is enabled
+ * @verify_time: time for verification in milliseconds
+ * @tx_enabled: indicates if transmission is enabled
+ */
+struct ethtool_mmsv {
+	const struct ethtool_mmsv_ops *ops;
+	struct net_device *dev;
+	spinlock_t lock;
+	enum ethtool_mm_verify_status status;
+	struct timer_list verify_timer;
+	bool verify_enabled;
+	int verify_retries;
+	bool pmac_enabled;
+	u32 verify_time;
+	bool tx_enabled;
+};
+
+void ethtool_mmsv_stop(struct ethtool_mmsv *mmsv);
+void ethtool_mmsv_link_state_handle(struct ethtool_mmsv *mmsv, bool up);
+void ethtool_mmsv_event_handle(struct ethtool_mmsv *mmsv,
+			       enum ethtool_mmsv_event event);
+void ethtool_mmsv_get_mm(struct ethtool_mmsv *mmsv,
+			 struct ethtool_mm_state *state);
+void ethtool_mmsv_set_mm(struct ethtool_mmsv *mmsv, struct ethtool_mm_cfg *cfg);
+void ethtool_mmsv_init(struct ethtool_mmsv *mmsv, struct net_device *dev,
+		       const struct ethtool_mmsv_ops *ops);
+
 /**
  * struct ethtool_rxfh_param - RXFH (RSS) parameters
  * @hfunc: Defines the current RSS hash function used by HW (or to be set to).
diff --git a/net/ethtool/mm.c b/net/ethtool/mm.c
index 2816bb23c3ad..954855758be5 100644
--- a/net/ethtool/mm.c
+++ b/net/ethtool/mm.c
@@ -282,3 +282,225 @@ bool ethtool_dev_mm_supported(struct net_device *dev)
 	return supported;
 }
 EXPORT_SYMBOL_GPL(ethtool_dev_mm_supported);
+
+static void ethtool_mmsv_configure_tx(struct ethtool_mmsv *mmsv,
+				      bool tx_active)
+{
+	if (mmsv->ops->configure_tx)
+		mmsv->ops->configure_tx(mmsv, tx_active);
+}
+
+static void ethtool_mmsv_configure_pmac(struct ethtool_mmsv *mmsv,
+					bool pmac_enabled)
+{
+	if (mmsv->ops->configure_pmac)
+		mmsv->ops->configure_pmac(mmsv, pmac_enabled);
+}
+
+static void ethtool_mmsv_send_mpacket(struct ethtool_mmsv *mmsv,
+				      enum ethtool_mpacket mpacket)
+{
+	if (mmsv->ops->send_mpacket)
+		mmsv->ops->send_mpacket(mmsv, mpacket);
+}
+
+/**
+ * ethtool_mmsv_verify_timer - Timer for MAC Merge verification
+ * @t: timer_list struct containing private info
+ *
+ * Verify the MAC Merge capability in the local TX direction, by
+ * transmitting Verify mPackets up to 3 times. Wait until link
+ * partner responds with a Response mPacket, otherwise fail.
+ */
+static void ethtool_mmsv_verify_timer(struct timer_list *t)
+{
+	struct ethtool_mmsv *mmsv = from_timer(mmsv, t, verify_timer);
+	unsigned long flags;
+	bool rearm = false;
+
+	spin_lock_irqsave(&mmsv->lock, flags);
+
+	switch (mmsv->status) {
+	case ETHTOOL_MM_VERIFY_STATUS_INITIAL:
+	case ETHTOOL_MM_VERIFY_STATUS_VERIFYING:
+		if (mmsv->verify_retries != 0) {
+			ethtool_mmsv_send_mpacket(mmsv, ETHTOOL_MPACKET_VERIFY);
+			rearm = true;
+		} else {
+			mmsv->status = ETHTOOL_MM_VERIFY_STATUS_FAILED;
+		}
+
+		mmsv->verify_retries--;
+		break;
+
+	case ETHTOOL_MM_VERIFY_STATUS_SUCCEEDED:
+		ethtool_mmsv_configure_tx(mmsv, true);
+		break;
+
+	default:
+		break;
+	}
+
+	if (rearm) {
+		mod_timer(&mmsv->verify_timer,
+			  jiffies + msecs_to_jiffies(mmsv->verify_time));
+	}
+
+	spin_unlock_irqrestore(&mmsv->lock, flags);
+}
+
+static void ethtool_mmsv_verify_timer_arm(struct ethtool_mmsv *mmsv)
+{
+	if (mmsv->pmac_enabled && mmsv->tx_enabled && mmsv->verify_enabled &&
+	    mmsv->status != ETHTOOL_MM_VERIFY_STATUS_FAILED &&
+	    mmsv->status != ETHTOOL_MM_VERIFY_STATUS_SUCCEEDED) {
+		timer_setup(&mmsv->verify_timer, ethtool_mmsv_verify_timer, 0);
+		mod_timer(&mmsv->verify_timer, jiffies);
+	}
+}
+
+static void ethtool_mmsv_apply(struct ethtool_mmsv *mmsv)
+{
+	/* If verification is disabled, configure FPE right away.
+	 * Otherwise let the timer code do it.
+	 */
+	if (!mmsv->verify_enabled) {
+		ethtool_mmsv_configure_pmac(mmsv, mmsv->pmac_enabled);
+		ethtool_mmsv_configure_tx(mmsv, mmsv->tx_enabled);
+	} else {
+		mmsv->status = ETHTOOL_MM_VERIFY_STATUS_INITIAL;
+		mmsv->verify_retries = ETHTOOL_MM_MAX_VERIFY_RETRIES;
+
+		if (netif_running(mmsv->dev))
+			ethtool_mmsv_verify_timer_arm(mmsv);
+	}
+}
+
+void ethtool_mmsv_stop(struct ethtool_mmsv *mmsv)
+{
+	timer_shutdown_sync(&mmsv->verify_timer);
+}
+EXPORT_SYMBOL_GPL(ethtool_mmsv_stop);
+
+void ethtool_mmsv_link_state_handle(struct ethtool_mmsv *mmsv, bool up)
+{
+	unsigned long flags;
+
+	ethtool_mmsv_stop(mmsv);
+
+	spin_lock_irqsave(&mmsv->lock, flags);
+
+	if (up && mmsv->pmac_enabled) {
+		/* VERIFY process requires pMAC enabled when NIC comes up */
+		ethtool_mmsv_configure_pmac(mmsv, true);
+
+		/* New link => maybe new partner => new verification process */
+		ethtool_mmsv_apply(mmsv);
+	} else {
+		mmsv->status = ETHTOOL_MM_VERIFY_STATUS_INITIAL;
+		mmsv->verify_retries = ETHTOOL_MM_MAX_VERIFY_RETRIES;
+
+		/* No link or pMAC not enabled */
+		ethtool_mmsv_configure_pmac(mmsv, false);
+		ethtool_mmsv_configure_tx(mmsv, false);
+	}
+
+	spin_unlock_irqrestore(&mmsv->lock, flags);
+}
+EXPORT_SYMBOL_GPL(ethtool_mmsv_link_state_handle);
+
+void ethtool_mmsv_event_handle(struct ethtool_mmsv *mmsv,
+			       enum ethtool_mmsv_event event)
+{
+	/* This is interrupt context, just spin_lock() */
+	spin_lock(&mmsv->lock);
+
+	if (!mmsv->pmac_enabled)
+		goto unlock;
+
+	switch (event) {
+	case ETHTOOL_MMSV_LP_SENT_VERIFY_MPACKET:
+		/* Link partner has sent verify mPacket */
+		ethtool_mmsv_send_mpacket(mmsv, ETHTOOL_MPACKET_RESPONSE);
+		break;
+	case ETHTOOL_MMSV_LD_SENT_VERIFY_MPACKET:
+		/* Local device has sent verify mPacket */
+		if (mmsv->status != ETHTOOL_MM_VERIFY_STATUS_SUCCEEDED)
+			mmsv->status = ETHTOOL_MM_VERIFY_STATUS_VERIFYING;
+		break;
+	case ETHTOOL_MMSV_LP_SENT_RESPONSE_MPACKET:
+		/* Link partner has sent response mPacket */
+		if (mmsv->status == ETHTOOL_MM_VERIFY_STATUS_VERIFYING)
+			mmsv->status = ETHTOOL_MM_VERIFY_STATUS_SUCCEEDED;
+		break;
+	}
+
+unlock:
+	spin_unlock(&mmsv->lock);
+}
+EXPORT_SYMBOL_GPL(ethtool_mmsv_event_handle);
+
+static bool ethtool_mmsv_is_tx_active(struct ethtool_mmsv *mmsv)
+{
+	/* TX is active if administratively enabled, and verification either
+	 * succeeded, or was administratively disabled.
+	 */
+	return mmsv->tx_enabled &&
+	       (mmsv->status == ETHTOOL_MM_VERIFY_STATUS_SUCCEEDED ||
+	       mmsv->status == ETHTOOL_MM_VERIFY_STATUS_DISABLED);
+}
+
+void ethtool_mmsv_get_mm(struct ethtool_mmsv *mmsv,
+			 struct ethtool_mm_state *state)
+{
+	unsigned long flags;
+
+	spin_lock_irqsave(&mmsv->lock, flags);
+
+	state->max_verify_time = ETHTOOL_MM_MAX_VERIFY_TIME_MS;
+	state->verify_enabled = mmsv->verify_enabled;
+	state->pmac_enabled = mmsv->pmac_enabled;
+	state->verify_time = mmsv->verify_time;
+	state->tx_enabled = mmsv->tx_enabled;
+	state->verify_status = mmsv->status;
+	state->tx_active = ethtool_mmsv_is_tx_active(mmsv);
+
+	spin_unlock_irqrestore(&mmsv->lock, flags);
+}
+EXPORT_SYMBOL_GPL(ethtool_mmsv_get_mm);
+
+void ethtool_mmsv_set_mm(struct ethtool_mmsv *mmsv, struct ethtool_mm_cfg *cfg)
+{
+	unsigned long flags;
+
+	/* Wait for the verification that's currently in progress to finish */
+	ethtool_mmsv_stop(mmsv);
+
+	spin_lock_irqsave(&mmsv->lock, flags);
+
+	mmsv->verify_enabled = cfg->verify_enabled;
+	mmsv->pmac_enabled = cfg->pmac_enabled;
+	mmsv->verify_time = cfg->verify_time;
+	mmsv->tx_enabled = cfg->tx_enabled;
+
+	if (!cfg->verify_enabled)
+		mmsv->status = ETHTOOL_MM_VERIFY_STATUS_DISABLED;
+
+	ethtool_mmsv_apply(mmsv);
+
+	spin_unlock_irqrestore(&mmsv->lock, flags);
+}
+EXPORT_SYMBOL_GPL(ethtool_mmsv_set_mm);
+
+void ethtool_mmsv_init(struct ethtool_mmsv *mmsv, struct net_device *dev,
+		       const struct ethtool_mmsv_ops *ops)
+{
+	mmsv->ops = ops;
+	mmsv->dev = dev;
+	mmsv->verify_retries = ETHTOOL_MM_MAX_VERIFY_RETRIES;
+	mmsv->verify_time = ETHTOOL_MM_MAX_VERIFY_TIME_MS;
+	mmsv->status = ETHTOOL_MM_VERIFY_STATUS_DISABLED;
+	timer_setup(&mmsv->verify_timer, ethtool_mmsv_verify_timer, 0);
+	spin_lock_init(&mmsv->lock);
+}
+EXPORT_SYMBOL_GPL(ethtool_mmsv_init);
-- 
2.34.1

