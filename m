Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6C3999F90
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Oct 2024 11:01:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B494D415BB;
	Fri, 11 Oct 2024 09:01:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BG10TjO2xkfP; Fri, 11 Oct 2024 09:01:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A2FB3415A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728637277;
	bh=QMV5IKYRE0bfzD6vtMbN46Iti3rOQFEW1vD3ct3pc0g=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xKv0QGwZody9aq+r8aPVzeU10938iOvEHNp1Ioh45R84BUuFgFErFA+Si3N6OFkDB
	 OMCYA/mtQ0ok8AFFyjF/gYQDISHSdzi3PskN7SbYMi5Gz6EbFiDALYGhrohBKMpdW1
	 oN7xtLIOPJDgo6S9excF+ellZPAm5o4tcUK43ZR3q7fWWCfio3+YUC09eXERzu6tPw
	 cV8Cb1Ht6fcKmgAreAw/DN//XRsZWXhdqxuxCy4PQlzD66Wm6zpzi2E5yMTpmNZkOW
	 ihDzTjFj+lm3kEeZEZlHD3AQOtfz1ZxXCFGC7+fY6hsUZ/YUOBm/fWYrLxw/hDXlY8
	 z50BtySL1XNIg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A2FB3415A2;
	Fri, 11 Oct 2024 09:01:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8DA201BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 09:01:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 866DB41554
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 09:01:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z146sJa0vZGC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Oct 2024 09:01:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D0694415A1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D0694415A1
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D0694415A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 09:01:11 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Fri, 11 Oct 2024 11:00:59 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241011-b4-igb_zero_copy-v8-1-83862f726a9e@linutronix.de>
References: <20241011-b4-igb_zero_copy-v8-0-83862f726a9e@linutronix.de>
In-Reply-To: <20241011-b4-igb_zero_copy-v8-0-83862f726a9e@linutronix.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=6449; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=2VHuu2hzDaq14UfD30TJ9OM3e+KStIKYPQI109hxTkI=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBnCOlSL7iXasF5aI06Babut1fQxgS3k69jqY1BR
 PgmgUapz/eJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZwjpUgAKCRDBk9HyqkZz
 gpJOD/0boNgw3mwDFJNA01mPxYITBIlPxsjsebA5N47pXIFp21f/Gn9v+XYkWPIk3DNDoV1zCAo
 DEH1CN2y9hwl+Yk+Hc7kGai7zNKgVUzmvZyRp2Y/j25x+JwsSOMh41AnYu0Dr6vWAQCPYArxXz1
 nizRkD5LSYPWnFN+auAFex5PYVTK90swJLJYtgJj+0/sgIPP+KLM7IdDLmVBVQSStFNLPiHcCce
 beJp+VrZ8mSTcQ+AENBKl4o7tJu0MukSFpoWV++jty0HLckacyt82V1RxNrBzvdXLU64U9+1EXs
 dzdNldjhN5GLDbJWS4xFt/z+AlXUkgYlcR/e9lGMpy4U8fRMxdSKM+IfwbRxE/NsYmOrRRm52eV
 C8PxRkCy8+QiJeQ1rxag1IjLKTeOpsQ/8ZWTyhkRxxyzORJ8Tuy6NRlL5Is/8JqvX98nUeuLwlk
 gAmJH4LsUmWegO5i/1s5WUIRc4u/ObO42brsZUpJoqcG59C4nYz9wCchnjdEcat0VjQqsFJMHpY
 TzVv39G+i3Z2DGZDfidJLkxbx7zkma4MpTZbAEwBOZt/KMaueVirrOoLVxTNjTaHTTL4r+rxzmg
 025rDLG0cA2nj4wG4FI+QHeVguKyDgHcWT6yveg49ova81NUorPNIWbYBgSZs3IfY8ODll7l5su
 DWcQpa0Yl1SQOxA==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1728637269;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QMV5IKYRE0bfzD6vtMbN46Iti3rOQFEW1vD3ct3pc0g=;
 b=O79FCPoPXEM0GdmNjFFgzgGelKTEim4zzutRKjYWXF6HUq+DwSVxfQDGMQZXH1XBv2J65j
 t7iO97eJ70mtVEtaGcDCaeqRzwbNzQPBG3nVXBHR7If0ynavYAPlcuTnPpD/QhNefhf4ud
 TTzqBh037F2s05+cxj3AKv8aaxOG9OJxuJIx6eMtOvKRkeHKwoevcixJHBC7GfYsbBqHff
 tEMUeFNz3thom0lZ1jCrZeMRnpo9xkj9Y4Ilqq6xBj0FqrnoIlkJeN5xsSnOGVpOQ6CGaU
 wHDqMJ9ZgMHT3edqCg0Om49ErqJf6ax33lTRiQoHaSXFncxIddNy2BjtipVOWA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1728637269;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QMV5IKYRE0bfzD6vtMbN46Iti3rOQFEW1vD3ct3pc0g=;
 b=NYhJIFqD2L3iMUe+jOzzAgoL3febbryovVMiec9IaM+9FjTYzxfOMm3UmZq7BV83SpozNo
 qlaAoccK7uiZnNAQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=O79FCPoP; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=NYhJIFqD
Subject: [Intel-wired-lan] [PATCH iwl-next v8 1/6] igb: Remove static
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

