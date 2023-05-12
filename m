Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21039700ED8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 20:31:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B203D417A0;
	Fri, 12 May 2023 18:31:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B203D417A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683916290;
	bh=GYtcEtB7eivw2BFqK9rI1b2GwKRK45rx7jsGGeGXOY4=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6wgoZqyjZrgC20rY/Jn2sc+JkJRGe4G5JRBdnZeyrhS3Ng5P0WrBMupUYsWZxTo7/
	 LM5gDuH9+tnbcPgRsGcBy6m6xjntVc2jjE69D138bs4KHyxQDVYfw9JiuNPEtzgNb6
	 HTIUzhtsrAXYKGY7lj8HqcbNMDB2lxTg9TzUzlfEJnpI1dFxsQVlwIq5Gjv/BH3x6/
	 lR5MnKNC8V/OUHK3TsOgolvoob7S6/BXM0jjRxizM8Be9Lly+yPDyIlnAKPGonmkav
	 ooPvredM2FLprdAgLxM4lwAOVJci/8GTHrx6GatdjMXCMaY4cHfLC3fap8BgYNPtNw
	 wE4If6oC861gw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jFmb6VDYeZfg; Fri, 12 May 2023 18:31:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A088405CB;
	Fri, 12 May 2023 18:31:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A088405CB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 168051BF836
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 18:31:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F031584872
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 18:31:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F031584872
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QOwxmEetK-Yh for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 18:31:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5DBFA8485B
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com
 [IPv6:2607:f8b0:4864:20::449])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5DBFA8485B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 18:31:23 +0000 (UTC)
Received: by mail-pf1-x449.google.com with SMTP id
 d2e1a72fcca58-6434307a64bso10398580b3a.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 11:31:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683916283; x=1686508283;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=wq2By9mZuUQ7p1oM5SkoXHJiUzdgw169iTgadwLtfnQ=;
 b=hDeNNv+BOA033Jjyz/Rz7nboXZgM8s3prYouI2L3IzJp/3cYMH9yucPtRMEuK2a0bU
 06LIjLZOqqCV47DIxDWLOSNoL2+OFeyoveMem6B5pnetUs9XPkQHMwVYVkWdtJWOw1az
 wCIvMfnZVEarAZ1oNG17eyJ6ZwPU8rifyVMw6IczMCK0PoyRKYGi6uGDPsoefwT3Z3oY
 25kzXN/yPGhK8EbaiSuxKQRgp+LW6XEZ7/tIcnxMjolrF5//zedf5AzFYH2NyIuyoDbt
 WNY1SpmdsGkCqxBNfivCSyvSN0wVw69E3F0wxuEmmXBAuq9LghTL0XpY3ec8LeQrBoJL
 6i6g==
X-Gm-Message-State: AC+VfDxTsmXq/EFrzHuLlMAkGUyWZflOoqmNXLC8gHVoPjbBoPPmXe5D
 T2V6ebfoCRU9qvX5PfzxE14+iNQ=
X-Google-Smtp-Source: ACHHUZ5yguYzBo0raBvnnA2xkJTrHlxk1B/ym21H6OwVm5I5+i5m5lU08ouAnUGmmP635rdcxpsTQfI=
X-Received: from sdf.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:5935])
 (user=sdf job=sendgmr) by 2002:a05:6a00:7c6:b0:643:599b:4db4 with SMTP id
 n6-20020a056a0007c600b00643599b4db4mr6882664pfu.1.1683916282830; Fri, 12 May
 2023 11:31:22 -0700 (PDT)
Date: Fri, 12 May 2023 11:31:21 -0700
In-Reply-To: <20230512152607.992209-11-larysa.zaremba@intel.com>
Mime-Version: 1.0
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
 <20230512152607.992209-11-larysa.zaremba@intel.com>
