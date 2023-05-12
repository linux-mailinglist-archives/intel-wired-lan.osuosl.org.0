Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B94700EE8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 20:34:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1C75342DD6;
	Fri, 12 May 2023 18:34:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1C75342DD6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683916472;
	bh=WboB8t1Xb0pLfQ9QF+H2+bOuqQfIyae1tTL6RhChoSs=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7uGWiUsmIJvkSogVbtEbMTqveiRKzRGXVJaI7/7Od1ZdTb/6X+mC9gZikRl3Lz+Ce
	 jJFy0DR3QT6AvWPkHtepaA9JT/SsFk3LichwclNhMIxQhVCclinKcjhCoJOj6UV451
	 vcyVEHbKx5+GpSF5K2lVYUL7FEtjFvkxJJCmvMV3bxzHGCds9q4zjj8NFSHJbRtJSY
	 9KQAIFXiu/Ixert+hELyHd19R4iLiQkkNNiAgq5fALlelQACXdl/aYwQwwKj7nrMzp
	 O10slnNia51oH55qLp1oMR2uvJzfgcMfGO2IrCnwKNcK3mDFLWUUoJR/hXe/fycJ2b
	 srnvVd3MIcnCw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xplah0Ra1NdQ; Fri, 12 May 2023 18:34:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DC92440475;
	Fri, 12 May 2023 18:34:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DC92440475
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5DB101BF836
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 18:34:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 30D284289F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 18:34:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 30D284289F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SuycYcdXXmcd for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 18:34:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1667C4289E
Received: from mail-yw1-x1149.google.com (mail-yw1-x1149.google.com
 [IPv6:2607:f8b0:4864:20::1149])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1667C4289E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 18:34:23 +0000 (UTC)
Received: by mail-yw1-x1149.google.com with SMTP id
 00721157ae682-55d9a9d19c9so149524607b3.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 11:34:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683916463; x=1686508463;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ksHSwdf3LwcwVL3OE9a2eYWhGDTEko4fWy0aHJsHDCU=;
 b=ZeSHp+RnzwkdxyMVE8DIofke7/hBk2dO9h1QQA9Jh5zUhrdyTFGHYXXM6S/LKRl1tS
 Ss1NDPkm55k6pWZ8ax2a7HohbI8MrbCOMKCWmo2wW1kIYrQ3ssKg79V/BdHJJxuRzQg7
 W4Zl1yBnrzMStH6lTm7CohmcHGyi2FXWDs1IED4tlI5jQCClhT2qqiYaXg9ESwCVPANW
 FbHyKDOk04sEuwPCUcHBUOMu+iLPn95hxAe6LFebS2CtZBPr+Vt9d2EJ1fVokuq8oPq5
 Cz2nFp7w4qm8+ccXTDsJNzIhA8Ricd3PAqzDv2L8aeF+ackHYVuVTD+JFWZaVaQylJj1
 boVw==
X-Gm-Message-State: AC+VfDwT0Cpz25vfVYgATu01VpRrhFsEORg2Ev0aO2PHkZ7EnCHd/vwJ
 VClZ6xtoVRcmcwxx9psA0sbP3sg=
X-Google-Smtp-Source: ACHHUZ6Sw+JVn0ptcM72e1Wp1MOw6FgFKWFiZmnTwGnuLBFu/ZagRmDQMzwhOzRPdysj3HzHBs+xUH8=
X-Received: from sdf.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:5935])
 (user=sdf job=sendgmr) by 2002:a81:ac05:0:b0:561:2078:c4cd with SMTP id
 k5-20020a81ac05000000b005612078c4cdmr1405616ywh.2.1683916462870; Fri, 12 May
 2023 11:34:22 -0700 (PDT)
Date: Fri, 12 May 2023 11:34:21 -0700
In-Reply-To: <20230512152607.992209-12-larysa.zaremba@intel.com>
Mime-Version: 1.0
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
 <20230512152607.992209-12-larysa.zaremba@intel.com>
Message-ID: <ZF6GrXsA8L0THVFB@google.com>
From: Stanislav Fomichev <sdf@google.com>
To: Larysa Zaremba <larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1683916463; x=1686508463;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=ksHSwdf3LwcwVL3OE9a2eYWhGDTEko4fWy0aHJsHDCU=;
 b=1qXhzjtoALC7LbPCjmNHDKpuDvTISdkcKIC+yZpoPn4HTlYjny8TG6ILSGhADhBXTb
 2SoGAFXyKUGXpGLQzgEynaaCDq25XGTUeg4gsm9RGHc0JGRJeH5tAaubJKfewgpjW3v5
 96XWVae0jmVbKjNcbFpilhqhcjAsTL+aM6qE+oEi7CHNep5VQRAr+QeMxjar7jIH0mzt
 coO8tZUpUzQSmyw50e7qP+CWMWv8iWDAW0qzlPwXzZCJiIEg3ymnkl+Aed6CTIBAoBKC
 XMkZ9kKOZLIchnpHF8BeQIZKB3I/zbMeVaQl7nhSVuQqYq9N+gOl31e3qBnnb1HIyHAQ
 1XaQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20221208 header.b=1qXhzjto
