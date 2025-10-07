Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E8204BC6AE5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Oct 2025 23:27:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 89F6440D9A;
	Wed,  8 Oct 2025 21:27:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yRZ06uFFiM8Y; Wed,  8 Oct 2025 21:27:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C5CA40D96
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759958864;
	bh=W+JidXosakX2VeiW3D08a668j/IcphI3xJ+XGffiOSQ=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1WbN52i63AoeRVxlbVr/v/SSR3JW4awYBJYFEaIdNqJs476nc6L0Klh84d5rd7jPv
	 PkLjdBK6gNPjPxzz3xpBr+wQoZjN7ww2+iLneZWgfthAcwXSNmOHiiC3OjygxIpzkn
	 UYLo/pVIUMeGX3VUMyrNDKjARLVBob88VgDcWnZeUyvORRHngPgRnCIqR2lnqrkX5e
	 fRcXwFisgzkVEhodLVbYqLIQTkdUVCIdedEXGl11EX1DFXGK6tD647otsDsd9hPLN9
	 p3rjmbKEjZdaSxoI/X7/pWvnGpSqa2GdVKUI8Wuvaa79BgPcL34BC0uQzb+PD1seNH
	 fkh0BaM/+OXIw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C5CA40D96;
	Wed,  8 Oct 2025 21:27:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8856C9DA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Oct 2025 06:51:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 79E066179F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Oct 2025 06:51:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g-8KJm1nh-Hw for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Oct 2025 06:51:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::832; helo=mail-qt1-x832.google.com;
 envelope-from=glider@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EA5406177C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA5406177C
Received: from mail-qt1-x832.google.com (mail-qt1-x832.google.com
 [IPv6:2607:f8b0:4864:20::832])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EA5406177C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Oct 2025 06:51:50 +0000 (UTC)
Received: by mail-qt1-x832.google.com with SMTP id
 d75a77b69052e-4e56cd8502aso61637191cf.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 06 Oct 2025 23:51:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1759819909; x=1760424709;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=W+JidXosakX2VeiW3D08a668j/IcphI3xJ+XGffiOSQ=;
 b=XKPzLd1gTQ/URDK+41YK+hGIM+8LysLFk6MlDMngzg7XdBwf547gtAAC1oBqgL30Mi
 SMvREyjzetTzF7k9bAq/XW19/NxYUrh3ZGIJt7YKHsU7QZXReL0dv4KF5QPBeI+wHHMv
 PU3pbmgvpgOLUjJwQKgNS0tFFaaQ9/npLrXmEsdeCtYlnEw+eNI885X8cb/soWTVZUOz
 /z/CUU/JP3EZpegn2WJUZhnIcOBvXG74hS7Jyu1g8SwQ9RMfPwvrW/AzSeBfWXNp63VV
 UhyPVPcovR23dmywgU/vtq37o3eJunun9ROQ5Eg+N9Vjv/LeTiBhISbLQFln18BHQLDe
 F7XA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUzPdev3YyuzdnkHd78/8qda8o+1GSarkkIJUCqmbNszsbPUh79L8F2wywiNv3K1Gtguzr/DPCAbzEoeqFDED4=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yxu6e0qsZXCsyd9BWVZJ/AwdB1/uhyL5iW1n51P8ipbcirpduFH
 iJrpR08bZ4kELU89Czk3v4pwH9GnRzGQ7l/XHKRXCQeo08B3nJpiwwF/mSzTIqi3B+X8DZcu6EE
 XP5xDmKdolw00RHiYkyOCjiuhwF6Tjd1DhzPWE+UB
