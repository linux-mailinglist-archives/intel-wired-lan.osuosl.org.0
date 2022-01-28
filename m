Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED67D49FE33
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jan 2022 17:37:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B01E40400;
	Fri, 28 Jan 2022 16:37:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gDLbaEDcP2oR; Fri, 28 Jan 2022 16:37:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C529E402B9;
	Fri, 28 Jan 2022 16:37:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 668111BF276
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 16:37:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 528DD40400
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 16:37:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YQWryt1kPQSM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jan 2022 16:37:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0CD24402B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 16:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643387843; x=1674923843;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QK7M8L240Go4ikgmU43lTN7hTcl5zykolWAin05kGRA=;
 b=YXxeTZi0e8Ql/+C3u6vqhyac7+ED/68q9l1RDUlM1p2Kr4njpcC+H5dl
 hizSITnxNW21yJ/Wssmm41x1qtcL4tGMrBwG4YR80NcouMrSfz2jIDxP+
 CaR7ZfTBpcaYqD4RE0GA7Wrgwv8M7KuIg9NISzX5mtmeV5QMAtKt7jEGj
 qwaMuCG/CBkeTZe5JMSaUdVmWoRZaD0d2h03IP7UknKgtJZq3tGRAhZxx
 nvSBjTJI0FONyDqSan3+TfHQXutcQcsjr/3Pe3xSO3RUaao5HStZAr5Rc
 OvY5hC43HQ283WnR0ts2u7mR7B/rQn+DPxOfbUxza5L5glcAUWbXYfItA A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="245995366"
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; d="scan'208";a="245995366"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 08:37:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; d="scan'208";a="598256377"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga004.fm.intel.com with ESMTP; 28 Jan 2022 08:37:20 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 20SGbImW021280; Fri, 28 Jan 2022 16:37:19 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Alan Brady <alan.brady@intel.com>
Date: Fri, 28 Jan 2022 17:35:38 +0100
Message-Id: <20220128163538.26144-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220128001009.721392-12-alan.brady@intel.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-12-alan.brady@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 11/19] iecm: add start_xmit
 and set_rx_mode
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
Date: Thu, 27 Jan 2022 16:10:01 -0800

