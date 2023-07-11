Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E270D74E5B6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jul 2023 06:09:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 873D240568;
	Tue, 11 Jul 2023 04:09:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 873D240568
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689048597;
	bh=EOPx9N1jNyXbMq45+YJEW0OLfOVbsLeeo3dnpOubRj4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=N4wiHL5mVfybF5gtUNmMOYKlHZ+c1QcGlA9XIrKV924ZgHlgzIdhFeUZKySdwh71j
	 vlHbK++Zd64EVozqVRv8o2aTxVF86AOTK5IYRvm4XSI0oOcLh58J1X81/Clt0eC8or
	 RghxM4lkOgFpnDuS+maSTlivLrlMx1DWSnQiyFb9xDVG1ZquLGhCDV5z1XYlfnlcXN
	 6s7T/zepXTPuIqpxADp+7t+ysP7LOLTEOBBwKr395ph5k3gUwBaETXD3VIk4p4a1jf
	 kahl+SIzDzhMn6qJkFocHZceec22LrummfXzS2L/1iHi/JI5mY2p0sg/pLXyvTcXb+
	 nN3RlshrUhSXA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wTC6bCzdnINk; Tue, 11 Jul 2023 04:09:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4F81F40354;
	Tue, 11 Jul 2023 04:09:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4F81F40354
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B08191BF36B
 for <intel-wired-lan@osuosl.org>; Tue, 11 Jul 2023 04:09:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 884BA60E2E
 for <intel-wired-lan@osuosl.org>; Tue, 11 Jul 2023 04:09:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 884BA60E2E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DqlzMQccBbET for <intel-wired-lan@osuosl.org>;
 Tue, 11 Jul 2023 04:09:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA00A60D51
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DA00A60D51
 for <intel-wired-lan@osuosl.org>; Tue, 11 Jul 2023 04:09:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="344116976"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="344116976"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 21:09:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="834514986"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="834514986"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jul 2023 21:09:46 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue, 11 Jul 2023 12:08:20 +0800
Message-Id: <20230711040820.16235-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689048589; x=1720584589;
 h=from:to:cc:subject:date:message-id;
 bh=P6PZSdYGfD326ltif5RGOBnjVm9SfsYkkOqgOxEeXxw=;
 b=cGO90dTi6e6H2j60Ug9ZGFKNfzuj151G4bG1tqTwcpnR1s05/7DrqncR
 P021PSLf32rvx9u03Bk8Nvr4geotLg6Tr8TQGVknbe1iN5zw358/Zbqlb
 W95LyU71AJu1jwXUBWAk9bZ8U3l9bR/tgmiRXcnaxaQTxtnfDc93ce0P/
 uNZEVhUkIKJ8d9b8aDalq4hya+sWyn4kOY+W+WDhZZCpMePXynZXA671o
 5AhTbz9GSXaRCEaVTkDx4AZmhzbBe2HjiLgHCFXzh5GI+qVx7UNXda3Hg
 VzJK0MGn+MmE8bXyGdA53owmg1xoPrcd+zlmz9u3RvyRXnQxdxzDvAEnC
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cGO90dTi
Subject: [Intel-wired-lan] [PATCH iwl-net v1] igc: Add lock to safeguard
 global Qbv variables
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
Cc: leon@kernel.org, anthony.l.nguyen@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Access to shared variables through hrtimer requires locking in order
to protect the variables because actions to write into these variables
(oper_gate_closed, admin_gate_closed, and qbv_transition) might potentially
occur simultaneously. This patch provides a locking mechanisms to avoid
such scenarios.

Fixes: 175c241288c0 ("igc: Fix TX Hang issue when QBV Gate is closed")
Suggested-by: Leon Romanovsky <leon@kernel.org>
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      | 4 ++++
 drivers/net/ethernet/intel/igc/igc_main.c | 7 +++++++
 2 files changed, 11 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 9db384f66a8e..38901d2a4680 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -195,6 +195,10 @@ struct igc_adapter {
 	u32 qbv_config_change_errors;
 	bool qbv_transition;
 	unsigned int qbv_count;
+	/* Access to oper_gate_closed, admin_gate_closed and qbv_transition
+	 * are protected by the qbv_tx_lock.
+	 */
+	spinlock_t qbv_tx_lock;
 
 	/* OS defined structs */
 	struct pci_dev *pdev;
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index bdeb36790d77..cae717cb506e 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -4801,6 +4801,7 @@ static int igc_sw_init(struct igc_adapter *adapter)
 	adapter->nfc_rule_count = 0;
 
 	spin_lock_init(&adapter->stats64_lock);
+	spin_lock_init(&adapter->qbv_tx_lock);
 	/* Assume MSI-X interrupts, will be checked during IRQ allocation */
 	adapter->flags |= IGC_FLAG_HAS_MSIX;
 
@@ -6619,8 +6620,11 @@ static enum hrtimer_restart igc_qbv_scheduling_timer(struct hrtimer *timer)
 {
 	struct igc_adapter *adapter = container_of(timer, struct igc_adapter,
 						   hrtimer);
+	unsigned long flags;
 	unsigned int i;
 
+	spin_lock_irqsave(&adapter->qbv_tx_lock, flags);
+
 	adapter->qbv_transition = true;
 	for (i = 0; i < adapter->num_tx_queues; i++) {
 		struct igc_ring *tx_ring = adapter->tx_ring[i];
@@ -6633,6 +6637,9 @@ static enum hrtimer_restart igc_qbv_scheduling_timer(struct hrtimer *timer)
 		}
 	}
 	adapter->qbv_transition = false;
+
+	spin_unlock_irqrestore(&adapter->qbv_tx_lock, flags);
+
 	return HRTIMER_NORESTART;
 }
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
