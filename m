Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0239F2A59
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Dec 2024 07:49:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDB8360A6B;
	Mon, 16 Dec 2024 06:49:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WCnnQEDC_l1X; Mon, 16 Dec 2024 06:49:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BCDC060A70
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734331763;
	bh=TYDRxeeCJc7LcLc1xC8XUaNcCP1c90oMOmvKtkTwDC0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ht66S9k1WCuHfPNdut854K0H+J26NnCIYSFh7+HBplO+OGV3WFC5AcgbAN9TnEJzX
	 sSKKEfP6eariOC2ypTtZp2lWPcXKLuscshV2UthAJyquOkddJQdv2ZrojWunOf8CVY
	 a45Fo5umzhWFf5P0GwEcR1NAyHXxFZUB9Jz8hqUg/GITwgsttSgMckefLMEMzmfwVD
	 Ym1nQoMMAkAN2a3aORJldHiY5yTS0P2MiwgcmF26QtwbKimoiALMTwBtidWrWaXUXI
	 ue5tfi4h1QZVaZvirTjQv2+R04rDqY52Zfke6epv6Oi2qxAypJJvAXJIkIUqw6Fjv1
	 g3pAQ0EJIvcSw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BCDC060A70;
	Mon, 16 Dec 2024 06:49:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2A7F5C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 06:49:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0A99881BF5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 06:49:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1HDvXvlMN1sd for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Dec 2024 06:49:21 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2B19A81BC6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B19A81BC6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2B19A81BC6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 06:49:21 +0000 (UTC)
X-CSE-ConnectionGUID: psDN+9PSRW+HhkJefidYRg==
X-CSE-MsgGUID: O/3pUKSjT+6mAJ3o3o8M9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11287"; a="34848273"
X-IronPort-AV: E=Sophos;i="6.12,237,1728975600"; d="scan'208";a="34848273"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2024 22:49:21 -0800
X-CSE-ConnectionGUID: q9eNcpKNR8q0nYi2da+eBQ==
X-CSE-MsgGUID: CKt6U1j/TfWPRTe6NB0olw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="128101929"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by fmviesa001.fm.intel.com with ESMTP; 15 Dec 2024 22:49:17 -0800
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Cc: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Date: Mon, 16 Dec 2024 01:47:20 -0500
Message-Id: <20241216064720.931522-10-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241216064720.931522-1-faizal.abdul.rahim@linux.intel.com>
References: <20241216064720.931522-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734331761; x=1765867761;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GmF50IpDra1dgYb/XdxHNOCwP4kOlp3rid6eI8frReo=;
 b=DLU6U5tjK6XWp4yMg0hfsR7g3ieq7swdkDIG5GY1yxDkcyaO7dNKT9hC
 hmakq1N7I6T/FZQFdpgJ/dWziptAfhABQGW5UyGFuruE9R1lL7gWdoOui
 3h0agItNEfuVTb27u6bOBTJGJiMRCyR1XcC78mTCbjXDbDpof4g4Be6Mj
 zXrMBYc86B2hJm6YLrqe/AEQ8Q3ZLEEyraFa1qZV8xJUpE0HAyGNctTjq
 JEU2iWSsqJ/KtjIUjUS+tp29lROJuYE2HT4X0jYMKd4aGLgRQEtl45g9C
 9rkrhkIetrosZ0DL/MT/cPM91686/naRixCZ3CmQzlsOcQ/fkUZhuaFea
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DLU6U5tj
Subject: [Intel-wired-lan] [PATCH iwl-next 9/9] igc: Add support to get
 frame preemption statistics via ethtool
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implemented "ethtool --include-statistics --show-mm" callback for IGC.

Tested preemption scenario to check preemption statistics:
1) Trigger verification handshake on both boards:
    $ sudo ethtool --set-mm enp1s0 pmac-enabled on
    $ sudo ethtool --set-mm enp1s0 tx-enabled on
    $ sudo ethtool --set-mm enp1s0 verify-enabled on
2) Set preemptible or express queue in taprio for tx board:
    $ sudo tc qdisc replace dev enp1s0 parent root handle 100 taprio \
      num_tc 4 map 0 1 2 3 0 0 0 0 0 0 0 0 0 0 0 0 \
      queues 1@0 1@1 1@2 1@3 base-time 0 sched-entry S F 100000 \
      fp E E P P
3) Send large size packets on preemptible queue
4) Send small size packets on express queue to preempt packets in
   preemptible queue
5) Show preemption statistics on the receiving board:
   $ ethtool --include-statistics --show-mm enp1s0
     MAC Merge layer state for enp1s0:
     pMAC enabled: on
     TX enabled: on
     TX active: on
     TX minimum fragment size: 252
     RX minimum fragment size: 252
     Verify enabled: on
     Verify time: 128
     Max verify time: 128
     Verification status: SUCCEEDED
     Statistics:
     	MACMergeFrameAssErrorCount: 0
	MACMergeFrameSmdErrorCount: 0
	MACMergeFrameAssOkCount: 511
	MACMergeFragCountRx: 764
	MACMergeFragCountTx: 0
	MACMergeHoldCount: 0

