Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A208F7E0C6C
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Nov 2023 00:47:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F7A641EB3;
	Fri,  3 Nov 2023 23:47:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F7A641EB3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699055246;
	bh=niYkEBdVeDQps6mDOKKngQQNsaEIle/mFrY1kJ2yuvw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sVmYZBXuqzCCe4U43jKAomxHGNLw9yY6bapacZ0n65c+aRq8bIiP2Q0lbq9NuwdRW
	 JtmkBIYA4sr4OiwyFEFQgQEzSZARanKuejNDfhdoPO48pBNnBDjup7pIN6g+5y31mG
	 gpUpPfdSDKmIWDk2ThCXC4a5Xj4rzodrHlaxyxZk17cF0qWWt082G8qCbQ1cdCylOS
	 v0NYDqvEJWGvernF2dyGU/7bYcjftMfHE9ECYus0B3A+osP/jIxqHZ1atzdYuVdQmd
	 hswFFwZT59gXELhrIuxT7gQkStWD6X/P9wuIXGO4iFh1XYEpywx8pltbpYlfk3nxui
	 z6GjYxemtC3WA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M_BopPVC_CpP; Fri,  3 Nov 2023 23:47:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DB07141E90;
	Fri,  3 Nov 2023 23:47:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB07141E90
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4BDFD1BF20D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Nov 2023 23:47:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1ECEF405A2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Nov 2023 23:47:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1ECEF405A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0uGk0Dbrfz6f for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Nov 2023 23:47:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D7C7D405AF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Nov 2023 23:47:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7C7D405AF
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="374076058"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; d="scan'208";a="374076058"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 16:47:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="905504341"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; d="scan'208";a="905504341"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 16:47:03 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri,  3 Nov 2023 16:46:57 -0700
Message-ID: <20231103234658.511859-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231103234658.511859-1-jacob.e.keller@intel.com>
References: <20231103234658.511859-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699055225; x=1730591225;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c0AHTsmWpXqn/gS36tHRuPdDdJntIl8Aary/A6Kv1nM=;
 b=e/Peur09Dl+aAqe9zaSTu+tm3Uu/3qqIB5mdRtx0EXDD0nQosnKLwEug
 kVvdhlPv2a/lI876zbiVS/jiS5a+f43Hk2aGGYWZNGIhrEJCs07gWbpxs
 BtzKxadizP3EX8IjeEhi0pNGyIXucidy4CJdD83bWAp+fTqN3Y2T6OptV
 3t06/LI8hbZabQrZjY6QdyFXLmQ6wncVQtvjLiM2SCA4/NY3HfNGfqWq1
 gW/1gSlLkOoF9kSYtMAyo68jhhRZ+yhogFdw/GfVIm8OY1AtxyBXLmnFy
 +4SU2f3IZhhShSou1/9bu5k+ZWo8gup98wzJm77lFq5l/gIKtEgXFbpyr
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e/Peur09
Subject: [Intel-wired-lan] [PATCH iwl-net 2/3] ice: unify logic for
 programming PFINT_TSYN_MSK
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
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit d938a8cca88a ("ice: Auxbus devices & driver for E822 TS") modified
how Tx timestamps are handled for E822 devices. On these devices, only the
clock owner handles reading the Tx timestamp data from firmware. To do
this, the PFINT_TSYN_MSK register is modified from the default value to one
which enables reacting to a Tx timestamp on all PHY ports.

The driver currently programs PFINT_TSYN_MSK in different places depending
on whether the port is the clock owner or not. For the clock owner, the
PFINT_TSYN_MSK value is programmed during ice_ptp_init_owner just before
calling ice_ptp_tx_ena_intr to program the PHY ports.

For the non-clock owner ports, the PFINT_TSYN_MSK is programmed during
ice_ptp_init_port.

If a large enough device reset occurs, the PFINT_TSYN_MSK register will be
reset to the default value in which only the PHY associated directly with
the PF will cause the Tx timestamp interrupt to trigger.

The driver lacks logic to reprogram the PFINT_TSYN_MSK register after a
device reset. For the E822 device, this results in the PF no longer
responding to interrupts for other ports. This results in failure to
deliver Tx timestamps to user space applications.

Rename ice_ptp_configure_tx_tstamp to ice_ptp_cfg_tx_interrupt, and unify
the logic for programming PFINT_TSYN_MSK and PFINT_OICR_ENA into one place.
This function will program both registers according to the combination of
user configuration and device requirements.

This ensures that PFINT_TSYN_MSK is always restored when we configure the
Tx timestamp interrupt.

