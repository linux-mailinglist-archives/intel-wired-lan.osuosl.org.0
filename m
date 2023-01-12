Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BC7666B6D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jan 2023 08:11:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C7AB81E12;
	Thu, 12 Jan 2023 07:11:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C7AB81E12
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673507507;
	bh=SSs618c69yhFxhcpegmgwpKJkN1BZkiji6VAynki4kA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aCoC9CIzVM35P00zgoQ//ANJNjTKIi/7stVkq+lWgIjLJmIcUCq0ZEW4B7iJX6D1I
	 edVQgZPdBu9HcqxJEp5qIx7MW/dy/gQkEwXSB40B7K5tv27B6Prk86cMFFFNdTmbCN
	 xz9mdOoi7DPltUTTCcz2vTf9GEbU0xEaIsm7qSdlr7Q+UHL6IRDp8aLVzQOBAFas+S
	 4tmiDchBof2AvkqIWFnJWQ0pM/G2xiRt8M9CJ9/E/v4L2h/zrr2EHD1aFzHESbXpPO
	 GxDZSujdtCzkk8i+REmbdrhgvUH0Ag+7g4S1xgyOWkDcOHigyzYxAuhAXl/XvIrYHI
	 o85OCSHKzXiXA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ybLtiW1iHKik; Thu, 12 Jan 2023 07:11:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2EB9581E0C;
	Thu, 12 Jan 2023 07:11:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2EB9581E0C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 96B2F1BF396
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 07:11:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 70CE160B12
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 07:11:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 70CE160B12
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ryktGk2jToh2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jan 2023 07:11:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C00D607C9
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4C00D607C9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 07:11:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="304008124"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="304008124"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 23:11:38 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="781677297"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="781677297"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 23:11:37 -0800
Date: Thu, 12 Jan 2023 08:11:33 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Kamil Maziarz <kamil.maziarz@intel.com>
Message-ID: <Y7+ypc+uffjS52Js@localhost.localdomain>
References: <20230111142029.318092-1-kamil.maziarz@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230111142029.318092-1-kamil.maziarz@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673507500; x=1705043500;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=7cGEgDTCYi6JJiaCbysQT32Oo1x1OKdlWyFiWZYIHGo=;
 b=MF7b1aP2RVttxOUXzIYomVbAw8XAMoRIe4GYRwUmsrYroOD9cZ7xrIYh
 fmpHYq0PkRyJxDkDLOY9cMDWScA55XpeclWUNxWUfXVOHsDF0HzIQer2H
 rW+I5fvaEZEjB+eBxynbb8GmWntfHJXbgk2bAFIVXwRLvSqjUHIG4Tbw8
 sEF4V5MH9udaXZrDYKMS+Uxd7VszgXOLf5AKBx4pInZtzCfqDtO4X/n0f
 hbI3n9CIsaFMQD5LlcK2SAQ49UQGDLVINS1sgNg22FXs4HPoWAf7Khqig
 mu5/kGXBbBVzhpPPJbzEkkPAYppvll30X7LI76Ij6KYrTo7b5g5a7iVMh
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MF7b1aP2
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Ignore RDMA message on
 setup tc qdisc
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
Cc: Rafal Rogalski <rafalx.rogalski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jan 11, 2023 at 03:20:29PM +0100, Kamil Maziarz wrote:
> From: Rafal Rogalski <rafalx.rogalski@intel.com>
> 
> Commit f70b9d5f4426 ("ice: check for a leaf node presence") prevents
> removal of VSI with leaf nodes. This is an expectation of driver action
> induced by FW requirements. However, this caused RDMA scheduler config
> removal to fail every time a qdisc was added or deleted.
> 
> Fix this by ignoring errors from RDMA configuration removal when qdisc are
> being reconfigured.
> 
> Fixes: ff7e93219442 ("ice: Fix failure to re-add LAN/RDMA Tx queues")
> Signed-off-by: Rafal Rogalski <rafalx.rogalski@intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> ---
Thanks for changes. It is a good practise to include changelog here.
Something like:
v1 --> v2:
 - check for -EBUSY etc.
 ---

 Is Your patch rebased on dev-queue? I am pretty sure that
 ice_vsi_rebuild looks different on current dev-queue, please check
 that.

>  drivers/net/ethernet/intel/ice/ice.h      | 1 +
>  drivers/net/ethernet/intel/ice/ice_lib.c  | 2 +-
>  drivers/net/ethernet/intel/ice/ice_main.c | 3 +++
>  3 files changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index 2f0b604abc5e..b572d07bc126 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -306,6 +306,7 @@ enum ice_pf_state {
>  	ICE_PHY_INIT_COMPLETE,
>  	ICE_FD_VF_FLUSH_CTX,		/* set at FD Rx IRQ or timeout */
>  	ICE_AUX_ERR_PENDING,
> +	ICE_SETUP_TC_QDISC,
>  	ICE_STATE_NBITS		/* must be last */
>  };
>  
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 22bcb414546a..0ee3acbea108 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -3448,7 +3448,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
>  
>  	ice_rm_vsi_lan_cfg(vsi->port_info, vsi->idx);
>  	ret = ice_rm_vsi_rdma_cfg(vsi->port_info, vsi->idx);
> -	if (ret)
> +	if (ret && !(test_bit(ICE_SETUP_TC_QDISC, pf->state) && ret == -EBUSY))
It is fine for me in current state, but do we really need to do this
check only in setting TC qdisc? Doesn't the same thing happen when the
number of queues is changed from ethtool? (maybe it is not because the
changes is blocked when RDMA is active). Maybe whole
ice_setup_tc_mqprio_qdisc() should return -EBOUSY or inval if RDMA is
active? Is it valid to a new qdisc when RDMA is active?

>  		dev_err(ice_pf_to_dev(vsi->back), "Failed to remove RDMA scheduler config for VSI %u, err %d\n",
>  			vsi->vsi_num, ret);
>  	ice_vsi_free_q_vectors(vsi);
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index a9a7f8b52140..5ff137645f08 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -8706,6 +8706,7 @@ static int ice_setup_tc_mqprio_qdisc(struct net_device *netdev, void *type_data)
>  	cur_txq = vsi->num_txq;
>  	cur_rxq = vsi->num_rxq;
>  
> +	set_bit(ICE_SETUP_TC_QDISC, pf->state);
>  	/* proceed with rebuild main VSI using correct number of queues */
>  	ret = ice_vsi_rebuild(vsi, false);
>  	if (ret) {
> @@ -8716,9 +8717,11 @@ static int ice_setup_tc_mqprio_qdisc(struct net_device *netdev, void *type_data)
>  		clear_bit(ICE_RESET_FAILED, pf->state);
>  		if (ice_vsi_rebuild(vsi, false)) {
>  			dev_err(dev, "Rebuild of main VSI failed again\n");
> +			clear_bit(ICE_SETUP_TC_QDISC, pf->state);
>  			return ret;
>  		}
>  	}
> +	clear_bit(ICE_SETUP_TC_QDISC, pf->state);
>  
>  	vsi->all_numtc = num_tcf;
>  	vsi->all_enatc = ena_tc_qdisc;
> -- 
> 2.31.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
