Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A215FB03C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Oct 2022 12:14:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D49960FE8;
	Tue, 11 Oct 2022 10:14:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D49960FE8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665483287;
	bh=LdHFugMkih4ksSwdu8reBqHRuByavJUrcbVPNSLlEg0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=sSroevEvxmWX7VxSfAzsk2qCRW7Wkdzr6PqqlWNu7n3nHrrGTSU2EVquCIZHOdlin
	 I2cBDGq/390mUEToLSquIBYB3G4Z18RbiOGvq9jCoh062iVUTH3Lzqss1EFsiGxVqN
	 PMBFtNuwBozecRwxxxeeoybDM4Mk9pZJBcHMRL3Q/oIg/uXxl4ru2vt24hrnp6ApwJ
	 k5FynM1rVkoMq2VHilLMfGDhhFE7fzly/9G/pUkrE5zCo46bdm0L0XDwlar8Tn1MOJ
	 p9lcjhwlSIZL4/Z52XLO9r2y/psodo57dftwGfQe9/YON+d5pZ9jKwRgcixnKAu0Ct
	 eyvh0a6xG4DfQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fSzVXPbYmU3m; Tue, 11 Oct 2022 10:14:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F2B9F60FDE;
	Tue, 11 Oct 2022 10:14:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F2B9F60FDE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B843A1BF299
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Oct 2022 10:14:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 86EC6417D2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Oct 2022 10:14:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 86EC6417D2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jU5yQO-zKxgV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Oct 2022 10:14:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 162AC41758
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 162AC41758
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Oct 2022 10:14:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="306089258"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="306089258"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 03:14:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="628640572"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="628640572"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by fmsmga007.fm.intel.com with ESMTP; 11 Oct 2022 03:14:36 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 11 Oct 2022 06:12:48 -0400
Message-Id: <20221011101248.683540-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665483279; x=1697019279;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=d76L674Y/Qr2GkFcm2heH2eSi2+o/HvgS+I/UfXtR9g=;
 b=i1GDbXFuKZDAwbHIssw6RSwZHoR3zZARTfm4Iq7/n6e3mAf20rkNktXN
 NknU0eFQWKoFHTlnmR1LpaIQPvqMQp/sJeHkgtq39fF9scjdEr3DNCKme
 /LbaVjEdxjAOGXycOJNUPKEWFPb/RPTIoD/PB4Lcte1PGxwOwXW94/d3Z
 ++BuPukooMi38a08B3jbCRzJxEuc+JSOQvbJG6Mt122ApFOb7weCH/xwD
 sfYdH8KlqsfG1B4aUZbaFlrXn88AFc1cC3WQfgq1MT3ad7mBHFPTsdnEQ
 Xk0vMAww6h0+yvmhcK95vyh21a9i5SbInOnPcKinGNKbP0PUy2xtZa+fR
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i1GDbXFu
Subject: [Intel-wired-lan] [PATCH net v6] i40e: Fix DMA mappings leak
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
Cc: Chandan <chandanx.rout@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jan Sokolowski <jan.sokolowski@intel.com>

During reallocation of RX buffers, new DMA mappings are created for
those buffers.

steps for reproduction:
while :
do
for ((i=0; i<=8160; i=i+32))
do
ethtool -G enp130s0f0 rx $i tx $i
sleep 0.5
ethtool -g enp130s0f0
done
done

