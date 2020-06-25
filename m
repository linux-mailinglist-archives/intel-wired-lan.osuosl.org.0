Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB8A20A765
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jun 2020 23:25:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E9E47882AC;
	Thu, 25 Jun 2020 21:25:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QZpeXIa1uHA6; Thu, 25 Jun 2020 21:25:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 120D8882C7;
	Thu, 25 Jun 2020 21:25:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CC02A1BF599
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2020 21:25:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C6A29882AC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2020 21:25:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EK6IaJNg-NJA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jun 2020 21:25:29 +0000 (UTC)
X-Greylist: delayed 05:35:08 by SQLgrey-1.7.6
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 (mail-eopbgr130090.outbound.protection.outlook.com [40.107.13.90])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9D06B87FC3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2020 21:25:28 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PTVtz64cb+zXF0+pqqanGqh7w8pN+PzYRUaaGq0/NQdXv0AhiFa4pwKrDOdt6nOGPFXGlF7JmZDtrnVsY5mhqFzzDaZTOxzShgOCodKvqkNP6ETfpW+0uqvHDF/zJfOBEIeDmgxAYBIugboqPDcgWfDHtLQDnE6DVoq0oQ5t8RF3E7ELVSHTsAMwgsRISUBkLEa5342XsyHSP8H91ycLK995QMNEP96G2dpQfIRYWDmebxTBKzbPcMORdhECXVw/Zxlkw8JaGbOqUegNJDaFPMI51kgDYxw077TxdgrR9/TbZFpJkPGAH3m57ceoHRt0K1UGt7HsTIWimVJG4us9+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a/do91rKnCxl1MzExuDN4UhcI0IDWVy1qJj1MFx1bvY=;
 b=IdQlrRaKqsxP/L5BqIAedFhV25at7ZQSJd3AZtsYiwLkmDeKqEIQ3TONsQmBcuqQcJV4ajnZrB0NT66Shm0t49WHVgIOByhD4u1/h4nch5yxIopcl8vg9/vxWeWKAOSOOgT5nKOKaJ/z6pijd6C336NVmxsizmcB+3OIK9RzjdF4eTjHdwpdZWhnU2lHO3qYcmETuq1BA/UCL1iKK1noebe/53X/AnkZ8BtcX9HnT46Bjasl2BarMwfeyOwpP5ASUzIQBcaz2144wjnJgrsv9dW/CyrBeqflXeP2x35/fbAWXPAnAXte0Yu5JHhlE8u0Bg2I9dCc3ct9o+7v1VL6/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=voleatech.de; dmarc=pass action=none header.from=voleatech.de;
 dkim=pass header.d=voleatech.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=voleatech.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a/do91rKnCxl1MzExuDN4UhcI0IDWVy1qJj1MFx1bvY=;
 b=Efmz1CHiC1va4+mBE4Yg/cSHoVBQ9V2bruKWDbtBZ+W0twuWklomNF0P68GKu0xkBGGsUpbPu3jc6cbmlI/4aATkdyv4EUCdt6o0y4IxhXXWPc28YRUb2MzyY7WKymheLkvRvXuJE+IdXLlEvGliIVX/BCss7cgpE0UB5GQ2YVQ=
Authentication-Results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none;lists.osuosl.org; dmarc=none action=none
 header.from=voleatech.de;
