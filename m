Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E83B693BF35
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2024 11:40:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9BD5F60A50;
	Thu, 25 Jul 2024 09:40:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ztEfxhln2xOl; Thu, 25 Jul 2024 09:40:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E932360A59
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721900411;
	bh=wXHKUoM38SBdqRIA5RAaxMw8AEJS8FglfziaywBcRCQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bH57TC2MGwGZ84BCR1W6tBGO/eSNLFYfrmCixsbMK0PFD2FuAY5SoTrCfRDIgFPi3
	 Rrw5QZDnfRNoEJdl82yC8i0YXfrbHv5sppYWx7Ifugu1KzCrPnAAyxGQjjjPDWVUmn
	 MPiHlx10BS+IIZF8ngFw1lrhy0geI03AuVMtdV8gngQFsSzxVr9fm2Y1+GHDmE7Ahy
	 d695dVMJiKw2fHU/rVUnZXUjUHqnE7m006LzJqQuYQFmZyAqi5r/AcBKXlgt+sICtp
	 +Wo8R6Cdl1WbRj+sEYKjZeNbB9MraW6jFr7/KDGRSySgPqWWFklmfMmqTsMijJaqDy
	 ONj8H/rzlntbA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E932360A59;
	Thu, 25 Jul 2024 09:40:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D31571BF2C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 09:40:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BFE0D40414
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 09:40:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4VRWMrUx-gTP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2024 09:40:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org ECFC04060E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ECFC04060E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ECFC04060E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 09:40:03 +0000 (UTC)
X-CSE-ConnectionGUID: 8rt5vgNsT8mmIPgAVZZfGw==
X-CSE-MsgGUID: Y5hUBMgpQSiTkAY5v7SZKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="12707106"
X-IronPort-AV: E=Sophos;i="6.09,235,1716274800"; d="scan'208";a="12707106"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2024 02:39:58 -0700
X-CSE-ConnectionGUID: QedFuFgGR/qNpcflYLgHIg==
X-CSE-MsgGUID: k21aVQX2S5mFy1SodVmNLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,235,1716274800"; d="scan'208";a="57170874"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.132])
 by fmviesa005.fm.intel.com with ESMTP; 25 Jul 2024 02:39:56 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jul 2024 11:34:51 +0200
Message-ID: <20240725093932.54856-10-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240725093932.54856-6-karol.kolacinski@intel.com>
References: <20240725093932.54856-6-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721900404; x=1753436404;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DqBr04JhW5vRVFfpPoSK5VllIkBWS+tGRRcTDUwEQBc=;
 b=ee7CEpucjKf2V8mqYRr2QV04uuew+rm1ZA/AJRXfelI8P9bzjfxQWzKQ
 FtywqMQAOwjLaa7aT/SYDbscRGtHaGB8Qr779edco33+laDWyJaCW+IZE
 UtjhRhbKARtOIbnZZvECgbo7K7EDNDmTshnOX8C6iFQ0M6Azz6ecDTUft
 LV3phORsP3y7stoEzvfnrg1JyfbtGRO3OQb/JwjuZ5MlnMf2e80XHAfMf
 YIElBPlhQdxDmWShTChVP/eedRHuQdYAdNd2HW6B/ov1uZP036mvMAg+2
 zokFUHbQFvIaxCHFaQP+F5yGN25TLa+hvB+AYxAUdO3DuYWvSY+kfhsSS
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ee7CEpuc
Subject: [Intel-wired-lan] [PATCH v3 iwl-next 4/4] ice: combine cross
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
 drivers/net/ethernet/intel/Kconfig            |  10 +-
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   8 +
 drivers/net/ethernet/intel/ice/ice_main.c     |   7 +
 drivers/net/ethernet/intel/ice/ice_osdep.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 242 +++++++++++++-----
 5 files changed, 194 insertions(+), 76 deletions(-)

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index 0375c7448a57..7c4f3948385c 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -332,14 +332,14 @@ config ICE_SWITCHDEV
 	  If unsure, say N.
 
 config ICE_HWTS
-	bool "Support HW cross-timestamp on platforms with PTM support"
+	bool "Support HW cross-timestamp on supported platforms"
 	default y
-	depends on ICE && X86
+	depends on ICE && X86 && PCIE_PTM
 	help
 	  Say Y to enable hardware supported cross-timestamping on platforms
-	  with PCIe PTM support. The cross-timestamp is available through
-	  the PTP clock driver precise cross-timestamp ioctl
-	  (PTP_SYS_OFFSET_PRECISE).
+	  with PCIe PTM support for E830 devices and all E82X platforms. The
+	  cross-timestamp is available through the PTP clock driver precise
+	  cross-timestamp ioctl (PTP_SYS_OFFSET_PRECISE).
 
 config FM10K
 	tristate "Intel(R) FM10000 Ethernet Switch Host Interface Support"
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
index 753c942c64f1..e6853c8888ec 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5060,6 +5060,12 @@ static int ice_init(struct ice_pf *pf)
 	if (err)
 		return err;
 
