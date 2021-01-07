Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4B52ED6EB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Jan 2021 19:47:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ABE9220022;
	Thu,  7 Jan 2021 18:47:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lydPRtM8c1Yf; Thu,  7 Jan 2021 18:47:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2B8B9204E7;
	Thu,  7 Jan 2021 18:47:20 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DC3AA1BF2F6
 for <intel-wired-lan@osuosl.org>; Thu,  7 Jan 2021 18:47:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D81268739D
 for <intel-wired-lan@osuosl.org>; Thu,  7 Jan 2021 18:47:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SXjKMTd66Glx for <intel-wired-lan@osuosl.org>;
 Thu,  7 Jan 2021 18:47:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1329687368
 for <intel-wired-lan@osuosl.org>; Thu,  7 Jan 2021 18:47:18 +0000 (UTC)
IronPort-SDR: GNTAQZfzVOR9B/bN07SDPsgAepSm5t3FBc1MoKDxK3gwnKskYia+zvhjGgirXKTNC/5KdjHD5t
 tyYvLtCofoEA==
X-IronPort-AV: E=McAfee;i="6000,8403,9857"; a="165168436"
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="165168436"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2021 10:47:17 -0800
IronPort-SDR: 5UM77453s6r+YJh4XIGIaE7hejnVDXZekxbA7rDVD3pz52D/WcYsx7IY7Xvpx3IDCIkrXcA+pK
 13dEmznUCX0Q==
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="422676390"
Received: from jekeller-mobl1.amr.corp.intel.com (HELO [10.209.22.194])
 ([10.209.22.194])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2021 10:47:17 -0800
To: intel-wired-lan@osuosl.org
References: <20210106215539.2103688-1-jesse.brandeburg@intel.com>
 <20210106215539.2103688-2-jesse.brandeburg@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
Organization: Intel Corporation
Message-ID: <5badc441-6de9-54cf-2b72-d67572cbb105@intel.com>
Date: Thu, 7 Jan 2021 10:47:16 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210106215539.2103688-2-jesse.brandeburg@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/2] net: core: count
 drops from GRO
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 1/6/2021 1:55 PM, Jesse Brandeburg wrote:
> When drivers call the various receive upcalls to receive an skb
> to the stack, sometimes that stack can drop the packet. The good
> news is that the return code is given to all the drivers of
> NET_RX_DROP or GRO_DROP. The bad news is that no drivers except
> the one "ice" driver that I changed, check the stat and increment
> the dropped count. This is currently leading to packets that
> arrive at the edge interface and are fully handled by the driver
> and then mysteriously disappear.
> 
> Rather than fix all drivers to increment the drop stat when
> handling the return code, emulate the already existing statistic
> update for NET_RX_DROP events for the two GRO_DROP locations, and
> increment the dev->rx_dropped associated with the skb.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Cc: Eric Dumazet <edumazet@google.com>
> Cc: Jamal Hadi Salim <jhs@mojatatu.com>
> ---
>  net/core/dev.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/net/core/dev.c b/net/core/dev.c
> index 8fa739259041..ef34043a9550 100644
> --- a/net/core/dev.c
> +++ b/net/core/dev.c
> @@ -6071,6 +6071,7 @@ static gro_result_t napi_skb_finish(struct napi_struct *napi,
>  		break;
>  
>  	case GRO_DROP:
> +		atomic_long_inc(&skb->dev->rx_dropped);
>  		kfree_skb(skb);
>  		break;

Would it makes sense to have this be a different stat? or is it really
basically the same as the existing rx_dropped, so treating it
differently wouldn't make much sense..

>  
> @@ -6159,6 +6160,7 @@ static gro_result_t napi_frags_finish(struct napi_struct *napi,
>  		break;
>  
>  	case GRO_DROP:
> +		atomic_long_inc(&skb->dev->rx_dropped);
>  		napi_reuse_skb(napi, skb);
>  		break;
>  
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
