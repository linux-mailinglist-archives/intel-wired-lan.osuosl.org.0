Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cCFdOazKwWmTWwQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 00:20:12 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 15AA52FEDE3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 00:20:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8FF2440E6E;
	Mon, 23 Mar 2026 23:20:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j3sZHQeW9E0R; Mon, 23 Mar 2026 23:20:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA25E40E68
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774308009;
	bh=p9xVLfcRuB3En+dOnLkA7Bc4BYSKHEaVDqywhbk9OF4=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ATq+Py6vTlxBIaDFUG/n8oloewrYnYFENiJXsUpfusPxjd42ZzDoyWuZ134sU38eJ
	 gQuuENXc51k7qQ5qcH3+PTVtUXUqMUxa+qBg0sZ0hekpUrUbXAMvSjXLGr0ff2kpdJ
	 junawtjLGZkjNL+VHEwdUyvotVmfaE+2mhHTxE4KkxrzNR8bIaHOKU9Jvaq9J3tNzP
	 fHYGDLTGqU4WM79PqktGwnHiJ89hnVmULgPcylWwj6BLiWEQoez+bWhxH5w5LO0AJz
	 gHeqET6dKjfEVMl1Os4YBJ1f+1nd7s32SSsEbcztp1iFe/RTBRa7iH38WPuqDraf+U
	 0owVHxVZcKikg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA25E40E68;
	Mon, 23 Mar 2026 23:20:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 10F781D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 23:20:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EEC028264C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 23:20:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FAym7tIkmbZy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Mar 2026 23:20:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 30D548264A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 30D548264A
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 30D548264A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 23:20:06 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 8A018409EB;
 Mon, 23 Mar 2026 23:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97F9CC4CEF7;
 Mon, 23 Mar 2026 23:20:04 +0000 (UTC)
Date: Mon, 23 Mar 2026 16:20:03 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Stanislav Fomichev <sdf@fomichev.me>
Cc: netdev@vger.kernel.org, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, horms@kernel.org, corbet@lwn.net,
 skhan@linuxfoundation.org, andrew+netdev@lunn.ch,
 michael.chan@broadcom.com, pavan.chebbi@broadcom.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 saeedm@nvidia.com, tariqt@nvidia.com, mbloch@nvidia.com,
 alexanderduyck@fb.com, kernel-team@meta.com, johannes@sipsolutions.net,
 sd@queasysnail.net, jianbol@nvidia.com, dtatulea@nvidia.com,
 mohsin.bashr@gmail.com, jacob.e.keller@intel.com, willemb@google.com,
 skhawaja@google.com, bestswngs@gmail.com, aleksandr.loktionov@intel.com,
 kees@kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kselftest@vger.kernel.org,
 leon@kernel.org
