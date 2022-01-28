Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D1649FEB5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jan 2022 18:13:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E75BA405AC;
	Fri, 28 Jan 2022 17:13:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TyYgW5VEyZZv; Fri, 28 Jan 2022 17:13:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 59C4640580;
	Fri, 28 Jan 2022 17:13:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4FF4C1BF3B8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 17:12:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B8D6660C1A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 17:12:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KYAIVjPM4lXc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jan 2022 17:12:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BBB6B60B8C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 17:12:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643389946; x=1674925946;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v+rxZ8fjkRlWi3/evXt/h1rGazuiiLTj/bWJENcueUs=;
 b=bE8OoEAlMYmhXQbOwGcuNqIRdfuWMUyfJBax5ueDKzNQfmt7QElukf+b
 6DQIppRj9crWB6AsFO9rOYNZtqPf9qVoBB+027FaeOqqhYk6J0CWecBBh
 u97TExI6niVsuOPXD20KocxxNyBoDwnoV3w4j3jrs6TaYFftABFwBI1wU
 T+EOw1NgVzEUSDV5Bzrbhq8vnj8Q6d28Gj//38E/WwJTatd+WzE/0nbl2
 TVUXTL/lr1SYLhlvwexKLdt/G6cvUuMs/WFoigoiJHv/l3E/380Pg1XjF
 HVq3vU/i6ZZWdHPdrOto2k+B7BJLRA8v5BvWv72PhjIwmpXpXBHvDTzxU w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="234543727"
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; d="scan'208";a="234543727"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 09:08:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; d="scan'208";a="598265189"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga004.fm.intel.com with ESMTP; 28 Jan 2022 09:08:10 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 20SH89oQ026973; Fri, 28 Jan 2022 17:08:09 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Alan Brady <alan.brady@intel.com>
Date: Fri, 28 Jan 2022 18:06:28 +0100
Message-Id: <20220128170628.27485-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220128001009.721392-13-alan.brady@intel.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-13-alan.brady@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 12/19] iecm: finish netdev_ops
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
Cc: intel-wired-lan@lists.osuosl.org, Phani Burra <phani.r.burra@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alan Brady <alan.brady@intel.com>
Date: Thu, 27 Jan 2022 16:10:02 -0800

> This fills out the remaining NDO callbacks. Once netdev_ops are there, the
> rest of the patches will fill out the data path and advanced features.
> 
> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> ---
>  drivers/net/ethernet/intel/iecm/iecm_lib.c    | 742 +++++++++++++++++-
>  drivers/net/ethernet/intel/iecm/iecm_txrx.c   |  15 +
>  .../net/ethernet/intel/iecm/iecm_virtchnl.c   |  63 ++
>  drivers/net/ethernet/intel/include/iecm.h     |  14 +
>  .../net/ethernet/intel/include/iecm_txrx.h    |   2 +
>  5 files changed, 822 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iecm/iecm_lib.c b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> index 003057f48f0c..cc82e665dfaf 100644
> --- a/drivers/net/ethernet/intel/iecm/iecm_lib.c
> +++ b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> @@ -568,6 +568,147 @@ static void iecm_set_all_filters(struct iecm_vport *vport)
>  	iecm_add_del_ether_addrs(vport, true, false);
>  }
>  
> +/**
> + * iecm_find_vlan - Search filter list for specific vlan filter
> + * @vport: vport structure
> + * @vlan: vlan tag
> + *
> + * Returns ptr to the filter object or NULL. Must be called while holding the
> + * vlan_list_lock.
> + */
> +static struct
> +iecm_vlan_filter *iecm_find_vlan(struct iecm_vport *vport,
> +				 struct iecm_vlan *vlan)

Both are read-only here, thus const.

