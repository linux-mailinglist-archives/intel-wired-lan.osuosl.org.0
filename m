Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B8998A5404D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Mar 2025 03:09:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDADF60EF5;
	Thu,  6 Mar 2025 02:09:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IPuwzk95WfyN; Thu,  6 Mar 2025 02:09:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0DB0960D70
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741226972;
	bh=z1rT13AxT6i7F5Ycxl5JT25b4uDj1fZ8K6rhKfIa2rM=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pVqQgnJVfmCyacIBdFC8yN5qTVcrCB7+Cd1WsanX/OYbPJtmcNZuJULgfIbR8n5SF
	 pvrIN8iW7shZrQE0z6CfMT3ASTIYXS8liiCgguvV2ZwI4noS7G1dOYA1lm2dNYxHQg
	 fD3ROB2Onr9yeaQ2wnRQhQ68/3W8CMSMyxPFqYtkbrv0szYrYFdO/dXIZF4mo6IST8
	 q2CII4RT06oSzwP1ewVVrqGjNwBl5RyRry0w9vW8k+TcOFnj5ZOqbswYfJuCq+Q0K2
	 c3ZYn3ujk2Pk9P3Luruyu7//vhGKLx1xjBaGPLnpg3zd9hPXg5cCamVLZM9tdwWvCI
	 5ssvl7xnHmm1Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0DB0960D70;
	Thu,  6 Mar 2025 02:09:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D32C7E2E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 02:09:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A25FE4088D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 02:09:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CWFzoX7KGK2t for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Mar 2025 02:09:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::629; helo=mail-pl1-x629.google.com;
 envelope-from=0x1207@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B37004088E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B37004088E
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B37004088E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 02:09:28 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id
 d9443c01a7336-223785beedfso1598705ad.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Mar 2025 18:09:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741226968; x=1741831768;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=z1rT13AxT6i7F5Ycxl5JT25b4uDj1fZ8K6rhKfIa2rM=;
 b=HtrQ0fn3rEzSu+hK03ysSc7tOwHxmUlW1l07hZ80kzHaCPMJ37vQtc8H1W2YlsuvWc
 GuCXZ1M95pah7l5NFp3Jk8amOq/PvtCY43cysKsfwh8+M7CiWC/fgXRxKXmiOiqqn9ik
 WeJxvOir242MiiFAkQejfmioXyjMpy2EN+yrQz5lOketIo3LJmCVk3dEBp4jqpclAweS
 gg4LPAjrbeZI/rgWPeqwpYLYw4TvX3aVfnnl12OYZeTz6lURoV7kYvXqCLQDcgHqodVV
 WdbaPzENdVFmTPj3rtDP0WjtQaXfIdknoMu5W9CtioH0OdT6fhqYaQEcAUioZZSKJI8r
 +iTQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXFwfCmXf+Tm6aRr8MIqFf/5ch3xRpam1RUSTTLyYf9c8OvXizZTyVDnFPe2TNf67/5LExXmmZZxyEbfjceZ1k=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw3SGwJhz2vbF06ZRFJaT4RBo33YBWwBey0nJ7O5wVMPbXi2HY2
 3cnynynvgiD+M8V9ixi5u/Zd1Y6ROI7Uq7Ia5HDRPh3TaKONTDuni9OpAgp0
X-Gm-Gg: ASbGncvdUpU/142GzJgKxriKbQNk8M+Yy8Oe9uT/VO7oR2jyM+ZL4uqRmniK7BoHlkY
 /e8fedKS0Cn180WvWlnTfZaAkmzg/ZW/LwAFF7YTtLu+yVb7+oZl0oxSBIgnR0lSqtRsEvyrqDk
 HqWX3gR1/VF2aosFll3HyxEWjcLiU9GGmvKLrsPzq59Adf5y9BLhEEos0Wui7WhiSrlaghnxrl7
 fAdffGnmuH3SWFM9GV5iQtDrAf/gLMGwb3dzvBT4WpsmEt3xHLuc3XORlMvxaB7YQdMBc3BuyLe
 AxzONdx2+zxbDAo1mgnp3G7KJh8J1A+qdARcEQ==
X-Google-Smtp-Source: AGHT+IF9QeRgv+6Z/cPJtnzTG5KuBBCd8Qdr6JTrB73F+Bp0n4Wqinq/xvlObO2mPBHhOim0ujthOA==
X-Received: by 2002:a05:6a00:889:b0:736:55ec:ea8b with SMTP id
 d2e1a72fcca58-73682d00a42mr7712708b3a.24.1741226967842; 
 Wed, 05 Mar 2025 18:09:27 -0800 (PST)
