Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F00597BC1F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Sep 2024 14:21:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 71FE9426FC;
	Wed, 18 Sep 2024 12:21:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UF7SSenOcqd9; Wed, 18 Sep 2024 12:21:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 467CE42450
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726662073;
	bh=RH3B8WHqIhjg/ueiHMeXMy8it4UA62DnxkoiHrR6ijE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2TIxjdzcOO9qfBoLv6ed/VU6P3ciXJDfrl1rpr4GYeFCxPD4Z60b+Ei0RvMOwjqOz
	 1fHCBVlDs6A62XDYnOqerB8LcanzjOTMWwhnBHDoLZX3yVdOY2eHJ6PuwO+osaF/NT
	 0lknUQ4UO05QVSCBSO2nJSRwkcT4OqJr8YvR0fUqhUdPDWdJeYELibh58NmxVM8mYr
	 qzgGDeFaEnxZqNWWBpZqcoXqamwRq/zun+dMe3fGI39vQGNw7HdVRaAfP+MIRO++w+
	 csDEVoCSijNJEHnIXwM35Mp9PIItSeGAuL0xzAPus4PNCyn0ROE72ZG6BrkD3Dloj+
	 cGDavOr0tvajQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 467CE42450;
	Wed, 18 Sep 2024 12:21:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C146F1BF3AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2024 12:21:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B066A84855
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2024 12:21:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 04S0sDOjTayL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Sep 2024 12:21:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3E09084854
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E09084854
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3E09084854
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2024 12:21:07 +0000 (UTC)
X-CSE-ConnectionGUID: 3uoRTWCjQyGbSPiKM02PwQ==
X-CSE-MsgGUID: bZ65nAEsTjqca51+87/Nvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="25689241"
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="25689241"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 05:21:07 -0700
X-CSE-ConnectionGUID: Y2n8TtrEQ2yDDjB0N6sxsg==
X-CSE-MsgGUID: 0YZ89D4IREqBMH1yDodJ4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="69636486"
Received: from kkolacin-desk1.igk.intel.com ([10.217.160.108])
 by fmviesa008.fm.intel.com with ESMTP; 18 Sep 2024 05:21:04 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 18 Sep 2024 14:12:35 +0200
Message-ID: <20240918122048.1554692-16-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240918122048.1554692-9-karol.kolacinski@intel.com>
References: <20240918122048.1554692-9-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726662068; x=1758198068;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JGDUmOl07JZznqo8MgtCFjz03ZzPyN49i9SVfCoLerw=;
 b=HdFXnX/wxQIJu8d22sMEJpNy8PtabVo1UapZWBf7Gh5t8S7KmLEYt76m
 +kCVCHLlVqXvq7qZmWO11YfWwNkZHLBm/J9cR/5v0lEzxn0v8xzY6hI/m
 U3/UMn0TGfAyweQIzau4Rsvtk1F5xWS5Bz7CqME9oThWqOSA6k4X+7BcG
 /pwXjMkks5CNy1jctxZ0cHpZFQZrC5UFA9HN1p1ECagwkTFSSLYkti+VV
 1xPb0QEQiwwmrRvuChr69eeQofespcTJ2TIT7MkdXpaa7bk7q0rzCS1sN
 dgYXVg6BLvKEsPeXNCn3Tim75qJ9jcBD6q1422CSKKlMc6CDu7TtKfUlb
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HdFXnX/w
Subject: [Intel-wired-lan] [PATCH v11 iwl-next 7/7] ice: Implement PTP
 support for E830 devices
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
Cc: Paul Greenwalt <paul.greenwalt@intel.com>,
 Michal Michalik <michal.michalik@intel.com>, netdev@vger.kernel.org,
 Frederic Weisbecker <frederic@kernel.org>,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Jacob Keller <jacob.e.keller@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Anna-Maria Behnsen <anna-maria@linutronix.de>,
 Milena Olech <milena.olech@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Michalik <michal.michalik@intel.com>

Add specific functions and definitions for E830 devices to enable
PTP support.

