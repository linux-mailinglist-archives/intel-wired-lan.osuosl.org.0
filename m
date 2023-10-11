Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D8C7C50C8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Oct 2023 13:04:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C42A611B8;
	Wed, 11 Oct 2023 11:04:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C42A611B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697022272;
	bh=xTxl4HG54QOvZ7mDq8+jiH73VZmgCjXZ4rfTqmU9KKM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=jAn7/g43wmA39WnQM1GBiMP6bLyiDjZsd7ptvrLHEgHUfhb6czgkchRTuNtl068hu
	 AVocH5T8abTuF+p/A+Bxxo5gZjr1Rr0FsH1VYYoB93Ty5im9mlEosgcNjzkELf3AAM
	 GQLGSetA01BZ++NQ/k5SEf6QTAv8+e6cZieKe/iWtGPas2103+r+8EOJl+5kho+6l7
	 CowJiNK59yh++hT9Z7qh0Z0MT0A6tHA1BySEOPmcSsNNDzvNS+7nbq/nW8Yzn23QDF
	 te6leeBEzUggB1W1t0y8apzw8mjb4tEJxQQu7aPC0GEzV9C0rZXvRT9r/cY5xZX/K4
	 mnSG5nmrRwu7Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lgBwsMFaLbHB; Wed, 11 Oct 2023 11:04:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A47A06059C;
	Wed, 11 Oct 2023 11:04:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A47A06059C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 202071BF84C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 11:04:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E9B8D41D6B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 11:04:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E9B8D41D6B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GNeLe_0AJzlK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Oct 2023 11:04:25 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 08E2441D6A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 11:04:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 08E2441D6A
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="363994543"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="363994543"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 04:04:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="1085189666"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="1085189666"
Received: from unknown (HELO kkolacin-DESK1.igk.intel.com) ([10.102.102.152])
 by fmsmga005.fm.intel.com with ESMTP; 11 Oct 2023 04:04:23 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 11 Oct 2023 13:04:11 +0200
Message-Id: <20231011110411.204700-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697022265; x=1728558265;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8LkWOhiB2uSmJ5qq04yZ6D92iJojiye3hVSLFuLx7fY=;
 b=Ljkb3wdZ+3lGoC78H7lz8m4jsKoP7xiiewBre3F6w1vQ/Yy/jYza2wnE
 FynMM3N5ZSF785gcavEzO9wS/MY3dgcpmTHK5EUqXbGKIi/CfLHOu053E
 bO9GePD1oFK4iyJQKc+nYe15Di1B+stOXR5EunIvlPG2PsnMXZZ+lxNVc
 Pyo7KIJMOyk49GrS/zv5w0UtOO5E78IERZV5BeVj86yEACAy0lZWy5IaU
 OBC9P34mbuQy+2cvXtPArvS4RutsUPQ7Ay9cYz3A0/2m/LuAD6zqfFoiS
 wPw1ehgj+ivqf++Ft1Vr+M1eEKhVEGxC+4PQ2KbG7BeqJSH7hzXDj8+Gl
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ljkb3wdZ
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: Re-enable timestamping
 correctly after reset
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

During reset, TX_TSYN interrupt should be processed as it may process
timestamps in brief moments before and after reset.
Timestamping should be enabled on VSIs at the end of reset procedure.
On ice_get_phy_tx_tstamp_ready error, interrupt should not be rearmed,
because error only happens on resets.

Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 22 +++++++++++++---------
 2 files changed, 14 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index afe19219a640..a58da0024fe5 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3176,7 +3176,7 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 
 	if (oicr & PFINT_OICR_TSYN_TX_M) {
 		ena_mask &= ~PFINT_OICR_TSYN_TX_M;
-		if (!hw->reset_ongoing && ice_ptp_pf_handles_tx_interrupt(pf))
+		if (ice_ptp_pf_handles_tx_interrupt(pf))
 			set_bit(ICE_MISC_THREAD_TX_TSTAMP, pf->misc_thread);
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 1eddcbe89b0c..7e548a634f3f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -684,7 +684,9 @@ static enum ice_tx_tstamp_work ice_ptp_tx_tstamp_owner(struct ice_pf *pf)
 
 		/* Read the Tx ready status first */
 		err = ice_get_phy_tx_tstamp_ready(&pf->hw, i, &tstamp_ready);
-		if (err || tstamp_ready)
+		if (err)
+			break;
+		else if (tstamp_ready)
 			return ICE_TX_TSTAMP_WORK_PENDING;
 	}
 
@@ -2444,12 +2446,10 @@ void ice_ptp_reset(struct ice_pf *pf)
 	int err, itr = 1;
 	u64 time_diff;
 
-	if (test_bit(ICE_PFR_REQ, pf->state))
+	if (test_bit(ICE_PFR_REQ, pf->state) ||
+	    !ice_pf_src_tmr_owned(pf))
 		goto pfr;
 
-	if (!ice_pf_src_tmr_owned(pf))
-		goto reset_ts;
-
 	err = ice_ptp_init_phc(hw);
 	if (err)
 		goto err;
@@ -2493,10 +2493,6 @@ void ice_ptp_reset(struct ice_pf *pf)
 			goto err;
 	}
 
-reset_ts:
-	/* Restart the PHY timestamping block */
-	ice_ptp_reset_phy_timestamping(pf);
-
 pfr:
 	/* Init Tx structures */
 	if (ice_is_e810(&pf->hw)) {
@@ -2512,6 +2508,14 @@ void ice_ptp_reset(struct ice_pf *pf)
 
 	set_bit(ICE_FLAG_PTP, pf->flags);
 
+	/* Restart the PHY timestamping block */
+	if (!test_bit(ICE_PFR_REQ, pf->state) &&
+	    ice_pf_src_tmr_owned(pf))
+		ice_ptp_restart_all_phy(pf);
+
+	if (ptp->tx_interrupt_mode)
+		ice_ptp_configure_tx_tstamp(pf, true);
+
 	/* Start periodic work going */
 	kthread_queue_delayed_work(ptp->kworker, &ptp->work, 0);
 

base-commit: 2318d58f358e7aef726c038aff87a68bec8f09e0
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
