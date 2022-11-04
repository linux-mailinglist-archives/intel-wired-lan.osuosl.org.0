Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE858619DE2
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Nov 2022 17:57:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7629540C86;
	Fri,  4 Nov 2022 16:57:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7629540C86
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667581044;
	bh=RdTpcJQvEBXC1WbZvHdbxufKvomrUJv8qolwGAmr1IY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=40n5bU0Eef4mbf2Ggj+POAil/7/OadBJGqNGinpr7VDlXn8b5VN+smdJ11c0Vq4K5
	 8PoWg4zPdCSjVmu7Kaxzh5XAea3eXnXyumA4JBEf4x2xsJMIdOM0i7EhRoluJh3AWf
	 haXAQJJG1CH2cYdlz8F673jdlm8RnD7Cz5ct2AmETRp7CNRRq/UnGqN2HnTzuIGeYf
	 gKdXkfboMHU/s3g7dgzCj0sTXBSU7PwrZsXa/ynsqLQCjWRf9a8wRyPaBA4ORbN+9x
	 VajONh+eFjdsA27SGANNvW3JjEBhsuQ6Ry/wDFBjQFlnwtkU8ArW50f84nM4JsLjqD
	 Qap2LtFNY+fug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZRcx6nmif10A; Fri,  4 Nov 2022 16:57:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 327C8403AA;
	Fri,  4 Nov 2022 16:57:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 327C8403AA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E45C61BF34D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 16:57:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BE7C5403AA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 16:57:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE7C5403AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fr-siSONdk9n for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Nov 2022 16:57:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B71C0401E1
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B71C0401E1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 16:57:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="372124072"
X-IronPort-AV: E=Sophos;i="5.96,138,1665471600"; d="scan'208";a="372124072"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 09:57:15 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="810123387"
X-IronPort-AV: E=Sophos;i="5.96,138,1665471600"; d="scan'208";a="810123387"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 09:57:15 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Fri,  4 Nov 2022 09:57:08 -0700
Message-Id: <20221104165708.2570589-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.0.83.gd420dda05763
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667581036; x=1699117036;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fkbtWM1eiDXFk7lAzPHE8+u3YuHuSGrrqpXx5nmKij4=;
 b=OVfA9aJzgKAuJ6/5i7EYdQFLsE3p2U5sy/allxuMeZhUQqSsgTcgQM7B
 DQ2lkoKVZ9dl6TZkRBsjeXro7IXM/PJZs5CfcAdrYX16B17sMAVhi74Vb
 4j6CMzb0AeLZZ8/PzjMv/xu2+HntcGjggqiwxA8zqwu0KfJ46WdZDxjSM
 V/dhiPWa9fHq+TcnuCpd53TcxFeuPcQbCAa+ZwzhszROo8Ue8OU7k2vDS
 PARPiMvCbMnHjsRBuIxQZ1+Iyy3k9nQd8/vFnaG0Z3FR3rN5m4LeW4JnE
 aQVc/R0AhCYXu6bolJFToGk1uEnlymq2smQeq1y5XMRP+ski1W2i/J2vG
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OVfA9aJz
Subject: [Intel-wired-lan] [PATCH net] ice: fix handling of burst Tx
 timestamps
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
Cc: Siddaraju DH <siddaraju.dh@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit 1229b33973c7 ("ice: Add low latency Tx timestamp read") refactored
PTP timestamping logic to use a threaded IRQ instead of a separate kthread.

This implementation introduced ice_misc_intr_thread_fn and redefined the
ice_ptp_process_ts function interface to return a value of whether or not
the timestamp processing was complete.

ice_misc_intr_thread_fn would take the return value from ice_ptp_process_ts
and convert it into either IRQ_HANDLED if there were no more timestamps to
be processed, or IRQ_WAKE_THREAD if the thread should continue processing.

This is not correct, as the kernel does not re-schedule threaded IRQ
functions automatically. IRQ_WAKE_THREAD can only be used by the main IRQ
function.

This results in the ice_ptp_process_ts function (and in turn the
ice_ptp_tx_tstamp function) from only being called exactly once per
interrupt.

