Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BA52A974825
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Sep 2024 04:15:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5FF3F406FC;
	Wed, 11 Sep 2024 02:15:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h78f5C9UjHoB; Wed, 11 Sep 2024 02:15:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5BF424070C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726020936;
	bh=zJK2v6dZzykWemEtBrvxtm20hqwvOc6CNY/SYynmKp8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DMZNfPy9vYos+DcQgkNC6eMcQO9eUah4bt96ji3hMQCXDZXXir/Uvuj0vrpCcNI2T
	 JI6XUMeH+/+gzLhLeg5T6/Ac1oEnUQeRHm+uYwXLiNAeRUmKSnnay6MkqUMLsWr4HP
	 2QjQsfUs4/6g1jJElTiwBvWfXcqnrDf5jxzp6DxGyznNAVYMQP/P/qrSwo2COnvOsk
	 aLKkq8hNLuYLZVJXQDD3Wmi9IKks1MnGzag5uOoJbp0TE8wRVEOqFCstK7p9Uy82s0
	 XJFRnLcl/e0/d2m3cM3ZyeWeSqSmilQCUw5sEf85VxeBNOJ+Gwr/B0B7N/Lxaf8CtD
	 4zYlV9lgnpVHw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5BF424070C;
	Wed, 11 Sep 2024 02:15:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1E6ED1BF30E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2024 02:15:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0CC2460908
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2024 02:15:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ni8nqb_GDA68 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Sep 2024 02:15:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=kheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9B0C7608FD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B0C7608FD
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9B0C7608FD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2024 02:15:30 +0000 (UTC)
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-224-lNul-nTsNGeKg173Q-VuCA-1; Tue, 10 Sep 2024 22:15:26 -0400
X-MC-Unique: lNul-nTsNGeKg173Q-VuCA-1
Received: by mail-qv1-f72.google.com with SMTP id
 6a1803df08f44-6c518ae847dso88794106d6.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 19:15:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726020926; x=1726625726;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=zJK2v6dZzykWemEtBrvxtm20hqwvOc6CNY/SYynmKp8=;
 b=bn9Jf0D19LErRBosGZgNTXD7BE0Pi96WkKIQjmu7595BRmvnN9q/ncQlAogx2MKobN
 ghNp2r8GFVQsJm853O3418fRWCxq2lXRVcxNbV9LIjjBWxSAOyxn/p6LziDB/ZVHQRfC
 ZVWTixYpv/UDbjoxCBcxuKuJWq6y6ZcHU3olJ6rErSwqYM4rujDpIAE+EBAVf5GUCbm3
 dZIB+66tFUKLerJGi6L7sW6vMy4S1ZVxy39MN+G6Gb1IkGYRHuZvd4kXwho61+ittJFK
 F9XbmojLV6QdeB8IhvijIrwX0wXmZWkNCL86a7J7tDnnKv8V+Sl2VeejNX7cYXUcO8hm
 i3XQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWyLoVB4ENASiauex7ejBep1M6EzqTvp9HXCyx/MTLohmqhaCTohM0DhiiTJ7STIRZSflCMuR3AUC/uvUlNfwI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyW/P5lG/+z+ZBpenNspc1GgIccMn4CnqN4164pre67jSh92gOQ
 x3+t+1/Rj8m3jYBkmZzBBIKgoXatA7P6sZbMeupXs+PEusIcdpOEsBTk1nEotIAgMTbvy7lpnO3
 4XXB21ZpHkc5NsNech7DCAK4Q/VUk7NaIHINIp3s6iy28vnjXsNRmKwu5/ieFV8jZZ2E=
X-Received: by 2002:a05:6214:390e:b0:6bf:7d3c:a64d with SMTP id
 6a1803df08f44-6c52850ddcdmr200321726d6.32.1726020925757; 
 Tue, 10 Sep 2024 19:15:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGthChNiozSVF1yumUsS51OlqZY6aOt+AgoURd3TIJ1ilLVaFQOrcfRYSbSzXud/9ub3ZhtBg==
X-Received: by 2002:a05:6214:390e:b0:6bf:7d3c:a64d with SMTP id
 6a1803df08f44-6c52850ddcdmr200321336d6.32.1726020925074; 
 Tue, 10 Sep 2024 19:15:25 -0700 (PDT)
