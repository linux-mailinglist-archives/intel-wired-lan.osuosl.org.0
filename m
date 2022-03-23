Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 332294E5785
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Mar 2022 18:31:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DC58F40121;
	Wed, 23 Mar 2022 17:31:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tZb68waSVDR9; Wed, 23 Mar 2022 17:31:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 917D6400E2;
	Wed, 23 Mar 2022 17:31:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 10F8C1BF4DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 17:31:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0932C418B7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 17:31:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UYypriXjHgWv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Mar 2022 17:31:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A2668418AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 17:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648056679; x=1679592679;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=sQLlik2JBKgjvTm6fLFQVl8wTqJf3BIKx0o9VBPfxEY=;
 b=eiFFlD/S8e/2FbN9V4XzpoeNbiOwX7V1GTR2Hi0Q4O1B0RWkILx4w26w
 Rc8JP/IAcqkhi3uB3Km4+RLM/46krgAIK4XobQ2h9JXfotQW9kQenOaxm
 KQkJMTUzss2HXedd91W5NFweOD6XxdytnTJcuFK6p5LxBmh4B18ugYkN4
 R9XOtjpNXDs5E9gdC1dUd3vwJQOuert3tlLQxACZvnAz2m9W5CmOweGPc
 OxXoWP1U9tG55kAOfCTJpVL6CWe26XGGevd1kaRijz/ggSMsgXYygFPU0
 BsMX8qoBugRz5lF6JyWm3A/duG2pyxtCy5Wpz8VfYOFNaPPG6C6K0vlyP Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="238784537"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="238784537"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 10:22:04 -0700
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="544287811"
Received: from kplh.igk.intel.com ([10.102.21.224])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 10:22:01 -0700
Date: Wed, 23 Mar 2022 20:10:10 +0100
From: Piotr Raczynski <piotr.raczynski@intel.com>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20220323190519.GA23730@kplh.igk.intel.com>
References: <20220323135829.4015645-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220323135829.4015645-1-ivecera@redhat.com>
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix MAC address setting
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
Cc: netdev@vger.kernel.org, mschmidt@redhat.com,
 open list <linux-kernel@vger.kernel.org>, poros@redhat.com,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 23, 2022 at 02:58:29PM +0100, Ivan Vecera wrote:
> Commit 2ccc1c1ccc671b ("ice: Remove excess error variables") merged
> the usage of 'status' and 'err' variables into single one in
> function ice_set_mac_address(). Unfortunately this causes
> a regression when call of ice_fltr_add_mac() returns -EEXIST because
> this return value does not indicate an error in this case but
> value of 'err' value remains to be -EEXIST till the end of
> the function and is returned to caller.
> 
> Prior this commit this does not happen because return value of
> ice_fltr_add_mac() was stored to 'status' variable first and
> if it was -EEXIST then 'err' remains to be zero.
> 
> The patch fixes the problem by reset 'err' to zero when
> ice_fltr_add_mac() returns -EEXIST.
> 
> Fixes: 2ccc1c1ccc671b ("ice: Remove excess error variables")
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 168a41ea37b8..420558d1cd21 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5474,14 +5474,15 @@ static int ice_set_mac_address(struct net_device *netdev, void *pi)
>  
>  	/* Add filter for new MAC. If filter exists, return success */
>  	err = ice_fltr_add_mac(vsi, mac, ICE_FWD_TO_VSI);
> -	if (err == -EEXIST)
> +	if (err == -EEXIST) {
>  		/* Although this MAC filter is already present in hardware it's
>  		 * possible in some cases (e.g. bonding) that dev_addr was
>  		 * modified outside of the driver and needs to be restored back
>  		 * to this value.
>  		 */
>  		netdev_dbg(netdev, "filter for MAC %pM already exists\n", mac);
> -	else if (err)
> +		err = 0;

Thanks Ivan, This looks fine. It is a regression as I checked since
driver used to return success in such case. It seems that the only
way to have EEXIST here is when the same MAC is requested, I'd also
consider just return 0 here to skip later firwmare write which seems
redundant here.

Piotr

> +	} else if (err)
>  		/* error if the new filter addition failed */
>  		err = -EADDRNOTAVAIL;
>  
> -- 
> 2.34.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
