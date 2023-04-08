Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BAAEC6DBB7A
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Apr 2023 16:07:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C66341E6C;
	Sat,  8 Apr 2023 14:07:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C66341E6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680962831;
	bh=zXzgU6X/RdAohwsZQOGRJcQSgQ23ByibtBQpBrPNr7I=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jtBxqB3MOA2fN3ptFBVXsRTZ0ZC3Yo0ZArJHd86Dy6vS5TQTvLDpV45XC5ZFbR2Yw
	 zNtCjf7zzC4Rt1Li2kOaY1Zvj0OTdKGYMznP7QhhLO/vl9DfJeOe5GZnHzGfALLhyR
	 4aWa971cAX6LkB4+iQGnoVXhHXOUu3CQ4uNieydO1EPKDfM02qoPKtDShWx79wVe2G
	 djzkbJ6lp+Is/n4CBLQkUcmZEJapkbaBonPuKmb51o8u1zIPu5MTvKVCOG1xyI5GTe
	 doUruysbQ2XsOSJE97dNCXJA6UmpZF2l+6gOOZtqfFIPEygylLd9BV/D7e7CZjje2j
	 I0q9r990DAEag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GLwlA3hXxF2t; Sat,  8 Apr 2023 14:07:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 102BC41DA5;
	Sat,  8 Apr 2023 14:07:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 102BC41DA5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1CBF31C32CD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Apr 2023 14:07:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F39BA84239
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Apr 2023 14:07:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F39BA84239
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yaqy9rkT8C0V for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Apr 2023 14:07:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A67B84220
Received: from mail-m11880.qiye.163.com (mail-m11880.qiye.163.com
 [115.236.118.80])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8A67B84220
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Apr 2023 14:07:01 +0000 (UTC)
Received: from localhost.localdomain (unknown
 [IPV6:240e:3b7:3279:cf80:b96f:666f:20ca:bc83])
 by mail-m11880.qiye.163.com (Hmail) with ESMTPA id 1CBF120191;
 Sat,  8 Apr 2023 22:01:32 +0800 (CST)
From: Ding Hui <dinghui@sangfor.com.cn>
To: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org
Date: Sat,  8 Apr 2023 22:00:30 +0800
Message-Id: <20230408140030.5769-3-dinghui@sangfor.com.cn>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230408140030.5769-1-dinghui@sangfor.com.cn>
References: <20230408140030.5769-1-dinghui@sangfor.com.cn>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaSkxIVh1ITE4dSkMfTx1OS1UTARMWGhIXJBQOD1
 lXWRgSC1lBWUlPSx5BSBlMQUhJTEJBGB1DS0EZQk0dQU1NTR1BSUsYGkEZGENIWVdZFhoPEhUdFF
 lBWU9LSFVKSktPSEhVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mhg6GRw6Ij0cGjdDFCkwHAE1
 Fw8aCQxVSlVKTUNLQk1JT0JISUlKVTMWGhIXVR8SFRwTDhI7CBoVHB0UCVUYFBZVGBVFWVdZEgtZ
 QVlJT0seQUgZTEFISUxCQRgdQ0tBGUJNHUFNTU0dQUlLGBpBGRhDSFlXWQgBWUFNQk5DNwY+
X-HM-Tid: 0a87612c188f2eb6kusn1cbf120191
X-HM-MType: 1
Subject: [Intel-wired-lan] [PATCH net 2/2] iavf: Fix out-of-bounds when
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
 Ding Hui <dinghui@sangfor.com.cn>, jesse.brandeburg@intel.com,
 Huang Cun <huangcun@sangfor.com.cn>, linux-kernel@vger.kernel.org,
 anthony.l.nguyen@intel.com, linux-hardening@vger.kernel.org,
 netdev@vger.kernel.org, Donglin Peng <pengdonglin@sangfor.com.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If we set channels greater when iavf_remove, the waiting reset done
will be timeout, then returned with error but changed num_active_queues
directly, that will lead to OOB like the following logs. Because the
num_active_queues is greater than tx/rx_rings[] allocated actually.

[ 3506.152887] iavf 0000:41:02.0: Removing device
[ 3510.400799] ==================================================================
[ 3510.400820] BUG: KASAN: slab-out-of-bounds in iavf_free_all_tx_resources+0x156/0x160 [iavf]
[ 3510.400823] Read of size 8 at addr ffff88b6f9311008 by task test-iavf-1.sh/55536
[ 3510.400823]
[ 3510.400830] CPU: 101 PID: 55536 Comm: test-iavf-1.sh Kdump: loaded Tainted: G           O     --------- -t - 4.18.0 #1
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
CC: Huang Cun <huangcun@sangfor.com.cn>
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
