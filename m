Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB33A40CDB
	for <lists+intel-wired-lan@lfdr.de>; Sun, 23 Feb 2025 06:40:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3351F812EB;
	Sun, 23 Feb 2025 05:40:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qWj8jKFAwzUg; Sun, 23 Feb 2025 05:40:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 733F8812EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740289208;
	bh=BfvuWvSB4FrYuL3Q9W8pUmNF8XrVHM6syd74IbIbqmI=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5traBDdnsFVk6erfNIkHxhNkxXIHswOACB7UGGWabMvDGxol/imuI1D7B1LF7ICMK
	 62GD8W18aOI8IWMOqIjfTnK/1NREYo+zWUTol49zf1cg5f9moMK+cWB3OHvQmJGqdZ
	 bp2fhajuMDz7yN8BVJHMizatip8YJf3aSKU2QEoYeSlSPqw3AjXYwKVkdZ9b5N/pED
	 xlAg+D2JFu05rq3zOG6zUWWxqMY8RJapytwwpG9y/EnRArSf1tdSjl/3fdlVThRx5y
	 DgSQN/M3iQO5x0nr381DWf3P6G2SIdqyM2VvGSUDD46CESUsK8WB9h++xlV7grL0nh
	 0cLmtKL0AUrhw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 733F8812EA;
	Sun, 23 Feb 2025 05:40:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E3D57943
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Feb 2025 05:40:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B580C60615
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Feb 2025 05:40:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r1Jg9evWwwqr for <intel-wired-lan@lists.osuosl.org>;
 Sun, 23 Feb 2025 05:40:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::102c; helo=mail-pj1-x102c.google.com;
 envelope-from=0x1207@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 127836060B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 127836060B
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 127836060B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Feb 2025 05:40:04 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id
 98e67ed59e1d1-2fa8ada6662so6931601a91.1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Feb 2025 21:40:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740289204; x=1740894004;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=BfvuWvSB4FrYuL3Q9W8pUmNF8XrVHM6syd74IbIbqmI=;
 b=aECUdBFaudArwdMOvrpsKvwMkH2sR3yw95oimCQJNI9QQ8g6EcBLN2CxPIfhglZ3o3
 8NkuagLQjpPjeXWeQtG+u/hRO7Gg1OmHkvjg/bPFnj2a52e7GoUluwbkguoshN1bTYFF
 /qJfApfMfQQMiXUZeMXogvjTvZqLXaBeIRu0oTnwFtJPdMCdvh3HCg02C2Qyg1DTkO4z
 byKQeeoI8GEd9B/jmrNtczimWlL11EjV3yTvblPLZHD2Ivd28/eIEF8pDisM6RuoSEoo
 v62vdkYxraVbPcKPvbdjNSVC+sRS6pwRhY+2wq9NAz674lES0v50Os5l64D/8tY2KWaq
 u8Fg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWlH4IG5NPwdT9tpGl8zYZkV37S2wcJpOLTEZWaxQM9BduueWwP+ZwbMYtjHeFogeyiwOf84KrL7uIatttwKdI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwNqOyqgryXsOij7inuIADgxxebv48gMZrCSKOxfPUlXuHUeqQZ
 UGf9+Lxwz2HDFBJscv1QvTrkKSD9BMxq9v6NBXtY8VPc1zTqXAUd
X-Gm-Gg: ASbGnctyIcdmTVP2bGV2Ql2XWoqlZ6rbl7TfZGLgzZ9k0sLvWz6KNhWocVq/AsGnW4H
 xLLwlcrCa5xqcqnexj7BffMqOKJd0nHrHwfv1BjWUoupjpUb6qU4U6wGkl43mGsbL3+E1zNLkQ4
 tTLLI3Hz95YDhUlnkdfgCCOOWrWdj+dcl4iGbKKLK95HjjqSIfK824JIpvH76A1eOGA0LBCXC6j
 VHt04HsOfKoIJNqK4Bf6kdCae6JMo4NpMBFARz1KGXWnOZHKAwtuiqqR/Atzul5IDQSa0G6rKvd
 g8CH04qbXqzeGCFpnETX6D0=
