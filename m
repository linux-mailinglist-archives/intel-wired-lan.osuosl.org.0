Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A7946E409
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Dec 2021 09:20:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB910607EA;
	Thu,  9 Dec 2021 08:20:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3NK5e8WV94nU; Thu,  9 Dec 2021 08:20:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A5B06606D6;
	Thu,  9 Dec 2021 08:20:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9BC321BF578
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Dec 2021 08:19:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7E45B606D6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Dec 2021 08:19:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EdWoXTmglZtw for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Dec 2021 08:19:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BDAAD60651
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Dec 2021 08:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639037994;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rEpawBZHKqDeDQKo/yN12N0IK537hgmoTf00FptBiYQ=;
 b=jWRwL24iXXXjNCIZ/8165HENs8a/z8hQXVjyn0ZAqlbeFo94lvsywdvRFgHDvk7g13j7Lp
 IsENhxznay+dGVhuJzGrK3Cm7+aXD+/3kjEWjFzBhNndOmRxvDlKOSl+iEwd0mJo0SW1CC
 wMde50UuzIHP3+H/2JG5Sb/PiOtKOZE=
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-175-8pFdqE8QPqChMqpMVxX5Mg-1; Thu, 09 Dec 2021 03:19:51 -0500
X-MC-Unique: 8pFdqE8QPqChMqpMVxX5Mg-1
Received: by mail-lf1-f69.google.com with SMTP id
 k32-20020a0565123da000b0041643c6a467so2332040lfv.5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 09 Dec 2021 00:19:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:message-id:date:mime-version:user-agent:cc
 :subject:content-language:to:references:in-reply-to
 :content-transfer-encoding;
 bh=rEpawBZHKqDeDQKo/yN12N0IK537hgmoTf00FptBiYQ=;
 b=MjDcVxRAjEpDKVQPRxdN2+DXqTnY+pZD/oO8h/bXklNZmX1kaw3QYBAD6XxjX6baSn
 ojYJ46owWv5MtnUC7eEMHmRoUsAbuaswaa8pw7sLEUkskb7KNy+OCo5Oa1HGGSS1iUC/
 P8Wno3Naw6Rm6G/t3bI8cKDGI2bEt4fjsrwe8HDR+BTsViERgZDIVZZsvT5i53lC0HqF
 W10epZM6mhEMtvTipgVRXFqp/t7RbneTj8REO/LoKHMOMulIMh6oz0D0ePgB2qPfIpR9
 TlbOIIMDx0Ji/47K3q11zisRLV6XNe0erhb3gXmHYWOhjD8BRksznGmsA+GRWi3SsTVy
 nhuQ==
X-Gm-Message-State: AOAM530hFvPQJzhvKLrfWD7F8lU5EjGEmP+LYkiCUP+trXgnW65QMXjH
 cMf1zFfAWG9co1eb64iwxcO4tFnf7AzFhN8gP2MZ9KX57tzYkTAddhjSOdNFPsCLda3sQkCqXYK
 c2ypJarYGikSQhwWW043lvaf5a0Ok/g==
X-Received: by 2002:a05:6512:3081:: with SMTP id
 z1mr4632999lfd.583.1639037989720; 
 Thu, 09 Dec 2021 00:19:49 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyS/NhDYClzEMqPHgcZJoc8Qn3jO1V0yHANyUzHNzpfzXYHvvQ5/cG/fdFk6UVQADSQjn3bhg==
X-Received: by 2002:a05:6512:3081:: with SMTP id
 z1mr4632963lfd.583.1639037989444; 
 Thu, 09 Dec 2021 00:19:49 -0800 (PST)
Received: from [192.168.0.50] (87-59-106-155-cable.dk.customer.tdc.net.
 [87.59.106.155])
 by smtp.gmail.com with ESMTPSA id m10sm527889lji.11.2021.12.09.00.19.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Dec 2021 00:19:48 -0800 (PST)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <da317f39-8679-96f7-ec6f-309216b02f33@redhat.com>
Date: Thu, 9 Dec 2021 09:19:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: Alexander Lobakin <alexandr.lobakin@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20211208140702.642741-1-alexandr.lobakin@intel.com>
 <20211208140702.642741-2-alexandr.lobakin@intel.com>
In-Reply-To: <20211208140702.642741-2-alexandr.lobakin@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jbrouer@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v4 net-next 1/9] i40e: don't reserve
 excessive XDP_PACKET_HEADROOM on XSK Rx to skb
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
Cc: Song Liu <songliubraving@fb.com>, Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
 Martin KaFai Lau <kafai@fb.com>, John Fastabend <john.fastabend@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, netdev@vger.kernel.org,
 brouer@redhat.com, KP Singh <kpsingh@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 08/12/2021 15.06, Alexander Lobakin wrote:
> {__,}napi_alloc_skb() allocates and reserves additional NET_SKB_PAD
> + NET_IP_ALIGN for any skb.
> OTOH, i40e_construct_skb_zc() currently allocates and reserves
> additional `xdp->data - xdp->data_hard_start`, which is
> XDP_PACKET_HEADROOM for XSK frames.
> There's no need for that at all as the frame is post-XDP and will
> go only to the networking stack core.

I disagree with this assumption, that headroom is not needed by netstack.
Why "no need for that at all" for netstack?

Having headroom is important for netstack in general.  When packet will 
grow we avoid realloc of SKB.  Use-case could also be cpumap or veth 
redirect, or XDP-generic, that expect this headroom.


> Pass the size of the actual data only to __napi_alloc_skb() and
> don't reserve anything. This will give enough headroom for stack
> processing.
> 
> Fixes: 0a714186d3c0 ("i40e: add AF_XDP zero-copy Rx support")
> Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_xsk.c | 4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> index f08d19b8c554..9564906b7da8 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> @@ -245,13 +245,11 @@ static struct sk_buff *i40e_construct_skb_zc(struct i40e_ring *rx_ring,
>   	struct sk_buff *skb;
>   
>   	/* allocate a skb to store the frags */
> -	skb = __napi_alloc_skb(&rx_ring->q_vector->napi,
> -			       xdp->data_end - xdp->data_hard_start,
> +	skb = __napi_alloc_skb(&rx_ring->q_vector->napi, datasize,
>   			       GFP_ATOMIC | __GFP_NOWARN);
>   	if (unlikely(!skb))
>   		goto out;
>   
> -	skb_reserve(skb, xdp->data - xdp->data_hard_start);
>   	memcpy(__skb_put(skb, datasize), xdp->data, datasize);
>   	if (metasize)
>   		skb_metadata_set(skb, metasize);
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
