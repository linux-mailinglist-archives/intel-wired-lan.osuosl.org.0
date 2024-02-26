Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CA4866D1C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Feb 2024 09:51:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E37AB4063E;
	Mon, 26 Feb 2024 08:51:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iZGf39zMPE4c; Mon, 26 Feb 2024 08:51:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5BCE0408F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708937509;
	bh=KAH7K+yu20OQtLM/fn3B+lEXpd7888o1GdMRqfyUYsk=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=SmedtYLtbVRoZu1xx+KqtVOBdQwHlm6kwxcYv3SWnZFeCYN5nb90aWdDJJjzjG266
	 XwnFVU2KN7xqZue1BPZd9ubdvWtJfsq6y5nLHMY4f0cK/RnhP29V+qsy9mtM3bveZA
	 tXTPqdAVEmDbAVVPZ4sekrfXqu6zAxLtxDfOoyKlilAekLbRXL2m0GOOunVUIaqqCv
	 7EdW8XoqnRvXnF01CoY6rzQNB4DfVv19tjHkx3YI6vZIo8j7YkAX7uTzzXwPWn+fnR
	 NsfAcgvK6dk6+m8YN7OaqE7PpdtgyUB37KJHPtnDRmkM8Sf5Q/I3l18+1diuIdvNo4
	 eI8cCdelsrUAw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5BCE0408F0;
	Mon, 26 Feb 2024 08:51:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 23B831BF3BD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 08:51:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0F754607FD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 08:51:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oukdkWpyibCn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Feb 2024 08:51:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5896F6063F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5896F6063F
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5896F6063F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 08:51:45 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Mon, 26 Feb 2024 09:51:39 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240212-igc_mqprio-v1-1-7aed95b736db@linutronix.de>
X-B4-Tracking: v=1; b=H4sIABpR3GUC/x2NQQrCQAwAv1JyNpCNWtSviMh2jW3AbmtStFD6d
 7ceh2GYBVxMxeFSLWDyUdchFwi7ClIXcyuoj8LAxAfiwKhtuvfv0XRA2p/rIxHVgU9Qgia6YGM
 xp25L+uiT2CZGk6fO/8sV9PvCLPMEt3X9AS/pVNZ/AAAA
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=10024; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=FQ9F8V9IogK7jJRbEdwIcUQ3Z5fLFPQGsEaCXGK8aMM=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBl3FEccGNs9YOdJeXZYGMs8JZpQPtM6S7/Xqe2C
 NkGuF44iLKJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZdxRHAAKCRDBk9HyqkZz
 gqsUD/4+kGalfr6Pi5GAWzwI5jt2xceeE2/C3VbhaQHr3Xtdbvjt7hH8+3bYygF4bIM1oN4B8y3
 4O1cPFUDmP4yZ1hAyMik/f9NkMSG9IRkzJnMm4PGeY6RublSaEdWP23x/LRkwdFwQdp3VM8DbEM
 qJUc9PpuRdtsC8FDYlaO8MIFWJvntFkMIkb6n25h1+4kCog2PzJ6zPTcsfS6DPSHm3uMIQkUedF
 yuVZ2XMTxIXr0L0n1VSpPZwedG4lcK1/gkRvBqtSLDtI85qUWguLDWEZzemfwBAEIg3xsXGvk2p
 XtYe3TuyjboVAesSeD/Asvxa07+CJ/ud/g3fy12kWH2A3JGu9FabpeTL98GZhcprPMP/pahvvHP
 D2c1aqcL2P2bBNyNTd6iNWa0ikoWvxc8FGd3QTDIOZ6cwS4hhqoU+h/3x+ATo3pT1/pKXJ9AyKV
 xMSFwRs/CBOOEvYz8wZSapdq+trXClR5GWxJBpS2ZycjKezgTEY8n1SXvbxtBle1tXbwfObL5IL
 mTTpbgDMUvKgsmt3dZvuLJYOWSd7zk0UOlNja9idA+Lh6fkv4y1YelXjHdzqOSFtB/yhYmb+g8Y
 P7D7nOigq032r6pgeU7oYOIcpL9gntjMnurPc5LMWB6R8mTfnVC6gUOTXKvFR6w4g+6eW9oVahd
 f9XwN6SXnGZBDDg==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1708937501;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=KAH7K+yu20OQtLM/fn3B+lEXpd7888o1GdMRqfyUYsk=;
 b=U+//vRyW8Ma21IDgK4H9dQPWiXCjUrDed64SPLKQLBVzMlshbYfnr1/aT64wlb5D6WFhFm
 53T2Ps55v2d6wCBhGS68dtmwk8AyDlB+lNKnc/VB3N0XvIuA7UjfkUgHt7+RSX95c8gQBs
 6qPfesfxMAUHxcq33jzUml6vL50PFGtZGWL8vYCRYhYJ0AY5ySIAySZ34fpnfNm1eGXSFb
 ZO1pgaIVucZ/NoZN4jUNriSpuABNy8DaBYbmmBJ4k77FRmVKZw5tTYclfViEKb+nxaNZOC
 98uZTXG4Pyy9pEo20jaRGTtHrwoc2+WRQmqr+kPt/jjJe2Ew7bMapsX8RSgMzg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1708937501;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=KAH7K+yu20OQtLM/fn3B+lEXpd7888o1GdMRqfyUYsk=;
 b=GZQMoJqLBDdXcdi3OSuG+kZMhqol4leCo3iabiuWXrChGGA77GUDRjVwQ/einj4fr47Pnh
 mAnxUngCCRtWN3Ag==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=U+//vRyW; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=GZQMoJqL
