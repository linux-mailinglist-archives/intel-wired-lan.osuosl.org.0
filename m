Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C99401707
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Sep 2021 09:35:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A917580E4F;
	Mon,  6 Sep 2021 07:35:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nDkBDU0hofQR; Mon,  6 Sep 2021 07:35:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B736E80F37;
	Mon,  6 Sep 2021 07:35:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1739C1BF32E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Sep 2021 07:35:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 11ADB401BC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Sep 2021 07:35:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2RvKSLd-Wdxe for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Sep 2021 07:35:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 32B5D401D8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Sep 2021 07:35:03 +0000 (UTC)
Received: from [192.168.0.4] (ip5f5ae911.dynamic.kabel-deutschland.de
 [95.90.233.17])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id EF33461E6478B;
 Mon,  6 Sep 2021 09:35:01 +0200 (CEST)
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
References: <20210906073230.273956-1-jedrzej.jagielski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <b7ce187a-ae4c-84b2-fad8-708bf7f1ba5b@molgen.mpg.de>
Date: Mon, 6 Sep 2021 09:35:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210906073230.273956-1-jedrzej.jagielski@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix queues reservation
 scheme
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Lukasz Cieplicki <lukaszx.cieplicki@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Jedrzej,


Am 06.09.21 um 09:32 schrieb Jedrzej Jagielski:
> Depending on the CPU count and NVM configuration, PF reset and
> rebuild may fail if more queues are allocated (e.g. attach XDP program),
> causes kernel NULL pointer dereference. The issue is that during rebuild,
> FDIR VSI's queue pile is not zeroed, despite no VSIs, but PF exisiting.
> The change causes all queue pairs released from the queue pile.
> 
> Fixes: bc7d338fbb3f ("i40e: reinit flow for the main VSI")
> Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> Signed-off-by: Lukasz Cieplicki <lukaszx.cieplicki@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c | 19 ++++++++++++++++++-
>   1 file changed, 18 insertions(+), 1 deletion(-)

What changed between v1 and v2?


Kind regards,

Paul


> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 4fe4ab962888..e56c81c2e7ab 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -221,6 +221,23 @@ static int i40e_get_lump(struct i40e_pf *pf, struct i40e_lump_tracking *pile,
>   	return ret;
>   }
>   
> +/**
> + * i40e_put_all_lump - return a lump of generic resource
> + * @pile: the pile of resource to search
> + *
> + * Returns the count of items in the lump
> + **/
> +static void i40e_put_all_lump(struct i40e_lump_tracking *pile)
> +{
> +	u16 i;
> +
> +	if (!pile)
> +		return;
> +
> +	for (i = 0; i < pile->num_entries; i++)
> +		pile->list[i] = 0;
> +}
> +
>   /**
>    * i40e_put_lump - return a lump of generic resource
>    * @pile: the pile of resource to search
> @@ -14109,7 +14126,7 @@ static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
>   
>   	pf = vsi->back;
>   
> -	i40e_put_lump(pf->qp_pile, vsi->base_queue, vsi->idx);
> +	i40e_put_all_lump(pf->qp_pile);
>   	i40e_vsi_clear_rings(vsi);
>   
>   	i40e_vsi_free_arrays(vsi, false);
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
