Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 058C8AFB791
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Jul 2025 17:38:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C555841781;
	Mon,  7 Jul 2025 15:38:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3Z4wupiu3IAk; Mon,  7 Jul 2025 15:38:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA7CD4177B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751902695;
	bh=BndOEBoapVfNSq63pGc2Fatvjm6TLSvlOrpNdKm6s/s=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MxQfcOLNZkx0aysnv2qxjKr+23AIKqgTMQxWfJDCuTqsI/PwWjZ39l3O8sS4K0Xv7
	 uNJmANT9dtGgkftrbmrBDVXaWAeJI++DmA06HEQO/tg6L47U1Sicldz6Utro/zJhc1
	 zwkXkXczp1gyZu9LzHW34hAN5gKyMaliHcuIwCt9p2HvegKSZVZwNG28Zb/96xnyWt
	 EC6MhD56AxmlXno1JYFwkfpEpOStN1lj9PxBt5SKMt7iHrIrYv2u/IScdny9w0zFsI
	 6y6fkgBqS1d6ZkzG6R866mQd+2iiqnNPqhSMi6Vv1Zd+Ahl3807OBL3v+yWZOngbg8
	 ahWMkr7K5YvRg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA7CD4177B;
	Mon,  7 Jul 2025 15:38:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9108515F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 15:38:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 770D680F57
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 15:38:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BixbV70R9wFi for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Jul 2025 15:38:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::635; helo=mail-ej1-x635.google.com;
 envelope-from=jaroslav.pulchart@gooddata.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D916780F4F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D916780F4F
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D916780F4F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 15:38:11 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id
 a640c23a62f3a-ade76b8356cso604619966b.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 07 Jul 2025 08:38:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751902690; x=1752507490;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=BndOEBoapVfNSq63pGc2Fatvjm6TLSvlOrpNdKm6s/s=;
 b=O9JstipNCAqclaJfubk4Ge1jO6+JtsIxsmYpcFqYm1pbFed6q3kNo/Ddwp4RFeSDHk
 SVN5g7MBA9+0g1C34PNBLSAmqGM0k++jZskRING0AFu1HCp/f2H2lS5xVaTn/hSyTlfN
 zHIE8FZNtOej5w5j6WOzradw3ysQoCYLQ7KK5a5q1/IFuViAN2Ic5cgMknVWo1TeUI2L
 OENH1Nvr0X/7NX8EqDAqIo2MJMKqrpiRjPlWI57Pv99DpaIXawZLO2rJbSI2aigkFcn7
 bCEelLJrw4NJXGT7lGuZ4I9YKvh+GSe+CmC1zVqZ+PltKtGJ8lJ/5h7FyHjnc0aZMUu7
 cQHw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXcqeXS4Rx3zEb+/Jnob3N32QunGVoohKJCq0JbHjnLBrMW65M0rC32thF5zFIVgdxlZOPVC9Jf54kh6P70QaU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxhHNebThBQAdkcH/Zt1FkKGh6IfcTQ0uHZuql6DQixWGXSpt+N
 JcX/r/7nOXz/CWYU0lYvKd9t8V2T9TIjj5XpGBvMbdZ4ts+UqqKtE+HnlLvzZtPuNFUBJdxSSx1
 OWyrcnaCLEgZaWBeUcjRHXGAEeLIWPUlKNAuBYJNK
X-Gm-Gg: ASbGnct5KKjvkfw5VwQ5HlPui+aHdI0XTpfv1SLRQMdk074o8LfvfeLdZebz/2Oc+q2
 tiL4vq0v66+m61SF08tQgVW2g49yBTfFSmozJ5CjezJdpz7f2NitMSD6ARJzZrXB0rxrhM/mBm4
 dtvozkAEcEnTdTDO384tOLvPZ7yseGg7xTG2FRF/BBhFut
X-Google-Smtp-Source: AGHT+IHOYUvkhEP6dzIUmY2tfJXSQI8YR+A8r99THVqSLPzK4zR2R5BW8Nq2BAnrRgerPb0REY8aMdICwnxks854qCU=
X-Received: by 2002:a17:907:3f87:b0:ae0:ad8c:a559 with SMTP id
 a640c23a62f3a-ae3fbc8c443mr1345997566b.4.1751902689476; Mon, 07 Jul 2025
 08:38:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <aGgHka8Nm8S3fKQK@localhost.localdomain>
 <CAK8fFZ6KzyfswFE=qj6pz-18QZ16swdwyFfTf=4e_0+sPLyUcg@mail.gmail.com>
