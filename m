Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A647F92F75A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jul 2024 10:56:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B6830412C0;
	Fri, 12 Jul 2024 08:56:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bgQ6LEJ3TLfv; Fri, 12 Jul 2024 08:56:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D68FB412C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720774560;
	bh=ih6UbIZGDMnr/iZr8mWx107M7mRUF4icdpIKWbHtISs=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7X/p6aDjRRJFhFt7c9gTC323aFpcCRaEzMsNZOpnS1DbcB9Jos99IYM2svTBXrgpk
	 nN6ypB9Gp476dikkGV3Dt99lo58X6wI3RaldaRQ9Tfw13/kcFjIP+Hhl0S+sO70zuO
	 OhsAvvgDpgNYExqeC8RmLGGM2cGdyAnu7F2HwNNg03mQnnbovUbezgx6Ecks1XBWQ2
	 kvEQ08LU4m79woUkXh3laxPC/jvdnFd/XPXwziXwRPMoC2xSLwB11ic/QtBezt0+Ai
	 P3fSiCwNFPmHo+myiy/QAVvLdWAjvyRgF/JTBKaj4/cMA55ryc6CfH70Md/IWs8JYH
	 A3BHv/3+dfnvA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D68FB412C6;
	Fri, 12 Jul 2024 08:55:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D8CC01BF584
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2024 08:55:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D0AF44150E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2024 08:55:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7_7bpmt4JOp4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jul 2024 08:55:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0DECD41486
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0DECD41486
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0DECD41486
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2024 08:55:55 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Fri, 12 Jul 2024 10:55:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240711-b4-igb_zero_copy-v5-2-f3f455113b11@linutronix.de>
References: <20240711-b4-igb_zero_copy-v5-0-f3f455113b11@linutronix.de>
In-Reply-To: <20240711-b4-igb_zero_copy-v5-0-f3f455113b11@linutronix.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=10554; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=VG6jHt8qOitfnJ9fdfNZPgCPEQaFR5JTFwYUKjoZL6A=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBmkO+W+bzewYAxri7m9jb+JG9oJmYX9yao4QFqB
 S8J0d1bNb+JAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZpDvlgAKCRDBk9HyqkZz
 gpFDD/wIXn3CgJiCPKthCqcI/CZIjcl1X4ztwAXmbVJbuu7WMFv5YJDGTWp7ntx9RGTusVfbPcM
 DU+YoAagYS8m9qhYh1Gt222Dn/dCwq3qXsUMpSBUTA/dh3D6edA19AOD5Oc2UHVplsJlIvKGkDd
 0HLD9onJvIYlnxNTGwJgf7amBh3kGD/44WBK9BAnAmzNy22dJuA988yRI4mQP03x0P5Q1dubQAN
 yiahuSkcF4bM2muP23VvJQTvFfCfI1xRP69lCE5F3o6UYvhjztrTVHhtVyFeFi2te6CbCNksWu9
 svbxUVJ7cxCMfv32wEulGjO1ohWEIL7TIwdxiPVcL+G/zAyKwWMbQ1uZNmQ5H1vcrMDBvENxiLT
 cO3+5LUyxWPog07HQsfwDNRH9YbFHaRUF+ketC4yGKPBQvzpE34rVreZ3L23pMTTopzVsMVyFUP
 l2hL4hEpvcdzT+7vafzy784B2fG4eEqrVup/IM5c9Xd8gpr7hM6yE3/AcwS4fzdADd0lUV1/HZu
 c14wBBVRAH2sb18/uQvlTY3EqVuuRHoxQ8D9HNPPVetWch+yHndQtAXeQvnnIKygdMjDhJiBMlo
 pjRQIjMTCCgUB6izCq9x0FPT4CjDZabNvIIFAt8CiS3kBFZ5gkFd5fakSug4UkwtAZrbaYSKpJ0
 xALLP8dBXbphiEw==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1720774554;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ih6UbIZGDMnr/iZr8mWx107M7mRUF4icdpIKWbHtISs=;
 b=dLJJvv7ghyD0PkwAPammaxDRiVzvbz8ko4ZKJQ2eMFuUxXIFye4crxHquvUN8P0uOCMK70
 UqtDqpXK3aysE4D10lfk+Oh6TpWETdZrcjjbJ6WzMheXds6N6VSvPkx3ZRKzlDhUcUAg+i
 9FZC3WqXesxsFkuVG7eiulahvL07SquWyLOduzc/1MqQZ68SKsku53b9D29ixPefzT0+H7
 ZcMF0Byj0N7AjPB4TLnw6XvIradfW83LHiKXGr/vP9dv/ySvwZ7fH+SLevgMNZWlotcuCG
 wcleYKobT9gAcyR+z1mhTps3PPCpBormxRvfGqu7AoKDOfvEDwrnHWuJueJ4rw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1720774554;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ih6UbIZGDMnr/iZr8mWx107M7mRUF4icdpIKWbHtISs=;
 b=iScPox6mlg4H1uix9DxNNEz9FGyUdGCmKmD/gG9JMBYHh4qJOHBUXTnwTtrTEbAocfSKQS
 q/S5kH/zz4dtNQAQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=dLJJvv7g; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=iScPox6m
