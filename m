Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 522EFB8FF42
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Sep 2025 12:16:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5335140CC5;
	Mon, 22 Sep 2025 10:16:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6mU1C-Yx8NJ2; Mon, 22 Sep 2025 10:16:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9413640B87
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758536166;
	bh=9W3IamzMNpplR13nn0LHb9QH78ZWs3o8qUYPSAXxLV0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DnQxlqoTvq1WrOROXMBZNgFG4psr6JNigm7tTZKqfhoqmKvM+ChQ2Qznc4qNNXgdm
	 DDIPReQf6bH4cbKJ3a9zkOhdP6DXsadwZt8NVK/fLjcSRDvcJv1GQm6DbFTia0yrc4
	 3ERJ6r8Zk9fIfEJHoM9VzQx5nmg6wkgEmTTkoQZCm8WfJAMM68PnI0Du5v1YIM+eMh
	 zm0PJxOS/8eG2tjoHdX5ZYFOtOnIquSHB1H0eueXMGIvPKlVq93+fJHQSLrop0OL6J
	 fV/4x5XqMVnYWrOncSqFTrI6DL8NplmKb1D2UKCldno068oLQ0pAFn7RObhTc3RILy
	 ufeoDmKJonSyA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9413640B87;
	Mon, 22 Sep 2025 10:16:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 64B77116C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Sep 2025 10:16:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4B6CE40034
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Sep 2025 10:16:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x2UspvOabSDp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Sep 2025 10:16:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:203:375::b4; helo=out-180.mta1.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 75AB7409A5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 75AB7409A5
Received: from out-180.mta1.migadu.com (out-180.mta1.migadu.com
 [IPv6:2001:41d0:203:375::b4])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 75AB7409A5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Sep 2025 10:16:02 +0000 (UTC)
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
Date: Mon, 22 Sep 2025 10:07:39 +0000
Message-ID: <20250922100741.2167024-4-vadim.fedorenko@linux.dev>
In-Reply-To: <20250922100741.2167024-1-vadim.fedorenko@linux.dev>
References: <20250922100741.2167024-1-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1758536160;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9W3IamzMNpplR13nn0LHb9QH78ZWs3o8qUYPSAXxLV0=;
 b=UhTDV1orhJIsancYeY65F+OypZ1Cmw3ttUDoFwWr+9gJgPHtO8QLtb9dEBamoSMBXtgJ+l
 2dxH5D0PIyRu8YqEqu9bK10pO2YYmmd2c0X3EldmRdA66uOm2MYLlEF2FNrvrURp+FHlhJ
 Xg7OAH40am2g9kNgTscNrjOAtCPQtMI=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=UhTDV1or
Subject: [Intel-wired-lan] [PATCH net-next v5 3/5] net/mlx5e: Add logic to
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
 .../ethernet/mellanox/mlx5/core/en_stats.c    | 81 ++++++++++++++++++-
 .../ethernet/mellanox/mlx5/core/en_stats.h    |  3 +-
 5 files changed, 92 insertions(+), 3 deletions(-)

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
index aae0022e8736..e6613672b8f5 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
@@ -1490,8 +1490,86 @@ static void fec_set_corrected_bits_total(struct mlx5e_priv *priv,
 				      phy_corrected_bits);
 }
 
+#define MLX5E_FEC_RS_HIST_MAX 16
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
+	if (WARN_ON_ONCE(num_of_bins > MLX5E_FEC_RS_HIST_MAX))
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
 
@@ -1501,6 +1579,7 @@ void mlx5e_stats_fec_get(struct mlx5e_priv *priv,
 
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