This resulted in crash:
i40e 0000:01:00.1: Unable to allocate memory for the Rx descriptor ring, size=65536
Driver BUG
WARNING: CPU: 0 PID: 4300 at net/core/xdp.c:141 xdp_rxq_info_unreg+0x43/0x50
Call Trace:
i40e_free_rx_resources+0x70/0x80 [i40e]
i40e_set_ringparam+0x27c/0x800 [i40e]
ethnl_set_rings+0x1b2/0x290
genl_family_rcv_msg_doit.isra.15+0x10f/0x150
genl_family_rcv_msg+0xb3/0x160
? rings_fill_reply+0x1a0/0x1a0
genl_rcv_msg+0x47/0x90
? genl_family_rcv_msg+0x160/0x160
netlink_rcv_skb+0x4c/0x120
genl_rcv+0x24/0x40
netlink_unicast+0x196/0x230
netlink_sendmsg+0x204/0x3d0
sock_sendmsg+0x4c/0x50
__sys_sendto+0xee/0x160
? handle_mm_fault+0xbe/0x1e0
? syscall_trace_enter+0x1d3/0x2c0
__x64_sys_sendto+0x24/0x30
do_syscall_64+0x5b/0x1a0
entry_SYSCALL_64_after_hwframe+0x65/0xca
RIP: 0033:0x7f5eac8b035b
Missing register, driver bug
WARNING: CPU: 0 PID: 4300 at net/core/xdp.c:119 xdp_rxq_info_unreg_mem_model+0x69/0x140
Call Trace:
xdp_rxq_info_unreg+0x1e/0x50
i40e_free_rx_resources+0x70/0x80 [i40e]
i40e_set_ringparam+0x27c/0x800 [i40e]
ethnl_set_rings+0x1b2/0x290
genl_family_rcv_msg_doit.isra.15+0x10f/0x150
genl_family_rcv_msg+0xb3/0x160
? rings_fill_reply+0x1a0/0x1a0
genl_rcv_msg+0x47/0x90
? genl_family_rcv_msg+0x160/0x160
netlink_rcv_skb+0x4c/0x120
genl_rcv+0x24/0x40
netlink_unicast+0x196/0x230
netlink_sendmsg+0x204/0x3d0
sock_sendmsg+0x4c/0x50
__sys_sendto+0xee/0x160
? handle_mm_fault+0xbe/0x1e0
? syscall_trace_enter+0x1d3/0x2c0
__x64_sys_sendto+0x24/0x30
do_syscall_64+0x5b/0x1a0
entry_SYSCALL_64_after_hwframe+0x65/0xca
RIP: 0033:0x7f5eac8b035b

This was caused because of new buffers with different RX ring count should
substitute older ones, but those buffers were freed in
i40e_configure_rx_ring and reallocated again with i40e_alloc_rx_bi,
thus kfree on rx_bi caused leak of already mapped DMA.

Fix this by reallocating ZC with rx_bi_zc struct when BPF program loads. Additionally
reallocate back to rx_bi when BPF program unloads.

If BPF program is loaded/unloaded and XSK pools are created, reallocate
RX queues accordingly in XSP_SETUP_XSK_POOL handler.

Fixes: be1222b585fd ("i40e: Separate kernel allocated rx_bi rings from AF_XDP rings")
Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Tested-by: Chandan <chandanx.rout@intel.com> (A Contingent Worker at Intel)
---
 v2: Fixed improper kerneldoc that resulted in a warning
 v3: Applied commit msg fixes reported during a review
 v4: Applied i40e_xsk.c fixes reported during a review
 v5: applied commit message and general fixes reported by
 Maciej Fijalkowski's review.
 v6: Since Jan is on vacation I have rewritten commit
 message to be more accurate and reflect on whi this patch
 was created, what it fixes this and how it does it.
