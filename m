Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EF72391DC01
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Jul 2024 12:03:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6A17281466;
	Mon,  1 Jul 2024 10:03:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B7vZSOcQo9du; Mon,  1 Jul 2024 10:03:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C65C81490
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719828203;
	bh=ldUll8pDLwNj8bpi5wvIYNP/3sDELCz8kGFTA9s6fCs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Cq2o8VOOFb8KD487Q0kBsTz7q/JR/GHCTHVvcBXSdymBRA1O0T+E+reBCLW9UWtkf
	 SH+IOgbHB9U1YuPwxVeC2u85W6XwLfYQuUifi7GRvBC0/Nw9t9zJpQGKX/8o7N9Ic+
	 PQXFuqa5k/js/ly1pEBL/kQvcmkOWLWyjbM/KWt5zn4hlk/aFSa+SQ+OTJezuz8rhO
	 5aWYWZlE25X/XqN9hDpC6gsRT44lAqWp2c+NZBC4Y7ZvEPBtCbkQNwE8H53jLow1sV
	 EsAyIU8q0yCqsPCULjZ9H6YVbxM9zsjkZun+WeokqOV7u7vgm7UxM0yjvX9XOlMFmD
	 kl02pNrIOc2KQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C65C81490;
	Mon,  1 Jul 2024 10:03:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4ABCC1BF35C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 10:03:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 35BD781462
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 10:03:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dR0xmcz38eOc for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Jul 2024 10:03:20 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 42AA98059C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 42AA98059C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 42AA98059C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 10:03:19 +0000 (UTC)
X-CSE-ConnectionGUID: P4praoXlSHSPBgLslpQUXQ==
X-CSE-MsgGUID: WfZnzW0ARSqwElM2NNubdg==
X-IronPort-AV: E=McAfee;i="6700,10204,11119"; a="16783847"
X-IronPort-AV: E=Sophos;i="6.09,175,1716274800"; d="scan'208";a="16783847"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 03:03:19 -0700
X-CSE-ConnectionGUID: Anw2rhvOSD6NgytuqK2ETQ==
X-CSE-MsgGUID: e35sdeIxRzmdQoUVKrLERw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,175,1716274800"; d="scan'208";a="68696797"
Received: from linux.intel.com ([10.54.29.200])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 03:03:18 -0700
Received: from mohdfai2-iLBPG12-1.png.intel.com
 (mohdfai2-iLBPG12-1.png.intel.com [10.88.227.73])
 by linux.intel.com (Postfix) with ESMTP id D0DA720B5702;
 Mon,  1 Jul 2024 03:03:14 -0700 (PDT)
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Mon,  1 Jul 2024 06:00:58 -0400
Message-Id: <20240701100058.3301229-1-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719828201; x=1751364201;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IHzImYBvS+r2Fb9vRJHdboMmTujqYSOlMOmKDtVxjSE=;
 b=WokCeGrhC/nmomRJ4631xZWw3rYU5NklX+eM4C+dWeJskFxOIAx+IYqA
 Pr450cIi9+Nek8fTHpjVyWuVMIf26YILQ83j+bxRwcp4QN+EnkiAM3ssI
 eeVONoDJsIGzbAmChMylRqG9GckGME7p5iTpF7unn4EZvGwJIarLpDVXw
 riPNbxOHP0qJ52UHKAfu0gUyXUS+G8rPsqjTMAMzbSNz+iDjCm8N8Jz1x
 fjFqUXA35MJvXLPIiVt6UCE7speTYJEJIJbljIPPKPkaIVqQ7g705wyVH
 7/4OqcATK1AlT0KO3al9dvsvALmhTttUt7RvQDoD1tbXDTpM52JUIulVx
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WokCeGrh
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/1] igc: Fix packet still tx
 after gate close by reducing i226 MAC retry buffer
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

AVNU testing uncovered that even when the taprio gate is closed,
some packets still transmit.

A known i225/6 hardware errata states traffic might overflow the planned
QBV window. This happens because MAC maintains an internal buffer,
primarily for supporting half duplex retries. Therefore, when
the gate closes, residual MAC data in the buffer may still transmit.

To mitigate this for i226, reduce the MAC's internal buffer from
192 bytes to 88 bytes by modifying the RETX_CTL register value.
This follows guidelines from:

a) Ethernet Controller I225/I22 Spec Update Rev 2.1 Errata Item 9:
   TSN: Packet Transmission Might Cross Qbv Window
b) I225/6 SW User Manual Rev 1.2.4: Section 8.11.5 Retry Buffer Control

