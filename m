Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAEF2904F4F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jun 2024 11:31:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7924B4053E;
	Wed, 12 Jun 2024 09:31:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cmo4X0c2gHSx; Wed, 12 Jun 2024 09:31:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C5CE54044C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718184659;
	bh=D73eoZ+ww6rBa72YElmXEJrsMwkJILvJ3E1tcTzlOPg=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=90LqjO5xn/Km1Nw1oOkxBq3joiHe/0XNlK4vVeq/EK4Qemtos65jFitEiNSf3e1AZ
	 JQB72bZEGJ5opotekkBbK4EsFKHyuduBt+2YWB6NGY9bEoClFFwazQS0IFujAhUBPd
	 IyOnPGzlmhA8cGLSYRfqgxojPZpNEHGar8UMeGsJhgWKWKg57n2+gpXn5jwggVFQpB
	 3/0SQohDqyNpqMKLp4P3vRUexNYK3mQLXPLTQdQe7Xni17IKCgd8jGWBUQk0jfFFTg
	 Snbxd2R5MB3Yxz54ux4abBA1cHXSHc8cGzvSw6ydiGVDz/74vrKnvlNAh4l0jS9uBX
	 WgoXiPTWDz3xg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C5CE54044C;
	Wed, 12 Jun 2024 09:30:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 81D961BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 09:30:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6E80C607BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 09:30:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RHJJ9vzfk7TE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jun 2024 09:30:56 +0000 (UTC)
X-Greylist: delayed 353 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 12 Jun 2024 09:30:55 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BB9D760761
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BB9D760761
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BB9D760761
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 09:30:55 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Wed, 12 Jun 2024 11:24:53 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240611-igc_irq-v1-1-49763284cb57@linutronix.de>
X-B4-Tracking: v=1; b=H4sIAGRpaWYC/x2N0QqDMAwAf0XyvEArQ9RfkTHaLGpAq0tkE8R/X
 93jcQd3gLEKG7TFAcofMVlSBn8rgMaQBkZ5ZYbSlXdXeY8y0FP0jUTkqY5U1Y2DXMdgjFFDovH
 q52Ab6yVW5V72/6ID+U6YeN/gcZ4/S5Ca0nwAAAA=
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=4064; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=FGEm2thiLlo0TWFViCdkuo/ybAO1t9yroJGymBnCRRo=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBmaWln1kS9mMTjJHV3UcJf5d5++VGC6yETktOu0
 +6QUV50QDOJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZmlpZwAKCRDBk9HyqkZz
 ginIEACwTVTymBjwo6guYrWNwhcNf+Yfg2EnHaCxBIbg7u76sv4oll2YI0ocaRoydt58ElH5Mrg
 r+wLAXqHY7tR+50HgNai1M0yIMzB6MWwyoiTCzzDcCpKkdxT5OVzPaBmoTUEhJB9WNVBh8Pk6PI
 pERIha+QoNIAc2lKk0VO5nYZ1I4IU7vl0QBiezRhNuW6gnkkxIqp3ebjeVF8T3s44F+SjHsWuru
 CuiLRI/1pLqWzrTJhszWbiB9Rmg+5+D2rzC2LQqGJh38crSmXd2w4PC5C9gUss07vlXeNUbR4Ng
 2bK+esUyOH89OVl7st5SnPBJW+SmIl4RgZvpx6BAzBmlOcjSes+9Nh86qyFxbvu3s+enQObfbX5
 4VsuJjfsu9tC3hobWJ0MuUO77aBrV+15+4SgIzCtuenWiEXNDkjEuFRGoVy8+2zPVeWDRErHPL/
 /zoLIZvYhchYXi07wamEqOSvEg/PA3eprQ25wLpz0q0OBs4t7Xlz3SbXB/qdFwR+/1Khmaqsp4U
 vhKN67oyTWsZ2kQDKCCYNau/V0b3+//AUMovYHl5nH2evUJixXwRIXqFuCN2CKSLOzBytDeAwzV
 wh1Bro/4CdnWX/rkP0jjhliZ+bUYoRnCKe/yc3Dv9ce3p6KI+QZPqkgCoL6mDB9WA9C5SDMu5Ej
 4qszEWMPj1dMiZQ==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1718184296;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=D73eoZ+ww6rBa72YElmXEJrsMwkJILvJ3E1tcTzlOPg=;
 b=RK7Px/5zEa+QIfqukF4cznz3qk+5c7lVMS9zdsSZ0pqf2sFZWsgfuDnHFo0TKsibA4Z9Y7
 +fjcNwNxvk1eZQxBs5XfyoXMesAJeObINYYIDsmJxgaGJPfPb85xwg8BHBJK/BMHAF5N4g
 jpkoZQrsOrfs8sm86gw5Uf0t/ZrxLiP6AGC50XauA1GzBW2HVg60259rlKodu9iJrWq9Gb
 SjpbT30xRIFSRkSnk+KniT2FmaiLHhEoEY5rMXjK9Y1fMTEBs3ghEFhC9uuWhnzZPcKATm
 n6RfdxlIM9Da+kWW6NU3e2j2UphfhRFYSXXVKd6ZEh1YFSNYLGzO6NxB6DyKdg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1718184296;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=D73eoZ+ww6rBa72YElmXEJrsMwkJILvJ3E1tcTzlOPg=;
 b=5ZviqxXM6cwlRUAog+MIbJm463ZHrTr/HS0phchzqQJVZW2/3I0ul5ppJkRUOoRYQtV4Rp
 SatC8K0n4KOrvwBw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=RK7Px/5z; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=5ZviqxXM
