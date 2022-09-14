Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF1D5B8981
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Sep 2022 15:52:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 93E0C40BF7;
	Wed, 14 Sep 2022 13:52:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 93E0C40BF7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663163577;
	bh=W6EZ4YwQaMxJDadLOzxuFFJb4q4GO81BHdby9vfNSwM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=YP7LTU/KaXD1CeofxHsUDv3DT+0W0QX0/GbbNP7iNrAlxX/w2coE3UrCQtNN2IQ/b
	 Gg9T9vIbE1bTwc5A6/izbJkWUp2lW/sZ77ppk92H6rIm0Mh87ySxLud8HPdPa6RSF7
	 ItmLkG8cHpaOTI/sOLhlWVxK8jKPVPoDgWckfO+jUZjtq+RP6aqfHhHlT09baqOv+o
	 ocW7uDVl4o4rkHtXJgH9dqBeGGJYoGjZpW4YZh0xuHHnQLnZ1ESc15N6BpZrAaFWQl
	 0K8KwCTdDYSzb2OE0yGlJJ6hMh2j7vlQQA9bzj3MpenV/8k7FvqMLxqhdoIBDAsU5T
	 NXfEpv4jtwhxQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k7ax4M4dAXiB; Wed, 14 Sep 2022 13:52:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1AE5C40BE9;
	Wed, 14 Sep 2022 13:52:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1AE5C40BE9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 230E81BF3BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Sep 2022 13:52:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0711760C27
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Sep 2022 13:52:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0711760C27
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ThVQ7Z9z9CVV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Sep 2022 13:52:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 66E4660C2A
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 66E4660C2A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Sep 2022 13:52:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="278820092"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="278820092"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 06:52:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="705966867"
Received: from s240.igk.intel.com (HELO s048.nql.local) ([10.102.18.202])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Sep 2022 06:52:44 -0700
From: "Sokolowski, Jan" <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 14 Sep 2022 15:55:24 +0200
Message-Id: <20220914135524.2000-1-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663163566; x=1694699566;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HO9kbN3qB1lQvN3ZlpFtcwsVONz7xu1BBZvnmq8nNh0=;
 b=ei0F4rRNSFZFt8VCQWoveIWD+ofs/MRtPz66IsqvVByOCvsD/pneoat8
 qL1Pl+O8fCAKRlB9Lu+/Lt+j3LOlIvgTbQ9stlm5JtMEe0lvR0X6sn7m6
 Sstkf0IEUPAUTuvcx1ezVOyLoLygsD7pfEeHVapYF9h0INKqMYRl0/SB9
 b7hI+nUuzsB1ViJd8YP/9Gzg9drY3nKSRKWISMnQj6XHX3+eh5twwMmxX
 8t9awyTVA/Ihw4fDiKp38C44VyHh2Ek+3/tDE7xzGITuk8TrloXM2iIVg
 wI6orVGQaj44pb++80Fmd/kMzcmHwVgnRWhmYJhM7+eiIb3l6jx6OUq96
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ei0F4rRN
Subject: [Intel-wired-lan] [PATCH net v4] i40e: Fix DMA mappings leak
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

From: Jan Sokolowski <jan.sokolowski@intel.com>

During reallocation of RX buffers, new DMA mappings are created for
those buffers. New buffers with different RX ring count should
substitute older ones, but those buffers were freed in
i40e_configure_rx_ring and reallocated again with i40e_alloc_rx_bi,
thus kfree on rx_bi caused leak of already mapped DMA.

In case of non XDP ring, do not free rx_bi and reuse already existing
buffer, move kfree to XDP rings only, remove unused i40e_alloc_rx_bi
function.

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

v2: Fixed improper kerneldoc that resulted in a warning
v3: Applied commit msg fixes reported during a review
v4: Applied i40e_xsk.c fixes reported during a review
====================

Fixes: be1222b585fd ("i40e: Separate kernel allocated rx_bi rings from AF_XDP rings")
Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
---
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  3 -
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 13 ++--
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 14 ++--
 drivers/net/ethernet/intel/i40e/i40e_txrx.h   |  1 -
 drivers/net/ethernet/intel/i40e/i40e_xsk.c    | 67 ++++++++++++++++---
 drivers/net/ethernet/intel/i40e/i40e_xsk.h    |  2 +-
 6 files changed, 72 insertions(+), 28 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index e518aaa2c0ca..0f2042f1597c 100644
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
index e3d9804aeb25..ad15749a2dd3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -3565,12 +3565,8 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
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
@@ -3588,9 +3584,6 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
 			 ring->queue_index);
 
 	} else {
-		ret = i40e_alloc_rx_bi(ring);
-		if (ret)
-			return ret;
 		ring->rx_buf_len = vsi->rx_buf_len;
 		if (ring->vsi->type == I40E_VSI_MAIN) {
 			ret = xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
@@ -13304,6 +13297,11 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
 		i40e_reset_and_rebuild(pf, true, true);
 	}
 
+	if (!i40e_enabled_xdp_vsi(vsi) && prog)
+		i40e_realloc_rx_bi_zc(vsi, true);
+	else if (i40e_enabled_xdp_vsi(vsi) && !prog)
+		i40e_realloc_rx_bi_zc(vsi, false);
+
 	for (i = 0; i < vsi->num_queue_pairs; i++)
 		WRITE_ONCE(vsi->rx_rings[i]->xdp_prog, vsi->xdp_prog);
 
@@ -13536,6 +13534,7 @@ int i40e_queue_pair_disable(struct i40e_vsi *vsi, int queue_pair)
 
 	i40e_queue_pair_disable_irq(vsi, queue_pair);
 	err = i40e_queue_pair_toggle_rings(vsi, queue_pair, false /* off */);
+	i40e_clean_rx_ring(vsi->rx_rings[queue_pair]);
 	i40e_queue_pair_toggle_napi(vsi, queue_pair, false /* off */);
 	i40e_queue_pair_clean_rings(vsi, queue_pair);
 	i40e_queue_pair_reset_stats(vsi, queue_pair);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 69e67eb6aea7..c5a7e3819ce2 100644
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
@@ -1593,6 +1585,12 @@ int i40e_setup_rx_descriptors(struct i40e_ring *rx_ring)
 
 	rx_ring->xdp_prog = rx_ring->vsi->xdp_prog;
 
+	WARN_ON(rx_ring->rx_bi);
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
index 6d4009e0cbd6..790aaeff1b47 100644
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
+ * i40e_realloc_rx_xdp_bi - reallocate for either XSK or normal buffer
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
+ * i40e_realloc_rx_bi_zc - reallocate xdp queue pairs
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
