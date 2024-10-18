Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 708D29A38C1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Oct 2024 10:40:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C95E80BFC;
	Fri, 18 Oct 2024 08:40:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lAYiQdNzrlEM; Fri, 18 Oct 2024 08:40:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A06D80BEA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729240812;
	bh=QMV5IKYRE0bfzD6vtMbN46Iti3rOQFEW1vD3ct3pc0g=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8s05iMjquoNqlHa50kbPYGMihTO16EMLlPWqc68h9FMumSSb6PEbF8s5aZLlIEcpi
	 QItR9prw1YiNW2r35E+5XGHTRbZjRYSWpm1ORRVU7JIi85d0mIzd/aEnpBCckYX0mV
	 80WiMJYygpluzVRXsN1EZkaOcYrpu3NRrlCrg5QkW2FnBA3k9oX+GExaq/WRNiCqPp
	 FcUvYM6IRK4AuJ1qPzGc77YrOBUJqIxkhs/TiKuSFfEQt5oN8iez108dF8b7ZRBWq9
	 AL33yfDn1JubOh6aLfgsUNFt631yEK43+W1LTFM6RmUD+cLe7Y78/Qb1srp35h2afZ
	 Q8cJJ8HdrikUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6A06D80BEA;
	Fri, 18 Oct 2024 08:40:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D77442807
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 08:40:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B4119400F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 08:40:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NJiZm6pndXKm for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Oct 2024 08:40:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4146B40123
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4146B40123
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4146B40123
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 08:40:08 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Fri, 18 Oct 2024 10:39:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241018-b4-igb_zero_copy-v9-1-da139d78d796@linutronix.de>
References: <20241018-b4-igb_zero_copy-v9-0-da139d78d796@linutronix.de>
In-Reply-To: <20241018-b4-igb_zero_copy-v9-0-da139d78d796@linutronix.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>, 
 Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>, 
 Richard Cochran <richardcochran@gmail.com>, 
 Sriram Yagnaraman <sriram.yagnaraman@ericsson.com>, 
 Benjamin Steinke <benjamin.steinke@woks-audio.com>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 bpf@vger.kernel.org, Sriram Yagnaraman <sriram.yagnaraman@est.tech>, 
 Kurt Kanzenbach <kurt@linutronix.de>
X-Developer-Signature: v=1; a=openpgp-sha256; l=6449; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=2VHuu2hzDaq14UfD30TJ9OM3e+KStIKYPQI109hxTkI=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBnEh7iHpjdh5YMYZK2UQPQIr1W5LNZI63r7rvdN
 4j3vAAg412JAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZxIe4gAKCRDBk9HyqkZz
 ghiIEACgyYrUqsQJ28U2h8PgVRjk9Ptajfc1GCZF+ZiLngkAF3KORwZR2Srq5OOxHUqOznPnrdw
 /fCCznHdG3mo6LiSPNjtq6dNs247GtSNBYmlrKwmRfLa1GmqQ5vM/pgx+kMoMhZ3TIqG88OJJE+
 hyDkDq8Nuxs1X1iDUbuI0I2oXVDZ3eJ43WdZG2v6SF6ZZjxR+eppoOaS8XtY6sWUPBM8h87BNZd
 Nt6xgOSD38QP8fQ+hxk6oH0rRt9vGd6lu1nZzrHD7DIeVMM4fNW8N+DASUriYYsKgLJbdrEwrf7
 GbkvzYrt4yCTATW69dy08Zg397cceSBHXxLc3hpdO20LJUGyBJRWhSSCjVwUtbrb0nPDkb0T+56
 9gU1/hnKGpsx1ZtDMKV+Wt98jYH66QskioKBa5Q0Yt/Sy+yNz+0BWwwlQF+0RgG/NkXomKMtvBL
 B5Kja28EpoQdLLmTObOYjaA3eTKJgpZY+s5Z03rVK1PxG2SgjpGQ1wKdxQVdafinxKOtlEyTcAo
 sp/A1KQQ7D+bdtECWNBHDtEJwCOamG1iNsWb9rwprPrt5R3vXiKF8+o+KxrDj7xeAgoXPkyYFvJ
 cQPVehL63i2C+Zre21ugkSvxLcn0ybX22JrrGGzsbA4es3QjdRVeb9mf+cDz+XbdVtbWdMErWDs
 C2u7G9uZ+8P9iWg==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1729240805;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QMV5IKYRE0bfzD6vtMbN46Iti3rOQFEW1vD3ct3pc0g=;
 b=vIa6xUnTJv29RImXeZX90VpLQZIT6ByQJjT82sC8FOu3KFR5zN5+uWTqiFFhDyhTdKACEi
 A0joB0hgawY8Bicf5DUVHgkkceS+aIZkKZjmwT7FtaGNk5NsCJcyXtsGXHHvHNAfQrkRLa
 bXDLipsOC3pFxp5k1FUcmKdgOQm73wx5NE7k45jnabh3uwBbZbEkhHSXqGveiylfwIfnfP
 2mwnWIgx9VywSqbrwTlTMMpy6EbzXn7i1BmwPNSkPIhhu9ktN4yqFX5ohhMC+DjfN49GQ6
 5UqlwOSuUCIBV1jYQKnM5RvBw1+amqdemoibdz8Jz5MgmVc8W7VWivRnvYdWUw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1729240805;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QMV5IKYRE0bfzD6vtMbN46Iti3rOQFEW1vD3ct3pc0g=;
 b=5/+sYUiPTn7m74okdGHIND8GuRcNSMGKgvav2rCt628CGcqNE/RxPmks/x5im118ib0W2v
 MtEb+yN12mp/WXDA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=vIa6xUnT; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=5/+sYUiP
