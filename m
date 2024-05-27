Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DE49B8D022C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 May 2024 15:51:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E1CF81E2D;
	Mon, 27 May 2024 13:51:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8sp0-M0GdA6Q; Mon, 27 May 2024 13:51:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4ABD981E25
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716817865;
	bh=4XzlbujhowoH/1HYYJQ3rtH1QoRttI5HvETHpRuXG/E=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=rPVrP34t8XjxIO0gtawRWWkIQUic8ct6lbknufzl1voL2cMKUut6Atb5JKRRvaw3r
	 wNsLedwtMExR2oCMXAd6CKKnoPOjolsEMZMYk5Uej/RWLImMyzHux3jwh6fCa0CjiX
	 T9rQN5R/axFfFGJw6gusnzDpPEYp49qtNO5xyoHHfKyDd69LnWVWEjx0pqze6b38iA
	 TX/4xf5KD57QDqKJrMW+14jZWw+5RMhG4NiBRYMFyXZGIp/1bQt9NhUVKNXLVyy1zV
	 MaHahpdX/XevaQdzm8YBkOdTn1fIfAX0S3mPs7Obr+0mJDHNkQuMooUGW4gqoXkfVF
	 hoKA5LMYV/jwA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4ABD981E25;
	Mon, 27 May 2024 13:51:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A77FA1D1D22
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 13:51:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 92526606BA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 13:51:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XqaK08oT7gB7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 May 2024 13:51:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jani.nikula@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7C5CD6069B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C5CD6069B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7C5CD6069B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 13:51:00 +0000 (UTC)
X-CSE-ConnectionGUID: 21J7D2pjR5yWnOs7UM+3VQ==
X-CSE-MsgGUID: xNooy/NxSzK1agbjy0lgGQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="23739791"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="23739791"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 06:50:59 -0700
X-CSE-ConnectionGUID: a6GqBdk8QRCvopLGDonWKw==
X-CSE-MsgGUID: 2VNnGxobQyW+OXLyZNN0aA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="34846937"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.200])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 06:50:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org, Corinna
 Vinschen <vinschen@redhat.com>, Hariprasad Kelam <hkelam@marvell.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, Naama Meir
 <naamax.meir@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Mon, 27 May 2024 16:50:53 +0300
