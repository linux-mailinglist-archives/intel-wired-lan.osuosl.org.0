Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3F6B5058C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Sep 2025 20:50:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B0DDC41429;
	Tue,  9 Sep 2025 18:50:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HhZZrz_1mJRJ; Tue,  9 Sep 2025 18:50:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 349484142A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757443810;
	bh=0hdCwsUdqxbkvyqqDVE6MYjEaZTRoA0QzrkQgbyUfTQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vjqHjJtOQQKlFZJw+VRz+etJQvGvsesuV+9q66DueoZbo978oYDtaadisJmsU2fcd
	 V2x4psQYUQ7Cp1mcPWezwyUOwXasSAMzif4VtKk75vq6oPN31a0l9uCHrJe+VWkYtU
	 M109u02MLnH8bDnRgGbw9Fzo61U78Whf8XALGtK4yRvuWJeluhuZUwSWvy9dJw/9n5
	 U+Oh+8/XrY1UPUPfr6PA6Wm8avaeYcmV6dCkIrpPwm7hsU+SdnZIysjjXMOxvzMr7g
	 VzFLQKWDccg4qBHgpBhQIdnkvugUpdIX5Rv0sDLCbbOx7ZFYmv9YqSAdlmz8JsFO8B
	 IdKMBUOUnRbWA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 349484142A;
	Tue,  9 Sep 2025 18:50:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id BED4810E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Sep 2025 18:50:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B006D6143F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Sep 2025 18:50:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SWKZhZhK4cp2 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Sep 2025 18:50:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=95.215.58.182;
 helo=out-182.mta1.migadu.com; envelope-from=vadim.fedorenko@linux.dev;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 82BE861429
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 82BE861429
Received: from out-182.mta1.migadu.com (out-182.mta1.migadu.com
 [95.215.58.182])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 82BE861429
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Sep 2025 18:50:07 +0000 (UTC)
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
Date: Tue,  9 Sep 2025 18:42:16 +0000
Message-ID: <20250909184216.1524669-5-vadim.fedorenko@linux.dev>
In-Reply-To: <20250909184216.1524669-1-vadim.fedorenko@linux.dev>
References: <20250909184216.1524669-1-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1757443804;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0hdCwsUdqxbkvyqqDVE6MYjEaZTRoA0QzrkQgbyUfTQ=;
 b=NcF0y0qz3t/eqDtZztAMBfOs66T64i65Aj7keSjNFArKz6JCHN+C/ZUVpXL7okGLBbTVrS
 UxU50xBuRQTuH5geo9qei2RFSfcpoyU+gz1d7LjZVgUTN+qdjx52/1cU+2BBcbIzY7a9en
 SVCQcQ8SQFYz84j+ublnAgI3bvvJw6E=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=NcF0y0qz
Subject: [Intel-wired-lan] [PATCH net-next 4/4] net/mlx5e: Report RS-FEC
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
 .../ethernet/mellanox/mlx5/core/en_stats.c    | 39 +++++++++++++++++--
 1 file changed, 35 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c b/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
index f64cae6dd367..e9f2bf342f95 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
@@ -1519,24 +1519,55 @@ fec_rs_histogram_fill_ranges(struct mlx5e_priv *priv,
 		void *bin_range = MLX5_ADDR_OF(pphcr_reg, out, bin_range[i]);
 
 		priv->fec_ranges[i].high = MLX5_GET(bin_range_layout, bin_range,
-						    high_val);
+						    high_val);
 		priv->fec_ranges[i].low = MLX5_GET(bin_range_layout, bin_range,
-						   low_val);
+						   low_val);
 	}
 	*ranges = priv->fec_ranges;
 
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
-				     struct ethtool_fec_hist *hist)
+				     struct ethtool_fec_hist *hist)
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