Subject: [Intel-wired-lan] [PATCH iwl-next v5 2/4] igb: Introduce XSK data
 structures and helpers
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Sriram Yagnaraman <sriram.yagnaraman@ericsson.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Benjamin Steinke <benjamin.steinke@woks-audio.com>,
 Eric Dumazet <edumazet@google.com>,
 Sriram Yagnaraman <sriram.yagnaraman@est.tech>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sriram Yagnaraman <sriram.yagnaraman@est.tech>

Add the following ring flags
- IGB_RING_FLAG_TX_DISABLED (when xsk pool is being setup)
- IGB_RING_FLAG_AF_XDP_ZC (xsk pool is active)

Add a xdp_buff array for use with XSK receive batch API, and a pointer
to xsk_pool in igb_adapter.

Add enable/disable functions for TX and RX rings
Add enable/disable functions for XSK pool
Add xsk wakeup function

None of the above functionality will be active until
NETDEV_XDP_ACT_XSK_ZEROCOPY is advertised in netdev->xdp_features.

Signed-off-by: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igb/Makefile   |   2 +-
 drivers/net/ethernet/intel/igb/igb.h      |  14 +-
 drivers/net/ethernet/intel/igb/igb_main.c |   9 ++
 drivers/net/ethernet/intel/igb/igb_xsk.c  | 210 ++++++++++++++++++++++++++++++
 4 files changed, 233 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/Makefile b/drivers/net/ethernet/intel/igb/Makefile
index 463c0d26b9d4..6c1b702fd992 100644
--- a/drivers/net/ethernet/intel/igb/Makefile
+++ b/drivers/net/ethernet/intel/igb/Makefile
@@ -8,4 +8,4 @@ obj-$(CONFIG_IGB) += igb.o
 
 igb-y := igb_main.o igb_ethtool.o e1000_82575.o \
 	 e1000_mac.o e1000_nvm.o e1000_phy.o e1000_mbx.o \
-	 e1000_i210.o igb_ptp.o igb_hwmon.o
+	 e1000_i210.o igb_ptp.o igb_hwmon.o igb_xsk.o
diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
index 0de71ec324ed..053130c01480 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -20,6 +20,7 @@
 #include <linux/mdio.h>
 
 #include <net/xdp.h>
+#include <net/xdp_sock_drv.h>
 
 struct igb_adapter;
 
