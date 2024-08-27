Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC8D960B57
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2024 15:08:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 531D64098B;
	Tue, 27 Aug 2024 13:08:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HmLhLDmkYE4d; Tue, 27 Aug 2024 13:08:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 34E0140967
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724764128;
	bh=oJNDttI6DNe9yT++ZZ8oXW/MIaYOtgyu34STQ8+6V7g=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=asbUQoAK2oetQOaWrPEdr3Lz46KcA+ZFqJWgeFRLjXxakP3l9CKCVk3Ry8xM0ZJ97
	 pyCG49IJ6+RvES9u9tS/nV8s3SyqZKSSP8kKJjqPkOd35hc/8LFLI+l6VdQ6rBUXMQ
	 MOjKna2m7qUrx8J3CzC3GC/NgoNRbl4fT/ZcsR6tUZzMY//sgGhfiL+NDQlClChLcF
	 Y8fCh56PxSNWTF0nPsmtBSrnhm8uV1TJpMtWi6jG3zZ2UoWNol01wVeyQreMW+pG3e
	 om7Mrxt9e7LTOYOv7oqodgOsPGq8dXrVsZ7o3G2CKVYTdeDPdJxOvQnwGSeBHAl8Vi
	 kL402pzcSe38g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 34E0140967;
	Tue, 27 Aug 2024 13:08:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9C71F1BF21A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 13:08:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8A60C80B6F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 13:08:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2tYIa9IgjlTf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2024 13:08:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8009C80A54
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8009C80A54
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8009C80A54
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 13:08:43 +0000 (UTC)
X-CSE-ConnectionGUID: qUW0y2mfS4qS0z3Oe9Vvrg==
X-CSE-MsgGUID: Ff6rEQ0TTC+fhqMHaVLJjw==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="40710307"
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="40710307"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 06:08:43 -0700
X-CSE-ConnectionGUID: Mind8OEHSS2qvFxAujzNlA==
X-CSE-MsgGUID: /wxt/GxiS1+FsYJK6hO7vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="93650106"
Received: from kkolacin-desk1.ger.corp.intel.com (HELO
 kkolacin-desk1.igk.intel.com) ([10.217.160.108])
 by fmviesa001.fm.intel.com with ESMTP; 27 Aug 2024 06:08:41 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 27 Aug 2024 14:50:47 +0200
Message-ID: <20240827130814.732181-14-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240827130814.732181-9-karol.kolacinski@intel.com>
References: <20240827130814.732181-9-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724764124; x=1756300124;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FgSalxQpqhFNa6LVzl5ZbC5+I+9ZG//Z7kXtb4cE2kw=;
 b=Bop/Zo+wev4alu2wZtNFw/mVslGB+d4G65nUbKY4s0UJz4YnttLW1B47
 PDsXpzie80WgYS4WTaj7Uc3K3CP0jp3iO9WEM3Asu3wd+btHycsz6Cmux
 uQBlCmjLEZFYHkxqQzR6HFwMI/BNoiSxuARQZxQAZ0u1U6dFePs9vakFk
 IkRCEq58pv5sIGmcNBrxIhmKTsQVdOzekeOWyCfiVHk1egx4/+nykNSzC
 IH9tjdP1mpL7NDoFOUkxcgtHCibs8SrgJBSNjhdOSRqPRwKUuMO6Tcjdq
 XwcTUBz7C3K+TvcrUX0j/rWqb+VfJxlL1S5HK7nkC12XV3JfHdOgIq0lN
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Bop/Zo+w
Subject: [Intel-wired-lan] [PATCH v8 iwl-next 5/7] ice: Add unified
 ice_capture_crosststamp
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

Devices supported by ice driver use essentially the same logic for
performing a crosstimestamp. The only difference is that E830 hardware
has different offsets. Instead of having multiple implementations,
combine them into a single ice_capture_crosststamp() function.

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

Use the configuration structure to access all of the registers in
ice_capture_crosststamp(). Ensure that we don't over-run the device time
array by checking that the timer index is 0 or 1. Previously this was
simply assumed, and it would cause the device to read an incorrect and
likely garbage register.

It does feel like there should be a kernel interface for managing
register offsets like this, but the closest thing I saw was
<linux/regmap.h> which is interesting but not quite what we're looking
for...

Use rd32_poll_timeout() to read lock_reg and ctl_reg.

Add snapshot system time for historic interpolation.

Remove X86_FEATURE_ART and X86_FEATURE_TSC_KNOWN_FREQ from all E82X
devices because those are SoCs, which will always have those features.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
V7 -> V8: Moved E830 cross timestamp handling to "ice: Implement PTP support for
          E830 devices" and explained the rest of previous changes in the commit
          description
V4 -> V5: Removed unnecessary CPU features check for SoCs (E82X) and
          X86_FEATURE_TSC_KNOWN_FREQ check for E830

 drivers/net/ethernet/intel/ice/ice_ptp.c | 204 ++++++++++++++---------
 1 file changed, 129 insertions(+), 75 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 059c3cf0a4b3..d2edf6197d33 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2158,93 +2158,142 @@ static int ice_ptp_adjtime(struct ptp_clock_info *info, s64 delta)
 	return 0;
 }
 
-#ifdef CONFIG_ICE_HWTS
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
@@ -2252,22 +2301,31 @@ ice_ptp_get_syncdevicetime(ktime_t *device,
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
+
+	switch (pf->hw.mac_type) {
+	case ICE_MAC_GENERIC:
+	case ICE_MAC_GENERIC_3K_E825:
+		ctx.cfg = &ice_crosststamp_cfg_e82x;
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
 
 /**
  * ice_ptp_get_ts_config - ioctl interface to read the timestamping config
@@ -2542,12 +2600,8 @@ static int ice_ptp_parse_sdp_entries(struct ice_pf *pf, __le16 *entries,
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
-- 
2.46.0

