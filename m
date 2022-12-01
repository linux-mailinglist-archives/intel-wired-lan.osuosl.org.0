Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE5963F823
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Dec 2022 20:26:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C8BC60E53;
	Thu,  1 Dec 2022 19:26:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C8BC60E53
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669922782;
	bh=UNr0xbn2EHEUpm1SnVtaJfrRY+7aG/9JKkUH4F7yu8o=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=yCiXZUvx72s6MlzWXRBd9NFvU3jlR1293rtm2quXQOMjq6mdzjhsyQUc4x2uJ/Cr4
	 ZKi4DOERprpyh5ExdVcyomyHBYIXNoHSfalz+O4gHWVwV3ccYdJEflW/ZWlRJxScyJ
	 vJfkYf/RNyzyPQITm07Cug1i8gLIRLxxT79QkpoYEZejEmLxqORrwYFiVwgfOYcnes
	 2tfO7UYQJZN2Ohe+nFkJNI10KsDi2ER4dIwqWjcEwCpYirkVW+FQXRYDFqQIi5LQ2Q
	 cwI8bowykHCkCxP/5H88sOCyLOIPtfe7Z1N9beGMawjiUBibDaP7CSUm6GxYt7dEfl
	 VSiWa6cuCvO+Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gTBClNxHaMuU; Thu,  1 Dec 2022 19:26:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 53A6C60E42;
	Thu,  1 Dec 2022 19:26:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 53A6C60E42
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6D4DF1BF379
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 19:26:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4348D610B7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 19:26:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4348D610B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LCVu-i-3m56L for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Dec 2022 19:26:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E4DF1610EF
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E4DF1610EF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 19:26:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="380067821"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="380067821"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 11:26:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="787008750"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="787008750"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga001.fm.intel.com with ESMTP; 01 Dec 2022 11:26:11 -0800
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 2B1JQ9bV026347; Thu, 1 Dec 2022 19:26:09 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  1 Dec 2022 20:24:56 +0100
Message-Id: <20221201192456.965674-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669922773; x=1701458773;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=62LpbkZlwgzL9ZrbihukrX56HXDlorOXmxFkQnmAGRk=;
 b=WoPpl4P93eOdkA8fbtgrjl5DdnpOrSKHKs0ZtofIrXCFiyn2r0Y/CA0C
 OV5bOvgHe5X1BxbW01EsigFxuUcikZ4A4zoj34BRHfq1ELgMnJYBU56mp
 63Bl6puJomglGbMwvnrf3wCXqa67bAN2QWUXG6kpv1f3hV+6AkiI/cKeV
 Uq2aAtD21l23tIwRuxNWdcXZfTizSMaEj8KRRd4tipk4H9/AD48BNy1jp
 NRLfU3+e+hT5XHP+YDAgBQ2emZwdYkRQnQe88tAC46/kKCGfbnZNQ4L/N
 diGQaN3a2m0U6tfLx2hDRHSZ3CuIpW4iEGmWxW5xHjG6irX0bWF9FrvOR
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WoPpl4P9
Subject: [Intel-wired-lan] [PATCH net-next v3] ice: Do not use
 WQ_MEM_RECLAIM flag for workqueue
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
Cc: mustafa.ismail@intel.com, shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>

When both ice and the irdma driver are loaded, a warning
in check_flush_dependency is being triggered. This seems
to be because of the ice driver workqueue is allocated with
the WQ_MEM_RECLAIM flag, and the irdma one is not.

Looking at the kernel documentation, it doesn't seem like
the ice driver needs to use WQ_MEM_RECLAIM. Remove it.

Example trace:

