Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CE17E0690
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Nov 2023 17:30:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8E2E44010F;
	Fri,  3 Nov 2023 16:30:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E2E44010F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699029003;
	bh=ge9XmL0k4OXhHVKzoPakq5POqfviQWtyVfSawoJrbfM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=cDpY4OXnwKd4V51lJRi1UpJBrJdGfUXpjyjUxHFrS1UxI8BtQ0YbE/QhjNhGxrDOB
	 H+HaCdF8Uq/EeCXEo/irUxg0RJlEPq+ai2OqmY2+Mq8jvcHxypFt2ElMKG1Lb+oxo2
	 wMa5kxw5IcY3iTD5NgUkLUOFFlHq26rAJFUhcvYBwgcCyywJm8Qn1OG/K5NbTIx7Zm
	 U9xx36zEBqK6mB+iuGao7j6RC9tWdLjO3VnsbDA5MRT4uXkBfpfZPaeADZsUNFjChn
	 ZONIgyIOAY61J4aXVwqA6tifckhbmQPElfQlHwiAdm4IiJabZz1S6BRAd17PLwlDNJ
	 8OCNj1PR37hKw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y2bB_II9AuDV; Fri,  3 Nov 2023 16:29:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DB4B240119;
	Fri,  3 Nov 2023 16:29:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB4B240119
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8EACE1BF681
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Nov 2023 16:29:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 643BF400FE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Nov 2023 16:29:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 643BF400FE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jDQz2Lm61bdy for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Nov 2023 16:29:49 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F3D90400AB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Nov 2023 16:29:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F3D90400AB
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="10512056"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="10512056"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 09:29:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="878698178"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="878698178"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmsmga002.fm.intel.com with ESMTP; 03 Nov 2023 09:29:45 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  3 Nov 2023 17:29:43 +0100
Message-Id: <20231103162943.485467-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699028989; x=1730564989;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZM7k9U6K2HWp2Z+WbEZLG086m0b66EREtoBdOAA0A/M=;
 b=TNnI9/YcBq4b8I7YWNtBNC2a7AalYr+B/5j3jJqyiP2SDRMRhV4dZHq8
 StpEDjVQz7woglru7k2iEkiirJjN2yEZ+SbcavxOOAqqag5bwA0uckzXG
 RQP3hfpQ9tuEiwF7hrszyretMdqWUUNGtPt0DJ+88flLFFV5COJl2It05
 sqXsQPKEpr5/Oo3WyCC3Set0oDnX14iL6gX3sxJuYIZH1LmD9twwKWqYc
 cAGyY/vCbd24qddcYpro3aIZdmzw2mpYm4qzf+xBYlOxkmuYWI6JkS4mm
 HXWvioeUt5OK+yn9d8SoMTjQT4SFdB+8XBYAKPuC7BoW8d1/pqDX30Ft2
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TNnI9/Yc
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: periodically kick Tx
 timestamp interrupt
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
Cc: netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 Andrii Staikov <andrii.staikov@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 Jacob Keller <jacob.e.keller@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

The E822 hardware for Tx timestamping keeps track of how many
outstanding timestamps are still in the PHY memory block. It will not
generate a new interrupt to the MAC until all of the timestamps in the
region have been read.

If somehow all the available data is not read, but the driver has exited
its interrupt routine already, the PHY will not generate a new interrupt
even if new timestamp data is captured. Because no interrupt is
generated, the driver never processes the timestamp data. This state
results in a permanent failure for all future Tx timestamps.

It is not clear how the driver and hardware could enter this state.
However, if it does, there is currently no recovery mechanism.

Add a recovery mechanism via the periodic PTP work thread which invokes
ice_ptp_periodic_work(). Introduce a new check,
ice_ptp_maybe_trigger_tx_interrupt() which checks the PHY timestamp
ready bitmask. If any bits are set, trigger a software interrupt by
writing to PFINT_OICR.

Once triggered, the main timestamp processing thread will read through
the PHY data and clear the outstanding timestamp data. Once cleared, new
data should trigger interrupts as expected.

This should allow recovery from such a state rather than leaving the
device in a state where we cannot process Tx timestamps.

It is possible that this function checks for timestamp data
simultaneously with the interrupt, and it might trigger additional
unnecessary interrupts. This will cause a small amount of additional
processing.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Reviewed-by: Andrii Staikov <andrii.staikov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 50 ++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 5fb9dbbdfc16..79c1fa61d1a8 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2460,6 +2460,54 @@ enum ice_tx_tstamp_work ice_ptp_process_ts(struct ice_pf *pf)
 	}
 }
 
+/**
+ * ice_ptp_maybe_trigger_tx_interrupt - Trigger Tx timstamp interrupt
+ * @pf: Board private structure
+ *
+ * The device PHY issues Tx timestamp interrupts to the driver for processing
+ * timestamp data from the PHY. It will not interrupt again until all
+ * current timestamp data is read. In rare circumstances, it is possible that
+ * the driver fails to read all outstanding data.
+ *
+ * To avoid getting permanently stuck, periodically check if the PHY has
+ * outstanding timestamp data. If so, trigger an interrupt from software to
+ * process this data.
+ */
+static void ice_ptp_maybe_trigger_tx_interrupt(struct ice_pf *pf)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_hw *hw = &pf->hw;
+	bool trigger_oicr = false;
+	unsigned int i;
+
+	if (ice_is_e810(hw))
+		return;
+
+	if (!ice_pf_src_tmr_owned(pf))
+		return;
+
+	for (i = 0; i < ICE_MAX_QUAD; i++) {
+		u64 tstamp_ready;
+		int err;
+
+		err = ice_get_phy_tx_tstamp_ready(&pf->hw, i, &tstamp_ready);
+		if (!err && tstamp_ready) {
+			trigger_oicr = true;
+			break;
+		}
+	}
+
+	if (trigger_oicr) {
+		/* Trigger a software interrupt, to ensure this data
+		 * gets processed.
+		 */
+		dev_dbg(dev, "PTP periodic task detected waiting timestamps. Triggering Tx timestamp interrupt now.\n");
+
+		wr32(hw, PFINT_OICR, PFINT_OICR_TSYN_TX_M);
+		ice_flush(hw);
+	}
+}
+
 static void ice_ptp_periodic_work(struct kthread_work *work)
 {
 	struct ice_ptp *ptp = container_of(work, struct ice_ptp, work.work);
@@ -2471,6 +2519,8 @@ static void ice_ptp_periodic_work(struct kthread_work *work)
 
 	err = ice_ptp_update_cached_phctime(pf);
 
+	ice_ptp_maybe_trigger_tx_interrupt(pf);
+
 	/* Run twice a second or reschedule if phc update failed */
 	kthread_queue_delayed_work(ptp->kworker, &ptp->work,
 				   msecs_to_jiffies(err ? 10 : 500));

base-commit: 75eabdb41c25d36bd15661df81033a4e3086c4c9
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
