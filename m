Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC79B99E17
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Sep 2025 14:41:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B413981387;
	Wed, 24 Sep 2025 12:41:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RS8PjJ1fwk5Q; Wed, 24 Sep 2025 12:40:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCCEC81412
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758717659;
	bh=jb95sxRLVrSFxZgk5r7LpLEkfEHXk+sjjbkD0E2G2NQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=t4ZYv5Ha8X9AlXL1CzMRwZVJsI2V1LTAvWm43yaCEbPkq0AfA1nsRe56gb0xyTdU/
	 +gHjpjgR/9brE/YK8t0tFmTTp7N+GbU01Kf2Hmy+66g8/0sEhTv2ukZnMeIOgZpV15
	 OHtwj3eUYevN4etVjzedEA1us5zFGWMVxzWklpDEPgdDGIE1KhmfoT6t4seTFHBx33
	 1RKWSU/eGYQKcGli9AB1+GSvbdO+B5vIlyVgOCyaplm8GIDHwFejE5FXR5L5J9m+vN
	 ABQXnBcYabLNZAbz20IZIAEabCKeD2x1iV8jAnzQ2bWS/4cpFSF/xTU/t7/4S0YOTU
	 DdQtB4bHn5Nww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BCCEC81412;
	Wed, 24 Sep 2025 12:40:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 94B3F177
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 12:40:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 868BD60BC3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 12:40:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tRFZmK3WdfBF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Sep 2025 12:40:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=95.215.58.173;
 helo=out-173.mta1.migadu.com; envelope-from=vadim.fedorenko@linux.dev;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4D76960BB7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D76960BB7
Received: from out-173.mta1.migadu.com (out-173.mta1.migadu.com
 [95.215.58.173])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4D76960BB7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 12:40:56 +0000 (UTC)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
To: Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 Donald Hunter <donald.hunter@gmail.com>,
 Carolina Jubran <cjubran@nvidia.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>
Cc: Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org, Yael Chemla <ychemla@nvidia.com>,
 Dragos Tatulea <dtatulea@nvidia.com>
Date: Wed, 24 Sep 2025 12:40:35 +0000
Message-ID: <20250924124037.1508846-4-vadim.fedorenko@linux.dev>
In-Reply-To: <20250924124037.1508846-1-vadim.fedorenko@linux.dev>
References: <20250924124037.1508846-1-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1758717654;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jb95sxRLVrSFxZgk5r7LpLEkfEHXk+sjjbkD0E2G2NQ=;
 b=RO4ose7E/7u/QwUp85ypgQHw9W3fIL4IkhWjSW83r6Z9cv4rcFRlDNIOyx+zJYk6aVFo+J
 IIyjv1LtbWrjyiV5ZnJAcXQG5afTgjMWb8eVZpqbUQ5O6G6x6PndhYp6GtEA+clQlaVtEs
 OfaEsBMJfgKjNnu7eLuMm1kzOSd+G2M=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=RO4ose7E
Subject: [Intel-wired-lan] [PATCH net-next v6 3/5] net/mlx5e: Add logic to
 read RS-FEC histogram bin ranges from PPHCR
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
---
 drivers/net/ethernet/mellanox/mlx5/core/en.h  |  1 +
 .../ethernet/mellanox/mlx5/core/en_ethtool.c  |  2 +-
 .../net/ethernet/mellanox/mlx5/core/en_main.c |  8 ++
 .../ethernet/mellanox/mlx5/core/en_stats.c    | 83 ++++++++++++++++++-
 .../ethernet/mellanox/mlx5/core/en_stats.h    |  3 +-
 5 files changed, 94 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en.h b/drivers/net/ethernet/mellanox/mlx5/core/en.h