Subject: [Intel-wired-lan] [PATCH iwl-next] igc: Add MQPRIO offload support
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
Cc: Vinicius Costa Gomes <vinicius.gomes@intel.com>, netdev@vger.kernel.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Kurt Kanzenbach <kurt@linutronix.de>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add support for offloading MQPRIO. The hardware has four priorities as well
as four queues. Each queue must be a assigned with a unique priority.

However, the priorities are only considered in TSN Tx mode. There are two
TSN Tx modes. In case of MQPRIO the Qbv capability is not
required. Therefore, use the legacy TSN Tx mode, which performs strict
priority arbitration.

Example for mqprio with hardware offload:

|tc qdisc replace dev ${INTERFACE} handle 100 parent root mqprio num_tc 4 \
|   map 0 0 0 0 0 1 2 3 0 0 0 0 0 0 0 0 \
|   queues 1@0 1@1 1@2 1@3 \
|   hw 1

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igc/igc.h         | 10 +++-
 drivers/net/ethernet/intel/igc/igc_defines.h |  9 ++++
 drivers/net/ethernet/intel/igc/igc_main.c    | 69 +++++++++++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_regs.h    |  2 +
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 71 +++++++++++++++++++++++++++-
 5 files changed, 157 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 45430e246e9c..c95919f085eb 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -227,6 +227,10 @@ struct igc_adapter {
 	 */
 	spinlock_t qbv_tx_lock;
 
+	bool strict_priority_enable;
+	u8 num_tc;
+	u16 queue_per_tc[IGC_MAX_TX_QUEUES];
+
 	/* OS defined structs */
 	struct pci_dev *pdev;
 	/* lock for statistics */
@@ -343,9 +347,11 @@ extern char igc_driver_name[];
 #define IGC_FLAG_RX_LEGACY		BIT(16)
 #define IGC_FLAG_TSN_QBV_ENABLED	BIT(17)
 #define IGC_FLAG_TSN_QAV_ENABLED	BIT(18)
+#define IGC_FLAG_TSN_LEGACY_ENABLED	BIT(19)
 
-#define IGC_FLAG_TSN_ANY_ENABLED \
-	(IGC_FLAG_TSN_QBV_ENABLED | IGC_FLAG_TSN_QAV_ENABLED)
+#define IGC_FLAG_TSN_ANY_ENABLED				\
+	(IGC_FLAG_TSN_QBV_ENABLED | IGC_FLAG_TSN_QAV_ENABLED |	\
+	 IGC_FLAG_TSN_LEGACY_ENABLED)
 
 #define IGC_FLAG_RSS_FIELD_IPV4_UDP	BIT(6)
 #define IGC_FLAG_RSS_FIELD_IPV6_UDP	BIT(7)
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 5f92b3c7c3d4..73502a0b4df7 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -547,6 +547,15 @@
 
 #define IGC_MAX_SR_QUEUES		2
 
+#define IGC_TXARB_TXQ_PRIO_0_SHIFT	0
+#define IGC_TXARB_TXQ_PRIO_1_SHIFT	2
+#define IGC_TXARB_TXQ_PRIO_2_SHIFT	4
+#define IGC_TXARB_TXQ_PRIO_3_SHIFT	6
+#define IGC_TXARB_TXQ_PRIO_0_MASK	GENMASK(1, 0)
+#define IGC_TXARB_TXQ_PRIO_1_MASK	GENMASK(3, 2)
+#define IGC_TXARB_TXQ_PRIO_2_MASK	GENMASK(5, 4)
+#define IGC_TXARB_TXQ_PRIO_3_MASK	GENMASK(7, 6)
+
 /* Receive Checksum Control */
 #define IGC_RXCSUM_CRCOFL	0x00000800   /* CRC32 offload enable */
 #define IGC_RXCSUM_PCSD		0x00002000   /* packet checksum disabled */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index ba8d3fe186ae..c5d3cc3c4fa9 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6424,6 +6424,13 @@ static int igc_tc_query_caps(struct igc_adapter *adapter,
 	struct igc_hw *hw = &adapter->hw;
 
 	switch (base->type) {
+	case TC_SETUP_QDISC_MQPRIO: {
+		struct tc_mqprio_caps *caps = base->caps;
+
+		caps->validate_queue_counts = true;
+
+		return 0;
+	}
 	case TC_SETUP_QDISC_TAPRIO: {
 		struct tc_taprio_caps *caps = base->caps;
 
@@ -6441,6 +6448,65 @@ static int igc_tc_query_caps(struct igc_adapter *adapter,
 	}
 }
 
+static void igc_save_mqprio_params(struct igc_adapter *adapter, u8 num_tc,
+				   u16 *offset)
+{
+	int i;
+
+	adapter->strict_priority_enable = true;
+	adapter->num_tc = num_tc;
+
+	for (i = 0; i < num_tc; i++)
+		adapter->queue_per_tc[i] = offset[i];
+}
+
+static int igc_tsn_enable_mqprio(struct igc_adapter *adapter,
+				 struct tc_mqprio_qopt_offload *mqprio)
+{
+	struct igc_hw *hw = &adapter->hw;
+	int i;
+
+	if (hw->mac.type != igc_i225)
+		return -EOPNOTSUPP;
+
+	if (!mqprio->qopt.num_tc) {
+		adapter->strict_priority_enable = false;
+		goto apply;
+	}
+
+	/* There are as many TCs as Tx queues. */
+	if (mqprio->qopt.num_tc != adapter->num_tx_queues) {
+		NL_SET_ERR_MSG_FMT_MOD(mqprio->extack,
+				       "Only %d traffic classes supported",
+				       adapter->num_tx_queues);
+		return -EOPNOTSUPP;
+	}
+
+	/* Only one queue per TC is supported. */
+	for (i = 0; i < mqprio->qopt.num_tc; i++) {
+		if (mqprio->qopt.count[i] != 1) {
+			NL_SET_ERR_MSG_MOD(mqprio->extack,
+					   "Only one queue per TC supported");
+			return -EOPNOTSUPP;
+		}
+	}
+
+	/* Preemption is not supported yet. */
+	if (mqprio->preemptible_tcs) {
+		NL_SET_ERR_MSG_MOD(mqprio->extack,
+				   "Preemption is not supported yet");
+		return -EOPNOTSUPP;
+	}
+
+	igc_save_mqprio_params(adapter, mqprio->qopt.num_tc,
+			       mqprio->qopt.offset);
+
+	mqprio->qopt.hw = TC_MQPRIO_HW_OFFLOAD_TCS;
+
+apply:
+	return igc_tsn_offload_apply(adapter);
+}
+
 static int igc_setup_tc(struct net_device *dev, enum tc_setup_type type,
 			void *type_data)
 {
@@ -6460,6 +6526,9 @@ static int igc_setup_tc(struct net_device *dev, enum tc_setup_type type,
 	case TC_SETUP_QDISC_CBS:
 		return igc_tsn_enable_cbs(adapter, type_data);
 
+	case TC_SETUP_QDISC_MQPRIO:
+		return igc_tsn_enable_mqprio(adapter, type_data);
+
 	default:
 		return -EOPNOTSUPP;
 	}
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index d38c87d7e5e8..548764cceba4 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -237,6 +237,8 @@
 #define IGC_TQAVCC(_n)		(0x3004 + ((_n) * 0x40))
 #define IGC_TQAVHC(_n)		(0x300C + ((_n) * 0x40))
 
+#define IGC_TXARB		0x3354 /* Tx Arbitration Control TxARB - RW */
+
 /* System Time Registers */
 #define IGC_SYSTIML	0x0B600  /* System time register Low - RO */
 #define IGC_SYSTIMH	0x0B604  /* System time register High - RO */
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 22cefb1eeedf..5e2e1c6076f3 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -46,6 +46,9 @@ static unsigned int igc_tsn_new_flags(struct igc_adapter *adapter)
 	if (is_cbs_enabled(adapter))
 		new_flags |= IGC_FLAG_TSN_QAV_ENABLED;
 
+	if (adapter->strict_priority_enable)
+		new_flags |= IGC_FLAG_TSN_LEGACY_ENABLED;
+
 	return new_flags;
 }
 
@@ -84,7 +87,7 @@ void igc_tsn_adjust_txtime_offset(struct igc_adapter *adapter)
 static int igc_tsn_disable_offload(struct igc_adapter *adapter)
 {
 	struct igc_hw *hw = &adapter->hw;
-	u32 tqavctrl;
+	u32 tqavctrl, txarb;
 	int i;
 
 	wr32(IGC_GTXOFFSET, 0);
@@ -106,7 +109,26 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
 	wr32(IGC_QBVCYCLET_S, 0);
 	wr32(IGC_QBVCYCLET, NSEC_PER_SEC);
 
+	/* Reset mqprio TC configuration. */
+	netdev_reset_tc(adapter->netdev);
+
+	/* Restore the default Tx arbitration: Priority 0 has the highest
+	 * priority and is assigned to queue 0 and so on and so forth.
+	 */
+	txarb = rd32(IGC_TXARB);
+	txarb &= ~(IGC_TXARB_TXQ_PRIO_0_MASK |
+		   IGC_TXARB_TXQ_PRIO_1_MASK |
+		   IGC_TXARB_TXQ_PRIO_2_MASK |
+		   IGC_TXARB_TXQ_PRIO_3_MASK);
+
+	txarb |= 0x00 << IGC_TXARB_TXQ_PRIO_0_SHIFT;
+	txarb |= 0x01 << IGC_TXARB_TXQ_PRIO_1_SHIFT;
+	txarb |= 0x02 << IGC_TXARB_TXQ_PRIO_2_SHIFT;
+	txarb |= 0x03 << IGC_TXARB_TXQ_PRIO_3_SHIFT;
+	wr32(IGC_TXARB, txarb);
+
 	adapter->flags &= ~IGC_FLAG_TSN_QBV_ENABLED;
+	adapter->flags &= ~IGC_FLAG_TSN_LEGACY_ENABLED;
 
 	return 0;
 }
@@ -123,6 +145,50 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 	wr32(IGC_DTXMXPKTSZ, IGC_DTXMXPKTSZ_TSN);
 	wr32(IGC_TXPBS, IGC_TXPBSIZE_TSN);
 
+	if (adapter->strict_priority_enable) {
+		u32 txarb;
+		int err;
+
+		err = netdev_set_num_tc(adapter->netdev, adapter->num_tc);
+		if (err)
+			return err;
+
+		for (i = 0; i < adapter->num_tc; i++) {
+			err = netdev_set_tc_queue(adapter->netdev, i, 1,
+						  adapter->queue_per_tc[i]);
+			if (err)
+				return err;
+		}
+
+		/* In case the card is configured with less than four queues. */
+		for (; i < IGC_MAX_TX_QUEUES; i++)
+			adapter->queue_per_tc[i] = i;
+
+		/* Configure queue priorities according to the user provided
+		 * mapping.
+		 */
+		txarb = rd32(IGC_TXARB);
+		txarb &= ~(IGC_TXARB_TXQ_PRIO_0_MASK |
+			   IGC_TXARB_TXQ_PRIO_1_MASK |
+			   IGC_TXARB_TXQ_PRIO_2_MASK |
+			   IGC_TXARB_TXQ_PRIO_3_MASK);
+		txarb |= adapter->queue_per_tc[3] << IGC_TXARB_TXQ_PRIO_0_SHIFT;
+		txarb |= adapter->queue_per_tc[2] << IGC_TXARB_TXQ_PRIO_1_SHIFT;
+		txarb |= adapter->queue_per_tc[1] << IGC_TXARB_TXQ_PRIO_2_SHIFT;
+		txarb |= adapter->queue_per_tc[0] << IGC_TXARB_TXQ_PRIO_3_SHIFT;
+		wr32(IGC_TXARB, txarb);
+
+		/* Enable legacy TSN mode which will do strict priority without
+		 * any other TSN features.
+		 */
+		tqavctrl = rd32(IGC_TQAVCTRL);
+		tqavctrl |= IGC_TQAVCTRL_TRANSMIT_MODE_TSN;
+		tqavctrl &= ~IGC_TQAVCTRL_ENHANCED_QAV;
+		wr32(IGC_TQAVCTRL, tqavctrl);
+
+		return 0;
+	}
+
 	for (i = 0; i < adapter->num_tx_queues; i++) {
 		struct igc_ring *ring = adapter->tx_ring[i];
 		u32 txqctl = 0;
@@ -339,7 +405,8 @@ int igc_tsn_offload_apply(struct igc_adapter *adapter)
 	 * cannot be changed dynamically. Require reset the adapter.
 	 */
 	if (netif_running(adapter->netdev) &&
-	    (igc_is_device_id_i225(hw) || !adapter->qbv_count)) {
+	    (igc_is_device_id_i225(hw) || !adapter->qbv_count ||
+	     !adapter->strict_priority_enable)) {
 		schedule_work(&adapter->reset_task);
 		return 0;
 	}

---
base-commit: d206a76d7d2726f3b096037f2079ce0bd3ba329b
change-id: 20240212-igc_mqprio-039650006128

Best regards,
-- 
Kurt Kanzenbach <kurt@linutronix.de>

