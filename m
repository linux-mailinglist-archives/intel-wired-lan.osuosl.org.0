Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9D37F72F6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Nov 2023 12:43:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF56082248;
	Fri, 24 Nov 2023 11:42:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF56082248
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700826178;
	bh=3DvJalKD6+P2HFZNZ4XaMjqxAcd9lJSPuv92j1H9ilw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=6Wx3+TdvAqogAKJeJ5QKjzEtakAyGY2qRz4l0+v1ptZ+3NPKEeE3BX3E1wF8tFXaA
	 IEPPwuxr9sK9phSICwFu0z2W0K9VG1/2eQ19tgulfmqGiuRvtdn9v4RfuAaZHPSGTx
	 yEq6dUw8z0sK3Veo/HsCA/3tZSa6hE9W5Re57tS4Vxm59/9tOqGMRAdNw/Oh26JhU6
	 i0WeBWCrwiV/JOzolh5uJgjaXGjgahrRA7hQJeVN5H4oiOLZZNDWn+YgQcx2obXF5d
	 00c37ICRwmXL8szyr70w0cxCjKJh5jcCToRHgPf9UZGkNLyaTP7LUKEM1viiPIwKju
	 VX/ydm+l8AKRw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id px5vxOU9rJKE; Fri, 24 Nov 2023 11:42:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 96E6282247;
	Fri, 24 Nov 2023 11:42:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 96E6282247
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A2EB1BF383
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:42:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D5EDD417A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:42:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D5EDD417A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HDZamLdUzdO9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Nov 2023 11:42:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CCEF641744
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:42:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CCEF641744
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="458898754"
X-IronPort-AV: E=Sophos;i="6.04,223,1695711600"; d="scan'208";a="458898754"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2023 03:42:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="891047097"
X-IronPort-AV: E=Sophos;i="6.04,223,1695711600"; d="scan'208";a="891047097"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orsmga004.jf.intel.com with ESMTP; 24 Nov 2023 03:42:47 -0800
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Nov 2023 12:41:54 +0100
Message-Id: <20231124114155.251360-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700826170; x=1732362170;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+muN5zrCCVIk49U1qjvrc+4QLuRjzbV2Q0im5dypsMQ=;
 b=WTZdSBbH9SatHPo/pdL4Mbp2nXgr2PL7/U79fTjznngium2R6nmPwZ+t
 EcHeDzztLaZ321YKb7F6AVmUOkt149yCUG1OTZYJPUIP3UaIQSkv7J7Jf
 r5Rgfyl56Ast2EPUv4kOdOFZZYUP6S7+by7pIVVZzeOR0n5CrKJ8kwd1i
 1fsCCIKlCIEkf3HgXv4htqsIdadWgaF4fGlfx1x34ymU4SavFBgBGy1P4
 bPYs2wxofEcHsDWlBqv2spbXJA3iXuj8/LEY29dVx17oQss5iCXkQcurp
 EraYvBIVqmYaVdVOKBmte9WXHx2nG4t1jd7cpoPtn3WWiKWclbxUolIZ7
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WTZdSBbH
Subject: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: Schedule service task
 in IRQ top half
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 anthony.l.nguyen@intel.com, jesse.brandeburg@intel.com,
 Michal Michalik <michal.michalik@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Schedule service task and EXTTS in the top half to avoid bottom half
scheduling if possible, which significantly reduces timestamping delay.

Co-developed-by: Michal Michalik <michal.michalik@intel.com>
Signed-off-by: Michal Michalik <michal.michalik@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      |  1 -
 drivers/net/ethernet/intel/ice/ice_main.c | 18 ++++++++++--------
 2 files changed, 10 insertions(+), 9 deletions(-)

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
index 1f159b4362ec..6b91ec6f420d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3078,6 +3078,7 @@ static void ice_ena_misc_vector(struct ice_pf *pf)
 static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 {
 	struct ice_pf *pf = (struct ice_pf *)data;
+	irqreturn_t ret = IRQ_HANDLED;
 	struct ice_hw *hw = &pf->hw;
 	struct device *dev;
 	u32 oicr, ena_mask;
@@ -3161,6 +3162,8 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 		ena_mask &= ~PFINT_OICR_TSYN_TX_M;
 		if (ice_ptp_pf_handles_tx_interrupt(pf))
 			set_bit(ICE_MISC_THREAD_TX_TSTAMP, pf->misc_thread);
+			ret = IRQ_WAKE_THREAD;
+		}
 	}
 
 	if (oicr & PFINT_OICR_TSYN_EVNT_M) {
@@ -3176,7 +3179,7 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 					       GLTSYN_STAT_EVENT1_M |
 					       GLTSYN_STAT_EVENT2_M);
 
-			set_bit(ICE_MISC_THREAD_EXTTS_EVENT, pf->misc_thread);
+			ice_ptp_extts_event(pf);
 		}
 	}
 
@@ -3199,8 +3202,11 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
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
@@ -3216,12 +3222,7 @@ static irqreturn_t ice_misc_intr_thread_fn(int __always_unused irq, void *data)
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
@@ -3233,6 +3234,7 @@ static irqreturn_t ice_misc_intr_thread_fn(int __always_unused irq, void *data)
 		}
 	}
 
+skip_irq:
 	ice_irq_dynamic_ena(hw, NULL, NULL);
 
 	return IRQ_HANDLED;

base-commit: 2f5380161e527b085e3a0b1c4898810ef35d4240
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
