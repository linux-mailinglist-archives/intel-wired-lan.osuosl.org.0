Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AEDA3B2276E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 14:52:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 65E9E614A2;
	Tue, 12 Aug 2025 12:52:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5js9O4FPhHFX; Tue, 12 Aug 2025 12:52:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A2C16614AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755003170;
	bh=OADf1V7pXBJRW3RatMG6VLc4sAh6ZF5rnQ5uc0wW3Sw=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nLs+5BB+x3O9Lw1ivEipDnI19dfm8Yk6udxTm5L6Fzo8KGWBpFJUXeV7Sh8JCiGJR
	 HlONHeb1wH+JlScxkkFdABs6hXFK7ZGD45ABX1pCvScvzhPFdU1nFHxtzqPjvgZUHe
	 5vAUvyh8LXubj7qEwestrTYV3LrGKsdDgqmvlXvNuHzVDHpoibXBG7FVlr5jp2Ib2F
	 pf+shPAdYNguGfnAweClq8G79GqcqAFCwmQ/NgNsBRcOwNgx7+awZRcHx2kQ719JgE
	 HPXYtg2z3qho6YHU88TLNdO2frd6PaQ0MkVluPQfDJETGNheUUq0s6WjhJgilKsImN
	 cjwUyhsJwPLAw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A2C16614AE;
	Tue, 12 Aug 2025 12:52:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E4D7D183
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 12:52:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D648D4010F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 12:52:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id htBfge_leDA5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 12:52:48 +0000 (UTC)
X-Greylist: delayed 74643 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 12 Aug 2025 12:52:47 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C3E1C400F1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C3E1C400F1
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:1004:224b::b4; helo=out-180.mta0.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
Received: from out-180.mta0.migadu.com (out-180.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::b4])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C3E1C400F1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 12:52:47 +0000 (UTC)
Message-ID: <f7633d68-ca3c-4320-ba2a-88156ea541cd@linux.dev>
Date: Tue, 12 Aug 2025 13:52:40 +0100
MIME-Version: 1.0
To: Joshua Hay <joshua.a.hay@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, larysa.zaremba@intel.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20250812001921.4076454-1-joshua.a.hay@intel.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20250812001921.4076454-1-joshua.a.hay@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1755003163;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OADf1V7pXBJRW3RatMG6VLc4sAh6ZF5rnQ5uc0wW3Sw=;
 b=TzJal2wnVUXPxRjdszXMzZQwENHSZhGb/ost45bM2hgetbPy+CSkLnQyh5mmbHcpggkmjB
 /GTTawYSrS5HUDSxHfpxWn/mSsGU/1nFlbDDmiQw3xxA9vfB28Q6dS0gPDRcy0M0WxJwEW
 QPBI1ZaeirIWzo3UzbSeV0GPKj4FUSg=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=TzJal2wn
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix UAF in RDMA core
 aux dev deinitialization
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

On 12/08/2025 01:19, Joshua Hay wrote:
> Free the adev->id before auxiliary_device_uninit. The call to uninit
> triggers the release callback, which frees the iadev memory containing the
> adev. The previous flow results in a UAF during rmmod due to the adev->id
> access.
> 
> [264939.604077] ==================================================================
> [264939.604093] BUG: KASAN: slab-use-after-free in idpf_idc_deinit_core_aux_device+0xe4/0x100 [idpf]
> [264939.604134] Read of size 4 at addr ff1100109eb6eaf8 by task rmmod/17842
> 
> ...
> 
> [264939.604635] Allocated by task 17597:
> [264939.604643]  kasan_save_stack+0x20/0x40
> [264939.604654]  kasan_save_track+0x14/0x30
> [264939.604663]  __kasan_kmalloc+0x8f/0xa0
> [264939.604672]  idpf_idc_init_aux_core_dev+0x4bd/0xb60 [idpf]
> [264939.604700]  idpf_idc_init+0x55/0xd0 [idpf]
> [264939.604726]  process_one_work+0x658/0xfe0
> [264939.604742]  worker_thread+0x6e1/0xf10
> [264939.604750]  kthread+0x382/0x740
> [264939.604762]  ret_from_fork+0x23a/0x310
> [264939.604772]  ret_from_fork_asm+0x1a/0x30
> 
> [264939.604785] Freed by task 17842:
> [264939.604790]  kasan_save_stack+0x20/0x40
> [264939.604799]  kasan_save_track+0x14/0x30
> [264939.604808]  kasan_save_free_info+0x3b/0x60
> [264939.604820]  __kasan_slab_free+0x37/0x50
> [264939.604830]  kfree+0xf1/0x420
> [264939.604840]  device_release+0x9c/0x210
> [264939.604850]  kobject_put+0x17c/0x4b0
> [264939.604860]  idpf_idc_deinit_core_aux_device+0x4f/0x100 [idpf]
> [264939.604886]  idpf_vc_core_deinit+0xba/0x3a0 [idpf]
> [264939.604915]  idpf_remove+0xb0/0x7c0 [idpf]
> [264939.604944]  pci_device_remove+0xab/0x1e0
> [264939.604955]  device_release_driver_internal+0x371/0x530
> [264939.604969]  driver_detach+0xbf/0x180
> [264939.604981]  bus_remove_driver+0x11b/0x2a0
> [264939.604991]  pci_unregister_driver+0x2a/0x250
> [264939.605005]  __do_sys_delete_module.constprop.0+0x2eb/0x540
> [264939.605014]  do_syscall_64+0x64/0x2c0
> [264939.605024]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> 
> Fixes: f4312e6bfa2a ("idpf: implement core RDMA auxiliary dev create, init, and destroy")
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf_idc.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c b/drivers/net/ethernet/intel/idpf/idpf_idc.c
> index 4d2905103215..7e20a07e98e5 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_idc.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_idc.c
> @@ -247,10 +247,10 @@ static void idpf_unplug_aux_dev(struct auxiliary_device *adev)
>   	if (!adev)
>   		return;
>   
> +	ida_free(&idpf_idc_ida, adev->id);
> +
>   	auxiliary_device_delete(adev);
>   	auxiliary_device_uninit(adev);
> -
> -	ida_free(&idpf_idc_ida, adev->id);
>   }
>   
>   /**

Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
