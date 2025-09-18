Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1E1B826E7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Sep 2025 02:46:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A1CED61AC2;
	Thu, 18 Sep 2025 00:46:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sFjIjG-FjI28; Thu, 18 Sep 2025 00:46:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0548761AC1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758156405;
	bh=8HC2C2auoBGQjC4QugqoOtE5V/BlcRTiRRxuiKb6fZc=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Msd1ouWjqwSgrgzK3anMZ4WgjssrKhhtlDeCXIwweMoTmjHLnb/svSB7sBRWO8ePw
	 xGwwdHVGvaTxb6bPYkc97bJdoHdnAVaSYSd6CjBPsA1o2wLxEvSuu4Ua5yYHvzILoO
	 gduVq8LqrWtCzxvx0nwtQiAIuz+oNbBt9c1E9CRTc48UT3Sy2IPNJ96mrLTwRcpc9W
	 4ApS/Jr+swNL9+9rWualRae92FID/GoYPpmlv621gziC+i9ZQbzMJrv0cz+5aCsmuE
	 6wbRs5zPIPmRVRfwTkqE3aatX3azB4kFaBxykSSK23EF4D+YQ7TThOhB77KhZ12L1N
	 Z5i0ks08Scf/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0548761AC1;
	Thu, 18 Sep 2025 00:46:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 15682AF1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 00:46:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F020B405E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 00:46:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EZwQXLOo6gZs for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Sep 2025 00:46:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 47C4F405AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 47C4F405AD
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 47C4F405AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 00:46:42 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id C702560245;
 Thu, 18 Sep 2025 00:46:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF572C4CEE7;
 Thu, 18 Sep 2025 00:46:39 +0000 (UTC)
Date: Wed, 17 Sep 2025 17:46:38 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Cc: Andrew Lunn <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org, Donald
 Hunter <donald.hunter@gmail.com>, Carolina Jubran <cjubran@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org, Yael Chemla <ychemla@nvidia.com>, Dragos Tatulea
 <dtatulea@nvidia.com>
Message-ID: <20250917174638.238fa5fc@kernel.org>
In-Reply-To: <20250916191257.13343-4-vadim.fedorenko@linux.dev>
References: <20250916191257.13343-1-vadim.fedorenko@linux.dev>
 <20250916191257.13343-4-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758156400;
 bh=lNGmY3o1ccmZCWS4874pPo4nNHHvU2+63aqEDcNOe50=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=m5OCRe7f97f9q2GvQL96b8tJOFvbI7MsmOZYfL4R69lL4n0/qZzzM4tI/NA6fRrqh
 N3V75EJ4q1S4JEBq1a5VjNiQNx/HL21tkQDB6qqdsmAsF5p+m/J24lUgCRbC2SZBsm
 vYPF3wQcxWV0fVVnZpNv2lMvop3R8JgddXNEORGIJdREyFgyV1mMFhJ3RPfvBRUARq
 M5qq9uMvQ95602uEp3B0jeFT/9ado+g4ydlMGLz4a2FYsrU+vWE6aK+Woa/zkGyt4P
 oTF/sSMW5nO1fmKN1ULrRmAHBjDcz7NgREDWjTmiDOIX+ykqF5oI1VPKDSezlGAW9G
 sQoY/LVOVQ8Ow==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=m5OCRe7f
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 3/4] net/mlx5e: Add logic
 to read RS-FEC histogram bin ranges from PPHCR
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

On Tue, 16 Sep 2025 19:12:56 +0000 Vadim Fedorenko wrote:
> From: Carolina Jubran <cjubran@nvidia.com>
> 
> Introduce support for querying the Ports Phy Histogram Configuration
> Register (PPHCR) to retrieve RS-FEC histogram bin ranges. The ranges
> are stored in a static array and will be used to map histogram counters
> to error levels.
> 
> The actual RS-FEC histogram statistics are not yet reported in this
> commit and will be handled in a downstream patch.

> @@ -6246,8 +6246,17 @@ int mlx5e_priv_init(struct mlx5e_priv *priv,
>  	if (!priv->channel_stats)
>  		goto err_free_tx_rates;
>  
> +	priv->fec_ranges = kcalloc_node(ETHTOOL_FEC_HIST_MAX,
> +					sizeof(*priv->fec_ranges),
> +					GFP_KERNEL,
> +					node);

Why bother allocating his on the device node? We have no reason to
believe user will pin eth process that reads these stats to the node
where the device is :\

> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c b/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
> index aae0022e8736..476689cb0c1f 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
> @@ -1490,8 +1490,63 @@ static void fec_set_corrected_bits_total(struct mlx5e_priv *priv,
>  				      phy_corrected_bits);
>  }
>  
> +#define MLX5E_FEC_RS_HIST_MAX 16
> +
> +static u8
> +fec_rs_histogram_fill_ranges(struct mlx5e_priv *priv,
> +			     const struct ethtool_fec_hist_range **ranges)
> +{
> +	struct mlx5_core_dev *mdev = priv->mdev;
> +	u32 out[MLX5_ST_SZ_DW(pphcr_reg)] = {0};
> +	u32 in[MLX5_ST_SZ_DW(pphcr_reg)] = {0};
> +	int sz = MLX5_ST_SZ_BYTES(pphcr_reg);
> +	u8 active_hist_type, num_of_bins;
> +
> +	memset(priv->fec_ranges, 0,
> +	       ETHTOOL_FEC_HIST_MAX * sizeof(*priv->fec_ranges));
> +	MLX5_SET(pphcr_reg, in, local_port, 1);
> +	if (mlx5_core_access_reg(mdev, in, sz, out, sz, MLX5_REG_PPHCR, 0, 0))
> +		return 0;
> +
> +	active_hist_type = MLX5_GET(pphcr_reg, out, active_hist_type);
> +	if (!active_hist_type)
> +		return 0;
> +
> +	num_of_bins = MLX5_GET(pphcr_reg, out, num_of_bins);
> +	if (WARN_ON_ONCE(num_of_bins > MLX5E_FEC_RS_HIST_MAX))

why does MLX5E_FEC_RS_HIST_MAX exist?
We care that bins_cnt <= ETHTOOL_FEC_HIST_MAX - 1
or is there something in the interface that hardcodes 16?

> +		return 0;

> @@ -2619,3 +2675,4 @@ unsigned int mlx5e_nic_stats_grps_num(struct mlx5e_priv *priv)
>  {
>  	return ARRAY_SIZE(mlx5e_nic_stats_grps);
>  }
> +

spurious change