[Thu Feb 4 07:29:18 2021] ice 0000:18:00.0: Failed to get DCB config
[Thu Feb 4 07:29:48 2021] ------------[ cut here ]------------
[Thu Feb 4 07:29:48 2021] workqueue: WQ_MEM_RECLAIM ice:ice_service_task [ice] is flushing !WQ_MEM_RECLAIM infiniband: (null)
[Thu Feb 4 07:29:48 2021] WARNING: CPU: 70 PID: 78391 at kernel/workqueue.c:2509 check_flush_dependency+0x110/0x130
[Thu Feb 4 07:29:48 2021] Modules linked in: nfsv3 nfs_acl nfs lockd grace fscache ib_isert iscsi_target_mod ib_srpt target_core_mod ib_sr p scsi_transport_srp ib_umad ib_ipoib mlx5_ib intel_rapl skx_edac nfit iTCO_wdt libnvdimm iTCO_vendor_support x86_pkg_temp_thermal intel_po werclamp coretemp kvm irqbypass crct10dif_pclmul crc32_pclmul ghash_clmulni_intel intel_cstate rpcrdma ipmi_ssif rdma_ucm ib_iser rdma_cm i ntel_uncore libiscsi scsi_transport_iscsi iw_cm intel_rapl_perf pcspkr joydev sg ipmi_si mei_me ioatdma ipmi_devintf mei dca i2c_i801 lpc_i ch wmi ipmi_msghandler acpi_pad acpi_power_meter sunrpc ip_tables ext4 mbcache jbd2 irdma(OE) sd_mod sr_mod cdrom ast i2c_algo_bit mlx5_cor e drm_kms_helper syscopyarea sysfillrect sysimgblt fb_sys_fops ahci ttm libahci i40e drm mlxfw libata crc32c_intel ice(OE) rv(OE)
[Thu Feb 4 07:29:48 2021] ib_uverbs ib_cm ib_core
[Thu Feb 4 07:29:48 2021] CPU: 70 PID: 78391 Comm: kworker/70:1 Kdump: loaded Tainted: G OE --------- - - 4.18.0-147.el8.x86 _64 #1
[Thu Feb 4 07:29:48 2021] Hardware name: Intel Corporation S2600WFD/S2600WFD, BIOS SE5C620.86B.02.01.0010.010620200716 01/06/2020
[Thu Feb 4 07:29:48 2021] Workqueue: ice ice_service_task [ice]
[Thu Feb 4 07:29:48 2021] RIP: 0010:check_flush_dependency+0x110/0x130
[Thu Feb 4 07:29:48 2021] Code: ff ff 48 8b 50 18 48 8d 8b b0 00 00 00 49 89 e8 48 81 c6 b0 00 00 00 48 c7 c7 e0 53 c8 86 c6 05 a6 48 2f 0 1 01 e8 8a 46 fe ff <0f> 0b e9 0a ff ff ff 80 3d 94 48 2f 01 00 75 95 e9 41 ff ff ff 90
[Thu Feb 4 07:29:48 2021] RSP: 0018:ffffbc53801af998 EFLAGS: 00010282
[Thu Feb 4 07:29:48 2021] RAX: 0000000000000000 RBX: ffff9e9119a17800 RCX: 0000000000000006
[Thu Feb 4 07:29:48 2021] RDX: 0000000000000007 RSI: 0000000000000092 RDI: ffff9e7960d16a00
[Thu Feb 4 07:29:48 2021] RBP: 0000000000000000 R08: 0000000000000ed5 R09: ffffffff87639f20
[Thu Feb 4 07:29:48 2021] R10: 0001bfae1fb444de R11: 000000006c756e28 R12: ffff9e78893d1ec0
[Thu Feb 4 07:29:48 2021] R13: ffff9e783cdc5248 R14: ffff9e794f81f818 R15: ffffbc53801af9e0
[Thu Feb 4 07:29:48 2021] FS: 0000000000000000(0000) GS:ffff9e7960d00000(0000) knlGS:0000000000000000
[Thu Feb 4 07:29:48 2021] CS: 0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[Thu Feb 4 07:29:48 2021] CR2: 00007fade3600000 CR3: 0000001ec080a001 CR4: 00000000007606e0
[Thu Feb 4 07:29:48 2021] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[Thu Feb 4 07:29:48 2021] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[Thu Feb 4 07:29:48 2021] PKRU: 55555554
[Thu Feb 4 07:29:48 2021] Call Trace:
[Thu Feb 4 07:29:48 2021] flush_workqueue+0x13a/0x440
[Thu Feb 4 07:29:48 2021] ib_cache_cleanup_one+0x3e/0x150 [ib_core]
[Thu Feb 4 07:29:48 2021] ? device_del+0x280/0x350
[Thu Feb 4 07:29:48 2021] ib_unregister_device+0x137/0x1f0 [ib_core]
[Thu Feb 4 07:29:48 2021] irdma_ib_unregister_device+0x45/0x80 [irdma]
[Thu Feb 4 07:29:48 2021] irdma_close+0xa7/0x360 [irdma]
[Thu Feb 4 07:29:48 2021] ice_peer_close+0x140/0x170 [ice]
[Thu Feb 4 07:29:48 2021] ice_vsi_close+0xe9/0x120 [ice]
[Thu Feb 4 07:29:48 2021] ice_dcb_ena_dis_vsi.constprop.5+0x67/0x80 [ice]
[Thu Feb 4 07:29:48 2021] ice_dcb_process_lldp_set_mib_change+0x295/0x500 [ice]
[Thu Feb 4 07:29:48 2021] __ice_clean_ctrlq+0x541/0x950 [ice]
[Thu Feb 4 07:29:48 2021] ? __switch_to_asm+0x41/0x70
[Thu Feb 4 07:29:48 2021] ? __switch_to_asm+0x35/0x70
[Thu Feb 4 07:29:48 2021] ? __switch_to_asm+0x41/0x70
[Thu Feb 4 07:29:48 2021] ice_service_task+0x244/0x1800 [ice]
[Thu Feb 4 07:29:48 2021] ? __switch_to_asm+0x41/0x70
[Thu Feb 4 07:29:48 2021] ? __switch_to+0x8c/0x480
[Thu Feb 4 07:29:48 2021] ? __switch_to_asm+0x35/0x70
[Thu Feb 4 07:29:48 2021] process_one_work+0x1a7/0x3b0
[Thu Feb 4 07:29:48 2021] worker_thread+0x30/0x390
[Thu Feb 4 07:29:48 2021] ? create_worker+0x1a0/0x1a0
[Thu Feb 4 07:29:48 2021] kthread+0x112/0x130
[Thu Feb 4 07:29:48 2021] ? kthread_flush_work_fn+0x10/0x10
[Thu Feb 4 07:29:48 2021] ret_from_fork+0x35/0x40
[Thu Feb 4 07:29:48 2021] ---[ end trace 1024c3cc70a5b4e0 ]---

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
v3: added example trace
v2: fixed From tag

 drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 69984fea7fce..d01d1073ffec 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5617,7 +5617,7 @@ static int __init ice_module_init(void)
 	pr_info("%s\n", ice_driver_string);
 	pr_info("%s\n", ice_copyright);
 
-	ice_wq = alloc_workqueue("%s", WQ_MEM_RECLAIM, 0, KBUILD_MODNAME);
+	ice_wq = alloc_workqueue("%s", 0, 0, KBUILD_MODNAME);
 	if (!ice_wq) {
 		pr_err("Failed to create workqueue\n");
 		return -ENOMEM;
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
