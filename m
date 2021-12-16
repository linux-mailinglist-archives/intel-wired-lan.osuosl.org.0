Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C2EC3477173
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Dec 2021 13:14:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 56AA8415F6;
	Thu, 16 Dec 2021 12:14:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q-MtCet6vE3H; Thu, 16 Dec 2021 12:14:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5AFF4415EE;
	Thu, 16 Dec 2021 12:14:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 55D541BF3F4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Dec 2021 12:14:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 40D17415EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Dec 2021 12:14:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bd7PMF32NnKb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Dec 2021 12:14:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1CCB2415E4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Dec 2021 12:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639656871; x=1671192871;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=25NLcgvt5dCZxhe1JnR9x6JjeVrw73RQ3N1SwQwwQWY=;
 b=VKg7tYO2nFSjsl5CD09oJg1mUR2P8WVKQcxpZAz5L8I+O0Q2IVvbTVxF
 RTtk5+iPVTAgx61KRMi3Gd7Q62mffOubz5988LUQv9nftfjybEiZXexWU
 HzLS8h1eKUhsuGEN7u7zg1RJdWlPUFaSh/hbnea+IPFYkc6pPKsNCrRCd
 Mt27c6E4JwKb1Cu43SgvikdI6PUgeBWuM+GZ+a5PA76KmoFpXq8/kBoUL
 d2TVtplzS0CBwOWuqGrgOdTECdt5j6yCE0ZRgBk0iAwQtYJ04Hqdwgj53
 HiHEqaItlHHitUxoIvHhKyEfiN3yLiE0IHeD588ABZJaErqaz31ysdEh5 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10199"; a="302850581"
X-IronPort-AV: E=Sophos;i="5.88,211,1635231600"; d="scan'208";a="302850581"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2021 04:14:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,211,1635231600"; d="scan'208";a="482801506"
Received: from boxer.igk.intel.com (HELO boxer) ([10.102.20.173])
 by orsmga002.jf.intel.com with ESMTP; 16 Dec 2021 04:14:29 -0800
Date: Thu, 16 Dec 2021 13:14:28 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Mateusz Palczewski <mateusz.palczewski@intel.com>
Message-ID: <YbstpK8zy4Vg4M6v@boxer>
References: <20211216120852.25706-1-mateusz.palczewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211216120852.25706-1-mateusz.palczewski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] i40e: Disable
 hw-tc-offload feature on driver load.
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
 Norbert Zulinski <norbertx.zulinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Dec 16, 2021 at 01:08:52PM +0100, Mateusz Palczewski wrote:
> After loading driver hw-tc-offload is enabled by default.
> Change the behaviour of driver to disable hw-tc-offload by default.
> Additionaly since this impacts ntuple feature state change the way
> of checking NETIF_F_HW_TC flag.
> 
> Title: i40e: Fix hw-tc-offload state on driver load
> Change-type: FeatureImplementation
> HSDES-Number: 16014847639
> HSDES-Tenant: server_platf_lan.bug

How come you guys still make the same mistake of including the
gerrit/internal labels in upstream commits? :<

Besides that, description is not clear to me why disabling this is needed.
I could look up the hsd, but folks that will look at it in the upstream
will not have that comfort. Please try to improve the commit message.

Thanks!

> Signed-off-by: Norbert Zulinski <norbertx.zulinski@intel.com>
> Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v2: Squashed two commits into one
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 3fd3f10..fec4d51 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -12724,7 +12724,8 @@ static int i40e_set_features(struct net_device *netdev,
>  	else
>  		i40e_vlan_stripping_disable(vsi);
>  
> -	if (!(features & NETIF_F_HW_TC) && pf->num_cloud_filters) {
> +	if (!(features & NETIF_F_HW_TC) &&
> +	    (netdev->features & NETIF_F_HW_TC) && pf->num_cloud_filters) {
>  		dev_err(&pf->pdev->dev,
>  			"Offloaded tc filters active, can't turn hw_tc_offload off");
>  		return -EINVAL;
> @@ -13476,6 +13477,8 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
>  	netdev->features |= hw_features | NETIF_F_HW_VLAN_CTAG_FILTER;
>  	netdev->hw_enc_features |= NETIF_F_TSO_MANGLEID;
>  
> +	netdev->features &= ~NETIF_F_HW_TC;
> +
>  	if (vsi->type == I40E_VSI_MAIN) {
>  		SET_NETDEV_DEV(netdev, &pf->pdev->dev);
>  		ether_addr_copy(mac_addr, hw->mac.perm_addr);
> -- 
> 2.27.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
