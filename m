Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC7DB92058
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Sep 2025 17:43:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CEE461606;
	Mon, 22 Sep 2025 15:43:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h3aGMoH-eDuH; Mon, 22 Sep 2025 15:43:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D8CF5616AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758555815;
	bh=v3V9jfcj4c/C9kF8Vt1ZcO3ulHKzrInrkcLPZRC1Na4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TIAcdBmDXUizHVkqQURYg+WFj6c2Eqczwnpv267oiKhVJseuZ9eHaIRKEOghQCqbA
	 GnNryFGpHIlETkxqN5aTkBCV3L+wbn6L1oA4lpJcB0kRw96Hc9u1HW7JxeLwcaWqhN
	 p/3w6Q8Bv9vtYiyzdfOCOzPXztvqM5KRvRoC6vD9IE1AueomfGI7QiEiK9UhlF9Xz7
	 zxbq3jnERsiHcO5KtFtwA9okAS6PtCWBORxLHB8McAiblAtyly1s/eeU8RH9luEgW8
	 V5+lC42gIbjw5aSv7lYldK6gmoK9WAbURgZ+N0TZhCrrzP7av8XLerTgInC1myskfn
	 J3JZB8J9BQq3Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D8CF5616AB;
	Mon, 22 Sep 2025 15:43:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 97294116C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Sep 2025 15:43:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 944AC614F0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Sep 2025 15:43:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6UkJCez17bp5 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Sep 2025 15:43:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::429; helo=mail-pf1-x429.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EE86361099
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE86361099
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com
 [IPv6:2607:f8b0:4864:20::429])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EE86361099
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Sep 2025 15:43:33 +0000 (UTC)
Received: by mail-pf1-x429.google.com with SMTP id
 d2e1a72fcca58-77d94c6562fso4461160b3a.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Sep 2025 08:43:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758555813; x=1759160613;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=v3V9jfcj4c/C9kF8Vt1ZcO3ulHKzrInrkcLPZRC1Na4=;
 b=i3AAZdZgjdYuXvCwyWifXNaon2/F5xIYE8U0klI2otuvZkIwSNly6ESya5PcXSVTCd
 ayY5+l7xjXUN7mflvoXJjyj+owOMLbmGzmx8Fp3/2FW6zSNqMJW9LKzDmlfICKQt26wp
 r7UyZpD4C/cJHcyk1QbCu9EHcn79CEPebR9elkCDrboS84rMaW0USu6ZeXEJMHGtdFYD
 5LS/fXvrQHGepxFvrQ0BIh7NQ0CyBghl54OIoIg31xjkAo/BRB1fc+cftDWkozd/dknO
 tlSLQlBYNXJdLpNEpve7fqW3QzF9G/prleNuFCja+FpM4JAgBK0NySd4Z8b6PqStcQoH
 Prjw==
X-Forwarded-Encrypted: i=1;
 AJvYcCV8xmYQwwTGfQGuWyFm7BALxryPg2J+GrXTnupTaPvp4BBC5yzrCsWXpDssqMGeUcbLD2UtuYWFAjHxPTu07CA=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yxk3N/Z7TahI3qFsJ++XKF7KxOA+BGrIXzYKCsKKAeR+BstgtHk
 6xC73td6TziR6gUVvMhJsV3yL9AQV5M+1cEBZOBzrk6Lm1PGXPC0GEE=
X-Gm-Gg: ASbGnctQQGwe77Z/idK/wrte10YL9C5UA5+2O6TOFOxVdAAPUQ93k6FSpQLJtwH2ipX
 QCZ9p3Q3ocr2QXXrV44xwDDdQG13UTJiRGnGcc+GjyrcyOWNbRDIb/N/wVOcJUXFGSPdsfnTHyE
 gz1/z/6iznzrMl8FyAL8gCrGei7ZwOVfVQw2CuLvoIa7WUImh4Kzljn3BJa7TfGyiYfC36PZJo9
 KImom04ntcmk5Aqv5xgx8u/DS4zpf9rrrLiJ3eD1q85ZF6oggH6TkMBtKULoKvrimARuGbRShgy
 x4vr+ks5eDqQDUmYea6VqV/UdmfDPJs6hwydnLRt1Prgo8z7wtMI8YHuGB4CmWyWTNJbbO6ZDVS
 c/jAZ0JDNdUuESdFmYPrjMJilNDGmHndmx7AuOM5K0C+U/KlsEH54lew+LiIutq1HXIV5PMGcFY
 uH4QCyJLu71u7IajeQN2KE9RvWExElL11NBveS0BM7X31FD2JE+nEoGU9aM/yW8xo80g2B5rVBJ
 bsn
X-Google-Smtp-Source: AGHT+IETBbukUvkAuvQVb1Skx6MlL0Qne0xJdc/u3lmyMRgaNlL6QuTtewx92TllrETSMx2zMBvRAA==
X-Received: by 2002:a05:6a20:7d8a:b0:251:c33d:2783 with SMTP id
 adf61e73a8af0-2925bace118mr16480567637.23.1758555813010; 
 Mon, 22 Sep 2025 08:43:33 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 98e67ed59e1d1-330607eac4esm13558095a91.21.2025.09.22.08.43.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Sep 2025 08:43:32 -0700 (PDT)