Message-ID: <20260323162003.0d155055@kernel.org>
In-Reply-To: <20260320012501.2033548-4-sdf@fomichev.me>
References: <20260320012501.2033548-1-sdf@fomichev.me>
 <20260320012501.2033548-4-sdf@fomichev.me>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1774308006;
 bh=PpHcw3oFZN4iT1D2TENT8YsgkPFR1CPpHVPuhH/9Q38=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Lp7UlBxpQSS9F616nGQR666fPAc0eOseTKxGcglN/NjreqiNtXuSDZWFEqoRy9Y/9
 sab0zBoCpJg8h+is+LJDKgZzWKAgErn3aVOYtv2sErqbk3MfYhaFiGaJXE+scWJIjx
 MLSOkKX0Kng8PY8DUiUMi6WjgF8pU2BzFN2Esp4e5slwJekQxOUhWXZYLRhTZ8bzXi
 JTEe3j32GpLMIdhr4DcvjfloXGN3EmP5i8XEVAJ7fcffdzFMRxR8gYpeuUVV4NaHnK
 WEoZGIBG/E+u56jlstsTO1XhymK5URy4c9+qghCHudTrDB0+SgNFb1OD13CoN+hoIM
 9j8FNAbNqyWqw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Lp7UlBxp
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 03/13] net: introduce
 ndo_set_rx_mode_async and dev_rx_mode_work
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,davemloft.net,google.com,redhat.com,kernel.org,lwn.net,linuxfoundation.org,lunn.ch,broadcom.com,intel.com,nvidia.com,fb.com,meta.com,sipsolutions.net,queasysnail.net,gmail.com,lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim];
	FORGED_RECIPIENTS(0.00)[m:sdf@fomichev.me,m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:andrew+netdev@lunn.ch,m:michael.chan@broadcom.com,m:pavan.chebbi@broadcom.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:alexanderduyck@fb.com,m:kernel-team@meta.com,m:johannes@sipsolutions.net,m:sd@queasysnail.net,m:jianbol@nvidia.com,m:dtatulea@nvidia.com,m:mohsin.bashr@gmail.com,m:jacob.e.keller@intel.com,m:willemb@google.com,m:skhawaja@google.com,m:bestswngs@gmail.com,m:aleksandr.loktionov@intel.com,m:kees@kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:leon@kernel.org,m:andrew@lunn.ch,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[36];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 15AA52FEDE3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 19 Mar 2026 18:24:51 -0700 Stanislav Fomichev wrote:
> diff --git a/Documentation/networking/netdevices.rst b/Documentation/networking/netdevices.rst
> index 35704d115312..dc83d78d3b27 100644
> --- a/Documentation/networking/netdevices.rst
> +++ b/Documentation/networking/netdevices.rst
> @@ -289,6 +289,14 @@ struct net_device synchronization rules
>  ndo_set_rx_mode:
>  	Synchronization: netif_addr_lock spinlock.
>  	Context: BHs disabled
> +	Notes: Deprecated in favor of sleepable ndo_set_rx_mode_async.
> 
> +ndo_set_rx_mode_async:
> +	Synchronization: rtnl_lock() semaphore. In addition, netdev instance
> +	lock if the driver implements queue management or shaper API.
> +	Context: process (from a work queue)
> +	Notes: Sleepable version of ndo_set_rx_mode. Receives snapshots

It's probably just my weirdness but I find creating adjectives out 
of random nouns by adding "-able" to be in poor taste. "sleepable"
took root in certain three letter subsystems but I hope it won't
in netdev.

Please use your words:

	Notes: Async version of ndo_set_rx_mode which runs in process
	context. Receives snapshots f the unicast and multicast address lists.

> +	of the unicast and multicast address lists.
>  
>  ndo_setup_tc:
>  	``TC_SETUP_BLOCK`` and ``TC_SETUP_FT`` are running under NFT locks
> diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
> index 469b7cdb3237..b05bdd67b807 100644
> --- a/include/linux/netdevice.h
> +++ b/include/linux/netdevice.h
> @@ -1117,6 +1117,16 @@ struct netdev_net_notifier {
>   *	This function is called device changes address list filtering.
>   *	If driver handles unicast address filtering, it should set
>   *	IFF_UNICAST_FLT in its priv_flags.
> + *	Cannot sleep, called with netif_addr_lock_bh held.
> + *	Deprecated in favor of sleepable ndo_set_rx_mode_async.
> + *
> + * void (*ndo_set_rx_mode_async)(struct net_device *dev,
> + *				 struct netdev_hw_addr_list *uc,
> + *				 struct netdev_hw_addr_list *mc);
> + *	Sleepable version of ndo_set_rx_mode. Called from a work queue
> + *	with rtnl_lock and netdev_lock_ops(dev) held. The uc/mc parameters
> + *	are snapshots of the address lists - iterate with
> + *	netdev_hw_addr_list_for_each(ha, uc).
>   *
>   * int (*ndo_set_mac_address)(struct net_device *dev, void *addr);
>   *	This function  is called when the Media Access Control address
> @@ -1437,6 +1447,9 @@ struct net_device_ops {
>  	void			(*ndo_change_rx_flags)(struct net_device *dev,
>  						       int flags);
>  	void			(*ndo_set_rx_mode)(struct net_device *dev);
> +	void			(*ndo_set_rx_mode_async)(struct net_device *dev,
> +							 struct netdev_hw_addr_list *uc,
> +							 struct netdev_hw_addr_list *mc);
>  	int			(*ndo_set_mac_address)(struct net_device *dev,
>  						       void *addr);
>  	int			(*ndo_validate_addr)(struct net_device *dev);
> @@ -1903,6 +1916,7 @@ enum netdev_reg_state {
>   *				has been enabled due to the need to listen to
>   *				additional unicast addresses in a device that
>   *				does not implement ndo_set_rx_mode()
> + *	@rx_mode_work:		Work queue entry for ndo_set_rx_mode_async()
>   *	@uc:			unicast mac addresses
>   *	@mc:			multicast mac addresses
>   *	@dev_addrs:		list of device hw addresses
> @@ -2293,6 +2307,7 @@ struct net_device {
>  	unsigned int		promiscuity;
>  	unsigned int		allmulti;
>  	bool			uc_promisc;
> +	struct work_struct	rx_mode_work;
>  #ifdef CONFIG_LOCKDEP
>  	unsigned char		nested_level;
>  #endif
> @@ -4661,6 +4676,11 @@ static inline bool netif_device_present(const struct net_device *dev)
>  	return test_bit(__LINK_STATE_PRESENT, &dev->state);
>  }
>  
> +static inline bool netif_up_and_present(const struct net_device *dev)
> +{
> +	return (dev->flags & IFF_UP) && netif_device_present(dev);

Is this really worth a dedicated helper? What are you trying to express
here semantically?

> +
>  void netif_device_detach(struct net_device *dev);
>  
>  void netif_device_attach(struct net_device *dev);
> diff --git a/net/core/dev.c b/net/core/dev.c
> index 200d44883fc1..fedc423306fc 100644
> --- a/net/core/dev.c
> +++ b/net/core/dev.c
> @@ -2381,6 +2381,8 @@ static void netstamp_clear(struct work_struct *work)
>  static DECLARE_WORK(netstamp_work, netstamp_clear);
>  #endif
>  
> +static struct workqueue_struct *rx_mode_wq;
> +
>  void net_enable_timestamp(void)
>  {
>  #ifdef CONFIG_JUMP_LABEL
> @@ -9669,22 +9671,84 @@ int netif_set_allmulti(struct net_device *dev, int inc, bool notify)
>  	return 0;
>  }
>  
> -/*
> - *	Upload unicast and multicast address lists to device and
> - *	configure RX filtering. When the device doesn't support unicast
> - *	filtering it is put in promiscuous mode while unicast addresses
> - *	are present.
> +static void dev_rx_mode_work(struct work_struct *work)
> +{
> +	struct net_device *dev = container_of(work, struct net_device,
> +					      rx_mode_work);
> +	struct netdev_hw_addr_list uc_snap, mc_snap, uc_ref, mc_ref;
> +	const struct net_device_ops *ops = dev->netdev_ops;
> +	int err;
> +
> +	__hw_addr_init(&uc_snap);
> +	__hw_addr_init(&mc_snap);
> +	__hw_addr_init(&uc_ref);
> +	__hw_addr_init(&mc_ref);
> +
> +	rtnl_lock();
> +	netdev_lock_ops(dev);
> +
> +	if (!netif_up_and_present(dev))
> +		goto out;
> +
> +	if (ops->ndo_set_rx_mode_async) {

How did we get here if we don't have this op?
Are you planning to plumb more code thru this work in the future?
If yes the whole rx_mode handling should be in a dedicated helper
rather than indenting most of the function.

> +		netif_addr_lock_bh(dev);
> +
> +		err = __hw_addr_list_snapshot(&uc_snap, &dev->uc,
> +					      dev->addr_len);
> +		if (!err)
> +			err = __hw_addr_list_snapshot(&uc_ref, &dev->uc,
> +						      dev->addr_len);
> +		if (!err)
> +			err = __hw_addr_list_snapshot(&mc_snap, &dev->mc,
> +						      dev->addr_len);
> +		if (!err)
> +			err = __hw_addr_list_snapshot(&mc_ref, &dev->mc,
> +						      dev->addr_len);

This doesn't get slow with a few thousands of addresses?

> +		netif_addr_unlock_bh(dev);
> +
> +		if (err) {
> +			netdev_WARN(dev, "failed to sync uc/mc addresses\n");
> +			__hw_addr_flush(&uc_snap);
> +			__hw_addr_flush(&uc_ref);
> +			__hw_addr_flush(&mc_snap);
> +			goto out;
> +		}
> +
> +		ops->ndo_set_rx_mode_async(dev, &uc_snap, &mc_snap);
> +
> +		netif_addr_lock_bh(dev);
> +		__hw_addr_list_reconcile(&dev->uc, &uc_snap,
> +					 &uc_ref, dev->addr_len);
> +		__hw_addr_list_reconcile(&dev->mc, &mc_snap,
> +					 &mc_ref, dev->addr_len);
> +		netif_addr_unlock_bh(dev);
> +	}
> +
> +out:
> +	netdev_unlock_ops(dev);
> +	rtnl_unlock();
> +}
> +
> +/**
> + * __dev_set_rx_mode() - upload unicast and multicast address lists to device
> + * and configure RX filtering.
> + * @dev: device
> + *
> + * When the device doesn't support unicast filtering it is put in promiscuous
> + * mode while unicast addresses are present.
>   */
>  void __dev_set_rx_mode(struct net_device *dev)
>  {
>  	const struct net_device_ops *ops = dev->netdev_ops;
>  
>  	/* dev_open will call this function so the list will stay sane. */
> -	if (!(dev->flags&IFF_UP))
> +	if (!netif_up_and_present(dev))
>  		return;
>  
> -	if (!netif_device_present(dev))
> +	if (ops->ndo_set_rx_mode_async) {
> +		queue_work(rx_mode_wq, &dev->rx_mode_work);
>  		return;
> +	}
>  
>  	if (!(dev->priv_flags & IFF_UNICAST_FLT)) {
>  		/* Unicast addresses changes may only happen under the rtnl,
> @@ -11708,6 +11772,16 @@ void netdev_run_todo(void)
>  
>  	__rtnl_unlock();
>  
> +	/* Make sure all pending rx_mode work completes before returning.
> +	 *
> +	 * rx_mode_wq may be NULL during early boot:
> +	 * core_initcall(netlink_proto_init) vs subsys_initcall(net_dev_init).
> +	 *
> +	 * Check current_work() to avoid flushing from the wq.
> +	 */
> +	if (rx_mode_wq && !current_work())
> +		flush_workqueue(rx_mode_wq);

Can we give the work a reference on the netdev (at init time) and
cancel + release it here instead of flushing / waiting?

>  	/* Wait for rcu callbacks to finish before next phase */
>  	if (!list_empty(&list))
>  		rcu_barrier();
> @@ -12099,6 +12173,7 @@ struct net_device *alloc_netdev_mqs(int sizeof_priv, const char *name,
>  #endif
>  
>  	mutex_init(&dev->lock);
> +	INIT_WORK(&dev->rx_mode_work, dev_rx_mode_work);
>  
>  	dev->priv_flags = IFF_XMIT_DST_RELEASE | IFF_XMIT_DST_RELEASE_PERM;
>  	setup(dev);
> @@ -12203,6 +12278,8 @@ void free_netdev(struct net_device *dev)
>  
>  	kfree(rcu_dereference_protected(dev->ingress_queue, 1));
>  
> +	cancel_work_sync(&dev->rx_mode_work);

Should never happen so maybe wrap it in a WARN ?


>  	/* Flush device addresses */
>  	dev_addr_flush(dev);
>  
> @@ -13296,6 +13373,10 @@ static int __init net_dev_init(void)
>  	if (register_pernet_device(&default_device_ops))
>  		goto out;
>  
> +	rx_mode_wq = alloc_ordered_workqueue("rx_mode_wq", 0);
> +	if (!rx_mode_wq)
> +		goto out;
> +
>  	open_softirq(NET_TX_SOFTIRQ, net_tx_action);
>  	open_softirq(NET_RX_SOFTIRQ, net_rx_action);
>  

