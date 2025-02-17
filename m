Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 39771A381BC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Feb 2025 12:31:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DBA6B4069A;
	Mon, 17 Feb 2025 11:31:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mHmydK9JA3i1; Mon, 17 Feb 2025 11:31:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 55DF1407D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739791900;
	bh=NnIQsRCD/grX1S3QwLY6W0EqtBUu1o4T+F7Ge/iTeZU=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Wxz7wgTpZmzJ8HQJUQly4J90dn+1ARUfugo35p30uqW0rJdf5/L0wKAnt0Fq1oKlT
	 M7CAclRos3F3a1qpOoCD8llsQvrL12rEkAr07Qxn7zEs/J5lqnLfGpeuY/cqY1cEgv
	 1BJTH5IW5uSdB7qsXuhP/zYu5HBpSGob3+Il+d3g2qL/xq1vsYNCk1o4HGoq30N9O7
	 l16EFEM+6PeitH6uO1eD1KZdXEre9HSCGYahxm/z5dvM35zJX8zOrCyrr1xRis7/9E
	 zkQOtiY6jyljTcvDgS1KxKdEVQ5Wm2+rBBtixBYVKjuOrcvapwYvRHRdsjlwVJUctZ
	 36Ei9N1A/uHBQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 55DF1407D6;
	Mon, 17 Feb 2025 11:31:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8DABDDE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 11:31:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 798C0400A8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 11:31:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v-pzYkaYfFr8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Feb 2025 11:31:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F068F403AA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F068F403AA
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F068F403AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 11:31:33 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Mon, 17 Feb 2025 12:31:24 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250217-igb_irq-v2-4-4cb502049ac2@linutronix.de>
References: <20250217-igb_irq-v2-0-4cb502049ac2@linutronix.de>
In-Reply-To: <20250217-igb_irq-v2-0-4cb502049ac2@linutronix.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 Joe Damato <jdamato@fastly.com>, 
 Gerhard Engleder <gerhard@engleder-embedded.com>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Kurt Kanzenbach <kurt@linutronix.de>
X-Developer-Signature: v=1; a=openpgp-sha256; l=4781; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=xUo+bNs3yPOXLQ4lPhzno9lz0kcYuAN4Vp+LwT0fQVo=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBnsx4Qf1ejhIpc8yTt+iP/sxt6u/CRFVMJZuNnU
 Q/r4YI9hSOJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZ7MeEAAKCRDBk9HyqkZz
 gizAD/9z5pJRH/7A91yZJnrkPfUzj0n1YES2lk+59DgvyFdSmRTyuVRY1TTxl/qBgk/eWUiFRiR
 eiElyo8/Bw+dWCRviFuy8B2tYjux2bqH/3X1whpszxzZ2UHERjjKJ8g/j/+38Z1akXYo5SzJ1Zf
 k3r+oo7h7VjKnANzLjLTTGWwAKhdrerIVmJOLLWsMtNoWtwrEbyXoag+/00EXgT/hELDfiZNacF
 pX6PJjziylUMhur4h/17xdvLs5fBSaG/o7YsuOoAN8elQd2mMfhJIqDJHYoCWZ2Va4lZrFM5u6D
 226uJ4ppx/tpHrnNSAFkjfUNfli91ALGdnRWirI0CeDJ0lonzMMBvXkHsNgufqlNeSu+oso2gim
 4r+ybLs91QRp1NH75I47Wd/DLiX0/hJOrzCvQfFJkChacJqGFJ5NX6n0rw0L1C4QrTmsNwfp23E
 FGLBDZ3yhG1sWfWkWuP40QTZ+Ita1ZcFUXHmDV07ftCvw+KMNNXOYXk9MTQ24T2naBd7iolP68o
 qtSy/ZVSej3Anftn2JwgXpR+jd7AKnNuIFDjAqIh7cZG7fVroC3a/GRy1nFp5sfjoobQ9cvLaxS
 FoAskvWkp0AMb0l+Qa7y1ppjea+q/Ha/9EvwAF0/CciWFlOeLnmIiEG2qV230r2c/wRMCuuNaE4
 ZxPCPXYn+W5xhCA==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1739791892;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NnIQsRCD/grX1S3QwLY6W0EqtBUu1o4T+F7Ge/iTeZU=;
 b=Ne+ONELGdzqyxedfUoN7FFV9Yrn3rzpvP32yEF6flYF3RJqVQT9yrl9n26QFrZLdqKtlI8
 z2NbalBHB0qejyOX9xqxh5uI81xFLHbHjj+IshdO/kjxerLfoqOobg1fjW04GZLTeY1DR4
 /goIm8OWCdOeN88oOqmnBSMHxvAqX5v6sLQ1wsOW9AMzZ97XlkTb97swp/doB+Z6CLu0Zu
 xD8o+NnsX3wkXzsmgrPvyLROysUrSJhTjvG6iU3zKeWT2GFCDlznZKUqIe3ZcNKkfeT3+p
 aH1cuIpEZZH22tCFBp5msrwbNETo2C7t7nxduEZA//Xsxcy+n1xEXbAXCvANGQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1739791892;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NnIQsRCD/grX1S3QwLY6W0EqtBUu1o4T+F7Ge/iTeZU=;
 b=L2FN9Toi6+eds+jTFD8YCWu5snc3Wpj6+kJtBu/mxwfxPGhT4TU3b7RnVexPl9nw/UsCkn
 IHioMUpGZN2PFwBg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=Ne+ONELG; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=L2FN9Toi