X-Gm-Gg: ASbGncssMxtE73v3RZ123PFvxOCuPGH1h2eALIlZ8EhX+3dfrQClrtJtSW6Nhc4BrjN
 3C3FJQfu+QwzAR6uwcud1zrO6EJ41m9BfI/kX6RPS8H4dELVVlRDN1e6rN3iOKFxGIe32vaQEh/
 YLwGL5MYBZ2/GNUADobaWEdvqhOdGoM8cCYlpvtwwhCkxckIX1VHHjjg9DbMzOFeKHWxr0g648g
 agVWS3q2lqN5/u/KJYfSq5GZUktqL6ARFCE/R1CrxGfU3YTzPoJIAJsUwd3TuJr0G0OoEdx8i3h
 klE=
X-Google-Smtp-Source: AGHT+IFeofBP/c+wJwsHC20YK3rHFH3MJrj2b4okMyxd0qNeu44w+ajjQ6HoWelQQFWldIezOCpuA/DZ5AI17I1LleI=
X-Received: by 2002:ac8:5885:0:b0:4d3:1b4f:dda1 with SMTP id
 d75a77b69052e-4e576b15512mr188508481cf.61.1759819909054; Mon, 06 Oct 2025
 23:51:49 -0700 (PDT)
MIME-Version: 1.0
References: <20250925223656.1894710-1-nogikh@google.com>
In-Reply-To: <20250925223656.1894710-1-nogikh@google.com>
From: Alexander Potapenko <glider@google.com>
Date: Tue, 7 Oct 2025 08:51:12 +0200
X-Gm-Features: AS18NWCyXCXj_i81r8vLTXVuUBRBEcFIsjxfqzy_6Tl-otD9cIoqcrjJwpSjR4U
Message-ID: <CAG_fn=U3Rjd_0zfCJE-vuU3Htbf2fRP_GYczdYjJJ1W5o30+UQ@mail.gmail.com>
To: Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Leon Romanovsky <leonro@nvidia.com>, mhklinux@outlook.com
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, 
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 syzkaller-bugs@googlegroups.com, Aleksandr Nogikh <nogikh@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Wed, 08 Oct 2025 21:27:42 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1759819909; x=1760424709; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=W+JidXosakX2VeiW3D08a668j/IcphI3xJ+XGffiOSQ=;
 b=qq/T2I20EnZCTQr3MgezmfqJepUprx5Izlr3S0oQDWvcKQmSA2OwNx+v8ikVDOWy4G
 xIq2RBE12cY58yBNN4/9J3HvuHLsjbfnfzhPdzuBxNGueHKU8IsAzeIiw7lIUSP1neT0
 SptP3FshCJnocUX6S6CUECA70jI1RWqgNNTqFdHLlxq5VY9UICou34aZ1/N+S0OykncA
 qBES23xPRO5njGpKJkwJD8l22sS4psuvPaVY6ASFuqYwpZy2wIWCVSonw+L5cRyV4YI9
 Q1fW6zHMTJ4YQBYkyCL3qDjxAMUQGVVzJSl86mofEWr4Zo+AJUHbgI4NjcFXV+QrckrC
 A1qg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=qq/T2I20
Subject: Re: [Intel-wired-lan] KMSAN: uninit-value in eth_type_trans
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

On Fri, Sep 26, 2025 at 12:36=E2=80=AFAM Aleksandr Nogikh <nogikh@google.co=
m> wrote:
>
> Hello net developers,

CCing DMA developers, as this seems to be a generic problem.
See the question below, after the KMSAN report.

> I hit the following kernel crash when I try to boot a CONFIG_KMSAN=3Dy ke=
rnel on qemu:
>
> KMSAN: uninit-value in eth_type_trans
>
> Could you please have a look?
>
> Kernel: torvalds
> Commit: cec1e6e5d1ab33403b809f79cd20d6aff124ccfe
> Config: https://raw.githubusercontent.com/google/syzkaller/refs/heads/mas=
ter/dashboard/config/linux/upstream-kmsan.config
>
> Qemu command to reproduce:
>
> qemu-system-x86_64 -m 8G -smp 2,sockets=3D2,cores=3D1 -machine pc-q35-10.=
0 \
> -enable-kvm -display none -serial stdio -snapshot \
> -device virtio-blk-pci,drive=3Dmyhd -drive file=3D~/buildroot_amd64_2024.=
09,format=3Draw,if=3Dnone,id=3Dmyhd \
> -kernel ~/linux/arch/x86/boot/bzImage -append "root=3D/dev/vda1" -cpu max=
 \
