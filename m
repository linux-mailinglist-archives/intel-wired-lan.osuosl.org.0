Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FEA444B45
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Nov 2021 00:09:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DFCE280F62;
	Wed,  3 Nov 2021 23:09:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FQZ09h2Gn0mH; Wed,  3 Nov 2021 23:09:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D56D80DF3;
	Wed,  3 Nov 2021 23:09:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5BDC01BF37A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Nov 2021 23:09:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 467244045A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Nov 2021 23:09:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qWAoYaZjspqX for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Nov 2021 23:09:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 405DD4043C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Nov 2021 23:09:41 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae8fc.dynamic.kabel-deutschland.de
 [95.90.232.252])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 9374961E6478B;
 Thu,  4 Nov 2021 00:09:37 +0100 (CET)
Message-ID: <2e3f1249-a62e-3829-a17b-46284174dc29@molgen.mpg.de>
Date: Thu, 4 Nov 2021 00:09:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Jaroslaw Gawin <jaroslawx.gawin@intel.com>
References: <20210823114344.7058-1-jedrzej.jagielski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20210823114344.7058-1-jedrzej.jagielski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix issue when maximum
 queues is exceeded
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Jaroslow, dear Jedrzej,


On 23.08.21 13:43, Jedrzej Jagielski wrote:

Maybe use:

i40e: Handle case of depleted

> Before this patch VF interface vanished when maximum queue
> number was exceeded. Driver tried to add next queues even
> if there was not enough space. PF sent incorrect number of
> queues to the VF when there were not enough of them.
> 
> Add an additional condition introduced to check
> available space in 'qp_pile' before proceeding.
> Also add the search for free space in PF queue pair piles.

Please reflow for 75 characters per line.

How is the new search better?

> Without this patch VF interfaces are not seen when available
> space for queues has been exceeded and following logs appears
> permanently in dmesg:
> "Unable to get VF config (-32)".
> "VF 62 failed opcode 3, retval: -5"
> "Unable to get VF config due to PF error condition, not retrying"

Please add the new logs.