> +{
> +	struct iecm_vlan_filter *f;

Read-only, const.

> +
> +	list_for_each_entry(f, &vport->adapter->config_data.vlan_filter_list,
> +			    list) {
> +		if (vlan->vid == f->vlan.vid && vlan->tpid == f->vlan.tpid)
> +			return f;
> +	}

Braces are redundant.

> +	return NULL;
> +}
> +
> +/**
> + * iecm_add_vlan - Add a vlan filter to the list
> + * @vport: vport structure
> + * @vlan: VLAN tag
> + *
> + * Returns ptr to the filter object or NULL when no memory available.
> + */
> +static struct
> +iecm_vlan_filter *iecm_add_vlan(struct iecm_vport *vport,
> +				struct iecm_vlan *vlan)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct iecm_vlan_filter *f = NULL;
> +
> +	spin_lock_bh(&adapter->vlan_list_lock);
> +
> +	f = iecm_find_vlan(vport, vlan);
> +	if (!f) {
> +		f = kzalloc(sizeof(*f), GFP_ATOMIC);
> +		if (!f)
> +			goto error;
> +
> +		f->vlan.vid = vlan->vid;
> +		f->vlan.tpid = vlan->tpid;
> +
> +		list_add_tail(&f->list, &adapter->config_data.vlan_filter_list);
> +		f->add = true;
> +	}

	if (f)
		goto error; /* It's better to rename the label */

	f = kzalloc(...

> +
> +error:
> +	spin_unlock_bh(&adapter->vlan_list_lock);
> +	return f;
> +}
> +
> +/**
> + * iecm_del_vlan - Remove a vlan filter from the list
> + * @vport: vport structure
> + * @vlan: VLAN tag
> + */
> +static void iecm_del_vlan(struct iecm_vport *vport, struct iecm_vlan *vlan)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct iecm_vlan_filter *f;
> +
> +	spin_lock_bh(&adapter->vlan_list_lock);
> +
> +	f = iecm_find_vlan(vport, vlan);
> +	if (f)
> +		f->remove = true;
> +
> +	spin_unlock_bh(&adapter->vlan_list_lock);
> +}
> +
> +/**
> + * iecm_vlan_rx_add_vid - Add a VLAN filter to the device
> + * @netdev: network device struct
> + * @proto: unused protocol data
> + * @vid: VLAN tag
> + *
> + * Returns 0 on success
> + */
> +static int iecm_vlan_rx_add_vid(struct net_device *netdev,
> +				__always_unused __be16 proto, u16 vid)
> +{
> +	struct iecm_vport *vport = iecm_netdev_to_vport(netdev);
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct iecm_vlan vlan;
> +
> +	vlan = IECM_VLAN(vid, be16_to_cpu(proto));
> +	if (!iecm_is_feature_ena(vport, NETIF_F_HW_VLAN_CTAG_FILTER))
> +		return -EINVAL;
> +
> +	iecm_add_vlan(vport, &vlan);
> +
> +	if (adapter->state == __IECM_UP)
> +		adapter->dev_ops.vc_ops.add_del_vlans(vport, true);
> +
> +	return 0;
> +}
> +
> +/**
> + * iecm_vlan_rx_kill_vid - Remove a VLAN filter from the device
> + * @netdev: network device struct
> + * @proto: unused protocol data
> + * @vid: VLAN tag
> + *
> + * Returns 0 on success
> + */
> +static int iecm_vlan_rx_kill_vid(struct net_device *netdev,
> +				 __always_unused __be16 proto, u16 vid)
> +{
> +	struct iecm_vport *vport = iecm_netdev_to_vport(netdev);
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct iecm_vlan_filter *f, *ftmp;
> +	struct iecm_vlan vlan;
> +
> +	vlan = IECM_VLAN(vid, be16_to_cpu(proto));
> +	if (!iecm_is_feature_ena(vport, NETIF_F_HW_VLAN_CTAG_FILTER))
> +		return -EINVAL;
> +
> +	if (vport->adapter->state == __IECM_UP) {
> +		iecm_del_vlan(vport, &vlan);
> +		adapter->dev_ops.vc_ops.add_del_vlans(vport, false);
> +	}
> +	/* It is safe to delete entry from the list now */
> +	spin_lock_bh(&adapter->vlan_list_lock);
> +	list_for_each_entry_safe(f, ftmp,
> +				 &adapter->config_data.vlan_filter_list,
> +				 list) {
> +		if (f->vlan.vid == vlan.vid && f->vlan.tpid == vlan.tpid) {
> +			list_del(&f->list);
> +			kfree(f);
> +		}
> +	}

Braces.

> +	spin_unlock_bh(&adapter->vlan_list_lock);
> +
> +	return 0;
> +}
> +
>  /**
>   * iecm_set_all_vlans - Re-add all VLANs in list
>   * @vport: main vport struct
> @@ -804,6 +945,27 @@ static int iecm_get_free_slot(void *array, int size, int curr)
>  	return next;
>  }
>  
> +/**
> + * iecm_remove_vlan_filters - Remove all vlan filters
> + * @vport: vport structure
> + */
> +static void iecm_remove_vlan_filters(struct iecm_vport *vport)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct iecm_user_config_data *config_data;
> +
> +	config_data = &adapter->config_data;
> +	if (!list_empty(&config_data->vlan_filter_list)) {
> +		struct iecm_vlan_filter *f;
> +
> +		spin_lock_bh(&adapter->vlan_list_lock);
> +		list_for_each_entry(f, &config_data->vlan_filter_list, list)
> +			f->remove = true;
> +		spin_unlock_bh(&adapter->vlan_list_lock);
> +		adapter->dev_ops.vc_ops.add_del_vlans(vport, false);
> +	}
> +}
> +
>  /**
>   * iecm_vport_stop - Disable a vport
>   * @vport: vport to disable
> @@ -831,6 +993,8 @@ static void iecm_vport_stop(struct iecm_vport *vport)
>  	if (test_and_clear_bit(__IECM_DEL_QUEUES,
>  			       vport->adapter->flags))
>  		iecm_send_delete_queues_msg(vport);
> +	if (!test_bit(__IECM_REL_RES_IN_PROG, adapter->flags))
> +		iecm_remove_vlan_filters(vport);
>  
>  	adapter->link_up = false;
>  	iecm_vport_intr_deinit(vport);
> @@ -1581,6 +1745,147 @@ static void iecm_vc_event_task(struct work_struct *work)
>  	}
>  }
>  
> +/**
> + * iecm_initiate_soft_reset - Initiate a software reset
> + * @vport: virtual port data struct
> + * @reset_cause: reason for the soft reset
> + *
> + * Soft reset only reallocs vport queue resources. Returns 0 on success,
> + * negative on failure.
> + */
> +int iecm_initiate_soft_reset(struct iecm_vport *vport,
> +			     enum iecm_flags reset_cause)
> +{
> +	enum iecm_state current_state = vport->adapter->state;
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct iecm_vport *new_vport;
> +	int err = 0, i;
> +
> +	/* make sure we do not end up in initiating multiple resets */
> +	mutex_lock(&adapter->reset_lock);
> +
> +	/* If the system is low on memory, we can end up in bad state if we
> +	 * free all the memory for queue resources and try to allocate them
> +	 * again. Instead, we can pre-allocate the new resources before doing
> +	 * anything and bailing if the alloc fails.
> +	 *
> +	 * Make a clone of the existing vport to mimic its current configuration,
> +	 * then modify the new structure with any requested changes. Once the
> +	 * allocation of the new resources is done, stop the existing vport and
> +	 * copy the configuration to the main vport. If an error occurred, the
> +	 * existing vport will be untouched.
> +	 *
> +	 */
> +	new_vport = kzalloc(sizeof(*vport), GFP_KERNEL);
> +	if (!new_vport) {
> +		mutex_unlock(&adapter->reset_lock);
> +		return -ENOMEM;
> +	}
> +	memcpy(new_vport, vport, sizeof(*vport));
> +
> +	/* Adjust resource parameters prior to reallocating resources */
> +	switch (reset_cause) {
> +	case __IECM_SR_Q_CHANGE:
> +		adapter->dev_ops.vc_ops.adjust_qs(new_vport);
> +		break;
> +	case __IECM_SR_Q_DESC_CHANGE:
> +		/* Update queue parameters before allocating resources */
> +		iecm_vport_calc_num_q_desc(new_vport);
> +		break;
> +	case __IECM_SR_Q_SCH_CHANGE:
> +	case __IECM_SR_MTU_CHANGE:
> +	case __IECM_SR_RSC_CHANGE:
> +	case __IECM_SR_HSPLIT_CHANGE:
> +		break;
> +	default:
> +		dev_err(&adapter->pdev->dev, "Unhandled soft reset cause\n");
> +		err = -EINVAL;
> +		goto err_default;
> +	}
> +
> +	err = iecm_vport_queues_alloc(new_vport);
> +	if (err)
> +		goto err_default;
> +
> +	if (adapter->virt_ver_maj == VIRTCHNL_VERSION_MAJOR_2) {
> +		if (current_state <= __IECM_DOWN) {
> +			adapter->dev_ops.vc_ops.delete_queues(vport);
> +		} else {
> +			set_bit(__IECM_DEL_QUEUES, adapter->flags);
> +			iecm_vport_stop(vport);
> +		}
> +
> +		iecm_deinit_rss(vport);
> +		err = adapter->dev_ops.vc_ops.add_queues(new_vport, new_vport->num_txq,
> +							 new_vport->num_complq,
> +							 new_vport->num_rxq,
> +							 new_vport->num_bufq);
> +		if (err)
> +			goto err_reset;
> +	} else {
> +		iecm_vport_stop(vport);
> +	}

	if (maj != MAJOR_2) {
		iecm_vport_stop(vport);
		goto init;
	}

	...

> +
> +	memcpy(vport, new_vport, sizeof(*vport));
> +	/* Since iecm_vport_queues_alloc was called with new_port, the queue
> +	 * back pointers are currently pointing to the local new_vport. Reset
> +	 * the backpointers to the original vport here
> +	 */
> +	for (i = 0; i < vport->num_txq_grp; i++) {
> +		struct iecm_txq_group *tx_qgrp = &vport->txq_grps[i];
> +		int j;
> +
> +		tx_qgrp->vport = vport;
> +		for (j = 0; j < tx_qgrp->num_txq; j++)
> +			tx_qgrp->txqs[j]->vport = vport;
> +
> +		if (iecm_is_queue_model_split(vport->txq_model))
> +			tx_qgrp->complq->vport = vport;
> +	}
> +
> +	for (i = 0; i < vport->num_rxq_grp; i++) {
> +		struct iecm_rxq_group *rx_qgrp = &vport->rxq_grps[i];
> +		struct iecm_queue *q;
> +		int j, num_rxq;
> +
> +		rx_qgrp->vport = vport;
> +		for (j = 0; j < vport->num_bufqs_per_qgrp; j++)
> +			rx_qgrp->splitq.bufq_sets[j].bufq.vport = vport;
> +
> +		if (iecm_is_queue_model_split(vport->rxq_model))
> +			num_rxq = rx_qgrp->splitq.num_rxq_sets;
> +		else
> +			num_rxq = rx_qgrp->singleq.num_rxq;
> +
> +		for (j = 0; j < num_rxq; j++) {
> +			if (iecm_is_queue_model_split(vport->rxq_model))
> +				q = &rx_qgrp->splitq.rxq_sets[j]->rxq;
> +			else
> +				q = rx_qgrp->singleq.rxqs[j];
> +			q->vport = vport;
> +		}
> +	}
> +
> +	/* Post resource allocation reset */
> +	if (reset_cause == __IECM_SR_Q_CHANGE) {
> +		iecm_intr_rel(adapter);
> +		iecm_intr_req(adapter);
> +	}
> +
> +	kfree(new_vport);
> +
> +	if (current_state == __IECM_UP)
> +		err = iecm_vport_open(vport, false);
> +	mutex_unlock(&adapter->reset_lock);
> +	return err;
> +err_reset:
> +	iecm_vport_queues_rel(vport);
> +err_default:
> +	kfree(new_vport);
> +	mutex_unlock(&adapter->reset_lock);
> +	return err;
> +}
> +
>  /**
>   * iecm_probe - Device initialization routine
>   * @pdev: PCI device information struct
> @@ -1905,6 +2210,47 @@ static void iecm_set_rx_mode(struct net_device *netdev)
>  	}
>  }
>  
> +/**
> + * iecm_set_features - set the netdev feature flags
> + * @netdev: ptr to the netdev being adjusted
> + * @features: the feature set that the stack is suggesting
> + */
> +static int iecm_set_features(struct net_device *netdev,
> +			     netdev_features_t features)
> +{
> +	struct iecm_vport *vport = iecm_netdev_to_vport(netdev);
> +	struct iecm_adapter *adapter = vport->adapter;
> +	int err = 0;
> +
> +	if (iecm_is_cap_ena(adapter, IECM_OTHER_CAPS, VIRTCHNL2_CAP_VLAN) ||
> +	    iecm_is_cap_ena(adapter, IECM_BASE_CAPS, VIRTCHNL2_CAP_VLAN)) {
> +		err = iecm_set_vlan_offload_features(netdev, netdev->features,
> +						     features);
> +		if (err)
> +			return err;
> +	}
> +
> +	if ((netdev->features ^ features) & NETIF_F_GRO_HW) {
> +		netdev->features ^= NETIF_F_GRO_HW;
> +		err = iecm_initiate_soft_reset(vport, __IECM_SR_RSC_CHANGE);
> +	}
> +
> +	return err;
> +}
> +
> +/**
> + * iecm_fix_features - fix up the netdev feature bits
> + * @netdev: our net device
> + * @features: desired feature bits
> + *
> + * Returns fixed-up features bits
> + */
> +static netdev_features_t iecm_fix_features(struct net_device *netdev,
> +					   netdev_features_t features)
> +{
> +	return features;
> +}

