Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D97A4DDB3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2019 01:18:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CEEA3860C8;
	Thu, 20 Jun 2019 23:17:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W7KXuiL_WSKt; Thu, 20 Jun 2019 23:17:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 763F8860CB;
	Thu, 20 Jun 2019 23:17:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 73ABF1BF574
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 23:17:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 691C720770
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 23:17:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FNeTBzUKq0HX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2019 23:17:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id E57B0204A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 23:17:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 16:17:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,398,1557212400"; d="scan'208";a="160817196"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by fmsmga008.fm.intel.com with ESMTP; 20 Jun 2019 16:17:54 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.135]) by
 ORSMSX106.amr.corp.intel.com ([169.254.1.191]) with mapi id 14.03.0439.000;
 Thu, 20 Jun 2019 16:17:54 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>, Detlev Casanova
 <detlev.casanova@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2] e1000e: Make watchdog use delayed
 work
Thread-Index: AQHVJ75j4XGWnFmuIUe2kn/rlt2I9A==
Date: Thu, 20 Jun 2019 23:17:54 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B970B111B@ORSMSX103.amr.corp.intel.com>
References: <20190618220846.19486-1-detlev.casanova@gmail.com>
In-Reply-To: <20190618220846.19486-1-detlev.casanova@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2] e1000e: Make watchdog use delayed
 work
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

On Tue, 2019-06-18 at 18:08 -0400, Detlev Casanova wrote:
> Use delayed work instead of timers to run the watchdog of the e1000e
> driver.
> 
> Simplify the code with one less middle function.
> 
> Signed-off-by: Detlev Casanova <detlev.casanova@gmail.com>
> ---
>  drivers/net/ethernet/intel/e1000e/e1000.h  |  3 +-
>  drivers/net/ethernet/intel/e1000e/netdev.c | 54 ++++++++++++----------
>  2 files changed, 30 insertions(+), 27 deletions(-)
> 

This patch is causing a NULL pointer dereference trace (or just a freeze) on a number of my regression systems when I unload the e1000e driver.  The crashing test systems each have multiple e1000e
based ports, I can pull the systems from the rack and change cards out if necessary, though it's not a trivial task getting to them.

Systems affected had the following e1000e chipsets:
- 82579LM Gigabit Network Connection rev 05) LOM
- 82574L LOM

- I217-LM LOM
- 82572EI (Rimon)

- 80003ES2LAN x2 LOMs
- 82572EI Add in card

- 80003ES2LAN x2 LOMs
- 82571EB (Ophir) copper (dual port card)
- 82571EB (Ophir) fibre  (dual port card)

