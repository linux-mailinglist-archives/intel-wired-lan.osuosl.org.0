Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D351FA38228
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Feb 2025 12:46:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F4EE60DFE;
	Mon, 17 Feb 2025 11:46:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VmkmhNfd6JNl; Mon, 17 Feb 2025 11:46:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 86EDF60DDF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739792767;
	bh=UQnxmLR9OvONdKrBpT4mZgYi9x/8XHDdQejUcyVnDIU=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Mw0nt59cJ2xTPLJhptEbRaqxsEbrcMgNfp5FCcJkbsjowlHsoLfhd04cbZtQDw2Rj
	 NPpVInC4fdDPqeO+/dusA9LuHBDi8y+wmEYFONvuP9IdainFRFDD+Ewpp1SO1XybZX
	 dBfnledb2o6mT+ugDgbxIFBVAeiGT0/H4z1qaOb60vbGyV0ZY7nwG6VpIe9Up/F2xN
	 MfiVE/G0NQUV46++U+4bR5bZtkYNL3hwh/f7GurWqAJL/aZJt0yn7/X9APtJWFDRqW
	 +uMe4TvxdcFdR0ZOd/Z4OZwhmJh2w4mcPuTO2wbv3FT4Hu3bzZ+reKIHY6G81RzCEJ
	 jWS4++F2AGaiQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 86EDF60DDF;
	Mon, 17 Feb 2025 11:46:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 06E83C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 11:46:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D3525410C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 11:46:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sBIPYZhTOVHj for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Feb 2025 11:46:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 771C740677
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 771C740677
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 771C740677
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 11:46:03 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Mon, 17 Feb 2025 12:45:57 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250217-igc_mqprio_tx_mode-v1-1-3a402fe1f326@linutronix.de>
X-B4-Tracking: v=1; b=H4sIAHQhs2cC/x3MQQqAIBBA0avErBN0yKCuEiFhUw2UlkYJ0d2Tl
 m/x/wORAlOEtngg0MWRvctQZQF2GdxMgsdsQIlaoqoEz9Zsxx7YmzOZzY8kEK1qrK6rWmrI4R5
 o4vRPO+B7FY7SCf37fk/g279uAAAA
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5569; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=p0rBIN2HI6/pNqPIxToqu0WP8vhblULV54uUo06gBss=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBnsyF4HI1gpQTPg0re0+oxZ326+rhAQJkLbUIEo
 6WB4/CXsvWJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZ7MheAAKCRDBk9HyqkZz
 glxMD/4tejfhf2VWjkwEH9MDYLI/J6p0Lt3Q+sfqb6B3UVgg78yxmT1HA06YUJPRdK/Nm5II5SH
 MPZsdsNHnY455Twt3UtQsK9FBwB6kzStomyrCNbHyQdzpXlmjZ0E4fZdt4kzkuSCpZbPqGBC8Lh
 90yDsvH4rrEpFLkW8SFFWE+S9uUbhavU+JQWM3/CweG3UfemqvuXj0QlIrtBR6lCXjTrcTsX7oI
 jIDIeN+psRRom6fZloNS4sS7pFjW5xuumMMnkzA0Y/smN++r5UewaZCviYlU+0aKYDEuT9hXNpP
 eSO/gydjYQGerTVIyQYzyc1/CwB6tLybxHhC40D+cQF1Pxxc/MFARjJJHYryVdBJxyV5TOOy7Ta
 TIHQ1lM6wfAo/uNBv/wsaanzw0z+PNViVEuKYq5O5YpOFppTq+95PWdLHYcknz0W8hqCy0BiQlL
 Jj+4ZJBu8Vb3F9YAubpUwTLnPPOERe+DJIsZi2jc9NafB/4cXjxFrAl18wOq48PmCk6jKna2AZu
 6VEycaDH+ljXf1JBO3M4uwkgpVtcZbdz6mIo3+zVMjuqAQHE14KDOx/ck0e170bZXXxDpWaADaL
 BhT2EwWcNktSac5wvujNb5KlaG3hnvrGQ1yXCpWJISaTEwfdkvEOfbAtejZfitlb3lJh8wgB4bq
 Pmvk8XFG0iNrHzQ==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1739792761;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=UQnxmLR9OvONdKrBpT4mZgYi9x/8XHDdQejUcyVnDIU=;
 b=sro5RGIj925ECUzB43GPA2i9AuKb0fuGazkx/XtBYwWuOOEHEmsWWAv5FKOhulqewdIPky
 s5SIJDEl9PqAd0rSsiPQNuPPy7itjo/Ng9fWJB/G9Lg6nhl6Mh9SLvhn8v1ZzN1nawBMaR
 RdGyHU6O2OWZQoQw9GOKSLlKSZj58GdkwOXOWetIjwpVivJCu10TVUwtR2HFGoXGz9AAz9
 Jsn/My1hJDEXQhjCvckhgFKgmWNvUFWpr+KBrssThhi3AQZw7ZHcWFDLS/gGavfjo3bcFr
 YZWCrNwq0a3QHodhVlkvagmv6k+TNyVuU3TTv4HqB7Mk1TqpeZZlOgAWXo+kvw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1739792761;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=UQnxmLR9OvONdKrBpT4mZgYi9x/8XHDdQejUcyVnDIU=;
 b=TXGQkcEcdSdh2cGtlKUGwajBvbGzF8U53fEA4m7T0gJiWw6yDUiEHPngvQjg3XGP12Y7hz
 ktf/0Q+TzuwEixCQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=sro5RGIj; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=TXGQkcEc
Subject: [Intel-wired-lan] [PATCH iwl-next] igc: Change Tx mode for MQPRIO
 offloading
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

In order to harmonize the TAPRIO implementation with MQPRIO switch to the
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
 drivers/net/ethernet/intel/igc/igc.h      |  4 +---
 drivers/net/ethernet/intel/igc/igc_main.c | 18 ++++++++++++++++-
 drivers/net/ethernet/intel/igc/igc_tsn.c  | 33 +------------------------------
 3 files changed, 19 insertions(+), 36 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index b8111ad9a9a83dbe1257d8011e046cbd263022c3..95f503f7a41f42358302d4726ef82032278fbd29 100644
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
index 84307bb7313e0fcb7d598e67586f1ea076c1d942..7a37a54c5aa9f36505a98a42959ba8276469ce36 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6603,13 +6603,14 @@ static int igc_tsn_enable_mqprio(struct igc_adapter *adapter,
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
 
@@ -6640,6 +6641,21 @@ static int igc_tsn_enable_mqprio(struct igc_adapter *adapter,
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
index 1e44374ca1ffbb86e9893266c590f318984ef574..6e4582de9602db2c6667f1736cc2acaa4d4b5201 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -47,7 +47,7 @@ static unsigned int igc_tsn_new_flags(struct igc_adapter *adapter)
 		new_flags |= IGC_FLAG_TSN_QAV_ENABLED;
 
 	if (adapter->strict_priority_enable)
-		new_flags |= IGC_FLAG_TSN_LEGACY_ENABLED;
+		new_flags |= IGC_FLAG_TSN_QBV_ENABLED;
 
 	return new_flags;
 }
@@ -157,16 +157,12 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
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
@@ -206,37 +202,10 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
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
base-commit: 0784d83df3bfc977c13252a0599be924f0afa68d
change-id: 20250214-igc_mqprio_tx_mode-22c19c564605

Best regards,
-- 
Kurt Kanzenbach <kurt@linutronix.de>

