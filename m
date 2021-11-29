Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 322804619D0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Nov 2021 15:39:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4993402AD;
	Mon, 29 Nov 2021 14:39:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lei0h5cm0oy0; Mon, 29 Nov 2021 14:39:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ADE6040276;
	Mon, 29 Nov 2021 14:39:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 777531BF36F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 14:39:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 64DC740276
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 14:39:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FooGs1RMllwW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Nov 2021 14:39:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9F10F40269
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 14:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1638196748;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=O7S5OjizQijBIczl+/4wBXHSjD2sJgr/PTbq1lX6VZ4=;
 b=TCoA7YA80hmw9WZYfAzAqzGZSTex6KWKrAVmxjsiJSXpGfpP0GpVhBk8hPkLY/Flm/dKYE
 EB98jMTQLTJPxZYUBkPVaOZqqxt5z43jal7ZV9DZn6H6QWH8bgOeieQY0c/XqzNUcM8n+m
 sz/e26dXQ7E70XrRWDGgW9kSnuB9Akg=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-581-kp1n2j2_MH-YDTfv3ctd5Q-1; Mon, 29 Nov 2021 09:39:07 -0500
X-MC-Unique: kp1n2j2_MH-YDTfv3ctd5Q-1
Received: by mail-ed1-f69.google.com with SMTP id
 n11-20020aa7c68b000000b003e7d68e9874so13924946edq.8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 06:39:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:message-id:date:mime-version:user-agent:cc
 :subject:content-language:to:references:in-reply-to
 :content-transfer-encoding;
 bh=O7S5OjizQijBIczl+/4wBXHSjD2sJgr/PTbq1lX6VZ4=;
 b=Uhur8yk8k/Z51VQKgArf3v4U1/1udGZK5ORDWuf5yr5kxwi35NQy/JVnRHkmVB9ybq
 RNqGzf2JRfBztq1BOPaH2jgrPfntSqWtqv96pYLumhNPzTp952yCNjRI56A5MfMK+qM5
 WRlq4k9eHfnMQcaNJLPkj6la4Iihg9yPXHq1ZxGHYDbPq/FlZ/5fiLCRic351JIRBrhR
 yL0YJG/oib1m3YjWWHjhI623xTYQiA965gssloXFC5YCGiNsfy1cL2S5PHyIRvvLdxJY
 R+rwUTNQS2RrTtnb44Fb994PTexCpu+Nn/m5/Sjg5sIoJ699HJuxzfYXfvWXw2fx0EtI
 4sqA==
X-Gm-Message-State: AOAM533sZ0vn4918OFQEKs8m5Bqr9g1h7HE/xg/WNwZ+niL88XcLqpFn
 pCXp4ESXvA2G84+At8HDIQ8QcjpEtTe2ktFYOUeInhHnJG/8XG0JRe7bb/4UJz6MBaq2MKCFVuE
 ctL9qyzH3LzFXjjqCMlxQgLZTMU1KGw==
X-Received: by 2002:a17:907:6e8e:: with SMTP id
 sh14mr60718728ejc.536.1638196745921; 
 Mon, 29 Nov 2021 06:39:05 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx6bdVXynDkMurbo0wdDJkXKq7sUHLsLuYlZSX0wdDkgLTI+lyg0CzaDm0yWoDDUyjO4luUjQ==
X-Received: by 2002:a17:907:6e8e:: with SMTP id
 sh14mr60718710ejc.536.1638196745735; 
 Mon, 29 Nov 2021 06:39:05 -0800 (PST)
Received: from [192.168.2.13] (3-14-107-185.static.kviknet.dk. [185.107.14.3])
 by smtp.gmail.com with ESMTPSA id
 hg19sm7327636ejc.1.2021.11.29.06.39.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 29 Nov 2021 06:39:05 -0800 (PST)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <6de05aea-9cf4-c938-eff2-9e3b138512a4@redhat.com>
Date: Mon, 29 Nov 2021 15:39:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: Alexander Lobakin <alexandr.lobakin@intel.com>
References: <163700856423.565980.10162564921347693758.stgit@firesoul>
 <163700859087.565980.3578855072170209153.stgit@firesoul>
 <20211126161649.151100-1-alexandr.lobakin@intel.com>
