Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC8F1350AB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jan 2020 01:52:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4CF4A85194;
	Thu,  9 Jan 2020 00:52:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PteGBl0fqLG0; Thu,  9 Jan 2020 00:52:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 90FA4851FF;
	Thu,  9 Jan 2020 00:52:18 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A101C1BF9B0
 for <intel-wired-lan@osuosl.org>; Thu,  9 Jan 2020 00:52:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9C15D84F5F
 for <intel-wired-lan@osuosl.org>; Thu,  9 Jan 2020 00:52:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sgm+uaJVgubD for <intel-wired-lan@osuosl.org>;
 Thu,  9 Jan 2020 00:52:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 660B281CED
 for <intel-wired-lan@osuosl.org>; Thu,  9 Jan 2020 00:52:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 16:52:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,412,1571727600"; d="scan'208";a="211716656"
Received: from jekeller-mobl.amr.corp.intel.com (HELO [134.134.177.84])
 ([134.134.177.84])
 by orsmga007.jf.intel.com with ESMTP; 08 Jan 2020 16:52:14 -0800
To: intel-wired-lan@osuosl.org
References: <20200105084600.4025394-1-jeffrey.t.kirsher@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
Organization: Intel Corporation
Message-ID: <648fb7f4-b3b7-8f75-675d-26b0ffdfe2b4@intel.com>
Date: Wed, 8 Jan 2020 16:52:14 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200105084600.4025394-1-jeffrey.t.kirsher@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [net] i40e: Fix receive buffer starvation for
 AF_XDP
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

On 1/5/2020 12:46 AM, Jeff Kirsher wrote:
> Magnus's fix to resolve a potential receive buffer starvation for AF_XDP
> got applied to both the i40e_xsk_umem_enable/disable() functions, when it
> should have only been applied to the "enable".  So clean up the undesired
> code in the disable function.
> 
> CC: Magnus Karlsson <magnus.karlsson@intel.com>
> Fixes: 1f459bdc2007 ("i40e: fix potential RX buffer starvation for AF_XDP")
> Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> index 42058fad6a3c..1b13d8e0d67a 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> @@ -114,11 +114,6 @@ static int i40e_xsk_umem_enable(struct i40e_vsi *vsi, struct xdp_umem *umem,

Umm.. Based on the commit message, you meant to remove only from the
disable function, not the enable one...

And indeed you actually did in October:

2c19e395e061 ("i40e: Fix receive buffer starvation for AF_XDP")
Date:   Mon Oct 7 15:07:24 2019 -0700

I think this patch should be dropped from your tree.

(Thanks Lihong for pointing this out to me!)

Thanks,
Jake

>  		err = i40e_queue_pair_enable(vsi, qid);
>  		if (err)
>  			return err;
> -
> -		/* Kick start the NAPI context so that receiving will start */
> -		err = i40e_xsk_wakeup(vsi->netdev, qid, XDP_WAKEUP_RX);
> -		if (err)
> -			return err;
>  	}
>  
>  	return 0;
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
