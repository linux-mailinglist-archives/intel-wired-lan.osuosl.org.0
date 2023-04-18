Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D506E6418
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Apr 2023 14:46:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 36EAC418B2;
	Tue, 18 Apr 2023 12:46:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 36EAC418B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681821972;
	bh=5YVg4I2RdKuF4ALF9hp+dHvQi4HMr4u3GXEkCwvYbY4=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cAUkdfj9eaiKDbqYJv+QAlnZEOhlsat5c39b+TleIAbpCXDPYOiIlcwQjkG/ko07B
	 nK/G5W98yEcdd7iGn99grxLSUGxCvrfMobqQgy/dZaaKD8Uws/rq4ziMtwWbNv6GZR
	 nA4SwCOPO18GWJ7jbVhD8eBaWhMKzvpvpx7E5bOHxtSIk+XQWAfUjangsD2s2FqRda
	 qlgOlBoeNaaz8Q293DEudgVWBAeSXpXa/3ND8QGt+w17kN3qmIpheB++aQtB4AVwH6
	 KCx6YaQX9mp5fd2Bi8ca8QgOTTCLWbYDgD6mMpAa2LT8lFSh418m6LjO+Lamwy4KbP
	 u7sSokZe9bzJg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 36ng0x14po9G; Tue, 18 Apr 2023 12:46:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D8124091A;
	Tue, 18 Apr 2023 12:46:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D8124091A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BBF171C3BE1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 12:46:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 929C98206C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 12:46:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 929C98206C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 84KuWO0FyEJw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Apr 2023 12:46:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4452B82051
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4452B82051
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 12:46:00 +0000 (UTC)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-488-I9KFgY8mNPOLdDbaUkiiUQ-1; Tue, 18 Apr 2023 08:45:56 -0400
X-MC-Unique: I9KFgY8mNPOLdDbaUkiiUQ-1
Received: by mail-ed1-f72.google.com with SMTP id
 i17-20020a50d751000000b005045c08ca6dso18247460edj.7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 05:45:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681821955; x=1684413955;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=pDXDjF1nYY/KD56jlqYvE6WKgtxK7sp+U3MRycfCfiA=;
 b=B/4mlq5nYYjcaqspi5UHULz3wsUYID7u2Bdlud678ZNU3U+i5d4/gyTTxPI6UzrWZR
 7guG5tu/EEnt/E1W8+CmyOepzxWvCeGUfCPqknHSq1OXHzrKifwCyvsgjj8szy/eg9Hh
 8p4xFtglcnYRBhC3SzN51/qA82ib4AG2GVfp6HiX2WUeMXvWMepfhQhgJ8Dzk7et0SnY
 5u5kVRr14aHFmmtQ8r1t89tB/lUaOEYbI60ZmkeW1/RAzqRfq6VkH2SaxTTQI9Xtnm7K
 ut3W/s6mkaxl9slq6Giz0lYzXQTTf+4e/K8nSj6nrD+MXXqywsW2bBI9yklK4uml2ldZ
 pkKA==
X-Gm-Message-State: AAQBX9dHp42qV/4jA0HxNni9ExYyWJEDqWoMAYmjEn1yorLUidLpdTdw
 te/MTrgUMUncZ4NRrrdEvcSFAzXqQuW9Nm+ayw0N0duH1OqTi6IjExgNPsdNxK0Xy75l2QU0BqV
 NH9g+/riyNFMn9ckZTZ53y1CkASNZUw==
X-Received: by 2002:a17:907:20c8:b0:93c:efaf:ba75 with SMTP id
 qq8-20020a17090720c800b0093cefafba75mr10178458ejb.37.1681821955297; 
 Tue, 18 Apr 2023 05:45:55 -0700 (PDT)
X-Google-Smtp-Source: AKy350aiC5zCA5YAs3FTtyCXVLr/PBTq902GZqsOW+OujaYsI0J5kBFLBO9dijp8pa5nkXMHxAU4EA==
X-Received: by 2002:a17:907:20c8:b0:93c:efaf:ba75 with SMTP id
 qq8-20020a17090720c800b0093cefafba75mr10178419ejb.37.1681821954909; 
 Tue, 18 Apr 2023 05:45:54 -0700 (PDT)
Received: from [192.168.42.222] (194-45-78-10.static.kviknet.net.
 [194.45.78.10]) by smtp.gmail.com with ESMTPSA id
 rx22-20020a1709068e1600b0094f968ecc97sm2304338ejc.13.2023.04.18.05.45.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Apr 2023 05:45:54 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <6b04def5-a3aa-1f77-b29d-bea4845e2678@redhat.com>
