Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 475525FBB3F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Oct 2022 21:19:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 15B9F61052;
	Tue, 11 Oct 2022 19:19:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 15B9F61052
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665515956;
	bh=oFWsaW+eeKgtw11M4LfZVEthxhczLFCNS0KLC3LCJz4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=N/LoMqgpZOeZVh2dslKc9nEmVGwROQQoO34Z/5Gj+ScqzwIVtz9D9KR3pgPHHwFv5
	 Yq7RH7wsXBo9iX/cVPP7AyfHO8Jmjy9SPIrnJT8pFrgrAvb4OtKuxJpOZpuJSHPtDY
	 Mb+Ez65u6syuHj4xbMA6rmVfK/CA7uUcggpI6bHenWwm3YfL1OL9mGDWVAcyYhfY9w
	 jsfwW9UYAMSUIQTmaavsOBCH5b9nqPoP+TUrZKr7j4rWSrE7fVHP8+s5+PIOzp5mJ9
	 rLB1gp/DJrNssD8k76z48eo02h8XMGCEZ03nNMRkGKJT5FFR9hweVRckldbaRLp8xL
	 CqWhFB5Yd0KOA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ADOD4ICEnpqz; Tue, 11 Oct 2022 19:19:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B531E61050;
	Tue, 11 Oct 2022 19:19:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B531E61050
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3B0D81BF855
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Oct 2022 19:19:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 22C5D40BF1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Oct 2022 19:19:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 22C5D40BF1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sgnAu3zIDFlg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Oct 2022 19:19:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF1B440BEF
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BF1B440BEF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Oct 2022 19:19:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="305661930"
X-IronPort-AV: E=Sophos;i="5.95,177,1661842800"; d="scan'208";a="305661930"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 12:19:06 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="695187130"
X-IronPort-AV: E=Sophos;i="5.95,177,1661842800"; d="scan'208";a="695187130"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 12:19:06 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 11 Oct 2022 12:18:58 -0700
Message-Id: <20221011191858.1300761-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665515947; x=1697051947;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=26G5jQM9qSBwMZBPqGbxs0VDl9GF2rHpjmaShtcvKfY=;
 b=eIRRqO4svnJw/2rAgo7JtcGQTjMfI9NoOcXWrjuaCVCWEmCujkk02kiQ
 5K9CvF7v2nNxMiprFPCXRrF2OWdelp6fX/q5fwEhVBX8nTPq3qBUF+lzk
 KU+V9I0iH0VZW2Qn6l+WEYJkQWzP8s5xnvEu7Ot2puQ/UnnP1MHYmmGJI
 zOwDAgn/RFNizeu/Pu/jg2lkzuIgpEIamIlKB4waHHx67jeI8t7qXk0y6
 +ooeIwp7zkAwEj2Ra3lAwyEB3218LVWeN3fWAZ0lnnxZh5YAkDN48KmB/
 Dp08DJMkMwTv3Vv+vITPFtHt+rvP0SsxEb5YYud81G3BMm5LOxm2B8qgm
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eIRRqO4s
Subject: [Intel-wired-lan] [net v7] i40e: Fix DMA mappings leak
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
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Tested-by: Chandan <chandanx.rout@intel.com> (A Contingent Worker at Intel)
---
I fixed the -Wdangling-else warning.

 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  3 -
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 16 +++--
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 13 ++--
 drivers/net/ethernet/intel/i40e/i40e_txrx.h   |  1 -
 drivers/net/ethernet/intel/i40e/i40e_xsk.c    | 67 ++++++++++++++++---
 drivers/net/ethernet/intel/i40e/i40e_xsk.h    |  2 +-
 6 files changed, 74 insertions(+), 28 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 7e75706f76db..87f36d1ce800 100644
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
index 2c07fa8ecfc8..b5dcd15ced36 100644
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
@@ -13296,6 +13289,14 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
 		i40e_reset_and_rebuild(pf, true, true);
 	}
 
+	if (!i40e_enabled_xdp_vsi(vsi) && prog) {
+		if (i40e_realloc_rx_bi_zc(vsi, true))
+			return -ENOMEM;
+	} else if (i40e_enabled_xdp_vsi(vsi) && !prog) {
+		if (i40e_realloc_rx_bi_zc(vsi, false))
+			return -ENOMEM;
+	}
+
 	for (i = 0; i < vsi->num_queue_pairs; i++)
 		WRITE_ONCE(vsi->rx_rings[i]->xdp_prog, vsi->xdp_prog);
 
@@ -13528,6 +13529,7 @@ int i40e_queue_pair_disable(struct i40e_vsi *vsi, int queue_pair)
 
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

base-commit: 0cf3cae9697bddeeab3eb84b8cabae13c656fbb6
-- 
2.38.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
