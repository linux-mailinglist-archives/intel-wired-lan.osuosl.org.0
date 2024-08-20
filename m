Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 55176958450
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2024 12:24:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E1893405A1;
	Tue, 20 Aug 2024 10:24:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gzAU2btuFDMZ; Tue, 20 Aug 2024 10:24:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A56E5403F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724149488;
	bh=hbq+15QF7tT22i1THCZdvW2mgsvbOowWqrLp79cYKUA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Suub87PFctZ9IWxiRcph1unTcGcEQ8utA78GHpLEgK2NvO/3+EpD1CFl3wt9kOb5X
	 L6CJwAiV64sdjlF51y9OrTDGkDwmYnINyEjKt4blTaru7VjpMFZIIl3Txgn/21OM+T
	 qMR3F/D4cAWQnwMJw3pqMdpuZtInAHmt1BeGuIs2KJMHE5U4b78mhLSuZVNHjXwQam
	 VmzJOKEm9Iy/3q6O0o9+RAgA8yyQrDBUazgBFv4BxeJMcA8J5HMTL7SgObyeYjkpNm
	 NhWx/AQsZSYxXjMicWzbXEALY7n6Y/hcw9mz63CMg7KZWjIe41kLX3ZmhZVxchMAc3
	 EnJzrJXKuR8ig==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A56E5403F5;
	Tue, 20 Aug 2024 10:24:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AA0D81BF328
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 10:24:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9747E40189
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 10:24:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jk4dNm050EAw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2024 10:24:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E708740242
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E708740242
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E708740242
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 10:24:39 +0000 (UTC)
X-CSE-ConnectionGUID: mCKX6mqeT1+ldq6TeGPfmQ==
X-CSE-MsgGUID: eTx1inljRl+l/ZwB4C5/4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11169"; a="44962834"
X-IronPort-AV: E=Sophos;i="6.10,161,1719903600"; d="scan'208";a="44962834"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 03:24:40 -0700
X-CSE-ConnectionGUID: slyvpqlkR66ZUIEvEd1JhA==
X-CSE-MsgGUID: u6Jt+CfoRxKgEjV/XD6tlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,161,1719903600"; d="scan'208";a="98152852"
Received: from unknown (HELO kkolacin-desk1.igk.intel.com) ([10.217.160.108])
 by orviesa001.jf.intel.com with ESMTP; 20 Aug 2024 03:24:37 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Aug 2024 12:21:53 +0200
Message-ID: <20240820102402.576985-14-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240820102402.576985-8-karol.kolacinski@intel.com>
References: <20240820102402.576985-8-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724149480; x=1755685480;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+eVWypsTV9e4bjQWBZrCnsQfyOd4izCUkhvv5CKscGQ=;
 b=TKGv6W3y6Wt49+6ucGZTrWPBoBgKnQ2tQYdEW3b4SOpskpcV7kmw+kOh
 qRCrWcNThQWQ8kq2pCEDe91UcvalsHs2e7CPlfE+GVI5tzgsy9O2y8wKY
 zn8S5b38m3CGvE3+5EzmMlIy6i4aYR4v48Pz93d28JaDDgBGpRSkm3J4r
 bdBpGXeld2sCtbZvnF0P2c0uszLJQO9uWJgK232vZ8DzbYfDILM0Pr6RP
 yuyogxWvOXNmln353Vv88B6K4rGkCALbi7ttdY+CRrE8NtY424u8qgyou
 QnlddoZjaWu9pQBARNp4HiGVlN4j7EpFHxKeqfW3wkkjAwUKjXe13eGZN
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TKGv6W3y
Subject: [Intel-wired-lan] [PATCH v7 iwl-next 6/6] ice: combine cross
 timestamp functions for E82x and E830
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
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

The E830 and E82x devices use essentially the same logic for performing
a crosstimestamp. The only difference is that E830 hardware has
different offsets. Instead of having two implementations, combine them
into a single ice_capture_crosststamp() function.