--- 
.../net/ethernet/intel/i40e/i40e_ethtool.c    |  3 -
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 15 +++--
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 13 ++--
 drivers/net/ethernet/intel/i40e/i40e_txrx.h   |  1 -
 drivers/net/ethernet/intel/i40e/i40e_xsk.c    | 67 ++++++++++++++++---
 drivers/net/ethernet/intel/i40e/i40e_xsk.h    |  2 +-
 6 files changed, 73 insertions(+), 28 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index ae51901e671d..4a6a6e48c615 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -2181,9 +2181,6 @@ static int i40e_set_ringparam(struct net_device *netdev,
 			 */
 			rx_rings[i].tail = hw->hw_addr + I40E_PRTGEN_STATUS;
 			err = i40e_setup_rx_descriptors(&rx_rings[i]);
-			if (err)
-				goto rx_unwind;
-			err = i40e_alloc_rx_bi(&rx_rings[i]);
 			if (err)
 				goto rx_unwind;
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 2c07fa8ecfc8..9c4f7fad5fd2 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -3566,12 +3566,8 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
 	if (ring->vsi->type == I40E_VSI_MAIN)
 		xdp_rxq_info_unreg_mem_model(&ring->xdp_rxq);
 
-	kfree(ring->rx_bi);
 	ring->xsk_pool = i40e_xsk_pool(ring);
 	if (ring->xsk_pool) {
-		ret = i40e_alloc_rx_bi_zc(ring);
-		if (ret)
-			return ret;
 		ring->rx_buf_len =
 		  xsk_pool_get_rx_frame_size(ring->xsk_pool);
 		/* For AF_XDP ZC, we disallow packets to span on
@@ -3589,9 +3585,6 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
 			 ring->queue_index);
 
 	} else {
-		ret = i40e_alloc_rx_bi(ring);
-		if (ret)
-			return ret;
 		ring->rx_buf_len = vsi->rx_buf_len;
 		if (ring->vsi->type == I40E_VSI_MAIN) {
 			ret = xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
@@ -13296,6 +13289,13 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
 		i40e_reset_and_rebuild(pf, true, true);
 	}
 
+	if (!i40e_enabled_xdp_vsi(vsi) && prog)
+		if (i40e_realloc_rx_bi_zc(vsi, true))
+			return -ENOMEM;
+	else if (i40e_enabled_xdp_vsi(vsi) && !prog)
+		if (i40e_realloc_rx_bi_zc(vsi, false))
+			return -ENOMEM;
+
 	for (i = 0; i < vsi->num_queue_pairs; i++)
 		WRITE_ONCE(vsi->rx_rings[i]->xdp_prog, vsi->xdp_prog);
 
@@ -13528,6 +13528,7 @@ int i40e_queue_pair_disable(struct i40e_vsi *vsi, int queue_pair)
 
 	i40e_queue_pair_disable_irq(vsi, queue_pair);
 	err = i40e_queue_pair_toggle_rings(vsi, queue_pair, false /* off */);
+	i40e_clean_rx_ring(vsi->rx_rings[queue_pair]);
 	i40e_queue_pair_toggle_napi(vsi, queue_pair, false /* off */);
 	i40e_queue_pair_clean_rings(vsi, queue_pair);
 	i40e_queue_pair_reset_stats(vsi, queue_pair);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 69e67eb6aea7..b97c95f89fa0 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -1457,14 +1457,6 @@ int i40e_setup_tx_descriptors(struct i40e_ring *tx_ring)
 	return -ENOMEM;
 }
 
-int i40e_alloc_rx_bi(struct i40e_ring *rx_ring)
-{
-	unsigned long sz = sizeof(*rx_ring->rx_bi) * rx_ring->count;
-
-	rx_ring->rx_bi = kzalloc(sz, GFP_KERNEL);
-	return rx_ring->rx_bi ? 0 : -ENOMEM;
-}
-
 static void i40e_clear_rx_bi(struct i40e_ring *rx_ring)
 {
 	memset(rx_ring->rx_bi, 0, sizeof(*rx_ring->rx_bi) * rx_ring->count);
@@ -1593,6 +1585,11 @@ int i40e_setup_rx_descriptors(struct i40e_ring *rx_ring)
 
 	rx_ring->xdp_prog = rx_ring->vsi->xdp_prog;
 
+	rx_ring->rx_bi =
+		kcalloc(rx_ring->count, sizeof(*rx_ring->rx_bi), GFP_KERNEL);
+	if (!rx_ring->rx_bi)
+		return -ENOMEM;
+
 	return 0;
 }
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
index 41f86e9535a0..768290dc6f48 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
@@ -469,7 +469,6 @@ int __i40e_maybe_stop_tx(struct i40e_ring *tx_ring, int size);
 bool __i40e_chk_linearize(struct sk_buff *skb);
 int i40e_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
 		  u32 flags);
