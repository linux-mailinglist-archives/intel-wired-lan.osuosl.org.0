Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1635DA14062
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jan 2025 18:10:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BBD8F61145;
	Thu, 16 Jan 2025 17:10:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qi-rsRALdzvL; Thu, 16 Jan 2025 17:10:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC8E0610A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737047449;
	bh=6FutC3X0hdfu7bjmQneXmcvMkqrpcwwErUZ/tyQjmIk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uVDtQKDiyrGL3nwcVKrvcjNTtfUX6YHbNv2/aR4dL60NqIo6iFbW2yDBClN8EJYxd
	 YWRcOS7RQ6qIJiyXJ0XdWG2TdFGIrUfFCzfN5j7f6CoZ+AjhCqIrEHfxBNFIN5Kha9
	 ciYZkfPBGNLRukZcBQy4tooElmXUtbE4QnLRmrjlXQRt/mvWQfjrYP26na5HyopGkQ
	 PlQ+b2tlhk379fRxdJEX4Qvc2JJa1gBbZcV8Rzh9bpS95QHdSgHG7KJtUvvLjQICh7
	 ESIuaZqj8yC5ZDA2SCKbfkxZ0SKA2EbbPy4pXikQKwETGDBFwlJfdzDxXGQdy3T7sT
	 dryJ80tS0Wlcw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC8E0610A6;
	Thu, 16 Jan 2025 17:10:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5390C94B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 17:10:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 268E984C16
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 17:10:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6J3HI4tLf43B for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jan 2025 17:10:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 251C184C13
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 251C184C13
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 251C184C13
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 17:10:45 +0000 (UTC)
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-284-xiLnJ1lNMMKjaySEwhHg1A-1; Thu, 16 Jan 2025 12:10:41 -0500
X-MC-Unique: xiLnJ1lNMMKjaySEwhHg1A-1
X-Mimecast-MFC-AGG-ID: xiLnJ1lNMMKjaySEwhHg1A
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-38639b4f19cso923714f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 09:10:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737047440; x=1737652240;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=6FutC3X0hdfu7bjmQneXmcvMkqrpcwwErUZ/tyQjmIk=;
 b=W66k1ivUNIffz7fsjmXqZHiG3DhTzEo0QoOjEOxpwcFz9S4sHeqg8k9vfysBXY4NoX
 5D6LIuyIrokb7Rj6CksgxnA4M9Ep+FdiWz3+0dku9YGlNvZprCrfob3GPLseSqDNEvGK
 3iDfgnBFNXmlcJPAHpdBw8O/YhzC4ebDFFD8awT+9dfZh3Rz0gVwiYknoXBY24aeFGcf
 JbMWcsYXnawAqEk02k/s0PI1TsFK0TPDW7SDn5ZDDFEk59JeAqIeDpZmPgcdaKE9WD69
 oEPeGfYknFMfuR9tVLpIP3tq+e32E+O6O0/vSPClVV1KnyA9NvSu3X8TXse6zAdfnQ78
 029A==
X-Forwarded-Encrypted: i=1;
 AJvYcCWeoZTFSBabreJ8QfDOvg5b2N9KZshuJEpMYShHnzftgCw7OZhV8cOZotGAQYQEUWARlZIiNXX1Q4XUbypedf4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyAxlwmeNj9zm5m+EoXFgH0dK28lhT/G7lvWEB0uldyC0k60j8G
 BE4EOLcHPnrIMgaTBd/7HYgwyWwfSgTwVjDAttuf4nirUpdo0xlLlplzoDWFbTmQQ4X39acTneo
 IL1IvB8OgrOxFb1/GtNgBLq6PjfHJDSq2bhKQjL6JPzyMv2us5SDEOXevJUjQZBfPCJc=
X-Gm-Gg: ASbGnct8Fp1Y4h8TLiGg1u1bOcj+Au6lBCevuGbJ0lgiN2MU4R6/cfSvBaJYnf5OdBQ
 O1McOl20nNjjFN/PD5qKidE4WrXs1V++jyoW5Wch93lOrfj+XyFuNuOc+JFvF5Pwgc0OEkpXu+x
 yMin7souZXYNaguEN9h7TapeaMP40yPhxVY6SiiT4Y4iGxc9SFnvH79mE7l2m0AT79otXx7C+0b
 UDFgD+NcNrt0VtE41FWHA0WLmtAGpvgmt9mhacckzKwPpLnT3wQDVY=
