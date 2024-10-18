Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFDB9A38C6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Oct 2024 10:40:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2052960AC6;
	Fri, 18 Oct 2024 08:40:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0Dmyd7N5Zr_R; Fri, 18 Oct 2024 08:40:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5354560AAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729240816;
	bh=584vBPusrgLmra4Wkqnd699HjUDSP5W0WXSmm1bHoxY=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=r2MTnXj8U6jMGtO95MUrqLNS2HDk9IvgFfR+a2QwHaRex+W7BaYJiond04zZadkc4
	 nzLeDdM+l7enKKo0VsY7wIZysRoYRyeeiFkuLeJ9q3uZNYtp0JX140qJk+pyCZRNrF
	 ufZTcNAfDuZbGhs6FrndOwu/6QRC9sEvJZLsWU974d9qunzBq0ITWojggLOyGWXDIH
	 LkMNOQZLh+fkba24+L8aWYC94PDSG/hlNU/z7WRT969lZX+d3VZgrvGtF4PcwSI+bP
	 C1Zu7Rn8Cc/yIQLE8ZdsI+kmf6wKkMhsbwJAmms4ufNTtAvX5aZ5IMEnEAIiCRuvZO
	 B4VlJIYEjC2PA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5354560AAD;
	Fri, 18 Oct 2024 08:40:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D95092072
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 08:40:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B6BDF6062A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 08:40:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2Y55ElRPhcwx for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Oct 2024 08:40:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7329860628
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7329860628
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7329860628
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 08:40:12 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Fri, 18 Oct 2024 10:40:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241018-b4-igb_zero_copy-v9-4-da139d78d796@linutronix.de>
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
 bpf@vger.kernel.org, Kurt Kanzenbach <kurt@linutronix.de>
X-Developer-Signature: v=1; a=openpgp-sha256; l=3950; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=9nSNj+1UP5HBV2CgLd1Wz6kkkZ+FSuhd7uOg3hZalds=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBnEh7iotRvj8q3nUGPlhNtr5ciNC4ocD08er3Be
 dPq6GjrqI+JAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZxIe4gAKCRDBk9HyqkZz
 guxiD/4swfoe0tBWrRDcXI3U2B18OY0/S92fcZgkYy5KDDwDZ+brBEU6LsU1z8tUAcuDoauU8T/
 EudPXnhwcAMo5mBVnhDJOMzmq1vk/CsHBBLrqbkUa3dkwHJ4C1yZzSNtkdE/fXBMTgsdw3FlmC0
 FfT619o6mR7DHr54pk8Af4ACgMgJ93qoB5LDRNpaWvRbRxBh96Q04oXoBokAPMwV0qQbtZp7uwz
 dwdHXrTAI8CPX56SGX2T8QHFE1dlpipK1TfHTFoxf1vgYUFbFfRp7KrbyCCgQ19tLX7SKA/wBmk
 NaU6RkJLwjpoY5taRO2ta5BOIcgwdRBSyUF4yPo+/ZdjP1x82ShOboRNwzvCf8sQUbUv8i7eCxD
 fK9ZP+YHLQpw3KMaCYMaakT7A9o0cqYUWXxmv9d5rXCQx//0TM507P8gdS/9AQDKeSweJmCB/KV
 n1xhf6LRcUh2DlfJIQ/Gf2v9/oRsNCFX2rNCi41vbo1sUDcO2zJCU0LwYVTPN04tBMggkkris+H
 k6lKFvmZW9LIl9f/2+SqIH4iRGj22LxX0vDx0w1GPuiEX1ji7ULXvP8ft1HQgT1f6jO54m+u969
 QZz3EaowiBUXWu05NWr0Gk/h1g8DsbrnO+ycxr6qktwU5ZUoDbCTVqBxCEuQEylx6rwGTm6ZWUE
 rWjEJR2mzjjypJA==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1729240810;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=584vBPusrgLmra4Wkqnd699HjUDSP5W0WXSmm1bHoxY=;
 b=T9RQ3IJHwBvEwgJznzKWjFq/gayVps+YZQJMNUEzCaVpepAzEw4ZKqdQ2PbzudbtlAhE8F
 rwjjj3yx5QcZSyoMRqitvbqpcry9rlq5wnhTRO/RQPU6QFZog/IP8oL6rRKYlehdOZEk/H
 iPc9zouRXJkT9SRUttEImwelGl8o0JRlogxVn6IyvM/igKyEQyvb5JqBhcWoifURgV4paI
 KuEdC8TsziM/tQkQW8SWmOI3auY2IJCfIGRb2SWk9leye8ITQamoPhsiOeLOCUonbNsDMc
 hvajgWjZqq66cDvKRxk2B2exgLnF8LcZddk4Wv3oRbPM/uR8dSZfHHBMxCO10w==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1729240810;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=584vBPusrgLmra4Wkqnd699HjUDSP5W0WXSmm1bHoxY=;
 b=rZsB4ZL/OOnfYc15T90YqwNz8ip1lQXp8+WsWGy0Kt3/YFe7TILjsy/fjnECHWnpVryC+U
 RBaCcuKmTztI/5AQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=T9RQ3IJH; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=rZsB4ZL/
