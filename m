Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC886E7DA0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Apr 2023 17:08:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF8D7616B7;
	Wed, 19 Apr 2023 15:08:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF8D7616B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681916910;
	bh=MBGH8lGKr7qICYry83p7OgxGMtyzDWxbUUnBDiLvNLk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZgNr3zVb/LwJ7WyGF3BlXWyq2Er5Hw81t8G25YdhW5liKHvAWCiQ6dc8yowRAGGnu
	 79zxKvskwagCQbdfHCKBnCutLC2U8rIS6osetTZnthac4gmV3uF67tOT69gm1gA4LK
	 Sm81Y0l1WEdFTuvH0YuvVb1eRnoDLsNLoT81jNohGo7u+IlOijDIErgYGh4SduQ2qE
	 2UMORbA5tRXMbqeicllhtzDc6ZlWIUQWCFG6YmSL1leo0Fe3i1QYeczYgVTZUK3A4M
	 ITSce5XSkZx49j2h74/iWWg0G++wmTbkYgKoS3pcSES9Gq4pijaTPII7MBsRb4QNbv
	 DXChW6PDEBzKg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A1Fbchibo5Qc; Wed, 19 Apr 2023 15:08:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6EEB9616B5;
	Wed, 19 Apr 2023 15:08:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6EEB9616B5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1932F1C4320
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 15:08:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E5592410AB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 15:08:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E5592410AB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K_QHvX1vCqCx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Apr 2023 15:08:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0583409F0
Received: from mail-m11875.qiye.163.com (mail-m11875.qiye.163.com
 [115.236.118.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E0583409F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 15:08:21 +0000 (UTC)
Received: from localhost.localdomain (unknown [113.92.156.116])
 by mail-m11875.qiye.163.com (Hmail) with ESMTPA id 197CD280231;
 Wed, 19 Apr 2023 23:08:03 +0800 (CST)
From: Ding Hui <dinghui@sangfor.com.cn>
To: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com
Date: Wed, 19 Apr 2023 23:07:08 +0800
Message-Id: <20230419150709.24810-2-dinghui@sangfor.com.cn>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230419150709.24810-1-dinghui@sangfor.com.cn>
References: <20230419150709.24810-1-dinghui@sangfor.com.cn>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDGE9PVk8YQh0ZQhoeSk8aT1UTARMWGhIXJBQOD1
 lXWRgSC1lBWUpKSFVCSVVKTk1VSkpNWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVSktLVUtZBg++
X-HM-Tid: 0a879a0ef2b22eb1kusn197cd280231
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OFE6Lio6ET0VEhcJLlYaS0hO
 PREaCQhVSlVKTUNKQkpNQ0NPSUhKVTMWGhIXVR8SFRwTDhI7CBoVHB0UCVUYFBZVGBVFWVdZEgtZ
 QVlKSkhVQklVSk5NVUpKTVlXWQgBWUFKS01JSTcG
Subject: [Intel-wired-lan] [PATCH net v2 1/2] iavf: Fix use-after-free in
 free_netdev
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
Cc: keescook@chromium.org, grzegorzx.szczurek@intel.com,
 mitch.a.williams@intel.com, Ding Hui <dinghui@sangfor.com.cn>,
 linux-kernel@vger.kernel.org, huangcun@sangfor.com.cn,
 gregory.v.rose@intel.com, michal.kubiak@intel.com, jeffrey.t.kirsher@intel.com,
 simon.horman@corigine.com, pengdonglin@sangfor.com.cn, netdev@vger.kernel.org,
 linux-hardening@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

We do netif_napi_add() for all allocated q_vectors[], but potentially
do netif_napi_del() for part of them, then kfree q_vectors and leave
invalid pointers at dev->napi_list.

Reproducer:

  [root@host ~]# cat repro.sh
  #!/bin/bash

  pf_dbsf="0000:41:00.0"
  vf0_dbsf="0000:41:02.0"
  g_pids=()

  function do_set_numvf()
  {
      echo 2 >/sys/bus/pci/devices/${pf_dbsf}/sriov_numvfs
      sleep $((RANDOM%3+1))
      echo 0 >/sys/bus/pci/devices/${pf_dbsf}/sriov_numvfs
      sleep $((RANDOM%3+1))
  }

  function do_set_channel()
  {
      local nic=$(ls -1 --indicator-style=none /sys/bus/pci/devices/${vf0_dbsf}/net/)
      [ -z "$nic" ] && { sleep $((RANDOM%3)) ; return 1; }
      ifconfig $nic 192.168.18.5 netmask 255.255.255.0
      ifconfig $nic up
      ethtool -L $nic combined 1
      ethtool -L $nic combined 4
      sleep $((RANDOM%3))
  }

  function on_exit()
  {
      local pid
      for pid in "${g_pids[@]}"; do
          kill -0 "$pid" &>/dev/null && kill "$pid" &>/dev/null
      done
      g_pids=()
  }

  trap "on_exit; exit" EXIT

  while :; do do_set_numvf ; done &
  g_pids+=($!)
  while :; do do_set_channel ; done &
  g_pids+=($!)

  wait

Result:

[ 4093.900222] ==================================================================
[ 4093.900230] BUG: KASAN: use-after-free in free_netdev+0x308/0x390
[ 4093.900232] Read of size 8 at addr ffff88b4dc145640 by task repro.sh/6699
[ 4093.900233]
[ 4093.900236] CPU: 10 PID: 6699 Comm: repro.sh Kdump: loaded Tainted: G           O     --------- -t - 4.18.0 #1
[ 4093.900238] Hardware name: Powerleader PR2008AL/H12DSi-N6, BIOS 2.0 04/09/2021
[ 4093.900239] Call Trace:
[ 4093.900244]  dump_stack+0x71/0xab
[ 4093.900249]  print_address_description+0x6b/0x290
[ 4093.900251]  ? free_netdev+0x308/0x390
[ 4093.900252]  kasan_report+0x14a/0x2b0
[ 4093.900254]  free_netdev+0x308/0x390
[ 4093.900261]  iavf_remove+0x825/0xd20 [iavf]
[ 4093.900265]  pci_device_remove+0xa8/0x1f0
[ 4093.900268]  device_release_driver_internal+0x1c6/0x460
[ 4093.900271]  pci_stop_bus_device+0x101/0x150
[ 4093.900273]  pci_stop_and_remove_bus_device+0xe/0x20
[ 4093.900275]  pci_iov_remove_virtfn+0x187/0x420
[ 4093.900277]  ? pci_iov_add_virtfn+0xe10/0xe10
[ 4093.900278]  ? pci_get_subsys+0x90/0x90
[ 4093.900280]  sriov_disable+0xed/0x3e0
[ 4093.900282]  ? bus_find_device+0x12d/0x1a0
[ 4093.900290]  i40e_free_vfs+0x754/0x1210 [i40e]
[ 4093.900298]  ? i40e_reset_all_vfs+0x880/0x880 [i40e]
[ 4093.900299]  ? pci_get_device+0x7c/0x90
[ 4093.900300]  ? pci_get_subsys+0x90/0x90
[ 4093.900306]  ? pci_vfs_assigned.part.7+0x144/0x210
[ 4093.900309]  ? __mutex_lock_slowpath+0x10/0x10
[ 4093.900315]  i40e_pci_sriov_configure+0x1fa/0x2e0 [i40e]
[ 4093.900318]  sriov_numvfs_store+0x214/0x290
[ 4093.900320]  ? sriov_totalvfs_show+0x30/0x30
[ 4093.900321]  ? __mutex_lock_slowpath+0x10/0x10
[ 4093.900323]  ? __check_object_size+0x15a/0x350
[ 4093.900326]  kernfs_fop_write+0x280/0x3f0
[ 4093.900329]  vfs_write+0x145/0x440
[ 4093.900330]  ksys_write+0xab/0x160
[ 4093.900332]  ? __ia32_sys_read+0xb0/0xb0
[ 4093.900334]  ? fput_many+0x1a/0x120
[ 4093.900335]  ? filp_close+0xf0/0x130
[ 4093.900338]  do_syscall_64+0xa0/0x370
[ 4093.900339]  ? page_fault+0x8/0x30
[ 4093.900341]  entry_SYSCALL_64_after_hwframe+0x65/0xca
[ 4093.900357] RIP: 0033:0x7f16ad4d22c0
[ 4093.900359] Code: 73 01 c3 48 8b 0d d8 cb 2c 00 f7 d8 64 89 01 48 83 c8 ff c3 66 0f 1f 44 00 00 83 3d 89 24 2d 00 00 75 10 b8 01 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 31 c3 48 83 ec 08 e8 fe dd 01 00 48 89 04 24
[ 4093.900360] RSP: 002b:00007ffd6491b7f8 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
[ 4093.900362] RAX: ffffffffffffffda RBX: 0000000000000002 RCX: 00007f16ad4d22c0
[ 4093.900363] RDX: 0000000000000002 RSI: 0000000001a41408 RDI: 0000000000000001
[ 4093.900364] RBP: 0000000001a41408 R08: 00007f16ad7a1780 R09: 00007f16ae1f2700
[ 4093.900364] R10: 0000000000000001 R11: 0000000000000246 R12: 0000000000000002
[ 4093.900365] R13: 0000000000000001 R14: 00007f16ad7a0620 R15: 0000000000000001
[ 4093.900367]
[ 4093.900368] Allocated by task 820:
[ 4093.900371]  kasan_kmalloc+0xa6/0xd0
[ 4093.900373]  __kmalloc+0xfb/0x200
[ 4093.900376]  iavf_init_interrupt_scheme+0x63b/0x1320 [iavf]
[ 4093.900380]  iavf_watchdog_task+0x3d51/0x52c0 [iavf]
[ 4093.900382]  process_one_work+0x56a/0x11f0
[ 4093.900383]  worker_thread+0x8f/0xf40
[ 4093.900384]  kthread+0x2a0/0x390
[ 4093.900385]  ret_from_fork+0x1f/0x40
[ 4093.900387]  0xffffffffffffffff
[ 4093.900387]
[ 4093.900388] Freed by task 6699:
[ 4093.900390]  __kasan_slab_free+0x137/0x190
[ 4093.900391]  kfree+0x8b/0x1b0
[ 4093.900394]  iavf_free_q_vectors+0x11d/0x1a0 [iavf]
[ 4093.900397]  iavf_remove+0x35a/0xd20 [iavf]
[ 4093.900399]  pci_device_remove+0xa8/0x1f0
[ 4093.900400]  device_release_driver_internal+0x1c6/0x460
[ 4093.900401]  pci_stop_bus_device+0x101/0x150
[ 4093.900402]  pci_stop_and_remove_bus_device+0xe/0x20
[ 4093.900403]  pci_iov_remove_virtfn+0x187/0x420
[ 4093.900404]  sriov_disable+0xed/0x3e0
[ 4093.900409]  i40e_free_vfs+0x754/0x1210 [i40e]
[ 4093.900415]  i40e_pci_sriov_configure+0x1fa/0x2e0 [i40e]
[ 4093.900416]  sriov_numvfs_store+0x214/0x290
[ 4093.900417]  kernfs_fop_write+0x280/0x3f0
[ 4093.900418]  vfs_write+0x145/0x440
[ 4093.900419]  ksys_write+0xab/0x160
[ 4093.900420]  do_syscall_64+0xa0/0x370
[ 4093.900421]  entry_SYSCALL_64_after_hwframe+0x65/0xca
[ 4093.900422]  0xffffffffffffffff
[ 4093.900422]
[ 4093.900424] The buggy address belongs to the object at ffff88b4dc144200
                which belongs to the cache kmalloc-8k of size 8192
[ 4093.900425] The buggy address is located 5184 bytes inside of
                8192-byte region [ffff88b4dc144200, ffff88b4dc146200)
[ 4093.900425] The buggy address belongs to the page:
[ 4093.900427] page:ffffea00d3705000 refcount:1 mapcount:0 mapping:ffff88bf04415c80 index:0x0 compound_mapcount: 0
[ 4093.900430] flags: 0x10000000008100(slab|head)
[ 4093.900433] raw: 0010000000008100 dead000000000100 dead000000000200 ffff88bf04415c80
[ 4093.900434] raw: 0000000000000000 0000000000030003 00000001ffffffff 0000000000000000
[ 4093.900434] page dumped because: kasan: bad access detected
[ 4093.900435]
[ 4093.900435] Memory state around the buggy address:
[ 4093.900436]  ffff88b4dc145500: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
[ 4093.900437]  ffff88b4dc145580: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
[ 4093.900438] >ffff88b4dc145600: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
[ 4093.900438]                                            ^
[ 4093.900439]  ffff88b4dc145680: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
[ 4093.900440]  ffff88b4dc145700: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
[ 4093.900440] ==================================================================

Although the patch #2 (of 2) can avoid the issuse triggered by this
repro.sh, there still are other potential risks that if num_active_queues
is changed to less than allocated q_vectors[] by unexpected, the
mismatched netif_napi_add/del() can also casue UAF.

Since we actually call netif_napi_add() for all allocated q_vectors
unconditionally in iavf_alloc_q_vectors(), so we should fix it by
letting netif_napi_del() match to netif_napi_add().

Fixes: 5eae00c57f5e ("i40evf: main driver core")
Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
Cc: Donglin Peng <pengdonglin@sangfor.com.cn>
Cc: Huang Cun <huangcun@sangfor.com.cn>
Acked-by: Michal Kubiak <michal.kubiak@intel.com>
Reviewed-by: Simon Horman <simon.horman@corigine.com>
---
v1 to v2:
  - add Fixes: tag
  - add reproduction script
  - update commit message

---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 095201e83c9d..a57e3425f960 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1849,19 +1849,15 @@ static int iavf_alloc_q_vectors(struct iavf_adapter *adapter)
 static void iavf_free_q_vectors(struct iavf_adapter *adapter)
 {
 	int q_idx, num_q_vectors;
-	int napi_vectors;
 
 	if (!adapter->q_vectors)
 		return;
 
 	num_q_vectors = adapter->num_msix_vectors - NONQ_VECS;
-	napi_vectors = adapter->num_active_queues;
 
 	for (q_idx = 0; q_idx < num_q_vectors; q_idx++) {
 		struct iavf_q_vector *q_vector = &adapter->q_vectors[q_idx];
-
-		if (q_idx < napi_vectors)
-			netif_napi_del(&q_vector->napi);
+		netif_napi_del(&q_vector->napi);
 	}
 	kfree(adapter->q_vectors);
 	adapter->q_vectors = NULL;
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
