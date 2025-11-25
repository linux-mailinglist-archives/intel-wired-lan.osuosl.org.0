Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B423C8538E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 14:43:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E273040D7B;
	Tue, 25 Nov 2025 13:43:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DHQwLUGn2UDR; Tue, 25 Nov 2025 13:43:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 112D240D86
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764078186;
	bh=jyCOdxc1ugGUnAQoqGC700HY+jEqPFUJq8RwYz1VP/c=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=s80CvsqvXFG/WN//4bv44YXM92C5WIOk+gdk9N3mdoAgflaD69f99RXiwbdfMGT9q
	 pAhr7Jsc5CcIr7u6BrfEdgNQh2vVEkAJD1txhtn2CAYyHoxgkT6W9c2WgJck7R/eij
	 3qHFYGUiAWQT35QfQ0HB2/Dm2kY0zHvvq63DfIicdf0xV+xwUSg/fpByN5SIA+ryxh
	 szWKcarvJzAlCH4nQCw1rOYZxHR5LhMGfBJih9nLP4tjuRuHeWEh5UKHPnNYC4ur7B
	 9JXam4wOft+CAn8VSDlS5AlEI+ZAGq7ie4duSAyPosg/VtVpo4K9unimPseenQhxDA
	 PypKzw9URzjqw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 112D240D86;
	Tue, 25 Nov 2025 13:43:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5013335C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 13:43:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 38C1C40443
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 13:43:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3cY8HL8FdSRZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 13:43:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3E65E40064
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3E65E40064
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3E65E40064
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 13:43:03 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 5F06040218;
 Tue, 25 Nov 2025 13:43:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E40EDC4CEF1;
 Tue, 25 Nov 2025 13:42:58 +0000 (UTC)
Date: Tue, 25 Nov 2025 13:42:56 +0000
From: Simon Horman <horms@kernel.org>
To: Emil Tantilov <emil.s.tantilov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Aleksandr.Loktionov@intel.com, przemyslaw.kitszel@intel.com,
 anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, decot@google.com, willemb@google.com,
 joshua.a.hay@intel.com, madhu.chittim@intel.com,
 aleksander.lobakin@intel.com, larysa.zaremba@intel.com,
 iamvivekkumar@google.com
Message-ID: <aSWyYIsoXNlpsQn-@horms.kernel.org>
References: <20251121001218.4565-1-emil.s.tantilov@intel.com>
 <20251121001218.4565-3-emil.s.tantilov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251121001218.4565-3-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1764078182;
 bh=K+FoV4+QsGqjKle9czIeLOy5Jt6+6XzOjXqI6OY8V9o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cqPyXQcVtv9V2OPGUjOGuBKRIrXHMtsqQnXULd8FrAkpV4WyjsYZoIUNOpAQG2ZFf
 CgYevtqrC+UYAH1Sue9A00H6JQTT4KbntRBebUs6AycVc3DE/tU/ngE8jSCCiNcC61
 oAD0qDsVQasuYP5l3SfGR5iDEPDN0YXQpBAIpZe/1vbVci77i1l6fVIqShT/xEf4GG
 9QWIdfItPWAPqFrQawX4yo2MTnO4vYh6LgwPuhvALaEsJV8r0YWVgdgx4ZKl1d2sdm
 R3G2TcAvtSi2Nv4cnCGaYc4rRa9O09T7wziIslkIjVxHtQ0P9+AbYp1e0ZtF+uk2wG
 PBs+0tJqP9Ijw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=cqPyXQcV
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/5] idpf: detach and close
 netdevs while handling a reset
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Nov 20, 2025 at 04:12:15PM -0800, Emil Tantilov wrote:

...

> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> index 2a53f3d504d2..5c81f52db266 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> @@ -752,6 +752,65 @@ static int idpf_init_mac_addr(struct idpf_vport *vport,
>  	return 0;
>  }
>  
> +static void idpf_detach_and_close(struct idpf_adapter *adapter)
> +{
> +	int max_vports = adapter->max_vports;
> +
> +	for (int i = 0; i < max_vports; i++) {
> +		struct net_device *netdev = adapter->netdevs[i];
> +
> +		/* If the interface is in detached state, that means the
> +		 * previous reset was not handled successfully for this
> +		 * vport.
> +		 */
> +		if (!netif_device_present(netdev))
> +			continue;
> +
> +		/* Hold RTNL to protect racing with callbacks */
> +		rtnl_lock();
> +		netif_device_detach(netdev);
> +		if (netif_running(netdev)) {
> +			set_bit(IDPF_VPORT_UP_REQUESTED,
> +				adapter->vport_config[i]->flags);
> +			dev_close(netdev);
> +		}
> +		rtnl_unlock();
> +	}
> +}
> +
> +static void idpf_attach_and_open(struct idpf_adapter *adapter)
> +{
> +	int max_vports = adapter->max_vports;
> +
> +	for (int i = 0; i < max_vports; i++) {
> +		struct idpf_vport *vport = adapter->vports[i];
> +		struct idpf_vport_config *vport_config;
> +		struct net_device *netdev;
> +
> +		/* In case of a critical error in the init task, the vport
> +		 * will be freed. Only continue to restore the netdevs
> +		 * if the vport is allocated.
> +		 */
> +		if (!vport)
> +			continue;
> +
> +		/* No need for RTNL on attach as this function is called
> +		 * following detach and dev_close(). We do take RTNL for
> +		 * dev_open() below as it can race with external callbacks
> +		 * following the call to netif_device_attach().
> +		 */
> +		netdev = adapter->netdevs[i];
> +		netif_device_attach(netdev);
> +		vport_config = adapter->vport_config[vport->idx];
> +		if (test_and_clear_bit(IDPF_VPORT_UP_REQUESTED,
> +				       vport_config->flags)) {
> +			rtnl_lock();
> +			dev_open(netdev, NULL);
> +			rtnl_unlock();
> +		}
> +	}
> +}
> +
>  /**
>   * idpf_cfg_netdev - Allocate, configure and register a netdev
>   * @vport: main vport structure

...

> @@ -1807,27 +1860,6 @@ static int idpf_check_reset_complete(struct idpf_hw *hw,
>  	return -EBUSY;
>  }
>  
> -/**
> - * idpf_set_vport_state - Set the vport state to be after the reset
> - * @adapter: Driver specific private structure
> - */
> -static void idpf_set_vport_state(struct idpf_adapter *adapter)
> -{
> -	u16 i;
> -
> -	for (i = 0; i < adapter->max_vports; i++) {
> -		struct idpf_netdev_priv *np;
> -
> -		if (!adapter->netdevs[i])
> -			continue;
> -
> -		np = netdev_priv(adapter->netdevs[i]);
> -		if (np->state == __IDPF_VPORT_UP)
> -			set_bit(IDPF_VPORT_UP_REQUESTED,
> -				adapter->vport_config[i]->flags);
> -	}
> -}
> -
>  /**
>   * idpf_init_hard_reset - Initiate a hardware reset
>   * @adapter: Driver specific private structure

> @@ -1836,28 +1868,17 @@ static void idpf_set_vport_state(struct idpf_adapter *adapter)
>   * reallocate. Also reinitialize the mailbox. Return 0 on success,
>   * negative on failure.
>   */
> -static int idpf_init_hard_reset(struct idpf_adapter *adapter)
> +static void idpf_init_hard_reset(struct idpf_adapter *adapter)
>  {
>  	struct idpf_reg_ops *reg_ops = &adapter->dev_ops.reg_ops;
>  	struct device *dev = &adapter->pdev->dev;
> -	struct net_device *netdev;
>  	int err;
> -	u16 i;
>  
> +	idpf_detach_and_close(adapter);
>  	mutex_lock(&adapter->vport_ctrl_lock);
>  
>  	dev_info(dev, "Device HW Reset initiated\n");
>  
> -	/* Avoid TX hangs on reset */
> -	for (i = 0; i < adapter->max_vports; i++) {
> -		netdev = adapter->netdevs[i];
> -		if (!netdev)
> -			continue;

Hi Emil,

In this code that is removed there is a check for !netdev.
And also there is a similar check in idpf_set_vport_state().
But there is no such check in idpf_detach_and_close().
Is this intentional?

Likewise, is such a check needed in idpf_attach_and_open()?

My understanding is that netdevs[i] is populated asynchronously
via idpf_init_task. But I'm unsure if that is known to have
completed or not.

Flagged by Claude Code with https://github.com/masoncl/review-prompts/


> -
> -		netif_carrier_off(netdev);
> -		netif_tx_disable(netdev);
> -	}
> -
>  	/* Prepare for reset */
>  	if (test_and_clear_bit(IDPF_HR_DRV_LOAD, adapter->flags)) {
>  		reg_ops->trigger_reset(adapter, IDPF_HR_DRV_LOAD);
> @@ -1866,7 +1887,6 @@ static int idpf_init_hard_reset(struct idpf_adapter *adapter)
>  
>  		idpf_idc_issue_reset_event(adapter->cdev_info);
>  
> -		idpf_set_vport_state(adapter);
>  		idpf_vc_core_deinit(adapter);
>  		if (!is_reset)
>  			reg_ops->trigger_reset(adapter, IDPF_HR_FUNC_RESET);
> @@ -1913,11 +1933,14 @@ static int idpf_init_hard_reset(struct idpf_adapter *adapter)
>  unlock_mutex:
>  	mutex_unlock(&adapter->vport_ctrl_lock);
>  
> -	/* Wait until all vports are created to init RDMA CORE AUX */
> -	if (!err)
> -		err = idpf_idc_init(adapter);
> -
> -	return err;
> +	/* Attempt to restore netdevs and initialize RDMA CORE AUX device,
> +	 * provided vc_core_init succeeded. It is still possible that
> +	 * vports are not allocated at this point if the init task failed.
> +	 */
> +	if (!err) {
> +		idpf_attach_and_open(adapter);
> +		idpf_idc_init(adapter);
> +	}
>  }
>  
>  /**
> -- 
> 2.37.3
> 
> 
