Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4732428E68A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Oct 2020 20:38:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DAD1887DC7;
	Wed, 14 Oct 2020 18:38:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R0483T+vB3Ll; Wed, 14 Oct 2020 18:38:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DFFC687E3A;
	Wed, 14 Oct 2020 18:38:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C3E241BF40D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Oct 2020 18:38:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AF6862E515
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Oct 2020 18:38:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TkwKl9oS83S3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Oct 2020 18:38:50 +0000 (UTC)
X-Greylist: delayed 00:18:41 by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by silver.osuosl.org (Postfix) with ESMTPS id DDCB12E2B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Oct 2020 18:38:49 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id 16so213077oix.9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Oct 2020 11:38:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pensando.io; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=kfEv4awu8atL/IHfwBZVeJrgE2FzagYW1xzPmuwt4qQ=;
 b=ckMvx9f5EmMdghDDYDwX6P/p/F1NS5riGHkaDbkDdvP1VEfAk52gCyy4EWCOmfOmMZ
 QfFVL/Ee33cl7/qru6cqo4S7fdLsXiRFTAY3HCwl9nQXlECaoC88nHWgKD3P48HytQLh
 EfPLuR9Zj4IS1rIBuAeXYf53jkQX1OZZ4XGddSs+2NpQ4jck5fEF6kelE/h1ncu+ageR
 XEOdkCU4UB55MhsKfaqEChgpyDuhVSSq1mHYcO7eKaiBYIEAgrspmk3L5L79GBoZRWHd
 H4ODs0+1fHN9Pm+ie6jf3qWoj5hFVT8e4t6BIqpCYYo7nhgHjex05zN6RijTSFD7ku/F
 RJJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=kfEv4awu8atL/IHfwBZVeJrgE2FzagYW1xzPmuwt4qQ=;
 b=F/UbGtv4jqOBKdnNBuE6FDAj/OSZ/qGQej7sCyPVdjcLmgHf32xXoQds+U4yV3PbgJ
 VGToogvA9dwICZvJOO+yBG7ap9Qyh9g9ZCRc4JdwFeChVc1FwuCZdezIdT9J2/i4YLxv
 qKcbt43E9thYTK3bJ48RLXjVEe5CIzdAkZgeW/blHJxb1m9X6IJ+DdgvuDPCAVaqfs+R
 9/FBOCSkefsFUshqoVnPsixSh/SAIwIg6n8uoJGftK6PoqnzrhG+BnbKE5qmN0kM+w18
 HQf7s2PkrZkqI4UzdFok4GLQ2KmWoWkpC98LsbB8AhgWoYQwTXDfIS8JF2OvQgus3gtS
 Y49g==
X-Gm-Message-State: AOAM530A8kB/Sc1TuVrVuiMz+r7kojcmezJzcbLeFr0syhocct1tvwym
 2w9SDKz9L/cCWvx9GjbupV8m+VndtqzVSQ==
X-Google-Smtp-Source: ABdhPJytr0VF52B1YB5qdg+xOstSEndwbEPCKFwMbHBIKSdoz6mr52meI9PWdRlUJ6pu/A4wtWPBxw==
X-Received: by 2002:a17:90a:5285:: with SMTP id w5mr459182pjh.62.1602699264560; 
 Wed, 14 Oct 2020 11:14:24 -0700 (PDT)
Received: from Shannons-MacBook-Pro.local
 (static-50-53-47-17.bvtn.or.frontiernet.net. [50.53.47.17])
 by smtp.gmail.com with ESMTPSA id q123sm291252pfq.56.2020.10.14.11.14.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 14 Oct 2020 11:14:23 -0700 (PDT)
To: Antony Antony <antony@phenome.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
References: <20200828111101.GA16518@AntonyAntony.local>
 <20201014141748.GA4910@AntonyAntony.local>
From: Shannon Nelson <snelson@pensando.io>
Message-ID: <9ca1d11f-5dfa-1be1-6ced-b046dddd5d00@pensando.io>
Date: Wed, 14 Oct 2020 11:14:21 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <20201014141748.GA4910@AntonyAntony.local>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: fail to create xfrm offload of
 IPsec tunnel mode SA
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
Cc: Shannon Nelson <shannon.nelson@oracle.com>, netdev@vger.kernel.org,
 Steffen Klassert <steffen.klassert@secunet.com>,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/14/20 7:17 AM, Antony Antony wrote:
> Based on talks and indirect references ixgbe IPsec offlod do not
> support IPsec tunnel mode offload. It can only support IPsec transport
> mode offload. Now explicitly fail when creating non transport mode SA
>   with offload to avoid false performance expectations.
>
> Fixes: 63a67fe229ea ("ixgbe: add ipsec offload add and remove SA")
> Signed-off-by: Antony Antony <antony@phenome.org>

Acked-by: Shannon Nelson <snelson@pensando.io>

> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c | 5 +++++
>   drivers/net/ethernet/intel/ixgbevf/ipsec.c     | 5 +++++
>   2 files changed, 10 insertions(+)
>
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
> index eca73526ac86..54d47265a7ac 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
> @@ -575,6 +575,11 @@ static int ixgbe_ipsec_add_sa(struct xfrm_state *xs)
>   		return -EINVAL;
>   	}
>   
> +	if (xs->props.mode != XFRM_MODE_TRANSPORT) {
> +		netdev_err(dev, "Unsupported mode for ipsec offload\n");
> +		return -EINVAL;
> +	}
> +
>   	if (ixgbe_ipsec_check_mgmt_ip(xs)) {
>   		netdev_err(dev, "IPsec IP addr clash with mgmt filters\n");
>   		return -EINVAL;
> diff --git a/drivers/net/ethernet/intel/ixgbevf/ipsec.c b/drivers/net/ethernet/intel/ixgbevf/ipsec.c
> index 5170dd9d8705..caaea2c920a6 100644
> --- a/drivers/net/ethernet/intel/ixgbevf/ipsec.c
> +++ b/drivers/net/ethernet/intel/ixgbevf/ipsec.c
> @@ -272,6 +272,11 @@ static int ixgbevf_ipsec_add_sa(struct xfrm_state *xs)
>   		return -EINVAL;
>   	}
>   
> +	if (xs->props.mode != XFRM_MODE_TRANSPORT) {
> +		netdev_err(dev, "Unsupported mode for ipsec offload\n");
> +		return -EINVAL;
> +	}
> +
>   	if (xs->xso.flags & XFRM_OFFLOAD_INBOUND) {
>   		struct rx_sa rsa;
>   

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
