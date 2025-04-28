Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD42A9E7EB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Apr 2025 08:03:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B963440BE4;
	Mon, 28 Apr 2025 06:03:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4U4r0LYeXm4b; Mon, 28 Apr 2025 06:03:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9BA6D40BE9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745820221;
	bh=0Bnjs0C3c5om3cfw1MizY6bJ0PcoHHs+z1ORQch1yiQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ak3jMl02+ZRVW5IzHT3RKQRMxumRwhWQzIXduI47ucEN9m35OUY5WeNw4RheY5q/7
	 vESrrbUBPVarN/wkWN01OBv7dIey5ODW6Ao84giqcGSewTkkDGQiSIPhbNDlgippdn
	 JmTaZYjIAhWO5yS5YV2Y3NyHibvGRXwM4L08SImAhNNUSENl+HPXW/ZeufozkWLdoG
	 QWGPcBzxPPIe9dRZWHsdDjobpcoEvAdCwfDV8vQxO5oXXsRRs9BAjFKXYqR/EL8hvd
	 fpQB+fPygkGyaqBgw+JerIMgBaWKTGsjiuspRdOu0j34a4B7kytkA6mECc1I4DPZmp
	 0bIjnJDB2TcfQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9BA6D40BE9;
	Mon, 28 Apr 2025 06:03:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 188AA194
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:03:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E020460B79
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:03:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4gYX5sDVsFBU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Apr 2025 06:03:37 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2227E60B6D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2227E60B6D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2227E60B6D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:03:37 +0000 (UTC)
X-CSE-ConnectionGUID: TCA65tgCTbu7CltRADnJ+w==
X-CSE-MsgGUID: nbIXlqSKTv2TclJZdlbfig==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="51064630"
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="51064630"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2025 23:03:37 -0700
X-CSE-ConnectionGUID: mr+AJPE/SoOtEp1SbApwqg==
X-CSE-MsgGUID: 7S4E6Wg+RPO+VpRanwl/Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="133340787"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by orviesa006.jf.intel.com with ESMTP; 27 Apr 2025 23:03:34 -0700
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>
Date: Mon, 28 Apr 2025 02:02:21 -0400
Message-Id: <20250428060225.1306986-5-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250428060225.1306986-1-faizal.abdul.rahim@linux.intel.com>
References: <20250428060225.1306986-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745820218; x=1777356218;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/QIuqWTdwt7nPBLknBo+J/kNdfRzmk7RzzTj44VYNQQ=;
 b=cABZjbWUNTCQIfXHruKDwLBujUilTiq/I/JEHpnnYbJkOkRIMebcDg0m
 3CIsFSkVH1sk4pqeHeN7cDUFGl98QoH4M4wIfuqTV7PYeF5KmJRuQxJfT
 gMPeJI3lFpqdA3bdduyHCxrEw1OeVELGkGXVodfJHINMI2/fW0SyePK0s
 F5voUWbejktyqjdLo63yiC+C7wC3ru/KK4h6qcX0csOGo/USLjVpxboKi
 jvoF/hDkqGTP23IKiKP5qudxSlIB3Gv645t+M8fidPS6Hwx37CtEIWxTW
 /RWI4pdIwMS/YGjZ99ethoUpJ+OhG5QxSQLdJnNLyespefi9WaY72BBqu
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cABZjbWU
Subject: [Intel-wired-lan] [PATCH iwl-next v1 4/8] igc: assign highest TX
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

Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 19 ++++++++++++
 drivers/net/ethernet/intel/igc/igc_tsn.c  | 35 ++++++++++++++---------
 2 files changed, 41 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 86716fabf6a9..1b58811f8cfa 100644
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
index e964b11feab1..e1e1c5c89989 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -12,6 +12,13 @@
 #define TX_MIN_FRAG_SIZE		64
 #define TX_MAX_FRAG_SIZE	(TX_MIN_FRAG_SIZE * (MAX_MULTPLIER_TX_MIN_FRAG + 1))
 
+enum tx_queue {
+	TX_QUEUE_0 = 0,
+	TX_QUEUE_1,
+	TX_QUEUE_2,
+	TX_QUEUE_3,
+};
+
 DEFINE_STATIC_KEY_FALSE(igc_fpe_enabled);
 
 static int igc_fpe_init_smd_frame(struct igc_ring *ring,
@@ -236,7 +243,7 @@ bool igc_tsn_is_taprio_activated_by_user(struct igc_adapter *adapter)
 		adapter->taprio_offload_enable;
 }
 
-static void igc_tsn_tx_arb(struct igc_adapter *adapter, u16 *queue_per_tc)
+static void igc_tsn_tx_arb(struct igc_adapter *adapter, bool reverse_prio)
 {
 	struct igc_hw *hw = &adapter->hw;
 	u32 txarb;
@@ -248,10 +255,17 @@ static void igc_tsn_tx_arb(struct igc_adapter *adapter, u16 *queue_per_tc)
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
@@ -282,7 +296,6 @@ static void igc_tsn_set_rxpbsize(struct igc_adapter *adapter, u32 rxpbs_exp_bmc_
  */
 static int igc_tsn_disable_offload(struct igc_adapter *adapter)
 {
-	u16 queue_per_tc[4] = { 3, 2, 1, 0 };
 	struct igc_hw *hw = &adapter->hw;
 	u32 tqavctrl;
 	int i;
@@ -315,7 +328,7 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
 	/* Restore the default Tx arbitration: Priority 0 has the highest
 	 * priority and is assigned to queue 0 and so on and so forth.
 	 */
-	igc_tsn_tx_arb(adapter, queue_per_tc);
+	igc_tsn_tx_arb(adapter, false);
 
 	adapter->flags &= ~IGC_FLAG_TSN_QBV_ENABLED;
 
@@ -381,12 +394,8 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
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

