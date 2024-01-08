Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E85826EC8
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jan 2024 13:48:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 570E2416CA;
	Mon,  8 Jan 2024 12:48:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 570E2416CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704718087;
	bh=a5hpf/kxFKIAGcNHPJh8NYLgg+ca3aXknMLVp2vTff8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=K/66SXTy8Db79gB096ZbL0Mlk/lzWhfndnqHhEqwRJftbrLcpCc8BttRPzwOJzCIS
	 6C+qj8Vzrw8aPn/d6wYuWqFXV8gmiMFNLozud5zqnu6589+PsMJ07T2Kq33wQ9j2pb
	 JEyxhuNyVYMReSsPgcN7FNveusOOj0EJLfnhZ4Dc1FGPlndGbtE9anVVCCzPST9juC
	 u4lG1vU9cwOtULkHukobWp4DV4Wq0wpdUFMtZhjjHVHN8PLS4oThnmEQK+qhYFHoYP
	 3PpK4i/dmfrHXZtLHFLI7apHYqWGY5MsaEjHeX3rCNIqrZUw8AJNs/YrABlYIiVRku
	 ZU87c2vY35qFQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NENlNRiJowaH; Mon,  8 Jan 2024 12:48:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D96A410E7;
	Mon,  8 Jan 2024 12:48:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5D96A410E7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3D6E21BF44A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jan 2024 12:47:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E100960F98
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jan 2024 12:47:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E100960F98
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qioD28_3n1dS for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jan 2024 12:47:39 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1ED6460F99
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jan 2024 12:47:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1ED6460F99
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="11359606"
X-IronPort-AV: E=Sophos;i="6.04,341,1695711600"; d="scan'208";a="11359606"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 04:47:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="904791366"
X-IronPort-AV: E=Sophos;i="6.04,341,1695711600"; d="scan'208";a="904791366"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orsmga004.jf.intel.com with ESMTP; 08 Jan 2024 04:47:34 -0800
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  8 Jan 2024 13:47:17 +0100
Message-Id: <20240108124717.1845481-7-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240108124717.1845481-1-karol.kolacinski@intel.com>
References: <20240108124717.1845481-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704718059; x=1736254059;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DLt8lS3kfypvy2ib6O9crHRPJTm4ZgqZ17dBNJqUJv0=;
 b=oJz7Wutd8OUnEmFsWzA3S4s8A3wJTFbVtQQD+2C7nJdBmE9zx5WJzy5P
 lUS9kjhp1L2QQS1TxE7CgHKpvmEfE0bCYYBje7+Lbz8LBfjr/3V36BrXL
 8I1/6Si02idDOK8Djkzavx/gzBzkqL5dqRO2KghQ62SMRKLaVzJEeLpqY
 cgBGPhHZAi8y+ZGtUI63ItU9GV8+RPx09Dbazxt62ERzUGvFXo9mwwzRS
 VudREuHwyFy5wO7+Vt3vjhpHH98GJljeZj6evEtuAfWsOhZmlmeNH9dX5
 Ql1RPlbudQi0JzwMLKWRz4VILzMS2JKO8oNCefjIAFliAX6GwXSuc/Cxa
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oJz7Wutd
Subject: [Intel-wired-lan] [PATCH v5 iwl-next 6/6] ice: stop destroying and
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

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
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 33 +++++++++++++++---------
 1 file changed, 21 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 8a589f853e96..03e91323bdff 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -963,6 +963,22 @@ ice_ptp_mark_tx_tracker_stale(struct ice_ptp_tx *tx)
 	spin_unlock_irqrestore(&tx->lock, flags);
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
@@ -2715,6 +2731,11 @@ static int ice_ptp_rebuild_owner(struct ice_pf *pf)
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
@@ -2753,18 +2774,6 @@ void ice_ptp_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 			goto err;
 	}
 
-	/* Init Tx structures */
-	if (ice_is_e810(&pf->hw)) {
-		err = ice_ptp_init_tx_e810(pf, &ptp->port.tx);
-	} else {
-		kthread_init_delayed_work(&ptp->port.ov_work,
-					  ice_ptp_wait_for_offsets);
-		err = ice_ptp_init_tx_e82x(pf, &ptp->port.tx,
-					   ptp->port.port_num);
-	}
-	if (err)
-		goto err;
-
 	ptp->state = ICE_PTP_READY;
 
 	/* Start periodic work going */
-- 
2.40.1

