Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 368EB1ED9C6
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jun 2020 02:02:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B3D3D20445;
	Thu,  4 Jun 2020 00:01:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hh1LZyKJIVpM; Thu,  4 Jun 2020 00:01:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 327DB221B1;
	Thu,  4 Jun 2020 00:01:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 33C651BF46A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 00:01:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2A9CD203F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 00:01:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gxvc5Im46TOS for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jun 2020 00:01:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id 850FD2268D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 00:01:22 +0000 (UTC)
IronPort-SDR: jujwUGU7y32NgHSfcoE/YIHW7MqzH73f4Cc9Ao1YtngbSiD25xdmGUmrFs8FM2LbvyLEO1bMN+
 8PxBUBxHK83g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2020 17:01:21 -0700
IronPort-SDR: /JYMWfiIqxROMRJCC8KGFBG2ELon4KbIKMR1s1mF53ItzFraeIwTS6AyJA46DSahKF84B2VY+7
 kwzw+pR0ASBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,470,1583222400"; d="scan'208";a="272932802"
Received: from mrief-mobl1.amr.corp.intel.com ([10.209.62.192])
 by orsmga006.jf.intel.com with ESMTP; 03 Jun 2020 17:01:21 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Jun 2020 17:01:04 -0700
Message-Id: <20200604000105.15059-6-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200604000105.15059-1-andre.guedes@intel.com>
References: <20200604000105.15059-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 5/6] igc: Refactor
 igc_ptp_set_timestamp_mode()
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

Current igc_ptp_set_timestamp_mode() logic is a bit tangled since it
handles many different hardware configurations in one single place,
making it harder to follow. This patch untangles that code by breaking
it into helper functions.

Quick note about the hw->mac.type check which was removed in this
refactoring: this check it not really needed since igc_i225 is the only
type supported by the IGC driver.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 103 ++++++++++++-----------
 1 file changed, 53 insertions(+), 50 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index bdf934377abb..0251e6bedac4 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -239,6 +239,54 @@ static void igc_ptp_enable_tstamp_all_rxqueues(struct igc_adapter *adapter,
 	}
 }
 
