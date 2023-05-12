Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A43B700EC4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 20:28:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E4D6140525;
	Fri, 12 May 2023 18:28:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E4D6140525
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683916133;
	bh=OL+fTXQwkcRJ+SOyeCZpxwSqrmI61w4Mb2Ges/pSCE4=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=D1yiny7o7bwvrZEQlZyoP/qZtopAsREje4IK/ga0VPccLpWSqWUBHYdXi8sABMsPi
	 hM2r4ehUvwYgc+nP5qrdFB7haG2V4whgkd8jYqlTlVCDHAK3Ju8EjfvirAxjvc3plV
	 ElubY+bo1r7UA72WyCP9jFHYqcQiXN9GHpsR/kfsB3j39sCnLQvaN4ej6xkZ3Q5Zzs
	 e/6zqIuXwA1sVZFP0KsoEBfdEPkWv5yi++SAnZ22gASFMSC/1Ss+y0dh/6pjbMIbPJ
	 3xb1iGRheUVpH+4y+G0V4hlfCSNu5Cw/XW3xiocj+ILe5GNNcdz6SA37IodhEt6FqV
	 NoUBOcB2mFq3g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1AlIuzTPsUyZ; Fri, 12 May 2023 18:28:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C0B64404C1;
	Fri, 12 May 2023 18:28:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C0B64404C1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7E2DE1BF836
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 18:28:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 55E7282147
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 18:28:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 55E7282147
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3V5fZDpDFf2V for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 18:28:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 89C678213F
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com
 [IPv6:2607:f8b0:4864:20::b49])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 89C678213F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 18:28:47 +0000 (UTC)
Received: by mail-yb1-xb49.google.com with SMTP id
 3f1490d57ef6-ba22ced2e95so9365944276.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 11:28:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683916126; x=1686508126;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=g1YHZI5wWoilGiErbtfwlJ8t+YURSptBI7L1u7j3vVM=;
 b=mGsljwvmPgarhOSrCxloFi3lQ37aYM+h2No1r4az5p3vpGrjTwN4t/ZIQBK1BSW7+n
 WlzlhMw1yDiZErljcVuCfcn6LLbQ/v8iwDmH1iGlb2F03sN3wcxNrYLSY4ttF9Jl2Cq0
 LTrNlVzFvG0mgsWliH5UEWDSmngR49w6e+6HovIHeqg5cyqeFGmVz0mJZ4LSixnTgfQk
 qroOmMrjNJ5SB03OerexoOTWdXSCW8ithTfHtZLrjrXDmYNHd9dFusNccjgUCez92IWK
 sCMeiCrePW/2vPzIGjq8lBzC9Et/wj66DkPX8AfULAO4wsduXqiEDgLMqJlyeUpWE8U/
 nX1g==
X-Gm-Message-State: AC+VfDw3o7OgexNfjdQPVuHz87nHY8lEclDo8RTjhn73IFOJkG29kCsy
 aZh7/sH4AL8K7uSOEf9fBTCm4X4=
X-Google-Smtp-Source: ACHHUZ61qwr3BdPrPsjBchwqa5bp7Ymx46T3C17hhoEYce9/vXT91ouNeraL6bIM1/UVWg+lWqm0LXw=
X-Received: from sdf.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:5935])
 (user=sdf job=sendgmr) by 2002:a25:874f:0:b0:b9d:fe66:a424 with SMTP id
 e15-20020a25874f000000b00b9dfe66a424mr16098075ybn.2.1683916126382; Fri, 12
 May 2023 11:28:46 -0700 (PDT)
Date: Fri, 12 May 2023 11:28:44 -0700
In-Reply-To: <20230512152607.992209-10-larysa.zaremba@intel.com>
Mime-Version: 1.0
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
 <20230512152607.992209-10-larysa.zaremba@intel.com>
Message-ID: <ZF6FXNglntreqIgW@google.com>
From: Stanislav Fomichev <sdf@google.com>
To: Larysa Zaremba <larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1683916126; x=1686508126;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=g1YHZI5wWoilGiErbtfwlJ8t+YURSptBI7L1u7j3vVM=;
 b=K9UDN4B/R3ogwJmxTjdrEokIDh2/U9Ke5kzESmbqsjepMS+MzvNKwdyEGaOh8hfyYz
 VcQYpY3OPiM7e6Xqm14UIE3Wcrh3rautsuytlTioEMN+DimMMZ7G42wrPlH8x4ZVc8Sz
 fuo+/gxpvp/KUvo9o514Oztnpkdh1qkembXoIYCYH5jYJm5NQ5ZZIZQC00b7uVeGlNv7
 Gp/auxM9y4+WXLnOv9rj6MuMOL7vu0Unc1FhgmSmZgCB3jZjWWwZAeGMNqUty7PUZ1dv
 FbMgxDgd/CxxOU9sa0vqLh26yG4Mqg4eeJNw0QhTDkmuoXHoxl1Of7BF9DPmWUVWh94b
 Oh7g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20221208 header.b=K9UDN4B/
Subject: Re: [Intel-wired-lan] [PATCH RESEND bpf-next 09/15] xdp: Add VLAN
 tag hint
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
> Implement functionality that enables drivers to expose VLAN tag
> to XDP code.
> 
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>

Acked-by: Stanislav Fomichev <sdf@google.com>