Received: from fedora-x1 ([184.146.85.211]) by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-6c53477416esm35715006d6.107.2024.09.10.19.15.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Sep 2024 19:15:24 -0700 (PDT)
Date: Tue, 10 Sep 2024 22:15:13 -0400
From: Kamal Heib <kheib@redhat.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Message-ID: <ZuD9MRVoiN2pmmpf@fedora-x1>
References: <20240903182555.1253466-1-kheib@redhat.com>
 <CAGYh1E_tbTY5U1Uwpszw7KeUTaKXV0+Lw4AUgBFdsTbx=Gb73A@mail.gmail.com>
 <SJ0PR11MB586692C95212C29D929C0DA5E59C2@SJ0PR11MB5866.namprd11.prod.outlook.com>
 <Ztjz4ZZIP8v6iKF1@fedora-x1>
 <SJ0PR11MB5866A1A4AF2FC7216B372E14E59D2@SJ0PR11MB5866.namprd11.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <SJ0PR11MB5866A1A4AF2FC7216B372E14E59D2@SJ0PR11MB5866.namprd11.prod.outlook.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1726020929;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zJK2v6dZzykWemEtBrvxtm20hqwvOc6CNY/SYynmKp8=;
 b=L+UYWQ6QofXfeKuQQygFi3DCLqRafKr5FC+gvO6K3nL4pUZ+hnpyynqcpLnQXIutlsujLd
 Gaxi/YXsZ+RaF6F3bWkat2ZB1c8i08KowXCtP0DJ2tiRx2Y11reCeotB7DLF9HeHiIGe2p
 7rSg/GmH7YoH//bLV45EBGDZ1v1GVcw=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=L+UYWQ6Q
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

