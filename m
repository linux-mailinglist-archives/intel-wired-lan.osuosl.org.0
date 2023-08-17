Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F16377F897
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 16:19:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E048983F60;
	Thu, 17 Aug 2023 14:19:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E048983F60
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692281940;
	bh=CbacEijjVpgOxOPlsO5D8AFE5WoQEcAJoNSFl2pRPjY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Vg5DawswvCy9TFljz16J0XgVsDPZ4P031w6lupPWw58LDOU2AQZQwR0wTbEyT1CDk
	 bkSwPY4sexgl5eNpleNAc+BTeMvaNAoi+WmDohufA/e+9MoNTOJE8Ibf2Qxn06Qrrm
	 v7DRgDaRxA+qUC13EaF+oQKAJzvch2OhL/JN9AoCqit4C2kougdPSxD7Em0XDvgnE0
	 fwuUckFc2LpOLYrgV0pboGz/GYBQmJncgpihdtFPztyybyAq3UNTCqGvukxVYp508l
	 7XTZ5bcxQ/yYEe12Y9kl5QdLoqd3iX4AUUY6kN/zTy3cFXmGVwlkzCFdKMCj2dbbhM
	 o4pONYKWMyZDw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j5S7dzGZIoQl; Thu, 17 Aug 2023 14:19:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 813C083EE1;
	Thu, 17 Aug 2023 14:18:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 813C083EE1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4EFB21BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 14:18:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 26BAD80C31
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 14:18:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 26BAD80C31
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KuP4TrMIlM4y for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 14:18:30 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6ED8C80BB4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 14:18:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6ED8C80BB4
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="403804248"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="403804248"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 07:18:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="981189769"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="981189769"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmsmga006.fm.intel.com with ESMTP; 17 Aug 2023 07:18:28 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Aug 2023 16:17:46 +0200
Message-Id: <20230817141746.18726-10-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230817141746.18726-1-karol.kolacinski@intel.com>
References: <20230817141746.18726-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692281910; x=1723817910;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aVmsgUhP2TkHsmCMEc/GKA3A86G+RhAFJOVKAq0dOSs=;
 b=mbhRdVxKsEEHe+iRhxm4M8WmL/yepr6CsfWAl9yb65S/MkkbT0FGZy70
 BHFz5uyHydusIoVSISgD5iwGywPsbCnriqGs9xqHI5PcQv01cl8jwZiBG
 S9hqtbGZI4jdQtWHrwFAChuHidZUC/XVR6vRxuIGhB0l7gFRBf9XxiX54
 hz/aT+v5Fp3W5+AclSCjtGVPTr0dOzY0khNbA8RF61mIH8KHOuDKiDuMS
 vCPkqZVlgpMkCqKFbp3CL6Vun/4MTH69i+rrMgZ30L2aSMevEoqAGCkKc
 G7fHyKEJHb0eRWvloG3X72hon1TjR07vxU37wf6MlD7Hy7lWyRrbadb4X
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mbhRdVxK
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 9/9] ice: stop destroying and
 reinitalizing Tx tracker during reset
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
 anthony.l.nguyen@intel.com, jesse.brandeburg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice driver currently attempts to destroy and re-initialize the Tx
timestamp tracker during the reset flow. The release of the Tx tracker
only happened during CORE reset or GLOBAL reset. The ice_ptp_rebuild()
function always calls the ice_ptp_init_tx function which will allocate
a new tracker data structure, resulting in memory leaks during PF reset.

Certainly the driver should not be allocating a new tracker without
removing the old tracker data, as this results in a memory leak.
Additionally, there's no reason to remove the tracker memory during a
reset. Remove this logic from the reset and rebuild flow. Instead of
releasing the Tx tracker, flush outstanding timestamps just before we
reset the PHY timestamp block in ice_ptp_cfg_phy_interrupt().

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 33 +++++++++++++++---------
 1 file changed, 21 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 373ca79803af..d10c43f9266b 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -868,6 +868,22 @@ ice_ptp_mark_tx_tracker_stale(struct ice_ptp_tx *tx)
 	spin_unlock(&tx->lock);
 }
 
+/**
+ * ice_ptp_flush_all_tx_tracker - Flush all timestamp trackers on this clock
+ * @pf: Board private structure
+ *
+ * Called by the clock owner to flush all the Tx timestamp trackers associated
+ * with the clock.
+ */
+static void
+ice_ptp_flush_all_tx_tracker(struct ice_pf *pf)
+{
+	struct ice_ptp_port *port;
+
+	list_for_each_entry(port, &pf->ptp.ports_owner.ports, list_member)
+		ice_ptp_flush_tx_tracker(ptp_port_to_pf(port), &port->tx);
+}
+
 /**
  * ice_ptp_release_tx_tracker - Release allocated memory for Tx tracker
  * @pf: Board private structure
@@ -2573,6 +2589,11 @@ static int ice_ptp_rebuild_owner(struct ice_pf *pf)
 	/* Release the global hardware lock */
 	ice_ptp_unlock(hw);
 
+	/* Flush software tracking of any outstanding timestamps since we're
+	 * about to flush the PHY timestamp block.
+	 */
+	ice_ptp_flush_all_tx_tracker(pf);
+
 	if (!ice_is_e810(hw)) {
 		/* Enable quad interrupts */
 		err = ice_ptp_cfg_phy_interrupt(pf, true, 1);
@@ -2608,18 +2629,6 @@ void ice_ptp_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 	if (ice_pf_src_tmr_owned(pf) && reset_type != ICE_RESET_PFR)
 		ice_ptp_rebuild_owner(pf);
 
-	/* Init Tx structures */
-	if (ice_is_e810(&pf->hw)) {
-		err = ice_ptp_init_tx_e810(pf, &ptp->port.tx);
-	} else {
-		kthread_init_delayed_work(&ptp->port.ov_work,
-					  ice_ptp_wait_for_offsets);
-		err = ice_ptp_init_tx_e822(pf, &ptp->port.tx,
-					   ptp->port.port_num);
-	}
-	if (err)
-		goto err;
-
 	ptp->state = ICE_PTP_READY;
 
 	/* Start periodic work going */
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
