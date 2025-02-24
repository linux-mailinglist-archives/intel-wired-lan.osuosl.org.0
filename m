Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D9BA41A23
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Feb 2025 11:05:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 34F274068E;
	Mon, 24 Feb 2025 10:05:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i0Fyv3Ifh0wc; Mon, 24 Feb 2025 10:05:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93E26406AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740391530;
	bh=d+e+E0VGLNHftUjMcnvZObqFHANwPtUYJxKZ682w7Is=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bv28iQp1eKpIxoo9u2e0ILFpg6G//dS0iM0605F5+x1b0epdX328apa4y0EUNdvW7
	 FYWw5KSk430HRxjSRslI53BB4li2dvWO6wO9SGEh8M2EEOfDRtxeq+de41bJrppTiE
	 XZ2f7dJPWJYCAcwHJHzZhCjDsIevqvp+pEfyH6vCPcXbPtGssOyHXV0+jSQzZf0yJ1
	 Px1C3iF2Yua8LbAcWA/gLOLRTMa4wEPec3Iymxf9oMv59S1HyQbtHpphjhj4qbclUV
	 mXjlgf2lstu01iHdCvFMcdcFW5PjUtxRUN+GCso5QE0/h69c3anP3ExZAQNCQcuG35
	 lIgQs0M0QSzkw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 93E26406AE;
	Mon, 24 Feb 2025 10:05:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C4464920
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 10:05:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B36F040686
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 10:05:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9FeHtjYjdD88 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Feb 2025 10:05:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2AA9840625
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2AA9840625
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2AA9840625
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 10:05:27 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Mon, 24 Feb 2025 11:05:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250224-igc_mqprio_tx_mode-v2-1-9666da13c8d8@linutronix.de>
X-B4-Tracking: v=1; b=H4sIAGFEvGcC/22NywqDMBBFf0Vm3ZRkfJR21f8oIhJHHdDEJqlNE
 f+9Qbrs8nC4527gyTF5uGUbOFrZszUJ8JSBHlszkOAuMaDEUqIqBA+6mZ+LY9uE2My2I4Go1VW
 XVVHJEtJwcdRzPKIP4PckDMUAdTIj+2Dd53hb1eF/4cu/8KqEEnlbSOxJ9TlW94nNKzhrOJ47g
 nrf9y+HPAT0wgAAAA==
X-Change-ID: 20250214-igc_mqprio_tx_mode-22c19c564605
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Kurt Kanzenbach <kurt@linutronix.de>
X-Developer-Signature: v=1; a=openpgp-sha256; l=6633; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=nr9NHwyhjfmD8HHtDdS2+zz4Nzy8RaQQ694xTWikdP8=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBnvERj+l4JeThDxrywpodO0oxlt8kpPbrZja93f
 0LIcDzcejuJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZ7xEYwAKCRDBk9HyqkZz
 gjojD/wL4KZm2u+nh/+LOV1wkXijba0NWb4J+K40T4YURxija+A5ZBUpK1LOC+D67Y5cKFSgY8w
 ZXKU+uLt+MQcVJnbAlfK9g9eevjb7RbRjADGpMLQe7a2lshJg2UhPID9l2KJ4PjEyLB+syXLPqE
 zrFy7RbaR6e9DDLV4j6LRTEW/3szjDJjad1pj68CpB/PcbB+6UZc0A5VGfulnH/LU4GgDJreebN
 +2uoeM9ONZHO5ab0mLg0J632xXG/ozM3yWIi8k6IatXO3g3DRd9/mWby1LQ/23Z0tySJ1cChAVi
 caMd5/UPwwaza6RUhW6F+71HP+DpVz5fHLWObTf5lwiE5k0vMYot7oIWr4n0pV3JGSsHOrNQNHp
 kT7RAPtpJSIUsx9f2SsxkGg/FRoou1k9HKq8byubWcYj743jVEwq0e5y6Dv2ZedX7/C2U1+zXvf
 +XUvxFofN7RV68QJbyzjNHmW5krNHEyxQ3N2z68kHmwE4UBIj6sgxJDj8ecs6qXsSHhIfTX+GJf
 5KGI/5GZh/9LlOuNFqWS/O6bsAYmBVdhj8f0sptzWDT7P78rbKhmeSn/yw1FQ1eYJTaoxjneps9
 Ujq8kGd6Ps73UHucM25Vc1Kp8oU8sCi5qE5hKaoRCmZAcKi3RFHkd16niUrruAKrT2v75vuz4hG
 CQOzHixApzbK6sg==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1740391524;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=d+e+E0VGLNHftUjMcnvZObqFHANwPtUYJxKZ682w7Is=;
 b=HBaEOUE1iQbk8wa61cfSuke1jZ6y0d9TCjInmMOAQ1FEbkfexQfRKGj6snLwNUMKBuuWA1
 SMaT9aXMEtBsH273ISpuKMde4xPd7eB2DHuXPLRIrUNs6DG8djewilOUNXRefm6o6zvGJl
 wbcykso5MilxEtwvz3Xef6kI+2/7gu2kyTFRT06lbEJExXlDEDkkEF0+k8usnXYX6kN41T
 jlxYPuoF1VPtYGcuYO+zVim1OFUiCltiX7v3UuB7ipuv4Rv7WtHtAiOKojEVpJIqvbJW3e
 HRrT0crSVpyz0PB1mZbZso/k2qP98NQrk+PSijFzBRZDqk5ud/MXTzC9GTOEiA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1740391524;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=d+e+E0VGLNHftUjMcnvZObqFHANwPtUYJxKZ682w7Is=;
 b=Mj7LUCHdLRltNhvy4uRS0dt8ZyxZgorq4LNNJ0tHsEnL/V5bew0d3DuMp+LrxkkX/jeV8V
 fM4A1ft4hWJNnCAw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=HBaEOUE1; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=Mj7LUCHd