E830 devices support direct write to GLTSYN_ registers without shadow
registers and 64 bit read of PHC time.

Enable PTM for E830 device, which is required for cross timestamp and
and dependency on PCIE_PTM for ICE_HWTS.

Check X86_FEATURE_ART for E830 as it may not be present in the CPU.

Cc: Anna-Maria Behnsen <anna-maria@linutronix.de>
Cc: Frederic Weisbecker <frederic@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Co-developed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Milena Olech <milena.olech@intel.com>
Co-developed-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Michal Michalik <michal.michalik@intel.com>
Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
V10 -> V11: Fixed adjustments not working on E830
V9 -> V10: Removed ICE_FLAG_PTP_SUPPORTED check for E830, which was disabling
           PTP only for E830
V7 -> V8: Moved E830 parts of other patches to this patch
V6 -> V7: Fixed timestamp acquisition
V4 -> V5: Edited return values
V3 -> V4: Fixed kdoc for other ice_is_e***() and other _e830() functions in
          ice_ptp_hw.c
V2 -> V3: Fixed kdoc for ice_is_e***() and ice_ptp_init_phy_e830()
V1 -> V2: Fixed compilation issue with GENMASK bits higher than 32

 drivers/net/ethernet/intel/Kconfig            |   2 +-
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |  12 ++
 drivers/net/ethernet/intel/ice/ice_main.c     |   9 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  71 +++++++-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 167 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   7 +
 6 files changed, 261 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index 0375c7448a57..90415fe785ac 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -334,7 +334,7 @@ config ICE_SWITCHDEV
 config ICE_HWTS
 	bool "Support HW cross-timestamp on platforms with PTM support"
 	default y
-	depends on ICE && X86
+	depends on ICE && X86 && PCIE_PTM
 	help
 	  Say Y to enable hardware supported cross-timestamping on platforms
 	  with PCIe PTM support. The cross-timestamp is available through
diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index 8d31bfe28cc8..b692be1cf7bf 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -533,10 +533,22 @@
 #define PFPM_WUS_MAG_M				BIT(1)
 #define PFPM_WUS_MNG_M				BIT(3)
 #define PFPM_WUS_FW_RST_WK_M			BIT(31)
+#define E830_PRTMAC_TS_TX_MEM_VALID_H		0x001E2020
+#define E830_PRTMAC_TS_TX_MEM_VALID_L		0x001E2000
 #define E830_PRTMAC_CL01_PS_QNT			0x001E32A0
 #define E830_PRTMAC_CL01_PS_QNT_CL0_M		GENMASK(15, 0)
 #define E830_PRTMAC_CL01_QNT_THR		0x001E3320
 #define E830_PRTMAC_CL01_QNT_THR_CL0_M		GENMASK(15, 0)
+#define E830_PRTTSYN_TXTIME_H(_i)		(0x001E5800 + ((_i) * 32))
+#define E830_PRTTSYN_TXTIME_L(_i)		(0x001E5000 + ((_i) * 32))
+#define E830_GLPTM_ART_CTL			0x00088B50
+#define E830_GLPTM_ART_CTL_ACTIVE_M		BIT(0)
+#define E830_GLPTM_ART_TIME_H			0x00088B54
+#define E830_GLPTM_ART_TIME_L			0x00088B58
+#define E830_GLTSYN_PTMTIME_H(_i)		(0x00088B48 + ((_i) * 4))
+#define E830_GLTSYN_PTMTIME_L(_i)		(0x00088B40 + ((_i) * 4))
+#define E830_PFPTM_SEM				0x00088B00
+#define E830_PFPTM_SEM_BUSY_M			BIT(0)
 #define VFINT_DYN_CTLN(_i)			(0x00003800 + ((_i) * 4))
 #define VFINT_DYN_CTLN_CLEARPBA_M		BIT(1)
 #define E830_MBX_PF_IN_FLIGHT_VF_MSGS_THRESH	0x00234000
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 3c3818d0b33f..9c4f389d867b 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4036,8 +4036,7 @@ static void ice_set_pf_caps(struct ice_pf *pf)
 	}
 
 	clear_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags);
