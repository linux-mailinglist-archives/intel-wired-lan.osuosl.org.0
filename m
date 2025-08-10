Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 11780B1F9B6
	for <lists+intel-wired-lan@lfdr.de>; Sun, 10 Aug 2025 13:00:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B99C260F44;
	Sun, 10 Aug 2025 11:00:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 69JaYu2IGFgp; Sun, 10 Aug 2025 11:00:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0F40960F3D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754823636;
	bh=y1OD/fs97lJSnzwe5rHz5qP8Wlog8IOWL6QwAL84Y1g=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=W/hcg1Dm5Znr9qqoG2xtxIbu/jBvX5RNLwTpkXyFBouitssk8cq1wXguSVoAcBDOo
	 gx4M7/XjB4zK4wSQOKyqqKPGT3MxCj7cZSovxBBNJO0/YFo0bZkx7a3jO5MrDKIVkb
	 KTV1q9Jv38fDCOgXbC762TFNv5h1tqCbLak4c+u+6U+Lr++Q/itmk+V/2+t1uFiCwr
	 rUTtwng1KBsd5ti8ydSwiBHZwAScGtJEqV+8o5JCWtuK65/smMagivx1ilH/thL2Av
	 3eH1h7cTVpnN1muOIh/foVYquVksPSc2BX2ERcX6nRJzj2DsYTJsAC8OFIMtMbyQCf
	 If5ONZBO0Rxfg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0F40960F3D;
	Sun, 10 Aug 2025 11:00:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 207A3138
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Aug 2025 11:00:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1256440DA0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Aug 2025 11:00:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CPCxwASzwGe9 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 10 Aug 2025 11:00:33 +0000 (UTC)
X-Greylist: delayed 398 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 10 Aug 2025 11:00:32 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3EC2C40CD7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3EC2C40CD7
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=95.215.58.171;
 helo=out-171.mta1.migadu.com; envelope-from=vadim.fedorenko@linux.dev;
 receiver=<UNKNOWN> 
Received: from out-171.mta1.migadu.com (out-171.mta1.migadu.com
 [95.215.58.171])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3EC2C40CD7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Aug 2025 11:00:32 +0000 (UTC)
Message-ID: <ec9e7da6-30f0-40aa-8cb7-bfa0ff814126@linux.dev>
Date: Sun, 10 Aug 2025 11:52:55 +0100
MIME-Version: 1.0
To: Jakub Kicinski <kuba@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 Donald Hunter <donald.hunter@gmail.com>, Carolina Jubran
 <cjubran@nvidia.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org
References: <20250807155924.2272507-1-vadfed@meta.com>
 <20250808131522.0dc26de4@kernel.org>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20250808131522.0dc26de4@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1754823226;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=y1OD/fs97lJSnzwe5rHz5qP8Wlog8IOWL6QwAL84Y1g=;
 b=QQQ37w/YI/SfcG3Zp/Hf1ZO5W1fzmDFWZUzGSlKSN1aQWiwobf+1TkHMJAEjVJ0QaqXkBT
 m0z6rGFWi2n+n0G1kQRo4lypAMVR5X9oCtSJlQ1Qbj7wIPik3NhH3I60o8yGPwOZ39/VPl
 +sZ0KwK/wGR5UificM2Z9siE6qpIfJg=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=QQQ37w/Y
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

On 08/08/2025 21:15, Jakub Kicinski wrote:
> On Thu, 7 Aug 2025 08:59:24 -0700 Vadim Fedorenko wrote:
>> +		/* add FEC bins information */
>> +		len += (nla_total_size(0) +  /* _A_FEC_HIST */
>> +			nla_total_size(4) +  /* _A_FEC_HIST_BIN_LOW */
>> +			nla_total_size(4) +  /* _A_FEC_HIST_BIN_HI */
>> +			/* _A_FEC_HIST_BIN_VAL + per-lane values */
>> +			nla_total_size_64bit(sizeof(u64) *
>> +					     (1 + ETHTOOL_MAX_LANES))) *
> 
> That's the calculation for basic stats because they are reported as a
> raw array. Each nla_put() should correspond to a nla_total_size().
> This patch nla_put()s things individually.
> 
>> +			ETHTOOL_FEC_HIST_MAX;
>> +	}
>>   
>>   	return len;
>>   }
>>   
>> +static int fec_put_hist(struct sk_buff *skb, const struct ethtool_fec_hist *hist)
>> +{
>> +	const struct ethtool_fec_hist_range *ranges = hist->ranges;
>> +	const struct ethtool_fec_hist_value *values = hist->values;
>> +	struct nlattr *nest;
>> +	int i, j;
>> +
>> +	if (!ranges)
>> +		return 0;
>> +
>> +	for (i = 0; i < ETHTOOL_FEC_HIST_MAX; i++) {
>> +		if (i && !ranges[i].low && !ranges[i].high)
>> +			break;
>> +
>> +		if (WARN_ON_ONCE(values[i].bin_value == ETHTOOL_STAT_NOT_SET))
>> +			break;
>> +
>> +		nest = nla_nest_start(skb, ETHTOOL_A_FEC_STAT_HIST);
>> +		if (!nest)
>> +			return -EMSGSIZE;
>> +
>> +		if (nla_put_u32(skb, ETHTOOL_A_FEC_HIST_BIN_LOW,
>> +				ranges[i].low) ||
>> +		    nla_put_u32(skb, ETHTOOL_A_FEC_HIST_BIN_HIGH,
>> +				ranges[i].high) ||
>> +		    nla_put_uint(skb, ETHTOOL_A_FEC_HIST_BIN_VAL,
>> +				 values[i].bin_value))
>> +			goto err_cancel_hist;
>> +		for (j = 0; j < ETHTOOL_MAX_LANES; j++) {
>> +			if (values[i].bin_value_per_lane[j] == ETHTOOL_STAT_NOT_SET)
>> +				break;
>> +			nla_put_uint(skb, ETHTOOL_A_FEC_HIST_BIN_VAL_PER_LANE,
>> +				     values[i].bin_value_per_lane[j]);
> 
> TBH I'm a bit unsure if this is really worth breaking out into
> individual nla_puts(). We generally recommend that, but here it's
> an array of simple ints.. maybe we're better of with a binary / C
> array of u64. Like the existing FEC stats but without also folding
> the total value into index 0.

Well, the current implementation is straight forward. Do you propose to
have drivers fill in the amount of lanes they have histogram for, or
should we always put array of ETHTOOL_MAX_LANES values and let
user-space to figure out what to show?
