Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E03B43FD76A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Sep 2021 12:12:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F0FB1404B0;
	Wed,  1 Sep 2021 10:12:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vj5fY6acOcfS; Wed,  1 Sep 2021 10:12:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3616A4022F;
	Wed,  1 Sep 2021 10:12:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DF5801BF681
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 10:12:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CD35782779
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 10:12:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jsmge7e7vBwD for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Sep 2021 10:12:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com
 [IPv6:2607:f8b0:4864:20::532])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 99B0A80B27
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 10:12:34 +0000 (UTC)
Received: by mail-pg1-x532.google.com with SMTP id k24so2238532pgh.8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 01 Sep 2021 03:12:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Blh2sCCWmLbhLSQpe3+Jm96zIa4flfmEN7PrfkdI5v4=;
 b=Q2EgLASQd2uJSXQumfXWCrXyPH8dvnuzjWnOS9Qr6E1Xyw+KQ97MQq8SPrG6ZpgJag
 20Su6W1ASZiTcFz4oljVwA/e4CEupIG57pEkVRnatI/h56QYeoYoMREjcxmPhBa5kD7p
 5FKREXC+WpxuV/EnIbbIht5dyYczPONSVm15wli3yBdIP1Xw8iFnW2hMkNsTXF40ZDw0
 9wJdUx/6sBXFlpKYomE1PCBSqDfL5/YW9fjOEmJbScYVgIyPr6FlP5nZTaVworzYtBKH
 MzyZeot5i2rDezsLXba15f5MQOGltTDJ4XR/TxCa/7DHhkK/S357aSa1MiO88Z5tIsGZ
 IAsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Blh2sCCWmLbhLSQpe3+Jm96zIa4flfmEN7PrfkdI5v4=;
 b=Xk1B8kfC3qxB41dbgWpi6cTeeuByGC9i7QJUR0crBeGb+y/AIPQIrOcrTSyJwlDuj+
 ie/Xm+tOOQ85bC30EaspuWCHeiJI4FqkPBbmKhvsYiR/CLQ/ZIpnvcgCvbiAk2AtQ78H
 UirjKQxQHRTt5HHvHLhq2q/zwydsv5vIeiL0LXRumv9Qvoji9pHKNuf8akkA5t+c3hAo
 OQjJKbVt+iK6gU6fAeH7KbSAizxRa0P53wI+VGyGq62pxZicKOH+ssl601GH9j2y6ohM
 SKcLGslyMPMHskUrmuL2vL/O6ik9mR0xxE9466MkO2hkG+k8BPmDu0+Q+ssa3cccS5Fb
 9shg==
X-Gm-Message-State: AOAM53218R3KwtW+MtW3eSQ2nBZVC1owIEVbWe3CbKfhxYMyX7zlDe6d
 rUFOLYL4/V+F6cg7XQCal8A=
X-Google-Smtp-Source: ABdhPJzAJUV8QGS+RJb0NCebYyBMWY9FvzSXiEZ7iJivAxx1WOzwmIyZwRN+3iQp84ep7MhjOqMHqA==
X-Received: by 2002:a62:2fc1:0:b0:3f5:176f:67c8 with SMTP id
 v184-20020a622fc1000000b003f5176f67c8mr25775375pfv.17.1630491153965; 
 Wed, 01 Sep 2021 03:12:33 -0700 (PDT)
Received: from localhost.localdomain ([162.219.34.246])
 by smtp.gmail.com with ESMTPSA id j6sm19966718pfn.107.2021.09.01.03.12.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 Sep 2021 03:12:33 -0700 (PDT)
From: kerneljasonxing@gmail.com
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org, ast@kernel.org, daniel@iogearbox.net,
 hawk@kernel.org, john.fastabend@gmail.com, andrii@kernel.org, kafai@fb.com,
 songliubraving@fb.com, yhs@fb.com, kpsingh@kernel.org
Date: Wed,  1 Sep 2021 18:12:06 +0800
Message-Id: <20210901101206.50274-1-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.30.1 (Apple Git-130)
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v7] ixgbe: let the xdpdrv work with more
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

Here're some numbers before/after applying this patch with xdp-example
loaded on the eth0X:

