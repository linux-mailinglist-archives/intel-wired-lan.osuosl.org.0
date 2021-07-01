Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 415363B8B3A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jul 2021 02:27:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D310B60A42;
	Thu,  1 Jul 2021 00:27:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WkuCx83Ka0Ew; Thu,  1 Jul 2021 00:27:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B8CE9607BA;
	Thu,  1 Jul 2021 00:27:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 009AA1BF9B5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jul 2021 00:27:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B03AD83BF0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jul 2021 00:27:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 922dEXlmzXoS for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Jul 2021 00:27:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DC84483BED
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jul 2021 00:27:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10031"; a="208270047"
X-IronPort-AV: E=Sophos;i="5.83,312,1616482800"; d="scan'208";a="208270047"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 17:27:21 -0700
X-IronPort-AV: E=Sophos;i="5.83,312,1616482800"; d="scan'208";a="457448758"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.4])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 17:27:21 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 30 Jun 2021 17:27:13 -0700
Message-Id: <20210701002713.3486336-14-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.31.1.331.gb0c09ab8796f
In-Reply-To: <20210701002713.3486336-1-jacob.e.keller@intel.com>
References: <20210701002713.3486336-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next 13/13] ice: support crosstimestamping
 on E822 devices if supported
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

E822 devices on supported platforms can generate a cross timestamp
between the platform ART and the device time. This process allows for
very precise measurement of the difference between the PTP hardware
clock and the platform time.

This is only supported if we know the TSC frequency relative to ART, so
we do not enable this unless the boot CPU has a known TSC frequency (as
required by convert_art_ns_to_tsc).

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   8 ++
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 113 ++++++++++++++++++
 2 files changed, 121 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index 2863ba9bd6c3..ab5065b5e748 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -440,6 +440,10 @@
 #define GLV_UPRCL(_i)				(0x003B2000 + ((_i) * 8))
 #define GLV_UPTCL(_i)				(0x0030A000 + ((_i) * 8))
 #define PRTRPB_RDPC				0x000AC260
+#define GLHH_ART_CTL				0x000A41D4
+#define GLHH_ART_CTL_ACTIVE_M			BIT(0)
+#define GLHH_ART_TIME_H				0x000A41D8
+#define GLHH_ART_TIME_L				0x000A41DC
 #define GLTSYN_AUX_IN_0(_i)			(0x000889D8 + ((_i) * 4))
 #define GLTSYN_AUX_IN_0_INT_ENA_M		BIT(4)
 #define GLTSYN_AUX_OUT_0(_i)			(0x00088998 + ((_i) * 4))
@@ -452,6 +456,8 @@
 #define GLTSYN_ENA_TSYN_ENA_M			BIT(0)
 #define GLTSYN_EVNT_H_0(_i)			(0x00088970 + ((_i) * 4))
 #define GLTSYN_EVNT_L_0(_i)			(0x00088968 + ((_i) * 4))
+#define GLTSYN_HHTIME_H(_i)			(0x00088900 + ((_i) * 4))
+#define GLTSYN_HHTIME_L(_i)			(0x000888F8 + ((_i) * 4))
 #define GLTSYN_INCVAL_H(_i)			(0x00088920 + ((_i) * 4))
 #define GLTSYN_INCVAL_L(_i)			(0x00088918 + ((_i) * 4))
 #define GLTSYN_SHADJ_H(_i)			(0x00088910 + ((_i) * 4))
@@ -468,6 +474,8 @@
 #define GLTSYN_TGT_L_0(_i)			(0x00088928 + ((_i) * 4))
 #define GLTSYN_TIME_H(_i)			(0x000888D8 + ((_i) * 4))
 #define GLTSYN_TIME_L(_i)			(0x000888D0 + ((_i) * 4))
+#define PFHH_SEM				0x000A4200 /* Reset Source: PFR */
+#define PFHH_SEM_BUSY_M				BIT(0)
 #define PFTSYN_SEM				0x00088880
 #define PFTSYN_SEM_BUSY_M			BIT(0)
 #define VSIQF_FD_CNT(_VSI)			(0x00464000 + ((_VSI) * 4))
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index f80dd04aa935..4e0cc0e52839 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1296,6 +1296,99 @@ static int ice_ptp_adjtime(struct ptp_clock_info *info, s64 delta)
 	return 0;
 }
 