Subject: [Intel-wired-lan] [PATCH iwl-next v2] igc: Change Tx mode for
 MQPRIO offloading
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

The current MQPRIO offload implementation uses the legacy TSN Tx mode. In
this mode the hardware uses four packet buffers and considers queue
priorities.

In order to harmonize the TAPRIO implementation with MQPRIO, switch to the
regular TSN Tx mode. In addition to the legacy mode, transmission is always
coupled to Qbv. The driver already has mechanisms to use a dummy schedule
of 1 second with all gates open for ETF. Simply use this for MQPRIO too.

This reduces code and makes it easier to add support for frame preemption
later.

While at it limit the netdev_tc calls to MQPRIO only.

Tested on i225 with real time application using high priority queue, iperf3
using low priority queue and network TAP device.

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
Changes in v2:
- Add comma to commit message (Faizal)
- Simplify if condition (Faizal)
- Link to v1: https://lore.kernel.org/r/20250217-igc_mqprio_tx_mode-v1-1-3a402fe1f326@linutronix.de
---
 drivers/net/ethernet/intel/igc/igc.h      |  4 +---
 drivers/net/ethernet/intel/igc/igc_main.c | 18 +++++++++++++-
 drivers/net/ethernet/intel/igc/igc_tsn.c  | 40 ++-----------------------------
 3 files changed, 20 insertions(+), 42 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index cd1d7b6c1782352094f6867a31b6958c929bbbf4..16d85bdf55a7e9c412c47acf727bca6bc7154c61 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -388,11 +388,9 @@ extern char igc_driver_name[];
 #define IGC_FLAG_RX_LEGACY		BIT(16)
 #define IGC_FLAG_TSN_QBV_ENABLED	BIT(17)
 #define IGC_FLAG_TSN_QAV_ENABLED	BIT(18)
-#define IGC_FLAG_TSN_LEGACY_ENABLED	BIT(19)
 
 #define IGC_FLAG_TSN_ANY_ENABLED				\
