Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 597B3700EE4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 20:33:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E6B78417A0;
	Fri, 12 May 2023 18:33:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E6B78417A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683916424;
	bh=tou+ZzRtlcOxH44Jgn2liuV2JA4s7bJRDoQImBVX6bQ=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WXP/SE8td1rF1h+CSBfIUYQZHSOc1BseSyQxXpxrQqyVFf9VDe/ocFwScjWqORqw1
	 /zrYv9f9iWdKc0CMhRKcJdnwESeSbp4S6VN3YvyHy0IpPWTRM/ys23Vc07S4fgd7zs
	 0IThtuz/t6ZcrNrEx60zHv39WPW0JOuTk3qS9QZUaGisAhNX+kzU6vVJkUlzvrZLr1
	 SSOR6omHhzxcpsJQH8bVSps7e+spOaVXx66Us6ApQJQABdJ4D2CgSkep6415FWI4qU
	 OoVWMPQ6uWFezKWfPlAtFIli8RNW/DxQmpaKHUIEY5io/zsl1HrfflfBvJGvJrFyIs
	 rEwYuc/fep63w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pctnBaird8rd; Fri, 12 May 2023 18:33:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D1A6640525;
	Fri, 12 May 2023 18:33:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D1A6640525
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 89A1C1BF836
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 18:33:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6160460BFF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 18:33:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6160460BFF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rGly8dkOQW65 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 18:33:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 763E760AEE
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com
 [IPv6:2607:f8b0:4864:20::449])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 763E760AEE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 18:33:36 +0000 (UTC)
Received: by mail-pf1-x449.google.com with SMTP id
 d2e1a72fcca58-645538f6101so35151598b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 11:33:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683916416; x=1686508416;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=5+exEN8RF1B40fPaxoi0k2T6E5J3rfhVEZNB9EwpzSM=;
 b=Xmv2VvUzlC16MeUi5Cz+WXeZwPEb2uV34Fyh1sxzOxEa4oCQyMUeoKHReNh7FCE1XT
 Q5RERS8OuBDaNzPEmHRDQLJGspTe7BKmbhfvNwc/SnUrPQPtEVCrhCx/Eux76BSEkJlP
 1WY+PN9Hg8VEd4hS0AkpdypGXzPfzhh5WQpJkBwBg9M6VkZXwHG8NzLX8afEwlyHGBir
 nJZpRzOGzNzkusdBlVhgd2ZFFiGCksAe9XFy+3uLIthFPx60zbWA5Yacy4nFzKEyzEEx
 jh7+fkjOW9GYEJeMgo3USxhyHW3ovyUPxanMbKFbfd6tlY4RRcmclWwTA1fPaAWHwdpj
 EDDg==
X-Gm-Message-State: AC+VfDyszhy7GQINB1HyWCo5VSqhoJsMMrt6kaQ9SGsOaQdE1E3j5C6h
 i13xrReTdQXWWaXJP2Km5zsZTM0=
X-Google-Smtp-Source: ACHHUZ6izS/sXksepkikL2WJhUgl6hDj55lJDgbldJSMaJRr8WAp/vT3O0/iHqJ2+q6vfS70QyzAspA=
X-Received: from sdf.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:5935])
 (user=sdf job=sendgmr) by 2002:a17:90b:23c8:b0:250:2099:783 with SMTP id
 md8-20020a17090b23c800b0025020990783mr8403658pjb.2.1683916415913; Fri, 12 May
 2023 11:33:35 -0700 (PDT)
Date: Fri, 12 May 2023 11:33:34 -0700
In-Reply-To: <20230512152607.992209-14-larysa.zaremba@intel.com>
Mime-Version: 1.0
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
 <20230512152607.992209-14-larysa.zaremba@intel.com>
