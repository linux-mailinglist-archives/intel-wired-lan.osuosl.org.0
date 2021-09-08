Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BEAC9403E69
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Sep 2021 19:36:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5054C613E7;
	Wed,  8 Sep 2021 17:36:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lay-BuVv85XJ; Wed,  8 Sep 2021 17:36:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C6E2613DF;
	Wed,  8 Sep 2021 17:36:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 47FD71BF488
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 17:36:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 36A94406C4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 17:36:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I9yZEfCu-e3U for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Sep 2021 17:36:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8B9A140719
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 17:36:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10101"; a="217389458"
X-IronPort-AV: E=Sophos;i="5.85,278,1624345200"; d="scan'208";a="217389458"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 10:35:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,278,1624345200"; d="scan'208";a="547970466"
Received: from bcreeley-st-desk.jf.intel.com ([10.166.244.126])
 by fmsmga002.fm.intel.com with ESMTP; 08 Sep 2021 10:35:23 -0700
From: Brett Creeley <brett.creeley@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  8 Sep 2021 10:32:50 -0700
Message-Id: <20210908173250.8155-1-brett.creeley@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] ice: Only call ida_free if the device
 supports RDMA
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

If the underlying device supports RDMA, then the pf->aux_idx
will be setup by calling ida_alloc() in ice_probe(). This is then torn
down in ice_remove(). However, not all devices support RDMA, so it's
possible ida_alloc() will never be called. In this case the following
error is happening during ice_remove():