On Thu, Sep 05, 2024 at 07:51:15AM +0000, Loktionov, Aleksandr wrote:
> 
> 
> > -----Original Message-----
> > From: Kamal Heib <kheib@redhat.com>
> > Sent: Thursday, September 5, 2024 1:57 AM
> > To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> > Cc: YangHang Liu <yanghliu@redhat.com>; Chao Yang
> > <chayang@redhat.com>; ivecera <ivecera@redhat.com>;
> > netdev@vger.kernel.org; Jakub Kicinski <kuba@kernel.org>; Nguyen,
> > Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>; intel-wired-lan@lists.osuosl.org;
> > Paolo Abeni <pabeni@redhat.com>; David S . Miller
> > <davem@davemloft.net>
> > Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: Fix trying to
> > free already-freed IRQ
> > 
> > On Wed, Sep 04, 2024 at 09:00:32PM +0000, Loktionov, Aleksandr wrote:
> > >
> > >
> > > > -----Original Message-----
> > > > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On
> > Behalf
> > > > Of YangHang Liu
> > > > Sent: Wednesday, September 4, 2024 4:37 AM
> > > > To: Kamal Heib <kheib@redhat.com>; Chao Yang <chayang@redhat.com>
> > > > Cc: ivecera <ivecera@redhat.com>; netdev@vger.kernel.org; Jakub
> > > > Kicinski <kuba@kernel.org>; Nguyen, Anthony L
> > > > <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > > > <przemyslaw.kitszel@intel.com>; intel-wired-lan@lists.osuosl.org;
> > > > Paolo Abeni <pabeni@redhat.com>; David S . Miller
> > > > <davem@davemloft.net>
> > > > Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: Fix trying to
> > > > free already-freed IRQ
> > > >
> > > > This issue can be reproduced by hot-unplugging the INTx i40e PF.
> > > >
> > > > The Call Trace will disappear after using Kamal's fix.
> > > >
> > > > Tested-by: Yanghang Liu<yanghliu@redhat.com>
> > > >
> > > >
> > > >
> > > > On Wed, Sep 4, 2024 at 2:26 AM Kamal Heib <kheib@redhat.com> wrote:
> > > > >
> > > > > Avoid the following warning when trying to free an already freed
> > > > IRQ,
> > > > > The issue happens when trying to call i40e_remove() twice from
> > two
> > > > > different contexts which will lead to calling
> > i40e_vsi_free_irq()
> > > > > twice, Fix the issue by using a flag to mark that the IRQ has
> > > > already been freed.
> > > > >
> > > > > i40e 0000:07:00.0: i40e_ptp_stop: removed PHC on enp7s0
> > > > > ------------
> > > > [
> > > > > cut here ]------------ Trying to free already-free IRQ 0
> > > > > WARNING: CPU: 2 PID: 12 at kernel/irq/manage.c:1868
> > > > > __free_irq+0x1e3/0x350 Modules linked in: nft_fib_inet
> > > > > nft_fib_ipv4
> > > > > nft_fib_ipv6 nft_fib nft_reject_inet nf_reject_ipv4
> > nf_reject_ipv6
> > > > > nft_reject nft_ct nft_chain_nat nf_nat nf_conntrack
> > nf_defrag_ipv6
> > > > > nf_defrag_ipv4 rfkill ip_set nf_tables nfnetlink vfat fat
> > > > > intel_rapl_msr intel_rapl_common kvm_amd ccp iTCO_wdt
> > > > > iTCO_vendor_support kvm i2c_i801 pcspkr i40e lpc_ich virtio_gpu
> > > > > i2c_smbus virtio_dma_buf drm_shmem_helper drm_kms_helper
> > > > > virtio_balloon joydev drm fuse xfs libcrc32c ahci
> > crct10dif_pclmul
> > > > > libahci crc32_pclmul crc32c_intel virtio_net libata virtio_blk
> > > > > ghash_clmulni_intel net_failover virtio_console failover
> > serio_raw
> > > > > dm_mirror dm_region_hash dm_log dm_mod
> > > > > CPU: 2 PID: 12 Comm: kworker/u16:1 Kdump: loaded Not tainted
> > > > > 5.14.0-478.el9.x86_64 #1 Hardware name: Red Hat KVM/RHEL, BIOS
> > > > > edk2-20240524-1.el9 05/24/2024
> > > > > Workqueue: kacpi_hotplug acpi_hotplug_work_fn
> > > > > RIP: 0010:__free_irq+0x1e3/0x350
> > > > > Code: 00 00 48 8b bb a8 01 00 00 e8 09 74 02 00 49 8b 7c 24 30
> > e8
> > > > > 8f 7c 1d 00 eb 35 8b 74 24 04 48 c7 c7 50 a3 61 92 e8 cd 99 f6
> > ff
> > > > > <0f>
> > > > 0b
> > > > > 4c 89 fe 48 89 ef e8 30 aa b3 00 48 8b 43 40 48 8b 40 78 48
> > > > > RSP: 0018:ffffb971c0077ac8 EFLAGS: 00010086
> > > > > RAX: 0000000000000000 RBX: ffff8b594193ee00 RCX:
> > 0000000000000027
> > > > > RDX: 0000000000000027 RSI: 00000000ffff7fff RDI:
> > ffff8b59bcf208c8
> > > > > RBP: ffff8b594193eec4 R08: 0000000000000000 R09:
> > ffffb971c0077970
> > > > > R10: ffffb971c0077968 R11: ffffffff931e7c28 R12:
> > ffff8b5944946000
> > > > > R13: ffff8b594193ef80 R14: ffff8b5944946000 R15:
> > 0000000000000246
> > > > > FS:  0000000000000000(0000) GS:ffff8b59bcf00000(0000)
> > > > > knlGS:0000000000000000
> > > > > CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > > > > CR2: 00007f11eb064000 CR3: 000000000ad40004 CR4:
> > 0000000000770ef0
> > > > > PKRU: 55555554
> > > > > Call Trace:
> > > > >  <TASK>
> > > > >  ? srso_alias_return_thunk+0x5/0xfbef5
> > > > >  ? show_trace_log_lvl+0x26e/0x2df
> > > > >  ? show_trace_log_lvl+0x26e/0x2df
> > > > >  ? free_irq+0x33/0x70
> > > > >  ? __free_irq+0x1e3/0x350
> > > > >  ? __warn+0x7e/0xd0
> > > > >  ? __free_irq+0x1e3/0x350
> > > > >  ? report_bug+0x100/0x140
> > > > >  ? srso_alias_return_thunk+0x5/0xfbef5
> > > > >  ? handle_bug+0x3c/0x70
> > > > >  ? exc_invalid_op+0x14/0x70
> > > > >  ? asm_exc_invalid_op+0x16/0x20
> > > > >  ? __free_irq+0x1e3/0x350
> > > > >  ? __free_irq+0x1e3/0x350
> > > > >  free_irq+0x33/0x70
> > > > >  i40e_vsi_free_irq+0x19e/0x220 [i40e]
> > > > >  i40e_vsi_close+0x2b/0xc0 [i40e]
> > > > >  i40e_close+0x11/0x20 [i40e]
> > > > >  __dev_close_many+0x9e/0x110
> > > > >  dev_close_many+0x8b/0x140
> > > > >  ? srso_alias_return_thunk+0x5/0xfbef5
> > > > >  ? free_pcppages_bulk+0xee/0x290
> > > > >  unregister_netdevice_many_notify+0x162/0x690
> > > > >  ? srso_alias_return_thunk+0x5/0xfbef5
> > > > >  ? free_unref_page_commit+0x19a/0x310
> > > > >  unregister_netdevice_queue+0xd3/0x110
> > > > >  unregister_netdev+0x18/0x20
> > > > >  i40e_vsi_release+0x84/0x2e0 [i40e]  ?
> > > > > srso_alias_return_thunk+0x5/0xfbef5
> > > > >  i40e_remove+0x15c/0x430 [i40e]
> > > > >  pci_device_remove+0x3e/0xb0
> > > > >  device_release_driver_internal+0x193/0x200
> > > > >  pci_stop_bus_device+0x6c/0x90
> > > > >  pci_stop_and_remove_bus_device+0xe/0x20
> > > > >  disable_slot+0x49/0x90
> > > > >  acpiphp_disable_and_eject_slot+0x15/0x90
> > > > >  hotplug_event+0xea/0x210
> > > > >  ? __pfx_acpiphp_hotplug_notify+0x10/0x10
> > > > >  acpiphp_hotplug_notify+0x22/0x80
> > > > >  ? __pfx_acpiphp_hotplug_notify+0x10/0x10
> > > > >  acpi_device_hotplug+0xb8/0x210
> > > > >  acpi_hotplug_work_fn+0x1a/0x30
> > > > >  process_one_work+0x197/0x380
> > > > >  worker_thread+0x2fe/0x410
> > > > >  ? __pfx_worker_thread+0x10/0x10
> > > > >  kthread+0xe0/0x100
> > > > >  ? __pfx_kthread+0x10/0x10
> > > > >  ret_from_fork+0x2c/0x50
> > > > >  </TASK>
> > > > > ---[ end trace 0000000000000000 ]---
> > > > >
> > > > > Fixes: 41c445ff0f48 ("i40e: main driver core")
> > > > > Tested-by: YangHang Liu <yanghliu@redhat.com>
> > > > > Signed-off-by: Kamal Heib <kheib@redhat.com>
> > > > > ---
> > > > >  drivers/net/ethernet/intel/i40e/i40e.h      | 1 +
> > > > >  drivers/net/ethernet/intel/i40e/i40e_main.c | 8 ++++++++
> > > > >  2 files changed, 9 insertions(+)
> > > > >
> > > > > diff --git a/drivers/net/ethernet/intel/i40e/i40e.h
> > > > > b/drivers/net/ethernet/intel/i40e/i40e.h
> > > > > index d546567e0286..910415116995 100644
> > > > > --- a/drivers/net/ethernet/intel/i40e/i40e.h
> > > > > +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> > > > > @@ -865,6 +865,7 @@ struct i40e_vsi {
> > > > >         int num_q_vectors;
> > > > >         int base_vector;
> > > > >         bool irqs_ready;
> > > > > +       bool legacy_msi_irq_ready;
> > > I'm against adding additional boolian var which can cause race
> > conditions.
> > > Use I40E_FLAG_MSIX_ENA or at least add additional bit and use
> > interlock test_and_clean/test_and_set bit functions instead.
> > >
> > 
> > Hi Aleksandr,
> > 
> > Thanks for your review!
> > 
> > This patch was inspired by the use of "irqs_ready" boolian flag in the
> > case that I40E_FLAG_MSIX_ENA is set, Please take a look at the
> > following change from 2014 for more info:
> > 
> > 6374184672c8 ("i40e: remove irqs only when they are set up")
> > 
> > I'll change the patch to use your suggstion, but probably the use of
> > "irqs_ready" needs to be changed too.
> > 
> > Thanks,
> > Kamal
> 
> Thank you for pointing me to similar fix, now I see my mistake - I40E_FLAG_MSIX_ENA is pf level flag.
> Now we have a race in i40e_vsi_release() v i40e_close() and probably a better solution to use interlocked bits in i40e_vsi struct.
> 
> But for me it looks like a race on higher level -  vsi states.
> If i40e_remove() already called i40e_vsi_close() then when i40e_close() calls i40e_vsi_close() second time i40e_vsi_close() must just bail out with nothing to do. 
> Do you see my point, it's not just interrupt freeing race, it's vsi state race. We need to make i40e_vsi_close() and i40e_vsi_release() idempotent.
> 
> Proper fix should be something like:
>   Add vsi_state interlocked bit-set into vsi struct.
> 
>   Replace everywhere in i40e code sequence of two calls:
> 	i40e_vsi_close(pf->vsi[i]);
> 	i40e_vsi_release(pf->vsi[i]);
>   With single one:
> 	i40e_vsi_release(pf->vsi[i]);
> 
> i40e_vsi_release() must interlock vsi state to prevent re-entrance and double calls.
> 			must first call i40e_vsi_close()
> 
> i40e_vsi_close() must interlock vsi state to prevent re-entrance and double calls.
> 
> From my point of view this is much closer to the proper fix.
> Introducing simple race-prone bool variable is just adding one more timebomb.
> 
> With the best regards
> Alex

Hi Alex,

Thanks for your review and feedback!

I've prepared the following change based on the above suggestion, Could
you please take a look and give your feedback:

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index d546567e0286..2ed0a027ce69 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -135,6 +135,7 @@ enum i40e_vsi_state {
        __I40E_VSI_REINIT_REQUESTED,
        __I40E_VSI_DOWN_REQUESTED,
        __I40E_VSI_RELEASING,
+       __I40E_VSI_CLOSING,
        /* This must be last as it determines the size of the BITMAP */
        __I40E_VSI_STATE_SIZE__,
 };
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index cbcfada7b357..b883e187fc9b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -5233,6 +5233,10 @@ static void i40e_napi_disable_all(struct i40e_vsi *vsi)
 static void i40e_vsi_close(struct i40e_vsi *vsi)
 {
        struct i40e_pf *pf = vsi->back;
+
+       if (test_and_set_bit(__I40E_VSI_CLOSING, vsi->state))
+               return;
+
        if (!test_and_set_bit(__I40E_VSI_DOWN, vsi->state))
                i40e_down(vsi);
        i40e_vsi_free_irq(vsi);
@@ -7422,6 +7426,7 @@ static int i40e_up_complete(struct i40e_vsi *vsi)
                return err;
 
        clear_bit(__I40E_VSI_DOWN, vsi->state);
+       clear_bit(__I40E_VSI_CLOSING, vsi->state);
        i40e_napi_enable_all(vsi);
        i40e_vsi_enable_irq(vsi);

@@ -14162,7 +14167,10 @@ int i40e_vsi_release(struct i40e_vsi *vsi)
                dev_info(&pf->pdev->dev, "Can't remove PF VSI\n");
                return -ENODEV;
        }
-       set_bit(__I40E_VSI_RELEASING, vsi->state);
+
+       if (test_and_set_bit(__I40E_VSI_RELEASING, vsi->state))
+               return -ENODEV;
+
        uplink_seid = vsi->uplink_seid;
 
        if (vsi->type != I40E_VSI_SRIOV) {
@@ -16270,7 +16278,6 @@ static void i40e_remove(struct pci_dev *pdev)
         * adminq and hmc.
         */
        i40e_pf_for_each_vsi(pf, i, vsi) {
-               i40e_vsi_close(vsi);
                i40e_vsi_release(vsi);
                pf->vsi[i] = NULL;
        }


Thanks,
Kamal

> > 
> > >
> > > > >
> > > > >         u16 seid;               /* HW index of this VSI
> > (absolute
> > > > index) */
> > > > >         u16 id;                 /* VSI number */
> > > > > diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > > > > b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > > > > index cbcfada7b357..b39004a42df2 100644
> > > > > --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > > > > +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > > > > @@ -4630,6 +4630,9 @@ static int i40e_vsi_request_irq(struct
> > > > i40e_vsi *vsi, char *basename)
> > > > >         if (err)
> > > > >                 dev_info(&pf->pdev->dev, "request_irq failed,
> > > > > Error %d\n", err);
> > > > >
> > > > > +       if (!test_bit(I40E_FLAG_MSIX_ENA, pf->flags) && !err)
> > > > > +               vsi->legacy_msi_irq_ready = true;
> > > > > +
> > > > >         return err;
> > > > >  }
> > > > >
> > > > > @@ -5061,6 +5064,10 @@ static void i40e_vsi_free_irq(struct
> > > > > i40e_vsi
> > > > *vsi)
> > > > >                         }
> > > > >                 }
> > > > >         } else {
> > > > > +               if (!vsi->legacy_msi_irq_ready)
> > > > > +                       return;
> > > > > +
> > > > > +               vsi->legacy_msi_irq_ready = false;
> > > > >                 free_irq(pf->pdev->irq, pf);
> > > > >
> > > > >                 val = rd32(hw, I40E_PFINT_LNKLST0); @@ -11519,6
> > > > > +11526,7 @@ static int i40e_vsi_mem_alloc(struct i40e_pf *pf,
> > enum
> > > > i40e_vsi_type type)
> > > > >         vsi->work_limit = I40E_DEFAULT_IRQ_WORK;
> > > > >         hash_init(vsi->mac_filter_hash);
> > > > >         vsi->irqs_ready = false;
> > > > > +       vsi->legacy_msi_irq_ready = false;
> > > > >
> > > > >         if (type == I40E_VSI_MAIN) {
> > > > >                 vsi->af_xdp_zc_qps =
> > > > > bitmap_zalloc(pf->num_lan_qps, GFP_KERNEL);
> > > > > --
> > > > > 2.46.0
> > > > >
> > >
> 

