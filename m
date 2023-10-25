Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC84D7D6B01
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Oct 2023 14:16:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B7094364A;
	Wed, 25 Oct 2023 12:16:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B7094364A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698236189;
	bh=CRISQruJpaH+TEIIxq8Tuq0lrr/D/G1iASyuCouDdms=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uYolthITkvRDQKJszKbacB+wOtahHphHvt0YVZzyj0HjrE2gGgxFShqrjQULtvEbJ
	 tqbwMaWoWy4fuNOdqE3x8wFEqvQMq4cF0u5LLWiprYRad3w3i4SN776fsvYTToYw4w
	 g85a5M9/jdOcJoBWYSmShlnxGgEbkjP1cuO0PJ/lj0iWhNo/fmUNa3rcfQnOpOZjMG
	 8SFgKgXLnv4Tvcgi2WH97SVRyBE39JvtWFTVJF+2noBBlVFv3oU1QdPKCJzW8rcnEA
	 uNDPWLzeu5ZePLy/qJxDSRlV1xOoo3niA58FpaISlM/9X1vV5N3waX7eqP2iBMFzXW
	 DkvT7qAjDcBrA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zhirrPuLCFhc; Wed, 25 Oct 2023 12:16:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 90A49432EF;
	Wed, 25 Oct 2023 12:16:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 90A49432EF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AFE1C1BF48B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 12:16:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8583184988
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 12:16:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8583184988
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tA4BeBeWYigI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Oct 2023 12:16:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BD0EE84F00
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 12:16:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD0EE84F00
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="418414333"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="418414333"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 05:16:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="824627917"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="824627917"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmsmga008.fm.intel.com with ESMTP; 25 Oct 2023 05:16:04 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 25 Oct 2023 14:13:24 +0200
Message-Id: <20231025121330.216300-5-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231025121330.216300-1-karol.kolacinski@intel.com>
References: <20231025121330.216300-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698236166; x=1729772166;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0IAom3SpSyeuVnPHKXNP2EP+KZNm7YHkm7NQA4p/9q0=;
 b=OKwwSw3yUbfxPHnvRbVnTbBxPgqc7H+TP8niTXhEgh90MdbFmyHodZ9N
 QdFwgKXflT0xMGumklJlgt6yDo3taW9X72c9BdT9AIZYUFhJqhLnD+TfI
 H+2jXJ2ok7QsVSf2p8ccK7jQxElIaj+O5dzh9uuYsUuhc7Vqdk8G1Ws4E
 jXRamoxgqWxPeUaTFgIUBQYyOetpm1rpimMuURR3cA2l21hZuw6cHNYYr
 vrOQIUITJfT8tiOkTotXVZgxax4sFGLGFUa2ZDHYDvncOMd2gVffD19CF
 bBrgzFkSXeax/t0LtL9xaS+SeG/PfGl2sYcj4VtlDjzL4Fyv0xK1WBBX5
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OKwwSw3y
Subject: [Intel-wired-lan] [PATCH iwl-next 04/10] ice: rename
 ice_ptp_configure_tx_tstamp
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

The ice_ptp_configure_tx_tstamp function writes to PFINT_OICR_ENA to
configure it with the PFINT_OICR_TX_TSYN_M bit. The name of this
function is confusing because there are multiple other functions with
almost identical names.

Rename it to ice_ptp_cfg_tx_interrupt in order to make it more obvious
to the reader what action it performs.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index d06840fe50ff..d4bc6dd0d76b 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -256,11 +256,11 @@ ice_verify_pin_e810t(struct ptp_clock_info *info, unsigned int pin,
 }
 
 /**
- * ice_ptp_configure_tx_tstamp - Enable or disable Tx timestamp interrupt
- * @pf: The PF pointer to search in
+ * ice_ptp_cfg_tx_interrupt - Configure Tx timestamp interrupt for the device
+ * @pf: Board private structure
  * @on: bool value for whether timestamp interrupt is enabled or disabled
  */
-static void ice_ptp_configure_tx_tstamp(struct ice_pf *pf, bool on)
+static void ice_ptp_cfg_tx_interrupt(struct ice_pf *pf, bool on)
 {
 	u32 val;
 
@@ -295,7 +295,7 @@ static void ice_set_tx_tstamp(struct ice_pf *pf, bool on)
 	}
 
 	if (pf->ptp.tx_interrupt_mode == ICE_PTP_TX_INTERRUPT_SELF)
-		ice_ptp_configure_tx_tstamp(pf, on);
+		ice_ptp_cfg_tx_interrupt(pf, on);
 
 	pf->ptp.tstamp_config.tx_type = on ? HWTSTAMP_TX_ON : HWTSTAMP_TX_OFF;
 }
@@ -2564,7 +2564,7 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 		ice_ptp_restart_all_phy(pf);
 
 	if (ptp->tx_interrupt_mode)
-		ice_ptp_configure_tx_tstamp(pf, true);
+		ice_ptp_cfg_tx_interrupt(pf, true);
 
 	/* Start periodic work going */
 	kthread_queue_delayed_work(ptp->kworker, &ptp->work, 0);
@@ -2829,7 +2829,7 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
 		/* The clock owner for this device type handles the timestamp
 		 * interrupt for all ports.
 		 */
-		ice_ptp_configure_tx_tstamp(pf, true);
+		ice_ptp_cfg_tx_interrupt(pf, true);
 
 		/* React on all quads interrupts for E82x */
 		wr32(hw, PFINT_TSYN_MSK + (0x4 * hw->pf_id), (u32)0x1f);
@@ -2907,7 +2907,7 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
 		 * neither on own quad nor on others
 		 */
 		if (!ice_ptp_pf_handles_tx_interrupt(pf)) {
-			ice_ptp_configure_tx_tstamp(pf, false);
+			ice_ptp_cfg_tx_interrupt(pf, false);
 			wr32(hw, PFINT_TSYN_MSK + (0x4 * hw->pf_id), (u32)0x0);
 		}
 		kthread_init_delayed_work(&ptp_port->ov_work,
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
