Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A24992BD1
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Oct 2024 14:31:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 425EF40907;
	Mon,  7 Oct 2024 12:31:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tHrHh7ZItCao; Mon,  7 Oct 2024 12:31:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 75559408B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728304304;
	bh=Cz4kPA6dKsgqq0HrMQA9PFkTNe0rHOz9xSJaT+6WwYI=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HdwXBJJ1mZ8e59iNM0LotqHNqfALXriXn/WuUGUuSVzLf13Ijy6nhclfNsHfwTafY
	 on2qfZFYVck7Ijr+czXWGWRBCR+/gh10tY4bpkCRGD9TregDxVKP+w9RSXK80+E6+w
	 jCtcyqsz22482dZ7Zkp8uuC3TwP/mUtaJdy6+D1ZeYhzhr28mpXzhWKjkCOSDOdXmM
	 DtmJuBvN9L4Kem3h1xi0xqckgDIZjwMbU6BOgxTgaZi9/FVKyD4U9lb6G+u8xaQOe+
	 pUQvA9j+P7lC6sdH1i4qKHGrqk8L9J1fesGKl3Wb+4n+FR/966QBggtAkP6YJd0ucz
	 DTU/DjhZOt1Vg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 75559408B0;
	Mon,  7 Oct 2024 12:31:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AB1341BF46D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 12:31:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 97C2940646
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 12:31:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oLw0XftX0mBd for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Oct 2024 12:31:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E3D1D4063B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E3D1D4063B
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E3D1D4063B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 12:31:35 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Mon, 07 Oct 2024 14:31:23 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241007-b4-igb_zero_copy-v7-1-23556668adc6@linutronix.de>
References: <20241007-b4-igb_zero_copy-v7-0-23556668adc6@linutronix.de>
In-Reply-To: <20241007-b4-igb_zero_copy-v7-0-23556668adc6@linutronix.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=6388; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=BUo9bjWjvJHruoupHD0KEda6yWDg4kg5Kz4Gw3OfUZg=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBnA9SfY/ZqC+n53/lMBEg3poTgH2A/fa4gFky71
 LWRtyBLvnaJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZwPUnwAKCRDBk9HyqkZz
 glg6D/9SGOE+XMUm3Vk9Xa+oheEJKv4Qv4MlgIU0TVoRiLlKmbQp7DR0670vN71nn6V05918z9t
 eiks6LVmQfinAuiUB2dmN5MiGwu/Ck0CJhAiMvkSkJ9tQJRKz7lCvCoE3pHzORPPrbAqONqctMb
 izLXVGU8PCE7UCAaL9efqxxWwpg0y18/JgDE8K15ZaZ2qnfxES3V+SitGcK5thfxGP17knoh/vD
 botpa1TCnboVGVc+YYwTnG3WVLb1TUflI9hMz8UYlcZRbEOpK25SMUWN4ZuC6oiMdxHfANSMWcZ
 8sp5SPBAkgZRxJc8jZNwvy3jIv6YLHJhDvwGBGkBYP5Se46VLJWPuBYKnXsJWmuXBBJTbeW/Uqd
 DwuAHUlXM6lF050iCCdVavL1/3ZXRd3W6OboiJynFELuK18B3XKpQuM4vN7Zwx36QvP9YdKem+K
 wiUSpx8iZroNoEC4sf5wn3bg713QZQjS8hBqqExzF7Y1+pQXGqTQJcTn4Qibuvu98yhFBf2IBgh
 2F1sTs1rKmrT6fpmeF+pXHNqvJzoOFcIYc980pnGfcxlo74ZiopUSnmbpHoJF4fdKRywoOEAJ+J
 H1G2anEWrnPggHfO+P3asIfu1+Se0ZadKoC8WSAFUpp+38kw69K0F6naDBFhDOViuhQTbmDfw/0
 9rpZAV721nT7P8Q==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1728304290;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Cz4kPA6dKsgqq0HrMQA9PFkTNe0rHOz9xSJaT+6WwYI=;
 b=fCCkiTi+iwRKvJRex6M0fydKG+EnU0oGr2P1u2zS4xpVKhUGRR2LlKbMj7wuHRERTwTsvS
 06n9yE1NHR/5Wg7uwOwm5+3jLLn04alvXqvfZQdmn8KpW1orfnCVFkvrAFFZlLs7a0m1YG
 U4VNGo7E3dGAO7a8mwiUJFRsAE3t21OM9vHZW8X/WXb983+hFQdUmaBySEwbgt8NLpW25E
 tO9ap+mKinSdiPQixrqheuNw8ENpto0vw7lqTg1Ij6K5w1nLQXIukzc29AcbJqTRSB8j1v
 YsmNUiWsXzg7jt7r+6vNIyhV4wdvmhZDQ7C3b+9Wzg1OKbFE+NSEP1DdVwDF9Q==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1728304290;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Cz4kPA6dKsgqq0HrMQA9PFkTNe0rHOz9xSJaT+6WwYI=;
 b=JFdX7VBGIvRcjAdyXacqiEJPYMBK3YqRZDwlHNqRgCwF9YbC2bQY4MxYOnwGGjm2PSEbLv
 EZB3cu1iSwgLEMAw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=fCCkiTi+; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=JFdX7VBG
Subject: [Intel-wired-lan] [PATCH iwl-next v7 1/5] igb: Remove static
 qualifiers
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
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
index 1ef4cb871452..71addc0eac96 100644
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

