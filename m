Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A3D4FE739
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Apr 2022 19:36:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3EF90610B9;
	Tue, 12 Apr 2022 17:36:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jQ0mKdTmkAeq; Tue, 12 Apr 2022 17:36:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E8A6610B8;
	Tue, 12 Apr 2022 17:36:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C49151BF3C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 17:36:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B1380610B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 17:36:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4dvAK5UKbHmK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Apr 2022 17:36:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EE4B7610B6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 17:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649784961; x=1681320961;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Tu102DH4EG69pA7Of/Cq6MP2/CgC1Dkl9KBPVI+xTtw=;
 b=LMLvVNPH8HiNolcX6B30g49k4CCjnZV/y/pfMD0bCxvHJ74Px1iiOfAC
 r628oorZvZIv7E2l+h8NFJ5g7uRFBNAEmmHPf1KyJVPjWidWr3zaNdrlz
 Q1LZDsYUUmIg+HOpq2+RQA/jZfEHMHNJyAvFIUeC8TEBQBOq2J2A6tqM2
 9+7/pkZ1KHf4IwggxCZtnvvE5bwI7jwVq4uUi4rMBkG2O0TbAVroSBkcA
 NVL1uqcsldLeSLdc15W72O30IrSxPySYgT6YWIm4Hc/a5mhDjYu20phKB
 KUO1McwSL+aCGXSBGHslcgPsoqpKU+FEy8DzG0PJtGnAn1RBEkB36kM1B Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10315"; a="262630999"
X-IronPort-AV: E=Sophos;i="5.90,254,1643702400"; d="scan'208";a="262630999"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2022 10:34:26 -0700
X-IronPort-AV: E=Sophos;i="5.90,254,1643702400"; d="scan'208";a="590421603"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2022 10:34:26 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 12 Apr 2022 10:34:22 -0700
Message-Id: <20220412173422.1154381-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.456.ga9c7032d4631
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net PATCH] ice: fix use-after-free when
 deinitializing mailbox snapshot
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
Cc: Slawomir Laba <slawomirx.laba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

During ice_sriov_configure, if num_vfs is 0, we are being asked by the
kernel to remove all VFs.

The driver first de-initializes the snapshot before freeing all the VFs.
This results in a use-after-free BUG detected by KASAN. The bug occurs
because the snapshot can still be accessed until all VFs are removed.

Fix this by freeing all the VFs first before calling
ice_mbx_deinit_snapshot.

[  +0.032591] ==================================================================
[  +0.000021] BUG: KASAN: use-after-free in ice_mbx_vf_state_handler+0x1c3/0x410 [ice]
[  +0.000315] Write of size 28 at addr ffff889908eb6f28 by task kworker/55:2/1530996

[  +0.000029] CPU: 55 PID: 1530996 Comm: kworker/55:2 Kdump: loaded Tainted: G S        I       5.17.0-dirty #1
[  +0.000022] Hardware name: Dell Inc. PowerEdge R740/0923K0, BIOS 1.6.13 12/17/2018
[  +0.000013] Workqueue: ice ice_service_task [ice]
[  +0.000279] Call Trace:
[  +0.000012]  <TASK>
[  +0.000011]  dump_stack_lvl+0x33/0x42
[  +0.000030]  print_report.cold.13+0xb2/0x6b3
[  +0.000028]  ? ice_mbx_vf_state_handler+0x1c3/0x410 [ice]
[  +0.000295]  kasan_report+0xa5/0x120
[  +0.000026]  ? __switch_to_asm+0x21/0x70
[  +0.000024]  ? ice_mbx_vf_state_handler+0x1c3/0x410 [ice]
[  +0.000298]  kasan_check_range+0x183/0x1e0
[  +0.000019]  memset+0x1f/0x40
[  +0.000018]  ice_mbx_vf_state_handler+0x1c3/0x410 [ice]
[  +0.000304]  ? ice_conv_link_speed_to_virtchnl+0x160/0x160 [ice]
[  +0.000297]  ? ice_vsi_dis_spoofchk+0x40/0x40 [ice]
[  +0.000305]  ice_is_malicious_vf+0x1aa/0x250 [ice]
[  +0.000303]  ? ice_restore_all_vfs_msi_state+0x160/0x160 [ice]
[  +0.000297]  ? __mutex_unlock_slowpath.isra.15+0x410/0x410
[  +0.000022]  ? ice_debug_cq+0xb7/0x230 [ice]
[  +0.000273]  ? __kasan_slab_alloc+0x2f/0x90
[  +0.000022]  ? memset+0x1f/0x40
[  +0.000017]  ? do_raw_spin_lock+0x119/0x1d0
[  +0.000022]  ? rwlock_bug.part.2+0x60/0x60
[  +0.000024]  __ice_clean_ctrlq+0x3a6/0xd60 [ice]
[  +0.000273]  ? newidle_balance+0x5b1/0x700
[  +0.000026]  ? ice_print_link_msg+0x2f0/0x2f0 [ice]
[  +0.000271]  ? update_cfs_group+0x1b/0x140
[  +0.000018]  ? load_balance+0x1260/0x1260
[  +0.000022]  ? ice_process_vflr_event+0x27/0x130 [ice]
[  +0.000301]  ice_service_task+0x136e/0x1470 [ice]
[  +0.000281]  process_one_work+0x3b4/0x6c0
[  +0.000030]  worker_thread+0x65/0x660
[  +0.000023]  ? __kthread_parkme+0xe4/0x100
[  +0.000021]  ? process_one_work+0x6c0/0x6c0
[  +0.000020]  kthread+0x179/0x1b0
[  +0.000018]  ? kthread_complete_and_exit+0x20/0x20
[  +0.000022]  ret_from_fork+0x22/0x30
[  +0.000026]  </TASK>

