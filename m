Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B6DB1EF8A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Aug 2025 22:33:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 081E881223;
	Fri,  8 Aug 2025 20:33:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id inwy-vlgt7Xi; Fri,  8 Aug 2025 20:33:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6115781253
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754685201;
	bh=83pEEJ3EH9xiLisnJqrBX5cyQMN+wvtYIT3ozfAy2U8=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WqpuUPEaMCZ5DJdE/l6wwdcAnQBu3H4FZqgnRHFJSb5xi5vwgTuMGypth/XtgYXNF
	 d3nEF44pFqOhtjF/JB+EqwePJXt0bRfMxRWlw/B9m2HDOsvzEmLRwWnCXOnvmY9v3x
	 Z16imFTDtLWlj9oxgPNFxjyYgqpRkRBU5EzEX/eqSpUKtRZi8YoUa1yG6+omzSoxNN
	 9sX0y3q6pQe7GvY16q1IosfKY/pS/cTPpM5ouMCFahOurLaznoh6fNOLdoHryBsruw
	 rBVvbWF0QlhduElJ+VpV2DwzlbEuEeXzsDnTmt4aVVBiVKZREuyIUUtm0qe3tdLID0
	 74/79giW8IHtA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6115781253;
	Fri,  8 Aug 2025 20:33:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5DBA49D6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 20:33:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4333260B11
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 20:33:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uLoq2PoVtqIB for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Aug 2025 20:33:18 +0000 (UTC)
X-Greylist: delayed 1073 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 08 Aug 2025 20:33:18 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B366160ADC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B366160ADC
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B366160ADC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 20:33:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id E65385C6B45;
 Fri,  8 Aug 2025 20:15:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 271DDC4CEED;
 Fri,  8 Aug 2025 20:15:23 +0000 (UTC)
Date: Fri, 8 Aug 2025 13:15:22 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vadim Fedorenko <vadfed@meta.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, <intel-wired-lan@lists.osuosl.org>, Donald
 Hunter <donald.hunter@gmail.com>, Carolina Jubran <cjubran@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 <netdev@vger.kernel.org>, Vadim Fedorenko <vadim.fedorenko@linux.dev>
Message-ID: <20250808131522.0dc26de4@kernel.org>
In-Reply-To: <20250807155924.2272507-1-vadfed@meta.com>
References: <20250807155924.2272507-1-vadfed@meta.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1754684123;
 bh=b0vC1D2LWBsSz1Gq4TjUw1tPlccN4Nq4ISgtAe4DlFg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=V2BhD5Md2HU5mz0K7D853WNotiUvhi4qNx/WfKoz7Y5NwhYelP2gk39VIr8kuDM4+
 Rw8Eb5/ivEHBa5xvNzjoRoC+TIQRNMvQW9BJP547vcqR6e8mI1HPP/0k6IQbSt9La7
 G8gXFsyfdBzVxa1zIUeBpkfG0SVQy6vHnopM1rGCaPdCkhpCM7S2ybaVXmV6cPDFXY
 esotkpwVHTBY1TW36nZRWQB5OHg8t7/4lvoNaep6ZH9rQ0VGFcN38jVP+o72B2YWy7
 sYBur4K3cGnxp42uHV0AS0S8QF2vVvIAGyZ+jvCO1PCOs5t9AOM30ZTl0mrIBvMJ6L
 LaCvwiy3R1fNQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=V2BhD5Md
Subject: Re: [Intel-wired-lan] [RFC PATCH v4] ethtool: add FEC bins
 histogramm report
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

On Thu, 7 Aug 2025 08:59:24 -0700 Vadim Fedorenko wrote:
> +		/* add FEC bins information */
> +		len += (nla_total_size(0) +  /* _A_FEC_HIST */
> +			nla_total_size(4) +  /* _A_FEC_HIST_BIN_LOW */
> +			nla_total_size(4) +  /* _A_FEC_HIST_BIN_HI */
> +			/* _A_FEC_HIST_BIN_VAL + per-lane values */
> +			nla_total_size_64bit(sizeof(u64) *
> +					     (1 + ETHTOOL_MAX_LANES))) *

That's the calculation for basic stats because they are reported as a
raw array. Each nla_put() should correspond to a nla_total_size().
This patch nla_put()s things individually.

> +			ETHTOOL_FEC_HIST_MAX;
> +	}
>  
>  	return len;
>  }
>  
> +static int fec_put_hist(struct sk_buff *skb, const struct ethtool_fec_hist *hist)
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
> +				break;
> +			nla_put_uint(skb, ETHTOOL_A_FEC_HIST_BIN_VAL_PER_LANE,
> +				     values[i].bin_value_per_lane[j]);

TBH I'm a bit unsure if this is really worth breaking out into
individual nla_puts(). We generally recommend that, but here it's
an array of simple ints.. maybe we're better of with a binary / C
array of u64. Like the existing FEC stats but without also folding
the total value into index 0.
