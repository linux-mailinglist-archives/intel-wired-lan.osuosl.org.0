Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FEC7700EF4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 20:37:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ED559404C1;
	Fri, 12 May 2023 18:37:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED559404C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683916676;
	bh=ir1R7xDcipA8S/12XIVGhgPldtmf1j27x+yCL7K1HLk=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=60UH2dftWH8s+hTUuuVx24g3FkSf+KgummKW/GMwbAeuq4AqExkklKQE/1b5VjSaM
	 omQKoVWXV++ymAwQoBVdPn2ntH9MmkD2IUlloiRgzuGQl5RhJlLRaUpCJzC5WhZUlQ
	 4yHZ2ZvEPz2P1xz0EXDYPvLZMGo7XLnmCGKKyI7ZbzWcTLFrd3zgZABYxz+21dTVgz
	 vd17oRbdNVhClnnrm6r6/Dw0HSJWL7KmsvNDkoKJooxnAMiigJ0Z79jiqmdvJxt+0L
	 Eft3Fcgf2blz0+rCag0YHG0loGIxfP1S5Qp8lfHRkkqDDuyIeU6r1xTHsK9SLYQ3r5
	 bCX8tOC1GrIHg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VLLWiGU-slI0; Fri, 12 May 2023 18:37:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B522640475;
	Fri, 12 May 2023 18:37:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B522640475
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2252B1BF836
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 18:37:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E4EC640475
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 18:37:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E4EC640475
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sIfT0i6EO6G5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 18:37:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0CCC7403BF
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com
 [IPv6:2607:f8b0:4864:20::b4a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0CCC7403BF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 18:37:48 +0000 (UTC)
Received: by mail-yb1-xb4a.google.com with SMTP id
 3f1490d57ef6-b9e2b65f2eeso18464355276.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 11:37:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683916668; x=1686508668;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=zboVOwqqV2t+sWom/4kttINSyimT2o2UbgCRgWVc8fA=;
 b=IYo8iSpWymHyV0xVVEoUJw+2J6jZ0fbkU7e81thP/kL9I3AGuhSpFRM+MbyyLIvJVu
 9elbhaWwCXBG694OGLR42lF3ovbsSj0um2oBgAdiAnM86Pf9pZpTjiIswkR0AFwp8OC6
 5tlpSn88XkhahQYL/v24xoxOyCq8ChnydY85Yd9Xx2wIAm4lCHCyfnoJp7c7wYRRa7va
 4ArGbsyou8t+k7eNSfN3DPMnfltzheH6vnp92yBxhw6YYJ7afnFTCifIwnFji+QWX+wc
 Jm54wHZRmt1Y2Nr5vzr3VQntH3XEZJXFAMw7Zgz7zWdqExxC+xo1e1oclv6Ja7nycN+O
 P/PQ==
X-Gm-Message-State: AC+VfDxzGSx8ovxGUGwLuQ4ItNQ0eU7NxDE4cXUYhTMFjikK8ba3MeOc
 DiSuEH7BdnvYyS8aMj/ShUm+Jsc=
X-Google-Smtp-Source: ACHHUZ7USl24Sz0lNjT4gOgSLfYQu6o9kzkQudxt7lv7JTr+L0u0cffl5efd7Q5Gwf/cp+vIHzQhdJ4=
X-Received: from sdf.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:5935])
 (user=sdf job=sendgmr) by 2002:a25:545:0:b0:b99:4473:ed93 with SMTP id
 66-20020a250545000000b00b994473ed93mr11326655ybf.4.1683916667981; Fri, 12 May
 2023 11:37:47 -0700 (PDT)
Date: Fri, 12 May 2023 11:37:46 -0700
In-Reply-To: <20230512152607.992209-16-larysa.zaremba@intel.com>
Mime-Version: 1.0
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
 <20230512152607.992209-16-larysa.zaremba@intel.com>
Message-ID: <ZF6HehIpD67kkldx@google.com>
From: Stanislav Fomichev <sdf@google.com>
To: Larysa Zaremba <larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1683916668; x=1686508668;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=zboVOwqqV2t+sWom/4kttINSyimT2o2UbgCRgWVc8fA=;
 b=fblFRNo8UQl44zBJrRLzXecFe1I+pMjTOLDVKmvVGTWEmqhmhmHjsF65sGuIcN8KGo
 5aicg+lg/yO6VoujBtMcq9FBX6286ctSUAuJYD/aRQeHfUvaOoWMF1mF8jlNV3BA+Qu7
 x6MEddujT5hloeJyBRL7jFkaOcM4Ezx82bqFmBHNjID0qc59h+M0n0vogkO06Vs41V6J
 ky7JyPkksC0Wjy5jdPDmdqqXlVW2U00tK6yLLQEFc1IcTxh4lVHVt4k5pfjbDA+/KTCl
 xHLt64efrqmvdHsYyFwWUu9ctUzwNU/IBeXgIGnCN3Kn1ctzE48+4D27ZR8mgjpH3myC
 FffQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20221208 header.b=fblFRNo8
