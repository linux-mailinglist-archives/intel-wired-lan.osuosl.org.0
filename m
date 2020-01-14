Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C06F13A250
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jan 2020 08:56:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3418620015;
	Tue, 14 Jan 2020 07:56:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4hZoQa-pL86Y; Tue, 14 Jan 2020 07:56:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DD1722044B;
	Tue, 14 Jan 2020 07:56:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 538DE1BF3BD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2020 07:55:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4F073203CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2020 07:55:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QxEA8+DYI0DA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jan 2020 07:55:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 0A97520015
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2020 07:55:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 23:55:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,432,1571727600"; d="scan'208";a="247569503"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by fmsmga001.fm.intel.com with ESMTP; 13 Jan 2020 23:55:54 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 14 Jan 2020 09:55:54 +0200
Message-Id: <20200114075554.14538-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1] igc: Add dump options
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Placeholder for debugging functionality.
In this patch, we add some registers and rings summary dumps.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/Makefile      |   2 +-
 drivers/net/ethernet/intel/igc/igc.h         |   4 +
 drivers/net/ethernet/intel/igc/igc_defines.h |   3 +
 drivers/net/ethernet/intel/igc/igc_dump.c    | 323 +++++++++++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_main.c    |   2 +
 drivers/net/ethernet/intel/igc/igc_regs.h    |   5 +
 6 files changed, 338 insertions(+), 1 deletion(-)
 create mode 100644 drivers/net/ethernet/intel/igc/igc_dump.c

diff --git a/drivers/net/ethernet/intel/igc/Makefile b/drivers/net/ethernet/intel/igc/Makefile
index 49fb1e1965cd..e3c164c12e10 100644
--- a/drivers/net/ethernet/intel/igc/Makefile
+++ b/drivers/net/ethernet/intel/igc/Makefile
@@ -8,4 +8,4 @@
 obj-$(CONFIG_IGC) += igc.o
 
 igc-objs := igc_main.o igc_mac.o igc_i225.o igc_base.o igc_nvm.o igc_phy.o \
-igc_ethtool.o igc_ptp.o
+igc_ethtool.o igc_ptp.o igc_dump.o
diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 52066bdbbad0..5d38d0faeced 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -42,6 +42,10 @@ int igc_del_mac_steering_filter(struct igc_adapter *adapter,
 				const u8 *addr, u8 queue, u8 flags);
 void igc_update_stats(struct igc_adapter *adapter);
 
+/* igc_dump declarations */
+void igc_rings_dump(struct igc_adapter *adapter);
+void igc_regs_dump(struct igc_adapter *adapter);
+
 extern char igc_driver_name[];
 extern char igc_driver_version[];
 
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 58efa7a02c68..3c03962bde5e 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -259,6 +259,9 @@
 #define IGC_GPIE_EIAME		0x40000000
 #define IGC_GPIE_PBA		0x80000000
 
+/* Receive Descriptor bit definitions */
+#define IGC_RXD_STAT_DD		0x01    /* Descriptor Done */
+
 /* Transmit Descriptor bit definitions */
 #define IGC_TXD_DTYP_D		0x00100000 /* Data Descriptor */
 #define IGC_TXD_DTYP_C		0x00000000 /* Context Descriptor */
