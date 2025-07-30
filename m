Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DCDFB15B8C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jul 2025 11:29:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A0EDD61369;
	Wed, 30 Jul 2025 09:29:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v6fL6xlHSfqD; Wed, 30 Jul 2025 09:29:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF4CF61374
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753867786;
	bh=WJCqdhtK2SorWbMtjErohNTMQWfsrZacHp0nri4+we0=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gP55Dr+oNf7SpVXcOQK3bn7BSjkTNn/9x5sGIDmwu/B7GOELU0fGTk6REuwFo8UcM
	 xkhDwJcQFX+ZhiadKlTtUWjRSKwh7zC0n8w0GkNRfPrmLBjF6dzDjD8CPEbJZIXdC2
	 JHA1KLPxB4zTvoGvkhnJO20i06MjGqdQ603NLVhH8cbect6J8hhEzxrK+mcr0jtfaU
	 2QqxPKmS/piLy9aak2RpTJAnLkH8NOOJ+bVdmoRBEN73Ma7hiYLDSDWX1oekZ+Z9MF
	 IMJ+50p8rvuiJIDPMfHxkr/uCtxFIf6pyyufduVN7tfhOGZFjV/DRHACaLESmdvXJ9
	 d3W6RkGjurNhA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF4CF61374;
	Wed, 30 Jul 2025 09:29:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5A90513D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 09:29:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4BB608141E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 09:29:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K0B7smLhggew for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jul 2025 09:29:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=91.218.175.171;
 helo=out-171.mta0.migadu.com; envelope-from=vadim.fedorenko@linux.dev;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 69A5581361
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 69A5581361
Received: from out-171.mta0.migadu.com (out-171.mta0.migadu.com
 [91.218.175.171])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 69A5581361
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 09:29:44 +0000 (UTC)
Message-ID: <1129bf26-273e-4685-a0b8-ed8b0e4050f3@linux.dev>
Date: Wed, 30 Jul 2025 10:29:36 +0100
MIME-Version: 1.0
To: Gal Pressman <gal@nvidia.com>, Andrew Lunn <andrew@lunn.ch>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 intel-wired-lan@lists.osuosl.org, Donald Hunter <donald.hunter@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org
References: <20250729102354.771859-1-vadfed@meta.com>
 <041f79a2-5f96-4427-b0e2-6a159fbec84a@nvidia.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <041f79a2-5f96-4427-b0e2-6a159fbec84a@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1753867780;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WJCqdhtK2SorWbMtjErohNTMQWfsrZacHp0nri4+we0=;
 b=bElHQAseWsAYxartJ9Bb5DqQfTt3dZ+c5O6H8Un/zpFTp3jnVAjbHmjjkIBRzETx/P9KIk
 53wUbZZJR809ObhBXSbRhUYxAg3Epg0etCe9F1mpV0fvQLNfsaZ+ynp3rzVB3/sQQLL3CV
 ull0jro3jMEeSbgRx9cxA5AI5xYyItc=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=bElHQAse
Subject: Re: [Intel-wired-lan] [RFC PATCH] ethtool: add FEC bins histogramm
 report
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

On 30/07/2025 06:54, Gal Pressman wrote:
> On 29/07/2025 13:23, Vadim Fedorenko wrote:
>> diff --git a/drivers/net/netdevsim/ethtool.c b/drivers/net/netdevsim/ethtool.c
>> index f631d90c428ac..7257de9ea2f44 100644
>> --- a/drivers/net/netdevsim/ethtool.c
>> +++ b/drivers/net/netdevsim/ethtool.c
>> @@ -164,12 +164,25 @@ nsim_set_fecparam(struct net_device *dev, struct ethtool_fecparam *fecparam)
>>   	ns->ethtool.fec.active_fec = 1 << (fls(fec) - 1);
>>   	return 0;
>>   }
>> +static const struct ethtool_fec_hist_range netdevsim_fec_ranges[] = {
>> +	{  0,  0},
>> +	{  1,  3},
>> +	{  4,  7},
>> +	{ -1, -1}
>> +};
> 
> The driver-facing API works nicely when the ranges are allocated as
> static arrays, but I expect most drivers will need to allocate it
> dynamically as the ranges will be queried from the device.
> In that case, we need to define who is responsible of freeing the ranges
> array.

Well, the ranges will not change during link operation, unless the type
of FEC is changed. You may either have static array of FEC ranges per
supported FEC types. Or query it on link-up event and reuse it on every
call for FEC stats. In this case it's pure driver's responsibility to
manage memory allocations. There is definitely no need to re-query
ranges on every single call for stats.

> 
>>   
>>   static void
>> -nsim_get_fec_stats(struct net_device *dev, struct ethtool_fec_stats *fec_stats)
>> +nsim_get_fec_stats(struct net_device *dev, struct ethtool_fec_stats *fec_stats,
>> +		   const struct ethtool_fec_hist_range **ranges)
>>   {
>> +	*ranges = netdevsim_fec_ranges;
>> +
>>   	fec_stats->corrected_blocks.total = 123;
>>   	fec_stats->uncorrectable_blocks.total = 4;
>> +
>> +	fec_stats->hist[0] = 345;
>> +	fec_stats->hist[1] = 12;
>> +	fec_stats->hist[2] = 2;
>>   }
>>   
>>   static int nsim_get_ts_info(struct net_device *dev,
>> diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
>> index de5bd76a400ca..9421a5e31af21 100644
>> --- a/include/linux/ethtool.h
>> +++ b/include/linux/ethtool.h
>> @@ -492,6 +492,17 @@ struct ethtool_pause_stats {
>>   };
>>   
>>   #define ETHTOOL_MAX_LANES	8
>> +#define ETHTOOL_FEC_HIST_MAX	18
> 
> I suspect we might need to increase this value in the future, so I like
> the fact that it's not hardcoded anywhere in the uapi.

Yep, that's the plan
