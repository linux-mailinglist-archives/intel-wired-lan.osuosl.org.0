Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 593C492F760
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jul 2024 10:56:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 345C6412DB;
	Fri, 12 Jul 2024 08:56:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ls6ihblbWC6Y; Fri, 12 Jul 2024 08:56:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C20441437
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720774568;
	bh=+Q70TNir7IBy52CbPauTJ3qNqdXl8vBAfbwUA/7ETBE=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Q4qCF3tBsMOL/U4KFFvY8RT3APo5tzr6E8OWboqhJ/xvccep2xqhVLU+8ZMf0RATA
	 UlVrP3eY5N7UFqWiUaQs7GeZGsxIvZNx/H7/gtM1hn/twnNH1zEWKQ8AYj/ckVB8Sw
	 VegvnvEicuGa/wgDolB2eoiygwjWVC7ss1c59IpS3/YB6CqJ+1hhaa3+52+qPx/S/0
	 5UXBdhiFjVRO0F360ww7H3/5ujU9RAR9GIhNBPsmwXVV00/XJO+LXDElr1g1/8mr5Q
	 kyhl9zTIidUVwJSvK+IW4d2pDNPJ8Iobv9/fgqyc8XwreOR61YaLBSxt3bAqnbbGpq
	 fV1HNk0wWpZlQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5C20441437;
	Fri, 12 Jul 2024 08:56:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4BDBF1BF584
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2024 08:56:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 441EE60AE3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2024 08:55:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2t0TAfp9M6-S for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jul 2024 08:55:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 05148608C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05148608C3
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 05148608C3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2024 08:55:57 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Fri, 12 Jul 2024 10:55:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240711-b4-igb_zero_copy-v5-1-f3f455113b11@linutronix.de>
References: <20240711-b4-igb_zero_copy-v5-0-f3f455113b11@linutronix.de>
In-Reply-To: <20240711-b4-igb_zero_copy-v5-0-f3f455113b11@linutronix.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=6788; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=karr5T8HuyUwA088auP3gGhvt/no1iXDgJPYDayi7vg=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBmkO+WOBYC3tcGL39gclFbXDK6Zi4EbWSdTfPU/
 xRsxl8QEb6JAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZpDvlgAKCRDBk9HyqkZz
 gnDXEACNzkOn+7o+SynoIJo0o4KOg8X3oFaBWoR4wnZEHC3Cn2wfz2h3ZqY9lGBXaDI6Gu2F1Xq
 M2ATwtv9yXGq/sCu6rEUwceLIENnYwfQLrpBkXMx5+QtkMkoF5iF7/50hP3x/3CmB6lKAhlYh7o
 2oYXd7lQu6LLYQmtq+Y8CLGxGYa0RG00UrmWlt/twLAp1EMN0tPUfItCRlXSTi7ZX8+5Iqnks4+
 J1h+xBA0ezCVWRjNeDh4DvEFDibhcFcJWS+xGBBhxUUbCv7f9n+TmE3mlOOwY3NbYrMz3Mcr9DZ
 Ci2mgQQbQ351IccXPMpPOm+Bgrw5AznueCbR7sAIIyaOlXhaafvI7CrKmqa64ZYB+5W9B0i/NhC
 AdPvPjPXnEdPhioMphW3fBcfT330CYgGe9drw3GNsKIT/ZrN86sunYAI24TQtiTXUGh9nWgZrmU
 e/SIly8i+THhmScgb5mkmwjULqPdB7oLvVkcF6Gf0mUqLZfraaTuyofHWbtRBSGa8LOkontffmt
 IR0UsytjJiBeYe/XatpM1frb4WblIcHdhrPFj3i09JnCXAMmJeF9Wkw+lc1M09cxnYmUdsW0Kv1
 XHU2aitnrYmbJB4L3eEm6DFcr4d+1ArzdKPyJ0KvIP3jzdOFpsAVaNlxP/MrUDi7G6CoQ25gVSx
 mkD2m6N16oyWBFw==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1720774553;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+Q70TNir7IBy52CbPauTJ3qNqdXl8vBAfbwUA/7ETBE=;
 b=OUKpw4dY7+c8OeaHbG3nWN6OYBKwGO8cTUZI71w300cPkMdCG78VVT8RAkg/SpG2m2Gnsy
 HOBel1qqCaYgrj68jaWZv5YO/6BSXxnde4tM9abeyGinRKlg8MjBLV6kc7p72ujih6v5k6
 N6zhw0i9xJM8RWv3TNc38QhuAz3tl1NoW4PKeZOr33nPzlcRkd7e+X8o0OkI0iNCK0AIS0
 of8feF74iT41cTeKIhdTHLLq45JwODQ/O20g/m23rWE7HZHogzez0QiPOC133gQ6MoK+J8
 vbLvgjG1SeIOxNOvfXN2K0Mak33WPJuYEHTyOTz69lno29l/6F3xZjdE+9yYpg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1720774553;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+Q70TNir7IBy52CbPauTJ3qNqdXl8vBAfbwUA/7ETBE=;
 b=0qJ0+cHkqB7yPwcVrmGgPzKyU94wvR9IeZ+KtC7MZxppq20puzFwWEr9SH5CQhZwFRbmlC
 YEqrKb/75GGKh8DA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=OUKpw4dY; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=0qJ0+cHk
