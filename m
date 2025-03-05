Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD7EA50BFF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Mar 2025 20:56:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 834D14094F;
	Wed,  5 Mar 2025 19:56:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id quublwFi6H0B; Wed,  5 Mar 2025 19:56:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 74F4E40953
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741204575;
	bh=x0KQuzyFQUEThFLdYlVvZUJ1cH4hBNZAmoJdDiFksag=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=M2IPo/8HdinVz7BNirpxE/cSR23Sgp965KXgEPSe2CZQCxykb8P5cnQjDQlFpiRcC
	 fygc0dvSMgIzXxv2nRR4s/Lf3fWR2tfHbojUx/AkAsBOtLCSTtJ1V1wXda7tYpLwPl
	 fVM9c5P/Uy58JKoGPkkrwLr9VcmhLwyW1X9W5avli5QyFSd5LGb0+0Uv2pX1XjTefz
	 L9I7/R2saVvYijW90U1fmInvN7D4bFth7CiREtBhbwsGl3aa5EVoVcNIpykCU7dT2Z
	 zo0ARUrOqUx0Utyq1RFG8MSK7pI3imSl2416U+VAVRxy5jdV9oPcx4HvIYQlJic757
	 9GeNSC0xy5KhQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 74F4E40953;
	Wed,  5 Mar 2025 19:56:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id B37AA194
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 19:56:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8D5AA409FD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 19:56:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ocglo1LZRkad for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Mar 2025 19:56:11 +0000 (UTC)
X-Greylist: delayed 2406 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 05 Mar 2025 19:56:11 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 733EC401FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 733EC401FB
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=81.19.149.121;
 helo=mx11lb.world4you.com; envelope-from=gerhard@engleder-embedded.com;
 receiver=<UNKNOWN> 
Received: from mx11lb.world4you.com (mx11lb.world4you.com [81.19.149.121])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 733EC401FB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 19:56:11 +0000 (UTC)
Received: from [80.121.79.4] (helo=[10.0.0.160])
 by mx11lb.world4you.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.97.1)
 (envelope-from <gerhard@engleder-embedded.com>)
 id 1tpuDg-000000006hj-2m9f; Wed, 05 Mar 2025 20:15:53 +0100
Message-ID: <c0adcf60-4fb5-411f-84ef-e409cecf8a75@engleder-embedded.com>
Date: Wed, 5 Mar 2025 20:15:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Joe Damato <jdamato@fastly.com>
Cc: vitaly.lifshits@intel.com, avigailx.dahan@intel.com,
 anthony.l.nguyen@intel.com, stable@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>,
 "open list:XDP (eXpress Data Path)" <bpf@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>, netdev@vger.kernel.org
References: <20250305180901.128286-1-jdamato@fastly.com>
Content-Language: en-US
From: Gerhard Engleder <gerhard@engleder-embedded.com>
In-Reply-To: <20250305180901.128286-1-jdamato@fastly.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-AV-Do-Run: Yes
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=engleder-embedded.com; s=dkim11; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x0KQuzyFQUEThFLdYlVvZUJ1cH4hBNZAmoJdDiFksag=; b=RI+/h5mlwDs65E0J/YyCgTt05p
 a//6ia9q7THHUJjoOvsmkpQr52QzRjnYVtgNBGH+dTSvVXju2HjaUP30mnI4VLvlMfrNn9FnnhTmr
 +tv+B9/4GtcBM88IRfc6S0l7fbJXX/wnygN3l0PkoOx7ZlndkhxJAnvKBkjWP4Ckx3yk=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=engleder-embedded.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=engleder-embedded.com header.i=@engleder-embedded.com
 header.a=rsa-sha256 header.s=dkim11 header.b=RI+/h5ml
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] igc: Fix XSK queue NAPI ID
 mapping
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

On 05.03.25 19:09, Joe Damato wrote:
> In commit b65969856d4f ("igc: Link queues to NAPI instances"), the XSK
> queues were incorrectly unmapped from their NAPI instances. After
> discussion on the mailing list and the introduction of a test to codify
> the expected behavior, we can see that the unmapping causes the
> check_xsk test to fail:
> 
> NETIF=enp86s0 ./tools/testing/selftests/drivers/net/queues.py
> 
> [...]
>    # Check|     ksft_eq(q.get('xsk', None), {},
>    # Check failed None != {} xsk attr on queue we configured
>    not ok 4 queues.check_xsk
> 
> After this commit, the test passes:
> 
>    ok 4 queues.check_xsk
> 
> Note that the test itself is only in net-next, so I tested this change
> by applying it to my local net-next tree, booting, and running the test.
> 
> Cc: stable@vger.kernel.org
> Fixes: b65969856d4f ("igc: Link queues to NAPI instances")
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_xdp.c | 2 --
>   1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.c b/drivers/net/ethernet/intel/igc/igc_xdp.c
> index 13bbd3346e01..869815f48ac1 100644
> --- a/drivers/net/ethernet/intel/igc/igc_xdp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_xdp.c
> @@ -86,7 +86,6 @@ static int igc_xdp_enable_pool(struct igc_adapter *adapter,
>   		napi_disable(napi);
>   	}
>   
> -	igc_set_queue_napi(adapter, queue_id, NULL);
>   	set_bit(IGC_RING_FLAG_AF_XDP_ZC, &rx_ring->flags);
>   	set_bit(IGC_RING_FLAG_AF_XDP_ZC, &tx_ring->flags);
>   
> @@ -136,7 +135,6 @@ static int igc_xdp_disable_pool(struct igc_adapter *adapter, u16 queue_id)
>   	xsk_pool_dma_unmap(pool, IGC_RX_DMA_ATTR);
>   	clear_bit(IGC_RING_FLAG_AF_XDP_ZC, &rx_ring->flags);
>   	clear_bit(IGC_RING_FLAG_AF_XDP_ZC, &tx_ring->flags);
> -	igc_set_queue_napi(adapter, queue_id, napi);
>   
>   	if (needs_reset) {
>   		napi_enable(napi);
> 
> base-commit: 3c9231ea6497dfc50ac0ef69fff484da27d0df66

igc_set_queue_napi() could be made static as it only used within
igc_main.c after this change.

Reviewed-by: Gerhard Engleder <gerhard@engleder-embedded.com>
