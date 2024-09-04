Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D600396CB73
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Sep 2024 01:57:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7841440B98;
	Wed,  4 Sep 2024 23:57:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ILyZdQm95rgr; Wed,  4 Sep 2024 23:57:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E3A6640B57
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725494263;
	bh=m65f/7ZUNNlBXAJXaprwUjZzhSR+adyfbD5Tepf/+Xw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=O2cFliFg6Eg7T8vQmizCkNI36lk1G1vurg5X1J6l2g+aJs4vEBKG6G4DHF3xshn06
	 2a+kFqVAomYxPfFnNm7DIyqaxycHQMdavRcRk0z6QMW5cIos4KKEHXhP8jXXJJv4FU
	 sBRhoxafSc7X37KsCpjOoVV1e0wrLlbV4Xim221H8Kx08k9Wo1cQGk2CLnx0Bddedl
	 mfpEpHM/EoOKi4505TjQztxFt3yuJYthXEsVtZIJMiVap+wVY5xyKHkk+GmVg40eb0
	 lULmhZUqvWkUN6IfRdMDeIDjPc6ZgkHwkMEbzIxUxBaaORQiGr6C8JoNQN/3wdfpSM
	 4w/SeEvxtcf4g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E3A6640B57;
	Wed,  4 Sep 2024 23:57:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BF5D01BF299
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 23:57:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AA08C81335
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 23:57:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0SBWgMMXOnpj for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 23:57:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=kheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8962481334
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8962481334
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8962481334
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 23:57:38 +0000 (UTC)
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-185-ZZ9SVohgOB2Q1WIrW-Salw-1; Wed, 04 Sep 2024 19:57:34 -0400
X-MC-Unique: ZZ9SVohgOB2Q1WIrW-Salw-1
Received: by mail-io1-f71.google.com with SMTP id
 ca18e2360f4ac-82a330ab764so25462039f.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 04 Sep 2024 16:57:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725494254; x=1726099054;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=m65f/7ZUNNlBXAJXaprwUjZzhSR+adyfbD5Tepf/+Xw=;
 b=Lo8mWQxeDWq1R0kwFSHemsC5iu8lkumCDNBfpMpSkvjUgG1tKQAVvYASqTX8fdyGi0
 D8uarSCTPR5S1MjG3SPSyW+UJouu7Eiyn5+Jgm9Uc0RC78nZNDs1YnV07LmxPUtJfIc0
 /J3MgdjNbNfJisLLfmNQaxYI7kOrUQV8Hna3h89B4f01wx/UDHA8nOvRQRE/u1uh3YZO
 o/WHxmLnqb5psj6ZivVqWT0pZ/lrZ2VMsLrzgoJxWE0r5haQMIhFCHMt5rQr3ETXGDRD
 jF3TRxhrh+C42B+yBt41fCbIMdwJ419rx8wTQcOF/fbGg3M57r3mWALZ6Hq8BnXRO7+0
 FwSw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXc/xVUXKtUPyIp0loAbf04GcanZ2kWp/Vj0g2nppnbHCZVTCRjcXfArTE0BH/B4Cyn65Xl866KEl5hYcY8sBE=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw1MGwvf5kE56DZimPDOX2nMyPeUVyxzFqBT0avKiqBUneOjhJk
 u+TntfoxhrMKoZHP6hI770MDZQKsE4yTcnPEt0CBKq4dfsjGdq8HYAueqH+ybZO5VLJY9+pQWSs
 GBi8n6JdMf+DPKZ9b7pcvi2PQ3m+zj6sYIo+ZqpRIwocqR11bgBVubzc86B3sj6oKplY=
X-Received: by 2002:a05:6602:15cc:b0:82a:306b:950d with SMTP id
 ca18e2360f4ac-82a5ed0d8a7mr1196795339f.12.1725494253728; 
 Wed, 04 Sep 2024 16:57:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHFO3XkAGOr7QP9XXjsrNlFB4gSfQfEc1Lvtb4PXC7/EmHBGSYUuOHrpUc+c7JLZbl5YChh3w==
X-Received: by 2002:a05:6602:15cc:b0:82a:306b:950d with SMTP id
 ca18e2360f4ac-82a5ed0d8a7mr1196791039f.12.1725494253058; 
 Wed, 04 Sep 2024 16:57:33 -0700 (PDT)