> Fixes: 7daa6bf3294e ("i40e: driver core headers")
> Fixes: 41c445ff0f48 ("i40e: main driver core")
> Signed-off-by: Jaroslaw Gawin <jaroslawx.gawin@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e.h        |  2 +-
>   drivers/net/ethernet/intel/i40e/i40e_main.c   | 49 +++++++++++----
>   .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 59 +++++++++++++++++++
>   3 files changed, 96 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
> index b10bc59c5700..fdfa96ece5f3 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -174,7 +174,6 @@ enum i40e_interrupt_policy {
>   
>   struct i40e_lump_tracking {
>   	u16 num_entries;
> -	u16 search_hint;
>   	u16 list[0];
>   #define I40E_PILE_VALID_BIT  0x8000
>   #define I40E_IWARP_IRQ_PILE_ID  (I40E_PILE_VALID_BIT - 2)
> @@ -1156,6 +1155,7 @@ int i40e_reconfig_rss_queues(struct i40e_pf *pf, int queue_count);
>   struct i40e_veb *i40e_veb_setup(struct i40e_pf *pf, u16 flags, u16 uplink_seid,
>   				u16 downlink_seid, u8 enabled_tc);
>   void i40e_veb_release(struct i40e_veb *veb);
> +int i40e_max_lump_qp(struct i40e_pf *pf);
>   
>   int i40e_veb_config_tc(struct i40e_veb *veb, u8 enabled_tc);
>   int i40e_vsi_add_pvid(struct i40e_vsi *vsi, u16 vid);
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 000991afcf27..32382d4a90e7 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -178,16 +178,12 @@ int i40e_free_virt_mem_d(struct i40e_hw *hw, struct i40e_virt_mem *mem)
>    * @id: an owner id to stick on the items assigned
>    *
>    * Returns the base item index of the lump, or negative for error
> - *
> - * The search_hint trick and lack of advanced fit-finding only work
> - * because we're highly likely to have all the same size lump requests.
> - * Linear search time and any fragmentation should be minimal.
>    **/
>   static int i40e_get_lump(struct i40e_pf *pf, struct i40e_lump_tracking *pile,
>   			 u16 needed, u16 id)
>   {
>   	int ret = -ENOMEM;
> -	int i, j;
> +	u16 i, j;

Please do not mix these changes into the patch. Additionally, using the 
native variable types does not harm.

>   	if (!pile || needed == 0 || id >= I40E_PILE_VALID_BIT) {
>   		dev_info(&pf->pdev->dev,
> @@ -196,8 +192,7 @@ static int i40e_get_lump(struct i40e_pf *pf, struct i40e_lump_tracking *pile,
>   		return -EINVAL;
>   	}
>   
> -	/* start the linear search with an imperfect hint */
> -	i = pile->search_hint;
> +	i = 0;
>   	while (i < pile->num_entries) {
>   		/* skip already allocated entries */
>   		if (pile->list[i] & I40E_PILE_VALID_BIT) {
> @@ -216,7 +211,6 @@ static int i40e_get_lump(struct i40e_pf *pf, struct i40e_lump_tracking *pile,
>   			for (j = 0; j < needed; j++)
>   				pile->list[i+j] = id | I40E_PILE_VALID_BIT;
>   			ret = i;
> -			pile->search_hint = i + j;
>   			break;
>   		}
>   
> @@ -239,7 +233,7 @@ static int i40e_put_lump(struct i40e_lump_tracking *pile, u16 index, u16 id)
>   {
>   	int valid_id = (id | I40E_PILE_VALID_BIT);
>   	int count = 0;
> -	int i;
> +	u16 i;
>   
>   	if (!pile || index >= pile->num_entries)
>   		return -EINVAL;
> @@ -251,12 +245,43 @@ static int i40e_put_lump(struct i40e_lump_tracking *pile, u16 index, u16 id)
>   		count++;
>   	}
>   
> -	if (count && index < pile->search_hint)
> -		pile->search_hint = index;
>   
>   	return count;
>   }
>   
> +/**
> + * i40e_max_lump_qp - find a biggest size of lump available in qp_pile
> + * @pf: pointer to private device data structure
> + *
> + * Returns the max size of lump in a qp_pile, or negative for error
> + */
> +int i40e_max_lump_qp(struct i40e_pf *pf)
> +{
> +	struct i40e_lump_tracking *pile = pf->qp_pile;
> +	int pool_size, max_size;
> +	u16 i;

unsigned int i;

> +
> +	if (!pile) {
> +		dev_info(&pf->pdev->dev,
> +			 "param err: pile=%s\n",
> +			 pile ? "<valid>" : "<null>");
> +		return -EINVAL;
> +	}
> +
> +	pool_size = 0;
> +	max_size = 0;
> +	for (i = 0; i < pile->num_entries; i++) {
> +		if (pile->list[i] & I40E_PILE_VALID_BIT) {
> +			pool_size = 0;
> +			continue;
> +		}
> +		if (max_size < ++pool_size)
> +			max_size = pool_size;

Maybe in one line: max_size = max(max_size, ++pool_size);

> +	}
> +
> +	return max_size;
> +}
> +
>   /**
>    * i40e_find_vsi_from_id - searches for the vsi with the given id
>    * @pf: the pf structure to search for the vsi
> @@ -11753,7 +11778,6 @@ static int i40e_init_interrupt_scheme(struct i40e_pf *pf)
>   		return -ENOMEM;
>   
>   	pf->irq_pile->num_entries = vectors;
> -	pf->irq_pile->search_hint = 0;
>   
>   	/* track first vector for misc interrupts, ignore return */
>   	(void)i40e_get_lump(pf, pf->irq_pile, 1, I40E_PILE_VALID_BIT - 1);
> @@ -12556,7 +12580,6 @@ static int i40e_sw_init(struct i40e_pf *pf)
>   		goto sw_init_done;
>   	}
>   	pf->qp_pile->num_entries = pf->hw.func_caps.num_tx_qp;
> -	pf->qp_pile->search_hint = 0;
>   
>   	pf->tx_timeout_recovery_level = 1;
>   
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index c007fba3d1dd..5a488ce5451b 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -2616,6 +2616,59 @@ error_param:
>   				       aq_ret);
>   }
>   
> +/**
> + * i40e_check_enough_queue - find enough queue

find big enough queue?
find big enough queue size?

> + * @vf: pointer to the VF info
> + * @needed: the number of items needed
> + *
> + * Returns the base item index of the queue, or negative for error
> + **/
> +static int i40e_check_enough_queue(struct i40e_vf *vf, u16 needed)
> +{
> +	u16 i, cur_queues, more, pool_size;

`unsigned int` or `size_t` where possible.

> +	struct i40e_lump_tracking *pile;
> +	struct i40e_pf *pf = vf->pf;
> +	struct i40e_vsi *vsi;
> +
> +	vsi = pf->vsi[vf->lan_vsi_idx];
> +	cur_queues = vsi->alloc_queue_pairs;
> +
> +	/* if current allocated queues is enough for need */
> +	if (cur_queues >= needed)
> +		return vsi->base_queue;
> +
> +	pile = pf->qp_pile;
> +	if (cur_queues > 0) {
> +		/* if queues of allocated not zero, just check if

Please improve the wording.

> +		 * there is enough queues behind the allocated queues

s/is/are/

> +		 * for more.
> +		 */
> +		more = needed - cur_queues;
> +		for (i = vsi->base_queue + cur_queues;
> +			i < pile->num_entries; i++) {
> +			if (pile->list[i] & I40E_PILE_VALID_BIT)
> +				break;
> +
> +			if (more-- == 1)
> +				/* there is enough */
> +				return vsi->base_queue;
> +		}
> +	}
> +
> +	pool_size = 0;
> +	for (i = 0; i < pile->num_entries; i++) {
> +		if (pile->list[i] & I40E_PILE_VALID_BIT) {
> +			pool_size = 0;
> +			continue;
> +		}
> +		if (needed <= ++pool_size)
> +			/* there is enough */
> +			return i;
> +	}
> +
> +	return -ENOMEM;
> +}
> +
>   /**
>    * i40e_vc_request_queues_msg
>    * @vf: pointer to the VF info
> @@ -2650,6 +2703,12 @@ static int i40e_vc_request_queues_msg(struct i40e_vf *vf, u8 *msg)
>   			 req_pairs - cur_pairs,
>   			 pf->queues_left);
>   		vfres->num_queue_pairs = pf->queues_left + cur_pairs;
> +	} else if (i40e_check_enough_queue(vf, req_pairs) < 0) {
> +		dev_warn(&pf->pdev->dev,
> +			 "VF %d requested %d more queues, but there is not enough for it.\n",
> +			 vf->vf_id,
> +			 req_pairs - cur_pairs);
> +		vfres->num_queue_pairs = cur_pairs;
>   	} else {
>   		/* successful request */
>   		vf->num_req_queues = req_pairs;
> 


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