-	if (func_caps->common_cap.ieee_1588 &&
-	    !(pf->hw.mac_type == ICE_MAC_E830))
+	if (func_caps->common_cap.ieee_1588)
 		set_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags);
 
 	pf->max_pf_txqs = func_caps->common_cap.num_txq;
@@ -5104,6 +5103,12 @@ static int ice_init(struct ice_pf *pf)
 	if (err)
 		return err;
 
+	if (pf->hw.mac_type == ICE_MAC_E830) {
+		err = pci_enable_ptm(pf->pdev, NULL);
+		if (err)
+			dev_dbg(ice_pf_to_dev(pf), "PCIe PTM not supported by PCIe bus/controller\n");
+	}
+
 	err = ice_alloc_vsis(pf);
 	if (err)
 		goto err_alloc_vsis;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 7993646e78b5..056c5f6f29cd 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -310,6 +310,15 @@ ice_ptp_read_src_clk_reg(struct ice_pf *pf, struct ptp_system_timestamp *sts)
 	/* Read the system timestamp pre PHC read */
 	ptp_read_system_prets(sts);
 
+	if (hw->mac_type == ICE_MAC_E830) {
+		u64 clk_time = rd64(hw, E830_GLTSYN_TIME_L(tmr_idx));
+
+		/* Read the system timestamp post PHC read */
+		ptp_read_system_postts(sts);
+
+		return clk_time;
+	}
+
 	lo = rd32(hw, GLTSYN_TIME_L(tmr_idx));
 
 	/* Read the system timestamp post PHC read */
