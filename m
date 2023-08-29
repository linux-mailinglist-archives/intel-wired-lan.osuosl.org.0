Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F7278C26D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Aug 2023 12:41:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 31C7460F36;
	Tue, 29 Aug 2023 10:41:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 31C7460F36
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693305692;
	bh=pbXyrmvtA3Qg12qE2e1Mo5oUxmizeT0wIa3eFlebGbo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DurojqhQGHIQUvtX+mR4mNxlSGQhcmQJJIKzlhd6XNeQT2aS8Xj6T7Uu5bTJMqSkA
	 JRRa2+KPQ7FqJlS41HcEFSoWhanCLVDEdiIfMiNvVPLFL2vPjvHJOd/hpz8tUgCYuF
	 NURibZlUsxTGD+zk9RSY8Wwsd1zgFKxkYyxUA7U8PLPKfF/6a5ZvNL20AtT3KKqkwt
	 /qNJS1LfwO5L0NCC3sLrwgMKw86NbgY6Ity/IQozGifBfLqz9JdOt2YGCK6pUUWs37
	 3jk2Ize/KdPUc63kCZAoPrvst50C6OUDWl0fnNcAVp9JTpj9npk9lsbrv0sQVhPWnK
	 02kORXvZLUAVg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZQK9xz7gIlVz; Tue, 29 Aug 2023 10:41:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2366860AE1;
	Tue, 29 Aug 2023 10:41:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2366860AE1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CB1E91BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 10:41:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A449781501
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 10:41:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A449781501
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cENKdm3lzsfW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Aug 2023 10:41:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D5EA181419
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 10:41:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5EA181419
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="461696905"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="461696905"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 03:41:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="853229815"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="853229815"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmsmga002.fm.intel.com with ESMTP; 29 Aug 2023 03:41:04 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 29 Aug 2023 12:40:37 +0200
Message-Id: <20230829104041.64131-8-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230829104041.64131-1-karol.kolacinski@intel.com>
References: <20230829104041.64131-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693305666; x=1724841666;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4hxTa4cpLnXskipo/+9L9NFOSr5JNIGX7XGEX3TNDd4=;
 b=FrVB7OP83XKK1FIKNqLEQFr/uECZrRjxHfJReBD+PwYTZRFuc07PomSB
 gBw2crcBKEtY3jKpAWT9sghA5JHqnraLbDNSzIpBuKNtLGWa8YcEbFSb1
 mEKEoNVMHd2N4mba1tFts2k3HZJ7D4UzQ7+6wd17OFcLKz9wTRH0/HXJ0
 NaR2JA6mHba7MSu9EL9pamPT6QBr2CVmEd9dQtJV3VgX4hrol24P0oBca
 Bwx8XypmrQreDgt2T6DYwuSFMcdzfvtmxQcmYOkligAqCbb0yqep4kFxP
 vUhec05d3YT6avjBkXRuOi4bA+5bw3HFaWryj5bZfVyq5Ld0YFsz5LamX
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FrVB7OP8
Subject: [Intel-wired-lan] [PATCH v4 iwl-next 07/11] ice: factor out
 ice_ptp_rebuild_owner()
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

From: Jacob Keller <jacob.e.keller@intel.com>

The ice_ptp_reset() function uses a goto to skip past clock owner
operations if performing a PF reset or if the device is not the clock
owner. This is a bit confusing. Factor this out into
ice_ptp_rebuild_owner() instead.

The ice_ptp_reset() function is called by ice_rebuild() to restore PTP
functionality after a device reset. Follow the convention set by the
ice_main.c file and rename this function to ice_ptp_rebuild(), in the
same way that we have ice_prepare_for_reset() and
ice_ptp_prepare_for_reset().

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 60 ++++++++++++++---------
 drivers/net/ethernet/intel/ice/ice_ptp.h  |  6 +--
 3 files changed, 41 insertions(+), 27 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0ef765db008b..22255375e6e7 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -7403,7 +7403,7 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 	 * fail.
 	 */
 	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
-		ice_ptp_reset(pf, reset_type);
+		ice_ptp_rebuild(pf, reset_type);
 
 	if (ice_is_feature_supported(pf, ICE_F_GNSS))
 		ice_gnss_init(pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 16491c2d036f..12824da9f3da 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2486,6 +2486,7 @@ ice_ptp_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	if (reset_type == ICE_RESET_PFR)
 		return;
 
+	kthread_cancel_delayed_work_sync(&pf->ptp.port.ov_work);
 	ice_ptp_release_tx_tracker(pf, &pf->ptp.port.tx);
 
 	/* Disable periodic outputs */
@@ -2501,11 +2502,13 @@ ice_ptp_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 }
 
 /**
- * ice_ptp_reset - Initialize PTP hardware clock support after reset
+ * ice_ptp_rebuild_owner - Initialize PTP clock owner after reset
  * @pf: Board private structure
- * @reset_type: the reset type being performed
+ *
+ * Companion function for ice_ptp_rebuild() which handles tasks that only the
+ * PTP clock owner instance should perform.
  */
