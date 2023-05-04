Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B52A56F79D9
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 May 2023 01:53:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B50941F0C;
	Thu,  4 May 2023 23:53:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B50941F0C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683244381;
	bh=8s9dKB59xL8ssZMtp1A5kbl1c4lCwPHlr12Gz7eCQZI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0QiCA7EMKbFJNJaK/XYbnhaKRfx5Luxe3cRRWmpPlFJQhL+JUCEskoVSwo2k7U2Wg
	 Xp4YxWFH3af2rsPonDbPifGU2lSioN4ujbNQjmcrwMTshgt80WwYTRln+bNyPJMAjw
	 eR7H+LFwAwkKSo6jwrgEfJysHO7kWWZOqyJ5kbugiQbwmTsmTleC2flqGId1lvzbfv
	 aLdppuT4uDUVwq7YB41aoeQlC9OlSPDOrrlGZgTgjUSW4PUOgSoJFna1mBkJ33Mdvk
	 jUiH17iib3APEln7Jg/pES7pVoDS+r5tUlRtlxoFblP1JqYGHDW3jdK2xNxhe+OgbZ
	 bqpWOXPxjTn0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZzE8Y39IuRaf; Thu,  4 May 2023 23:53:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB8C841F0D;
	Thu,  4 May 2023 23:52:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB8C841F0D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 799241BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 23:52:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5400841F0D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 23:52:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5400841F0D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pERk3KTxh-bj for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 May 2023 23:52:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 408A741F0C
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 408A741F0C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 23:52:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="412301479"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="412301479"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 16:52:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="841423498"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="841423498"
Received: from haitianc-mobl2.amr.corp.intel.com (HELO
 vcostago-mobl3.intel.com) ([10.209.47.201])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 16:52:43 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  4 May 2023 16:52:31 -0700
Message-Id: <20230504235233.1850428-4-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230504235233.1850428-1-vinicius.gomes@intel.com>
References: <20230504235233.1850428-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683244365; x=1714780365;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SrhG9mp9K5NyWthojg3GvVMBQd9jBfz7pVrkokFnZRo=;
 b=NvQXpcvPeiQwFaLl2k0pYiTNEgJejAZhcaPS6CgGIXf/J49Cez0hyg3g
 mWhOG5RUMwh6OAjy2JkhdGVNkvbWnkeNT+XqmgaNb0MOUoBZUgtCbDDP4
 J393f9POQ8r3q0kvRf4EaErDxvCNJla1RRcvubJdpum706udG8K4CFJBc
 +soBGN9v1ew8ieWEctE5dDEx5IzhanzQQhfWuI+JgGOEa8Ut2QuDXpZQ3
 e81Sy6W1+pY/oNI7ZiRHSmaL808JKapbSXu1TuVJkJjRQ8GzqFxwr+dPe
 YAIeECv/dxn4p0hgYb3QY8j3uoaqpP/jMWu1lpx9rekC1h5xjaQWK4yLU
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NvQXpcvP
Subject: [Intel-wired-lan] [PATCH iwl v1 3/5] igc: Fix checking for tstamp
 timeouts TX tstamp is off
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

When TX timestamping is disabled, there's no need to check for
timestamp timeouts.

We should only take care to free any pending timestamp when TX
timestamping is disabled, as that skb would never be released
otherwise.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 23 ++++++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

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