+/**
+ * ice_ptp_get_syncdevicetime - Get the cross time stamp info
+ * @device: Current device time
+ * @system: System counter value read synchronously with device time
+ * @ctx: Context provided by timekeeping code
+ *
+ * Read device and system (ART) clock simultaneously and return the corrected
+ * clock values in ns.
+ */
+static int
+ice_ptp_get_syncdevicetime(ktime_t *device,
+			   struct system_counterval_t *system,
+			   void *ctx)
+{
+	struct ice_pf *pf = (struct ice_pf *)ctx;
+	struct ice_hw *hw = &pf->hw;
+	u32 hh_lock, hh_art_ctl;
+	int i;
+
+	/* Get the HW lock */
+	hh_lock = rd32(hw, PFHH_SEM + (PFTSYN_SEM_BYTES * hw->pf_id));
+	if (hh_lock & PFHH_SEM_BUSY_M) {
+		dev_err(ice_pf_to_dev(pf), "PTP failed to get hh lock\n");
+		return -EFAULT;
+	}
+
+	/* Start the ART and device clock sync sequence */
+	hh_art_ctl = rd32(hw, GLHH_ART_CTL);
+	hh_art_ctl = hh_art_ctl | GLHH_ART_CTL_ACTIVE_M;
+	wr32(hw, GLHH_ART_CTL, hh_art_ctl);
+
+#define MAX_HH_LOCK_TRIES 100
+
+	for (i = 0; i < MAX_HH_LOCK_TRIES; i++) {
+		/* Wait for sync to complete */
+		hh_art_ctl = rd32(hw, GLHH_ART_CTL);
+		if (hh_art_ctl & GLHH_ART_CTL_ACTIVE_M) {
+			udelay(1);
+			continue;
+		} else {
+			u32 hh_ts_lo, hh_ts_hi, tmr_idx;
+			u64 hh_ts;
+
+			tmr_idx = hw->func_caps.ts_func_info.tmr_index_assoc;
+			/* Read ART time */
+			hh_ts_lo = rd32(hw, GLHH_ART_TIME_L);
+			hh_ts_hi = rd32(hw, GLHH_ART_TIME_H);
+			hh_ts = ((u64)hh_ts_hi << 32) | hh_ts_lo;
+			*system = convert_art_ns_to_tsc(hh_ts);
+			/* Read Device source clock time */
+			hh_ts_lo = rd32(hw, GLTSYN_HHTIME_L(tmr_idx));
+			hh_ts_hi = rd32(hw, GLTSYN_HHTIME_H(tmr_idx));
+			hh_ts = ((u64)hh_ts_hi << 32) | hh_ts_lo;
+			*device = ns_to_ktime(hh_ts);
+			break;
+		}
+	}
+	/* Release HW lock */
+	hh_lock = rd32(hw, PFHH_SEM + (PFTSYN_SEM_BYTES * hw->pf_id));
+	hh_lock = hh_lock & ~PFHH_SEM_BUSY_M;
+	wr32(hw, PFHH_SEM + (PFTSYN_SEM_BYTES * hw->pf_id), hh_lock);
+
+	if (i == MAX_HH_LOCK_TRIES)
+		return -ETIMEDOUT;
+
+	return 0;
+}
+
+/**
+ * ice_ptp_getcrosststamp_e822 - Capture a device cross timestamp
+ * @info: the driver's PTP info structure
+ * @cts: The memory to fill the cross timestamp info
+ *
+ * Capture a cross timestamp between the ART and the device PTP hardware
+ * clock. Fill the cross timestamp information and report it back to the
+ * caller.
+ *
+ * This is only valid for E822 devices which have support for generating the
+ * cross timestamp via PCIe PTM.
+ *
+ * In order to correctly correlate the ART timestamp back to the TSC time, the
+ * CPU must have X86_FEATURE_TSC_KNOWN_FREQ.
+ */
+static int
+ice_ptp_getcrosststamp_e822(struct ptp_clock_info *info,
+			    struct system_device_crosststamp *cts)
+{
+	struct ice_pf *pf = ptp_info_to_pf(info);
+
+	return get_device_system_crosststamp(ice_ptp_get_syncdevicetime,
+					     pf, NULL, cts);
+}
+
 /**
  * ice_ptp_get_ts_config - ioctl interface to read the timestamping config
  * @pf: Board private structure
@@ -1440,6 +1533,24 @@ static void ice_ptp_setup_pins_e810(struct ptp_clock_info *info)
 	info->n_ext_ts = E810_N_EXT_TS;
 }
 
+/**
+ * ice_ptp_set_funcs_e822 - Set specialized functions for E822 support
+ * @pf: Board private structure
+ * @info: PTP info to fill
+ *
+ * Assign functions to the PTP capabiltiies structure for E822 devices.
+ * Functions which operate across all device families should be set directly
+ * in ice_ptp_set_caps. Only add functions here which are distinct for E822
+ * devices.
+ */
+static void
+ice_ptp_set_funcs_e822(struct ice_pf *pf, struct ptp_clock_info *info)
+{
+	if (boot_cpu_has(X86_FEATURE_ART) &&
+	    boot_cpu_has(X86_FEATURE_TSC_KNOWN_FREQ))
+		info->getcrosststamp = ice_ptp_getcrosststamp_e822;
+}
+
 /**
  * ice_ptp_set_funcs_e810 - Set specialized functions for E810 support
  * @pf: Board private structure
@@ -1478,6 +1589,8 @@ static void ice_ptp_set_caps(struct ice_pf *pf)
 
 	if (ice_is_e810(&pf->hw))
 		ice_ptp_set_funcs_e810(pf, info);
+	else
+		ice_ptp_set_funcs_e822(pf, info);
 }
 
 /**
-- 
2.31.1.331.gb0c09ab8796f

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