Subject: [Intel-wired-lan] [PATCH iwl-next v9 1/6] igb: Remove static
 qualifiers
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sriram Yagnaraman <sriram.yagnaraman@est.tech>

Remove static qualifiers on the following functions to be able to call
from XSK specific file that is added in the later patches:
- igb_xdp_tx_queue_mapping()
- igb_xdp_ring_update_tail()
- igb_clean_tx_ring()
- igb_clean_rx_ring()
- igb_xdp_xmit_back()
- igb_process_skb_fields()

While at it, inline igb_xdp_tx_queue_mapping() and
igb_xdp_ring_update_tail(). These functions are small enough and used in
XDP hot paths.

Signed-off-by: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
[Kurt: Split patches, inline small XDP functions]
Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/igb/igb.h      | 29 ++++++++++++++++++++++++
 drivers/net/ethernet/intel/igb/igb_main.c | 37 +++++--------------------------
 2 files changed, 35 insertions(+), 31 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
index 3c2dc7bdebb5..1bfe703e73d9 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -18,6 +18,7 @@
 #include <linux/i2c-algo-bit.h>
 #include <linux/pci.h>
 #include <linux/mdio.h>
+#include <linux/lockdep.h>
 
 #include <net/xdp.h>
 
@@ -731,12 +732,18 @@ int igb_setup_tx_resources(struct igb_ring *);
 int igb_setup_rx_resources(struct igb_ring *);
 void igb_free_tx_resources(struct igb_ring *);
 void igb_free_rx_resources(struct igb_ring *);
+void igb_clean_tx_ring(struct igb_ring *tx_ring);
+void igb_clean_rx_ring(struct igb_ring *rx_ring);
 void igb_configure_tx_ring(struct igb_adapter *, struct igb_ring *);
 void igb_configure_rx_ring(struct igb_adapter *, struct igb_ring *);
 void igb_setup_tctl(struct igb_adapter *);
 void igb_setup_rctl(struct igb_adapter *);
 void igb_setup_srrctl(struct igb_adapter *, struct igb_ring *);
 netdev_tx_t igb_xmit_frame_ring(struct sk_buff *, struct igb_ring *);
+int igb_xdp_xmit_back(struct igb_adapter *adapter, struct xdp_buff *xdp);
+void igb_process_skb_fields(struct igb_ring *rx_ring,
+			    union e1000_adv_rx_desc *rx_desc,
+			    struct sk_buff *skb);
 void igb_alloc_rx_buffers(struct igb_ring *, u16);
 void igb_update_stats(struct igb_adapter *);
 bool igb_has_link(struct igb_adapter *adapter);
@@ -797,6 +804,28 @@ static inline struct netdev_queue *txring_txq(const struct igb_ring *tx_ring)
 	return netdev_get_tx_queue(tx_ring->netdev, tx_ring->queue_index);
 }
 
