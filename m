Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA1175B31C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jul 2023 17:39:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F0408416A2;
	Thu, 20 Jul 2023 15:39:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F0408416A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689867592;
	bh=6wHKhPtrHJ3Iswh5uClUl1o/QDpHHkUyA8CzKXlglEw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HSTBA1lxpZ4mRDDHWrY11Pe2UpQn8Z2omiMATjYXtvnYSXAlpvPrGmzwHKhya0eZc
	 vetmLOODfYmiwag2DE6iIKgVcJXDpyPI5LFjyg3AK0Nb9PUuLRqJDmEgP7i9tkeD3N
	 HJVGhlwjENEdQNJaVYC6VtEnCJg7YL5FGmuaiIl4+ZXl93eSX0neTqjb1jHaWdD8vG
	 iVnuL0qgrjwiDn014lEyznJ6sA86I0EZUc8s2BWh0K3B0SrUqyV5DIvKPX6dBQXX14
	 ngLn9BqwnXdtuTQkzLJP2EmlPyvPog1wd4uEkKCWkm+FSufMWA2neXAxjBDR6+pW6u
	 toWAH0G62fD8g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F5JZAbEfTu_3; Thu, 20 Jul 2023 15:39:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BE76A405E2;
	Thu, 20 Jul 2023 15:39:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE76A405E2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CB1DE1BF2F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 14:58:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A2A07813C7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 14:58:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2A07813C7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UqVUggOOn8NT for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jul 2023 14:58:03 +0000 (UTC)
X-Greylist: delayed 442 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 20 Jul 2023 14:58:03 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 331A8813B6
Received: from bacon.elettra.eu (bacon.elettra.eu [140.105.206.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 331A8813B6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 14:58:02 +0000 (UTC)
X-Envelope-From: <alessio.bogani@elettra.eu>
Received: from zmp.elettra.eu (zmp.elettra.trieste.it [140.105.206.204])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bacon.elettra.eu (Postfix) with ESMTPS id 892334043B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 16:50:31 +0200 (CEST)
Received: from zmp.elettra.eu (localhost [127.0.0.1])
 by zmp.elettra.eu (Postfix) with ESMTPS id 7E31C146CE2F;
 Thu, 20 Jul 2023 16:50:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zmp.elettra.eu (Postfix) with ESMTP id 694DF146CE31;
 Thu, 20 Jul 2023 16:50:31 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zmp.elettra.eu
Received: from zmp.elettra.eu ([127.0.0.1])
 by localhost (zmp.elettra.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id AmKHNPawTSAR; Thu, 20 Jul 2023 16:50:31 +0200 (CEST)
Received: from pc-bogani.fcs.elettra.trieste.it (pc-bogani.elettra.trieste.it
 [192.168.205.85])
 by zmp.elettra.eu (Postfix) with ESMTP id 4789D146CE2F;
 Thu, 20 Jul 2023 16:50:31 +0200 (CEST)
From: Alessio Igor Bogani <alessio.bogani@elettra.eu>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 20 Jul 2023 16:50:29 +0200
Message-Id: <20230720145029.19674-1-alessio.bogani@elettra.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <26d9aed2-6eba-9f19-3948-8d6fb8c9768b@intel.com>
References: <26d9aed2-6eba-9f19-3948-8d6fb8c9768b@intel.com>
X-elettra-Libra-ESVA-Information: Please contact elettra for more information
X-elettra-Libra-ESVA-ID: 892334043B.AB6C8
X-elettra-Libra-ESVA: No virus found
X-elettra-Libra-ESVA-From: alessio.bogani@elettra.eu
X-elettra-Libra-ESVA-Watermark: 1690469432.10591@E6c6wiVExXINoVR+fdQ7dg
X-Mailman-Approved-At: Thu, 20 Jul 2023 15:39:46 +0000
Subject: [Intel-wired-lan] [PATCH] igb: Avoid starting unnecessary workqueues
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
Cc: Alessio Igor Bogani <alessio.bogani@elettra.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

if ptp_clock_register() fails or CONFIG_PTP isn't enabled avoid starting PTP related workqueues.

In this way we can fix this:
 BUG: unable to handle page fault for address: ffffc9000440b6f8
 #PF: supervisor read access in kernel mode
 #PF: error_code(0x0000) - not-present page
 PGD 100000067 P4D 100000067 PUD 1001e0067 PMD 107dc5067 PTE 0
 Oops: 0000 [#1] PREEMPT SMP
 [...]
 Workqueue: events igb_ptp_overflow_check
 RIP: 0010:igb_rd32+0x1f/0x60
 [...]
 Call Trace:
  igb_ptp_read_82580+0x20/0x50
  timecounter_read+0x15/0x60
  igb_ptp_overflow_check+0x1a/0x50
  process_one_work+0x1cb/0x3c0
  worker_thread+0x53/0x3f0
  ? rescuer_thread+0x370/0x370
  kthread+0x142/0x160
  ? kthread_associate_blkcg+0xc0/0xc0
  ret_from_fork+0x1f/0x30

Fixes: 1f6e8178d685 ("igb: Prevent dropped Tx timestamps via work items and interrupts.")
Fixes: d339b1331616 ("igb: add PTP Hardware Clock code")
Signed-off-by: Alessio Igor Bogani <alessio.bogani@elettra.eu>
---
 drivers/net/ethernet/intel/igb/igb_ptp.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
index 6f471b91f562..8165232052c8 100644
--- a/drivers/net/ethernet/intel/igb/igb_ptp.c
+++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
@@ -1390,18 +1390,6 @@ void igb_ptp_init(struct igb_adapter *adapter)
 		return;
 	}
 
-	spin_lock_init(&adapter->tmreg_lock);
-	INIT_WORK(&adapter->ptp_tx_work, igb_ptp_tx_work);
-
-	if (adapter->ptp_flags & IGB_PTP_OVERFLOW_CHECK)
-		INIT_DELAYED_WORK(&adapter->ptp_overflow_work,
-				  igb_ptp_overflow_check);
-
-	adapter->tstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
-	adapter->tstamp_config.tx_type = HWTSTAMP_TX_OFF;
-
-	igb_ptp_reset(adapter);
-
 	adapter->ptp_clock = ptp_clock_register(&adapter->ptp_caps,
 						&adapter->pdev->dev);
 	if (IS_ERR(adapter->ptp_clock)) {
@@ -1411,6 +1399,18 @@ void igb_ptp_init(struct igb_adapter *adapter)
 		dev_info(&adapter->pdev->dev, "added PHC on %s\n",
 			 adapter->netdev->name);
 		adapter->ptp_flags |= IGB_PTP_ENABLED;
+
+		spin_lock_init(&adapter->tmreg_lock);
+		INIT_WORK(&adapter->ptp_tx_work, igb_ptp_tx_work);
+
+		if (adapter->ptp_flags & IGB_PTP_OVERFLOW_CHECK)
+			INIT_DELAYED_WORK(&adapter->ptp_overflow_work,
+					  igb_ptp_overflow_check);
+
+		adapter->tstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
+		adapter->tstamp_config.tx_type = HWTSTAMP_TX_OFF;
+
+		igb_ptp_reset(adapter);
 	}
 }
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
