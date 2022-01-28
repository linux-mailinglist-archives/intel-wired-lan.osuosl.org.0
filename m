Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A9649FB23
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jan 2022 14:58:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 796E281380;
	Fri, 28 Jan 2022 13:58:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ESm2_9-mKc4z; Fri, 28 Jan 2022 13:58:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7EB5581376;
	Fri, 28 Jan 2022 13:58:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9B8FD1BF316
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 13:58:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 92DDA81376
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 13:58:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 78rr9rBTkE6a for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jan 2022 13:58:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E946C812F5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 13:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643378316; x=1674914316;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MmEwYbEE2jZCUcc8eCGVtLcpEnRqkPhkFtXCddF/Ilg=;
 b=K7bZGVGTOdmT8gDjdv1xSfeCB7nGbr14Z0CAHtAhfe3TvdTEmqHo42xW
 K0XFnDU0WX7RHdGQgz2+Ek7IkL+8jOfWMoqogYcY9q7pu9zBm+q8TvHvL
 W5Rou3GQjqoMXjz1A7XG+LXz/lL3PRvDzcEJFtXkxtM6kLkhb3yYlss3K
 DCVF3Q9LM4AVPwu4M5cfn0uvo/HAyAZXuYpizq1cwK9mJBLohjTndYMno
 klz3pEDikgHvqhjWTvo4w4Fhzba7Lp7pEFH8EtGSeBss6y0qG2tN3JnmR
 /Xh8KoxCUnNK4NdIoAn+kPkxz8iw8DWgPOZHncZ8N0apC2POMSU+GMa3z Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="244723629"
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; d="scan'208";a="244723629"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 05:58:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; d="scan'208";a="480746665"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga006.jf.intel.com with ESMTP; 28 Jan 2022 05:58:33 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 20SDwWeg014710; Fri, 28 Jan 2022 13:58:32 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Alan Brady <alan.brady@intel.com>
Date: Fri, 28 Jan 2022 14:56:56 +0100
Message-Id: <20220128001009.721392-10-alan.brady@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 09/19] iecm: alloc vport TX
 resources
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
Date: Thu, 27 Jan 2022 16:09:59 -0800

> With init_task out of the way, we can start implementing open and data
> path. During open we'll allocate queue resources for vport. This only
> includes what's needed to get the TX resources. The next patch will get RX
> resources.
> 
> The splitq model is unique in that it introduces the concept of "queue
> groups" where, for TX, we have some number of descriptor queues being
> serviced by one completion queue in a given group association. By
> 'splitting' a normal queue into two queues, one context is just handling
> descriptors and one context handling buffers, we can more effeciently deal
> with both and configure asymmetric setups (multiple descriptor queues to
> one completion queue).
> 
> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> ---
>  drivers/net/ethernet/intel/iecm/Makefile      |    1 +
>  drivers/net/ethernet/intel/iecm/iecm_lib.c    |  369 ++++-
>  .../ethernet/intel/iecm/iecm_singleq_txrx.c   |   29 +
>  drivers/net/ethernet/intel/iecm/iecm_txrx.c   | 1282 ++++++++++++++++-
>  .../net/ethernet/intel/iecm/iecm_virtchnl.c   |   29 +
>  drivers/net/ethernet/intel/include/iecm.h     |   28 +
>  .../ethernet/intel/include/iecm_lan_txrx.h    |  394 +++++
>  .../net/ethernet/intel/include/iecm_txrx.h    |   96 ++
>  8 files changed, 2214 insertions(+), 14 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/iecm/iecm_singleq_txrx.c
>  create mode 100644 drivers/net/ethernet/intel/include/iecm_lan_txrx.h
> 
> diff --git a/drivers/net/ethernet/intel/iecm/Makefile b/drivers/net/ethernet/intel/iecm/Makefile
> index fcb49402334f..205d6f2b436a 100644
> --- a/drivers/net/ethernet/intel/iecm/Makefile
> +++ b/drivers/net/ethernet/intel/iecm/Makefile
> @@ -14,6 +14,7 @@ iecm-y := \
>  	iecm_lib.o \
>  	iecm_virtchnl.o \
>  	iecm_txrx.o \
> +	iecm_singleq_txrx.o \
>  	iecm_controlq.o \
>  	iecm_controlq_setup.o \
>  	iecm_main.o
> diff --git a/drivers/net/ethernet/intel/iecm/iecm_lib.c b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> index 255b04c25683..037a0e06bb7b 100644
> --- a/drivers/net/ethernet/intel/iecm/iecm_lib.c
> +++ b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> @@ -480,6 +480,54 @@ static struct iecm_mac_filter *iecm_add_mac_filter(struct iecm_vport *vport,
>  	return f;
>  }
>  
> +/**
> + * iecm_set_all_filters - Re-add all MAC filters in list
> + * @vport: main vport struct
> + *
> + * Takes mac_filter_list_lock spinlock.  Sets add field to true for filters to
> + * resync filters back to HW.
> + */
> +static void iecm_set_all_filters(struct iecm_vport *vport)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct iecm_mac_filter *f;
> +
> +	spin_lock_bh(&adapter->mac_filter_list_lock);
> +	list_for_each_entry(f, &adapter->config_data.mac_filter_list, list) {
> +		if (!f->remove)
> +			f->add = true;
> +	}

Redundant braces around a single statement.

> +	spin_unlock_bh(&adapter->mac_filter_list_lock);
> +
> +	iecm_add_del_ether_addrs(vport, true, false);
> +}
> +
> +/**
> + * iecm_set_all_vlans - Re-add all VLANs in list
> + * @vport: main vport struct
> + *
> + * Takes vlan_list_lock spinlock.  Sets add field to true for vlan filters and
> + * resyncs vlans back to HW.
> + */
> +static void iecm_set_all_vlans(struct iecm_vport *vport)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct iecm_vlan_filter *f;
> +
> +	spin_lock_bh(&adapter->vlan_list_lock);
> +	list_for_each_entry(f, &adapter->config_data.vlan_filter_list, list) {
> +		if (!f->remove)
> +			f->add = true;
> +	}

Same.

