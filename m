Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE75B7FD6FB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Nov 2023 13:40:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8BFF541A28;
	Wed, 29 Nov 2023 12:40:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8BFF541A28
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701261646;
	bh=6Q3dHm3itGKM5CAQdpyVdv/zQm1NBGKThBZTtXAMNSw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=AQ7j3GXexvoepMU2FWOgu3COFMtGAf6Hae70zRR9BpvmiowcX8TqOIEgVRd9oWw7l
	 JpU46RtQAMeBDMYC6EinacA3KIu4oAJd+z8kR7wty+CQmo9ukpupFx3CkM03LF6rG0
	 wuJHQLds7uUiNHboqAbESJPkd46DPrKGZNwWewaOz1UJLgbHGbw0Nal+JLIlK6cxe3
	 NbQfZDTJZK0ynAnXSHcUrOPKLP5671FFnl+fjEQTZKge5VC3HelS58rYYMNszsqlKp
	 HW7fY8N0Ckr8yLSTvpII5DpRLf/7B+6Dgc7n5y7yKuja7oIItvjCTqWSPwpHYiHOZu
	 pLNdCrnx4XZEQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9lVcLkeUFIq1; Wed, 29 Nov 2023 12:40:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E946E41A13;
	Wed, 29 Nov 2023 12:40:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E946E41A13
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 228DD1BF422
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 12:40:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ED32641A15
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 12:40:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED32641A15
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FSo3YqfKeYLZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Nov 2023 12:40:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 800BE41A06
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 12:40:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 800BE41A06
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="479355439"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="479355439"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 04:40:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="772669824"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="772669824"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmsmga007.fm.intel.com with ESMTP; 29 Nov 2023 04:40:32 -0800
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 29 Nov 2023 13:40:22 +0100
Message-Id: <20231129124023.741299-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701261637; x=1732797637;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hzlS8rjjfsl0XfkEJaCGalHUNG7PIYHXNph5mBbsEaw=;
 b=chT0mP0Ot65B2NR2969UFpDCIOX0j8bQfjidk70BTMgCcn2Efzx4d6fc
 W7uJlgQFwJVS8L/nqymu8xkD715uj79A9YC4X7+Ekk4Sjxo/TyCoR+En/
 Xtv8dLjkWHn0NUeQUI87mvbVWiJ5frCAIZPRBLRqn1P9AlPcLGZb8bFPn
 DOJRe5LfyULGFG+JSHryJ8mMxncYnuWkaXfkUyJRNkV7eQdx30l+y7kUO
 FHN+GTrdVvikBO6YFAGn+t+TJOaBV3elCn5Duoruc35x0VH470vtG7npT
 5rirHXsb/SnyfUeZccSqQMf9ane81YnbOdNglkJ+9UUekQyOxzO66I6u3
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=chT0mP0O
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 1/2] ice: Schedule service
 task in IRQ top half
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
Cc: Michal Michalik <michal.michalik@intel.com>, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, Karol Kolacinski <karol.kolacinski@intel.com>,
 anthony.l.nguyen@intel.com, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Schedule service task and EXTTS in the top half to avoid bottom half
scheduling if possible, which significantly reduces timestamping delay.

Co-developed-by: Michal Michalik <michal.michalik@intel.com>
Signed-off-by: Michal Michalik <michal.michalik@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
V1 -> V2: Added missing opening curly brace

 drivers/net/ethernet/intel/ice/ice.h      |  1 -
 drivers/net/ethernet/intel/ice/ice_main.c | 20 +++++++++++---------
 2 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 3ea33947b878..d5a8da0c02c3 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -517,7 +517,6 @@ enum ice_pf_flags {
 };
 
 enum ice_misc_thread_tasks {
-	ICE_MISC_THREAD_EXTTS_EVENT,
 	ICE_MISC_THREAD_TX_TSTAMP,
 	ICE_MISC_THREAD_NBITS		/* must be last */
 };
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index c7c6ec3e131b..d209826be2c7 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3066,6 +3066,7 @@ static void ice_ena_misc_vector(struct ice_pf *pf)
 static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 {
 	struct ice_pf *pf = (struct ice_pf *)data;
+	irqreturn_t ret = IRQ_HANDLED;
 	struct ice_hw *hw = &pf->hw;
 	struct device *dev;
 	u32 oicr, ena_mask;
@@ -3147,8 +3148,10 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 
 	if (oicr & PFINT_OICR_TSYN_TX_M) {
 		ena_mask &= ~PFINT_OICR_TSYN_TX_M;
-		if (ice_ptp_pf_handles_tx_interrupt(pf))
+		if (ice_ptp_pf_handles_tx_interrupt(pf)) {
 			set_bit(ICE_MISC_THREAD_TX_TSTAMP, pf->misc_thread);
+			ret = IRQ_WAKE_THREAD;
+		}
 	}
 
 	if (oicr & PFINT_OICR_TSYN_EVNT_M) {
@@ -3164,7 +3167,7 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 					       GLTSYN_STAT_EVENT1_M |
 					       GLTSYN_STAT_EVENT2_M);
 
-			set_bit(ICE_MISC_THREAD_EXTTS_EVENT, pf->misc_thread);
+			ice_ptp_extts_event(pf);
 		}
 	}
 
@@ -3187,8 +3190,11 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 			set_bit(ICE_PFR_REQ, pf->state);
 		}
 	}
+	ice_service_task_schedule(pf);
+	if (ret == IRQ_HANDLED)
+		ice_irq_dynamic_ena(hw, NULL, NULL);
 
-	return IRQ_WAKE_THREAD;
+	return ret;
 }
 
 /**
@@ -3204,12 +3210,7 @@ static irqreturn_t ice_misc_intr_thread_fn(int __always_unused irq, void *data)
 	hw = &pf->hw;
 
 	if (ice_is_reset_in_progress(pf->state))
-		return IRQ_HANDLED;
-
-	ice_service_task_schedule(pf);
-
-	if (test_and_clear_bit(ICE_MISC_THREAD_EXTTS_EVENT, pf->misc_thread))
-		ice_ptp_extts_event(pf);
+		goto skip_irq;
 
 	if (test_and_clear_bit(ICE_MISC_THREAD_TX_TSTAMP, pf->misc_thread)) {
 		/* Process outstanding Tx timestamps. If there is more work,
@@ -3221,6 +3222,7 @@ static irqreturn_t ice_misc_intr_thread_fn(int __always_unused irq, void *data)
 		}
 	}
 
+skip_irq:
 	ice_irq_dynamic_ena(hw, NULL, NULL);
 
 	return IRQ_HANDLED;

base-commit: a1c79fa9e5cd3288ecb4019692a4d3ccbf7d2370
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
