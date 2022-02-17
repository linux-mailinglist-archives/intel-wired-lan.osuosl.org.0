Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 793C84BA54D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Feb 2022 16:59:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2D9E441E66;
	Thu, 17 Feb 2022 15:59:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uYlyl8ckWiyp; Thu, 17 Feb 2022 15:59:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D347740167;
	Thu, 17 Feb 2022 15:59:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 44E5B1BF20B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Feb 2022 15:59:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2CFB240167
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Feb 2022 15:59:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q3_HxB9BvqyG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Feb 2022 15:59:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4E9EE400C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Feb 2022 15:59:12 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aeb9b.dynamic.kabel-deutschland.de
 [95.90.235.155])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 9894161E6478B;
 Thu, 17 Feb 2022 16:59:08 +0100 (CET)
Message-ID: <505c40a4-15e7-dee9-2187-4d05812a0b1b@molgen.mpg.de>
Date: Thu, 17 Feb 2022 16:59:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Content-Language: en-US
To: Mateusz Palczewski <mateusz.palczewski@intel.com>
References: <20220217094532.14543-1-mateusz.palczewski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220217094532.14543-1-mateusz.palczewski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v1] Revert "i40e: Fix reset bw
 limit when DCB enabled with 1 TC"
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

Dear Mateusz,


Am 17.02.22 um 10:45 schrieb Mateusz Palczewski:
> Revert of a patch that instead of fixing a AQ error when trying
> to reset bw limit introduced a several regression related to

a regression/several regressions?

> creation and managing tc. Currently there are errors when creating
> a tc on both pf and vf.

Please paste the error.

> This reverts commit 3d2504663c41104b4359a15f35670cfa82de1bbf.
> 
> Fixes: 3d250466 (i40e: Fix reset bw limit when DCB enabled with 1 TC)

checkpatch.pl should have asked you to use the first 12 characters of 
the hash.

> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c | 12 +-----------
>   1 file changed, 1 insertion(+), 11 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 8572993..2f8ddfa 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -5372,15 +5372,7 @@ static int i40e_vsi_configure_bw_alloc(struct i40e_vsi *vsi, u8 enabled_tc,
>   	/* There is no need to reset BW when mqprio mode is on.  */
>   	if (pf->flags & I40E_FLAG_TC_MQPRIO)
>   		return 0;
> -
> -	if (!vsi->mqprio_qopt.qopt.hw) {
> -		if (pf->flags & I40E_FLAG_DCB_ENABLED)
> -			goto skip_reset;
> -
> -		if (IS_ENABLED(CONFIG_I40E_DCB) &&
> -		    i40e_dcb_hw_get_num_tc(&pf->hw) == 1)
> -			goto skip_reset;
> -
> +	if (!vsi->mqprio_qopt.qopt.hw && !(pf->flags & I40E_FLAG_DCB_ENABLED)) {
>   		ret = i40e_set_bw_limit(vsi, vsi->seid, 0);
>   		if (ret)
>   			dev_info(&pf->pdev->dev,
> @@ -5388,8 +5380,6 @@ static int i40e_vsi_configure_bw_alloc(struct i40e_vsi *vsi, u8 enabled_tc,
>   				 vsi->seid);
>   		return ret;
>   	}
> -
> -skip_reset:
>   	memset(&bw_data, 0, sizeof(bw_data));
>   	bw_data.tc_valid_bits = enabled_tc;
>   	for (i = 0; i < I40E_MAX_TRAFFIC_CLASS; i++)

Rest looks good.


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