Message-ID: <ZF6F+UQlXA9REqag@google.com>
From: Stanislav Fomichev <sdf@google.com>
To: Larysa Zaremba <larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1683916283; x=1686508283;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=wq2By9mZuUQ7p1oM5SkoXHJiUzdgw169iTgadwLtfnQ=;
 b=JWT1FrK7ck7EpDsQRE4pCSwDvUGJ63OfyV6gRQBf3N6utX08/U1OHXmvomU3P6Z3G6
 N5Tvx3vxz4Y6ynHYvG8gsQs85MZ7VK/EoDwOcb9T7Vuf16vwygdYAzo/UNwe5EPtiLD8
 HAQ764S9LE4N6qXozvAtzgduNz/lnpvl878hU17TpCFsRDDOzxM/9/Y7iSQQ3Zx2WZpj
 I4fJF+J/zB+k1AZUcc8RBSXW1+T9EWoDEQpcvOtBknUhsuo/Cja32EUu70hGOaWdrDKH
 6PzSqv0XmVdYlay6qmzlhnjOFde/W19FX57pttk9HvCy1ixM/Fgu/A/6SlTmkdEkZhVw
 NRng==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20221208 header.b=JWT1FrK7
Subject: Re: [Intel-wired-lan] [PATCH RESEND bpf-next 10/15] ice: Implement
 VLAN tag hint
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Anatoly Burakov <anatoly.burakov@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Song Liu <song@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Maryam Tahhan <mtahhan@redhat.com>, xdp-hints@xdp-project.net,
 Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jesper Dangaard Brouer <brouer@redhat.com>,
 Yonghong Song <yhs@fb.com>, KP Singh <kpsingh@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jiri Olsa <jolsa@kernel.org>,
 bpf@vger.kernel.org, Martin KaFai Lau <martin.lau@linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 05/12, Larysa Zaremba wrote:
> Implement .xmo_rx_vlan_tag callback to allow XDP code to read
> packet's VLAN tag.
> 
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 44 +++++++++++++++++++
>  1 file changed, 44 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> index 1caa73644e7b..39547feb6106 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> @@ -627,7 +627,51 @@ static int ice_xdp_rx_hash(const struct xdp_md *ctx, u32 *hash,
>  	return 0;
>  }
>  
> +/**
> + * ice_xdp_rx_ctag - VLAN tag XDP hint handler
> + * @ctx: XDP buff pointer
> + * @vlan_tag: destination address
> + *
> + * Copy VLAN tag (if was stripped) to the destination address.
> + */
> +static int ice_xdp_rx_ctag(const struct xdp_md *ctx, u16 *vlan_tag)
> +{
> +	const struct ice_xdp_buff *xdp_ext = (void *)ctx;
> +	netdev_features_t features;
> +

[..]

> +	features = xdp_ext->rx_ring->netdev->features;
> +
> +	if (!(features & NETIF_F_HW_VLAN_CTAG_RX))
> +		return -EINVAL;

Passing-by comment: why do we need to check features?
ice_get_vlan_tag_from_rx_desc seems to be checking a bunch of
fields in the descriptors, so that should be enough?

> +
> +	*vlan_tag = ice_get_vlan_tag_from_rx_desc(xdp_ext->eop_desc);

Should we also do the following:

if (!*vlan_tag)
	return -ENODATA;

?

> +	return 0;
> +}
> +
> +/**
> + * ice_xdp_rx_stag - VLAN s-tag XDP hint handler
> + * @ctx: XDP buff pointer
> + * @vlan_tag: destination address
> + *
> + * Copy VLAN s-tag (if was stripped) to the destination address.
> + */
> +static int ice_xdp_rx_stag(const struct xdp_md *ctx, u16 *vlan_tag)
> +{
> +	const struct ice_xdp_buff *xdp_ext = (void *)ctx;
> +	netdev_features_t features;
> +
> +	features = xdp_ext->rx_ring->netdev->features;
> +
> +	if (!(features & NETIF_F_HW_VLAN_STAG_RX))
> +		return -EINVAL;
> +
> +	*vlan_tag = ice_get_vlan_tag_from_rx_desc(xdp_ext->eop_desc);
> +	return 0;
> +}
> +
>  const struct xdp_metadata_ops ice_xdp_md_ops = {
>  	.xmo_rx_timestamp		= ice_xdp_rx_hw_ts,
>  	.xmo_rx_hash			= ice_xdp_rx_hash,
> +	.xmo_rx_ctag			= ice_xdp_rx_ctag,
> +	.xmo_rx_stag			= ice_xdp_rx_stag,
>  };
> -- 
> 2.35.3
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
