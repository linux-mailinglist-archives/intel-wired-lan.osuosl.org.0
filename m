Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D39CC3A38ED
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Jun 2021 02:40:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5164F40522;
	Fri, 11 Jun 2021 00:40:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HXlRTLFIQSy3; Fri, 11 Jun 2021 00:40:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1024B4043D;
	Fri, 11 Jun 2021 00:40:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C566C1C1178
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jun 2021 00:40:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B46E3401EF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jun 2021 00:40:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nM6gqiz5NlXN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Jun 2021 00:40:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BAEAD401B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jun 2021 00:40:16 +0000 (UTC)
IronPort-SDR: wlhSsOpBcg2SXSYDh2EU22sI8hFlCcn9dBwtz1t65XaNyRpEmIsNzF8xbko3ci+jHwtgdsgczP
 MF3JKNgzcBcg==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="205397133"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="205397133"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 17:40:15 -0700
IronPort-SDR: e5BL6WxWto9xk5aDJqcVQhMWUkoHgoy8jWi250EivGUn9NuhiBOAytk9GmMBiQj3Q/OF2Hs9pC
 13rLO2OXbt7A==
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="448932903"
Received: from caclark-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.212.156.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 17:40:12 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 10 Jun 2021 17:39:20 -0700
Message-Id: <20210611003924.492853-2-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210611003924.492853-1-vinicius.gomes@intel.com>
References: <20210611003924.492853-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH next-queue v1 1/5] igc: Add possibility to
 add flex filter
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
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Kurt Kanzenbach <kurt@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Kurt Kanzenbach <kurt@linutronix.de>

The Intel i225 NIC has the possibility to add flex filters which can
match up to the first 128 byte of a packet. These filters are useful
for all kind of packet matching. One particular use case is Profinet,
as the different traffic classes are distinguished by the frame id
range which cannot be matched by any other means.

Add code to configure and enable flex filters.

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
Reviewed-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  13 ++
 drivers/net/ethernet/intel/igc/igc_defines.h |  48 ++++++-
 drivers/net/ethernet/intel/igc/igc_main.c    | 134 +++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_regs.h    |  17 +++
 4 files changed, 207 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 5901ed9fb545..6016c132d981 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -33,6 +33,8 @@ void igc_ethtool_set_ops(struct net_device *);
 #define IGC_N_PEROUT	2
 #define IGC_N_SDP	4
 