In-Reply-To: <CAK8fFZ6KzyfswFE=qj6pz-18QZ16swdwyFfTf=4e_0+sPLyUcg@mail.gmail.com>
From: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Date: Mon, 7 Jul 2025 17:37:42 +0200
X-Gm-Features: Ac12FXx34v3Y6SuX2doxQJKG8jqdJJvAFpjvYytGviyPvXyJJf9njcMtTrZuufo
Message-ID: <CAK8fFZ4GwiG8PLYmsnEbjP4DF=3KK_Ni8Pk7KnrNxLUV3+GK7Q@mail.gmail.com>
To: Michal Kubiak <michal.kubiak@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, jdamato@fastly.com, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Igor Raits <igor@gooddata.com>, Daniel Secik <daniel.secik@gooddata.com>, 
 Zdenek Pesek <zdenek.pesek@gooddata.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gooddata.com; s=google; t=1751902690; x=1752507490; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=BndOEBoapVfNSq63pGc2Fatvjm6TLSvlOrpNdKm6s/s=;
 b=HGxffdeAbMSp7/QJWFbB6uw/WaU2/HBEBhFvufdTmbyCzp5l7Wkp7hccbSfgEKyoWl
 2TGb8NE8Uj8fCME6urZIvT4rSo9qrFtudceJZ/uO1VMc6tMKu2WYQHnOUYh1GzsQXGOp
 wp98tDbo6OBZWYzY7dPIcCwCNG8KOufhF1jPs=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=gooddata.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=gooddata.com header.i=@gooddata.com header.a=rsa-sha256
 header.s=google header.b=HGxffdeA
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
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

so 5. 7. 2025 v 9:01 odes=C3=ADlatel Jaroslav Pulchart
<jaroslav.pulchart@gooddata.com> napsal:
>
> > On Mon, Apr 14, 2025 at 06:29:01PM +0200, Jaroslav Pulchart wrote:
> > > Hello,
> > >
> > > While investigating increased memory usage after upgrading our
> > > host/hypervisor servers from Linux kernel 6.12.y to 6.13.y, I observe=
d
> > > a regression in available memory per NUMA node. Our servers allocate
> > > 60GB of each NUMA node=E2=80=99s 64GB of RAM to HugePages for VMs, le=
aving 4GB
> > > for the host OS.
> > >
> > > After the upgrade, we noticed approximately 500MB less free RAM on
> > > NUMA nodes 0 and 2 compared to 6.12.y, even with no VMs running (just
> > > the host OS after reboot). These nodes host Intel 810-XXV NICs. Here'=
s
> > > a snapshot of the NUMA stats on vanilla 6.13.y:
> > >
> > >      NUMA nodes:  0     1     2     3     4     5     6     7     8
> > >  9    10    11    12    13    14    15
> > >      HPFreeGiB:   60    60    60    60    60    60    60    60    60
> > >  60   60    60    60    60    60    60
> > >      MemTotal:    64989 65470 65470 65470 65470 65470 65470 65453
> > > 65470 65470 65470 65470 65470 65470 65470 65462
> > >      MemFree:     2793  3559  3150  3438  3616  3722  3520  3547  354=
7
> > >  3536  3506  3452  3440  3489  3607  3729
> > >
> > > We traced the issue to commit 492a044508ad13a490a24c66f311339bf891cb5=
f
> > > "ice: Add support for persistent NAPI config".
> > >
> > > We limit the number of channels on the NICs to match local NUMA cores
> > > or less if unused interface (from ridiculous 96 default), for example=
:
> > >    ethtool -L em1 combined 6       # active port; from 96
> > >    ethtool -L p3p2 combined 2      # unused port; from 96
> > >
> > > This typically aligns memory use with local CPUs and keeps NUMA-local
> > > memory usage within expected limits. However, starting with kernel
> > > 6.13.y and this commit, the high memory usage by the ICE driver
> > > persists regardless of reduced channel configuration.
> > >
> > > Reverting the commit restores expected memory availability on nodes 0
> > > and 2. Below are stats from 6.13.y with the commit reverted:
> > >     NUMA nodes:  0     1     2     3     4     5     6     7     8
> > > 9    10    11    12    13    14    15
> > >     HPFreeGiB:   60    60    60    60    60    60    60    60    60
> > > 60   60    60    60    60    60    60
> > >     MemTotal:    64989 65470 65470 65470 65470 65470 65470 65453 6547=
0
> > > 65470 65470 65470 65470 65470 65470 65462
> > >     MemFree:     3208  3765  3668  3507  3811  3727  3812  3546  3676=
  3596 ...
