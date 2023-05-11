Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEDE96FFCF2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 01:07:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4799841E1B;
	Thu, 11 May 2023 23:07:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4799841E1B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683846473;
	bh=29xQWgmXevWxzAe48BZPGD+9p7UveZNV8Wf9JNPI18w=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cQaichqwDsb3sp8SWKpf24C/1uk8B8n8IjwO92+imC06RanX3FDDnC2PuakgDqhFl
	 8vj0ZK0ADv6lgy/ltGMXqNU1fhzmV559fPL25NqsLZefUo8i8ZRZBKZvwRElKnqjs0
	 XYLcOag5TRDaaYb5RTZF10RAGqeJ2j8Juqx++X8GS38X24xqBjrDowf7bheZu56+e2
	 DF75/oItj6KS3alYfdjK+3QxeSwMl+9yhuYp+3SKW7XpgKskdWVDE1i0yC/BQggmdD
	 LM9Ud14Yom3aU6uAzm5MK3AM8Y0/q0t/elR7K8qFhjz+w/hvVtJKBN6GfJsMMpKNXQ
	 UC+NjmQSLX4pw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nLa48NhxMRaO; Thu, 11 May 2023 23:07:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 23BAB415A0;
	Thu, 11 May 2023 23:07:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 23BAB415A0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3B63D1BF276
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 23:07:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 368C441DFF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 23:07:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 368C441DFF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6GKBQAI668XB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 May 2023 23:07:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 699D6415A0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 699D6415A0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 23:07:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="339959133"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="339959133"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 16:07:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="946374628"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="946374628"
Received: from vcostago-mobl3.jf.intel.com ([10.24.14.106])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 16:07:40 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 11 May 2023 16:07:29 -0700
Message-Id: <20230511230731.105152-3-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230511230731.105152-1-vinicius.gomes@intel.com>
References: <20230511230731.105152-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683846462; x=1715382462;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e6LM0uH2v0WRRw1/zjJnGuNyp5LPpYnimrPYQqtBZAA=;
 b=mXUJaH0yVvwS+DSHeGDuW9VWfB1hKDVe7I5rP8IxNSSEDaBeZh6p3QQP
 Yjqg3qIQ0RHluIXCE/sFhq42OKYtows5zp6RyuCXW5zjX0cxP4IJplMhs
 oazDDFwjAqA/yHcKBPnTAnqNEg2UNvZ/8OpaFQtFULsfbksWvSumdamMB
 T+vPL1noCirf73Cn26RDlAcdTjmMRsrkLxHmR9NLvr5K8VBDM6qsYBNwa
 vUX3clH1QNHxFxiORckJ5XPaChEEPyL+3K7CYr0D//VxizL4M5Oob9T03
 +w4d0Kzk3Io80bZ5/8FEHqmW43QQnx7vumfM3LC/iCQycriNBrDfe9HE5
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mXUJaH0y
Subject: [Intel-wired-lan] [PATCH iwl-net v2 2/4] igc: Check if hardware TX
 timestamping is enabled earlier
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
Cc: vladimir.oltean@nxp.com, kurt@linutronix.de, anthony.l.nguyen@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Before requesting a packet transmission to be hardware timestamped,
check if the user has TX timestamping enabled. Fixes an issue that if
a packet was internally forwarded to the NIC, and it had the
SKBTX_HW_TSTAMP flag set, the driver would mark that timestamp as
skipped.

In reality, that timestamp was "not for us", as TX timestamp could
never be enabled in the NIC.

Checking if the TX timestamping is enabled earlier has a secondary
effect that when TX timestamping is disabled, there's no need to check
for timestamp timeouts.

We should only take care to free any pending timestamp when TX
timestamping is disabled, as that skb would never be released
otherwise.

Fixes: 2c344ae24501 ("igc: Add support for TX timestamping")
Suggested-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c |  5 +++--
 drivers/net/ethernet/intel/igc/igc_ptp.c  | 23 ++++++++++++++++++++---
 2 files changed, 23 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index a61afa69975e..b383352651a5 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1578,7 +1578,8 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 		}
 	}
 
-	if (unlikely(skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP)) {
+	if (unlikely(adapter->tstamp_config.tx_type == HWTSTAMP_TX_ON &&
+		     skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP)) {
 		/* FIXME: add support for retrieving timestamps from
 		 * the other timer registers before skipping the
 		 * timestamping request.
@@ -1586,7 +1587,7 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 		unsigned long flags;
 
 		spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
-		if (adapter->tstamp_config.tx_type == HWTSTAMP_TX_ON && !adapter->ptp_tx_skb) {
+		if (!adapter->ptp_tx_skb) {
 			skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;
 			tx_flags |= IGC_TX_FLAGS_TSTAMP;
 
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 56128e55f5c0..4dd0eec5a246 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -536,11 +536,27 @@ static void igc_ptp_enable_rx_timestamp(struct igc_adapter *adapter)
 	wr32(IGC_TSYNCRXCTL, val);
 }
 
+static void igc_ptp_clear_tx_tstamp(struct igc_adapter *adapter)
+{
+	unsigned long flags;
+
+	cancel_work_sync(&adapter->ptp_tx_work);
+
+	spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
+
+	dev_kfree_skb_any(adapter->ptp_tx_skb);
+	adapter->ptp_tx_skb = NULL;
+
+	spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);
+}
+
 static void igc_ptp_disable_tx_timestamp(struct igc_adapter *adapter)
 {
 	struct igc_hw *hw = &adapter->hw;
 
 	wr32(IGC_TSYNCTXCTL, 0);
+
+	igc_ptp_clear_tx_tstamp(adapter);
 }
 
 static void igc_ptp_enable_tx_timestamp(struct igc_adapter *adapter)
@@ -620,6 +636,9 @@ void igc_ptp_tx_hang(struct igc_adapter *adapter)
 {
 	unsigned long flags;
 
+	if (adapter->tstamp_config.tx_type != HWTSTAMP_TX_ON)
+		return;
+
 	spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
 
 	if (!adapter->ptp_tx_skb)
@@ -1026,9 +1045,7 @@ void igc_ptp_suspend(struct igc_adapter *adapter)
 	if (!(adapter->ptp_flags & IGC_PTP_ENABLED))
 		return;
 
-	cancel_work_sync(&adapter->ptp_tx_work);
-	dev_kfree_skb_any(adapter->ptp_tx_skb);
-	adapter->ptp_tx_skb = NULL;
+	igc_ptp_clear_tx_tstamp(adapter);
 
 	if (pci_device_is_present(adapter->pdev)) {
 		igc_ptp_time_save(adapter);
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
