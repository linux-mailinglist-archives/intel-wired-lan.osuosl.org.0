Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3F03F76BD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Aug 2021 16:00:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0ABD4613B6;
	Wed, 25 Aug 2021 14:00:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tPdf7qjKBf-D; Wed, 25 Aug 2021 14:00:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF3B0613B3;
	Wed, 25 Aug 2021 14:00:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 99D801BF5AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Aug 2021 12:05:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7D2B280C17
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Aug 2021 12:05:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2WeofvjZy-Kl for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Aug 2021 12:05:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com
 [IPv6:2607:f8b0:4864:20::430])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1566680C31
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Aug 2021 12:05:02 +0000 (UTC)
Received: by mail-pf1-x430.google.com with SMTP id r9so5007138pfh.6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Aug 2021 05:05:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5QSiBXeq3/LnPdKRh6dpjgFPvUTy6ZP5LQTegDoZrYI=;
 b=p6f55rdw/Sra6W2SJ3m//Tlt8dyIpKuz/alKYmQdJvG80/0EkuuilCD57wrXV1JtJq
 bhucdLhDzrJuO2lIOH32K024VjjnXP04O3/wUzjdUBCfwN57isPWPuFmE9XyEBEAHS5F
 nzW0tTEoFne2w740PgQW8vZuSVxe3VZJn+OnyNyJD8iSmtDAxfbJFGXthVAxugUBjVuu
 SyszLSLh28tPVoAkNLtaSET+mgEMnMTmlT6DgbnaDmKDCWcofLmdscjD+mtELbP5q9Au
 SFMjMbaI3iUaMbb/6j91QcQYkhsEbWhjGjPjVu9m3Awh+fdcJtTnX+y6PVUJxKIe/5vE
 lU1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5QSiBXeq3/LnPdKRh6dpjgFPvUTy6ZP5LQTegDoZrYI=;
 b=QNHsn7Qwg1fVKpykpopc+nCyoKdL8PTIZXw4rom2iHbtDbCA2uQKkea50APAzKbsqU
 UdvR85vLYLJS/64VVdZvCwW476Tk+gwKv83aekmmGu4k3nYA4iN9aaT7N2BmdMlh8D7H
 ia18TnKqhwaqhw5EK9vUo8d4SmqjGq9YM9RTRfovc4lLYeEl3KE8yfa6lK6g2m/iQVa6
 ggxzKkqqnBRaZy/iOhfn7LJVpsRQpO3B8tgFbM8BNtPhRJzam3wUsRJ0J3fXWjqjcXrc
 UpBc6Yz3QEW0NWzF6EruTw8HzCaxeBgq/G1bbEhyngtqfI8EdJyNh0smjMvMBPLOY2Va
 l1AA==
X-Gm-Message-State: AOAM533sMFee+0Nf3l9hKDLshzeVF17z4KT5awNUtJRYlLze02yKPuU2
 ixjh87iXu0wr3x8k8Z34MkE=
X-Google-Smtp-Source: ABdhPJzmb8LykImBmLRhUPGhHuRWPVZG7iudemCexh5Jpdou7SC8UGrZ/X6xuRz1G4TQtzJFW0n7uQ==
X-Received: by 2002:aa7:83d8:0:b0:3ef:990f:5525 with SMTP id
 j24-20020aa783d8000000b003ef990f5525mr2795407pfn.29.1629893101478; 
 Wed, 25 Aug 2021 05:05:01 -0700 (PDT)
Received: from localhost.localdomain ([154.86.159.245])
 by smtp.gmail.com with ESMTPSA id x19sm22202342pfa.104.2021.08.25.05.04.56
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 25 Aug 2021 05:05:01 -0700 (PDT)
From: kerneljasonxing@gmail.com
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org, ast@kernel.org, daniel@iogearbox.net,
 hawk@kernel.org, john.fastabend@gmail.com, andrii@kernel.org, kafai@fb.com,
 songliubraving@fb.com, yhs@fb.com, kpsingh@kernel.org