[  +0.000018] Allocated by task 10742:
[  +0.000013]  kasan_save_stack+0x1c/0x40
[  +0.000018]  __kasan_kmalloc+0x84/0xa0
[  +0.000016]  kmem_cache_alloc_trace+0x16c/0x2e0
[  +0.000015]  intel_iommu_probe_device+0xeb/0x860
[  +0.000015]  __iommu_probe_device+0x9a/0x2f0
[  +0.000016]  iommu_probe_device+0x43/0x270
[  +0.000015]  iommu_bus_notifier+0xa7/0xd0
[  +0.000015]  blocking_notifier_call_chain+0x90/0xc0
[  +0.000017]  device_add+0x5f3/0xd70
[  +0.000014]  pci_device_add+0x404/0xa40
[  +0.000015]  pci_iov_add_virtfn+0x3b0/0x550
[  +0.000016]  sriov_enable+0x3bb/0x600
[  +0.000013]  ice_ena_vfs+0x113/0xa79 [ice]
[  +0.000293]  ice_sriov_configure.cold.17+0x21/0xe0 [ice]
[  +0.000291]  sriov_numvfs_store+0x160/0x200
[  +0.000015]  kernfs_fop_write_iter+0x1db/0x270
[  +0.000018]  new_sync_write+0x21d/0x330
[  +0.000013]  vfs_write+0x376/0x410
[  +0.000013]  ksys_write+0xba/0x150
[  +0.000012]  do_syscall_64+0x3a/0x80
[  +0.000012]  entry_SYSCALL_64_after_hwframe+0x44/0xae

[  +0.000028] Freed by task 10742:
[  +0.000011]  kasan_save_stack+0x1c/0x40
[  +0.000015]  kasan_set_track+0x21/0x30
[  +0.000016]  kasan_set_free_info+0x20/0x30
[  +0.000012]  __kasan_slab_free+0x104/0x170
[  +0.000016]  kfree+0x9b/0x470
[  +0.000013]  devres_destroy+0x1c/0x20
[  +0.000015]  devm_kfree+0x33/0x40
[  +0.000012]  ice_mbx_deinit_snapshot+0x39/0x70 [ice]
[  +0.000295]  ice_sriov_configure+0xb0/0x260 [ice]
[  +0.000295]  sriov_numvfs_store+0x1bc/0x200
[  +0.000015]  kernfs_fop_write_iter+0x1db/0x270
[  +0.000016]  new_sync_write+0x21d/0x330
[  +0.000012]  vfs_write+0x376/0x410
[  +0.000012]  ksys_write+0xba/0x150
[  +0.000012]  do_syscall_64+0x3a/0x80
[  +0.000012]  entry_SYSCALL_64_after_hwframe+0x44/0xae