+/* This function assumes __netif_tx_lock is held by the caller. */
+static inline void igb_xdp_ring_update_tail(struct igb_ring *ring)
+{
+	lockdep_assert_held(&txring_txq(ring)->_xmit_lock);
+
+	/* Force memory writes to complete before letting h/w know there
+	 * are new descriptors to fetch.
+	 */
+	wmb();
+	writel(ring->next_to_use, ring->tail);
+}
+
+static inline struct igb_ring *igb_xdp_tx_queue_mapping(struct igb_adapter *adapter)
+{
+	unsigned int r_idx = smp_processor_id();
+
+	if (r_idx >= adapter->num_tx_queues)
+		r_idx = r_idx % adapter->num_tx_queues;
+
+	return adapter->tx_ring[r_idx];
+}
+
 int igb_add_filter(struct igb_adapter *adapter,
 		   struct igb_nfc_filter *input);
 int igb_erase_filter(struct igb_adapter *adapter,
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index f1d088168723..5a44867bcb26 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -33,7 +33,6 @@
 #include <linux/bpf_trace.h>
 #include <linux/pm_runtime.h>
 #include <linux/etherdevice.h>
-#include <linux/lockdep.h>
 #ifdef CONFIG_IGB_DCA
 #include <linux/dca.h>
 #endif
@@ -116,8 +115,6 @@ static void igb_configure_tx(struct igb_adapter *);
 static void igb_configure_rx(struct igb_adapter *);
 static void igb_clean_all_tx_rings(struct igb_adapter *);
 static void igb_clean_all_rx_rings(struct igb_adapter *);
-static void igb_clean_tx_ring(struct igb_ring *);
-static void igb_clean_rx_ring(struct igb_ring *);
 static void igb_set_rx_mode(struct net_device *);
 static void igb_update_phy_info(struct timer_list *);
 static void igb_watchdog(struct timer_list *);
@@ -2915,29 +2912,7 @@ static int igb_xdp(struct net_device *dev, struct netdev_bpf *xdp)
 	}
 }
 
-/* This function assumes __netif_tx_lock is held by the caller. */
-static void igb_xdp_ring_update_tail(struct igb_ring *ring)
-{
-	lockdep_assert_held(&txring_txq(ring)->_xmit_lock);
-
-	/* Force memory writes to complete before letting h/w know there
-	 * are new descriptors to fetch.
-	 */
-	wmb();
-	writel(ring->next_to_use, ring->tail);
-}
-
-static struct igb_ring *igb_xdp_tx_queue_mapping(struct igb_adapter *adapter)
-{
-	unsigned int r_idx = smp_processor_id();
-
-	if (r_idx >= adapter->num_tx_queues)
-		r_idx = r_idx % adapter->num_tx_queues;
-
-	return adapter->tx_ring[r_idx];
-}
-
-static int igb_xdp_xmit_back(struct igb_adapter *adapter, struct xdp_buff *xdp)
+int igb_xdp_xmit_back(struct igb_adapter *adapter, struct xdp_buff *xdp)
 {
 	struct xdp_frame *xdpf = xdp_convert_buff_to_frame(xdp);
 	int cpu = smp_processor_id();
@@ -4884,7 +4859,7 @@ static void igb_free_all_tx_resources(struct igb_adapter *adapter)
  *  igb_clean_tx_ring - Free Tx Buffers
  *  @tx_ring: ring to be cleaned
  **/
-static void igb_clean_tx_ring(struct igb_ring *tx_ring)
+void igb_clean_tx_ring(struct igb_ring *tx_ring)
 {
 	u16 i = tx_ring->next_to_clean;
 	struct igb_tx_buffer *tx_buffer = &tx_ring->tx_buffer_info[i];
@@ -5003,7 +4978,7 @@ static void igb_free_all_rx_resources(struct igb_adapter *adapter)
  *  igb_clean_rx_ring - Free Rx Buffers per Queue
  *  @rx_ring: ring to free buffers from
  **/
-static void igb_clean_rx_ring(struct igb_ring *rx_ring)
+void igb_clean_rx_ring(struct igb_ring *rx_ring)
 {
 	u16 i = rx_ring->next_to_clean;
 
@@ -8782,9 +8757,9 @@ static bool igb_cleanup_headers(struct igb_ring *rx_ring,
  *  order to populate the hash, checksum, VLAN, timestamp, protocol, and
  *  other fields within the skb.
  **/
-static void igb_process_skb_fields(struct igb_ring *rx_ring,
-				   union e1000_adv_rx_desc *rx_desc,
-				   struct sk_buff *skb)
+void igb_process_skb_fields(struct igb_ring *rx_ring,
+			    union e1000_adv_rx_desc *rx_desc,
+			    struct sk_buff *skb)
 {
 	struct net_device *dev = rx_ring->netdev;
 

-- 
2.39.5

