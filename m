Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E793F1FE6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Aug 2021 20:32:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F40F540159;
	Thu, 19 Aug 2021 18:32:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bONBnQhUFrYk; Thu, 19 Aug 2021 18:32:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 77957404E3;
	Thu, 19 Aug 2021 18:32:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 003901BF402
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 18:32:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DE61F40159
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 18:32:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0n8-i2MAvy-f for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Aug 2021 18:32:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5E88540001
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 18:32:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10081"; a="238742200"
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; d="scan'208";a="238742200"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 11:32:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; d="scan'208";a="512236027"
Received: from bcreeley-st-desk.jf.intel.com ([10.166.244.126])
 by fmsmga004.fm.intel.com with ESMTP; 19 Aug 2021 11:32:42 -0700
From: Brett Creeley <brett.creeley@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 19 Aug 2021 11:30:15 -0700
Message-Id: <20210819183015.38988-1-brett.creeley@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] ice: Only lock to update netdev
 dev_addr
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

commit 3ba7f53f8bf1 ("ice: don't remove netdev->dev_addr from uc sync
list") introduced calls to netif_addr_lock_bh() and
netif_addr_unlock_bh() in the driver's ndo_set_mac() callback. This is
fine since the driver is updated the netdev's dev_addr, but since this
is a spinlock, the driver cannot sleep when the lock is held.
Unfortunately the functions to add/delete MAC filters depend on a mutex.
This was causing a trace with the lock debug kernel config options
enabled when changing the mac address via iproute.

[  203.273059] BUG: sleeping function called from invalid context at kernel/locking/mutex.c:281
[  203.273065] in_atomic(): 1, irqs_disabled(): 0, non_block: 0, pid: 6698, name: ip
[  203.273068] Preemption disabled at:
[  203.273068] [<ffffffffc04aaeab>] ice_set_mac_address+0x8b/0x1c0 [ice]
[  203.273097] CPU: 31 PID: 6698 Comm: ip Tainted: G S      W I       5.14.0-rc4_next-queue_dev-queue-13aug-01094-gaba1e4adb54e #2
[  203.273100] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS SE5C620.86B.02.01.0010.010620200716 01/06/2020
[  203.273102] Call Trace:
[  203.273107]  dump_stack_lvl+0x33/0x42
[  203.273113]  ? ice_set_mac_address+0x8b/0x1c0 [ice]
[  203.273124]  ___might_sleep.cold.150+0xda/0xea
[  203.273131]  mutex_lock+0x1c/0x40
[  203.273136]  ice_remove_mac+0xe3/0x180 [ice]
[  203.273155]  ? ice_fltr_add_mac_list+0x20/0x20 [ice]
[  203.273175]  ice_fltr_prepare_mac+0x43/0xa0 [ice]
[  203.273194]  ice_set_mac_address+0xab/0x1c0 [ice]
[  203.273206]  dev_set_mac_address+0xb8/0x120
[  203.273210]  dev_set_mac_address_user+0x2c/0x50
[  203.273212]  do_setlink+0x1dd/0x10e0
[  203.273217]  ? __nla_validate_parse+0x12d/0x1a0
[  203.273221]  __rtnl_newlink+0x530/0x910
[  203.273224]  ? __kmalloc_node_track_caller+0x17f/0x380
[  203.273230]  ? preempt_count_add+0x68/0xa0
[  203.273236]  ? _raw_spin_lock_irqsave+0x1f/0x30
[  203.273241]  ? kmem_cache_alloc_trace+0x4d/0x440
[  203.273244]  rtnl_newlink+0x43/0x60
[  203.273245]  rtnetlink_rcv_msg+0x13a/0x380
[  203.273248]  ? rtnl_calcit.isra.40+0x130/0x130
[  203.273250]  netlink_rcv_skb+0x4e/0x100
[  203.273256]  netlink_unicast+0x1a2/0x280
[  203.273258]  netlink_sendmsg+0x242/0x490
[  203.273260]  sock_sendmsg+0x58/0x60
[  203.273263]  ____sys_sendmsg+0x1ef/0x260
[  203.273265]  ? copy_msghdr_from_user+0x5c/0x90
[  203.273268]  ? ____sys_recvmsg+0xe6/0x170
[  203.273270]  ___sys_sendmsg+0x7c/0xc0
[  203.273272]  ? copy_msghdr_from_user+0x5c/0x90
[  203.273274]  ? ___sys_recvmsg+0x89/0xc0
[  203.273276]  ? __netlink_sendskb+0x50/0x50
[  203.273278]  ? mod_objcg_state+0xee/0x310
[  203.273282]  ? __dentry_kill+0x114/0x170
[  203.273286]  ? get_max_files+0x10/0x10
[  203.273288]  __sys_sendmsg+0x57/0xa0
[  203.273290]  do_syscall_64+0x37/0x80
[  203.273295]  entry_SYSCALL_64_after_hwframe+0x44/0xae
[  203.273296] RIP: 0033:0x7f8edf96e278
[  203.273298] Code: 89 02 48 c7 c0 ff ff ff ff eb b5 0f 1f 80 00 00 00 00 f3 0f 1e fa 48 8d 05 25 63 2c 00 8b 00 85 c0 75 17 b8 2e 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 58 c3 0f 1f 80 00 00 00 00 41 54 41 89 d4 55
[  203.273300] RSP: 002b:00007ffcb8bdac08 EFLAGS: 00000246 ORIG_RAX: 000000000000002e
[  203.273303] RAX: ffffffffffffffda RBX: 000000006115e0ae RCX: 00007f8edf96e278
[  203.273304] RDX: 0000000000000000 RSI: 00007ffcb8bdac70 RDI: 0000000000000003
[  203.273305] RBP: 0000000000000000 R08: 0000000000000001 R09: 00007ffcb8bda5b0
[  203.273306] R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000001
[  203.273306] R13: 0000555e10092020 R14: 0000000000000000 R15: 0000000000000005

Fix this by only locking when changing the netdev->dev_addr. Also, make
sure to restore the old netdev->dev_addr on any failures.

Fixes: 3ba7f53f8bf1 ("ice-linux: don't remove netdev->dev_addr from uc sync list")
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index fe2ded775f25..1efb25a9be3b 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5122,6 +5122,7 @@ static int ice_set_mac_address(struct net_device *netdev, void *pi)
 	struct ice_hw *hw = &pf->hw;
 	struct sockaddr *addr = pi;
 	enum ice_status status;
+	u8 old_mac[ETH_ALEN];
 	u8 flags = 0;
 	int err = 0;
 	u8 *mac;
@@ -5144,6 +5145,11 @@ static int ice_set_mac_address(struct net_device *netdev, void *pi)
 	}
 
 	netif_addr_lock_bh(netdev);
+	ether_addr_copy(old_mac, netdev->dev_addr);
+	/* change the netdev's MAC address */
+	memcpy(netdev->dev_addr, mac, netdev->addr_len);
+	netif_addr_unlock_bh(netdev);
+
 	/* Clean up old MAC filter. Not an error if old filter doesn't exist */
 	status = ice_fltr_remove_mac(vsi, netdev->dev_addr, ICE_FWD_TO_VSI);
 	if (status && status != ICE_ERR_DOES_NOT_EXIST) {
@@ -5168,13 +5174,12 @@ static int ice_set_mac_address(struct net_device *netdev, void *pi)
 	if (err) {
 		netdev_err(netdev, "can't set MAC %pM. filter update failed\n",
 			   mac);
+		netif_addr_lock_bh(netdev);
+		ether_addr_copy(netdev->dev_addr, old_mac);
 		netif_addr_unlock_bh(netdev);
 		return err;
 	}
 
-	/* change the netdev's MAC address */
-	memcpy(netdev->dev_addr, mac, netdev->addr_len);
-	netif_addr_unlock_bh(netdev);
 	netdev_dbg(vsi->netdev, "updated MAC address to %pM\n",
 		   netdev->dev_addr);
 
-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
