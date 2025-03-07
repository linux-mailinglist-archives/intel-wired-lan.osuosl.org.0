Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF2BA56093
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Mar 2025 07:02:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C85E811AF;
	Fri,  7 Mar 2025 06:02:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KRb_9xu1Vra6; Fri,  7 Mar 2025 06:02:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE0B68117F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741327337;
	bh=tF3EnLADDxIRwxlks2byRL4H4fUwC5rrFp8ACmCxx0w=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Zg2XAahi+4OzjthVYB3qT/KwbAtWZE4+Q2Du4l6NTZ9FZJEmZp2enPqUE3aIlfkrf
	 ybdaAQoeNYjE0Vr1BRle8yvUWpAwnC9ruNj6fcXfBLlGhxvaz1yTqfgrNtOarQn92h
	 HBbUJJ92YR1TE5jF0lIQkxDd09V2kGjxXp3dLuSYVXUjPG+i7cZIJh2pSpO0zCtm7Z
	 Sb13ylZzvck9qVFvpvFm4aAKI/nKBkb5ebREW0d6cq6nwABIHnKYaCu0G03LyRPJms
	 UEMzw1tLvCchyvdkhzXEpMBZh/5hBzymZ5bExdIhe4pHQH6brvOE3vRBPq6X6QkaOn
	 59UHIllh9exkw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE0B68117F;
	Fri,  7 Mar 2025 06:02:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5427BF21
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 06:02:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4EF238117F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 06:02:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KQe9AQIsLq10 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Mar 2025 06:02:13 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3B564811AA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B564811AA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3B564811AA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 06:02:13 +0000 (UTC)
X-CSE-ConnectionGUID: 8GpI8SHkRZ6iSN4EEPQA9Q==
X-CSE-MsgGUID: hVW7t645Q22baKWGCJpmTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="59773285"
X-IronPort-AV: E=Sophos;i="6.14,228,1736841600"; d="scan'208";a="59773285"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 22:02:12 -0800
X-CSE-ConnectionGUID: +Qv+ViwPSiqObnDp32HgIg==
X-CSE-MsgGUID: Kdz37tCaRWaUHQp3t9pPYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="150181763"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 22:02:09 -0800
Date: Fri, 7 Mar 2025 06:58:21 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Emil Tantilov <emil.s.tantilov@intel.com>
Message-ID: <Z8qK/Z/8lYtdR2UM@mev-dev.igk.intel.com>
References: <20250307003956.22018-1-emil.s.tantilov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250307003956.22018-1-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741327333; x=1772863333;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ssS2yLuyvtoLCM/MENPJQ5W4+oovXZms8MTFYP3JgBI=;
 b=hz9wN5iYTTtDCnyzDaOxm+IO6xpF/7Nox884t7z3BIYe/oMyLNXpzpYy
 3bdRpBklFJtanVhmPrDsOnedqJZH3/RQzBvxnTi0A4jt4OGeAS5h1oOQb
 unVebAo6Eda+WQIKVqwnMlvyAHzl06Z9F7ozAwBWR0TPFGo5RqFW7j85D
 fWLiwfeo/6nTmzsLRgyXsOUNDxwu94RlL932LwRvvLsICvnVPQX6CfC/m
 /mMTskRHkN0KP//ymPHPDmgi2SUoVtzjxwdRGb0Ia41gRFJjx+XpIJXi0
 7jSTk6wDI/23cyPfYiJhqUoK1ebR/VVMtpAs915e4fExYo2z7MZevgTw0
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hz9wN5iY
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix adapter NULL
 pointer dereference on reboot
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
Cc: willemb@google.com, pabeni@redhat.com, netdev@vger.kernel.org,
 yuma@redhat.com, Aleksandr.Loktionov@intel.com, edumazet@google.com,
 madhu.chittim@intel.com, anthony.l.nguyen@intel.com, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, decot@google.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Mar 06, 2025 at 04:39:56PM -0800, Emil Tantilov wrote:
> Driver calls idpf_remove() from idpf_shutdown(), which can end up
> calling idpf_remove() again when disabling SRIOV.
> 

The same is done in other drivers (ice, iavf). Why here it is a problem?
I am asking because heaving one function to remove is pretty handy.
Maybe the problem can be fixed by some changes in idpf_remove() instead?

> echo 1 > /sys/class/net/<netif>/device/sriov_numvfs
> reboot
> 
> BUG: kernel NULL pointer dereference, address: 0000000000000020
> ...
> RIP: 0010:idpf_remove+0x22/0x1f0 [idpf]
> ...
> ? idpf_remove+0x22/0x1f0 [idpf]
> ? idpf_remove+0x1e4/0x1f0 [idpf]
> pci_device_remove+0x3f/0xb0
> device_release_driver_internal+0x19f/0x200
> pci_stop_bus_device+0x6d/0x90
> pci_stop_and_remove_bus_device+0x12/0x20
> pci_iov_remove_virtfn+0xbe/0x120
> sriov_disable+0x34/0xe0
> idpf_sriov_configure+0x58/0x140 [idpf]
> idpf_remove+0x1b9/0x1f0 [idpf]
> idpf_shutdown+0x12/0x30 [idpf]
> pci_device_shutdown+0x35/0x60
> device_shutdown+0x156/0x200
> ...
> 
> Replace the direct idpf_remove() call in idpf_shutdown() with
> idpf_vc_core_deinit() and idpf_deinit_dflt_mbx(), which perform
> the bulk of the cleanup, such as stopping the init task, freeing IRQs,
> destroying the vports and freeing the mailbox.
> 
> Reported-by: Yuying Ma <yuma@redhat.com>
> Fixes: e850efed5e15 ("idpf: add module register and probe functionality")
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_main.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
> index b6c515d14cbf..bec4a02c5373 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_main.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
> @@ -87,7 +87,11 @@ static void idpf_remove(struct pci_dev *pdev)
>   */
>  static void idpf_shutdown(struct pci_dev *pdev)
>  {
> -	idpf_remove(pdev);
> +	struct idpf_adapter *adapter = pci_get_drvdata(pdev);
> +
> +	cancel_delayed_work_sync(&adapter->vc_event_task);
> +	idpf_vc_core_deinit(adapter);
> +	idpf_deinit_dflt_mbx(adapter);
>  
>  	if (system_state == SYSTEM_POWER_OFF)
>  		pci_set_power_state(pdev, PCI_D3hot);
> -- 
> 2.17.2
