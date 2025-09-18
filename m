Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7CEB82660
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Sep 2025 02:41:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5262C61ABD;
	Thu, 18 Sep 2025 00:41:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vom3lCZdA9lQ; Thu, 18 Sep 2025 00:41:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 12A7861AB4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758156114;
	bh=W6Cziz2+nqjj5LQQdWJFppOXFWD/Y7wmO+XYJl4lE8k=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JQTS19uXpeXVl6kA3SP/TSPDY25G2yAzu+cdCc8Dn6l02tt9pFjkUM3KemjM2hIuJ
	 ECHuXcf+j/l0w12SJihMmFirzfUEDioiApm2L+HczQX+wdOtN3/pQZwAZ/vvI+0h9Q
	 rhuyz7CyvWUMmKsWdrB5RDptLEoq7vh4oVzzPHcQysCcJTMzJLPlJYYPJTZqayiYhR
	 YFl/gFDnQJgqLYVYi4M3ylHN2roFPWr9NfaCy1vI4zGPDpxDcLQeBfVKupKt6f7ZST
	 IDTjiVZnsj9q4zBNRysOTzAMrVPRso4l785cHThQ6njwueVBoFmoHGKLYd4LmvrmRt
	 A2ARQ2Sdf7Yeg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 12A7861AB4;
	Thu, 18 Sep 2025 00:41:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 981D1AF1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 00:41:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7E650415FF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 00:41:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0Nv9_WWHFX9y for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Sep 2025 00:41:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org ECDDE414B2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ECDDE414B2
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ECDDE414B2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 00:41:50 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 4055840282;
 Thu, 18 Sep 2025 00:41:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88EECC4CEE7;
 Thu, 18 Sep 2025 00:41:49 +0000 (UTC)
Date: Wed, 17 Sep 2025 17:41:48 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Cc: Andrew Lunn <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org, Donald
 Hunter <donald.hunter@gmail.com>, Carolina Jubran <cjubran@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org
Message-ID: <20250917174148.0c909f92@kernel.org>
In-Reply-To: <20250916191257.13343-2-vadim.fedorenko@linux.dev>
References: <20250916191257.13343-1-vadim.fedorenko@linux.dev>
 <20250916191257.13343-2-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758156110;
 bh=SKSm9QwVf25v16NYpqpomgrgFTSL2lDCp6R788YSyvA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=eGCTo23z7YO+rA5ArYwaSo0h15bg18cZQqLPiT7cmDbu+0H1i0+mFQom1njtbw64P
 fKou2oiV8rjChCTsXuQ/U3NPOFlGKUXpYHJbSk60cpvuT5IKx6adsTCCF+Pb4iVDoa
 mCBaN9Z4k7aIrwoJBrihRM1c1Eug8EuAA2fg+5dY3ueuclkmOyH83clLoqU2LP30Ii
 y+ul7ckvE+kNsbhV5jYV8bZSnLcLn1mX+Dj6AQygeEmakgKx6XHPVYwdXe/aRYL1Ib
 RwqyuyMsYoSJ1npsOycgqK6LJdMMroMuifgeddpR/NKgmF+4ZYakjn3Njcive+SY/V
 mDFjIBnDqF6dQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=eGCTo23z
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/4] ethtool: add FEC bins
 histogram report
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

On Tue, 16 Sep 2025 19:12:54 +0000 Vadim Fedorenko wrote:
> IEEE 802.3ck-2022 defines counters for FEC bins and 802.3df-2024
> clarifies it a bit further. Implement reporting interface through as
> addition to FEC stats available in ethtool.
> diff --git a/Documentation/netlink/specs/ethtool.yaml b/Documentation/netlink/specs/ethtool.yaml
> index 7a7594713f1f..de5008266884 100644
> --- a/Documentation/netlink/specs/ethtool.yaml
> +++ b/Documentation/netlink/specs/ethtool.yaml
> @@ -1219,6 +1219,23 @@ attribute-sets:
>          name: udp-ports
>          type: nest
>          nested-attributes: tunnel-udp
> +  -
> +    name: fec-hist
> +    attr-cnt-name: __ethtool-a-fec-hist-cnt

s/__/--/

> +    attributes:
> +      -
> +        name: bin-low
> +        type: u32
> +      -
> +        name: bin-high
> +        type: u32

We should add some doc: strings here so that the important info like
which one is inclusive is rendered right in the API reference

> +      -
> +        name: bin-val
> +        type: uint
> +      -
> +        name: bin-val-per-lane
> +        type: binary

probably good to doc this too

> +        sub-type: u64
>    -
>      name: fec-stat
>      attr-cnt-name: __ethtool-a-fec-stat-cnt
> @@ -1242,6 +1259,11 @@ attribute-sets:
>          name: corr-bits
>          type: binary
>          sub-type: u64
> +      -
> +        name: hist
> +        type: nest
> +        multi-attr: True
> +        nested-attributes: fec-hist
>    -
>      name: fec
>      attr-cnt-name: __ethtool-a-fec-cnt
> diff --git a/Documentation/networking/ethtool-netlink.rst b/Documentation/networking/ethtool-netlink.rst
> index ab20c644af24..b270886c5f5d 100644
> --- a/Documentation/networking/ethtool-netlink.rst
> +++ b/Documentation/networking/ethtool-netlink.rst
> @@ -1541,6 +1541,11 @@ Drivers fill in the statistics in the following structure:
>  .. kernel-doc:: include/linux/ethtool.h
>      :identifiers: ethtool_fec_stats
>  
> +Statistics may have FEC bins histogram attribute ``ETHTOOL_A_FEC_STAT_HIST``
> +as defined in IEEE 802.3ck-2022 and 802.3df-2024. Nested attributes will have
> +the range of FEC errors in the bin (inclusive) and the amount of error events
> +in the bin.

