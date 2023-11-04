Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F387E0F9F
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Nov 2023 14:44:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 27AB182127;
	Sat,  4 Nov 2023 13:44:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 27AB182127
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699105465;
	bh=HA9nL6VrypDjEF/dSfyFN/BiBhpQZKAOkuLquVX62as=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sN49yDB0+6yEgxlZq7jua7tAjUwIV64/Du05Q9gspjMRAdcklDqME/4KMjmwtw7eD
	 /fZgOvkuBNjmxt09SRU+xFM4iXHVC5SaX0MxyEqBpZGUeMEmSIvN2hSXE/2UBWAdNU
	 x+53evmPd7n9CEglM9WwRvHswLjBJ6yjlUZq0iHXDFHPMEA8USgOa9CyO3LWIOONoL
	 fbD4Ap9iFRYn5/AU0g1zflgkbDb5IcO+lVeezBx/B/bdwrrv8dRdDsi1NPRuRH+2gY
	 wLoh3KX4QueUUnfwFvOcnMv0zFWjGCR7ThX7NlzN1qmtq7TBIvBHV92J2K9y3RvYLR
	 RMFU4pEUAUABg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KOQSjzLOLweh; Sat,  4 Nov 2023 13:44:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD7C58206F;
	Sat,  4 Nov 2023 13:44:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD7C58206F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CEB901BF30C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Nov 2023 13:44:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B3B8060F34
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Nov 2023 13:44:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B3B8060F34
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3yjvOxqBfZRg for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Nov 2023 13:44:18 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AF9A860BDD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Nov 2023 13:44:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF9A860BDD
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 452CACE021E;
 Sat,  4 Nov 2023 13:44:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AFC64C433C7;
 Sat,  4 Nov 2023 13:44:00 +0000 (UTC)
Date: Sat, 4 Nov 2023 09:43:54 -0400
From: Simon Horman <horms@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20231104134354.GD891380@kernel.org>
References: <20231103204216.1072251-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231103204216.1072251-1-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1699105454;
 bh=Exi3Dp1tHjuY5WnbbDcF0Tl0B0MvUo53adtNSeJJKiM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KhFgqocTgMzh5//2O+R55xZID+VNPjBzSnYZ/XGKMTlO7Doys6mAyTQHVofCaS/is
 qnJLPB+wfjaaCN5qqpJfUL+CR5PI+UO28EQuV1Fu9bRe7jAGjkZ16abpO4iS4sadHC
 NrYBN5lnlwogjWRq7yw1FZK7mG11MJIGKypBYA2e7Qu57NW/2YtulryB5kqD3kyhIe
 BaxJ6+9OIUWKiqlYZwSawB/t4X78Qml4sVQkBdt7w7lbtYMeqeqV3xYy1JG1ntEi1b
 Qud8eaNS1hN2U5OtjVfS003g/lSh/V0K7vD6By6RpgdTd6hMf49x1DGl79UjrFEgjy
 ksEgIUwkFKwnQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=KhFgqocT
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Fix adding unsupported
 cloud filters
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Avinash Dayanand <avinash.dayanand@intel.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

+ Avinash Dayanand

On Fri, Nov 03, 2023 at 09:42:16PM +0100, Ivan Vecera wrote:
> If a VF tries to add unsupported cloud filter through virchnl
> then i40e_add_del_cloud_filter(_big_buf) returns -ENOTSUPP but
> this error code is stored in 'ret' instead of 'aq_ret' that
> is used as error code sent back to VF. In this scenario where
> one of the mentioned functions fails the value of 'aq_ret'
> is zero so the VF will incorrectly receive a 'success'.
> 
> Use 'aq_ret' to store return value and remove 'ret' local
> variable. Additionally fix the issue when filter allocation
> fails, in this case no notification is sent back to the VF.
> 
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Hi Ivan,

as a fix targeted at 'net' this probably warrants a fixes tag.
Perhaps the following is appropriate?

Fixes: e284fc280473 ("i40e: Add and delete cloud filter")

The above not withstanding, this change looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>

> ---
>  .../net/ethernet/intel/i40e/i40e_virtchnl_pf.c   | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 08d7edccfb8ddb..3f99eb19824527 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -3844,7 +3844,7 @@ static int i40e_vc_add_cloud_filter(struct i40e_vf *vf, u8 *msg)
>  	struct i40e_pf *pf = vf->pf;
>  	struct i40e_vsi *vsi = NULL;
>  	int aq_ret = 0;
> -	int i, ret;
> +	int i;
>  
>  	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
>  		aq_ret = -EINVAL;
> @@ -3868,8 +3868,10 @@ static int i40e_vc_add_cloud_filter(struct i40e_vf *vf, u8 *msg)
>  	}
>  
>  	cfilter = kzalloc(sizeof(*cfilter), GFP_KERNEL);
> -	if (!cfilter)
> -		return -ENOMEM;
> +	if (!cfilter) {
> +		aq_ret = -ENOMEM;
> +		goto err_out;
> +	}
>  
>  	/* parse destination mac address */
>  	for (i = 0; i < ETH_ALEN; i++)
> @@ -3917,13 +3919,13 @@ static int i40e_vc_add_cloud_filter(struct i40e_vf *vf, u8 *msg)
>  
>  	/* Adding cloud filter programmed as TC filter */
>  	if (tcf.dst_port)
> -		ret = i40e_add_del_cloud_filter_big_buf(vsi, cfilter, true);
> +		aq_ret = i40e_add_del_cloud_filter_big_buf(vsi, cfilter, true);
>  	else
> -		ret = i40e_add_del_cloud_filter(vsi, cfilter, true);
> -	if (ret) {
> +		aq_ret = i40e_add_del_cloud_filter(vsi, cfilter, true);
> +	if (aq_ret) {
>  		dev_err(&pf->pdev->dev,
>  			"VF %d: Failed to add cloud filter, err %pe aq_err %s\n",
> -			vf->vf_id, ERR_PTR(ret),
> +			vf->vf_id, ERR_PTR(aq_ret),
>  			i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
>  		goto err_free;
>  	}
> -- 
> 2.41.0
> 
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
