Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0168A152D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Apr 2024 15:00:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E05D840719;
	Thu, 11 Apr 2024 13:00:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wb3eX7qr_XdF; Thu, 11 Apr 2024 13:00:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC38241EA5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712840414;
	bh=Fko8ig7S9pmhurmt2GyqK47nlKlvK7HkdgS4pex1UHE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=1zFLiAb5c9zd9gef4IslmVqYe5LZAOjiNCIvovHsWUA5cSc/UTF66D9YSgWEkrQwd
	 lMqxVyNCNZL5hKvl/zhY9Jxq+8ezuPbi9LivXLbb35Z2bltZ3NO6F8yIsqkL5KyvTv
	 CAn0UDgUfBl30CLSptQUuyeJBoUdRk+KwxDyjuc7cS2SjFivb4y4RaUsax/emXbWUF
	 NrL33BV3/QSJ6A9Qht2F61tx2aGSK1tYrJdmhC4TsVoEsTxc7j9brIJbonMz3FgmQV
	 znaIPzSCL/QZpdK/A12buul4Uyq6rnSBpiyzvQdW1agwfsKz7h920iYIcEWm/FqtRo
	 BnZmyqqiMkZFQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC38241EA5;
	Thu, 11 Apr 2024 13:00:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4E3741BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 13:00:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 392E1404B0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 13:00:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c8Skhu1cuQqH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Apr 2024 13:00:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B547A40383
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B547A40383
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B547A40383
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 13:00:10 +0000 (UTC)
X-CSE-ConnectionGUID: aAWJrEVqS3GRB0tMz6noOA==
X-CSE-MsgGUID: 2vOD5KPyRf231bjOd9n0PA==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="12035624"
X-IronPort-AV: E=Sophos;i="6.07,193,1708416000"; d="scan'208";a="12035624"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 06:00:08 -0700
X-CSE-ConnectionGUID: RfRZ3rUrShO2hVk3wS3v7Q==
X-CSE-MsgGUID: ogXDXlr9RtKtH4DsVsqq/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,193,1708416000"; d="scan'208";a="20872529"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa010.fm.intel.com with ESMTP; 11 Apr 2024 06:00:06 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Thu, 11 Apr 2024 14:49:53 +0200
Message-Id: <20240411124953.120478-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712840411; x=1744376411;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8zKUIC1hk9rgrfD12tZ7ClAXepu1HXCiDtO5tI5sSio=;
 b=lHw/Goo2LUA0nLzck5b8M2GrSuqI7oeN5mlP1wK1kw+/nQsWZwKojCUu
 8hGAQETE3JDX7LIYfh9kcholcK7liFSWhyAGdo9vMlq3rMq9vOkXau/mG
 aV2b/JRx2y5DfAejUj4uPAktjqLwwKXvvbK5ZuUIsr11I3IVZBv5x+WdC
 Zvh19a6DQ0raz6Ti2ezLfhRcggaUfIiT9xkqUvuGxUIz9mWz/9SBjnma6
 GntqxCEE2/F5PMUIwr1pRrNY/HlPCZ7CHY0vSeq46abFJeRBN6oCAhUMB
 KA4fE9vqsaZ+Q5dqQjLJ0t8PjBtXyUi+TbMtNtixf8gVYsOiefLsztPH7
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lHw/Goo2
Subject: [Intel-wired-lan] [PATCH iwl-net] i40e: Do not use WQ_MEM_RECLAIM
 flag for workqueue
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
Cc: Sindhu Devale <sindhu.devale@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sindhu Devale <sindhu.devale@intel.com>

Issue reported by customer during SRIOV testing, call trace:
When both i40e and the i40iw driver are loaded, a warning
in check_flush_dependency is being triggered. This seems
to be because of the i40e driver workqueue is allocated with
the WQ_MEM_RECLAIM flag, and the i40iw one is not.
    
Similar error was encountered on ice too and it was fixed by
removing the flag. Do the same for i40e too.

