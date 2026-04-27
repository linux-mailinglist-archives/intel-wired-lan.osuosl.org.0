Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kMmaKcZ672kmBwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 17:03:34 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF4D474D68
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 17:03:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C00140317;
	Mon, 27 Apr 2026 15:03:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xc4VB0m7WWWJ; Mon, 27 Apr 2026 15:03:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA11240318
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777302205;
	bh=sgDDR3RT0i7W5RIjv/G2UWsqfESThYwqnRRVM1oJhgE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PBiKpLLPJAD4SQ0aDKO27p0OJjZOoxq+ScS5nK4Uu5j/K+oNzp5iY3MysVELd0FRS
	 S8OlVZPm5KWr4pRN8p9bACClB1savdm8ex+aTdvDekQunFa5YhT/O9nfJ2TDF/YGk2
	 +BegNedd8B9khqoWoOpZXVDLfVVNW74iy4cTr6j/ypL/oU1dAHqujhlc359jT7Xtx8
	 +0B5fh3wqH3MeCXVUFKTpDJUzbBMslAHA7g2X4rxO2ks3lipS3rLXapsuUEmOUVIgR
	 qNBE8ktSwYWNfSdo4W/bfzi89/+CxfexmkXvx/nb+2Op3B4U5AxkKXTv7rjoVzhGz6
	 05jqG9j6J/CCw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA11240318;
	Mon, 27 Apr 2026 15:03:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 62FEB1B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 15:03:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4510780E15
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 15:03:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NeRa8Z2zzgaV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Apr 2026 15:03:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1129; helo=mail-yw1-x1129.google.com;
 envelope-from=tactii@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8513680E0D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8513680E0D
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com
 [IPv6:2607:f8b0:4864:20::1129])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8513680E0D
 for <intel-wired-lan@osuosl.org>; Mon, 27 Apr 2026 15:03:19 +0000 (UTC)
Received: by mail-yw1-x1129.google.com with SMTP id
 00721157ae682-7a469383e0bso81683277b3.2
 for <intel-wired-lan@osuosl.org>; Mon, 27 Apr 2026 08:03:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777302198; x=1777906998;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=sgDDR3RT0i7W5RIjv/G2UWsqfESThYwqnRRVM1oJhgE=;
 b=omu4mWzH4h7kkHtgPMMObDiovDYQwy7Bxv2EN7w1OZhJ0AqecsuMuBU9XXjrYZFJTS
 ldCQSmk55g0Vmpm4K8Oh2GX4M2v/6F+xxWoHNr7xYO0QeXtm2sDs3pnQSHSGD+38CR9P
 Rvo8WnDVTaHkXC99mjZ3+kCn55MANQKtfOABKiSCI+tM3ModTqDrGoJbu7lnnJVvQ5dS
 YijI7sbrK3Hjgxxn9A0FUsANSN/jul1brnsmGCQSQuowPhiEmEj/NtrG43pAVuegdcqZ
 +ASHPPSdWW4yyIDMZAtaiWQpsWaViP/yh1C0h/obENytwQFRf0sm7cDZl4T3PeoDZDuV
 caKQ==
X-Gm-Message-State: AOJu0YyVWwfRygljUt7k6UpgBzvldKivPFC3hqAMa8WEk1E0MYjL0ztP
 SaISArXXu+2pQxZeYbOZDBwanz4roPYSyG2duRu++uRoLpJNORVufbmE
X-Gm-Gg: AeBDiesc0z5LwmvylELx9AtuVspDafQ9MV1TqkWBEZe2MgPCkUDfZ2zNksXt9JpRIzg
 jIH1t3E2fAEj0a5cq52Di5clXt2s2odmsVTwrAZCFdVkxJQCMASGkF3CzPq95qFRo+byHo2PbFu
 F1ib+dMeRn6pD5lUHB8Rb3Z2EpaOtqF/YX8gLoocgXS8VVWA9FGD96qBFnpF8TVZ0jXHqinJkT6
 Ft0dsJC0rufRJEvsjBJLT6YbZ9o3SUfoP9Y+gMznsYvSp+Fuih5GBZDQdKQO4C34ZJn/z4g1bG/
 D4zP+EkR59xWmtUCowQeZ9pEH51isfO5zWDG0MktiKEK5vnkoJrWBtVUgq6IsdqLgluKzOXtESq
 BBERQJSYi8BsZEgJvk/UBSkBcvPZT8YpDATbi9aCSlrfvXSWnnDZgdWc3n9gQyztIeGjJnSkzgO
 w1oD5GoJhJ377Hxjwkztn9GdlIo180hxGvNLnbt8rCx3pIaFEtQfKZ+xxc2Hg3GWRCkRRhDYO7z
 dQppw==
