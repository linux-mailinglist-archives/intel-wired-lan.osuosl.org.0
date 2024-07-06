Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E6D92949C
	for <lists+intel-wired-lan@lfdr.de>; Sat,  6 Jul 2024 17:40:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4EC59820B0;
	Sat,  6 Jul 2024 15:40:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G9TRN5LCNYom; Sat,  6 Jul 2024 15:40:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EABFC820C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720280436;
	bh=nvHlQ1bDtJneFVHRqn7CBgZUqU82l/WnI06T8a2JW0Y=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=DbuAjjqJG9pLpfzyh9IHuv4mWRYaUr8M7a7ekx/zBeKYXiaaeZPkQ2m8sctQhloes
	 JxbzBsY0ebsTIcBgaNzzeEKkEpojrHIwdnmenHC9vHjT12fcEwZFVWR33HJryiOM8r
	 0Qik/X7mPxnEZuACj6tuVucPKHdAMqkS0vdsoi2RswxWkFbvZmI7EVRos18LuRvQyv
	 xfpSoxdXzFxk4x3zj0CInT4m2ePfESVtRtuoHjGkJ2lvj8n5EhS64F0hAKtJBAUeV3
	 TKsxfGl9SPjCdwTHs9cs/XOkaMnZ2sg3QvT8F+PrS0gDxQSIdKr6TJtGlslNzsRjIw
	 FegHo8FSeWE7A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EABFC820C6;
	Sat,  6 Jul 2024 15:40:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D7C131BF2F3
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Jul 2024 15:40:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CED5240746
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Jul 2024 15:40:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0GXulAMtldiZ for <intel-wired-lan@lists.osuosl.org>;
 Sat,  6 Jul 2024 15:40:32 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 44DF940740
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 44DF940740
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 44DF940740
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Jul 2024 15:40:31 +0000 (UTC)
X-CSE-ConnectionGUID: vkAPBjYBTBOeNRpa/klwYg==
X-CSE-MsgGUID: WYw5420cRTSGbnkAbvhyQg==
X-IronPort-AV: E=McAfee;i="6700,10204,11125"; a="21350736"
X-IronPort-AV: E=Sophos;i="6.09,187,1716274800"; d="scan'208";a="21350736"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2024 08:40:31 -0700
X-CSE-ConnectionGUID: hIvsrpwtSAabL+rEevT2Rg==
X-CSE-MsgGUID: 52zHHZnDQ12AyBC6FnhYkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,187,1716274800"; d="scan'208";a="52294187"
Received: from linux.intel.com ([10.54.29.200])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2024 08:40:31 -0700
Received: from mohdfai2-iLBPG12-1.png.intel.com
 (mohdfai2-iLBPG12-1.png.intel.com [10.88.227.73])
 by linux.intel.com (Postfix) with ESMTP id 45FEC204150D;
 Sat,  6 Jul 2024 08:40:28 -0700 (PDT)
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Date: Sat,  6 Jul 2024 11:38:07 -0400
Message-Id: <20240706153807.3390950-1-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720280433; x=1751816433;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=B9cq+agi7Z47PzTtFESKu91Q9MobwL8iJhg5tW6e2KU=;
 b=OJqeZWg21vr1AeKztN4uEl5md4lTn/uqn1nxgmTVf6WndT18OllU6ymA
 UjCOIGiO/i6nk6fWUVyBnt2VfvPvlqfS7R9Yy1+XjHuq6QaQeVCAtaelr
 zfbHMo7gBxxpRaG00GV4zIPxzAKkdeIc0QZuO74SB+fJy7SspV69lGEOD
 nb4KrawmJXbqNNof6icB0JFPV9dKcrUQc+CKpTUnimTFhkEYHLscmNNf+
 y6Iqp2AnNuPAD1aCNBX2ug2dYcETV+SMH+jz/L669Be9MPjB7BsQ0JYK9
 gIUkoRqIK9jzh0WCz+d3xqmSSFz1zGefq36NHnUXyRKm8VsI8PCFK3hOT
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OJqeZWg2
Subject: [Intel-wired-lan] [PATCH iwl-net v2 1/1] igc: Fix packet still tx
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
 linux-kernel@vger.kernel.org,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Testing uncovered that even when the taprio gate is closed, some packets
still transmit.

According to i225/6 hardware errata [1], traffic might overflow the
planned QBV window. This happens because MAC maintains an internal buffer,
primarily for supporting half duplex retries. Therefore, even when the
gate closes, residual MAC data in the buffer may still transmit.

To mitigate this for i226, reduce the MAC's internal buffer from 192 bytes
to the recommended 88 bytes by modifying the RETX_CTL register value.

This follows guidelines from:
[1] Ethernet Controller I225/I22 Spec Update Rev 2.1 Errata Item 9:
    TSN: Packet Transmission Might Cross Qbv Window
[2] I225/6 SW User Manual Rev 1.2.4: Section 8.11.5 Retry Buffer Control

Note that the RETX_CTL register can't be used in TSN mode because half
duplex feature cannot coexist with TSN.

Test Steps:
1.  Send taprio cmd to board A:
    tc qdisc replace dev enp1s0 parent root handle 100 taprio \
    num_tc 4 \
    map 3 2 1 0 3 3 3 3 3 3 3 3 3 3 3 3 \
    queues 1@0 1@1 1@2 1@3 \
    base-time 0 \
    sched-entry S 0x07 500000 \
    sched-entry S 0x0f 500000 \
    flags 0x2 \
    txtime-delay 0

    Note that for TC3, gate should open for 500us and close for another
    500us.

3.  Take tcpdump log on Board B.

4.  Send udp packets via UDP tai app from Board A to Board B.

5.  Analyze tcpdump log via wireshark log on Board B. Ensure that the
    total time from the first to the last packet received during one cycle
    for TC3 does not exceed 500us.

Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
v1: https://patchwork.kernel.org/project/netdevbpf/patch/20240701100058.3301229-1-faizal.abdul.rahim@linux.intel.com/

Changelog:
v1 -> v2
- Update commit description (Paul).
- Rename qbvfullth -> qbvfullthreshold (Paul).
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
index 22cefb1eeedf..9df3680b9fcb 100644
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
+static void igc_tsn_set_retx_qbvfullthreshold(struct igc_adapter *adapter)
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
+		igc_tsn_set_retx_qbvfullthreshold(adapter);
+
 	for (i = 0; i < adapter->num_tx_queues; i++) {
 		struct igc_ring *ring = adapter->tx_ring[i];
 		u32 txqctl = 0;
-- 
2.25.1