Subject: [Intel-wired-lan] [PATCH iwl-next v5 1/4] igb: prepare for AF_XDP
 zero-copy support
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

Always call igb_xdp_ring_update_tail under __netif_tx_lock, add a
comment to indicate that. This is needed to share the same TX ring
between XDP, XSK and slow paths.

Remove static qualifiers on the following functions to be able to call
from XSK specific file that is added in the later patches
- igb_xdp_tx_queue_mapping
- igb_xdp_ring_update_tail
- igb_clean_tx_ring
- igb_clean_rx_ring
- igb_run_xdp
- igb_process_skb_fields

Introduce igb_xdp_is_enabled() to check if an XDP program is assigned to
the device.

Signed-off-by: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igb/igb.h      | 15 +++++++++++++++
 drivers/net/ethernet/intel/igb/igb_main.c | 29 ++++++++++++++---------------
 2 files changed, 29 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
index 3c2dc7bdebb5..0de71ec324ed 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -718,6 +718,8 @@ extern char igb_driver_name[];
 int igb_xmit_xdp_ring(struct igb_adapter *adapter,
 		      struct igb_ring *ring,
 		      struct xdp_frame *xdpf);
+struct igb_ring *igb_xdp_tx_queue_mapping(struct igb_adapter *adapter);
+void igb_xdp_ring_update_tail(struct igb_ring *ring);
 int igb_open(struct net_device *netdev);
 int igb_close(struct net_device *netdev);
 int igb_up(struct igb_adapter *);
@@ -731,12 +733,20 @@ int igb_setup_tx_resources(struct igb_ring *);
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
+struct sk_buff *igb_run_xdp(struct igb_adapter *adapter,
+			    struct igb_ring *rx_ring,
+			    struct xdp_buff *xdp);
+void igb_process_skb_fields(struct igb_ring *rx_ring,
+			    union e1000_adv_rx_desc *rx_desc,
+			    struct sk_buff *skb);
 void igb_alloc_rx_buffers(struct igb_ring *, u16);
 void igb_update_stats(struct igb_adapter *);
 bool igb_has_link(struct igb_adapter *adapter);
@@ -797,6 +807,11 @@ static inline struct netdev_queue *txring_txq(const struct igb_ring *tx_ring)
 	return netdev_get_tx_queue(tx_ring->netdev, tx_ring->queue_index);
 }
 
