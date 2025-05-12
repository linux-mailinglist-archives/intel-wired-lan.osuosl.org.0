Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CCCAB3719
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 May 2025 14:35:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B114781973;
	Mon, 12 May 2025 12:35:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JyIoXZr3cta6; Mon, 12 May 2025 12:35:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E8B2E8197D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747053325;
	bh=QAa+CHhlx1VONqa7BZ3QYAkR2E6oYejl1fuDsKtWTvI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=FqTE+AtHTqD0eMelcKe9UCLeeCIOLxxKqYDy3uoICIqWTctWACVBx4zufZVS4ahbK
	 CqjRpGVGiLSOQu/nPEOumaupkxHw3FpD667FwJ7ZI4IKVB0fJL44KYGW1/HEFOMV37
	 1yUx1p1+QZtp0uVxmsPsFV2NWyMvnzhO8QF+MZwSKbuYWhACob2tQizuLxjNO3Fw9t
	 wG5WkIDoPPcjLMBJ9ms5fDLgzRfD078WOLVt8N2tc5RYHQ4fHX0dqi/JqRv8jpGyCK
	 tqaDm9FHhFX1to3gFC896gdDtm03/rg2LPkmflnI0O+C1WuzK+viNsS6U2TajsEmPl
	 xjytvcXZjKEmg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E8B2E8197D;
	Mon, 12 May 2025 12:35:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id AA3D2154
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 12:35:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9027E400CB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 12:35:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g4arLZSX5Dc8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 May 2025 12:35:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B250B40B50
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B250B40B50
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B250B40B50
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 12:35:20 +0000 (UTC)
X-CSE-ConnectionGUID: t9JxXjawQ+awQ3QmD/baQw==
X-CSE-MsgGUID: RHnJW/IPRyev5wCIHvM9FQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="48541791"
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="48541791"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 05:35:20 -0700
X-CSE-ConnectionGUID: wKCL6bwGQ0W4IrP4Pwgbcw==
X-CSE-MsgGUID: WaLhORkWR0izdWHW1ZFg6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="138322794"
Received: from kkolacin-desk1.ger.corp.intel.com (HELO
 kkolacin-desk1.igk.intel.com) ([10.217.160.155])
 by fmviesa009.fm.intel.com with ESMTP; 12 May 2025 05:35:17 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, richardcochran@gmail.com,
 Karol Kolacinski <karol.kolacinski@intel.com>
Date: Mon, 12 May 2025 14:34:57 +0200
Message-ID: <20250512123509.1194023-3-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747053322; x=1778589322;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vmSWxpGFDTrdWKUCaWo051UNIY/9ZBUNlmWHIEqIfSI=;
 b=Oma+lmw9nxRFTt5NmwiG1xiqdfcQ3M5KVhLNyTg9ZzDtfhhqw+1vUcOj
 DhyipQV5ozfrMKCfYfBx+YLT1Bpwj7VSjMLg1ay2K/RHGPG6ZujXKqme9
 jiy83biBa3Mw0RKvG9v4gFe0EAZ68nnWh+LDI2z3kwpqlvi7k1L9xb8bn
 69cXsUcKO+AF7HxyDC3IDCO/nFezCnz3f/Cu6sZch1HaB5pkfYin21o1y
 QJu5QNz5U7kAXsKWqpcl+VMwPSFOCEM7A9GjcaKU1KpWfrVgVc6lXBsUF
 3uk6sUGDGNeOX8ktQFrWDIl/arC2nUY0OMem/4lfCCvCO8vE5OT1AbGza
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Oma+lmw9
Subject: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: move two ice_ptp_*
 functions
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Move ice_ptp_maybe_trigger_tx_interrupt() and ice_ptp_periodic_work().

