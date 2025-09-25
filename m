Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E183BA1D6C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Sep 2025 00:39:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82DFA41916;
	Thu, 25 Sep 2025 22:39:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c5NV2KtWsxoq; Thu, 25 Sep 2025 22:39:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D39E41917
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758839973;
	bh=fnlnPp5SVgoywMm6mKsvRxqefojZasCSZLs06Rb69PE=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BSrIKfqoiAGctjBAz594kiVABvgqUp2bndo/DoFHvm/3PiAqQu2C10xF1AT5SC72I
	 Z4rP3o3VYDnm+uNmFCDU7me8QAtU7yRcdjmkNPQibK+1/r0l7ncw9OEKce2MQqI1pV
	 dWM+YTZxtghkcDy10JakHTciODMmNFmbZfDXGTJHfMgxwdwS+pXhFwDYYbBLTf/ynt
	 xFvllf1RbHYHD2+HcaEU8btHeuS6/fwgC7CcnrS4icP69wLa1NLQos188fUz5y5zAU
	 vZEJEPaEMd6GR/uWTIYl1JtzqADSlViBVT65r1ewU21rFe5cLl7vnyZw5+v9z8JsDy
	 1Qtx/YFHlR+aA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D39E41917;
	Thu, 25 Sep 2025 22:39:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A76B9198
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 22:37:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 98FAF845C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 22:37:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z0z1VrThD2jQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Sep 2025 22:37:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::34a; helo=mail-wm1-x34a.google.com;
 envelope-from=3cstvaaykdzcghzbdazhhzex.vhfbgmxe-pbkxw-etgeblml.hlnhle.hkz@flex--nogikh.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5061F845BF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5061F845BF
