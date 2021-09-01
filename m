Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C153FD5DE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Sep 2021 10:48:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B396081D7D;
	Wed,  1 Sep 2021 08:48:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cX31T1AmEtVE; Wed,  1 Sep 2021 08:48:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 567EB81DA0;
	Wed,  1 Sep 2021 08:48:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8F1481BF834
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 08:48:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 76107400F0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 08:48:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id koalwfvApbE6 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Sep 2021 08:48:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A0CB5400C3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 08:48:19 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id ADCC861E64784;
 Wed,  1 Sep 2021 10:48:16 +0200 (CEST)
To: Karen Sornek <karen.sornek@intel.com>
References: <20210901082731.74893-1-karen.sornek@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <40332f79-5018-cf22-92f9-e94595dd5a68@molgen.mpg.de>
Date: Wed, 1 Sep 2021 10:48:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210901082731.74893-1-karen.sornek@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix not to overload flags
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
Cc: Mitch Williams <mitch.a.williams@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Karen,


Am 01.09.21 um 10:27 schrieb Karen Sornek:
> The IAVF_FLAG_REINIT_ITR_NEEDED flag was being used for two different
> purposes. As originally written, it indicates to the ITR mechanism to
> update the interrupt registers to a new setting. Sometime later, it was
> overloaded to indicate that interrupts need to be completely
> reinitialized during reset. This causes problems when ethtool -C is used
> while a reset is in progress, and can lead to RTNL deadlocks.
> 
> To fix this, add a new flag with a new name and use that to trigger
> MSI-X reinit.

Please mention the macro name in the commit message.

For the summary, please use a statement (with a verb in imperative 
mood). Maybe:

iavf: Fix RTNL deadlock with new flag IAVF_FLAG_REINIT_MSIX_NEEDED

> Fixes: 5b36e8d04b44 ("i40evf: Enable VF to request an alternate queue allocation")
> Signed-off-by: Mitch Williams <mitch.a.williams@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> ---
>   drivers/net/ethernet/intel/iavf/iavf.h      | 1 +
>   drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
>   2 files changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
> index 21c957755..5a36af8b9 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -272,6 +272,7 @@ struct iavf_adapter {
>   #define IAVF_FLAG_LEGACY_RX			BIT(15)
>   #define IAVF_FLAG_REINIT_ITR_NEEDED		BIT(16)
>   #define IAVF_FLAG_QUEUES_DISABLED		BIT(17)
> +#define IAVF_FLAG_REINIT_MSIX_NEEDED		BIT(20)
>   /* duplicates for common code */
>   #define IAVF_FLAG_DCB_ENABLED			0
>   	/* flags for admin queue service task */
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 80437ef26..4b7a670de 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -3556,7 +3556,7 @@ int iavf_process_config(struct iavf_adapter *adapter)
>   			"Requested %d queues, but PF only gave us %d.\n",
>   			num_req_queues,
>   			adapter->vsi_res->num_queue_pairs);
> -		adapter->flags |= IAVF_FLAG_REINIT_ITR_NEEDED;
> +		adapter->flags |= IAVF_FLAG_REINIT_MSIX_NEEDED;
>   		adapter->num_req_queues = adapter->vsi_res->num_queue_pairs;
>   		iavf_schedule_reset(adapter);
>   		return -ENODEV;
> 

The diff looks good to me.


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