This will allow to assign ice_ptp_periodic_work() to PTP API's
do_aux_work function pointer.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 132 +++++++++++------------
 1 file changed, 66 insertions(+), 66 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 3278b96d8f01..0a1f6e0e4a22 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2530,6 +2530,72 @@ static void ice_ptp_set_funcs_e830(struct ice_pf *pf)
 	ice_ptp_setup_pin_cfg(pf);
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
+	if (!pf->ptp.port.tx.has_ready_bitmap)
+		return;
+
+	if (!ice_pf_src_tmr_owned(pf))
+		return;
+
+	for (i = 0; i < ICE_GET_QUAD_NUM(hw->ptp.num_lports); i++) {
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
+static void ice_ptp_periodic_work(struct kthread_work *work)
+{
+	struct ice_ptp *ptp = container_of(work, struct ice_ptp, work.work);
+	struct ice_pf *pf = container_of(ptp, struct ice_pf, ptp);
+	int err;
+
+	if (pf->ptp.state != ICE_PTP_READY)
+		return;
+
+	err = ice_ptp_update_cached_phctime(pf);
+
+	ice_ptp_maybe_trigger_tx_interrupt(pf);
+
+	/* Run twice a second or reschedule if phc update failed */
+	kthread_queue_delayed_work(ptp->kworker, &ptp->work,
+				   msecs_to_jiffies(err ? 10 : 500));
+}
+
 /**
  * ice_ptp_set_caps - Set PTP capabilities
  * @pf: Board private structure
@@ -2739,72 +2805,6 @@ irqreturn_t ice_ptp_ts_irq(struct ice_pf *pf)
 	}
 }
 
-/**
- * ice_ptp_maybe_trigger_tx_interrupt - Trigger Tx timstamp interrupt
- * @pf: Board private structure
- *
- * The device PHY issues Tx timestamp interrupts to the driver for processing
- * timestamp data from the PHY. It will not interrupt again until all
- * current timestamp data is read. In rare circumstances, it is possible that
- * the driver fails to read all outstanding data.
- *
- * To avoid getting permanently stuck, periodically check if the PHY has
- * outstanding timestamp data. If so, trigger an interrupt from software to
- * process this data.
- */
-static void ice_ptp_maybe_trigger_tx_interrupt(struct ice_pf *pf)
-{
-	struct device *dev = ice_pf_to_dev(pf);
-	struct ice_hw *hw = &pf->hw;
-	bool trigger_oicr = false;
-	unsigned int i;
-
-	if (!pf->ptp.port.tx.has_ready_bitmap)
-		return;
-
-	if (!ice_pf_src_tmr_owned(pf))
-		return;
-
-	for (i = 0; i < ICE_GET_QUAD_NUM(hw->ptp.num_lports); i++) {
-		u64 tstamp_ready;
-		int err;
-
-		err = ice_get_phy_tx_tstamp_ready(&pf->hw, i, &tstamp_ready);
-		if (!err && tstamp_ready) {
-			trigger_oicr = true;
-			break;
-		}
-	}
-
-	if (trigger_oicr) {
-		/* Trigger a software interrupt, to ensure this data
-		 * gets processed.
-		 */
-		dev_dbg(dev, "PTP periodic task detected waiting timestamps. Triggering Tx timestamp interrupt now.\n");
-
-		wr32(hw, PFINT_OICR, PFINT_OICR_TSYN_TX_M);
-		ice_flush(hw);
-	}
-}
-
-static void ice_ptp_periodic_work(struct kthread_work *work)
-{
-	struct ice_ptp *ptp = container_of(work, struct ice_ptp, work.work);
-	struct ice_pf *pf = container_of(ptp, struct ice_pf, ptp);
-	int err;
-
-	if (pf->ptp.state != ICE_PTP_READY)
-		return;
-
-	err = ice_ptp_update_cached_phctime(pf);
-
-	ice_ptp_maybe_trigger_tx_interrupt(pf);
-
-	/* Run twice a second or reschedule if phc update failed */
-	kthread_queue_delayed_work(ptp->kworker, &ptp->work,
-				   msecs_to_jiffies(err ? 10 : 500));
-}
-
 /**
  * ice_ptp_prepare_rebuild_sec - Prepare second NAC for PTP reset or rebuild
  * @pf: Board private structure

base-commit: b74ad830a99f47b47e3f8d98d7d78614edab6217
-- 
2.49.0