Subject: Re: [Intel-wired-lan] [PATCH RESEND bpf-next 11/15] xdp: Add
 checksum level hint
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
> Implement functionality that enables drivers to expose to XDP code,
> whether checksums was checked and on what level.
> 
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  Documentation/networking/xdp-rx-metadata.rst |  3 +++
>  include/linux/netdevice.h                    |  1 +
>  include/net/xdp.h                            |  2 ++
>  kernel/bpf/offload.c                         |  2 ++
>  net/core/xdp.c                               | 12 ++++++++++++
>  5 files changed, 20 insertions(+)
> 
> diff --git a/Documentation/networking/xdp-rx-metadata.rst b/Documentation/networking/xdp-rx-metadata.rst
> index 73a78029c596..f74f0e283097 100644
> --- a/Documentation/networking/xdp-rx-metadata.rst
> +++ b/Documentation/networking/xdp-rx-metadata.rst
> @@ -29,6 +29,9 @@ metadata is supported, this set will grow:
>  .. kernel-doc:: net/core/xdp.c
>     :identifiers: bpf_xdp_metadata_rx_stag
>  
> +.. kernel-doc:: net/core/xdp.c
> +   :identifiers: bpf_xdp_metadata_rx_csum_lvl
> +
>  An XDP program can use these kfuncs to read the metadata into stack
>  variables for its own consumption. Or, to pass the metadata on to other
>  consumers, an XDP program can store it into the metadata area carried
> diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
> index fdae37fe11f5..ddade3a15366 100644
> --- a/include/linux/netdevice.h
> +++ b/include/linux/netdevice.h
> @@ -1657,6 +1657,7 @@ struct xdp_metadata_ops {
>  			       enum xdp_rss_hash_type *rss_type);
>  	int	(*xmo_rx_ctag)(const struct xdp_md *ctx, u16 *vlan_tag);
>  	int	(*xmo_rx_stag)(const struct xdp_md *ctx, u16 *vlan_tag);
> +	int	(*xmo_rx_csum_lvl)(const struct xdp_md *ctx, u8 *csum_level);
>  };
>  
>  /**
> diff --git a/include/net/xdp.h b/include/net/xdp.h
> index 2db7439fc60f..0fbd25616241 100644
> --- a/include/net/xdp.h
> +++ b/include/net/xdp.h
> @@ -393,6 +393,8 @@ void xdp_attachment_setup(struct xdp_attachment_info *info,
>  			   bpf_xdp_metadata_rx_ctag) \
>  	XDP_METADATA_KFUNC(XDP_METADATA_KFUNC_RX_STAG, \
>  			   bpf_xdp_metadata_rx_stag) \
> +	XDP_METADATA_KFUNC(XDP_METADATA_KFUNC_RX_CSUM_LVL, \
> +			   bpf_xdp_metadata_rx_csum_lvl) \
>  
>  enum {
>  #define XDP_METADATA_KFUNC(name, _) name,
> diff --git a/kernel/bpf/offload.c b/kernel/bpf/offload.c
> index 2c6b6e82cfac..8bd54fb4ac63 100644
> --- a/kernel/bpf/offload.c
> +++ b/kernel/bpf/offload.c
> @@ -852,6 +852,8 @@ void *bpf_dev_bound_resolve_kfunc(struct bpf_prog *prog, u32 func_id)
>  		p = ops->xmo_rx_ctag;
>  	else if (func_id == bpf_xdp_metadata_kfunc_id(XDP_METADATA_KFUNC_RX_STAG))
>  		p = ops->xmo_rx_stag;
> +	else if (func_id == bpf_xdp_metadata_kfunc_id(XDP_METADATA_KFUNC_RX_CSUM_LVL))
> +		p = ops->xmo_rx_csum_lvl;
>  out:
>  	up_read(&bpf_devs_lock);
>  
> diff --git a/net/core/xdp.c b/net/core/xdp.c
> index eff21501609f..7dd45fd62983 100644
> --- a/net/core/xdp.c
> +++ b/net/core/xdp.c
> @@ -762,6 +762,18 @@ __bpf_kfunc int bpf_xdp_metadata_rx_stag(const struct xdp_md *ctx, u16 *vlan_tag
>  	return -EOPNOTSUPP;
>  }
>  
> +/**
> + * bpf_xdp_metadata_rx_csum_lvl - Get depth at which HW has checked the checksum.
> + * @ctx: XDP context pointer.
> + * @csum_level: Return value pointer.

Let's maybe clarify what the level means here? For example, do we start
counting from 0 or 1?

> + *
> + * Returns 0 on success (HW has checked the checksum) or ``-errno`` on error.
> + */
> +__bpf_kfunc int bpf_xdp_metadata_rx_csum_lvl(const struct xdp_md *ctx, u8 *csum_level)
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
