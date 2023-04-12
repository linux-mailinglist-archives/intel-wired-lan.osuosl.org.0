Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1DB6DFBF2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 18:56:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2996541E88;
	Wed, 12 Apr 2023 16:56:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2996541E88
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681318574;
	bh=5+zeOF/+cfTQH3lZWTvje+vupGtaYieVoGwJ8hlQ/14=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=18SJYvyzmY2uyMdZ4RLWoM2jA1Skl5U+ucukKl133qj1gjfkSrZh5cw3K8hSz6gOF
	 aTh1c1yvDEc2goSuG6f1PaJk4imolW5h9p/X+vm4FjFUKIBsOufBHp1lFhOpUtt4a/
	 QUIxvDfnxg90EicWP1A3w22zdZA93r47pnx3n0i7Bzi3/9rNGrZ+kgiGk2Rvi3OUWa
	 C+sP4tfM1zhHNeSIfgRYMpZzigC6+38whS3JuzjkxoXFVi8Jod0G5VgHR+vJgaiZz8
	 TffZ3SMNEPqsZuEBbX9e2LFmJ1sf2txXPnP6fVp83NP/n4RweevHh2ll0plE+76Qmx
	 17V5LZ9hJrGIg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W0w0Evh-vuYv; Wed, 12 Apr 2023 16:56:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C434441E82;
	Wed, 12 Apr 2023 16:56:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C434441E82
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ABC911BF37A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 16:56:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 910E483BCC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 16:56:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 910E483BCC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BqnrrW-vduo6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 16:56:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4AFC83BCB
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com
 [IPv6:2607:f8b0:4864:20::1049])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D4AFC83BCB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 16:56:03 +0000 (UTC)
Received: by mail-pj1-x1049.google.com with SMTP id
 98e67ed59e1d1-246772b2e9cso511347a91.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 09:56:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681318563;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=r5aQP8BO2zo9XrojS0bD6j1oYwbTGaaKe2CEIkMg+Cc=;
 b=E0eIzDAnofNOoVYOifimAKDJyBd5xoaLXDEzGXICxDtXObcDsssROT2tKIKhHYSbJ7
 6MsN5qoWmw/rw6YXB/boZew1OtX8QfDNaxEKzEa56yhO2F7jqOByyeBLg7bFGN2aNCep
 XShOuHHEhHmDeLtQ/xp9iGAWhnfliiIqb66XuSjzjBrokxNQzSZYL1gjiUmGw7pJ2ZsR
 ueuOQkl23XDatrcGx8V/bR53bpQ2U47AJhikkCiBPwfz1OvP3LKIqy6sEs+eivNpiZEG
 i1T1hq5ZcStovTSxAsMCPJM0lZEDf9GLo67cDX8bx2amQnqdvRtacVX8Ks/L1LM0Wz/A
 0cKg==
X-Gm-Message-State: AAQBX9fJTLaiHIqnszMOoIbGqzBDcqplRJTA7ohqsBRxPe9nJKfH/mTK
 uB4GH6HveuA/YtVobH3HMPPj0S0=
X-Google-Smtp-Source: AKy350a13a5HToDhjS1k1UbKJ/IVQbgV0gzzJs4B82pMPsxUQcRF3Po0gAx3EgHJsgANJfb6CfMCn/I=
X-Received: from sdf.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:5935])
 (user=sdf job=sendgmr) by 2002:a05:6a00:2d15:b0:62d:afc6:c152 with SMTP id
 fa21-20020a056a002d1500b0062dafc6c152mr569870pfb.5.1681318563183; Wed, 12 Apr
 2023 09:56:03 -0700 (PDT)
Date: Wed, 12 Apr 2023 09:56:01 -0700
In-Reply-To: <168130336725.150247.12193228778654006957.stgit@firesoul>
Mime-Version: 1.0
References: <168130333143.150247.11159481574477358816.stgit@firesoul>
 <168130336725.150247.12193228778654006957.stgit@firesoul>
Message-ID: <ZDbiofWhQhFEfIsr@google.com>
From: Stanislav Fomichev <sdf@google.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1681318563;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=r5aQP8BO2zo9XrojS0bD6j1oYwbTGaaKe2CEIkMg+Cc=;
 b=oVLoNRJYCUybQHOCGDc1/+VV+Wd3aSZ7iKoewHhOxr1x7l07u7jhjgNxGtvZ+BZiGP
 c0df6kLIh/auurIKDofimLBIjub63gz2i2tflYknIZNj2NnK506IT3EyqDEs7OBDGJOw
 Du1gx6ak04OGqUV5ei38bvHmLTob16K6WNbOzXVmiZCC6zqQc5aP40cItoZfBTFJxJiR
 Oj7oWnxeVM3mdxoWqLd4ZHyFIzGKvXmkUTBFIJzsVjT/MUQkrsa9QNrCYmRFOXRLWd9b
 TEA6YsK/kVrHl8IF0FY22x7gwd2A6zHfKONJF6sMgQaCSt1EUuPHDQUfPHyBBvBBj1Nf
 kzrA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20221208 header.b=oVLoNRJY