Subject: [Intel-wired-lan] [PATCH iwl-next v2 4/4] igb: Get rid of spurious
 interrupts
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

When running the igc with XDP/ZC in busy polling mode with deferral of hard
interrupts, interrupts still happen from time to time. That is caused by
the igb task watchdog which triggers Rx interrupts periodically.

That mechanism has been introduced to overcome skb/memory allocation
failures [1]. So the Rx clean functions stop processing the Rx ring in case
of such failure. The task watchdog triggers Rx interrupts periodically in
the hope that memory became available in the mean time.

The current behavior is undesirable for real time applications, because the
driver induced Rx interrupts trigger also the softirq processing. However,
all real time packets should be processed by the application which uses the
busy polling method.

Therefore, only trigger the Rx interrupts in case of real allocation
failures. Introduce a new flag for signaling that condition.

Follow the same logic as in commit 8dcf2c212078 ("igc: Get rid of spurious
interrupts").

[1] - https://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.git/commit/?id=3be507547e6177e5c808544bd6a2efa2c7f1d436

Reviewed-by: Joe Damato <jdamato@fastly.com>
Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igb/igb.h      |  3 ++-
 drivers/net/ethernet/intel/igb/igb_main.c | 29 +++++++++++++++++++++++++----
 drivers/net/ethernet/intel/igb/igb_xsk.c  |  1 +
 3 files changed, 28 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
index 79eca385a751bfdafdf384928b6cc1b350b22560..f34ead8243e9f0176a068299138c5c16f7faab2e 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -391,7 +391,8 @@ enum e1000_ring_flags_t {
 	IGB_RING_FLAG_RX_LB_VLAN_BSWAP,
 	IGB_RING_FLAG_TX_CTX_IDX,
 	IGB_RING_FLAG_TX_DETECT_HANG,
-	IGB_RING_FLAG_TX_DISABLED
+	IGB_RING_FLAG_TX_DISABLED,
+	IGB_RING_FLAG_RX_ALLOC_FAILED,
 };
 
 #define ring_uses_large_buffer(ring) \
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 054376d648da883f35d1dee5f879487b8adfd540..25abe7d8ab400f63ca9b4e87c9b5f2c15316485a 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -5755,11 +5755,29 @@ static void igb_watchdog_task(struct work_struct *work)
 	if (adapter->flags & IGB_FLAG_HAS_MSIX) {
 		u32 eics = 0;
 
-		for (i = 0; i < adapter->num_q_vectors; i++)
-			eics |= adapter->q_vector[i]->eims_value;
-		wr32(E1000_EICS, eics);
+		for (i = 0; i < adapter->num_q_vectors; i++) {
+			struct igb_q_vector *q_vector = adapter->q_vector[i];
+			struct igb_ring *rx_ring;
+
+			if (!q_vector->rx.ring)
+				continue;
+
+			rx_ring = adapter->rx_ring[q_vector->rx.ring->queue_index];
+
+			if (test_bit(IGB_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags)) {
+				eics |= q_vector->eims_value;
+				clear_bit(IGB_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags);
+			}
+		}
+		if (eics)
+			wr32(E1000_EICS, eics);
 	} else {
-		wr32(E1000_ICS, E1000_ICS_RXDMT0);
+		struct igb_ring *rx_ring = adapter->rx_ring[0];
+
+		if (test_bit(IGB_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags)) {
+			clear_bit(IGB_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags);
+			wr32(E1000_ICS, E1000_ICS_RXDMT0);
+		}
 	}
 
 	igb_spoof_check(adapter);
@@ -9090,6 +9108,7 @@ static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
 		if (!xdp_res && !skb) {
 			rx_ring->rx_stats.alloc_failed++;
 			rx_buffer->pagecnt_bias++;
+			set_bit(IGB_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags);
 			break;
 		}
 
@@ -9149,6 +9168,7 @@ static bool igb_alloc_mapped_page(struct igb_ring *rx_ring,
 	page = dev_alloc_pages(igb_rx_pg_order(rx_ring));
 	if (unlikely(!page)) {
 		rx_ring->rx_stats.alloc_failed++;
+		set_bit(IGB_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags);
 		return false;
 	}
 
@@ -9165,6 +9185,7 @@ static bool igb_alloc_mapped_page(struct igb_ring *rx_ring,
 		__free_pages(page, igb_rx_pg_order(rx_ring));
 
 		rx_ring->rx_stats.alloc_failed++;
+		set_bit(IGB_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags);
 		return false;
 	}
 
diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/igb/igb_xsk.c
index a5ad090dfe94b6afc8194fe39d28cdd51c7067b0..47344ee1ed7f29bd68055485702a87df3b8922e8 100644
--- a/drivers/net/ethernet/intel/igb/igb_xsk.c
+++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
@@ -417,6 +417,7 @@ int igb_clean_rx_irq_zc(struct igb_q_vector *q_vector,
 		/* exit if we failed to retrieve a buffer */
 		if (!skb) {
 			rx_ring->rx_stats.alloc_failed++;
+			set_bit(IGB_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags);
 			break;
 		}
 

-- 
2.39.5