Also combine the wrapper functions which call
get_device_system_crosststamp() into a single ice_ptp_getcrosststamp()
function.

To support both hardware types, the ice_capture_crosststamp function
must be able to determine the appropriate registers to access. To handle
this, pass a custom context structure instead of the PF pointer. This
structure, ice_crosststamp_ctx, contains a pointer to the PF, and
a pointer to the device configuration structure. This new structure also
will make it easier to implement historic snapshot support in a future
commit.

The device configuration structure is a static const data which defines
the offsets and flags for the various registers. This includes the lock
register, the cross timestamp control register, the upper and lower ART
system time capture registers, and the upper and lower device time
capture registers for each timer index.

This does add extra data to the .text of the module (and thus kernel),
but it also removes 2 near duplicate functions for enabling E830
support.

Use the configuration structure to access all of the registers in
ice_capture_crosststamp(). Ensure that we don't over-run the device time
array by checking that the timer index is 0 or 1. Previously this was
simply assumed, and it would cause the device to read an incorrect and
likely garbage register.

It does feel like there should be a kernel interface for managing
register offsets like this, but the closest thing I saw was
<linux/regmap.h> which is interesting but not quite what we're looking
for...

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
V4 -> V5: Removed unnecessary CPU features check for SoCs (E82X) and
          X86_FEATURE_TSC_KNOWN_FREQ check for E830

 drivers/net/ethernet/intel/Kconfig            |   2 +-
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   8 +
 drivers/net/ethernet/intel/ice/ice_main.c     |   7 +
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 246 ++++++++++++------
 4 files changed, 187 insertions(+), 76 deletions(-)

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
index 646089f3e26c..495b182ea13b 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -541,6 +541,14 @@
 #define E830_PRTMAC_CL01_QNT_THR_CL0_M		GENMASK(15, 0)
 #define E830_PRTTSYN_TXTIME_H(_i)		(0x001E5800 + ((_i) * 32))
 #define E830_PRTTSYN_TXTIME_L(_i)		(0x001E5000 + ((_i) * 32))
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
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 9108613dcac3..ef322f846f1b 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5042,6 +5042,12 @@ static int ice_init(struct ice_pf *pf)
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
@@ -5272,6 +5278,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	hw->subsystem_device_id = pdev->subsystem_device;
 	hw->bus.device = PCI_SLOT(pdev->devfn);
 	hw->bus.func = PCI_FUNC(pdev->devfn);
+
 	ice_set_ctrlq_len(hw);
 
 	pf->msg_enable = netif_msg_init(debug, ICE_DFLT_NETIF_M);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index b438647717cc..765ec175941d 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2144,93 +2144,157 @@ static int ice_ptp_adjtime(struct ptp_clock_info *info, s64 delta)
 	return 0;
 }
 
