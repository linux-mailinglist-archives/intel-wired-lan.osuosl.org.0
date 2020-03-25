Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F531191E32
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2020 01:38:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DC43784D9F;
	Wed, 25 Mar 2020 00:38:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mce5cqD1tZ7U; Wed, 25 Mar 2020 00:38:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2126C84EB9;
	Wed, 25 Mar 2020 00:38:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F0BB81BF32A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 00:38:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EDCAF2012F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 00:38:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q-11jDhkw22J for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2020 00:38:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 08D1C20022
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 00:38:36 +0000 (UTC)
IronPort-SDR: gY4QL5wjBjUWAGEIAkSZDGRghTfi0+riomcQRpa5dBRTLtUsi2ib1DPvE1WJakAuTD8WUQUjkt
 s5qw4iJuInNw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 17:38:35 -0700
IronPort-SDR: r9DwSBOrIi9L1TWbxo5+fR/bFmdZAOm+uF5I8hWkm89/WCIgsDw5P3FJXrcXu3xSE03obR+1KW
 TeGfjCn4L9JQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,302,1580803200"; d="scan'208";a="448099346"
Received: from johnorte-mobl2.amr.corp.intel.com ([10.251.10.249])
 by fmsmga006.fm.intel.com with ESMTP; 24 Mar 2020 17:38:35 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Mar 2020 17:38:18 -0700
Message-Id: <20200325003824.5487-5-andre.guedes@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200325003824.5487-1-andre.guedes@intel.com>
References: <20200325003824.5487-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 04/10] igc: Use netdev log helpers in
 igc_dump.c
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

In igc_dump.c we print log messages using dev_* and pr_* helpers,
generating inconsistent output with the rest of the driver. Since this
is a network device driver, we should preferably use netdev_* helpers
because they append the interface name to the message, helping making
sense out of the logs.

This patch converts all dev_* and pr_* calls to netdev_*. It also takes
this opportunity to remove the '\n' character at the end of messages
since is it automatically added by netdev_* log helpers.

Quick note about igc_rings_dump(): This function is always called with
valid adapter->netdev so there is not need to check it.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_dump.c | 109 +++++++++++-----------
 1 file changed, 54 insertions(+), 55 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_dump.c b/drivers/net/ethernet/intel/igc/igc_dump.c
index 657ab50ae296..d6990d63c8bb 100644
--- a/drivers/net/ethernet/intel/igc/igc_dump.c
+++ b/drivers/net/ethernet/intel/igc/igc_dump.c
@@ -47,6 +47,7 @@ static const struct igc_reg_info igc_reg_info_tbl[] = {
 /* igc_regdump - register printout routine */
 static void igc_regdump(struct igc_hw *hw, struct igc_reg_info *reginfo)
 {
+	struct net_device *dev = igc_get_hw_dev(hw);
 	int n = 0;
 	char rname[16];
 	u32 regs[8];
@@ -101,13 +102,14 @@ static void igc_regdump(struct igc_hw *hw, struct igc_reg_info *reginfo)
 			regs[n] = rd32(IGC_TXDCTL(n));
 		break;
 	default:
-		pr_info("%-15s %08x\n", reginfo->name, rd32(reginfo->ofs));
+		netdev_info(dev, "%-15s %08x", reginfo->name,
+			    rd32(reginfo->ofs));
 		return;
 	}
 
 	snprintf(rname, 16, "%s%s", reginfo->name, "[0-3]");
-	pr_info("%-15s %08x %08x %08x %08x\n", rname, regs[0], regs[1],
-		regs[2], regs[3]);
+	netdev_info(dev, "%-15s %08x %08x %08x %08x", rname, regs[0], regs[1],
+		    regs[2], regs[3]);
 }
 
 /* igc_rings_dump - Tx-rings and Rx-rings */
@@ -125,39 +127,34 @@ void igc_rings_dump(struct igc_adapter *adapter)
 	if (!netif_msg_hw(adapter))
 		return;
 
-	/* Print netdevice Info */
-	if (netdev) {
-		dev_info(&adapter->pdev->dev, "Net device Info\n");
-		pr_info("Device Name     state            trans_start\n");
-		pr_info("%-15s %016lX %016lX\n", netdev->name,
-			netdev->state, dev_trans_start(netdev));
-	}
+	netdev_info(netdev, "Device info: state %016lX trans_start %016lX",
+		    netdev->state, dev_trans_start(netdev));
 
 	/* Print TX Ring Summary */