Received: from mail-wm1-x34a.google.com (mail-wm1-x34a.google.com
 [IPv6:2a00:1450:4864:20::34a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5061F845BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 22:37:00 +0000 (UTC)
Received: by mail-wm1-x34a.google.com with SMTP id
 5b1f17b1804b1-46e36f2c502so5177025e9.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 15:37:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758839819; x=1759444619;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=fnlnPp5SVgoywMm6mKsvRxqefojZasCSZLs06Rb69PE=;
 b=jlyWneojvYoDUubSrrHQtCxHFwkXIqfNGgn9B/YdCqseRRHfS8knH0qWwrRAlCdDAj
 Mm0+mYSFBJTvD+bCEyfC11IdLPOdh+96t8d6e3OmcNzqFQZjWbFzM3kKJRNhNI4YneHj
 JULbEPyRKQg6pPyYuls1cG1B8b5m0luu6INjgeeC9AexOGYy6Hxa270lD25wsGm/KPtA
 7q2zVEpqK6b1toshOZoJFitA0feGQcIfqTxhctwwbWrx8GZuTeBlCXR4TOidmi3C0Sat
 xtMuj7bKY+JHYGehfgJ5nmOGhj6knRX4VH/IZpZ5OS+7V47f8Epdr2UEyTZSSzu1Z4PE
 w6ng==
X-Forwarded-Encrypted: i=1;
 AJvYcCUInbVhG8CEP+xU3MorsqI9yHVoHr6D8dLrEw6joozgTnENE8rB7iVpWbewOYDPfO85Cg5ygeiBKdxzYEdQJZ4=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz2QJSRHVnpjVGfDFRkHVEgs64dziXAetE75LX2AAlDk6DKpybB
 2tG46HSrWWhCu8WtpJ9S7bGGlud9ZHgb50I/oQHFJJxMJCoVXziWJcz/u7Eu30dDSSauthfKwe1
 DYeKbTA==
X-Google-Smtp-Source: AGHT+IE6eE03ybhO5FKaeiSe9kjaKIGFUexUZXA9SWxY2NL2z9iESUSTgz3k5f0JjWDQY3KSV1+PeCQBo+I=
X-Received: from wmbgx15.prod.google.com
 ([2002:a05:600c:858f:b0:46e:2121:d406])
 (user=nogikh job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:600c:a43:b0:46d:d949:daba
 with SMTP id 5b1f17b1804b1-46e329a7fe3mr53069425e9.4.1758839818992; Thu, 25
 Sep 2025 15:36:58 -0700 (PDT)
Date: Fri, 26 Sep 2025 00:36:56 +0200
Mime-Version: 1.0
X-Mailer: git-send-email 2.51.0.618.g983fd99d29-goog
Message-ID: <20250925223656.1894710-1-nogikh@google.com>
From: Aleksandr Nogikh <nogikh@google.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 syzkaller-bugs@googlegroups.com, glider@google.com
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Thu, 25 Sep 2025 22:39:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1758839819; x=1759444619; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=fnlnPp5SVgoywMm6mKsvRxqefojZasCSZLs06Rb69PE=;
 b=WstzBD2BxfwymQtvUQU0aVGUZwxLyq5OgWObZeFL2OJwVUWNq2LyikygfEajG+g9BY
 b4WAPqfKyTl0uuZd7XvNmO8WVLDjqDu4mRaRYdLpCMVB6ZGM8gxi6343jEhKwOr2HtcO
 zFxP/ZYSR6eUYlJNl1lISQsU0vfphIKYLMzHoXN8pi5OoiUkB7VgBQuHTjMsQo8kVYSY
 8Ej4JkETUAnEJoYrkrhTVZpuJggjBoP5jb499/tV+HI9hljK2/eOf93LRMHUhB1b4ppV
 yF0aR7UdoSH2wlflhsst3FOtKaDQtp8N0a8LD4PXfUJ+tkClEqZSbzbxKiPe+IP+aq6G
 Em8A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=WstzBD2B
Subject: [Intel-wired-lan] KMSAN: uninit-value in eth_type_trans
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

Hello net developers,

I hit the following kernel crash when I try to boot a CONFIG_KMSAN=y kernel on qemu:

KMSAN: uninit-value in eth_type_trans

Could you please have a look?

Kernel: torvalds
Commit: cec1e6e5d1ab33403b809f79cd20d6aff124ccfe
Config: https://raw.githubusercontent.com/google/syzkaller/refs/heads/master/dashboard/config/linux/upstream-kmsan.config

Qemu command to reproduce:

qemu-system-x86_64 -m 8G -smp 2,sockets=2,cores=1 -machine pc-q35-10.0 \
-enable-kvm -display none -serial stdio -snapshot \
-device virtio-blk-pci,drive=myhd -drive file=~/buildroot_amd64_2024.09,format=raw,if=none,id=myhd \
-kernel ~/linux/arch/x86/boot/bzImage -append "root=/dev/vda1" -cpu max \
-net nic,model=e1000 -net user,host=10.0.2.10,hostfwd=tcp:127.0.0.1:10021-:22

The command used the buildroot image below: 
$ wget 'https://storage.googleapis.com/syzkaller/images/buildroot_amd64_2024.09.gz'
$ gunzip buildroot_amd64_2024.09.gz

Full symbolized report:

BUG: KMSAN: uninit-value in eth_skb_pkt_type include/linux/etherdevice.h:627 [inline]
BUG: KMSAN: uninit-value in eth_type_trans+0x4ee/0x980 net/ethernet/eth.c:165
 eth_skb_pkt_type include/linux/etherdevice.h:627 [inline]
 eth_type_trans+0x4ee/0x980 net/ethernet/eth.c:165
 e1000_receive_skb drivers/net/ethernet/intel/e1000/e1000_main.c:4005 [inline]
 e1000_clean_rx_irq+0x1256/0x1cf0 drivers/net/ethernet/intel/e1000/e1000_main.c:4465
 e1000_clean+0x1e4b/0x5f10 drivers/net/ethernet/intel/e1000/e1000_main.c:3807
 __napi_poll+0xda/0x850 net/core/dev.c:7506
 napi_poll net/core/dev.c:7569 [inline]
 net_rx_action+0xa56/0x1b00 net/core/dev.c:7696
 handle_softirqs+0x166/0x6e0 kernel/softirq.c:579
 __do_softirq kernel/softirq.c:613 [inline]
 invoke_softirq kernel/softirq.c:453 [inline]
 __irq_exit_rcu+0x66/0x180 kernel/softirq.c:680
 irq_exit_rcu+0x12/0x20 kernel/softirq.c:696
 common_interrupt+0x99/0xb0 arch/x86/kernel/irq.c:318
 asm_common_interrupt+0x2b/0x40 arch/x86/include/asm/idtentry.h:693
 native_safe_halt arch/x86/include/asm/irqflags.h:48 [inline]
 pv_native_safe_halt+0x17/0x20 arch/x86/kernel/paravirt.c:81
 arch_safe_halt arch/x86/kernel/process.c:756 [inline]
 default_idle+0xd/0x20 arch/x86/kernel/process.c:757
 arch_cpu_idle+0xd/0x20 arch/x86/kernel/process.c:794
 default_idle_call+0x41/0x70 kernel/sched/idle.c:122
 cpuidle_idle_call kernel/sched/idle.c:190 [inline]
 do_idle+0x1dc/0x790 kernel/sched/idle.c:330
 cpu_startup_entry+0x60/0x80 kernel/sched/idle.c:428
 rest_init+0x1df/0x260 init/main.c:744
 start_kernel+0x76e/0x960 init/main.c:1097
 x86_64_start_reservations+0x28/0x30 arch/x86/kernel/head64.c:307
 x86_64_start_kernel+0x139/0x140 arch/x86/kernel/head64.c:288
 common_startup_64+0x13e/0x147

Uninit was stored to memory at:
 skb_put_data include/linux/skbuff.h:2753 [inline]
 e1000_copybreak drivers/net/ethernet/intel/e1000/e1000_main.c:4339 [inline]
 e1000_clean_rx_irq+0x870/0x1cf0 drivers/net/ethernet/intel/e1000/e1000_main.c:4384
 e1000_clean+0x1e4b/0x5f10 drivers/net/ethernet/intel/e1000/e1000_main.c:3807
 __napi_poll+0xda/0x850 net/core/dev.c:7506
 napi_poll net/core/dev.c:7569 [inline]
 net_rx_action+0xa56/0x1b00 net/core/dev.c:7696
 handle_softirqs+0x166/0x6e0 kernel/softirq.c:579
 __do_softirq kernel/softirq.c:613 [inline]
 invoke_softirq kernel/softirq.c:453 [inline]
 __irq_exit_rcu+0x66/0x180 kernel/softirq.c:680
 irq_exit_rcu+0x12/0x20 kernel/softirq.c:696
 common_interrupt+0x99/0xb0 arch/x86/kernel/irq.c:318
 asm_common_interrupt+0x2b/0x40 arch/x86/include/asm/idtentry.h:693

Uninit was stored to memory at:
 swiotlb_bounce+0x470/0x640 kernel/dma/swiotlb.c:-1
 __swiotlb_sync_single_for_cpu+0x9e/0xc0 kernel/dma/swiotlb.c:1567
 swiotlb_sync_single_for_cpu include/linux/swiotlb.h:279 [inline]
 dma_direct_sync_single_for_cpu kernel/dma/direct.h:77 [inline]
 __dma_sync_single_for_cpu+0x50d/0x710 kernel/dma/mapping.c:370
 dma_sync_single_for_cpu include/linux/dma-mapping.h:381 [inline]
 e1000_copybreak drivers/net/ethernet/intel/e1000/e1000_main.c:4336 [inline]
 e1000_clean_rx_irq+0x7dc/0x1cf0 drivers/net/ethernet/intel/e1000/e1000_main.c:4384
 e1000_clean+0x1e4b/0x5f10 drivers/net/ethernet/intel/e1000/e1000_main.c:3807
 __napi_poll+0xda/0x850 net/core/dev.c:7506
 napi_poll net/core/dev.c:7569 [inline]
 net_rx_action+0xa56/0x1b00 net/core/dev.c:7696
 handle_softirqs+0x166/0x6e0 kernel/softirq.c:579
 __do_softirq kernel/softirq.c:613 [inline]
 invoke_softirq kernel/softirq.c:453 [inline]
 __irq_exit_rcu+0x66/0x180 kernel/softirq.c:680
 irq_exit_rcu+0x12/0x20 kernel/softirq.c:696
 common_interrupt+0x99/0xb0 arch/x86/kernel/irq.c:318
 asm_common_interrupt+0x2b/0x40 arch/x86/include/asm/idtentry.h:693

Uninit was stored to memory at:
 swiotlb_bounce+0x470/0x640 kernel/dma/swiotlb.c:-1
 swiotlb_tbl_map_single+0x2956/0x2b20 kernel/dma/swiotlb.c:1439
 swiotlb_map+0x349/0x1050 kernel/dma/swiotlb.c:1584
 dma_direct_map_page kernel/dma/direct.h:-1 [inline]
 dma_map_page_attrs+0x614/0xef0 kernel/dma/mapping.c:169
 dma_map_single_attrs include/linux/dma-mapping.h:469 [inline]
 e1000_alloc_rx_buffers+0x96d/0x1600 drivers/net/ethernet/intel/e1000/e1000_main.c:4616
 e1000_configure+0x16fe/0x1930 drivers/net/ethernet/intel/e1000/e1000_main.c:377
 e1000_open+0x985/0x14d0 drivers/net/ethernet/intel/e1000/e1000_main.c:1388
 __dev_open+0x7c2/0xc40 net/core/dev.c:1682
 __dev_change_flags+0x3ae/0x9b0 net/core/dev.c:9549
 netif_change_flags+0x8d/0x1e0 net/core/dev.c:9612
 dev_change_flags+0x18c/0x320 net/core/dev_api.c:68
 devinet_ioctl+0x162d/0x2570 net/ipv4/devinet.c:1199
 inet_ioctl+0x4c0/0x6f0 net/ipv4/af_inet.c:1001
 sock_do_ioctl+0x9f/0x480 net/socket.c:1238
 sock_ioctl+0x70b/0xd60 net/socket.c:1359
 vfs_ioctl fs/ioctl.c:51 [inline]
 __do_sys_ioctl fs/ioctl.c:598 [inline]
 __se_sys_ioctl+0x23c/0x400 fs/ioctl.c:584
 __x64_sys_ioctl+0x97/0xe0 fs/ioctl.c:584
 x64_sys_call+0x1cbc/0x3e20 arch/x86/include/generated/asm/syscalls_64.h:17
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xd9/0x210 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

Uninit was created at:
 __alloc_frozen_pages_noprof+0x648/0xe80 mm/page_alloc.c:5171
 __alloc_pages_noprof+0x41/0xd0 mm/page_alloc.c:5182
 __page_frag_cache_refill+0x57/0x2a0 mm/page_frag_cache.c:59
 __page_frag_alloc_align+0xd0/0x690 mm/page_frag_cache.c:103
 __napi_alloc_frag_align net/core/skbuff.c:248 [inline]
 __netdev_alloc_frag_align+0x1b7/0x1f0 net/core/skbuff.c:269
 netdev_alloc_frag include/linux/skbuff.h:3408 [inline]
 e1000_alloc_frag drivers/net/ethernet/intel/e1000/e1000_main.c:2074 [inline]
 e1000_alloc_rx_buffers+0x276/0x1600 drivers/net/ethernet/intel/e1000/e1000_main.c:4584
 e1000_configure+0x16fe/0x1930 drivers/net/ethernet/intel/e1000/e1000_main.c:377
 e1000_open+0x985/0x14d0 drivers/net/ethernet/intel/e1000/e1000_main.c:1388
 __dev_open+0x7c2/0xc40 net/core/dev.c:1682
 __dev_change_flags+0x3ae/0x9b0 net/core/dev.c:9549
 netif_change_flags+0x8d/0x1e0 net/core/dev.c:9612
 dev_change_flags+0x18c/0x320 net/core/dev_api.c:68
 devinet_ioctl+0x162d/0x2570 net/ipv4/devinet.c:1199
 inet_ioctl+0x4c0/0x6f0 net/ipv4/af_inet.c:1001
 sock_do_ioctl+0x9f/0x480 net/socket.c:1238
 sock_ioctl+0x70b/0xd60 net/socket.c:1359
 vfs_ioctl fs/ioctl.c:51 [inline]
 __do_sys_ioctl fs/ioctl.c:598 [inline]
 __se_sys_ioctl+0x23c/0x400 fs/ioctl.c:584
 __x64_sys_ioctl+0x97/0xe0 fs/ioctl.c:584
 x64_sys_call+0x1cbc/0x3e20 arch/x86/include/generated/asm/syscalls_64.h:17
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xd9/0x210 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f


--
Aleksandr