+static inline bool igb_xdp_is_enabled(struct igb_adapter *adapter)
+{
+	return !!adapter->xdp_prog;
+}
+
 int igb_add_filter(struct igb_adapter *adapter,
 		   struct igb_nfc_filter *input);
 int igb_erase_filter(struct igb_adapter *adapter,
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 3af03a211c3c..7f84e4117fa7 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -115,8 +115,6 @@ static void igb_configure_tx(struct igb_adapter *);
 static void igb_configure_rx(struct igb_adapter *);
 static void igb_clean_all_tx_rings(struct igb_adapter *);
 static void igb_clean_all_rx_rings(struct igb_adapter *);
-static void igb_clean_tx_ring(struct igb_ring *);
-static void igb_clean_rx_ring(struct igb_ring *);
 static void igb_set_rx_mode(struct net_device *);
 static void igb_update_phy_info(struct timer_list *);
 static void igb_watchdog(struct timer_list *);
@@ -2915,7 +2913,8 @@ static int igb_xdp(struct net_device *dev, struct netdev_bpf *xdp)
 	}
 }
 
-static void igb_xdp_ring_update_tail(struct igb_ring *ring)
+/* This function assumes __netif_tx_lock is held by the caller. */
+void igb_xdp_ring_update_tail(struct igb_ring *ring)
 {
 	/* Force memory writes to complete before letting h/w know there
 	 * are new descriptors to fetch.
@@ -2924,7 +2923,7 @@ static void igb_xdp_ring_update_tail(struct igb_ring *ring)
 	writel(ring->next_to_use, ring->tail);
 }
 
-static struct igb_ring *igb_xdp_tx_queue_mapping(struct igb_adapter *adapter)
+struct igb_ring *igb_xdp_tx_queue_mapping(struct igb_adapter *adapter)
 {
 	unsigned int r_idx = smp_processor_id();
 
@@ -3001,11 +3000,11 @@ static int igb_xdp_xmit(struct net_device *dev, int n,
 		nxmit++;
 	}
 
-	__netif_tx_unlock(nq);
-
 	if (unlikely(flags & XDP_XMIT_FLUSH))
 		igb_xdp_ring_update_tail(tx_ring);
 
+	__netif_tx_unlock(nq);
+
 	return nxmit;
 }
 
@@ -4880,7 +4879,7 @@ static void igb_free_all_tx_resources(struct igb_adapter *adapter)
  *  igb_clean_tx_ring - Free Tx Buffers
  *  @tx_ring: ring to be cleaned
  **/
-static void igb_clean_tx_ring(struct igb_ring *tx_ring)
+void igb_clean_tx_ring(struct igb_ring *tx_ring)
 {
 	u16 i = tx_ring->next_to_clean;
 	struct igb_tx_buffer *tx_buffer = &tx_ring->tx_buffer_info[i];
@@ -4999,7 +4998,7 @@ static void igb_free_all_rx_resources(struct igb_adapter *adapter)
  *  igb_clean_rx_ring - Free Rx Buffers per Queue
  *  @rx_ring: ring to free buffers from
  **/
-static void igb_clean_rx_ring(struct igb_ring *rx_ring)
+void igb_clean_rx_ring(struct igb_ring *rx_ring)
 {
 	u16 i = rx_ring->next_to_clean;
 
@@ -6614,7 +6613,7 @@ static int igb_change_mtu(struct net_device *netdev, int new_mtu)
 	struct igb_adapter *adapter = netdev_priv(netdev);
 	int max_frame = new_mtu + IGB_ETH_PKT_HDR_PAD;
 
-	if (adapter->xdp_prog) {
+	if (igb_xdp_is_enabled(adapter)) {
 		int i;
 
 		for (i = 0; i < adapter->num_rx_queues; i++) {
@@ -8570,9 +8569,9 @@ static struct sk_buff *igb_build_skb(struct igb_ring *rx_ring,
 	return skb;
 }
 
-static struct sk_buff *igb_run_xdp(struct igb_adapter *adapter,
-				   struct igb_ring *rx_ring,
-				   struct xdp_buff *xdp)
+struct sk_buff *igb_run_xdp(struct igb_adapter *adapter,
+			    struct igb_ring *rx_ring,
+			    struct xdp_buff *xdp)
 {
 	int err, result = IGB_XDP_PASS;
 	struct bpf_prog *xdp_prog;
@@ -8768,9 +8767,9 @@ static bool igb_cleanup_headers(struct igb_ring *rx_ring,
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
2.39.2