X-Received: by 2002:a5d:6d02:0:b0:38a:50f7:24fa with SMTP id
 ffacd0b85a97d-38a87357a07mr33378025f8f.54.1737047440106; 
 Thu, 16 Jan 2025 09:10:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG2KCWOgVxUdu2bQSr8F57dq5xQnAExD6XNbyjBd3g+I7aDxl8qlFGrIyoSEPyWZhlI99KwIQ==
X-Received: by 2002:a5d:6d02:0:b0:38a:50f7:24fa with SMTP id
 ffacd0b85a97d-38a87357a07mr33377989f8f.54.1737047439721; 
 Thu, 16 Jan 2025 09:10:39 -0800 (PST)
Received: from [192.168.2.73] ([46.175.183.46])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ab384d2cfc2sm22692466b.82.2025.01.16.09.10.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Jan 2025 09:10:38 -0800 (PST)
Message-ID: <d74ccdf9-a1a4-40b6-8b95-9f3cbe89fb96@redhat.com>
Date: Thu, 16 Jan 2025 18:10:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20250116153908.515848-1-maciej.fijalkowski@intel.com>
 <20250116153908.515848-2-maciej.fijalkowski@intel.com>
From: Petr Oros <poros@redhat.com>
In-Reply-To: <20250116153908.515848-2-maciej.fijalkowski@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: -p3kH4QozgjjTD60VadUi27Kj1rQrY4tuNPKzhL06ig_1737047440
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1737047444;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6FutC3X0hdfu7bjmQneXmcvMkqrpcwwErUZ/tyQjmIk=;
 b=B2ZRKCPpK7oVU/SJrq57K7UCGN24mSRKhnWDnukwEghWBkMRahAK0GTD/hj3Eh5V5EqeSX
 TS4hXmxhYJp7wbL1XEa4NRqwRjXYu1E0jlzc9ayj7sDKEWD5+ipKvp2cLGI1gCFgs7tGAi
 F5ZFDM4y0clh8nXI/qx1HKjF3mp+rt0=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=B2ZRKCPp
Subject: Re: [Intel-wired-lan] [PATCH intel-net 1/3] ice: put Rx buffers
 after being done with current frame
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
Cc: netdev@vger.kernel.org, xudu@redhat.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com, jmaxwell@redhat.com,
 magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 16. 01. 25 16:39, Maciej Fijalkowski wrote:
