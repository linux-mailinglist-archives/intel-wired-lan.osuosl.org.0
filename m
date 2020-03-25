Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 88428191E2E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2020 01:38:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 246D085044;
	Wed, 25 Mar 2020 00:38:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mi99g2QQw0AT; Wed, 25 Mar 2020 00:38:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DF56684E0C;
	Wed, 25 Mar 2020 00:38:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 533EB1BF999
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 00:38:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6852620107
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 00:38:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AnFHTHvy9g-A for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2020 00:38:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id AC6F820009
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 00:38:35 +0000 (UTC)
IronPort-SDR: HAKAyPkvYinJcP8tv7q1HUR3+/gccqy/2NfgVXbkL1BMLOpwpN0aLILebs8pUhym547zNQUNQf
 ue5Pd8g5WOZw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 17:38:35 -0700
IronPort-SDR: /+JmPsrW62vGGY+FKZpgq+5SzYTvxRHPE9ZkAOgT0SbGE/dIAnGbvOuwoD2WFgO6Aggb7FOkOn
 5SVQrN/iWPoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,302,1580803200"; d="scan'208";a="448099344"
Received: from johnorte-mobl2.amr.corp.intel.com ([10.251.10.249])
 by fmsmga006.fm.intel.com with ESMTP; 24 Mar 2020 17:38:34 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Mar 2020 17:38:17 -0700
Message-Id: <20200325003824.5487-4-andre.guedes@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200325003824.5487-1-andre.guedes@intel.com>
References: <20200325003824.5487-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 03/10] igc: Use netdev log helpers in
 igc_ptp.c
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In igc_ptp.c we print log messages using dev_* helpers, generating
inconsistent output with the rest of the driver. Since this is a network
device driver, we should preferably use netdev_* helpers because they
append the interface name to the message, helping making sense out of
the logs.

This patch converts all dev_* calls to netdev_*. It also takes this
opportunity to remove the '\n' character at the end of messages since it
is automatically added by netdev_* log helpers.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index f99c514ad0f4..c292aaf7c79d 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -466,7 +466,7 @@ void igc_ptp_tx_hang(struct igc_adapter *adapter)
 		 * interrupt
 		 */
 		rd32(IGC_TXSTMPH);
-		dev_warn(&adapter->pdev->dev, "clearing Tx timestamp hang\n");
+		netdev_warn(adapter->netdev, "Clearing Tx timestamp hang");
 	}
 }
 
@@ -529,7 +529,7 @@ static void igc_ptp_tx_work(struct work_struct *work)
 		 * interrupt
 		 */
 		rd32(IGC_TXSTMPH);
-		dev_warn(&adapter->pdev->dev, "clearing Tx timestamp hang\n");
+		netdev_warn(adapter->netdev, "Clearing Tx timestamp hang");
 		return;
 	}
 
@@ -626,10 +626,9 @@ void igc_ptp_init(struct igc_adapter *adapter)
 						&adapter->pdev->dev);
 	if (IS_ERR(adapter->ptp_clock)) {
 		adapter->ptp_clock = NULL;
-		dev_err(&adapter->pdev->dev, "ptp_clock_register failed\n");
+		netdev_err(netdev, "ptp_clock_register failed");
 	} else if (adapter->ptp_clock) {
-		dev_info(&adapter->pdev->dev, "added PHC on %s\n",
-			 adapter->netdev->name);
+		netdev_info(netdev, "PHC added");
 		adapter->ptp_flags |= IGC_PTP_ENABLED;
 	}
 }
@@ -666,8 +665,7 @@ void igc_ptp_stop(struct igc_adapter *adapter)
 
 	if (adapter->ptp_clock) {
 		ptp_clock_unregister(adapter->ptp_clock);
-		dev_info(&adapter->pdev->dev, "removed PHC on %s\n",
-			 adapter->netdev->name);
+		netdev_info(adapter->netdev, "PHC removed");
 		adapter->ptp_flags &= ~IGC_PTP_ENABLED;
 	}
 }
-- 
2.25.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
