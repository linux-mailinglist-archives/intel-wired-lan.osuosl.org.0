Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB98400E8E
	for <lists+intel-wired-lan@lfdr.de>; Sun,  5 Sep 2021 09:23:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8B3960796;
	Sun,  5 Sep 2021 07:23:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ptIJBt5vhPxH; Sun,  5 Sep 2021 07:23:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D6E4560792;
	Sun,  5 Sep 2021 07:23:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 784521BF5A0
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Sep 2021 07:23:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5D36A40269
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Sep 2021 07:23:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4_lc1nsmEVjG for <intel-wired-lan@lists.osuosl.org>;
 Sun,  5 Sep 2021 07:23:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 30B564025F
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Sep 2021 07:23:41 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id EBB5F60F4A;
 Sun,  5 Sep 2021 07:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1630826620;
 bh=Bl5XjlnUT7ec37WklJ+pflfpCbR6md7qSYkSRa9o8jA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BXlXQaXhmiIky1Oq2A9b/ufFM2/vf1hpEf5fSuIQrVz/qGyvryVOsUIlA/ckyZI0j
 2oeP3sspHJK24YJqm3hbylunwXta6kk4bdCd70Q045pulWAp6g1mYgaeYbJTl2fw9p
 ABgXECNtVmGb4NJjD3K1fWnf7Qs/hUjj0Jn6aWAENGxaz43zgo0bbx3MtVjEorrITa
 ob9ESVjWcVl41aEDWPMGzGi7Qn6WiLIcNAZFf/MUxCgs+W6FsuMoVGVE+ecsAxOuAk
 NvXnCAluF+D5JBCabbR+rv4kPSjMvTC1IaVV98l8E3B3fvEpU+RGrPDBqdPdncaU0G
 b87lPdbZEhvEA==
Date: Sun, 5 Sep 2021 10:23:36 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Yongxin Liu <yongxin.liu@windriver.com>
Message-ID: <YTRweH4JMbzUtxLf@unreal>
References: <20210903012500.39407-1-yongxin.liu@windriver.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210903012500.39407-1-yongxin.liu@windriver.com>
Subject: Re: [Intel-wired-lan] [PATCH net] ice: check whether AUX
 devices/drivers are supported in ice_rebuild
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, shiraz.saleem@intel.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Sep 03, 2021 at 09:25:00AM +0800, Yongxin Liu wrote:
> In ice_rebuild(), check whether AUX devices/drivers are supported or not
> before calling ice_plug_aux_dev().
> 
> Fix the following call trace, if RDMA functionality is not available.
> 
>   auxiliary ice.roce.0: adding auxiliary device failed!: -17
>   sysfs: cannot create duplicate filename '/bus/auxiliary/devices/ice.roce.0'
>   Workqueue: ice ice_service_task [ice]
>   Call Trace:
>    dump_stack_lvl+0x38/0x49
>    dump_stack+0x10/0x12
>    sysfs_warn_dup+0x5b/0x70
>    sysfs_do_create_link_sd.isra.2+0xc8/0xd0
>    sysfs_create_link+0x25/0x40
>    bus_add_device+0x6d/0x110
>    device_add+0x49d/0x940
>    ? _printk+0x52/0x6e
>    ? _printk+0x52/0x6e
>    __auxiliary_device_add+0x60/0xc0
>    ice_plug_aux_dev+0xd3/0xf0 [ice]
>    ice_rebuild+0x27d/0x510 [ice]
>    ice_do_reset+0x51/0xe0 [ice]
>    ice_service_task+0x108/0xe70 [ice]
>    ? __switch_to+0x13b/0x510
>    process_one_work+0x1de/0x420
>    ? apply_wqattrs_cleanup+0xc0/0xc0
>    worker_thread+0x34/0x400
>    ? apply_wqattrs_cleanup+0xc0/0xc0
>    kthread+0x14d/0x180
>    ? set_kthread_struct+0x40/0x40
>    ret_from_fork+0x1f/0x30
> 
> Fixes: f9f5301e7e2d ("ice: Register auxiliary device to provide RDMA")
> Signed-off-by: Yongxin Liu <yongxin.liu@windriver.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 0d6c143f6653..98cc708e9517 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -6466,7 +6466,9 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
>  	/* if we get here, reset flow is successful */
>  	clear_bit(ICE_RESET_FAILED, pf->state);
>  
> -	ice_plug_aux_dev(pf);
> +	if (ice_is_aux_ena(pf))
> +		ice_plug_aux_dev(pf);
> +

The change is ok, but it hints that auxiliary bus is used horribly wrong
in this driver. In proper implementation, which should rely on driver/core,
every subdriver like ice.eth, ice.roce e.t.c is supposed to be retriggered
by the code and shouldn't  ave "if (ice_is_aux_ena(pf))" checks.

Thanks

>  	return;
>  
>  err_vsi_rebuild:
> -- 
> 2.14.5
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