-	(IGC_FLAG_TSN_QBV_ENABLED | IGC_FLAG_TSN_QAV_ENABLED |	\
-	 IGC_FLAG_TSN_LEGACY_ENABLED)
+	(IGC_FLAG_TSN_QBV_ENABLED | IGC_FLAG_TSN_QAV_ENABLED)
 
 #define IGC_FLAG_RSS_FIELD_IPV4_UDP	BIT(6)
 #define IGC_FLAG_RSS_FIELD_IPV6_UDP	BIT(7)
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 3044392e8ded8619434040b9ccaa6b1babdbf685..0f44b0a6c166ae8aa79893ea87f706be5d94397c 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6678,13 +6678,14 @@ static int igc_tsn_enable_mqprio(struct igc_adapter *adapter,
 				 struct tc_mqprio_qopt_offload *mqprio)
 {
 	struct igc_hw *hw = &adapter->hw;
-	int i;
+	int err, i;
 
 	if (hw->mac.type != igc_i225)
 		return -EOPNOTSUPP;
 
 	if (!mqprio->qopt.num_tc) {
 		adapter->strict_priority_enable = false;
+		netdev_reset_tc(adapter->netdev);
 		goto apply;
 	}
 
@@ -6715,6 +6716,21 @@ static int igc_tsn_enable_mqprio(struct igc_adapter *adapter,
 	igc_save_mqprio_params(adapter, mqprio->qopt.num_tc,
 			       mqprio->qopt.offset);
 
+	err = netdev_set_num_tc(adapter->netdev, adapter->num_tc);
+	if (err)
+		return err;
+
+	for (i = 0; i < adapter->num_tc; i++) {
+		err = netdev_set_tc_queue(adapter->netdev, i, 1,
+					  adapter->queue_per_tc[i]);
+		if (err)
+			return err;
+	}
+
+	/* In case the card is configured with less than four queues. */
+	for (; i < IGC_MAX_TX_QUEUES; i++)
+		adapter->queue_per_tc[i] = i;
+
 	mqprio->qopt.hw = TC_MQPRIO_HW_OFFLOAD_TCS;
 
 apply:
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 1e44374ca1ffbb86e9893266c590f318984ef574..7c28f3e7bb576f0e6a21c883e934ede4d53096f4 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -37,18 +37,13 @@ static unsigned int igc_tsn_new_flags(struct igc_adapter *adapter)
 {
 	unsigned int new_flags = adapter->flags & ~IGC_FLAG_TSN_ANY_ENABLED;
 
-	if (adapter->taprio_offload_enable)
-		new_flags |= IGC_FLAG_TSN_QBV_ENABLED;
-
-	if (is_any_launchtime(adapter))
+	if (adapter->taprio_offload_enable || is_any_launchtime(adapter) ||
+	    adapter->strict_priority_enable)
 		new_flags |= IGC_FLAG_TSN_QBV_ENABLED;
 
 	if (is_cbs_enabled(adapter))
 		new_flags |= IGC_FLAG_TSN_QAV_ENABLED;
 
-	if (adapter->strict_priority_enable)
-		new_flags |= IGC_FLAG_TSN_LEGACY_ENABLED;
-
 	return new_flags;
 }
 
@@ -157,16 +152,12 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
 	wr32(IGC_QBVCYCLET_S, 0);
 	wr32(IGC_QBVCYCLET, NSEC_PER_SEC);
 
-	/* Reset mqprio TC configuration. */
-	netdev_reset_tc(adapter->netdev);
-
 	/* Restore the default Tx arbitration: Priority 0 has the highest
 	 * priority and is assigned to queue 0 and so on and so forth.
 	 */
 	igc_tsn_tx_arb(adapter, queue_per_tc);
 
 	adapter->flags &= ~IGC_FLAG_TSN_QBV_ENABLED;
-	adapter->flags &= ~IGC_FLAG_TSN_LEGACY_ENABLED;
 
 	return 0;
 }
@@ -206,37 +197,10 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 		igc_tsn_set_retx_qbvfullthreshold(adapter);
 
 	if (adapter->strict_priority_enable) {
-		int err;
-
-		err = netdev_set_num_tc(adapter->netdev, adapter->num_tc);
-		if (err)
-			return err;
-
-		for (i = 0; i < adapter->num_tc; i++) {
-			err = netdev_set_tc_queue(adapter->netdev, i, 1,
-						  adapter->queue_per_tc[i]);
-			if (err)
-				return err;
-		}
-
-		/* In case the card is configured with less than four queues. */
-		for (; i < IGC_MAX_TX_QUEUES; i++)
-			adapter->queue_per_tc[i] = i;
-
 		/* Configure queue priorities according to the user provided
 		 * mapping.
 		 */
 		igc_tsn_tx_arb(adapter, adapter->queue_per_tc);
-
-		/* Enable legacy TSN mode which will do strict priority without
-		 * any other TSN features.
-		 */
-		tqavctrl = rd32(IGC_TQAVCTRL);
-		tqavctrl |= IGC_TQAVCTRL_TRANSMIT_MODE_TSN;
-		tqavctrl &= ~IGC_TQAVCTRL_ENHANCED_QAV;
-		wr32(IGC_TQAVCTRL, tqavctrl);
-
-		return 0;
 	}
 
 	for (i = 0; i < adapter->num_tx_queues; i++) {

---
base-commit: b66e19dcf684b21b6d3a1844807bd1df97ad197a
change-id: 20250214-igc_mqprio_tx_mode-22c19c564605

Best regards,
-- 
Kurt Kanzenbach
Linutronix GmbH | Bahnhofstraße 3 | D-88690 Uhldingen-Mühlhofen
Phone: +49 7556 25 999 27; Fax.: +49 7556 25 999 99

Hinweise zum Datenschutz finden Sie hier (Informations on data privacy
can be found here): https://linutronix.de/legal/data-protection.php

Linutronix GmbH | Firmensitz (Registered Office): Uhldingen-Mühlhofen |
Registergericht (Registration Court): Amtsgericht Freiburg i.Br., HRB700
806 | Geschäftsführer (Managing Directors): Heinz Egger, Thomas Gleixner
Tiffany Silva, Sean Fennelly, Jeffrey Schneiderman