Received: from fedora-x1 ([184.146.85.211]) by smtp.gmail.com with ESMTPSA id
 8926c6da1cb9f-4ced2e9377dsm3370461173.85.2024.09.04.16.57.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2024 16:57:32 -0700 (PDT)
Date: Wed, 4 Sep 2024 19:57:21 -0400
From: Kamal Heib <kheib@redhat.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Message-ID: <Ztjz4ZZIP8v6iKF1@fedora-x1>
References: <20240903182555.1253466-1-kheib@redhat.com>
 <CAGYh1E_tbTY5U1Uwpszw7KeUTaKXV0+Lw4AUgBFdsTbx=Gb73A@mail.gmail.com>
 <SJ0PR11MB586692C95212C29D929C0DA5E59C2@SJ0PR11MB5866.namprd11.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <SJ0PR11MB586692C95212C29D929C0DA5E59C2@SJ0PR11MB5866.namprd11.prod.outlook.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1725494257;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=m65f/7ZUNNlBXAJXaprwUjZzhSR+adyfbD5Tepf/+Xw=;
 b=Rxsz56R+ZbKXZM92VaITXd1mXmt52KvhNq8/DFyTrU4mFqsE02P09tK/65M8J+FwZ/sey+
 u/EKOWlNtHOPpB7cZ0c8GuXYGkiITQetwuCUUAcj5ZJ7VAIe9oNrJJKPnQ1+YyFtggQjmx
 U/5i+tvBWD3Q4RhW3EzmDaDfeKRIWLQ=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Rxsz56R+
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: Fix trying to free
 already-freed IRQ
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
Cc: ivecera <ivecera@redhat.com>, Paolo Abeni <pabeni@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 YangHang Liu <yanghliu@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Chao Yang <chayang@redhat.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Sep 04, 2024 at 09:00:32PM +0000, Loktionov, Aleksandr wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of YangHang Liu
> > Sent: Wednesday, September 4, 2024 4:37 AM
> > To: Kamal Heib <kheib@redhat.com>; Chao Yang <chayang@redhat.com>
> > Cc: ivecera <ivecera@redhat.com>; netdev@vger.kernel.org; Jakub
> > Kicinski <kuba@kernel.org>; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>; intel-wired-lan@lists.osuosl.org;
> > Paolo Abeni <pabeni@redhat.com>; David S . Miller
> > <davem@davemloft.net>
> > Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: Fix trying to
> > free already-freed IRQ
> > 
> > This issue can be reproduced by hot-unplugging the INTx i40e PF.
> > 
> > The Call Trace will disappear after using Kamal's fix.
> > 
> > Tested-by: Yanghang Liu<yanghliu@redhat.com>
> > 
> > 
> > 
> > On Wed, Sep 4, 2024 at 2:26 AM Kamal Heib <kheib@redhat.com> wrote:
> > >
> > > Avoid the following warning when trying to free an already freed
> > IRQ,
> > > The issue happens when trying to call i40e_remove() twice from two
> > > different contexts which will lead to calling i40e_vsi_free_irq()
> > > twice, Fix the issue by using a flag to mark that the IRQ has
> > already been freed.
> > >
> > > i40e 0000:07:00.0: i40e_ptp_stop: removed PHC on enp7s0 ------------
> > [
> > > cut here ]------------ Trying to free already-free IRQ 0
> > > WARNING: CPU: 2 PID: 12 at kernel/irq/manage.c:1868
> > > __free_irq+0x1e3/0x350 Modules linked in: nft_fib_inet nft_fib_ipv4
> > > nft_fib_ipv6 nft_fib nft_reject_inet nf_reject_ipv4 nf_reject_ipv6
> > > nft_reject nft_ct nft_chain_nat nf_nat nf_conntrack nf_defrag_ipv6
> > > nf_defrag_ipv4 rfkill ip_set nf_tables nfnetlink vfat fat
> > > intel_rapl_msr intel_rapl_common kvm_amd ccp iTCO_wdt
> > > iTCO_vendor_support kvm i2c_i801 pcspkr i40e lpc_ich virtio_gpu
> > > i2c_smbus virtio_dma_buf drm_shmem_helper drm_kms_helper
> > > virtio_balloon joydev drm fuse xfs libcrc32c ahci crct10dif_pclmul
> > > libahci crc32_pclmul crc32c_intel virtio_net libata virtio_blk
> > > ghash_clmulni_intel net_failover virtio_console failover serio_raw
> > > dm_mirror dm_region_hash dm_log dm_mod
> > > CPU: 2 PID: 12 Comm: kworker/u16:1 Kdump: loaded Not tainted
> > > 5.14.0-478.el9.x86_64 #1 Hardware name: Red Hat KVM/RHEL, BIOS
> > > edk2-20240524-1.el9 05/24/2024
> > > Workqueue: kacpi_hotplug acpi_hotplug_work_fn
> > > RIP: 0010:__free_irq+0x1e3/0x350
> > > Code: 00 00 48 8b bb a8 01 00 00 e8 09 74 02 00 49 8b 7c 24 30 e8 8f
> > > 7c 1d 00 eb 35 8b 74 24 04 48 c7 c7 50 a3 61 92 e8 cd 99 f6 ff <0f>
> > 0b
> > > 4c 89 fe 48 89 ef e8 30 aa b3 00 48 8b 43 40 48 8b 40 78 48
> > > RSP: 0018:ffffb971c0077ac8 EFLAGS: 00010086
> > > RAX: 0000000000000000 RBX: ffff8b594193ee00 RCX: 0000000000000027
> > > RDX: 0000000000000027 RSI: 00000000ffff7fff RDI: ffff8b59bcf208c8
> > > RBP: ffff8b594193eec4 R08: 0000000000000000 R09: ffffb971c0077970
> > > R10: ffffb971c0077968 R11: ffffffff931e7c28 R12: ffff8b5944946000
> > > R13: ffff8b594193ef80 R14: ffff8b5944946000 R15: 0000000000000246
> > > FS:  0000000000000000(0000) GS:ffff8b59bcf00000(0000)
> > > knlGS:0000000000000000
> > > CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > > CR2: 00007f11eb064000 CR3: 000000000ad40004 CR4: 0000000000770ef0
> > > PKRU: 55555554
> > > Call Trace:
> > >  <TASK>
> > >  ? srso_alias_return_thunk+0x5/0xfbef5
> > >  ? show_trace_log_lvl+0x26e/0x2df
> > >  ? show_trace_log_lvl+0x26e/0x2df
> > >  ? free_irq+0x33/0x70
> > >  ? __free_irq+0x1e3/0x350
> > >  ? __warn+0x7e/0xd0
> > >  ? __free_irq+0x1e3/0x350
> > >  ? report_bug+0x100/0x140
> > >  ? srso_alias_return_thunk+0x5/0xfbef5
> > >  ? handle_bug+0x3c/0x70
> > >  ? exc_invalid_op+0x14/0x70
> > >  ? asm_exc_invalid_op+0x16/0x20
> > >  ? __free_irq+0x1e3/0x350
> > >  ? __free_irq+0x1e3/0x350
> > >  free_irq+0x33/0x70
> > >  i40e_vsi_free_irq+0x19e/0x220 [i40e]
> > >  i40e_vsi_close+0x2b/0xc0 [i40e]
> > >  i40e_close+0x11/0x20 [i40e]
> > >  __dev_close_many+0x9e/0x110
> > >  dev_close_many+0x8b/0x140
> > >  ? srso_alias_return_thunk+0x5/0xfbef5
> > >  ? free_pcppages_bulk+0xee/0x290
> > >  unregister_netdevice_many_notify+0x162/0x690
> > >  ? srso_alias_return_thunk+0x5/0xfbef5
> > >  ? free_unref_page_commit+0x19a/0x310
> > >  unregister_netdevice_queue+0xd3/0x110
> > >  unregister_netdev+0x18/0x20
> > >  i40e_vsi_release+0x84/0x2e0 [i40e]
> > >  ? srso_alias_return_thunk+0x5/0xfbef5
> > >  i40e_remove+0x15c/0x430 [i40e]
> > >  pci_device_remove+0x3e/0xb0
> > >  device_release_driver_internal+0x193/0x200
> > >  pci_stop_bus_device+0x6c/0x90
> > >  pci_stop_and_remove_bus_device+0xe/0x20
> > >  disable_slot+0x49/0x90
> > >  acpiphp_disable_and_eject_slot+0x15/0x90
> > >  hotplug_event+0xea/0x210
> > >  ? __pfx_acpiphp_hotplug_notify+0x10/0x10
> > >  acpiphp_hotplug_notify+0x22/0x80
> > >  ? __pfx_acpiphp_hotplug_notify+0x10/0x10
> > >  acpi_device_hotplug+0xb8/0x210
> > >  acpi_hotplug_work_fn+0x1a/0x30
> > >  process_one_work+0x197/0x380
> > >  worker_thread+0x2fe/0x410
> > >  ? __pfx_worker_thread+0x10/0x10
> > >  kthread+0xe0/0x100
> > >  ? __pfx_kthread+0x10/0x10
> > >  ret_from_fork+0x2c/0x50
> > >  </TASK>
> > > ---[ end trace 0000000000000000 ]---
> > >
> > > Fixes: 41c445ff0f48 ("i40e: main driver core")
> > > Tested-by: YangHang Liu <yanghliu@redhat.com>
> > > Signed-off-by: Kamal Heib <kheib@redhat.com>
> > > ---
> > >  drivers/net/ethernet/intel/i40e/i40e.h      | 1 +
> > >  drivers/net/ethernet/intel/i40e/i40e_main.c | 8 ++++++++
> > >  2 files changed, 9 insertions(+)
> > >
> > > diff --git a/drivers/net/ethernet/intel/i40e/i40e.h
> > > b/drivers/net/ethernet/intel/i40e/i40e.h
> > > index d546567e0286..910415116995 100644
> > > --- a/drivers/net/ethernet/intel/i40e/i40e.h
> > > +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> > > @@ -865,6 +865,7 @@ struct i40e_vsi {
> > >         int num_q_vectors;
> > >         int base_vector;
> > >         bool irqs_ready;
> > > +       bool legacy_msi_irq_ready;
> I'm against adding additional boolian var which can cause race conditions.
> Use I40E_FLAG_MSIX_ENA or at least add additional bit and use interlock test_and_clean/test_and_set bit functions instead.
>

Hi Aleksandr,

Thanks for your review!

This patch was inspired by the use of "irqs_ready" boolian flag in the
case that I40E_FLAG_MSIX_ENA is set, Please take a look at the following
change from 2014 for more info:

6374184672c8 ("i40e: remove irqs only when they are set up")

I'll change the patch to use your suggstion, but probably the use of
"irqs_ready" needs to be changed too.

Thanks,
Kamal
 
> 
> > >
> > >         u16 seid;               /* HW index of this VSI (absolute
> > index) */
> > >         u16 id;                 /* VSI number */
> > > diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > > b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > > index cbcfada7b357..b39004a42df2 100644
> > > --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > > +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > > @@ -4630,6 +4630,9 @@ static int i40e_vsi_request_irq(struct
> > i40e_vsi *vsi, char *basename)
> > >         if (err)
> > >                 dev_info(&pf->pdev->dev, "request_irq failed, Error
> > > %d\n", err);
> > >
> > > +       if (!test_bit(I40E_FLAG_MSIX_ENA, pf->flags) && !err)
> > > +               vsi->legacy_msi_irq_ready = true;
> > > +
> > >         return err;
> > >  }
> > >
> > > @@ -5061,6 +5064,10 @@ static void i40e_vsi_free_irq(struct i40e_vsi
> > *vsi)
> > >                         }
> > >                 }
> > >         } else {
> > > +               if (!vsi->legacy_msi_irq_ready)
> > > +                       return;
> > > +
> > > +               vsi->legacy_msi_irq_ready = false;
> > >                 free_irq(pf->pdev->irq, pf);
> > >
> > >                 val = rd32(hw, I40E_PFINT_LNKLST0); @@ -11519,6
> > > +11526,7 @@ static int i40e_vsi_mem_alloc(struct i40e_pf *pf, enum
> > i40e_vsi_type type)
> > >         vsi->work_limit = I40E_DEFAULT_IRQ_WORK;
> > >         hash_init(vsi->mac_filter_hash);
> > >         vsi->irqs_ready = false;
> > > +       vsi->legacy_msi_irq_ready = false;
> > >
> > >         if (type == I40E_VSI_MAIN) {
> > >                 vsi->af_xdp_zc_qps = bitmap_zalloc(pf->num_lan_qps,
> > > GFP_KERNEL);
> > > --
> > > 2.46.0
> > >
> 

