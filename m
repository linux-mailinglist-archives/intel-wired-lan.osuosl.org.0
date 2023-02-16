Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D08699A73
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Feb 2023 17:47:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF40A4193C;
	Thu, 16 Feb 2023 16:47:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF40A4193C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676566028;
	bh=YQptyFy4kAb78X3ebdXWVhAHmVkYYlI0XbWcI+3nTVU=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jzPS8u4Zsz1wYzOo/E2cm/BrBxFd0KFkT+v7J4gJOY68M4E7fwU5w4Yggw3hfG3Vt
	 deO1ONUigAwrc5UO/q/N25uHdn27qRIKolCU7wuITkmCnxOpB1CT3Eqe/c75VbnOqa
	 qADkcORevDG5DVjVImfRChTGYWXhcIP/4ovWIRQHcOECoQIEj9D2HvgNyQZVtEZ8LF
	 5z5y8yHzk/e/QnN7v9fCyAKkH4lwga/uDvI5B0MJxXNDj8v0VH5vi5XnPHS4dpOohQ
	 hY4uuabz6FvQwB0hYxpF9AibaTsgGI30lCiNiK/smS8QJqLxs5mVSSnJs3LIp/2INY
	 Iov/JEra3WXjg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hI2W6M1FFDhu; Thu, 16 Feb 2023 16:47:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 512EF4193A;
	Thu, 16 Feb 2023 16:47:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 512EF4193A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 067621BF30D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 16:47:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CB68860768
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 16:47:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB68860768
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jlVZk8Ix9w69 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Feb 2023 16:47:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD5F2605AD
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CD5F2605AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 16:46:59 +0000 (UTC)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-122-4gfaCwg5MdSzmVDVWhEf2A-1; Thu, 16 Feb 2023 11:46:57 -0500
X-MC-Unique: 4gfaCwg5MdSzmVDVWhEf2A-1
Received: by mail-ed1-f72.google.com with SMTP id
 l9-20020a056402254900b004acbe232c03so2298541edb.9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 08:46:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=59uNXmnY+5xpfv8KNp1rUASo+YONUDHrOKaND1BYqkc=;
 b=t/q6hbWqXJ4Lcdb47TDj0SbMOoIM+KEMPkuPru3MMvW7wktYpnDNtcwjGBIgFWmYbH
 KLW6CR6qdXvKYt2WjwWQ8lUu1i2cTHVFM6zOKdEnQKHFADCFclRguldr/uoRsjqaHbJH
 1Y5H0E0Btj+3zIASC/LIaxhMBUXV9KCrZkpgqN+GzkWb8rp3Cn/z3MXJUpH02O1tEGUm
 8FNOW75qgbk/gljcMngxgNYVshM6lFL2w3MBLLAwvHwtNWcl9yw/EhEXzl8kNLoFvfdu
 VduVVGSztUc1eueiuAp+I+MiyTtaef+YcLjimwmpaKNHeyjM2lXbOAZJAivt4uZD+uRG
 niYA==
X-Gm-Message-State: AO0yUKUYzMBjwliftoTNw8B+fafWD5Q49xGnlndOB4baYfU/wFcOCmCY
 yVfvebHj5XLoQM/ncz9ZtUvMhBJFs9zLvVgAX5a8IBS0T8Oeej6lgz4+QuHJZ5AdiuSO3c7dbTe
 X4cF835XHDPfYfRd+PmC8VeZzOqyknw==
X-Received: by 2002:aa7:d28d:0:b0:4ac:bcef:505a with SMTP id
 w13-20020aa7d28d000000b004acbcef505amr6881331edq.38.1676566016258; 
 Thu, 16 Feb 2023 08:46:56 -0800 (PST)
X-Google-Smtp-Source: AK7set80Fzbld5F2gDEWeKiKO6SZW4LBZxJ3poPT7SamcTW7fAXxk1srziilHzzaelgpB+gTsNh7sw==
X-Received: by 2002:aa7:d28d:0:b0:4ac:bcef:505a with SMTP id
 w13-20020aa7d28d000000b004acbcef505amr6881312edq.38.1676566015902; 
 Thu, 16 Feb 2023 08:46:55 -0800 (PST)
Received: from [192.168.42.100] (nat-cgn9-185-107-15-52.static.kviknet.net.
 [185.107.15.52]) by smtp.gmail.com with ESMTPSA id
 v14-20020a50c40e000000b004acaa4d51bdsm1136242edf.32.2023.02.16.08.46.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Feb 2023 08:46:55 -0800 (PST)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <fe613404-9d1c-d816-404f-9af4526a42a3@redhat.com>