Date: Tue, 18 Apr 2023 14:45:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: "Song, Yoong Siang" <yoong.siang.song@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 Stanislav Fomichev <sdf@google.com>, =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vu?=
 =?UTF-8?Q?sen?= <toke@redhat.com>
References: <168174338054.593471.8312147519616671551.stgit@firesoul>
 <168174343294.593471.10523474360770220196.stgit@firesoul>
 <PH0PR11MB5830DD3BA9F6CBDA648F5AF8D89D9@PH0PR11MB5830.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB5830DD3BA9F6CBDA648F5AF8D89D9@PH0PR11MB5830.namprd11.prod.outlook.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681821959;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pDXDjF1nYY/KD56jlqYvE6WKgtxK7sp+U3MRycfCfiA=;
 b=Hv8ZIF3hveDV/bpnO6AVZQwcNYMME5r6VykT1sBlHD8AISp+/3v6BO6uzJXz7I13RAv0NG
 yAeQs1H3cqZpt7Loi5O5gl5CCg908bjfjixeB6ixSMco/I0e3GFIxFXVH2iqzI+rqSe0PO
 8yelFd6uW/WaJQngLRV/VP4Ku8fadhE=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Hv8ZIF3h
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V1 2/5] igc: add igc_xdp_buff
 wrapper for xdp_buff in driver
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
Cc: "xdp-hints@xdp-project.net" <xdp-hints@xdp-project.net>,
 "martin.lau@kernel.org" <martin.lau@kernel.org>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>, "Zaremba,
 Larysa" <larysa.zaremba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "john.fastabend@gmail.com" <john.fastabend@gmail.com>,
 "ast@kernel.org" <ast@kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 brouer@redhat.com, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "hawk@kernel.org" <hawk@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 18/04/2023 06.34, Song, Yoong Siang wrote:
