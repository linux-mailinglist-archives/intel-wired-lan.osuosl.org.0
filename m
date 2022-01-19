Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF2E493D09
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jan 2022 16:23:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A340828EF;
	Wed, 19 Jan 2022 15:23:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yz39W6H8fnNR; Wed, 19 Jan 2022 15:23:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E7D482864;
	Wed, 19 Jan 2022 15:23:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3C3671BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jan 2022 15:23:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3745182864
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jan 2022 15:23:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MzoXNgJ4rcah for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jan 2022 15:23:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 50FC6827E0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jan 2022 15:23:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642605816; x=1674141816;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+2mw8jU8az3Hit3Up7V95AFFN4R81wOpC8jod9UaCxU=;
 b=M1Reymr1KNVVYdyRoEwCQ6JbQS10zZygGILfT51AEiirKt1n0y/Qq0r6
 kYm2n8mkFufn4w14KWng4f7Y2dja4gbeFmy2/c28qs/5CihC4HRvROh3E
 AyDCgIxRlaDaVm0VphGS8PuS5B+fTjfgVS1XgEBWKdDwxPKIUkwuJsfMf
 TItg1/Xz3zNMgOUjUaUQk9GLzQhiIhfdDfD5VurSiCRfnC8zRpgY1p7k5
 LE2mGDz3bUU132ixeDvDYhgXTQMgPXme8mxk8n7fBaVD2uAf0YDg3Uo6p
 5KHC5O/if3Q/X41jzFhUCJpGw1e6XZ6zS+S5uijPICK4UcTVR7EH77pOr w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="305819949"
X-IronPort-AV: E=Sophos;i="5.88,299,1635231600"; d="scan'208";a="305819949"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 07:23:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,299,1635231600"; d="scan'208";a="578843574"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga008.fm.intel.com with ESMTP; 19 Jan 2022 07:23:12 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 20JFNB0H019131; Wed, 19 Jan 2022 15:23:11 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Mateusz Palczewski <mateusz.palczewski@intel.com>
Date: Wed, 19 Jan 2022 16:21:39 +0100
Message-Id: <20220119152139.20746-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220119101521.1212-1-mateusz.palczewski@intel.com>
References: <20220119101521.1212-1-mateusz.palczewski@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] iavf: Add usage of new
 virtchnl format to set default MAC
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
Cc: intel-wired-lan@lists.osuosl.org,
 Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mateusz Palczewski <mateusz.palczewski@intel.com>
Date: Wed, 19 Jan 2022 11:15:21 +0100

> Use new type field of VIRTCHNL_OP_ADD_ETH_ADDR and
> VIRTCHNL_OP_DEL_ETH_ADDR requests to indicate that
> VF wants to change its default MAC address.
> 
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>

Reviwed-by: Alexander Lobakin <alexandr.lobakin@intel.com>

> ---
>  v2: Fixed function description to fit in 80 characters per line limit
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c     | 12 +++++++++---
>  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 16 ++++++++++++++++
>  2 files changed, 25 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index ec4f85a..7fa29a8 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -876,6 +876,7 @@ struct iavf_mac_filter *iavf_add_filter(struct iavf_adapter *adapter,
>  		list_add_tail(&f->list, &adapter->mac_filter_list);
>  		f->add = true;
>  		f->is_new_mac = true;
> +		f->is_primary = false;
>  		adapter->aq_required |= IAVF_FLAG_AQ_ADD_MAC_FILTER;
>  	} else {
>  		f->remove = false;
> @@ -909,17 +910,22 @@ static int iavf_set_mac(struct net_device *netdev, void *p)
>  	f = iavf_find_filter(adapter, hw->mac.addr);
>  	if (f) {
>  		f->remove = true;
> +		f->is_primary = true;
>  		adapter->aq_required |= IAVF_FLAG_AQ_DEL_MAC_FILTER;
>  	}
>  
>  	f = iavf_add_filter(adapter, addr->sa_data);
> -
> -	spin_unlock_bh(&adapter->mac_vlan_list_lock);
> -
>  	if (f) {
> +		f->is_primary = true;
>  		ether_addr_copy(hw->mac.addr, addr->sa_data);
>  	}
>  
> +	spin_unlock_bh(&adapter->mac_vlan_list_lock);
> +
> +	/* schedule the watchdog task to immediately process the request */
> +	if (f)
> +		queue_work(iavf_wq, &adapter->watchdog_task.work);
> +
>  	return (f == NULL) ? -ENOMEM : 0;
>  }
>  
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index 5ee1d11..8d53228 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -453,6 +453,20 @@ void iavf_map_queues(struct iavf_adapter *adapter)
>  	kfree(vimi);
>  }
>  
> +/**
> + * iavf_set_mac_addr_type - Set the correct request type from the filter type
> + * @virtchnl_ether_addr: pointer to requested list element
> + * @filter: pointer to requested filter
> + **/
> +static void
> +iavf_set_mac_addr_type(struct virtchnl_ether_addr *virtchnl_ether_addr,
> +		       const struct iavf_mac_filter *filter)
> +{
> +	virtchnl_ether_addr->type = filter->is_primary ?
> +		VIRTCHNL_ETHER_ADDR_PRIMARY :
> +		VIRTCHNL_ETHER_ADDR_EXTRA;
> +}
> +
>  /**
>   * iavf_add_ether_addrs
>   * @adapter: adapter structure
> @@ -508,6 +522,7 @@ void iavf_add_ether_addrs(struct iavf_adapter *adapter)
>  	list_for_each_entry(f, &adapter->mac_filter_list, list) {
>  		if (f->add) {
>  			ether_addr_copy(veal->list[i].addr, f->macaddr);
> +			iavf_set_mac_addr_type(&veal->list[i], f);
>  			i++;
>  			f->add = false;
>  			if (i == count)
> @@ -577,6 +592,7 @@ void iavf_del_ether_addrs(struct iavf_adapter *adapter)
>  	list_for_each_entry_safe(f, ftmp, &adapter->mac_filter_list, list) {
>  		if (f->remove) {
>  			ether_addr_copy(veal->list[i].addr, f->macaddr);
> +			iavf_set_mac_addr_type(&veal->list[i], f);
>  			i++;
>  			list_del(&f->list);
>  			kfree(f);
> -- 
> 2.27.0

Thanks!
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
