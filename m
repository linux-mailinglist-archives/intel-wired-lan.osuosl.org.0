Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 890E2B19DA3
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Aug 2025 10:31:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8393A40AD2;
	Mon,  4 Aug 2025 08:31:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Agxa5zbpla7Q; Mon,  4 Aug 2025 08:31:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8725C40ADD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754296277;
	bh=j9PJ+Y/FavZJigOXqRIX0OeIMJyTMBv2omxY9KJvj0U=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EI33vdNdJcTMq8as7tJg4qhODeDRqwL4SsAJsAlHWC/9c3y9jrQHItbZq1OzBtZpP
	 dbksD9sTWB3ZDBzGBGiveJZjrrrDuQuv1u0mY3Q0Bq7d5/ETqjJ53w3+PKJg7JZINy
	 //HzhMNWSUkS9LTYkK1ipCb+dTGoEVLOkHc856c/Yw2OCezbYILOxYN4us36eA2/Eq
	 DhIJ0cGzIxrLu3VyxCI78mYeCbsNZI3bmKgWD3tRDt0Mc8N+/YHUBF3vxYJOvQl9Nz
	 uJerWAi8OSgz9usi6hllmiCFLTQ1wozJ7RH6Uh3Y9PjlGCEr9/KBWH4oFjBuqGt0Ez
	 W/WTXfd9erBEA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8725C40ADD;
	Mon,  4 Aug 2025 08:31:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 536111A2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Aug 2025 08:31:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4483A407B6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Aug 2025 08:31:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nBnEdzhyfCDf for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Aug 2025 08:31:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=91.218.175.177;
 helo=out-177.mta0.migadu.com; envelope-from=vadim.fedorenko@linux.dev;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 67BA540481
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 67BA540481
Received: from out-177.mta0.migadu.com (out-177.mta0.migadu.com
 [91.218.175.177])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 67BA540481
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Aug 2025 08:31:11 +0000 (UTC)
Message-ID: <25ab441c-84e8-4c47-8d13-1b88d78ed4c6@linux.dev>
Date: Mon, 4 Aug 2025 09:31:06 +0100
MIME-Version: 1.0
To: Carolina Jubran <cjubran@nvidia.com>, Andrew Lunn <andrew@lunn.ch>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org
References: <20250802063024.2423022-1-vadfed@meta.com>
 <d3bb8295-bb4f-4817-a2dd-017332c489d4@nvidia.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <d3bb8295-bb4f-4817-a2dd-017332c489d4@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1754296268;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=j9PJ+Y/FavZJigOXqRIX0OeIMJyTMBv2omxY9KJvj0U=;
 b=R50X5kuGKjYp8qQpUrcVmTeswuDJ/HwZE/GbXV7UnKUelw67QrMJcvTx0IEzxoIgV6coe8
 97mY769V3GlPA+zqo4ukoPaOmw/ejOpzoqgUnR2sev5ACGJtPYdVTD2EnIohsAsviXjRmQ
 9tiplz8S1ByYG194vsz/tjNEExzmqPc=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=R50X5kuG
Subject: Re: [Intel-wired-lan] [RFC PATCH v3] ethtool: add FEC bins
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

On 03/08/2025 12:24, Carolina Jubran wrote:
> 
> 
> On 02/08/2025 9:30, Vadim Fedorenko wrote:
>> diff --git a/Documentation/networking/ethtool-netlink.rst b/ 
>> Documentation/networking/ethtool-netlink.rst
>> index ab20c644af248..b270886c5f5d5 100644
>> --- a/Documentation/networking/ethtool-netlink.rst
>> +++ b/Documentation/networking/ethtool-netlink.rst
>> @@ -1541,6 +1541,11 @@ Drivers fill in the statistics in the following 
>> structure:
>>   .. kernel-doc:: include/linux/ethtool.h
>>       :identifiers: ethtool_fec_stats
>> +Statistics may have FEC bins histogram attribute 
>> ``ETHTOOL_A_FEC_STAT_HIST``
>> +as defined in IEEE 802.3ck-2022 and 802.3df-2024. Nested attributes 
>> will have
>> +the range of FEC errors in the bin (inclusive) and the amount of 
>> error events
>> +in the bin.
>> +
> 
> Maybe worth mentioning per-lane histograms here.