> > >
> > > This brings nodes 0 and 2 back to ~3.5GB free RAM, similar to kernel
> > > 6.12.y, and avoids swap pressure and memory exhaustion when running
> > > services and VMs.
> > >
> > > I also do not see any practical benefit in persisting the channel
> > > memory allocation. After a fresh server reboot, channels are not
> > > explicitly configured, and the system will not automatically resize
> > > them back to a higher count unless manually set again. Therefore,
> > > retaining the previous memory footprint appears unnecessary and
> > > potentially harmful in memory-constrained environments
> > >
> > > Best regards,
> > > Jaroslav Pulchart
> > >
> >
> >
> > Hello Jaroslav,
> >
> > I have just sent a series for converting the Rx path of the ice driver
> > to use the Page Pool.
> > We suspect it may help for the memory consumption issue since it remove=
s
> > the problematic code and delegates some memory management to the generi=
c
> > code.
> >
> > Could you please give it a try and check if it helps for your issue.
> > The link to the series: https://lore.kernel.org/intel-wired-lan/2025070=
4161859.871152-1-michal.kubiak@intel.com/
>
> I can try it, however I cannot apply the patch as-is @ 6.15.y:
> $ git am ~/ice-convert-Rx-path-to-Page-Pool.patch
> Applying: ice: remove legacy Rx and construct SKB
> Applying: ice: drop page splitting and recycling
> error: patch failed: drivers/net/ethernet/intel/ice/ice_txrx.h:480
> error: drivers/net/ethernet/intel/ice/ice_txrx.h: patch does not apply
> Patch failed at 0002 ice: drop page splitting and recycling
> hint: Use 'git am --show-current-patch=3Ddiff' to see the failed patch
> hint: When you have resolved this problem, run "git am --continue".
> hint: If you prefer to skip this patch, run "git am --skip" instead.
> hint: To restore the original branch and stop patching, run "git am --abo=
rt".
> hint: Disable this message with "git config set advice.mergeConflict fals=
e"
>

My colleague and I have applied the missing bits and have it building
on 6.15.5 (note that we had to disable CONFIG_MEM_ALLOC_PROFILING, or
the kernel won=E2=80=99t boot). The patches we used are:

0001-libeth-convert-to-netmem.patch
0002-libeth-support-native-XDP-and-register-memory-model.patch
0003-libeth-xdp-add-XDP_TX-buffers-sending.patch
0004-libeth-xdp-add-.ndo_xdp_xmit-helpers.patch
0005-libeth-xdp-add-XDPSQE-completion-helpers.patch
0006-libeth-xdp-add-XDPSQ-locking-helpers.patch
0007-libeth-xdp-add-XDPSQ-cleanup-timers.patch
0008-libeth-xdp-add-helpers-for-preparing-processing-libe.patch
0009-libeth-xdp-add-XDP-prog-run-and-verdict-result-handl.patch
0010-libeth-xdp-add-templates-for-building-driver-side-ca.patch
0011-libeth-xdp-add-RSS-hash-hint-and-XDP-features-setup-.patch
0012-libeth-xsk-add-XSk-XDP_TX-sending-helpers.patch
0013-libeth-xsk-add-XSk-xmit-functions.patch
0014-libeth-xsk-add-XSk-Rx-processing-support.patch
0015-libeth-xsk-add-XSkFQ-refill-and-XSk-wakeup-helpers.patch
0016-libeth-xdp-xsk-access-adjacent-u32s-as-u64-where-app.patch
0017-ice-add-a-separate-Rx-handler-for-flow-director-comm.patch
0018-ice-remove-legacy-Rx-and-construct-SKB.patch
0019-ice-drop-page-splitting-and-recycling.patch
0020-ice-switch-to-Page-Pool.patch

Unfortunately, the new setup crashes after VMs are started. Here=E2=80=99s =
the
oops trace:

