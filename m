Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 922372A5D06
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Nov 2020 04:12:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3FBF220525;
	Wed,  4 Nov 2020 03:12:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oBxd6IW7KDUf; Wed,  4 Nov 2020 03:12:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0703522011;
	Wed,  4 Nov 2020 03:12:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 86AB71BF989
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 03:12:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 836A885F5D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 03:12:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dpYHN_wIv5oE for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Nov 2020 03:12:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AEEA385E83
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 03:12:25 +0000 (UTC)
IronPort-SDR: cjX1ukoZ+xF2Wn4RftR02YyWRDQQ5AtNRHjNsF5OA9gXIRjpWSnzB5S1W+6X7xg2cgyR8EoSzn
 KIDEUIcBPwbQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="187017145"
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="187017145"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 19:12:25 -0800
IronPort-SDR: brXygRJJdWXys/hd7mVP7tOX+3vxEqr8dlIsN9f48+7fn7py9URMbXShyZPl0Av9yqJVmUSGIc
 WDolBJBUtYaw==
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="471042934"
Received: from abkumar-dell.amr.corp.intel.com ([10.212.180.108])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 19:12:24 -0800
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  3 Nov 2020 19:12:02 -0800
Message-Id: <20201104031210.27772-2-andre.guedes@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201104031210.27772-1-andre.guedes@intel.com>
References: <20201104031210.27772-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v4 1/9] igc: Fix igc_ptp_rx_pktstamp()
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

The comment describing the timestamps layout in the packet buffer is
wrong and the code is actually retrieving the timestamp in Timer 1
reference instead of Timer 0. This hasn't been a big issue so far
because hardware is configured to report both timestamps using Timer 0
(see IGC_SRRCTL register configuration in igc_ptp_enable_rx_timestamp()
helper). This patch fixes the comment and the code so we retrieve the
timestamp in Timer 0 reference as expected.

This patch also takes the opportunity to get rid of the hw.mac.type check
since it is not required.

Fixes: 81b055205e8ba ("igc: Add support for RX timestamping")
Signed-off-by: Andre Guedes <andre.guedes@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h     |  2 +-
 drivers/net/ethernet/intel/igc/igc_ptp.c | 72 +++++++++++++-----------
 2 files changed, 41 insertions(+), 33 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 83d59b08e883..b66dda992d32 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -552,7 +552,7 @@ void igc_ptp_init(struct igc_adapter *adapter);
 void igc_ptp_reset(struct igc_adapter *adapter);
 void igc_ptp_suspend(struct igc_adapter *adapter);
 void igc_ptp_stop(struct igc_adapter *adapter);
-void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, void *va,
+void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, u32 *va,
 			 struct sk_buff *skb);
 int igc_ptp_set_ts_config(struct net_device *netdev, struct ifreq *ifr);
 int igc_ptp_get_ts_config(struct net_device *netdev, struct ifreq *ifr);
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index d73c4aaac610..148c5a94b505 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -154,46 +154,54 @@ static void igc_ptp_systim_to_hwtstamp(struct igc_adapter *adapter,
 }
 
 /**
- * igc_ptp_rx_pktstamp - retrieve Rx per packet timestamp
+ * igc_ptp_rx_pktstamp - Retrieve timestamp from rx packet buffer
  * @q_vector: Pointer to interrupt specific structure
  * @va: Pointer to address containing Rx buffer
  * @skb: Buffer containing timestamp and packet
  *
- * This function is meant to retrieve the first timestamp from the
- * first buffer of an incoming frame. The value is stored in little
- * endian format starting on byte 0. There's a second timestamp
- * starting on byte 8.
- **/
-void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, void *va,
+ * This function retrieves the timestamp saved in the beginning of packet
+ * buffer. While two timestamps are available, one in timer0 reference and the
+ * other in timer1 reference, this function considers only the timestamp in
+ * timer0 reference.
+ */
+void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, u32 *va,
 			 struct sk_buff *skb)
 {
 	struct igc_adapter *adapter = q_vector->adapter;
-	__le64 *regval = (__le64 *)va;
-	int adjust = 0;
-
-	/* The timestamp is recorded in little endian format.
-	 * DWORD: | 0          | 1           | 2          | 3
-	 * Field: | Timer0 Low | Timer0 High | Timer1 Low | Timer1 High
+	u64 regval;
+	int adjust;
+
+	/* Timestamps are saved in little endian at the beginning of the packet
+	 * buffer following the layout:
+	 *
+	 * DWORD: | 0              | 1              | 2              | 3              |
+	 * Field: | Timer1 SYSTIML | Timer1 SYSTIMH | Timer0 SYSTIML | Timer0 SYSTIMH |
+	 *
+	 * SYSTIML holds the nanoseconds part while SYSTIMH holds the seconds
+	 * part of the timestamp.
 	 */
-	igc_ptp_systim_to_hwtstamp(adapter, skb_hwtstamps(skb),
-				   le64_to_cpu(regval[0]));
-
-	/* adjust timestamp for the RX latency based on link speed */
-	if (adapter->hw.mac.type == igc_i225) {
-		switch (adapter->link_speed) {
-		case SPEED_10:
-			adjust = IGC_I225_RX_LATENCY_10;
-			break;
-		case SPEED_100:
-			adjust = IGC_I225_RX_LATENCY_100;
-			break;
-		case SPEED_1000:
-			adjust = IGC_I225_RX_LATENCY_1000;
-			break;
-		case SPEED_2500:
-			adjust = IGC_I225_RX_LATENCY_2500;
-			break;
-		}
+	regval = le32_to_cpu(va[2]);
+	regval |= (u64)le32_to_cpu(va[3]) << 32;
+	igc_ptp_systim_to_hwtstamp(adapter, skb_hwtstamps(skb), regval);
+
+	/* Adjust timestamp for the RX latency based on link speed */
+	switch (adapter->link_speed) {
+	case SPEED_10:
+		adjust = IGC_I225_RX_LATENCY_10;
+		break;
+	case SPEED_100:
+		adjust = IGC_I225_RX_LATENCY_100;
+		break;
+	case SPEED_1000:
+		adjust = IGC_I225_RX_LATENCY_1000;
+		break;
+	case SPEED_2500:
+		adjust = IGC_I225_RX_LATENCY_2500;
+		break;
+	default:
+		adjust = 0;
+		netdev_warn_once(adapter->netdev, "Imprecise timestamp\n");
+		break;
 	}
 	skb_hwtstamps(skb)->hwtstamp =
 		ktime_sub_ns(skb_hwtstamps(skb)->hwtstamp, adjust);
-- 
2.28.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