As client (tx path):
                     Before    After
TCP_STREAM send-64   734.14    714.20
TCP_STREAM send-128  1401.91   1395.05
TCP_STREAM send-512  5311.67   5292.84
TCP_STREAM send-1k   9277.40   9356.22 (not stable)
TCP_RR     send-1    22559.75  21844.22
TCP_RR     send-128  23169.54  22725.13
TCP_RR     send-512  21670.91  21412.56

As server (rx path):
                     Before    After
TCP_STREAM send-64   1416.49   1383.12
TCP_STREAM send-128  3141.49   3055.50
TCP_STREAM send-512  9488.73   9487.44
TCP_STREAM send-1k   9491.17   9356.22 (not stable)
TCP_RR     send-1    23617.74  23601.60
...

Notice: the TCP_RR mode is unstable as the official document explaines.

I tested many times with different parameters combined through netperf.
Though the result is not that accurate, I cannot see much influence on
this patch. The static key is places on the hot path, but it actually
shouldn't cause a huge regression theoretically.

Fixes: 33fdc82f08 ("ixgbe: add support for XDP_TX action")
Reported-by: kernel test robot <lkp@intel.com>
Co-developed-by: Shujin Li <lishujin@kuaishou.com>
Signed-off-by: Shujin Li <lishujin@kuaishou.com>
Signed-off-by: Jason Xing <xingwanli@kuaishou.com>
---
v7:
- Factorized to a single spin_lock/unlock in ixgbe_xdp_xmit() (Eric)
- Handle other parts of lock/unlock in ixgbe_run_xdp()/_zc() (Jason)

v6:
- Move the declaration of static-key to the proper position (Test Robot)
- Add reported-by tag (Jason)
- Add more detailed performance test results (Jason)

v5:
- Change back to nr_cpu_ids (Eric)

v4:
- Update the wrong commit messages. (Jason)

v3:
- Change nr_cpu_ids to num_online_cpus() (Maciej)
- Rename MAX_XDP_QUEUES to IXGBE_MAX_XDP_QS (Maciej)
- Rename ixgbe_determine_xdp_cpu() to ixgbe_determine_xdp_q_idx() (Maciej)
- Wrap ixgbe_xdp_ring_update_tail() with lock into one function (Maciej)

v2:
- Adjust cpu id in ixgbe_xdp_xmit(). (Jesper)
- Add a fallback path. (Maciej)
- Adjust other parts related to xdp ring.
---
 drivers/net/ethernet/intel/ixgbe/ixgbe.h           | 23 +++++++++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c       |  9 +++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c      | 50 ++++++++++++++++------
 .../net/ethernet/intel/ixgbe/ixgbe_txrx_common.h   |  3 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c       | 16 ++++---
 5 files changed, 77 insertions(+), 24 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index a604552..4a69823 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -351,6 +351,7 @@ struct ixgbe_ring {
 	};
 	u16 rx_offset;
 	struct xdp_rxq_info xdp_rxq;
+	spinlock_t tx_lock;	/* used in XDP mode */
 	struct xsk_buff_pool *xsk_pool;
 	u16 ring_idx;		/* {rx,tx,xdp}_ring back reference idx */
 	u16 rx_buf_len;