diff --git a/drivers/net/ethernet/intel/igc/igc_dump.c b/drivers/net/ethernet/intel/igc/igc_dump.c
new file mode 100644
index 000000000000..657ab50ae296
--- /dev/null
+++ b/drivers/net/ethernet/intel/igc/igc_dump.c
@@ -0,0 +1,323 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c)  2018 Intel Corporation */
+
+#include "igc.h"
+
+struct igc_reg_info {
+	u32 ofs;
+	char *name;
+};
+
+static const struct igc_reg_info igc_reg_info_tbl[] = {
+	/* General Registers */
+	{IGC_CTRL, "CTRL"},
+	{IGC_STATUS, "STATUS"},
+	{IGC_CTRL_EXT, "CTRL_EXT"},
+	{IGC_MDIC, "MDIC"},
+
+	/* Interrupt Registers */
+	{IGC_ICR, "ICR"},
+
+	/* RX Registers */
+	{IGC_RCTL, "RCTL"},
+	{IGC_RDLEN(0), "RDLEN"},
+	{IGC_RDH(0), "RDH"},
+	{IGC_RDT(0), "RDT"},
+	{IGC_RXDCTL(0), "RXDCTL"},
+	{IGC_RDBAL(0), "RDBAL"},
+	{IGC_RDBAH(0), "RDBAH"},
+
+	/* TX Registers */
+	{IGC_TCTL, "TCTL"},
+	{IGC_TDBAL(0), "TDBAL"},
+	{IGC_TDBAH(0), "TDBAH"},
+	{IGC_TDLEN(0), "TDLEN"},
+	{IGC_TDH(0), "TDH"},
+	{IGC_TDT(0), "TDT"},
+	{IGC_TXDCTL(0), "TXDCTL"},
+	{IGC_TDFH, "TDFH"},
+	{IGC_TDFT, "TDFT"},
+	{IGC_TDFHS, "TDFHS"},
+	{IGC_TDFPC, "TDFPC"},
+
+	/* List Terminator */
+	{}
+};
+
+/* igc_regdump - register printout routine */
+static void igc_regdump(struct igc_hw *hw, struct igc_reg_info *reginfo)
+{
+	int n = 0;
+	char rname[16];
+	u32 regs[8];
+
+	switch (reginfo->ofs) {
+	case IGC_RDLEN(0):
+		for (n = 0; n < 4; n++)
+			regs[n] = rd32(IGC_RDLEN(n));
+		break;
+	case IGC_RDH(0):
+		for (n = 0; n < 4; n++)
+			regs[n] = rd32(IGC_RDH(n));
+		break;
+	case IGC_RDT(0):
+		for (n = 0; n < 4; n++)
+			regs[n] = rd32(IGC_RDT(n));
+		break;
+	case IGC_RXDCTL(0):
+		for (n = 0; n < 4; n++)
+			regs[n] = rd32(IGC_RXDCTL(n));
+		break;
+	case IGC_RDBAL(0):
+		for (n = 0; n < 4; n++)
+			regs[n] = rd32(IGC_RDBAL(n));
+		break;
+	case IGC_RDBAH(0):
+		for (n = 0; n < 4; n++)
+			regs[n] = rd32(IGC_RDBAH(n));
+		break;
+	case IGC_TDBAL(0):
+		for (n = 0; n < 4; n++)
+			regs[n] = rd32(IGC_RDBAL(n));
+		break;
+	case IGC_TDBAH(0):
+		for (n = 0; n < 4; n++)
+			regs[n] = rd32(IGC_TDBAH(n));
+		break;
+	case IGC_TDLEN(0):
+		for (n = 0; n < 4; n++)
+			regs[n] = rd32(IGC_TDLEN(n));
+		break;
+	case IGC_TDH(0):
+		for (n = 0; n < 4; n++)
+			regs[n] = rd32(IGC_TDH(n));
+		break;
+	case IGC_TDT(0):
+		for (n = 0; n < 4; n++)
+			regs[n] = rd32(IGC_TDT(n));
+		break;
+	case IGC_TXDCTL(0):
+		for (n = 0; n < 4; n++)
+			regs[n] = rd32(IGC_TXDCTL(n));
+		break;
+	default:
+		pr_info("%-15s %08x\n", reginfo->name, rd32(reginfo->ofs));
+		return;
+	}
+
+	snprintf(rname, 16, "%s%s", reginfo->name, "[0-3]");
+	pr_info("%-15s %08x %08x %08x %08x\n", rname, regs[0], regs[1],
+		regs[2], regs[3]);
+}
+
+/* igc_rings_dump - Tx-rings and Rx-rings */
+void igc_rings_dump(struct igc_adapter *adapter)
+{
+	struct net_device *netdev = adapter->netdev;
+	struct my_u0 { u64 a; u64 b; } *u0;
+	union igc_adv_tx_desc *tx_desc;
+	union igc_adv_rx_desc *rx_desc;
+	struct igc_ring *tx_ring;
+	struct igc_ring *rx_ring;
+	u32 staterr;
+	u16 i, n;
+
+	if (!netif_msg_hw(adapter))
+		return;
+
+	/* Print netdevice Info */
+	if (netdev) {
+		dev_info(&adapter->pdev->dev, "Net device Info\n");
+		pr_info("Device Name     state            trans_start\n");
+		pr_info("%-15s %016lX %016lX\n", netdev->name,
+			netdev->state, dev_trans_start(netdev));
+	}
+
+	/* Print TX Ring Summary */
+	if (!netdev || !netif_running(netdev))
+		goto exit;
+
+	dev_info(&adapter->pdev->dev, "TX Rings Summary\n");
+	pr_info("Queue [NTU] [NTC] [bi(ntc)->dma  ] leng ntw timestamp\n");
+	for (n = 0; n < adapter->num_tx_queues; n++) {
+		struct igc_tx_buffer *buffer_info;
+
+		tx_ring = adapter->tx_ring[n];
+		buffer_info = &tx_ring->tx_buffer_info[tx_ring->next_to_clean];
+
+		pr_info(" %5d %5X %5X %016llX %04X %p %016llX\n",
+			n, tx_ring->next_to_use, tx_ring->next_to_clean,
+			(u64)dma_unmap_addr(buffer_info, dma),
+			dma_unmap_len(buffer_info, len),
+			buffer_info->next_to_watch,
+			(u64)buffer_info->time_stamp);
+	}
+
+	/* Print TX Rings */
+	if (!netif_msg_tx_done(adapter))
+		goto rx_ring_summary;
+
+	dev_info(&adapter->pdev->dev, "TX Rings Dump\n");
+
+	/* Transmit Descriptor Formats
+	 *
+	 * Advanced Transmit Descriptor
+	 *   +--------------------------------------------------------------+
+	 * 0 |         Buffer Address [63:0]                                |
+	 *   +--------------------------------------------------------------+
+	 * 8 | PAYLEN  | PORTS  |CC|IDX | STA | DCMD  |DTYP|MAC|RSV| DTALEN |
+	 *   +--------------------------------------------------------------+
+	 *   63      46 45    40 39 38 36 35 32 31   24             15       0
+	 */
+
+	for (n = 0; n < adapter->num_tx_queues; n++) {
+		tx_ring = adapter->tx_ring[n];
+		pr_info("------------------------------------\n");
+		pr_info("TX QUEUE INDEX = %d\n", tx_ring->queue_index);
+		pr_info("------------------------------------\n");
+		pr_info("T [desc]     [address 63:0  ] [PlPOCIStDDM Ln] [bi->dma       ] leng  ntw timestamp        bi->skb\n");
+
+		for (i = 0; tx_ring->desc && (i < tx_ring->count); i++) {
+			const char *next_desc;
+			struct igc_tx_buffer *buffer_info;
+
+			tx_desc = IGC_TX_DESC(tx_ring, i);
+			buffer_info = &tx_ring->tx_buffer_info[i];
+			u0 = (struct my_u0 *)tx_desc;
+			if (i == tx_ring->next_to_use &&
+			    i == tx_ring->next_to_clean)
+				next_desc = " NTC/U";
+			else if (i == tx_ring->next_to_use)
+				next_desc = " NTU";
+			else if (i == tx_ring->next_to_clean)
+				next_desc = " NTC";
+			else
+				next_desc = "";
+
+			pr_info("T [0x%03X]    %016llX %016llX %016llX %04X  %p %016llX %p%s\n",
+				i, le64_to_cpu(u0->a),
+				le64_to_cpu(u0->b),
+				(u64)dma_unmap_addr(buffer_info, dma),
+				dma_unmap_len(buffer_info, len),
+				buffer_info->next_to_watch,
+				(u64)buffer_info->time_stamp,
+				buffer_info->skb, next_desc);
+
+			if (netif_msg_pktdata(adapter) && buffer_info->skb)
+				print_hex_dump(KERN_INFO, "",
+					       DUMP_PREFIX_ADDRESS,
+					       16, 1, buffer_info->skb->data,
+					       dma_unmap_len(buffer_info, len),
+					       true);
+		}
+	}
+
+	/* Print RX Rings Summary */
+rx_ring_summary:
+	dev_info(&adapter->pdev->dev, "RX Rings Summary\n");
+	pr_info("Queue [NTU] [NTC]\n");
+	for (n = 0; n < adapter->num_rx_queues; n++) {
+		rx_ring = adapter->rx_ring[n];
+		pr_info(" %5d %5X %5X\n",
+			n, rx_ring->next_to_use, rx_ring->next_to_clean);
+	}
+
+	/* Print RX Rings */
+	if (!netif_msg_rx_status(adapter))
+		goto exit;
+
+	dev_info(&adapter->pdev->dev, "RX Rings Dump\n");
+
+	/* Advanced Receive Descriptor (Read) Format
+	 *    63                                           1        0
+	 *    +-----------------------------------------------------+
+	 *  0 |       Packet Buffer Address [63:1]           |A0/NSE|
+	 *    +----------------------------------------------+------+
+	 *  8 |       Header Buffer Address [63:1]           |  DD  |
+	 *    +-----------------------------------------------------+
+	 *
+	 *
+	 * Advanced Receive Descriptor (Write-Back) Format
+	 *
+	 *   63       48 47    32 31  30      21 20 17 16   4 3     0
+	 *   +------------------------------------------------------+
+	 * 0 | Packet     IP     |SPH| HDR_LEN   | RSV|Packet|  RSS |
+	 *   | Checksum   Ident  |   |           |    | Type | Type |
+	 *   +------------------------------------------------------+
+	 * 8 | VLAN Tag | Length | Extended Error | Extended Status |
+	 *   +------------------------------------------------------+
+	 *   63       48 47    32 31            20 19               0
+	 */
+
+	for (n = 0; n < adapter->num_rx_queues; n++) {
+		rx_ring = adapter->rx_ring[n];
+		pr_info("------------------------------------\n");
+		pr_info("RX QUEUE INDEX = %d\n", rx_ring->queue_index);
+		pr_info("------------------------------------\n");
+		pr_info("R  [desc]      [ PktBuf     A0] [  HeadBuf   DD] [bi->dma       ] [bi->skb] <-- Adv Rx Read format\n");
+		pr_info("RWB[desc]      [PcsmIpSHl PtRs] [vl er S cks ln] ---------------- [bi->skb] <-- Adv Rx Write-Back format\n");
+
+		for (i = 0; i < rx_ring->count; i++) {
+			const char *next_desc;
+			struct igc_rx_buffer *buffer_info;
+
+			buffer_info = &rx_ring->rx_buffer_info[i];
+			rx_desc = IGC_RX_DESC(rx_ring, i);
+			u0 = (struct my_u0 *)rx_desc;
+			staterr = le32_to_cpu(rx_desc->wb.upper.status_error);
+
+			if (i == rx_ring->next_to_use)
+				next_desc = " NTU";
+			else if (i == rx_ring->next_to_clean)
+				next_desc = " NTC";
+			else
+				next_desc = "";
+
+			if (staterr & IGC_RXD_STAT_DD) {
+				/* Descriptor Done */
+				pr_info("%s[0x%03X]     %016llX %016llX ---------------- %s\n",
+					"RWB", i,
+					le64_to_cpu(u0->a),
+					le64_to_cpu(u0->b),
+					next_desc);
+			} else {
+				pr_info("%s[0x%03X]     %016llX %016llX %016llX %s\n",
+					"R  ", i,
+					le64_to_cpu(u0->a),
+					le64_to_cpu(u0->b),
+					(u64)buffer_info->dma,
+					next_desc);
+
+				if (netif_msg_pktdata(adapter) &&
+				    buffer_info->dma && buffer_info->page) {
+					print_hex_dump(KERN_INFO, "",
+						       DUMP_PREFIX_ADDRESS,
+						       16, 1,
+						       page_address
+						       (buffer_info->page) +
+						       buffer_info->page_offset,
+						       igc_rx_bufsz(rx_ring),
+						       true);
+				}
+			}
+		}
+	}
+
+exit:
+	return;
+}
+
+/* igc_regs_dump - registers dump */
+void igc_regs_dump(struct igc_adapter *adapter)
+{
+	struct igc_hw *hw = &adapter->hw;
+	struct igc_reg_info *reginfo;
+
+	/* Print Registers */
+	dev_info(&adapter->pdev->dev, "Register Dump\n");
+	pr_info(" Register Name   Value\n");
+	for (reginfo = (struct igc_reg_info *)igc_reg_info_tbl;
+	     reginfo->name; reginfo++) {
+		igc_regdump(hw, reginfo);
+	}
+}
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index e7787c0929b2..08ed9796d088 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3546,6 +3546,8 @@ static void igc_reset_task(struct work_struct *work)
 
 	adapter = container_of(work, struct igc_adapter, reset_task);
 
+	igc_rings_dump(adapter);
+	igc_regs_dump(adapter);
 	netdev_err(adapter->netdev, "Reset adapter\n");
 	igc_reinit_locked(adapter);
 }
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index 164c42b39dfa..09c1a54372d8 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -17,6 +17,11 @@
 /* Internal Packet Buffer Size Registers */
 #define IGC_RXPBS		0x02404  /* Rx Packet Buffer Size - RW */
 #define IGC_TXPBS		0x03404  /* Tx Packet Buffer Size - RW */
+#define IGC_TDFH		0x03410  /* Tx Data FIFO Head - RW */
+#define IGC_TDFT		0x03418  /* Tx Data FIFO Tail - RW */
+#define IGC_TDFHS		0x03420  /* Tx Data FIFO Head Saved - RW */
+#define IGC_TDFTS		0x03428  /* Tx Data FIFO Tail Saved - RW */
+#define IGC_TDFPC		0x03430  /* Tx Data FIFO Packet Count - RW */
 
 /* NVM  Register Descriptions */
 #define IGC_EERD		0x12014  /* EEprom mode read - RW */
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
