Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E664BA58A73
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Mar 2025 03:24:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F0F760774;
	Mon, 10 Mar 2025 02:24:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JrcJUWC0S037; Mon, 10 Mar 2025 02:24:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B12B260779
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741573494;
	bh=8UgdkfR5ZJpIqw3CxaKBXneuVyU1q32SHQHrzDgtsJo=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=N2bEoluvb5LglV1p5WqI6NBzPce4PWNcFxjgJXaupLfuWF6V3mWJwpGT0IYIX0lc+
	 FPMLEZ4Tgvy3+IdWNrjO173r7986uw737hjgJn2xuBCr5OZ48kUQYQsxPfsdBILyth
	 b+ta4ccEotx5CI3Ioe5RNhmf9L6Di7GHbr1pDUH/ouQxVSETb5Fa6sPHyWsaz1HNFq
	 ps84vDiFl8XEJ4zQ0ANwLLBRkX/1Y4gdu4RCNGDsygjwgenVIzTzX14vTX0gl3dKfm
	 Q/tnNNIB26UIdXwXHwgmMJh/luccBSv1Pn4bfcu13jrg5+I6c4pcCJnPybmng7IVbI
	 htO6c+IEELWsw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B12B260779;
	Mon, 10 Mar 2025 02:24:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 330341E3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 02:24:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 16331400D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 02:24:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N8lVH6WOOoog for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Mar 2025 02:24:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1029; helo=mail-pj1-x1029.google.com;
 envelope-from=0x1207@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 75BAE400BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 75BAE400BA
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com
 [IPv6:2607:f8b0:4864:20::1029])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 75BAE400BA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 02:24:47 +0000 (UTC)
Received: by mail-pj1-x1029.google.com with SMTP id
 98e67ed59e1d1-2ff6a98c638so6972090a91.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 09 Mar 2025 19:24:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741573487; x=1742178287;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=8UgdkfR5ZJpIqw3CxaKBXneuVyU1q32SHQHrzDgtsJo=;
 b=B+TFil3y/QiLTnjsfwmnEprrs6a+J/dc6OUijo6wvM8imtjcZQ1FZGhVLyk3G/6Q0i
 VLp22FAhzXRS494M/qun6kg5UBn4y2+7J6PriS9y1JoKz/hBjn4AdQyqZD0P4unsPZ5d
 1yjT7OkSkqs+4MnPiErrPher683aWkUJPLNyqmMGqgb0lH+vt+wTiP8YG29JX3O6UuOS
 t8ilvIK90R+wDpp++yZKkCgvIZpSJ7VpqS5MH13hHMmNPHGwBcIy15u8TeRVIlzA2cSP
 8c98e/PMXelgZwvBDl85d5TqmusAOCVxHJNetjt+qE0FNIcnpVU2OuAuvKwzjEifjM4y
 rP1Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVw/pAed/xiwNokpYPkpG0xIK3rjr8j4EDI3MWUmnNvHwwHoOm9LD1mlOlIBcG0jLRL15jTCGugla1lceLbmws=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxQ42Ttv59J3MVEAZwNzmrFXNdY1UKWdWuQasEzq3eziPXB1xBC
 WVtvdq90r+3jRcJ9VXIG6ennoWUW/86h5MAJGBHlQHDbdH6DdQ0p
X-Gm-Gg: ASbGnctNfLNCWuEl91uNNuCKvIMF5RFbsHH8Ks7KfGHbEVXLC+aFt7J3wqezpulNA2L
 oi2y+k0K91UoGOlKfd4qxD1NzxZj8RlSd3r/G3fBrIrMFcEXWz2hqNx/3teijT38+dBh7y2kqxx
 JxiV8k10gGLnyBtU9H5c7lkAIJI3KetfMYOPCDKF8yFjD7HEgTwxeZUe5DIjTvN/ALT27taL2VS
 WC0HfzUabJdxZBYcd0Ce8rQqAKeRHwtyqA2UYxrvQOBwgROgYBOYf0G1dNXGusJnt4EF+wtiLWr
 SqjzLYiazw90L54KNT8ms5uivzIhU9MNJbKGpA==
X-Google-Smtp-Source: AGHT+IEu8uuETGfMoaM3EPE2WfaTTndfm3F2AV9+L8B8fVo7WT9YAUCmxKGewCLzkt/NfrR5yWSoUw==
X-Received: by 2002:a17:90b:4cca:b0:2ff:72f8:3708 with SMTP id
 98e67ed59e1d1-2ff7ce837c9mr21980902a91.17.1741573486614; 
 Sun, 09 Mar 2025 19:24:46 -0700 (PDT)
Received: from localhost ([144.24.43.60]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2ff4e7ffdd3sm8645058a91.39.2025.03.09.19.24.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Mar 2025 19:24:46 -0700 (PDT)
Date: Mon, 10 Mar 2025 10:24:32 +0800
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
Message-ID: <20250310102432.000032ad@gmail.com>
In-Reply-To: <20250309104648.3895551-4-faizal.abdul.rahim@linux.intel.com>
References: <20250309104648.3895551-1-faizal.abdul.rahim@linux.intel.com>
 <20250309104648.3895551-4-faizal.abdul.rahim@linux.intel.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.42; x86_64-w64-mingw32)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1741573487; x=1742178287; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8UgdkfR5ZJpIqw3CxaKBXneuVyU1q32SHQHrzDgtsJo=;
 b=N0U3u5/hln1GYrDlH0xFELQRDcggHbhGbXY3VyztXrjrauOK7otD/L7/xsVnis+MDZ
 VMJbrZAF/wBvlQCTdgwgM8hESGrILF2pBV3ksAodR7o3WI/VrDiB2A9qc4ToXJ0Bwtqg
 GxvEFKf5r48N04rRxzkVzf6QouyBgljMXAHKe7EEy4hs+G4WN1G2UF1bDfgLJIAd/mqO
 uGvES0cQcdeRoAG5HAY4iajqR8tdqoVXedkCAmpFGvCvUazjiQbUQrfjsO5C5x62Xacc
 am0VYq5ZgWkIz0cPpSQZny54sZKmp+KB8iF6vldfsVIAgE2eYFjdZ1wZRHpPIM3VFMAo
 cxGg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=N0U3u5/h
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9 03/14] net: ethtool: mm:
 reset verification status when link is down
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

On Sun,  9 Mar 2025 06:46:37 -0400
Faizal Rahim <faizal.abdul.rahim@linux.intel.com> wrote:

> When the link partner goes down, "ethtool --show-mm" still displays
> "Verification status: SUCCEEDED," reflecting a previous state that is
> no longer valid.
> 
> Reset the verification status to ensure it reflects the current state.
> 
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> ---
>  net/ethtool/mm.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/net/ethtool/mm.c b/net/ethtool/mm.c
> index bfd988464d7d..ad9b40034003 100644
> --- a/net/ethtool/mm.c
> +++ b/net/ethtool/mm.c
> @@ -415,6 +415,10 @@ void ethtool_mmsv_link_state_handle(struct ethtool_mmsv *mmsv, bool up)
>  		/* New link => maybe new partner => new verification process */
>  		ethtool_mmsv_apply(mmsv);
>  	} else {
> +		/* Reset the reported verification state while the link is down */
> +		if (mmsv->verify_enabled)
> +			mmsv->status = ETHTOOL_MM_VERIFY_STATUS_INITIAL;
> +
>  		/* No link or pMAC not enabled */
>  		ethtool_mmsv_configure_pmac(mmsv, false);
>  		ethtool_mmsv_configure_tx(mmsv, false);

Reviewed-by: Furong Xu <0x1207@gmail.com>