Received: from AM4PR0501MB2785.eurprd05.prod.outlook.com
 (2603:10a6:200:5d::11) by AM4PR0501MB2195.eurprd05.prod.outlook.com
 (2603:10a6:200:47::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.21; Thu, 25 Jun
 2020 15:50:16 +0000
Received: from AM4PR0501MB2785.eurprd05.prod.outlook.com
 ([fe80::39a1:e237:5fef:6f39]) by AM4PR0501MB2785.eurprd05.prod.outlook.com
 ([fe80::39a1:e237:5fef:6f39%11]) with mapi id 15.20.3109.027; Thu, 25 Jun
 2020 15:50:16 +0000
Date: Thu, 25 Jun 2020 17:50:14 +0200
From: Sven Auhagen <sven.auhagen@voleatech.de>
To: intel-wired-lan@lists.osuosl.org
Message-ID: <20200625155014.6zwfoqqyhsvwu2gc@SvensMacBookAir.sven.lan>
Content-Disposition: inline
X-ClientProxiedBy: AM0PR02CA0015.eurprd02.prod.outlook.com
 (2603:10a6:208:3e::28) To AM4PR0501MB2785.eurprd05.prod.outlook.com
 (2603:10a6:200:5d::11)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from SvensMacBookAir.sven.lan (149.172.153.214) by
 AM0PR02CA0015.eurprd02.prod.outlook.com (2603:10a6:208:3e::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3131.21 via Frontend Transport; Thu, 25 Jun 2020 15:50:15 +0000
X-Originating-IP: [149.172.153.214]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a80e7d6c-7468-4e87-9fe2-08d8191f73f7
X-MS-TrafficTypeDiagnostic: AM4PR0501MB2195:
X-Microsoft-Antispam-PRVS: <AM4PR0501MB21957515B9FFA1166A160387EF920@AM4PR0501MB2195.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1303;
X-Forefront-PRVS: 0445A82F82
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wmdl7X2MERSHCdF/MAOPEGB7n00kkEwyYmXmRP7//rUn5EaopYcMdw6g0q8nzF70VZY8M45wuR7LCnvtjFWxKu4DHcrLMcSQ1BxxXtYETJ1j5NrCTlZkwrHKFWIcX/wR5Iy6QQTY8NGNC5DbEveP0LHai7ggGoWAZDiANEi9mhSPu733Z6ay7pIqnkNnoZVGMqE1BWEa2dSAuV0j48LXp0LUnhOPflD+jZleFUeFP0z2iJZ5AaSQlUntw35FL4Wjt412tU+qMwHMB0eTRTXAE0bk0jq0ofYllQYa5Bh64dTQlqTBlkWMdDPObCoahZNUKx220H1tlu4Q4sfZzf/FYkftg68D4oK+pyX0e/CnJDkJRgOwXeAwwRfk1XZZzdru
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM4PR0501MB2785.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(346002)(396003)(136003)(39830400003)(52116002)(7696005)(5660300002)(316002)(8936002)(44832011)(508600001)(55016002)(30864003)(83380400001)(1076003)(8676002)(9686003)(66946007)(66476007)(26005)(6916009)(186003)(2906002)(86362001)(66556008)(6506007)(956004)(16526019)(309714004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: ZN28nDC0gqNedRCXKsNwvwJVYe0eKEuses3gYadN0e5kENoNNq/qfTLP63985jq6LccQ4x1uRqvTR6KdoU5lQjF52/E9YbFWuSTe2lIMazLg2QHmYoKnA2U5tv1IVC5+6cQZStjluE0onYe/07vkmOQqrhCwYABo/Mv4FXxOz0jsUDuIJ/wp1PEUd3Au7bJwy/WhmNuzyUga9/eMFZzOPxTQRNzUdww8JvSRRfzPUO/SMXwSunob07R6SXXK58ZPNjKlaSROxe4sfnbYIDePkU2k7T6/jNDx9/CvAmFUOmqulhjtbzdtLiYiEe81gtLDAJXilI5IfrWUdjH1Sha7hywnM6yDiapAyjGr/pR4mqQybTptT7J79pwYlj6Ni8r3tAdbyvlhivfnNOoVEt1+nN/25BVS7skyh08IDbsiEjt804LO2sPIJyfGMt8GERc7ZE3N+hSCrwOfyzSDD4AKRmesdakPZ6dOOrYAvTL/stvTOwIuNZuQx61lbiYru+u7
X-OriginatorOrg: voleatech.de
X-MS-Exchange-CrossTenant-Network-Message-Id: a80e7d6c-7468-4e87-9fe2-08d8191f73f7
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2020 15:50:16.0770 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b82a99f6-7981-4a72-9534-4d35298f847b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TA0pVsGRLnNICdJI0vdqwZnd4VpSuKPmxwhPztnbPabQXOyvvtv79FQKoe+MhwxAjObl+vD9UxsOvUOPY7hAOsVNHyGR/jDx8L3aMKlqHhQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR0501MB2195
Subject: [Intel-wired-lan] [PATCH 1/1] igb: add XDP support
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

Add XDP support to the IGB driver.
The implementation follows the IXGBE XDP implementation
closely and I used the following patches as basis:

1. commit 924708081629 ("ixgbe: add XDP support for pass and drop actions")
2. commit 33fdc82f0883 ("ixgbe: add support for XDP_TX action")
3. commit ed93a3987128 ("ixgbe: tweak page counting for XDP_REDIRECT")

Due to the hardware constraints of the devices using the
IGB driver we must share the TX queues with XDP which
means locking the TX queue also for non XDP cases.
This comes with a small penalty ~5% in my tests.

I ran tests on an older device to get better numbers.
Test machine:

Intel(R) Atom(TM) CPU C2338 @ 1.74GHz (2 Cores)
2x Intel I211

Routing Original Driver Network Stack: 382 Kpps
Routing XDP Driver Network Stack: 364 Kpps

Routing XDP Redirect (xdp_fwd_kern): 1.48 Mpps
XDP Drop: 1.48 Mpps

Using XDP we can achieve line rate forwarding even on
on older Intel Atom CPU.

Signed-off-by: Sven Auhagen <sven.auhagen@voleatech.de>
---
 drivers/net/ethernet/intel/igb/igb.h         |  87 +++-
 drivers/net/ethernet/intel/igb/igb_ethtool.c |   8 +-
 drivers/net/ethernet/intel/igb/igb_main.c    | 471 +++++++++++++++++--
 3 files changed, 515 insertions(+), 51 deletions(-)

--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -19,6 +19,8 @@
 #include <linux/pci.h>
 #include <linux/mdio.h>
 
+#include <net/xdp.h>
+
 struct igb_adapter;
 
 #define E1000_PCS_CFG_IGN_SD	1
@@ -79,6 +81,12 @@
 #define IGB_I210_RX_LATENCY_100		2213
 #define IGB_I210_RX_LATENCY_1000	448
 
+/* XDP */
+#define IGB_XDP_PASS		0
+#define IGB_XDP_CONSUMED	BIT(0)
+#define IGB_XDP_TX		BIT(1)
+#define IGB_XDP_REDIR		BIT(2)
+
 struct vf_data_storage {
 	unsigned char vf_mac_addresses[ETH_ALEN];
 	u16 vf_mc_hashes[IGB_MAX_VF_MC_ENTRIES];
@@ -132,17 +140,62 @@
 
 /* Supported Rx Buffer Sizes */
 #define IGB_RXBUFFER_256	256
+#define IGB_RXBUFFER_1536	1536
 #define IGB_RXBUFFER_2048	2048
 #define IGB_RXBUFFER_3072	3072
 #define IGB_RX_HDR_LEN		IGB_RXBUFFER_256
 #define IGB_TS_HDR_LEN		16
 
-#define IGB_SKB_PAD		(NET_SKB_PAD + NET_IP_ALIGN)
+/* Attempt to maximize the headroom available for incoming frames.  We
+ * use a 2K buffer for receives and need 1536/1534 to store the data for
+ * the frame.  This leaves us with 512 bytes of room.  From that we need
+ * to deduct the space needed for the shared info and the padding needed
+ * to IP align the frame.
+ *
+ * Note: For cache line sizes 256 or larger this value is going to end
+ *	 up negative.  In these cases we should fall back to the 3K
+ *	 buffers.
+ */
 #if (PAGE_SIZE < 8192)
-#define IGB_MAX_FRAME_BUILD_SKB \
-	(SKB_WITH_OVERHEAD(IGB_RXBUFFER_2048) - IGB_SKB_PAD - IGB_TS_HDR_LEN)
+#define IGB_MAX_2K_FRAME_BUILD_SKB (IGB_RXBUFFER_1536 - NET_IP_ALIGN)
+#define IGB_2K_TOO_SMALL_WITH_PADDING \
+((NET_SKB_PAD + IGB_RXBUFFER_1536) > SKB_WITH_OVERHEAD(IGB_RXBUFFER_2048))
+
+static inline int igb_compute_pad(int rx_buf_len)
+{
+	int page_size, pad_size;
+
+	page_size = ALIGN(rx_buf_len, PAGE_SIZE / 2);
+	pad_size = SKB_WITH_OVERHEAD(page_size) - rx_buf_len;
+
+	return pad_size;
+}
+
+static inline int igb_skb_pad(void)
+{
+	int rx_buf_len;
+
+	/* If a 2K buffer cannot handle a standard Ethernet frame then
+	 * optimize padding for a 3K buffer instead of a 1.5K buffer.
+	 *
+	 * For a 3K buffer we need to add enough padding to allow for
+	 * tailroom due to NET_IP_ALIGN possibly shifting us out of
+	 * cache-line alignment.
+	 */
+	if (IGB_2K_TOO_SMALL_WITH_PADDING)
+		rx_buf_len = IGB_RXBUFFER_3072 + SKB_DATA_ALIGN(NET_IP_ALIGN);
+	else
+		rx_buf_len = IGB_RXBUFFER_1536;
+
+	/* if needed make room for NET_IP_ALIGN */
+	rx_buf_len -= NET_IP_ALIGN;
+
+	return igb_compute_pad(rx_buf_len);
+}
+
+#define IGB_SKB_PAD	igb_skb_pad()
 #else
-#define IGB_MAX_FRAME_BUILD_SKB (IGB_RXBUFFER_2048 - IGB_TS_HDR_LEN)
+#define IGB_SKB_PAD	(NET_SKB_PAD + NET_IP_ALIGN)
 #endif
 
 /* How many Rx Buffers do we bundle into one write to the hardware ? */
@@ -194,13 +247,22 @@
 #define IGB_SFF_ADDRESSING_MODE		0x4
 #define IGB_SFF_8472_UNSUP		0x00
 
+enum igb_tx_buf_type {
+	IGB_TYPE_SKB = 0,
+	IGB_TYPE_XDP,
+};
+
 /* wrapper around a pointer to a socket buffer,
  * so a DMA handle can be stored along with the buffer
  */
 struct igb_tx_buffer {
 	union e1000_adv_tx_desc *next_to_watch;
 	unsigned long time_stamp;
-	struct sk_buff *skb;
+	enum igb_tx_buf_type type;
+	union {
+		struct sk_buff *skb;
+		struct xdp_frame *xdpf;
+	};
 	unsigned int bytecount;
 	u16 gso_segs;
 	__be16 protocol;
@@ -248,6 +310,7 @@
 struct igb_ring {
 	struct igb_q_vector *q_vector;	/* backlink to q_vector */
 	struct net_device *netdev;	/* back pointer to net_device */
+	struct bpf_prog *xdp_prog;
 	struct device *dev;		/* device pointer for dma mapping */
 	union {				/* array of buffer info structs */
 		struct igb_tx_buffer *tx_buffer_info;
@@ -288,6 +351,9 @@
 			struct u64_stats_sync rx_syncp;
 		};
 	};
+	/* lock for TX */
+	spinlock_t tx_lock;
+	struct xdp_rxq_info xdp_rxq;
 } ____cacheline_internodealigned_in_smp;
 
 struct igb_q_vector {
@@ -339,7 +405,7 @@
 		return IGB_RXBUFFER_3072;
 
 	if (ring_uses_build_skb(ring))
-		return IGB_MAX_FRAME_BUILD_SKB + IGB_TS_HDR_LEN;
+		return IGB_MAX_2K_FRAME_BUILD_SKB;
 #endif
 	return IGB_RXBUFFER_2048;
 }
@@ -467,6 +533,7 @@
 	unsigned long active_vlans[BITS_TO_LONGS(VLAN_N_VID)];
 
 	struct net_device *netdev;
+	struct bpf_prog *xdp_prog;
 
 	unsigned long state;
 	unsigned int flags;
@@ -644,6 +711,9 @@
 extern char igb_driver_name[];
 extern char igb_driver_version[];
 
+int igb_xmit_xdp_ring(struct igb_adapter *adapter,
+		      struct igb_ring *ring,
+		      struct xdp_frame *xdpf);
 int igb_open(struct net_device *netdev);
 int igb_close(struct net_device *netdev);
 int igb_up(struct igb_adapter *);
@@ -654,7 +724,7 @@
 void igb_write_rss_indir_tbl(struct igb_adapter *);
 int igb_set_spd_dplx(struct igb_adapter *, u32, u8);
 int igb_setup_tx_resources(struct igb_ring *);
-int igb_setup_rx_resources(struct igb_ring *);
+int igb_setup_rx_resources(struct igb_ring *, struct igb_adapter *);
 void igb_free_tx_resources(struct igb_ring *);
 void igb_free_rx_resources(struct igb_ring *);
 void igb_configure_tx_ring(struct igb_adapter *, struct igb_ring *);
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -962,8 +962,12 @@
 			memcpy(&temp_ring[i], adapter->rx_ring[i],
 			       sizeof(struct igb_ring));
 
+			/* Clear copied XDP RX-queue info */
+			memset(&temp_ring[i].xdp_rxq, 0,
+			       sizeof(temp_ring[i].xdp_rxq));
+
 			temp_ring[i].count = new_rx_count;
-			err = igb_setup_rx_resources(&temp_ring[i]);
+			err = igb_setup_rx_resources(&temp_ring[i], adapter);
 			if (err) {
 				while (i) {
 					i--;
@@ -1578,7 +1582,7 @@
 	rx_ring->netdev = adapter->netdev;
 	rx_ring->reg_idx = adapter->vfs_allocated_count;
 
-	if (igb_setup_rx_resources(rx_ring)) {
+	if (igb_setup_rx_resources(rx_ring, adapter)) {
 		ret_val = 3;
 		goto err_nomem;
 	}
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -30,6 +30,8 @@
 #include <linux/if_ether.h>
 #include <linux/aer.h>
 #include <linux/prefetch.h>
+#include <linux/bpf.h>
+#include <linux/bpf_trace.h>
 #include <linux/pm_runtime.h>
 #include <linux/etherdevice.h>
 #ifdef CONFIG_IGB_DCA
@@ -2834,6 +2836,147 @@
 	}
 }
 
+static int igb_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
+{
+	int i, frame_size = dev->mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
+	struct igb_adapter *adapter = netdev_priv(dev);
+	struct bpf_prog *old_prog;
+	bool running = netif_running(dev);
+	bool need_reset;
+
+	/* verify igb ring attributes are sufficient for XDP */
+	for (i = 0; i < adapter->num_rx_queues; i++) {
+		struct igb_ring *ring = adapter->rx_ring[i];
+
+		if (frame_size > igb_rx_bufsz(ring))
+			return -EINVAL;
+	}
+
+	old_prog = xchg(&adapter->xdp_prog, prog);
+	need_reset = (!!prog != !!old_prog);
+
+	/* device is up and bpf is added/removed, must setup the RX queues */
+	if (need_reset && running) {
+		igb_close(dev);
+	} else {
+		for (i = 0; i < adapter->num_rx_queues; i++)
+			(void)xchg(&adapter->rx_ring[i]->xdp_prog,
+			    adapter->xdp_prog);
+	}
+
+	if (old_prog)
+		bpf_prog_put(old_prog);
+
+	/* bpf is just replaced, RXQ and MTU are already setup */
+	if (!need_reset)
+		return 0;
+
+	if (running)
+		igb_open(dev);
+
+	return 0;
+}
+
+static int igb_xdp(struct net_device *dev, struct netdev_bpf *xdp)
+{
+	struct igb_adapter *adapter = netdev_priv(dev);
+
+	switch (xdp->command) {
+	case XDP_SETUP_PROG:
+		return igb_xdp_setup(dev, xdp->prog);
+	case XDP_QUERY_PROG:
+		xdp->prog_id = adapter->xdp_prog ?
+			adapter->xdp_prog->aux->id : 0;
+		return 0;
+	default:
+		return -EINVAL;
+	}
+}
+
+void igb_xdp_ring_update_tail(struct igb_ring *ring)
+{
+	/* Force memory writes to complete before letting h/w know there
+	 * are new descriptors to fetch.
+	 */
+	wmb();
+	writel(ring->next_to_use, ring->tail);
+}
+
+static inline struct igb_ring *igb_xdp_tx_queue_mapping(struct igb_adapter *adapter)
+{
+	unsigned int r_idx = smp_processor_id();
+
+	if (r_idx >= adapter->num_tx_queues)
+		r_idx = r_idx % adapter->num_tx_queues;
+
+	return adapter->tx_ring[r_idx];
+}
+
+static int igb_xdp_xmit_back(struct igb_adapter *adapter, struct xdp_buff *xdp)
+{
+	struct igb_ring *tx_ring;
+	struct xdp_frame *xdpf = xdp_convert_buff_to_frame(xdp);
+	u32 ret;
+
+	if (unlikely(!xdpf))
+		return IGB_XDP_CONSUMED;
+
+	/* During program transitions its possible adapter->xdp_prog is assigned
+	 * but ring has not been configured yet. In this case simply abort xmit.
+	 */
+	tx_ring = adapter->xdp_prog ? igb_xdp_tx_queue_mapping(adapter) : NULL;
+	if (unlikely(!tx_ring))
+		return -ENXIO;
+
+	spin_lock(&tx_ring->tx_lock);
+	ret = igb_xmit_xdp_ring(adapter, tx_ring, xdpf);
+	spin_unlock(&tx_ring->tx_lock);
+
+	return ret;
+}
+
+static int igb_xdp_xmit(struct net_device *dev, int n,
+			struct xdp_frame **frames, u32 flags)
+{
+	struct igb_adapter *adapter = netdev_priv(dev);
+	struct igb_ring *tx_ring;
+	int drops = 0;
+	int i;
+
+	if (unlikely(test_bit(__IGB_DOWN, &adapter->state)))
+		return -ENETDOWN;
+
+	if (unlikely(flags & ~XDP_XMIT_FLAGS_MASK))
+		return -EINVAL;
+
+	/* During program transitions its possible adapter->xdp_prog is assigned
+	 * but ring has not been configured yet. In this case simply abort xmit.
+	 */
+	tx_ring = adapter->xdp_prog ? igb_xdp_tx_queue_mapping(adapter) : NULL;
+	if (unlikely(!tx_ring))
+		return -ENXIO;
+
+	spin_lock(&tx_ring->tx_lock);
+
+	for (i = 0; i < n; i++) {
+		struct xdp_frame *xdpf = frames[i];
+		int err;
+
+		err = igb_xmit_xdp_ring(adapter, tx_ring, xdpf);
+		if (err != IGB_XDP_TX) {
+			xdp_return_frame_rx_napi(xdpf);
+			drops++;
+		}
+	}
+
+	spin_unlock(&tx_ring->tx_lock);
+
+	if (unlikely(flags & XDP_XMIT_FLUSH))
+		igb_xdp_ring_update_tail(tx_ring);
+
+	return n - drops;
+}
+
 static const struct net_device_ops igb_netdev_ops = {
 	.ndo_open		= igb_open,
 	.ndo_stop		= igb_close,
@@ -2858,6 +3001,8 @@
 	.ndo_fdb_add		= igb_ndo_fdb_add,
 	.ndo_features_check	= igb_features_check,
 	.ndo_setup_tc		= igb_setup_tc,
+	.ndo_bpf		= igb_xdp,
+	.ndo_xdp_xmit		= igb_xdp_xmit,
 };
 
 /**
@@ -4060,6 +4205,8 @@
 	tx_ring->next_to_use = 0;
 	tx_ring->next_to_clean = 0;
 
+	spin_lock_init(&tx_ring->tx_lock);
+
 	return 0;
 
 err:
@@ -4186,7 +4333,7 @@
  *
  *  Returns 0 on success, negative on failure
  **/
-int igb_setup_rx_resources(struct igb_ring *rx_ring)
+int igb_setup_rx_resources(struct igb_ring *rx_ring, struct igb_adapter *adapter)
 {
 	struct device *dev = rx_ring->dev;
 	int size;
@@ -4210,6 +4357,13 @@
 	rx_ring->next_to_clean = 0;
 	rx_ring->next_to_use = 0;
 
+	rx_ring->xdp_prog = adapter->xdp_prog;
+
+	/* XDP RX-queue info */
+	if (xdp_rxq_info_reg(&rx_ring->xdp_rxq, adapter->netdev,
+			     rx_ring->queue_index) < 0)
+		goto err;
+
 	return 0;
 
 err:
@@ -4232,7 +4386,7 @@
 	int i, err = 0;
 
 	for (i = 0; i < adapter->num_rx_queues; i++) {
-		err = igb_setup_rx_resources(adapter->rx_ring[i]);
+		err = igb_setup_rx_resources(adapter->rx_ring[i], adapter);
 		if (err) {
 			dev_err(&pdev->dev,
 				"Allocation for Rx Queue %u failed\n", i);
@@ -4514,6 +4668,10 @@
 	int reg_idx = ring->reg_idx;
 	u32 rxdctl = 0;
 
+	xdp_rxq_info_unreg_mem_model(&ring->xdp_rxq);
+	WARN_ON(xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
+					   MEM_TYPE_PAGE_SHARED, NULL));
+
 	/* disable the queue */
 	wr32(E1000_RXDCTL(reg_idx), 0);
 
@@ -4565,7 +4723,7 @@
 	set_ring_build_skb_enabled(rx_ring);
 
 #if (PAGE_SIZE < 8192)
-	if (adapter->max_frame_size <= IGB_MAX_FRAME_BUILD_SKB)
+	if (adapter->max_frame_size <= IGB_MAX_2K_FRAME_BUILD_SKB)
 		return;
 
 	set_ring_uses_large_buffer(rx_ring);
@@ -4718,6 +4876,8 @@
 {
 	igb_clean_rx_ring(rx_ring);
 
+	rx_ring->xdp_prog = NULL;
+	xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
 	vfree(rx_ring->rx_buffer_info);
 	rx_ring->rx_buffer_info = NULL;
 
@@ -5063,8 +5223,8 @@
 
 #if (PAGE_SIZE < 8192)
 	if (!adapter->vfs_allocated_count) {
-		if (adapter->max_frame_size <= IGB_MAX_FRAME_BUILD_SKB)
-			rlpml = IGB_MAX_FRAME_BUILD_SKB;
+		if (adapter->max_frame_size <= IGB_MAX_2K_FRAME_BUILD_SKB)
+			rlpml = IGB_MAX_2K_FRAME_BUILD_SKB;
 	}
 #endif
 	wr32(E1000_RLPML, rlpml);
@@ -5086,8 +5246,8 @@
 	/* enable Rx jumbo frames, restrict as needed to support build_skb */
 	vmolr &= ~E1000_VMOLR_RLPML_MASK;
 #if (PAGE_SIZE < 8192)
-	if (adapter->max_frame_size <= IGB_MAX_FRAME_BUILD_SKB)
-		vmolr |= IGB_MAX_FRAME_BUILD_SKB;
+	if (adapter->max_frame_size <= IGB_MAX_2K_FRAME_BUILD_SKB)
+		vmolr |= IGB_MAX_2K_FRAME_BUILD_SKB;
 	else
 #endif
 		vmolr |= MAX_JUMBO_FRAME_SIZE;
@@ -6087,6 +6247,80 @@
 	return -1;
 }
 
+int igb_xmit_xdp_ring(struct igb_adapter *adapter,
+		      struct igb_ring *tx_ring,
+		      struct xdp_frame *xdpf)
+{
+	struct igb_tx_buffer *tx_buffer;
+	union e1000_adv_tx_desc *tx_desc;
+	u32 len, cmd_type, olinfo_status;
+	dma_addr_t dma;
+	u16 i;
+
+	len = xdpf->len;
+
+	if (unlikely(!igb_desc_unused(tx_ring)))
+		return IGB_XDP_CONSUMED;
+
+	dma = dma_map_single(tx_ring->dev, xdpf->data, len, DMA_TO_DEVICE);
+	if (dma_mapping_error(tx_ring->dev, dma))
+		return IGB_XDP_CONSUMED;
+
+	/* record the location of the first descriptor for this packet */
+	tx_buffer = &tx_ring->tx_buffer_info[tx_ring->next_to_use];
+	tx_buffer->bytecount = len;
+	tx_buffer->gso_segs = 1;
+	tx_buffer->protocol = 0;
+
+	i = tx_ring->next_to_use;
+	tx_desc = IGB_TX_DESC(tx_ring, i);
+
+	dma_unmap_len_set(tx_buffer, len, len);
+	dma_unmap_addr_set(tx_buffer, dma, dma);
+	tx_buffer->type = IGB_TYPE_XDP;
+	tx_buffer->xdpf = xdpf;
+
+	tx_desc->read.buffer_addr = cpu_to_le64(dma);
+
+	/* put descriptor type bits */
+	cmd_type = E1000_ADVTXD_DTYP_DATA |
+		       E1000_ADVTXD_DCMD_DEXT |
+		       E1000_ADVTXD_DCMD_IFCS;
+	cmd_type |= len | IGB_TXD_DCMD;
+	tx_desc->read.cmd_type_len = cpu_to_le32(cmd_type);
+
+	olinfo_status = cpu_to_le32(len << E1000_ADVTXD_PAYLEN_SHIFT);
+	/* 82575 requires a unique index per ring */
+	if (test_bit(IGB_RING_FLAG_TX_CTX_IDX, &tx_ring->flags))
+		olinfo_status |= tx_ring->reg_idx << 4;
+
+	tx_desc->read.olinfo_status = olinfo_status;
+
+	netdev_tx_sent_queue(txring_txq(tx_ring), tx_buffer->bytecount);
+
+	/* set the timestamp */
+	tx_buffer->time_stamp = jiffies;
+
+	/* Avoid any potential race with xdp_xmit and cleanup */
+	smp_wmb();
+
+	/* set next_to_watch value indicating a packet is present */
+	i++;
+	if (i == tx_ring->count)
+		i = 0;
+
+	tx_buffer->next_to_watch = tx_desc;
+	tx_ring->next_to_use = i;
+
+	/* Make sure there is space in the ring for the next send. */
+	igb_maybe_stop_tx(tx_ring, DESC_NEEDED);
+
+	if (netif_xmit_stopped(txring_txq(tx_ring)) || !netdev_xmit_more())
+		writel(i, tx_ring->tail);
+
+	return IGB_XDP_TX;
+}
+
 netdev_tx_t igb_xmit_frame_ring(struct sk_buff *skb,
 				struct igb_ring *tx_ring)
 {
@@ -6098,6 +6332,8 @@
 	__be16 protocol = vlan_get_protocol(skb);
 	u8 hdr_len = 0;
 
+	spin_lock_bh(&tx_ring->tx_lock);
+
 	/* need: 1 descriptor per page * PAGE_SIZE/IGB_MAX_DATA_PER_TXD,
 	 *       + 1 desc for skb_headlen/IGB_MAX_DATA_PER_TXD,
 	 *       + 2 desc gap to keep tail from touching head,
@@ -6110,11 +6346,13 @@
 
 	if (igb_maybe_stop_tx(tx_ring, count + 3)) {
 		/* this is a hard error */
+		spin_unlock_bh(&tx_ring->tx_lock);
 		return NETDEV_TX_BUSY;
 	}
 
 	/* record the location of the first descriptor for this packet */
 	first = &tx_ring->tx_buffer_info[tx_ring->next_to_use];
+	first->type = IGB_TYPE_SKB;
 	first->skb = skb;
 	first->bytecount = skb->len;
 	first->gso_segs = 1;
@@ -6155,6 +6393,8 @@
 	if (igb_tx_map(tx_ring, first, hdr_len))
 		goto cleanup_tx_tstamp;
 
+	spin_unlock_bh(&tx_ring->tx_lock);
+
 	return NETDEV_TX_OK;
 
 out_drop:
@@ -6171,6 +6411,8 @@
 		clear_bit_unlock(__IGB_PTP_TX_IN_PROGRESS, &adapter->state);
 	}
 
+	spin_unlock_bh(&tx_ring->tx_lock);
+
 	return NETDEV_TX_OK;
 }
 
@@ -6257,6 +6499,21 @@
 	struct igb_adapter *adapter = netdev_priv(netdev);
 	int max_frame = new_mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
 
+	if (adapter->xdp_prog) {
+		int new_frame_size = new_mtu + ETH_HLEN + ETH_FCS_LEN +
+				     VLAN_HLEN;
+		int i;
+
+		for (i = 0; i < adapter->num_rx_queues; i++) {
+			struct igb_ring *ring = adapter->rx_ring[i];
+
+			if (new_frame_size > igb_rx_bufsz(ring)) {
+				netdev_warn(adapter->netdev, "Requested MTU size is not supported with XDP\n");
+				return -EINVAL;
+			}
+		}
+	}
+
 	/* adjust max frame to be at least the size of a standard frame */
 	if (max_frame < (ETH_FRAME_LEN + ETH_FCS_LEN))
 		max_frame = ETH_FRAME_LEN + ETH_FCS_LEN;
@@ -7784,6 +8041,8 @@
 	if (test_bit(__IGB_DOWN, &adapter->state))
 		return true;
 
+	spin_lock(&tx_ring->tx_lock);
+
 	tx_buffer = &tx_ring->tx_buffer_info[i];
 	tx_desc = IGB_TX_DESC(tx_ring, i);
 	i -= tx_ring->count;
@@ -7810,7 +8069,10 @@
 		total_packets += tx_buffer->gso_segs;
 
 		/* free the skb */
-		napi_consume_skb(tx_buffer->skb, napi_budget);
+		if (tx_buffer->type == IGB_TYPE_XDP)
+			xdp_return_frame(tx_buffer->xdpf);
+		else
+			napi_consume_skb(tx_buffer->skb, napi_budget);
 
 		/* unmap skb header data */
 		dma_unmap_single(tx_ring->dev,
@@ -7863,6 +8125,9 @@
 				  total_packets, total_bytes);
 	i += tx_ring->count;
 	tx_ring->next_to_clean = i;
+
+	spin_unlock(&tx_ring->tx_lock);
+
 	u64_stats_update_begin(&tx_ring->tx_syncp);
 	tx_ring->tx_stats.bytes += total_bytes;
 	tx_ring->tx_stats.packets += total_packets;
@@ -7994,8 +8259,8 @@
 	 * the pagecnt_bias and page count so that we fully restock the
 	 * number of references the driver holds.
 	 */
-	if (unlikely(!pagecnt_bias)) {
-		page_ref_add(page, USHRT_MAX);
+	if (unlikely(pagecnt_bias == 1)) {
+		page_ref_add(page, USHRT_MAX - 1);
 		rx_buffer->pagecnt_bias = USHRT_MAX;
 	}
 
@@ -8034,22 +8299,23 @@
 
 static struct sk_buff *igb_construct_skb(struct igb_ring *rx_ring,
 					 struct igb_rx_buffer *rx_buffer,
-					 union e1000_adv_rx_desc *rx_desc,
-					 unsigned int size)
+					 struct xdp_buff *xdp,
+					 union e1000_adv_rx_desc *rx_desc)
 {
-	void *va = page_address(rx_buffer->page) + rx_buffer->page_offset;
+	unsigned int size = xdp->data_end - xdp->data;
 #if (PAGE_SIZE < 8192)
 	unsigned int truesize = igb_rx_pg_size(rx_ring) / 2;
 #else
-	unsigned int truesize = SKB_DATA_ALIGN(size);
+	unsigned int truesize = SKB_DATA_ALIGN(xdp->data_end -
+					       xdp->data_hard_start);
 #endif
 	unsigned int headlen;
 	struct sk_buff *skb;
 
 	/* prefetch first cache line of first page */
-	prefetch(va);
+	prefetch(xdp->data);
 #if L1_CACHE_BYTES < 128
-	prefetch(va + L1_CACHE_BYTES);
+	prefetch(xdp->data + L1_CACHE_BYTES);
 #endif
 
 	/* allocate a skb to store the frags */
@@ -8058,24 +8324,24 @@
 		return NULL;
 
 	if (unlikely(igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TSIP))) {
-		igb_ptp_rx_pktstamp(rx_ring->q_vector, va, skb);
-		va += IGB_TS_HDR_LEN;
+		igb_ptp_rx_pktstamp(rx_ring->q_vector, xdp->data, skb);
+		xdp->data += IGB_TS_HDR_LEN;
 		size -= IGB_TS_HDR_LEN;
 	}
 
 	/* Determine available headroom for copy */
 	headlen = size;
 	if (headlen > IGB_RX_HDR_LEN)
-		headlen = eth_get_headlen(skb->dev, va, IGB_RX_HDR_LEN);
+		headlen = eth_get_headlen(skb->dev, xdp->data, IGB_RX_HDR_LEN);
 
 	/* align pull length to size of long to optimize memcpy performance */
-	memcpy(__skb_put(skb, headlen), va, ALIGN(headlen, sizeof(long)));
+	memcpy(__skb_put(skb, headlen), xdp->data, ALIGN(headlen, sizeof(long)));
 
 	/* update all of the pointers */
 	size -= headlen;
 	if (size) {
 		skb_add_rx_frag(skb, 0, rx_buffer->page,
-				(va + headlen) - page_address(rx_buffer->page),
+				(xdp->data + headlen) - page_address(rx_buffer->page),
 				size, truesize);
 #if (PAGE_SIZE < 8192)
 		rx_buffer->page_offset ^= truesize;
@@ -8091,32 +8357,32 @@
 
 static struct sk_buff *igb_build_skb(struct igb_ring *rx_ring,
 				     struct igb_rx_buffer *rx_buffer,
-				     union e1000_adv_rx_desc *rx_desc,
-				     unsigned int size)
+				     struct xdp_buff *xdp,
+				     union e1000_adv_rx_desc *rx_desc)
 {
-	void *va = page_address(rx_buffer->page) + rx_buffer->page_offset;
 #if (PAGE_SIZE < 8192)
 	unsigned int truesize = igb_rx_pg_size(rx_ring) / 2;
 #else
 	unsigned int truesize = SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) +
-				SKB_DATA_ALIGN(IGB_SKB_PAD + size);
+				SKB_DATA_ALIGN(xdp->data_end -
+					       xdp->data_hard_start);
 #endif
 	struct sk_buff *skb;
 
 	/* prefetch first cache line of first page */
-	prefetch(va);
+	prefetch(xdp->data_meta);
 #if L1_CACHE_BYTES < 128
-	prefetch(va + L1_CACHE_BYTES);
+	prefetch(xdp->data_meta + L1_CACHE_BYTES);
 #endif
 
 	/* build an skb around the page buffer */
-	skb = build_skb(va - IGB_SKB_PAD, truesize);
+	skb = build_skb(xdp->data_hard_start, truesize);
 	if (unlikely(!skb))
 		return NULL;
 
 	/* update pointers within the skb to store the data */
-	skb_reserve(skb, IGB_SKB_PAD);
-	__skb_put(skb, size);
+	skb_reserve(skb, xdp->data - xdp->data_hard_start);
+	__skb_put(skb, xdp->data_end - xdp->data);
 
 	/* pull timestamp out of packet data */
 	if (igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TSIP)) {
@@ -8134,6 +8400,79 @@
 	return skb;
 }
 
+static struct sk_buff *igb_run_xdp(struct igb_adapter *adapter,
+				   struct igb_ring *rx_ring,
+				   struct xdp_buff *xdp)
+{
+	int err, result = IGB_XDP_PASS;
+	struct bpf_prog *xdp_prog;
+	u32 act;
+
+	rcu_read_lock();
+	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
+
+	if (!xdp_prog)
+		goto xdp_out;
+
+	prefetchw(xdp->data_hard_start); /* xdp_frame write */
+
+	act = bpf_prog_run_xdp(xdp_prog, xdp);
+	switch (act) {
+	case XDP_PASS:
+		break;
+	case XDP_TX:
+		result = igb_xdp_xmit_back(adapter, xdp);
+		break;
+	case XDP_REDIRECT:
+		err = xdp_do_redirect(adapter->netdev, xdp, xdp_prog);
+		if (!err)
+			result = IGB_XDP_REDIR;
+		else
+			result = IGB_XDP_CONSUMED;
+		break;
+	default:
+		bpf_warn_invalid_xdp_action(act);
+		/* fallthrough */
+	case XDP_ABORTED:
+		trace_xdp_exception(rx_ring->netdev, xdp_prog, act);
+		/* fallthrough -- handle aborts by dropping packet */
+	case XDP_DROP:
+		result = IGB_XDP_CONSUMED;
+		break;
+	}
+xdp_out:
+	rcu_read_unlock();
+	return ERR_PTR(-result);
+}
+
+static unsigned int igb_rx_frame_truesize(struct igb_ring *rx_ring,
+					  unsigned int size)
+{
+	unsigned int truesize;
+
+#if (PAGE_SIZE < 8192)
+	truesize = igb_rx_pg_size(rx_ring) / 2; /* Must be power-of-2 */
+#else
+	truesize = ring_uses_build_skb(rx_ring) ?
+		SKB_DATA_ALIGN(IGB_SKB_PAD + size) +
+		SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) :
+		SKB_DATA_ALIGN(size);
+#endif
+	return truesize;
+}
+
+static void igb_rx_buffer_flip(struct igb_ring *rx_ring,
+			       struct igb_rx_buffer *rx_buffer,
+			       unsigned int size)
+{
+	unsigned int truesize = igb_rx_frame_truesize(rx_ring, size);
+#if (PAGE_SIZE < 8192)
+	rx_buffer->page_offset ^= truesize;
+#else
+	rx_buffer->page_offset += truesize;
+#endif
+}
+
 static inline void igb_rx_checksum(struct igb_ring *ring,
 				   union e1000_adv_rx_desc *rx_desc,
 				   struct sk_buff *skb)
@@ -8230,6 +8569,10 @@
 				union e1000_adv_rx_desc *rx_desc,
 				struct sk_buff *skb)
 {
+	/* XDP packets use error pointer so abort at this point */
+	if (IS_ERR(skb))
+		return true;
+
 	if (unlikely((igb_test_staterr(rx_desc,
 				       E1000_RXDEXT_ERR_FRAME_ERR_MASK)))) {
 		struct net_device *netdev = rx_ring->netdev;
@@ -8288,6 +8631,11 @@
 	skb->protocol = eth_type_trans(skb, rx_ring->netdev);
 }
 
+static inline unsigned int igb_rx_offset(struct igb_ring *rx_ring)
+{
+	return ring_uses_build_skb(rx_ring) ? IGB_SKB_PAD : 0;
+}
+
 static struct igb_rx_buffer *igb_get_rx_buffer(struct igb_ring *rx_ring,
 					       const unsigned int size)
 {
@@ -8332,9 +8680,19 @@
 static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
 {
 	struct igb_ring *rx_ring = q_vector->rx.ring;
+	struct igb_adapter *adapter = q_vector->adapter;
 	struct sk_buff *skb = rx_ring->skb;
 	unsigned int total_bytes = 0, total_packets = 0;
+	unsigned int xdp_xmit = 0;
 	u16 cleaned_count = igb_desc_unused(rx_ring);
+	struct xdp_buff xdp;
+
+	xdp.rxq = &rx_ring->xdp_rxq;
+
+	/* Frame size depend on rx_ring setup when PAGE_SIZE=4K */
+#if (PAGE_SIZE < 8192)
+	xdp.frame_sz = igb_rx_frame_truesize(rx_ring, 0);
+#endif
 
 	while (likely(total_packets < budget)) {
 		union e1000_adv_rx_desc *rx_desc;
@@ -8361,13 +8719,38 @@
 		rx_buffer = igb_get_rx_buffer(rx_ring, size);
 
 		/* retrieve a buffer from the ring */
-		if (skb)
+		if (!skb) {
+			xdp.data = page_address(rx_buffer->page) +
+				   rx_buffer->page_offset;
+			xdp.data_meta = xdp.data;
+			xdp.data_hard_start = xdp.data -
+					      igb_rx_offset(rx_ring);
+			xdp.data_end = xdp.data + size;
+#if (PAGE_SIZE > 4096)
+			/* At larger PAGE_SIZE, frame_sz depend on len size */
+			xdp.frame_sz = igb_rx_frame_truesize(rx_ring, size);
+#endif
+			skb = igb_run_xdp(adapter, rx_ring, &xdp);
+		}
+
+		if (IS_ERR(skb)) {
+			unsigned int xdp_res = -PTR_ERR(skb);
+
+			if (xdp_res & (IGB_XDP_TX | IGB_XDP_REDIR)) {
+				xdp_xmit |= xdp_res;
+				igb_rx_buffer_flip(rx_ring, rx_buffer, size);
+			} else {
+				rx_buffer->pagecnt_bias++;
+			}
+			total_packets++;
+			total_bytes += size;
+		} else if (skb)
 			igb_add_rx_frag(rx_ring, rx_buffer, skb, size);
 		else if (ring_uses_build_skb(rx_ring))
-			skb = igb_build_skb(rx_ring, rx_buffer, rx_desc, size);
+			skb = igb_build_skb(rx_ring, rx_buffer, &xdp, rx_desc);
 		else
 			skb = igb_construct_skb(rx_ring, rx_buffer,
-						rx_desc, size);
+						&xdp, rx_desc);
 
 		/* exit if we failed to retrieve a buffer */
 		if (!skb) {
@@ -8407,6 +8790,15 @@
 	/* place incomplete frames back on ring for completion */
 	rx_ring->skb = skb;
 
+	if (xdp_xmit & IGB_XDP_REDIR)
+		xdp_do_flush_map();
+
+	if (xdp_xmit & IGB_XDP_TX) {
+		struct igb_ring *tx_ring = igb_xdp_tx_queue_mapping(adapter);
+
+		igb_xdp_ring_update_tail(tx_ring);
+	}
+
 	u64_stats_update_begin(&rx_ring->rx_syncp);
 	rx_ring->rx_stats.packets += total_packets;
 	rx_ring->rx_stats.bytes += total_bytes;
@@ -8420,11 +8812,6 @@
 	return total_packets;
 }
 
-static inline unsigned int igb_rx_offset(struct igb_ring *rx_ring)
-{
-	return ring_uses_build_skb(rx_ring) ? IGB_SKB_PAD : 0;
-}
-
 static bool igb_alloc_mapped_page(struct igb_ring *rx_ring,
 				  struct igb_rx_buffer *bi)
 {
@@ -8461,7 +8848,8 @@
 	bi->dma = dma;
 	bi->page = page;
 	bi->page_offset = igb_rx_offset(rx_ring);
-	bi->pagecnt_bias = 1;
+	page_ref_add(page, USHRT_MAX - 1);
+	bi->pagecnt_bias = USHRT_MAX;
 
 	return true;
 }
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