[Feb 9 09:08] ------------[ cut here ]------------
[  +0.000004] workqueue: WQ_MEM_RECLAIM i40e:i40e_service_task [i40e] is
flushing !WQ_MEM_RECLAIM infiniband:0x0
[  +0.000060] WARNING: CPU: 0 PID: 937 at kernel/workqueue.c:2966
check_flush_dependency+0x10b/0x120
[  +0.000007] Modules linked in: snd_seq_dummy snd_hrtimer snd_seq
snd_timer snd_seq_device snd soundcore nls_utf8 cifs cifs_arc4
nls_ucs2_utils rdma_cm iw_cm ib_cm cifs_md4 dns_resolver netfs qrtr
rfkill sunrpc vfat fat intel_rapl_msr intel_rapl_common irdma
intel_uncore_frequency intel_uncore_frequency_common ice ipmi_ssif
isst_if_common skx_edac nfit libnvdimm x86_pkg_temp_thermal
intel_powerclamp gnss coretemp ib_uverbs rapl intel_cstate ib_core
iTCO_wdt iTCO_vendor_support acpi_ipmi mei_me ipmi_si intel_uncore
ioatdma i2c_i801 joydev pcspkr mei ipmi_devintf lpc_ich
intel_pch_thermal i2c_smbus ipmi_msghandler acpi_power_meter acpi_pad
xfs libcrc32c ast sd_mod drm_shmem_helper t10_pi drm_kms_helper sg ixgbe
drm i40e ahci crct10dif_pclmul libahci crc32_pclmul igb crc32c_intel
libata ghash_clmulni_intel i2c_algo_bit mdio dca wmi dm_mirror
dm_region_hash dm_log dm_mod fuse
[  +0.000050] CPU: 0 PID: 937 Comm: kworker/0:3 Kdump: loaded Not
tainted 6.8.0-rc2-Feb-net_dev-Qiueue-00279-gbd43c5687e05 #1
[  +0.000003] Hardware name: Intel Corporation S2600BPB/S2600BPB, BIOS
SE5C620.86B.02.01.0013.121520200651 12/15/2020
[  +0.000001] Workqueue: i40e i40e_service_task [i40e]
[  +0.000024] RIP: 0010:check_flush_dependency+0x10b/0x120
[  +0.000003] Code: ff 49 8b 54 24 18 48 8d 8b b0 00 00 00 49 89 e8 48
81 c6 b0 00 00 00 48 c7 c7 b0 97 fa 9f c6 05 8a cc 1f 02 01 e8 35 b3 fd
ff <0f> 0b e9 10 ff ff ff 80 3d 78 cc 1f 02 00 75 94 e9 46 ff ff ff 90
[  +0.000002] RSP: 0018:ffffbd294976bcf8 EFLAGS: 00010282
[  +0.000002] RAX: 0000000000000000 RBX: ffff94d4c483c000 RCX:
0000000000000027
[  +0.000001] RDX: ffff94d47f620bc8 RSI: 0000000000000001 RDI:
ffff94d47f620bc0
[  +0.000001] RBP: 0000000000000000 R08: 0000000000000000 R09:
00000000ffff7fff
[  +0.000001] R10: ffffbd294976bb98 R11: ffffffffa0be65e8 R12:
ffff94c5451ea180
[  +0.000001] R13: ffff94c5ab5e8000 R14: ffff94c5c20b6e05 R15:
ffff94c5f1330ab0
[  +0.000001] FS:  0000000000000000(0000) GS:ffff94d47f600000(0000)
knlGS:0000000000000000
[  +0.000002] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  +0.000001] CR2: 00007f9e6f1fca70 CR3: 0000000038e20004 CR4:
00000000007706f0
[  +0.000000] DR0: 0000000000000000 DR1: 0000000000000000 DR2:
0000000000000000
[  +0.000001] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7:
0000000000000400
[  +0.000001] PKRU: 55555554
[  +0.000001] Call Trace:
[  +0.000001]  <TASK>
[  +0.000002]  ? __warn+0x80/0x130
[  +0.000003]  ? check_flush_dependency+0x10b/0x120
[  +0.000002]  ? report_bug+0x195/0x1a0
[  +0.000005]  ? handle_bug+0x3c/0x70
[  +0.000003]  ? exc_invalid_op+0x14/0x70
[  +0.000002]  ? asm_exc_invalid_op+0x16/0x20
[  +0.000006]  ? check_flush_dependency+0x10b/0x120
[  +0.000002]  ? check_flush_dependency+0x10b/0x120
[  +0.000002]  __flush_workqueue+0x126/0x3f0
[  +0.000015]  ib_cache_cleanup_one+0x1c/0xe0 [ib_core]
[  +0.000056]  __ib_unregister_device+0x6a/0xb0 [ib_core]
[  +0.000023]  ib_unregister_device_and_put+0x34/0x50 [ib_core]
[  +0.000020]  i40iw_close+0x4b/0x90 [irdma]
[  +0.000022]  i40e_notify_client_of_netdev_close+0x54/0xc0 [i40e]
[  +0.000035]  i40e_service_task+0x126/0x190 [i40e]
[  +0.000024]  process_one_work+0x174/0x340
[  +0.000003]  worker_thread+0x27e/0x390
[  +0.000001]  ? __pfx_worker_thread+0x10/0x10
[  +0.000002]  kthread+0xdf/0x110
[  +0.000002]  ? __pfx_kthread+0x10/0x10
[  +0.000002]  ret_from_fork+0x2d/0x50
[  +0.000003]  ? __pfx_kthread+0x10/0x10
[  +0.000001]  ret_from_fork_asm+0x1b/0x30
[  +0.000004]  </TASK>
[  +0.000001] ---[ end trace 0000000000000000 ]---

Fixes: 4d5957cbdecd ("i40e: remove WQ_UNBOUND and the task limit of our workqueue")
Signed-off-by: Sindhu Devale <sindhu.devale@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 6010a49..dbc4ab90 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -16727,7 +16727,7 @@ static int __init i40e_init_module(void)
 	 * since we need to be able to guarantee forward progress even under
 	 * memory pressure.
 	 */
-	i40e_wq = alloc_workqueue("%s", WQ_MEM_RECLAIM, 0, i40e_driver_name);
+	i40e_wq = alloc_workqueue("%s", 0, 0, i40e_driver_name);
 	if (!i40e_wq) {
 		pr_err("%s: Failed to create workqueue\n", i40e_driver_name);
 		return -ENOMEM;
-- 
2.25.1

