Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3C6274EA9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Sep 2020 03:44:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BCB67228F1;
	Wed, 23 Sep 2020 01:44:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vzSQeHgsq+g7; Wed, 23 Sep 2020 01:44:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C5E6E2038D;
	Wed, 23 Sep 2020 01:44:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F6701BF425
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 01:44:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 381E88679D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 01:44:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uWlDJeyZYBHF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Sep 2020 01:44:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 04BFC86794
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 01:44:43 +0000 (UTC)
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 802CD83C44DD7ABFB3C0;
 Wed, 23 Sep 2020 09:44:40 +0800 (CST)
Received: from [10.174.179.238] (10.174.179.238) by
 DGGEMS405-HUB.china.huawei.com (10.3.19.205) with Microsoft SMTP Server id
 14.3.487.0; Wed, 23 Sep 2020 09:44:39 +0800
From: Bixuan Cui <cuibixuan@huawei.com>
To: <davem@davemloft.net>, <kuba@kernel.org>
References: <20200731105721.18511-1-cuibixuan@huawei.com>
 <5af7c5af-c45d-2174-de89-8b89eddb4f4d@huawei.com>
Message-ID: <9ba08d48-a192-bf9d-b37e-e7f3c9699970@huawei.com>
Date: Wed, 23 Sep 2020 09:44:38 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <5af7c5af-c45d-2174-de89-8b89eddb4f4d@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.174.179.238]
X-CFilter-Loop: Reflected
Subject: Re: [Intel-wired-lan] [PATCH -next v2] net: ice: Fix pointer cast
 warnings
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
Cc: netdev@vger.kernel.org, linux-next@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ping~

On 2020/7/31 18:07, Bixuan Cui wrote:
> pointers should be casted to unsigned long to avoid
> -Wpointer-to-int-cast warnings:
> 
> drivers/net/ethernet/intel/ice/ice_flow.h:197:33: warning:
>     cast from pointer to integer of different size
> drivers/net/ethernet/intel/ice/ice_flow.h:198:32: warning:
>     cast to pointer from integer of different size
> 
> Signed-off-by: Bixuan Cui <cuibixuan@huawei.com>
> ---
> v2->v1: add fix:
>  ice_flow.h:198:32: warning: cast to pointer from integer of different size [-Wint-to-pointer-cast]
>  #define ICE_FLOW_ENTRY_PTR(h) ((struct ice_flow_entry *)(h))
> 
>  drivers/net/ethernet/intel/ice/ice_flow.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
> index 3913da2116d2..829f90b1e998 100644
> --- a/drivers/net/ethernet/intel/ice/ice_flow.h
> +++ b/drivers/net/ethernet/intel/ice/ice_flow.h
> @@ -194,8 +194,8 @@ struct ice_flow_entry {
>  	u16 entry_sz;
>  };
> 
> -#define ICE_FLOW_ENTRY_HNDL(e)	((u64)e)
> -#define ICE_FLOW_ENTRY_PTR(h)	((struct ice_flow_entry *)(h))
> +#define ICE_FLOW_ENTRY_HNDL(e)	((u64)(uintptr_t)e)
> +#define ICE_FLOW_ENTRY_PTR(h)	((struct ice_flow_entry *)(uintptr_t)(h))
> 
>  struct ice_flow_prof {
>  	struct list_head l_entry;
> --
> 2.17.1
> 
> 
> .
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