This adds +1 redundant indirect call to hotpath. fix_features is
fully optional.

> +
>  /**
>   * iecm_open - Called when a network interface becomes active
>   * @netdev: network interface device structure
> @@ -1924,6 +2270,374 @@ static int iecm_open(struct net_device *netdev)
>  	return iecm_vport_open(np->vport, true);
>  }
>  
> +/**
> + * iecm_change_mtu - NDO callback to change the MTU
> + * @netdev: network interface device structure
> + * @new_mtu: new value for maximum frame size
> + *
> + * Returns 0 on success, negative on failure
> + */
> +static int iecm_change_mtu(struct net_device *netdev, int new_mtu)
> +{
> +	struct iecm_vport *vport =  iecm_netdev_to_vport(netdev);
> +
> +	netdev->mtu = new_mtu;
> +
> +	return iecm_initiate_soft_reset(vport, __IECM_SR_MTU_CHANGE);
> +}
> +
> +static int iecm_offload_txtime(struct iecm_vport *vport,
> +			       struct tc_etf_qopt_offload *qopt)
> +{
> +	return -EOPNOTSUPP;
> +}

Pointless function. If it will be expanded later, introduce it only
then.
Otherwise, code becomes a mess.

> +
> +/**
> + * iecm_validate_tx_bandwidth - validate the max Tx bandwidth
> + * @vport: vport structure
> + * @max_tx_rate: max Tx bandwidth for a tc
> + **/
> +static int iecm_validate_tx_bandwidth(struct iecm_vport *vport,
> +				      u64 max_tx_rate)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	int speed = 0, ret = 0;
> +
> +	if (adapter->link_speed_mbps) {
> +		if (adapter->link_speed_mbps < U32_MAX) {
> +			speed = adapter->link_speed_mbps;
> +			goto validate_bw;
> +		} else {
> +			dev_err(&adapter->pdev->dev, "Unknown link speed\n");
> +			return -EINVAL;
> +		}
> +	}

	switch (adapter->link_speed_mbps) {
	case 1 ... U32_MAX - 1:
		speed = adapter->link_speed_mbps;
		goto validate_bw;
	case U32_MAX:
		dev_err();
		return -EINVAL;
	case 0:
	default:
		break;
	}

