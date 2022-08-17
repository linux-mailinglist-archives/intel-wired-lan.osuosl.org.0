Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 55AD5596D0A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Aug 2022 12:54:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E3F5D41A1E;
	Wed, 17 Aug 2022 10:54:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E3F5D41A1E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660733672;
	bh=+xhZZdpodR8HL+otk13XNeckYvVgJhFhRj6htoYDohI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=XlfNvd1U8j9Yl68UGPtk1ljuOPa+5Ib8H3VqHeRwgNRD+GMIMi7Pbwnep6+UnYTNS
	 4sHikS/t6fHNzIieK7opBZWlWYGtYNEssoiQFqDXcecwbZUgaaeotG0uhgdw+qWK8Z
	 u7rcwxpfB0dk3gQrKzpIXSlrbiSFfFyLjqvqWuEsBtJOd4TSvEilvHfqc4ALy9F5ez
	 0f34x2bkEG34BTQ85nqKc1OJUVZyWRiRgw0VfATpL4sekbm8H728tOA1spId4eMlyL
	 7VqDLZE+5OTgPNnMNf0Y+zDtIJRdWoZkQyfgLNiI9YGUhhuhdDGIA2T2drIFBZ5sGJ
	 UjdxnJG0uFrdg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Izr4JcpUtLu; Wed, 17 Aug 2022 10:54:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED7D2418B6;
	Wed, 17 Aug 2022 10:54:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED7D2418B6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 90D021BF377
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Aug 2022 10:54:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 700C6831C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Aug 2022 10:54:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 700C6831C1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zs8woSwvMYFj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Aug 2022 10:54:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 57A27831BD
Received: from mail-m11877.qiye.163.com (mail-m11877.qiye.163.com
 [115.236.118.77])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 57A27831BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Aug 2022 10:54:19 +0000 (UTC)
Received: from localhost.localdomain (unknown
 [IPV6:240e:3b7:3274:d420:a98e:150b:8782:dcdb])
 by mail-m11877.qiye.163.com (Hmail) with ESMTPA id 3A25E4006B3;
 Wed, 17 Aug 2022 18:54:15 +0800 (CST)
From: Ding Hui <dinghui@sangfor.com.cn>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, keescook@chromium.org, intel-wired-lan@lists.osuosl.org,
 anatolii.gerasymenko@intel.com
Date: Wed, 17 Aug 2022 18:53:18 +0800
Message-Id: <20220817105318.5426-1-dinghui@sangfor.com.cn>
X-Mailer: git-send-email 2.17.1
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZSU4ZVk9KThgZGk9OH0sYGFUTARMWGhIXJBQOD1
 lXWRgSC1lBWUlPSx5BSBlMQUhJTE9BH09JS0EaQkMeQUpOSxlBQ0xDSUEfGB8ZWVdZFhoPEhUdFF
 lBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pio6KAw4IT03QhI9TBESTjhW
 Ch9PChZVSlVKTU1LTEhITU5NS0hPVTMWGhIXVR8SFRwTDhI7CBoVHB0UCVUYFBZVGBVFWVdZEgtZ
 QVlJT0seQUgZTEFISUxPQR9PSUtBGkJDHkFKTksZQUNMQ0lBHxgfGVlXWQgBWUFCTk9MNwY+
X-HM-Tid: 0a82ab708a232eb3kusn3a25e4006b3
Subject: [Intel-wired-lan] [net v3 1/1] ice: Fix crash by keep old cfg when
 update TCs more than queues
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
Cc: netdev@vger.kernel.org, Ding Hui <dinghui@sangfor.com.cn>,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There are problems if allocated queues less than Traffic Classes.