[   82.816544] tun: Universal TUN/TAP device driver, 1.6
[   82.823923] tap2c2b8dfc-91: entered promiscuous mode
[   82.848913] tapa92181fc-b5: entered promiscuous mode
[   84.030527] tap54ab9888-90: entered promiscuous mode
[   84.043251] tap89f4f7ae-d1: entered promiscuous mode
[   85.768578] tapf1e9f4f9-17: entered promiscuous mode
[   85.780372] tap72c64909-77: entered promiscuous mode
[   87.580455] tape1b2d2dd-bc: entered promiscuous mode
[   87.593224] tap34fb2668-4a: entered promiscuous mode
[  150.406899] Oops: general protection fault, probably for
non-canonical address 0xffff3b95e757d5a0: 0000 [#1] SMP NOPTI
[  150.417626] CPU: 4 UID: 0 PID: 0 Comm: swapper/4 Tainted: G
   E       6.15.5-1.gdc+ice.el9.x86_64 #1 PREEMPT(lazy)
[  150.428845] Tainted: [E]=3DUNSIGNED_MODULE
[  150.432773] Hardware name: Dell Inc. PowerEdge R7525/0H3K7P, BIOS
2.19.0 03/07/2025
[  150.440432] RIP: 0010:page_pool_put_unrefed_netmem+0xe2/0x250
[  150.446186] Code: 18 48 85 d2 0f 84 58 ff ff ff 8b 52 2c 4c 89 e7
39 d0 41 0f 94 c5 e8 0d f2 ff ff 84 c0 0f 85 4f ff ff ff 48 8b 85 60
06 00 00 <65> 48 ff 40 20 5b 4c 89 e6 48 89 ef 5d 41 5c 41 5d e9 f8 fa
ff ff
[  150.464947] RSP: 0018:ffffbc4a003fcd18 EFLAGS: 00010246
[  150.470173] RAX: ffff9dcabfc37580 RBX: 00000000ffffffff RCX: 00000000000=
00000
[  150.477496] RDX: 0000000000000000 RSI: fffff2ec441924c0 RDI: fffff2ec441=
924c0
[  150.484773] RBP: ffff9dcabfc36f20 R08: ffff9dc330536d20 R09: 00000000005=
51618
[  150.492045] R10: 0000000000000000 R11: 0000000000000f82 R12: fffff2ec441=
924c0
[  150.499317] R13: 0000000000000000 R14: 0000000000000000 R15: 00000000000=
01b69
[  150.506584] FS:  0000000000000000(0000) GS:ffff9dcb27946000(0000)
knlGS:0000000000000000
[  150.514806] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  150.520677] CR2: 00007f82d00041b8 CR3: 000000012bcab00a CR4: 00000000007=
70ef0
[  150.527937] PKRU: 55555554
[  150.530770] Call Trace:
[  150.533342]  <IRQ>
[  150.535484]  ice_clean_rx_irq+0x288/0x530 [ice]
[  150.540171]  ? sched_balance_find_src_group+0x13f/0x210
[  150.545521]  ? ice_clean_tx_irq+0x18f/0x3a0 [ice]
[  150.550373]  ice_napi_poll+0xe2/0x290 [ice]
[  150.554709]  __napi_poll+0x27/0x1e0
[  150.558323]  net_rx_action+0x1d3/0x3f0
[  150.562194]  ? __napi_schedule+0x8e/0xb0
[  150.566239]  ? sched_clock+0xc/0x30
[  150.569852]  ? sched_clock_cpu+0xb/0x190
[  150.573897]  handle_softirqs+0xd0/0x2b0
[  150.577858]  __irq_exit_rcu+0xcd/0xf0
[  150.581636]  common_interrupt+0x7f/0xa0
[  150.585601]  </IRQ>
[  150.587826]  <TASK>
[  150.590049]  asm_common_interrupt+0x22/0x40
[  150.594352] RIP: 0010:flush_smp_call_function_queue+0x39/0x50
[  150.600218] Code: 80 c0 bb 2e 98 48 85 c0 74 31 53 9c 5b fa bf 01
00 00 00 e8 49 f5 ff ff 65 66 83 3d 58 af 90 02 00 75 0c 80 e7 02 74
01 fb 5b <c3> cc cc cc cc e8 8d 1d f1 ff 80 e7 02 74 f0 eb ed c3 cc cc
cc cc
[  150.619204] RSP: 0018:ffffbc4a001e7ed8 EFLAGS: 00000202
[  150.624550] RAX: 0000000000000000 RBX: ffff9dc2c0088000 RCX: 00000000000=
f4240
[  150.631806] RDX: 0000000000007f0c RSI: 0000000000000008 RDI: ffff9dcabfc=
30880
[  150.639057] RBP: 0000000000000004 R08: 0000000000000008 R09: ffff9dcabfc=
311e8
[  150.646314] R10: ffff9dcabfc1fd80 R11: 0000000000000004 R12: ffff9dc2c1e=
64400
[  150.653569] R13: ffffffff978da0e0 R14: 0000000000000001 R15: 00000000000=
00000
[  150.660829]  do_idle+0x13a/0x200
[  150.664186]  cpu_startup_entry+0x25/0x30
[  150.668241]  start_secondary+0x114/0x140
[  150.672292]  common_startup_64+0x13e/0x141
[  150.676525]  </TASK>
[  150.678840] Modules linked in: target_core_user(E) uio(E)
target_core_pscsi(E) target_core_file(E) target_core_iblock(E)
nf_conntrack_netlink(E) vhost_net(E) vhost(E) vhost_iotlb(E) tap(E)
tun(E) rpcsec_gss_krb5(E) auth_rpcgss(E) nfsv4(E) dns_resolver(E)
nfs(E) lockd(E) grace(E) netfs(E) netconsole(E)
scsi_transport_iscsi(E) sch_ingress(E) iscsi_target_mod(E)
target_core_mod(E) 8021q(E) garp(E) mrp(E) bonding(E) tls(E)
nfnetlink_cttimeout(E) nfnetlink(E) openvswitch(E) nf_conncount(E)
nf_nat(E) psample(E) ib_core(E) binfmt_misc(E) dell_rbu(E) sunrpc(E)
vfat(E) fat(E) dm_service_time(E) dm_multipath(E) amd_atl(E)
intel_rapl_msr(E) intel_rapl_common(E) amd64_edac(E) ipmi_ssif(E)
edac_mce_amd(E) kvm_amd(E) kvm(E) dell_pc(E) platform_profile(E)
dell_smbios(E) dcdbas(E) mgag200(E) irqbypass(E)
dell_wmi_descriptor(E) wmi_bmof(E) i2c_algo_bit(E) rapl(E)
acpi_cpufreq(E) ptdma(E) i2c_piix4(E) acpi_power_meter(E) ipmi_si(E)
k10temp(E) i2c_smbus(E) acpi_ipmi(E) wmi(E) ipmi_devintf(E)
ipmi_msghandler(E) tcp_bbr(E) fuse(E) zram(E)
[  150.678894]  lz4hc_compress(E) lz4_compress(E) zstd_compress(E)
ext4(E) crc16(E) mbcache(E) jbd2(E) dm_crypt(E) sd_mod(E) sg(E) ice(E)
ahci(E) polyval_clmulni(E) libie(E) libeth_xdp(E) polyval_generic(E)
libahci(E) libeth(E) ghash_clmulni_intel(E) sha512_ssse3(E) libata(E)
ccp(E) megaraid_sas(E) gnss(E) sp5100_tco(E) dm_mirror(E)
dm_region_hash(E) dm_log(E) dm_mod(E) nf_conntrack(E)
nf_defrag_ipv6(E) nf_defrag_ipv4(E) br_netfilter(E) bridge(E) stp(E)
llc(E)
[  150.770112] Unloaded tainted modules: fmpm(E):1 fjes(E):2 padlock_aes(E)=
:2
[  150.818140] ---[ end trace 0000000000000000 ]---
[  150.913536] pstore: backend (erst) writing error (-22)
[  150.918850] RIP: 0010:page_pool_put_unrefed_netmem+0xe2/0x250
[  150.924764] Code: 18 48 85 d2 0f 84 58 ff ff ff 8b 52 2c 4c 89 e7
39 d0 41 0f 94 c5 e8 0d f2 ff ff 84 c0 0f 85 4f ff ff ff 48 8b 85 60
06 00 00 <65> 48 ff 40 20 5b 4c 89 e6 48 89 ef 5d 41 5c 41 5d e9 f8 fa
ff ff
[  150.943854] RSP: 0018:ffffbc4a003fcd18 EFLAGS: 00010246
[  150.949245] RAX: ffff9dcabfc37580 RBX: 00000000ffffffff RCX: 00000000000=
00000
[  150.956556] RDX: 0000000000000000 RSI: fffff2ec441924c0 RDI: fffff2ec441=
924c0
[  150.963860] RBP: ffff9dcabfc36f20 R08: ffff9dc330536d20 R09: 00000000005=
51618
[  150.971166] R10: 0000000000000000 R11: 0000000000000f82 R12: fffff2ec441=
924c0
[  150.978475] R13: 0000000000000000 R14: 0000000000000000 R15: 00000000000=
01b69
[  150.985782] FS:  0000000000000000(0000) GS:ffff9dcb27946000(0000)
knlGS:0000000000000000
[  150.994036] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  150.999958] CR2: 00007f82d00041b8 CR3: 000000012bcab00a CR4: 00000000007=
70ef0
[  151.007270] PKRU: 55555554
[  151.010151] Kernel panic - not syncing: Fatal exception in interrupt
[  151.488873] Kernel Offset: 0x14600000 from 0xffffffff81000000
(relocation range: 0xffffffff80000000-0xffffffffbfffffff)
[  151.581163] ---[ end Kernel panic - not syncing: Fatal exception in
interrupt ]---

> >
> > Thanks,
> > Michal
> >