-int i40e_alloc_rx_bi(struct i40e_ring *rx_ring);
 
 /**
  * i40e_get_head - Retrieve head from head writeback
diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index 6d4009e0cbd6..cd7b52fb6b46 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -10,14 +10,6 @@
 #include "i40e_txrx_common.h"
 #include "i40e_xsk.h"
 
-int i40e_alloc_rx_bi_zc(struct i40e_ring *rx_ring)
-{
-	unsigned long sz = sizeof(*rx_ring->rx_bi_zc) * rx_ring->count;
-
-	rx_ring->rx_bi_zc = kzalloc(sz, GFP_KERNEL);
-	return rx_ring->rx_bi_zc ? 0 : -ENOMEM;
-}
-
 void i40e_clear_rx_bi_zc(struct i40e_ring *rx_ring)
 {
 	memset(rx_ring->rx_bi_zc, 0,
@@ -29,6 +21,58 @@ static struct xdp_buff **i40e_rx_bi(struct i40e_ring *rx_ring, u32 idx)
 	return &rx_ring->rx_bi_zc[idx];
 }
 
+/**
+ * i40e_realloc_rx_xdp_bi - reallocate SW ring for either XSK or normal buffer
+ * @rx_ring: Current rx ring
+ * @pool_present: is pool for XSK present
+ *
+ * Try allocating memory and return ENOMEM, if failed to allocate.
+ * If allocation was successful, substitute buffer with allocated one.
+ * Returns 0 on success, negative on failure
+ */
+static int i40e_realloc_rx_xdp_bi(struct i40e_ring *rx_ring, bool pool_present)
+{
+	size_t elem_size = pool_present ? sizeof(*rx_ring->rx_bi_zc) :
+					  sizeof(*rx_ring->rx_bi);
+	void *sw_ring = kcalloc(rx_ring->count, elem_size, GFP_KERNEL);
+
+	if (!sw_ring)
+		return -ENOMEM;
+
+	if (pool_present) {
+		kfree(rx_ring->rx_bi);
+		rx_ring->rx_bi = NULL;
+		rx_ring->rx_bi_zc = sw_ring;
+	} else {
+		kfree(rx_ring->rx_bi_zc);
+		rx_ring->rx_bi_zc = NULL;
+		rx_ring->rx_bi = sw_ring;
+	}
+	return 0;
+}
+
+/**
+ * i40e_realloc_rx_bi_zc - reallocate rx SW rings
+ * @vsi: Current VSI
+ * @zc: is zero copy set
+ *
+ * Reallocate buffer for rx_rings that might be used by XSK.
+ * XDP requires more memory, than rx_buf provides.
+ * Returns 0 on success, negative on failure
+ */
+int i40e_realloc_rx_bi_zc(struct i40e_vsi *vsi, bool zc)
+{
+	struct i40e_ring *rx_ring;
+	unsigned long q;
+
+	for_each_set_bit(q, vsi->af_xdp_zc_qps, vsi->alloc_queue_pairs) {
+		rx_ring = vsi->rx_rings[q];
+		if (i40e_realloc_rx_xdp_bi(rx_ring, zc))
+			return -ENOMEM;
+	}
+	return 0;
+}
+
 /**
  * i40e_xsk_pool_enable - Enable/associate an AF_XDP buffer pool to a
  * certain ring/qid
@@ -69,6 +113,10 @@ static int i40e_xsk_pool_enable(struct i40e_vsi *vsi,
 		if (err)
 			return err;
 
+		err = i40e_realloc_rx_xdp_bi(vsi->rx_rings[qid], true);
+		if (err)
+			return err;
+
 		err = i40e_queue_pair_enable(vsi, qid);
 		if (err)
 			return err;
@@ -113,6 +161,9 @@ static int i40e_xsk_pool_disable(struct i40e_vsi *vsi, u16 qid)
 	xsk_pool_dma_unmap(pool, I40E_RX_DMA_ATTR);
 
 	if (if_running) {
+		err = i40e_realloc_rx_xdp_bi(vsi->rx_rings[qid], false);
+		if (err)
+			return err;
 		err = i40e_queue_pair_enable(vsi, qid);
 		if (err)
 			return err;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.h b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
index bb962987f300..821df248f8be 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
@@ -32,7 +32,7 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget);
 
 bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_ring);
 int i40e_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags);
-int i40e_alloc_rx_bi_zc(struct i40e_ring *rx_ring);
+int i40e_realloc_rx_bi_zc(struct i40e_vsi *vsi, bool zc);
 void i40e_clear_rx_bi_zc(struct i40e_ring *rx_ring);
 
 #endif /* _I40E_XSK_H_ */
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
