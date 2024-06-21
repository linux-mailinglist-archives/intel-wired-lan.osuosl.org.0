Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BD6911C3B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2024 08:56:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 88B53404D7;
	Fri, 21 Jun 2024 06:56:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FXevDZE4j4kB; Fri, 21 Jun 2024 06:56:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2BE3C40547
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718953000;
	bh=eWY++QvyVNOoG9vfoKeofa89OaimjRobo2XRmBqpW38=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=boY2GqN8g55MTMPN7aoDxKm0qqNk2/hrMljWMavd7ZLC3hyN7dtBt/ug+TwnZ2NGm
	 tSw1OroyIFUW/NEexYc+15pVdQkdYSoDxbUiJvakas4VAfPDAt2f0u1c2aJspwD0Q7
	 /jypXozucZUewwk+oxhB3QUhyjHLffCEexF1HU+EBU401ozbHZTRNxzdhAvU5uIo7C
	 fq05qJWdRXHUG6wMftC+YTGcjAJyi7JGVAyI3TMBWa/NAyyUHjanbYuG0xsQOb8RAQ
	 qAqAXo/bTUWZjX1NRXuC05Bba7ba0B8Xizkaqh59EhyggJJdtZbBrCWuRZcARX3OpH
	 eMuVdJK1uW3BQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2BE3C40547;
	Fri, 21 Jun 2024 06:56:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 925431BF357
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 06:56:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7B813846B3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 06:56:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fJPFPH8JebSL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jun 2024 06:56:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 21ADC846AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 21ADC846AB
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 21ADC846AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 06:56:36 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Fri, 21 Jun 2024 08:56:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240611-igc_irq-v2-1-c63e413c45c4@linutronix.de>
X-B4-Tracking: v=1; b=H4sIAB0kdWYC/2WNyw6CMBAAf8Xs2RpakYcn/8MQ0y4rbIJFtxUxh
 H8XuHqczCQzQSBhCnDeTSA0cODeL2D2O8DW+oYU1wuDSUyaZForbvDG8lKIqLFwmBVlAkvtbCD
 lxHps1/5hQyRZxVPozuO2uAJ/OuVpjFAtpuUQe/lu70Fv/m8zaKVVWubZ0RQpulN+6di/o/Sex
 0NNUM3z/ANhrAl6xQAAAA==
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=4534; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=DSEXwJvkBR4IDfqA68G68GzFO3ZBZFt7wuK/GAeARgU=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBmdSQfTpNhpH4vgaMPXzX6tdhtfknw4NIbp030l
 LVhbWUON3+JAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZnUkHwAKCRDBk9HyqkZz
 gqD5D/9lXqtEvFmmVOYqKKp/Qbrx396LGCK6Wl7dkQ/S01jF+MYb47j7LaXp74sdRQI9e456F+R
 uR1rYwu7NSBey3JBzKEV8nrknp/urOLP8QEJJwBKSusNZN3mFICfbWcqKcxIKoV5DaBIyCrm1Gr
 /C0X8zmceridqL7T7p1yJCuoZbMWklGhRdPVWaI1lEHBYR2R91X0scptqss9hpR64r/pijY6KCv
 PKEMPWiqdlmZWIBOnCI9kpdJCNJlhzHS4mTaGrmL39Si0YMD2zBku8N0blq8wycMNrQGsH8LfnU
 OTa/WStMIxBob3gD1foR+8lHVuUn5CUEm2hBFzq7vQPvtF1EdjXwQ1p+z8w8HLj0vC6ecy4HkZH
 LOIi4x/y1evlwYdb/kFVdtobJEd2SIBrJjlxKgeo0I8o9eeltSotCOH44d88HBOpfuA5/e1Vz4N
 Z7ZrxRsazLArusKIY/3HgoGhq3wJHaZeqa//iJ0OnXRsIdXTcMy2pdSOtchCwntBLLz+EukrqiL
 BQfagyMaFrQaxdpnYxt34/ivOgqLLO2sVP92ndaqzc4xC6k04ISB/cc7eFvsbfMZzowTUtA6ASe
 oOKuFDKbMi3Uu1KyvsbKrrfEST5aWSoYM2BeF52TABin+kuqyZpgF6jyfOTskpEN1B5HYt9brEi
 ABsALT22KkxBY3g==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1718952992;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=eWY++QvyVNOoG9vfoKeofa89OaimjRobo2XRmBqpW38=;
 b=QpaK5tTTH6sBC46fUlzjmH8XJEGGlekiCHyqV9UgxACWGpfyZROxzYtNylsIXre84OFlac
 JmUFJwCjttmd8gYYQxCQ/a48weFctZ45DT/j7xLnNAgU2G9eeTEhTJS2CTSNARsQzhZhRs
 xCMrOfCw7yGSkdtkEWpF/QxN+ENT+wYOjCt6kY1PEbNm1aFi//RkB3BLVSVNRo06akFxxT
 eZ8J3vooaYnW5pnAY7wf8jZNKzLld72ZwGChA9m9Lpuq2rsTFMNRga4US8Myc3q4XjM7aG
 /v7KzaHPMYnuHWqKeXlcinPX1z9iFjAL3g7NECVou8ipt0BNMWOTglQ1q/wC0w==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1718952992;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=eWY++QvyVNOoG9vfoKeofa89OaimjRobo2XRmBqpW38=;
 b=HZaLFCuEb8UyRoOAMDxG4uh887b9vkc+1Qvi1TCg5m57QQw32zCcJ45YSAFNvAf9JpzEpB
 WMxAsq7FzDjwVVBg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=QpaK5tTT; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=HZaLFCuE
Subject: [Intel-wired-lan] [PATCH iwl-next v2] igc: Get rid of spurious
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

Reviewed-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
Changes in v2:
- Index Rx rings correctly
- Link to v1: https://lore.kernel.org/r/20240611-igc_irq-v1-1-49763284cb57@linutronix.de
---
 drivers/net/ethernet/intel/igc/igc.h      |  1 +
 drivers/net/ethernet/intel/igc/igc_main.c | 30 ++++++++++++++++++++++++++----
 2 files changed, 27 insertions(+), 4 deletions(-)

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
index 87b655b839c1..850ef6b8b202 100644
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
 
@@ -5811,11 +5815,29 @@ static void igc_watchdog_task(struct work_struct *work)
 	if (adapter->flags & IGC_FLAG_HAS_MSIX) {
 		u32 eics = 0;
 
-		for (i = 0; i < adapter->num_q_vectors; i++)
-			eics |= adapter->q_vector[i]->eims_value;
-		wr32(IGC_EICS, eics);
+		for (i = 0; i < adapter->num_q_vectors; i++) {
+			struct igc_q_vector *q_vector = adapter->q_vector[i];
+			struct igc_ring *rx_ring;
+
+			if (!q_vector->rx.ring)
+				continue;
+
+			rx_ring = adapter->rx_ring[q_vector->rx.ring->queue_index];
+
+			if (test_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags)) {
+				eics |= q_vector->eims_value;
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
base-commit: a6ec08beec9ea93f342d6daeac922208709694dc
change-id: 20240611-igc_irq-ccc1c8bc6890

Best regards,
-- 
Kurt Kanzenbach <kurt@linutronix.de>

