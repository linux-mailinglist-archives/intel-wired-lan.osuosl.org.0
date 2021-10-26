Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB4243B4E0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Oct 2021 16:55:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E75D860A57;
	Tue, 26 Oct 2021 14:54:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KjTQ13kanEm5; Tue, 26 Oct 2021 14:54:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CAE8860632;
	Tue, 26 Oct 2021 14:54:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 660D41BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 14:54:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 543AF60A49
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 14:54:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S3b57WyI19dS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Oct 2021 14:54:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8309660632
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 14:54:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="228685302"
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="228685302"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 07:47:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="497370451"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga008.jf.intel.com with ESMTP; 26 Oct 2021 07:47:56 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Oct 2021 18:47:18 +0200
Message-Id: <20211026164719.1766911-2-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211026164719.1766911-1-maciej.fijalkowski@intel.com>
References: <20211026164719.1766911-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-next 1/2] ice: fix vsi->txq_map
 sizing
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
Cc: alexandr.lobakin@intel.com, netdev@vger.kernel.org,
 marta.a.plantykow@intel.com, kuba@kernel.org, bpf@vger.kernel.org,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The approach of having XDP queue per CPU regardless of user's setting
exposed a hidden bug that could occur in case when Rx queue count differ
from Tx queue count. Currently vsi->txq_map's size is equal to the
doubled vsi->alloc_txq, which is not correct due to the fact that XDP
rings were previously based on the Rx queue count. Below splat can be
seen when ethtool -L is used and XDP rings are configured:

[  682.875339] BUG: kernel NULL pointer dereference, address: 000000000000000f
[  682.883403] #PF: supervisor read access in kernel mode
[  682.889345] #PF: error_code(0x0000) - not-present page
[  682.895289] PGD 0 P4D 0
[  682.898218] Oops: 0000 [#1] PREEMPT SMP PTI
[  682.903055] CPU: 42 PID: 2878 Comm: ethtool Tainted: G           OE     5.15.0-rc5+ #1
[  682.912214] Hardware name: Intel Corp. GRANTLEY/GRANTLEY, BIOS GRRFCRB1.86B.0276.D07.1605190235 05/19/2016
[  682.923380] RIP: 0010:devres_remove+0x44/0x130
[  682.928527] Code: 49 89 f4 55 48 89 fd 4c 89 ff 53 48 83 ec 10 e8 92 b9 49 00 48 8b 9d a8 02 00 00 48 8d 8d a0 02 00 00 49 89 c2 48 39 cb 74 0f <4c> 3b 63 10 74 25 48 8b 5b 08 48 39 cb 75 f1 4c 89 ff 4c 89 d6 e8
[  682.950237] RSP: 0018:ffffc90006a679f0 EFLAGS: 00010002
[  682.956285] RAX: 0000000000000286 RBX: ffffffffffffffff RCX: ffff88908343a370
[  682.964538] RDX: 0000000000000001 RSI: ffffffff81690d60 RDI: 0000000000000000
[  682.972789] RBP: ffff88908343a0d0 R08: 0000000000000000 R09: 0000000000000000
[  682.981040] R10: 0000000000000286 R11: 3fffffffffffffff R12: ffffffff81690d60
[  682.989282] R13: ffffffff81690a00 R14: ffff8890819807a8 R15: ffff88908343a36c
[  682.997535] FS:  00007f08c7bfa740(0000) GS:ffff88a03fd00000(0000) knlGS:0000000000000000
[  683.006910] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  683.013557] CR2: 000000000000000f CR3: 0000001080a66003 CR4: 00000000003706e0
[  683.021819] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[  683.030075] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[  683.038336] Call Trace:
[  683.041167]  devm_kfree+0x33/0x50
[  683.045004]  ice_vsi_free_arrays+0x5e/0xc0 [ice]
[  683.050380]  ice_vsi_rebuild+0x4c8/0x750 [ice]
[  683.055543]  ice_vsi_recfg_qs+0x9a/0x110 [ice]
[  683.060697]  ice_set_channels+0x14f/0x290 [ice]
[  683.065962]  ethnl_set_channels+0x333/0x3f0
[  683.070807]  genl_family_rcv_msg_doit+0xea/0x150
[  683.076152]  genl_rcv_msg+0xde/0x1d0
[  683.080289]  ? channels_prepare_data+0x60/0x60
[  683.085432]  ? genl_get_cmd+0xd0/0xd0
[  683.089667]  netlink_rcv_skb+0x50/0xf0
[  683.094006]  genl_rcv+0x24/0x40
[  683.097638]  netlink_unicast+0x239/0x340
[  683.102177]  netlink_sendmsg+0x22e/0x470
[  683.106717]  sock_sendmsg+0x5e/0x60
[  683.110756]  __sys_sendto+0xee/0x150
[  683.114894]  ? handle_mm_fault+0xd0/0x2a0
[  683.119535]  ? do_user_addr_fault+0x1f3/0x690
[  683.134173]  __x64_sys_sendto+0x25/0x30
[  683.148231]  do_syscall_64+0x3b/0xc0
[  683.161992]  entry_SYSCALL_64_after_hwframe+0x44/0xae

Fix this by taking into account the value that num_possible_cpus()
yields in addition to vsi->alloc_txq instead of doubling the latter.

Fixes: efc2214b6047 ("ice: Add support for XDP")
Fixes: 22bf877e528f ("ice: introduce XDP_TX fallback path")
Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 3adbd9a179a7..e179bd5a688b 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -83,8 +83,13 @@ static int ice_vsi_alloc_arrays(struct ice_vsi *vsi)
 	if (!vsi->rx_rings)
 		goto err_rings;
 
-	/* XDP will have vsi->alloc_txq Tx queues as well, so double the size */
-	vsi->txq_map = devm_kcalloc(dev, (2 * vsi->alloc_txq),
+	/* txq_map needs to have enough space to track both Tx (stack) rings
+	 * and XDP rings; at this point vsi->num_xdp_txq might not be set,
+	 * so use num_possible_cpus() as we want to always provide XDP ring
+	 * per CPU, regardless of queue count settings from user that might
+	 * have come from ethtool's set_channels() callback;
+	 */
+	vsi->txq_map = devm_kcalloc(dev, (vsi->alloc_txq + num_possible_cpus()),
 				    sizeof(*vsi->txq_map), GFP_KERNEL);
 
 	if (!vsi->txq_map)
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