+static void igc_ptp_disable_rx_timestamp(struct igc_adapter *adapter)
+{
+	struct igc_hw *hw = &adapter->hw;
+	u32 val;
+
+	wr32(IGC_TSYNCRXCTL, 0);
+
+	val = rd32(IGC_RXPBS);
+	val &= ~IGC_RXPBS_CFG_TS_EN;
+	wr32(IGC_RXPBS, val);
+}
+
+static void igc_ptp_enable_rx_timestamp(struct igc_adapter *adapter)
+{
+	struct igc_hw *hw = &adapter->hw;
+	u32 val;
+
+	val = rd32(IGC_RXPBS);
+	val |= IGC_RXPBS_CFG_TS_EN;
+	wr32(IGC_RXPBS, val);
+
+	/* FIXME: For now, only support retrieving RX timestamps from timer 0
+	 */
+	igc_ptp_enable_tstamp_all_rxqueues(adapter, 0);
+
+	val = IGC_TSYNCRXCTL_ENABLED | IGC_TSYNCRXCTL_TYPE_ALL |
+	      IGC_TSYNCRXCTL_RXSYNSIG;
+	wr32(IGC_TSYNCRXCTL, val);
+}
+
+static void igc_ptp_disable_tx_timestamp(struct igc_adapter *adapter)
+{
+	struct igc_hw *hw = &adapter->hw;
+
+	wr32(IGC_TSYNCTXCTL, 0);
+}
+
+static void igc_ptp_enable_tx_timestamp(struct igc_adapter *adapter)
+{
+	struct igc_hw *hw = &adapter->hw;
+
+	wr32(IGC_TSYNCTXCTL, IGC_TSYNCTXCTL_ENABLED | IGC_TSYNCTXCTL_TXSYNSIG);
+
+	/* Read TXSTMP registers to discard any timestamp previously stored. */
+	rd32(IGC_TXSTMPL);
+	rd32(IGC_TXSTMPH);
+}
+
 /**
  * igc_ptp_set_timestamp_mode - setup hardware for timestamping
  * @adapter: networking device structure
@@ -249,19 +297,16 @@ static void igc_ptp_enable_tstamp_all_rxqueues(struct igc_adapter *adapter,
 static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
 				      struct hwtstamp_config *config)
 {
-	u32 tsync_tx_ctl = IGC_TSYNCTXCTL_ENABLED;
-	u32 tsync_rx_ctl = IGC_TSYNCRXCTL_ENABLED;
-	struct igc_hw *hw = &adapter->hw;
-	u32 regval;
-
 	/* reserved for future extensions */
 	if (config->flags)
 		return -EINVAL;
 
 	switch (config->tx_type) {
 	case HWTSTAMP_TX_OFF:
-		tsync_tx_ctl = 0;
+		igc_ptp_disable_tx_timestamp(adapter);
+		break;
 	case HWTSTAMP_TX_ON:
+		igc_ptp_enable_tx_timestamp(adapter);
 		break;
 	default:
 		return -ERANGE;
@@ -269,7 +314,7 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
 
 	switch (config->rx_filter) {
 	case HWTSTAMP_FILTER_NONE:
-		tsync_rx_ctl = 0;
+		igc_ptp_disable_rx_timestamp(adapter);
 		break;
 	case HWTSTAMP_FILTER_PTP_V1_L4_SYNC:
 	case HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ:
@@ -285,55 +330,13 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
 	case HWTSTAMP_FILTER_PTP_V1_L4_EVENT:
 	case HWTSTAMP_FILTER_NTP_ALL:
 	case HWTSTAMP_FILTER_ALL:
-		tsync_rx_ctl |= IGC_TSYNCRXCTL_TYPE_ALL;
+		igc_ptp_enable_rx_timestamp(adapter);
 		config->rx_filter = HWTSTAMP_FILTER_ALL;
 		break;
 	default:
-		config->rx_filter = HWTSTAMP_FILTER_NONE;
 		return -ERANGE;
 	}
 
-	if (tsync_rx_ctl) {
-		tsync_rx_ctl = IGC_TSYNCRXCTL_ENABLED;
-		tsync_rx_ctl |= IGC_TSYNCRXCTL_TYPE_ALL;
-		tsync_rx_ctl |= IGC_TSYNCRXCTL_RXSYNSIG;
-		config->rx_filter = HWTSTAMP_FILTER_ALL;
-
-		if (hw->mac.type == igc_i225) {
-			regval = rd32(IGC_RXPBS);
-			regval |= IGC_RXPBS_CFG_TS_EN;
-			wr32(IGC_RXPBS, regval);
-
-			/* FIXME: For now, only support retrieving RX
-			 * timestamps from timer 0
-			 */
-			igc_ptp_enable_tstamp_all_rxqueues(adapter, 0);
-		}
-	}
-
-	if (tsync_tx_ctl) {
-		tsync_tx_ctl = IGC_TSYNCTXCTL_ENABLED;
-		tsync_tx_ctl |= IGC_TSYNCTXCTL_TXSYNSIG;
-	}
-
-	/* enable/disable TX */
-	regval = rd32(IGC_TSYNCTXCTL);
-	regval &= ~IGC_TSYNCTXCTL_ENABLED;
-	regval |= tsync_tx_ctl;
-	wr32(IGC_TSYNCTXCTL, regval);
-
-	/* enable/disable RX */
-	regval = rd32(IGC_TSYNCRXCTL);
-	regval &= ~(IGC_TSYNCRXCTL_ENABLED | IGC_TSYNCRXCTL_TYPE_MASK);
-	regval |= tsync_rx_ctl;
-	wr32(IGC_TSYNCRXCTL, regval);
-
-	wrfl();
-
-	/* clear TX time stamp registers, just to be sure */
-	regval = rd32(IGC_TXSTMPL);
-	regval = rd32(IGC_TXSTMPH);
-
 	return 0;
 }
 
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