+#define MAX_FLEX_FILTER			32
+
 enum igc_mac_filter_type {
 	IGC_MAC_FILTER_TYPE_DST = 0,
 	IGC_MAC_FILTER_TYPE_SRC
@@ -502,6 +504,17 @@ struct igc_nfc_rule {
  */
 #define IGC_MAX_RXNFC_RULES		32
 
+struct igc_flex_filter {
+	u8 index;
+	u8 data[128];
+	u8 mask[16];
+	u8 length;
+	u8 rx_queue;
+	u8 prio;
+	u8 immediate_irq;
+	u8 drop;
+};
+
 /* igc_desc_unused - calculate if we have unused descriptors */
 static inline u16 igc_desc_unused(const struct igc_ring *ring)
 {
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 71fe5b5ad2ed..0a29d9eca634 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -17,11 +17,20 @@
 #define IGC_WUC_PME_EN	0x00000002 /* PME Enable */
 
 /* Wake Up Filter Control */
-#define IGC_WUFC_LNKC	0x00000001 /* Link Status Change Wakeup Enable */
-#define IGC_WUFC_MAG	0x00000002 /* Magic Packet Wakeup Enable */
-#define IGC_WUFC_EX	0x00000004 /* Directed Exact Wakeup Enable */
-#define IGC_WUFC_MC	0x00000008 /* Directed Multicast Wakeup Enable */
-#define IGC_WUFC_BC	0x00000010 /* Broadcast Wakeup Enable */
+#define IGC_WUFC_LNKC		0x00000001 /* Link Status Change Wakeup Enable */
+#define IGC_WUFC_MAG		0x00000002 /* Magic Packet Wakeup Enable */
+#define IGC_WUFC_EX		0x00000004 /* Directed Exact Wakeup Enable */
+#define IGC_WUFC_MC		0x00000008 /* Directed Multicast Wakeup Enable */
+#define IGC_WUFC_BC		0x00000010 /* Broadcast Wakeup Enable */
+#define IGC_WUFC_FLEX_HQ	BIT(14)	   /* Flex Filters Host Queuing */
+#define IGC_WUFC_FLX0		BIT(16)	   /* Flexible Filter 0 Enable */
+#define IGC_WUFC_FLX1		BIT(17)	   /* Flexible Filter 1 Enable */
+#define IGC_WUFC_FLX2		BIT(18)	   /* Flexible Filter 2 Enable */
+#define IGC_WUFC_FLX3		BIT(19)	   /* Flexible Filter 3 Enable */
+#define IGC_WUFC_FLX4		BIT(20)	   /* Flexible Filter 4 Enable */
+#define IGC_WUFC_FLX5		BIT(21)	   /* Flexible Filter 5 Enable */
+#define IGC_WUFC_FLX6		BIT(22)	   /* Flexible Filter 6 Enable */
+#define IGC_WUFC_FLX7		BIT(23)	   /* Flexible Filter 7 Enable */
 
 #define IGC_CTRL_ADVD3WUC	0x00100000  /* D3 WUC */
 
@@ -46,6 +55,35 @@
 /* Wake Up Packet Memory stores the first 128 bytes of the wake up packet */
 #define IGC_WUPM_BYTES	128
 
+/* Wakeup Filter Control Extended */
+#define IGC_WUFC_EXT_FLX8	BIT(8)	/* Flexible Filter 8 Enable */
+#define IGC_WUFC_EXT_FLX9	BIT(9)	/* Flexible Filter 9 Enable */
+#define IGC_WUFC_EXT_FLX10	BIT(10) /* Flexible Filter 10 Enable */
+#define IGC_WUFC_EXT_FLX11	BIT(11)	/* Flexible Filter 11 Enable */
+#define IGC_WUFC_EXT_FLX12	BIT(12)	/* Flexible Filter 12 Enable */
+#define IGC_WUFC_EXT_FLX13	BIT(13)	/* Flexible Filter 13 Enable */
+#define IGC_WUFC_EXT_FLX14	BIT(14)	/* Flexible Filter 14 Enable */
+#define IGC_WUFC_EXT_FLX15	BIT(15)	/* Flexible Filter 15 Enable */
+#define IGC_WUFC_EXT_FLX16	BIT(16)	/* Flexible Filter 16 Enable */
+#define IGC_WUFC_EXT_FLX17	BIT(17)	/* Flexible Filter 17 Enable */
+#define IGC_WUFC_EXT_FLX18	BIT(18)	/* Flexible Filter 18 Enable */
+#define IGC_WUFC_EXT_FLX19	BIT(19)	/* Flexible Filter 19 Enable */
+#define IGC_WUFC_EXT_FLX20	BIT(20)	/* Flexible Filter 20 Enable */
+#define IGC_WUFC_EXT_FLX21	BIT(21)	/* Flexible Filter 21 Enable */
+#define IGC_WUFC_EXT_FLX22	BIT(22)	/* Flexible Filter 22 Enable */
+#define IGC_WUFC_EXT_FLX23	BIT(23)	/* Flexible Filter 23 Enable */
+#define IGC_WUFC_EXT_FLX24	BIT(24)	/* Flexible Filter 24 Enable */
+#define IGC_WUFC_EXT_FLX25	BIT(25)	/* Flexible Filter 25 Enable */
+#define IGC_WUFC_EXT_FLX26	BIT(26)	/* Flexible Filter 26 Enable */
+#define IGC_WUFC_EXT_FLX27	BIT(27)	/* Flexible Filter 27 Enable */
+#define IGC_WUFC_EXT_FLX28	BIT(28)	/* Flexible Filter 28 Enable */
+#define IGC_WUFC_EXT_FLX29	BIT(29)	/* Flexible Filter 29 Enable */
+#define IGC_WUFC_EXT_FLX30	BIT(30)	/* Flexible Filter 30 Enable */
+#define IGC_WUFC_EXT_FLX31	BIT(31)	/* Flexible Filter 31 Enable */
+
+/* Physical Func Reset Done Indication */
+#define IGC_CTRL_EXT_LINK_MODE_MASK	0x00C00000
+
 /* Loop limit on how long we wait for auto-negotiation to complete */
 #define COPPER_LINK_UP_LIMIT		10
 #define PHY_AUTO_NEG_LIMIT		45
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index ff3c7bc1f0ef..f1e128be475c 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3079,6 +3079,140 @@ static void igc_del_etype_filter(struct igc_adapter *adapter, u16 etype)
 		   etype);
 }
 
+static int igc_flex_filter_select(struct igc_adapter *adapter,
+				  struct igc_flex_filter *input,
+				  u32 *fhft)
+{
+	struct igc_hw *hw = &adapter->hw;
+	u8 fhft_index;
+	u32 fhftsl;
+
+	if (input->index >= MAX_FLEX_FILTER) {
+		dev_err(&adapter->pdev->dev, "Wrong Flex Filter index selected!\n");
+		return -EINVAL;
+	}
+
+	/* Indirect table select register */
+	fhftsl = rd32(IGC_FHFTSL);
+	fhftsl &= ~IGC_FHFTSL_FTSL_MASK;
+	switch (input->index) {
+	case 0 ... 7:
+		fhftsl |= 0x00;
+		break;
+	case 8 ... 15:
+		fhftsl |= 0x01;
+		break;
+	case 16 ... 23:
+		fhftsl |= 0x02;
+		break;
+	case 24 ... 31:
+		fhftsl |= 0x03;
+		break;
+	}
+	wr32(IGC_FHFTSL, fhftsl);
+
+	/* Normalize index down to host table register */
+	fhft_index = input->index % 8;
+
+	*fhft = (fhft_index < 4) ? IGC_FHFT(fhft_index) :
+		IGC_FHFT_EXT(fhft_index - 4);
+
+	return 0;
+}
+
+static int __maybe_unused igc_write_flex_filter_ll(struct igc_adapter *adapter,
+						   struct igc_flex_filter *input)
+{
+	struct device *dev = &adapter->pdev->dev;
+	struct igc_hw *hw = &adapter->hw;
+	u8 *data = input->data;
+	u8 *mask = input->mask;
+	u32 queuing;
+	u32 fhft;
+	u32 wufc;
+	int ret;
+	int i;
+
+	/* Length has to be aligned to 8. Otherwise the filter will fail. Bail
+	 * out early to avoid surprises later.
+	 */
+	if (input->length % 8 != 0) {
+		dev_err(dev, "The length of a flex filter has to be 8 byte aligned!\n");
+		return -EINVAL;
+	}
+
+	/* Select corresponding flex filter register and get base for host table. */
+	ret = igc_flex_filter_select(adapter, input, &fhft);
+	if (ret)
+		return ret;
+
+	/* When adding a filter globally disable flex filter feature. That is
+	 * recommended within the datasheet.
+	 */
+	wufc = rd32(IGC_WUFC);
+	wufc &= ~IGC_WUFC_FLEX_HQ;
+	wr32(IGC_WUFC, wufc);
+
+	/* Configure filter */
+	queuing = input->length & IGC_FHFT_LENGTH_MASK;
+	queuing |= (input->rx_queue << IGC_FHFT_QUEUE_SHIFT) & IGC_FHFT_QUEUE_MASK;
+	queuing |= (input->prio << IGC_FHFT_PRIO_SHIFT) & IGC_FHFT_PRIO_MASK;
+
+	if (input->immediate_irq)
+		queuing |= IGC_FHFT_IMM_INT;
+
+	if (input->drop)
+		queuing |= IGC_FHFT_DROP;
+
+	wr32(fhft + 0xFC, queuing);
+
+	/* Write data (128 byte) and mask (128 bit) */
+	for (i = 0; i < 16; ++i) {
+		const size_t data_idx = i * 8;
+		const size_t row_idx = i * 16;
+		u32 dw0 =
+			(data[data_idx + 0] << 0) |
+			(data[data_idx + 1] << 8) |
+			(data[data_idx + 2] << 16) |
+			(data[data_idx + 3] << 24);
+		u32 dw1 =
+			(data[data_idx + 4] << 0) |
+			(data[data_idx + 5] << 8) |
+			(data[data_idx + 6] << 16) |
+			(data[data_idx + 7] << 24);
+		u32 tmp;
+
+		/* Write row: dw0, dw1 and mask */
+		wr32(fhft + row_idx, dw0);
+		wr32(fhft + row_idx + 4, dw1);
+
+		/* mask is only valid for MASK(7, 0) */
+		tmp = rd32(fhft + row_idx + 8);
+		tmp &= ~GENMASK(7, 0);
+		tmp |= mask[i];
+		wr32(fhft + row_idx + 8, tmp);
+	}
+
+	/* Enable filter. */
+	wufc |= IGC_WUFC_FLEX_HQ;
+	if (input->index > 8) {
+		/* Filter 0-7 are enabled via WUFC. The other 24 filters are not. */
+		u32 wufc_ext = rd32(IGC_WUFC_EXT);
+
+		wufc_ext |= (IGC_WUFC_EXT_FLX8 << (input->index - 8));
+
+		wr32(IGC_WUFC_EXT, wufc_ext);
+	} else {
+		wufc |= (IGC_WUFC_FLX0 << input->index);
+	}
+	wr32(IGC_WUFC, wufc);
+
+	dev_dbg(&adapter->pdev->dev, "Added flex filter %u to HW.\n",
+		input->index);
+
+	return 0;
+}
+
 static int igc_enable_nfc_rule(struct igc_adapter *adapter,
 			       const struct igc_nfc_rule *rule)
 {
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index 0f82990567d9..828c3501c448 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -67,6 +67,9 @@
 
 /* Filtering Registers */
 #define IGC_ETQF(_n)		(0x05CB0 + (4 * (_n))) /* EType Queue Fltr */
+#define IGC_FHFT(_n)		(0x09000 + (256 * (_n))) /* Flexible Host Filter */
+#define IGC_FHFT_EXT(_n)	(0x09A00 + (256 * (_n))) /* Flexible Host Filter Extended */
+#define IGC_FHFTSL		0x05804 /* Flex Filter indirect table select */
 
 /* ETQF register bit definitions */
 #define IGC_ETQF_FILTER_ENABLE	BIT(26)
@@ -75,6 +78,19 @@
 #define IGC_ETQF_QUEUE_MASK	0x00070000
 #define IGC_ETQF_ETYPE_MASK	0x0000FFFF
 
+/* FHFT register bit definitions */
+#define IGC_FHFT_LENGTH_MASK	GENMASK(7, 0)
+#define IGC_FHFT_QUEUE_SHIFT	8
+#define IGC_FHFT_QUEUE_MASK	GENMASK(10, 8)
+#define IGC_FHFT_PRIO_SHIFT	16
+#define IGC_FHFT_PRIO_MASK	GENMASK(18, 16)
+#define IGC_FHFT_IMM_INT	BIT(24)
+#define IGC_FHFT_DROP		BIT(25)
+
+/* FHFTSL register bit definitions */
+#define IGC_FHFTSL_FTSL_SHIFT	0
+#define IGC_FHFTSL_FTSL_MASK	GENMASK(1, 0)
+
 /* Redirection Table - RW Array */
 #define IGC_RETA(_i)		(0x05C00 + ((_i) * 4))
 /* RSS Random Key - RW Array */
@@ -240,6 +256,7 @@
 #define IGC_WUFC	0x05808  /* Wakeup Filter Control - RW */
 #define IGC_WUS		0x05810  /* Wakeup Status - R/W1C */
 #define IGC_WUPL	0x05900  /* Wakeup Packet Length - RW */
+#define IGC_WUFC_EXT	0x0580C  /* Wakeup Filter Control Register Extended - RW */
 
 /* Wake Up packet memory */
 #define IGC_WUPM_REG(_i)	(0x05A00 + ((_i) * 4))
-- 
2.32.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