or

	if (link_speed_mbps < U32_MAX)
		set;
	else if (link_speed_mbps) /* This means it's U32_MAX */
		error;
> +
> +	switch (adapter->link_speed) {
> +	case VIRTCHNL_LINK_SPEED_40GB:
> +		speed = SPEED_40000;
> +		break;
> +	case VIRTCHNL_LINK_SPEED_25GB:
> +		speed = SPEED_25000;
> +		break;
> +	case VIRTCHNL_LINK_SPEED_20GB:
> +		speed = SPEED_20000;
> +		break;
> +	case VIRTCHNL_LINK_SPEED_10GB:
> +		speed = SPEED_10000;
> +		break;
> +	case VIRTCHNL_LINK_SPEED_5GB:
> +		speed = SPEED_5000;
> +		break;
> +	case VIRTCHNL_LINK_SPEED_2_5GB:
> +		speed = SPEED_2500;
> +		break;
> +	case VIRTCHNL_LINK_SPEED_1GB:
> +		speed = SPEED_1000;
> +		break;
> +	case VIRTCHNL_LINK_SPEED_100MB:
> +		speed = SPEED_100;
> +		break;

All these can be converted to an array and compressed using macros.

> +	default:
> +		break;
> +	}
> +
> +validate_bw:
> +	if (max_tx_rate > speed) {
> +		dev_err(&adapter->pdev->dev, "Invalid tx rate specified\n");
> +		ret = -EINVAL;
> +	}
> +
> +	return ret;
> +}
> +
> +/**
> + * iecm_validate_ch_config - validate queue mapping info
> + * @vport: vport structure
> + * @mqprio_qopt: queue parameters
> + * @max_tc_allowed: MAX TC allowed, it could be 4 or 16 depends.
> + *
> + * This function validates if the configuration provided by the user to
> + * configure queue channels is valid or not.
> + *
> + * Returns 0 on a valid config and negative on invalid config.
> + **/
> +static int iecm_validate_ch_config(struct iecm_vport *vport,
> +				   struct tc_mqprio_qopt_offload *mqprio_qopt,
> +				   u8 max_tc_allowed)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	u32 tc, qcount, non_power_2_qcount = 0;
> +	u64 total_max_rate = 0;
> +	int i, num_qs = 0;
> +
> +	if (mqprio_qopt->qopt.num_tc > max_tc_allowed ||
> +	    mqprio_qopt->qopt.num_tc < 1)
> +		return -EINVAL;
> +
> +	/* For ADQ there are few rules on queue allocation for each TC
> +	 *     1. Number of queues for TC0 should always be a power of 2
> +	 *     2. Number of queues for rest of TCs can be non-power of 2
> +	 *     3. If the previous TC has non-power of 2 queues, then all the
> +	 *        following TCs should be either
> +	 *        a. same number of queues as that of the previous non-power
> +	 *           of 2 or
> +	 *        b. less than previous non-power of 2 and power of 2
> +	 *        ex: 1@0 2@1 3@3 4@6 - Invalid
> +	 *            1@0 2@1 3@3 3@6 - Valid
> +	 *            1@0 2@1 3@3 2@6 - Valid
> +	 *            1@0 2@1 3@3 1@6 - Valid
> +	 */
> +	for (tc = 0; tc < mqprio_qopt->qopt.num_tc; tc++) {
> +		qcount = mqprio_qopt->qopt.count[tc];
> +
> +		/* case 1. check for first TC to be always power of 2 in ADQ */
> +		if (!tc && !is_power_of_2(qcount)) {
> +			dev_err(&adapter->pdev->dev,
> +				"TC0:qcount[%d] must be a power of 2\n",
> +				qcount);
> +			return -EINVAL;
> +		}
> +		/* case 2 & 3, check for non-power of 2 number of queues */
> +		if (tc && non_power_2_qcount) {
> +			if (qcount > non_power_2_qcount) {
> +				dev_err(&adapter->pdev->dev,
> +					"TC%d has %d qcount cannot be > non_power_of_2 qcount [%d]\n",
> +					tc, qcount, non_power_2_qcount);
> +				return -EINVAL;
> +			} else if (qcount < non_power_2_qcount) {
> +				/* it must be power of 2, otherwise fail */
> +				if (!is_power_of_2(qcount)) {
> +					dev_err(&adapter->pdev->dev,
> +						"TC%d has %d qcount must be a power of 2 < non_power_of_2 qcount [%d]\n",
> +						tc, qcount, non_power_2_qcount);
> +					return -EINVAL;
> +				}
> +			}
> +		} else if (tc && !is_power_of_2(qcount)) {
> +			/* this is the first TC to have a non-power of 2 queue
> +			 * count and the code is going to enter this section
> +			 * only once. The qcount for this TC will serve as
> +			 * our reference/guide to allocate number of queues
> +			 * for all the further TCs as per section a. and b. in
> +			 * case 3 mentioned above.
> +			 */
> +			non_power_2_qcount = qcount;
> +			dev_dbg(&adapter->pdev->dev,
> +				"TC%d:count[%d] non power of 2\n", tc,
> +				qcount);
> +			}
> +	}
> +
> +	for (i = 0; i <= mqprio_qopt->qopt.num_tc - 1; i++) {
> +		u64 tx_rate = 0;
> +
> +		if (!mqprio_qopt->qopt.count[i] ||
> +		    mqprio_qopt->qopt.offset[i] != num_qs)
> +			return -EINVAL;
> +		if (mqprio_qopt->min_rate[i]) {
> +			dev_err(&adapter->pdev->dev,
> +				"Invalid min tx rate (greater than 0) specified\n");
> +			return -EINVAL;
> +		}
> +		/*convert to Mbps */
> +		tx_rate = div_u64(mqprio_qopt->max_rate[i], IECM_MBPS_DIVISOR);
> +		total_max_rate += tx_rate;
> +		num_qs += mqprio_qopt->qopt.count[i];
> +	}
> +	/* Comparing with num_txq as num_txq and num_rxq are equal for single
> +	 * queue model
> +	 */
> +	if (num_qs > vport->num_txq) {
> +		dev_err(&adapter->pdev->dev,
> +			"Cannot support requested number of queues\n");
> +		return -EINVAL;
> +	}
> +	/* no point in validating TX bandwidth rate limit if the user hasn't
> +	 * specified any rate limit for any TCs, so validate only if it's set.
> +	 */
> +	if (total_max_rate)
> +		return iecm_validate_tx_bandwidth(vport, total_max_rate);
> +	else
> +		return 0;

