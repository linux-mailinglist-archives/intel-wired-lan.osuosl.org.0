Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iGOlBcmi1mlUGwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 20:47:37 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7743C18C1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 20:47:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD8444101B;
	Wed,  8 Apr 2026 18:47:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i7mIFMp-Chjw; Wed,  8 Apr 2026 18:47:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EAA8440DBD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775674054;
	bh=X+XGzrntJYl6nvxJ6YU5LqAs90cVayLLAB5eeKFxCv0=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jFoBXqXMIl13d4XvEPRwKVBdNDHp0X5ar8lyXAoqQSISUZKZv1NC6tN5NtUa8Q35i
	 PozF5uHDRi/E1WSaSZU630+JUAnimPDDyQrXdaW2bW1hNoQRiFPaAvH2+/sbaMcxUw
	 bNHClG+hWfp01rkbSmBxGW1POkyc5BGS0qKYq0NxghCK+JPEfZLHgL9IK63I7EbMFz
	 V6yjH778PyfOz2UfcKbnmw70nEUM1Sen6qDWeU5eig51+zGL0+veZxpdlfiuJx1HDu
	 YEVDbzEmVh4Jbhy5oGaz0cYOVSYM6tSC8fNUSoTaAn3n6Pzkp9u1CyK5t/jv/Jvn4P
	 l6ZPXTcerrKwA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EAA8440DBD;
	Wed,  8 Apr 2026 18:47:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 159111F6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 18:47:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E0B7260756
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 18:47:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8KkhKcgk0l18 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 18:47:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DA26C6076C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA26C6076C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DA26C6076C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 18:47:28 +0000 (UTC)
X-CSE-ConnectionGUID: xZ+AvVhVRYigLrK9u2DYJQ==
X-CSE-MsgGUID: 6tcufk++Ra24/X88BBr+AA==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="75841384"
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="75841384"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 11:47:28 -0700
X-CSE-ConnectionGUID: DyEUa8soQ0+0iM4pM1JWRA==
X-CSE-MsgGUID: B3JqnITyReC2GILJSHbryA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="230217566"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.109])
 ([10.166.28.109])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 11:47:27 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 08 Apr 2026 11:46:33 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260408-jk-even-more-e825c-fixes-v1-3-b959da91a81f@intel.com>
