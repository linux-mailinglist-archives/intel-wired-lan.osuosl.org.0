Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB75A2E775
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 10:19:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DBFF381EB9;
	Mon, 10 Feb 2025 09:19:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8EaJ47gwOzds; Mon, 10 Feb 2025 09:19:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EE46380B85
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739179186;
	bh=UWLliSMAkm07uTsXCRIauclvo1uxcCFEJNaANaMWylk=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rqwqrNJe5DxgP5rF3YsI0dYOz3cVqiUUes0Pjn2OCajLdsphR1ZJiSvVQ8H2O4JPu
	 o9YqujMUobD05t2g5EcLpkM4qxs/Od5Fmys/yp3vvceN2ujgVyIkq2b2LCGQnHy74Y
	 9RsnAD2gGTpBUIl8vtWL9KGwCBM/+j8xo87eXy/RT7Kdl3gbTRoKqE7Kdkd7TSqWqL
	 P4QJx684auRR6hgwG6HsN1z9NnRaq/NHMkGaVrUdOpA5RiHSs7w+Gc8mm9UGb35mFm
	 LcRNlpGj+fh8WZlb4DszdM8FJA174SbX9YV/B8uARh63ez7LNVsnGhC6qFJJ5ikVbg
	 0mctg/UF3wlIA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EE46380B85;
	Mon, 10 Feb 2025 09:19:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C5583C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 09:19:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A7D774125F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 09:19:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2jEg_uwIxXjp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 09:19:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1FFBB4124D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1FFBB4124D
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1FFBB4124D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 09:19:42 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Mon, 10 Feb 2025 10:19:37 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250210-igb_irq-v1-3-bde078cdb9df@linutronix.de>
References: <20250210-igb_irq-v1-0-bde078cdb9df@linutronix.de>
In-Reply-To: <20250210-igb_irq-v1-0-bde078cdb9df@linutronix.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 Joe Damato <jdamato@fastly.com>, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, Kurt Kanzenbach <kurt@linutronix.de>
X-Developer-Signature: v=1; a=openpgp-sha256; l=4735; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=cHDFtWtcVIJmeBQmyGr9ZowSzZ+BaH37t6BU0DGMi+U=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBnqcSpDkTg21WicGwPg1F/pt6F/EBmvQNsf/zRz
 El80wL+j6WJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZ6nEqQAKCRDBk9HyqkZz
 gtoAD/9D2QmWRwv9O+ByoWXz+a6xRuNMqcpThjRb+w0b7NGv0Q4R2qzVXX51i00+5a2uVmKY8Nl
 Gb6mmA6XPweOnMzd18SFDjr3xrhdyU+H+UE8Fbg8R8I3t7nk8r5L1BaVtcTgwFsiyfkHnYX+Du/
 vUrfSEJAN2DgCdfFWSLM2QhiB4I4uyOREgVKlVB7HiH91QFfUAn1gtP5pFGq4DfTueeDqiVB4ry
 GDoIMGgnwvLvNHU6Z8+MPZmHGVb+jBdNodmfEAcDvyodhN+2FloToJZ0iLfrki9OzNxCCgsiK8N
 iu/480zelJwkytUNuLED4KDQxz368NThE26k6bnL/BBuqXrNzC9Bgs7AG4Gt+sCc1mYQ6kVlIFT
 Pvyt2f6jAKLIfN3cyLqMWZXppxBQLfomxRzlyNw9RXubUoLFFIiYiHCuKh5pp17NG/9PPv32pyP
 FhVn1py+zdwVECznFaIkICpVp05Yqypx0FmoK5CxPpp/HN4kvaoyD5llyXZm+FE66i0v7HUTcTW
 TDf5i6bgtMuZSyjt/6hA/dIbmO27rhIhToORBEdjFunEL0II8G1PFqi+a84kzNgPOEmB8/C4GE/
 MXRwhid09VD7y+Oj6s2MOUtvi3cr8wbh65WzAsTV9jU4ZeCwe8VxSfl8F1jZrvwQkkARAa7Rbf+
 tQYjTLBlgjzIshw==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1739179180;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UWLliSMAkm07uTsXCRIauclvo1uxcCFEJNaANaMWylk=;
 b=Nj7HLdYy2PF4Xx5N11DO2W8BKmfswh57eze41qg4UEllrKf5CgckbA0FhvOFKRtteV+tAR
 WSi2Zf54pRjEtooWPfboUNclkLMe+koQFtKFs5djFevrhb1kOEjfU10D6rACe6e1gHRVTD
 g2rtMtkKYwOT/tfY6/jbWlDl/c17/9o9y0yh9GBIGgBDl5C/GPwvPRUEDD1eSe0Dgw7Nu9
 vJJxC8b3q5o6xTkGCXVlyI7xMiE/1iGZkCJ/hxbBlJIB6iQlpb1rkfmo3o+zKVIKIBZH1O
 /EjY9spnkk2mjaC/kEDgJpRVCcs5GqAZ1YOVSjffEyYT33vHAVdTTttBUX8KCg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1739179180;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UWLliSMAkm07uTsXCRIauclvo1uxcCFEJNaANaMWylk=;
 b=d8GORrcgBgdV4oJDBuQSd9QEZAGtIwICnAECYUpUgVCVGmkQTiN2OQHbwq7HAGgJ2zNMSj
 i7BE+Jdv3kuEzDDQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=Nj7HLdYy; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=d8GORrcg
Subject: [Intel-wired-lan] [PATCH 3/3] igb: Get rid of spurious interrupts
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
the igc task watchdog which triggers Rx interrupts periodically.

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
index 8e964484f4c9854e4e3e0b4f3e8785fe93bd1207..96da3e2ddc9a67f799ee55d9621d98f80a6b449c 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -5754,11 +5754,29 @@ static void igb_watchdog_task(struct work_struct *work)
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
@@ -9089,6 +9107,7 @@ static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
 		if (!xdp_res && !skb) {
 			rx_ring->rx_stats.alloc_failed++;
 			rx_buffer->pagecnt_bias++;
+			set_bit(IGB_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags);
 			break;
 		}
 
@@ -9148,6 +9167,7 @@ static bool igb_alloc_mapped_page(struct igb_ring *rx_ring,
 	page = dev_alloc_pages(igb_rx_pg_order(rx_ring));
 	if (unlikely(!page)) {
 		rx_ring->rx_stats.alloc_failed++;
+		set_bit(IGB_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags);
 		return false;
 	}
 
@@ -9164,6 +9184,7 @@ static bool igb_alloc_mapped_page(struct igb_ring *rx_ring,
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