`else` before `return` is redundant.
I'd invert the condition at all:

	if (!total_max_rate)
		return 0;

	return iecm_ ...

It's more natural to read and follow the flow.

> +}
> +
> +/**
> + * __iecm_setup_tc - configure multiple traffic classes
> + * @vport: vport structure
> + * @type_data: tc offload data
> + *
> + * This function processes the config information provided by the
> + * user to configure traffic classes/queue channels and packages the
> + * information to request the PF to setup traffic classes.
> + *
> + * Returns 0 on success.
> + **/
> +static int __iecm_setup_tc(struct iecm_vport *vport, void *type_data)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct tc_mqprio_qopt_offload *mqprio_qopt;
> +	struct net_device *netdev = vport->netdev;
> +	struct iecm_channel_config *ch_config;
> +	u8 num_tc = 0, total_qs = 0;
> +	int ret = 0;

Please don't break RCT style.

> +	u8 max_tc_allowed;
> +	u64 max_tx_rate;
> +	u16 mode;
> +
> +	mqprio_qopt = (struct tc_mqprio_qopt_offload *)type_data;
> +	ch_config = &adapter->config_data.ch_config;
> +	num_tc = mqprio_qopt->qopt.num_tc;
> +	mode = mqprio_qopt->mode;
> +
> +	/* delete queue_channel */
> +	if (!mqprio_qopt->qopt.hw) {
> +		if (ch_config->tc_running) {
> +			/* reset the tc configuration */
> +			netdev_reset_tc(netdev);
> +			ch_config->num_tc = 0;
> +			netif_tx_stop_all_queues(netdev);
> +			netif_tx_disable(netdev);
> +			ret = iecm_send_disable_channels_msg(vport);
> +			netif_tx_start_all_queues(netdev);
> +			if (!test_bit(__IECM_REL_RES_IN_PROG, adapter->flags) &&
> +			    !ret) {
> +				ch_config->tc_running = false;
> +				set_bit(__IECM_HR_FUNC_RESET, adapter->flags);
> +				queue_delayed_work(adapter->vc_event_wq,
> +						   &adapter->vc_event_task,
> +						   msecs_to_jiffies(10));
> +			}
> +			return ret;
> +		} else {
> +			return -EINVAL;
> +		}
> +	}

