Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F2F5512C3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Jun 2022 10:30:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95AD660F34;
	Mon, 20 Jun 2022 08:30:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95AD660F34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655713823;
	bh=+vtc8CW/1eVatVj4tC/7LPWZ+NcI6Dby0BqiXto0Oc0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HTSLSD8MYR69x4+GUP/o+IuWWCfPWLKqgrqsGJ+tv7dEaY0aHS4JprDufplj6n1FZ
	 ZGMgEnNmJZiWMPqf2LGBvnplkdjhSxVn5MZyzpJSSaJZbx7WcJ77x76wiVzprcXxIt
	 yOESu8EO1Zf04QAFSFcrdS0xrB9EIQNa30YwggFnPjLRTEY7c2BVeoc2NhDLSYeS0m
	 WSe3vHDSKjxqtRn5T2JuCTyKfBLtIRT77rM/2qL9O12/UTHznLEM8tnMsLWFUHwVSS
	 XyeO9Dsxo7/qx+/E+OXcVpcIgONM5Dk4hZOtO5Wjc/ktDGNAdvT7wAtT4/3mLtgerl
	 g19nTxgf1pEaQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JsjrV5MgR850; Mon, 20 Jun 2022 08:30:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F7C460F32;
	Mon, 20 Jun 2022 08:30:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F7C460F32
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B5ADF1BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jun 2022 08:30:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9C5E5417D4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jun 2022 08:30:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C5E5417D4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jHOMKQidr12T for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Jun 2022 08:30:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 50DF5417CE
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 50DF5417CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jun 2022 08:30:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="279887834"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="279887834"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:30:15 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="591073956"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:30:14 -0700
Date: Mon, 20 Jun 2022 01:32:37 -0400
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jun Zhang <xuejun.zhang@intel.com>
Message-ID: <YrAGdQB2np+/P/Ia@localhost.localdomain>
References: <20220617175000.2168164-1-xuejun.zhang@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220617175000.2168164-1-xuejun.zhang@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655713816; x=1687249816;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=aHZKqpD/6qaMdTsMjWHcrMV39WjoYOUvF5IW/lbUJ3g=;
 b=BwksW/AEvERREeG1EXSXCbFFH1FJC7FYGYO8Qf34ip7AmWdpTm4ILmyQ
 IbTwzCEQd4OxgwajMHiFmRu+rHA5yhiJ7iFRjRycCUvGHK85adHei+FBW
 byGSVIcoQ8m1WU5BzVgC7fMwn1qVLBKPXg1nHjE7QPO9HM/2jhkxJmJCs
 0/LhDLBwsFJp6qVtdIvw5BNEceiESZ1snI0oBPL9wRK6EFIwsOXoYInvP
 C/+0RHedgHhRfUM24NnPsKnoOr4i5/7+RqU+c6gPbY01fNxaVf42pHr1k
 ORwAZWhoAN11S+5FIJMtBqnet1dD2YIMb/gQfu9K0OynCLOxAeamJIW8O
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BwksW/AE
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: validate dest MAC and
 VLAN from tc-filter code path
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
Cc: intel-wired-lan@lists.osuosl.org, Kiran Patil <kiran.patil@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jun 17, 2022 at 01:50:00PM -0400, Jun Zhang wrote:
> From: Kiran Patil <kiran.patil@intel.com>
> 
> Before allowing tc-filter using dest MAC, VLAN - check to make
> sure there is basic active filter using specified dest MAC and
> likewise for VLAN.
> 
> This check is must to allow only legit filter via tc-filter
> code path with or without ADQ.
> 
> Fixes: 0075fa0fadd0 ("i40evf: Add support to apply cloud filters")
> Signed-off-by: Kiran Patil <kiran.patil@intel.com>
> Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 62 ++++++++++++++++++++-
>  1 file changed, 61 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 57c51a15bcbc..287c3e4bf8af 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -3558,6 +3558,48 @@ static int __iavf_setup_tc(struct net_device *netdev, void *type_data)
>  	return ret;
>  }
>  
> +/**
> + * iavf_is_vlan_tc_filter_allowed - allowed to add tc-filter using VLAN
> + * @adapter: board private structure
> + * @vlan: VLAN to verify
> + *
> + * Using specified "vlan" ID, there must be active VLAN filter in VF's
> + * MAC-VLAN filter list.
> + */
> +static bool
> +iavf_is_vlan_tc_filter_allowed(struct iavf_adapter *adapter, u16 vlan)
> +{
> +	struct iavf_vlan_filter *f;
> +	bool allowed;
> +
> +	spin_lock_bh(&adapter->mac_vlan_list_lock);
Why do we need lock here?

> +	f = iavf_find_vlan(adapter, IAVF_VLAN(vlan, ETH_P_8021Q));
> +	allowed = (f && f->add && !f->remove);
> +	spin_unlock_bh(&adapter->mac_vlan_list_lock);
> +	return allowed;
> +}
> +
> +/**
> + * iavf_is_mac_tc_filter_allowed - allowed to add tc-filter using MAC addr
> + * @adapter: board private structure
> + * @macaddr: MAC address
> + *
> + * Using specified MAC address, there must be active MAC filter in VF's
> + * MAC-VLAN filter list.
> + */
> +static bool
> +iavf_is_mac_tc_filter_allowed(struct iavf_adapter *adapter, const u8 *macaddr)
> +{
> +	struct iavf_mac_filter *f;
> +	bool allowed;
> +
> +	spin_lock_bh(&adapter->mac_vlan_list_lock);
> +	f = iavf_find_filter(adapter, macaddr);
> +	allowed = (f && f->add && !f->is_new_mac && !f->remove);
> +	spin_unlock_bh(&adapter->mac_vlan_list_lock);
> +	return allowed;
> +}
> +
>  /**
>   * iavf_parse_cls_flower - Parse tc flower filters provided by kernel
>   * @adapter: board private structure
> @@ -3651,7 +3693,15 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
>  			}
>  		}
>  
> -		if (!is_zero_ether_addr(match.key->dst))
> +		if (!is_zero_ether_addr(match.key->dst)) {
> +			if (!iavf_is_mac_tc_filter_allowed(adapter,
> +							   match.key->dst)) {
> +				dev_err(&adapter->pdev->dev,
> +					"Dest MAC %pM doesn't belong to this VF\n",
> +					match.mask->dst);
> +				return -EINVAL;
> +			}
> +
>  			if (is_valid_ether_addr(match.key->dst) ||
>  			    is_multicast_ether_addr(match.key->dst)) {
>  				/* set the mask if a valid dst_mac address */
> @@ -3660,6 +3710,7 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
>  				ether_addr_copy(vf->data.tcp_spec.dst_mac,
>  						match.key->dst);
>  			}
> +		}
>  
>  		if (!is_zero_ether_addr(match.key->src))
>  			if (is_valid_ether_addr(match.key->src) ||
> @@ -3677,6 +3728,8 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
>  
>  		flow_rule_match_vlan(rule, &match);
>  		if (match.mask->vlan_id) {
> +			u16 vlan = match.key->vlan_id & VLAN_VID_MASK;
> +
>  			if (match.mask->vlan_id == VLAN_VID_MASK) {
>  				field_flags |= IAVF_CLOUD_FIELD_IVLAN;
>  			} else {
> @@ -3684,6 +3737,13 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
>  					match.mask->vlan_id);
>  				return -EINVAL;
>  			}
> +
> +			if (!iavf_is_vlan_tc_filter_allowed(adapter, vlan)) {
> +				dev_err(&adapter->pdev->dev,
> +					"VLAN %u doesn't belong to this VF\n",
> +					vlan);
> +				return -EINVAL;
> +			}
>  		}
>  		vf->mask.tcp_spec.vlan_id |= cpu_to_be16(0xffff);
>  		vf->data.tcp_spec.vlan_id = cpu_to_be16(match.key->vlan_id);
> -- 
> 2.35.3
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