Co-developed-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 40 ++++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_regs.h    | 19 ++++++++++
 2 files changed, 59 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 16aa6e4e1727..90a9dbb0d901 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1835,6 +1835,45 @@ static int igc_ethtool_set_mm(struct net_device *netdev,
 	return igc_tsn_offload_apply(adapter);
 }
 
+/**
+ * igc_ethtool_get_frame_ass_error - Get the frame assembly error count.
+ * @dev: Pointer to the net_device structure.
+ * @return: The count of frame assembly errors.
+ */
+static u64 igc_ethtool_get_frame_ass_error(struct net_device *dev)
+{
+	struct igc_adapter *adapter = netdev_priv(dev);
+	u32 ooo_smdc, ooo_frame_cnt, ooo_frag_cnt; /* Out of order statistics */
+	struct igc_hw *hw = &adapter->hw;
+	u32 miss_frame_frag_cnt;
+	u32 reg_value;
+
+	reg_value = rd32(IGC_PRMEXPRCNT);
+	ooo_smdc = reg_value & IGC_PRMEXPRCNT_OOO_SMDC;
+	ooo_frame_cnt = (reg_value & IGC_PRMEXPRCNT_OOO_FRAME_CNT)
+			 >> IGC_PRMEXPRCNT_OOO_FRAME_CNT_SHIFT;
+	ooo_frag_cnt = (reg_value & IGC_PRMEXPRCNT_OOO_FRAG_CNT)
+			>> IGC_PRMEXPRCNT_OOO_FRAG_CNT_SHIFT;
+	miss_frame_frag_cnt = (reg_value & IGC_PRMEXPRCNT_MISS_FRAME_FRAG_CNT)
+			      >> IGC_PRMEXPRCNT_MISS_FRAME_FRAG_CNT_SHIFT;
+
+	return ooo_smdc + ooo_frame_cnt + ooo_frag_cnt + miss_frame_frag_cnt;
+}
+
+static void igc_ethtool_get_mm_stats(struct net_device *dev,
+				     struct ethtool_mm_stats *stats)
+{
+	struct igc_adapter *adapter = netdev_priv(dev);
+	struct igc_hw *hw = &adapter->hw;
+
+	stats->MACMergeFrameAssErrorCount = igc_ethtool_get_frame_ass_error(dev);
+	stats->MACMergeFrameSmdErrorCount = 0; /* Not available in IGC */
+	stats->MACMergeFrameAssOkCount = rd32(IGC_PRMPTDRCNT);
+	stats->MACMergeFragCountRx =  rd32(IGC_PRMEVNTRCNT);
+	stats->MACMergeFragCountTx = rd32(IGC_PRMEVNTTCNT);
+	stats->MACMergeHoldCount = 0; /* Not available in IGC */
+}
+
 static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
 					  struct ethtool_link_ksettings *cmd)
 {
@@ -2124,6 +2163,7 @@ static const struct ethtool_ops igc_ethtool_ops = {
 	.get_channels		= igc_ethtool_get_channels,
 	.get_mm			= igc_ethtool_get_mm,
 	.set_mm			= igc_ethtool_set_mm,
+	.get_mm_stats		= igc_ethtool_get_mm_stats,
 	.set_channels		= igc_ethtool_set_channels,
 	.get_priv_flags		= igc_ethtool_get_priv_flags,
 	.set_priv_flags		= igc_ethtool_set_priv_flags,
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index 12ddc5793651..f40946cce35a 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -222,6 +222,25 @@
 
 #define IGC_FTQF(_n)	(0x059E0 + (4 * (_n)))  /* 5-tuple Queue Fltr */
 
+/* Time sync registers - preemption statistics */
+#define IGC_PRMEVNTTCNT		0x04298	/* TX Preemption event counter */
+#define IGC_PRMEVNTRCNT		0x0429C	/* RX Preemption event counter */
+#define IGC_PRMPTDRCNT		0x04284	/* Good RX Preempted Packets */
+
+ /* Preemption Exception Counter */
+#define IGC_PRMEXPRCNT					0x042A0
+/* Received out of order packets with SMD-C and NOT ReumeRx */
+#define IGC_PRMEXPRCNT_OOO_SMDC 0x000000FF
+/* Received out of order packets with SMD-C and wrong Frame CNT */
+#define IGC_PRMEXPRCNT_OOO_FRAME_CNT			0x0000FF00
+#define IGC_PRMEXPRCNT_OOO_FRAME_CNT_SHIFT		8
+/* Received out of order packets with SMD-C and wrong Frag CNT */
+#define IGC_PRMEXPRCNT_OOO_FRAG_CNT			0x00FF0000
+#define IGC_PRMEXPRCNT_OOO_FRAG_CNT_SHIFT		16
+/* Received packets with SMD-S and ReumeRx */
+#define IGC_PRMEXPRCNT_MISS_FRAME_FRAG_CNT		0xFF000000
+#define IGC_PRMEXPRCNT_MISS_FRAME_FRAG_CNT_SHIFT	24
+
 /* Transmit Scheduling Registers */
 #define IGC_TQAVCTRL		0x3570
 #define IGC_TXQCTL(_n)		(0x3344 + 0x4 * (_n))
-- 
2.25.1