Date: Mon, 22 Sep 2025 08:43:32 -0700
From: Stanislav Fomichev <stfomichev@gmail.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Cc: Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Andrii Nakryiko <andrii@kernel.org>,
 Martin KaFai Lau <martin.lau@linux.dev>,
 Eduard Zingerman <eddyz87@gmail.com>, Song Liu <song@kernel.org>,
 Yonghong Song <yonghong.song@linux.dev>,
 KP Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>,
 Jiri Olsa <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>,
 netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org
Message-ID: <aNFupGy1QxlhRSUE@mini-arch>
References: <20250920-xdp-meta-rxcksum-v1-0-35e76a8a84e7@kernel.org>
 <20250920-xdp-meta-rxcksum-v1-2-35e76a8a84e7@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250920-xdp-meta-rxcksum-v1-2-35e76a8a84e7@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1758555813; x=1759160613; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=v3V9jfcj4c/C9kF8Vt1ZcO3ulHKzrInrkcLPZRC1Na4=;
 b=i5Rkk8GuSaHj6ybZtKY93GZk259tuPm3YDmJvrxxPk3hixJNg0E6NITVBLIEN5MrgR
 6+ZGZeHPxfYAAbGQrSDCDDgz1AvP1jG/zUwSfg8RFCGZ7VmHXXAKokfP/pLGGa6eq0LP
 pQXWyEak3jaRCWHl2bbtMxEivXDuUFrizwY33D1vDujKW37M5ecgDP6tNEB5G8goMiKl
 Wc06GUjeOBOjmxUHTNhHxE+/x64hq+A/NBUKOAwUqNpIBdCAEAMa0zfIgcyyhO5wdcsR
 8RLSdJJfAS90TeHLlIiacz53AdY2Y2SJGBlcTrLjou2Xpsl8iWr9Fz3GVp1OeycGHLiA
 0BIw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=i5Rkk8Gu
Subject: Re: [Intel-wired-lan] [PATCH RFC bpf-next 2/6] net: xdp: Add
 xmo_rx_checksum callback
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

On 09/20, Lorenzo Bianconi wrote:
> Introduce xmo_rx_checksum netdev callback in order allow the eBPF
> program bounded to the device to retrieve the RX checksum result computed
> by the hw NIC.
> 
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
>  include/net/xdp.h |  6 ++++++
>  net/core/xdp.c    | 29 +++++++++++++++++++++++++++++
>  2 files changed, 35 insertions(+)
> 
> diff --git a/include/net/xdp.h b/include/net/xdp.h
> index 6fd294fa6841d59c3d7dc4475e09e731996566b0..481b39976ac8c8d4db2de39055c72ba8d0d511c3 100644
> --- a/include/net/xdp.h
> +++ b/include/net/xdp.h
> @@ -581,6 +581,10 @@ void xdp_attachment_setup(struct xdp_attachment_info *info,
>  			   NETDEV_XDP_RX_METADATA_VLAN_TAG, \
>  			   bpf_xdp_metadata_rx_vlan_tag, \
>  			   xmo_rx_vlan_tag) \
> +	XDP_METADATA_KFUNC(XDP_METADATA_KFUNC_RX_CHECKSUM, \
> +			   NETDEV_XDP_RX_METADATA_CHECKSUM, \
> +			   bpf_xdp_metadata_rx_checksum, \
> +			   xmo_rx_checksum)
>  
>  enum xdp_rx_metadata {
>  #define XDP_METADATA_KFUNC(name, _, __, ___) name,
> @@ -644,6 +648,8 @@ struct xdp_metadata_ops {
>  			       enum xdp_rss_hash_type *rss_type);
>  	int	(*xmo_rx_vlan_tag)(const struct xdp_md *ctx, __be16 *vlan_proto,
>  				   u16 *vlan_tci);
> +	int	(*xmo_rx_checksum)(const struct xdp_md *ctx, u8 *ip_summed,
> +				   u32 *cksum_meta);
>  };
>  
>  #ifdef CONFIG_NET
> diff --git a/net/core/xdp.c b/net/core/xdp.c
> index 9100e160113a9a1e2cb88e7602e85c5f36a9f3b9..3edab2d5e5c7c2013b1ef98c949a83655eb94349 100644
> --- a/net/core/xdp.c
> +++ b/net/core/xdp.c
> @@ -961,6 +961,35 @@ __bpf_kfunc int bpf_xdp_metadata_rx_vlan_tag(const struct xdp_md *ctx,
>  	return -EOPNOTSUPP;
>  }
>  
> +/**
> + * bpf_xdp_metadata_rx_checksum - Read XDP frame RX checksum.
> + * @ctx: XDP context pointer.
> + * @ip_summed: Return value pointer indicating checksum result.
> + * @cksum_meta: Return value pointer indicating checksum result metadata.
> + *
> + * In case of success, ``ip_summed`` is set to the RX checksum result. Possible
> + * values are:
> + * ``CHECKSUM_NONE``
> + * ``CHECKSUM_UNNECESSARY``
> + * ``CHECKSUM_COMPLETE``
> + * ``CHECKSUM_PARTIAL``

What do you think about adding new UAPI enum here? Similar to
xdp_rss_hash_type for the hash. The values can match the internal
CHECKSUM_XXX ones with (BUILD_BUG_ONs to enforce the relationship).
Will be a bit nicer api-wise to have an enum than an opaque u8.
