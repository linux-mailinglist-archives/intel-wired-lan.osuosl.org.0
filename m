Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B22923BF1D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Aug 2020 19:51:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E7E3887F92;
	Tue,  4 Aug 2020 17:51:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qq77yXOChuZ3; Tue,  4 Aug 2020 17:51:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4191C87F79;
	Tue,  4 Aug 2020 17:51:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D3DB61BF361
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Aug 2020 17:51:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C80DA87C0C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Aug 2020 17:51:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hVkbNSjVqEj0 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Aug 2020 17:51:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0D5C185AC7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Aug 2020 17:51:34 +0000 (UTC)
IronPort-SDR: YEVmWs4PvnTDzUfbeBegpD5YkHSviEcxMd6VlwFDEE9IThRiAi3n04R1bnK3R5ndtM0FfSlN4O
 g8r+mVSlblcQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9703"; a="140285241"
X-IronPort-AV: E=Sophos;i="5.75,434,1589266800"; d="scan'208";a="140285241"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2020 10:51:34 -0700
IronPort-SDR: 9Jd5hbfwWfjKPa+Jp12sWu+aPgAD2NeWGhvnXc6p3xqpcozxns6kOjGBoJ9DrvulJ0CuqujJzR
 jlgZ6oDf6+xw==
X-IronPort-AV: E=Sophos;i="5.75,434,1589266800"; d="scan'208";a="315446637"
Received: from emcbride-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.209.98.225])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2020 10:51:33 -0700
MIME-Version: 1.0
In-Reply-To: <20200803183207.817588-1-vinicius.gomes@intel.com>
References: <20200803183207.817588-1-vinicius.gomes@intel.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
Date: Tue, 04 Aug 2020 10:51:30 -0700
Message-ID: <159656349099.62699.10691780346692711576@patankar-mobl2.amr.corp.intel.com>
User-Agent: alot/0.9
Subject: Re: [Intel-wired-lan] [net-queue PATCH v1] igc: Fix PTP
 initialization
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Right now, igc_ptp_reset() is called from igc_reset(), which is called
> from igc_probe() before igc_ptp_init() has a chance to run. It is
> detected as an attempt to use an spinlook without registering its key
> first. See log below.
> 
> To avoid this problem, simplify the initialization: igc_ptp_init() is
> only called from igc_probe(), and igc_ptp_reset() is only called from
> igc_reset().
> 
> [    2.736332] INFO: trying to register non-static key.
> [    2.736902] input: HDA Intel PCH Front Headphone as /devices/pci0000:00/0000:00:1f.3/sound/card0/input10
> [    2.737513] the code is fine but needs lockdep annotation.
> [    2.737513] turning off the locking correctness validator.
> [    2.737515] CPU: 8 PID: 239 Comm: systemd-udevd Tainted: G            E     5.8.0-rc7+ #13
> [    2.737515] Hardware name: Gigabyte Technology Co., Ltd. Z390 AORUS ULTRA/Z390 AORUS ULTRA-CF, BIOS F7 03/14/2019
> [    2.737516] Call Trace:
> [    2.737521]  dump_stack+0x78/0xa0
> [    2.737524]  register_lock_class+0x6b1/0x6f0
> [    2.737526]  ? lockdep_hardirqs_on_prepare+0xca/0x160
> [    2.739177]  ? _raw_spin_unlock_irq+0x24/0x50
> [    2.739179]  ? trace_hardirqs_on+0x1c/0xf0
> [    2.740820]  __lock_acquire+0x56/0x1ff0
> [    2.740823]  ? __schedule+0x30c/0x970
> [    2.740825]  lock_acquire+0x97/0x3e0
> [    2.740830]  ? igc_ptp_reset+0x35/0xf0 [igc]
> [    2.740833]  ? schedule_hrtimeout_range_clock+0xb7/0x120
> [    2.742507]  _raw_spin_lock_irqsave+0x3a/0x50
> [    2.742512]  ? igc_ptp_reset+0x35/0xf0 [igc]
> [    2.742515]  igc_ptp_reset+0x35/0xf0 [igc]
> [    2.742519]  igc_reset+0x96/0xd0 [igc]
> [    2.744148]  igc_probe+0x68f/0x7d0 [igc]
> [    2.745796]  local_pci_probe+0x3d/0x70
> [    2.745799]  pci_device_probe+0xd1/0x190
> [    2.745802]  really_probe+0x15a/0x3f0
> [    2.759936]  driver_probe_device+0xe1/0x150
> [    2.759937]  device_driver_attach+0xa8/0xb0
> [    2.761786]  __driver_attach+0x89/0x150
> [    2.761786]  ? device_driver_attach+0xb0/0xb0
> [    2.761787]  ? device_driver_attach+0xb0/0xb0
> [    2.761788]  bus_for_each_dev+0x66/0x90
> [    2.765012]  bus_add_driver+0x12e/0x1f0
> [    2.765716]  driver_register+0x8b/0xe0
> [    2.766418]  ? 0xffffffffc0230000
> [    2.767119]  do_one_initcall+0x5a/0x310
> [    2.767826]  ? kmem_cache_alloc_trace+0xe9/0x200
> [    2.768528]  do_init_module+0x5c/0x260
> [    2.769206]  __do_sys_finit_module+0x93/0xe0
> [    2.770048]  do_syscall_64+0x46/0xa0
> [    2.770716]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> [    2.771396] RIP: 0033:0x7f83534589e0
> [    2.772073] Code: 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa 2e 2e 2e 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 80 24 0d 00 f7 d8 64 89 01 48
> [    2.772074] RSP: 002b:00007ffd31d0ed18 EFLAGS: 00000246 ORIG_RAX: 0000000000000139
> [    2.774854] RAX: ffffffffffffffda RBX: 000055d52816aba0 RCX: 00007f83534589e0
> [    2.774855] RDX: 0000000000000000 RSI: 00007f83535b982f RDI: 0000000000000006
> [    2.774855] RBP: 00007ffd31d0ed60 R08: 0000000000000000 R09: 00007ffd31d0ed30
> [    2.774856] R10: 0000000000000006 R11: 0000000000000246 R12: 0000000000000000
> [    2.774856] R13: 0000000000020000 R14: 00007f83535b982f R15: 000055d527f5e120
> 
> Fixes: 5f2958052c58 ("igc: Add basic skeleton for PTP")
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

Reviewed-by: Andre Guedes <andre.guedes@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