Subject: Re: [Intel-wired-lan] [PATCH bpf V8 2/7] selftests/bpf: Add
 counters to xdp_hw_metadata
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
Cc: ast@kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 boon.leong.ong@intel.com, hawk@kernel.org, xdp-hints@xdp-project.net,
 daniel@iogearbox.net, linux-rdma@vger.kernel.org, john.fastabend@gmail.com,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 pabeni@redhat.com, martin.lau@kernel.org, larysa.zaremba@intel.com,
 leon@kernel.org, netdev@vger.kernel.org,
 Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>,
 linux-kernel@vger.kernel.org, tariqt@nvidia.com, yoong.siang.song@intel.com,
 bpf@vger.kernel.org, saeedm@nvidia.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 04/12, Jesper Dangaard Brouer wrote:
> Add counters for skipped, failed and redirected packets.
> The xdp_hw_metadata program only redirects UDP port 9091.
> This helps users to quickly identify then packets are
> skipped and identify failures of bpf_xdp_adjust_meta.
> 
> Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
> ---
>  .../testing/selftests/bpf/progs/xdp_hw_metadata.c  |   15 +++++++++++++--
>  tools/testing/selftests/bpf/xdp_hw_metadata.c      |    4 +++-
>  2 files changed, 16 insertions(+), 3 deletions(-)
> 
> diff --git a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
> index b0104763405a..a07ef7534013 100644
> --- a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
> +++ b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
> @@ -25,6 +25,10 @@ struct {
>  	__type(value, __u32);
>  } xsk SEC(".maps");
>  
> +volatile __u64 pkts_skip = 0;
> +volatile __u64 pkts_fail = 0;
> +volatile __u64 pkts_redir = 0;
> +
>  extern int bpf_xdp_metadata_rx_timestamp(const struct xdp_md *ctx,
>  					 __u64 *timestamp) __ksym;
>  extern int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx,
> @@ -59,16 +63,21 @@ int rx(struct xdp_md *ctx)
>  			udp = NULL;
>  	}
>  
> -	if (!udp)
> +	if (!udp) {
> +		pkts_skip++;
>  		return XDP_PASS;
> +	}
>  
>  	/* Forwarding UDP:9091 to AF_XDP */
> -	if (udp->dest != bpf_htons(9091))
> +	if (udp->dest != bpf_htons(9091)) {
> +		pkts_skip++;
>  		return XDP_PASS;
> +	}
>  
>  	ret = bpf_xdp_adjust_meta(ctx, -(int)sizeof(struct xdp_meta));
>  	if (ret != 0) {

[..]

>  		bpf_printk("bpf_xdp_adjust_meta returned %d", ret);

Maybe let's remove these completely? Merge patch 1 and 2, remove printk,
add counters. We can add more counters in the future if the existing
ones are not enough.. WDYT?

> +		pkts_fail++;
>  		return XDP_PASS;
>  	}
>  
> @@ -78,6 +87,7 @@ int rx(struct xdp_md *ctx)
>  
>  	if (meta + 1 > data) {
>  		bpf_printk("bpf_xdp_adjust_meta doesn't appear to work");
> +		pkts_fail++;
>  		return XDP_PASS;
>  	}
>  
> @@ -91,6 +101,7 @@ int rx(struct xdp_md *ctx)
>  	else
>  		meta->rx_hash = 0; /* Used by AF_XDP as not avail signal */
>  
> +	pkts_redir++;
>  	return bpf_redirect_map(&xsk, ctx->rx_queue_index, XDP_PASS);
>  }
>  
> diff --git a/tools/testing/selftests/bpf/xdp_hw_metadata.c b/tools/testing/selftests/bpf/xdp_hw_metadata.c
> index 1c8acb68b977..3b942ef7297b 100644
> --- a/tools/testing/selftests/bpf/xdp_hw_metadata.c
> +++ b/tools/testing/selftests/bpf/xdp_hw_metadata.c
> @@ -212,7 +212,9 @@ static int verify_metadata(struct xsk *rx_xsk, int rxq, int server_fd)
>  	while (true) {
>  		errno = 0;
>  		ret = poll(fds, rxq + 1, 1000);
> -		printf("poll: %d (%d)\n", ret, errno);
> +		printf("poll: %d (%d) skip=%llu fail=%llu redir=%llu\n",
> +		       ret, errno, bpf_obj->bss->pkts_skip,
> +		       bpf_obj->bss->pkts_fail, bpf_obj->bss->pkts_redir);
>  		if (ret < 0)
>  			break;
>  		if (ret == 0)
> 
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
