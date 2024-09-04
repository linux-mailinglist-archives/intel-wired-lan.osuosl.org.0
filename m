Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F1896C1DD
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 17:12:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 203FA40500;
	Wed,  4 Sep 2024 15:12:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NAF1lmw4xUke; Wed,  4 Sep 2024 15:12:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6832403F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725462762;
	bh=eeBvrDYmE2uJeWqEXDQe+9yDTondtgA1onuCHQ/iUnY=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HP6pDmqoFAffSgKacIWXc8nvP922lKE/e8RjoxDbsJ4g9nRysIF6aJWKhBmGZxGUf
	 odf/ZAqLYQ6owaJRwpowyP/s5k4qpD5or0L/fONKmlpmsuEL4IFhB7NQ42jyRTNHYR
	 4JBrKJzn/ay9owAOmUuE9BFYXukneU31N52BnM26m0fojNRYLVNzDX6cowLt6QP6jR
	 HioGFS6uC7ymdAdPOBRMfkaLsPEfE/6jltdqbLN21IXvTdJSVfW3sgwDuEbWl5CnKa
	 Y02GEY+RnFDblyOw9s/9s/So6rFkk2w06CJ0Yg8ynVu0oq+55ViLVBGdqFrNgDLMp1
	 LzUq+sYtfxheg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6832403F9;
	Wed,  4 Sep 2024 15:12:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4E2171BF487
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 02:36:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3A45A4017A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 02:36:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lujThWeZkTeY for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 02:36:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=yanghliu@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BBC994015F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBC994015F
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BBC994015F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 02:36:46 +0000 (UTC)
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com
 [209.85.221.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-616-4ncvX66NPvGn88_DRaeEuA-1; Tue, 03 Sep 2024 22:36:44 -0400
X-MC-Unique: 4ncvX66NPvGn88_DRaeEuA-1
Received: by mail-vk1-f200.google.com with SMTP id
 71dfb90a1353d-4fcdc7112b5so1514080e0c.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 03 Sep 2024 19:36:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725417404; x=1726022204;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=eeBvrDYmE2uJeWqEXDQe+9yDTondtgA1onuCHQ/iUnY=;
 b=vvAtzqbsUhZZ8Oho5151cDSOts7rdEN1eKkWTDry44vqFC7e4sBwpHWVomAZGkAFmk
 vuH3WYROpzfpckWliPagfSOeV5t53nawJVYrwJNFy0LGzXK0YmyLUIqkgF2YLC6fm86B
 am4RcXlATFnqqgH4JUmZkvdDbwaLpR4mrD8eb9CGw39hRHMisfhjd464GsMoPbmDz9wt
 253M4TKOS5OEPmZDZWS7yHInGguSdajMSnj/hY8T89kP99Khrh69zJpg84HbMOpIVcKY
 RUNJn5zm2393PDQRWsZo8KF5NPPcUL99nUtlexTbcAi9PQVerKYdPBwBuMRiLT1Pt5x5
 PtpA==
X-Gm-Message-State: AOJu0YwtUy8kmMrqPHH7iIRnDoRj/Ojo+jJdIb7NHTuyLi7rz3sJ2boz
 9O9T1m/4emoUrHOq0Uu4BRFxqVyoZAspWzkdSvRtNbKgn+Yhg6JMrjtH95Lp1j3bJBVG8S9HeJ1
 6Ow94efcaM8OLa9e7x8WdRsuylEsv91CHbqcYbFyTYO3j9lCrE69kLWa0pXl2pHWXTauFm9o817
 I+exlkf1a89rsg0kH/9tpMFEy6JtW0ESWzGlwQmf9u8g==
X-Received: by 2002:a05:6122:3c8a:b0:4f5:1a43:de4f with SMTP id
 71dfb90a1353d-4fff16bf26dmr18429673e0c.13.1725417404070; 
 Tue, 03 Sep 2024 19:36:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFyl1XxEeSYARv69W9/sEdN1wU+kJTQdggRRGcttj5aDMvQTAShTs7AkPJ0x4+YDdzogEx1Uo+orcw+GWy39DM=
X-Received: by 2002:a05:6122:3c8a:b0:4f5:1a43:de4f with SMTP id
 71dfb90a1353d-4fff16bf26dmr18429649e0c.13.1725417403642; Tue, 03 Sep 2024
 19:36:43 -0700 (PDT)
MIME-Version: 1.0
References: <20240903182555.1253466-1-kheib@redhat.com>
In-Reply-To: <20240903182555.1253466-1-kheib@redhat.com>
From: YangHang Liu <yanghliu@redhat.com>
Date: Wed, 4 Sep 2024 10:36:32 +0800
Message-ID: <CAGYh1E_tbTY5U1Uwpszw7KeUTaKXV0+Lw4AUgBFdsTbx=Gb73A@mail.gmail.com>
To: Kamal Heib <kheib@redhat.com>, Chao Yang <chayang@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Wed, 04 Sep 2024 15:12:38 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1725417405;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=eeBvrDYmE2uJeWqEXDQe+9yDTondtgA1onuCHQ/iUnY=;
 b=IgUcTTeufGuF5iB87wy+LLRPMQD+wDGDvQ5Ld7ml1NSxb7Rc+Xq2Mk1AzYNN5MTd7Xwdxb
 PRbBkms2kbPRDqEncMPN8WksuUoGJMPvmN7B0QD66yH24ym1nRGH+BlHGZ0QwDfwP/puZm
 IWBUrSnuTHOb16qkHvhG+wPguoIzKG4=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=IgUcTTeu
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
Cc: Ivan Vecera <ivecera@redhat.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This issue can be reproduced by hot-unplugging the INTx i40e PF.

The Call Trace will disappear after using Kamal's fix.

Tested-by: Yanghang Liu<yanghliu@redhat.com>



On Wed, Sep 4, 2024 at 2:26=E2=80=AFAM Kamal Heib <kheib@redhat.com> wrote:
>
> Avoid the following warning when trying to free an already freed IRQ,
> The issue happens when trying to call i40e_remove() twice from two
> different contexts which will lead to calling i40e_vsi_free_irq() twice,
> Fix the issue by using a flag to mark that the IRQ has already been freed=
.
>
> i40e 0000:07:00.0: i40e_ptp_stop: removed PHC on enp7s0
> ------------[ cut here ]------------
> Trying to free already-free IRQ 0
> WARNING: CPU: 2 PID: 12 at kernel/irq/manage.c:1868 __free_irq+0x1e3/0x35=
0
> Modules linked in: nft_fib_inet nft_fib_ipv4 nft_fib_ipv6 nft_fib nft_rej=
ect_inet nf_reject_ipv4 nf_reject_ipv6 nft_reject nft_ct nft_chain_nat nf_n=
at nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 rfkill ip_set nf_tables nfnet=
link vfat fat intel_rapl_msr intel_rapl_common kvm_amd ccp iTCO_wdt iTCO_ve=
ndor_support kvm i2c_i801 pcspkr i40e lpc_ich virtio_gpu i2c_smbus virtio_d=
ma_buf drm_shmem_helper drm_kms_helper virtio_balloon joydev drm fuse xfs l=
ibcrc32c ahci crct10dif_pclmul libahci crc32_pclmul crc32c_intel virtio_net=
 libata virtio_blk ghash_clmulni_intel net_failover virtio_console failover=
 serio_raw dm_mirror dm_region_hash dm_log dm_mod
> CPU: 2 PID: 12 Comm: kworker/u16:1 Kdump: loaded Not tainted 5.14.0-478.e=
l9.x86_64 #1
> Hardware name: Red Hat KVM/RHEL, BIOS edk2-20240524-1.el9 05/24/2024
> Workqueue: kacpi_hotplug acpi_hotplug_work_fn
> RIP: 0010:__free_irq+0x1e3/0x350
> Code: 00 00 48 8b bb a8 01 00 00 e8 09 74 02 00 49 8b 7c 24 30 e8 8f 7c 1=
d 00 eb 35 8b 74 24 04 48 c7 c7 50 a3 61 92 e8 cd 99 f6 ff <0f> 0b 4c 89 fe=
 48 89 ef e8 30 aa b3 00 48 8b 43 40 48 8b 40 78 48
> RSP: 0018:ffffb971c0077ac8 EFLAGS: 00010086
> RAX: 0000000000000000 RBX: ffff8b594193ee00 RCX: 0000000000000027
> RDX: 0000000000000027 RSI: 00000000ffff7fff RDI: ffff8b59bcf208c8
> RBP: ffff8b594193eec4 R08: 0000000000000000 R09: ffffb971c0077970
> R10: ffffb971c0077968 R11: ffffffff931e7c28 R12: ffff8b5944946000
> R13: ffff8b594193ef80 R14: ffff8b5944946000 R15: 0000000000000246
> FS:  0000000000000000(0000) GS:ffff8b59bcf00000(0000) knlGS:0000000000000=
000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 00007f11eb064000 CR3: 000000000ad40004 CR4: 0000000000770ef0
> PKRU: 55555554
> Call Trace:
>  <TASK>
>  ? srso_alias_return_thunk+0x5/0xfbef5
>  ? show_trace_log_lvl+0x26e/0x2df
>  ? show_trace_log_lvl+0x26e/0x2df
>  ? free_irq+0x33/0x70
>  ? __free_irq+0x1e3/0x350
>  ? __warn+0x7e/0xd0
>  ? __free_irq+0x1e3/0x350
>  ? report_bug+0x100/0x140
>  ? srso_alias_return_thunk+0x5/0xfbef5
>  ? handle_bug+0x3c/0x70
>  ? exc_invalid_op+0x14/0x70
>  ? asm_exc_invalid_op+0x16/0x20
>  ? __free_irq+0x1e3/0x350
>  ? __free_irq+0x1e3/0x350
>  free_irq+0x33/0x70
>  i40e_vsi_free_irq+0x19e/0x220 [i40e]
>  i40e_vsi_close+0x2b/0xc0 [i40e]
>  i40e_close+0x11/0x20 [i40e]
>  __dev_close_many+0x9e/0x110
>  dev_close_many+0x8b/0x140
>  ? srso_alias_return_thunk+0x5/0xfbef5
>  ? free_pcppages_bulk+0xee/0x290
>  unregister_netdevice_many_notify+0x162/0x690
>  ? srso_alias_return_thunk+0x5/0xfbef5
>  ? free_unref_page_commit+0x19a/0x310
>  unregister_netdevice_queue+0xd3/0x110
>  unregister_netdev+0x18/0x20
>  i40e_vsi_release+0x84/0x2e0 [i40e]
>  ? srso_alias_return_thunk+0x5/0xfbef5
>  i40e_remove+0x15c/0x430 [i40e]
>  pci_device_remove+0x3e/0xb0
>  device_release_driver_internal+0x193/0x200
>  pci_stop_bus_device+0x6c/0x90
>  pci_stop_and_remove_bus_device+0xe/0x20
>  disable_slot+0x49/0x90
>  acpiphp_disable_and_eject_slot+0x15/0x90
>  hotplug_event+0xea/0x210
>  ? __pfx_acpiphp_hotplug_notify+0x10/0x10
>  acpiphp_hotplug_notify+0x22/0x80
>  ? __pfx_acpiphp_hotplug_notify+0x10/0x10
>  acpi_device_hotplug+0xb8/0x210
>  acpi_hotplug_work_fn+0x1a/0x30
>  process_one_work+0x197/0x380
>  worker_thread+0x2fe/0x410
>  ? __pfx_worker_thread+0x10/0x10
>  kthread+0xe0/0x100
>  ? __pfx_kthread+0x10/0x10
>  ret_from_fork+0x2c/0x50
>  </TASK>
> ---[ end trace 0000000000000000 ]---
>
> Fixes: 41c445ff0f48 ("i40e: main driver core")
> Tested-by: YangHang Liu <yanghliu@redhat.com>
> Signed-off-by: Kamal Heib <kheib@redhat.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h      | 1 +
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 8 ++++++++
>  2 files changed, 9 insertions(+)
>
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/etherne=
t/intel/i40e/i40e.h
> index d546567e0286..910415116995 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -865,6 +865,7 @@ struct i40e_vsi {
>         int num_q_vectors;
>         int base_vector;
>         bool irqs_ready;
> +       bool legacy_msi_irq_ready;
>
>         u16 seid;               /* HW index of this VSI (absolute index) =
*/
>         u16 id;                 /* VSI number */
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/et=
hernet/intel/i40e/i40e_main.c
> index cbcfada7b357..b39004a42df2 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -4630,6 +4630,9 @@ static int i40e_vsi_request_irq(struct i40e_vsi *vs=
i, char *basename)
>         if (err)
>                 dev_info(&pf->pdev->dev, "request_irq failed, Error %d\n"=
, err);
>
> +       if (!test_bit(I40E_FLAG_MSIX_ENA, pf->flags) && !err)
> +               vsi->legacy_msi_irq_ready =3D true;
> +
>         return err;
>  }
>
> @@ -5061,6 +5064,10 @@ static void i40e_vsi_free_irq(struct i40e_vsi *vsi=
)
>                         }
>                 }
>         } else {
> +               if (!vsi->legacy_msi_irq_ready)
> +                       return;
> +
> +               vsi->legacy_msi_irq_ready =3D false;
>                 free_irq(pf->pdev->irq, pf);
>
>                 val =3D rd32(hw, I40E_PFINT_LNKLST0);
> @@ -11519,6 +11526,7 @@ static int i40e_vsi_mem_alloc(struct i40e_pf *pf,=
 enum i40e_vsi_type type)
>         vsi->work_limit =3D I40E_DEFAULT_IRQ_WORK;
>         hash_init(vsi->mac_filter_hash);
>         vsi->irqs_ready =3D false;
> +       vsi->legacy_msi_irq_ready =3D false;
>
>         if (type =3D=3D I40E_VSI_MAIN) {
>                 vsi->af_xdp_zc_qps =3D bitmap_zalloc(pf->num_lan_qps, GFP=
_KERNEL);
> --
> 2.46.0
>