@@ -1279,6 +1288,7 @@ ice_ptp_port_phy_stop(struct ice_ptp_port *ptp_port)
 
 	switch (hw->mac_type) {
 	case ICE_MAC_E810:
+	case ICE_MAC_E830:
 		err = 0;
 		break;
 	case ICE_MAC_GENERIC:
@@ -1325,6 +1335,7 @@ ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
 
 	switch (hw->mac_type) {
 	case ICE_MAC_E810:
+	case ICE_MAC_E830:
 		err = 0;
 		break;
 	case ICE_MAC_GENERIC:
@@ -1400,7 +1411,8 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
 
 	switch (hw->mac_type) {
 	case ICE_MAC_E810:
-		/* Do not reconfigure E810 PHY */
+	case ICE_MAC_E830:
+		/* Do not reconfigure E810 or E830 PHY */
 		return;
 	case ICE_MAC_GENERIC:
 	case ICE_MAC_GENERIC_3K_E825:
@@ -1433,6 +1445,7 @@ static int ice_ptp_cfg_phy_interrupt(struct ice_pf *pf, bool ena, u32 threshold)
 
 	switch (hw->mac_type) {
 	case ICE_MAC_E810:
+	case ICE_MAC_E830:
 		return 0;
 	case ICE_MAC_GENERIC: {
 		int quad;
@@ -2172,6 +2185,21 @@ static const struct ice_crosststamp_cfg ice_crosststamp_cfg_e82x = {
 	.dev_time_h[1] = GLTSYN_HHTIME_H(1),
 };
 
+#ifdef CONFIG_ICE_HWTS
+static const struct ice_crosststamp_cfg ice_crosststamp_cfg_e830 = {
+	.lock_reg = E830_PFPTM_SEM,
+	.lock_busy = E830_PFPTM_SEM_BUSY_M,
+	.ctl_reg = E830_GLPTM_ART_CTL,
+	.ctl_active = E830_GLPTM_ART_CTL_ACTIVE_M,
+	.art_time_l = E830_GLPTM_ART_TIME_L,
+	.art_time_h = E830_GLPTM_ART_TIME_H,
+	.dev_time_l[0] = E830_GLTSYN_PTMTIME_L(0),
+	.dev_time_h[0] = E830_GLTSYN_PTMTIME_H(0),
+	.dev_time_l[1] = E830_GLTSYN_PTMTIME_L(1),
+	.dev_time_h[1] = E830_GLTSYN_PTMTIME_H(1),
+};
+
+#endif /* CONFIG_ICE_HWTS */
 /**
  * struct ice_crosststamp_ctx - Device cross timestamp context
  * @snapshot: snapshot of system clocks for historic interpolation
@@ -2293,6 +2321,11 @@ static int ice_ptp_getcrosststamp(struct ptp_clock_info *info,
 	case ICE_MAC_GENERIC_3K_E825:
 		ctx.cfg = &ice_crosststamp_cfg_e82x;
 		break;
+#ifdef CONFIG_ICE_HWTS
+	case ICE_MAC_E830:
+		ctx.cfg = &ice_crosststamp_cfg_e830;
+		break;
+#endif /* CONFIG_ICE_HWTS */
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -2628,6 +2661,28 @@ static void ice_ptp_set_funcs_e810(struct ice_pf *pf)
 	}
 }
 
+/**
+ * ice_ptp_set_funcs_e830 - Set specialized functions for E830 support
+ * @pf: Board private structure
+ *
+ * Assign functions to the PTP capabiltiies structure for E830 devices.
+ * Functions which operate across all device families should be set directly
+ * in ice_ptp_set_caps. Only add functions here which are distinct for E830
+ * devices.
+ */
+static void ice_ptp_set_funcs_e830(struct ice_pf *pf)
+{
+#ifdef CONFIG_ICE_HWTS
+	if (pcie_ptm_enabled(pf->pdev) && boot_cpu_has(X86_FEATURE_ART))
+		pf->ptp.info.getcrosststamp = ice_ptp_getcrosststamp;
+
+#endif /* CONFIG_ICE_HWTS */
+	/* Rest of the config is the same as base E810 */
+	pf->ptp.ice_pin_desc = ice_pin_desc_e810;
+	pf->ptp.info.n_pins = ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e810);
+	ice_ptp_setup_pin_cfg(pf);
+}
+
 /**
  * ice_ptp_set_caps - Set PTP capabilities
  * @pf: Board private structure
@@ -2654,6 +2709,9 @@ static void ice_ptp_set_caps(struct ice_pf *pf)
 	case ICE_MAC_E810:
 		ice_ptp_set_funcs_e810(pf);
 		return;
+	case ICE_MAC_E830:
+		ice_ptp_set_funcs_e830(pf);
+		return;
 	case ICE_MAC_GENERIC:
 	case ICE_MAC_GENERIC_3K_E825:
 		ice_ptp_set_funcs_e82x(pf);
@@ -2814,6 +2872,16 @@ irqreturn_t ice_ptp_ts_irq(struct ice_pf *pf)
 
 		set_bit(ICE_MISC_THREAD_TX_TSTAMP, pf->misc_thread);
 		return IRQ_WAKE_THREAD;
+	case ICE_MAC_E830:
+		/* E830 can read timestamps in the top half using rd32() */
+		if (ice_ptp_process_ts(pf) == ICE_TX_TSTAMP_WORK_PENDING) {
+			/* Process outstanding Tx timestamps. If there
+			 * is more work, re-arm the interrupt to trigger again.
+			 */
+			wr32(hw, PFINT_OICR, PFINT_OICR_TSYN_TX_M);
+			ice_flush(hw);
+		}
+		return IRQ_HANDLED;
 	default:
 		return IRQ_HANDLED;
 	}
@@ -3199,6 +3267,7 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
 
 	switch (hw->mac_type) {
 	case ICE_MAC_E810:
+	case ICE_MAC_E830:
 	case ICE_MAC_GENERIC_3K_E825:
 		return ice_ptp_init_tx(pf, &ptp_port->tx, ptp_port->port_num);
 	case ICE_MAC_GENERIC:
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 65a66225797e..c68d7468f69d 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -831,6 +831,7 @@ static u32 ice_ptp_tmr_cmd_to_port_reg(struct ice_hw *hw,
 	 */
 	switch (hw->mac_type) {
 	case ICE_MAC_E810:
+	case ICE_MAC_E830:
 		return ice_ptp_tmr_cmd_to_src_reg(hw, cmd) & TS_CMD_MASK_E810;
 	default:
 		break;
@@ -897,6 +898,17 @@ static void ice_ptp_exec_tmr_cmd(struct ice_hw *hw)
 	ice_flush(hw);
 }
 
+/**
+ * ice_ptp_cfg_sync_delay - Configure PHC to PHY synchronization delay
+ * @hw: pointer to HW struct
+ * @delay: delay between PHC and PHY SYNC command execution in nanoseconds
+ */
+static void ice_ptp_cfg_sync_delay(const struct ice_hw *hw, u32 delay)
+{
+	wr32(hw, GLTSYN_SYNC_DLAY, delay);
+	ice_flush(hw);
+}
+
 /* 56G PHY device functions
  *
  * The following functions operate on devices with the ETH 56G PHY.
@@ -5018,8 +5030,7 @@ static int ice_ptp_init_phc_e810(struct ice_hw *hw)
 	u8 tmr_idx;
 	int err;
 
-	/* Ensure synchronization delay is zero */
-	wr32(hw, GLTSYN_SYNC_DLAY, 0);
+	ice_ptp_cfg_sync_delay(hw, ICE_E810_E830_SYNC_DELAY);
 
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 	err = ice_write_phy_reg_e810(hw, ETH_GLTSYN_ENA(tmr_idx),
@@ -5313,6 +5324,128 @@ static void ice_ptp_init_phy_e810(struct ice_ptp_hw *ptp)
 	ptp->ports_per_phy = 4;
 }
 
+/* E830 functions
+ *
+ * The following functions operate on the E830 series devices.
+ *
+ */
+
+/**
+ * ice_ptp_init_phc_e830 - Perform E830 specific PHC initialization
+ * @hw: pointer to HW struct
+ *
+ * Perform E830-specific PTP hardware clock initialization steps.
+ */
+static void ice_ptp_init_phc_e830(const struct ice_hw *hw)
+{
+	ice_ptp_cfg_sync_delay(hw, ICE_E810_E830_SYNC_DELAY);
+}
+
+/**
+ * ice_ptp_write_direct_incval_e830 - Prep PHY port increment value change
+ * @hw: pointer to HW struct
+ * @incval: The new 40bit increment value to prepare
+ *
+ * Prepare the PHY port for a new increment value by programming the PHC
+ * GLTSYN_INCVAL_L and GLTSYN_INCVAL_H registers. The actual change is
+ * completed by FW automatically.
+ */
+static void ice_ptp_write_direct_incval_e830(const struct ice_hw *hw,
+					     u64 incval)
+{
+	u8 tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
+
+	wr32(hw, GLTSYN_INCVAL_L(tmr_idx), lower_32_bits(incval));
+	wr32(hw, GLTSYN_INCVAL_H(tmr_idx), upper_32_bits(incval));
+}
+
+/**
+ * ice_ptp_write_direct_phc_time_e830 - Prepare PHY port with initial time
+ * @hw: Board private structure
+ * @time: Time to initialize the PHY port clock to
+ *
+ * Program the PHY port ETH_GLTSYN_SHTIME registers in preparation setting the
+ * initial clock time. The time will not actually be programmed until the
+ * driver issues an ICE_PTP_INIT_TIME command.
+ *
+ * The time value is the upper 32 bits of the PHY timer, usually in units of
+ * nominal nanoseconds.
+ */
+static void ice_ptp_write_direct_phc_time_e830(const struct ice_hw *hw,
+					       u64 time)
+{
+	u8 tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
+
+	wr32(hw, GLTSYN_TIME_0(tmr_idx), 0);
+	wr32(hw, GLTSYN_TIME_L(tmr_idx), lower_32_bits(time));
+	wr32(hw, GLTSYN_TIME_H(tmr_idx), upper_32_bits(time));
+}
+
+/**
+ * ice_ptp_port_cmd_e830 - Prepare all external PHYs for a timer command
+ * @hw: pointer to HW struct
+ * @cmd: Command to be sent to the port
+ *
+ * Prepare the external PHYs connected to this device for a timer sync
+ * command.
+ *
+ * Return: 0 on success, negative error code when PHY write failed
+ */
+static int ice_ptp_port_cmd_e830(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
+{
+	u32 val = ice_ptp_tmr_cmd_to_port_reg(hw, cmd);
+
+	return ice_write_phy_reg_e810(hw, E830_ETH_GLTSYN_CMD, val);
+}
+
+/**
+ * ice_read_phy_tstamp_e830 - Read a PHY timestamp out of the external PHY
+ * @hw: pointer to the HW struct
+ * @idx: the timestamp index to read
+ * @tstamp: on return, the 40bit timestamp value
+ *
+ * Read a 40bit timestamp value out of the timestamp block of the external PHY
+ * on the E830 device.
+ */
+static void ice_read_phy_tstamp_e830(const struct ice_hw *hw, u8 idx,
+				     u64 *tstamp)
+{
+	u32 hi, lo;
+
+	hi = rd32(hw, E830_PRTTSYN_TXTIME_H(idx));
+	lo = rd32(hw, E830_PRTTSYN_TXTIME_L(idx));
+
+	/* For E830 devices, the timestamp is reported with the lower 32 bits
+	 * in the low register, and the upper 8 bits in the high register.
+	 */
+	*tstamp = FIELD_PREP(PHY_EXT_40B_HIGH_M, hi) |
+		  FIELD_PREP(PHY_EXT_40B_LOW_M, lo);
+}
+
+/**
+ * ice_get_phy_tx_tstamp_ready_e830 - Read Tx memory status register
+ * @hw: pointer to the HW struct
+ * @port: the PHY port to read
+ * @tstamp_ready: contents of the Tx memory status register
+ */
+static void ice_get_phy_tx_tstamp_ready_e830(const struct ice_hw *hw, u8 port,
+					     u64 *tstamp_ready)
+{
+	*tstamp_ready = rd32(hw, E830_PRTMAC_TS_TX_MEM_VALID_H);
+	*tstamp_ready <<= 32;
+	*tstamp_ready |= rd32(hw, E830_PRTMAC_TS_TX_MEM_VALID_L);
+}
+
+/**
+ * ice_ptp_init_phy_e830 - initialize PHY parameters
+ * @ptp: pointer to the PTP HW struct
+ */
+static void ice_ptp_init_phy_e830(struct ice_ptp_hw *ptp)
+{
+	ptp->num_lports = 8;
+	ptp->ports_per_phy = 4;
+}
+
 /* Device agnostic functions
  *
  * The following functions implement shared behavior common to all devices,
@@ -5383,6 +5516,9 @@ void ice_ptp_init_hw(struct ice_hw *hw)
 	case ICE_MAC_E810:
 		ice_ptp_init_phy_e810(ptp);
 		break;
+	case ICE_MAC_E830:
+		ice_ptp_init_phy_e830(ptp);
+		break;
 	case ICE_MAC_GENERIC:
 		ice_ptp_init_phy_e82x(ptp);
 		break;
@@ -5480,6 +5616,8 @@ static int ice_ptp_port_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
 	switch (hw->mac_type) {
 	case ICE_MAC_E810:
 		return ice_ptp_port_cmd_e810(hw, cmd);
+	case ICE_MAC_E830:
+		return ice_ptp_port_cmd_e830(hw, cmd);
 	default:
 		break;
 	}
@@ -5550,6 +5688,12 @@ int ice_ptp_init_time(struct ice_hw *hw, u64 time)
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 
 	/* Source timers */
+	/* For E830 we don't need to use shadow registers, its automatic */
+	if (hw->mac_type == ICE_MAC_E830) {
+		ice_ptp_write_direct_phc_time_e830(hw, time);
+		return 0;
+	}
+
 	wr32(hw, GLTSYN_SHTIME_L(tmr_idx), lower_32_bits(time));
 	wr32(hw, GLTSYN_SHTIME_H(tmr_idx), upper_32_bits(time));
 	wr32(hw, GLTSYN_SHTIME_0(tmr_idx), 0);
@@ -5598,6 +5742,12 @@ int ice_ptp_write_incval(struct ice_hw *hw, u64 incval)
 
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 
+	/* For E830 we don't need to use shadow registers, its automatic */
+	if (hw->mac_type == ICE_MAC_E830) {
+		ice_ptp_write_direct_incval_e830(hw, incval);
+		return 0;
+	}
+
 	/* Shadow Adjust */
 	wr32(hw, GLTSYN_SHADJ_L(tmr_idx), lower_32_bits(incval));
 	wr32(hw, GLTSYN_SHADJ_H(tmr_idx), upper_32_bits(incval));
@@ -5675,6 +5825,9 @@ int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj)
 	case ICE_MAC_E810:
 		err = ice_ptp_prep_phy_adj_e810(hw, adj);
 		break;
+	case ICE_MAC_E830:
+		/* E830 sync PHYs automatically after setting GLTSYN_SHADJ */
+		return 0;
 	case ICE_MAC_GENERIC:
 		err = ice_ptp_prep_phy_adj_e82x(hw, adj);
 		break;
@@ -5707,6 +5860,9 @@ int ice_read_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx, u64 *tstamp)
 	switch (hw->mac_type) {
 	case ICE_MAC_E810:
 		return ice_read_phy_tstamp_e810(hw, block, idx, tstamp);
+	case ICE_MAC_E830:
+		ice_read_phy_tstamp_e830(hw, idx, tstamp);
+		return 0;
 	case ICE_MAC_GENERIC:
 		return ice_read_phy_tstamp_e82x(hw, block, idx, tstamp);
 	case ICE_MAC_GENERIC_3K_E825:
@@ -5829,6 +5985,9 @@ int ice_ptp_init_phc(struct ice_hw *hw)
 	switch (hw->mac_type) {
 	case ICE_MAC_E810:
 		return ice_ptp_init_phc_e810(hw);
+	case ICE_MAC_E830:
+		ice_ptp_init_phc_e830(hw);
+		return 0;
 	case ICE_MAC_GENERIC:
 		return ice_ptp_init_phc_e82x(hw);
 	case ICE_MAC_GENERIC_3K_E825:
@@ -5855,13 +6014,15 @@ int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready)
 	case ICE_MAC_E810:
 		return ice_get_phy_tx_tstamp_ready_e810(hw, block,
 							tstamp_ready);
+	case ICE_MAC_E830:
+		ice_get_phy_tx_tstamp_ready_e830(hw, block, tstamp_ready);
+		return 0;
 	case ICE_MAC_GENERIC:
 		return ice_get_phy_tx_tstamp_ready_e82x(hw, block,
 							tstamp_ready);
 	case ICE_MAC_GENERIC_3K_E825:
 		return ice_get_phy_tx_tstamp_ready_eth56g(hw, block,
 							  tstamp_ready);
-		break;
 	default:
 		return -EOPNOTSUPP;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 6328c0bbddd6..0e74ab82f5ed 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -327,6 +327,7 @@ extern const struct ice_vernier_info_e82x e822_vernier[NUM_ICE_PTP_LNK_SPD];
 #define ICE_E810_PLL_FREQ		812500000
 #define ICE_PTP_NOMINAL_INCVAL_E810	0x13b13b13bULL
 #define ICE_E810_OUT_PROP_DELAY_NS	1
+#define ICE_E810_E830_SYNC_DELAY	0
 #define ICE_E825C_OUT_PROP_DELAY_NS	11
 
 /* Device agnostic functions */
@@ -671,6 +672,12 @@ static inline bool ice_is_dual(struct ice_hw *hw)
 /* E810 timer command register */
 #define E810_ETH_GLTSYN_CMD		0x03000344
 
+/* E830 timer command register */
+#define E830_ETH_GLTSYN_CMD		0x00088814
+
+/* E810 PHC time register */
+#define E830_GLTSYN_TIME_L(_tmr_idx)	(0x0008A000 + 0x1000 * (_tmr_idx))
+
 /* Source timer incval macros */
 #define INCVAL_HIGH_M			0xFF
 
-- 
2.46.0