Date: Thu, 16 Feb 2023 17:46:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
To: Alexander Lobakin <alexandr.lobakin@intel.com>
References: <167604167956.1726972.7266620647404438534.stgit@firesoul>
 <af69e040-3884-aa73-1241-99207aa577b4@intel.com>
In-Reply-To: <af69e040-3884-aa73-1241-99207aa577b4@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1676566018;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=59uNXmnY+5xpfv8KNp1rUASo+YONUDHrOKaND1BYqkc=;
 b=O3N8vgfzyISBWETXa54WpsFCMHlLpk3ifEpoqj0W13Le2DEHNhQ+MpB8C7maMbZ/s43iJR
 LdWBtxtVjsVTm7G5IekNXYKGXytbt06D09wsjf+PADSJtMJ8aLMybAEtPbKemrekwXAUSo
 6Gw+ytcZKtsVH6bAgqqg5kQZ0o7dCP4=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=O3N8vgfz
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V1] igc: enable and fix RX
 hash usage by netstack
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
 netdev@vger.kernel.org, ast@kernel.org, anthony.l.nguyen@intel.com,
 Stanislav Fomichev <sdf@google.com>, yoong.siang.song@intel.com,
 brouer@redhat.com, intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 14/02/2023 14.21, Alexander Lobakin wrote:
> From: Jesper Dangaard Brouer <brouer@redhat.com>
> Date: Fri, 10 Feb 2023 16:07:59 +0100
> 
>> When function igc_rx_hash() was introduced in v4.20 via commit 0507ef8a0372
>> ("igc: Add transmit and receive fastpath and interrupt handlers"), the
>> hardware wasn't configured to provide RSS hash, thus it made sense to not
>> enable net_device NETIF_F_RXHASH feature bit.
> 
> [...]
> 
>> @@ -311,6 +311,58 @@ extern char igc_driver_name[];
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
>> +#define IGC_RSS_TYPE_MASK		0xF
> 
> GENMASK()?
> 

hmm... GENMASK(3,0) looks more confusing to me. The mask we need here is
so simple that I prefer not to complicate this with GENMASK.

>> +
>> +/* igc_rss_type - Rx descriptor RSS type field */
>> +static inline u8 igc_rss_type(union igc_adv_rx_desc *rx_desc)
> 
> Why use types shorter than u32 on the stack?

Changing to u32 in V2

> Why this union is not const here, since there are no modifications?

Sure

>> +{
>> +	/* RSS Type 4-bit number: 0-9 (above 9 is reserved) */
>> +	return rx_desc->wb.lower.lo_dword.hs_rss.pkt_info & IGC_RSS_TYPE_MASK;
> 
> The most important I wanted to mention: doesn't this function make the
> CPU read the uncached field again, while you could just read it once
> onto the stack and then extract all such data from there?

I really don't think this is an issues here. The igc_adv_rx_desc is only
16 bytes and it should be hot in CPU cache by now.

To avoid the movzx I have changed this to do a u32 read instead.

>> +}
>> +
>> +/* Packet header type identified by hardware (when BIT(11) is zero).
>> + * Even when UDP ports are not part of RSS hash HW still parse and mark UDP bits
>> + */
>> +enum igc_pkt_type_bits {
>> +	IGC_PKT_TYPE_HDR_IPV4	=	BIT(0),
>> +	IGC_PKT_TYPE_HDR_IPV4_WITH_OPT=	BIT(1), /* IPv4 Hdr includes IP options */
>> +	IGC_PKT_TYPE_HDR_IPV6	=	BIT(2),
>> +	IGC_PKT_TYPE_HDR_IPV6_WITH_EXT=	BIT(3), /* IPv6 Hdr includes extensions */
>> +	IGC_PKT_TYPE_HDR_L4_TCP	=	BIT(4),
>> +	IGC_PKT_TYPE_HDR_L4_UDP	=	BIT(5),
>> +	IGC_PKT_TYPE_HDR_L4_SCTP=	BIT(6),
>> +	IGC_PKT_TYPE_HDR_NFS	=	BIT(7),
>> +	/* Above only valid when BIT(11) is zero */
>> +	IGC_PKT_TYPE_L2		=	BIT(11),
>> +	IGC_PKT_TYPE_VLAN	=	BIT(12),
>> +	IGC_PKT_TYPE_MASK	=	0x1FFF, /* 13-bits */
> 
> Also GENMASK().

GENMASK would make more sense here.

>> +};
>> +
>> +/* igc_pkt_type - Rx descriptor Packet type field */
>> +static inline u16 igc_pkt_type(union igc_adv_rx_desc *rx_desc)
> 
> Also short types and consts.
> 