Test Steps:
1. Send taprio cmd to board A
tc qdisc replace dev enp1s0 parent root handle 100 taprio \
num_tc 4 \
map 3 2 1 0 3 3 3 3 3 3 3 3 3 3 3 3 \
queues 1@0 1@1 1@2 1@3 \
base-time 0 \
sched-entry S 0x07 500000 \
sched-entry S 0x0f 500000 \
flags 0x2 \
txtime-delay 0

- Note that for TC3, gate opens for 500us and close for another 500us

3. Take tcpdump log on Board B

4. Send udp packets via UDP tai app from Board A to Board B

5. Analyze tcpdump log via wireshark log on Board B
- Observed that the total time from the first to the last packet
received during one cycle for TC3 does not exceed 500us

Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h |  6 ++++
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 34 ++++++++++++++++++++
 2 files changed, 40 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 5f92b3c7c3d4..511384f3ec5c 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -404,6 +404,12 @@
 #define IGC_DTXMXPKTSZ_TSN	0x19 /* 1600 bytes of max TX DMA packet size */
 #define IGC_DTXMXPKTSZ_DEFAULT	0x98 /* 9728-byte Jumbo frames */
 
+/* Retry Buffer Control */
+#define IGC_RETX_CTL			0x041C
+#define IGC_RETX_CTL_WATERMARK_MASK	0xF
+#define IGC_RETX_CTL_QBVFULLTH_SHIFT	8 /* QBV Retry Buffer Full Threshold */
+#define IGC_RETX_CTL_QBVFULLEN	0x1000 /* Enable QBV Retry Buffer Full Threshold */
+
 /* Transmit Scheduling Latency */
 /* Latency between transmission scheduling (LaunchTime) and the time
  * the packet is transmitted to the network in nanosecond.
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 22cefb1eeedf..c97d908cecc5 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -78,6 +78,15 @@ void igc_tsn_adjust_txtime_offset(struct igc_adapter *adapter)
 	wr32(IGC_GTXOFFSET, txoffset);
 }
 
+static void igc_tsn_restore_retx_default(struct igc_adapter *adapter)
+{
+	struct igc_hw *hw = &adapter->hw;
+	u32 retxctl;
+
+	retxctl = rd32(IGC_RETX_CTL) & IGC_RETX_CTL_WATERMARK_MASK;
+	wr32(IGC_RETX_CTL, retxctl);
+}
+
 /* Returns the TSN specific registers to their default values after
  * the adapter is reset.
  */
@@ -91,6 +100,9 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
 	wr32(IGC_TXPBS, I225_TXPBSIZE_DEFAULT);
 	wr32(IGC_DTXMXPKTSZ, IGC_DTXMXPKTSZ_DEFAULT);
 
+	if (igc_is_device_id_i226(hw))
+		igc_tsn_restore_retx_default(adapter);
+
 	tqavctrl = rd32(IGC_TQAVCTRL);
 	tqavctrl &= ~(IGC_TQAVCTRL_TRANSMIT_MODE_TSN |
 		      IGC_TQAVCTRL_ENHANCED_QAV | IGC_TQAVCTRL_FUTSCDDIS);
@@ -111,6 +123,25 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
 	return 0;
 }
 
+/* To partially fix i226 HW errata, reduce MAC internal buffering from 192 Bytes
+ * to 88 Bytes by setting RETX_CTL register using the recommendation from:
+ * a) Ethernet Controller I225/I22 Specification Update Rev 2.1
+ *    Item 9: TSN: Packet Transmission Might Cross the Qbv Window
+ * b) I225/6 SW User Manual Rev 1.2.4: Section 8.11.5 Retry Buffer Control
+ */
+static void igc_tsn_set_retx_qbvfullth(struct igc_adapter *adapter)
+{
+	struct igc_hw *hw = &adapter->hw;
+	u32 retxctl, watermark;
+
+	retxctl = rd32(IGC_RETX_CTL);
+	watermark = retxctl & IGC_RETX_CTL_WATERMARK_MASK;
+	/* Set QBVFULLTH value using watermark and set QBVFULLEN */
+	retxctl |= (watermark << IGC_RETX_CTL_QBVFULLTH_SHIFT) |
+		   IGC_RETX_CTL_QBVFULLEN;
+	wr32(IGC_RETX_CTL, retxctl);
+}
+
 static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 {
 	struct igc_hw *hw = &adapter->hw;
@@ -123,6 +154,9 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 	wr32(IGC_DTXMXPKTSZ, IGC_DTXMXPKTSZ_TSN);
 	wr32(IGC_TXPBS, IGC_TXPBSIZE_TSN);
 
+	if (igc_is_device_id_i226(hw))
+		igc_tsn_set_retx_qbvfullth(adapter);
+
 	for (i = 0; i < adapter->num_tx_queues; i++) {
 		struct igc_ring *ring = adapter->tx_ring[i];
 		u32 txqctl = 0;
-- 
2.25.1