Message-ID: <ZF6GfoZVgKX78bpq@google.com>
From: Stanislav Fomichev <sdf@google.com>
To: Larysa Zaremba <larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1683916416; x=1686508416;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=5+exEN8RF1B40fPaxoi0k2T6E5J3rfhVEZNB9EwpzSM=;
 b=2ytWwJWpT3Nf+cnrsDcHH5KcIuij7GP+ouRdzIMCILh4WRZNrgSQNN19FSJ6vu+wm/
 g0+G/4bQvlOFdtBGD5dHnfuOdk5TdxYByrmDF/2aFlZR2UBLds/mJtqx7rVI/xdWNV8a
 A1sQZ3OALNJkgExEqH3hNisJlOeCU6VF+0abfQro0LL+7l/tUtTnsvTbjzSn/CFfEHbY
 JftijlPqjlutp/AJ42j6ITeno9LWWA0lSoxJy/tp7dLa+Ew/jHMGV8EWdRRN483nrDsw
 9YTIf9wrfY8U9jS72O3GInOWIoyv2ASsoGVZklk/M7us4MtfGa8fvueuzWf/66l5Ffps
 ZvDQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20221208 header.b=2ytWwJWp
Subject: Re: [Intel-wired-lan] [PATCH RESEND bpf-next 13/15] selftests/bpf:
 Allow VLAN packets in xdp_hw_metadata
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
> Make VLAN c-tag and s-tag XDP hint testing more convenient
> by not skipping VLAN-ed packets.
> 
> Allow both 802.1ad and 802.1Q headers.

Can we also extend non-hw test? That should require adding metadata
handlers to veth to extract relevant parts from skb + update ip link
commands to add vlan id. Should be relatively easy to do?

> 
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  tools/testing/selftests/bpf/progs/xdp_hw_metadata.c | 9 ++++++++-
>  tools/testing/selftests/bpf/xdp_metadata.h          | 8 ++++++++
>  2 files changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
> index b2dfd7066c6e..f95f82a8b449 100644
> --- a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
> +++ b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
> @@ -26,15 +26,22 @@ int rx(struct xdp_md *ctx)
>  {
>  	void *data, *data_meta, *data_end;
>  	struct ipv6hdr *ip6h = NULL;
> -	struct ethhdr *eth = NULL;
>  	struct udphdr *udp = NULL;
>  	struct iphdr *iph = NULL;
>  	struct xdp_meta *meta;
> +	struct ethhdr *eth;
>  	int err;
>  
>  	data = (void *)(long)ctx->data;
>  	data_end = (void *)(long)ctx->data_end;
>  	eth = data;
> +
> +	if (eth + 1 < data_end && eth->h_proto == bpf_htons(ETH_P_8021AD))
> +		eth = (void *)eth + sizeof(struct vlan_hdr);
> +
> +	if (eth + 1 < data_end && eth->h_proto == bpf_htons(ETH_P_8021Q))
> +		eth = (void *)eth + sizeof(struct vlan_hdr);
> +
>  	if (eth + 1 < data_end) {
>  		if (eth->h_proto == bpf_htons(ETH_P_IP)) {
>  			iph = (void *)(eth + 1);
> diff --git a/tools/testing/selftests/bpf/xdp_metadata.h b/tools/testing/selftests/bpf/xdp_metadata.h
> index 938a729bd307..6664893c2c77 100644
> --- a/tools/testing/selftests/bpf/xdp_metadata.h
> +++ b/tools/testing/selftests/bpf/xdp_metadata.h
> @@ -9,6 +9,14 @@
>  #define ETH_P_IPV6 0x86DD
>  #endif
>  
> +#ifndef ETH_P_8021Q
> +#define ETH_P_8021Q 0x8100
> +#endif
> +
> +#ifndef ETH_P_8021AD
> +#define ETH_P_8021AD 0x88A8
> +#endif
> +
>  struct xdp_meta {
>  	__u64 rx_timestamp;
>  	__u64 xdp_timestamp;
> -- 
> 2.35.3
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
