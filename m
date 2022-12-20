Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E2212651DE4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Dec 2022 10:47:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 34E4181BCB;
	Tue, 20 Dec 2022 09:47:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34E4181BCB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671529626;
	bh=m/n/TyOqNyAmtzx7p5d7m1x7TBL69o/CJovzIex/bjY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=grqt/SjfSTWJFTFpOl3CMXrBODQJCN8Givl70zPNRrB6fh2KIfRHSUfsI+s11f2Q+
	 mZizj29CT6oGZbdXSHEkkUf2jekQbmIKgFXattKOb+T7N3YCvIH8zi/n4AfgAo7axO
	 Fwkc0XTLBM7bk1EKgNwrmjCJ8yRM0jfdF9DHrVnLerN2BG69wrG9MJjn/gelvBYr4q
	 knHjcTTJMjdbZFte4oz+ZEsG7oQDWyOfVZrej9RWJzdetX5+K0XpehYuZo1r963J6u
	 SgCWKfrKbN1Bpn9aVgaMWLvHB3Z7ypZCOjoVpiMyG9EOMaogfBj++8yG7of8spopYd
	 vG9se+61mwuug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h7bTJ6BUnm7c; Tue, 20 Dec 2022 09:47:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C0C8581BB2;
	Tue, 20 Dec 2022 09:47:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C0C8581BB2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 15D001BF421
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 09:46:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E0C59410A4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 09:46:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0C59410A4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CTnIUk_1jMUk for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Dec 2022 09:46:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0348E410A0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0348E410A0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 09:46:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="317210269"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="317210269"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 01:46:49 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="825167526"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="825167526"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 01:46:47 -0800
Date: Tue, 20 Dec 2022 10:46:38 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Kalyan Kodamagula <kalyan.kodamagula@intel.com>
Message-ID: <Y6GEfreZdBJaVIEX@localhost.localdomain>
References: <20221219140700.26496-1-kalyan.kodamagula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221219140700.26496-1-kalyan.kodamagula@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671529616; x=1703065616;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=BcPp89bk6jMYuOW6YywKeHiLrWWWuquyOHpfCoYUM7A=;
 b=nh+DaVjiCh7HycwIVLfUW9uUQtmxtFlKsKGiqchI0z0L/dCI6vm2rgfW
 0EjBnbuTstt+m6p7jhM5vcea4/b2K8umbyuPyW92GGDyxtGJNDMyKtHHg
 KcMuqX8qodQ9CPiKD1hmNNp54bOMEfaoARxw6pvuEXXvHa5Yf0jGIfZC7
 fIGetZDBxoGNfLnaNlSrzN6F6Us17W5RPntN04djhJcfAHR4npbWHlei2
 OPE5OWMLTNbJmcYB90zpioGFQqcpxR7rLkkU9zbY6p87NBsjCDWjijFdn
 pbJi7RAHxNwFIZdYXzes7F4hE7tu0Q9vV+gU4B3FzaFZyK3mMzU7mpGpT
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nh+DaVji
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice-: Add MDD logging via
 devlink health
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
Cc: Ben Shelton <benjamin.h.shelton@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Dec 19, 2022 at 03:07:00PM +0100, Kalyan Kodamagula wrote:
Hi,

Thanks for patch, please remove - from title (ice-:)

> From: Ben Shelton <benjamin.h.shelton@intel.com>
> 
> - Enable DEVLINK_SUPPORT for ice_sw build.

What is ice_sw build?

