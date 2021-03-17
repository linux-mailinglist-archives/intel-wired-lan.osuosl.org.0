Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5210733F788
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 18:52:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CCE2643049;
	Wed, 17 Mar 2021 17:52:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V7TwcqxsTbUn; Wed, 17 Mar 2021 17:52:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DB3B242FB1;
	Wed, 17 Mar 2021 17:52:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 478B21BF9AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 17:52:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 35A6142FB1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 17:52:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sOhag2DHc0dT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 17:52:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from desiato.infradead.org (desiato.infradead.org
 [IPv6:2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8E1624150B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 17:52:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
 :In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description;
 bh=nE45k8FixLnSufakV+tBQGAF9aOc9NiNiG7mBSO7nh4=; b=F98z509CNK7YcUoO4tYJCgG6mG
 PbzrCzDTB2a4x+GpP7LWk/+KaszGygqe9KccAdbkTdwyEIs2ZL0t+LIURfPKZ0C5fHmAuIQ10O1SM
 m3wO7eg2RFBujvbbx/yFwWdr/ivPVw1jVJ9PEFXKWydB6DSeBTfPk0w+Ax3Tz30K1TKfQ72ZI/w0l
 o6FdguVxVePx1PUpBfpdocnLWbZDVaSwuiUO+HjwvDR949G3A69nA5+kiGuNRi8Vcl8HYualmebu9
 WD9JzH+3CjCagZSloVHiYdmFT94DcK8sTmiMa8Gh4OGlPeqx04l4wrk2d1lM9qLuryhLroSsPI1vQ
 /+4HwdJQ==;
Received: from merlin.infradead.org ([2001:8b0:10b:1234::107])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMaLW-003hIs-EP
 for intel-wired-lan@lists.osuosl.org; Wed, 17 Mar 2021 17:52:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description;
 bh=nE45k8FixLnSufakV+tBQGAF9aOc9NiNiG7mBSO7nh4=; b=lfPgb9Z31TuQRauM8ZNsdVcckv
 Xl5YXjzSFB/Olw8k2lkfOmyXSGCy9iP0ZQ46sJtFlU3TBg3EiDaD+6Q1qNeynYR5+2ZB993On+lj/
 q8fmoIVUpT1dvRt4Xjz8C0Y/xKrzcz7EpP+UteqVVt5zRZSEnpcihIt6mL/zrkgT5ylFKKZ+jDbRn
 1/yB14CqxtmHdqs8KfMcC3RyDN7wtdsh2fvsIVA3qwhyX56BPupBnCCDd0D21/YdVwIpEgxlUuMQs
 XMboLCg3uPHa5rkX6+oPODFGqKfdAjuiRQj+UV+bSMsGw6vK4NaaGi5nmjzcjCAPyMoP0rhqhtwZr
 xztB3uhg==;
Received: from [2601:1c0:6280:3f0::9757]
 by merlin.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lMaLJ-001feL-W4; Wed, 17 Mar 2021 17:52:26 +0000
To: Bhaskar Chowdhury <unixbhaskar@gmail.com>, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20210317100001.2172893-1-unixbhaskar@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <7ee2ccf4-5b1f-eb3c-9d8f-d3381a347bc3@infradead.org>
Date: Wed, 17 Mar 2021 10:52:22 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210317100001.2172893-1-unixbhaskar@gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] net: ethernet: intel: Fix a typo in
 the file ixgbe_dcb_nl.c
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

On 3/17/21 3:00 AM, Bhaskar Chowdhury wrote:
> 
> s/Reprogam/Reprogram/
> 
> Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>

Acked-by: Randy Dunlap <rdunlap@infradead.org>

> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c
> index c00332d2e02a..72e6ebffea33 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c
> @@ -361,7 +361,7 @@ static u8 ixgbe_dcbnl_set_all(struct net_device *netdev)
>  	}
> 
>  #ifdef IXGBE_FCOE
> -	/* Reprogam FCoE hardware offloads when the traffic class
> +	/* Reprogram FCoE hardware offloads when the traffic class
>  	 * FCoE is using changes. This happens if the APP info
>  	 * changes or the up2tc mapping is updated.
>  	 */
> --


-- 
~Randy

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
