Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D822B45D3A7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Nov 2021 04:31:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6CCC082443;
	Thu, 25 Nov 2021 03:31:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f8akJI0ipMv3; Thu, 25 Nov 2021 03:31:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5AC368242D;
	Thu, 25 Nov 2021 03:31:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EAC9E1BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Nov 2021 03:31:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D6A3B40537
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Nov 2021 03:31:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N8NGZfCVE3GR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Nov 2021 03:31:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DBEDA40526
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Nov 2021 03:31:48 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 21C0C610A6;
 Thu, 25 Nov 2021 03:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637811108;
 bh=aapHXfg6OVmRnRA/7W/4iqD01l3g+0fa50YrUvEqMAg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=GvCtPh5dXZ/oPP1qQ1jMgy8hJg2yq1IIqElKuEzZSjUfrzuzSYaCqydQuf5kK7Q2c
 rv1IYoSSlOVv0zcWtytL8nkbuws6J0DG1u+XcMmmOwSolKPcEvWRWXZvwMXhcE0qPU
 tlafnJ+CW1aGAxo4qFJ2L29cZn9mVjfBrU48s8OJsiZvs1Qw6fIKOEg8fQCqXEPt4T
 ajWDiDG3bici0Vyj4HWz86bMaOxP6iakJgPvZ5nj8GY05rrmepPBPaH2ilL6bIDok3
 l5IVrJ6A848O9pgB4/GMWkWn/QVKq1sGtce4gT19RjiJ+LtUyjAnJ38uIHrLRfKbe8
 HuxyUYBLLqZPA==
Date: Wed, 24 Nov 2021 19:31:47 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Rui Zhang <zhangrui182@huawei.com>
Message-ID: <20211124193147.3d6370c3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20211125032342.550960-1-zhangrui182@huawei.com>
References: <20211125032342.550960-1-zhangrui182@huawei.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] i40e: fix use-after-free in
 i40e_sync_filters_subtask()
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
Cc: sashal@kernel.org, gregkh@linuxfoundation.org,
 stable-commits@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 zhudi2@huawei.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 25 Nov 2021 09:23:42 +0600 Rui Zhang wrote:
> From: Di Zhu <zhudi2@huawei.com>
> 
>  print_address_description+0x70/0x360
>  ? vprintk_func+0x5e/0xf0
>  kasan_report+0x1b2/0x330
>  i40e_sync_vsi_filters+0x4f0/0x1850 [i40e]
>  i40e_sync_filters_subtask+0xe3/0x130 [i40e]
>  i40e_service_task+0x195/0x24c0 [i40e]
>  process_one_work+0x3f5/0x7d0
>  worker_thread+0x61/0x6c0
>  ? process_one_work+0x7d0/0x7d0
>  kthread+0x1c3/0x1f0
>  ? kthread_park+0xc0/0xc0
>  ret_from_fork+0x35/0x40
> 
> Allocated by task 2279810:
>  kasan_kmalloc+0xa0/0xd0
>  kmem_cache_alloc_trace+0xf3/0x1e0
>  i40e_add_filter+0x127/0x2b0 [i40e]
>  i40e_add_mac_filter+0x156/0x190 [i40e]
>  i40e_addr_sync+0x2d/0x40 [i40e]
>  __hw_addr_sync_dev+0x154/0x210
>  i40e_set_rx_mode+0x6d/0xf0 [i40e]
>  __dev_set_rx_mode+0xfb/0x1f0
>  __dev_mc_add+0x6c/0x90
>  igmp6_group_added+0x214/0x230
>  __ipv6_dev_mc_inc+0x338/0x4f0
>  addrconf_join_solict.part.7+0xa2/0xd0
>  addrconf_dad_work+0x500/0x980
>  process_one_work+0x3f5/0x7d0
>  worker_thread+0x61/0x6c0
>  kthread+0x1c3/0x1f0
>  ret_from_fork+0x35/0x40
> 
> Freed by task 2547073:
>  __kasan_slab_free+0x130/0x180
>  kfree+0x90/0x1b0
>  __i40e_del_filter+0xa3/0xf0 [i40e]
>  i40e_del_mac_filter+0xf3/0x130 [i40e]
>  i40e_addr_unsync+0x85/0xa0 [i40e]
>  __hw_addr_sync_dev+0x9d/0x210
>  i40e_set_rx_mode+0x6d/0xf0 [i40e]
>  __dev_set_rx_mode+0xfb/0x1f0
>  __dev_mc_del+0x69/0x80
>  igmp6_group_dropped+0x279/0x510
>  __ipv6_dev_mc_dec+0x174/0x220
>  addrconf_leave_solict.part.8+0xa2/0xd0
>  __ipv6_ifa_notify+0x4cd/0x570
>  ipv6_ifa_notify+0x58/0x80
>  ipv6_del_addr+0x259/0x4a0
>  inet6_addr_del+0x188/0x260
>  addrconf_del_ifaddr+0xcc/0x130
>  inet6_ioctl+0x152/0x190
>  sock_do_ioctl+0xd8/0x2b0
>  sock_ioctl+0x2e5/0x4c0
>  do_vfs_ioctl+0x14e/0xa80
>  ksys_ioctl+0x7c/0xa0
>  __x64_sys_ioctl+0x42/0x50
>  do_syscall_64+0x98/0x2c0
>  entry_SYSCALL_64_after_hwframe+0x65/0xca
> 
> Signed-off-by: Di Zhu <zhudi2@huawei.com>
> Signed-off-by: Rui Zhang <zhangrui182@huawei.com>