Subject: Re: [Intel-wired-lan] [PATCH RESEND bpf-next 15/15] selftests/bpf:
 Add flags and new hints to xdp_hw_metadata
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
> Add hints added in the previous patches (VLAN tags and checksum level)
> to the xdp_hw_metadata program.
> 
> Also, to make metadata layout more straightforward, add flags field
> to pass information about validity of every separate hint separately.
> 
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>

Acked-by: Stanislav Fomichev <sdf@google.com>

> ---
>  .../selftests/bpf/progs/xdp_hw_metadata.c     | 40 ++++++++++++++++---
>  tools/testing/selftests/bpf/xdp_hw_metadata.c | 29 +++++++++++---
>  tools/testing/selftests/bpf/xdp_metadata.h    | 28 ++++++++++++-
>  3 files changed, 85 insertions(+), 12 deletions(-)
> 
> diff --git a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
> index f95f82a8b449..97bad79ce4ca 100644
> --- a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
> +++ b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
> @@ -20,6 +20,12 @@ extern int bpf_xdp_metadata_rx_timestamp(const struct xdp_md *ctx,
>  					 __u64 *timestamp) __ksym;
>  extern int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx, __u32 *hash,
>  				    enum xdp_rss_hash_type *rss_type) __ksym;
> +extern int bpf_xdp_metadata_rx_ctag(const struct xdp_md *ctx,
> +				    __u16 *vlan_tag) __ksym;
> +extern int bpf_xdp_metadata_rx_stag(const struct xdp_md *ctx,
> +				    __u16 *vlan_tag) __ksym;
> +extern int bpf_xdp_metadata_rx_csum_lvl(const struct xdp_md *ctx,
> +					__u8 *csum_level) __ksym;
>  
>  SEC("xdp")
>  int rx(struct xdp_md *ctx)
> @@ -83,15 +89,39 @@ int rx(struct xdp_md *ctx)
>  		return XDP_PASS;
>  	}
>  
> +	meta->hint_valid = 0;
> +
>  	err = bpf_xdp_metadata_rx_timestamp(ctx, &meta->rx_timestamp);
> -	if (!err)
> +	if (err) {
> +		meta->rx_timestamp_err = err;
> +	} else {
> +		meta->hint_valid |= XDP_META_FIELD_TS;
>  		meta->xdp_timestamp = bpf_ktime_get_tai_ns();
> -	else
> -		meta->rx_timestamp = 0; /* Used by AF_XDP as not avail signal */
> +	}
>  
>  	err = bpf_xdp_metadata_rx_hash(ctx, &meta->rx_hash, &meta->rx_hash_type);
> -	if (err < 0)
> -		meta->rx_hash_err = err; /* Used by AF_XDP as no hash signal */
> +	if (err)
> +		meta->rx_hash_err = err;
> +	else
> +		meta->hint_valid |= XDP_META_FIELD_RSS;
> +
> +	err = bpf_xdp_metadata_rx_ctag(ctx, &meta->rx_ctag);
> +	if (err)
> +		meta->rx_ctag_err = err;
> +	else
> +		meta->hint_valid |= XDP_META_FIELD_CTAG;
> +
> +	err = bpf_xdp_metadata_rx_stag(ctx, &meta->rx_stag);
> +	if (err)
> +		meta->rx_stag_err = err;
> +	else
> +		meta->hint_valid |= XDP_META_FIELD_STAG;
> +
> +	err = bpf_xdp_metadata_rx_csum_lvl(ctx, &meta->rx_csum_lvl);
> +	if (err)
> +		meta->rx_csum_err = err;
> +	else
> +		meta->hint_valid |= XDP_META_FIELD_CSUM_LVL;
>  
>  	__sync_add_and_fetch(&pkts_redir, 1);
>  	return bpf_redirect_map(&xsk, ctx->rx_queue_index, XDP_PASS);
> diff --git a/tools/testing/selftests/bpf/xdp_hw_metadata.c b/tools/testing/selftests/bpf/xdp_hw_metadata.c
> index 613321eb84c1..efcabe68f64b 100644
> --- a/tools/testing/selftests/bpf/xdp_hw_metadata.c
> +++ b/tools/testing/selftests/bpf/xdp_hw_metadata.c
> @@ -156,15 +156,16 @@ static void verify_xdp_metadata(void *data, clockid_t clock_id)
>  
>  	meta = data - sizeof(*meta);
>  
> -	if (meta->rx_hash_err < 0)
> -		printf("No rx_hash err=%d\n", meta->rx_hash_err);
> -	else
> +	if (meta->hint_valid & XDP_META_FIELD_RSS)
>  		printf("rx_hash: 0x%X with RSS type:0x%X\n",
>  		       meta->rx_hash, meta->rx_hash_type);
> +	else
> +		printf("No rx_hash, err=%d\n", meta->rx_hash_err);
> +
> +	if (meta->hint_valid & XDP_META_FIELD_TS) {
> +		printf("rx_timestamp:  %llu (sec:%0.4f)\n", meta->rx_timestamp,
> +		       (double)meta->rx_timestamp / NANOSEC_PER_SEC);
>  
> -	printf("rx_timestamp:  %llu (sec:%0.4f)\n", meta->rx_timestamp,
> -	       (double)meta->rx_timestamp / NANOSEC_PER_SEC);
> -	if (meta->rx_timestamp) {
>  		__u64 usr_clock = gettime(clock_id);
>  		__u64 xdp_clock = meta->xdp_timestamp;
>  		__s64 delta_X = xdp_clock - meta->rx_timestamp;
> @@ -179,8 +180,24 @@ static void verify_xdp_metadata(void *data, clockid_t clock_id)
>  		       usr_clock, (double)usr_clock / NANOSEC_PER_SEC,
>  		       (double)delta_X2U / NANOSEC_PER_SEC,
>  		       (double)delta_X2U / 1000);
> +	} else {
> +		printf("No rx_timestamp, err=%d\n", meta->rx_timestamp_err);
>  	}
>  
> +	if (meta->hint_valid & XDP_META_FIELD_CTAG)
> +		printf("rx_ctag: %u\n", meta->rx_ctag);
> +	else
> +		printf("No rx_ctag, err=%d\n", meta->rx_ctag_err);
> +
> +	if (meta->hint_valid & XDP_META_FIELD_STAG)
> +		printf("rx_stag: %u\n", meta->rx_stag);
> +	else
> +		printf("No rx_stag, err=%d\n", meta->rx_stag_err);
> +
> +	if (meta->hint_valid & XDP_META_FIELD_CSUM_LVL)
> +		printf("Checksum was checked at level %u\n", meta->rx_csum_lvl);
> +	else
> +		printf("Checksum was not checked, err=%d\n", meta->rx_csum_err);
>  }
>  
>  static void verify_skb_metadata(int fd)
> diff --git a/tools/testing/selftests/bpf/xdp_metadata.h b/tools/testing/selftests/bpf/xdp_metadata.h
> index 6664893c2c77..7c0267a8918a 100644
> --- a/tools/testing/selftests/bpf/xdp_metadata.h
> +++ b/tools/testing/selftests/bpf/xdp_metadata.h
> @@ -17,12 +17,38 @@
>  #define ETH_P_8021AD 0x88A8
>  #endif
>  
> +#define BIT(nr)			(1 << (nr))
> +
> +enum xdp_meta_field {
> +	XDP_META_FIELD_TS	= BIT(0),
> +	XDP_META_FIELD_RSS	= BIT(1),
> +	XDP_META_FIELD_CTAG	= BIT(2),
> +	XDP_META_FIELD_STAG	= BIT(3),
> +	XDP_META_FIELD_CSUM_LVL	= BIT(4),
> +};
> +
>  struct xdp_meta {
> -	__u64 rx_timestamp;
> +	union {
> +		__u64 rx_timestamp;
> +		__s32 rx_timestamp_err;
> +	};
>  	__u64 xdp_timestamp;
>  	__u32 rx_hash;
>  	union {
>  		__u32 rx_hash_type;
>  		__s32 rx_hash_err;
>  	};
> +	union {
> +		__u16 rx_ctag;
> +		__s32 rx_ctag_err;
> +	};
> +	union {
> +		__u16 rx_stag;
> +		__s32 rx_stag_err;
> +	};
> +	union {
> +		__u8 rx_csum_lvl;
> +		__s32 rx_csum_err;
> +	};
> +	enum xdp_meta_field hint_valid;
>  };
> -- 
> 2.35.3
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