You can save 2 indent levels by inverting the conditions (and adding
one `goto`).

> +
> +	if (mode == TC_MQPRIO_MODE_CHANNEL) {
> +		int i, netdev_tc = 0;
> +
> +		if (!iecm_is_cap_ena(adapter, IECM_BASE_CAPS,
> +				     VIRTCHNL2_CAP_ADQ) &&
> +		    !iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> +					     VIRTCHNL2_CAP_ADQ)) {
> +			dev_info(&adapter->pdev->dev, "ADQ not supported\n");
> +			return -EOPNOTSUPP;
> +		}
> +
> +		if (ch_config->tc_running) {
> +			dev_info(&adapter->pdev->dev, "TC configuration already exists\n");
> +			return -EINVAL;
> +		}
> +
> +		/* If negotiated capability between VF and PF indicated that
> +		 * ADQ_V2 is enabled, means it's OK to allow max_tc
> +		 * to be 16. This is needed to handle the case where iAVF
> +		 * is newer but PF is older or different generation
> +		 */
> +		if (iecm_is_cap_ena(adapter, IECM_OTHER_CAPS, VIRTCHNL2_CAP_ADQ))
> +			max_tc_allowed = VIRTCHNL_MAX_ADQ_V2_CHANNELS;
> +		else
> +			max_tc_allowed = VIRTCHNL_MAX_ADQ_CHANNELS;
> +
> +		ret = iecm_validate_ch_config(vport, mqprio_qopt,
> +					      max_tc_allowed);
> +		if (ret)
> +			return ret;
> +		/* Return if same TC config is requested */
> +		if (ch_config->num_tc == num_tc)
> +			return 0;
> +		ch_config->num_tc = num_tc;
> +
> +		for (i = 0; i < max_tc_allowed; i++) {
> +			if (i < num_tc) {
> +				ch_config->ch_info[i].count =
> +					mqprio_qopt->qopt.count[i];
> +				ch_config->ch_info[i].offset =
> +					mqprio_qopt->qopt.offset[i];
> +				total_qs += mqprio_qopt->qopt.count[i];
> +				max_tx_rate = mqprio_qopt->max_rate[i];
> +				/* convert to Mbps */
> +				max_tx_rate = div_u64(max_tx_rate,
> +						      IECM_MBPS_DIVISOR);
> +				ch_config->ch_info[i].max_tx_rate =
> +								max_tx_rate;
> +			} else {
> +				ch_config->ch_info[i].count = 1;
> +				ch_config->ch_info[i].offset = 0;
> +			}
> +		}
> +
> +		/* Store queue info based on TC so that, VF gets configured
> +		 * with correct number of queues when VF completes ADQ config
> +		 * flow
> +		 */
> +		ch_config->total_qs = total_qs;
> +
> +		netif_tx_stop_all_queues(netdev);
> +		netif_tx_disable(netdev);
> +		ret = iecm_send_enable_channels_msg(vport);
> +		if (ret)
> +			return ret;
> +		netdev_reset_tc(netdev);
> +		/* Report the tc mapping up the stack */
> +		netdev_set_num_tc(netdev, num_tc);
> +		for (i = 0; i < max_tc_allowed; i++) {
> +			u16 qcount = mqprio_qopt->qopt.count[i];
> +			u16 qoffset = mqprio_qopt->qopt.offset[i];
> +
> +			if (i < num_tc)
> +				netdev_set_tc_queue(netdev, netdev_tc++, qcount,
> +						    qoffset);
> +		}
> +		/* Start all queues */
> +		netif_tx_start_all_queues(netdev);
> +		ch_config->tc_running = true;
> +		set_bit(__IECM_HR_FUNC_RESET, adapter->flags);
> +		queue_delayed_work(adapter->vc_event_wq,
> +				   &adapter->vc_event_task,
> +				   msecs_to_jiffies(10));
> +	}
> +	return ret;
> +}
> +
> +/**
> + * iecm_setup_tc - ndo callback to setup up TC schedulers
> + * @netdev: pointer to net_device struct
> + * @type: TC type
> + * @type_data: TC type specific data
> + */
> +static int iecm_setup_tc(struct net_device *netdev, enum tc_setup_type type,
> +			 void *type_data)
> +{
> +	struct iecm_vport *vport = iecm_netdev_to_vport(netdev);
> +	struct iecm_adapter *adapter = vport->adapter;
> +	int err = 0;
> +
> +	switch (type) {
> +	case TC_SETUP_QDISC_ETF:
> +		if (iecm_is_queue_model_split(vport->txq_model))
> +			err =
> +			iecm_offload_txtime(vport,
> +					    (struct tc_etf_qopt_offload *)
> +					     type_data);
> +		break;

So if we're using singleq model, it will do nothing and return 0.
The kernel will think we've set things up, and we haven't.

> +	case TC_SETUP_BLOCK:
> +		break;

Same here.

> +	case TC_SETUP_QDISC_MQPRIO:
> +		if (iecm_is_cap_ena(adapter, IECM_BASE_CAPS,
> +				    VIRTCHNL2_CAP_ADQ) ||
> +		    iecm_is_cap_ena(adapter, IECM_OTHER_CAPS, VIRTCHNL2_CAP_ADQ))
> +			__iecm_setup_tc(vport, type_data);
> +		break;

And here if we don't have caps.

> +	default:
> +		err = -EOPNOTSUPP;
> +		break;
> +	}
> +
> +	return err;
> +}
> +
>  /**
>   * iecm_set_mac - NDO callback to set port mac address
>   * @netdev: network interface device structure
> @@ -1997,13 +2711,13 @@ static const struct net_device_ops iecm_netdev_ops_splitq = {
>  	.ndo_set_rx_mode = iecm_set_rx_mode,
>  	.ndo_validate_addr = eth_validate_addr,
>  	.ndo_set_mac_address = iecm_set_mac,
> -	.ndo_change_mtu = NULL,
> -	.ndo_get_stats64 = NULL,
> -	.ndo_fix_features = NULL,
> -	.ndo_set_features = NULL,
> -	.ndo_vlan_rx_add_vid = NULL,
> -	.ndo_vlan_rx_kill_vid = NULL,
> -	.ndo_setup_tc = NULL,
> +	.ndo_change_mtu = iecm_change_mtu,
> +	.ndo_get_stats64 = iecm_get_stats64,
> +	.ndo_fix_features = iecm_fix_features,
> +	.ndo_set_features = iecm_set_features,
> +	.ndo_vlan_rx_add_vid = iecm_vlan_rx_add_vid,
> +	.ndo_vlan_rx_kill_vid = iecm_vlan_rx_kill_vid,
> +	.ndo_setup_tc = iecm_setup_tc,
>  };
>  
>  static const struct net_device_ops iecm_netdev_ops_singleq = {
> @@ -2013,11 +2727,11 @@ static const struct net_device_ops iecm_netdev_ops_singleq = {
>  	.ndo_set_rx_mode = iecm_set_rx_mode,
>  	.ndo_validate_addr = eth_validate_addr,
>  	.ndo_set_mac_address = iecm_set_mac,
> -	.ndo_change_mtu = NULL,
> -	.ndo_get_stats64 = NULL,
> -	.ndo_fix_features = NULL,
> -	.ndo_set_features = NULL,
> -	.ndo_vlan_rx_add_vid = NULL,
> -	.ndo_vlan_rx_kill_vid = NULL,
> -	.ndo_setup_tc           = NULL,
> +	.ndo_change_mtu = iecm_change_mtu,
> +	.ndo_get_stats64 = iecm_get_stats64,
> +	.ndo_fix_features = iecm_fix_features,
> +	.ndo_set_features = iecm_set_features,
> +	.ndo_vlan_rx_add_vid = iecm_vlan_rx_add_vid,
> +	.ndo_vlan_rx_kill_vid = iecm_vlan_rx_kill_vid,
> +	.ndo_setup_tc = iecm_setup_tc,
>  };
> diff --git a/drivers/net/ethernet/intel/iecm/iecm_txrx.c b/drivers/net/ethernet/intel/iecm/iecm_txrx.c
> index ef5fe659389b..4b9288e1c254 100644
> --- a/drivers/net/ethernet/intel/iecm/iecm_txrx.c
> +++ b/drivers/net/ethernet/intel/iecm/iecm_txrx.c
> @@ -218,6 +218,21 @@ const struct iecm_rx_ptype_decoded iecm_ptype_lookup[IECM_RX_MAX_PTYPE] = {
>  };
>  EXPORT_SYMBOL(iecm_ptype_lookup);
>  
> +/**
> + * iecm_get_stats64 - get statistics for network device structure
> + * @netdev: network interface device structure
> + * @stats: main device statistics structure
> + */
> +void iecm_get_stats64(struct net_device *netdev,
> +		      struct rtnl_link_stats64 *stats)
> +{
> +	struct iecm_vport *vport = iecm_netdev_to_vport(netdev);
> +
> +	set_bit(__IECM_MB_STATS_PENDING, vport->adapter->flags);
> +
> +	*stats = vport->netstats;

This structure is 192 bytes long, I'd suggest using memcpy(), esp.
given that it's not on hotpath at all.

> +}
> +
>  /**
>   * iecm_tx_buf_rel - Release a Tx buffer
>   * @tx_q: the queue that owns the buffer
> diff --git a/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c b/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> index 919fb3958cf8..f2516343c199 100644
> --- a/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> @@ -2731,6 +2731,69 @@ static int iecm_send_insert_vlan_msg(struct iecm_vport *vport, bool ena)
>  	return err;
>  }
>  
> +/**
> + * iecm_send_enable_channels_msg - Send enable channels message
> + * @vport: vport structure
> + *
> + * Request the PF/CP to enable channels as specified by the user via tc tool.
> + * Returns 0 on success, negative on failure.
> + **/
> +int iecm_send_enable_channels_msg(struct iecm_vport *vport)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct iecm_channel_config *ch_config;
> +	struct virtchnl_tc_info *vti = NULL;
> +	int i, err;
> +	u16 len;
> +
> +	ch_config = &adapter->config_data.ch_config;
> +	len = ((ch_config->num_tc - 1) * sizeof(struct virtchnl_channel_info)) +
> +		sizeof(struct virtchnl_tc_info);

	len = struct_size(vti, list, ch_config->num_tc - 1);