In-Reply-To: <20211126161649.151100-1-alexandr.lobakin@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jbrouer@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] igc: enable XDP metadata
 in driver
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
Cc: intel-wired-lan@lists.osuosl.org, bjorn@kernel.org, netdev@vger.kernel.org,
 brouer@redhat.com, Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Daniel Borkmann <borkmann@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 26/11/2021 17.16, Alexander Lobakin wrote:
> From: Jesper Dangaard Brouer <brouer@redhat.com>
> Date: Mon, 15 Nov 2021 21:36:30 +0100
> 
>> Enabling the XDP bpf_prog access to data_meta area is a very small
>> change. Hint passing 'true' to xdp_prepare_buff().
>>
>> The SKB layers can also access data_meta area, which required more
>> driver changes to support. Reviewers, notice the igc driver have two
>> different functions that can create SKBs, depending on driver config.
>>
>> Hint for testers, ethtool priv-flags legacy-rx enables
>> the function igc_construct_skb()
>>
>>   ethtool --set-priv-flags DEV legacy-rx on
>>
>> Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
>> ---
>>   drivers/net/ethernet/intel/igc/igc_main.c |   29 +++++++++++++++++++----------
>>   1 file changed, 19 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
>> index 76b0a7311369..b516f1b301b4 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -1718,24 +1718,26 @@ static void igc_add_rx_frag(struct igc_ring *rx_ring,
>>   
>>   static struct sk_buff *igc_build_skb(struct igc_ring *rx_ring,
>>   				     struct igc_rx_buffer *rx_buffer,
>> -				     union igc_adv_rx_desc *rx_desc,
>> -				     unsigned int size)
>> +				     struct xdp_buff *xdp)
>>   {
>> -	void *va = page_address(rx_buffer->page) + rx_buffer->page_offset;
>> +	unsigned int size = xdp->data_end - xdp->data;
>>   	unsigned int truesize = igc_get_rx_frame_truesize(rx_ring, size);
>> +	unsigned int metasize = xdp->data - xdp->data_meta;
>>   	struct sk_buff *skb;
>>   
>>   	/* prefetch first cache line of first page */
>> -	net_prefetch(va);
>> +	net_prefetch(xdp->data);
> 
> I'd prefer prefetching xdp->data_meta here. GRO layer accesses it.
> Maximum meta size for now is 32, so at least 96 bytes of the frame
> will stil be prefetched.

Prefetch works for "full" cachelines. Intel CPUs often prefect two 
cache-lines, when doing this, thus I guess we still get xdp->data.

I don't mind prefetching xdp->data_meta, but (1) I tried to keep the 
change minimal as current behavior was data area I kept that. (2) 
xdp->data starts on a cacheline and we know NIC hardware have touched 
that, it is not a full-cache-miss due to DDIO/DCA it is known to be in 
L3 cache (gain is around 2-3 ns in my machine for data prefetch).
Given this is only a 2.5 Gbit/s driver/HW I doubt this make any difference.

Tony is it worth resending a V2 of this patch?

>>   
>>   	/* build an skb around the page buffer */
>> -	skb = build_skb(va - IGC_SKB_PAD, truesize);
>> +	skb = build_skb(xdp->data_hard_start, truesize);
>>   	if (unlikely(!skb))
>>   		return NULL;
>>   
>>   	/* update pointers within the skb to store the data */
>> -	skb_reserve(skb, IGC_SKB_PAD);
>> +	skb_reserve(skb, xdp->data - xdp->data_hard_start);
>>   	__skb_put(skb, size);
>> +	if (metasize)
>> +		skb_metadata_set(skb, metasize);
>>   
>>   	igc_rx_buffer_flip(rx_buffer, truesize);
>>   	return skb;
>> @@ -1746,6 +1748,7 @@ static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
>>   					 struct xdp_buff *xdp,
>>   					 ktime_t timestamp)
>>   {
>> +	unsigned int metasize = xdp->data - xdp->data_meta;
>>   	unsigned int size = xdp->data_end - xdp->data;
>>   	unsigned int truesize = igc_get_rx_frame_truesize(rx_ring, size);
>>   	void *va = xdp->data;
>> @@ -1756,7 +1759,7 @@ static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
>>   	net_prefetch(va);
> 
> ...here as well.
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