Subject: [Intel-wired-lan] [PATCH iwl-next] igc: Get rid of spurious
 interrupts
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
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, netdev@vger.kernel.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
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

[1] - https://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.git/commit/?id=3be507547e6177e5c808544bd6a2efa2c7f1d436

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igc/igc.h      |  1 +
 drivers/net/ethernet/intel/igc/igc_main.c | 24 ++++++++++++++++++++----
 2 files changed, 21 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 8b14c029eda1..7bfe5030e2c0 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -682,6 +682,7 @@ enum igc_ring_flags_t {
 	IGC_RING_FLAG_TX_DETECT_HANG,
 	IGC_RING_FLAG_AF_XDP_ZC,
 	IGC_RING_FLAG_TX_HWTSTAMP,
+	IGC_RING_FLAG_RX_ALLOC_FAILED,
 };
 
 #define ring_uses_large_buffer(ring) \
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 305e05294a26..e666739dfac7 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2192,6 +2192,7 @@ static bool igc_alloc_mapped_page(struct igc_ring *rx_ring,
 	page = dev_alloc_pages(igc_rx_pg_order(rx_ring));
 	if (unlikely(!page)) {
 		rx_ring->rx_stats.alloc_failed++;
+		set_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags);
 		return false;
 	}
 
@@ -2208,6 +2209,7 @@ static bool igc_alloc_mapped_page(struct igc_ring *rx_ring,
 		__free_page(page);
 
 		rx_ring->rx_stats.alloc_failed++;
+		set_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags);
 		return false;
 	}
 
@@ -2659,6 +2661,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 		if (!skb) {
 			rx_ring->rx_stats.alloc_failed++;
 			rx_buffer->pagecnt_bias++;
+			set_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags);
 			break;
 		}
 
@@ -2739,6 +2742,7 @@ static void igc_dispatch_skb_zc(struct igc_q_vector *q_vector,
 	skb = igc_construct_skb_zc(ring, xdp);
 	if (!skb) {
 		ring->rx_stats.alloc_failed++;
+		set_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &ring->flags);
 		return;
 	}
 
@@ -5811,11 +5815,23 @@ static void igc_watchdog_task(struct work_struct *work)
 	if (adapter->flags & IGC_FLAG_HAS_MSIX) {
 		u32 eics = 0;
 
-		for (i = 0; i < adapter->num_q_vectors; i++)
-			eics |= adapter->q_vector[i]->eims_value;
-		wr32(IGC_EICS, eics);
+		for (i = 0; i < adapter->num_q_vectors; i++) {
+			struct igc_ring *rx_ring = adapter->rx_ring[i];
+
+			if (test_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags)) {
+				eics |= adapter->q_vector[i]->eims_value;
+				clear_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags);
+			}
+		}
+		if (eics)
+			wr32(IGC_EICS, eics);
 	} else {
-		wr32(IGC_ICS, IGC_ICS_RXDMT0);
+		struct igc_ring *rx_ring = adapter->rx_ring[0];
+
+		if (test_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags)) {
+			clear_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags);
+			wr32(IGC_ICS, IGC_ICS_RXDMT0);
+		}
 	}
 
 	igc_ptp_tx_hang(adapter);

---
base-commit: bb678f01804ccaa861b012b2b9426d69673d8a84
change-id: 20240611-igc_irq-ccc1c8bc6890

Best regards,
-- 
Kurt Kanzenbach <kurt@linutronix.de>

