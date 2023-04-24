Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFB56ED031
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Apr 2023 16:21:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0EAAE41758;
	Mon, 24 Apr 2023 14:21:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0EAAE41758
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682346067;
	bh=+aru6wXvl++0Oo3kh4aVgnDTocTHb0PuP7vnjYK5GyU=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oCVxzQ0hGoF+VMv6P31Yx/4Btt8RMlxNyh2QY2oOBxYCL2BpAicd5klVJajwjMxF6
	 0hFssugPkyv2R6VtzHhwX5V81nZ/H21evroKPnjKCOZGA272dqRFHKmqQX2sNb3glJ
	 1wUZcc7dTrZIvzy/tgxD8eiEEzp24ecGS/3h3+PGDzu2VOeOfNhLFMbS0TjLJbcq3P
	 ros+WZ4CoVATBWnTi37QibufXktC9eSTxczkRTloy83B7e2KDsdev4omPpe2CcB4Dx
	 qJO199XInUsbgalMREIha2TtWZSt9R6+ykygDj+iw0Nl13Ad2oHuYt9h5PPQw9WJPB
	 U91oattvNoElg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gwAwzwdnYtFO; Mon, 24 Apr 2023 14:21:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76E95414CC;
	Mon, 24 Apr 2023 14:21:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76E95414CC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 101701BF964
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 14:21:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E8256401C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 14:20:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E8256401C2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r8vHy1NGP3Le for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Apr 2023 14:20:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4FD05400FB
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4FD05400FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 14:20:58 +0000 (UTC)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-33-JTYWD2TyNXmqPcEf6gJlOg-1; Mon, 24 Apr 2023 10:20:55 -0400
X-MC-Unique: JTYWD2TyNXmqPcEf6gJlOg-1
Received: by mail-ed1-f70.google.com with SMTP id
 4fb4d7f45d1cf-506b21104faso5185101a12.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 07:20:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682346053; x=1684938053;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=//jrELvgx6BR5HUm/M7sZNnl5oKgho21nLGL8LRITlQ=;
 b=D52ZnbGI5ej9GGItzdCu/87dG3EdBv4xi+AN+HkNsi2MzYMoGE8QXGfp6QSI+3HbSj
 OF3axxi4gxSrjjyV/gqEVkurrer4a1/bOer2q8dQ39hYkDzNISTnJ6f2QsCoAeqR8MFB
 p/DQaZF2nOzm84Ct49EYN9U+mLUn5TR6R0q5f62//DSmxlAbA8t87qHAEkoUydkGwF7Y
 TaKAk5QLhvBNeJotpA9QRaKFqU7gNiJfqsPnRt7MnWAi08MLqNYiqC6AALEehldQ7Pe4
 LzjxitdIfO+UQzOg4EvKjRgrDK3SUbceLukntrOXti6qOaqUO8GL39iwPZxmBQ2jvWOK
 SRLg==
X-Gm-Message-State: AAQBX9dlc4z+vYYwS21+YUbbHAoxjotQYyPmJt0ogspnH/Xm9tIDU84d
 k8k8tmGFbTJLVtQDNM8KPpmHekm/4bw1B+6d0vKGVVtz3J+zKFR+kLyw6cwnf79D2RrqKBOoOWO
 xiVUxJK5vJTz4Iu4yNEbA4odB6MBZ2Q==
X-Received: by 2002:a50:fa89:0:b0:4fa:b302:84d4 with SMTP id
 w9-20020a50fa89000000b004fab30284d4mr12483378edr.13.1682346053665; 
 Mon, 24 Apr 2023 07:20:53 -0700 (PDT)
X-Google-Smtp-Source: AKy350bc5OYEjhC9pT6b8xkC8b7wpOhe6MoG/ZhEbFBzK8m6qHfqOd6kL4Ojs2bU7cUsC459jN59kg==
X-Received: by 2002:a50:fa89:0:b0:4fa:b302:84d4 with SMTP id
 w9-20020a50fa89000000b004fab30284d4mr12483342edr.13.1682346053356; 
 Mon, 24 Apr 2023 07:20:53 -0700 (PDT)
Received: from [192.168.42.222] (194-45-78-10.static.kviknet.net.
 [194.45.78.10]) by smtp.gmail.com with ESMTPSA id
 o25-20020aa7d3d9000000b00509bd19b869sm3666008edr.48.2023.04.24.07.20.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 24 Apr 2023 07:20:52 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <622a8fa6-ec07-c150-250b-5467b0cddb0c@redhat.com>
Date: Mon, 24 Apr 2023 16:20:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: John Fastabend <john.fastabend@gmail.com>, bpf@vger.kernel.org,
 Stanislav Fomichev <sdf@google.com>, =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vu?=
 =?UTF-8?Q?sen?= <toke@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
References: <168182460362.616355.14591423386485175723.stgit@firesoul>
 <168182464270.616355.11391652654430626584.stgit@firesoul>
 <644544b3206f0_19af02085e@john.notmuch>
