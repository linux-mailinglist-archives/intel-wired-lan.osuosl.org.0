Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4324EDE7D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Mar 2022 18:15:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 27D96840C3;
	Thu, 31 Mar 2022 16:14:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w4wbsGO9y2JW; Thu, 31 Mar 2022 16:14:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1DD8E840C1;
	Thu, 31 Mar 2022 16:14:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E34511BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 16:14:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D2FB9416BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 16:14:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new); dkim=neutral
 reason="invalid (public key: invalid data)" header.d=pensando.io
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o0FTeEF-diS1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Mar 2022 16:14:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com
 [IPv6:2607:f8b0:4864:20::434])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C8648415DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 16:14:50 +0000 (UTC)
Received: by mail-pf1-x434.google.com with SMTP id s8so22503476pfk.12
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 09:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pensando.io; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=nzdRKNhSadAGU2/1+9CJCIsH9iz4xNg93BLTCvdABBQ=;
 b=kwvMVzfuXIcvvzsQ/j5YgQYI3vhnY5RbNuMVIycbxZO4sjXpzZJouBZuCvbw4DeauP
 K7Q5Aqxhf1nkdiGW4OKzEmdc6mjnqw9vNNc9z1wnxpGnRMbC6BkFvRSwC7bM203EX+Oj
 Q0Nr/zawkq2K+Ido40uBOgDhiPJRfoukYC1EHWwPTXOFg1o7dHzYJBbpp5B3RhqBd8LS
 yC+P5kAlRxsAWWCN4qfzD7OnSa/V1o3zhQ5KciZnlXMp5LuD+VRML3bul4UH20JxzSnq
 CvhVLb1Z2jfAlNt4eStGNyG38Q3m76jUjBgkphuY/5mZOOVKTp2RAVw3Wx1kMUfF6h/Z
 d0ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=nzdRKNhSadAGU2/1+9CJCIsH9iz4xNg93BLTCvdABBQ=;
 b=U34x66Tx/xYsUjPkDwPkcVDAZbRKxwT7eChd/M2r3LVUKoMeJprFialz2QB/l1SvZl
 LLCWHl4Bjl6dnHP33AHqX9sEiDi6RoCifeEk6aF7eS5QQCVXnVSCP176AeDUg5vanP5Y
 WeqHvpRCANZLwkRL5yRwTbaeMotwaoklI8QO6SuUnSUPVIejwniSL3njEvHqUs5ou+bD
 NEGLxCTy08bTDOXnrwmkK+FL8hPY2LXTSRHjDoeU8L4MlJw3XNapgwEdfNdQibZLBYMG
 xw679ZSB214COm6WRk0AUr5GmLoAF1GXSJBVdmlLoDV1YlK2LHqHK64hCHqpyHfy9SQq
 4IyA==
X-Gm-Message-State: AOAM532DwDCSiRT57a3r4RGuHkMRe7WwnkczjwvzrHuy5NE2nj4vSl8X
 twTBVbjt2pqJoXmGQfVxJSE2ig==
X-Google-Smtp-Source: ABdhPJyNOuupobAksijWayq6Ffs/N+B1zxVK8M2fdvImwOFpb2TCmYL3X8fCPVrhWr8LX0wNMT9cNw==
X-Received: by 2002:a05:6a00:440c:b0:4fa:da3f:251c with SMTP id
 br12-20020a056a00440c00b004fada3f251cmr6303682pfb.73.1648743290114; 
 Thu, 31 Mar 2022 09:14:50 -0700 (PDT)
Received: from [192.168.0.2] ([50.53.169.105])
 by smtp.gmail.com with ESMTPSA id
 124-20020a621682000000b004f6a2e59a4dsm27306697pfw.121.2022.03.31.09.14.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 31 Mar 2022 09:14:49 -0700 (PDT)
Message-ID: <b498023a-08d8-eda6-abfc-4339fe82522a@pensando.io>
Date: Thu, 31 Mar 2022 09:14:47 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.7.0
Content-Language: en-US
To: Leon Romanovsky <leon@kernel.org>, "David S . Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
References: <737616899df2a482e4ec35aa4056c9ac608d2f50.1648714609.git.leonro@nvidia.com>
From: Shannon Nelson <snelson@pensando.io>
In-Reply-To: <737616899df2a482e4ec35aa4056c9ac608d2f50.1648714609.git.leonro@nvidia.com>
Subject: Re: [Intel-wired-lan] [PATCH net v1] ixgbe: ensure IPsec VF<->PF
 compatibility
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
Cc: Steffen Klassert <steffen.klassert@secunet.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Raed Salem <raeds@nvidia.com>,
 Shannon Nelson <shannon.nelson@oracle.com>, Paolo Abeni <pabeni@redhat.com>,
 Leon Romanovsky <leonro@nvidia.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/31/22 1:20 AM, Leon Romanovsky wrote:
> From: Leon Romanovsky <leonro@nvidia.com>
>
> The VF driver can forward any IPsec flags and such makes the function
> is not extendable and prone to backward/forward incompatibility.
>
> If new software runs on VF, it won't know that PF configured something
> completely different as it "knows" only XFRM_OFFLOAD_INBOUND flag.
>
> Fixes: eda0333ac293 ("ixgbe: add VF IPsec management")
> Reviewed-by: Raed Salem <raeds@nvidia.com>
> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>a


Thanks!

Reviewed-by: Shannon Nelson <snelson@pensando.io>


> ---
> Chaagelog:
> v1:
>   * Replaced bits arithmetic with more simple expression
> v0: https://lore.kernel.org/all/3702fad8a016170947da5f3c521a9251cf0f4a22.1648637865.git.leonro@nvidia.com
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
> index e596e1a9fc75..69d11ff7677d 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
> @@ -903,7 +903,8 @@ int ixgbe_ipsec_vf_add_sa(struct ixgbe_adapter *adapter, u32 *msgbuf, u32 vf)
>   	/* Tx IPsec offload doesn't seem to work on this
>   	 * device, so block these requests for now.
>   	 */
> -	if (!(sam->flags & XFRM_OFFLOAD_INBOUND)) {
> +	sam->flags = sam->flags & ~XFRM_OFFLOAD_IPV6;
> +	if (sam->flags != XFRM_OFFLOAD_INBOUND) {
>   		err = -EOPNOTSUPP;
>   		goto err_out;
>   	}

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
