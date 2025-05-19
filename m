Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A95ABC1F4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 May 2025 17:15:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6FB6140D3F;
	Mon, 19 May 2025 15:15:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ibhUJMJkHhFi; Mon, 19 May 2025 15:15:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B7E4C40B74
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747667739;
	bh=s4M1YOSre5iRLCdBjQo8ZXgWZd2JIg8A+6ujcWd9zpo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kAmp3E8n5M64QKezmGX7vE0QIeDwphTXXwy0KtMxitjm3ufmH7h1qRDi/4dOBQBvn
	 c7WytF1WSHKRyVmrWAtcj9ZzC9N9v1Ag0TR7UusEJM2PLBru0Rspxh2w0UOCmeIguZ
	 OB1pOMKV/QBr7sXhZO4No4nPd3NVH3deqZUKq5SxQl58DAbzTg9p49LjvtJWEgRJD4
	 y3KOIafcHirWst9zmhecvG6Ruuce5me5mDOcRjszQVt2P1YfLPT5DASRxfcjEU7oJZ
	 xg8CPHxh3o/1HN56NjQd1mkqbRjvflqU7yK7Mh7Dq5i5umYKeQYejb1zzu5xuqQkER
	 AgYecBzYHM4YQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7E4C40B74;
	Mon, 19 May 2025 15:15:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9CF03193
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 07:20:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 82FEF80DF0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 07:20:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HxUPBYFll7Rh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 May 2025 07:20:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A8D1D81DEA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A8D1D81DEA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A8D1D81DEA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 07:20:53 +0000 (UTC)
X-CSE-ConnectionGUID: RyFmr06TSOKHa9XKAhxkJg==
X-CSE-MsgGUID: mJe0VPpBSwqaZQKFqfcYLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11437"; a="72030743"
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="72030743"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 00:20:53 -0700
X-CSE-ConnectionGUID: fOqtxuL1SYGUZDLmQJzPtQ==
X-CSE-MsgGUID: kTl+MainQY61t8WzPKXsHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="139798836"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by orviesa007.jf.intel.com with ESMTP; 19 May 2025 00:20:50 -0700
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>
Date: Mon, 19 May 2025 03:19:08 -0400
Message-Id: <20250519071911.2748406-5-faizal.abdul.rahim@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250519071911.2748406-1-faizal.abdul.rahim@intel.com>
References: <20250519071911.2748406-1-faizal.abdul.rahim@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 19 May 2025 15:15:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747639254; x=1779175254;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eNzloNIoEXB/yepq9/BmYUsrKVK9QvnC22RSQhugWgE=;
 b=S+pHH+eVWobmBUbuoxpN4tlIJFi5TjKtixHVRjb0mciUc2MPmS3hnlBB
 YWeN/UQ1ExwsJEVPRvhKG1Mv60iqlYtpKJsFYE+meqme5W+XCQuX561o9
 na30jU6x0Gx85oQHIPwTSGTRcXL402nUR8FdzPvsI5CmzNz7AFFzeGHmO
 n3ZofwHnwnW2tu5AF5o571y+u9PaBo3q9oZUns/fhF2gP+eVYRD8SO7tY
 ctAGlKfWgaSH1uIWsrZFc/MlINag8OHITXK+9EBdL7x8bbNJlWwNz2dzQ
 QtGStZ4GR+Badef7Qz50UDFs9A51d0XMiR1d+F/3CLHihR3G0TzE6oDFZ
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S+pHH+eV
Subject: [Intel-wired-lan] [PATCH iwl-next v3 4/7] igc: assign highest TX
 queue number as highest priority in mqprio
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

From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>

Previously, TX arbitration prioritized queues based on the TC they were
mapped to. A queue mapped to TC 3 had higher priority than one mapped to
TC 0.

To improve code reuse for upcoming patches and align with typical NIC
behavior, this patch updates the logic to prioritize higher queue numbers
when mqprio is used. As a result, queue 0 becomes the lowest priority and
queue 3 becomes the highest.

This patch also introduces igc_tsn_is_tc_to_queue_priority_ordered() to
preserve the original TC-based priority rule and reject configurations
where a higher TC maps to a lower queue offset.

Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 19 ++++++++++++
 drivers/net/ethernet/intel/igc/igc_tsn.c  | 35 ++++++++++++++---------
 2 files changed, 41 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index f3a312c9413b..1033d64fc0e8 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6724,6 +6724,19 @@ static void igc_save_mqprio_params(struct igc_adapter *adapter, u8 num_tc,
 		adapter->queue_per_tc[i] = offset[i];
 }
 
+static bool igc_tsn_is_tc_to_queue_priority_ordered(struct tc_mqprio_qopt_offload *mqprio)
+{
+	int i;
+	int num_tc = mqprio->qopt.num_tc;
+
+	for (i = 1; i < num_tc; i++) {
+		if (mqprio->qopt.offset[i - 1] > mqprio->qopt.offset[i])
+			return false;
+	}
+
+	return true;
+}
+
 static int igc_tsn_enable_mqprio(struct igc_adapter *adapter,
 				 struct tc_mqprio_qopt_offload *mqprio)
 {
@@ -6756,6 +6769,12 @@ static int igc_tsn_enable_mqprio(struct igc_adapter *adapter,
 		}
 	}
 