> 
> - Add a devlink health reporter for MDD events. The 'dump' handler will
>   return the information captured in each call to
>   ice_handle_mdd_event(). A device reset (CORER/PFR) will put the
>   reporter back in healthy state.
> 
> Signed-off-by: Ben Shelton <benjamin.h.shelton@intel.com>
> Signed-off-by: Kalyan Kodamagula <kalyan.kodamagula@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |  24 +++
>  drivers/net/ethernet/intel/ice/ice_devlink.c | 189 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_devlink.h |   6 +
>  drivers/net/ethernet/intel/ice/ice_main.c    |  10 +
>  4 files changed, 229 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index 001500afc4a6..433c514e73fb 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -503,6 +503,29 @@ struct ice_agg_node {
>  	u8 valid;
>  };
>  
> +enum ice_mdd_src {
> +	ICE_MDD_SRC_NONE = 0,
> +	ICE_MDD_SRC_TX_PQM,
> +	ICE_MDD_SRC_TX_TCLAN,
> +	ICE_MDD_SRC_TX_TDPU,
> +	ICE_MDD_SRC_RX
> +};
> +
> +struct ice_mdd_event {
> +	struct list_head list;
> +	enum ice_mdd_src src;
> +	u8 pf_num;
> +	u16 vf_num;
> +	u8 event;
> +	u16 queue;
> +};
> +
> +struct ice_mdd_reporter {
> +	struct devlink_health_reporter *reporter;
> +	u16 count;
> +	struct list_head event_list;
> +};
> +
>  struct ice_pf {
>  	struct pci_dev *pdev;
>  
> @@ -512,6 +535,7 @@ struct ice_pf {
>  
>  	/* devlink port data */
>  	struct devlink_port devlink_port;
> +	struct ice_mdd_reporter mdd_reporter;
>  
>  	/* OS reserved IRQ details */
>  	struct msix_entry *msix_entries;
> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
> index e6ec20079ced..79a12cd94110 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> @@ -1364,3 +1364,192 @@ void ice_devlink_destroy_regions(struct ice_pf *pf)
>  	if (pf->devcaps_region)
>  		devlink_region_destroy(pf->devcaps_region);
>  }
> +
> +#define ICE_MDD_SRC_TO_STR(_src) \
> +	((_src) == ICE_MDD_SRC_NONE ? "none"            \
> +	: (_src) == ICE_MDD_SRC_TX_PQM ? "tx_pqm"      \
> +	: (_src) == ICE_MDD_SRC_TX_TCLAN ? "tx_tclan"  \
> +	: (_src) == ICE_MDD_SRC_TX_TDPU ? "tx_tdpu"    \
> +	: (_src) == ICE_MDD_SRC_RX ? "rx"              \
> +	: "invalid")
> +
> +static int
> +ice_mdd_reporter_dump(struct devlink_health_reporter *reporter,
> +		      struct devlink_fmsg *fmsg, void *priv_ctx,
> +		      struct netlink_ext_ack __always_unused *extack)
> +{
> +	struct ice_pf *pf = devlink_health_reporter_priv(reporter);
> +	struct ice_mdd_reporter *mdd_reporter = &pf->mdd_reporter;
> +	struct ice_mdd_event *mdd_event;
> +	int err;
> +
> +	err = devlink_fmsg_u32_pair_put(fmsg, "count",
> +					mdd_reporter->count);
> +	if (err)
> +		return err;
> +
> +	list_for_each_entry(mdd_event, &mdd_reporter->event_list, list) {
> +		char *src;
> +
> +		err = devlink_fmsg_obj_nest_start(fmsg);
> +		if (err)
> +			return err;
> +
> +		src = ICE_MDD_SRC_TO_STR(mdd_event->src);
> +
> +		err = devlink_fmsg_string_pair_put(fmsg, "src", src);
> +		if (err)
> +			return err;
> +
> +		err = devlink_fmsg_u8_pair_put(fmsg, "pf_num",
> +					       mdd_event->pf_num);
> +		if (err)
> +			return err;
> +
> +		err = devlink_fmsg_u32_pair_put(fmsg, "mdd_vf_num",
> +						mdd_event->vf_num);
> +		if (err)
> +			return err;
> +
> +		err = devlink_fmsg_u8_pair_put(fmsg, "mdd_event",
> +					       mdd_event->event);
> +		if (err)
> +			return err;
> +
> +		err = devlink_fmsg_u32_pair_put(fmsg, "mdd_queue",
> +						mdd_event->queue);
> +		if (err)
> +			return err;
> +
> +		err = devlink_fmsg_obj_nest_end(fmsg);
> +		if (err)
> +			return err;
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct devlink_health_reporter_ops ice_mdd_reporter_ops = {
> +	.name = "mdd",
> +	.dump = ice_mdd_reporter_dump,
> +};
> +
> +/**
> + * ice_devlink_init_mdd_reporter - Initialize MDD devlink health reporter
> + * @pf: the PF device structure
> + *
> + * Create devlink health reporter used to handle MDD events.
> + */
> +void ice_devlink_init_mdd_reporter(struct ice_pf *pf)
> +{
> +	struct devlink *devlink = priv_to_devlink(pf);
> +	struct device *dev = ice_pf_to_dev(pf);
> +
> +	INIT_LIST_HEAD(&pf->mdd_reporter.event_list);
> +
> +	pf->mdd_reporter.reporter =
> +		devlink_health_reporter_create(devlink,
> +					       &ice_mdd_reporter_ops,
> +					       0, /* graceful period */
> +					       pf); /* private data */
> +
> +	if (IS_ERR(pf->mdd_reporter.reporter)) {
> +		dev_err(dev, "failed to create devlink MDD health reporter");
> +	}
> +}
> +
> +/**
> + * ice_devlink_destroy_mdd_reporter - Destroy MDD devlink health reporter
> + * @pf: the PF device structure
> + *
> + * Remove previously created MDD health reporter for this PF.
> + */
> +void ice_devlink_destroy_mdd_reporter(struct ice_pf *pf)
> +{
> +	if (pf->mdd_reporter.reporter)
> +		devlink_health_reporter_destroy(pf->mdd_reporter.reporter);
I wonder if the list of mdd_event shouldn't be cleared here.

> +}
> +
> +/**
> + * ice_devlink_report_mdd_event - Report an MDD event through devlink health
> + * @pf: the PF device structure
> + * @src: the HW block that was the source of this MDD event
> + * @pf_num: the pf_num on which the MDD event occurred
> + * @vf_num: the vf_num on which the MDD event occurred
> + * @event: the event type of the MDD event
> + * @queue: the queue on which the MDD event occurred
> + *
> + * Report an MDD event that has occurred on this PF.
> + */
> +void
> +ice_devlink_report_mdd_event(struct ice_pf *pf, enum ice_mdd_src src,
> +			     u8 pf_num, u16 vf_num, u8 event, u16 queue)
> +{
> +	struct ice_mdd_reporter *mdd_reporter = &pf->mdd_reporter;
> +	struct ice_mdd_event *mdd_event;
> +	int err;
> +
> +	if (!mdd_reporter->reporter)
> +		return;
> +
> +	mdd_reporter->count++;
> +
> +	mdd_event = devm_kzalloc(ice_pf_to_dev(pf), sizeof(*mdd_event),
> +				 GFP_KERNEL);
> +	if (!mdd_event)
> +		return;
> +
> +	mdd_event->src = src;
> +	mdd_event->pf_num = pf_num;
> +	mdd_event->vf_num = vf_num;
> +	mdd_event->event = event;
> +	mdd_event->queue = queue;
> +
> +	list_add_tail(&mdd_event->list, &mdd_reporter->event_list);
> +
> +	mdd_event = devm_kzalloc(ice_pf_to_dev(pf), sizeof(*mdd_event),
> +				 GFP_KERNEL);
If it dosn't need to be freed in clear routine it is fine, but if it
need please use normal kzalloc instead of devm.

> +	if (!mdd_event)
> +		return;
> +
> +	mdd_event->src = src;
> +	mdd_event->pf_num = pf_num;
> +	mdd_event->vf_num = vf_num;
> +	mdd_event->event = event;
> +	mdd_event->queue = queue;
Why the mdd_event is created two time?

> +
> +	list_add_tail(&mdd_event->list, &mdd_reporter->event_list);
> +
> +	err = devlink_health_report(mdd_reporter->reporter,
> +				    "Malicious Driver Detection event\n",
> +				    pf);
> +	if (err)
> +		dev_err(ice_pf_to_dev(pf),
> +			"failed to report MDD via devlink health\n");
Shouldn't mdd_event be removed from list (and freed) in case of error?

> +}
> +
> +/**
> + * ice_devlink_clear_after_reset - clear devlink health issues after a reset
> + * @pf: the PF device structure
> + *
> + * Mark the PF in healthy state again after a reset has completed.
> + */
> +void ice_devlink_clear_after_reset(struct ice_pf *pf)
> +{
> +	struct ice_mdd_reporter *mdd_reporter = &pf->mdd_reporter;
> +	enum devlink_health_reporter_state new_state =
> +		DEVLINK_HEALTH_REPORTER_STATE_HEALTHY;
> +	struct ice_mdd_event *mdd_event, *tmp;
> +
> +	if (!mdd_reporter->reporter)
> +		return;
> +
> +	devlink_health_reporter_state_update(mdd_reporter->reporter,
> +					     new_state);
> +	pf->mdd_reporter.count = 0;
> +
> +	list_for_each_entry_safe(mdd_event, tmp, &mdd_reporter->event_list,
> +				 list) {
> +	list_del(&mdd_event->list);
Need tab, and probably mdd_event should be freed.

> +	}
> +}
> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.h b/drivers/net/ethernet/intel/ice/ice_devlink.h
> index fe006d9946f8..5632d23b6518 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devlink.h
> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.h
> @@ -18,4 +18,10 @@ void ice_devlink_destroy_vf_port(struct ice_vf *vf);
>  void ice_devlink_init_regions(struct ice_pf *pf);
>  void ice_devlink_destroy_regions(struct ice_pf *pf);
>  
> +void ice_devlink_init_mdd_reporter(struct ice_pf *pf);
> +void ice_devlink_destroy_mdd_reporter(struct ice_pf *pf);
> +void ice_devlink_report_mdd_event(struct ice_pf *pf, enum ice_mdd_src src,
> +				  u8 pf_num, u16 vf_num, u8 event, u16 queue);
> +void ice_devlink_clear_after_reset(struct ice_pf *pf);
> +
>  #endif /* _ICE_DEVLINK_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 0f6718719453..a55ce7887c1b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -1720,6 +1720,8 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
>  		if (netif_msg_tx_err(pf))
>  			dev_info(dev, "Malicious Driver Detection event %d on TX queue %d PF# %d VF# %d\n",
>  				 event, queue, pf_num, vf_num);
> +		ice_devlink_report_mdd_event(pf, ICE_MDD_SRC_TX_PQM, pf_num,
> +					     vf_num, event, queue);
>  		wr32(hw, GL_MDET_TX_PQM, 0xffffffff);
>  	}
>  
> @@ -1737,6 +1739,8 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
>  		if (netif_msg_tx_err(pf))
>  			dev_info(dev, "Malicious Driver Detection event %d on TX queue %d PF# %d VF# %d\n",
>  				 event, queue, pf_num, vf_num);
> +		ice_devlink_report_mdd_event(pf, ICE_MDD_SRC_TX_TCLAN, pf_num,
> +					     vf_num, event, queue);
>  		wr32(hw, GL_MDET_TX_TCLAN, 0xffffffff);
>  	}
>  
> @@ -1754,6 +1758,8 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
>  		if (netif_msg_rx_err(pf))
>  			dev_info(dev, "Malicious Driver Detection event %d on RX queue %d PF# %d VF# %d\n",
>  				 event, queue, pf_num, vf_num);
> +		ice_devlink_report_mdd_event(pf, ICE_MDD_SRC_RX, pf_num,
> +					     vf_num, event, queue);
>  		wr32(hw, GL_MDET_RX, 0xffffffff);
>  	}
>  
> @@ -4731,6 +4737,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
>  	}
>  
>  	ice_devlink_init_regions(pf);
> +	ice_devlink_init_mdd_reporter(pf);
>  
>  	pf->hw.udp_tunnel_nic.set_port = ice_udp_tunnel_set_port;
>  	pf->hw.udp_tunnel_nic.unset_port = ice_udp_tunnel_unset_port;
> @@ -4960,6 +4967,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
>  	devm_kfree(dev, pf->vsi);
>  err_init_pf_unroll:
>  	ice_deinit_pf(pf);
> +	ice_devlink_destroy_mdd_reporter(pf);
>  	ice_devlink_destroy_regions(pf);
>  	ice_deinit_hw(hw);
>  err_exit_unroll:
> @@ -5079,6 +5087,7 @@ static void ice_remove(struct pci_dev *pdev)
>  		ice_vsi_free_q_vectors(pf->vsi[i]);
>  	}
>  	ice_deinit_pf(pf);
> +	ice_devlink_destroy_mdd_reporter(pf);
>  	ice_devlink_destroy_regions(pf);
>  	ice_deinit_hw(&pf->hw);
>  
> @@ -7265,6 +7274,7 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
>  
>  	/* if we get here, reset flow is successful */
>  	clear_bit(ICE_RESET_FAILED, pf->state);
> +	ice_devlink_clear_after_reset(pf);
>  
>  	ice_plug_aux_dev(pf);
>  	return;
> -- 
> 2.38.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