You can embed it directly in kzalloc() below.
Also please check if num_tc > 1.

> +
> +	vti = kzalloc(len, GFP_KERNEL);
> +	if (!vti)
> +		return -ENOMEM;
> +	vti->num_tc = ch_config->num_tc;
> +	for (i = 0; i < vti->num_tc; i++) {
> +		vti->list[i].count = ch_config->ch_info[i].count;
> +		vti->list[i].offset = ch_config->ch_info[i].offset;
> +		vti->list[i].pad = 0;
> +		vti->list[i].max_tx_rate = ch_config->ch_info[i].max_tx_rate;
> +	}
> +
> +	err = iecm_send_mb_msg(adapter, VIRTCHNL_OP_ENABLE_CHANNELS, len,
> +			       (u8 *)vti);
> +	if (err)
> +		goto error;
> +
> +	err = iecm_wait_for_event(adapter, IECM_VC_ENA_CHANNELS,
> +				  IECM_VC_ENA_CHANNELS_ERR);
> +error:
> +	kfree(vti);
> +	return err;
> +}
> +
> +/**
> + * iecm_send_disable_channels_msg - Send disable channels message
> + * @vport: vport structure to disable channels on
> + *
> + * Returns 0 on success, negative on failure.
> + */
> +int iecm_send_disable_channels_msg(struct iecm_vport *vport)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	int err;
> +
> +	err = iecm_send_mb_msg(adapter, VIRTCHNL_OP_DISABLE_CHANNELS,
> +			       0, NULL);
> +	if (err)
> +		return err;
> +
> +	err = iecm_min_wait_for_event(adapter, IECM_VC_DIS_CHANNELS,
> +				      IECM_VC_DIS_CHANNELS_ERR);
> +	return err;

