Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F383B5058F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Sep 2025 20:50:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E9FFC61462;
	Tue,  9 Sep 2025 18:50:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QP63fOlVQGg2; Tue,  9 Sep 2025 18:50:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 50E016147B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757443814;
	bh=Ow1N5ZbVwWyIftvNl/GTIXRoXSZ4HXSrkbkvkKaQ4wE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=z+Oanpi3nmIBPMzG1dJXSqonmWydMdl09BVo2NHP4GNiFcxdkyls6fvMaKBXraaxX
	 YZdVeGVg0SBy1X7EizoHO2FCRc/gr7bHh/WKI1CX4g6T1Wi8ISmy5FXIdGMdAqlFaz
	 SRYTumsgh2EBg0fszuUErUBLMDvTPLsty9aFE7CBDhGCF2FIOM75Zp0/llSJE+ewtd
	 0bKZkxmFFImlrCB3KzNNDMTcfjdxUO5ednH1svyQu7mlSPS9/3Cb0mYkIWT58Yt0gv
	 5xlYhYTH4d0ByHtTetiRgHyfOzraFSeV6WjPpqDJgugs3HV/TFu7r5ta6J9x4Ga3vZ
	 5SSsFhMWYxCLQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 50E016147B;
	Tue,  9 Sep 2025 18:50:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9F9C2234
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Sep 2025 18:50:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 91F0383B8D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Sep 2025 18:50:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nb6GXPBZJ0hg for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Sep 2025 18:50:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=95.215.58.174;
 helo=out-174.mta1.migadu.com; envelope-from=vadim.fedorenko@linux.dev;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8E66E83B8C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E66E83B8C
Received: from out-174.mta1.migadu.com (out-174.mta1.migadu.com
 [95.215.58.174])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8E66E83B8C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Sep 2025 18:50:11 +0000 (UTC)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
To: Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 Donald Hunter <donald.hunter@gmail.com>,
 Carolina Jubran <cjubran@nvidia.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>
Cc: Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org, Yael Chemla <ychemla@nvidia.com>,
 Dragos Tatulea <dtatulea@nvidia.com>
Date: Tue,  9 Sep 2025 18:42:15 +0000
Message-ID: <20250909184216.1524669-4-vadim.fedorenko@linux.dev>
In-Reply-To: <20250909184216.1524669-1-vadim.fedorenko@linux.dev>
References: <20250909184216.1524669-1-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1757443803;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ow1N5ZbVwWyIftvNl/GTIXRoXSZ4HXSrkbkvkKaQ4wE=;
 b=Xf0VTaJc/Z+O/CCdjlk0ktKMb7mKvJqomSDSHq4Lf8TzikzpmPZAsP2ZS2OcgPQd0CJCmv
 Z5EWE21bf1YJT//LJBlTcXQEUAfC80YrqAZ7pzMHFTok9peEeFACK40tN14iq3UcXEM0i4
 3CA+c7QJXzF8TeKkIVyj2VlafjjW8Bg=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=Xf0VTaJc
Subject: [Intel-wired-lan] [PATCH net-next 3/4] net/mlx5e: Add logic to read
 RS-FEC histogram bin ranges from PPHCR
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

From: Carolina Jubran <cjubran@nvidia.com>

Introduce support for querying the Ports Phy Histogram Configuration
Register (PPHCR) to retrieve RS-FEC histogram bin ranges. The ranges
are stored in a static array and will be used to map histogram counters
to error levels.

The actual RS-FEC histogram statistics are not yet reported in this
commit and will be handled in a downstream patch.

Co-developed-by: Yael Chemla <ychemla@nvidia.com>
Signed-off-by: Yael Chemla <ychemla@nvidia.com>
Signed-off-by: Carolina Jubran <cjubran@nvidia.com>
Reviewed-by: Dragos Tatulea <dtatulea@nvidia.com>
Reviewed-by: Yael Chemla <ychemla@nvidia.com>
Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
---
 drivers/net/ethernet/mellanox/mlx5/core/en.h  |  1 +
 .../ethernet/mellanox/mlx5/core/en_ethtool.c  |  2 +-
 .../net/ethernet/mellanox/mlx5/core/en_main.c | 10 ++++
 .../ethernet/mellanox/mlx5/core/en_stats.c    | 58 ++++++++++++++++++-
 .../ethernet/mellanox/mlx5/core/en_stats.h    |  4 +-
 5 files changed, 71 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en.h b/drivers/net/ethernet/mellanox/mlx5/core/en.h