> ---
>  Documentation/networking/xdp-rx-metadata.rst | 11 ++++++++-
>  include/linux/netdevice.h                    |  2 ++
>  include/net/xdp.h                            |  4 ++++
>  kernel/bpf/offload.c                         |  4 ++++
>  net/core/xdp.c                               | 24 ++++++++++++++++++++
>  5 files changed, 44 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/networking/xdp-rx-metadata.rst b/Documentation/networking/xdp-rx-metadata.rst
> index 25ce72af81c2..73a78029c596 100644
> --- a/Documentation/networking/xdp-rx-metadata.rst
> +++ b/Documentation/networking/xdp-rx-metadata.rst
> @@ -18,7 +18,16 @@ Currently, the following kfuncs are supported. In the future, as more
>  metadata is supported, this set will grow:
>  
>  .. kernel-doc:: net/core/xdp.c
> -   :identifiers: bpf_xdp_metadata_rx_timestamp bpf_xdp_metadata_rx_hash
> +   :identifiers: bpf_xdp_metadata_rx_timestamp
> +
> +.. kernel-doc:: net/core/xdp.c
> +   :identifiers: bpf_xdp_metadata_rx_hash
> +
> +.. kernel-doc:: net/core/xdp.c
> +   :identifiers: bpf_xdp_metadata_rx_ctag
> +
> +.. kernel-doc:: net/core/xdp.c
> +   :identifiers: bpf_xdp_metadata_rx_stag
>  
>  An XDP program can use these kfuncs to read the metadata into stack
>  variables for its own consumption. Or, to pass the metadata on to other
> diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
> index 08fbd4622ccf..fdae37fe11f5 100644
> --- a/include/linux/netdevice.h
> +++ b/include/linux/netdevice.h
> @@ -1655,6 +1655,8 @@ struct xdp_metadata_ops {
>  	int	(*xmo_rx_timestamp)(const struct xdp_md *ctx, u64 *timestamp);
>  	int	(*xmo_rx_hash)(const struct xdp_md *ctx, u32 *hash,
>  			       enum xdp_rss_hash_type *rss_type);
> +	int	(*xmo_rx_ctag)(const struct xdp_md *ctx, u16 *vlan_tag);
> +	int	(*xmo_rx_stag)(const struct xdp_md *ctx, u16 *vlan_tag);
>  };
>  
>  /**
> diff --git a/include/net/xdp.h b/include/net/xdp.h
> index 6381560efae2..2db7439fc60f 100644
> --- a/include/net/xdp.h
> +++ b/include/net/xdp.h
> @@ -389,6 +389,10 @@ void xdp_attachment_setup(struct xdp_attachment_info *info,
>  			   bpf_xdp_metadata_rx_timestamp) \
>  	XDP_METADATA_KFUNC(XDP_METADATA_KFUNC_RX_HASH, \
>  			   bpf_xdp_metadata_rx_hash) \
> +	XDP_METADATA_KFUNC(XDP_METADATA_KFUNC_RX_CTAG, \
> +			   bpf_xdp_metadata_rx_ctag) \
> +	XDP_METADATA_KFUNC(XDP_METADATA_KFUNC_RX_STAG, \
> +			   bpf_xdp_metadata_rx_stag) \
>  
>  enum {
>  #define XDP_METADATA_KFUNC(name, _) name,
> diff --git a/kernel/bpf/offload.c b/kernel/bpf/offload.c
> index d9c9f45e3529..2c6b6e82cfac 100644
> --- a/kernel/bpf/offload.c
> +++ b/kernel/bpf/offload.c
> @@ -848,6 +848,10 @@ void *bpf_dev_bound_resolve_kfunc(struct bpf_prog *prog, u32 func_id)
>  		p = ops->xmo_rx_timestamp;
>  	else if (func_id == bpf_xdp_metadata_kfunc_id(XDP_METADATA_KFUNC_RX_HASH))
>  		p = ops->xmo_rx_hash;
> +	else if (func_id == bpf_xdp_metadata_kfunc_id(XDP_METADATA_KFUNC_RX_CTAG))
> +		p = ops->xmo_rx_ctag;
> +	else if (func_id == bpf_xdp_metadata_kfunc_id(XDP_METADATA_KFUNC_RX_STAG))
> +		p = ops->xmo_rx_stag;
>  out:
>  	up_read(&bpf_devs_lock);
>  
> diff --git a/net/core/xdp.c b/net/core/xdp.c
> index 41e5ca8643ec..eff21501609f 100644
> --- a/net/core/xdp.c
> +++ b/net/core/xdp.c
> @@ -738,6 +738,30 @@ __bpf_kfunc int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx, u32 *hash,
>  	return -EOPNOTSUPP;
>  }
>  
> +/**
> + * bpf_xdp_metadata_rx_ctag - Read XDP packet inner vlan tag.
> + * @ctx: XDP context pointer.
> + * @vlan_tag: Return value pointer.
> + *
> + * Returns 0 on success or ``-errno`` on error.
> + */
> +__bpf_kfunc int bpf_xdp_metadata_rx_ctag(const struct xdp_md *ctx, u16 *vlan_tag)
> +{
> +	return -EOPNOTSUPP;
> +}
> +
> +/**
> + * bpf_xdp_metadata_rx_stag - Read XDP packet outer vlan tag.
> + * @ctx: XDP context pointer.
> + * @vlan_tag: Return value pointer.
> + *
> + * Returns 0 on success or ``-errno`` on error.
> + */
> +__bpf_kfunc int bpf_xdp_metadata_rx_stag(const struct xdp_md *ctx, u16 *vlan_tag)
> +{
> +	return -EOPNOTSUPP;
> +}
> +
>  __diag_pop();
>  
>  BTF_SET8_START(xdp_metadata_kfunc_ids)
> -- 
> 2.35.3
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