References: <20260408-jk-even-more-e825c-fixes-v1-0-b959da91a81f@intel.com>
In-Reply-To: <20260408-jk-even-more-e825c-fixes-v1-0-b959da91a81f@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, netdev@vger.kernel.org
X-Mailer: b4 0.16-dev-306a9
X-Developer-Signature: v=1; a=openpgp-sha256; l=12152;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=bDCHo9Qd8tPyja99fRKRg8JbbMO0vb09ovr28Mx4LQ8=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhsxri/a+NPTzr/vwVbahPO6p/ab/K+64pBTOmvEt8mbWl
 9W3lp092VHKwiDGxSArpsii4BCy8rrxhDCtN85yMHNYmUCGMHBxCsBEzq5iZLgTzcJy6Y4z+8uJ
 64Tm3juV/Mit4xhLVXOQtGF74E9NxVJGhns+rJIWYS+vHHaf++OYuSPD/RzjY5GT/ae3b9dNav/
 fzg8A
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775674049; x=1807210049;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=bDCHo9Qd8tPyja99fRKRg8JbbMO0vb09ovr28Mx4LQ8=;
 b=JTeTQOr86X89gp4nGkSzk8+Mk4FbijWJ+Oviv+ArKM+U53TIQzxn3Vik
 1g+Mdjup4t1WqBkRID20gpeMttg5MK9dM3Ykw+VbQDRDbif/MxY8Fr1t3
 KgP4fRS2mR4Trl3t+FhSuZ3lCBkZ6z0saFCJtffcrgrV4b+HE36zkF9Sg
 Aje7PPHysyK1pkadW2cuY9GC41kZ3hevOBO9UlVQUtnZE3QLhXXF/dwfn
 ewYasi8iNrDnXybuLT4IcQCb0zFonDQQGdVl59zfV5DgmCm5lzo7it0Fr
 F38oWbgtT99fBjBAcr2V8SK27ibuZR/4h/3vUx8G+PxXw7NJ69Atj1fme
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JTeTQOr8
Subject: [Intel-wired-lan] [PATCH iwl-net 3/4] ice: fix ready bitmap check
 for non-E822 devices
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Timothy Miskell <timothy.miskell@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [-0.61 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:timothy.miskell@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5A7743C18C1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The E800 hardware (apart from E810) has a ready bitmap for the PHY
indicating which timestamp slots currently have an outstanding timestamp
waiting to be read by software.

This bitmap is checked in multiple places using the
ice_get_phy_tx_tstamp_ready():

 * ice_ptp_process_tx_tstamp() calls it to determine which timestamps to
   attempt reading from the PHY
 * ice_ptp_tx_tstamps_pending() calls it in a loop at the end of the
   miscellaneous IRQ to check if new timestamps came in while the interrupt
   handler was executing.
 * ice_ptp_maybe_trigger_tx_interrupt() calls it in the auxiliary work task
   to trigger a software interrupt in the event that the hardware logic
   gets stuck.

For E82X devices, multiple PHYs share the same block, and the parameter
passed to the ready bitmap is a block number associated with the given
port. For E825-C devices, the PHYs have their own independent blocks and do
not share, so the parameter passed needs to be the port number. For E810
devices, the ice_get_phy_tx_tstamp_ready() always returns all 1s regardless
of what port, since this hardware does not have a ready bitmap. Finally,
for E830 devices, each PF has its own ready bitmap accessible via register,
and the block parameter is unused.

The first call correctly uses the Tx timestamp tracker block parameter to
check the appropriate timestamp block. This works because the tracker is
setup correctly for each timestamp device type.

The second two callers behave incorrectly for all device types other than
the older E822 devices. They both iterate in a loop using
ICE_GET_QUAD_NUM() which is a macro only used by E822 devices. This logic
is incorrect for devices other than the E822 devices.

For E810 the calls would always return true, causing E810 devices to always
attempt to trigger a software interrupt even when they have no reason to.
For E830, this results in duplicate work as the ready bitmap is checked
once per number of quads. Finally, for E825-C, this results in the pending
checks failing to detect timestamps on ports other than the first two.

Fix this by introducing a new hardware API function to ice_ptp_hw.c,
ice_check_phy_tx_tstamp_ready(). This function will check if any timestamps
are available and returns a positive value if any timestamps are pending.
For E810, the function always returns false, so that the re-trigger checks
never happen. For E830, check the ready bitmap just once. For E82x
hardware, check each quad. Finally, for E825-C, check every port.

The interface function returns an integer to enable reporting of error code
if the driver is unable read the ready bitmap. This enables callers to
handle this case properly. The previous implementation assumed that
timestamps are available if they failed to read the bitmap. This is
problematic as it could lead to continuous software IRQ triggering if the
PHY timestamp registers somehow become inaccessible.

This change is especially important for E825-C devices, as the missing
checks could leave a window open where a new timestamp could arrive while
the existing timestamps aren't completed. As a result, the hardware
threshold logic would not trigger a new interrupt. Without the check, the
timestamp is left unhandled, and new timestamps will not cause an interrupt
again until the timestamp is handled. Since both the interrupt check and
the backup check in the auxiliary task do not function properly, the device
may have Tx timestamps permanently stuck failing on a given port.

The faulty checks originate from commit d938a8cca88a ("ice: Auxbus devices
& driver for E822 TS") and commit 712e876371f8 ("ice: periodically kick Tx
timestamp interrupt"), however at the time of the original coding, both
functions only operated on E822 hardware. This is no longer the case, and
hasn't been since the introduction of the ETH56G PHY model in commit
7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products")

Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   1 +
 drivers/net/ethernet/intel/ice/ice_ptp.c    |  40 ++++------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 117 ++++++++++++++++++++++++++++
 3 files changed, 132 insertions(+), 26 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 9d7acc7eb2ce..1b58b054f4a5 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -300,6 +300,7 @@ void ice_ptp_reset_ts_memory(struct ice_hw *hw);
 int ice_ptp_init_phc(struct ice_hw *hw);
 void ice_ptp_init_hw(struct ice_hw *hw);
 int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready);
+int ice_check_phy_tx_tstamp_ready(struct ice_hw *hw);
 int ice_ptp_one_port_cmd(struct ice_hw *hw, u8 configured_port,
 			 enum ice_ptp_tmr_cmd configured_cmd);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index ada42bcc4d0b..34906f972d17 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2718,7 +2718,7 @@ static bool ice_any_port_has_timestamps(struct ice_pf *pf)
 bool ice_ptp_tx_tstamps_pending(struct ice_pf *pf)
 {
 	struct ice_hw *hw = &pf->hw;
-	unsigned int i;
+	int ret;
 
 	/* Check software indicator */
 	switch (pf->ptp.tx_interrupt_mode) {
@@ -2739,16 +2739,15 @@ bool ice_ptp_tx_tstamps_pending(struct ice_pf *pf)
 	}
 
 	/* Check hardware indicator */
-	for (i = 0; i < ICE_GET_QUAD_NUM(hw->ptp.num_lports); i++) {
-		u64 tstamp_ready = 0;
-		int err;
-
-		err = ice_get_phy_tx_tstamp_ready(&pf->hw, i, &tstamp_ready);
-		if (err || tstamp_ready)
-			return true;
+	ret = ice_check_phy_tx_tstamp_ready(hw);
+	if (ret < 0) {
+		dev_dbg(ice_pf_to_dev(pf), "Unable to read PHY Tx timestamp ready bitmap, err %d\n",
+			ret);
+		/* Stop triggering IRQs if we're unable to read PHY */
+		return false;
 	}
 
-	return false;
+	return ret;
 }
 
 /**
@@ -2832,8 +2831,7 @@ static void ice_ptp_maybe_trigger_tx_interrupt(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
-	bool trigger_oicr = false;
-	unsigned int i;
+	int ret;
 
 	if (!pf->ptp.port.tx.has_ready_bitmap)
 		return;
@@ -2841,21 +2839,11 @@ static void ice_ptp_maybe_trigger_tx_interrupt(struct ice_pf *pf)
 	if (!ice_pf_src_tmr_owned(pf))
 		return;
 
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
+	ret = ice_check_phy_tx_tstamp_ready(hw);
+	if (ret < 0) {
+		dev_dbg(dev, "PTP periodic task unable to read PHY timestamp ready bitmap, err %d\n",
+			ret);
+	} else if (ret) {
 		dev_dbg(dev, "PTP periodic task detected waiting timestamps. Triggering Tx timestamp interrupt now.\n");
 
 		wr32(hw, PFINT_OICR, PFINT_OICR_TSYN_TX_M);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 441b5f10e4bb..64ad5ed5c688 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -2168,6 +2168,35 @@ int ice_start_phy_timer_eth56g(struct ice_hw *hw, u8 port)
 	return 0;
 }
 
+/**
+ * ice_check_phy_tx_tstamp_ready_eth56g - Check Tx memory status for all ports
+ * @hw: pointer to the HW struct
+ *
+ * Check the PHY_REG_TX_MEMORY_STATUS for all ports. A set bit indicates
+ * a waiting timestamp.
+ *
+ * Return: 1 if any port has at least one timestamp ready bit set,
+ * 0 otherwise, and a negative error code if unable to read the bitmap.
+ */
+static int ice_check_phy_tx_tstamp_ready_eth56g(struct ice_hw *hw)
+{
+	int port;
+
+	for (port = 0; port < hw->ptp.num_lports; port++) {
+		u64 tstamp_ready;
+		int err;
+
+		err = ice_get_phy_tx_tstamp_ready(hw, port, &tstamp_ready);
+		if (err)
+			return err;
+
+		if (tstamp_ready)
+			return 1;
+	}
+
+	return 0;
+}
+
 /**
  * ice_ptp_read_tx_hwtstamp_status_eth56g - Get TX timestamp status
  * @hw: pointer to the HW struct
@@ -4318,6 +4347,35 @@ ice_get_phy_tx_tstamp_ready_e82x(struct ice_hw *hw, u8 quad, u64 *tstamp_ready)
 	return 0;
 }
 
+/**
+ * ice_check_phy_tx_tstamp_ready_e82x - Check Tx memory status for all quads
+ * @hw: pointer to the HW struct
+ *
+ * Check the Q_REG_TX_MEMORY_STATUS for all quads. A set bit indicates
+ * a waiting timestamp.
+ *
+ * Return: 1 if any quad has at least one timestamp ready bit set,
+ * 0 otherwise, and a negative error value if unable to read the bitmap.
+ */
+static int ice_check_phy_tx_tstamp_ready_e82x(struct ice_hw *hw)
+{
+	int quad;
+
+	for (quad = 0; quad < ICE_GET_QUAD_NUM(hw->ptp.num_lports); quad++) {
+		u64 tstamp_ready;
+		int err;
+
+		err = ice_get_phy_tx_tstamp_ready(hw, quad, &tstamp_ready);
+		if (err)
+			return err;
+
+		if (tstamp_ready)
+			return 1;
+	}
+
+	return 0;
+}
+
 /**
  * ice_phy_cfg_intr_e82x - Configure TX timestamp interrupt
  * @hw: pointer to the HW struct
@@ -4870,6 +4928,23 @@ ice_get_phy_tx_tstamp_ready_e810(struct ice_hw *hw, u8 port, u64 *tstamp_ready)
 	return 0;
 }
 
+/**
+ * ice_check_phy_tx_tstamp_ready_e810 - Check Tx memory status register
+ * @hw: pointer to the HW struct
+ *
+ * The E810 devices do not have a Tx memory status register. Note this is
+ * intentionally different behavior from ice_get_phy_tx_tstamp_ready_e810
+ * which always says that all bits are ready. This function is called in cases
+ * where code will trigger interrupts if timestamps are waiting, and should
+ * not be called for E810 hardware.
+ *
+ * Return: 0.
+ */
+static int ice_check_phy_tx_tstamp_ready_e810(struct ice_hw *hw)
+{
+	return 0;
+}
+
 /* E810 SMA functions
  *
  * The following functions operate specifically on E810 hardware and are used
@@ -5124,6 +5199,21 @@ static void ice_get_phy_tx_tstamp_ready_e830(const struct ice_hw *hw, u8 port,
 	*tstamp_ready |= rd32(hw, E830_PRTMAC_TS_TX_MEM_VALID_L);
 }
 
+/**
+ * ice_check_phy_tx_tstamp_ready_e830 - Check Tx memory status register
+ * @hw: pointer to the HW struct
+ *
+ * Return: 1 if the device has waiting timestamps, 0 otherwise.
+ */
+static int ice_check_phy_tx_tstamp_ready_e830(struct ice_hw *hw)
+{
+	u64 tstamp_ready;
+
+	ice_get_phy_tx_tstamp_ready_e830(hw, 0, &tstamp_ready);
+
+	return !!tstamp_ready;
+}
+
 /**
  * ice_ptp_init_phy_e830 - initialize PHY parameters
  * @ptp: pointer to the PTP HW struct
@@ -5716,6 +5806,33 @@ int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready)
 	}
 }
 
+/**
+ * ice_check_phy_tx_tstamp_ready - Check PHY Tx timestamp memory status
+ * @hw: pointer to the HW struct
+ *
+ * Check the PHY for Tx timestamp memory status on all ports. If you need to
+ * see individual timestamp status for each index, use
+ * ice_get_phy_tx_tstamp_ready() instead.
+ *
+ * Return: 1 if any port has timestamps available, 0 if there are no timestamps
+ * available, and a negative error code on failure.
+ */
+int ice_check_phy_tx_tstamp_ready(struct ice_hw *hw)
+{
+	switch (hw->mac_type) {
+	case ICE_MAC_E810:
+		return ice_check_phy_tx_tstamp_ready_e810(hw);
+	case ICE_MAC_E830:
+		return ice_check_phy_tx_tstamp_ready_e830(hw);
+	case ICE_MAC_GENERIC:
+		return ice_check_phy_tx_tstamp_ready_e82x(hw);
+	case ICE_MAC_GENERIC_3K_E825:
+		return ice_check_phy_tx_tstamp_ready_eth56g(hw);
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
 /**
  * ice_cgu_get_pin_desc_e823 - get pin description array
  * @hw: pointer to the hw struct

-- 
2.53.0.1066.g1eceb487f285