X-Google-Smtp-Source: AGHT+IEsyitKBEB+TjtOIJ7j0ghQQ1PUySgYsjd6ENH+ooYHWDcum4IoJa9MuHEv9g0sOVIJCIQYCA==
X-Received: by 2002:a05:6a20:8403:b0:1ee:efa5:6573 with SMTP id
 adf61e73a8af0-1eef52c9981mr17773167637.8.1740289203622; 
 Sat, 22 Feb 2025 21:40:03 -0800 (PST)
Received: from localhost ([129.146.253.192]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-73261ca7831sm15022814b3a.104.2025.02.22.21.39.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 22 Feb 2025 21:40:03 -0800 (PST)
Date: Sun, 23 Feb 2025 13:39:47 +0800
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
 Nilsson <jesper.nilsson@axis.com>, Andrew Halaney <ahalaney@redhat.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>, Kunihiko Hayashi
 <hayashi.kunihiko@socionext.com>, Vinicius Costa Gomes
 <vinicius.gomes@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
Message-ID: <20250223133947.00002f06@gmail.com>
In-Reply-To: <20250220025349.3007793-2-faizal.abdul.rahim@linux.intel.com>
References: <20250220025349.3007793-1-faizal.abdul.rahim@linux.intel.com>
 <20250220025349.3007793-2-faizal.abdul.rahim@linux.intel.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.42; x86_64-w64-mingw32)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1740289204; x=1740894004; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=BfvuWvSB4FrYuL3Q9W8pUmNF8XrVHM6syd74IbIbqmI=;
 b=E/6g0CKJOth3gRdyLV42UFDaWr7uZCYfW5FwMa3mvJ0i0siP4dCvaMt3iG3949OUom
 7WVyHYwXwZii/Ne3nabmMI+zlIwUfos+rScNK4/xPmyH4FjlCwzFAJ2L2PDIecyKCnV7
 +AY52S6kQZlnbgn0jONSXy51cD8wbsGv63GkRIHOFidepEKwzzIHKwAYFO6ti+xzjg6r
 1gvT8ezZsec2ugcjCuFuj2FscpV20QqypdDnBmM8NfcYr/zpuSMQW0HAwQMBJ+TRAxj9
 5GuitOxCjLbaYVQq5Ge39GD60ilvdcSSkZOp+PZ7F8wXZxVu3XtA65zbO0OsaLdZFSwD
 XsEA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=E/6g0CKJ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 1/9] net: ethtool: mm:
 extract stmmac verification logic into common library
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

On Wed, 19 Feb 2025 21:53:41 -0500, Faizal Rahim <faizal.abdul.rahim@linux.intel.com> wrote:

> @@ -1258,23 +1236,8 @@ static int stmmac_set_mm(struct net_device *ndev, struct ethtool_mm_cfg *cfg,
>  	if (err)
>  		return err;
>  
> -	/* Wait for the verification that's currently in progress to finish */
> -	timer_shutdown_sync(&fpe_cfg->verify_timer);
> -
> -	spin_lock_irqsave(&fpe_cfg->lock, flags);
> -
> -	fpe_cfg->verify_enabled = cfg->verify_enabled;
> -	fpe_cfg->pmac_enabled = cfg->pmac_enabled;
> -	fpe_cfg->verify_time = cfg->verify_time;
> -	fpe_cfg->tx_enabled = cfg->tx_enabled;
> -
> -	if (!cfg->verify_enabled)
> -		fpe_cfg->status = ETHTOOL_MM_VERIFY_STATUS_DISABLED;
> -
> +	ethtool_mmsv_set_mm(&priv->fpe_cfg.mmsv, cfg);
>  	stmmac_fpe_set_add_frag_size(priv, frag_size);
> -	stmmac_fpe_apply(priv);

Well, I would prefer keeping stmmac_fpe_set_add_frag_size() before
ethtool_mmsv_set_mm(), but not after, the VERIFY process should be
triggered after all the parameters are set.

> -
> -	spin_unlock_irqrestore(&fpe_cfg->lock, flags);
>  
>  	return 0;
>  }