[  146.098677] ice 0000:d8:00.0: Removed PTP clock
[  146.915655] BUG: kernel NULL pointer dereference, address: 0000000000000000
[  146.915660] #PF: supervisor read access in kernel mode
[  146.915662] #PF: error_code(0x0000) - not-present page
[  146.915663] PGD 0 P4D 0
[  146.915666] Oops: 0000 [#1] SMP PTI
[  146.915669] CPU: 32 PID: 4263 Comm: rmmod Tainted: G          IOE     5.14.0+ #5
[  146.915672] Hardware name: Intel Corporation S2600STB/S2600STB, BIOS SE5C620.86B.00.01.0015.110720180833 11/07/2018
[  146.915674] RIP: 0010:ida_free+0x88/0x110
[  146.915682] Code: 48 89 c5 a8 01 74 23 83 fb 3e 77 24 48 d1 ed 48 0f a3 dd 73 1b 48 0f b3 dd 48 85 ed 75 74 31 f6 48 89 e7 e8 aa 13 01 00 eb 51 <48> 0f a3 18 72 28 48 8b 3c 24 4c 89 e6 e8 d6 ec 59 00 44 89 ee 48
[  146.915684] RSP: 0018:ffffb8fa0d05fda0 EFLAGS: 00010046
[  146.915687] RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000000
[  146.915689] RDX: 0000000000000000 RSI: 0000000000000000 RDI: ffffb8fa0d05fda0
[  146.915690] RBP: 0000000000000000 R08: 0000000000000000 R09: ffffb8fa0d05fd98
[  146.915691] R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000246
[  146.915692] R13: 0000000000000000 R14: 0000000000000000 R15: ffffffffc05f7108
[  146.915693] FS:  00007fbfb59ca740(0000) GS:ffff8b764f100000(0000) knlGS:0000000000000000
[  146.915695] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  146.915696] CR2: 0000000000000000 CR3: 0000000c9729c001 CR4: 00000000007706e0
[  146.915698] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[  146.915699] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[  146.915700] PKRU: 55555554
[  146.915701] Call Trace:
[  146.915707]  ice_remove+0xbf/0x240 [ice]
[  146.915729]  pci_device_remove+0x3b/0xa0
[  146.915733]  __device_release_driver+0x17a/0x230
[  146.915738]  driver_detach+0xcb/0x110
[  146.915740]  bus_remove_driver+0x55/0xd0
[  146.915743]  pci_unregister_driver+0x2a/0xb0
[  146.915745]  ice_module_exit+0xc/0x42e [ice]
[  146.915762]  __do_sys_delete_module.constprop.0+0x174/0x280
[  146.915767]  ? exit_to_user_mode_prepare+0x14d/0x240
[  146.915771]  do_syscall_64+0x3b/0x90
[  146.915777]  entry_SYSCALL_64_after_hwframe+0x44/0xae
[  146.915782] RIP: 0033:0x7fbfb5afa12b
[  146.915785] Code: 73 01 c3 48 8b 0d 6d 0d 0c 00 f7 d8 64 89 01 48 83 c8 ff c3 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa b8 b0 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 3d 0d 0c 00 f7 d8 64 89 01 48
[  146.915787] RSP: 002b:00007ffff92da7c8 EFLAGS: 00000206 ORIG_RAX: 00000000000000b0
[  146.915788] RAX: ffffffffffffffda RBX: 000055c24e5c87a0 RCX: 00007fbfb5afa12b
[  146.915789] RDX: 000000000000000a RSI: 0000000000000800 RDI: 000055c24e5c8808
[  146.915791] RBP: 000055c24e5c82a0 R08: 1999999999999999 R09: 0000000000000000
[  146.915792] R10: 00007fbfb5b6eac0 R11: 0000000000000206 R12: 00007ffff92db8a9
[  146.915793] R13: 0000000000000000 R14: 00007ffff92da9f0 R15: 000055c24e5c87a0
[  146.915794] Modules linked in: ice(OE-) xt_CHECKSUM xt_MASQUERADE xt_conntrack ipt_REJECT nf_reject_ipv4 ip6table_mangle ip6table_nat iptable_mangle iptable_nat nf_nat nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 nf_tables nfnetlink ip6table_filter ip6_tables iptable_filter tun bridge stp llc rfkill sunrpc vfat fat intel_rapl_msr intel_rapl_common isst_if_common skx_edac nfit libnvdimm x86_pkg_temp_thermal intel_powerclamp coretemp kvm_intel kvm irqbypass iTCO_wdt intel_pmc_bxt ipmi_ssif iTCO_vendor_support rapl intel_cstate intel_uncore mei_me acpi_ipmi i2c_i801 ipmi_si joydev pcspkr mei ioatdma lpc_ich i2c_smbus ipmi_devintf intel_pch_thermal dca ipmi_msghandler acpi_power_meter acpi_pad ip_tables xfs ast i2c_algo_bit drm_vram_helper drm_kms_helper cec drm_ttm_helper ttm drm i40e crct10dif_pclmul crc32_pclmul crc32c_intel ghash_clmulni_intel hid_microsoft ff_memless wmi pkcs8_key_parser fuse [last unloaded: ice]
[  146.915843] CR2: 0000000000000000
[  146.915845] ---[ end trace a80a9a80015068b8 ]---
[  146.916987] RIP: 0010:ida_free+0x88/0x110
[  146.916991] Code: 48 89 c5 a8 01 74 23 83 fb 3e 77 24 48 d1 ed 48 0f a3 dd 73 1b 48 0f b3 dd 48 85 ed 75 74 31 f6 48 89 e7 e8 aa 13 01 00 eb 51 <48> 0f a3 18 72 28 48 8b 3c 24 4c 89 e6 e8 d6 ec 59 00 44 89 ee 48
[  146.916993] RSP: 0018:ffffb8fa0d05fda0 EFLAGS: 00010046
[  146.916995] RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000000
[  146.916996] RDX: 0000000000000000 RSI: 0000000000000000 RDI: ffffb8fa0d05fda0
[  146.916997] RBP: 0000000000000000 R08: 0000000000000000 R09: ffffb8fa0d05fd98
[  146.916998] R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000246
[  146.916999] R13: 0000000000000000 R14: 0000000000000000 R15: ffffffffc05f7108
[  146.917000] FS:  00007fbfb59ca740(0000) GS:ffff8b764f100000(0000) knlGS:0000000000000000
[  146.917002] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  146.917003] CR2: 0000000000000000 CR3: 0000000c9729c001 CR4: 00000000007706e0
[  146.917005] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[  146.917006] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[  146.917007] PKRU: 55555554

Fix this by doing the same check that gates ida_alloc() in ice_probe()
for ida_free() in ice_remove().

Fixes: d25a0fc ("ice: Initialize RDMA support")
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0d6c143f6653..73954643ed2f 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4615,7 +4615,8 @@ static void ice_remove(struct pci_dev *pdev)
 
 	ice_aq_cancel_waiting_tasks(pf);
 	ice_unplug_aux_dev(pf);
-	ida_free(&ice_aux_ida, pf->aux_idx);
+	if (ice_is_aux_ena(pf))
+		ida_free(&ice_aux_ida, pf->aux_idx);
 	set_bit(ICE_DOWN, pf->state);
 
 	mutex_destroy(&(&pf->hw)->fdir_fltr_lock);
-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