-void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
+static int ice_ptp_rebuild_owner(struct ice_pf *pf)
 {
 	struct ice_ptp *ptp = &pf->ptp;
 	struct ice_hw *hw = &pf->hw;
@@ -2513,34 +2516,21 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	u64 time_diff;
 	int err;
 
-	if (ptp->state != ICE_PTP_RESETTING) {
-		if (ptp->state == ICE_PTP_READY) {
-			ice_ptp_prepare_for_reset(pf, reset_type);
-		} else {
-			err = -EINVAL;
-			dev_err(ice_pf_to_dev(pf), "PTP was not initialized\n");
-			goto err;
-		}
-	}
-
-	if (reset_type == ICE_RESET_PFR || !ice_pf_src_tmr_owned(pf))
-		goto pfr;
-
 	err = ice_ptp_init_phc(hw);
 	if (err)
-		goto err;
+		return err;
 
 	/* Acquire the global hardware lock */
 	if (!ice_ptp_lock(hw)) {
 		err = -EBUSY;
-		goto err;
+		return err;
 	}
 
 	/* Write the increment time value to PHY and LAN */
 	err = ice_ptp_write_incval(hw, ice_base_incval(pf));
 	if (err) {
 		ice_ptp_unlock(hw);
-		goto err;
+		return err;
 	}
 
 	/* Write the initial Time value to PHY and LAN using the cached PHC
@@ -2556,7 +2546,7 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	err = ice_ptp_write_init(pf, &ts);
 	if (err) {
 		ice_ptp_unlock(hw);
-		goto err;
+		return err;
 	}
 
 	/* Release the global hardware lock */
@@ -2566,13 +2556,37 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 		/* Enable quad interrupts */
 		err = ice_ptp_cfg_phy_interrupt(pf, true, 1);
 		if (err)
+			return err;
+
+		ice_ptp_restart_all_phy(pf);
+	}
+
+	return 0;
+}
+
+/**
+ * ice_ptp_rebuild - Initialize PTP hardware clock support after reset
+ * @pf: Board private structure
+ * @reset_type: the reset type being performed
+ */
+void ice_ptp_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
+{
+	struct ice_ptp *ptp = &pf->ptp;
+	int err;
+
+	if (ptp->state != ICE_PTP_RESETTING) {
+		if (ptp->state == ICE_PTP_READY) {
+			ice_ptp_prepare_for_reset(pf, reset_type);
+		} else {
+			err = -EINVAL;
+			dev_err(ice_pf_to_dev(pf), "PTP was not initialized\n");
 			goto err;
+		}
 	}
 
-	/* Restart the PHY timestamping block */
-	ice_ptp_reset_phy_timestamping(pf);
+	if (ice_pf_src_tmr_owned(pf) && reset_type != ICE_RESET_PFR)
+		ice_ptp_rebuild_owner(pf);
 
-pfr:
 	/* Init Tx structures */
 	if (ice_is_e810(&pf->hw)) {
 		err = ice_ptp_init_tx_e810(pf, &ptp->port.tx);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index f8fd8e00bbc8..c156b322c6e0 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -313,7 +313,7 @@ enum ice_tx_tstamp_work ice_ptp_process_ts(struct ice_pf *pf);
 void
 ice_ptp_rx_hwtstamp(struct ice_rx_ring *rx_ring,
 		    union ice_32b_rx_flex_desc *rx_desc, struct sk_buff *skb);
-void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type);
+void ice_ptp_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type);
 void ice_ptp_prepare_for_reset(struct ice_pf *pf,
 			       enum ice_reset_req reset_type);
 void ice_ptp_init(struct ice_pf *pf);
@@ -346,8 +346,8 @@ static inline bool ice_ptp_process_ts(struct ice_pf *pf)
 static inline void
 ice_ptp_rx_hwtstamp(struct ice_rx_ring *rx_ring,
 		    union ice_32b_rx_flex_desc *rx_desc, struct sk_buff *skb) { }
-static inline void ice_ptp_reset(struct ice_pf *pf,
-				 enum ice_reset_req reset_type)
+static inline void ice_ptp_rebuild(struct ice_pf *pf,
+				   enum ice_reset_req reset_type)
 {
 }
 
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