Subject: [Intel-wired-lan] [PATCH iwl-next v9 4/6] igb: Add XDP finalize and
 stats update functions
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

Move XDP finalize and Rx statistics update into separate functions. This
way, they can be reused by the XDP and XDP/ZC code later.

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/igb/igb.h      |  3 ++
 drivers/net/ethernet/intel/igb/igb_main.c | 54 ++++++++++++++++++++-----------
 2 files changed, 38 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
index c30d6f9708f8..1e65b41a48d8 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -740,6 +740,9 @@ void igb_clean_tx_ring(struct igb_ring *tx_ring);
 void igb_clean_rx_ring(struct igb_ring *rx_ring);
 void igb_configure_tx_ring(struct igb_adapter *, struct igb_ring *);
 void igb_configure_rx_ring(struct igb_adapter *, struct igb_ring *);
+void igb_finalize_xdp(struct igb_adapter *adapter, unsigned int status);
+void igb_update_rx_stats(struct igb_q_vector *q_vector, unsigned int packets,
+			 unsigned int bytes);
 void igb_setup_tctl(struct igb_adapter *);
 void igb_setup_rctl(struct igb_adapter *);
 void igb_setup_srrctl(struct igb_adapter *, struct igb_ring *);
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 341b83e39019..4d3aed6cd848 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -8852,6 +8852,38 @@ static void igb_put_rx_buffer(struct igb_ring *rx_ring,
 	rx_buffer->page = NULL;
 }
 
+void igb_finalize_xdp(struct igb_adapter *adapter, unsigned int status)
+{
+	int cpu = smp_processor_id();
+	struct netdev_queue *nq;
+
+	if (status & IGB_XDP_REDIR)
+		xdp_do_flush();
+
+	if (status & IGB_XDP_TX) {
+		struct igb_ring *tx_ring = igb_xdp_tx_queue_mapping(adapter);
+
+		nq = txring_txq(tx_ring);
+		__netif_tx_lock(nq, cpu);
+		igb_xdp_ring_update_tail(tx_ring);
+		__netif_tx_unlock(nq);
+	}
+}
+
+void igb_update_rx_stats(struct igb_q_vector *q_vector, unsigned int packets,
+			 unsigned int bytes)
+{
+	struct igb_ring *ring = q_vector->rx.ring;
+
+	u64_stats_update_begin(&ring->rx_syncp);
+	ring->rx_stats.packets += packets;
+	ring->rx_stats.bytes += bytes;
+	u64_stats_update_end(&ring->rx_syncp);
+
+	q_vector->rx.total_packets += packets;
+	q_vector->rx.total_bytes += bytes;
+}
+
 static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
 {
 	unsigned int total_bytes = 0, total_packets = 0;
@@ -8859,9 +8891,7 @@ static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
 	struct igb_ring *rx_ring = q_vector->rx.ring;
 	u16 cleaned_count = igb_desc_unused(rx_ring);
 	struct sk_buff *skb = rx_ring->skb;
-	int cpu = smp_processor_id();
 	unsigned int xdp_xmit = 0;
-	struct netdev_queue *nq;
 	struct xdp_buff xdp;
 	u32 frame_sz = 0;
 	int rx_buf_pgcnt;
@@ -8983,24 +9013,10 @@ static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
 	/* place incomplete frames back on ring for completion */
 	rx_ring->skb = skb;
 
-	if (xdp_xmit & IGB_XDP_REDIR)
-		xdp_do_flush();
-
-	if (xdp_xmit & IGB_XDP_TX) {
-		struct igb_ring *tx_ring = igb_xdp_tx_queue_mapping(adapter);
-
-		nq = txring_txq(tx_ring);
-		__netif_tx_lock(nq, cpu);
-		igb_xdp_ring_update_tail(tx_ring);
-		__netif_tx_unlock(nq);
-	}
+	if (xdp_xmit)
+		igb_finalize_xdp(adapter, xdp_xmit);
 
-	u64_stats_update_begin(&rx_ring->rx_syncp);
-	rx_ring->rx_stats.packets += total_packets;
-	rx_ring->rx_stats.bytes += total_bytes;
-	u64_stats_update_end(&rx_ring->rx_syncp);
-	q_vector->rx.total_packets += total_packets;
-	q_vector->rx.total_bytes += total_bytes;
+	igb_update_rx_stats(q_vector, total_packets, total_bytes);
 
 	if (cleaned_count)
 		igb_alloc_rx_buffers(rx_ring, cleaned_count);

-- 
2.39.5