Not sure why you sent this to stable (instead of netdev or intel) 
and what you're trying to achieve in general, since there's no patch
description beyond the splat. CCing intel's ML for visibility.

> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 8221c3364..11c1e9421 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -96,6 +96,24 @@ MODULE_VERSION(DRV_VERSION);
>  
>  static struct workqueue_struct *i40e_wq;
>  
> +static void netdev_hw_addr_refcnt(struct i40e_mac_filter *f,
> +				  struct net_device *netdev, int delta)
> +{
> +	struct netdev_hw_addr *ha;
> +
> +	if (f == NULL || netdev == NULL)
> +		return;
> +
> +	netdev_for_each_mc_addr(ha, netdev) {
> +		if (ether_addr_equal(ha->addr, f->macaddr)) {
> +			ha->refcount += delta;
> +			if (ha->refcount <= 0)
> +				ha->refcount = 1;
> +			break;
> +		}
> +	}
> +}
> +
>  /**
>   * i40e_allocate_dma_mem_d - OS specific memory alloc for shared code
>   * @hw:   pointer to the HW structure
> @@ -1994,6 +2012,7 @@ static void i40e_undo_add_filter_entries(struct i40e_vsi *vsi,
>  	hlist_for_each_entry_safe(new, h, from, hlist) {
>  		/* We can simply free the wrapper structure */
>  		hlist_del(&new->hlist);
> +		netdev_hw_addr_refcnt(new->f, vsi->netdev, -1);
>  		kfree(new);
>  	}
>  }
> @@ -2330,6 +2349,10 @@ int i40e_sync_vsi_filters(struct i40e_vsi *vsi)
>  						       &tmp_add_list,
>  						       &tmp_del_list,
>  						       vlan_filters);
> +
> +		hlist_for_each_entry(new, &tmp_add_list, hlist)
> +			netdev_hw_addr_refcnt(new->f, vsi->netdev, 1);
> +
>  		if (retval)
>  			goto err_no_memory_locked;
>  
> @@ -2462,6 +2485,7 @@ int i40e_sync_vsi_filters(struct i40e_vsi *vsi)
>  			if (new->f->state == I40E_FILTER_NEW)
>  				new->f->state = new->state;
>  			hlist_del(&new->hlist);
> +			netdev_hw_addr_refcnt(new->f, vsi->netdev, -1);
>  			kfree(new);
>  		}
>  		spin_unlock_bh(&vsi->mac_filter_hash_lock);

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