> +	spin_unlock_bh(&adapter->vlan_list_lock);
> +
> +	/* Do both add and remove to make sure list is in sync in the case
> +	 * filters were added and removed before up.
> +	 */
> +	adapter->dev_ops.vc_ops.add_del_vlans(vport, false);
> +	adapter->dev_ops.vc_ops.add_del_vlans(vport, true);
> +}
> +
>  /**
>   * iecm_init_mac_addr - initialize mac address for vport
>   * @vport: main vport structure
> @@ -690,6 +738,63 @@ static int iecm_get_free_slot(void *array, int size, int curr)
>  	return next;
>  }
>  
> +/**
> + * iecm_vport_stop - Disable a vport
> + * @vport: vport to disable
> + */
> +static void iecm_vport_stop(struct iecm_vport *vport)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +
> +	mutex_lock(&vport->stop_mutex);
> +	if (adapter->state <= __IECM_DOWN)
> +		goto stop_unlock;
> +
> +	netif_tx_stop_all_queues(vport->netdev);
> +	netif_carrier_off(vport->netdev);
> +	netif_tx_disable(vport->netdev);
> +
> +	if (adapter->dev_ops.vc_ops.disable_vport)
> +		adapter->dev_ops.vc_ops.disable_vport(vport);
> +	adapter->dev_ops.vc_ops.disable_queues(vport);
> +	adapter->dev_ops.vc_ops.irq_map_unmap(vport, false);
> +	/* Normally we ask for queues in create_vport, but if we're changing
> +	 * number of requested queues we do a delete then add instead of
> +	 * deleting and reallocating the vport.
> +	 */
> +	if (test_and_clear_bit(__IECM_DEL_QUEUES,
> +			       vport->adapter->flags))
> +		iecm_send_delete_queues_msg(vport);
> +
> +	adapter->link_up = false;
> +	iecm_vport_intr_deinit(vport);
> +	iecm_vport_intr_rel(vport);
> +	iecm_vport_queues_rel(vport);
> +	adapter->state = __IECM_DOWN;
> +
> +stop_unlock:
> +	mutex_unlock(&vport->stop_mutex);
> +}
> +
> +/**
> + * iecm_stop - Disables a network interface
> + * @netdev: network interface device structure
> + *
> + * The stop entry point is called when an interface is de-activated by the OS,
> + * and the netdevice enters the DOWN state.  The hardware is still under the
> + * driver's control, but the netdev interface is disabled.
> + *
> + * Returns success only - not allowed to fail
> + */
> +static int iecm_stop(struct net_device *netdev)
> +{
> +	struct iecm_netdev_priv *np = netdev_priv(netdev);
> +
> +	iecm_vport_stop(np->vport);
> +
> +	return 0;
> +}
> +
>  /**
>   * iecm_decfg_netdev - Unregister the netdev
>   * @vport: vport for which netdev to be unregistred
> @@ -714,6 +819,11 @@ static void iecm_decfg_netdev(struct iecm_vport *vport)
>   */
>  static void iecm_vport_rel(struct iecm_vport *vport)
>  {
> +	struct iecm_adapter *adapter = vport->adapter;
> +
> +	iecm_deinit_rss(vport);
> +	if (adapter->dev_ops.vc_ops.destroy_vport)
> +		adapter->dev_ops.vc_ops.destroy_vport(vport);
>  	mutex_destroy(&vport->stop_mutex);
>  	kfree(vport);
>  }
> @@ -733,6 +843,7 @@ static void iecm_vport_rel_all(struct iecm_adapter *adapter)
>  		if (!adapter->vports[i])
>  			continue;
>  
> +		iecm_vport_stop(adapter->vports[i]);
>  		if (!test_bit(__IECM_HR_RESET_IN_PROG, adapter->flags))
>  			iecm_decfg_netdev(adapter->vports[i]);
>  		iecm_vport_rel(adapter->vports[i]);
> @@ -782,6 +893,7 @@ iecm_vport_alloc(struct iecm_adapter *adapter, int vport_id)
>  	vport->idx = adapter->next_vport;
>  	vport->compln_clean_budget = IECM_TX_COMPLQ_CLEAN_BUDGET;
>  	adapter->num_alloc_vport++;
> +	adapter->dev_ops.vc_ops.vport_init(vport, vport_id);
>  
>  	/* Setup default MSIX irq handler for the vport */
>  	vport->irq_q_handler = iecm_vport_intr_clean_queues;
> @@ -845,6 +957,117 @@ static void iecm_service_task(struct work_struct *work)
>  			   msecs_to_jiffies(300));
>  }
>  
> +/**
> + * iecm_restore_vlans - Restore vlan filters/vlan stripping/insert config
> + * @vport: virtual port structure
> + */
> +static void iecm_restore_vlans(struct iecm_vport *vport)
> +{
> +	if (iecm_is_feature_ena(vport, NETIF_F_HW_VLAN_CTAG_FILTER))
> +		iecm_set_all_vlans(vport);
> +}
> +
> +/**
> + * iecm_restore_features - Restore feature configs
> + * @vport: virtual port structure
> + */
> +static void iecm_restore_features(struct iecm_vport *vport)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +
> +	if (iecm_is_cap_ena(adapter, IECM_OTHER_CAPS, VIRTCHNL2_CAP_MACFILTER))
> +		iecm_set_all_filters(vport);
> +
> +	if (iecm_is_cap_ena(adapter, IECM_BASE_CAPS, VIRTCHNL2_CAP_VLAN) ||
> +	    iecm_is_cap_ena(adapter, IECM_OTHER_CAPS, VIRTCHNL2_CAP_VLAN))
> +		iecm_restore_vlans(vport);
> +
> +	if ((iecm_is_user_flag_ena(adapter, __IECM_PROMISC_UC) ||
> +	     iecm_is_user_flag_ena(adapter, __IECM_PROMISC_MC)) &&
> +	    test_and_clear_bit(__IECM_VPORT_INIT_PROMISC, vport->flags)) {
> +		if (iecm_set_promiscuous(adapter))
> +			dev_info(&adapter->pdev->dev, "Failed to restore promiscuous settings\n");
> +	}
> +}
> +
> +/**
> + * iecm_set_real_num_queues - set number of queues for netdev
> + * @vport: virtual port structure
> + *
> + * Returns 0 on success, negative on failure.
> + */
> +static int iecm_set_real_num_queues(struct iecm_vport *vport)
> +{
> +	int err;
> +
> +	/* If we're in normal up path, the stack already takes the rtnl_lock
> +	 * for us, however, if we're doing up as a part of a hard reset, we'll
> +	 * need to take the lock ourself before touching the netdev.
> +	 */
> +	if (test_bit(__IECM_HR_RESET_IN_PROG, vport->adapter->flags))
> +		rtnl_lock();
> +	err = netif_set_real_num_rx_queues(vport->netdev, vport->num_rxq);
> +	if (err)
> +		goto error;
> +	err = netif_set_real_num_tx_queues(vport->netdev, vport->num_txq);
> +error:
> +	if (test_bit(__IECM_HR_RESET_IN_PROG, vport->adapter->flags))
> +		rtnl_unlock();
> +	return err;
> +}
> +
> +/**
> + * iecm_up_complete - Complete interface up sequence
> + * @vport: virtual port strucutre
> + *
> + * Returns 0 on success, negative on failure.
> + */
> +static int iecm_up_complete(struct iecm_vport *vport)
> +{
> +	int err;
> +
> +	err = iecm_set_real_num_queues(vport);
> +	if (err)
> +		return err;
> +
> +	if (vport->adapter->link_up && !netif_carrier_ok(vport->netdev)) {
> +		netif_carrier_on(vport->netdev);
> +		netif_tx_start_all_queues(vport->netdev);
> +	}
> +
> +	vport->adapter->state = __IECM_UP;
> +	return 0;
> +}
> +
> +/**
> + * iecm_rx_init_buf_tail - Write initial buffer ring tail value
> + * @vport: virtual port struct
> + */
> +static void iecm_rx_init_buf_tail(struct iecm_vport *vport)
> +{
> +	int i, j;
> +
> +	for (i = 0; i < vport->num_rxq_grp; i++) {
> +		struct iecm_rxq_group *grp = &vport->rxq_grps[i];
> +
> +		if (iecm_is_queue_model_split(vport->rxq_model)) {
> +			for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
> +				struct iecm_queue *q =
> +					&grp->splitq.bufq_sets[j].bufq;
> +
> +				writel(q->next_to_alloc, q->tail);
> +			}
> +		} else {
> +			for (j = 0; j < grp->singleq.num_rxq; j++) {
> +				struct iecm_queue *q =
> +					grp->singleq.rxqs[j];
> +
> +				writel(q->next_to_alloc, q->tail);
> +			}
> +		}
> +	}
> +}
> +
>  /* iecm_set_vlan_offload_features - set vlan offload features
>   * @netdev: netdev structure
>   * @prev_features: previously set features
> @@ -903,8 +1126,110 @@ iecm_set_vlan_offload_features(struct net_device *netdev,
>   */
>  static int iecm_vport_open(struct iecm_vport *vport, bool alloc_res)
>  {
> -	/* stub */
> +	struct iecm_adapter *adapter = vport->adapter;
> +	int err;
> +
> +	if (vport->adapter->state != __IECM_DOWN)
> +		return -EBUSY;
> +
> +	/* we do not allow interface up just yet */
> +	netif_carrier_off(vport->netdev);
> +
> +	if (alloc_res) {
> +		err = iecm_vport_queues_alloc(vport);
> +		if (err)
> +			return err;
> +	}
> +
> +	err = iecm_vport_intr_alloc(vport);
> +	if (err) {
> +		dev_err(&adapter->pdev->dev, "Call to interrupt alloc returned %d\n",
> +			err);
> +		goto unroll_queues_alloc;
> +	}
> +
> +	err = adapter->dev_ops.vc_ops.vport_queue_ids_init(vport);
> +	if (err) {
> +		dev_err(&adapter->pdev->dev, "Call to queue ids init returned %d\n",
> +			err);
> +		goto unroll_intr_alloc;
> +	}
> +
> +	err = adapter->dev_ops.vc_ops.vportq_reg_init(vport);
> +	if (err) {
> +		dev_err(&adapter->pdev->dev, "Call to queue reg init returned %d\n",
> +			err);
> +		goto unroll_intr_alloc;
> +	}
> +	iecm_rx_init_buf_tail(vport);
> +
> +	err = iecm_vport_intr_init(vport);
> +	if (err) {
> +		dev_err(&adapter->pdev->dev, "Call to vport interrupt init returned %d\n",
> +			err);
> +		goto unroll_intr_alloc;
> +	}
> +	err = adapter->dev_ops.vc_ops.config_queues(vport);
> +	if (err) {
> +		dev_err(&adapter->pdev->dev, "Failed to config queues\n");
> +		goto unroll_config_queues;
> +	}
> +	err = adapter->dev_ops.vc_ops.irq_map_unmap(vport, true);
> +	if (err) {
> +		dev_err(&adapter->pdev->dev, "Call to irq_map_unmap returned %d\n",
> +			err);
> +		goto unroll_config_queues;
> +	}
> +	err = adapter->dev_ops.vc_ops.enable_queues(vport);
> +	if (err) {
> +		dev_err(&adapter->pdev->dev, "Failed to enable queues\n");
> +		goto unroll_enable_queues;
> +	}
> +
> +	if (adapter->dev_ops.vc_ops.enable_vport) {
> +		err = adapter->dev_ops.vc_ops.enable_vport(vport);
> +		if (err) {
> +			dev_err(&adapter->pdev->dev, "Failed to enable vport\n");
> +			err = -EAGAIN;
> +			goto unroll_vport_enable;
> +		}
> +	}
> +
> +	iecm_restore_features(vport);
> +
> +	if (adapter->rss_data.rss_lut)
> +		err = iecm_config_rss(vport);
> +	else
> +		err = iecm_init_rss(vport);
> +	if (err) {
> +		dev_err(&adapter->pdev->dev, "Failed to init RSS\n");
> +		goto unroll_init_rss;
> +	}
> +	err = iecm_up_complete(vport);
> +	if (err) {
> +		dev_err(&adapter->pdev->dev, "Failed to complete up\n");
> +		goto unroll_up_comp;
> +	}
> +
>  	return 0;
> +
> +unroll_up_comp:
> +	iecm_deinit_rss(vport);
> +unroll_init_rss:
> +	adapter->dev_ops.vc_ops.disable_vport(vport);
> +unroll_vport_enable:
> +	adapter->dev_ops.vc_ops.disable_queues(vport);
> +unroll_enable_queues:
> +	adapter->dev_ops.vc_ops.irq_map_unmap(vport, false);
> +unroll_config_queues:
> +	iecm_vport_intr_deinit(vport);
> +unroll_intr_alloc:
> +	iecm_vport_intr_rel(vport);
> +unroll_queues_alloc:
> +	if (alloc_res)
> +		iecm_vport_queues_rel(vport);
> +
> +	return err;
>  }
>  
>  /**
> @@ -1060,6 +1385,8 @@ static int iecm_api_init(struct iecm_adapter *adapter)
>   */
>  static void iecm_deinit_task(struct iecm_adapter *adapter)
>  {
> +	int i;
> +
>  	set_bit(__IECM_REL_RES_IN_PROG, adapter->flags);
>  	/* Wait until the init_task is done else this thread might release
>  	 * the resources first and the other thread might end up in a bad state
> @@ -1067,8 +1394,21 @@ static void iecm_deinit_task(struct iecm_adapter *adapter)
>  	cancel_delayed_work_sync(&adapter->init_task);
>  	iecm_vport_rel_all(adapter);
>  
> +	/* Set all bits as we dont know on which vc_state the vhnl_wq is
> +	 * waiting on and wakeup the virtchnl workqueue even if it is waiting
> +	 * for the response as we are going down
> +	 */
> +	for (i = 0; i < IECM_VC_NBITS; i++)
> +		set_bit(i, adapter->vc_state);
> +	wake_up(&adapter->vchnl_wq);
> +
>  	cancel_delayed_work_sync(&adapter->serv_task);
>  	cancel_delayed_work_sync(&adapter->stats_task);
> +	iecm_intr_rel(adapter);
> +	/* Clear all the bits */
> +	for (i = 0; i < IECM_VC_NBITS; i++)
> +		clear_bit(i, adapter->vc_state);
> +	clear_bit(__IECM_REL_RES_IN_PROG, adapter->flags);
>  }
>  
>  /**
> @@ -1371,6 +1711,25 @@ void iecm_remove(struct pci_dev *pdev)
>  }
>  EXPORT_SYMBOL(iecm_remove);
>  
> +/**
> + * iecm_open - Called when a network interface becomes active
> + * @netdev: network interface device structure
> + *
> + * The open entry point is called when a network interface is made
> + * active by the system (IFF_UP).  At this point all resources needed
> + * for transmit and receive operations are allocated, the interrupt
> + * handler is registered with the OS, the netdev watchdog is enabled,
> + * and the stack is notified that the interface is ready.
> + *
> + * Returns 0 on success, negative value on failure
> + */
> +static int iecm_open(struct net_device *netdev)
> +{
> +	struct iecm_netdev_priv *np = netdev_priv(netdev);
> +
> +	return iecm_vport_open(np->vport, true);
> +}
> +
>  void *iecm_alloc_dma_mem(struct iecm_hw *hw, struct iecm_dma_mem *mem, u64 size)
>  {
>  	struct iecm_adapter *adapter = (struct iecm_adapter *)hw->back;
> @@ -1395,8 +1754,8 @@ void iecm_free_dma_mem(struct iecm_hw *hw, struct iecm_dma_mem *mem)
>  }
>  
>  static const struct net_device_ops iecm_netdev_ops_splitq = {
> -	.ndo_open = NULL,
> -	.ndo_stop = NULL,
> +	.ndo_open = iecm_open,
> +	.ndo_stop = iecm_stop,
>  	.ndo_start_xmit = NULL,

Hmm, forgot to mention this earlier as well. Consider marking
CONFIG_IECM as `depends on BROKEN` in Kconfig and remove this line
in the last commit. Otherwise, it will be possible to panic the
kernel as at least .ndo_start_xmit should always be set, kernel
doesn't check for it being non-NULL, it just calls it. Same with
open, stop and probably more, so it's a good practice to disable
drivers with depending on BROKEN until it receives the workable
state.

>  	.ndo_set_rx_mode = NULL,
>  	.ndo_validate_addr = eth_validate_addr,
> @@ -1411,8 +1770,8 @@ static const struct net_device_ops iecm_netdev_ops_splitq = {
>  };
>  
>  static const struct net_device_ops iecm_netdev_ops_singleq = {
> -	.ndo_open = NULL,
> -	.ndo_stop = NULL,
> +	.ndo_open = iecm_open,
> +	.ndo_stop = iecm_stop,
>  	.ndo_start_xmit = NULL,
>  	.ndo_set_rx_mode = NULL,
>  	.ndo_validate_addr = eth_validate_addr,
> diff --git a/drivers/net/ethernet/intel/iecm/iecm_singleq_txrx.c b/drivers/net/ethernet/intel/iecm/iecm_singleq_txrx.c
> new file mode 100644
> index 000000000000..d6c47cb84249
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/iecm/iecm_singleq_txrx.c
> @@ -0,0 +1,29 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/* Copyright (C) 2019 Intel Corporation */
> +
> +#include "iecm.h"
> +
> +/**
> + * iecm_rx_singleq_buf_hw_alloc_all - Replace used receive buffers
> + * @rx_q: queue for which the hw buffers are allocated
> + * @cleaned_count: number of buffers to replace
> + *
> + * Returns false if all allocations were successful, true if any fail
> + */
> +bool iecm_rx_singleq_buf_hw_alloc_all(struct iecm_queue *rx_q,
> +				      u16 cleaned_count)
> +{
> +	/* stub */
> +	return true;
> +}
> +
> +/**
> + * iecm_vport_singleq_napi_poll - NAPI handler
> + * @napi: struct from which you get q_vector
> + * @budget: budget provided by stack
> + */
> +int iecm_vport_singleq_napi_poll(struct napi_struct *napi, int budget)
> +{
> +	/* stub */
> +	return 0;
> +}
> diff --git a/drivers/net/ethernet/intel/iecm/iecm_txrx.c b/drivers/net/ethernet/intel/iecm/iecm_txrx.c
> index bb7f5830cffb..85e88a30370d 100644
> --- a/drivers/net/ethernet/intel/iecm/iecm_txrx.c
> +++ b/drivers/net/ethernet/intel/iecm/iecm_txrx.c
> @@ -219,20 +219,318 @@ const struct iecm_rx_ptype_decoded iecm_ptype_lookup[IECM_RX_MAX_PTYPE] = {
>  EXPORT_SYMBOL(iecm_ptype_lookup);
>  
>  /**
> - * iecm_vport_intr_clean_queues - MSIX mode Interrupt Handler
> - * @irq: interrupt number
> - * @data: pointer to a q_vector
> + * iecm_tx_buf_rel - Release a Tx buffer
> + * @tx_q: the queue that owns the buffer
> + * @tx_buf: the buffer to free
> + */
> +void iecm_tx_buf_rel(struct iecm_queue *tx_q, struct iecm_tx_buf *tx_buf)
> +{
> +	if (tx_buf->skb) {
> +		if (dma_unmap_len(tx_buf, len))
> +			dma_unmap_single(tx_q->dev,
> +					 dma_unmap_addr(tx_buf, dma),
> +					 dma_unmap_len(tx_buf, len),
> +					 DMA_TO_DEVICE);
> +		dev_kfree_skb_any(tx_buf->skb);
> +	} else if (dma_unmap_len(tx_buf, len)) {
> +		dma_unmap_page(tx_q->dev,
> +			       dma_unmap_addr(tx_buf, dma),
> +			       dma_unmap_len(tx_buf, len),
> +			       DMA_TO_DEVICE);
> +	}
> +
> +	tx_buf->next_to_watch = NULL;
> +	tx_buf->skb = NULL;
> +	dma_unmap_len_set(tx_buf, len, 0);
> +}
> +
> +/**
> + * iecm_tx_buf_rel_all - Free any empty Tx buffers
> + * @txq: queue to be cleaned
> + */
> +static void iecm_tx_buf_rel_all(struct iecm_queue *txq)
> +{
> +	u16 i;
> +
> +	/* Buffers already cleared, nothing to do */
> +	if (!txq->tx_buf)
> +		return;
> +
> +	/* Free all the Tx buffer sk_buffs */
> +	for (i = 0; i < txq->desc_count; i++)
> +		iecm_tx_buf_rel(txq, &txq->tx_buf[i]);
> +
> +	kfree(txq->tx_buf);
> +	txq->tx_buf = NULL;
> +
> +	if (txq->buf_stack.bufs) {
> +		for (i = 0; i < txq->buf_stack.size; i++) {
> +			iecm_tx_buf_rel(txq, txq->buf_stack.bufs[i]);
> +			kfree(txq->buf_stack.bufs[i]);
> +		}
> +		kfree(txq->buf_stack.bufs);
> +		txq->buf_stack.bufs = NULL;
> +	}

	if (!txq->buf.stack.bufs)
		return;

	for (...

-1 indent level.

> +}
> +
> +/**
> + * iecm_tx_desc_rel - Free Tx resources per queue
> + * @txq: Tx descriptor ring for a specific queue
> + * @bufq: buffer q or completion q
>   *
> + * Free all transmit software resources
>   */
> -irqreturn_t
> -iecm_vport_intr_clean_queues(int __always_unused irq, void *data)
> +static void iecm_tx_desc_rel(struct iecm_queue *txq, bool bufq)
>  {
> -	struct iecm_q_vector *q_vector = (struct iecm_q_vector *)data;
> +	if (bufq) {
> +		iecm_tx_buf_rel_all(txq);
> +		netdev_tx_reset_queue(netdev_get_tx_queue(txq->vport->netdev,
> +							  txq->idx));
> +	}
>  
> -	q_vector->total_events++;
> -	napi_schedule(&q_vector->napi);
> +	if (txq->desc_ring) {
> +		dmam_free_coherent(txq->dev, txq->size,
> +				   txq->desc_ring, txq->dma);
> +		txq->desc_ring = NULL;
> +		txq->next_to_alloc = 0;
> +		txq->next_to_use = 0;
> +		txq->next_to_clean = 0;
> +	}

	Same here, !desc_ring -> return immediately.

> +}
>  
> -	return IRQ_HANDLED;
> +/**
> + * iecm_tx_desc_rel_all - Free Tx Resources for All Queues
> + * @vport: virtual port structure
> + *
> + * Free all transmit software resources
> + */
> +static void iecm_tx_desc_rel_all(struct iecm_vport *vport)
> +{
> +	int i, j;
> +
> +	if (!vport->txq_grps)
> +		return;
> +
> +	for (i = 0; i < vport->num_txq_grp; i++) {
> +		struct iecm_txq_group *txq_grp = &vport->txq_grps[i];
> +
> +		for (j = 0; j < txq_grp->num_txq; j++)
> +			iecm_tx_desc_rel(txq_grp->txqs[j], true);
> +		if (iecm_is_queue_model_split(vport->txq_model))
> +			iecm_tx_desc_rel(txq_grp->complq, false);
> +	}
> +}
> +
> +/**
> + * iecm_tx_buf_alloc_all - Allocate memory for all buffer resources
> + * @tx_q: queue for which the buffers are allocated
> + *
> + * Returns 0 on success, negative on failure
> + */
> +static int iecm_tx_buf_alloc_all(struct iecm_queue *tx_q)
> +{
> +	int buf_size;
> +	int i = 0;
> +
> +	/* Allocate book keeping buffers only. Buffers to be supplied to HW
> +	 * are allocated by kernel network stack and received as part of skb
> +	 */
> +	buf_size = sizeof(struct iecm_tx_buf) * tx_q->desc_count;
> +	tx_q->tx_buf = kzalloc(buf_size, GFP_KERNEL);
> +	if (!tx_q->tx_buf)
> +		return -ENOMEM;
> +
> +	/* Initialize tx buf stack for out-of-order completions if
> +	 * flow scheduling offload is enabled
> +	 */
> +	tx_q->buf_stack.bufs =
> +		kcalloc(tx_q->desc_count, sizeof(struct iecm_tx_buf *),
> +			GFP_KERNEL);
> +	if (!tx_q->buf_stack.bufs)
> +		return -ENOMEM;
> +
> +	tx_q->buf_stack.size = tx_q->desc_count;
> +	tx_q->buf_stack.top = tx_q->desc_count;
> +
> +	for (i = 0; i < tx_q->desc_count; i++) {
> +		tx_q->buf_stack.bufs[i] = kzalloc(sizeof(*tx_q->buf_stack.bufs[i]),
> +						  GFP_KERNEL);
> +		if (!tx_q->buf_stack.bufs[i])
> +			return -ENOMEM;
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * iecm_tx_desc_alloc - Allocate the Tx descriptors
> + * @tx_q: the tx ring to set up
> + * @bufq: buffer or completion queue
> + *
> + * Returns 0 on success, negative on failure
> + */
> +static int iecm_tx_desc_alloc(struct iecm_queue *tx_q, bool bufq)
> +{
> +	struct device *dev = tx_q->dev;
> +	int err = 0;
> +
> +	if (bufq) {
> +		err = iecm_tx_buf_alloc_all(tx_q);
> +		if (err)
> +			goto err_alloc;
> +		tx_q->size = tx_q->desc_count *
> +				sizeof(struct iecm_base_tx_desc);
> +	} else {
> +		tx_q->size = tx_q->desc_count *
> +				sizeof(struct iecm_splitq_tx_compl_desc);
> +	}
> +
> +	/* Allocate descriptors also round up to nearest 4K */
> +	tx_q->size = ALIGN(tx_q->size, 4096);
> +	tx_q->desc_ring = dmam_alloc_coherent(dev, tx_q->size, &tx_q->dma,
> +					      GFP_KERNEL);
> +	if (!tx_q->desc_ring) {
> +		dev_info(dev, "Unable to allocate memory for the Tx descriptor ring, size=%d\n",
> +			 tx_q->size);
> +		err = -ENOMEM;
> +		goto err_alloc;
> +	}
> +
> +	tx_q->next_to_alloc = 0;
> +	tx_q->next_to_use = 0;
> +	tx_q->next_to_clean = 0;
> +	set_bit(__IECM_Q_GEN_CHK, tx_q->flags);
> +
> +err_alloc:
> +	if (err)
> +		iecm_tx_desc_rel(tx_q, bufq);
> +	return err;
> +}
> +
> +/**
> + * iecm_tx_desc_alloc_all - allocate all queues Tx resources
> + * @vport: virtual port private structure
> + *
> + * Returns 0 on success, negative on failure
> + */
> +static int iecm_tx_desc_alloc_all(struct iecm_vport *vport)
> +{
> +	struct pci_dev *pdev = vport->adapter->pdev;
> +	int err = 0;
> +	int i, j;
> +
> +	/* Setup buffer queues. In single queue model buffer queues and
> +	 * completion queues will be same
> +	 */
> +	for (i = 0; i < vport->num_txq_grp; i++) {
> +		for (j = 0; j < vport->txq_grps[i].num_txq; j++) {
> +			err = iecm_tx_desc_alloc(vport->txq_grps[i].txqs[j],
> +						 true);
> +			if (err) {
> +				dev_err(&pdev->dev,
> +					"Allocation for Tx Queue %u failed\n",
> +					i);
> +				goto err_out;
> +			}
> +		}
> +
> +		if (iecm_is_queue_model_split(vport->txq_model)) {
> +			/* Setup completion queues */
> +			err = iecm_tx_desc_alloc(vport->txq_grps[i].complq,
> +						 false);
> +			if (err) {
> +				dev_err(&pdev->dev,
> +					"Allocation for Tx Completion Queue %u failed\n",
> +					i);
> +				goto err_out;
> +			}
> +		}
> +	}
> +err_out:
> +	if (err)
> +		iecm_tx_desc_rel_all(vport);
> +	return err;
> +}
> +
> +/**
> + * iecm_txq_group_rel - Release all resources for txq groups
> + * @vport: vport to release txq groups on
> + */
> +static void iecm_txq_group_rel(struct iecm_vport *vport)
> +{
> +	struct iecm_txq_group *txq_grp;
> +	int i, j, num_txq;
> +
> +	if (vport->txq_grps) {
> +		for (i = 0; i < vport->num_txq_grp; i++) {
> +			txq_grp = &vport->txq_grps[i];
> +			num_txq = txq_grp->num_txq;
> +
> +			for (j = 0; j < num_txq; j++) {
> +				kfree(txq_grp->txqs[j]);
> +				txq_grp->txqs[j] = NULL;
> +			}
> +			kfree(txq_grp->complq);
> +			txq_grp->complq = NULL;
> +		}
> +		kfree(vport->txq_grps);
> +		vport->txq_grps = NULL;
> +	}

Same here, !txq_grps -> return.

> +}
> +
> +/**
> + * iecm_vport_queue_grp_rel_all - Release all queue groups
> + * @vport: vport to release queue groups for
> + */
> +static void iecm_vport_queue_grp_rel_all(struct iecm_vport *vport)
> +{
> +	iecm_txq_group_rel(vport);
> +}
> +
> +/**
> + * iecm_vport_queues_rel - Free memory for all queues
> + * @vport: virtual port
> + *
> + * Free the memory allocated for queues associated to a vport
> + */
> +void iecm_vport_queues_rel(struct iecm_vport *vport)
> +{
> +	iecm_tx_desc_rel_all(vport);
> +	iecm_vport_queue_grp_rel_all(vport);
> +
> +	kfree(vport->txqs);
> +	vport->txqs = NULL;
> +}
> +
> +/**
> + * iecm_vport_init_fast_path_txqs - Initialize fast path txq array
> + * @vport: vport to init txqs on
> + *
> + * We get a queue index from skb->queue_mapping and we need a fast way to
> + * dereference the queue from queue groups.  This allows us to quickly pull a
> + * txq based on a queue index.
> + *
> + * Returns 0 on success, negative on failure
> + */
> +static int iecm_vport_init_fast_path_txqs(struct iecm_vport *vport)
> +{
> +	int i, j, k = 0;
> +
> +	vport->txqs = kcalloc(vport->num_txq, sizeof(struct iecm_queue *),
> +			      GFP_KERNEL);
> +
> +	if (!vport->txqs)
> +		return -ENOMEM;
> +
> +	for (i = 0; i < vport->num_txq_grp; i++) {
> +		struct iecm_txq_group *tx_grp = &vport->txq_grps[i];
> +
> +		for (j = 0; j < tx_grp->num_txq; j++, k++) {
> +			vport->txqs[k] = tx_grp->txqs[j];
> +			vport->txqs[k]->idx = k;
> +		}
> +	}
> +	return 0;
>  }
>  
>  /**
> @@ -382,6 +680,26 @@ void iecm_vport_calc_num_q_groups(struct iecm_vport *vport)
>  }
>  EXPORT_SYMBOL(iecm_vport_calc_num_q_groups);
>  
> +/**
> + * iecm_vport_calc_numq_per_grp - Calculate number of queues per group
> + * @vport: vport to calculate queues for
> + * @num_txq: int return parameter
> + * @num_rxq: int return parameter
> + */
> +static void iecm_vport_calc_numq_per_grp(struct iecm_vport *vport,
> +					 int *num_txq, int *num_rxq)
> +{
> +	if (iecm_is_queue_model_split(vport->txq_model))
> +		*num_txq = IECM_DFLT_SPLITQ_TXQ_PER_GROUP;
> +	else
> +		*num_txq = vport->num_txq;
> +
> +	if (iecm_is_queue_model_split(vport->rxq_model))
> +		*num_rxq = IECM_DFLT_SPLITQ_RXQ_PER_GROUP;
> +	else
> +		*num_rxq = vport->num_rxq;
> +}
> +
>  /**
>   * iecm_vport_calc_num_q_vec - Calculate total number of vectors required for
>   * this vport
> @@ -396,3 +714,949 @@ void iecm_vport_calc_num_q_vec(struct iecm_vport *vport)
>  		vport->num_q_vectors = vport->num_txq;
>  }
>  EXPORT_SYMBOL(iecm_vport_calc_num_q_vec);
> +
> +/**
> + * iecm_set_vlan_tag_loc - set the tag location for a tx/rx queue
> + * @adapter: adapter structure
> + * @q: tx/rx queue to set tag location for
> + *
> + */
> +static void iecm_set_vlan_tag_loc(struct iecm_adapter *adapter,
> +				  struct iecm_queue *q)
> +{
> +	if (iecm_is_cap_ena(adapter, IECM_OTHER_CAPS, VIRTCHNL2_CAP_VLAN)) {
> +		struct virtchnl_vlan_supported_caps *insertion_support;
> +
> +		insertion_support =
> +				&adapter->vlan_caps->offloads.insertion_support;
> +		if (insertion_support->outer) {
> +			if (insertion_support->outer &
> +			    VIRTCHNL_VLAN_TAG_LOCATION_L2TAG1)
> +				set_bit(__IECM_Q_VLAN_TAG_LOC_L2TAG1,
> +					q->flags);
> +			else if (insertion_support->outer &
> +				 VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2)
> +				set_bit(__IECM_Q_VLAN_TAG_LOC_L2TAG2,
> +					q->flags);
> +		} else if (insertion_support->inner) {
> +			if (insertion_support->inner &
> +			    VIRTCHNL_VLAN_TAG_LOCATION_L2TAG1)
> +				set_bit(__IECM_Q_VLAN_TAG_LOC_L2TAG1,
> +					q->flags);
> +			else if (insertion_support->inner &
> +				 VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2)
> +				set_bit(__IECM_Q_VLAN_TAG_LOC_L2TAG2,
> +					q->flags);
> +		}
> +	} else if (iecm_is_cap_ena(adapter, IECM_BASE_CAPS,
> +				   VIRTCHNL2_CAP_VLAN)) {
> +		set_bit(__IECM_Q_VLAN_TAG_LOC_L2TAG1, q->flags);
> +	}

If !ena -> set_bit() + return, -1 indent.

> +}
> +
> +/**
> + * iecm_txq_group_alloc - Allocate all txq group resources
> + * @vport: vport to allocate txq groups for
> + * @num_txq: number of txqs to allocate for each group
> + *
> + * Returns 0 on success, negative on failure
> + */
> +static int iecm_txq_group_alloc(struct iecm_vport *vport, int num_txq)
> +{
> +	int err = 0, i;
> +
> +	vport->txq_grps = kcalloc(vport->num_txq_grp,
> +				  sizeof(*vport->txq_grps), GFP_KERNEL);
> +	if (!vport->txq_grps)
> +		return -ENOMEM;
> +
> +	for (i = 0; i < vport->num_txq_grp; i++) {
> +		struct iecm_txq_group *tx_qgrp = &vport->txq_grps[i];
> +		int j;
> +
> +		tx_qgrp->vport = vport;
> +		tx_qgrp->num_txq = num_txq;
> +
> +		for (j = 0; j < tx_qgrp->num_txq; j++) {
> +			tx_qgrp->txqs[j] = kzalloc(sizeof(*tx_qgrp->txqs[j]),
> +						   GFP_KERNEL);
> +			if (!tx_qgrp->txqs[j]) {
> +				err = -ENOMEM;
> +				goto err_alloc;
> +			}
> +		}
> +
> +		for (j = 0; j < tx_qgrp->num_txq; j++) {
> +			struct iecm_queue *q = tx_qgrp->txqs[j];
> +
> +			q->dev = &vport->adapter->pdev->dev;
> +			q->desc_count = vport->txq_desc_count;
> +			q->tx_max_bufs =
> +				vport->adapter->dev_ops.vc_ops.get_max_tx_bufs(vport->adapter);
> +			q->vport = vport;
> +			q->txq_grp = tx_qgrp;
> +			hash_init(q->sched_buf_hash);
> +
> +			if (!iecm_is_cap_ena(vport->adapter,
> +					     IECM_OTHER_CAPS,
> +					     VIRTCHNL2_CAP_SPLITQ_QSCHED))
> +				set_bit(__IECM_Q_FLOW_SCH_EN, q->flags);
> +			iecm_set_vlan_tag_loc(vport->adapter, q);
> +		}
> +
> +		if (!iecm_is_queue_model_split(vport->txq_model))
> +			continue;
> +
> +		tx_qgrp->complq = kcalloc(IECM_COMPLQ_PER_GROUP,
> +					  sizeof(*tx_qgrp->complq),
> +					  GFP_KERNEL);
> +		if (!tx_qgrp->complq) {
> +			err = -ENOMEM;
> +			goto err_alloc;
> +		}
> +
> +		tx_qgrp->complq->dev = &vport->adapter->pdev->dev;
> +		tx_qgrp->complq->desc_count = vport->complq_desc_count;
> +		tx_qgrp->complq->vport = vport;
> +		tx_qgrp->complq->txq_grp = tx_qgrp;
> +	}
> +
> +err_alloc:
> +	if (err)
> +		iecm_txq_group_rel(vport);
> +	return err;
> +}
> +
> +/**
> + * iecm_vport_queue_grp_alloc_all - Allocate all queue groups/resources
> + * @vport: vport with qgrps to allocate
> + *
> + * Returns 0 on success, negative on failure
> + */
> +static int iecm_vport_queue_grp_alloc_all(struct iecm_vport *vport)
> +{
> +	int num_txq, num_rxq;
> +	int err;
> +
> +	iecm_vport_calc_numq_per_grp(vport, &num_txq, &num_rxq);
> +
> +	err = iecm_txq_group_alloc(vport, num_txq);
> +	if (err)
> +		iecm_vport_queue_grp_rel_all(vport);
> +	return err;
> +}
> +
> +/**
> + * iecm_vport_queues_alloc - Allocate memory for all queues
> + * @vport: virtual port
> + *
> + * Allocate memory for queues associated with a vport.  Returns 0 on success,
> + * negative on failure.
> + */
> +int iecm_vport_queues_alloc(struct iecm_vport *vport)
> +{
> +	int err;
> +	int i;
> +
> +	err = iecm_vport_queue_grp_alloc_all(vport);
> +	if (err)
> +		goto err_out;
> +
> +	err = iecm_tx_desc_alloc_all(vport);
> +	if (err)
> +		goto err_out;
> +
> +	err = iecm_vport_init_fast_path_txqs(vport);
> +	if (err)
> +		goto err_out;
> +
> +	/* Initialize flow scheduling for queues that were requested
> +	 * before the interface was brought up
> +	 */
> +	for (i = 0; i < vport->num_txq; i++) {
> +		if (test_bit(i, vport->adapter->config_data.etf_qenable)) {
> +			set_bit(__IECM_Q_FLOW_SCH_EN, vport->txqs[i]->flags);
> +			set_bit(__IECM_Q_ETF_EN, vport->txqs[i]->flags);
> +		}
> +	}

Redundant braces for the for-loop.

> +
> +	return 0;
> +err_out:
> +	iecm_vport_queues_rel(vport);
> +	return err;
> +}
> +
> +/**
> + * iecm_vport_intr_clean_queues - MSIX mode Interrupt Handler
> + * @irq: interrupt number
> + * @data: pointer to a q_vector
> + *
> + */
> +irqreturn_t
> +iecm_vport_intr_clean_queues(int __always_unused irq, void *data)
> +{
> +	struct iecm_q_vector *q_vector = (struct iecm_q_vector *)data;
> +
> +	q_vector->total_events++;
> +	napi_schedule(&q_vector->napi);
> +
> +	return IRQ_HANDLED;
> +}
> +
> +/**
> + * iecm_vport_intr_napi_del_all - Unregister napi for all q_vectors in vport
> + * @vport: virtual port structure
> + *
> + */
> +static void iecm_vport_intr_napi_del_all(struct iecm_vport *vport)
> +{
> +	u16 v_idx;
> +
> +	for (v_idx = 0; v_idx < vport->num_q_vectors; v_idx++) {
> +		struct iecm_q_vector *q_vector = &vport->q_vectors[v_idx];
> +
> +		netif_napi_del(&q_vector->napi);

One-liner:

		netif_napi_del(&vport->q_vectors[v_idx].napi);

> +	}
> +}
> +
> +/**
> + * iecm_vport_intr_napi_dis_all - Disable NAPI for all q_vectors in the vport
> + * @vport: main vport structure
> + */
> +static void iecm_vport_intr_napi_dis_all(struct iecm_vport *vport)
> +{
> +	int q_idx;
> +
> +	if (!vport->netdev)
> +		return;
> +
> +	for (q_idx = 0; q_idx < vport->num_q_vectors; q_idx++) {
> +		struct iecm_q_vector *q_vector = &vport->q_vectors[q_idx];
> +
> +		napi_disable(&q_vector->napi);

Same here.

> +	}
> +}
> +
> +/**
> + * iecm_vport_intr_rel - Free memory allocated for interrupt vectors
> + * @vport: virtual port
> + *
> + * Free the memory allocated for interrupt vectors  associated to a vport
> + */
> +void iecm_vport_intr_rel(struct iecm_vport *vport)
> +{
> +	int i, j, v_idx;
> +
> +	if (!vport->netdev)
> +		return;
> +
> +	for (v_idx = 0; v_idx < vport->num_q_vectors; v_idx++) {
> +		struct iecm_q_vector *q_vector = &vport->q_vectors[v_idx];
> +
> +		kfree(q_vector->bufq);
> +		q_vector->bufq = NULL;
> +		kfree(q_vector->tx);
> +		q_vector->tx = NULL;
> +		kfree(q_vector->rx);
> +		q_vector->rx = NULL;
> +	}
> +
> +	/* Clean up the mapping of queues to vectors */
> +	for (i = 0; i < vport->num_rxq_grp; i++) {
> +		struct iecm_rxq_group *rx_qgrp = &vport->rxq_grps[i];
> +
> +		if (iecm_is_queue_model_split(vport->rxq_model)) {
> +			for (j = 0; j < rx_qgrp->splitq.num_rxq_sets; j++)
> +				rx_qgrp->splitq.rxq_sets[j]->rxq.q_vector =
> +									   NULL;
> +		} else {
> +			for (j = 0; j < rx_qgrp->singleq.num_rxq; j++)
> +				rx_qgrp->singleq.rxqs[j]->q_vector = NULL;
> +		}
> +	}
> +
> +	if (iecm_is_queue_model_split(vport->txq_model)) {
> +		for (i = 0; i < vport->num_txq_grp; i++)
> +			vport->txq_grps[i].complq->q_vector = NULL;
> +	} else {
> +		for (i = 0; i < vport->num_txq_grp; i++) {
> +			for (j = 0; j < vport->txq_grps[i].num_txq; j++)
> +				vport->txq_grps[i].txqs[j]->q_vector = NULL;
> +		}

Redundant braces.

> +	}
> +
> +	kfree(vport->q_vectors);
> +	vport->q_vectors = NULL;
> +}
> +
> +/**
> + * iecm_vport_intr_rel_irq - Free the IRQ association with the OS
> + * @vport: main vport structure
> + */
> +static void iecm_vport_intr_rel_irq(struct iecm_vport *vport)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	int vector;
> +
> +	for (vector = 0; vector < vport->num_q_vectors; vector++) {
> +		struct iecm_q_vector *q_vector = &vport->q_vectors[vector];
> +		int irq_num, vidx;
> +
> +		/* free only the irqs that were actually requested */
> +		if (!q_vector)
> +			continue;
> +
> +		vidx = vector + vport->q_vector_base;
> +		irq_num = adapter->msix_entries[vidx].vector;
> +
> +		/* clear the affinity_mask in the IRQ descriptor */
> +		irq_set_affinity_hint(irq_num, NULL);
> +		free_irq(irq_num, q_vector);
> +	}
> +}
> +
> +/**
> + * iecm_vport_intr_dis_irq_all - Disable each interrupt
> + * @vport: main vport structure
> + */
> +void iecm_vport_intr_dis_irq_all(struct iecm_vport *vport)
> +{
> +	struct iecm_q_vector *q_vector = vport->q_vectors;
> +	struct iecm_hw *hw = &vport->adapter->hw;
> +	int q_idx;
> +
> +	for (q_idx = 0; q_idx < vport->num_q_vectors; q_idx++)
> +		wr32(hw, q_vector[q_idx].intr_reg.dyn_ctl, 0);
> +}
> +
> +/**
> + * iecm_vport_intr_buildreg_itr - Enable default interrupt generation settings
> + * @q_vector: pointer to q_vector
> + * @type: itr index
> + * @itr: itr value
> + */
> +static u32 iecm_vport_intr_buildreg_itr(struct iecm_q_vector *q_vector,
> +					const int type, u16 itr)
> +{
> +	u32 itr_val;
> +
> +	itr &= IECM_ITR_MASK;
> +	/* Don't clear PBA because that can cause lost interrupts that
> +	 * came in while we were cleaning/polling
> +	 */
> +	itr_val = q_vector->intr_reg.dyn_ctl_intena_m |
> +		  (type << q_vector->intr_reg.dyn_ctl_itridx_s) |
> +		  (itr << (q_vector->intr_reg.dyn_ctl_intrvl_s - 1));
> +
> +	return itr_val;
> +}
> +
> +/**
> + * iecm_net_dim - Update net DIM algorithm
> + * @q_vector: the vector associated with the interrupt
> + *
> + * Create a DIM sample and notify net_dim() so that it can possibly decide
> + * a new ITR value based on incoming packets, bytes, and interrupts.
> + *
> + * This function is a no-op if the queue is not configured to dynamic ITR.
> + */
> +static void iecm_net_dim(struct iecm_q_vector *q_vector)
> +{
> +	if (IECM_ITR_IS_DYNAMIC(q_vector->tx_intr_mode)) {
> +		struct dim_sample dim_sample = {};
> +		u64 packets = 0, bytes = 0;
> +		int i;
> +
> +		for (i = 0; i < q_vector->num_txq; i++) {
> +			packets += q_vector->tx[i]->q_stats.tx.packets;
> +			bytes += q_vector->tx[i]->q_stats.tx.bytes;
> +		}
> +
> +		dim_update_sample(q_vector->total_events, packets, bytes,
> +				  &dim_sample);
> +		net_dim(&q_vector->tx_dim, dim_sample);
> +	}

	if (!dynamic_tx)
		goto check_rx;

-1 level.

> +
> +	if (IECM_ITR_IS_DYNAMIC(q_vector->rx_intr_mode)) {
> +		struct dim_sample dim_sample = {};
> +		u64 packets = 0, bytes = 0;
> +		int i;
> +
> +		for (i = 0; i < q_vector->num_rxq; i++) {
> +			packets += q_vector->rx[i]->q_stats.rx.packets;
> +			bytes += q_vector->rx[i]->q_stats.rx.bytes;
> +		}
> +
> +		dim_update_sample(q_vector->total_events, packets, bytes,
> +				  &dim_sample);
> +		net_dim(&q_vector->rx_dim, dim_sample);
> +	}

	if (!dynamic_rx)
		return;

-1 as well.

> +}
> +
> +/**
> + * iecm_vport_intr_update_itr_ena_irq - Update itr and re-enable MSIX interrupt
> + * @q_vector: q_vector for which itr is being updated and interrupt enabled
> + *
> + * Update the net_dim() algorithm and re-enable the interrupt associated with
> + * this vector.
> + */
> +void iecm_vport_intr_update_itr_ena_irq(struct iecm_q_vector *q_vector)
> +{
> +	struct iecm_hw *hw = &q_vector->vport->adapter->hw;
> +	u32 intval;
> +
> +	/* net_dim() updates ITR out-of-band using a work item */
> +	iecm_net_dim(q_vector);
> +
> +	intval = iecm_vport_intr_buildreg_itr(q_vector,
> +					      VIRTCHNL2_ITR_IDX_NO_ITR, 0);
> +
> +	wr32(hw, q_vector->intr_reg.dyn_ctl, intval);
> +}
> +
> +/**
> + * iecm_vport_intr_req_irq - get MSI-X vectors from the OS for the vport
> + * @vport: main vport structure
> + * @basename: name for the vector
> + */
> +static int
> +iecm_vport_intr_req_irq(struct iecm_vport *vport, char *basename)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	int vector, err, irq_num, vidx;
> +
> +	for (vector = 0; vector < vport->num_q_vectors; vector++) {
> +		struct iecm_q_vector *q_vector = &vport->q_vectors[vector];
> +
> +		vidx = vector + vport->q_vector_base;
> +		irq_num = adapter->msix_entries[vidx].vector;
> +
> +		snprintf(q_vector->name, sizeof(q_vector->name) - 1,
> +			 "%s-%s-%d", basename, "TxRx", vidx);
> +
> +		err = request_irq(irq_num, vport->irq_q_handler, 0,
> +				  q_vector->name, q_vector);
> +		if (err) {
> +			netdev_err(vport->netdev,
> +				   "Request_irq failed, error: %d\n", err);
> +			goto free_q_irqs;
> +		}
> +		/* assign the mask for this irq */
> +		irq_set_affinity_hint(irq_num, &q_vector->affinity_mask);
> +	}
> +
> +	return 0;
> +
> +free_q_irqs:
> +	while (vector) {
> +		vector--;
> +		vidx = vector + vport->q_vector_base;
> +		irq_num = adapter->msix_entries[vidx].vector;
> +		free_irq(irq_num, &vport->q_vectors[vector]);
> +	}
> +	return err;
> +}
> +
> +/**
> + * iecm_vport_intr_write_itr - Write ITR value to the ITR register
> + * @q_vector: q_vector structure
> + * @itr: Interrupt throttling rate
> + * @tx: Tx or Rx ITR
> + */
> +void iecm_vport_intr_write_itr(struct iecm_q_vector *q_vector, u16 itr, bool tx)
> +{
> +	struct iecm_hw *hw = &q_vector->vport->adapter->hw;
> +	struct iecm_intr_reg *intr_reg;
> +
> +	if (tx && !q_vector->tx)
> +		return;
> +	else if (!tx && !q_vector->rx)
> +		return;

	if ((tx && !q_vector->tx) || (!tx && !q_vector->rx))
		return;

Fits into 79 cols and looks more elegant-ish.

> +
> +	intr_reg = &q_vector->intr_reg;
> +	wr32(hw, tx ? intr_reg->tx_itr : intr_reg->rx_itr,
> +	     ITR_REG_ALIGN(itr) >> IECM_ITR_GRAN_S);
> +}
> +
> +/**
> + * iecm_vport_intr_ena_irq_all - Enable IRQ for the given vport
> + * @vport: main vport structure
> + */
> +void iecm_vport_intr_ena_irq_all(struct iecm_vport *vport)
> +{
> +	int q_idx;
> +
> +	for (q_idx = 0; q_idx < vport->num_q_vectors; q_idx++) {
> +		struct iecm_q_vector *q_vector = &vport->q_vectors[q_idx];
> +
> +		if (q_vector->num_txq || q_vector->num_rxq) {
> +			/* Write the default ITR values */
> +			iecm_vport_intr_write_itr(q_vector,
> +						  q_vector->rx_itr_value,
> +						  false);
> +			iecm_vport_intr_write_itr(q_vector,
> +						  q_vector->tx_itr_value,
> +						  true);
> +			iecm_vport_intr_update_itr_ena_irq(q_vector);
> +		}

		if (!num_txq && !num_rxq)
			continue;

-1 level.

> +	}
> +}
> +
> +/**
> + * iecm_vport_intr_deinit - Release all vector associations for the vport
> + * @vport: main vport structure
> + */
> +void iecm_vport_intr_deinit(struct iecm_vport *vport)
> +{
> +	iecm_vport_intr_napi_dis_all(vport);
> +	iecm_vport_intr_napi_del_all(vport);
> +	iecm_vport_intr_dis_irq_all(vport);
> +	iecm_vport_intr_rel_irq(vport);
> +}
> +
> +/**
> + * iecm_tx_dim_work - Call back from the stack
> + * @work: work queue structure
> + */
> +static void iecm_tx_dim_work(struct work_struct *work)
> +{
> +	struct iecm_q_vector *q_vector;
> +	struct iecm_vport *vport;
> +	struct dim *dim;
> +	u16 itr;
> +
> +	dim = container_of(work, struct dim, work);
> +	q_vector = container_of(dim, struct iecm_q_vector, tx_dim);
> +	vport = q_vector->vport;
> +
> +	if (dim->profile_ix >= ARRAY_SIZE(vport->tx_itr_profile))
> +		dim->profile_ix = ARRAY_SIZE(vport->tx_itr_profile) - 1;
> +
> +	/* look up the values in our local table */
> +	itr = vport->tx_itr_profile[dim->profile_ix];
> +
> +	iecm_vport_intr_write_itr(q_vector, itr, true);
> +
> +	dim->state = DIM_START_MEASURE;
> +}
> +
> +/**
> + * iecm_rx_dim_work - Call back from the stack
> + * @work: work queue structure
> + */
> +static void iecm_rx_dim_work(struct work_struct *work)
> +{
> +	struct iecm_q_vector *q_vector;
> +	struct iecm_vport *vport;
> +	struct dim *dim;
> +	u16 itr;
> +
> +	dim = container_of(work, struct dim, work);
> +	q_vector = container_of(dim, struct iecm_q_vector, rx_dim);
> +	vport = q_vector->vport;
> +
> +	if (dim->profile_ix >= ARRAY_SIZE(vport->rx_itr_profile))
> +		dim->profile_ix = ARRAY_SIZE(vport->rx_itr_profile) - 1;
> +
> +	/* look up the values in our local table */
> +	itr = vport->rx_itr_profile[dim->profile_ix];
> +
> +	iecm_vport_intr_write_itr(q_vector, itr, false);
> +
> +	dim->state = DIM_START_MEASURE;
> +}
> +
> +/**
> + * iecm_vport_intr_napi_ena_all - Enable NAPI for all q_vectors in the vport
> + * @vport: main vport structure
> + */
> +static void
> +iecm_vport_intr_napi_ena_all(struct iecm_vport *vport)
> +{
> +	int q_idx;
> +
> +	if (!vport->netdev)
> +		return;
> +
> +	for (q_idx = 0; q_idx < vport->num_q_vectors; q_idx++) {
> +		struct iecm_q_vector *q_vector = &vport->q_vectors[q_idx];
> +
> +		INIT_WORK(&q_vector->tx_dim.work, iecm_tx_dim_work);
> +		q_vector->tx_dim.mode = DIM_CQ_PERIOD_MODE_START_FROM_EQE;
> +
> +		INIT_WORK(&q_vector->rx_dim.work, iecm_rx_dim_work);
> +		q_vector->rx_dim.mode = DIM_CQ_PERIOD_MODE_START_FROM_EQE;
> +
> +		napi_enable(&q_vector->napi);
> +	}
> +}
> +
> +/**
> + * iecm_vport_splitq_napi_poll - NAPI handler
> + * @napi: struct from which you get q_vector
> + * @budget: budget provided by stack
> + */
> +static int iecm_vport_splitq_napi_poll(struct napi_struct *napi, int budget)
> +{
> +	/* stub */
> +	return 0;
> +}
> +
> +/**
> + * iecm_vport_intr_map_vector_to_qs - Map vectors to queues
> + * @vport: virtual port
> + *
> + * Mapping for vectors to queues
> + */
> +static void iecm_vport_intr_map_vector_to_qs(struct iecm_vport *vport)
> +{
> +	int num_txq_grp = vport->num_txq_grp, bufq_vidx = 0;
> +	int i, j, qv_idx = 0, num_rxq, num_txq, q_index;
> +	struct iecm_rxq_group *rx_qgrp;
> +	struct iecm_txq_group *tx_qgrp;
> +	struct iecm_queue *q, *bufq;
> +
> +	for (i = 0; i < vport->num_rxq_grp; i++) {
> +		rx_qgrp = &vport->rxq_grps[i];
> +		if (iecm_is_queue_model_split(vport->rxq_model))
> +			num_rxq = rx_qgrp->splitq.num_rxq_sets;
> +		else
> +			num_rxq = rx_qgrp->singleq.num_rxq;
> +
> +		for (j = 0; j < num_rxq; j++) {
> +			if (qv_idx >= vport->num_q_vectors)
> +				qv_idx = 0;
> +
> +			if (iecm_is_queue_model_split(vport->rxq_model))
> +				q = &rx_qgrp->splitq.rxq_sets[j]->rxq;
> +			else
> +				q = rx_qgrp->singleq.rxqs[j];
> +			q->q_vector = &vport->q_vectors[qv_idx];
> +			q_index = q->q_vector->num_rxq;
> +			q->q_vector->rx[q_index] = q;
> +			q->q_vector->num_rxq++;
> +			qv_idx++;
> +		}
> +
> +		if (iecm_is_queue_model_split(vport->rxq_model)) {
> +			for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
> +				bufq = &rx_qgrp->splitq.bufq_sets[j].bufq;
> +				bufq->q_vector = &vport->q_vectors[bufq_vidx];
> +				q_index = bufq->q_vector->num_bufq;
> +				bufq->q_vector->bufq[q_index] = bufq;
> +				bufq->q_vector->num_bufq++;
> +			}
> +			if (++bufq_vidx >= vport->num_q_vectors)
> +				bufq_vidx = 0;
> +		}
> +	}
> +	qv_idx = 0;
> +	for (i = 0; i < num_txq_grp; i++) {
> +		tx_qgrp = &vport->txq_grps[i];
> +		num_txq = tx_qgrp->num_txq;
> +
> +		if (iecm_is_queue_model_split(vport->txq_model)) {
> +			if (qv_idx >= vport->num_q_vectors)
> +				qv_idx = 0;
> +
> +			q = tx_qgrp->complq;
> +			q->q_vector = &vport->q_vectors[qv_idx];
> +			q_index = q->q_vector->num_txq;
> +			q->q_vector->tx[q_index] = q;
> +			q->q_vector->num_txq++;
> +			qv_idx++;
> +		} else {
> +			for (j = 0; j < num_txq; j++) {
> +				if (qv_idx >= vport->num_q_vectors)
> +					qv_idx = 0;
> +
> +				q = tx_qgrp->txqs[j];
> +				q->q_vector = &vport->q_vectors[qv_idx];
> +				q_index = q->q_vector->num_txq;
> +				q->q_vector->tx[q_index] = q;
> +				q->q_vector->num_txq++;
> +
> +				qv_idx++;
> +			}
> +		}
> +	}
> +}
> +
> +/**
> + * iecm_vport_intr_init_vec_idx - Initialize the vector indexes
> + * @vport: virtual port
> + *
> + * Initialize vector indexes with values returened over mailbox
> + */
> +static int iecm_vport_intr_init_vec_idx(struct iecm_vport *vport)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct iecm_q_vector *q_vector;
> +	int i;
> +
> +	if (adapter->req_vec_chunks) {
> +		struct virtchnl2_vector_chunks *vchunks;
> +		struct virtchnl2_alloc_vectors *ac;
> +		u16 vecids[IECM_MAX_VECIDS];
> +		int num_ids;
> +
> +		ac = adapter->req_vec_chunks;
> +		vchunks = &ac->vchunks;
> +
> +		num_ids = iecm_get_vec_ids(adapter, vecids, IECM_MAX_VECIDS,
> +					   vchunks);
> +
> +		if (num_ids < adapter->num_msix_entries)
> +			return -EFAULT;
> +
> +		for (i = 0; i < vport->num_q_vectors; i++) {
> +			q_vector = &vport->q_vectors[i];
> +			q_vector->v_idx = vecids[i + vport->q_vector_base];
> +		}
> +	} else {
> +		for (i = 0; i < vport->num_q_vectors; i++) {
> +			q_vector = &vport->q_vectors[i];
> +			q_vector->v_idx = i + vport->q_vector_base;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * iecm_vport_intr_napi_add_all- Register napi handler for all qvectors
> + * @vport: virtual port structure
> + */
> +static void iecm_vport_intr_napi_add_all(struct iecm_vport *vport)
> +{
> +	u16 v_idx;
> +
> +	for (v_idx = 0; v_idx < vport->num_q_vectors; v_idx++) {
> +		struct iecm_q_vector *q_vector = &vport->q_vectors[v_idx];
> +
> +		if (vport->netdev) {
> +			if (iecm_is_queue_model_split(vport->txq_model))
> +				netif_napi_add(vport->netdev, &q_vector->napi,
> +					       iecm_vport_splitq_napi_poll,
> +					       NAPI_POLL_WEIGHT);
> +			else
> +				netif_napi_add(vport->netdev, &q_vector->napi,
> +					       iecm_vport_singleq_napi_poll,
> +					       NAPI_POLL_WEIGHT);
> +		}

		if (!vport->netdev)
			goto check_affinity;

-1 indent level.

> +
> +		/* only set affinity_mask if the CPU is online */
> +		if (cpu_online(v_idx))
> +			cpumask_set_cpu(v_idx, &q_vector->affinity_mask);
> +	}
> +}
> +
> +/**
> + * iecm_vport_intr_alloc - Allocate memory for interrupt vectors
> + * @vport: virtual port
> + *
> + * We allocate one q_vector per queue interrupt. If allocation fails we
> + * return -ENOMEM.
> + */
> +int iecm_vport_intr_alloc(struct iecm_vport *vport)
> +{
> +	int txqs_per_vector, rxqs_per_vector, bufqs_per_vector;
> +	struct iecm_q_vector *q_vector;
> +	int v_idx, err;
> +
> +	vport->q_vectors = kcalloc(vport->num_q_vectors,
> +				   sizeof(struct iecm_q_vector), GFP_KERNEL);
> +
> +	if (!vport->q_vectors)
> +		return -ENOMEM;
> +
> +	txqs_per_vector = DIV_ROUND_UP(vport->num_txq, vport->num_q_vectors);
> +	rxqs_per_vector = DIV_ROUND_UP(vport->num_rxq, vport->num_q_vectors);
> +	bufqs_per_vector = DIV_ROUND_UP(vport->num_bufqs_per_qgrp *
> +					vport->num_rxq_grp,
> +					vport->num_q_vectors);
> +
> +	for (v_idx = 0; v_idx < vport->num_q_vectors; v_idx++) {
> +		q_vector = &vport->q_vectors[v_idx];
> +		q_vector->vport = vport;
> +
> +		q_vector->tx_itr_value = IECM_ITR_TX_DEF;
> +		q_vector->tx_intr_mode = IECM_ITR_DYNAMIC;
> +		q_vector->tx_itr_idx = VIRTCHNL2_ITR_IDX_1;
> +
> +		q_vector->rx_itr_value = IECM_ITR_RX_DEF;
> +		q_vector->rx_intr_mode = IECM_ITR_DYNAMIC;
> +		q_vector->rx_itr_idx = VIRTCHNL2_ITR_IDX_0;
> +
> +		q_vector->tx = kcalloc(txqs_per_vector,
> +				       sizeof(struct iecm_queue *),
> +				       GFP_KERNEL);
> +		if (!q_vector->tx) {
> +			err = -ENOMEM;
> +			goto error;
> +		}
> +
> +		q_vector->rx = kcalloc(rxqs_per_vector,
> +				       sizeof(struct iecm_queue *),
> +				       GFP_KERNEL);
> +		if (!q_vector->rx) {
> +			err = -ENOMEM;
> +			goto error;
> +		}
> +
> +		if (iecm_is_queue_model_split(vport->rxq_model)) {
> +			q_vector->bufq = kcalloc(bufqs_per_vector,
> +						 sizeof(struct iecm_queue *),
> +						 GFP_KERNEL);
> +			if (!q_vector->bufq) {
> +				err = -ENOMEM;
> +				goto error;
> +			}
> +		}

		if (!split)
			continue;

-1 as well.

> +	}
> +
> +	return 0;
> +
> +error:
> +	iecm_vport_intr_rel(vport);
> +	return err;
> +}
> +
> +/**
> + * iecm_vport_intr_init - Setup all vectors for the given vport
> + * @vport: virtual port
> + *
> + * Returns 0 on success or negative on failure
> + */
> +int iecm_vport_intr_init(struct iecm_vport *vport)
> +{
> +	char int_name[IECM_INT_NAME_STR_LEN];
> +	int err = 0;
> +
> +	err = iecm_vport_intr_init_vec_idx(vport);
> +	if (err)
> +		goto handle_err;
> +
> +	iecm_vport_intr_map_vector_to_qs(vport);
> +	iecm_vport_intr_napi_add_all(vport);
> +	iecm_vport_intr_napi_ena_all(vport);
> +
> +	err = vport->adapter->dev_ops.reg_ops.intr_reg_init(vport);
> +	if (err)
> +		goto unroll_vectors_alloc;
> +
> +	snprintf(int_name, sizeof(int_name) - 1, "%s-%s",
> +		 dev_driver_string(&vport->adapter->pdev->dev),
> +		 vport->netdev->name);
> +
> +	err = iecm_vport_intr_req_irq(vport, int_name);
> +	if (err)
> +		goto unroll_vectors_alloc;
> +
> +	iecm_vport_intr_ena_irq_all(vport);
> +	goto handle_err;
> +unroll_vectors_alloc:
> +	iecm_vport_intr_napi_dis_all(vport);
> +	iecm_vport_intr_napi_del_all(vport);
> +handle_err:
> +	return err;
> +}
> +
> +/**
> + * iecm_config_rss - Prepare for RSS
> + * @vport: virtual port
> + *
> + * Return 0 on success, negative on failure
> + */
> +int iecm_config_rss(struct iecm_vport *vport)
> +{
> +	int err;
> +
> +	err = vport->adapter->dev_ops.vc_ops.get_set_rss_key(vport, false);
> +	if (!err)
> +		err = vport->adapter->dev_ops.vc_ops.get_set_rss_lut(vport,
> +								     false);

Please dereference vs_ops into a variable and use it directly to
shorten this.

> +
> +	return err;
> +}
> +
> +/**
> + * iecm_fill_dflt_rss_lut - Fill the indirection table with the default values
> + * @vport: virtual port structure
> + */
> +void iecm_fill_dflt_rss_lut(struct iecm_vport *vport)
> +{
> +	u16 num_active_rxq = vport->num_rxq;
> +	int i;
> +
> +	for (i = 0; i < vport->adapter->rss_data.rss_lut_size; i++)
> +		vport->adapter->rss_data.rss_lut[i] = i % num_active_rxq;

I think I saw a built-in kernel function for that, I'd grep for sth
like fill_default_rss.

> +}
> +
> +/**
> + * iecm_init_rss - Prepare for RSS
> + * @vport: virtual port
> + *
> + * Return 0 on success, negative on failure
> + */
> +int iecm_init_rss(struct iecm_vport *vport)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	u32 lut_size;
> +
> +	adapter->rss_data.rss_key = kzalloc(adapter->rss_data.rss_key_size,
> +					    GFP_KERNEL);
> +	if (!adapter->rss_data.rss_key)
> +		return -ENOMEM;
> +
> +	lut_size = adapter->rss_data.rss_lut_size * sizeof(u32);
> +	adapter->rss_data.rss_lut = kzalloc(lut_size, GFP_KERNEL);
> +	if (!adapter->rss_data.rss_lut) {
> +		kfree(adapter->rss_data.rss_key);
> +		adapter->rss_data.rss_key = NULL;
> +		return -ENOMEM;
> +	}
> +
> +	/* Initialize default rss key */
> +	netdev_rss_key_fill((void *)adapter->rss_data.rss_key,
> +			    adapter->rss_data.rss_key_size);
> +
> +	/* Initialize default rss lut */
> +	if (adapter->rss_data.rss_lut_size % vport->num_rxq) {
> +		u32 dflt_qid;
> +		int i;
> +
> +		/* Set all entries to a default RX queue if the algorithm below
> +		 * won't fill all entries
> +		 */
> +		if (iecm_is_queue_model_split(vport->rxq_model))
> +			dflt_qid =
> +				vport->rxq_grps[0].splitq.rxq_sets[0]->rxq.q_id;
> +		else
> +			dflt_qid =
> +				vport->rxq_grps[0].singleq.rxqs[0]->q_id;
> +
> +		for (i = 0; i < adapter->rss_data.rss_lut_size; i++)
> +			adapter->rss_data.rss_lut[i] = dflt_qid;
> +	}
> +
> +	/* Fill the default RSS lut values*/
> +	iecm_fill_dflt_rss_lut(vport);
> +
> +	return iecm_config_rss(vport);
> +}
> +
> +/**
> + * iecm_deinit_rss - Prepare for RSS
> + * @vport: virtual port
> + *
> + */
> +void iecm_deinit_rss(struct iecm_vport *vport)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +
> +	kfree(adapter->rss_data.rss_key);
> +	adapter->rss_data.rss_key = NULL;
> +	kfree(adapter->rss_data.rss_lut);
> +	adapter->rss_data.rss_lut = NULL;
> +}
> diff --git a/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c b/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> index b91716aeef6f..919fb3958cf8 100644
> --- a/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> @@ -3745,6 +3745,35 @@ void iecm_add_del_ether_addrs(struct iecm_vport *vport, bool add, bool async)
>  		dev_err(&pdev->dev, "Failed to add or del mac filters %d", err);
>  }
>  
> +/**
> + * iecm_set_promiscuous - set promiscuous and send message to mailbox
> + * @adapter: Driver specific private structure
> + *
> + * Request that the PF enable promiscuous mode for our VSI.  Message is sent
> + * asynchronously and won't wait for response.  Returns 0 on success, negative
> + * on failure;
> + */
> +int iecm_set_promiscuous(struct iecm_adapter *adapter)
> +{
> +	struct iecm_vport *vport = adapter->vports[0];
> +	struct virtchnl_promisc_info vpi;
> +	u16 flags = 0;
> +	int err = 0;
> +
> +	if (test_bit(__IECM_PROMISC_UC, adapter->config_data.user_flags))
> +		flags |= FLAG_VF_UNICAST_PROMISC;
> +	if (test_bit(__IECM_PROMISC_MC,
> +		     adapter->config_data.user_flags))
> +		flags |= FLAG_VF_MULTICAST_PROMISC;
> +
> +	vpi.vsi_id = vport->vport_id;
> +	vpi.flags = flags;
> +	err = iecm_send_mb_msg(adapter, VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE,
> +			       sizeof(struct virtchnl_promisc_info),
> +			       (u8 *)&vpi);
> +	return err;
> +}
> +
>  /**
>   * iecm_add_del_vlans - Add or delete vlan filter
>   * @vport: vport structure
> diff --git a/drivers/net/ethernet/intel/include/iecm.h b/drivers/net/ethernet/intel/include/iecm.h
> index b5bd73be2855..4304256f7010 100644
> --- a/drivers/net/ethernet/intel/include/iecm.h
> +++ b/drivers/net/ethernet/intel/include/iecm.h
> @@ -13,6 +13,7 @@
>  #include <linux/version.h>
>  #include <linux/dim.h>
>  
> +#include "iecm_lan_txrx.h"
>  #include "virtchnl_2.h"
>  #include "iecm_txrx.h"
>  #include "iecm_controlq.h"
> @@ -621,6 +622,17 @@ enum iecm_vlan_caps {
>  	VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_SCTP	|\
>  	VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_SCTP)
>  
> +/**
> + * iecm_restore_features - Restore feature configs
> + * @adapter: driver specific private structure
> + * @flag: User settings flag to check
> + */
> +static inline bool iecm_is_user_flag_ena(struct iecm_adapter *adapter,
> +					 enum iecm_user_flags flag)
> +{
> +	return test_bit(flag, adapter->config_data.user_flags);
> +}
> +
>  /**
>   * iecm_get_reserved_vecs - Get reserved vectors
>   * @adapter: private data struct
> @@ -656,6 +668,19 @@ static inline bool iecm_is_reset_in_prog(struct iecm_adapter *adapter)
>  		test_bit(__IECM_HR_DRV_LOAD, adapter->flags));
>  }
>  
> +/**
> + * iecm_rx_offset - Return expected offset into page to access data
> + * @rx_q: queue we are requesting offset of
> + *
> + * Returns the offset value for queue into the data buffer.
> + */
> +static inline unsigned int
> +iecm_rx_offset(struct iecm_queue __maybe_unused *rx_q)
> +{
> +	/* could be non-zero if xdp is enabled */
> +	return 0;
> +}
> +
>  int iecm_probe(struct pci_dev *pdev,
>  	       const struct pci_device_id __always_unused *ent,
>  	       struct iecm_adapter *adapter);
> @@ -702,6 +727,7 @@ int iecm_send_mb_msg(struct iecm_adapter *adapter, enum virtchnl_ops op,
>  		     u16 msg_size, u8 *msg);
>  void iecm_vport_set_hsplit(struct iecm_vport *vport, bool ena);
>  void iecm_add_del_ether_addrs(struct iecm_vport *vport, bool add, bool async);
> +int iecm_set_promiscuous(struct iecm_adapter *adapter);
>  int iecm_send_enable_channels_msg(struct iecm_vport *vport);
>  int iecm_send_disable_channels_msg(struct iecm_vport *vport);
>  bool iecm_is_feature_ena(struct iecm_vport *vport, netdev_features_t feature);
> @@ -710,5 +736,7 @@ int iecm_check_descs(struct iecm_vport *vport, u64 rx_desc_ids,
>  int iecm_set_msg_pending(struct iecm_adapter *adapter,
>  			 struct iecm_ctlq_msg *ctlq_msg,
>  			 enum iecm_vport_vc_state err_enum);
> +void iecm_vport_intr_write_itr(struct iecm_q_vector *q_vector,
> +			       u16 itr, bool tx);
>  int iecm_send_map_unmap_queue_vector_msg(struct iecm_vport *vport, bool map);
>  #endif /* !_IECM_H_ */
> diff --git a/drivers/net/ethernet/intel/include/iecm_lan_txrx.h b/drivers/net/ethernet/intel/include/iecm_lan_txrx.h
> new file mode 100644
> index 000000000000..967308036eba
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/include/iecm_lan_txrx.h
> @@ -0,0 +1,394 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* Copyright (c) 2020, Intel Corporation. */
> +
> +#ifndef _IECM_LAN_TXRX_H_
> +#define _IECM_LAN_TXRX_H_
> +
> +enum iecm_rss_hash {
> +	/* Values 0 - 28 are reserved for future use */
> +	IECM_HASH_INVALID		= 0,
> +	IECM_HASH_NONF_UNICAST_IPV4_UDP	= 29,
> +	IECM_HASH_NONF_MULTICAST_IPV4_UDP,
> +	IECM_HASH_NONF_IPV4_UDP,
> +	IECM_HASH_NONF_IPV4_TCP_SYN_NO_ACK,
> +	IECM_HASH_NONF_IPV4_TCP,
> +	IECM_HASH_NONF_IPV4_SCTP,
> +	IECM_HASH_NONF_IPV4_OTHER,
> +	IECM_HASH_FRAG_IPV4,
> +	/* Values 37-38 are reserved */
> +	IECM_HASH_NONF_UNICAST_IPV6_UDP	= 39,
> +	IECM_HASH_NONF_MULTICAST_IPV6_UDP,
> +	IECM_HASH_NONF_IPV6_UDP,
> +	IECM_HASH_NONF_IPV6_TCP_SYN_NO_ACK,
> +	IECM_HASH_NONF_IPV6_TCP,
> +	IECM_HASH_NONF_IPV6_SCTP,
> +	IECM_HASH_NONF_IPV6_OTHER,
> +	IECM_HASH_FRAG_IPV6,
> +	IECM_HASH_NONF_RSVD47,
> +	IECM_HASH_NONF_FCOE_OX,
> +	IECM_HASH_NONF_FCOE_RX,
> +	IECM_HASH_NONF_FCOE_OTHER,
> +	/* Values 51-62 are reserved */
> +	IECM_HASH_L2_PAYLOAD		= 63,
> +	IECM_HASH_MAX
> +};
> +
> +/* Supported RSS offloads */
> +#define IECM_DEFAULT_RSS_HASH ( \
> +	BIT_ULL(IECM_HASH_NONF_IPV4_UDP) | \
> +	BIT_ULL(IECM_HASH_NONF_IPV4_SCTP) | \
> +	BIT_ULL(IECM_HASH_NONF_IPV4_TCP) | \
> +	BIT_ULL(IECM_HASH_NONF_IPV4_OTHER) | \
> +	BIT_ULL(IECM_HASH_FRAG_IPV4) | \
> +	BIT_ULL(IECM_HASH_NONF_IPV6_UDP) | \
> +	BIT_ULL(IECM_HASH_NONF_IPV6_TCP) | \
> +	BIT_ULL(IECM_HASH_NONF_IPV6_SCTP) | \
> +	BIT_ULL(IECM_HASH_NONF_IPV6_OTHER) | \
> +	BIT_ULL(IECM_HASH_FRAG_IPV6) | \
> +	BIT_ULL(IECM_HASH_L2_PAYLOAD))
> +
> +	/* TODO: Wrap belwo comment under internal flag
> +	 * Below 6 pcktypes are not supported by FVL or older products
> +	 * They are supported by FPK and future products
> +	 */
> +#define IECM_DEFAULT_RSS_HASH_EXPANDED (IECM_DEFAULT_RSS_HASH | \
> +	BIT_ULL(IECM_HASH_NONF_IPV4_TCP_SYN_NO_ACK) | \
> +	BIT_ULL(IECM_HASH_NONF_UNICAST_IPV4_UDP) | \
> +	BIT_ULL(IECM_HASH_NONF_MULTICAST_IPV4_UDP) | \
> +	BIT_ULL(IECM_HASH_NONF_IPV6_TCP_SYN_NO_ACK) | \
> +	BIT_ULL(IECM_HASH_NONF_UNICAST_IPV6_UDP) | \
> +	BIT_ULL(IECM_HASH_NONF_MULTICAST_IPV6_UDP))
> +
> +/* For iecm_splitq_base_tx_compl_desc */
> +#define IECM_TXD_COMPLQ_GEN_S	15
> +#define IECM_TXD_COMPLQ_GEN_M		BIT_ULL(IECM_TXD_COMPLQ_GEN_S)
> +#define IECM_TXD_COMPLQ_COMPL_TYPE_S	11
> +#define IECM_TXD_COMPLQ_COMPL_TYPE_M	\
> +	MAKEMASK(0x7UL, IECM_TXD_COMPLQ_COMPL_TYPE_S)
> +#define IECM_TXD_COMPLQ_QID_S	0
> +#define IECM_TXD_COMPLQ_QID_M		MAKEMASK(0x3FFUL, IECM_TXD_COMPLQ_QID_S)
> +
> +/* For base mode TX descriptors */
> +#define IECM_TXD_CTX_QW1_MSS_S		50
> +#define IECM_TXD_CTX_QW1_MSS_M		\
> +	MAKEMASK(0x3FFFULL, IECM_TXD_CTX_QW1_MSS_S)
> +#define IECM_TXD_CTX_QW1_TSO_LEN_S	30
> +#define IECM_TXD_CTX_QW1_TSO_LEN_M	\
> +	MAKEMASK(0x3FFFFULL, IECM_TXD_CTX_QW1_TSO_LEN_S)
> +#define IECM_TXD_CTX_QW1_CMD_S		4
> +#define IECM_TXD_CTX_QW1_CMD_M		\
> +	MAKEMASK(0xFFFUL, IECM_TXD_CTX_QW1_CMD_S)
> +#define IECM_TXD_CTX_QW1_DTYPE_S	0
> +#define IECM_TXD_CTX_QW1_DTYPE_M	\
> +	MAKEMASK(0xFUL, IECM_TXD_CTX_QW1_DTYPE_S)
> +#define IECM_TXD_QW1_L2TAG1_S		48
> +#define IECM_TXD_QW1_L2TAG1_M		\
> +	MAKEMASK(0xFFFFULL, IECM_TXD_QW1_L2TAG1_S)
> +#define IECM_TXD_QW1_TX_BUF_SZ_S	34
> +#define IECM_TXD_QW1_TX_BUF_SZ_M	\
> +	MAKEMASK(0x3FFFULL, IECM_TXD_QW1_TX_BUF_SZ_S)
> +#define IECM_TXD_QW1_OFFSET_S		16
> +#define IECM_TXD_QW1_OFFSET_M		\
> +	MAKEMASK(0x3FFFFULL, IECM_TXD_QW1_OFFSET_S)
> +#define IECM_TXD_QW1_CMD_S		4
> +#define IECM_TXD_QW1_CMD_M		MAKEMASK(0xFFFUL, IECM_TXD_QW1_CMD_S)
> +#define IECM_TXD_QW1_DTYPE_S		0
> +#define IECM_TXD_QW1_DTYPE_M		MAKEMASK(0xFUL, IECM_TXD_QW1_DTYPE_S)
> +
> +/* TX Completion Descriptor Completion Types */
> +#define IECM_TXD_COMPLT_ITR_FLUSH	0
> +#define IECM_TXD_COMPLT_RULE_MISS	1
> +#define IECM_TXD_COMPLT_RS		2
> +#define IECM_TXD_COMPLT_REINJECTED	3
> +#define IECM_TXD_COMPLT_RE		4
> +#define IECM_TXD_COMPLT_SW_MARKER	5
> +
> +enum iecm_tx_desc_dtype_value {
> +	IECM_TX_DESC_DTYPE_DATA				= 0,
> +	IECM_TX_DESC_DTYPE_CTX				= 1,
> +	IECM_TX_DESC_DTYPE_REINJECT_CTX			= 2,
> +	IECM_TX_DESC_DTYPE_FLEX_DATA			= 3,
> +	IECM_TX_DESC_DTYPE_FLEX_CTX			= 4,
> +	IECM_TX_DESC_DTYPE_FLEX_TSO_CTX			= 5,
> +	IECM_TX_DESC_DTYPE_FLEX_TSYN_L2TAG1		= 6,
> +	IECM_TX_DESC_DTYPE_FLEX_L2TAG1_L2TAG2		= 7,
> +	IECM_TX_DESC_DTYPE_FLEX_TSO_L2TAG2_PARSTAG_CTX	= 8,
> +	IECM_TX_DESC_DTYPE_FLEX_HOSTSPLIT_SA_TSO_CTX	= 9,
> +	IECM_TX_DESC_DTYPE_FLEX_HOSTSPLIT_SA_CTX	= 10,
> +	IECM_TX_DESC_DTYPE_FLEX_L2TAG2_CTX		= 11,
> +	IECM_TX_DESC_DTYPE_FLEX_FLOW_SCHE		= 12,
> +	IECM_TX_DESC_DTYPE_FLEX_HOSTSPLIT_TSO_CTX	= 13,
> +	IECM_TX_DESC_DTYPE_FLEX_HOSTSPLIT_CTX		= 14,
> +	/* DESC_DONE - HW has completed write-back of descriptor */
> +	IECM_TX_DESC_DTYPE_DESC_DONE			= 15,
> +};
> +
> +enum iecm_tx_ctx_desc_cmd_bits {
> +	IECM_TX_CTX_DESC_TSO		= 0x01,
> +	IECM_TX_CTX_DESC_TSYN		= 0x02,
> +	IECM_TX_CTX_DESC_IL2TAG2	= 0x04,
> +	IECM_TX_CTX_DESC_RSVD		= 0x08,
> +	IECM_TX_CTX_DESC_SWTCH_NOTAG	= 0x00,
> +	IECM_TX_CTX_DESC_SWTCH_UPLINK	= 0x10,
> +	IECM_TX_CTX_DESC_SWTCH_LOCAL	= 0x20,
> +	IECM_TX_CTX_DESC_SWTCH_VSI	= 0x30,
> +	IECM_TX_CTX_DESC_FILT_AU_EN	= 0x40,
> +	IECM_TX_CTX_DESC_FILT_AU_EVICT	= 0x80,
> +	IECM_TX_CTX_DESC_RSVD1		= 0xF00
> +};
> +
> +enum iecm_tx_desc_len_fields {
> +	/* Note: These are predefined bit offsets */
> +	IECM_TX_DESC_LEN_MACLEN_S	= 0, /* 7 BITS */
> +	IECM_TX_DESC_LEN_IPLEN_S	= 7, /* 7 BITS */
> +	IECM_TX_DESC_LEN_L4_LEN_S	= 14 /* 4 BITS */
> +};
> +
> +enum iecm_tx_base_desc_cmd_bits {
> +	IECM_TX_DESC_CMD_EOP			= 0x0001,
> +	IECM_TX_DESC_CMD_RS			= 0x0002,
> +	 /* only on VFs else RSVD */
> +	IECM_TX_DESC_CMD_ICRC			= 0x0004,
> +	IECM_TX_DESC_CMD_IL2TAG1		= 0x0008,
> +	IECM_TX_DESC_CMD_RSVD1			= 0x0010,
> +	IECM_TX_DESC_CMD_IIPT_NONIP		= 0x0000, /* 2 BITS */
> +	IECM_TX_DESC_CMD_IIPT_IPV6		= 0x0020, /* 2 BITS */
> +	IECM_TX_DESC_CMD_IIPT_IPV4		= 0x0040, /* 2 BITS */
> +	IECM_TX_DESC_CMD_IIPT_IPV4_CSUM		= 0x0060, /* 2 BITS */
> +	IECM_TX_DESC_CMD_RSVD2			= 0x0080,
> +	IECM_TX_DESC_CMD_L4T_EOFT_UNK		= 0x0000, /* 2 BITS */
> +	IECM_TX_DESC_CMD_L4T_EOFT_TCP		= 0x0100, /* 2 BITS */
> +	IECM_TX_DESC_CMD_L4T_EOFT_SCTP		= 0x0200, /* 2 BITS */
> +	IECM_TX_DESC_CMD_L4T_EOFT_UDP		= 0x0300, /* 2 BITS */
> +	IECM_TX_DESC_CMD_RSVD3			= 0x0400,
> +	IECM_TX_DESC_CMD_RSVD4			= 0x0800,
> +};
> +
> +/* Transmit descriptors  */
> +/* splitq tx buf, singleq tx buf and singleq compl desc */
> +struct iecm_base_tx_desc {
> +	__le64 buf_addr; /* Address of descriptor's data buf */
> +	__le64 qw1; /* type_cmd_offset_bsz_l2tag1 */
> +};/* read used with buffer queues*/
> +
> +struct iecm_splitq_tx_compl_desc {
> +	/* qid=[10:0] comptype=[13:11] rsvd=[14] gen=[15] */
> +	__le16 qid_comptype_gen;
> +	union {
> +		__le16 q_head; /* Queue head */
> +		__le16 compl_tag; /* Completion tag */
> +	} q_head_compl_tag;
> +	u32 rsvd;
> +
> +};/* writeback used with completion queues*/
> +
> +/* Context descriptors */
> +struct iecm_base_tx_ctx_desc {
> +	struct {
> +		__le32 rsvd0;
> +		__le16 l2tag2;
> +		__le16 rsvd1;
> +	} qw0;
> +	__le64 qw1; /* type_cmd_tlen_mss/rt_hint */
> +};
> +
> +/* Common cmd field defines for all desc except Flex Flow Scheduler (0x0C) */
> +enum iecm_tx_flex_desc_cmd_bits {
> +	IECM_TX_FLEX_DESC_CMD_EOP			= 0x01,
> +	IECM_TX_FLEX_DESC_CMD_RS			= 0x02,
> +	IECM_TX_FLEX_DESC_CMD_RE			= 0x04,
> +	IECM_TX_FLEX_DESC_CMD_IL2TAG1			= 0x08,
> +	IECM_TX_FLEX_DESC_CMD_DUMMY			= 0x10,
> +	IECM_TX_FLEX_DESC_CMD_CS_EN			= 0x20,
> +	IECM_TX_FLEX_DESC_CMD_FILT_AU_EN		= 0x40,
> +	IECM_TX_FLEX_DESC_CMD_FILT_AU_EVICT		= 0x80,
> +};
> +
> +struct iecm_flex_tx_desc {
> +	__le64 buf_addr;	/* Packet buffer address */
> +	struct {
> +		__le16 cmd_dtype;
> +#define IECM_FLEX_TXD_QW1_DTYPE_S		0
> +#define IECM_FLEX_TXD_QW1_DTYPE_M		\
> +		MAKEMASK(0x1FUL, IECM_FLEX_TXD_QW1_DTYPE_S)
> +#define IECM_FLEX_TXD_QW1_CMD_S		5
> +#define IECM_FLEX_TXD_QW1_CMD_M		MAKEMASK(0x7FFUL, IECM_TXD_QW1_CMD_S)
> +		union {
> +			/* DTYPE = IECM_TX_DESC_DTYPE_FLEX_DATA_(0x03) */
> +			u8 raw[4];
> +
> +			/* DTYPE = IECM_TX_DESC_DTYPE_FLEX_TSYN_L2TAG1 (0x06) */
> +			struct {
> +				__le16 l2tag1;
> +				u8 flex;
> +				u8 tsync;
> +			} tsync;
> +
> +			/* DTYPE=IECM_TX_DESC_DTYPE_FLEX_L2TAG1_L2TAG2 (0x07) */
> +			struct {
> +				__le16 l2tag1;
> +				__le16 l2tag2;
> +			} l2tags;
> +		} flex;
> +		__le16 buf_size;
> +	} qw1;
> +};
> +
> +struct iecm_flex_tx_sched_desc {
> +	__le64 buf_addr;	/* Packet buffer address */
> +
> +	/* DTYPE = IECM_TX_DESC_DTYPE_FLEX_FLOW_SCHE_16B (0x0C) */
> +	struct {
> +		u8 cmd_dtype;
> +#define IECM_TXD_FLEX_FLOW_DTYPE_M	0x1F
> +#define IECM_TXD_FLEX_FLOW_CMD_EOP	0x20
> +#define IECM_TXD_FLEX_FLOW_CMD_CS_EN	0x40
> +#define IECM_TXD_FLEX_FLOW_CMD_RE	0x80
> +
> +		u8 rsvd[3];
> +
> +		__le16 compl_tag;
> +		__le16 rxr_bufsize;
> +#define IECM_TXD_FLEX_FLOW_RXR		0x4000
> +#define IECM_TXD_FLEX_FLOW_BUFSIZE_M	0x3FFF
> +	} qw1;
> +};
> +
> +/* Common cmd fields for all flex context descriptors
> + * Note: these defines already account for the 5 bit dtype in the cmd_dtype
> + * field
> + */
> +enum iecm_tx_flex_ctx_desc_cmd_bits {
> +	IECM_TX_FLEX_CTX_DESC_CMD_TSO			= 0x0020,
> +	IECM_TX_FLEX_CTX_DESC_CMD_TSYN_EN		= 0x0040,
> +	IECM_TX_FLEX_CTX_DESC_CMD_L2TAG2		= 0x0080,
> +	IECM_TX_FLEX_CTX_DESC_CMD_SWTCH_UPLNK		= 0x0200, /* 2 bits */
> +	IECM_TX_FLEX_CTX_DESC_CMD_SWTCH_LOCAL		= 0x0400, /* 2 bits */
> +	IECM_TX_FLEX_CTX_DESC_CMD_SWTCH_TARGETVSI	= 0x0600, /* 2 bits */
> +};
> +
> +/* Standard flex descriptor TSO context quad word */
> +struct iecm_flex_tx_tso_ctx_qw {
> +	__le32 flex_tlen;
> +#define IECM_TXD_FLEX_CTX_TLEN_M	0x1FFFF
> +#define IECM_TXD_FLEX_TSO_CTX_FLEX_S	24
> +	__le16 mss_rt;
> +#define IECM_TXD_FLEX_CTX_MSS_RT_M	0x3FFF
> +	u8 hdr_len;
> +	u8 flex;
> +};
> +
> +union iecm_flex_tx_ctx_desc {
> +	/* DTYPE = IECM_TX_DESC_DTYPE_FLEX_CTX (0x04) */
> +	struct {
> +		u8 qw0_flex[8];
> +		struct {
> +			__le16 cmd_dtype;
> +			__le16 l2tag1;
> +			u8 qw1_flex[4];
> +		} qw1;
> +	} gen;
> +
> +	/* DTYPE = IECM_TX_DESC_DTYPE_FLEX_TSO_CTX (0x05) */
> +	struct {
> +		struct iecm_flex_tx_tso_ctx_qw qw0;
> +		struct {
> +			__le16 cmd_dtype;
> +			u8 flex[6];
> +		} qw1;
> +	} tso;
> +
> +	/* DTYPE = IECM_TX_DESC_DTYPE_FLEX_TSO_L2TAG2_PARSTAG_CTX (0x08) */
> +	struct {
> +		struct iecm_flex_tx_tso_ctx_qw qw0;
> +		struct {
> +			__le16 cmd_dtype;
> +			__le16 l2tag2;
> +			u8 flex0;
> +			u8 ptag;
> +			u8 flex1[2];
> +		} qw1;
> +	} tso_l2tag2_ptag;
> +
> +	/* DTYPE = IECM_TX_DESC_DTYPE_FLEX_L2TAG2_CTX (0x0B) */
> +	struct {
> +		u8 qw0_flex[8];
> +		struct {
> +			__le16 cmd_dtype;
> +			__le16 l2tag2;
> +			u8 flex[4];
> +		} qw1;
> +	} l2tag2;
> +
> +	/* DTYPE = IECM_TX_DESC_DTYPE_REINJECT_CTX (0x02) */
> +	struct {
> +		struct {
> +			__le32 sa_domain;
> +#define IECM_TXD_FLEX_CTX_SA_DOM_M	0xFFFF
> +#define IECM_TXD_FLEX_CTX_SA_DOM_VAL	0x10000
> +			__le32 sa_idx;
> +#define IECM_TXD_FLEX_CTX_SAIDX_M	0x1FFFFF
> +		} qw0;
> +		struct {
> +			__le16 cmd_dtype;
> +			__le16 txr2comp;
> +#define IECM_TXD_FLEX_CTX_TXR2COMP	0x1
> +			__le16 miss_txq_comp_tag;
> +			__le16 miss_txq_id;
> +		} qw1;
> +	} reinjection_pkt;
> +};
> +
> +/* Host Split Context Descriptors */
> +struct iecm_flex_tx_hs_ctx_desc {
> +	union {
> +		struct {
> +			__le32 host_fnum_tlen;
> +#define IECM_TXD_FLEX_CTX_TLEN_S	0
> +#define IECM_TXD_FLEX_CTX_TLEN_M	0x1FFFF
> +#define IECM_TXD_FLEX_CTX_FNUM_S	18
> +#define IECM_TXD_FLEX_CTX_FNUM_M	0x7FF
> +#define IECM_TXD_FLEX_CTX_HOST_S	29
> +#define IECM_TXD_FLEX_CTX_HOST_M	0x7
> +			__le16 ftype_mss_rt;
> +#define IECM_TXD_FLEX_CTX_MSS_RT_0	0
> +#define IECM_TXD_FLEX_CTX_MSS_RT_M	0x3FFF
> +#define IECM_TXD_FLEX_CTX_FTYPE_S	14
> +#define IECM_TXD_FLEX_CTX_FTYPE_VF	MAKEMASK(0x0, IECM_TXD_FLEX_CTX_FTYPE_S)
> +#define IECM_TXD_FLEX_CTX_FTYPE_VDEV	MAKEMASK(0x1, IECM_TXD_FLEX_CTX_FTYPE_S)
> +#define IECM_TXD_FLEX_CTX_FTYPE_PF	MAKEMASK(0x2, IECM_TXD_FLEX_CTX_FTYPE_S)
> +			u8 hdr_len;
> +			u8 ptag;
> +		} tso;
> +		struct {
> +			u8 flex0[2];
> +			__le16 host_fnum_ftype;
> +			u8 flex1[3];
> +			u8 ptag;
> +		} no_tso;
> +	} qw0;
> +
> +	__le64 qw1_cmd_dtype;
> +#define IECM_TXD_FLEX_CTX_QW1_PASID_S		16
> +#define IECM_TXD_FLEX_CTX_QW1_PASID_M		0xFFFFF
> +#define IECM_TXD_FLEX_CTX_QW1_PASID_VALID_S	36
> +#define IECM_TXD_FLEX_CTX_QW1_PASID_VALID	\
> +		MAKEMASK(0x1, IECM_TXD_FLEX_CTX_PASID_VALID_S)
> +#define IECM_TXD_FLEX_CTX_QW1_TPH_S		37
> +#define IECM_TXD_FLEX_CTX_QW1_TPH \
> +		MAKEMASK(0x1, IECM_TXD_FLEX_CTX_TPH_S)
> +#define IECM_TXD_FLEX_CTX_QW1_PFNUM_S		38
> +#define IECM_TXD_FLEX_CTX_QW1_PFNUM_M		0xF
> +/* The following are only valid for DTYPE = 0x09 and DTYPE = 0x0A */
> +#define IECM_TXD_FLEX_CTX_QW1_SAIDX_S		42
> +#define IECM_TXD_FLEX_CTX_QW1_SAIDX_M		0x1FFFFF
> +#define IECM_TXD_FLEX_CTX_QW1_SAIDX_VAL_S	63
> +#define IECM_TXD_FLEX_CTX_QW1_SAIDX_VALID	\
> +		MAKEMASK(0x1, IECM_TXD_FLEX_CTX_QW1_SAIDX_VAL_S)
> +/* The following are only valid for DTYPE = 0x0D and DTYPE = 0x0E */
> +#define IECM_TXD_FLEX_CTX_QW1_FLEX0_S		48
> +#define IECM_TXD_FLEX_CTX_QW1_FLEX0_M		0xFF
> +#define IECM_TXD_FLEX_CTX_QW1_FLEX1_S		56
> +#define IECM_TXD_FLEX_CTX_QW1_FLEX1_M		0xFF
> +};
> +#endif /* _IECM_LAN_TXRX_H_ */
> diff --git a/drivers/net/ethernet/intel/include/iecm_txrx.h b/drivers/net/ethernet/intel/include/iecm_txrx.h
> index 0aa1eac70e7c..44c20f8a2039 100644
> --- a/drivers/net/ethernet/intel/include/iecm_txrx.h
> +++ b/drivers/net/ethernet/intel/include/iecm_txrx.h
> @@ -81,8 +81,70 @@
>  #define IECM_MAX_MTU		\
>  	(IECM_MAX_RXBUFFER - IECM_PACKET_HDR_PAD)
>  
> +#define IECM_RX_BI_BUFID_S		0
> +#define IECM_RX_BI_BUFID_M		MAKEMASK(0x7FFF, IECM_RX_BI_BUFID_S)
> +#define IECM_RX_BI_GEN_S		15
> +#define IECM_RX_BI_GEN_M		BIT(IECM_RX_BI_GEN_S)
> +
> +#define IECM_SINGLEQ_RX_BUF_DESC(R, i)	\
> +	(&(((struct virtchnl2_singleq_rx_buf_desc *)((R)->desc_ring))[i]))
> +#define IECM_SPLITQ_RX_BUF_DESC(R, i)	\
> +	(&(((struct virtchnl2_splitq_rx_buf_desc *)((R)->desc_ring))[i]))
> +#define IECM_SPLITQ_RX_BI_DESC(R, i)	\
> +	(&(((u16 *)((R)->ring))[i]))
> +
> +#define IECM_BASE_TX_DESC(R, i)	\
> +	(&(((struct iecm_base_tx_desc *)((R)->desc_ring))[i]))
> +#define IECM_BASE_TX_CTX_DESC(R, i) \
> +	(&(((struct iecm_base_tx_ctx_desc *)((R)->desc_ring))[i]))
> +#define IECM_SPLITQ_TX_COMPLQ_DESC(R, i)	\
> +	(&(((struct iecm_splitq_tx_compl_desc *)((R)->desc_ring))[i]))
> +
> +#define IECM_FLEX_TX_DESC(R, i)	\
> +	(&(((union iecm_tx_flex_desc *)((R)->desc_ring))[i]))
> +#define IECM_FLEX_TX_CTX_DESC(R, i)	\
> +	(&(((union iecm_flex_tx_ctx_desc *)((R)->desc_ring))[i]))
> +
> +#define IECM_DESC_UNUSED(R)	\
> +	((((R)->next_to_clean > (R)->next_to_use) ? 0 : (R)->desc_count) + \
> +	(R)->next_to_clean - (R)->next_to_use - 1)
> +
> +#define IECM_TX_BUF_UNUSED(R)	((R)->buf_stack.top)
> +
> +#define IECM_TXD_LAST_DESC_CMD (IECM_TX_DESC_CMD_EOP | IECM_TX_DESC_CMD_RS)
> +
>  #define MAKEMASK(m, s)	((m) << (s))

Consider using stock BIT(s) insteead of introducing this MAKEMASK().

>  
> +struct iecm_tx_buf {
> +	struct hlist_node hlist;
> +	void *next_to_watch;
> +	union {
> +		struct sk_buff *skb;
> +		struct xdp_frame *xdpf;
> +	};
> +	unsigned int bytecount;
> +	unsigned short gso_segs;
> +#define IECM_TX_FLAGS_TSO			BIT(0)
> +#define IECM_TX_FLAGS_VLAN_TAG			BIT(1)
> +#define IECM_TX_FLAGS_HW_VLAN			BIT(2)
> +#define IECM_TX_FLAGS_HW_OUTER_SINGLE_VLAN	BIT(3)
> +#define IECM_TX_FLAGS_VLAN_SHIFT		16
> +#define IECM_TX_FLAGS_VLAN_MASK			0xFFFF0000
> +	u32 tx_flags;
> +	DEFINE_DMA_UNMAP_ADDR(dma);
> +	DEFINE_DMA_UNMAP_LEN(len);
> +	u16 compl_tag;		/* Unique identifier for buffer; used to
> +				 * compare with completion tag returned
> +				 * in buffer completion event
> +				 */
> +};
> +
> +struct iecm_buf_lifo {
> +	u16 top;
> +	u16 size;
> +	struct iecm_tx_buf **bufs;

There'll probably be a 4-byte gap before @bufs, move @top and @size
to the bottop to avoid this.

> +};
> +
>  /* Checksum offload bits decoded from the receive descriptor. */
>  struct iecm_rx_csum_decoded {
>  	u8 l3l4p : 1;
> @@ -349,6 +411,16 @@ union iecm_queue_stats {
>  	struct iecm_tx_queue_stats tx;
>  };
>  
> +#define IECM_ITR_DYNAMIC	1
> +#define IECM_ITR_MAX		0x1FE0
> +#define IECM_ITR_20K		0x0032
> +#define IECM_ITR_GRAN_S		1	/* Assume ITR granularity is 2us */
> +#define IECM_ITR_MASK		0x1FFE	/* ITR register value alignment mask */
> +#define ITR_REG_ALIGN(setting)	((setting) & IECM_ITR_MASK)
> +#define IECM_ITR_IS_DYNAMIC(itr_mode) (itr_mode)
> +#define IECM_ITR_TX_DEF		IECM_ITR_20K
> +#define IECM_ITR_RX_DEF		IECM_ITR_20K
> +
>  /* queue associated with a vport */
>  struct iecm_queue {
>  	struct device *dev;		/* Used for DMA mapping */
> @@ -414,6 +486,10 @@ struct iecm_queue {
>  	dma_addr_t dma;			/* physical address of ring */
>  	void *desc_ring;		/* Descriptor ring memory */
>  
> +	struct iecm_buf_lifo buf_stack; /* Stack of empty buffers to store
> +					 * buffer info for out of order
> +					 * buffer completions
> +					 */
>  	u16 tx_buf_key;			/* 16 bit unique "identifier" (index)
>  					 * to be used as the completion tag when
>  					 * queue is using flow based scheduling
> @@ -505,13 +581,33 @@ struct iecm_txq_group {
>  
>  struct iecm_adapter;
>  
> +int iecm_vport_singleq_napi_poll(struct napi_struct *napi, int budget);
>  void iecm_vport_init_num_qs(struct iecm_vport *vport,
>  			    struct virtchnl2_create_vport *vport_msg);
>  void iecm_vport_calc_num_q_desc(struct iecm_vport *vport);
>  void iecm_vport_calc_total_qs(struct iecm_adapter *adapter,
>  			      struct virtchnl2_create_vport *vport_msg);
>  void iecm_vport_calc_num_q_groups(struct iecm_vport *vport);
> +int iecm_vport_queues_alloc(struct iecm_vport *vport);
> +void iecm_vport_queues_rel(struct iecm_vport *vport);
>  void iecm_vport_calc_num_q_vec(struct iecm_vport *vport);
> +void iecm_vport_intr_rel(struct iecm_vport *vport);
> +int iecm_vport_intr_alloc(struct iecm_vport *vport);
> +void iecm_vport_intr_dis_irq_all(struct iecm_vport *vport);
> +void iecm_vport_intr_clear_dflt_itr(struct iecm_vport *vport);
> +void iecm_vport_intr_update_itr_ena_irq(struct iecm_q_vector *q_vector);
> +void iecm_vport_intr_deinit(struct iecm_vport *vport);
> +int iecm_vport_intr_init(struct iecm_vport *vport);
>  irqreturn_t
>  iecm_vport_intr_clean_queues(int __always_unused irq, void *data);
> +void iecm_vport_intr_ena_irq_all(struct iecm_vport *vport);
> +int iecm_config_rss(struct iecm_vport *vport);
> +void iecm_fill_dflt_rss_lut(struct iecm_vport *vport);
> +int iecm_init_rss(struct iecm_vport *vport);
> +void iecm_deinit_rss(struct iecm_vport *vport);
> +bool iecm_init_rx_buf_hw_alloc(struct iecm_queue *rxq, struct iecm_rx_buf *buf);
> +void iecm_rx_buf_hw_update(struct iecm_queue *rxq, u32 val);
> +void iecm_tx_buf_rel(struct iecm_queue *tx_q, struct iecm_tx_buf *tx_buf);
> +bool iecm_rx_singleq_buf_hw_alloc_all(struct iecm_queue *rxq,
> +				      u16 cleaned_count);
>  #endif /* !_IECM_TXRX_H_ */
> -- 
> 2.33.0

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
