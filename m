Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 897037D6B0A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Oct 2023 14:17:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C2C894046F;
	Wed, 25 Oct 2023 12:17:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C2C894046F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698236222;
	bh=hQ/er2WGUcsz1oqbqq/CIdPLVefvlM//6m906qfXWPA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oJ+vED2y+wO69PIfv5d7UAVqr11IM9+TzmZDRMClPHE2kCdxjDpYNsYEDsRU0QP3M
	 lttFxwsrrXns/ez5MfClsukqRrTOK68hoVWjbIDQ8PREC/6wxtSpXCahDXL6G9ENH6
	 ysnwmaJd4t6QC9y071DRc4BxJ1QUJ9AAJ0meAMfRL8ytrUF3nbJ3IgDPqxHsltdMl4
	 +/ZC5DJvHnmmJOpCa+L6BANKqLWicKsV0TrcxIIU5gZu/j1fgd+nwPtoNEqiUB0yDH
	 zIS9QwhdmZQE+QwxklQmID8rvdaw8Fqg1tuAfFiDlNgxSGtAk7ZzsyUrZA7gQZfrfU
	 KP5mVrUTOAOWw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gGlG5nGmG00Z; Wed, 25 Oct 2023 12:16:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2E09443303;
	Wed, 25 Oct 2023 12:16:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2E09443303
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A20DC1BF48B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 12:16:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7B25484CD1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 12:16:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B25484CD1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0pEM2fWcFnkK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Oct 2023 12:16:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6165884988
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 12:16:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6165884988
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="418414365"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="418414365"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 05:16:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="824627938"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="824627938"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmsmga008.fm.intel.com with ESMTP; 25 Oct 2023 05:16:13 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 25 Oct 2023 14:13:29 +0200
Message-Id: <20231025121330.216300-10-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231025121330.216300-1-karol.kolacinski@intel.com>
References: <20231025121330.216300-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698236175; x=1729772175;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ahUi+S92foT/046PgONR7fFXqpM4IZIYWfyScQqHUpQ=;
 b=nNJKGaEEqPvfgvR0qjk1BqfIFctt1GQ4eG6oRyC4uN1fXe5ebBmha6ah
 acZ56xXWtm08nstHNesNvK7/79mpThe018vyiNXmX+xQ5/zBCcR2MBnN7
 qmI1gl2mv5oooSXdnrrk79nMoCtMlmrX9ePsqpwqdTr//MAgV7Ls88t/d
 fY/XqSJp/FTpu2mQ17hgRkpLVlCIrEijNF8Bw1iP0whrFTHqB3vMCUprg
 Paf9ALVh9qNaKaNDFaigtb7u+EyWJ6Ct0weTjf0QwXfO2rI3Mb8V974lV
 QlipenTzxjShOjjVPwj6hAbg/C8tgah4OMQPAcg6CPrVcnwtFFCSqp6Ya
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nNJKGaEE
Subject: [Intel-wired-lan] [PATCH iwl-next 09/10] ice: restore timestamp
 configuration after reset
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

The driver calls ice_ptp_cfg_timestamp() during
ice_ptp_prepare_for_reset() to disable timestamping while the device is
resetting. It then attempts to restore timestamp configuration at the
end of ice_rebuild(). However, it currently forcibly calls
ice_ptp_cfg_timestamp() with a value of true when the device is not E810
and is the clock owner, while calling ice_ptp_cfg_timestamp() with a
value of false for all other devices.

This incorrectly forcibly disables timestamping on all ports except the
clock owner.

This was not detected previously due to a quirk of the LinuxPTP ptp4l
application. If ptp4l detects a missing timestamp, it enters a fault
state and performs recovery logic which includes executing SIOCSHWTSTAMP
again, restoring the now accidentally cleared configuration.

Not every application does this, and for these applications, timestamps
will mysteriously stop after a PF reset, without being restored until an
application restart.

Fix this by replacing ice_ptp_cfg_timestamp() with two new functions:

1) ice_ptp_disable_timestamp_mode() which unconditionally disables the
   timestamping logic in ice_ptp_prepare_for_reset() and
   ice_ptp_release()

