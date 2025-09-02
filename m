Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A589B3F42D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Sep 2025 07:09:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B9BA84464;
	Tue,  2 Sep 2025 05:09:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e2yuG3RrrG-m; Tue,  2 Sep 2025 05:09:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 79E0784460
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756789752;
	bh=jKVSkHWTz5davytG0Zfh+PAm+D3Q+5l4a2VDVw+spd4=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=K2Ostl8tjCvx3grLP5XxLFLXzaRWpoDM1Efgm7h2Mam8nJ9b8i7m+LTkCyz9eBZVO
	 qk3OI+inhYjNbHejaTnFfdk7pRQf4182CjGFZHQXO3BqPBsCjckL5suWPZdrHDV1i5
	 b+mVp/iQIipYc5CGSn2qohs0JpB+wUcBIVoitmGxui6coyV4fp8/odAFDHMGdbzzI/
	 97zeNFRz2XgkEtwg9vpCzhD2V0XlohqYSCxOCu5pPfiv/1q1HcmF7WsB+SfxBPc8CH
	 Kjpgjx7j0np6HlneyzhnM3KNOqb9r4ZDhFXU/rCBm9R+oo1koCepe0ctzn1Wuy3sYG
	 Om7PzYqqXCpeQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 79E0784460;
	Tue,  2 Sep 2025 05:09:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 21582439
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 05:09:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 12DAA419AB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 05:09:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BZNwZw9eiLnO for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Sep 2025 05:09:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E7C2A419A3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E7C2A419A3
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E7C2A419A3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 05:09:08 +0000 (UTC)
Received: from [192.168.2.205] (p5dc55ed2.dip0.t-ipconnect.de [93.197.94.210])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 8008D60213AC3;
 Tue, 02 Sep 2025 07:08:51 +0200 (CEST)
Message-ID: <4f746e98-b81b-4632-a2f8-f14d66c71ced@molgen.mpg.de>
Date: Tue, 2 Sep 2025 07:08:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Koichiro Den <den@valinux.co.jp>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 jedrzej.jagielski@intel.com, mateusz.polchlopek@intel.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250902003941.2561389-1-den@valinux.co.jp>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250902003941.2561389-1-den@valinux.co.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH v2] ixgbe: fix too early
 devlink_free() in ixgbe_remove()
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

Dear Koichiro,


Thank you for your patch.

Am 02.09.25 um 02:39 schrieb Koichiro Den:
> Since ixgbe_adapter is embedded in devlink, calling devlink_free()
> prematurely in the ixgbe_remove() path can lead to UAF. Move devlink_free()
> to the end.
> 
> KASAN report:
> 
>   BUG: KASAN: use-after-free in ixgbe_reset_interrupt_capability+0x140/0x180 [ixgbe]
>   Read of size 8 at addr ffff0000adf813e0 by task bash/2095
>   CPU: 1 UID: 0 PID: 2095 Comm: bash Tainted: G S  6.17.0-rc2-tnguy.net-queue+ #1 PREEMPT(full)
>   [...]
>   Call trace:
>    show_stack+0x30/0x90 (C)
>    dump_stack_lvl+0x9c/0xd0
>    print_address_description.constprop.0+0x90/0x310
>    print_report+0x104/0x1f0
>    kasan_report+0x88/0x180
>    __asan_report_load8_noabort+0x20/0x30
>    ixgbe_reset_interrupt_capability+0x140/0x180 [ixgbe]
>    ixgbe_clear_interrupt_scheme+0xf8/0x130 [ixgbe]
>    ixgbe_remove+0x2d0/0x8c0 [ixgbe]
>    pci_device_remove+0xa0/0x220
>    device_remove+0xb8/0x170
>    device_release_driver_internal+0x318/0x490
>    device_driver_detach+0x40/0x68
>    unbind_store+0xec/0x118
>    drv_attr_store+0x64/0xb8
>    sysfs_kf_write+0xcc/0x138
>    kernfs_fop_write_iter+0x294/0x440
>    new_sync_write+0x1fc/0x588
>    vfs_write+0x480/0x6a0
>    ksys_write+0xf0/0x1e0
>    __arm64_sys_write+0x70/0xc0
>    invoke_syscall.constprop.0+0xcc/0x280
>    el0_svc_common.constprop.0+0xa8/0x248
>    do_el0_svc+0x44/0x68
>    el0_svc+0x54/0x160
>    el0t_64_sync_handler+0xa0/0xe8
>    el0t_64_sync+0x1b0/0x1b8
> 
> Fixes: a0285236ab93 ("ixgbe: add initial devlink support")
> Signed-off-by: Koichiro Den <den@valinux.co.jp>
> ---
> Changes in v2:
> - Move only devlink_free()
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 80e6a2ef1350..b3822c229300 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -12092,7 +12092,6 @@ static void ixgbe_remove(struct pci_dev *pdev)
>   
>   	devl_port_unregister(&adapter->devlink_port);
>   	devl_unlock(adapter->devlink);
> -	devlink_free(adapter->devlink);
>   
>   	ixgbe_stop_ipsec_offload(adapter);
>   	ixgbe_clear_interrupt_scheme(adapter);
> @@ -12125,6 +12124,8 @@ static void ixgbe_remove(struct pci_dev *pdev)
>   
>   	if (disable_dev)
>   		pci_disable_device(pdev);
> +
> +	devlink_free(adapter->devlink);
>   }
>   
>   /**

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