Here is the trace caputrued from the last system listed, the 80003ES2LAN LOMs and 2 dual port Ophir cards:
-------------------------------------------------------------
u1462:[ttyS1]/root> rmmod e1000e
[  131.799739] BUG: kernel NULL pointer dereference, address: 0000000000000000
[  131.806908] #PF: supervisor write access in kernel mode
[  131.812285] #PF: error_code(0x0002) - not-present page
[  131.817565] PGD 8000000072327067 P4D 8000000072327067 PUD 3050f067 PMD 0
[  131.824540] Oops: 0002 [#1] SMP PTI
[  131.828133] CPU: 3 PID: 4306 Comm: rmmod Not tainted 5.2.0-rc5_next-queue_dev-queue_15bf1c7+ #9
[  131.837073] Hardware name: Supermicro X7DBX/X7DBX, BIOS 2.1 06/23/2008
[  131.843791] RIP: 0010:_raw_spin_lock_irq+0x13/0x30
[  131.848722] Code: 00 75 02 f3 c3 e9 3d 16 8a ff 0f 1f 00 66 2e 0f 1f 84 00 00 00 00 00 66 66 66 66 90 fa 66 66 90 66 66 90 31 c0 ba 01 00 00 00 <f0> 0f b1 17 0f 94 c2 84 d2 74 02 f3 c3 89 c6 e9 b2
fd 89 ff 66 0f
[  131.867998] RSP: 0018:ffffb85601f87d58 EFLAGS: 00010046
[  131.873377] RAX: 0000000000000000 RBX: ffff9a5a9faa5b90 RCX: 0000000000000003
[  131.880702] RDX: 0000000000000001 RSI: 0000000000000002 RDI: 0000000000000000
[  131.888032] RBP: 0000000000000002 R08: 0000000000000000 R09: 0000000000000000
[  131.895356] R10: ffff9a5ab340a550 R11: ffffe13500cd0280 R12: 0000000000000003
[  131.902679] R13: 0000000000000002 R14: ffff9a5a9faa4400 R15: 0000000000000000
[  131.910003] FS:  00007f37948a9740(0000) GS:ffff9a5afcac0000(0000) knlGS:0000000000000000
[  131.918325] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  131.924229] CR2: 0000000000000000 CR3: 0000000020602000 CR4: 00000000000006e0
[  131.931557] Call Trace:
[  131.934093]  flush_workqueue_prep_pwqs+0x55/0x120
[  131.938929]  flush_workqueue+0x1b6/0x460
[  131.942987]  e1000_remove+0x93/0x190 [e1000e]
[  131.947466]  pci_device_remove+0x3b/0xc0
[  131.951511]  device_release_driver_internal+0xdf/0x1a0
[  131.956797]  driver_detach+0x43/0x80
[  131.960487]  bus_remove_driver+0x55/0xd0
[  131.964535]  pci_unregister_driver+0x26/0xa0
[  131.968938]  __x64_sys_delete_module+0x16c/0x250
[  131.973698]  ? exit_to_usermode_loop+0xaa/0xc6
[  131.978270]  do_syscall_64+0x5b/0x1b0
[  131.982041]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
[  131.987237] RIP: 0033:0x7f3793d82397
[  131.990923] Code: 73 01 c3 48 8b 0d f9 7a 2c 00 f7 d8 64 89 01 48 83 c8 ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 b8 b0 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d c9 7a 2c 00 f7
d8 64 89 01 48
[  132.010190] RSP: 002b:00007ffc6b3dea18 EFLAGS: 00000206 ORIG_RAX: 00000000000000b0
[  132.017972] RAX: ffffffffffffffda RBX: 0000000001a23190 RCX: 00007f3793d82397
[  132.034233] RDX: 00007f3793df6b20 RSI: 0000000000000800 RDI: 0000000001a231f8
[  132.050479] RBP: 0000000000000000 R08: 00007f379404b060 R09: 00007f3793df6b20
[  132.066683] R10: 00007ffc6b3de5e0 R11: 0000000000000206 R12: 00007ffc6b3e0d4a
[  132.082874] R13: 0000000000000000 R14: 0000000001a23190 R15: 0000000001a23010
[  132.098961] Modules linked in: xt_CHECKSUM iptable_mangle xt_MASQUERADE iptable_nat nf_nat xt_conntrack nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 ipt_REJECT nf_reject_ipv4 tun bridge stp llc
ebtable_filter ebtables ip6table_filter ip6_tables iptable_filter dm_mirror dm_region_hash dm_log dm_mod coretemp kvm_intel kvm iTCO_wdt i2c_i801 gpio_ich iTCO_vendor_support lpc_ich pcspkr i5000_edac
sg irqbypass acpi_cpufreq i5k_amb nfsd auth_rpcgss nfs_acl lockd grace sunrpc ip_tables xfs libcrc32c radeon sr_mod sd_mod cdrom ata_generic pata_acpi i2c_algo_bit drm_kms_helper syscopyarea
sysfillrect sysimgblt fb_sys_fops ttm drm ata_piix libata serio_raw e1000e(-) e1000
[  132.215961] CR2: 0000000000000000
[  132.229473] ---[ end trace 31a92a65bb543b98 ]---
[  132.244260] RIP: 0010:_raw_spin_lock_irq+0x13/0x30
[  132.259217] Code: 00 75 02 f3 c3 e9 3d 16 8a ff 0f 1f 00 66 2e 0f 1f 84 00 00 00 00 00 66 66 66 66 90 fa 66 66 90 66 66 90 31 c0 ba 01 00 00 00 <f0> 0f b1 17 0f 94 c2 84 d2 74 02 f3 c3 89 c6 e9 b2
fd 89 ff 66 0f
[  132.299254] RSP: 0018:ffffb85601f87d58 EFLAGS: 00010046
[  132.315166] RAX: 0000000000000000 RBX: ffff9a5a9faa5b90 RCX: 0000000000000003
[  132.333000] RDX: 0000000000000001 RSI: 0000000000000002 RDI: 0000000000000000
[  132.350749] RBP: 0000000000000002 R08: 0000000000000000 R09: 0000000000000000
[  132.368150] R10: ffff9a5ab340a550 R11: ffffe13500cd0280 R12: 0000000000000003
[  132.385257] R13: 0000000000000002 R14: ffff9a5a9faa4400 R15: 0000000000000000
[  132.402202] FS:  00007f37948a9740(0000) GS:ffff9a5afcac0000(0000) knlGS:0000000000000000
[  132.420165] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  132.435818] CR2: 0000000000000000 CR3: 0000000020602000 CR4: 00000000000006e0
[  132.453030] Kernel panic - not syncing: Fatal exception
[  132.468323] Kernel Offset: 0x7e00000 from 0xffffffff81000000 (relocation range: 0xffffffff80000000-0xffffffffbfffffff)
[  132.489386] ---[ end Kernel panic - not syncing: Fatal exception ]---
                      
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
