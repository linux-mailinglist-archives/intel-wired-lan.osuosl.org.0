Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B012B22978
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 16:01:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B5FDC8452C;
	Tue, 12 Aug 2025 14:01:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e_nwUv2WWxpN; Tue, 12 Aug 2025 14:01:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E86C844CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755007277;
	bh=Pk1VMFNYdJbmcn4dNx4VjU8RLaw/eBPOTr8TcwBzuT8=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hxDSY/AzUTQowIb9zwpFgIPGJN97674BdbLRBL80tky1pia9SOtR8+iMqftL/5w17
	 4iTDBNAXgoGlhDDdqccpIa9SWLj0auhTjD+1Jtki7Lw7cYMOh3ZPrION5prJMa6aUG
	 WlInArWmlnpOWF+dxpz1629YuqM3CjA2POHZJqBRV/addQcZNvR9uyJu3LAzta5W41
	 MC8fujDVQmVbHw3EhHsYwgsUAk2VKolVLxugfjPBi/DHx/PrkdJbvvgRDruywj4tIF
	 QpN0zCyanXE/+V/OBSI3yBns0JsXIvRhmL1bLm1UkPHsdPdXYQS1+i5NOlTC1azs5B
	 FUwtbyf9y/VqQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E86C844CE;
	Tue, 12 Aug 2025 14:01:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 37DD6158
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 14:01:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1E1BB41224
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 14:01:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uKXBNhhC2Lqi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 14:01:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B90AC411EA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B90AC411EA
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B90AC411EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 14:01:14 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 129DD61E647BA;
 Tue, 12 Aug 2025 16:00:44 +0200 (CEST)
Message-ID: <1940cd0a-f6c5-47ae-abaf-31a5f3579159@molgen.mpg.de>
Date: Tue, 12 Aug 2025 16:00:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tianyu Xu <xtydtc@gmail.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tianyu Xu <tianyxu@cisco.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Joe Damato <joe@dama.to>
References: <20250812131056.93963-1-tianyxu@cisco.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250812131056.93963-1-tianyxu@cisco.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH v2] igb: Fix NULL pointer dereference
 in ethtool loopback test
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

Dear Tianyu,


Thank you for your patch.

Am 12.08.25 um 15:10 schrieb Tianyu Xu:
> The igb driver currently causes a NULL pointer dereference when executing
> the ethtool loopback test. This occurs because there is no associated

Where is this test located? Or, how do I run the test manually?

> q_vector for the test ring when it is set up, as interrupts are typically
> not added to the test rings.
> 
> Since commit 5ef44b3cb43b removed the napi_id assignment in
> __xdp_rxq_info_reg(), there is no longer a need to pass a napi_id to it.
> Therefore, simply use 0 as the last parameter.
> 
> Fixes: 2c6196013f84 ("igb: Add AF_XDP zero-copy Rx support")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Joe Damato <joe@dama.to>
> Signed-off-by: Tianyu Xu <tianyxu@cisco.com>
> ---
> Thanks to Aleksandr and Joe for your feedback. I have added the Fixes tag
> and formatted the lines to 75 characters based on your comments.
> 
>   drivers/net/ethernet/intel/igb/igb_main.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index a9a7a94ae..453deb6d1 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -4453,8 +4453,7 @@ int igb_setup_rx_resources(struct igb_ring *rx_ring)
>   	if (xdp_rxq_info_is_reg(&rx_ring->xdp_rxq))
>   		xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
>   	res = xdp_rxq_info_reg(&rx_ring->xdp_rxq, rx_ring->netdev,
> -			       rx_ring->queue_index,
> -			       rx_ring->q_vector->napi.napi_id);
> +			       rx_ring->queue_index, 0);
>   	if (res < 0) {
>   		dev_err(dev, "Failed to register xdp_rxq index %u\n",
>   			rx_ring->queue_index);

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