Date: Wed, 25 Aug 2021 20:02:41 +0800
Message-Id: <20210825120241.7389-1-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.30.1 (Apple Git-130)
In-Reply-To: <CAL+tcoDUhZfy3NTx4TOv3wa1f8SMkNhzNpVS5qyySaVOm6L-qQ@mail.gmail.com>
References: <CAL+tcoDUhZfy3NTx4TOv3wa1f8SMkNhzNpVS5qyySaVOm6L-qQ@mail.gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 25 Aug 2021 14:00:04 +0000
Subject: [Intel-wired-lan] [PATCH v2] ixgbe: let the xdpdrv work with more
 than 64 cpus
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
Cc: Shujin Li <lishujin@kuaishou.com>, Jason Xing <xingwanli@kuaishou.com>,
 kerneljasonxing@gmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jason Xing <xingwanli@kuaishou.com>

Originally, ixgbe driver doesn't allow the mounting of xdpdrv if the
server is equipped with more than 64 cpus online. So it turns out that
the loading of xdpdrv causes the "NOMEM" failure.

Actually, we can adjust the algorithm and then make it work through
mapping the current cpu to some xdp ring with the protect of @tx_lock.

Considering the performance of xdpdrv mode, I add another limit like ice
driver where the number of cpus should be within the twice of
MAX_XDP_QUEUES.

v2:
- Adjust cpu id in ixgbe_xdp_xmit(). (Jesper)
- Add a fallback path. (Maciej)
- Adjust other parts related to xdp ring.

Fixes: 33fdc82f08 ("ixgbe: add support for XDP_TX action")
Co-developed-by: Shujin Li <lishujin@kuaishou.com>
Signed-off-by: Shujin Li <lishujin@kuaishou.com>
Signed-off-by: Jason Xing <xingwanli@kuaishou.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      | 11 +++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c  |  6 ++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 63 ++++++++++++++++++++-------
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  | 15 ++++---
 4 files changed, 72 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index a604552..466b2b0 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -82,6 +82,8 @@
 #define IXGBE_2K_TOO_SMALL_WITH_PADDING \
 ((NET_SKB_PAD + IXGBE_RXBUFFER_1536) > SKB_WITH_OVERHEAD(IXGBE_RXBUFFER_2K))
 