[  +0.000024] Last potentially related work creation:
[  +0.000010]  kasan_save_stack+0x1c/0x40
[  +0.000016]  __kasan_record_aux_stack+0x98/0xa0
[  +0.000013]  insert_work+0x34/0x160
[  +0.000015]  __queue_work+0x20e/0x650
[  +0.000016]  queue_work_on+0x4c/0x60
[  +0.000015]  nf_nat_masq_schedule+0x297/0x2e0 [nf_nat]
[  +0.000034]  masq_device_event+0x5a/0x60 [nf_nat]
[  +0.000031]  raw_notifier_call_chain+0x5f/0x80
[  +0.000017]  dev_close_many+0x1d6/0x2c0
[  +0.000015]  unregister_netdevice_many+0x4e3/0xa30
[  +0.000015]  unregister_netdevice_queue+0x192/0x1d0
[  +0.000014]  iavf_remove+0x8f9/0x930 [iavf]
[  +0.000058]  pci_device_remove+0x65/0x110
[  +0.000015]  device_release_driver_internal+0xf8/0x190
[  +0.000017]  pci_stop_bus_device+0xb5/0xf0
[  +0.000014]  pci_stop_and_remove_bus_device+0xe/0x20
[  +0.000016]  pci_iov_remove_virtfn+0x19c/0x230
[  +0.000015]  sriov_disable+0x4f/0x170
[  +0.000014]  ice_free_vfs+0x9a/0x490 [ice]
[  +0.000306]  ice_sriov_configure+0xb8/0x260 [ice]
[  +0.000294]  sriov_numvfs_store+0x1bc/0x200
[  +0.000015]  kernfs_fop_write_iter+0x1db/0x270
[  +0.000016]  new_sync_write+0x21d/0x330
[  +0.000012]  vfs_write+0x376/0x410
[  +0.000012]  ksys_write+0xba/0x150
[  +0.000012]  do_syscall_64+0x3a/0x80
[  +0.000012]  entry_SYSCALL_64_after_hwframe+0x44/0xae

[  +0.000025] The buggy address belongs to the object at ffff889908eb6f00
               which belongs to the cache kmalloc-96 of size 96
[  +0.000016] The buggy address is located 40 bytes inside of
               96-byte region [ffff889908eb6f00, ffff889908eb6f60)

[  +0.000026] The buggy address belongs to the physical page:
[  +0.000010] page:00000000b7e99a2e refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x1908eb6
[  +0.000016] flags: 0x57ffffc0000200(slab|node=1|zone=2|lastcpupid=0x1fffff)
[  +0.000024] raw: 0057ffffc0000200 ffffea0069d9fd80 dead000000000002 ffff88810004c780
[  +0.000015] raw: 0000000000000000 0000000000200020 00000001ffffffff 0000000000000000
[  +0.000009] page dumped because: kasan: bad access detected

[  +0.000016] Memory state around the buggy address:
[  +0.000012]  ffff889908eb6e00: fa fb fb fb fb fb fb fb fb fb fb fb fc fc fc fc
[  +0.000014]  ffff889908eb6e80: fa fb fb fb fb fb fb fb fb fb fb fb fc fc fc fc
[  +0.000014] >ffff889908eb6f00: fa fb fb fb fb fb fb fb fb fb fb fb fc fc fc fc
[  +0.000011]                                   ^
[  +0.000013]  ffff889908eb6f80: fa fb fb fb fb fb fb fb fb fb fb fb fc fc fc fc
[  +0.000013]  ffff889908eb7000: fa fb fb fb fb fb fb fb fc fc fc fc fa fb fb fb
[  +0.000012] ==================================================================

Fixes: 0891c89674e8 ("ice: warn about potentially malicious VFs")
Reported-by: Slawomir Laba <slawomirx.laba@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 8915a9d39e36..0c438219f7a3 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1046,8 +1046,8 @@ int ice_sriov_configure(struct pci_dev *pdev, int num_vfs)
 
 	if (!num_vfs) {
 		if (!pci_vfs_assigned(pdev)) {
-			ice_mbx_deinit_snapshot(&pf->hw);
 			ice_free_vfs(pf);
+			ice_mbx_deinit_snapshot(&pf->hw);
 			if (pf->lag)
 				ice_enable_lag(pf->lag);
 			return 0;

base-commit: e3fa461d8b0e185b7da8a101fe94dfe6dd500ac0
-- 
2.35.1.456.ga9c7032d4631

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
