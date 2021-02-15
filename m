Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB8731B5B4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Feb 2021 08:46:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2DD1385E77;
	Mon, 15 Feb 2021 07:46:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ykQuHogLtfnN; Mon, 15 Feb 2021 07:46:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4CEF885E79;
	Mon, 15 Feb 2021 07:46:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B95EE1BF962
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Feb 2021 07:46:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B00E985E6F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Feb 2021 07:46:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NIB7i18vgDa9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Feb 2021 07:46:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 20BFF85C4F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Feb 2021 07:46:11 +0000 (UTC)
Received: from [192.168.0.6] (unknown [95.90.234.113])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id DF2DC20645D7E;
 Mon, 15 Feb 2021 08:46:08 +0100 (CET)
To: Mateusz Palczewski <mateusz.palczewski@intel.com>
References: <20201127112301.32478-1-mateusz.palczewski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <7305a403-4163-4af9-5f20-b73d54a98fc8@molgen.mpg.de>
Date: Mon, 15 Feb 2021 08:46:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20201127112301.32478-1-mateusz.palczewski@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix VFs not created
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Stefan Assmann <sassmann@kpanic.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[+cc Stefan as author of commit under Fixes:]

Am 27.11.20 um 12:23 schrieb Mateusz Palczewski:
> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> 
> When creating VFs they were sometimes not getting resources.
> It was caused by not executing i40e_reset_all_vfs due to
> flag __I40E_VF_DISABLE being set on PF. Because of this
> IAVF was never able to finish setup sequence never
> getting reset indication from PF.
> Changed test_and_set_bit __I40E_VF_DISABLE in
> i40e_sync_filters_subtask to test_bit and removed clear_bit.
> This function should not set this bit it should only check
> if it hasn't been already set.
> 
> Fixes: a7542b876075 ("i40e: check __I40E_VF_DISABLE bit in i40e_sync_filters_subtask")
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 5bee1de..a926331 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -2623,7 +2623,7 @@ static void i40e_sync_filters_subtask(struct i40e_pf *pf)
>   		return;
>   	if (!test_and_clear_bit(__I40E_MACVLAN_SYNC_PENDING, pf->state))
>   		return;
> -	if (test_and_set_bit(__I40E_VF_DISABLE, pf->state)) {
> +	if (test_bit(__I40E_VF_DISABLE, pf->state)) {
>   		set_bit(__I40E_MACVLAN_SYNC_PENDING, pf->state);
>   		return;
>   	}
> @@ -2641,7 +2641,6 @@ static void i40e_sync_filters_subtask(struct i40e_pf *pf)
>   			}
>   		}
>   	}
> -	clear_bit(__I40E_VF_DISABLE, pf->state);
>   }
>   
>   /**
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