+DECLARE_STATIC_KEY_FALSE(ixgbe_xdp_locking_key);
+
 static inline int ixgbe_compute_pad(int rx_buf_len)
 {
 	int page_size, pad_size;
@@ -351,6 +353,7 @@ struct ixgbe_ring {
 	};
 	u16 rx_offset;
 	struct xdp_rxq_info xdp_rxq;
+	spinlock_t tx_lock;	/* used in XDP mode */
 	struct xsk_buff_pool *xsk_pool;
 	u16 ring_idx;		/* {rx,tx,xdp}_ring back reference idx */
 	u16 rx_buf_len;
@@ -772,6 +775,14 @@ struct ixgbe_adapter {
 #endif /* CONFIG_IXGBE_IPSEC */
 };
 
+static inline int ixgbe_determine_xdp_cpu(int cpu)
+{
+	if (static_key_enabled(&ixgbe_xdp_locking_key))
+		return cpu % MAX_XDP_QUEUES;
+	else
+		return cpu;
+}
+
 static inline u8 ixgbe_max_rss_indices(struct ixgbe_adapter *adapter)
 {
 	switch (adapter->hw.mac.type) {
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
index 0218f6c..d6b58e1 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
@@ -299,7 +299,7 @@ static void ixgbe_cache_ring_register(struct ixgbe_adapter *adapter)
 
 static int ixgbe_xdp_queues(struct ixgbe_adapter *adapter)
 {
-	return adapter->xdp_prog ? nr_cpu_ids : 0;
+	return adapter->xdp_prog ? min_t(int, MAX_XDP_QUEUES, nr_cpu_ids) : 0;
 }
 
 #define IXGBE_RSS_64Q_MASK	0x3F
@@ -947,6 +947,7 @@ static int ixgbe_alloc_q_vector(struct ixgbe_adapter *adapter,
 		ring->count = adapter->tx_ring_count;
 		ring->queue_index = xdp_idx;
 		set_ring_xdp(ring);
+		spin_lock_init(&ring->tx_lock);
 
 		/* assign ring to adapter */
 		WRITE_ONCE(adapter->xdp_ring[xdp_idx], ring);
@@ -1032,6 +1033,9 @@ static void ixgbe_free_q_vector(struct ixgbe_adapter *adapter, int v_idx)
 	adapter->q_vector[v_idx] = NULL;
 	__netif_napi_del(&q_vector->napi);
 
+	if (static_key_enabled(&ixgbe_xdp_locking_key))
+		static_branch_dec(&ixgbe_xdp_locking_key);
+
 	/*
 	 * after a call to __netif_napi_del() napi may still be used and
 	 * ixgbe_get_stats64() might access the rings on this vector,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 14aea40..4c94577 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -165,6 +165,9 @@ static int ixgbe_notify_dca(struct notifier_block *, unsigned long event,
 MODULE_DESCRIPTION("Intel(R) 10 Gigabit PCI Express Network Driver");
 MODULE_LICENSE("GPL v2");
 
+DEFINE_STATIC_KEY_FALSE(ixgbe_xdp_locking_key);
+EXPORT_SYMBOL(ixgbe_xdp_locking_key);
+
 static struct workqueue_struct *ixgbe_wq;
 
 static bool ixgbe_check_cfg_remove(struct ixgbe_hw *hw, struct pci_dev *pdev);
@@ -2422,13 +2425,14 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
 		xdp_do_flush_map();
 
 	if (xdp_xmit & IXGBE_XDP_TX) {
-		struct ixgbe_ring *ring = adapter->xdp_ring[smp_processor_id()];
+		int cpu = ixgbe_determine_xdp_cpu(smp_processor_id());
+		struct ixgbe_ring *ring = adapter->xdp_ring[cpu];
 
-		/* Force memory writes to complete before letting h/w
-		 * know there are new descriptors to fetch.
-		 */
-		wmb();
-		writel(ring->next_to_use, ring->tail);
+		if (static_branch_unlikely(&ixgbe_xdp_locking_key))
+			spin_lock(&ring->tx_lock);
+		ixgbe_xdp_ring_update_tail(ring);
+		if (static_branch_unlikely(&ixgbe_xdp_locking_key))
+			spin_unlock(&ring->tx_lock);
 	}
 
 	u64_stats_update_begin(&rx_ring->syncp);
@@ -8539,21 +8543,33 @@ static u16 ixgbe_select_queue(struct net_device *dev, struct sk_buff *skb,
 int ixgbe_xmit_xdp_ring(struct ixgbe_adapter *adapter,
 			struct xdp_frame *xdpf)
 {
-	struct ixgbe_ring *ring = adapter->xdp_ring[smp_processor_id()];
+	struct ixgbe_ring *ring;
 	struct ixgbe_tx_buffer *tx_buffer;
 	union ixgbe_adv_tx_desc *tx_desc;
 	u32 len, cmd_type;
 	dma_addr_t dma;
 	u16 i;
+	int cpu;
+	int ret;
 
 	len = xdpf->len;
 
-	if (unlikely(!ixgbe_desc_unused(ring)))
-		return IXGBE_XDP_CONSUMED;
+	cpu = ixgbe_determine_xdp_cpu(smp_processor_id());
+	ring = adapter->xdp_ring[cpu];
+
+	if (static_branch_unlikely(&ixgbe_xdp_locking_key))
+		spin_lock(&ring->tx_lock);
+
+	if (unlikely(!ixgbe_desc_unused(ring))) {
+		ret = IXGBE_XDP_CONSUMED;
+		goto out;
+	}
 
 	dma = dma_map_single(ring->dev, xdpf->data, len, DMA_TO_DEVICE);
-	if (dma_mapping_error(ring->dev, dma))
-		return IXGBE_XDP_CONSUMED;
+	if (dma_mapping_error(ring->dev, dma)) {
+		ret = IXGBE_XDP_CONSUMED;
+		goto out;
+	}
 
 	/* record the location of the first descriptor for this packet */
 	tx_buffer = &ring->tx_buffer_info[ring->next_to_use];
@@ -8590,7 +8606,11 @@ int ixgbe_xmit_xdp_ring(struct ixgbe_adapter *adapter,
 	tx_buffer->next_to_watch = tx_desc;
 	ring->next_to_use = i;
 
-	return IXGBE_XDP_TX;
+	ret = IXGBE_XDP_TX;
+out:
+	if (static_branch_unlikely(&ixgbe_xdp_locking_key))
+		spin_unlock(&ring->tx_lock);
+	return ret;
 }
 
 netdev_tx_t ixgbe_xmit_frame_ring(struct sk_buff *skb,
@@ -10130,8 +10150,13 @@ static int ixgbe_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
 			return -EINVAL;
 	}
 
-	if (nr_cpu_ids > MAX_XDP_QUEUES)
+	/* if the number of cpus is much larger than the maximum of queues,
+	 * we should stop it and then return with NOMEM like before!
+	 */
+	if (nr_cpu_ids > MAX_XDP_QUEUES * 2)
 		return -ENOMEM;
+	else if (nr_cpu_ids > MAX_XDP_QUEUES)
+		static_branch_inc(&ixgbe_xdp_locking_key);
 
 	old_prog = xchg(&adapter->xdp_prog, prog);
 	need_reset = (!!prog != !!old_prog);
@@ -10201,6 +10226,7 @@ static int ixgbe_xdp_xmit(struct net_device *dev, int n,
 	struct ixgbe_adapter *adapter = netdev_priv(dev);
 	struct ixgbe_ring *ring;
 	int nxmit = 0;
+	int cpu;
 	int i;
 
 	if (unlikely(test_bit(__IXGBE_DOWN, &adapter->state)))
@@ -10209,10 +10235,12 @@ static int ixgbe_xdp_xmit(struct net_device *dev, int n,
 	if (unlikely(flags & ~XDP_XMIT_FLAGS_MASK))
 		return -EINVAL;
 
+	cpu = ixgbe_determine_xdp_cpu(smp_processor_id());
+
 	/* During program transitions its possible adapter->xdp_prog is assigned
 	 * but ring has not been configured yet. In this case simply abort xmit.
 	 */
-	ring = adapter->xdp_prog ? adapter->xdp_ring[smp_processor_id()] : NULL;
+	ring = adapter->xdp_prog ? adapter->xdp_ring[cpu] : NULL;
 	if (unlikely(!ring))
 		return -ENXIO;
 
@@ -10229,8 +10257,13 @@ static int ixgbe_xdp_xmit(struct net_device *dev, int n,
 		nxmit++;
 	}
 
-	if (unlikely(flags & XDP_XMIT_FLUSH))
+	if (unlikely(flags & XDP_XMIT_FLUSH)) {
+		if (static_branch_unlikely(&ixgbe_xdp_locking_key))
+			spin_lock(&ring->tx_lock);
 		ixgbe_xdp_ring_update_tail(ring);
+		if (static_branch_unlikely(&ixgbe_xdp_locking_key))
+			spin_unlock(&ring->tx_lock);
+	}
 
 	return nxmit;
 }
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
index b1d22e4..e9ce6c1 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -334,13 +334,14 @@ int ixgbe_clean_rx_irq_zc(struct ixgbe_q_vector *q_vector,
 		xdp_do_flush_map();
 
 	if (xdp_xmit & IXGBE_XDP_TX) {
-		struct ixgbe_ring *ring = adapter->xdp_ring[smp_processor_id()];
-
-		/* Force memory writes to complete before letting h/w
-		 * know there are new descriptors to fetch.
-		 */
-		wmb();
-		writel(ring->next_to_use, ring->tail);
+		int cpu = ixgbe_determine_xdp_cpu(smp_processor_id());
+		struct ixgbe_ring *ring = adapter->xdp_ring[cpu];
+
+		if (static_branch_unlikely(&ixgbe_xdp_locking_key))
+			spin_lock(&ring->tx_lock);
+		ixgbe_xdp_ring_update_tail(ring);
+		if (static_branch_unlikely(&ixgbe_xdp_locking_key))
+			spin_unlock(&ring->tx_lock);
 	}
 
 	u64_stats_update_begin(&rx_ring->syncp);
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