-	if (!netdev || !netif_running(netdev))
+	if (!netif_running(netdev))
 		goto exit;
 
-	dev_info(&adapter->pdev->dev, "TX Rings Summary\n");
-	pr_info("Queue [NTU] [NTC] [bi(ntc)->dma  ] leng ntw timestamp\n");
+	netdev_info(netdev, "TX Rings Summary");
+	netdev_info(netdev, "Queue [NTU] [NTC] [bi(ntc)->dma  ] leng ntw timestamp");
 	for (n = 0; n < adapter->num_tx_queues; n++) {
 		struct igc_tx_buffer *buffer_info;
 
 		tx_ring = adapter->tx_ring[n];
 		buffer_info = &tx_ring->tx_buffer_info[tx_ring->next_to_clean];
 
-		pr_info(" %5d %5X %5X %016llX %04X %p %016llX\n",
-			n, tx_ring->next_to_use, tx_ring->next_to_clean,
-			(u64)dma_unmap_addr(buffer_info, dma),
-			dma_unmap_len(buffer_info, len),
-			buffer_info->next_to_watch,
-			(u64)buffer_info->time_stamp);
+		netdev_info(netdev, "%5d %5X %5X %016llX %04X %p %016llX",
+			    n, tx_ring->next_to_use, tx_ring->next_to_clean,
+			    (u64)dma_unmap_addr(buffer_info, dma),
+			    dma_unmap_len(buffer_info, len),
+			    buffer_info->next_to_watch,
+			    (u64)buffer_info->time_stamp);
 	}
 
 	/* Print TX Rings */
 	if (!netif_msg_tx_done(adapter))
 		goto rx_ring_summary;
 
-	dev_info(&adapter->pdev->dev, "TX Rings Dump\n");
+	netdev_info(netdev, "TX Rings Dump");
 
 	/* Transmit Descriptor Formats
 	 *
@@ -172,10 +169,11 @@ void igc_rings_dump(struct igc_adapter *adapter)
 
 	for (n = 0; n < adapter->num_tx_queues; n++) {
 		tx_ring = adapter->tx_ring[n];
-		pr_info("------------------------------------\n");
-		pr_info("TX QUEUE INDEX = %d\n", tx_ring->queue_index);
-		pr_info("------------------------------------\n");
-		pr_info("T [desc]     [address 63:0  ] [PlPOCIStDDM Ln] [bi->dma       ] leng  ntw timestamp        bi->skb\n");
+		netdev_info(netdev, "------------------------------------");
+		netdev_info(netdev, "TX QUEUE INDEX = %d",
+			    tx_ring->queue_index);
+		netdev_info(netdev, "------------------------------------");
+		netdev_info(netdev, "T [desc]     [address 63:0  ] [PlPOCIStDDM Ln] [bi->dma       ] leng  ntw timestamp        bi->skb");
 
 		for (i = 0; tx_ring->desc && (i < tx_ring->count); i++) {
 			const char *next_desc;
@@ -194,14 +192,14 @@ void igc_rings_dump(struct igc_adapter *adapter)
 			else
 				next_desc = "";
 
-			pr_info("T [0x%03X]    %016llX %016llX %016llX %04X  %p %016llX %p%s\n",
-				i, le64_to_cpu(u0->a),
-				le64_to_cpu(u0->b),
-				(u64)dma_unmap_addr(buffer_info, dma),
-				dma_unmap_len(buffer_info, len),
-				buffer_info->next_to_watch,
-				(u64)buffer_info->time_stamp,
-				buffer_info->skb, next_desc);
+			netdev_info(netdev, "T [0x%03X]    %016llX %016llX %016llX %04X  %p %016llX %p%s",
+				    i, le64_to_cpu(u0->a),
+				    le64_to_cpu(u0->b),
+				    (u64)dma_unmap_addr(buffer_info, dma),
+				    dma_unmap_len(buffer_info, len),
+				    buffer_info->next_to_watch,
+				    (u64)buffer_info->time_stamp,
+				    buffer_info->skb, next_desc);
 
 			if (netif_msg_pktdata(adapter) && buffer_info->skb)
 				print_hex_dump(KERN_INFO, "",
@@ -214,19 +212,19 @@ void igc_rings_dump(struct igc_adapter *adapter)
 
 	/* Print RX Rings Summary */
 rx_ring_summary:
-	dev_info(&adapter->pdev->dev, "RX Rings Summary\n");
-	pr_info("Queue [NTU] [NTC]\n");
+	netdev_info(netdev, "RX Rings Summary");
+	netdev_info(netdev, "Queue [NTU] [NTC]");
 	for (n = 0; n < adapter->num_rx_queues; n++) {
 		rx_ring = adapter->rx_ring[n];
-		pr_info(" %5d %5X %5X\n",
-			n, rx_ring->next_to_use, rx_ring->next_to_clean);
+		netdev_info(netdev, "%5d %5X %5X", n, rx_ring->next_to_use,
+			    rx_ring->next_to_clean);
 	}
 
 	/* Print RX Rings */
 	if (!netif_msg_rx_status(adapter))
 		goto exit;
 
-	dev_info(&adapter->pdev->dev, "RX Rings Dump\n");
+	netdev_info(netdev, "RX Rings Dump");
 
 	/* Advanced Receive Descriptor (Read) Format
 	 *    63                                           1        0
@@ -251,11 +249,12 @@ void igc_rings_dump(struct igc_adapter *adapter)
 
 	for (n = 0; n < adapter->num_rx_queues; n++) {
 		rx_ring = adapter->rx_ring[n];
-		pr_info("------------------------------------\n");
-		pr_info("RX QUEUE INDEX = %d\n", rx_ring->queue_index);
-		pr_info("------------------------------------\n");
-		pr_info("R  [desc]      [ PktBuf     A0] [  HeadBuf   DD] [bi->dma       ] [bi->skb] <-- Adv Rx Read format\n");
-		pr_info("RWB[desc]      [PcsmIpSHl PtRs] [vl er S cks ln] ---------------- [bi->skb] <-- Adv Rx Write-Back format\n");
+		netdev_info(netdev, "------------------------------------");
+		netdev_info(netdev, "RX QUEUE INDEX = %d",
+			    rx_ring->queue_index);
+		netdev_info(netdev, "------------------------------------");
+		netdev_info(netdev, "R  [desc]      [ PktBuf     A0] [  HeadBuf   DD] [bi->dma       ] [bi->skb] <-- Adv Rx Read format");
+		netdev_info(netdev, "RWB[desc]      [PcsmIpSHl PtRs] [vl er S cks ln] ---------------- [bi->skb] <-- Adv Rx Write-Back format");
 
 		for (i = 0; i < rx_ring->count; i++) {
 			const char *next_desc;
@@ -275,18 +274,18 @@ void igc_rings_dump(struct igc_adapter *adapter)
 
 			if (staterr & IGC_RXD_STAT_DD) {
 				/* Descriptor Done */
-				pr_info("%s[0x%03X]     %016llX %016llX ---------------- %s\n",
-					"RWB", i,
-					le64_to_cpu(u0->a),
-					le64_to_cpu(u0->b),
-					next_desc);
+				netdev_info(netdev, "%s[0x%03X]     %016llX %016llX ---------------- %s",
+					    "RWB", i,
+					    le64_to_cpu(u0->a),
+					    le64_to_cpu(u0->b),
+					    next_desc);
 			} else {
-				pr_info("%s[0x%03X]     %016llX %016llX %016llX %s\n",
-					"R  ", i,
-					le64_to_cpu(u0->a),
-					le64_to_cpu(u0->b),
-					(u64)buffer_info->dma,
-					next_desc);
+				netdev_info(netdev, "%s[0x%03X]     %016llX %016llX %016llX %s",
+					    "R  ", i,
+					    le64_to_cpu(u0->a),
+					    le64_to_cpu(u0->b),
+					    (u64)buffer_info->dma,
+					    next_desc);
 
 				if (netif_msg_pktdata(adapter) &&
 				    buffer_info->dma && buffer_info->page) {
@@ -314,8 +313,8 @@ void igc_regs_dump(struct igc_adapter *adapter)
 	struct igc_reg_info *reginfo;
 
 	/* Print Registers */
-	dev_info(&adapter->pdev->dev, "Register Dump\n");
-	pr_info(" Register Name   Value\n");
+	netdev_info(adapter->netdev, "Register Dump");
+	netdev_info(adapter->netdev, "Register Name   Value");
 	for (reginfo = (struct igc_reg_info *)igc_reg_info_tbl;
 	     reginfo->name; reginfo++) {
 		igc_regdump(hw, reginfo);
-- 
2.25.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
