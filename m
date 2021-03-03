Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D75932BA6A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Mar 2021 21:51:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B868084334;
	Wed,  3 Mar 2021 20:51:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HMCQ5jjPmRu7; Wed,  3 Mar 2021 20:51:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7CFB68430F;
	Wed,  3 Mar 2021 20:51:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4CFE91BF417
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 20:51:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4777E4B6DA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 20:51:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z8jio46zPK7L for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Mar 2021 20:51:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1D38440109
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 20:51:06 +0000 (UTC)
IronPort-SDR: AAleRbSEyf4iDWtgQQyktMGxfY0K3XsIYlXo4uGsts+GwWOey0Ih8bGl73XQRKvwiDbie3G/d+
 ZhW14L6L9qRA==
X-IronPort-AV: E=McAfee;i="6000,8403,9912"; a="206970580"
X-IronPort-AV: E=Sophos;i="5.81,220,1610438400"; d="scan'208";a="206970580"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 12:51:06 -0800
IronPort-SDR: VGa9d4W7ekn/kk+punld6w/W3ElyERy04PHYeU956pe8FDpVhtepGtt1XKbkR7AC7NbM6TRM+P
 ne4CQ2LOEGGA==
X-IronPort-AV: E=Sophos;i="5.81,220,1610438400"; d="scan'208";a="367743969"
Received: from jbrandeb-desk.jf.intel.com ([10.166.244.152])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 12:51:06 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Mar 2021 12:51:03 -0800
Message-Id: <20210303205103.776633-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] igb: check timestamp validity
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

Add a couple of checks to make sure timestamping is on and that the
timestamp value from DMA is valid. This avoids any functional issues
that could come from a misinterpreted time stamp.

One of the functions changed doesn't need a return value added because
there was no value in checking from the calling locations.

While here, fix a couple of reverse christmas tree issues next to
the code being changed.

Fixes: f56e7bba22fa ("igb: Pull timestamp from fragment before adding it to skb")
Fixes: 9cbc948b5a20 ("igb: add XDP support")
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
Note: this commit message has two fixes notations because it collides
with some non-fix changes from the XDP support patch, which will make it
not apply cleanly on stable kernels from before Sep 2020. The
resolutions are fairly simple however.

This was COMPILE TESTED ONLY before emailing, since I don't have
hardware to test on, so any testing is greatly appreciated.
---
 drivers/net/ethernet/intel/igb/igb.h      |  4 +--
 drivers/net/ethernet/intel/igb/igb_main.c | 11 ++++----
 drivers/net/ethernet/intel/igb/igb_ptp.c  | 31 ++++++++++++++++++-----
 3 files changed, 32 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
index aaa954aae574..7bda8c5edea5 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -748,8 +748,8 @@ void igb_ptp_suspend(struct igb_adapter *adapter);
 void igb_ptp_rx_hang(struct igb_adapter *adapter);
 void igb_ptp_tx_hang(struct igb_adapter *adapter);
 void igb_ptp_rx_rgtstamp(struct igb_q_vector *q_vector, struct sk_buff *skb);
-void igb_ptp_rx_pktstamp(struct igb_q_vector *q_vector, void *va,
-			 struct sk_buff *skb);
+int igb_ptp_rx_pktstamp(struct igb_q_vector *q_vector, void *va,
+			struct sk_buff *skb);
 int igb_ptp_set_ts_config(struct net_device *netdev, struct ifreq *ifr);
 int igb_ptp_get_ts_config(struct net_device *netdev, struct ifreq *ifr);
 void igb_set_flag_queue_pairs(struct igb_adapter *, const u32);
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 878b31d534ec..ce4b70378e12 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -8301,9 +8301,10 @@ static struct sk_buff *igb_construct_skb(struct igb_ring *rx_ring,
 		return NULL;
 
 	if (unlikely(igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TSIP))) {
-		igb_ptp_rx_pktstamp(rx_ring->q_vector, xdp->data, skb);
-		xdp->data += IGB_TS_HDR_LEN;
-		size -= IGB_TS_HDR_LEN;
+		if (!igb_ptp_rx_pktstamp(rx_ring->q_vector, xdp->data, skb)) {
+			xdp->data += IGB_TS_HDR_LEN;
+			size -= IGB_TS_HDR_LEN;
+		}
 	}
 
 	/* Determine available headroom for copy */
