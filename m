Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26CAF65300A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Dec 2022 12:09:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7A80C404F6;
	Wed, 21 Dec 2022 11:09:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A80C404F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671620954;
	bh=xu7jXQ7hY2HdvC6jQSuhgIObY2K6/LirO3HHoP96Gn0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=B4HkFEEv8V/AOk2+BzulDiCaj60sEpRS07gQLkpNVm1gdAkNONkiTJ+h2AD+14Y2I
	 n3wiiOZ4U3C/XwZVhK6zHgN5MukazowVzlvFflADUoWFzSLnbR+7A59zdSZ3fdtTrL
	 JOQTNDFgcoEW1HdYnexacB1GhOiHV8wWdMF3LBxhZutZMpBk5ZN5LcA9HDOf86XE4W
	 Dm1NKaRzRkiEHUOOk7e9Le0sfYIdPLeFZ8kC5phCOVKHMxLQdw7h7jjA4iEUymkELQ
	 tXNpQ5jqZmVsfackGBKS5ZQiRCdd4WtQytdnFCGkG9Chn/vf5WZwqZXyD5THfKTT98
	 zxcLIrncL415A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gy7rdX7DMCVW; Wed, 21 Dec 2022 11:09:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 72B0C400F6;
	Wed, 21 Dec 2022 11:09:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 72B0C400F6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1AE1F1BF616
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 11:09:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E7FBD4011C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 11:09:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E7FBD4011C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AA2NZw06d__O for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Dec 2022 11:09:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D47BA400F6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D47BA400F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 11:09:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="307526026"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="307526026"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 03:09:05 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="714781775"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="714781775"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 03:09:03 -0800
Date: Wed, 21 Dec 2022 12:08:54 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Wang Hai <wanghai38@huawei.com>
Message-ID: <Y6LpRq5iqw6kcVPj@localhost.localdomain>
References: <20221220012143.52141-1-wanghai38@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221220012143.52141-1-wanghai38@huawei.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671620946; x=1703156946;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=0dOjGHomxz9RIGOYuVsBPcooO8qIHWpCc2q3IWmiQA0=;
 b=T+w0fphyTzKRbZZoSW3rCVa6fWpjVxn/mGEM7EPIcegpYbqfql1p54OL
 jDKxZZbPZ1/McC84gL1/VaDKZcaDAKziXUt5+ytWwtgPoOxTscbPLcSsM
 uCSxboFUrdFSV+xtv8lHo+eM1OgOMJglpjRqpGwrgtsjIvsjh+q3TJuPU
 +v+ppEeC9OWztLiS1dJj/A6WNXuhXJJxMXbz6fiMjKntdSxXcEj8Z2V8Y
 wOGfn7xjEA/J4GvJaLuTFuuYzqBnTu2d2azO0EaAdPmOsDPOyFJxNQ0GL
 3z2dwrMc6TcI4lVwpjhbUxN6TaF9AYKWxq9hJ0K06xNvNSMYvqYtWfBNM
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=T+w0fphy
Subject: Re: [Intel-wired-lan] [PATCH v2] kobject: Fix slab-out-of-bounds in
 fill_kobj_path()
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
Cc: rafael@kernel.org, gregkh@linuxfoundation.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, alice.chao@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Dec 20, 2022 at 09:21:43AM +0800, Wang Hai wrote:
> In kobject_get_path(), if kobj->name is changed between calls
> get_kobj_path_length() and fill_kobj_path() and the length becomes
> longer, then fill_kobj_path() will have an out-of-bounds bug.
> 
> The actual current problem occurs when the ixgbe probe.
> 
> In ixgbe_mii_bus_init(), if the length of netdev->dev.kobj.name
> length becomes longer, out-of-bounds will occur.
> 
> cpu0                                         cpu1
> ixgbe_probe
>  register_netdev(netdev)
>   netdev_register_kobject
>    device_add
>     kobject_uevent // Sending ADD events
>                                              systemd-udevd // rename netdev
>                                               dev_change_name
>                                                device_rename
>                                                 kobject_rename
>  ixgbe_mii_bus_init                             |
>   mdiobus_register                              |
>    __mdiobus_register                           |
>     device_register                             |
>      device_add                                 |
>       kobject_uevent                            |
>        kobject_get_path                         |
>         len = get_kobj_path_length // old name  |
>         path = kzalloc(len, gfp_mask);          |
>                                                 kobj->name = name;
>                                                 /* name length becomes
>                                                  * longer
>                                                  */
>         fill_kobj_path /* kobj path length is
>                         * longer than path,
>                         * resulting in out of
>                         * bounds when filling path
>                         */
> 
> This is the kasan report:
> 
> ==================================================================
> BUG: KASAN: slab-out-of-bounds in fill_kobj_path+0x50/0xc0
> Write of size 7 at addr ff1100090573d1fd by task kworker/28:1/673
> 
>  Workqueue: events work_for_cpu_fn
>  Call Trace:
>  <TASK>
>  dump_stack_lvl+0x34/0x48
>  print_address_description.constprop.0+0x86/0x1e7
>  print_report+0x36/0x4f
>  kasan_report+0xad/0x130
>  kasan_check_range+0x35/0x1c0
>  memcpy+0x39/0x60
>  fill_kobj_path+0x50/0xc0
>  kobject_get_path+0x5a/0xc0
>  kobject_uevent_env+0x140/0x460
>  device_add+0x5c7/0x910
>  __mdiobus_register+0x14e/0x490
>  ixgbe_probe.cold+0x441/0x574 [ixgbe]
>  local_pci_probe+0x78/0xc0
>  work_for_cpu_fn+0x26/0x40
>  process_one_work+0x3b6/0x6a0
>  worker_thread+0x368/0x520
>  kthread+0x165/0x1a0
>  ret_from_fork+0x1f/0x30
> 
> This reproducer triggers that bug:
> 
> while:
> do
>     rmmod ixgbe
>     sleep 0.5
>     modprobe ixgbe
>     sleep 0.5
> 
> When calling fill_kobj_path() to fill path, if the name length of
> kobj becomes longer, return failure and retry. This fixes the problem.
> 
> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
> Signed-off-by: Wang Hai <wanghai38@huawei.com>
> ---
> v1->v2: Return value type change and some formatting adjustments.
>  lib/kobject.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/lib/kobject.c b/lib/kobject.c
> index a0b2dbfcfa23..3f97d903266a 100644
> --- a/lib/kobject.c
> +++ b/lib/kobject.c
> @@ -112,7 +112,7 @@ static int get_kobj_path_length(struct kobject *kobj)
>  	return length;
>  }
>  
> -static void fill_kobj_path(struct kobject *kobj, char *path, int length)
> +static int fill_kobj_path(struct kobject *kobj, char *path, int length)
>  {
>  	struct kobject *parent;
>  
> @@ -121,12 +121,16 @@ static void fill_kobj_path(struct kobject *kobj, char *path, int length)
>  		int cur = strlen(kobject_name(parent));
>  		/* back up enough to print this name with '/' */
>  		length -= cur;
> +		if (length <= 0)
> +			return -EINVAL;
>  		memcpy(path + length, kobject_name(parent), cur);
>  		*(path + --length) = '/';
>  	}
>  
>  	pr_debug("kobject: '%s' (%p): %s: path = '%s'\n", kobject_name(kobj),
>  		 kobj, __func__, path);
> +
> +	return 0;
>  }
>  
>  /**
> @@ -141,13 +145,17 @@ char *kobject_get_path(struct kobject *kobj, gfp_t gfp_mask)
>  	char *path;
>  	int len;
>  
> +retry:
>  	len = get_kobj_path_length(kobj);
>  	if (len == 0)
>  		return NULL;
>  	path = kzalloc(len, gfp_mask);
>  	if (!path)
>  		return NULL;
> -	fill_kobj_path(kobj, path, len);
> +	if (fill_kobj_path(kobj, path, len)) {
> +		kfree(path);
> +		goto retry;
> +	}
Thanks for the fix.

I wonder if there is no case we end up with infinite loop
(fill_kobj_path always returning error). Do You know?
>  
>  	return path;
>  }
> -- 
> 2.17.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