+/**
+ * struct ice_crosststamp_cfg - Device cross timestamp configuration
+ * @lock_reg: The hardware semaphore lock to use
+ * @lock_busy: Bit in the semaphore lock indicating the lock is busy
+ * @ctl_reg: The hardware register to request cross timestamp
+ * @ctl_active: Bit in the control register to request cross timestamp
+ * @art_time_l: Lower 32-bits of ART system time
+ * @art_time_h: Upper 32-bits of ART system time
+ * @dev_time_l: Lower 32-bits of device time (per timer index)
+ * @dev_time_h: Upper 32-bits of device time (per timer index)
+ */
+struct ice_crosststamp_cfg {
+	/* HW semaphore lock register */
+	u32 lock_reg;
+	u32 lock_busy;
+
+	/* Capture control register */
+	u32 ctl_reg;
+	u32 ctl_active;
+
+	/* Time storage */
+	u32 art_time_l;
+	u32 art_time_h;
+	u32 dev_time_l[2];
+	u32 dev_time_h[2];
+};
+
+static const struct ice_crosststamp_cfg ice_crosststamp_cfg_e82x = {
+	.lock_reg = PFHH_SEM,
+	.lock_busy = PFHH_SEM_BUSY_M,
+	.ctl_reg = GLHH_ART_CTL,
+	.ctl_active = GLHH_ART_CTL_ACTIVE_M,
+	.art_time_l = GLHH_ART_TIME_L,
+	.art_time_h = GLHH_ART_TIME_H,
+	.dev_time_l[0] = GLTSYN_HHTIME_L(0),
+	.dev_time_h[0] = GLTSYN_HHTIME_H(0),
+	.dev_time_l[1] = GLTSYN_HHTIME_L(1),
+	.dev_time_h[1] = GLTSYN_HHTIME_H(1),
+};
+
 #ifdef CONFIG_ICE_HWTS
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
+/**
+ * struct ice_crosststamp_ctx - Device cross timestamp context
+ * @snapshot: snapshot of system clocks for historic interpolation
+ * @pf: pointer to the PF private structure
+ * @cfg: pointer to hardware configuration for cross timestamp
+ */
+struct ice_crosststamp_ctx {
+	struct system_time_snapshot snapshot;
+	struct ice_pf *pf;
+	const struct ice_crosststamp_cfg *cfg;
+};
+
 /**
- * ice_ptp_get_syncdevicetime - Get the cross time stamp info
+ * ice_capture_crosststamp - Capture a device/system cross timestamp
  * @device: Current device time
  * @system: System counter value read synchronously with device time
- * @ctx: Context provided by timekeeping code
+ * @__ctx: Context passed from ice_ptp_getcrosststamp
  *
  * Read device and system (ART) clock simultaneously and return the corrected
  * clock values in ns.
+ *
+ * Return: zero on success, or a negative error code on failure.
  */
