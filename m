Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5567DA6BC13
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Mar 2025 14:53:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 034E383FEB;
	Fri, 21 Mar 2025 13:53:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eC2YgeFoe0hB; Fri, 21 Mar 2025 13:53:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3AEB282D17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742565182;
	bh=m95qou3jMu2nip29BsHc7wsZbSBUImNGgt+uAyGTygs=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=I3rixp3KBv2YugjDR2l5tG1SnbOqE8aax54lG4SeBDnjmHYxf0MMY4CsuFaLDiXRM
	 h1jni9usIVq1EltiF479Ws4DP7B0RxfbrjhiGUyRQFOnb/jRrtzSdna0zh074fK7aW
	 vJRpCMNIMiI1qWJA+4V0yUR7uDOwwMp3UwE22zzlQIbS99vymRQTSDGRUSqRMv87Te
	 G8uflrNa2cfalFdq4Z3tdnQSBq4uCuOxeEEs7/nAYYeYM5Xc4GxlMof/NXephO0nK4
	 5fdhR7Axc/WK2HaidaESEc7pJgJkx4ump24gd7cdCgKjSvcHStFfFdADlA9lCeNZFH
	 nsV9NgEpQgpTA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3AEB282D17;
	Fri, 21 Mar 2025 13:53:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5D8E512F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Mar 2025 13:53:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4EF934087B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Mar 2025 13:53:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TCYykeDHtobC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Mar 2025 13:52:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 759E24088F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 759E24088F
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 759E24088F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Mar 2025 13:52:59 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Fri, 21 Mar 2025 14:52:39 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250321-igc_mqprio_tx_mode-v4-2-4571abb6714e@linutronix.de>
References: <20250321-igc_mqprio_tx_mode-v4-0-4571abb6714e@linutronix.de>
In-Reply-To: <20250321-igc_mqprio_tx_mode-v4-0-4571abb6714e@linutronix.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, Kurt Kanzenbach <kurt@linutronix.de>
X-Developer-Signature: v=1; a=openpgp-sha256; l=3530; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=OBqa7ZPlM/9BNeSZs0Zqe0m3DXXtZrpZd939GnwK/QQ=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBn3W82/KlIPAPJHGWdcOkqyLJjtq993YhXzz5ZG
 nSbMu7P49WJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZ91vNgAKCRDBk9HyqkZz
 grZDEACT2LUVLVxbWnhyGeY9O5vlbJr48vsEpn7vkB37UQA6Ka1KFXFtCeAUzKp2XC8W3GEM37D
 DdZKryiL6WY8leQITIKnGBDXbbeQrfVsANl9+WWitn6WH3af/+H7oCDa4pQFm2O9nnNa7Wegiql
 TSX6e8XJHIgeX4iAQ/8PBOVpEcpgmv2Da5jQwsaBf4r5ZTu1Ji7a5Tt173eFOPKgZYQEzYlIGED
 zmPh/DSVNpixmlMXy3jqbP+S4Afhh9ug+J3loaSP2zkuTPjJM/m/3sNeMMlWSFwosg9W2GPr/3O
 qrZzDM9bkCP5jhVnQqHzbI/bvHqyx2WuWERYZ7/WsgtiBZsDk9Z9LsjPRb+BFZdLXPhdTVVvdny
 fQ5tZnmMu8/kuQpd84sdk/cquThaEniwOaxhV+NX9AGyUQpVGwD1bXwdDuB5azHkIZjLti84U/V
 dR4d5Q8EEJ2EIHnv4Eq0xTMsP+PT5kNQS8XeRLzR3RpNYmQaOssX9F4uMGWHG/Lo44zF3xyxHt3
 P9vlv5k3hHxHp73x3iXeuS/OO2erDQzkg7fUFgPLE/xDdNvx2oLDAYZtvdE0mI3iHzqwrD1nB/F
 9NOGZQ3DjyGaF2YszZwqFqOf5EQx4D5Op4OEqW7pugHW4Xl66SICnj3NXdMNN4/zwWXCk4sAiIP
 P1a8eYj1jcQGc0g==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1742565177;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=m95qou3jMu2nip29BsHc7wsZbSBUImNGgt+uAyGTygs=;
 b=CxY12khI6Xy7J7amlSM3+k7ZAWdQpmfU+uQ7uhVG+TSOnx67TpgzaIOEBJSUf0AaQE9i+4
 mKFhrH/11IvmpvLbXQCKB0HhvYwAS3mhuVdH9OlQnCfwf2qGizIEVU59fgfIdbLOJ4o5zT
 OgYLvoi235E87B1N3idNNinWXS4MlFXnhvxliUdKBICjQSj2bn0LM33vIBk+In8QrYwYQI
 J6U8Q/cciHQHA3/GH1RygNP0gkSdHQAkD3dVot72q66/DY0OczF8/O6Lj8HavSlOIglPlA
 0++B25zR4FzcoZ9haKs2zxvpvy0RPq45D/TaMdqP7SCiqOqFiUOLOmc6MmEZiA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1742565177;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=m95qou3jMu2nip29BsHc7wsZbSBUImNGgt+uAyGTygs=;
 b=w4fG0ik5+tDhnv6lygvDwegPVjeAhQFvxPeSgaLJYvnAZXe0bDA62V/xprZg59BG71HN2O
 piNcvnjJYBLS0mCg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=CxY12khI; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=w4fG0ik5
Subject: [Intel-wired-lan] [PATCH iwl-next v4 2/2] igc: Change Tx mode for
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
regular TSN Tx mode. This mode also uses four packet buffers and considers
queue priorities. In addition to the legacy mode, transmission is always
coupled to Qbv. The driver already has mechanisms to use a dummy schedule
of 1 second with all gates open for ETF. Simply use this for MQPRIO too.

This reduces code and makes it easier to add support for frame preemption
later.

Tested on i225 with real time application using high priority queue, iperf3
using low priority queue and network TAP device.

Acked-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igc/igc.h     |  4 +---
 drivers/net/ethernet/intel/igc/igc_tsn.c | 20 ++------------------
 2 files changed, 3 insertions(+), 21 deletions(-)

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
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 67632356083708f82a099141a4b68ba10e06f952..7c28f3e7bb576f0e6a21c883e934ede4d53096f4 100644
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
 
@@ -163,7 +158,6 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
 	igc_tsn_tx_arb(adapter, queue_per_tc);
 
 	adapter->flags &= ~IGC_FLAG_TSN_QBV_ENABLED;
-	adapter->flags &= ~IGC_FLAG_TSN_LEGACY_ENABLED;
 
 	return 0;
 }
@@ -207,16 +201,6 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
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

-- 
2.39.5

