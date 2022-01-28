Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E22A49FC5D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jan 2022 16:02:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D5D2883410;
	Fri, 28 Jan 2022 15:02:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dDKgOrXCNe5u; Fri, 28 Jan 2022 15:02:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D19D08340C;
	Fri, 28 Jan 2022 15:02:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C49B61BF860
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 15:02:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C00DC8340C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 15:02:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HaGqAjwUwD5j for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jan 2022 15:02:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0F594833FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 15:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1643382151;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zvXNnO1II998WHVJTgogjU4n5JPMfa4zhSxjVH0yezw=;
 b=DmnEUgwbAibIuf8MMtIv0QUl/08iMsKrTGUvhMUssH0Is08O1+kdowx88rlQVQL67Hv2Um
 gdE3xTV9gunG4zOjvfqjPwU4tuL2wPolJkPwfELXzKqipqgaOjhZBcOX5rE/lW8+xXaIOS
 uUYXWO0z6OoAhKjWsYmSwIp0YW7IQpc=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-427-EucvjnnbMhK1uRX6ExSz4A-1; Fri, 28 Jan 2022 10:02:30 -0500
X-MC-Unique: EucvjnnbMhK1uRX6ExSz4A-1
Received: by mail-qv1-f70.google.com with SMTP id
 x2-20020ad44622000000b0042555fbc04fso6253519qvv.18
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 07:02:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=zvXNnO1II998WHVJTgogjU4n5JPMfa4zhSxjVH0yezw=;
 b=r8dlLCXK81/KcdBaFLImr91ph5Zw9JTAkaWsXSvL7CUtUrBs9wW2FGlbUF70wQvMZQ
 CaXtY5++4vX5VXd+YYJ47mXh32XHRl8IIDyBYObBF2e2EXXDSICIeg99ePGUJdGWTbtT
 Xp9WcAULHR8XoE38r+fTdAM41YRImgryww7VgD04hBVrAdsddi9mvi8GXc1rahAAiyab
 cGEix+bYx8jh1/ZbZzae9pRtrdG53KqHMbdDTd3MktF8qkrP4AuN18BP9vgDGsrut4FA
 rrf/0GsRzrsY8/V1FaLldK4IbzYep8Es/8HTsUKyWf0Wklh/EGvtC3EB33COidWVWDld
 22UQ==
X-Gm-Message-State: AOAM531PBkxZby+flq3TwGSlvILFU6lYEH2dqHDqoL8UDYuARdxILsAl
 V3E/T5hLAKkiqN8Y/36FNAHB4DET9nhPuyBHVg8FFsF2t7INmZ9dDeBuTAPa2K+B6MHMobK5+Rx
 /EtUdjxM4K13SRceSDJaos4tWbmpVcA==
X-Received: by 2002:ad4:4ea6:: with SMTP id ed6mr7765722qvb.113.1643382149819; 
 Fri, 28 Jan 2022 07:02:29 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwuREax7iep1axMj9WhujAxSCCSHVjeT59xjkFk9ekzCZUpNi51scXI7rysj8X+i9pitUdggQ==
X-Received: by 2002:ad4:4ea6:: with SMTP id ed6mr7765678qvb.113.1643382149544; 
 Fri, 28 Jan 2022 07:02:29 -0800 (PST)
Received: from [192.168.98.18] ([107.15.110.69])
 by smtp.gmail.com with ESMTPSA id h9sm450906qkn.121.2022.01.28.07.02.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 28 Jan 2022 07:02:29 -0800 (PST)
Message-ID: <97261624-d64f-4b82-2c11-a2dd5934c6f8@redhat.com>
Date: Fri, 28 Jan 2022 10:02:27 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
To: Dave Ertman <david.m.ertman@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20220118210820.1055792-1-david.m.ertman@intel.com>
From: Jonathan Toppins <jtoppins@redhat.com>
In-Reply-To: <20220118210820.1055792-1-david.m.ertman@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jtoppins@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix KASAN error in LAG
 NETDEV_UNREGISTER handler
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/18/22 16:08, Dave Ertman wrote:
> Currently, the same handler is called for both a NETDEV_BONDING_INFO
> LAG unlink notification as for a NETDEV_UNREGISTER call.  This is
> causing a problem though, since the netdev_notifier_info passed has
> a different structure depending on which event is passed.  The problem
> manifests as a call trace from a BUG: KASAN stack-out-of-bounds error.
> 
> Fix this by creating a handler specific to NETDEV_UNREGISTER that only
> is passed valid elements in the netdev_notifier_info struct for the
> NETDEV_UNREGISTER event.
> 
> Also included is the removal of an unbalanced dev_put on the peer_netdev
> and related braces.
> 
> Fixes: 6a8b357278f5 ("ice: Respond to a NETDEV_UNREGISTER event for LAG")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>

Acked-by: Jonathan Toppins <jtoppins@redhat.com>

> 
> ---
> 
> v2: also remove unneeded if block
> ---
>   drivers/net/ethernet/intel/ice/ice_lag.c | 34 +++++++++++++++++++-----
>   1 file changed, 28 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
> index e375ac849aec..4f954db01b92 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lag.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lag.c
> @@ -204,17 +204,39 @@ ice_lag_unlink(struct ice_lag *lag,
>   		lag->upper_netdev = NULL;
>   	}
>   
> -	if (lag->peer_netdev) {
> -		dev_put(lag->peer_netdev);
> -		lag->peer_netdev = NULL;
> -	}
> -
> +	lag->peer_netdev = NULL;
>   	ice_set_sriov_cap(pf);
>   	ice_set_rdma_cap(pf);
>   	lag->bonded = false;
>   	lag->role = ICE_LAG_NONE;
>   }
>   
> +/**
> + * ice_lag_unregister - handle netdev unregister events
> + * @lag: LAG info struct
> + * @netdev: netdev reporting the event
> + */
> +static void ice_lag_unregister(struct ice_lag *lag, struct net_device *netdev)
> +{
> +	struct ice_pf *pf = lag->pf;
> +
> +	/* check to see if this event is for this netdev
> +	 * check that we are in an aggregate
> +	 */
> +	if (netdev != lag->netdev || !lag->bonded)
> +		return;
> +
> +	if (lag->upper_netdev) {
> +		dev_put(lag->upper_netdev);
> +		lag->upper_netdev = NULL;
> +		ice_set_sriov_cap(pf);
> +		ice_set_rdma_cap(pf);
> +	}
> +	/* perform some cleanup in case we come back */
> +	lag->bonded = false;
> +	lag->role = ICE_LAG_NONE;
> +}
> +
>   /**
>    * ice_lag_changeupper_event - handle LAG changeupper event
>    * @lag: LAG info struct
> @@ -307,7 +329,7 @@ ice_lag_event_handler(struct notifier_block *notif_blk, unsigned long event,
>   		ice_lag_info_event(lag, ptr);
>   		break;
>   	case NETDEV_UNREGISTER:
> -		ice_lag_unlink(lag, ptr);
> +		ice_lag_unregister(lag, netdev);
>   		break;
>   	default:
>   		break;

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