Message-ID: <87o78rmkhu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716817860; x=1748353860;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=3vgJ/J+WXvGUKdqe8IKtzQ8InwlIYxzAt65xVrfNskM=;
 b=jARjNbTooQYXXf4fKZyzrKpY+ya74Et76YagzuXSU+SghlJ4WVkEsPNm
 gvDK6qH+4Y7CuL5htBFC/+4bkQnePa1JuDYvX6HLu3eY9bFGhFC9ZW4YV
 LYTsOXetQJL6GvtEEofcJVbzmaR4RhkzaYghzwEZamV1oGYOUFffp0cch
 W/WJ4Dmb7C4kcFxo/sFtB/23tJN3KXnvUeLKNEbkwLZagIJhAQcgQcwr4
 ofi8iDzWM4k6LJ/N2tLXlnZN9rPVCLBdsUkReOlcN3OYl7XhBPEEOLQ9a
 CWXkYTNdLchdJCS8DwZh+WLd63Cq8y+pyHI189EKgJ7PF+SRraOgJNwHj
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jARjNbTo
Subject: [Intel-wired-lan] REGRESSION: 86167183a17e ("igc: fix a log entry
 using uninitialized netdev")
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


Hi all, the Intel graphics CI hits a lockdep issue with commit
86167183a17e ("igc: fix a log entry using uninitialized netdev") in
v6.10-rc1.

The commit moved igc_ptp_init() which initializes spinlocks after
igt_reset() which ends up using the adapter->ptp_tx_lock. Lockdep isn't
happy:

<3>[   10.648947] INFO: trying to register non-static key.
<3>[   10.648950] The code is fine but needs lockdep annotation, or maybe
<3>[   10.648951] you didn't initialize this object before use?
<3>[   10.648952] turning off the locking correctness validator.
<4>[   10.648954] CPU: 2 PID: 313 Comm: systemd-udevd Not tainted 6.9.0-next-20240513-next-20240513-g6ba6c795dc73+ #1
<4>[   10.648958] Hardware name: Intel Corporation Arrow Lake Client Platform/MTL-S UDIMM 2DPC EVCRB, BIOS MTLSFWI1.R00.3473.D80.2311222130 11/22/2023
<4>[   10.648960] Call Trace:
<4>[   10.648962]  <TASK>
<4>[   10.648964]  dump_stack_lvl+0x82/0xd0
<4>[   10.648971]  register_lock_class+0x795/0x7e0
<4>[   10.648978]  ? __free_object+0xa1/0x340
<4>[   10.648983]  ? lockdep_hardirqs_on+0xc1/0x140
<4>[   10.648990]  __lock_acquire+0x75/0x2260
<4>[   10.648993]  ? __switch_to+0x123/0x600
<4>[   10.648997]  ? _raw_spin_unlock_irqrestore+0x58/0x70
<4>[   10.649002]  lock_acquire+0xd9/0x2f0
<4>[   10.649006]  ? igc_ptp_clear_tx_tstamp+0x28/0x60 [igc]
<4>[   10.649027]  _raw_spin_lock_irqsave+0x3d/0x60
<4>[   10.649030]  ? igc_ptp_clear_tx_tstamp+0x28/0x60 [igc]
<4>[   10.649038]  igc_ptp_clear_tx_tstamp+0x28/0x60 [igc]
<4>[   10.649048]  igc_ptp_set_timestamp_mode.isra.0+0x20b/0x230 [igc]
<4>[   10.649056]  igc_ptp_reset+0x31/0x180 [igc]
<4>[   10.649066]  igc_reset+0xb4/0x100 [igc]
<4>[   10.649079]  igc_probe+0x797/0x8e0 [igc]
<4>[   10.649091]  pci_device_probe+0x95/0x120
<4>[   10.649095]  really_probe+0xd9/0x370
<4>[   10.649099]  ? __pfx___driver_attach+0x10/0x10
<4>[   10.649101]  __driver_probe_device+0x73/0x150
<4>[   10.649103]  driver_probe_device+0x19/0xa0
<4>[   10.649105]  __driver_attach+0xb6/0x180
<4>[   10.649107]  ? __pfx___driver_attach+0x10/0x10
<4>[   10.649109]  bus_for_each_dev+0x77/0xd0
<4>[   10.649114]  bus_add_driver+0x110/0x240
<4>[   10.649117]  driver_register+0x5b/0x110
<4>[   10.649120]  ? __pfx_igc_init_module+0x10/0x10 [igc]
<4>[   10.649130]  do_one_initcall+0x5c/0x2b0
<4>[   10.649134]  ? kmalloc_trace_noprof+0x22f/0x290
<4>[   10.649141]  ? do_init_module+0x1e/0x210
<4>[   10.669989]  do_init_module+0x5f/0x210
<4>[   10.669993]  load_module+0x1d44/0x1fc0
<4>[   10.670001]  ? init_module_from_file+0x86/0xd0
<4>[   10.670004]  init_module_from_file+0x86/0xd0
<4>[   10.670009]  idempotent_init_module+0x17c/0x230
<4>[   10.670015]  __x64_sys_finit_module+0x56/0xb0
<4>[   10.670019]  do_syscall_64+0x69/0x140
<4>[   10.670023]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
<4>[   10.670027] RIP: 0033:0x7f6d2704595d
<4>[   10.670030] Code: 00 c3 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 03 35 0d 00 f7 d8 64 89 01 48
<4>[   10.670032] RSP: 002b:00007ffc72aad018 EFLAGS: 00000246 ORIG_RAX: 0000000000000139
<4>[   10.670036] RAX: ffffffffffffffda RBX: 000055d3f0e69690 RCX: 00007f6d2704595d
<4>[   10.670038] RDX: 0000000000000000 RSI: 00007f6d26f25ded RDI: 0000000000000010
<4>[   10.670039] RBP: 0000000000020000 R08: 0000000000000000 R09: 0000000000000000
<4>[   10.670041] R10: 0000000000000010 R11: 0000000000000246 R12: 00007f6d26f25ded
<4>[   10.670042] R13: 0000000000000000 R14: 000055d3f0c64d20 R15: 000055d3f0e69690
<4>[   10.670046]  </TASK>
<6>[   10.672046] pps pps0: new PPS source ptp0

Bug: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11189


BR,
Jani.


-- 
Jani Nikula, Intel