+	if (ice_is_e830(&pf->hw)) {
+		err = pci_enable_ptm(pf->pdev, NULL);
+		if (err)
+			dev_dbg(ice_pf_to_dev(pf), "PCIe PTM not supported by PCIe bus/controller\n");
+	}
+
 	err = ice_alloc_vsis(pf);
 	if (err)
 		goto err_alloc_vsis;
@@ -5290,6 +5296,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	hw->subsystem_device_id = pdev->subsystem_device;
 	hw->bus.device = PCI_SLOT(pdev->devfn);
 	hw->bus.func = PCI_FUNC(pdev->devfn);
+
 	ice_set_ctrlq_len(hw);
 
 	pf->msg_enable = netif_msg_init(debug, ICE_DFLT_NETIF_M);
diff --git a/drivers/net/ethernet/intel/ice/ice_osdep.h b/drivers/net/ethernet/intel/ice/ice_osdep.h
index a2562f04267f..c03ab0207e0a 100644
--- a/drivers/net/ethernet/intel/ice/ice_osdep.h
+++ b/drivers/net/ethernet/intel/ice/ice_osdep.h
@@ -23,6 +23,9 @@
 #define wr64(a, reg, value)	writeq((value), ((a)->hw_addr + (reg)))
 #define rd64(a, reg)		readq((a)->hw_addr + (reg))
 
+#define rd32_poll_timeout(a, addr, val, cond, delay_us, timeout_us) \
+	read_poll_timeout(rd32, val, cond, delay_us, timeout_us, false, a, addr)
+
 #define ice_flush(a)		rd32((a), GLGEN_STAT)
 #define ICE_M(m, s)		((m ## U) << (s))
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 9f0eff040a95..ac3944fec2d3 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright (C) 2021, Intel Corporation. */
 
+#include <linux/iopoll.h>
 #include "ice.h"
 #include "ice_lib.h"
 #include "ice_trace.h"
@@ -2138,91 +2139,154 @@ static int ice_ptp_adjtime(struct ptp_clock_info *info, s64 delta)
 
 #ifdef CONFIG_ICE_HWTS
 /**
- * ice_ptp_get_syncdevicetime - Get the cross time stamp info
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
+/**
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
@@ -2230,23 +2294,35 @@ ice_ptp_get_syncdevicetime(ktime_t *device,
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
+	struct ice_crosststamp_ctx ctx = {};
+
+	ctx.pf = pf;
+
+	switch (pf->hw.ptp.phy_model) {
+	case ICE_PHY_E82X:
+		ctx.cfg = &ice_crosststamp_cfg_e82x;
+		break;
+	case ICE_PHY_E830:
+		ctx.cfg = &ice_crosststamp_cfg_e830;
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
 
-	return get_device_system_crosststamp(ice_ptp_get_syncdevicetime,
-					     pf, NULL, cts);
+	return get_device_system_crosststamp(ice_capture_crosststamp, &ctx,
+					     &ctx.snapshot, cts);
 }
-#endif /* CONFIG_ICE_HWTS */
 
+#endif /* CONFIG_ICE_HWTS */
 /**
  * ice_ptp_get_ts_config - ioctl interface to read the timestamping config
  * @pf: Board private structure
@@ -2523,7 +2599,7 @@ static void ice_ptp_set_funcs_e82x(struct ice_pf *pf)
 #ifdef CONFIG_ICE_HWTS
 	if (boot_cpu_has(X86_FEATURE_ART) &&
 	    boot_cpu_has(X86_FEATURE_TSC_KNOWN_FREQ))
-		pf->ptp.info.getcrosststamp = ice_ptp_getcrosststamp_e82x;
+		pf->ptp.info.getcrosststamp = ice_ptp_getcrosststamp;
 
 #endif /* CONFIG_ICE_HWTS */
 	if (ice_is_e825c(&pf->hw)) {
@@ -2592,6 +2668,28 @@ static void ice_ptp_set_funcs_e810(struct ice_pf *pf)
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
+	if (pcie_ptm_enabled(pf->pdev) &&
+	    boot_cpu_has(X86_FEATURE_ART) &&
+	    boot_cpu_has(X86_FEATURE_TSC_KNOWN_FREQ))
+		pf->ptp.info.getcrosststamp = ice_ptp_getcrosststamp;
+#endif /* CONFIG_ICE_HWTS */
+
+	/* Rest of the config is the same as base E810 */
+	ice_ptp_set_funcs_e810(pf);
+}
+
 /**
  * ice_ptp_set_caps - Set PTP capabilities
  * @pf: Board private structure
@@ -2614,8 +2712,10 @@ static void ice_ptp_set_caps(struct ice_pf *pf)
 	info->enable = ice_ptp_gpio_enable;
 	info->verify = ice_verify_pin;
 
-	if (ice_is_e810(&pf->hw) || ice_is_e830(&pf->hw))
+	if (ice_is_e810(&pf->hw))
 		ice_ptp_set_funcs_e810(pf);
+	if (ice_is_e830(&pf->hw))
+		ice_ptp_set_funcs_e830(pf);
 	else
 		ice_ptp_set_funcs_e82x(pf);
 }
-- 
2.45.2

