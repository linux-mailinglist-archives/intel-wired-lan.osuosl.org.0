Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE481ED9C3
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jun 2020 02:01:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B699688710;
	Thu,  4 Jun 2020 00:01:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MVYW3CfzqQLO; Thu,  4 Jun 2020 00:01:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2D22988665;
	Thu,  4 Jun 2020 00:01:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 956521BF46A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 00:01:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8F59D88007
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 00:01:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QzX0U5P520Md for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jun 2020 00:01:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A189287D51
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 00:01:22 +0000 (UTC)
IronPort-SDR: kG1mf2hJTBwkOa6HIff3nafbvJ8k/ptiBIH+NBcLuIU8/kTbnb0rhu9pzApBIk/YccHw7LQkPF
 FsZ93mZi0+rA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2020 17:01:22 -0700
IronPort-SDR: UK0iadiITLfZBNk4pdse0rCMkecoPU7HvVZtRbxx9fmj9S55LL8gNaBNec/bxpbVFzAgUas0rM
 Vyf+o1bJ52Ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,470,1583222400"; d="scan'208";a="272932804"
Received: from mrief-mobl1.amr.corp.intel.com ([10.209.62.192])
 by orsmga006.jf.intel.com with ESMTP; 03 Jun 2020 17:01:21 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Jun 2020 17:01:05 -0700
Message-Id: <20200604000105.15059-7-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200604000105.15059-1-andre.guedes@intel.com>
References: <20200604000105.15059-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 6/6] igc: Fix rx timestamp disabling
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When rx timestamping is enabled, we set the timestamp bit in SRRCTL
register for each queue, but we don't clear it when disabling. This
patch fixes igc_ptp_disable_rx_timestamp() accordingly.

Also, this patch gets rid of igc_ptp_enable_tstamp_rxqueue() and
igc_ptp_enable_tstamp_all_rxqueues() and move their logic into
igc_ptp_enable_rx_timestamp() to keep the enable and disable
helpers symmetric.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 54 ++++++++----------------
 1 file changed, 17 insertions(+), 37 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 0251e6bedac4..e67d4655b47e 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -205,47 +205,20 @@ void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, void *va,
 		ktime_sub_ns(skb_hwtstamps(skb)->hwtstamp, adjust);
 }
 
-/**
- * igc_ptp_enable_tstamp_rxqueue - Enable RX timestamp for a queue
- * @rx_ring: Pointer to RX queue
- * @timer: Index for timer
- *
- * This function enables RX timestamping for a queue, and selects
- * which 1588 timer will provide the timestamp.
- */
-static void igc_ptp_enable_tstamp_rxqueue(struct igc_adapter *adapter,
-					  struct igc_ring *rx_ring, u8 timer)
-{
-	struct igc_hw *hw = &adapter->hw;
-	int reg_idx = rx_ring->reg_idx;
-	u32 srrctl = rd32(IGC_SRRCTL(reg_idx));
-
-	srrctl |= IGC_SRRCTL_TIMESTAMP;
-	srrctl |= IGC_SRRCTL_TIMER1SEL(timer);
-	srrctl |= IGC_SRRCTL_TIMER0SEL(timer);
-
-	wr32(IGC_SRRCTL(reg_idx), srrctl);
-}
-
-static void igc_ptp_enable_tstamp_all_rxqueues(struct igc_adapter *adapter,
-					       u8 timer)
-{
-	int i;
-
-	for (i = 0; i < adapter->num_rx_queues; i++) {
-		struct igc_ring *ring = adapter->rx_ring[i];
-
-		igc_ptp_enable_tstamp_rxqueue(adapter, ring, timer);
-	}
-}
-
 static void igc_ptp_disable_rx_timestamp(struct igc_adapter *adapter)
 {
 	struct igc_hw *hw = &adapter->hw;
 	u32 val;
+	int i;
 
 	wr32(IGC_TSYNCRXCTL, 0);
 
+	for (i = 0; i < adapter->num_rx_queues; i++) {
+		val = rd32(IGC_SRRCTL(i));
+		val &= ~IGC_SRRCTL_TIMESTAMP;
+		wr32(IGC_SRRCTL(i), val);
+	}
+
 	val = rd32(IGC_RXPBS);
 	val &= ~IGC_RXPBS_CFG_TS_EN;
 	wr32(IGC_RXPBS, val);
@@ -255,14 +228,21 @@ static void igc_ptp_enable_rx_timestamp(struct igc_adapter *adapter)
 {
 	struct igc_hw *hw = &adapter->hw;
 	u32 val;
+	int i;
 
 	val = rd32(IGC_RXPBS);
 	val |= IGC_RXPBS_CFG_TS_EN;
 	wr32(IGC_RXPBS, val);
 
-	/* FIXME: For now, only support retrieving RX timestamps from timer 0
-	 */
-	igc_ptp_enable_tstamp_all_rxqueues(adapter, 0);
+	for (i = 0; i < adapter->num_rx_queues; i++) {
+		val = rd32(IGC_SRRCTL(i));
+		/* FIXME: For now, only support retrieving RX timestamps from
+		 * timer 0.
+		 */
+		val |= IGC_SRRCTL_TIMER1SEL(0) | IGC_SRRCTL_TIMER0SEL(0) |
+		       IGC_SRRCTL_TIMESTAMP;
+		wr32(IGC_SRRCTL(i), val);
+	}
 
 	val = IGC_TSYNCRXCTL_ENABLED | IGC_TSYNCRXCTL_TYPE_ALL |
 	      IGC_TSYNCRXCTL_RXSYNSIG;
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