Just return iecm_min_wait ..., this is redundant and either
checkpatch or coccinelle will protest.

> +}
> +
>  /**
>   * iecm_send_vlan_v2_caps_msg - send virtchnl get offload VLAN V2 caps message
>   * @adapter: adapter info struct
> diff --git a/drivers/net/ethernet/intel/include/iecm.h b/drivers/net/ethernet/intel/include/iecm.h
> index f6f9884c10c2..a655e797f457 100644
> --- a/drivers/net/ethernet/intel/include/iecm.h
> +++ b/drivers/net/ethernet/intel/include/iecm.h
> @@ -4,6 +4,8 @@
>  #ifndef _IECM_H_
>  #define _IECM_H_
>  
> +#include <net/pkt_sched.h>
> +#include <net/pkt_cls.h>
>  #include <linux/aer.h>
>  #include <linux/pci.h>
>  #include <linux/netdevice.h>
> @@ -44,6 +46,8 @@
>  /* available message levels */
>  #define IECM_AVAIL_NETIF_M (NETIF_MSG_DRV | NETIF_MSG_PROBE | NETIF_MSG_LINK)
>  
> +#define IECM_MBPS_DIVISOR		125000 /* divisor to convert to Mbps */

Isn't this defined somewhere already?

> +
>  #define IECM_VIRTCHNL_VERSION_MAJOR VIRTCHNL_VERSION_MAJOR_2
>  #define IECM_VIRTCHNL_VERSION_MINOR VIRTCHNL_VERSION_MINOR_0
>  
> @@ -393,6 +397,13 @@ enum iecm_user_flags {
>  	__IECM_USER_FLAGS_NBITS,
>  };
>  
> +struct iecm_channel_config {
> +	struct virtchnl_channel_info ch_info[VIRTCHNL_MAX_ADQ_V2_CHANNELS];
> +	bool tc_running;

	u8 tc_running:1;

> +	u8 total_qs;
> +	u8 num_tc;
> +};
> +
>  #define IECM_GET_PTYPE_SIZE(p) \
>  	(sizeof(struct virtchnl2_ptype) + \
>  	(((p)->proto_id_count ? ((p)->proto_id_count - 1) : 0) * sizeof(u16)))
> @@ -430,6 +441,7 @@ struct iecm_user_config_data {
>  	struct list_head mac_filter_list;
>  	struct list_head vlan_filter_list;
>  	struct list_head adv_rss_list;
> +	struct iecm_channel_config ch_config;
>  };
>  
>  struct iecm_rss_data {
> @@ -703,6 +715,8 @@ int iecm_send_delete_queues_msg(struct iecm_vport *vport);
>  int iecm_send_add_queues_msg(struct iecm_vport *vport, u16 num_tx_q,
>  			     u16 num_complq, u16 num_rx_q, u16 num_rx_bufq);
>  int iecm_send_vlan_v2_caps_msg(struct iecm_adapter *adapter);
> +int iecm_initiate_soft_reset(struct iecm_vport *vport,
> +			     enum iecm_flags reset_cause);
>  int iecm_send_config_tx_queues_msg(struct iecm_vport *vport);
>  int iecm_send_config_rx_queues_msg(struct iecm_vport *vport);
>  int iecm_send_enable_vport_msg(struct iecm_vport *vport);
> diff --git a/drivers/net/ethernet/intel/include/iecm_txrx.h b/drivers/net/ethernet/intel/include/iecm_txrx.h
> index 26e480343876..7ec742fd4c6b 100644
> --- a/drivers/net/ethernet/intel/include/iecm_txrx.h
> +++ b/drivers/net/ethernet/intel/include/iecm_txrx.h
> @@ -672,6 +672,8 @@ netdev_tx_t iecm_tx_singleq_start(struct sk_buff *skb,
>  				  struct net_device *netdev);
>  bool iecm_rx_singleq_buf_hw_alloc_all(struct iecm_queue *rxq,
>  				      u16 cleaned_count);
> +void iecm_get_stats64(struct net_device *netdev,
> +		      struct rtnl_link_stats64 *stats);
>  int iecm_tso(struct iecm_tx_buf *first, struct iecm_tx_offload_params *off);
>  void iecm_tx_prepare_vlan_flags(struct iecm_queue *tx_q,
>  				struct iecm_tx_buf *first,
> -- 
> 2.33.0

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