Received: from localhost ([144.24.43.60]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-73698519026sm139246b3a.144.2025.03.05.18.09.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Mar 2025 18:09:27 -0800 (PST)
Date: Thu, 6 Mar 2025 10:09:13 +0800
From: Furong Xu <0x1207@gmail.com>
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Maxime
 Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Simon Horman <horms@kernel.org>, Russell
 King <linux@armlinux.org.uk>, Alexei Starovoitov <ast@kernel.org>, Daniel
 Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Russell King
 <rmk+kernel@armlinux.org.uk>, Vladimir Oltean <vladimir.oltean@nxp.com>,
 Serge Semin <fancer.lancer@gmail.com>, Xiaolei Wang
 <xiaolei.wang@windriver.com>, Suraj Jaiswal <quic_jsuraj@quicinc.com>, Kory
 Maincent <kory.maincent@bootlin.com>, Gal Pressman <gal@nvidia.com>, Jesper
 Nilsson <jesper.nilsson@axis.com>, Choong Yong Liang
 <yong.liang.choong@linux.intel.com>, Chwee-Lin Choong
 <chwee.lin.choong@intel.com>, Kunihiko Hayashi
 <hayashi.kunihiko@socionext.com>, Vinicius Costa Gomes
 <vinicius.gomes@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
Message-ID: <20250306100913.00005bb8@gmail.com>
In-Reply-To: <20250305130026.642219-2-faizal.abdul.rahim@linux.intel.com>
References: <20250305130026.642219-1-faizal.abdul.rahim@linux.intel.com>
 <20250305130026.642219-2-faizal.abdul.rahim@linux.intel.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.42; x86_64-w64-mingw32)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1741226968; x=1741831768; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=z1rT13AxT6i7F5Ycxl5JT25b4uDj1fZ8K6rhKfIa2rM=;
 b=QGEIEUz+Uj3U4Czj89v7AwmVhARf6pRaLdtlFhKmFnVzKc1yx46GFsHXcJi5Hf1Ol+
 086NA7FQLih4V746HTso7RO2lVvbAe+8tEHzPOSbzDd9UhIT2L6U4X1AwkGMJtzQWlSn
 sJuY0yUwW35/o5DsWh5f1QPVPQqd4J4q8/JLf0zZzMGSWH8RHokC1cE35fSG4syYm+CN
 nZnEHPB8NhivvXggCQNUepytzZZwdd8X9MSGoNx2UFbcKtM7gg76wwamgWuftZAJ49BR
 i4om4ozqu+/Pyip5Cj4xjHqTMd9k4dzQLQN8czeWv2FK36PprrZie02XwpQWz0ozph/l
 9LDQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=QGEIEUz+
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 01/11] net: stmmac: move
 frag_size handling out of spin_lock
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

On Wed,  5 Mar 2025 08:00:16 -0500
Faizal Rahim <faizal.abdul.rahim@linux.intel.com> wrote:

> The upcoming patch will extract verification logic into a new module,
> MMSV (MAC Merge Software Verification). MMSV will handle most FPE fields,
> except frag_size. It introduces its own lock (mmsv->lock), replacing
> fpe_cfg->lock.
> 
> Since frag_size handling remains in the driver, the existing rtnl_lock()
> is sufficient. Move frag_size handling out of spin_lock_irq_save() to keep
> the upcoming patch a pure refactoring without behavior changes.
> 
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> ---
>  drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c
> index 918a32f8fda8..cfe5aea24549 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c
> @@ -1216,6 +1216,10 @@ static int stmmac_get_mm(struct net_device *ndev,
>  	if (!stmmac_fpe_supported(priv))
>  		return -EOPNOTSUPP;
>  
> +	state->rx_min_frag_size = ETH_ZLEN;
> +	frag_size = stmmac_fpe_get_add_frag_size(priv);
> +	state->tx_min_frag_size = ethtool_mm_frag_size_add_to_min(frag_size);
> +
>  	spin_lock_irqsave(&priv->fpe_cfg.lock, flags);
>  
>  	state->max_verify_time = STMMAC_FPE_MM_MAX_VERIFY_TIME_MS;
> @@ -1224,7 +1228,6 @@ static int stmmac_get_mm(struct net_device *ndev,
>  	state->verify_time = priv->fpe_cfg.verify_time;
>  	state->tx_enabled = priv->fpe_cfg.tx_enabled;
>  	state->verify_status = priv->fpe_cfg.status;
> -	state->rx_min_frag_size = ETH_ZLEN;
>  
>  	/* FPE active if common tx_enabled and
>  	 * (verification success or disabled(forced))
> @@ -1236,9 +1239,6 @@ static int stmmac_get_mm(struct net_device *ndev,
>  	else
>  		state->tx_active = false;
>  
> -	frag_size = stmmac_fpe_get_add_frag_size(priv);
> -	state->tx_min_frag_size = ethtool_mm_frag_size_add_to_min(frag_size);
> -
>  	spin_unlock_irqrestore(&priv->fpe_cfg.lock, flags);
>  
>  	return 0;
> @@ -1258,6 +1258,8 @@ static int stmmac_set_mm(struct net_device *ndev, struct ethtool_mm_cfg *cfg,
>  	if (err)
>  		return err;
>  
> +	stmmac_fpe_set_add_frag_size(priv, frag_size);
> +
>  	/* Wait for the verification that's currently in progress to finish */
>  	timer_shutdown_sync(&fpe_cfg->verify_timer);
>  
> @@ -1271,7 +1273,6 @@ static int stmmac_set_mm(struct net_device *ndev, struct ethtool_mm_cfg *cfg,
>  	if (!cfg->verify_enabled)
>  		fpe_cfg->status = ETHTOOL_MM_VERIFY_STATUS_DISABLED;
>  
> -	stmmac_fpe_set_add_frag_size(priv, frag_size);
>  	stmmac_fpe_apply(priv);
>  
>  	spin_unlock_irqrestore(&fpe_cfg->lock, flags);

Reviewed-by: Furong Xu <0x1207@gmail.com>