@@ -375,11 +376,13 @@ enum ixgbe_ring_f_enum {
 #define IXGBE_MAX_FCOE_INDICES		8
 #define MAX_RX_QUEUES			(IXGBE_MAX_FDIR_INDICES + 1)
 #define MAX_TX_QUEUES			(IXGBE_MAX_FDIR_INDICES + 1)
-#define MAX_XDP_QUEUES			(IXGBE_MAX_FDIR_INDICES + 1)
+#define IXGBE_MAX_XDP_QS		(IXGBE_MAX_FDIR_INDICES + 1)
 #define IXGBE_MAX_L2A_QUEUES		4
 #define IXGBE_BAD_L2A_QUEUE		3
 #define IXGBE_MAX_MACVLANS		63
 
+DECLARE_STATIC_KEY_FALSE(ixgbe_xdp_locking_key);
+
 struct ixgbe_ring_feature {
 	u16 limit;	/* upper limit on feature indices */
 	u16 indices;	/* current value of indices */
@@ -629,7 +632,7 @@ struct ixgbe_adapter {
 
 	/* XDP */
 	int num_xdp_queues;
-	struct ixgbe_ring *xdp_ring[MAX_XDP_QUEUES];
+	struct ixgbe_ring *xdp_ring[IXGBE_MAX_XDP_QS];
 	unsigned long *af_xdp_zc_qps; /* tracks AF_XDP ZC enabled rings */
 
 	/* TX */
@@ -772,6 +775,22 @@ struct ixgbe_adapter {
 #endif /* CONFIG_IXGBE_IPSEC */
 };
 
+static inline int ixgbe_determine_xdp_q_idx(int cpu)
+{
+	if (static_key_enabled(&ixgbe_xdp_locking_key))
+		return cpu % IXGBE_MAX_XDP_QS;
+	else
+		return cpu;
+}
+
+static inline
+struct ixgbe_ring *ixgbe_determine_xdp_ring(struct ixgbe_adapter *adapter)
+{
+	int index = ixgbe_determine_xdp_q_idx(smp_processor_id());
+
+	return adapter->xdp_ring[index];
+}
+
 static inline u8 ixgbe_max_rss_indices(struct ixgbe_adapter *adapter)
 {
 	switch (adapter->hw.mac.type) {
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
index 0218f6c..86b1116 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
@@ -299,7 +299,10 @@ static void ixgbe_cache_ring_register(struct ixgbe_adapter *adapter)
 
 static int ixgbe_xdp_queues(struct ixgbe_adapter *adapter)
 {
-	return adapter->xdp_prog ? nr_cpu_ids : 0;
+	int queues;
+
+	queues = min_t(int, IXGBE_MAX_XDP_QS, nr_cpu_ids);
+	return adapter->xdp_prog ? queues : 0;
 }
 
 #define IXGBE_RSS_64Q_MASK	0x3F
@@ -947,6 +950,7 @@ static int ixgbe_alloc_q_vector(struct ixgbe_adapter *adapter,
 		ring->count = adapter->tx_ring_count;
 		ring->queue_index = xdp_idx;
 		set_ring_xdp(ring);
+		spin_lock_init(&ring->tx_lock);
 
 		/* assign ring to adapter */
 		WRITE_ONCE(adapter->xdp_ring[xdp_idx], ring);
@@ -1032,6 +1036,9 @@ static void ixgbe_free_q_vector(struct ixgbe_adapter *adapter, int v_idx)
 	adapter->q_vector[v_idx] = NULL;
 	__netif_napi_del(&q_vector->napi);
 
+	if (static_key_enabled(&ixgbe_xdp_locking_key))
+		static_branch_dec(&ixgbe_xdp_locking_key);
+
 	/*
 	 * after a call to __netif_napi_del() napi may still be used and
 	 * ixgbe_get_stats64() might access the rings on this vector,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 14aea40..8b9e21b 100644
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
@@ -2197,6 +2200,7 @@ static struct sk_buff *ixgbe_run_xdp(struct ixgbe_adapter *adapter,
 {
 	int err, result = IXGBE_XDP_PASS;
 	struct bpf_prog *xdp_prog;
+	struct ixgbe_ring *ring;
 	struct xdp_frame *xdpf;
 	u32 act;
 
@@ -2215,7 +2219,12 @@ static struct sk_buff *ixgbe_run_xdp(struct ixgbe_adapter *adapter,
 		xdpf = xdp_convert_buff_to_frame(xdp);
 		if (unlikely(!xdpf))
 			goto out_failure;
-		result = ixgbe_xmit_xdp_ring(adapter, xdpf);
+		ring = ixgbe_determine_xdp_ring(adapter);
+		if (static_branch_unlikely(&ixgbe_xdp_locking_key))
+			spin_lock(&ring->tx_lock);
+		result = ixgbe_xmit_xdp_ring(ring, xdpf);
+		if (static_branch_unlikely(&ixgbe_xdp_locking_key))
+			spin_unlock(&ring->tx_lock);
 		if (result == IXGBE_XDP_CONSUMED)
 			goto out_failure;
 		break;
@@ -2422,13 +2431,9 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
 		xdp_do_flush_map();
 
 	if (xdp_xmit & IXGBE_XDP_TX) {
-		struct ixgbe_ring *ring = adapter->xdp_ring[smp_processor_id()];
+		struct ixgbe_ring *ring = ixgbe_determine_xdp_ring(adapter);
 
-		/* Force memory writes to complete before letting h/w
-		 * know there are new descriptors to fetch.
-		 */
-		wmb();
-		writel(ring->next_to_use, ring->tail);
+		ixgbe_xdp_ring_update_tail_locked(ring);
 	}
 
 	u64_stats_update_begin(&rx_ring->syncp);
@@ -6320,7 +6325,7 @@ static int ixgbe_sw_init(struct ixgbe_adapter *adapter,
 	if (ixgbe_init_rss_key(adapter))
 		return -ENOMEM;
 
-	adapter->af_xdp_zc_qps = bitmap_zalloc(MAX_XDP_QUEUES, GFP_KERNEL);
+	adapter->af_xdp_zc_qps = bitmap_zalloc(IXGBE_MAX_XDP_QS, GFP_KERNEL);
 	if (!adapter->af_xdp_zc_qps)
 		return -ENOMEM;
 
@@ -8536,10 +8541,9 @@ static u16 ixgbe_select_queue(struct net_device *dev, struct sk_buff *skb,
 }
 
 #endif
-int ixgbe_xmit_xdp_ring(struct ixgbe_adapter *adapter,
+int ixgbe_xmit_xdp_ring(struct ixgbe_ring *ring,
 			struct xdp_frame *xdpf)
 {
-	struct ixgbe_ring *ring = adapter->xdp_ring[smp_processor_id()];
 	struct ixgbe_tx_buffer *tx_buffer;
 	union ixgbe_adv_tx_desc *tx_desc;
 	u32 len, cmd_type;
@@ -10130,8 +10134,13 @@ static int ixgbe_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
 			return -EINVAL;
 	}
 
-	if (nr_cpu_ids > MAX_XDP_QUEUES)
+	/* if the number of cpus is much larger than the maximum of queues,
+	 * we should stop it and then return with NOMEM like before.
+	 */
+	if (nr_cpu_ids > IXGBE_MAX_XDP_QS * 2)
 		return -ENOMEM;
+	else if (nr_cpu_ids > IXGBE_MAX_XDP_QS)
+		static_branch_inc(&ixgbe_xdp_locking_key);
 
 	old_prog = xchg(&adapter->xdp_prog, prog);
 	need_reset = (!!prog != !!old_prog);
@@ -10195,6 +10204,15 @@ void ixgbe_xdp_ring_update_tail(struct ixgbe_ring *ring)
 	writel(ring->next_to_use, ring->tail);
 }
 
+void ixgbe_xdp_ring_update_tail_locked(struct ixgbe_ring *ring)
+{
+	if (static_branch_unlikely(&ixgbe_xdp_locking_key))
+		spin_lock(&ring->tx_lock);
+	ixgbe_xdp_ring_update_tail(ring);
+	if (static_branch_unlikely(&ixgbe_xdp_locking_key))
+		spin_unlock(&ring->tx_lock);
+}
+
 static int ixgbe_xdp_xmit(struct net_device *dev, int n,
 			  struct xdp_frame **frames, u32 flags)
 {
@@ -10212,18 +10230,21 @@ static int ixgbe_xdp_xmit(struct net_device *dev, int n,
 	/* During program transitions its possible adapter->xdp_prog is assigned
 	 * but ring has not been configured yet. In this case simply abort xmit.
 	 */
-	ring = adapter->xdp_prog ? adapter->xdp_ring[smp_processor_id()] : NULL;
+	ring = adapter->xdp_prog ? ixgbe_determine_xdp_ring(adapter) : NULL;
 	if (unlikely(!ring))
 		return -ENXIO;
 
 	if (unlikely(test_bit(__IXGBE_TX_DISABLED, &ring->state)))
 		return -ENXIO;
 
+	if (static_branch_unlikely(&ixgbe_xdp_locking_key))
+		spin_lock(&ring->tx_lock);
+
 	for (i = 0; i < n; i++) {
 		struct xdp_frame *xdpf = frames[i];
 		int err;
 
-		err = ixgbe_xmit_xdp_ring(adapter, xdpf);
+		err = ixgbe_xmit_xdp_ring(ring, xdpf);
 		if (err != IXGBE_XDP_TX)
 			break;
 		nxmit++;
@@ -10232,6 +10253,9 @@ static int ixgbe_xdp_xmit(struct net_device *dev, int n,
 	if (unlikely(flags & XDP_XMIT_FLUSH))
 		ixgbe_xdp_ring_update_tail(ring);
 
+	if (static_branch_unlikely(&ixgbe_xdp_locking_key))
+		spin_unlock(&ring->tx_lock);
+
 	return nxmit;
 }
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h
index 2aeec78..a82533f 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h
@@ -12,7 +12,7 @@
 #define IXGBE_TXD_CMD (IXGBE_TXD_CMD_EOP | \
 		       IXGBE_TXD_CMD_RS)
 
-int ixgbe_xmit_xdp_ring(struct ixgbe_adapter *adapter,
+int ixgbe_xmit_xdp_ring(struct ixgbe_ring *ring,
 			struct xdp_frame *xdpf);
 bool ixgbe_cleanup_headers(struct ixgbe_ring *rx_ring,
 			   union ixgbe_adv_rx_desc *rx_desc,
@@ -23,6 +23,7 @@ void ixgbe_process_skb_fields(struct ixgbe_ring *rx_ring,
 void ixgbe_rx_skb(struct ixgbe_q_vector *q_vector,
 		  struct sk_buff *skb);
 void ixgbe_xdp_ring_update_tail(struct ixgbe_ring *ring);
+void ixgbe_xdp_ring_update_tail_locked(struct ixgbe_ring *ring);
 void ixgbe_irq_rearm_queues(struct ixgbe_adapter *adapter, u64 qmask);
 
 void ixgbe_txrx_ring_disable(struct ixgbe_adapter *adapter, int ring);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
index b1d22e4..db2bc58 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -100,6 +100,7 @@ static int ixgbe_run_xdp_zc(struct ixgbe_adapter *adapter,
 {
 	int err, result = IXGBE_XDP_PASS;
 	struct bpf_prog *xdp_prog;
+	struct ixgbe_ring *ring;
 	struct xdp_frame *xdpf;
 	u32 act;
 
@@ -120,7 +121,12 @@ static int ixgbe_run_xdp_zc(struct ixgbe_adapter *adapter,
 		xdpf = xdp_convert_buff_to_frame(xdp);
 		if (unlikely(!xdpf))
 			goto out_failure;
-		result = ixgbe_xmit_xdp_ring(adapter, xdpf);
+		ring = ixgbe_determine_xdp_ring(adapter);
+		if (static_branch_unlikely(&ixgbe_xdp_locking_key))
+			spin_lock(&ring->tx_lock);
+		result = ixgbe_xmit_xdp_ring(ring, xdpf);
+		if (static_branch_unlikely(&ixgbe_xdp_locking_key))
+			spin_unlock(&ring->tx_lock);
 		if (result == IXGBE_XDP_CONSUMED)
 			goto out_failure;
 		break;
@@ -334,13 +340,9 @@ int ixgbe_clean_rx_irq_zc(struct ixgbe_q_vector *q_vector,
 		xdp_do_flush_map();
 
 	if (xdp_xmit & IXGBE_XDP_TX) {
-		struct ixgbe_ring *ring = adapter->xdp_ring[smp_processor_id()];
+		struct ixgbe_ring *ring = ixgbe_determine_xdp_ring(adapter);
 
-		/* Force memory writes to complete before letting h/w
-		 * know there are new descriptors to fetch.
-		 */
-		wmb();
-		writel(ring->next_to_use, ring->tail);
+		ixgbe_xdp_ring_update_tail_locked(ring);
 	}
 
 	u64_stats_update_begin(&rx_ring->syncp);
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