> On Monday, April 17, 2023 10:57 PM, Jesper Dangaard Brouer <brouer@redhat.com> wrote:
>> Driver specific metadata data for XDP-hints kfuncs are propagated via tail
>> extending the struct xdp_buff with a locally scoped driver struct.
>>
>> Zero-Copy AF_XDP/XSK does similar tricks via struct xdp_buff_xsk. This
>> xdp_buff_xsk struct contains a CB area (24 bytes) that can be used for extending
>> the locally scoped driver into. The XSK_CHECK_PRIV_TYPE define catch size
>> violations build time.
>>
> 
> Since the main purpose of this patch is to introduce igc_xdp_buff, and
> you have another two patches for timestamp and hash,
> thus, suggest to move timestamp and hash related code into respective patches.
> 
>> Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
>> ---
>> drivers/net/ethernet/intel/igc/igc.h      |    6 ++++++
>> drivers/net/ethernet/intel/igc/igc_main.c |   30 ++++++++++++++++++++++-------
>> 2 files changed, 29 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc.h
>> b/drivers/net/ethernet/intel/igc/igc.h
>> index f7f9e217e7b4..c609a2e648f8 100644
>> --- a/drivers/net/ethernet/intel/igc/igc.h
>> +++ b/drivers/net/ethernet/intel/igc/igc.h
>> @@ -499,6 +499,12 @@ struct igc_rx_buffer {
>> 	};
>> };
>>
>> +/* context wrapper around xdp_buff to provide access to descriptor
>> +metadata */ struct igc_xdp_buff {
>> +	struct xdp_buff xdp;
>> +	union igc_adv_rx_desc *rx_desc;
> 
> Move rx_desc to 4th patch (Rx hash patch)
> 

Hmm, rx_desc is also needed by 3rd patch (Rx timestamp), so that would 
break...

I can reorder patches, and have "Rx hash patch" come before "Rx 
timestamp" patch.


>> +};
>> +
>> struct igc_q_vector {
>> 	struct igc_adapter *adapter;    /* backlink */
>> 	void __iomem *itr_register;
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
>> b/drivers/net/ethernet/intel/igc/igc_main.c
>> index bfa9768d447f..3a844cf5be3f 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -2236,6 +2236,8 @@ static bool igc_alloc_rx_buffers_zc(struct igc_ring
>> *ring, u16 count)
>> 	if (!count)
>> 		return ok;
>>
>> +	XSK_CHECK_PRIV_TYPE(struct igc_xdp_buff);
>> +
>> 	desc = IGC_RX_DESC(ring, i);
>> 	bi = &ring->rx_buffer_info[i];
>> 	i -= ring->count;
>> @@ -2520,8 +2522,8 @@ static int igc_clean_rx_irq(struct igc_q_vector
>> *q_vector, const int budget)
>> 		union igc_adv_rx_desc *rx_desc;
>> 		struct igc_rx_buffer *rx_buffer;
>> 		unsigned int size, truesize;
>> +		struct igc_xdp_buff ctx;
>> 		ktime_t timestamp = 0;
>> -		struct xdp_buff xdp;
>> 		int pkt_offset = 0;
>> 		void *pktbuf;
>>
>> @@ -2555,13 +2557,14 @@ static int igc_clean_rx_irq(struct igc_q_vector
>> *q_vector, const int budget)
>> 		}
>>
>> 		if (!skb) {
>> -			xdp_init_buff(&xdp, truesize, &rx_ring->xdp_rxq);
>> -			xdp_prepare_buff(&xdp, pktbuf - igc_rx_offset(rx_ring),
>> +			xdp_init_buff(&ctx.xdp, truesize, &rx_ring->xdp_rxq);
>> +			xdp_prepare_buff(&ctx.xdp, pktbuf - igc_rx_offset(rx_ring),
>> 					 igc_rx_offset(rx_ring) + pkt_offset,
>> 					 size, true);
>> -			xdp_buff_clear_frags_flag(&xdp);
>> +			xdp_buff_clear_frags_flag(&ctx.xdp);
>> +			ctx.rx_desc = rx_desc;
> 
> Move rx_desc to 4th patch (Rx hash patch)

Again would break 3rd patch.

> 
>>
>> -			skb = igc_xdp_run_prog(adapter, &xdp);
>> +			skb = igc_xdp_run_prog(adapter, &ctx.xdp);
>> 		}
>>
>> 		if (IS_ERR(skb)) {
>> @@ -2583,9 +2586,9 @@ static int igc_clean_rx_irq(struct igc_q_vector
>> *q_vector, const int budget)
>> 		} else if (skb)
>> 			igc_add_rx_frag(rx_ring, rx_buffer, skb, size);
>> 		else if (ring_uses_build_skb(rx_ring))
>> -			skb = igc_build_skb(rx_ring, rx_buffer, &xdp);
>> +			skb = igc_build_skb(rx_ring, rx_buffer, &ctx.xdp);
>> 		else
>> -			skb = igc_construct_skb(rx_ring, rx_buffer, &xdp,
>> +			skb = igc_construct_skb(rx_ring, rx_buffer, &ctx.xdp,
>> 						timestamp);
>>
>> 		/* exit if we failed to retrieve a buffer */ @@ -2686,6 +2689,15
>> @@ static void igc_dispatch_skb_zc(struct igc_q_vector *q_vector,
>> 	napi_gro_receive(&q_vector->napi, skb);  }
>>
>> +static struct igc_xdp_buff *xsk_buff_to_igc_ctx(struct xdp_buff *xdp) {
>> +	/* xdp_buff pointer used by ZC code path is alloc as xdp_buff_xsk. The
>> +	 * igc_xdp_buff shares its layout with xdp_buff_xsk and private
>> +	 * igc_xdp_buff fields fall into xdp_buff_xsk->cb
>> +	 */
>> +       return (struct igc_xdp_buff *)xdp; }
>> +
> 
> Move xsk_buff_to_igc_ctx to 3th patch (timestamp patch), which is first patch
> adding xdp_metadata_ops support to igc.
> 

Hmm, maybe, but that make the "wrapper" patch incomplete and then it
gets "completed" in the first patch that adds a xdp_metadata_ops.

>> static int igc_clean_rx_irq_zc(struct igc_q_vector *q_vector, const int budget)  {
>> 	struct igc_adapter *adapter = q_vector->adapter; @@ -2704,6 +2716,7
>> @@ static int igc_clean_rx_irq_zc(struct igc_q_vector *q_vector, const int
>> budget)
>> 	while (likely(total_packets < budget)) {
>> 		union igc_adv_rx_desc *desc;
>> 		struct igc_rx_buffer *bi;
>> +		struct igc_xdp_buff *ctx;
>> 		ktime_t timestamp = 0;
>> 		unsigned int size;
>> 		int res;
>> @@ -2721,6 +2734,9 @@ static int igc_clean_rx_irq_zc(struct igc_q_vector
>> *q_vector, const int budget)
>>
>> 		bi = &ring->rx_buffer_info[ntc];
>>
>> +		ctx = xsk_buff_to_igc_ctx(bi->xdp);
> 
> Move xsk_buff_to_igc_ctx to 3th patch (timestamp patch), which is first patch
> adding xdp_metadata_ops support to igc.
>
Sure, but it feels wrong to no "complete" the wrapper work in the
wrapper patch.

>> +		ctx->rx_desc = desc;
> 
> Move rx_desc to 4th patch (Rx hash patch)
> 

I'll reorder patch 3 and 4, else it doesn't make any sense to gradually
introduce the members in wrapper struct igc_xdp_buff.

--Jesper

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
