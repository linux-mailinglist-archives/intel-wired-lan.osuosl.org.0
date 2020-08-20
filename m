Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC3324C82C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Aug 2020 01:03:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ABDC6884FB;
	Thu, 20 Aug 2020 23:03:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fpOTtOff3h2o; Thu, 20 Aug 2020 23:03:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5EDA7884E4;
	Thu, 20 Aug 2020 23:03:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9B4851BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Aug 2020 23:03:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6626322920
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Aug 2020 23:03:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W3vPFvczFbse for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Aug 2020 23:03:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 3717222D10
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Aug 2020 23:02:36 +0000 (UTC)
IronPort-SDR: 2zxpMCVGugai1ZRGI8qZFSaxHInMC8oRgHVNq/mcTGxrpQDnsRY0zcQJkQftlxSmcXIRClwWjQ
 5Urnp7JIIp8A==
X-IronPort-AV: E=McAfee;i="6000,8403,9719"; a="156476583"
X-IronPort-AV: E=Sophos;i="5.76,334,1592895600"; d="scan'208";a="156476583"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2020 16:02:36 -0700
IronPort-SDR: 0H1VqQDYiIsHTzlCbcwHsHg0i8oc4CdOPiCmWYax41csDEQTo7h/+Axc8AOou2pFtvxOIga+a1
 V/3uqsu5PTfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,334,1592895600"; d="scan'208";a="442154478"
Received: from soldfiel-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.212.87.132])
 by orsmga004.jf.intel.com with ESMTP; 20 Aug 2020 16:02:35 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 20 Aug 2020 16:02:17 -0700
Message-Id: <20200820230217.2005122-2-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200820230217.2005122-1-vinicius.gomes@intel.com>
References: <20200820230217.2005122-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH next-queue v1 2/2] igc: Save PTP time
 before a reset
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
Cc: andre.guedes@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Many TSN features depend on the internal PTP clock, so the internal
PTP jumping when the adapter is reset can cause problems, usually in
the form of "TX Hangs" warnings in the driver.

The solution is to save the PTP time before a reset and restore it
after the reset is done. The value of the PTP time is saved before a
reset and we use the difference from CLOCK_MONOTONIC from reset time
to now, to correct what's going to be the new PTP time.

This is heavily inspired by commit bf4bf09 ("i40e: save PTP
time before a device reset").

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      |  2 ++
 drivers/net/ethernet/intel/igc/igc_main.c |  2 ++
 drivers/net/ethernet/intel/igc/igc_ptp.c  | 28 ++++++++++++++++++++---
 3 files changed, 29 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 522699b870c9..ad9e2ef80043 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -219,6 +219,8 @@ struct igc_adapter {
 	spinlock_t tmreg_lock;
 	struct cyclecounter cc;
 	struct timecounter tc;
+	struct timespec64 prev_ptp_time; /* Pre-reset PTP clock */
+	ktime_t ptp_reset_start; /* Reset time in clock mono */
 };
 
 void igc_up(struct igc_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 933e0d3445df..e685a1c3269f 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3788,6 +3788,8 @@ void igc_down(struct igc_adapter *adapter)
 
 	set_bit(__IGC_DOWN, &adapter->state);
 
+	igc_ptp_suspend(adapter);
+
 	/* disable receives in the hardware */
 	rctl = rd32(IGC_RCTL);
 	wr32(IGC_RCTL, rctl & ~IGC_RCTL_EN);
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index d1c01fd6f5cc..23285586569e 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -8,6 +8,7 @@
 #include <linux/pci.h>
 #include <linux/ptp_classify.h>
 #include <linux/clocksource.h>
+#include <linux/ktime.h>
 
 #define INCVALUE_MASK		0x7fffffff
 #define ISGN			0x80000000
@@ -508,6 +509,9 @@ void igc_ptp_init(struct igc_adapter *adapter)
 	adapter->tstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
 	adapter->tstamp_config.tx_type = HWTSTAMP_TX_OFF;
 
+	adapter->prev_ptp_time = ktime_to_timespec64(ktime_get_real());
+	adapter->ptp_reset_start = ktime_get();
+
 	adapter->ptp_clock = ptp_clock_register(&adapter->ptp_caps,
 						&adapter->pdev->dev);
 	if (IS_ERR(adapter->ptp_clock)) {
@@ -519,6 +523,24 @@ void igc_ptp_init(struct igc_adapter *adapter)
 	}
 }
 
+static void igc_ptp_time_save(struct igc_adapter *adapter)
+{
+	igc_ptp_read_i225(adapter, &adapter->prev_ptp_time);
+	adapter->ptp_reset_start = ktime_get();
+}
+
+static void igc_ptp_time_restore(struct igc_adapter *adapter)
+{
+	struct timespec64 ts = adapter->prev_ptp_time;
+	ktime_t delta;
+
+	delta = ktime_sub(ktime_get(), adapter->ptp_reset_start);
+
+	timespec64_add_ns(&ts, ktime_to_ns(delta));
+
+	igc_ptp_write_i225(adapter, &ts);
+}
+
 /**
  * igc_ptp_suspend - Disable PTP work items and prepare for suspend
  * @adapter: Board private structure
@@ -540,6 +562,8 @@ void igc_ptp_suspend(struct igc_adapter *adapter)
 	adapter->ptp_tx_start = 0;
 
 	spin_unlock(&adapter->ptp_tx_lock);
+
+	igc_ptp_time_save(adapter);
 }
 
 /**
@@ -589,9 +613,7 @@ void igc_ptp_reset(struct igc_adapter *adapter)
 
 	/* Re-initialize the timer. */
 	if (hw->mac.type == igc_i225) {
-		struct timespec64 ts64 = ktime_to_timespec64(ktime_get_real());
-
-		igc_ptp_write_i225(adapter, &ts64);
+		igc_ptp_time_restore(adapter);
 	} else {
 		timecounter_init(&adapter->tc, &adapter->cc,
 				 ktime_to_ns(ktime_get_real()));
-- 
2.28.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
