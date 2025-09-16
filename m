Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD1FB5A14C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Sep 2025 21:21:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CEB3C8151E;
	Tue, 16 Sep 2025 19:21:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UTAe9fbqVHEX; Tue, 16 Sep 2025 19:21:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4565E81089
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758050479;
	bh=RolQY7XF/hJ6SZjtTj0WkVgsFPIyQJbXgC9ZRipRoJw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=H5SwpB1Ii1cAXhJEoBm8XuqE53ogu93hOTW1iWABZc8MZh1eMgFvYtXXONyMS8oao
	 fpl5vZtx+mp+jKeD0mfyYhJ8kQ3+cxrdqTTjpeYmFsVVwYbbJetCICgb9kFVDpHiG7
	 F3nD3/8NcNGHlzhquOLOjVbcJmN6VhuJxiwFO68Vs3OQnpVPu5u9e9/4wU9/X0mFiU
	 Pr5TMC6vEWOq1HBjF7lRzAMLSgg2VbNVuGvvvfjesbuOCumi7gTQW5fcUgYK4uA3MA
	 OGv+n6BUR5LAA7GmSedihd3t5vk4wPAzaptYE9Fm+2U2DFDVn/yHknFAkMnWso0mzh
	 aWAlHA/rKx37A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4565E81089;
	Tue, 16 Sep 2025 19:21:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2CE2F12D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 19:21:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1EFD840779
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 19:21:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FUYE9WMp9tlp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Sep 2025 19:21:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:1004:224b::aa; helo=out-170.mta0.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4163B405F3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4163B405F3
Received: from out-170.mta0.migadu.com (out-170.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::aa])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4163B405F3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 19:21:14 +0000 (UTC)
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
 netdev@vger.kernel.org, Dragos Tatulea <dtatulea@nvidia.com>,
 Yael Chemla <ychemla@nvidia.com>
Date: Tue, 16 Sep 2025 19:12:55 +0000
Message-ID: <20250916191257.13343-3-vadim.fedorenko@linux.dev>
In-Reply-To: <20250916191257.13343-1-vadim.fedorenko@linux.dev>
References: <20250916191257.13343-1-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1758050472;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RolQY7XF/hJ6SZjtTj0WkVgsFPIyQJbXgC9ZRipRoJw=;
 b=MU5JO25ikZu/ss8d+ZwhYkL5jPA6bjmQncFqZEpXqC+XXb8UTIPAHH1iwCeph2RxWM/4Re
 TzCIW3DGCMmu+eK+2YvXWU1EyQ2ZKKCmwUtP+Tdy4uHzfaaYLoU2GXlhM+fWIAZV8cHMhP
 QOiZxUrXp23zEBRgvBSP6V3aXRwIzF0=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=MU5JO25i
Subject: [Intel-wired-lan] [PATCH net-next v3 2/4] net/mlx5e: Don't query
 FEC statistics when FEC is disabled
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

Update mlx5e_stats_fec_get() to check the active FEC mode and skip
statistics collection when FEC is disabled.

Signed-off-by: Carolina Jubran <cjubran@nvidia.com>
Reviewed-by: Dragos Tatulea <dtatulea@nvidia.com>
Reviewed-by: Yael Chemla <ychemla@nvidia.com>
Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
---
 drivers/net/ethernet/mellanox/mlx5/core/en_stats.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c b/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
index 87536f158d07..aae0022e8736 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
@@ -1446,16 +1446,13 @@ static void fec_set_rs_stats(struct ethtool_fec_stats *fec_stats, u32 *ppcnt)
 }
 
 static void fec_set_block_stats(struct mlx5e_priv *priv,
+				int mode,
 				struct ethtool_fec_stats *fec_stats)
 {
 	struct mlx5_core_dev *mdev = priv->mdev;
 	u32 out[MLX5_ST_SZ_DW(ppcnt_reg)] = {};
 	u32 in[MLX5_ST_SZ_DW(ppcnt_reg)] = {};
 	int sz = MLX5_ST_SZ_BYTES(ppcnt_reg);
-	int mode = fec_active_mode(mdev);
-
-	if (mode == MLX5E_FEC_NOFEC)
-		return;
 
 	MLX5_SET(ppcnt_reg, in, local_port, 1);
 	MLX5_SET(ppcnt_reg, in, grp, MLX5_PHYSICAL_LAYER_COUNTERS_GROUP);
@@ -1496,11 +1493,14 @@ static void fec_set_corrected_bits_total(struct mlx5e_priv *priv,
 void mlx5e_stats_fec_get(struct mlx5e_priv *priv,
 			 struct ethtool_fec_stats *fec_stats)
 {
-	if (!MLX5_CAP_PCAM_FEATURE(priv->mdev, ppcnt_statistical_group))
+	int mode = fec_active_mode(priv->mdev);
+
+	if (mode == MLX5E_FEC_NOFEC ||
+	    !MLX5_CAP_PCAM_FEATURE(priv->mdev, ppcnt_statistical_group))
 		return;
 
 	fec_set_corrected_bits_total(priv, fec_stats);
-	fec_set_block_stats(priv, fec_stats);
+	fec_set_block_stats(priv, mode, fec_stats);
 }
 
 #define PPORT_ETH_EXT_OFF(c) \
-- 
2.47.3

