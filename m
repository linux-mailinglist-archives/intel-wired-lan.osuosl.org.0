Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 93090B99E1A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Sep 2025 14:41:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0AE9340D0E;
	Wed, 24 Sep 2025 12:41:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EDL0R-VGvnDm; Wed, 24 Sep 2025 12:41:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 721C740D18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758717661;
	bh=U2maSu0fB4r86QUnkTxhnuzDvMq/FBK1y4AEhmA6GmM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0idG+H/dw+SIZru7u2DgKGoUQ/O9ThP6SRAlNFHPgYCRjZu8g5VkJhtCMLPlP8lBF
	 Px1kziMRShPyLSn/6ZTwv9X0xYZSPKYM4X9jf3w5Ifly0ZmVZ5RTP8QA6W2w8B3YpQ
	 9PyNDdAf5UC3GWIUqELJ2+jtF1ODcpwuAkXiQEP9TKk0gTKksdtc6vEaIac9FIzBrK
	 xbIxK6xGyAtEN7cftNN2PzkPgdIL6iG6EE3XNwxLpmHkfjOu/fD4NT/21tmVObtMPz
	 lMxaTeYqrr3AcAR1+auFZn9/WzGxM1x04+/M/KE8WBZmj745oLYd2YJztb51P7172l
	 CQcdy0r8ilFjg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 721C740D18;
	Wed, 24 Sep 2025 12:41:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 05335177
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 12:41:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DF60881418
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 12:40:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Leu5qfcAtDiV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Sep 2025 12:40:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:203:375::b4; helo=out-180.mta1.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 04B0C81367
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 04B0C81367
Received: from out-180.mta1.migadu.com (out-180.mta1.migadu.com
 [IPv6:2001:41d0:203:375::b4])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 04B0C81367
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 12:40:58 +0000 (UTC)
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
Date: Wed, 24 Sep 2025 12:40:36 +0000
Message-ID: <20250924124037.1508846-5-vadim.fedorenko@linux.dev>
In-Reply-To: <20250924124037.1508846-1-vadim.fedorenko@linux.dev>
References: <20250924124037.1508846-1-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1758717656;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=U2maSu0fB4r86QUnkTxhnuzDvMq/FBK1y4AEhmA6GmM=;
 b=CmX5dQIcDmD5E/XS0iaFzRiA5FInw1J/6YFqcfxc5kjFJ5b10Y6UDBUHD6fpa2y1HjBlFq
 wh75TKb2VymdbswYx9MkXlIomiSvDSqYIP2goMslMosrq/KqY2Pc+hFkOMV21oaHr2od6z
 ZyS2Sk6TTQCVvhKhM2hX4Vl8APVfW9A=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=CmX5dQIc
Subject: [Intel-wired-lan] [PATCH net-next v6 4/5] net/mlx5e: Report RS-FEC
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
---
 .../ethernet/mellanox/mlx5/core/en_stats.c    | 34 ++++++++++++++++++-
 1 file changed, 33 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c b/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
index c0bf0d49d7d5..7a25666ab6d9 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
@@ -1554,15 +1554,47 @@ fec_rs_histogram_fill_ranges(struct mlx5e_priv *priv, int mode,
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
+	for (int i = 0; i < num_of_bins; i++)
+		hist->values[i].sum = MLX5_GET64(rs_histogram_cntrs,
+						 rs_histogram_cntrs,
+						 hist[i]);
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
-		fec_rs_histogram_fill_ranges(priv, mode, &hist->ranges);
+		num_of_bins =
+			fec_rs_histogram_fill_ranges(priv, mode, &hist->ranges);
+		if (num_of_bins)
+			return fec_rs_histogram_fill_stats(priv, num_of_bins,
+							   hist);
 		break;
 	default:
 		return;
-- 
2.47.3

