Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A51426E7DA3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Apr 2023 17:08:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4074B616B5;
	Wed, 19 Apr 2023 15:08:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4074B616B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681916920;
	bh=mVDqQR+NcIHCcFQgmFjQRNZ6l6fb/zSuB8fe83ZllJo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0Aj878KvJjgkQV5MarAvX+b1F5zOPOgKYag/U9h3jStnEhBoYwQ00B6+1cMsTfkAm
	 6yQXk1zFIZY2kdzjOsB21MyeNWrO4rnxFwJE8mWpX7U7wzvYy62JYRIXNK05f8/qlK
	 MtFaxWIqwxzrnOGzGN9cTjWfUR6gp44SezXy9f5OIxg3p+CCKLldL10Ls84KHSV2UZ
	 w3X85FbHzYNHmLbSAJuZVlMFFo+l09QjmFwuXPODaaoKAhvy36qJR7pB15TeUT02rP
	 N8ad/xlRYJCTKE+ZOe850pEjK4F911myweMfFYcEKoA4EdhCm3mLb9UsuS6zn8g23P
	 U4VCu2XJQZRbg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O5X_2vSQkvPF; Wed, 19 Apr 2023 15:08:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03062607D6;
	Wed, 19 Apr 2023 15:08:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03062607D6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D7F461C4320
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 15:08:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B14F7607FE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 15:08:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B14F7607FE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dKs1K599yiqY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Apr 2023 15:08:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F25EE616B5
Received: from mail-m11875.qiye.163.com (mail-m11875.qiye.163.com
 [115.236.118.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F25EE616B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 15:08:31 +0000 (UTC)
Received: from localhost.localdomain (unknown [113.92.156.116])
 by mail-m11875.qiye.163.com (Hmail) with ESMTPA id 71210280331;
 Wed, 19 Apr 2023 23:08:06 +0800 (CST)
From: Ding Hui <dinghui@sangfor.com.cn>
To: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com
Date: Wed, 19 Apr 2023 23:07:09 +0800
Message-Id: <20230419150709.24810-3-dinghui@sangfor.com.cn>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230419150709.24810-1-dinghui@sangfor.com.cn>
References: <20230419150709.24810-1-dinghui@sangfor.com.cn>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaTkkeVkgeSk5MSEpISB9CSVUTARMWGhIXJBQOD1
 lXWRgSC1lBWUpKSFVCSVVKTk1VSkpNWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLVUtZBg++
X-HM-Tid: 0a879a0effd02eb1kusn71210280331
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mgg6KRw6MT0PGhc#PlEdS1Yr
 Kj0aFBJVSlVKTUNKQkpNQ0NMQ05JVTMWGhIXVR8SFRwTDhI7CBoVHB0UCVUYFBZVGBVFWVdZEgtZ
 QVlKSkhVQklVSk5NVUpKTVlXWQgBWUFDSEhMNwY+
Subject: [Intel-wired-lan] [PATCH net v2 2/2] iavf: Fix out-of-bounds when
 setting channels on remove
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

If we set channels greater when iavf_remove, the waiting reset done
will be timeout, then returned with error but changed num_active_queues
directly, that will lead to OOB like the following logs. Because the
num_active_queues is greater than tx/rx_rings[] allocated actually.

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

[ 3506.152887] iavf 0000:41:02.0: Removing device
[ 3510.400799] ==================================================================
[ 3510.400820] BUG: KASAN: slab-out-of-bounds in iavf_free_all_tx_resources+0x156/0x160 [iavf]
[ 3510.400823] Read of size 8 at addr ffff88b6f9311008 by task repro.sh/55536
[ 3510.400823]
[ 3510.400830] CPU: 101 PID: 55536 Comm: repro.sh Kdump: loaded Tainted: G           O     --------- -t - 4.18.0 #1
[ 3510.400832] Hardware name: Powerleader PR2008AL/H12DSi-N6, BIOS 2.0 04/09/2021
[ 3510.400835] Call Trace:
[ 3510.400851]  dump_stack+0x71/0xab
[ 3510.400860]  print_address_description+0x6b/0x290
[ 3510.400865]  ? iavf_free_all_tx_resources+0x156/0x160 [iavf]
[ 3510.400868]  kasan_report+0x14a/0x2b0
[ 3510.400873]  iavf_free_all_tx_resources+0x156/0x160 [iavf]
[ 3510.400880]  iavf_remove+0x2b6/0xc70 [iavf]
[ 3510.400884]  ? iavf_free_all_rx_resources+0x160/0x160 [iavf]
[ 3510.400891]  ? wait_woken+0x1d0/0x1d0
[ 3510.400895]  ? notifier_call_chain+0xc1/0x130
[ 3510.400903]  pci_device_remove+0xa8/0x1f0
[ 3510.400910]  device_release_driver_internal+0x1c6/0x460
[ 3510.400916]  pci_stop_bus_device+0x101/0x150
[ 3510.400919]  pci_stop_and_remove_bus_device+0xe/0x20
[ 3510.400924]  pci_iov_remove_virtfn+0x187/0x420
[ 3510.400927]  ? pci_iov_add_virtfn+0xe10/0xe10
[ 3510.400929]  ? pci_get_subsys+0x90/0x90
[ 3510.400932]  sriov_disable+0xed/0x3e0
[ 3510.400936]  ? bus_find_device+0x12d/0x1a0
[ 3510.400953]  i40e_free_vfs+0x754/0x1210 [i40e]
[ 3510.400966]  ? i40e_reset_all_vfs+0x880/0x880 [i40e]
[ 3510.400968]  ? pci_get_device+0x7c/0x90
[ 3510.400970]  ? pci_get_subsys+0x90/0x90
[ 3510.400982]  ? pci_vfs_assigned.part.7+0x144/0x210
[ 3510.400987]  ? __mutex_lock_slowpath+0x10/0x10
[ 3510.400996]  i40e_pci_sriov_configure+0x1fa/0x2e0 [i40e]
[ 3510.401001]  sriov_numvfs_store+0x214/0x290
[ 3510.401005]  ? sriov_totalvfs_show+0x30/0x30
[ 3510.401007]  ? __mutex_lock_slowpath+0x10/0x10
[ 3510.401011]  ? __check_object_size+0x15a/0x350
[ 3510.401018]  kernfs_fop_write+0x280/0x3f0
[ 3510.401022]  vfs_write+0x145/0x440
[ 3510.401025]  ksys_write+0xab/0x160
[ 3510.401028]  ? __ia32_sys_read+0xb0/0xb0
[ 3510.401031]  ? fput_many+0x1a/0x120
[ 3510.401032]  ? filp_close+0xf0/0x130
[ 3510.401038]  do_syscall_64+0xa0/0x370
[ 3510.401041]  ? page_fault+0x8/0x30
[ 3510.401043]  entry_SYSCALL_64_after_hwframe+0x65/0xca
[ 3510.401073] RIP: 0033:0x7f3a9bb842c0
[ 3510.401079] Code: 73 01 c3 48 8b 0d d8 cb 2c 00 f7 d8 64 89 01 48 83 c8 ff c3 66 0f 1f 44 00 00 83 3d 89 24 2d 00 00 75 10 b8 01 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 31 c3 48 83 ec 08 e8 fe dd 01 00 48 89 04 24
[ 3510.401080] RSP: 002b:00007ffc05f1fe18 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
[ 3510.401083] RAX: ffffffffffffffda RBX: 0000000000000002 RCX: 00007f3a9bb842c0
[ 3510.401085] RDX: 0000000000000002 RSI: 0000000002327408 RDI: 0000000000000001
[ 3510.401086] RBP: 0000000002327408 R08: 00007f3a9be53780 R09: 00007f3a9c8a4700
[ 3510.401086] R10: 0000000000000001 R11: 0000000000000246 R12: 0000000000000002
[ 3510.401087] R13: 0000000000000001 R14: 00007f3a9be52620 R15: 0000000000000001
[ 3510.401090]
[ 3510.401093] Allocated by task 76795:
[ 3510.401098]  kasan_kmalloc+0xa6/0xd0
[ 3510.401099]  __kmalloc+0xfb/0x200
[ 3510.401104]  iavf_init_interrupt_scheme+0x26f/0x1310 [iavf]
[ 3510.401108]  iavf_watchdog_task+0x1d58/0x4050 [iavf]
[ 3510.401114]  process_one_work+0x56a/0x11f0
[ 3510.401115]  worker_thread+0x8f/0xf40
[ 3510.401117]  kthread+0x2a0/0x390
[ 3510.401119]  ret_from_fork+0x1f/0x40
[ 3510.401122]  0xffffffffffffffff
[ 3510.401123]

If we detected removing is in processing, we can avoid unnecessary
waiting and return error faster.

On the other hand in timeout handling, we should keep the original
num_active_queues and reset num_req_queues to 0.

Fixes: 4e5e6b5d9d13 ("iavf: Fix return of set the new channel count")
Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
Cc: Donglin Peng <pengdonglin@sangfor.com.cn>
Cc: Huang Cun <huangcun@sangfor.com.cn>
Acked-by: Michal Kubiak <michal.kubiak@intel.com>
---
v1 to v2:
  - add reproduction script

---
 drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 6f171d1d85b7..d8a3c0cfedd0 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -1857,13 +1857,15 @@ static int iavf_set_channels(struct net_device *netdev,
 	/* wait for the reset is done */
 	for (i = 0; i < IAVF_RESET_WAIT_COMPLETE_COUNT; i++) {
 		msleep(IAVF_RESET_WAIT_MS);
+		if (test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
+			return -EOPNOTSUPP;
 		if (adapter->flags & IAVF_FLAG_RESET_PENDING)
 			continue;
 		break;
 	}
 	if (i == IAVF_RESET_WAIT_COMPLETE_COUNT) {
 		adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
-		adapter->num_active_queues = num_req;
+		adapter->num_req_queues = 0;
 		return -EOPNOTSUPP;
 	}
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
