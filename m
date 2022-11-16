Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6AF62C3F8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Nov 2022 17:21:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58BA060F9F;
	Wed, 16 Nov 2022 16:21:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 58BA060F9F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668615690;
	bh=xUx41D/gxD1N4ChmayFpoIAZcXYgP815ncIZjJIBOjU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WqRVoUZZoceHFwdwap1Wi9Hu3RASHAPYrDbrWv67mQR6QCYbUS9hqGluEb4fI1AO1
	 ZwuJ6XmTI09/rsDPSt0x+HghGyQ3Dkn73z6vTFy0rpVThQ9WGefVdN5fRWCiSRZm5y
	 7WyirpIwgX1CS1zxTrW/rNHdXwhAvyXTbZypman5lynr9van4Fgl4CvQFHDaEj3gRF
	 VV5vObr4aNTnUgpDqvxt5XFLo3nzC03HqFCKOMQ7AxZg8MnBHh/gWHO+yLR/p7bjRh
	 7B5uEOK/opjZbTCrLUUNNFJr8LwiwxdDPfdUFLkAYZX1s6SLApL8Oi+0sHZWgFcRWZ
	 D9MwyaDnK/ePw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OWm5WcFvxEgN; Wed, 16 Nov 2022 16:21:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5548160FAB;
	Wed, 16 Nov 2022 16:21:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5548160FAB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6401F1BF48B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 16:21:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3E0AD81F38
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 16:21:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E0AD81F38
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nyLBFkaA_F9A for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Nov 2022 16:21:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 40D678133D
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com
 [IPv6:2607:f8b0:4864:20::52a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 40D678133D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 16:21:22 +0000 (UTC)
Received: by mail-pg1-x52a.google.com with SMTP id b62so17155523pgc.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 08:21:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=c559sc2jOhM0vrBcTp9Mpp0NMui8sZVfjdQCJ/lgLP8=;
 b=PboLA34ri2+5bO9mPAP5knmM7uHL9a19EOlePmLLeBd7/70qEoIrEPVsDfMh3aQ//3
 jDpYiAXFJVjDSWP7lXOxHazrJ8EQheMerlo6a20hchuJ7HpYH4jlnWC7RWGsOZ8NabXZ
 h2eZVQ5rGOL1dg9Zvcov1oGVcnqaehJ3tVQc45tqqbS3X12TjjASvJaQav3cXFbYXHla
 9qB5SWqETCuZYcSgMF1nJdtw9AYXhrLq1mYpYVAw6ZrBFAD7JnK8WzBFFN3rIzGhhEdu
 ZqYPm+m8e5skCpUGrSiwX2C49Hw/Si2SdPvuPG+jMV5WO/mOsUkJW3aYaHdn1+5H1IR0
 VxQg==
X-Gm-Message-State: ANoB5pmx/FucVTaSdu+OTLilZbhWZH6cmPHl9OvMGTpAHZPqoE338MhJ
 BqAe7Eoe9xc2fCm0+FLGdFI=
X-Google-Smtp-Source: AA0mqf6Ze6pBOTTvGO4TdaAkZUDd5JW5CUaETCWrQYTounopPw69P87KMjSZiFiun7zfH2CzuifGyw==
X-Received: by 2002:a62:3382:0:b0:572:6da6:de57 with SMTP id
 z124-20020a623382000000b005726da6de57mr8778589pfz.30.1668615681399; 
 Wed, 16 Nov 2022 08:21:21 -0800 (PST)
Received: from [192.168.0.128] ([98.97.119.47])
 by smtp.googlemail.com with ESMTPSA id
 c5-20020a634e05000000b0046f7e1ca434sm9914272pgb.0.2022.11.16.08.21.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Nov 2022 08:21:20 -0800 (PST)
Message-ID: <bc3077669c1f3f9bd2aca486dcbea9b508dbf318.camel@gmail.com>
From: Alexander H Duyck <alexander.duyck@gmail.com>
To: Wang Hai <wanghai38@huawei.com>, jesse.brandeburg@intel.com, 
 anthony.l.nguyen@intel.com, baijiaju1990@163.com,
 jeffrey.t.kirsher@intel.com,  davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com
Date: Wed, 16 Nov 2022 08:21:19 -0800
In-Reply-To: <20221115172407.72863-1-wanghai38@huawei.com>
References: <20221115172407.72863-1-wanghai38@huawei.com>
User-Agent: Evolution 3.44.4 (3.44.4-2.fc36) 
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
 :date:message-id:reply-to;
 bh=c559sc2jOhM0vrBcTp9Mpp0NMui8sZVfjdQCJ/lgLP8=;
 b=ELi91KjiC5QJN0McvzHtVelOHgF8KVqnx+G22rwjbtuLT2bJRZrBYdmEE4CRnniwKW
 RFRDbYP51foLBaMP2lNMVm2gt33fmhkfNvFxBQ4m04jH4djWBwh1dir079gK182+AQSS
 QUWE5eTXarA6po+3aZeBIE/LJYeZCzvr54o16gS+r3ZkIGRP0prfgh7LAcwprL4RIHTO
 bYzU1q8q59RH0+HwisesW/rJQq8UPiskCWVV1J+3b4VC5fjy/d46i1PjM2blQpduOouw
 3HbOyKxWGlRoAIpeyf0LPiK5prXE/Cp64pqT7sWqry/xZGeIjK6Ujykxh9er5vqhFMaP
 iddQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=ELi91Kji
Subject: Re: [Intel-wired-lan] [PATCH net] e100: Fix possible use after free
 in e100_xmit_prepare
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2022-11-16 at 01:24 +0800, Wang Hai wrote:
> In e100_xmit_prepare(), if we can't map the skb, then return -ENOMEM, so
> e100_xmit_frame() will return NETDEV_TX_BUSY and the upper layer will
> resend the skb. But the skb is already freed, which will cause UAF bug
> when the upper layer resends the skb.
> 
> Remove the harmful free.
> 
> Fixes: 5e5d49422dfb ("e100: Release skb when DMA mapping is failed in e100_xmit_prepare")
> Signed-off-by: Wang Hai <wanghai38@huawei.com>
> ---
>  drivers/net/ethernet/intel/e100.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e100.c b/drivers/net/ethernet/intel/e100.c
> index 560d1d442232..d3fdc290937f 100644
> --- a/drivers/net/ethernet/intel/e100.c
> +++ b/drivers/net/ethernet/intel/e100.c
> @@ -1741,11 +1741,8 @@ static int e100_xmit_prepare(struct nic *nic, struct cb *cb,
>  	dma_addr = dma_map_single(&nic->pdev->dev, skb->data, skb->len,
>  				  DMA_TO_DEVICE);
>  	/* If we can't map the skb, have the upper layer try later */
> -	if (dma_mapping_error(&nic->pdev->dev, dma_addr)) {
> -		dev_kfree_skb_any(skb);
> -		skb = NULL;
> +	if (dma_mapping_error(&nic->pdev->dev, dma_addr))
>  		return -ENOMEM;
> -	}
>  
>  	/*
>  	 * Use the last 4 bytes of the SKB payload packet as the CRC, used for

I'm surprised the original patch that this essentially reverts was even
accepted.

Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