> With open and stop done, this continues down the netdev_ops struct to add
> start_xmit and set_rx_mode callbacks. The rest of the data path will be
> added after netdev_ops are done.
> 
> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> ---
>  drivers/net/ethernet/intel/iecm/iecm_lib.c    | 247 ++++++-
>  drivers/net/ethernet/intel/iecm/iecm_txrx.c   | 667 ++++++++++++++++++
>  drivers/net/ethernet/intel/include/iecm.h     |   1 +
>  .../net/ethernet/intel/include/iecm_txrx.h    |  60 ++
>  4 files changed, 970 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iecm/iecm_lib.c b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> index 037a0e06bb7b..003057f48f0c 100644
> --- a/drivers/net/ethernet/intel/iecm/iecm_lib.c
> +++ b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> @@ -141,6 +141,17 @@ struct iecm_vport *iecm_netdev_to_vport(struct net_device *netdev)
>  	return np->vport;
>  }
>  
> +/**
> + * iecm_netdev_to_adapter - get an adapter handle from a netdev
> + * @netdev: network interface device structure
> + */
> +struct iecm_adapter *iecm_netdev_to_adapter(struct net_device *netdev)
> +{
> +	struct iecm_netdev_priv *np = netdev_priv(netdev);
> +
> +	return np->vport->adapter;
> +}
> +
>  /**
>   * iecm_mb_intr_rel_irq - Free the IRQ association with the OS
>   * @adapter: adapter structure
> @@ -417,6 +428,61 @@ iecm_mac_filter *iecm_find_mac_filter(struct iecm_vport *vport,
>  	return NULL;
>  }
>  
> +/**
> + * __iecm_del_mac_filter - Delete MAC filter helper
> + * @vport: main vport struct
> + * @macaddr: address to delete
> + *
> + * Takes mac_filter_list_lock spinlock to set remove field for filter in list.
> + */
> +static struct
> +iecm_mac_filter *__iecm_del_mac_filter(struct iecm_vport *vport,
> +				       const u8 *macaddr)
> +{
> +	struct iecm_mac_filter *f;
> +
> +	spin_lock_bh(&vport->adapter->mac_filter_list_lock);
> +	f = iecm_find_mac_filter(vport, macaddr);
> +	if (f) {
> +		/* If filter was never synced to HW we can just delete it here,
> +		 * otherwise mark for removal.
> +		 */
> +		if (f->add) {
> +			list_del(&f->list);
> +			kfree(f);
> +			f = NULL;
> +		} else {
> +			f->remove = true;
> +		}
> +	}

	if (!f)
		goto unlock;

-1 level.

> +	spin_unlock_bh(&vport->adapter->mac_filter_list_lock);
> +
> +	return f;
> +}
> +
> +/**
> + * iecm_del_mac_filter - Delete a MAC filter from the filter list
> + * @vport: main vport structure
> + * @macaddr: the MAC address
> + *
> + * Removes filter from list and if interface is up, tells hardware about the
> + * removed filter.
> + **/
> +static void iecm_del_mac_filter(struct iecm_vport *vport, const u8 *macaddr)
> +{
> +	struct iecm_mac_filter *f;
> +
> +	if (!macaddr)
> +		return;
> +
> +	f = __iecm_del_mac_filter(vport, macaddr);
> +	if (!f)
> +		return;
> +
> +	if (vport->adapter->state == __IECM_UP)
> +		iecm_add_del_ether_addrs(vport, false, false);
> +}
> +
>  /**
>   * __iecm_add_mac_filter - Add mac filter helper function
>   * @vport: main vport struct
> @@ -1711,6 +1777,134 @@ void iecm_remove(struct pci_dev *pdev)
>  }
>  EXPORT_SYMBOL(iecm_remove);
>  
> +/**
> + * iecm_addr_sync - Callback for dev_(mc|uc)_sync to add address
> + * @netdev: the netdevice
> + * @addr: address to add
> + *
> + * Called by __dev_(mc|uc)_sync when an address needs to be added. We call
> + * __dev_(uc|mc)_sync from .set_rx_mode. Kernel takes addr_list_lock spinlock
> + * meaning we cannot sleep in this context. Due to this, we have to add the
> + * filter and send the virtchnl message asynchronously without waiting for the
> + * response from the other side. We won't know whether or not the operation
> + * actually succeeded until we get the message back.  Returns 0 on success,
> + * negative on failure.
> + */
> +static int iecm_addr_sync(struct net_device *netdev, const u8 *addr)
> +{
> +	struct iecm_vport *vport = iecm_netdev_to_vport(netdev);
> +
> +	if (__iecm_add_mac_filter(vport, addr)) {
> +		if (vport->adapter->state == __IECM_UP) {
> +			set_bit(__IECM_ADD_ETH_REQ, vport->adapter->flags);
> +			iecm_add_del_ether_addrs(vport, true, true);
> +		}
> +		return 0;
> +	}

	if (!add_filter())
		return -ENOMEM;

	if (state != __IECM_UP)
		return 0;

	set_bit(...

-2 (!) levels.

> +
> +	return -ENOMEM;
> +}
> +
> +/**
> + * iecm_addr_unsync - Callback for dev_(mc|uc)_sync to remove address
> + * @netdev: the netdevice
> + * @addr: address to add
> + *
> + * Called by __dev_(mc|uc)_sync when an address needs to be added. We call
> + * __dev_(uc|mc)_sync from .set_rx_mode. Kernel takes addr_list_lock spinlock
> + * meaning we cannot sleep in this context. Due to this we have to delete the
> + * filter and send the virtchnl message asychronously without waiting for the
> + * return from the other side.  We won't know whether or not the operation
> + * actually succeeded until we get the message back. Returns 0 on success,
> + * negative on failure.
> + */
> +static int iecm_addr_unsync(struct net_device *netdev, const u8 *addr)
> +{
> +	struct iecm_vport *vport = iecm_netdev_to_vport(netdev);
> +
> +	/* Under some circumstances, we might receive a request to delete
> +	 * our own device address from our uc list. Because we store the
> +	 * device address in the VSI's MAC/VLAN filter list, we need to ignore
> +	 * such requests and not delete our device address from this list.
> +	 */
> +	if (ether_addr_equal(addr, netdev->dev_addr))
> +		return 0;
> +
> +	if (__iecm_del_mac_filter(vport, addr)) {
> +		if (vport->adapter->state == __IECM_UP) {
> +			set_bit(__IECM_DEL_ETH_REQ, vport->adapter->flags);
> +			iecm_add_del_ether_addrs(vport, false, true);
> +		}
> +	}

Very same here.

> +
> +	return 0;
> +}
> +
> +/**
> + * iecm_set_rx_mode - NDO callback to set the netdev filters
> + * @netdev: network interface device structure
> + *
> + * Stack takes addr_list_lock spinlock before calling our .set_rx_mode.  We
> + * cannot sleep in this context.
> + */
> +static void iecm_set_rx_mode(struct net_device *netdev)
> +{
> +	struct iecm_adapter *adapter = iecm_netdev_to_adapter(netdev);
> +
> +	if (iecm_is_cap_ena(adapter, IECM_OTHER_CAPS, VIRTCHNL2_CAP_MACFILTER)) {
> +		__dev_uc_sync(netdev, iecm_addr_sync, iecm_addr_unsync);
> +		__dev_mc_sync(netdev, iecm_addr_sync, iecm_addr_unsync);
> +	}
> +
> +	if (iecm_is_cap_ena(adapter, IECM_OTHER_CAPS, VIRTCHNL2_CAP_PROMISC)) {
> +		bool changed = false;
> +
> +		/* IFF_PROMISC enables both unicast and multicast promiscuous,
> +		 * while IFF_ALLMULTI only enables multicast such that:
> +		 *
> +		 * promisc  + allmulti		= unicast | multicast
> +		 * promisc  + !allmulti		= unicast | multicast
> +		 * !promisc + allmulti		= multicast
> +		 */
> +		if ((netdev->flags & IFF_PROMISC) &&
> +		    !test_and_set_bit(__IECM_PROMISC_UC,
> +				      adapter->config_data.user_flags)) {
> +			changed = true;
> +			dev_info(&adapter->pdev->dev, "Entering promiscuous mode\n");
> +			if (!test_and_set_bit(__IECM_PROMISC_MC,
> +					      adapter->flags))
> +				dev_info(&adapter->pdev->dev, "Entering multicast promiscuous mode\n");
> +		}
> +		if (!(netdev->flags & IFF_PROMISC) &&
> +		    test_and_clear_bit(__IECM_PROMISC_UC,
> +				       adapter->config_data.user_flags)) {
> +			changed = true;
> +			dev_info(&adapter->pdev->dev, "Leaving promiscuous mode\n");
> +		}
> +		if (netdev->flags & IFF_ALLMULTI &&
> +		    !test_and_set_bit(__IECM_PROMISC_MC,
> +				      adapter->config_data.user_flags)) {
> +			changed = true;
> +			dev_info(&adapter->pdev->dev, "Entering multicast promiscuous mode\n");
> +		}
> +		if (!(netdev->flags & (IFF_ALLMULTI | IFF_PROMISC)) &&
> +		    test_and_clear_bit(__IECM_PROMISC_MC,
> +				       adapter->config_data.user_flags)) {
> +			changed = true;
> +			dev_info(&adapter->pdev->dev, "Leaving multicast promiscuous mode\n");
> +		}
> +
> +		if (changed) {
> +			int err = iecm_set_promiscuous(adapter);
> +
> +			if (err) {
> +				dev_info(&adapter->pdev->dev, "Failed to set promiscuous mode: %d\n",
> +					 err);
> +			}
> +		}
> +	}

	if (!cap_ena())
		return;

-1 level for a big pile of code.

> +}
> +
>  /**
>   * iecm_open - Called when a network interface becomes active
>   * @netdev: network interface device structure
> @@ -1730,6 +1924,49 @@ static int iecm_open(struct net_device *netdev)
>  	return iecm_vport_open(np->vport, true);
>  }
>  
> +/**
> + * iecm_set_mac - NDO callback to set port mac address
> + * @netdev: network interface device structure
> + * @p: pointer to an address structure
> + *
> + * Returns 0 on success, negative on failure
> + **/
> +static int iecm_set_mac(struct net_device *netdev, void *p)
> +{
> +	struct iecm_vport *vport = iecm_netdev_to_vport(netdev);
> +	struct iecm_mac_filter *f;
> +	struct sockaddr *addr = p;
> +
> +	if (!iecm_is_cap_ena(vport->adapter, IECM_OTHER_CAPS,
> +			     VIRTCHNL2_CAP_MACFILTER)) {
> +		dev_info(&vport->adapter->pdev->dev, "Setting MAC address is not supported\n");
> +		return -EOPNOTSUPP;
> +	}
> +
> +	if (!is_valid_ether_addr(addr->sa_data)) {
> +		dev_info(&vport->adapter->pdev->dev, "Invalid MAC address: %pM\n",
> +			 addr->sa_data);
> +		return -EADDRNOTAVAIL;
> +	}
> +
> +	if (ether_addr_equal(netdev->dev_addr, addr->sa_data))
> +		return 0;
> +
> +	/* Delete the current filter */
> +	if (is_valid_ether_addr(vport->default_mac_addr))
> +		iecm_del_mac_filter(vport, vport->default_mac_addr);
> +
> +	/* Add new filter */
> +	f = iecm_add_mac_filter(vport, addr->sa_data);
> +
> +	if (f) {
> +		ether_addr_copy(vport->default_mac_addr, addr->sa_data);
> +		dev_addr_mod(netdev, 0, addr->sa_data, ETH_ALEN);
> +	}
> +
> +	return f ? 0 : -ENOMEM;

	if (!f)
		return -ENOMEM;

	ether_addr(...
	dev_addr(...

	return 0;

Some unneeded complexity here.

> +}
> +
>  void *iecm_alloc_dma_mem(struct iecm_hw *hw, struct iecm_dma_mem *mem, u64 size)
>  {
>  	struct iecm_adapter *adapter = (struct iecm_adapter *)hw->back;
> @@ -1756,10 +1993,10 @@ void iecm_free_dma_mem(struct iecm_hw *hw, struct iecm_dma_mem *mem)
>  static const struct net_device_ops iecm_netdev_ops_splitq = {
>  	.ndo_open = iecm_open,
>  	.ndo_stop = iecm_stop,
> -	.ndo_start_xmit = NULL,
> -	.ndo_set_rx_mode = NULL,
> +	.ndo_start_xmit = iecm_tx_splitq_start,
> +	.ndo_set_rx_mode = iecm_set_rx_mode,
>  	.ndo_validate_addr = eth_validate_addr,
> -	.ndo_set_mac_address = NULL,
> +	.ndo_set_mac_address = iecm_set_mac,
>  	.ndo_change_mtu = NULL,
>  	.ndo_get_stats64 = NULL,
>  	.ndo_fix_features = NULL,
> @@ -1773,9 +2010,9 @@ static const struct net_device_ops iecm_netdev_ops_singleq = {
>  	.ndo_open = iecm_open,
>  	.ndo_stop = iecm_stop,
>  	.ndo_start_xmit = NULL,
> -	.ndo_set_rx_mode = NULL,
> +	.ndo_set_rx_mode = iecm_set_rx_mode,
>  	.ndo_validate_addr = eth_validate_addr,
> -	.ndo_set_mac_address = NULL,
> +	.ndo_set_mac_address = iecm_set_mac,
>  	.ndo_change_mtu = NULL,
>  	.ndo_get_stats64 = NULL,
>  	.ndo_fix_features = NULL,
> diff --git a/drivers/net/ethernet/intel/iecm/iecm_txrx.c b/drivers/net/ethernet/intel/iecm/iecm_txrx.c
> index fb6a61277b00..ef5fe659389b 100644
> --- a/drivers/net/ethernet/intel/iecm/iecm_txrx.c
> +++ b/drivers/net/ethernet/intel/iecm/iecm_txrx.c
> @@ -1655,6 +1655,673 @@ int iecm_vport_queues_alloc(struct iecm_vport *vport)
>  	return err;
>  }
>  
> +/**
> + * iecm_tx_splitq_build_ctb - populate command tag and size for queue
> + * based scheduling descriptors
> + * @desc: descriptor to populate
> + * @parms: pointer to tx params struct
> + * @td_cmd: command to be filled in desc
> + * @size: size of buffer
> + */
> +void
> +iecm_tx_splitq_build_ctb(union iecm_tx_flex_desc *desc,
> +			 struct iecm_tx_splitq_params *parms,
> +			 u16 td_cmd, u16 size)
> +{
> +	desc->q.qw1.cmd_dtype =
> +		cpu_to_le16(parms->dtype & IECM_FLEX_TXD_QW1_DTYPE_M);
> +	desc->q.qw1.cmd_dtype |=
> +		cpu_to_le16((td_cmd << IECM_FLEX_TXD_QW1_CMD_S) &
> +			    IECM_FLEX_TXD_QW1_CMD_M);
> +	desc->q.qw1.buf_size = cpu_to_le16((u16)size);
> +	desc->q.qw1.flex.l2tags.l2tag1 = cpu_to_le16(parms->td_tag);
> +}
> +
> +/**
> + * iecm_tx_splitq_build_flow_desc - populate command tag and size for flow
> + * scheduling descriptors
> + * @desc: descriptor to populate
> + * @parms: pointer to tx params struct
> + * @td_cmd: command to be filled in desc
> + * @size: size of buffer
> + */
> +void
> +iecm_tx_splitq_build_flow_desc(union iecm_tx_flex_desc *desc,
> +			       struct iecm_tx_splitq_params *parms,
> +			       u16 td_cmd, u16 size)
> +{
> +	desc->flow.qw1.cmd_dtype = (u16)parms->dtype | td_cmd;
> +	desc->flow.qw1.rxr_bufsize = cpu_to_le16((u16)size);
> +	desc->flow.qw1.compl_tag = cpu_to_le16(parms->compl_tag);
> +}
> +
> +/**
> + * iecm_tx_buf_avail - Stop Tx if no enough book keeping buffers are available
> + * @tx_q: the queue to be checked
> + *
> + * Return -EBUSY if Tx queue stop is needed, else 0
> + */
> +static int iecm_tx_buf_avail(struct iecm_queue *tx_q)
> +{
> +	/* If We have less than a quarter of the total desc_count left
> +	 * stop the queue to wait for more completions
> +	 */
> +	if (unlikely(IECM_TX_BUF_UNUSED(tx_q) < tx_q->desc_count >> 2)) {
> +		netif_stop_subqueue(tx_q->vport->netdev, tx_q->idx);
> +		return -EBUSY;
> +	}
> +	return 0;

	if (likely(...))
		return 0;

What can be easier than this.
I also suggest to

#define iecm_tx_buf_threshold(q)	((q)->desc_count >> 2)

in order to be able to easily find and change this in the future.

> +}
> +
> +/**
> + * __iecm_tx_maybe_stop - 2nd level check for Tx stop conditions
> + * @tx_q: the queue to be checked
> + * @size: the size buffer we want to assure is available
> + *
> + * Returns -EBUSY if a stop is needed, else 0
> + */
> +static int
> +__iecm_tx_maybe_stop(struct iecm_queue *tx_q, unsigned int size)
> +{
> +	netif_stop_subqueue(tx_q->vport->netdev, tx_q->idx);
> +
> +	/* Memory barrier before checking head and tail */
> +	smp_mb();
> +
> +	/* Check again in a case another CPU has just made room available. */
> +	if (likely(IECM_DESC_UNUSED(tx_q) < size))
> +		return -EBUSY;
> +
> +	/* A reprieve! - use start_subqueue because it doesn't call schedule */
> +	netif_start_subqueue(tx_q->vport->netdev, tx_q->idx);
> +
> +	return 0;
> +}
> +
> +/**
> + * iecm_tx_maybe_stop - 1st level check for Tx stop conditions
> + * @tx_q: the queue to be checked
> + * @size: number of descriptors we want to assure is available
> + *
> + * Returns 0 if stop is not needed
> + */
> +int iecm_tx_maybe_stop(struct iecm_queue *tx_q, unsigned int size)
> +{
> +	if (likely(IECM_DESC_UNUSED(tx_q) >= size))
> +		return 0;
> +
> +	return __iecm_tx_maybe_stop(tx_q, size);
> +}
> +
> +/**
> + * iecm_tx_buf_hw_update - Store the new tail value
> + * @tx_q: queue to bump
> + * @val: new tail index
> + * @xmit_more: more skb's pending
> + *
> + * The naming here is special in that 'hw' signals that this function is about
> + * to do a register write to update our queue status. We know this can only
> + * mean tail here as HW should be owning head for TX.
> + */
> +void iecm_tx_buf_hw_update(struct iecm_queue *tx_q, u32 val,
> +			   bool xmit_more)
> +{
> +	struct netdev_queue *nq;
> +
> +	nq = netdev_get_tx_queue(tx_q->vport->netdev, tx_q->idx);
> +	tx_q->next_to_use = val;
> +
> +	iecm_tx_maybe_stop(tx_q, IECM_TX_DESC_NEEDED);
> +
> +	/* Force memory writes to complete before letting h/w
> +	 * know there are new descriptors to fetch.  (Only
> +	 * applicable for weak-ordered memory model archs,
> +	 * such as IA-64).
> +	 */
> +	wmb();
> +
> +	/* notify HW of packet */
> +	if (netif_xmit_stopped(nq) || !xmit_more)
> +		writel(val, tx_q->tail);
> +}
> +
> +/**
> + * iecm_size_to_txd_count - Get the number of descriptors needed for Tx
> + * @size: transmit request size in bytes
> + *
> + * Due to hardware alignment restrictions (4K alignment), we need to assume
> + * that we can have no more than 12K of data per descriptor, even though each
> + * descriptor can take up to 16K - 1 bytes of aligned memory.
> + */
> +unsigned int iecm_size_to_txd_count(unsigned int size)

It seems to be used only in one file. Static then.
If it will be used in other files later, I'd suggest to make it
non-static only then, but in general this should be a static inline
as it's small and simple, but is being called from very
perf-critical paths. Uninlining two math operations is a huge
overkill.

> +{
> +	return (size / 12288) + IECM_TX_DESCS_FOR_SKB_DATA_PTR;

0. Braces around `size / 12288` are not needed.

1. skb_headlen(skb) can hypothetically be == 0, as well as some
skb_frag_size(frag). In this case, the function will return 1,
although we don't need a descriptor for no data.
It is a rough mistake, it didn't harm only because zero-sized skb
segs are not common (zero-sized heads are getting more used tho).

So,

	return size ? size / 12288 + overhead : 0;

2. The logics here is very obscure.
At first, I thought that it's a mistake to naturally-divide as
we want it to be rounded-up. But then I realized that this
FOR_SKB_DATA_PTR means 1 initial descriptor, thus rounding down.
So, with pt. 1 in mind, it would look like

	return DIV_ROUND_UP(size, 12288);

For size == 0 it returns 0,
for size == 1 -> 1,
for 12288 -> 1,
for 12289 -> 2,
...

Oh wait. Your original function returns 1 for 12287 and 2 for 12288.
Is that intentional? Does one descriptor fit 12287 or 12288 bytes?
If 12287, then you should do DIV_ROUND_UP(size, 12287).
If 12288, then use the code 10 lines above, and then it's a mistake
in your code which returns 2 desc for 12288.

If I got the meaning of FOR_SKB_DATA_PTR wrong, then please explain.
For now it looks like it's not a really fitting name, it sounds like
it defines the overhead for one skb, not each fragment (and you call
this function for each).

3. Please define 12288 somewhere and move the comment there. I also
highly recommend to define it as

ALIGN_DOWN(SZ_16K - 1, SZ_4K)

This explicitly tells the reader that:
 - a descriptor can take up to 16K - 1;
 - we have the requirement of aligning everything to 4K;
 - as 16K doesn't fit into (16K - 1) boundary, we align it down.

With this construction, I could get it even with no commentary, but
for now 12288 looks like something magic or just random.
Version from e1000 with mul byt 85 and shift by 20 looks even more
cryptic. And 32-bit division on any 32-bit arch is atomic and fast.

I've just found that it's actually defined as
IECM_TX_MAX_DESC_DATA_ALIGNED (open-coded instead of ALIGN_DOWN()).
Please do it a make-up and use here instead of open-coding again and
again.

With all those taken into account, this code looks optimal to me
(keep in mind that this should be moved to a header file):

/*
 * Comment about hardware reqs here
 */
#define IECM_TX_MAX_DESC_DATA_ALIGNED	ALIGN_DOWN(SZ_16K - 1, SZ_4K)

...

static inline u32 iecm_size_to_txd_count(u32 size)
{
	return DIV_ROUND_UP(size, IECM_TX_MAX_DESC_DATA_ALIGNED);
}

If something changes in the hardware, you'd only need to adjust the
IECM_TX_MAX_BUFFER_LEN and the comment above it, and that's all.

Summarizing, it seems like this hasn't been tested on corner cases,
e.g. with skb which has its headlen or one of the frag's len 0, 1,
12287, 12288 and 12289, maybe even hasn't been tested with some
frag (or head) larger than 12288 at all (usually it's no larger
than PAGE_SIZE, i.e. SZ_4K on x86).
You can craft an arbitrary packet using raw sockets or write a
simple self-test in the iecm or idpf module which will create a
new skb with your own params right in the kernel (your module)
and send it to the wire.

> +}
> +
> +/**
> + * iecm_tx_desc_count_required - calculate number of Tx descriptors needed
> + * @skb: send buffer
> + *
> + * Returns number of data descriptors needed for this skb.
> + */
> +unsigned int iecm_tx_desc_count_required(struct sk_buff *skb)

You only read the skb fields and ptrs, it should be const.

> +{
> +	const skb_frag_t *frag = &skb_shinfo(skb)->frags[0];
> +	unsigned int nr_frags = skb_shinfo(skb)->nr_frags;
> +	unsigned int count = 0, size = skb_headlen(skb);
> +
> +	for (;;) {
> +		count += iecm_size_to_txd_count(size);
> +
> +		if (!nr_frags--)
> +			break;
> +
> +		size = skb_frag_size(frag++);
> +	}
> +
> +	return count;
> +}

	const skb_frag_t *frags = skb_shinfo(skb)->frags;
	u32 i, count = 0;

	for (i = 0; i = skb_shinfo(skb)->nr_frags; i++)
		count += iecm_size_to_txd_count(skb_frag_size(frags + i));

	return count + iecm_size_to_txd_count(skb_headlen(skb));

Two times smaller, two times more readable and I bet the object code
will be more optimized.

> +
> +/**
> + * iecm_tx_splitq_map - Build the Tx flex descriptor
> + * @tx_q: queue to send buffer on
> + * @parms: pointer to splitq params struct
> + * @first: first buffer info buffer to use
> + *
> + * This function loops over the skb data pointed to by *first
> + * and gets a physical address for each memory location and programs
> + * it and the length into the transmit flex descriptor.
> + */
> +static void
> +iecm_tx_splitq_map(struct iecm_queue *tx_q,
> +		   struct iecm_tx_splitq_params *parms,
> +		   struct iecm_tx_buf *first)
> +{
> +	union iecm_tx_flex_desc *tx_desc;
> +	unsigned int data_len, size;
> +	struct iecm_tx_buf *tx_buf;
> +	u16 i = tx_q->next_to_use;
> +	struct netdev_queue *nq;
> +	struct sk_buff *skb;
> +	skb_frag_t *frag;
> +	u16 td_cmd = 0;
> +	dma_addr_t dma;
> +
> +	skb = first->skb;
> +
> +	td_cmd = parms->offload.td_cmd;
> +	parms->compl_tag = tx_q->tx_buf_key;
> +
> +	data_len = skb->data_len;
> +	size = skb_headlen(skb);
> +
> +	tx_desc = IECM_FLEX_TX_DESC(tx_q, i);
> +
> +	dma = dma_map_single(tx_q->dev, skb->data, size, DMA_TO_DEVICE);
> +
> +	tx_buf = first;
> +
> +	for (frag = &skb_shinfo(skb)->frags[0];; frag++) {
> +		unsigned int max_data = IECM_TX_MAX_DESC_DATA_ALIGNED;
> +
> +		if (dma_mapping_error(tx_q->dev, dma))
> +			goto dma_error;
> +
> +		/* record length, and DMA address */
> +		dma_unmap_len_set(tx_buf, len, size);
> +		dma_unmap_addr_set(tx_buf, dma, dma);
> +
> +		/* align size to end of page */
> +		max_data += -dma & (IECM_TX_MAX_READ_REQ_SIZE - 1);

Super-cryptic. What is going on here?
dma_addr_t is unsigned and its bit-width can vary a lot depending
on the platform, playing with signedness is playing with fire here.
max_data is unsigned.
My test program gave me:

dma:         1
-dma & 4095: 4095
max_data:    16383

max_data is initially set to 12288 which is claimed to be the
maximum Tx desc buffer size. And now you increase it to SZ_16K - 1.
Either your comment above is incorrect, or this logics is.

dma:         4096
-dma & 4095: 0
max_data:    12288

Ok, maybe I got it, this cryptic -dma & 4095 is basically the
distance from the address to the next HW boundary:

rem = 4096 - dma & (4096 - 1);

While your code looks more compact, it at least needs some comments
on why you do that.
Still no idea what max_data is. For both dma == 0 and dma == 4096 it
equals to 12288.

> +
> +		/* buf_addr is in same location for both desc types */
> +		tx_desc->q.buf_addr = cpu_to_le64(dma);
> +
> +		/* account for data chunks larger than the hardware
> +		 * can handle
> +		 */
> +		while (unlikely(size > IECM_TX_MAX_DESC_DATA)) {

In the function which counts the number of descs needed you check
head and frag length against 12288, and here's a check against
16383.
I either don't get something basic, or this is another mistake.

> +			parms->splitq_build_ctb(tx_desc, parms, td_cmd,
> +						max_data);

And now you add indirect calls to hotpath, which on x86_64 is
expensive as hell with retpolines.

I checked your previous patch where you set this callback, and
there's absolutely no reason for introducing a callback here.
It can be set to one of two functions already defined in the same
module. So basically it's just a boolean 0/1 or direct bitmap test.
At least it could be declared with INDIRECT_CALLABLE_DECLARE() +
INDIRECT_CALL_2() to convert it into if-else on x86 with retpolines.
But indirect call wrappers are made in mind that the actual callback
might be something different from 1st or 2nd function, and in this
case it can not.
So it's a pure if-else put into a static inline for convenience.

> +
> +			tx_desc++;
> +			i++;
> +
> +			if (i == tx_q->desc_count) {
> +				tx_desc = IECM_FLEX_TX_DESC(tx_q, 0);
> +				i = 0;
> +			}
> +
> +			dma += max_data;
> +			size -= max_data;
> +
> +			max_data = IECM_TX_MAX_DESC_DATA_ALIGNED;
> +			/* buf_addr is in same location for both desc types */
> +			tx_desc->q.buf_addr = cpu_to_le64(dma);
> +		}
> +
> +		if (likely(!data_len))

GSO packets can have up to 16 frags (re. that this driver doesn't
support fraglists) and is turned on by default. Driver advertises
support for both TSO and UDP L4 GSO, which means that such skbs
will be a relatively common thing.
And each of them will hit the unlikely condition branch 15 times.
Like one indirect call per each segment was not enough to kill
the performance.

> +			break;
> +		parms->splitq_build_ctb(tx_desc, parms, td_cmd, size);
> +		tx_desc++;
> +		i++;
> +
> +		if (i == tx_q->desc_count) {
> +			tx_desc = IECM_FLEX_TX_DESC(tx_q, 0);
> +			i = 0;
> +		}
> +
> +		size = skb_frag_size(frag);
> +		data_len -= size;
> +
> +		dma = skb_frag_dma_map(tx_q->dev, frag, 0, size,
> +				       DMA_TO_DEVICE);
> +
> +		tx_buf->compl_tag = parms->compl_tag;
> +		tx_buf = &tx_q->tx_buf[i];
> +	}
> +
> +	/* record bytecount for BQL */
> +	nq = netdev_get_tx_queue(tx_q->vport->netdev, tx_q->idx);
> +	netdev_tx_sent_queue(nq, first->bytecount);
> +
> +	/* record SW timestamp if HW timestamp is not available */
> +	skb_tx_timestamp(first->skb);
> +
> +	/* write last descriptor with RS and EOP bits */
> +	td_cmd |= parms->eop_cmd;
> +	parms->splitq_build_ctb(tx_desc, parms, td_cmd, size);
> +	i++;
> +	if (i == tx_q->desc_count)
> +		i = 0;
> +
> +	/* set next_to_watch value indicating a packet is present */
> +	first->next_to_watch = tx_desc;
> +	tx_buf->compl_tag = parms->compl_tag++;
> +
> +	iecm_tx_buf_hw_update(tx_q, i, netdev_xmit_more());
> +
> +	/* Update TXQ Completion Tag key for next buffer */
> +	tx_q->tx_buf_key = parms->compl_tag;
> +
> +	return;
> +
> +dma_error:
> +	/* clear dma mappings for failed tx_buf map */
> +	for (;;) {
> +		tx_buf = &tx_q->tx_buf[i];
> +		iecm_tx_buf_rel(tx_q, tx_buf);
> +		if (tx_buf == first)
> +			break;
> +		if (i == 0)
> +			i = tx_q->desc_count;
> +		i--;
> +	}
> +
> +	tx_q->next_to_use = i;
> +}
> +
> +/**
> + * iecm_tx_prepare_vlan_flags - prepare generic vlan tagging for HW
> + * @tx_q: txq to find the tag location
> + * @first: pointer to struct iecm_tx_buf
> + * @skb: skb being xmitted
> + */
> +void iecm_tx_prepare_vlan_flags(struct iecm_queue *tx_q,
> +				struct iecm_tx_buf *first,
> +				struct sk_buff *skb)
> +{
> +	struct iecm_vport *vport = tx_q->vport;
> +	u32 tx_flags = 0;
> +
> +	/* Stack sets protocol to 8021q when offload is disabled so SW can take
> +	 * any necessary steps to handle it.  We don't need to do anything,
> +	 * just set protocol to encapsulated type.
> +	 */
> +	if (skb->protocol == htons(ETH_P_8021Q) &&
> +	    !iecm_is_feature_ena(vport, NETIF_F_HW_VLAN_CTAG_RX)) {
> +		skb->protocol = vlan_get_protocol(skb);
> +		return;
> +	}
> +
> +	if (!skb_vlan_tag_present(skb))
> +		return;
> +
> +	tx_flags |= skb_vlan_tag_get(skb) << IECM_TX_FLAGS_VLAN_SHIFT;
> +	tx_flags |= IECM_TX_FLAGS_VLAN_TAG;
> +	if (test_bit(__IECM_Q_VLAN_TAG_LOC_L2TAG2, tx_q->flags))
> +		tx_flags |= IECM_TX_FLAGS_HW_OUTER_SINGLE_VLAN;
> +	else if (test_bit(__IECM_Q_VLAN_TAG_LOC_L2TAG1, tx_q->flags))
> +		tx_flags |= IECM_TX_FLAGS_HW_VLAN;
> +	else
> +		dev_dbg(&vport->adapter->pdev->dev, "Unsupported Tx VLAN tag location requested\n");
> +
> +	first->tx_flags |= tx_flags;
> +}
> +
> +/**
> + * iecm_tso - computes mss and TSO length to prepare for TSO
> + * @first: pointer to struct iecm_tx_buf
> + * @off: pointer to struct that holds offload parameters
> + *
> + * Returns error (negative) if TSO doesn't apply to the given skb,
> + * 0 otherwise.
> + *
> + * Note: this function can be used in the splitq and singleq paths
> + */
> +int iecm_tso(struct iecm_tx_buf *first, struct iecm_tx_offload_params *off)
> +{
> +	struct sk_buff *skb = first->skb;
> +	union {
> +		struct iphdr *v4;
> +		struct ipv6hdr *v6;
> +		unsigned char *hdr;
> +	} ip;
> +	union {
> +		struct tcphdr *tcp;
> +		struct udphdr *udp;
> +		unsigned char *hdr;
> +	} l4;
> +	u32 paylen, l4_start;
> +	int err;
> +
> +	if (!skb_is_gso(skb))
> +		return 0;
> +
> +	err = skb_cow_head(skb, 0);
> +	if (err < 0)
> +		return err;
> +
> +	ip.hdr = skb_network_header(skb);
> +	l4.hdr = skb_transport_header(skb);
> +
> +	/* initialize outer IP header fields */
> +	if (ip.v4->version == 4) {
> +		ip.v4->tot_len = 0;
> +		ip.v4->check = 0;
> +	} else if (ip.v4->version == 6) {
> +		ip.v6->payload_len = 0;
> +	} else {
> +		return -EINVAL;
> +	}
> +
> +	l4_start = skb_transport_offset(skb);
> +
> +	/* remove payload length from checksum */
> +	paylen = skb->len - l4_start;
> +
> +	switch (skb_shinfo(skb)->gso_type) {
> +	case SKB_GSO_TCPV4:
> +	case SKB_GSO_TCPV6:
> +		csum_replace_by_diff(&l4.tcp->check,
> +				     (__force __wsum)htonl(paylen));
> +
> +		/* compute length of segmentation header */
> +		off->tso_hdr_len = tcp_hdrlen(skb) + l4_start;
> +		break;
> +	case SKB_GSO_UDP_L4:
> +		csum_replace_by_diff(&l4.udp->check,
> +				     (__force __wsum)htonl(paylen));
> +		/* compute length of segmentation header */
> +		off->tso_hdr_len = sizeof(struct udphdr) + l4_start;
> +		l4.udp->len =
> +			htons(skb_shinfo(skb)->gso_size +
> +			      sizeof(struct udphdr));
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	off->tso_len = skb->len - off->tso_hdr_len;
> +	off->mss = skb_shinfo(skb)->gso_size;
> +
> +	/* update gso_segs and bytecount */
> +	first->gso_segs = skb_shinfo(skb)->gso_segs;
> +	first->bytecount = qdisc_skb_cb(skb)->pkt_len;
> +
> +	first->tx_flags |= IECM_TX_FLAGS_TSO;
> +
> +	return 0;
> +}
> +
> +/**
> + * __iecm_chk_linearize - Check skb is not using too many buffers
> + * @skb: send buffer
> + * @max_bufs: maximum number of buffers
> + *
> + * For TSO we need to count the TSO header and segment payload separately.  As
> + * such we need to check cases where we have max_bufs-1 fragments or more as we
> + * can potentially require max_bufs+1 DMA transactions, 1 for the TSO header, 1
> + * for the segment payload in the first descriptor, and another max_buf-1 for
> + * the fragments.
> + */
> +static bool __iecm_chk_linearize(struct sk_buff *skb, unsigned int max_bufs)
> +{
> +	const skb_frag_t *frag, *stale;
> +	int nr_frags, sum;
> +
> +	/* no need to check if number of frags is less than max_bufs - 1 */
> +	nr_frags = skb_shinfo(skb)->nr_frags;
> +	if (nr_frags < (max_bufs - 1))
> +		return false;
> +
> +	/* We need to walk through the list and validate that each group
> +	 * of max_bufs-2 fragments totals at least gso_size.
> +	 */
> +	nr_frags -= max_bufs - 2;
> +	frag = &skb_shinfo(skb)->frags[0];
> +
> +	/* Initialize size to the negative value of gso_size minus 1.  We use
> +	 * this as the worst case scenario in which the frag ahead of us only
> +	 * provides one byte which is why we are limited to max_bufs-2
> +	 * descriptors for a single transmit as the header and previous
> +	 * fragment are already consuming 2 descriptors.
> +	 */
> +	sum = 1 - skb_shinfo(skb)->gso_size;
> +
> +	/* Add size of frags 0 through 4 to create our initial sum */
> +	sum += skb_frag_size(frag++);
> +	sum += skb_frag_size(frag++);
> +	sum += skb_frag_size(frag++);
> +	sum += skb_frag_size(frag++);
> +	sum += skb_frag_size(frag++);

There can be junk values if shinfo->nr_frags < 5. It's not a rare
case to have a small GSO packet.
It should check for shinfo->nr_frags first.

> +
> +	/* Walk through fragments adding latest fragment, testing it, and
> +	 * then removing stale fragments from the sum.
> +	 */
> +	for (stale = &skb_shinfo(skb)->frags[0];; stale++) {
> +		int stale_size = skb_frag_size(stale);
> +
> +		sum += skb_frag_size(frag++);
> +
> +		/* The stale fragment may present us with a smaller
> +		 * descriptor than the actual fragment size. To account
> +		 * for that we need to remove all the data on the front and
> +		 * figure out what the remainder would be in the last
> +		 * descriptor associated with the fragment.
> +		 */
> +		if (stale_size > IECM_TX_MAX_DESC_DATA) {
> +			int align_pad = -(skb_frag_off(stale)) &
> +					(IECM_TX_MAX_READ_REQ_SIZE - 1);

Open-coded stuff again. Please define this operation once and use
the definition.

> +
> +			sum -= align_pad;
> +			stale_size -= align_pad;
> +
> +			do {
> +				sum -= IECM_TX_MAX_DESC_DATA_ALIGNED;
> +				stale_size -= IECM_TX_MAX_DESC_DATA_ALIGNED;
> +			} while (stale_size > IECM_TX_MAX_DESC_DATA);
> +		}
> +
> +		/* if sum is negative we failed to make sufficient progress */
> +		if (sum < 0)
> +			return true;
> +
> +		if (!nr_frags--)
> +			break;
> +
> +		sum -= stale_size;
> +	}
> +
> +	return false;
> +}
> +
> +/**
> + * iecm_chk_linearize - Check if skb exceeds max descriptors per packet
> + * @skb: send buffer
> + * @max_bufs: maximum scatter gather buffers for single packet
> + * @count: number of buffers this packet needs
> + *
> + * Make sure we don't exceed maximum scatter gather buffers for a single
> + * packet. We have to do some special checking around the boundary (max_bufs-1)
> + * if TSO is on since we need count the TSO header and payload separately.
> + * E.g.: a packet with 7 fragments can require 9 DMA transactions; 1 for TSO
> + * header, 1 for segment payload, and then 7 for the fragments.
> + */
> +bool iecm_chk_linearize(struct sk_buff *skb, unsigned int max_bufs,
> +			unsigned int count)
> +{
> +	if (likely(count < max_bufs))
> +		return false;
> +	if (skb_is_gso(skb))
> +		return __iecm_chk_linearize(skb, max_bufs);
> +
> +	return count != max_bufs;
> +}
> +
> +/**
> + * iecm_tx_splitq_frame - Sends buffer on Tx ring using flex descriptors
> + * @skb: send buffer
> + * @tx_q: queue to send buffer on
> + *
> + * Returns NETDEV_TX_OK if sent, else an error code
> + */
> +static netdev_tx_t
> +iecm_tx_splitq_frame(struct sk_buff *skb, struct iecm_queue *tx_q)
> +{
> +	struct iecm_tx_splitq_params tx_parms = {
> +		NULL, (enum iecm_tx_desc_dtype_value)0, 0, {0}, {0}
> +	};
> +	struct iecm_tx_buf *first;
> +	unsigned int count;
> +
> +	count = iecm_tx_desc_count_required(skb);
> +	if (iecm_chk_linearize(skb, tx_q->tx_max_bufs, count)) {
> +		if (__skb_linearize(skb)) {
> +			dev_kfree_skb_any(skb);
> +			return NETDEV_TX_OK;
> +		}
> +		count = iecm_size_to_txd_count(skb->len);
> +		tx_q->vport->port_stats.tx_linearize++;

Why is this counter not protected with u64_stats?
Also, please use u64_stats_t type for statistics. It provides
tearing protection for 64-bit plaforms. Using plain u64 is
discouraged.

> +	}
> +
> +	if (iecm_tx_maybe_stop(tx_q, count + IECM_TX_DESCS_PER_CACHE_LINE +
> +			       IECM_TX_DESCS_FOR_CTX)) {
> +		return NETDEV_TX_BUSY;
> +	}
> +
> +	/* Also check for available book keeping buffers */
> +	if (iecm_tx_buf_avail(tx_q))
> +		return NETDEV_TX_BUSY;
> +
> +	/* record the location of the first descriptor for this packet */
> +	first = &tx_q->tx_buf[tx_q->next_to_use];
> +	first->skb = skb;
> +	first->bytecount = max_t(unsigned int, skb->len, ETH_ZLEN);
> +	first->gso_segs = 1;
> +	first->tx_flags = 0;
> +
> +	iecm_tx_prepare_vlan_flags(tx_q, first, skb);
> +
> +	if (iecm_tso(first, &tx_parms.offload) < 0) {
> +		/* If tso returns an error, drop the packet */
> +		dev_kfree_skb_any(skb);
> +		return NETDEV_TX_OK;
> +	}
> +
> +	if (first->tx_flags & IECM_TX_FLAGS_TSO) {
> +		/* If tso is needed, set up context desc */
> +		union iecm_flex_tx_ctx_desc *ctx_desc;
> +		int i = tx_q->next_to_use;
> +
> +		/* grab the next descriptor */
> +		ctx_desc = IECM_FLEX_TX_CTX_DESC(tx_q, i);
> +		i++;
> +		tx_q->next_to_use = (i < tx_q->desc_count) ? i : 0;
> +
> +		ctx_desc->tso.qw1.cmd_dtype =
> +				cpu_to_le16(IECM_TX_DESC_DTYPE_FLEX_TSO_CTX |
> +					    IECM_TX_FLEX_CTX_DESC_CMD_TSO);
> +		ctx_desc->tso.qw0.flex_tlen =
> +				cpu_to_le32(tx_parms.offload.tso_len &
> +					    IECM_TXD_FLEX_CTX_TLEN_M);
> +		ctx_desc->tso.qw0.mss_rt =
> +				cpu_to_le16(tx_parms.offload.mss &
> +					    IECM_TXD_FLEX_CTX_MSS_RT_M);
> +		ctx_desc->tso.qw0.hdr_len = tx_parms.offload.tso_hdr_len;
> +
> +		u64_stats_update_begin(&tx_q->stats_sync);
> +		tx_q->q_stats.tx.lso_pkts++;
> +		u64_stats_update_end(&tx_q->stats_sync);

And this is protected...

> +	}
> +
> +	if (test_bit(__IECM_Q_FLOW_SCH_EN, tx_q->flags)) {
> +		tx_parms.dtype = IECM_TX_DESC_DTYPE_FLEX_FLOW_SCHE;
> +		tx_parms.splitq_build_ctb = iecm_tx_splitq_build_flow_desc;

Here's what I was talking about. There's absolutely no need to
create indirect call overhead just because of one if-else.
Just replace this callback with `u8 flow : 1;` and assign 0 or 1
here in this function. Use a static inline to call the appropriate
function depending on the value of `flow`.

> +		tx_parms.eop_cmd =
> +			IECM_TXD_FLEX_FLOW_CMD_EOP | IECM_TXD_FLEX_FLOW_CMD_RE;
> +
> +		if (skb->ip_summed == CHECKSUM_PARTIAL)
> +			tx_parms.offload.td_cmd |= IECM_TXD_FLEX_FLOW_CMD_CS_EN;
> +
> +	} else {
> +		tx_parms.dtype = IECM_TX_DESC_DTYPE_FLEX_L2TAG1_L2TAG2;
> +		tx_parms.splitq_build_ctb = iecm_tx_splitq_build_ctb;
> +		tx_parms.eop_cmd = IECM_TXD_LAST_DESC_CMD;
> +
> +		if (skb->ip_summed == CHECKSUM_PARTIAL)
> +			tx_parms.offload.td_cmd |= IECM_TX_FLEX_DESC_CMD_CS_EN;
> +
> +		/* VLAN Offload can only be used with queue based scheduling */
> +		if (first->tx_flags & IECM_TX_FLAGS_VLAN_TAG) {
> +			tx_parms.offload.td_cmd |= (u64)IECM_TX_FLEX_DESC_CMD_IL2TAG1;
> +			tx_parms.td_tag = (first->tx_flags & IECM_TX_FLAGS_VLAN_MASK) >>
> +					  IECM_TX_FLAGS_VLAN_SHIFT;
> +		}
> +	}
> +
> +	iecm_tx_splitq_map(tx_q, &tx_parms, first);
> +
> +	return NETDEV_TX_OK;
> +}
> +
> +/**
> + * iecm_tx_splitq_start - Selects the right Tx queue to send buffer
> + * @skb: send buffer
> + * @netdev: network interface device structure
> + *
> + * Returns NETDEV_TX_OK if sent, else an error code
> + */
> +netdev_tx_t iecm_tx_splitq_start(struct sk_buff *skb,
> +				 struct net_device *netdev)
> +{
> +	struct iecm_vport *vport = iecm_netdev_to_vport(netdev);
> +	struct iecm_queue *tx_q;
> +
> +	if (skb->queue_mapping >= vport->num_txq)
> +		return -EINVAL;
> +
> +	tx_q = vport->txqs[skb->queue_mapping];
> +
> +	/* hardware can't handle really short frames, hardware padding works
> +	 * beyond this point
> +	 */
> +	if (skb_put_padto(skb, IECM_TX_MIN_LEN))
> +		return NETDEV_TX_OK;
> +
> +	return iecm_tx_splitq_frame(skb, tx_q);
> +}
> +
>  /**
>   * iecm_vport_intr_clean_queues - MSIX mode Interrupt Handler
>   * @irq: interrupt number
> diff --git a/drivers/net/ethernet/intel/include/iecm.h b/drivers/net/ethernet/intel/include/iecm.h
> index 4304256f7010..f6f9884c10c2 100644
> --- a/drivers/net/ethernet/intel/include/iecm.h
> +++ b/drivers/net/ethernet/intel/include/iecm.h
> @@ -717,6 +717,7 @@ int iecm_send_alloc_vectors_msg(struct iecm_adapter *adapter, u16 num_vectors);
>  int iecm_vport_params_buf_alloc(struct iecm_adapter *adapter);
>  void iecm_vport_params_buf_rel(struct iecm_adapter *adapter);
>  struct iecm_vport *iecm_netdev_to_vport(struct net_device *netdev);
> +struct iecm_adapter *iecm_netdev_to_adapter(struct net_device *netdev);
>  int iecm_send_get_stats_msg(struct iecm_vport *vport);
>  int iecm_get_vec_ids(struct iecm_adapter *adapter,
>  		     u16 *vecids, int num_vecids,
> diff --git a/drivers/net/ethernet/intel/include/iecm_txrx.h b/drivers/net/ethernet/intel/include/iecm_txrx.h
> index 5e29148938fb..26e480343876 100644
> --- a/drivers/net/ethernet/intel/include/iecm_txrx.h
> +++ b/drivers/net/ethernet/intel/include/iecm_txrx.h
> @@ -115,6 +115,11 @@
>  
>  #define MAKEMASK(m, s)	((m) << (s))
>  
> +union iecm_tx_flex_desc {
> +	struct iecm_flex_tx_desc q; /* queue based scheduling */
> +	struct iecm_flex_tx_sched_desc flow; /* flow based scheduling */
> +};
> +
>  struct iecm_tx_buf {
>  	struct hlist_node hlist;
>  	void *next_to_watch;
> @@ -145,6 +150,37 @@ struct iecm_buf_lifo {
>  	struct iecm_tx_buf **bufs;
>  };
>  
> +struct iecm_tx_offload_params {
> +	u16 td_cmd;	/* command field to be inserted into descriptor */
> +	u32 tso_len;	/* total length of payload to segment */
> +	u16 mss;
> +	u8 tso_hdr_len;	/* length of headers to be duplicated */
> +
> +	/* Flow scheduling offload timestamp, formatting as hw expects it */
> +	/* timestamp = bits[0:22], overflow = bit[23] */
> +	u8 desc_ts[3];
> +
> +	/* For legacy offloads */
> +	u32 hdr_offsets;
> +};
> +
> +struct iecm_tx_splitq_params {
> +	/* Descriptor build function pointer */
> +	void (*splitq_build_ctb)(union iecm_tx_flex_desc *desc,
> +				 struct iecm_tx_splitq_params *params,
> +				 u16 td_cmd, u16 size);

	^^^^^^^^^^^^^^^^^^^^^^^^
	This one.

> +
> +	/* General descriptor info */
> +	enum iecm_tx_desc_dtype_value dtype;
> +	u16 eop_cmd;
> +	union {
> +		u16 compl_tag; /* only relevant for flow scheduling */
> +		u16 td_tag; /* only relevant for queue scheduling */
> +	};
> +
> +	struct iecm_tx_offload_params offload;
> +};
> +
>  /* Checksum offload bits decoded from the receive descriptor. */
>  struct iecm_rx_csum_decoded {
>  	u8 l3l4p : 1;
> @@ -588,6 +624,12 @@ struct iecm_txq_group {
>  
>  struct iecm_adapter;
>  
> +void iecm_tx_splitq_build_ctb(union iecm_tx_flex_desc *desc,
> +			      struct iecm_tx_splitq_params *parms,
> +			      u16 td_cmd, u16 size);
> +void iecm_tx_splitq_build_flow_desc(union iecm_tx_flex_desc *desc,
> +				    struct iecm_tx_splitq_params *parms,
> +				    u16 td_cmd, u16 size);
>  int iecm_vport_singleq_napi_poll(struct napi_struct *napi, int budget);
>  void iecm_vport_init_num_qs(struct iecm_vport *vport,
>  			    struct virtchnl2_create_vport *vport_msg);
> @@ -614,7 +656,25 @@ int iecm_init_rss(struct iecm_vport *vport);
>  void iecm_deinit_rss(struct iecm_vport *vport);
>  bool iecm_init_rx_buf_hw_alloc(struct iecm_queue *rxq, struct iecm_rx_buf *buf);
>  void iecm_rx_buf_hw_update(struct iecm_queue *rxq, u32 val);
> +void iecm_tx_buf_hw_update(struct iecm_queue *tx_q, u32 val,
> +			   bool xmit_more);
>  void iecm_tx_buf_rel(struct iecm_queue *tx_q, struct iecm_tx_buf *tx_buf);
> +unsigned int iecm_size_to_txd_count(unsigned int size);
> +unsigned int iecm_tx_desc_count_required(struct sk_buff *skb);
> +bool iecm_chk_linearize(struct sk_buff *skb, unsigned int max_bufs,
> +			unsigned int count);
> +int iecm_tx_maybe_stop(struct iecm_queue *tx_q, unsigned int size);
> +void iecm_tx_timeout(struct net_device *netdev,
> +		     unsigned int __always_unused txqueue);
> +netdev_tx_t iecm_tx_splitq_start(struct sk_buff *skb,
> +				 struct net_device *netdev);
> +netdev_tx_t iecm_tx_singleq_start(struct sk_buff *skb,
> +				  struct net_device *netdev);
>  bool iecm_rx_singleq_buf_hw_alloc_all(struct iecm_queue *rxq,
>  				      u16 cleaned_count);
> +int iecm_tso(struct iecm_tx_buf *first, struct iecm_tx_offload_params *off);
> +void iecm_tx_prepare_vlan_flags(struct iecm_queue *tx_q,
> +				struct iecm_tx_buf *first,
> +				struct sk_buff *skb);
> +

At least some of these functions can be made static. Please
double-check.

>  #endif /* !_IECM_TXRX_H_ */
> -- 
> 2.33.0

Thanks,
Al

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