Yep, will do it

> 
>>   FEC_SET
>>   =======
>> diff --git a/drivers/net/netdevsim/ethtool.c b/drivers/net/netdevsim/ 
>> ethtool.c
>> index f631d90c428ac..1dc9a6c126b24 100644
>> --- a/drivers/net/netdevsim/ethtool.c
>> +++ b/drivers/net/netdevsim/ethtool.c
>> @@ -164,12 +164,29 @@ nsim_set_fecparam(struct net_device *dev, struct 
>> ethtool_fecparam *fecparam)
>>       ns->ethtool.fec.active_fec = 1 << (fls(fec) - 1);
>>       return 0;
>>   }
>> +static const struct ethtool_fec_hist_range netdevsim_fec_ranges[] = {
>> +    { 0, 0},
>> +    { 1, 3},
>> +    { 4, 7},
>> +    { 0, 0}
>> +};
>>
> 
> Following up on the discussion from v1, I agree with Gal's concern about 
> pushing array management into the driver. It adds complexity especially 
> when ranges depend on FEC mode.

Still don't really get the reason. You have finite amount of FEC bin
configurations, per hardware per FEC type, you know current FEC type
value and can choose static range based on this knowledge. Why do you
want to query device over PCIe multiple times to figure out the same
configuration every time?

> 
> The approach Andrew suggested makes sense to me. A simple helper to add 
> a bin would support both static and dynamic cases.
> 
>>   static void
>> -nsim_get_fec_stats(struct net_device *dev, struct ethtool_fec_stats 
>> *fec_stats)
>> +nsim_get_fec_stats(struct net_device *dev, struct ethtool_fec_stats 
>> *fec_stats,
>> +           const struct ethtool_fec_hist_range **ranges)
>>   {
>> +    *ranges = netdevsim_fec_ranges;
>> +
>>       fec_stats->corrected_blocks.total = 123;
>>       fec_stats->uncorrectable_blocks.total = 4;
>> +
>> +    fec_stats->hist[0].bin_value = 345;
> 
> bin_value is 345 but the per-lane sum is 445.

ahh.. yeah, will fix it

>> +    fec_stats->hist[1].bin_value = 12;
>> +    fec_stats->hist[2].bin_value = 2;
>> +    fec_stats->hist[0].bin_value_per_lane[0] = 125;
>> +    fec_stats->hist[0].bin_value_per_lane[1] = 120;
>> +    fec_stats->hist[0].bin_value_per_lane[2] = 100;
>> +    fec_stats->hist[0].bin_value_per_lane[3] = 100;
>>   }
>> +static int fec_put_hist(struct sk_buff *skb, const struct 
>> fec_stat_hist *hist,
>> +            const struct ethtool_fec_hist_range *ranges)
>> +{
>> +    struct nlattr *nest;
>> +    int i, j;
>> +
>> +    if (!ranges)
>> +        return 0;
>> +
>> +    for (i = 0; i < ETHTOOL_FEC_HIST_MAX; i++) {
>> +        if (i && !ranges[i].low && !ranges[i].high)
>> +            break;
>> +
>> +        nest = nla_nest_start(skb, ETHTOOL_A_FEC_STAT_HIST);
>> +        if (!nest)
>> +            return -EMSGSIZE;
>> +
>> +        if (nla_put_u32(skb, ETHTOOL_A_FEC_HIST_BIN_LOW,
>> +                 ranges[i].low) ||
>> +            nla_put_u32(skb, ETHTOOL_A_FEC_HIST_BIN_HIGH,
>> +                 ranges[i].high) ||
>> +            nla_put_uint(skb, ETHTOOL_A_FEC_HIST_BIN_VAL,
>> +                     hist[i].bin_value))
> 
> Should skip bins where hist[i].bin_value isn’t set.

I'm kinda disagree. If the bin is configured, then the HW must provide a
value for it. Otherwise we will have inconsistency in user's output.

I was thinking of adding WARN_ON_ONCE() for such cases actually.

> 
> 
> Thanks,
> Carolina