2) ice_ptp_restore_timestamp_mode() which calls
   ice_ptp_restore_tx_interrupt() to restore Tx timestamping
   configuration, calls ice_set_rx_tstamp() to restore Rx timestamping
   configuration, and issues an immediate TSYN_TX interrupt to ensure
   that timestamps which may have occurred during the device reset get
   processed.

This obsoletes the ice_set_tx_tstamp() function which can now be safely
removed.

With this change, all devices should now restore Tx and Rx timestamping
functionality correctly after a PF reset without application
intervention.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 10 +--
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 75 +++++++++++++++++------
 drivers/net/ethernet/intel/ice/ice_ptp.h  |  4 +-
 3 files changed, 59 insertions(+), 30 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 7e1782af6b79..3c9419b05a2a 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -7408,14 +7408,8 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 		goto err_vsi_rebuild;
 	}
 
-	/* configure PTP timestamping after VSI rebuild */
-	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags)) {
-		if (pf->ptp.tx_interrupt_mode == ICE_PTP_TX_INTERRUPT_SELF)
-			ice_ptp_cfg_timestamp(pf, false);
-		else if (pf->ptp.tx_interrupt_mode == ICE_PTP_TX_INTERRUPT_ALL)
-			/* for E82x PHC owner always need to have interrupts */
-			ice_ptp_cfg_timestamp(pf, true);
-	}
+	/* Restore timestamp mode settings after VSI rebuild */
+	ice_ptp_restore_timestamp_mode(pf);
 
 	err = ice_eswitch_rebuild(pf);
 	if (err) {
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index e203cf775b76..fead06c60905 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -274,14 +274,27 @@ static void ice_ptp_cfg_tx_interrupt(struct ice_pf *pf, bool on)
 }
 
 /**
- * ice_set_tx_tstamp - Enable or disable Tx timestamping
- * @pf: The PF pointer to search in
- * @on: bool value for whether timestamps are enabled or disabled
+ * ice_ptp_restore_tx_interrupt - Restore Tx timestamp interrupt after reset
+ * @pf: Board private structure
  */
-static void ice_set_tx_tstamp(struct ice_pf *pf, bool on)
+static void ice_ptp_restore_tx_interrupt(struct ice_pf *pf)
 {
-	if (pf->ptp.tx_interrupt_mode == ICE_PTP_TX_INTERRUPT_SELF)
-		ice_ptp_cfg_tx_interrupt(pf, on);
+	bool enable;
+
+	switch (pf->ptp.tx_interrupt_mode) {
+	case ICE_PTP_TX_INTERRUPT_ALL:
+		enable = true;
+		break;
+	case ICE_PTP_TX_INTERRUPT_NONE:
+		enable = false;
+		break;
+	case ICE_PTP_TX_INTERRUPT_SELF:
+	default:
+		enable = pf->ptp.tstamp_config.tx_type == HWTSTAMP_TX_ON;
+		break;
+	}
+
+	ice_ptp_cfg_tx_interrupt(pf, enable);
 }
 
 /**
@@ -307,17 +320,41 @@ static void ice_set_rx_tstamp(struct ice_pf *pf, bool on)
 }
 
 /**
- * ice_ptp_cfg_timestamp - Configure timestamp for init/deinit
+ * ice_ptp_disable_timestamp_mode - Disable current timestamp mode
  * @pf: Board private structure
- * @ena: bool value to enable or disable time stamp
  *
- * This function will configure timestamping during PTP initialization
- * and deinitialization
+ * Called during preparation for reset to temporarily disable timestamping on
+ * the device. Called during remove to disable timestamping while cleaning up
+ * driver resources.
  */
