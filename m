Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E15B2B095
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Aug 2025 20:36:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9349E60647;
	Mon, 18 Aug 2025 18:36:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nJpfqux5u_1m; Mon, 18 Aug 2025 18:36:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EFE8D6064A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755542211;
	bh=YEleciuqCzDP1u7gctFkcDKDnO/+TN1KeFYy+R1jcs0=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=i1W+KunWdNy07KZTAfcyeOv9tUaw5DpBBiIZmCGI/aNtEEN7kyxWKVizvTPiXhw95
	 6PoKe7N63mOs0fJ6dq6LFyv2n2ZtHsdee7vHtCWVrJBCyQpBcRG6hXxZrojCG+LgaU
	 UFyC5rhsREP8915QOJE5rEg1Rd/lRFUDqde1hOYfaWwp0NTcpj72IgiT6c+YSf7UZq
	 tXY9xGR7nAf/vpqcR82d/0q6LkDGY5JEe1bCvAR2QijDj00fnwJF1BEuNEUuO5R0yO
	 fWb8aQu15SUdPn+D5un+/pkm5dEaVbWLwkAI9nsn3KzmD38BzuupaFZvDC69xaTq+k
	 WSCj/voNF8VvA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EFE8D6064A;
	Mon, 18 Aug 2025 18:36:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3D3A1E2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 18:36:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3824140162
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 18:36:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id luznd8VzGgo7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Aug 2025 18:36:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=91.218.175.173;
 helo=out-173.mta0.migadu.com; envelope-from=vadim.fedorenko@linux.dev;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5D1704007D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5D1704007D
Received: from out-173.mta0.migadu.com (out-173.mta0.migadu.com
 [91.218.175.173])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5D1704007D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 18:36:47 +0000 (UTC)
Message-ID: <cab8df87-46fc-49f4-be1d-a55585587e61@linux.dev>
Date: Mon, 18 Aug 2025 19:35:57 +0100
MIME-Version: 1.0
To: Carolina Jubran <cjubran@nvidia.com>, Andrew Lunn <andrew@lunn.ch>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org
References: <20250815132729.2251597-1-vadfed@meta.com>
 <5b8da3d8-f24c-43d8-9d82-0bcc257e1dac@nvidia.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <5b8da3d8-f24c-43d8-9d82-0bcc257e1dac@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1755542204;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YEleciuqCzDP1u7gctFkcDKDnO/+TN1KeFYy+R1jcs0=;
 b=gEO4tuua+R3qWKY7ae9B34t7MxPPMhZhAhTH88tS8smrXk0vsQoY18b7cdkNGb7wp5ywpu
 2ijpvi/fRAFYTVHfQWmNV8+5fo9gDY8h8EYE5KqqCf0X/fzenRAdz5YSYOOr50s1qSh449
 18YHT00stMsUcbE8itf5NUgvjm1SD68=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=gEO4tuua
Subject: Re: [Intel-wired-lan] [RFC PATCH v5] ethtool: add FEC bins
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

On 18/08/2025 19:17, Carolina Jubran wrote:
> 
> 
> On 15/08/2025 16:27, Vadim Fedorenko wrote:
>> diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
>> index de5bd76a400ca..6c0dc6ae080a8 100644
>> --- a/include/linux/ethtool.h
>> +++ b/include/linux/ethtool.h
>> @@ -492,7 +492,25 @@ struct ethtool_pause_stats {
>>   };
>>   #define ETHTOOL_MAX_LANES    8
>> +#define ETHTOOL_FEC_HIST_MAX    18
> 
> Could you clarify why it is set to 18?
> AFAIU IEEE 802.3ck/df define 16 bins.

Yeah, the standard defines 16 bins, but this value came out of the
discussion with Gal and Yael because the hardware supports more bins,
I believe, in RDMA mode

>> diff --git a/net/ethtool/fec.c b/net/ethtool/fec.c
>> index e7d3f2c352a34..9313bd17544fd 100644
>> --- a/net/ethtool/fec.c
>> +++ b/net/ethtool/fec.c
>> @@ -17,6 +17,7 @@ struct fec_reply_data {
>>           u64 stats[1 + ETHTOOL_MAX_LANES];
>>           u8 cnt;
>>       } corr, uncorr, corr_bits;
>> +    struct ethtool_fec_hist fec_stat_hist;
>>   };
>>   #define FEC_REPDATA(__reply_base) \
>> @@ -113,7 +114,11 @@ static int fec_prepare_data(const struct 
>> ethnl_req_info *req_base,
>>           struct ethtool_fec_stats stats;
>>           ethtool_stats_init((u64 *)&stats, sizeof(stats) / 8);
>> -        dev->ethtool_ops->get_fec_stats(dev, &stats);
>> +        ethtool_stats_init((u64 *)data->fec_stat_hist.values,
>> +                   ETHTOOL_MAX_LANES *
> this should be ETHTOOL_FEC_HIST_MAX since we’re initializing the 
> histogram bins array.

Yes, you're right, I'll change it in the next version
