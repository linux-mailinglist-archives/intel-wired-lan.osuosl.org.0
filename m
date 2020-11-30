Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8BDB2C8E14
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Nov 2020 20:32:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5D09087254;
	Mon, 30 Nov 2020 19:32:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M49OVVg8I7IO; Mon, 30 Nov 2020 19:32:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C852D871EB;
	Mon, 30 Nov 2020 19:31:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0A1421BF292
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Nov 2020 19:31:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F3FD82010C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Nov 2020 19:31:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ve39KkXFkT39 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Nov 2020 19:31:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 52AD020005
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Nov 2020 19:31:56 +0000 (UTC)
IronPort-SDR: qmrCV9h/ZRVjF4rz3Y6OW5pMbZad7Q8ydBdbEdS9f2QMW9nHzwD6nh7Xl5PwoptLFSx0sHnGx/
 dmO8vhjZVTrQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="159749955"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="159749955"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 11:31:55 -0800
IronPort-SDR: 5HTOZJwSf90IU3UU/cY9XQYRfgBCovcJxLUX1r/++EewS8YmiNHJOMPMkGAp3nIYdN8kdmQRKd
 8S+z1hXbYlXg==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="549235296"
Received: from jekeller-mobl1.amr.corp.intel.com (HELO [10.209.29.232])
 ([10.209.29.232])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 11:31:54 -0800
To: Stefan Assmann <sassmann@kpanic.de>, intel-wired-lan@lists.osuosl.org
References: <20201130131257.28856-1-sassmann@kpanic.de>
From: Jacob Keller <jacob.e.keller@intel.com>
Organization: Intel Corporation
Message-ID: <263c6e31-62a3-e73d-6f63-23216b15fdd0@intel.com>
Date: Mon, 30 Nov 2020 11:31:54 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201130131257.28856-1-sassmann@kpanic.de>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] i40e: acquire VSI pointer only after
 VF is initialized
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
Cc: netdev@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 11/30/2020 5:12 AM, Stefan Assmann wrote:
> This change simplifies the VF initialization check and also minimizes
> the delay between acquiring the VSI pointer and using it. As known by
> the commit being fixed, there is a risk of the VSI pointer getting
> changed. Therefore minimize the delay between getting and using the
> pointer.
> 
> Fixes: 9889707b06ac ("i40e: Fix crash caused by stress setting of VF MAC addresses")
> Signed-off-by: Stefan Assmann <sassmann@kpanic.de>

Ok.

> ---
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 11 ++++-------
>  1 file changed, 4 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 729c4f0d5ac5..bf6034c3a6ea 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -4046,20 +4046,16 @@ int i40e_ndo_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
>  		goto error_param;
>  
>  	vf = &pf->vf[vf_id];
> -	vsi = pf->vsi[vf->lan_vsi_idx];
>  
>  	/* When the VF is resetting wait until it is done.
>  	 * It can take up to 200 milliseconds,
>  	 * but wait for up to 300 milliseconds to be safe.
> -	 * If the VF is indeed in reset, the vsi pointer has
> -	 * to show on the newly loaded vsi under pf->vsi[id].
> +	 * Acquire the vsi pointer only after the VF has been
> +	 * properly initialized.
>  	 */
>  	for (i = 0; i < 15; i++) {
> -		if (test_bit(I40E_VF_STATE_INIT, &vf->vf_states)) {
> -			if (i > 0)
> -				vsi = pf->vsi[vf->lan_vsi_idx];
> +		if (test_bit(I40E_VF_STATE_INIT, &vf->vf_states))
>  			break;
> -		}
>  		msleep(20);
>  	}
>  	if (!test_bit(I40E_VF_STATE_INIT, &vf->vf_states)) {
> @@ -4068,6 +4064,7 @@ int i40e_ndo_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
>  		ret = -EAGAIN;
>  		goto error_param;
>  	}
> +	vsi = pf->vsi[vf->lan_vsi_idx];
>  

Yea, this makes more sense to me.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

>  	if (is_multicast_ether_addr(mac)) {
>  		dev_err(&pf->pdev->dev,
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