If an application sends a burst of Tx timestamps without waiting for a
response, the interrupt will trigger for the first timestamp. However,
later timestamps may not have arrived yet. This can result in dropped or
discarded timestamps. Worse, on E822 hardware this results in the interrupt
logic getting stuck such that no future interrupts will be triggered. The
result is complete loss of Tx timestamp functionality.

Fix this by modifying the ice_misc_intr_thread_fn to perform its own
polling of the ice_ptp_process_ts function. We sleep for a few microseconds
between attempts to avoid wasting significant CPU time. The value was
chosen to allow time for the Tx timestamps to complete without wasting so
much time that we overrun application wait budgets in the worst case.

The ice_ptp_process_ts function also currently returns false in the event
that the Tx tracker is not initialized. This would result in the threaded
IRQ handler never exiting if it gets started while the tracker is not
initialized.

Fix the function to appropriately return true when the tracker is not
initialized.

Note that this will not reproduce with default ptp4l behavior, as the
program always synchronously waits for a timestamp response before sending
another timestamp request.

Reported-by: Siddaraju DH <siddaraju.dh@intel.com>
Fixes: 1229b33973c7 ("ice: Add low latency Tx timestamp read")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
@Tony, this will likely conflict a bit with one of the patches in the 15
patch PTP series I sent to net-next. This should go first, and it pulls
patch 09 out of that series.

 drivers/net/ethernet/intel/ice/ice_main.c | 14 +++++++-------
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 20 ++++++++++----------
 2 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index c4303996101f..a215427b9308 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3148,15 +3148,15 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
  */
 static irqreturn_t ice_misc_intr_thread_fn(int __always_unused irq, void *data)
 {
-	irqreturn_t ret = IRQ_HANDLED;
-	struct ice_pf *pf = data;
-	bool irq_handled;
+	struct ice_pf *pf = (struct ice_pf *)data;
 
-	irq_handled = ice_ptp_process_ts(pf);
-	if (!irq_handled)
-		ret = IRQ_WAKE_THREAD;
+	if (ice_is_reset_in_progress(pf->state))
+		return IRQ_HANDLED;
 
-	return ret;
+	while (!ice_ptp_process_ts(pf))
+		usleep_range(50, 100);
+
+	return IRQ_HANDLED;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index c06b6fbe4118..6390afa5ca04 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -614,11 +614,14 @@ static u64 ice_ptp_extend_40b_ts(struct ice_pf *pf, u64 in_tstamp)
  * 2) extend the 40b timestamp value to get a 64bit timestamp
  * 3) send that timestamp to the stack
  *
- * After looping, if we still have waiting SKBs, return true. This may cause us
- * effectively poll even when not strictly necessary. We do this because it's
- * possible a new timestamp was requested around the same time as the interrupt.
- * In some cases hardware might not interrupt us again when the timestamp is
- * captured.
+ * Returns true if all timestamps were handled, and false if any slots remain
+ * without a timestamp.
+ *
+ * After looping, if we still have waiting SKBs, return false. This may cause
+ * us effectively poll even when not strictly necessary. We do this because
+ * it's possible a new timestamp was requested around the same time as the
+ * interrupt. In some cases hardware might not interrupt us again when the
+ * timestamp is captured.
  *
  * Note that we only take the tracking lock when clearing the bit and when
  * checking if we need to re-queue this task. The only place where bits can be
@@ -641,7 +644,7 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 	u8 idx;
 
 	if (!tx->init)
-		return false;
+		return true;
 
 	ptp_port = container_of(tx, struct ice_ptp_port, tx);
 	pf = ptp_port_to_pf(ptp_port);
@@ -2381,10 +2384,7 @@ s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb)
  */
 bool ice_ptp_process_ts(struct ice_pf *pf)
 {
-	if (pf->ptp.port.tx.init)
-		return ice_ptp_tx_tstamp(&pf->ptp.port.tx);
-
-	return false;
+	return ice_ptp_tx_tstamp(&pf->ptp.port.tx);
 }
 
 static void ice_ptp_periodic_work(struct kthread_work *work)

base-commit: fc08d3e95408de0d510be380419b44d567f0f556
-- 
2.38.0.83.gd420dda05763

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