Fixed in V2

>> +{
>> +	u32 data = le32_to_cpu(rx_desc->wb.lower.lo_dword.data);
>> +	/* Packet type is 13-bits - as bits (16:4) in lower.lo_dword*/
>> +	u16 pkt_type = (data >> 4) & IGC_PKT_TYPE_MASK;
> 
> Perfect candidate for FIELD_GET(). No, even for le32_get_bits().

I adjusted this, but I could not find a central define for FIELD_GET 
(but many drivers open code this).

> Also my note above about excessive expensive reads.
> 
>> +
>> +	return pkt_type;
>> +}
>> +
>>   /* Interrupt defines */
>>   #define IGC_START_ITR			648 /* ~6000 ints/sec */
>>   #define IGC_4K_ITR			980
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
>> index 8b572cd2c350..42a072509d2a 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -1677,14 +1677,40 @@ static void igc_rx_checksum(struct igc_ring *ring,
>>   		   le32_to_cpu(rx_desc->wb.upper.status_error));
>>   }
>>   
>> +/* Mapping HW RSS Type to enum pkt_hash_types */
>> +struct igc_rss_type {
>> +	u8 hash_type; /* can contain enum pkt_hash_types */
> 
> Why make a struct for one field? + short type note
> 
>> +} igc_rss_type_table[IGC_RSS_TYPE_MAX_TABLE] = {
>> +	[IGC_RSS_TYPE_NO_HASH].hash_type	  = PKT_HASH_TYPE_L2,
>> +	[IGC_RSS_TYPE_HASH_TCP_IPV4].hash_type	  = PKT_HASH_TYPE_L4,
>> +	[IGC_RSS_TYPE_HASH_IPV4].hash_type	  = PKT_HASH_TYPE_L3,
>> +	[IGC_RSS_TYPE_HASH_TCP_IPV6].hash_type	  = PKT_HASH_TYPE_L4,
>> +	[IGC_RSS_TYPE_HASH_IPV6_EX].hash_type	  = PKT_HASH_TYPE_L3,
>> +	[IGC_RSS_TYPE_HASH_IPV6].hash_type	  = PKT_HASH_TYPE_L3,
>> +	[IGC_RSS_TYPE_HASH_TCP_IPV6_EX].hash_type = PKT_HASH_TYPE_L4,
>> +	[IGC_RSS_TYPE_HASH_UDP_IPV4].hash_type	  = PKT_HASH_TYPE_L4,
>> +	[IGC_RSS_TYPE_HASH_UDP_IPV6].hash_type	  = PKT_HASH_TYPE_L4,
>> +	[IGC_RSS_TYPE_HASH_UDP_IPV6_EX].hash_type = PKT_HASH_TYPE_L4,
>> +	[10].hash_type = PKT_HASH_TYPE_L2, /* RSS Type above 9 "Reserved" by HW */
>> +	[11].hash_type = PKT_HASH_TYPE_L2,
>> +	[12].hash_type = PKT_HASH_TYPE_L2,
>> +	[13].hash_type = PKT_HASH_TYPE_L2,
>> +	[14].hash_type = PKT_HASH_TYPE_L2,
>> +	[15].hash_type = PKT_HASH_TYPE_L2,
> 
> Why define those empty if you could do a bound check in the code
> instead? E.g. `if (unlikely(bigger_than_9)) return PKT_HASH_TYPE_L2`.

Having a branch for this is likely slower.  On godbolt I see that this 
generates suboptimal and larger code.


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
> 
> 	if (!(feature & HASH))
> 		return;
> 
> and -1 indent level?

Usually, yes, I also prefer early return style code.
For one I just followed the existing style.

Second, I tried to code it up, but it looks ugly in this case, as the
variable defines need to get moved outside the if statement.

>> +		u32 rss_hash = le32_to_cpu(rx_desc->wb.lower.hi_dword.rss);
>> +		u8  rss_type = igc_rss_type(rx_desc);
>> +		enum pkt_hash_types hash_type;
>> +
>> +		hash_type = igc_rss_type_table[rss_type].hash_type;
>> +		skb_set_hash(skb, rss_hash, hash_type);
>> +	}
>>   }
> 
> [...]
> 
> Thanks,
> Olek
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