@@ -320,6 +321,7 @@ struct igb_ring {
 	union {				/* array of buffer info structs */
 		struct igb_tx_buffer *tx_buffer_info;
 		struct igb_rx_buffer *rx_buffer_info;
+		struct xdp_buff **rx_buffer_info_zc;
 	};
 	void *desc;			/* descriptor ring memory */
 	unsigned long flags;		/* ring specific flags */
@@ -357,6 +359,7 @@ struct igb_ring {
 		};
 	};
 	struct xdp_rxq_info xdp_rxq;
+	struct xsk_buff_pool *xsk_pool;
 } ____cacheline_internodealigned_in_smp;
 
 struct igb_q_vector {
@@ -384,7 +387,9 @@ enum e1000_ring_flags_t {
 	IGB_RING_FLAG_RX_SCTP_CSUM,
 	IGB_RING_FLAG_RX_LB_VLAN_BSWAP,
 	IGB_RING_FLAG_TX_CTX_IDX,
-	IGB_RING_FLAG_TX_DETECT_HANG
+	IGB_RING_FLAG_TX_DETECT_HANG,
+	IGB_RING_FLAG_TX_DISABLED,
+	IGB_RING_FLAG_AF_XDP_ZC
 };
 
 #define ring_uses_large_buffer(ring) \
@@ -822,4 +827,11 @@ int igb_add_mac_steering_filter(struct igb_adapter *adapter,
 int igb_del_mac_steering_filter(struct igb_adapter *adapter,
 				const u8 *addr, u8 queue, u8 flags);
 
+struct xsk_buff_pool *igb_xsk_pool(struct igb_adapter *adapter,
+				   struct igb_ring *ring);
+int igb_xsk_pool_setup(struct igb_adapter *adapter,
+		       struct xsk_buff_pool *pool,
+		       u16 qid);
+int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags);
+
 #endif /* _IGB_H_ */
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 7f84e4117fa7..28abe9664c44 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -2905,9 +2905,14 @@ static int igb_xdp_setup(struct net_device *dev, struct netdev_bpf *bpf)
 
 static int igb_xdp(struct net_device *dev, struct netdev_bpf *xdp)
 {
+	struct igb_adapter *adapter = netdev_priv(dev);
+
 	switch (xdp->command) {
 	case XDP_SETUP_PROG:
 		return igb_xdp_setup(dev, xdp);
+	case XDP_SETUP_XSK_POOL:
+		return igb_xsk_pool_setup(adapter, xdp->xsk.pool,
+					  xdp->xsk.queue_id);
 	default:
 		return -EINVAL;
 	}
@@ -3034,6 +3039,7 @@ static const struct net_device_ops igb_netdev_ops = {
 	.ndo_setup_tc		= igb_setup_tc,
 	.ndo_bpf		= igb_xdp,
 	.ndo_xdp_xmit		= igb_xdp_xmit,
+	.ndo_xsk_wakeup         = igb_xsk_wakeup,
 };
 
 /**
@@ -4356,6 +4362,8 @@ void igb_configure_tx_ring(struct igb_adapter *adapter,
 	u64 tdba = ring->dma;
 	int reg_idx = ring->reg_idx;
 
+	ring->xsk_pool = igb_xsk_pool(adapter, ring);
+
 	wr32(E1000_TDLEN(reg_idx),
 	     ring->count * sizeof(union e1000_adv_tx_desc));
 	wr32(E1000_TDBAL(reg_idx),
@@ -4751,6 +4759,7 @@ void igb_configure_rx_ring(struct igb_adapter *adapter,
 	xdp_rxq_info_unreg_mem_model(&ring->xdp_rxq);
 	WARN_ON(xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
 					   MEM_TYPE_PAGE_SHARED, NULL));
+	ring->xsk_pool = igb_xsk_pool(adapter, ring);
 
 	/* disable the queue */
 	wr32(E1000_RXDCTL(reg_idx), 0);
diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/igb/igb_xsk.c
new file mode 100644
index 000000000000..925bf97f7caa
--- /dev/null
+++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
@@ -0,0 +1,210 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright(c) 2018 Intel Corporation. */
+
+#include <linux/bpf_trace.h>
+#include <net/xdp_sock_drv.h>
+#include <net/xdp.h>
+
+#include "e1000_hw.h"
+#include "igb.h"
+
+static int igb_realloc_rx_buffer_info(struct igb_ring *ring, bool pool_present)
+{
+	int size = pool_present ?
+		sizeof(*ring->rx_buffer_info_zc) * ring->count :
+		sizeof(*ring->rx_buffer_info) * ring->count;
+	void *buff_info = vmalloc(size);
+
+	if (!buff_info)
+		return -ENOMEM;
+
+	if (pool_present) {
+		vfree(ring->rx_buffer_info);
+		ring->rx_buffer_info = NULL;
+		ring->rx_buffer_info_zc = buff_info;
+	} else {
+		vfree(ring->rx_buffer_info_zc);
+		ring->rx_buffer_info_zc = NULL;
+		ring->rx_buffer_info = buff_info;
+	}
+
+	return 0;
+}
+
+static void igb_txrx_ring_disable(struct igb_adapter *adapter, u16 qid)
+{
+	struct igb_ring *tx_ring = adapter->tx_ring[qid];
+	struct igb_ring *rx_ring = adapter->rx_ring[qid];
+	struct e1000_hw *hw = &adapter->hw;
+
+	set_bit(IGB_RING_FLAG_TX_DISABLED, &tx_ring->flags);
+
+	wr32(E1000_TXDCTL(tx_ring->reg_idx), 0);
+	wr32(E1000_RXDCTL(rx_ring->reg_idx), 0);
+
+	/* Rx/Tx share the same napi context. */
+	napi_disable(&rx_ring->q_vector->napi);
+
+	igb_clean_tx_ring(tx_ring);
+	igb_clean_rx_ring(rx_ring);
+
+	memset(&rx_ring->rx_stats, 0, sizeof(rx_ring->rx_stats));
+	memset(&tx_ring->tx_stats, 0, sizeof(tx_ring->tx_stats));
+}
+
+static void igb_txrx_ring_enable(struct igb_adapter *adapter, u16 qid)
+{
+	struct igb_ring *tx_ring = adapter->tx_ring[qid];
+	struct igb_ring *rx_ring = adapter->rx_ring[qid];
+
+	igb_configure_tx_ring(adapter, tx_ring);
+	igb_configure_rx_ring(adapter, rx_ring);
+
+	clear_bit(IGB_RING_FLAG_TX_DISABLED, &tx_ring->flags);
+
+	/* call igb_desc_unused which always leaves
+	 * at least 1 descriptor unused to make sure
+	 * next_to_use != next_to_clean
+	 */
+	igb_alloc_rx_buffers(rx_ring, igb_desc_unused(rx_ring));
+
+	/* Rx/Tx share the same napi context. */
+	napi_enable(&rx_ring->q_vector->napi);
+}
+
+struct xsk_buff_pool *igb_xsk_pool(struct igb_adapter *adapter,
+				   struct igb_ring *ring)
+{
+	int qid = ring->queue_index;
+
+	if (!igb_xdp_is_enabled(adapter) ||
+	    !test_bit(IGB_RING_FLAG_AF_XDP_ZC, &ring->flags))
+		return NULL;
+
+	return xsk_get_pool_from_qid(adapter->netdev, qid);
+}
+
+static int igb_xsk_pool_enable(struct igb_adapter *adapter,
+			       struct xsk_buff_pool *pool,
+			       u16 qid)
+{
+	struct net_device *netdev = adapter->netdev;
+	struct igb_ring *tx_ring, *rx_ring;
+	bool if_running;
+	int err;
+
+	if (qid >= adapter->num_rx_queues)
+		return -EINVAL;
+
+	if (qid >= netdev->real_num_rx_queues ||
+	    qid >= netdev->real_num_tx_queues)
+		return -EINVAL;
+
+	err = xsk_pool_dma_map(pool, &adapter->pdev->dev, IGB_RX_DMA_ATTR);
+	if (err)
+		return err;
+
+	tx_ring = adapter->tx_ring[qid];
+	rx_ring = adapter->rx_ring[qid];
+	if_running = netif_running(adapter->netdev) && igb_xdp_is_enabled(adapter);
+	if (if_running)
+		igb_txrx_ring_disable(adapter, qid);
+
+	set_bit(IGB_RING_FLAG_AF_XDP_ZC, &tx_ring->flags);
+	set_bit(IGB_RING_FLAG_AF_XDP_ZC, &rx_ring->flags);
+
+	if (if_running) {
+		err = igb_realloc_rx_buffer_info(rx_ring, true);
+		if (!err) {
+			igb_txrx_ring_enable(adapter, qid);
+			/* Kick start the NAPI context so that receiving will start */
+			err = igb_xsk_wakeup(adapter->netdev, qid, XDP_WAKEUP_RX);
+		}
+
+		if (err) {
+			clear_bit(IGB_RING_FLAG_AF_XDP_ZC, &tx_ring->flags);
+			clear_bit(IGB_RING_FLAG_AF_XDP_ZC, &rx_ring->flags);
+			xsk_pool_dma_unmap(pool, IGB_RX_DMA_ATTR);
+			return err;
+		}
+	}
+
+	return 0;
+}
+
+static int igb_xsk_pool_disable(struct igb_adapter *adapter, u16 qid)
+{
+	struct igb_ring *tx_ring, *rx_ring;
+	struct xsk_buff_pool *pool;
+	bool if_running;
+	int err;
+
+	pool = xsk_get_pool_from_qid(adapter->netdev, qid);
+	if (!pool)
+		return -EINVAL;
+
+	tx_ring = adapter->tx_ring[qid];
+	rx_ring = adapter->rx_ring[qid];
+	if_running = netif_running(adapter->netdev) && igb_xdp_is_enabled(adapter);
+	if (if_running)
+		igb_txrx_ring_disable(adapter, qid);
+
+	xsk_pool_dma_unmap(pool, IGB_RX_DMA_ATTR);
+	clear_bit(IGB_RING_FLAG_AF_XDP_ZC, &tx_ring->flags);
+	clear_bit(IGB_RING_FLAG_AF_XDP_ZC, &rx_ring->flags);
+
+	if (if_running) {
+		err = igb_realloc_rx_buffer_info(rx_ring, false);
+		if (err)
+			return err;
+
+		igb_txrx_ring_enable(adapter, qid);
+	}
+
+	return 0;
+}
+
+int igb_xsk_pool_setup(struct igb_adapter *adapter,
+		       struct xsk_buff_pool *pool,
+		       u16 qid)
+{
+	return pool ? igb_xsk_pool_enable(adapter, pool, qid) :
+		igb_xsk_pool_disable(adapter, qid);
+}
+
+int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
+{
+	struct igb_adapter *adapter = netdev_priv(dev);
+	struct e1000_hw *hw = &adapter->hw;
+	struct igb_ring *ring;
+	u32 eics = 0;
+
+	if (test_bit(__IGB_DOWN, &adapter->state))
+		return -ENETDOWN;
+
+	if (!igb_xdp_is_enabled(adapter))
+		return -EINVAL;
+
+	if (qid >= adapter->num_tx_queues)
+		return -EINVAL;
+
+	ring = adapter->tx_ring[qid];
+
+	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
+		return -ENETDOWN;
+
+	if (!ring->xsk_pool)
+		return -EINVAL;
+
+	if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
+		/* Cause software interrupt to ensure Rx ring is cleaned */
+		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
+			eics |= ring->q_vector->eims_value;
+			wr32(E1000_EICS, eics);
+		} else {
+			wr32(E1000_ICS, E1000_ICS_RXDMT0);
+		}
+	}
+
+	return 0;
+}

-- 
2.39.2