index 0dd3bc0f4caa..8b2e81170e6b 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en.h
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en.h
@@ -950,6 +950,7 @@ struct mlx5e_priv {
 	struct mlx5e_mqprio_rl    *mqprio_rl;
 	struct dentry             *dfs_root;
 	struct mlx5_devcom_comp_dev *devcom;
+	struct ethtool_fec_hist_range *fec_ranges;
 };
 
 struct mlx5e_dev {
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c b/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
index bcc3bbb78cc9..fd45384a855b 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
@@ -1932,7 +1932,7 @@ static void mlx5e_get_fec_stats(struct net_device *netdev,
 {
 	struct mlx5e_priv *priv = netdev_priv(netdev);
 
-	mlx5e_stats_fec_get(priv, fec_stats);
+	mlx5e_stats_fec_get(priv, fec_stats, hist);
 }
 
 static int mlx5e_get_fecparam(struct net_device *netdev,
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
index 714cce595692..1e516b354485 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
@@ -6246,8 +6246,17 @@ int mlx5e_priv_init(struct mlx5e_priv *priv,
 	if (!priv->channel_stats)
 		goto err_free_tx_rates;
 
+	priv->fec_ranges = kcalloc_node(ETHTOOL_FEC_HIST_MAX,
+					sizeof(*priv->fec_ranges),
+					GFP_KERNEL,
+					node);
+	if (!priv->fec_ranges)
+		goto err_free_channel_stats;
+
 	return 0;
 
+err_free_channel_stats:
+	kfree(priv->channel_stats);
 err_free_tx_rates:
 	kfree(priv->tx_rates);
 err_free_txq2sq_stats:
@@ -6271,6 +6280,7 @@ void mlx5e_priv_cleanup(struct mlx5e_priv *priv)
 	if (!priv->mdev)
 		return;
 
+	kfree(priv->fec_ranges);
 	for (i = 0; i < priv->stats_nch; i++)
 		kvfree(priv->channel_stats[i]);
 	kfree(priv->channel_stats);
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c b/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
index aae0022e8736..f64cae6dd367 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
@@ -1490,8 +1490,62 @@ static void fec_set_corrected_bits_total(struct mlx5e_priv *priv,
 				      phy_corrected_bits);
 }
 
+#define MLX5E_FEC_RS_HIST_MAX 16
+
+static u8
+fec_rs_histogram_fill_ranges(struct mlx5e_priv *priv,
+			     const struct ethtool_fec_hist_range **ranges)
+{
+	struct mlx5_core_dev *mdev = priv->mdev;
+	u32 out[MLX5_ST_SZ_DW(pphcr_reg)] = {0};
+	u32 in[MLX5_ST_SZ_DW(pphcr_reg)] = {0};
+	int sz = MLX5_ST_SZ_BYTES(pphcr_reg);
+	u8 active_hist_type, num_of_bins;
+
+	memset(priv->fec_ranges, 0, sizeof(priv->fec_ranges));
+	MLX5_SET(pphcr_reg, in, local_port, 1);
+	if (mlx5_core_access_reg(mdev, in, sz, out, sz, MLX5_REG_PPHCR, 0, 0))
+		return 0;
+
+	active_hist_type = MLX5_GET(pphcr_reg, out, active_hist_type);
+	if (!active_hist_type)
+		return 0;
+
+	num_of_bins = MLX5_GET(pphcr_reg, out, num_of_bins);
+	if (WARN_ON_ONCE(num_of_bins > MLX5E_FEC_RS_HIST_MAX))
+		return 0;
+
+	for (u8 i = 0; i < num_of_bins; i++) {
+		void *bin_range = MLX5_ADDR_OF(pphcr_reg, out, bin_range[i]);
+
+		priv->fec_ranges[i].high = MLX5_GET(bin_range_layout, bin_range,
+						    high_val);
+		priv->fec_ranges[i].low = MLX5_GET(bin_range_layout, bin_range,
+						   low_val);
+	}
+	*ranges = priv->fec_ranges;
+
+	return num_of_bins;
+}
+
+static void fec_set_histograms_stats(struct mlx5e_priv *priv, int mode,
+				     struct ethtool_fec_hist *hist)
+{
+	switch (mode) {
+	case MLX5E_FEC_RS_528_514:
+	case MLX5E_FEC_RS_544_514:
+	case MLX5E_FEC_LLRS_272_257_1:
+	case MLX5E_FEC_RS_544_514_INTERLEAVED_QUAD:
+		fec_rs_histogram_fill_ranges(priv, &hist->ranges);
+		break;
+	default:
+		return;
+	}
+}
+
 void mlx5e_stats_fec_get(struct mlx5e_priv *priv,
-			 struct ethtool_fec_stats *fec_stats)
+			 struct ethtool_fec_stats *fec_stats,
+			 struct ethtool_fec_hist *hist)
 {
 	int mode = fec_active_mode(priv->mdev);
 
@@ -1501,6 +1555,7 @@ void mlx5e_stats_fec_get(struct mlx5e_priv *priv,
 
 	fec_set_corrected_bits_total(priv, fec_stats);
 	fec_set_block_stats(priv, mode, fec_stats);
+	fec_set_histograms_stats(priv, mode, hist);
 }
 
 #define PPORT_ETH_EXT_OFF(c) \
@@ -2619,3 +2674,4 @@ unsigned int mlx5e_nic_stats_grps_num(struct mlx5e_priv *priv)
 {
 	return ARRAY_SIZE(mlx5e_nic_stats_grps);
 }
+
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_stats.h b/drivers/net/ethernet/mellanox/mlx5/core/en_stats.h
index 72dbcc1928ef..6019f47308fc 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_stats.h
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_stats.h
@@ -117,8 +117,8 @@ void mlx5e_stats_update_ndo_stats(struct mlx5e_priv *priv);
 void mlx5e_stats_pause_get(struct mlx5e_priv *priv,
 			   struct ethtool_pause_stats *pause_stats);
 void mlx5e_stats_fec_get(struct mlx5e_priv *priv,
-			 struct ethtool_fec_stats *fec_stats);
-
+			 struct ethtool_fec_stats *fec_stats,
+			 struct ethtool_fec_hist *hist);
 void mlx5e_stats_eth_phy_get(struct mlx5e_priv *priv,
 			     struct ethtool_eth_phy_stats *phy_stats);
 void mlx5e_stats_eth_mac_get(struct mlx5e_priv *priv,
-- 
2.47.3