Commit a632b2a4c920 ("ice: ethtool: Prohibit improper channel config
for DCB") already disallow setting less queues than TCs.

Another case is if we first set less queues, and later update more TCs
config due to LLDP, ice_vsi_cfg_tc() will failed but left dirty
num_txq/rxq and tc_cfg in vsi, that will cause invalid porinter access.

[   95.968089] ice 0000:3b:00.1: More TCs defined than queues/rings allocated.
[   95.968092] ice 0000:3b:00.1: Trying to use more Rx queues (8), than were allocated (1)!
[   95.968093] ice 0000:3b:00.1: Failed to config TC for VSI index: 0
[   95.969621] general protection fault: 0000 [#1] SMP NOPTI
[   95.969705] CPU: 1 PID: 58405 Comm: lldpad Kdump: loaded Tainted: G     U  W  O     --------- -t - 4.18.0 #1
[   95.969867] Hardware name: O.E.M/BC11SPSCB10, BIOS 8.23 12/30/2021
[   95.969992] RIP: 0010:devm_kmalloc+0xa/0x60
[   95.970052] Code: 5c ff ff ff 31 c0 5b 5d 41 5c c3 b8 f4 ff ff ff eb f4 0f 1f 40 00 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 48 89 f8 89 d1 <8b> 97 60 02 00 00 48 8d 7e 18 48 39 f7 72 3f 55 89 ce 53 48 8b 4c
[   95.970344] RSP: 0018:ffffc9003f553888 EFLAGS: 00010206
[   95.970425] RAX: dead000000000200 RBX: ffffea003c425b00 RCX: 00000000006080c0
[   95.970536] RDX: 00000000006080c0 RSI: 0000000000000200 RDI: dead000000000200
[   95.970648] RBP: dead000000000200 R08: 00000000000463c0 R09: ffff888ffa900000
[   95.970760] R10: 0000000000000000 R11: 0000000000000002 R12: ffff888ff6b40100
[   95.970870] R13: ffff888ff6a55018 R14: 0000000000000000 R15: ffff888ff6a55460
[   95.970981] FS:  00007f51b7d24700(0000) GS:ffff88903ee80000(0000) knlGS:0000000000000000
[   95.971108] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   95.971197] CR2: 00007fac5410d710 CR3: 0000000f2c1de002 CR4: 00000000007606e0
[   95.971309] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[   95.971419] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[   95.971530] PKRU: 55555554
[   95.971573] Call Trace:
[   95.971622]  ice_setup_rx_ring+0x39/0x110 [ice]
[   95.971695]  ice_vsi_setup_rx_rings+0x54/0x90 [ice]
[   95.971774]  ice_vsi_open+0x25/0x120 [ice]
[   95.971843]  ice_open_internal+0xb8/0x1f0 [ice]
[   95.971919]  ice_ena_vsi+0x4f/0xd0 [ice]
[   95.971987]  ice_dcb_ena_dis_vsi.constprop.5+0x29/0x90 [ice]
[   95.972082]  ice_pf_dcb_cfg+0x29a/0x380 [ice]
[   95.972154]  ice_dcbnl_setets+0x174/0x1b0 [ice]
[   95.972220]  dcbnl_ieee_set+0x89/0x230
[   95.972279]  ? dcbnl_ieee_del+0x150/0x150
[   95.972341]  dcb_doit+0x124/0x1b0
[   95.972392]  rtnetlink_rcv_msg+0x243/0x2f0
[   95.972457]  ? dcb_doit+0x14d/0x1b0
[   95.972510]  ? __kmalloc_node_track_caller+0x1d3/0x280
[   95.972591]  ? rtnl_calcit.isra.31+0x100/0x100
[   95.972661]  netlink_rcv_skb+0xcf/0xf0
[   95.972720]  netlink_unicast+0x16d/0x220
[   95.972781]  netlink_sendmsg+0x2ba/0x3a0
[   95.975891]  sock_sendmsg+0x4c/0x50
[   95.979032]  ___sys_sendmsg+0x2e4/0x300
[   95.982147]  ? kmem_cache_alloc+0x13e/0x190
[   95.985242]  ? __wake_up_common_lock+0x79/0x90
[   95.988338]  ? __check_object_size+0xac/0x1b0
[   95.991440]  ? _copy_to_user+0x22/0x30
[   95.994539]  ? move_addr_to_user+0xbb/0xd0
[   95.997619]  ? __sys_sendmsg+0x53/0x80
[   96.000664]  __sys_sendmsg+0x53/0x80
[   96.003747]  do_syscall_64+0x5b/0x1d0
[   96.006862]  entry_SYSCALL_64_after_hwframe+0x65/0xca

Only update num_txq/rxq when passed check, and restore tc_cfg if setup
queue map failed.

Fixes: a632b2a4c920 ("ice: ethtool: Prohibit improper channel config for DCB")
Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
Reviewed-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 42 +++++++++++++++---------
 1 file changed, 26 insertions(+), 16 deletions(-)

---
v1:
https://patchwork.kernel.org/project/netdevbpf/patch/20220812123933.5481-1-dinghui@sangfor.com.cn/

v2:
https://patchwork.kernel.org/project/netdevbpf/patch/20220815011844.22193-1-dinghui@sangfor.com.cn/
  rewrite subject
  rebase to net

v3:
  add Fixes tag
  follow Reverse Christmas Tree convention

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 0d4dbca88964..990375cf8603 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -914,7 +914,7 @@ static void ice_set_dflt_vsi_ctx(struct ice_hw *hw, struct ice_vsi_ctx *ctxt)
  */
 static int ice_vsi_setup_q_map(struct ice_vsi *vsi, struct ice_vsi_ctx *ctxt)
 {
-	u16 offset = 0, qmap = 0, tx_count = 0, pow = 0;
+	u16 offset = 0, qmap = 0, tx_count = 0, rx_count = 0, pow = 0;
 	u16 num_txq_per_tc, num_rxq_per_tc;
 	u16 qcount_tx = vsi->alloc_txq;
 	u16 qcount_rx = vsi->alloc_rxq;
@@ -981,23 +981,25 @@ static int ice_vsi_setup_q_map(struct ice_vsi *vsi, struct ice_vsi_ctx *ctxt)
 	 * at least 1)
 	 */
 	if (offset)
-		vsi->num_rxq = offset;
+		rx_count = offset;
 	else
-		vsi->num_rxq = num_rxq_per_tc;
+		rx_count = num_rxq_per_tc;
 
-	if (vsi->num_rxq > vsi->alloc_rxq) {
+	if (rx_count > vsi->alloc_rxq) {
 		dev_err(ice_pf_to_dev(vsi->back), "Trying to use more Rx queues (%u), than were allocated (%u)!\n",
-			vsi->num_rxq, vsi->alloc_rxq);
+			rx_count, vsi->alloc_rxq);
 		return -EINVAL;
 	}
 
-	vsi->num_txq = tx_count;
-	if (vsi->num_txq > vsi->alloc_txq) {
+	if (tx_count > vsi->alloc_txq) {
 		dev_err(ice_pf_to_dev(vsi->back), "Trying to use more Tx queues (%u), than were allocated (%u)!\n",
-			vsi->num_txq, vsi->alloc_txq);
+			tx_count, vsi->alloc_txq);
 		return -EINVAL;
 	}
 
+	vsi->num_txq = tx_count;
+	vsi->num_rxq = rx_count;
+
 	if (vsi->type == ICE_VSI_VF && vsi->num_txq != vsi->num_rxq) {
 		dev_dbg(ice_pf_to_dev(vsi->back), "VF VSI should have same number of Tx and Rx queues. Hence making them equal\n");
 		/* since there is a chance that num_rxq could have been changed
@@ -3490,6 +3492,7 @@ ice_vsi_setup_q_map_mqprio(struct ice_vsi *vsi, struct ice_vsi_ctx *ctxt,
 	u16 pow, offset = 0, qcount_tx = 0, qcount_rx = 0, qmap;
 	u16 tc0_offset = vsi->mqprio_qopt.qopt.offset[0];
 	int tc0_qcount = vsi->mqprio_qopt.qopt.count[0];
+	u16 new_txq, new_rxq;
 	u8 netdev_tc = 0;
 	int i;
 
@@ -3530,21 +3533,24 @@ ice_vsi_setup_q_map_mqprio(struct ice_vsi *vsi, struct ice_vsi_ctx *ctxt,
 		}
 	}
 
-	/* Set actual Tx/Rx queue pairs */
-	vsi->num_txq = offset + qcount_tx;
-	if (vsi->num_txq > vsi->alloc_txq) {
+	new_txq = offset + qcount_tx;
+	if (new_txq > vsi->alloc_txq) {
 		dev_err(ice_pf_to_dev(vsi->back), "Trying to use more Tx queues (%u), than were allocated (%u)!\n",
-			vsi->num_txq, vsi->alloc_txq);
+			new_txq, vsi->alloc_txq);
 		return -EINVAL;
 	}
 
-	vsi->num_rxq = offset + qcount_rx;
-	if (vsi->num_rxq > vsi->alloc_rxq) {
+	new_rxq = offset + qcount_rx;
+	if (new_rxq > vsi->alloc_rxq) {
 		dev_err(ice_pf_to_dev(vsi->back), "Trying to use more Rx queues (%u), than were allocated (%u)!\n",
-			vsi->num_rxq, vsi->alloc_rxq);
+			new_rxq, vsi->alloc_rxq);
 		return -EINVAL;
 	}
 
+	/* Set actual Tx/Rx queue pairs */
+	vsi->num_txq = new_txq;
+	vsi->num_rxq = new_rxq;
+
 	/* Setup queue TC[0].qmap for given VSI context */
 	ctxt->info.tc_mapping[0] = cpu_to_le16(qmap);
 	ctxt->info.q_mapping[0] = cpu_to_le16(vsi->rxq_map[0]);
@@ -3576,6 +3582,7 @@ int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc)
 {
 	u16 max_txqs[ICE_MAX_TRAFFIC_CLASS] = { 0 };
 	struct ice_pf *pf = vsi->back;
+	struct ice_tc_cfg old_tc_cfg;
 	struct ice_vsi_ctx *ctx;
 	struct device *dev;
 	int i, ret = 0;
@@ -3600,6 +3607,7 @@ int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc)
 			max_txqs[i] = vsi->num_txq;
 	}
 
+	memcpy(&old_tc_cfg, &vsi->tc_cfg, sizeof(old_tc_cfg));
 	vsi->tc_cfg.ena_tc = ena_tc;
 	vsi->tc_cfg.numtc = num_tc;
 
@@ -3616,8 +3624,10 @@ int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc)
 	else
 		ret = ice_vsi_setup_q_map(vsi, ctx);
 
-	if (ret)
+	if (ret) {
+		memcpy(&vsi->tc_cfg, &old_tc_cfg, sizeof(vsi->tc_cfg));
 		goto out;
+	}
 
 	/* must to indicate which section of VSI context are being modified */
 	ctx->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_RXQ_MAP_VALID);
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