In-Reply-To: <644544b3206f0_19af02085e@john.notmuch>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1682346056;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=//jrELvgx6BR5HUm/M7sZNnl5oKgho21nLGL8LRITlQ=;
 b=M1YZT1sGztCxVgRZubmxd0yCcNbnV9JzVGRei5OSVpJJ3KecnM45m6Ot4Up4VU6G74qoRK
 oCaqUig9io3p8Z51NcqthpX2EWnDOkdmRyuknAICksXvJQqViF2uGp/UoLplSpgYV80v9b
 OC6Hk7VumlDabPX/Nvn/crLElJdBt8M=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=M1YZT1sG
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V2 1/5] igc: enable and fix
 RX hash usage by netstack
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, ast@kernel.org,
 jesse.brandeburg@intel.com, kuba@kernel.org, edumazet@google.com,
 yoong.siang.song@intel.com, brouer@redhat.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net,
 hawk@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 23/04/2023 16.46, John Fastabend wrote:
> Jesper Dangaard Brouer wrote:
>> When function igc_rx_hash() was introduced in v4.20 via commit 0507ef8a0372
>> ("igc: Add transmit and receive fastpath and interrupt handlers"), the
>> hardware wasn't configured to provide RSS hash, thus it made sense to not
>> enable net_device NETIF_F_RXHASH feature bit.
>>
>> The NIC hardware was configured to enable RSS hash info in v5.2 via commit
>> 2121c2712f82 ("igc: Add multiple receive queues control supporting"), but
>> forgot to set the NETIF_F_RXHASH feature bit.
>>
>> The original implementation of igc_rx_hash() didn't extract the associated
>> pkt_hash_type, but statically set PKT_HASH_TYPE_L3. The largest portions of
>> this patch are about extracting the RSS Type from the hardware and mapping
>> this to enum pkt_hash_types. This was based on Foxville i225 software user
>> manual rev-1.3.1 and tested on Intel Ethernet Controller I225-LM (rev 03).
>>
>> For UDP it's worth noting that RSS (type) hashing have been disabled both for
>> IPv4 and IPv6 (see IGC_MRQC_RSS_FIELD_IPV4_UDP + IGC_MRQC_RSS_FIELD_IPV6_UDP)
>> because hardware RSS doesn't handle fragmented pkts well when enabled (can
>> cause out-of-order). This results in PKT_HASH_TYPE_L3 for UDP packets, and
>> hash value doesn't include UDP port numbers. Not being PKT_HASH_TYPE_L4, have
>> the effect that netstack will do a software based hash calc calling into
>> flow_dissect, but only when code calls skb_get_hash(), which doesn't
>> necessary happen for local delivery.
>>
>> For QA verification testing I wrote a small bpftrace prog:
>>   [0] https://github.com/xdp-project/xdp-project/blob/master/areas/hints/monitor_skb_hash_on_dev.bt
>>
>> Fixes: 2121c2712f82 ("igc: Add multiple receive queues control supporting")
>> Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
>> ---
>>   drivers/net/ethernet/intel/igc/igc.h      |   28 ++++++++++++++++++++++++++
>>   drivers/net/ethernet/intel/igc/igc_main.c |   31 +++++++++++++++++++++++++----
>>   2 files changed, 55 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
>> index 34aebf00a512..f7f9e217e7b4 100644
>> --- a/drivers/net/ethernet/intel/igc/igc.h
>> +++ b/drivers/net/ethernet/intel/igc/igc.h
>> @@ -13,6 +13,7 @@
>>   #include <linux/ptp_clock_kernel.h>
>>   #include <linux/timecounter.h>
>>   #include <linux/net_tstamp.h>
>> +#include <linux/bitfield.h>
>>   
>>   #include "igc_hw.h"
>>   
>> @@ -311,6 +312,33 @@ extern char igc_driver_name[];
>>   #define IGC_MRQC_RSS_FIELD_IPV4_UDP	0x00400000
>>   #define IGC_MRQC_RSS_FIELD_IPV6_UDP	0x00800000
>>   
>> +/* RX-desc Write-Back format RSS Type's */
>> +enum igc_rss_type_num {
>> +	IGC_RSS_TYPE_NO_HASH		= 0,
>> +	IGC_RSS_TYPE_HASH_TCP_IPV4	= 1,
>> +	IGC_RSS_TYPE_HASH_IPV4		= 2,
>> +	IGC_RSS_TYPE_HASH_TCP_IPV6	= 3,
>> +	IGC_RSS_TYPE_HASH_IPV6_EX	= 4,
>> +	IGC_RSS_TYPE_HASH_IPV6		= 5,
>> +	IGC_RSS_TYPE_HASH_TCP_IPV6_EX	= 6,
>> +	IGC_RSS_TYPE_HASH_UDP_IPV4	= 7,
>> +	IGC_RSS_TYPE_HASH_UDP_IPV6	= 8,
>> +	IGC_RSS_TYPE_HASH_UDP_IPV6_EX	= 9,
>> +	IGC_RSS_TYPE_MAX		= 10,
>> +};
>> +#define IGC_RSS_TYPE_MAX_TABLE		16
>> +#define IGC_RSS_TYPE_MASK		GENMASK(3,0) /* 4-bits (3:0) = mask 0x0F */
>> +
>> +/* igc_rss_type - Rx descriptor RSS type field */
>> +static inline u32 igc_rss_type(const union igc_adv_rx_desc *rx_desc)
>> +{
>> +	/* RSS Type 4-bits (3:0) number: 0-9 (above 9 is reserved)
>> +	 * Accessing the same bits via u16 (wb.lower.lo_dword.hs_rss.pkt_info)
>> +	 * is slightly slower than via u32 (wb.lower.lo_dword.data)
>> +	 */
>> +	return le32_get_bits(rx_desc->wb.lower.lo_dword.data, IGC_RSS_TYPE_MASK);
>> +}
>> +
>>   /* Interrupt defines */
>>   #define IGC_START_ITR			648 /* ~6000 ints/sec */
>>   #define IGC_4K_ITR			980
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
>> index 1c4676882082..bfa9768d447f 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -1690,14 +1690,36 @@ static void igc_rx_checksum(struct igc_ring *ring,
>>   		   le32_to_cpu(rx_desc->wb.upper.status_error));
>>   }
>>   
>> +/* Mapping HW RSS Type to enum pkt_hash_types */
>> +static const enum pkt_hash_types igc_rss_type_table[IGC_RSS_TYPE_MAX_TABLE] = {
>> +	[IGC_RSS_TYPE_NO_HASH]		= PKT_HASH_TYPE_L2,
>> +	[IGC_RSS_TYPE_HASH_TCP_IPV4]	= PKT_HASH_TYPE_L4,
>> +	[IGC_RSS_TYPE_HASH_IPV4]	= PKT_HASH_TYPE_L3,
>> +	[IGC_RSS_TYPE_HASH_TCP_IPV6]	= PKT_HASH_TYPE_L4,
>> +	[IGC_RSS_TYPE_HASH_IPV6_EX]	= PKT_HASH_TYPE_L3,
>> +	[IGC_RSS_TYPE_HASH_IPV6]	= PKT_HASH_TYPE_L3,
>> +	[IGC_RSS_TYPE_HASH_TCP_IPV6_EX] = PKT_HASH_TYPE_L4,
>> +	[IGC_RSS_TYPE_HASH_UDP_IPV4]	= PKT_HASH_TYPE_L4,
>> +	[IGC_RSS_TYPE_HASH_UDP_IPV6]	= PKT_HASH_TYPE_L4,
>> +	[IGC_RSS_TYPE_HASH_UDP_IPV6_EX] = PKT_HASH_TYPE_L4,
>> +	[10] = PKT_HASH_TYPE_NONE, /* RSS Type above 9 "Reserved" by HW  */
>> +	[11] = PKT_HASH_TYPE_NONE, /* keep array sized for SW bit-mask   */
>> +	[12] = PKT_HASH_TYPE_NONE, /* to handle future HW revisons       */
>> +	[13] = PKT_HASH_TYPE_NONE,
>> +	[14] = PKT_HASH_TYPE_NONE,
>> +	[15] = PKT_HASH_TYPE_NONE,
>> +};
>> +
>>   static inline void igc_rx_hash(struct igc_ring *ring,
>>   			       union igc_adv_rx_desc *rx_desc,
>>   			       struct sk_buff *skb)
>>   {
>> -	if (ring->netdev->features & NETIF_F_RXHASH)
>> -		skb_set_hash(skb,
>> -			     le32_to_cpu(rx_desc->wb.lower.hi_dword.rss),
>> -			     PKT_HASH_TYPE_L3);
>> +	if (ring->netdev->features & NETIF_F_RXHASH) {
>> +		u32 rss_hash = le32_to_cpu(rx_desc->wb.lower.hi_dword.rss);
>> +		u32 rss_type = igc_rss_type(rx_desc);
>> +
>> +		skb_set_hash(skb, rss_hash, igc_rss_type_table[rss_type]);
> 
> Just curious why not copy the logic from the other driver fms10k, ice, ect.
> 
> 	skb_set_hash(skb, le32_to_cpu(rx_desc->wb.lower.hi_dword.rss),
> 		     (IXGBE_RSS_L4_TYPES_MASK & (1ul << rss_type)) ?
> 		     PKT_HASH_TYPE_L4 : PKT_HASH_TYPE_L3);

Detail: This code mis-categorize (e.g. ARP) PKT_HASH_TYPE_L2 as
PKT_HASH_TYPE_L3, but as core reduces this further to one SKB bit, it
doesn't really matter.

> avoiding the table logic. Do the driver folks care?

The define IXGBE_RSS_L4_TYPES_MASK becomes the "table" logic as a 1-bit
true/false table.  It is a more compact table, let me know if this is
preferred.

Yes, it is really upto driver maintainer people to decide, what code is
preferred ?

--Jesper

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