Does this sound better?

  Optional ``ETHTOOL_A_FEC_STAT_HIST`` attributes form a FEC error
  histogram, as defined in IEEE 802.3ck-2022 and 802.3df-2024
  (histogram of number of errors within a single FEC block). 
  Each ``ETHTOOL_A_FEC_STAT_HIST`` entry contains error count
  (optionally also broken down by SerDes lane) as well as metadata
  about the bin. Bin range (low, high) is inclusive.

>  static void
> -nsim_get_fec_stats(struct net_device *dev, struct ethtool_fec_stats *fec_stats)
> +nsim_get_fec_stats(struct net_device *dev, struct ethtool_fec_stats *fec_stats,
> +		   struct ethtool_fec_hist *hist)
>  {
> +	struct ethtool_fec_hist_value *values = hist->values;
> +
> +	hist->ranges = netdevsim_fec_ranges;
> +
>  	fec_stats->corrected_blocks.total = 123;
>  	fec_stats->uncorrectable_blocks.total = 4;
> +
> +	values[0].bin_value = 445;

Bin 0 had per lane breakdown, can't core add up the lanes for the
driver?

> +	values[1].bin_value = 12;
> +	values[2].bin_value = 2;
> +	values[0].bin_value_per_lane[0] = 125;
> +	values[0].bin_value_per_lane[1] = 120;
> +	values[0].bin_value_per_lane[2] = 100;
> +	values[0].bin_value_per_lane[3] = 100;
>  }

> +/**
> + * struct ethtool_fec_hist_range - error bits range for FEC bins histogram

Don't say "FEC bin histogram" I think the word histogram implies that
the data is bin'ed up.

> + * statistics
> + * @low: low bound of the bin (inclusive)
> + * @high: high bound of the bin (inclusive)
> + */

> @@ -113,7 +114,11 @@ static int fec_prepare_data(const struct ethnl_req_info *req_base,
>  		struct ethtool_fec_stats stats;
>  
>  		ethtool_stats_init((u64 *)&stats, sizeof(stats) / 8);
> -		dev->ethtool_ops->get_fec_stats(dev, &stats);
> +		ethtool_stats_init((u64 *)data->fec_stat_hist.values,
> +				   ETHTOOL_FEC_HIST_MAX *
> +				   sizeof(struct ethtool_fec_hist_value) / 8);

sizeof(data->fec_stat_hist.values) / 8

would save you the multiplication?

> +		dev->ethtool_ops->get_fec_stats(dev, &stats,
> +						&data->fec_stat_hist);
>  
>  		fec_stats_recalc(&data->corr, &stats.corrected_blocks);
>  		fec_stats_recalc(&data->uncorr, &stats.uncorrectable_blocks);

> +static int fec_put_hist(struct sk_buff *skb, const struct ethtool_fec_hist *hist)

over 80 chars, please wrap (checkpatch --max-line-length=80)

> +{
> +	const struct ethtool_fec_hist_range *ranges = hist->ranges;
> +	const struct ethtool_fec_hist_value *values = hist->values;
> +	struct nlattr *nest;
> +	int i, j;
> +
> +	if (!ranges)
> +		return 0;
> +
> +	for (i = 0; i < ETHTOOL_FEC_HIST_MAX; i++) {
> +		if (i && !ranges[i].low && !ranges[i].high)

low and high should probably be unsigned now

> +			break;
> +
> +		if (WARN_ON_ONCE(values[i].bin_value == ETHTOOL_STAT_NOT_SET))
> +			break;
> +
> +		nest = nla_nest_start(skb, ETHTOOL_A_FEC_STAT_HIST);
> +		if (!nest)
> +			return -EMSGSIZE;
> +
> +		if (nla_put_u32(skb, ETHTOOL_A_FEC_HIST_BIN_LOW,
> +				ranges[i].low) ||
> +		    nla_put_u32(skb, ETHTOOL_A_FEC_HIST_BIN_HIGH,
> +				ranges[i].high) ||
> +		    nla_put_uint(skb, ETHTOOL_A_FEC_HIST_BIN_VAL,
> +				 values[i].bin_value))
> +			goto err_cancel_hist;
> +		for (j = 0; j < ETHTOOL_MAX_LANES; j++) {
> +			if (values[i].bin_value_per_lane[j] == ETHTOOL_STAT_NOT_SET)

You know, bin_value could be 'sum', and bin_value_per_lane could be
simply 'per_lane'.

> +				break;
> +		}

{} brackets unnecessary

> +		if (j && nla_put_64bit(skb, ETHTOOL_A_FEC_HIST_BIN_VAL_PER_LANE,
> +				       sizeof(u64) * j,
> +				       values[i].bin_value_per_lane,
> +				       ETHTOOL_A_FEC_STAT_PAD))
> +			goto err_cancel_hist;
> +
> +		nla_nest_end(skb, nest);
> +	}
> +
> +	return 0;
> +
> +err_cancel_hist:
> +	nla_nest_cancel(skb, nest);
> +	return -EMSGSIZE;
> +}

We need a selftest. Add a case to stats.py and do basic sanity checking
on what the kernel spits out? Maybe 2 test cases - one for overall and
one for per-lane, cause mlx5 doesn't have per lane and we'd like the
test to pass there.
