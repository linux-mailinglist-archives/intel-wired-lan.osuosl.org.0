Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B50421ED9C1
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jun 2020 02:01:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D5D1E87476;
	Thu,  4 Jun 2020 00:01:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5KKibTiyHBWk; Thu,  4 Jun 2020 00:01:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D9CBF877CE;
	Thu,  4 Jun 2020 00:01:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2DC151BF46A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 00:01:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 24BCB203F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 00:01:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PiSlS8gQhrg2 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jun 2020 00:01:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id 13E2522091
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 00:01:22 +0000 (UTC)
IronPort-SDR: OQdNj3kFMsEG+gRq92a44uYp8dygM1ZS4fjRXk5JQekHJ9qdvBTztLSa5fdoWWW1mpmc8zPHxh
 e6wtsGNSi/2A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2020 17:01:21 -0700
IronPort-SDR: Nokek+pEEWq3eLq0cL7HDJeojCMIkH7e3lec1xjRaF6I7w2SZ1hCIlWus92YSJCycb953WpbWn
 HLCCJKhs5ORQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,470,1583222400"; d="scan'208";a="272932799"
Received: from mrief-mobl1.amr.corp.intel.com ([10.209.62.192])
 by orsmga006.jf.intel.com with ESMTP; 03 Jun 2020 17:01:21 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Jun 2020 17:01:01 -0700
Message-Id: <20200604000105.15059-3-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200604000105.15059-1-andre.guedes@intel.com>
References: <20200604000105.15059-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 2/6] igc: Remove duplicate code in tx
 timestamp handling
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

The functions igc_ptp_tx_hang() and igc_ptp_tx_work() have duplicate
code which handles tx timestamp timeouts. This patch does a trivial
refactoring by moving that code to its own function and reusing it.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 34 +++++++++++-------------
 1 file changed, 15 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 82e6c6c962d5..b1b23c6bf689 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -386,11 +386,23 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
 	return 0;
 }
 
+static void igc_ptp_tx_timeout(struct igc_adapter *adapter)
+{
+	struct igc_hw *hw = &adapter->hw;
+
+	dev_kfree_skb_any(adapter->ptp_tx_skb);
+	adapter->ptp_tx_skb = NULL;
+	adapter->tx_hwtstamp_timeouts++;
+	clear_bit_unlock(__IGC_PTP_TX_IN_PROGRESS, &adapter->state);
+	/* Clear the tx valid bit in TSYNCTXCTL register to enable interrupt. */
+	rd32(IGC_TXSTMPH);
+	netdev_warn(adapter->netdev, "Tx timestamp timeout\n");
+}
+
 void igc_ptp_tx_hang(struct igc_adapter *adapter)
 {
 	bool timeout = time_is_before_jiffies(adapter->ptp_tx_start +
 					      IGC_PTP_TX_TIMEOUT);
-	struct igc_hw *hw = &adapter->hw;
 
 	if (!adapter->ptp_tx_skb)
 		return;
@@ -404,15 +416,7 @@ void igc_ptp_tx_hang(struct igc_adapter *adapter)
 	 */
 	if (timeout) {
 		cancel_work_sync(&adapter->ptp_tx_work);
-		dev_kfree_skb_any(adapter->ptp_tx_skb);
-		adapter->ptp_tx_skb = NULL;
-		clear_bit_unlock(__IGC_PTP_TX_IN_PROGRESS, &adapter->state);
-		adapter->tx_hwtstamp_timeouts++;
-		/* Clear the Tx valid bit in TSYNCTXCTL register to enable
-		 * interrupt
-		 */
-		rd32(IGC_TXSTMPH);
-		netdev_warn(adapter->netdev, "Clearing Tx timestamp hang\n");
+		igc_ptp_tx_timeout(adapter);
 	}
 }
 
@@ -467,15 +471,7 @@ static void igc_ptp_tx_work(struct work_struct *work)
 
 	if (time_is_before_jiffies(adapter->ptp_tx_start +
 				   IGC_PTP_TX_TIMEOUT)) {
-		dev_kfree_skb_any(adapter->ptp_tx_skb);
-		adapter->ptp_tx_skb = NULL;
-		clear_bit_unlock(__IGC_PTP_TX_IN_PROGRESS, &adapter->state);
-		adapter->tx_hwtstamp_timeouts++;
-		/* Clear the tx valid bit in TSYNCTXCTL register to enable
-		 * interrupt
-		 */
-		rd32(IGC_TXSTMPH);
-		netdev_warn(adapter->netdev, "Clearing Tx timestamp hang\n");
+		igc_ptp_tx_timeout(adapter);
 		return;
 	}
 
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