X-Received: by 2002:a05:690c:348a:b0:7ba:f414:cd2d with SMTP id
 00721157ae682-7baf414d25bmr324404017b3.50.1777302197642; 
 Mon, 27 Apr 2026 08:03:17 -0700 (PDT)
Received: from ?IPV6:2600:6c5c:6b00:ba4:9e82:4279:45e0:a728?
 ([2600:6c5c:6b00:ba4:9e82:4279:45e0:a728])
 by smtp.gmail.com with ESMTPSA id
 00721157ae682-7baf5015fcasm94919877b3.24.2026.04.27.08.03.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Apr 2026 08:03:17 -0700 (PDT)
Message-ID: <dcd188ed-4808-44a6-a1cb-f0460066b06a@gmail.com>
Date: Mon, 27 Apr 2026 11:03:15 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: intel-wired-lan@osuosl.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20260427141227.19965-1-tactii@gmail.com>
 <eb6f6dbe-6d77-46cb-8abe-25d959fbf36c@molgen.mpg.de>
Content-Language: en-US
From: Matt Vollrath <tactii@gmail.com>
In-Reply-To: <eb6f6dbe-6d77-46cb-8abe-25d959fbf36c@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1777302198; x=1777906998; darn=osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=sgDDR3RT0i7W5RIjv/G2UWsqfESThYwqnRRVM1oJhgE=;
 b=rthxpkjGikyKw2WUGUEaKl2hViNVUPNQxODhAoiuG/Je/oN1gZNNstWX05WuyM+M4o
 Tpq94mLq9DJkG+1JOXorLPcQjSlTo9/8mS/nG64hX/1hD/L8ua+RjRTRJ3WTyFIx5prW
 uWuCE1gtjHDWonRI3ONpJhwgjBL6Sbgoe8IdhrB+T56RzMoHPva5gES88ZUH+jEwHaHi
 HoHk2iflLyD40UM88ergUlepN5YSj1YSar9+Oww8niijtTHCJW17e0gCfK5YtWl6Xo7Y
 Li3YyqfaBhVlkGhOyYVYjwy5fuAYxOiqPKO1Jfe3XFNeuw432Dpuz6ONTpYQJh3GJ0Ah
 frOA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=rthxpkjG
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] e1000e: Avoid DMA
 re-mapping on RX copybreak
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
X-Rspamd-Queue-Id: 4AF4D474D68
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.61 / 15.00];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:pmenzel@molgen.mpg.de,m:intel-wired-lan@osuosl.org,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[tactii@gmail.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[tactii@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

On 4/27/26 10:20, Paul Menzel wrote:
> Dear Matt,
> 
> 
> Thank you for your patch.
> 
> Am 27.04.26 um 16:12 schrieb Matt Vollrath:
>> This patch factors out DMA re-mapping for skbs which were recycled in
>> the RX path due to copybreak or errors. There is only one path out of
>> the e1000_clean_rx_irq() loop where the skb is consumed and DMA needs
>> to be re-mapped, so don't unmap it before checking the conditions.
>>
>> The buffer allocation loop is adjusted to not assume that DMA is
>> unmapped, handling mapping errors gracefully.
>>
>> On systems with IOMMU enabled, the cost of re-mapping DMA is greater
>> than the cost of copying data out of the ring buffer. When I use this
>> patch and configure e1000e with copybreak=2048, my system with IOMMU
>> completes RX twice as fast under load.
> 
> It’d be great if you could document the benchmark, and described your system and shared the numbers.
> 
>> The kludge of unconditional unmapping has existed since this driver was
>> introduced in 2007, inherited from the e1000 driver which has since
>> factored it out. IOMMU tech was new at the time.
> 
> Please share the commit factoring it out.
> 
> Also, what about systems where the IOMMU is disabled. (I think that is possible.)

Thanks Paul, I'll put in some benchmark details and cite the history.

At a glance, the performance impact on IOMMU-disabled or passthrough
was marginal.

I'll also wait until tomorrow morning to post v3, jumped the gun this
morning. No more revisions before breakfast!

> 
>> Tested on an I218-V.
>>
>> Assisted-by: Claude:claude-4-7-opus
>> Signed-off-by: Matt Vollrath <tactii@gmail.com>
>> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> ---
>> v2:
>> * proofread description with Aleksandr
>> ---
>>   drivers/net/ethernet/intel/e1000e/netdev.c | 34 +++++++++++++++-------
>>   1 file changed, 23 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
>> index 9befdacd6730..b1d6119171df 100644
>> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
>> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
>> @@ -663,6 +663,8 @@ static void e1000_alloc_rx_buffers(struct e1000_ring *rx_ring,
>>           skb = buffer_info->skb;
>>           if (skb) {
>>               skb_trim(skb, 0);
>> +            if (likely(buffer_info->dma))
>> +                goto write_desc;
>>               goto map_skb;
>>           }
>> @@ -680,10 +682,12 @@ static void e1000_alloc_rx_buffers(struct e1000_ring *rx_ring,
>>                             DMA_FROM_DEVICE);
>>           if (dma_mapping_error(&pdev->dev, buffer_info->dma)) {
>>               dev_err(&pdev->dev, "Rx DMA map failed\n");
>> +            buffer_info->dma = 0;
>>               adapter->rx_dma_failed++;
>>               break;
>>           }
>> +write_desc:
>>           rx_desc = E1000_RX_DESC_EXT(*rx_ring, i);
>>           rx_desc->read.buffer_addr = cpu_to_le64(buffer_info->dma);
>> @@ -941,7 +945,6 @@ static bool e1000_clean_rx_irq(struct e1000_ring *rx_ring, int *work_done,
>>           dma_rmb();    /* read descriptor and rx_buffer_info after status DD */
>>           skb = buffer_info->skb;
>> -        buffer_info->skb = NULL;
>>           prefetch(skb->data - NET_IP_ALIGN);
>> @@ -955,9 +958,6 @@ static bool e1000_clean_rx_irq(struct e1000_ring *rx_ring, int *work_done,
>>           cleaned = true;
>>           cleaned_count++;
>> -        dma_unmap_single(&pdev->dev, buffer_info->dma,
>> -                 adapter->rx_buffer_len, DMA_FROM_DEVICE);
>> -        buffer_info->dma = 0;
>>           length = le16_to_cpu(rx_desc->wb.upper.length);
>> @@ -973,8 +973,6 @@ static bool e1000_clean_rx_irq(struct e1000_ring *rx_ring, int *work_done,
>>           if (adapter->flags2 & FLAG2_IS_DISCARDING) {
>>               /* All receives must fit into a single buffer */
>>               e_dbg("Receive packet consumed multiple buffers\n");
>> -            /* recycle */
>> -            buffer_info->skb = skb;
>>               if (staterr & E1000_RXD_STAT_EOP)
>>                   adapter->flags2 &= ~FLAG2_IS_DISCARDING;
>>               goto next_desc;
>> @@ -982,8 +980,6 @@ static bool e1000_clean_rx_irq(struct e1000_ring *rx_ring, int *work_done,
>>           if (unlikely((staterr & E1000_RXDEXT_ERR_FRAME_ERR_MASK) &&
>>                    !(netdev->features & NETIF_F_RXALL))) {
>> -            /* recycle */
>> -            buffer_info->skb = skb;
>>               goto next_desc;
>>           }
>> @@ -1010,19 +1006,35 @@ static bool e1000_clean_rx_irq(struct e1000_ring *rx_ring, int *work_done,
>>               struct sk_buff *new_skb =
>>                   napi_alloc_skb(&adapter->napi, length);
>>               if (new_skb) {
>> +                dma_sync_single_for_cpu(&pdev->dev,
>> +                            buffer_info->dma,
>> +                            adapter->rx_buffer_len,
>> +                            DMA_FROM_DEVICE);
>>                   skb_copy_to_linear_data_offset(new_skb,
>>                                      -NET_IP_ALIGN,
>>                                      (skb->data -
>>                                   NET_IP_ALIGN),
>>                                      (length +
>>                                   NET_IP_ALIGN));
>> -                /* save the skb in buffer_info as good */
>> -                buffer_info->skb = skb;
>> +                dma_sync_single_for_device(&pdev->dev,
>> +                               buffer_info->dma,
>> +                               adapter->rx_buffer_len,
>> +                               DMA_FROM_DEVICE);
>>                   skb = new_skb;
>>               }
>>               /* else just continue with the old one */
>>           }
>> -        /* end copybreak code */
>> +
>> +        /* If skb was not replaced by copybreak, we are consuming
>> +         * the original buffer and must release the DMA mapping.
>> +         */
>> +        if (skb == buffer_info->skb) {
>> +            buffer_info->skb = NULL;
>> +            dma_unmap_single(&pdev->dev, buffer_info->dma,
>> +                     adapter->rx_buffer_len,
>> +                     DMA_FROM_DEVICE);
>> +            buffer_info->dma = 0;
>> +        }
>>           skb_put(skb, length);
>>           /* Receive Checksum Offload */
> 
> 
> Kind regards,
> 
> Paul