index 4ffbc263d60f..14e3207b14e7 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en.h
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en.h
@@ -956,6 +956,7 @@ struct mlx5e_priv {
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
index 5e007bb3bad1..0c79c42ae538 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
@@ -6279,8 +6279,15 @@ int mlx5e_priv_init(struct mlx5e_priv *priv,
 	if (!priv->channel_stats)
 		goto err_free_tx_rates;
 
+	priv->fec_ranges = kcalloc(ETHTOOL_FEC_HIST_MAX,
+				   sizeof(*priv->fec_ranges), GFP_KERNEL);
+	if (!priv->fec_ranges)
+		goto err_free_channel_stats;
+
 	return 0;
 
+err_free_channel_stats:
+	kfree(priv->channel_stats);
 err_free_tx_rates:
 	kfree(priv->tx_rates);
 err_free_txq2sq_stats:
@@ -6304,6 +6311,7 @@ void mlx5e_priv_cleanup(struct mlx5e_priv *priv)
 	if (!priv->mdev)
 		return;
 
+	kfree(priv->fec_ranges);
 	for (i = 0; i < priv->stats_nch; i++)
 		kvfree(priv->channel_stats[i]);
 	kfree(priv->channel_stats);
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c b/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
index aae0022e8736..c0bf0d49d7d5 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
@@ -1490,8 +1490,88 @@ static void fec_set_corrected_bits_total(struct mlx5e_priv *priv,
 				      phy_corrected_bits);
 }
 
+#define MLX5_RS_HISTOGRAM_ENTRIES \
+	(MLX5_FLD_SZ_BYTES(rs_histogram_cntrs, hist) / \
+	 MLX5_FLD_SZ_BYTES(rs_histogram_cntrs, hist[0]))
+
+enum {
+	MLX5E_HISTOGRAM_FEC_RS_544_514 = 1,
+	MLX5E_HISTOGRAM_FEC_LLRS = 2,
+	MLX5E_HISTOGRAM_FEC_RS_528_514 = 3,
+};
+
+static bool fec_rs_validate_hist_type(int mode, int hist_type)
+{
+	switch (mode) {
+	case MLX5E_FEC_RS_528_514:
+		return hist_type == MLX5E_HISTOGRAM_FEC_RS_528_514;
+	case MLX5E_FEC_RS_544_514_INTERLEAVED_QUAD:
+	case MLX5E_FEC_RS_544_514:
+		return hist_type == MLX5E_HISTOGRAM_FEC_RS_544_514;
+	case MLX5E_FEC_LLRS_272_257_1:
+		return hist_type == MLX5E_HISTOGRAM_FEC_LLRS;
+	default:
+		break;
+	}
+
+	return false;
+}
+
+static u8
+fec_rs_histogram_fill_ranges(struct mlx5e_priv *priv, int mode,
+			     const struct ethtool_fec_hist_range **ranges)
+{
+	struct mlx5_core_dev *mdev = priv->mdev;
+	u32 out[MLX5_ST_SZ_DW(pphcr_reg)] = {0};
+	u32 in[MLX5_ST_SZ_DW(pphcr_reg)] = {0};
+	int sz = MLX5_ST_SZ_BYTES(pphcr_reg);
+	u8 hist_type, num_of_bins;
+
+	memset(priv->fec_ranges, 0,
+	       ETHTOOL_FEC_HIST_MAX * sizeof(*priv->fec_ranges));
+	MLX5_SET(pphcr_reg, in, local_port, 1);
+	if (mlx5_core_access_reg(mdev, in, sz, out, sz, MLX5_REG_PPHCR, 0, 0))
+		return 0;
+
+	hist_type = MLX5_GET(pphcr_reg, out, active_hist_type);
+	if (!fec_rs_validate_hist_type(mode, hist_type))
+		return 0;
+
+	num_of_bins = MLX5_GET(pphcr_reg, out, num_of_bins);
+	if (WARN_ON_ONCE(num_of_bins > MLX5_RS_HISTOGRAM_ENTRIES))
+		return 0;
+
+	for (int i = 0; i < num_of_bins; i++) {
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
+		fec_rs_histogram_fill_ranges(priv, mode, &hist->ranges);
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
 
@@ -1501,6 +1581,7 @@ void mlx5e_stats_fec_get(struct mlx5e_priv *priv,
 
 	fec_set_corrected_bits_total(priv, fec_stats);
 	fec_set_block_stats(priv, mode, fec_stats);
+	fec_set_histograms_stats(priv, mode, hist);
 }
 
 #define PPORT_ETH_EXT_OFF(c) \
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_stats.h b/drivers/net/ethernet/mellanox/mlx5/core/en_stats.h
index 72dbcc1928ef..09f155acb461 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_stats.h
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_stats.h
@@ -117,7 +117,8 @@ void mlx5e_stats_update_ndo_stats(struct mlx5e_priv *priv);
 void mlx5e_stats_pause_get(struct mlx5e_priv *priv,
 			   struct ethtool_pause_stats *pause_stats);
 void mlx5e_stats_fec_get(struct mlx5e_priv *priv,
-			 struct ethtool_fec_stats *fec_stats);
+			 struct ethtool_fec_stats *fec_stats,
+			 struct ethtool_fec_hist *hist);
 
 void mlx5e_stats_eth_phy_get(struct mlx5e_priv *priv,
 			     struct ethtool_eth_phy_stats *phy_stats);
-- 
2.47.3