Fixes: d938a8cca88a ("ice: Auxbus devices & driver for E822 TS")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 60 ++++++++++++++----------
 1 file changed, 34 insertions(+), 26 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index affd90622a68..624d05b4bbd9 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -256,21 +256,42 @@ ice_verify_pin_e810t(struct ptp_clock_info *info, unsigned int pin,
 }
 
 /**
- * ice_ptp_configure_tx_tstamp - Enable or disable Tx timestamp interrupt
- * @pf: The PF pointer to search in
- * @on: bool value for whether timestamp interrupt is enabled or disabled
+ * ice_ptp_cfg_tx_interrupt - Configure Tx timestamp interrupt for the device
+ * @pf: Board private structure
+ *
+ * Program the device to respond appropriately to the Tx timestamp interrupt
+ * cause.
  */
-static void ice_ptp_configure_tx_tstamp(struct ice_pf *pf, bool on)
+static void ice_ptp_cfg_tx_interrupt(struct ice_pf *pf)
 {
+	struct ice_hw *hw = &pf->hw;
+	bool enable;
 	u32 val;
 
+	switch (pf->ptp.tx_interrupt_mode) {
+	case ICE_PTP_TX_INTERRUPT_ALL:
+		/* React to interrupts across all quads. */
+		wr32(hw, PFINT_TSYN_MSK + (0x4 * hw->pf_id), (u32)0x1f);
+		enable = true;
+		break;
+	case ICE_PTP_TX_INTERRUPT_NONE:
+		/* Do not react to interrupts on any quad. */
+		wr32(hw, PFINT_TSYN_MSK + (0x4 * hw->pf_id), (u32)0x0);
+		enable = false;
+		break;
+	case ICE_PTP_TX_INTERRUPT_SELF:
+	default:
+		enable = pf->ptp.tstamp_config.tx_type == HWTSTAMP_TX_ON;
+		break;
+	}
+
 	/* Configure the Tx timestamp interrupt */
-	val = rd32(&pf->hw, PFINT_OICR_ENA);
-	if (on)
+	val = rd32(hw, PFINT_OICR_ENA);
+	if (enable)
 		val |= PFINT_OICR_TSYN_TX_M;
 	else
 		val &= ~PFINT_OICR_TSYN_TX_M;
-	wr32(&pf->hw, PFINT_OICR_ENA, val);
+	wr32(hw, PFINT_OICR_ENA, val);
 }
 
 /**
@@ -280,10 +301,9 @@ static void ice_ptp_configure_tx_tstamp(struct ice_pf *pf, bool on)
  */
 static void ice_set_tx_tstamp(struct ice_pf *pf, bool on)
 {
-	if (pf->ptp.tx_interrupt_mode == ICE_PTP_TX_INTERRUPT_SELF)
-		ice_ptp_configure_tx_tstamp(pf, on);
-
 	pf->ptp.tstamp_config.tx_type = on ? HWTSTAMP_TX_ON : HWTSTAMP_TX_OFF;
+
+	ice_ptp_cfg_tx_interrupt(pf);
 }
 
 /**
@@ -2789,15 +2809,7 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
 	/* Release the global hardware lock */
 	ice_ptp_unlock(hw);
 
-	if (pf->ptp.tx_interrupt_mode == ICE_PTP_TX_INTERRUPT_ALL) {
-		/* The clock owner for this device type handles the timestamp
-		 * interrupt for all ports.
-		 */
-		ice_ptp_configure_tx_tstamp(pf, true);
-
-		/* React on all quads interrupts for E82x */
-		wr32(hw, PFINT_TSYN_MSK + (0x4 * hw->pf_id), (u32)0x1f);
-
+	if (!ice_is_e810(hw)) {
 		/* Enable quad interrupts */
 		err = ice_ptp_tx_ena_intr(pf, true, itr);
 		if (err)
@@ -2867,13 +2879,6 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
 	case ICE_PHY_E810:
 		return ice_ptp_init_tx_e810(pf, &ptp_port->tx);
 	case ICE_PHY_E822:
-		/* Non-owner PFs don't react to any interrupts on E82x,
-		 * neither on own quad nor on others
-		 */
-		if (!ice_ptp_pf_handles_tx_interrupt(pf)) {
-			ice_ptp_configure_tx_tstamp(pf, false);
-			wr32(hw, PFINT_TSYN_MSK + (0x4 * hw->pf_id), (u32)0x0);
-		}
 		kthread_init_delayed_work(&ptp_port->ov_work,
 					  ice_ptp_wait_for_offsets);
 
@@ -3018,6 +3023,9 @@ void ice_ptp_init(struct ice_pf *pf)
 	/* Start the PHY timestamping block */
 	ice_ptp_reset_phy_timestamping(pf);
 
+	/* Configure initial Tx interrupt settings */
+	ice_ptp_cfg_tx_interrupt(pf);
+
 	set_bit(ICE_FLAG_PTP, pf->flags);
 	err = ice_ptp_init_work(pf, ptp);
 	if (err)
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