@@ -8364,8 +8365,8 @@ static struct sk_buff *igb_build_skb(struct igb_ring *rx_ring,
 
 	/* pull timestamp out of packet data */
 	if (igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TSIP)) {
-		igb_ptp_rx_pktstamp(rx_ring->q_vector, skb->data, skb);
-		__skb_pull(skb, IGB_TS_HDR_LEN);
+		if (!igb_ptp_rx_pktstamp(rx_ring->q_vector, skb->data, skb))
+			__skb_pull(skb, IGB_TS_HDR_LEN);
 	}
 
 	/* update buffer offset */
diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
index 7cc5428c3b3d..86a576201f5f 100644
--- a/drivers/net/ethernet/intel/igb/igb_ptp.c
+++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
@@ -856,6 +856,9 @@ static void igb_ptp_tx_hwtstamp(struct igb_adapter *adapter)
 	dev_kfree_skb_any(skb);
 }
 
+#define IGB_RET_PTP_DISABLED 1
+#define IGB_RET_PTP_INVALID 2
+
 /**
  * igb_ptp_rx_pktstamp - retrieve Rx per packet timestamp
  * @q_vector: Pointer to interrupt specific structure
@@ -864,19 +867,29 @@ static void igb_ptp_tx_hwtstamp(struct igb_adapter *adapter)
  *
  * This function is meant to retrieve a timestamp from the first buffer of an
  * incoming frame.  The value is stored in little endian format starting on
- * byte 8.
+ * byte 8
+ *
+ * Returns: 0 if success, nonzero if failure
  **/
-void igb_ptp_rx_pktstamp(struct igb_q_vector *q_vector, void *va,
-			 struct sk_buff *skb)
+int igb_ptp_rx_pktstamp(struct igb_q_vector *q_vector, void *va,
+			struct sk_buff *skb)
 {
-	__le64 *regval = (__le64 *)va;
 	struct igb_adapter *adapter = q_vector->adapter;
+	__le64 *regval = (__le64 *)va;
 	int adjust = 0;
 
+	if (!(adapter->ptp_flags & IGB_PTP_ENABLED))
+		return IGB_RET_PTP_DISABLED;
+
 	/* The timestamp is recorded in little endian format.
 	 * DWORD: 0        1        2        3
 	 * Field: Reserved Reserved SYSTIML  SYSTIMH
 	 */
+
+	/* check reserved dwords are zero, be/le doesn't matter for zero */
+	if (regval[0])
+		return IGB_RET_PTP_INVALID;
+
 	igb_ptp_systim_to_hwtstamp(adapter, skb_hwtstamps(skb),
 				   le64_to_cpu(regval[1]));
 
@@ -896,6 +909,8 @@ void igb_ptp_rx_pktstamp(struct igb_q_vector *q_vector, void *va,
 	}
 	skb_hwtstamps(skb)->hwtstamp =
 		ktime_sub_ns(skb_hwtstamps(skb)->hwtstamp, adjust);
+
+	return 0;
 }
 
 /**
@@ -906,13 +921,15 @@ void igb_ptp_rx_pktstamp(struct igb_q_vector *q_vector, void *va,
  * This function is meant to retrieve a timestamp from the internal registers
  * of the adapter and store it in the skb.
  **/
-void igb_ptp_rx_rgtstamp(struct igb_q_vector *q_vector,
-			 struct sk_buff *skb)
+void igb_ptp_rx_rgtstamp(struct igb_q_vector *q_vector, struct sk_buff *skb)
 {
 	struct igb_adapter *adapter = q_vector->adapter;
 	struct e1000_hw *hw = &adapter->hw;
-	u64 regval;
 	int adjust = 0;
+	u64 regval;
+
+	if (!(adapter->ptp_flags & IGB_PTP_ENABLED))
+		return;
 
 	/* If this bit is set, then the RX registers contain the time stamp. No
 	 * other packet will be time stamped until we read these registers, so

base-commit: dbbe7c962c3a8163bf724dbc3c9fdfc9b16d3117
-- 
2.25.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
