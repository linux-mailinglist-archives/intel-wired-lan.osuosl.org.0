Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2797F1253
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Nov 2023 12:42:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6FA6160BC0;
	Mon, 20 Nov 2023 11:42:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6FA6160BC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700480559;
	bh=9fzjrdr26hezCxWNUUIuMjfSTQVps9QAiam4rSUA0/Y=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=T1yf9DCC8xVQnBOyqBrEsFnRk4C8gFLlAIUvSnGZ1scn5DJlB7Pfm/gBAxFK+/w/I
	 xwjJKUB7RLPbxnvnvwASSfZmDdJxeZEMZNGN2vhta0+Bs24sK3qjOVVpIjZNNKt8T+
	 5/a2z2L85jOepwZ6nooHduTn7Bg5PZHv5YHdN0ftyCXHcjGgSmLvaAsr9NT9v114Mr
	 Opr35Fl/wTcsNGpmiaAkU2/R586Aw4f79z8Xlf1jPLlHADFFt6O+QXXBaQXD5K4Mmv
	 9eX8F+UJ869ocJTBnHXFDJgYy8UqsxYmGdfBc/IVSiij4ewC8kpHtUsWDih03QUZn1
	 60LRU+hP6ultg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z_eR1XxoUlDH; Mon, 20 Nov 2023 11:42:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C1B660AEC;
	Mon, 20 Nov 2023 11:42:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C1B660AEC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6E5551BF380
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Nov 2023 11:42:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 463028148A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Nov 2023 11:42:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 463028148A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LzO4ZCFjItIZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Nov 2023 11:42:32 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4982C8137B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Nov 2023 11:42:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4982C8137B
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 29E59B8166D;
 Mon, 20 Nov 2023 11:42:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0DC9EC433C7;
 Mon, 20 Nov 2023 11:42:26 +0000 (UTC)
Date: Mon, 20 Nov 2023 11:42:24 +0000
From: Simon Horman <horms@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20231120114224.GB223713@kernel.org>
References: <20231116152114.88515-1-ivecera@redhat.com>
 <20231116152114.88515-4-ivecera@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231116152114.88515-4-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1700480549;
 bh=9EOytdIzHSPX1UrWq2Vnd6Lm8YR0exOx45k9xVk7W/M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=A2Jis3QlXaU0cN9/u0hilLwYwMejoIaYlL1422LpRB1gppQuRCQSadg4tMnMW3mBm
 EXxUq//f+RhHfJuMXTrwYCuQZzlQtG8pMNeGukYCNc0PbUVqS8BETv4rs/2dAA8c0V
 ibm1HQ+ghZPnuoyqE8ovTOGASaG4hLvmEYIyj2FlbA5QDubZXNmr+1BK5z4V8C/92C
 LX7Elxvn5BXeL2mp6fQ83mNgpi3/F3dm9Wt/i08XwkKmIJYx+zOWfWZvICzfr2vB1+
 rFMobNVRWxhnoL5sNjEdKzhS87SnW11hrkiYQ9vArvvPuj4S/WLT+HZtnstdXG89Wy
 MznAYlNk004Pw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=A2Jis3Ql
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 3/5] i40e: Add helpers to
 find VSI and VEB by SEID and use them
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Nov 16, 2023 at 04:21:12PM +0100, Ivan Vecera wrote:
> Add two helpers i40e_(veb|vsi)_get_by_seid() to find corresponding
> VEB or VSI by their SEID value and use these helpers to replace
> existing open-coded loops.
> 
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Hi Ivan,

some minor feedback from my side.

...

> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
> index 1e9266de270b..ca8997d29c02 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -1360,4 +1360,38 @@ static inline struct i40e_pf *i40e_hw_to_pf(struct i40e_hw *hw)
>  
>  struct device *i40e_hw_to_dev(struct i40e_hw *hw);
>  
> +/**
> + * i40e_pf_get_vsi_by_seid - find VSI by SEID
> + * @pf: pointer to a PF

nit: @seid is missing here

> + **/
> +static inline struct i40e_vsi *
> +i40e_pf_get_vsi_by_seid(struct i40e_pf *pf, u16 seid)
> +{
> +	struct i40e_vsi *vsi;
> +	int i;
> +
> +	i40e_pf_for_each_vsi(pf, i, vsi)
> +		if (vsi->seid == seid)
> +			return vsi;
> +
> +	return NULL;
> +}
> +
> +/**
> + * i40e_pf_get_veb_by_seid - find VEB by SEID
> + * @pf: pointer to a PF

Ditto

...

> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c

...

> @@ -14848,23 +14831,16 @@ struct i40e_veb *i40e_veb_setup(struct i40e_pf *pf, u16 flags,
>  	}
>  
>  	/* make sure there is such a vsi and uplink */
> -	i40e_pf_for_each_vsi(pf, vsi_idx, vsi)
> -		if (vsi->seid == vsi_seid)
> -			break;
> -
> -	if (vsi_idx == pf->num_alloc_vsi && vsi_seid != 0) {
> -		dev_info(&pf->pdev->dev, "vsi seid %d not found\n",
> -			 vsi_seid);
> -		return NULL;
> +	if (vsi_seid) {
> +		vsi = i40e_pf_get_vsi_by_seid(pf, vsi_seid);
> +		if (!vsi) {
> +			dev_err(&pf->pdev->dev, "vsi seid %d not found\n",
> +				vsi_seid);
> +			return NULL;
> +		}
>  	}
> -
>  	if (uplink_seid && uplink_seid != pf->mac_seid) {
> -		i40e_pf_for_each_veb(pf, veb_idx, veb) {
> -			if (veb->seid == uplink_seid) {
> -				uplink_veb = veb;
> -				break;
> -			}
> -		}
> +		uplink_veb = i40e_pf_get_veb_by_seid(pf, uplink_seid);
>  		if (!uplink_veb) {
>  			dev_info(&pf->pdev->dev,
>  				 "uplink seid %d not found\n", uplink_seid);

The next part of this function looks like this:

		if (!uplink_veb) {
			dev_info(&pf->pdev->dev,
				 "uplink seid %d not found\n", uplink_seid);
			return NULL;
		}
	}
	/* get veb sw struct */
	veb_idx = i40e_veb_mem_alloc(pf);
	if (veb_idx < 0)
		goto err_alloc;
	veb = pf->veb[veb_idx];
	veb->flags = flags;
	veb->uplink_seid = uplink_seid;
	veb->veb_idx = (uplink_veb ? uplink_veb->idx : I40E_NO_VEB);
	veb->enabled_tc = (enabled_tc ? enabled_tc : 0x1);

	/* create the VEB in the switch */
	ret = i40e_add_veb(veb, vsi);

Smatch complains that vsi may be used uninitialised here.
Which does seem possible to me if vsi_seid is 0.

...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