+	if (!igc_tsn_is_tc_to_queue_priority_ordered(mqprio)) {
+		NL_SET_ERR_MSG_MOD(mqprio->extack,
+				   "tc to queue mapping must preserve increasing priority (higher tc → higher queue)");
+		return -EOPNOTSUPP;
+	}
+
 	/* Preemption is not supported yet. */
 	if (mqprio->preemptible_tcs) {
 		NL_SET_ERR_MSG_MOD(mqprio->extack,
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index f22cc4d4f459..78a4a9cf5f96 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -13,6 +13,13 @@
 #define TX_MAX_FRAG_SIZE	(TX_MIN_FRAG_SIZE * \
 				 (MAX_MULTPLIER_TX_MIN_FRAG + 1))
 
+enum tx_queue {
+	TX_QUEUE_0 = 0,
+	TX_QUEUE_1,
+	TX_QUEUE_2,
+	TX_QUEUE_3,
+};
+
 DEFINE_STATIC_KEY_FALSE(igc_fpe_enabled);
 
 static int igc_fpe_init_smd_frame(struct igc_ring *ring,
@@ -238,7 +245,7 @@ bool igc_tsn_is_taprio_activated_by_user(struct igc_adapter *adapter)
 		adapter->taprio_offload_enable;
 }
 
-static void igc_tsn_tx_arb(struct igc_adapter *adapter, u16 *queue_per_tc)
+static void igc_tsn_tx_arb(struct igc_adapter *adapter, bool reverse_prio)
 {
 	struct igc_hw *hw = &adapter->hw;
 	u32 txarb;
@@ -250,10 +257,17 @@ static void igc_tsn_tx_arb(struct igc_adapter *adapter, u16 *queue_per_tc)
 		   IGC_TXARB_TXQ_PRIO_2_MASK |
 		   IGC_TXARB_TXQ_PRIO_3_MASK);
 
-	txarb |= IGC_TXARB_TXQ_PRIO_0(queue_per_tc[3]);
-	txarb |= IGC_TXARB_TXQ_PRIO_1(queue_per_tc[2]);
-	txarb |= IGC_TXARB_TXQ_PRIO_2(queue_per_tc[1]);
-	txarb |= IGC_TXARB_TXQ_PRIO_3(queue_per_tc[0]);
+	if (reverse_prio) {
+		txarb |= IGC_TXARB_TXQ_PRIO_0(TX_QUEUE_3);
+		txarb |= IGC_TXARB_TXQ_PRIO_1(TX_QUEUE_2);
+		txarb |= IGC_TXARB_TXQ_PRIO_2(TX_QUEUE_1);
+		txarb |= IGC_TXARB_TXQ_PRIO_3(TX_QUEUE_0);
+	} else {
+		txarb |= IGC_TXARB_TXQ_PRIO_0(TX_QUEUE_0);
+		txarb |= IGC_TXARB_TXQ_PRIO_1(TX_QUEUE_1);
+		txarb |= IGC_TXARB_TXQ_PRIO_2(TX_QUEUE_2);
+		txarb |= IGC_TXARB_TXQ_PRIO_3(TX_QUEUE_3);
+	}
 
 	wr32(IGC_TXARB, txarb);
 }
@@ -286,7 +300,6 @@ static void igc_tsn_set_rxpbsize(struct igc_adapter *adapter,
  */
 static int igc_tsn_disable_offload(struct igc_adapter *adapter)
 {
-	u16 queue_per_tc[4] = { 3, 2, 1, 0 };
 	struct igc_hw *hw = &adapter->hw;
 	u32 tqavctrl;
 	int i;
@@ -319,7 +332,7 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
 	/* Restore the default Tx arbitration: Priority 0 has the highest
 	 * priority and is assigned to queue 0 and so on and so forth.
 	 */
-	igc_tsn_tx_arb(adapter, queue_per_tc);
+	igc_tsn_tx_arb(adapter, false);
 
 	adapter->flags &= ~IGC_FLAG_TSN_QBV_ENABLED;
 
@@ -385,12 +398,8 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 	if (igc_is_device_id_i226(hw))
 		igc_tsn_set_retx_qbvfullthreshold(adapter);
 
-	if (adapter->strict_priority_enable) {
-		/* Configure queue priorities according to the user provided
-		 * mapping.
-		 */
-		igc_tsn_tx_arb(adapter, adapter->queue_per_tc);
-	}
+	if (adapter->strict_priority_enable)
+		igc_tsn_tx_arb(adapter, true);
 
 	for (i = 0; i < adapter->num_tx_queues; i++) {
 		struct igc_ring *ring = adapter->tx_ring[i];
-- 
2.34.1

