Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 58EF0B5A14F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Sep 2025 21:21:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 857838122A;
	Tue, 16 Sep 2025 19:21:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wEyovbg6pTdr; Tue, 16 Sep 2025 19:21:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B01A381AEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758050480;
	bh=faDaaCe9eHY4bsA8Y6JtH7wTEzGEgv1zxdTd+/w3W1E=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=M9U/znJ5DA/scENNro4oJbnHIZkHYAgQBSNiMlV5UzpumoIV7cVxCZAzSYt5vraQc
	 4IG+fk4uDSzuWRlnuJ6NuuROkwedGDIQjXG4PjDls8fuN+SjzCvX3C2/n65Y/BxNY0
	 6KwhBePUQ5UjgE7HgoMnKtzm91TbPN6xCwjW0O7s9lfQh1jecdSRVdddpVsUmG3OhE
	 SSXjQRyXd7oqPiB1JSmWH5KTq0rN730RnodFfQxfr00s8rYr5RUAxiRWS/nA4qqGFg
	 gCAysADNPG0yKBqMJJQk7UUT1DzSocj1DlCB3lOMUdaXcWoJ9s2D75DUpav8tpqHfa
	 kO6RBpmKkcHSA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B01A381AEF;
	Tue, 16 Sep 2025 19:21:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0624E279
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 19:21:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E0BE56059E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 19:21:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HPrOVcYqKUWl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Sep 2025 19:21:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=91.218.175.174;
 helo=out-174.mta0.migadu.com; envelope-from=vadim.fedorenko@linux.dev;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3C218610D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C218610D3
Received: from out-174.mta0.migadu.com (out-174.mta0.migadu.com
 [91.218.175.174])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3C218610D3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 19:21:16 +0000 (UTC)
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
Date: Tue, 16 Sep 2025 19:12:57 +0000
Message-ID: <20250916191257.13343-5-vadim.fedorenko@linux.dev>
In-Reply-To: <20250916191257.13343-1-vadim.fedorenko@linux.dev>
References: <20250916191257.13343-1-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1758050475;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=faDaaCe9eHY4bsA8Y6JtH7wTEzGEgv1zxdTd+/w3W1E=;
 b=CFlLo7NX1hnw+VMtSz9JCSmgN2SKzpTAEwlg1D/dO6dfQaYRkUrYH/z0N6DRDeKSiJbcrM
 9IQDCtHYYxCRk/mMRRuQOWT/zKfJwMaK51y80H6C38Gt7pnsamwpKFGXzFAI9Kw+KdSVO0
 UFUEDsq3LNUYL+74BRoslbF5i4VmzJM=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=CFlLo7NX
Subject: [Intel-wired-lan] [PATCH net-next v3 4/4] net/mlx5e: Report RS-FEC
 histogram statistics via ethtool
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

Add support for reporting RS-FEC histogram counters by reading them
from the RS_FEC_HISTOGRAM_GROUP in the PPCNT register.

Co-developed-by: Yael Chemla <ychemla@nvidia.com>
Signed-off-by: Yael Chemla <ychemla@nvidia.com>
Signed-off-by: Carolina Jubran <cjubran@nvidia.com>
Reviewed-by: Dragos Tatulea <dtatulea@nvidia.com>
Reviewed-by: Yael Chemla <ychemla@nvidia.com>
Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
---
 .../ethernet/mellanox/mlx5/core/en_stats.c    | 33 ++++++++++++++++++-
 1 file changed, 32 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c b/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
index 476689cb0c1f..1da439dda323 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
@@ -1529,15 +1529,46 @@ fec_rs_histogram_fill_ranges(struct mlx5e_priv *priv,
 	return num_of_bins;
 }
 
+static void fec_rs_histogram_fill_stats(struct mlx5e_priv *priv,
+					u8 num_of_bins,
+					struct ethtool_fec_hist *hist)
+{
+	struct mlx5_core_dev *mdev = priv->mdev;
+	u32 out[MLX5_ST_SZ_DW(ppcnt_reg)] = {0};
+	u32 in[MLX5_ST_SZ_DW(ppcnt_reg)] = {0};
+	int sz = MLX5_ST_SZ_BYTES(ppcnt_reg);
+	void *rs_histogram_cntrs;
+
+	MLX5_SET(ppcnt_reg, in, local_port, 1);
+	MLX5_SET(ppcnt_reg, in, grp, MLX5_RS_FEC_HISTOGRAM_GROUP);
+	if (mlx5_core_access_reg(mdev, in, sz, out, sz, MLX5_REG_PPCNT, 0, 0))
+		return;
+
+	rs_histogram_cntrs = MLX5_ADDR_OF(ppcnt_reg, out,
+					  counter_set.rs_histogram_cntrs);
+	/* Guaranteed that num_of_bins is less than MLX5E_FEC_RS_HIST_MAX
+	 * by fec_rs_histogram_fill_ranges().
+	 */
+	for (int i = 0; i < num_of_bins; i++) {
+		hist->values[i].bin_value = MLX5_GET64(rs_histogram_cntrs,
+						       rs_histogram_cntrs,
+						       hist[i]);
+	}
+}
+
 static void fec_set_histograms_stats(struct mlx5e_priv *priv, int mode,
 				     struct ethtool_fec_hist *hist)
 {
+	u8 num_of_bins;
+
 	switch (mode) {
 	case MLX5E_FEC_RS_528_514:
 	case MLX5E_FEC_RS_544_514:
 	case MLX5E_FEC_LLRS_272_257_1:
 	case MLX5E_FEC_RS_544_514_INTERLEAVED_QUAD:
-		fec_rs_histogram_fill_ranges(priv, &hist->ranges);
+		num_of_bins = fec_rs_histogram_fill_ranges(priv, &hist->ranges);
+		if (num_of_bins)
+			fec_rs_histogram_fill_stats(priv, num_of_bins, hist);
 		break;
 	default:
 		return;
-- 
2.47.3