-void ice_ptp_cfg_timestamp(struct ice_pf *pf, bool ena)
+static void ice_ptp_disable_timestamp_mode(struct ice_pf *pf)
 {
-	ice_set_tx_tstamp(pf, ena);
-	ice_set_rx_tstamp(pf, ena);
+	ice_ptp_cfg_tx_interrupt(pf, false);
+	ice_set_rx_tstamp(pf, false);
+}
+
+/**
+ * ice_ptp_restore_timestamp_mode - Restore timestamp configuration
+ * @pf: Board private structure
+ *
+ * Called at the end of rebuild to restore timestamp configuration after
+ * a device reset.
+ */
+void ice_ptp_restore_timestamp_mode(struct ice_pf *pf)
+{
+	struct ice_hw *hw = &pf->hw;
+	bool enable_rx;
+
+	ice_ptp_restore_tx_interrupt(pf);
+
+	enable_rx = pf->ptp.tstamp_config.rx_filter == HWTSTAMP_FILTER_ALL;
+	ice_set_rx_tstamp(pf, enable_rx);
+
+	/* Trigger an immediate software interrupt to ensure that timestamps
+	 * which occurred during reset are handled now.
+	 */
+	wr32(hw, PFINT_OICR, PFINT_OICR_TSYN_TX_M);
+	ice_flush(hw);
 }
 
 /**
@@ -2023,11 +2060,9 @@ ice_ptp_set_timestamp_mode(struct ice_pf *pf, struct hwtstamp_config *config)
 {
 	switch (config->tx_type) {
 	case HWTSTAMP_TX_OFF:
-		ice_set_tx_tstamp(pf, false);
 		pf->ptp.tstamp_config.tx_type = HWTSTAMP_TX_OFF;
 		break;
 	case HWTSTAMP_TX_ON:
-		ice_set_tx_tstamp(pf, true);
 		pf->ptp.tstamp_config.tx_type = HWTSTAMP_TX_ON;
 		break;
 	default:
@@ -2060,6 +2095,9 @@ ice_ptp_set_timestamp_mode(struct ice_pf *pf, struct hwtstamp_config *config)
 		return -ERANGE;
 	}
 
+	/* Make sure interrupt settings are restored */
+	ice_ptp_restore_tx_interrupt(pf);
+
 	return 0;
 }
 
@@ -2438,7 +2476,7 @@ void ice_ptp_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	ptp->state = ICE_PTP_RESETTING;
 
 	/* Disable timestamping for both Tx and Rx */
-	ice_ptp_cfg_timestamp(pf, false);
+	ice_ptp_disable_timestamp_mode(pf);
 
 	kthread_cancel_delayed_work_sync(&ptp->work);
 
@@ -2562,9 +2600,6 @@ void ice_ptp_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 
 	ptp->state = ICE_PTP_READY;
 
-	if (ptp->tx_interrupt_mode)
-		ice_ptp_cfg_tx_interrupt(pf, true);
-
 	/* Start periodic work going */
 	kthread_queue_delayed_work(ptp->kworker, &ptp->work, 0);
 
@@ -3092,7 +3127,7 @@ void ice_ptp_release(struct ice_pf *pf)
 	pf->ptp.state = ICE_PTP_UNINIT;
 
 	/* Disable timestamping for both Tx and Rx */
-	ice_ptp_cfg_timestamp(pf, false);
+	ice_ptp_disable_timestamp_mode(pf);
 
 	ice_ptp_remove_auxbus_device(pf);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index c156b322c6e0..c0c8ef4de70f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -304,7 +304,7 @@ int ice_ptp_clock_index(struct ice_pf *pf);
 struct ice_pf;
 int ice_ptp_set_ts_config(struct ice_pf *pf, struct ifreq *ifr);
 int ice_ptp_get_ts_config(struct ice_pf *pf, struct ifreq *ifr);
-void ice_ptp_cfg_timestamp(struct ice_pf *pf, bool ena);
+void ice_ptp_restore_timestamp_mode(struct ice_pf *pf);
 
 void ice_ptp_extts_event(struct ice_pf *pf);
 s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb);
@@ -330,7 +330,7 @@ static inline int ice_ptp_get_ts_config(struct ice_pf *pf, struct ifreq *ifr)
 	return -EOPNOTSUPP;
 }
 
-static inline void ice_ptp_cfg_timestamp(struct ice_pf *pf, bool ena) { }
+static inline void ice_ptp_restore_timestamp_mode(struct ice_pf *pf) { }
 
 static inline void ice_ptp_extts_event(struct ice_pf *pf) { }
 static inline s8
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