> Introduce a new helper ice_put_rx_mbuf() that will go through gathered
> frags from current frame and will call ice_put_rx_buf() on them. Current
> logic that was supposed to simplify and optimize the driver where we go
> through a batch of all buffers processed in current NAPI instance turned
> out to be broken for jumbo frames and very heavy load that was coming
> from both multi-thread iperf and nginx/wrk pair between server and
> client. The delay introduced by approach that we are dropping is simply
> too big and we need to take the decision regarding page
> recycling/releasing as quick as we can.
>
> While at it, address an error path of ice_add_xdp_frag() - we were
> missing buffer putting from day 1 there.
>
> As a nice side effect we get rid of annoying and repetetive three-liner:
>
> 	xdp->data = NULL;
> 	rx_ring->first_desc = ntc;
> 	rx_ring->nr_frags = 0;
>
> by embedding it within introduced routine.
>
> Fixes: 1dc1a7e7f410 ("ice: Centrallize Rx buffer recycling")
> Reported-and-tested-by: Xu Du <xudu@redhat.com>
> Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_txrx.c | 67 +++++++++++++----------
>   1 file changed, 38 insertions(+), 29 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
> index 5d2d7736fd5f..501df1bc881d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> @@ -1103,6 +1103,37 @@ ice_put_rx_buf(struct ice_rx_ring *rx_ring, struct ice_rx_buf *rx_buf)
>   	rx_buf->page = NULL;
>   }
>   
> +static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
> +			    u32 *xdp_xmit)
> +{
> +	u32 nr_frags = rx_ring->nr_frags + 1;
> +	u32 idx = rx_ring->first_desc;
> +	u32 cnt = rx_ring->count;
> +	struct ice_rx_buf *buf;
> +
> +	for (int i = 0; i < nr_frags; i++) {
> +		buf = &rx_ring->rx_buf[idx];
> +
> +		if (buf->act & (ICE_XDP_TX | ICE_XDP_REDIR)) {
> +			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
> +			*xdp_xmit |= buf->act;
> +		} else if (buf->act & ICE_XDP_CONSUMED) {
> +			buf->pagecnt_bias++;
> +		} else if (buf->act == ICE_XDP_PASS) {
> +			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
> +		}
> +
> +		ice_put_rx_buf(rx_ring, buf);
> +
> +		if (++idx == cnt)
> +			idx = 0;
> +	}
> +
> +	xdp->data = NULL;
> +	rx_ring->first_desc = ntc;
ntc is not delared in this scope
> +	rx_ring->nr_frags = 0;
> +}
> +
>   /**
>    * ice_clean_rx_irq - Clean completed descriptors from Rx ring - bounce buf
>    * @rx_ring: Rx descriptor ring to transact packets on
> @@ -1120,7 +1151,6 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
>   	unsigned int total_rx_bytes = 0, total_rx_pkts = 0;
>   	unsigned int offset = rx_ring->rx_offset;
>   	struct xdp_buff *xdp = &rx_ring->xdp;
> -	u32 cached_ntc = rx_ring->first_desc;
>   	struct ice_tx_ring *xdp_ring = NULL;
>   	struct bpf_prog *xdp_prog = NULL;
>   	u32 ntc = rx_ring->next_to_clean;
> @@ -1128,7 +1158,6 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
>   	u32 xdp_xmit = 0;
>   	u32 cached_ntu;
>   	bool failure;
> -	u32 first;
>   
>   	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
>   	if (xdp_prog) {
> @@ -1190,6 +1219,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
>   			xdp_prepare_buff(xdp, hard_start, offset, size, !!offset);
>   			xdp_buff_clear_frags_flag(xdp);
>   		} else if (ice_add_xdp_frag(rx_ring, xdp, rx_buf, size)) {
> +			ice_put_rx_mbuf(rx_ring, xdp, NULL);
>   			break;
>   		}
>   		if (++ntc == cnt)
> @@ -1205,9 +1235,8 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
>   		total_rx_bytes += xdp_get_buff_len(xdp);
>   		total_rx_pkts++;
>   
> -		xdp->data = NULL;
> -		rx_ring->first_desc = ntc;
> -		rx_ring->nr_frags = 0;
> +		ice_put_rx_mbuf(rx_ring, xdp, &xdp_xmit);
> +
>   		continue;
>   construct_skb:
>   		if (likely(ice_ring_uses_build_skb(rx_ring)))
> @@ -1221,14 +1250,11 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
>   			if (unlikely(xdp_buff_has_frags(xdp)))
>   				ice_set_rx_bufs_act(xdp, rx_ring,
>   						    ICE_XDP_CONSUMED);
> -			xdp->data = NULL;
> -			rx_ring->first_desc = ntc;
> -			rx_ring->nr_frags = 0;
> -			break;
>   		}
> -		xdp->data = NULL;
> -		rx_ring->first_desc = ntc;
> -		rx_ring->nr_frags = 0;
> +		ice_put_rx_mbuf(rx_ring, xdp, &xdp_xmit);
> +
> +		if (!skb)
> +			break;
>   
>   		stat_err_bits = BIT(ICE_RX_FLEX_DESC_STATUS0_RXE_S);
>   		if (unlikely(ice_test_staterr(rx_desc->wb.status_error0,
> @@ -1257,23 +1283,6 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
>   		total_rx_pkts++;
>   	}
>   
> -	first = rx_ring->first_desc;
> -	while (cached_ntc != first) {
> -		struct ice_rx_buf *buf = &rx_ring->rx_buf[cached_ntc];
> -
> -		if (buf->act & (ICE_XDP_TX | ICE_XDP_REDIR)) {
> -			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
> -			xdp_xmit |= buf->act;
> -		} else if (buf->act & ICE_XDP_CONSUMED) {
> -			buf->pagecnt_bias++;
> -		} else if (buf->act == ICE_XDP_PASS) {
> -			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
> -		}
> -
> -		ice_put_rx_buf(rx_ring, buf);
> -		if (++cached_ntc >= cnt)
> -			cached_ntc = 0;
> -	}
>   	rx_ring->next_to_clean = ntc;
>   	/* return up to cleaned_count buffers to hardware */
>   	failure = ice_alloc_rx_bufs(rx_ring, ICE_RX_DESC_UNUSED(rx_ring));