-static int
-ice_ptp_get_syncdevicetime(ktime_t *device,
-			   struct system_counterval_t *system,
-			   void *ctx)
+static int ice_capture_crosststamp(ktime_t *device,
+				   struct system_counterval_t *system,
+				   void *__ctx)
 {
-	struct ice_pf *pf = (struct ice_pf *)ctx;
-	struct ice_hw *hw = &pf->hw;
-	u32 hh_lock, hh_art_ctl;
-	int i;
+	struct ice_crosststamp_ctx *ctx = __ctx;
+	const struct ice_crosststamp_cfg *cfg;
+	u32 lock, ctl, ts_lo, ts_hi, tmr_idx;
+	struct ice_pf *pf;
+	struct ice_hw *hw;
+	int err;
+	u64 ts;
 
-#define MAX_HH_HW_LOCK_TRIES	5
-#define MAX_HH_CTL_LOCK_TRIES	100
+	cfg = ctx->cfg;
+	pf = ctx->pf;
+	hw = &pf->hw;
 
-	for (i = 0; i < MAX_HH_HW_LOCK_TRIES; i++) {
-		/* Get the HW lock */
-		hh_lock = rd32(hw, PFHH_SEM + (PFTSYN_SEM_BYTES * hw->pf_id));
-		if (hh_lock & PFHH_SEM_BUSY_M) {
-			usleep_range(10000, 15000);
-			continue;
-		}
-		break;
-	}
-	if (hh_lock & PFHH_SEM_BUSY_M) {
-		dev_err(ice_pf_to_dev(pf), "PTP failed to get hh lock\n");
+	tmr_idx = hw->func_caps.ts_func_info.tmr_index_assoc;
+	if (tmr_idx > 1)
+		return -EINVAL;
+
+	/* Poll until we obtain the cross-timestamp hardware semaphore */
+	err = rd32_poll_timeout(hw, cfg->lock_reg, lock,
+				!(lock & cfg->lock_busy),
+				10 * USEC_PER_MSEC, 50 * USEC_PER_MSEC);
+	if (err) {
+		dev_err(ice_pf_to_dev(pf), "PTP failed to get cross timestamp lock\n");
 		return -EBUSY;
 	}
 
+	/* Snapshot system time for historic interpolation */
+	ktime_get_snapshot(&ctx->snapshot);
+
 	/* Program cmd to master timer */
 	ice_ptp_src_cmd(hw, ICE_PTP_READ_TIME);
 
 	/* Start the ART and device clock sync sequence */
-	hh_art_ctl = rd32(hw, GLHH_ART_CTL);
-	hh_art_ctl = hh_art_ctl | GLHH_ART_CTL_ACTIVE_M;
-	wr32(hw, GLHH_ART_CTL, hh_art_ctl);
-
-	for (i = 0; i < MAX_HH_CTL_LOCK_TRIES; i++) {
-		/* Wait for sync to complete */
-		hh_art_ctl = rd32(hw, GLHH_ART_CTL);
-		if (hh_art_ctl & GLHH_ART_CTL_ACTIVE_M) {
-			udelay(1);
-			continue;
-		} else {
-			u32 hh_ts_lo, hh_ts_hi, tmr_idx;
-			u64 hh_ts;
-
-			tmr_idx = hw->func_caps.ts_func_info.tmr_index_assoc;
-			/* Read ART time */
-			hh_ts_lo = rd32(hw, GLHH_ART_TIME_L);
-			hh_ts_hi = rd32(hw, GLHH_ART_TIME_H);
-			hh_ts = ((u64)hh_ts_hi << 32) | hh_ts_lo;
-			system->cycles = hh_ts;
-			system->cs_id = CSID_X86_ART;
-			/* Read Device source clock time */
-			hh_ts_lo = rd32(hw, GLTSYN_HHTIME_L(tmr_idx));
-			hh_ts_hi = rd32(hw, GLTSYN_HHTIME_H(tmr_idx));
-			hh_ts = ((u64)hh_ts_hi << 32) | hh_ts_lo;
-			*device = ns_to_ktime(hh_ts);
-			break;
-		}
-	}
+	ctl = rd32(hw, cfg->ctl_reg);
+	ctl |= cfg->ctl_active;
+	wr32(hw, cfg->ctl_reg, ctl);
 
+	/* Poll until hardware completes the capture */
+	err = rd32_poll_timeout(hw, cfg->ctl_reg, ctl, !(ctl & cfg->ctl_active),
+				5, 20 * USEC_PER_MSEC);
+	if (err)
+		goto err_timeout;
+
+	/* Read ART system time */
+	ts_lo = rd32(hw, cfg->art_time_l);
+	ts_hi = rd32(hw, cfg->art_time_h);
+	ts = ((u64)ts_hi << 32) | ts_lo;
+	system->cycles = ts;
+	system->cs_id = CSID_X86_ART;
+
+	/* Read Device source clock time */
+	ts_lo = rd32(hw, cfg->dev_time_l[tmr_idx]);
+	ts_hi = rd32(hw, cfg->dev_time_h[tmr_idx]);
+	ts = ((u64)ts_hi << 32) | ts_lo;
+	*device = ns_to_ktime(ts);
+
+err_timeout:
 	/* Clear the master timer */
 	ice_ptp_src_cmd(hw, ICE_PTP_NOP);
 
 	/* Release HW lock */
-	hh_lock = rd32(hw, PFHH_SEM + (PFTSYN_SEM_BYTES * hw->pf_id));
-	hh_lock = hh_lock & ~PFHH_SEM_BUSY_M;
-	wr32(hw, PFHH_SEM + (PFTSYN_SEM_BYTES * hw->pf_id), hh_lock);
-
-	if (i == MAX_HH_CTL_LOCK_TRIES)
-		return -ETIMEDOUT;
+	lock = rd32(hw, cfg->lock_reg);
+	lock &= ~cfg->lock_busy;
+	wr32(hw, cfg->lock_reg, lock);
 
-	return 0;
+	return err;
 }
 
 /**
- * ice_ptp_getcrosststamp_e82x - Capture a device cross timestamp
+ * ice_ptp_getcrosststamp - Capture a device cross timestamp
  * @info: the driver's PTP info structure
  * @cts: The memory to fill the cross timestamp info
  *
@@ -2238,22 +2302,36 @@ ice_ptp_get_syncdevicetime(ktime_t *device,
  * clock. Fill the cross timestamp information and report it back to the
  * caller.
  *
- * This is only valid for E822 and E823 devices which have support for
- * generating the cross timestamp via PCIe PTM.
- *
  * In order to correctly correlate the ART timestamp back to the TSC time, the
  * CPU must have X86_FEATURE_TSC_KNOWN_FREQ.
+ *
+ * Return: zero on success, or a negative error code on failure.
  */
-static int
-ice_ptp_getcrosststamp_e82x(struct ptp_clock_info *info,
-			    struct system_device_crosststamp *cts)
+static int ice_ptp_getcrosststamp(struct ptp_clock_info *info,
+				  struct system_device_crosststamp *cts)
 {
 	struct ice_pf *pf = ptp_info_to_pf(info);
+	struct ice_crosststamp_ctx ctx = {
+		.pf = pf,
+	};
 
-	return get_device_system_crosststamp(ice_ptp_get_syncdevicetime,
-					     pf, NULL, cts);
-}
+	switch (pf->hw.mac_type) {
+	case ICE_MAC_GENERIC:
+	case ICE_MAC_GENERIC_3K_E825:
+		ctx.cfg = &ice_crosststamp_cfg_e82x;
+		break;
+#ifdef CONFIG_ICE_HWTS
+	case ICE_MAC_E830:
+		ctx.cfg = &ice_crosststamp_cfg_e830;
+		break;
 #endif /* CONFIG_ICE_HWTS */
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	return get_device_system_crosststamp(ice_capture_crosststamp, &ctx,
+					     &ctx.snapshot, cts);
+}
 
 /**
  * ice_ptp_get_ts_config - ioctl interface to read the timestamping config
@@ -2528,12 +2606,8 @@ static int ice_ptp_parse_sdp_entries(struct ice_pf *pf, __le16 *entries,
  */
 static void ice_ptp_set_funcs_e82x(struct ice_pf *pf)
 {
-#ifdef CONFIG_ICE_HWTS
-	if (boot_cpu_has(X86_FEATURE_ART) &&
-	    boot_cpu_has(X86_FEATURE_TSC_KNOWN_FREQ))
-		pf->ptp.info.getcrosststamp = ice_ptp_getcrosststamp_e82x;
+	pf->ptp.info.getcrosststamp = ice_ptp_getcrosststamp;
 
-#endif /* CONFIG_ICE_HWTS */
 	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825) {
 		pf->ptp.ice_pin_desc = ice_pin_desc_e825c;
 		pf->ptp.info.n_pins = ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e825c);
@@ -2600,6 +2674,26 @@ static void ice_ptp_set_funcs_e810(struct ice_pf *pf)
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
+	ice_ptp_set_funcs_e810(pf);
+}
+
 /**
  * ice_ptp_set_caps - Set PTP capabilities
  * @pf: Board private structure
@@ -2624,9 +2718,11 @@ static void ice_ptp_set_caps(struct ice_pf *pf)
 
 	switch (pf->hw.mac_type) {
 	case ICE_MAC_E810:
-	case ICE_MAC_E830:
 		ice_ptp_set_funcs_e810(pf);
 		return;
+	case ICE_MAC_E830:
+		ice_ptp_set_funcs_e830(pf);
+		return;
 	case ICE_MAC_GENERIC:
 	case ICE_MAC_GENERIC_3K_E825:
 		ice_ptp_set_funcs_e82x(pf);
-- 
2.46.0