> -net nic,model=3De1000 -net user,host=3D10.0.2.10,hostfwd=3Dtcp:127.0.0.1=
:10021-:22
>
> The command used the buildroot image below:
> $ wget 'https://storage.googleapis.com/syzkaller/images/buildroot_amd64_2=
024.09.gz'
> $ gunzip buildroot_amd64_2024.09.gz
>
> Full symbolized report:
>
> BUG: KMSAN: uninit-value in eth_skb_pkt_type include/linux/etherdevice.h:=
627 [inline]
> BUG: KMSAN: uninit-value in eth_type_trans+0x4ee/0x980 net/ethernet/eth.c=
:165
>  eth_skb_pkt_type include/linux/etherdevice.h:627 [inline]
>  eth_type_trans+0x4ee/0x980 net/ethernet/eth.c:165
>  e1000_receive_skb drivers/net/ethernet/intel/e1000/e1000_main.c:4005 [in=
line]
>  e1000_clean_rx_irq+0x1256/0x1cf0 drivers/net/ethernet/intel/e1000/e1000_=
main.c:4465
>  e1000_clean+0x1e4b/0x5f10 drivers/net/ethernet/intel/e1000/e1000_main.c:=
3807
>  __napi_poll+0xda/0x850 net/core/dev.c:7506
>  napi_poll net/core/dev.c:7569 [inline]
>  net_rx_action+0xa56/0x1b00 net/core/dev.c:7696
>  handle_softirqs+0x166/0x6e0 kernel/softirq.c:579
>  __do_softirq kernel/softirq.c:613 [inline]
>  invoke_softirq kernel/softirq.c:453 [inline]
>  __irq_exit_rcu+0x66/0x180 kernel/softirq.c:680
>  irq_exit_rcu+0x12/0x20 kernel/softirq.c:696
>  common_interrupt+0x99/0xb0 arch/x86/kernel/irq.c:318
>  asm_common_interrupt+0x2b/0x40 arch/x86/include/asm/idtentry.h:693
>  native_safe_halt arch/x86/include/asm/irqflags.h:48 [inline]
>  pv_native_safe_halt+0x17/0x20 arch/x86/kernel/paravirt.c:81
>  arch_safe_halt arch/x86/kernel/process.c:756 [inline]
>  default_idle+0xd/0x20 arch/x86/kernel/process.c:757
>  arch_cpu_idle+0xd/0x20 arch/x86/kernel/process.c:794
>  default_idle_call+0x41/0x70 kernel/sched/idle.c:122
>  cpuidle_idle_call kernel/sched/idle.c:190 [inline]
>  do_idle+0x1dc/0x790 kernel/sched/idle.c:330
>  cpu_startup_entry+0x60/0x80 kernel/sched/idle.c:428
>  rest_init+0x1df/0x260 init/main.c:744
>  start_kernel+0x76e/0x960 init/main.c:1097
>  x86_64_start_reservations+0x28/0x30 arch/x86/kernel/head64.c:307
>  x86_64_start_kernel+0x139/0x140 arch/x86/kernel/head64.c:288
>  common_startup_64+0x13e/0x147
>
> Uninit was stored to memory at:
>  skb_put_data include/linux/skbuff.h:2753 [inline]
>  e1000_copybreak drivers/net/ethernet/intel/e1000/e1000_main.c:4339 [inli=
ne]
>  e1000_clean_rx_irq+0x870/0x1cf0 drivers/net/ethernet/intel/e1000/e1000_m=
ain.c:4384
>  e1000_clean+0x1e4b/0x5f10 drivers/net/ethernet/intel/e1000/e1000_main.c:=
3807
>  __napi_poll+0xda/0x850 net/core/dev.c:7506
>  napi_poll net/core/dev.c:7569 [inline]
>  net_rx_action+0xa56/0x1b00 net/core/dev.c:7696
>  handle_softirqs+0x166/0x6e0 kernel/softirq.c:579
>  __do_softirq kernel/softirq.c:613 [inline]
>  invoke_softirq kernel/softirq.c:453 [inline]
>  __irq_exit_rcu+0x66/0x180 kernel/softirq.c:680
>  irq_exit_rcu+0x12/0x20 kernel/softirq.c:696
>  common_interrupt+0x99/0xb0 arch/x86/kernel/irq.c:318
>  asm_common_interrupt+0x2b/0x40 arch/x86/include/asm/idtentry.h:693
>
> Uninit was stored to memory at:
>  swiotlb_bounce+0x470/0x640 kernel/dma/swiotlb.c:-1
>  __swiotlb_sync_single_for_cpu+0x9e/0xc0 kernel/dma/swiotlb.c:1567
>  swiotlb_sync_single_for_cpu include/linux/swiotlb.h:279 [inline]
>  dma_direct_sync_single_for_cpu kernel/dma/direct.h:77 [inline]
>  __dma_sync_single_for_cpu+0x50d/0x710 kernel/dma/mapping.c:370
>  dma_sync_single_for_cpu include/linux/dma-mapping.h:381 [inline]
>  e1000_copybreak drivers/net/ethernet/intel/e1000/e1000_main.c:4336 [inli=
ne]
>  e1000_clean_rx_irq+0x7dc/0x1cf0 drivers/net/ethernet/intel/e1000/e1000_m=
ain.c:4384
>  e1000_clean+0x1e4b/0x5f10 drivers/net/ethernet/intel/e1000/e1000_main.c:=
3807
>  __napi_poll+0xda/0x850 net/core/dev.c:7506
>  napi_poll net/core/dev.c:7569 [inline]
>  net_rx_action+0xa56/0x1b00 net/core/dev.c:7696
>  handle_softirqs+0x166/0x6e0 kernel/softirq.c:579
>  __do_softirq kernel/softirq.c:613 [inline]
>  invoke_softirq kernel/softirq.c:453 [inline]
>  __irq_exit_rcu+0x66/0x180 kernel/softirq.c:680
>  irq_exit_rcu+0x12/0x20 kernel/softirq.c:696
>  common_interrupt+0x99/0xb0 arch/x86/kernel/irq.c:318
>  asm_common_interrupt+0x2b/0x40 arch/x86/include/asm/idtentry.h:693
>
> Uninit was stored to memory at:
>  swiotlb_bounce+0x470/0x640 kernel/dma/swiotlb.c:-1
>  swiotlb_tbl_map_single+0x2956/0x2b20 kernel/dma/swiotlb.c:1439
>  swiotlb_map+0x349/0x1050 kernel/dma/swiotlb.c:1584
>  dma_direct_map_page kernel/dma/direct.h:-1 [inline]
>  dma_map_page_attrs+0x614/0xef0 kernel/dma/mapping.c:169
>  dma_map_single_attrs include/linux/dma-mapping.h:469 [inline]
>  e1000_alloc_rx_buffers+0x96d/0x1600 drivers/net/ethernet/intel/e1000/e10=
00_main.c:4616
>  e1000_configure+0x16fe/0x1930 drivers/net/ethernet/intel/e1000/e1000_mai=
n.c:377
>  e1000_open+0x985/0x14d0 drivers/net/ethernet/intel/e1000/e1000_main.c:13=
88
>  __dev_open+0x7c2/0xc40 net/core/dev.c:1682
>  __dev_change_flags+0x3ae/0x9b0 net/core/dev.c:9549
>  netif_change_flags+0x8d/0x1e0 net/core/dev.c:9612
>  dev_change_flags+0x18c/0x320 net/core/dev_api.c:68
>  devinet_ioctl+0x162d/0x2570 net/ipv4/devinet.c:1199
>  inet_ioctl+0x4c0/0x6f0 net/ipv4/af_inet.c:1001
>  sock_do_ioctl+0x9f/0x480 net/socket.c:1238
>  sock_ioctl+0x70b/0xd60 net/socket.c:1359
>  vfs_ioctl fs/ioctl.c:51 [inline]
>  __do_sys_ioctl fs/ioctl.c:598 [inline]
>  __se_sys_ioctl+0x23c/0x400 fs/ioctl.c:584
>  __x64_sys_ioctl+0x97/0xe0 fs/ioctl.c:584
>  x64_sys_call+0x1cbc/0x3e20 arch/x86/include/generated/asm/syscalls_64.h:=
17
>  do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
>  do_syscall_64+0xd9/0x210 arch/x86/entry/syscall_64.c:94
>  entry_SYSCALL_64_after_hwframe+0x77/0x7f
>
> Uninit was created at:
>  __alloc_frozen_pages_noprof+0x648/0xe80 mm/page_alloc.c:5171
>  __alloc_pages_noprof+0x41/0xd0 mm/page_alloc.c:5182
>  __page_frag_cache_refill+0x57/0x2a0 mm/page_frag_cache.c:59
>  __page_frag_alloc_align+0xd0/0x690 mm/page_frag_cache.c:103
>  __napi_alloc_frag_align net/core/skbuff.c:248 [inline]
>  __netdev_alloc_frag_align+0x1b7/0x1f0 net/core/skbuff.c:269
>  netdev_alloc_frag include/linux/skbuff.h:3408 [inline]
>  e1000_alloc_frag drivers/net/ethernet/intel/e1000/e1000_main.c:2074 [inl=
ine]
>  e1000_alloc_rx_buffers+0x276/0x1600 drivers/net/ethernet/intel/e1000/e10=
00_main.c:4584
>  e1000_configure+0x16fe/0x1930 drivers/net/ethernet/intel/e1000/e1000_mai=
n.c:377
>  e1000_open+0x985/0x14d0 drivers/net/ethernet/intel/e1000/e1000_main.c:13=
88
>  __dev_open+0x7c2/0xc40 net/core/dev.c:1682
>  __dev_change_flags+0x3ae/0x9b0 net/core/dev.c:9549
>  netif_change_flags+0x8d/0x1e0 net/core/dev.c:9612
>  dev_change_flags+0x18c/0x320 net/core/dev_api.c:68
>  devinet_ioctl+0x162d/0x2570 net/ipv4/devinet.c:1199
>  inet_ioctl+0x4c0/0x6f0 net/ipv4/af_inet.c:1001
>  sock_do_ioctl+0x9f/0x480 net/socket.c:1238
>  sock_ioctl+0x70b/0xd60 net/socket.c:1359
>  vfs_ioctl fs/ioctl.c:51 [inline]
>  __do_sys_ioctl fs/ioctl.c:598 [inline]
>  __se_sys_ioctl+0x23c/0x400 fs/ioctl.c:584
>  __x64_sys_ioctl+0x97/0xe0 fs/ioctl.c:584
>  x64_sys_call+0x1cbc/0x3e20 arch/x86/include/generated/asm/syscalls_64.h:=
17
>  do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
>  do_syscall_64+0xd9/0x210 arch/x86/entry/syscall_64.c:94
>  entry_SYSCALL_64_after_hwframe+0x77/0x7f

Folks, as far as I understand, dma_direct_sync_single_for_cpu() and
dma_direct_sync_single_for_device() are the places where we send data
to or from the device.
Should we add KMSAN annotations to those functions to catch infoleaks
and mark data from devices as initialized?
