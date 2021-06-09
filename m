Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B9A3A1B40
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Jun 2021 18:52:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DEAB460A64;
	Wed,  9 Jun 2021 16:52:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cpjegXldvBR1; Wed,  9 Jun 2021 16:51:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33694608C4;
	Wed,  9 Jun 2021 16:51:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8E4CC1BF29D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 16:51:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7DE8D83CF5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 16:51:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rWkQ3NZ9UCN3 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Jun 2021 16:51:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 031C483CE9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 16:51:49 +0000 (UTC)
IronPort-SDR: XJdhW9jwDZDC0/63BsgXafCgcomApgYvWyAUj7QaKsOeQpEWrEBnQ+TSK3466nwV5EURfE3pC4
 Mte/ZmrbO6qA==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="290743484"
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="290743484"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 09:51:48 -0700
IronPort-SDR: QmSmoAlc0vuM+sWCj4WsiTdYcaRtin8QS3AAthHAcjhO7bhxmLBWOcgARV8dW3IFD1XzIsqC0j
 b/IGnoUh7kXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="638054845"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by fmsmga005.fm.intel.com with ESMTP; 09 Jun 2021 09:51:48 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Jun 2021 09:39:50 -0700
Message-Id: <20210609163953.52440-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210609163953.52440-1-anthony.l.nguyen@intel.com>
References: <20210609163953.52440-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 5/8] ice: register 1588 PTP clock
 device object for E810 devices
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

From: Jacob Keller <jacob.e.keller@intel.com>

Add a new ice_ptp.c file for holding the basic PTP clock interface
functions. If the device supports PTP, call the new ice_ptp_init and
ice_ptp_release functions where appropriate.

If the function owns the hardware resource associated with the PTP
hardware clock, register with the PTP_1588_CLOCK infrastructure to
allocate a new clock object that represents the device hardware clock.

Implement basic functionality for reading and setting the clock time,
performing clock adjustments, and adjusting the clock frequency.

Future changes will introduce functionality for handling related
features including Tx and Rx timestamps.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/Kconfig          |   1 +
 drivers/net/ethernet/intel/ice/Makefile     |   1 +
 drivers/net/ethernet/intel/ice/ice.h        |   4 +
 drivers/net/ethernet/intel/ice/ice_common.c |  11 +
 drivers/net/ethernet/intel/ice/ice_common.h |   1 +
 drivers/net/ethernet/intel/ice/ice_main.c   |  21 +
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 439 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp.h    |  36 ++
 8 files changed, 514 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_ptp.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_ptp.h

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index eae1b42e48db..82744a7501c7 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -299,6 +299,7 @@ config ICE
 	select DIMLIB
 	select NET_DEVLINK
 	select PLDMFW
+	imply PTP_1588_CLOCK
 	help
 	  This driver supports Intel(R) Ethernet Connection E800 Series of
 	  devices.  For more information on how to identify your adapter, go
diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index dfb64fb504a2..4f538cdf42c1 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -29,6 +29,7 @@ ice-y := ice_main.o	\
 	 ice_ethtool.o
 ice-$(CONFIG_PCI_IOV) += ice_virtchnl_allowlist.o
 ice-$(CONFIG_PCI_IOV) += ice_virtchnl_pf.o ice_sriov.o ice_virtchnl_fdir.o
+ice-$(CONFIG_PTP_1588_CLOCK) += ice_ptp.o ice_ptp_hw.o
 ice-$(CONFIG_DCB) += ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
 ice-$(CONFIG_RFS_ACCEL) += ice_arfs.o
 ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 2c415e91bc5f..f4729caccbe9 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -59,6 +59,7 @@
 #include "ice_idc_int.h"
 #include "ice_virtchnl_pf.h"
 #include "ice_sriov.h"
+#include "ice_ptp.h"
 #include "ice_fdir.h"
 #include "ice_xsk.h"
 #include "ice_arfs.h"
@@ -386,6 +387,8 @@ enum ice_pf_flags {
 	ICE_FLAG_DCB_CAPABLE,
 	ICE_FLAG_DCB_ENA,
 	ICE_FLAG_FD_ENA,
+	ICE_FLAG_PTP_SUPPORTED,		/* PTP is supported by NVM */
+	ICE_FLAG_PTP,			/* PTP is enabled by software */
 	ICE_FLAG_AUX_ENA,
 	ICE_FLAG_ADV_FEATURES,
 	ICE_FLAG_LINK_DOWN_ON_CLOSE_ENA,
@@ -448,6 +451,7 @@ struct ice_pf {
 	struct mutex sw_mutex;		/* lock for protecting VSI alloc flow */
 	struct mutex tc_mutex;		/* lock to protect TC changes */
 	u32 msg_enable;
+	struct ice_ptp ptp;
 	u16 num_rdma_msix;		/* Total MSIX vectors for RDMA driver */
 	u16 rdma_base_vector;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index c1f9d28bade8..d3edf0b725d0 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -58,6 +58,17 @@ static enum ice_status ice_set_mac_type(struct ice_hw *hw)
 	return 0;
 }
 
+/**
+ * ice_is_e810
+ * @hw: pointer to the hardware structure
+ *
+ * returns true if the device is E810 based, false if not.
+ */
+bool ice_is_e810(struct ice_hw *hw)
+{
+	return hw->mac_type == ICE_MAC_E810;
+}
+
 /**
  * ice_clear_pf_cfg - Clear PF configuration
  * @hw: pointer to the hardware structure
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 8cc0a639c208..fb16070f02e2 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -99,6 +99,7 @@ ice_update_phy_type(u64 *phy_type_low, u64 *phy_type_high,
 enum ice_status
 ice_aq_manage_mac_write(struct ice_hw *hw, const u8 *mac_addr, u8 flags,
 			struct ice_sq_cd *cd);
+bool ice_is_e810(struct ice_hw *hw);
 enum ice_status ice_clear_pf_cfg(struct ice_hw *hw);
 enum ice_status
 ice_aq_set_phy_cfg(struct ice_hw *hw, struct ice_port_info *pi,
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index e35be7b85ea3..a51bc4621f9d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -486,6 +486,9 @@ ice_prepare_for_reset(struct ice_pf *pf)
 	/* disable the VSIs and their queues that are not already DOWN */
 	ice_pf_dis_all_vsi(pf, false);
 
+	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
+		ice_ptp_release(pf);
+
 	if (hw->port_info)
 		ice_sched_clear_port(hw->port_info);
 
@@ -3392,6 +3395,9 @@ static void ice_deinit_pf(struct ice_pf *pf)
 		bitmap_free(pf->avail_rxqs);
 		pf->avail_rxqs = NULL;
 	}
+
+	if (pf->ptp.clock)
+		ptp_clock_unregister(pf->ptp.clock);
 }
 
 /**
@@ -3438,6 +3444,10 @@ static void ice_set_pf_caps(struct ice_pf *pf)
 				       func_caps->fd_fltr_best_effort);
 	}
 
+	clear_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags);
+	if (func_caps->common_cap.ieee_1588)
+		set_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags);
+
 	pf->max_pf_txqs = func_caps->common_cap.num_txq;
 	pf->max_pf_rxqs = func_caps->common_cap.num_rxq;
 }
@@ -4421,6 +4431,8 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	}
 
 	/* initialize DDP driven features */
+	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
+		ice_ptp_init(pf);
 
 	/* Note: Flow director init failure is non-fatal to load */
 	if (ice_init_fdir(pf))
@@ -4589,6 +4601,8 @@ static void ice_remove(struct pci_dev *pdev)
 
 	mutex_destroy(&(&pf->hw)->fdir_fltr_lock);
 	ice_deinit_lag(pf);
+	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
+		ice_ptp_release(pf);
 	if (!ice_is_safe_mode(pf))
 		ice_remove_arfs(pf);
 	ice_setup_mc_magic_wake(pf);
@@ -6381,6 +6395,13 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 	if (test_bit(ICE_FLAG_DCB_ENA, pf->flags))
 		ice_dcb_rebuild(pf);
 
+	/* If the PF previously had enabled PTP, PTP init needs to happen before
+	 * the VSI rebuild. If not, this causes the PTP link status events to
+	 * fail.
+	 */
+	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
+		ice_ptp_init(pf);
+
 	/* rebuild PF VSI */
 	err = ice_vsi_rebuild_by_type(pf, ICE_VSI_PF);
 	if (err) {
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
new file mode 100644
index 000000000000..80a551942bf9
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -0,0 +1,439 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2021, Intel Corporation. */
+
+#include "ice.h"
+#include "ice_lib.h"
+
+/**
+ * ice_ptp_read_src_clk_reg - Read the source clock register
+ * @pf: Board private structure
+ * @sts: Optional parameter for holding a pair of system timestamps from
+ *       the system clock. Will be ignored if NULL is given.
+ */
+static u64
+ice_ptp_read_src_clk_reg(struct ice_pf *pf, struct ptp_system_timestamp *sts)
+{
+	struct ice_hw *hw = &pf->hw;
+	u32 hi, lo, lo2;
+	u8 tmr_idx;
+
+	tmr_idx = ice_get_ptp_src_clock_index(hw);
+	/* Read the system timestamp pre PHC read */
+	if (sts)
+		ptp_read_system_prets(sts);
+
+	lo = rd32(hw, GLTSYN_TIME_L(tmr_idx));
+
+	/* Read the system timestamp post PHC read */
+	if (sts)
+		ptp_read_system_postts(sts);
+
+	hi = rd32(hw, GLTSYN_TIME_H(tmr_idx));
+	lo2 = rd32(hw, GLTSYN_TIME_L(tmr_idx));
+
+	if (lo2 < lo) {
+		/* if TIME_L rolled over read TIME_L again and update
+		 *system timestamps
+		 */
+		if (sts)
+			ptp_read_system_prets(sts);
+		lo = rd32(hw, GLTSYN_TIME_L(tmr_idx));
+		if (sts)
+			ptp_read_system_postts(sts);
+		hi = rd32(hw, GLTSYN_TIME_H(tmr_idx));
+	}
+
+	return ((u64)hi << 32) | lo;
+}
+
+/**
+ * ice_ptp_read_time - Read the time from the device
+ * @pf: Board private structure
+ * @ts: timespec structure to hold the current time value
+ * @sts: Optional parameter for holding a pair of system timestamps from
+ *       the system clock. Will be ignored if NULL is given.
+ *
+ * This function reads the source clock registers and stores them in a timespec.
+ * However, since the registers are 64 bits of nanoseconds, we must convert the
+ * result to a timespec before we can return.
+ */
+static void
+ice_ptp_read_time(struct ice_pf *pf, struct timespec64 *ts,
+		  struct ptp_system_timestamp *sts)
+{
+	u64 time_ns = ice_ptp_read_src_clk_reg(pf, sts);
+
+	*ts = ns_to_timespec64(time_ns);
+}
+
+/**
+ * ice_ptp_write_init - Set PHC time to provided value
+ * @pf: Board private structure
+ * @ts: timespec structure that holds the new time value
+ *
+ * Set the PHC time to the specified time provided in the timespec.
+ */
+static int ice_ptp_write_init(struct ice_pf *pf, struct timespec64 *ts)
+{
+	u64 ns = timespec64_to_ns(ts);
+	struct ice_hw *hw = &pf->hw;
+
+	return ice_ptp_init_time(hw, ns);
+}
+
+/**
+ * ice_ptp_write_adj - Adjust PHC clock time atomically
+ * @pf: Board private structure
+ * @adj: Adjustment in nanoseconds
+ *
+ * Perform an atomic adjustment of the PHC time by the specified number of
+ * nanoseconds.
+ */
+static int
+ice_ptp_write_adj(struct ice_pf *pf, s32 adj)
+{
+	struct ice_hw *hw = &pf->hw;
+
+	return ice_ptp_adj_clock(hw, adj);
+}
+
+/**
+ * ice_ptp_adjfine - Adjust clock increment rate
+ * @info: the driver's PTP info structure
+ * @scaled_ppm: Parts per million with 16-bit fractional field
+ *
+ * Adjust the frequency of the clock by the indicated scaled ppm from the
+ * base frequency.
+ */
+static int ice_ptp_adjfine(struct ptp_clock_info *info, long scaled_ppm)
+{
+	struct ice_pf *pf = ptp_info_to_pf(info);
+	u64 freq, divisor = 1000000ULL;
+	struct ice_hw *hw = &pf->hw;
+	s64 incval, diff;
+	int neg_adj = 0;
+	int err;
+
+	incval = ICE_PTP_NOMINAL_INCVAL_E810;
+
+	if (scaled_ppm < 0) {
+		neg_adj = 1;
+		scaled_ppm = -scaled_ppm;
+	}
+
+	while ((u64)scaled_ppm > div_u64(U64_MAX, incval)) {
+		/* handle overflow by scaling down the scaled_ppm and
+		 * the divisor, losing some precision
+		 */
+		scaled_ppm >>= 2;
+		divisor >>= 2;
+	}
+
+	freq = (incval * (u64)scaled_ppm) >> 16;
+	diff = div_u64(freq, divisor);
+
+	if (neg_adj)
+		incval -= diff;
+	else
+		incval += diff;
+
+	err = ice_ptp_write_incval_locked(hw, incval);
+	if (err) {
+		dev_err(ice_pf_to_dev(pf), "PTP failed to set incval, err %d\n",
+			err);
+		return -EIO;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_ptp_gettimex64 - Get the time of the clock
+ * @info: the driver's PTP info structure
+ * @ts: timespec64 structure to hold the current time value
+ * @sts: Optional parameter for holding a pair of system timestamps from
+ *       the system clock. Will be ignored if NULL is given.
+ *
+ * Read the device clock and return the correct value on ns, after converting it
+ * into a timespec struct.
+ */
+static int
+ice_ptp_gettimex64(struct ptp_clock_info *info, struct timespec64 *ts,
+		   struct ptp_system_timestamp *sts)
+{
+	struct ice_pf *pf = ptp_info_to_pf(info);
+	struct ice_hw *hw = &pf->hw;
+
+	if (!ice_ptp_lock(hw)) {
+		dev_err(ice_pf_to_dev(pf), "PTP failed to get time\n");
+		return -EBUSY;
+	}
+
+	ice_ptp_read_time(pf, ts, sts);
+	ice_ptp_unlock(hw);
+
+	return 0;
+}
+
+/**
+ * ice_ptp_settime64 - Set the time of the clock
+ * @info: the driver's PTP info structure
+ * @ts: timespec64 structure that holds the new time value
+ *
+ * Set the device clock to the user input value. The conversion from timespec
+ * to ns happens in the write function.
+ */
+static int
+ice_ptp_settime64(struct ptp_clock_info *info, const struct timespec64 *ts)
+{
+	struct ice_pf *pf = ptp_info_to_pf(info);
+	struct timespec64 ts64 = *ts;
+	struct ice_hw *hw = &pf->hw;
+	int err;
+
+	if (!ice_ptp_lock(hw)) {
+		err = -EBUSY;
+		goto exit;
+	}
+
+	err = ice_ptp_write_init(pf, &ts64);
+	ice_ptp_unlock(hw);
+
+exit:
+	if (err) {
+		dev_err(ice_pf_to_dev(pf), "PTP failed to set time %d\n", err);
+		return err;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_ptp_adjtime_nonatomic - Do a non-atomic clock adjustment
+ * @info: the driver's PTP info structure
+ * @delta: Offset in nanoseconds to adjust the time by
+ */
+static int ice_ptp_adjtime_nonatomic(struct ptp_clock_info *info, s64 delta)
+{
+	struct timespec64 now, then;
+
+	then = ns_to_timespec64(delta);
+	ice_ptp_gettimex64(info, &now, NULL);
+	now = timespec64_add(now, then);
+
+	return ice_ptp_settime64(info, (const struct timespec64 *)&now);
+}
+
+/**
+ * ice_ptp_adjtime - Adjust the time of the clock by the indicated delta
+ * @info: the driver's PTP info structure
+ * @delta: Offset in nanoseconds to adjust the time by
+ */
+static int ice_ptp_adjtime(struct ptp_clock_info *info, s64 delta)
+{
+	struct ice_pf *pf = ptp_info_to_pf(info);
+	struct ice_hw *hw = &pf->hw;
+	struct device *dev;
+	int err;
+
+	dev = ice_pf_to_dev(pf);
+
+	/* Hardware only supports atomic adjustments using signed 32-bit
+	 * integers. For any adjustment outside this range, perform
+	 * a non-atomic get->adjust->set flow.
+	 */
+	if (delta > S32_MAX || delta < S32_MIN) {
+		dev_dbg(dev, "delta = %lld, adjtime non-atomic\n", delta);
+		return ice_ptp_adjtime_nonatomic(info, delta);
+	}
+
+	if (!ice_ptp_lock(hw)) {
+		dev_err(dev, "PTP failed to acquire semaphore in adjtime\n");
+		return -EBUSY;
+	}
+
+	err = ice_ptp_write_adj(pf, delta);
+
+	ice_ptp_unlock(hw);
+
+	if (err) {
+		dev_err(dev, "PTP failed to adjust time, err %d\n", err);
+		return err;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_ptp_set_caps - Set PTP capabilities
+ * @pf: Board private structure
+ */
+static void ice_ptp_set_caps(struct ice_pf *pf)
+{
+	struct ptp_clock_info *info = &pf->ptp.info;
+	struct device *dev = ice_pf_to_dev(pf);
+
+	snprintf(info->name, sizeof(info->name) - 1, "%s-%s-clk",
+		 dev_driver_string(dev), dev_name(dev));
+	info->owner = THIS_MODULE;
+	info->max_adj = 999999999;
+	info->adjtime = ice_ptp_adjtime;
+	info->adjfine = ice_ptp_adjfine;
+	info->gettimex64 = ice_ptp_gettimex64;
+	info->settime64 = ice_ptp_settime64;
+}
+
+/**
+ * ice_ptp_create_clock - Create PTP clock device for userspace
+ * @pf: Board private structure
+ *
+ * This function creates a new PTP clock device. It only creates one if we
+ * don't already have one. Will return error if it can't create one, but success
+ * if we already have a device. Should be used by ice_ptp_init to create clock
+ * initially, and prevent global resets from creating new clock devices.
+ */
+static long ice_ptp_create_clock(struct ice_pf *pf)
+{
+	struct ptp_clock_info *info;
+	struct ptp_clock *clock;
+	struct device *dev;
+
+	/* No need to create a clock device if we already have one */
+	if (pf->ptp.clock)
+		return 0;
+
+	ice_ptp_set_caps(pf);
+
+	info = &pf->ptp.info;
+	dev = ice_pf_to_dev(pf);
+
+	/* Attempt to register the clock before enabling the hardware. */
+	clock = ptp_clock_register(info, dev);
+	if (IS_ERR(clock))
+		return PTR_ERR(clock);
+
+	pf->ptp.clock = clock;
+
+	return 0;
+}
+
+/**
+ * ice_ptp_init_owner - Initialize PTP_1588_CLOCK device
+ * @pf: Board private structure
+ *
+ * Setup and initialize a PTP clock device that represents the device hardware
+ * clock. Save the clock index for other functions connected to the same
+ * hardware resource.
+ */
+static int ice_ptp_init_owner(struct ice_pf *pf)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_hw *hw = &pf->hw;
+	struct timespec64 ts;
+	u8 src_idx;
+	int err;
+
+	wr32(hw, GLTSYN_SYNC_DLAY, 0);
+
+	/* Clear some HW residue and enable source clock */
+	src_idx = hw->func_caps.ts_func_info.tmr_index_owned;
+
+	/* Enable source clocks */
+	wr32(hw, GLTSYN_ENA(src_idx), GLTSYN_ENA_TSYN_ENA_M);
+
+	/* Enable PHY time sync */
+	err = ice_ptp_init_phy_e810(hw);
+	if (err)
+		goto err_exit;
+
+	/* Clear event status indications for auxiliary pins */
+	(void)rd32(hw, GLTSYN_STAT(src_idx));
+
+	/* Acquire the global hardware lock */
+	if (!ice_ptp_lock(hw)) {
+		err = -EBUSY;
+		goto err_exit;
+	}
+
+	/* Write the increment time value to PHY and LAN */
+	err = ice_ptp_write_incval(hw, ICE_PTP_NOMINAL_INCVAL_E810);
+	if (err) {
+		ice_ptp_unlock(hw);
+		goto err_exit;
+	}
+
+	ts = ktime_to_timespec64(ktime_get_real());
+	/* Write the initial Time value to PHY and LAN */
+	err = ice_ptp_write_init(pf, &ts);
+	if (err) {
+		ice_ptp_unlock(hw);
+		goto err_exit;
+	}
+
+	/* Release the global hardware lock */
+	ice_ptp_unlock(hw);
+
+	/* Ensure we have a clock device */
+	err = ice_ptp_create_clock(pf);
+	if (err)
+		goto err_clk;
+
+	return 0;
+
+err_clk:
+	pf->ptp.clock = NULL;
+err_exit:
+	dev_err(dev, "PTP failed to register clock, err %d\n", err);
+
+	return err;
+}
+
+/**
+ * ice_ptp_init - Initialize the PTP support after device probe or reset
+ * @pf: Board private structure
+ *
+ * This function sets device up for PTP support. The first time it is run, it
+ * will create a clock device. It does not create a clock device if one
+ * already exists. It also reconfigures the device after a reset.
+ */
+void ice_ptp_init(struct ice_pf *pf)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_hw *hw = &pf->hw;
+	int err;
+
+	/* PTP is currently only supported on E810 devices */
+	if (!ice_is_e810(hw))
+		return;
+
+	/* Check if this PF owns the source timer */
+	if (hw->func_caps.ts_func_info.src_tmr_owned) {
+		err = ice_ptp_init_owner(pf);
+		if (err)
+			return;
+	}
+
+	set_bit(ICE_FLAG_PTP, pf->flags);
+
+	dev_info(dev, "PTP init successful\n");
+}
+
+/**
+ * ice_ptp_release - Disable the driver/HW support and unregister the clock
+ * @pf: Board private structure
+ *
+ * This function handles the cleanup work required from the initialization by
+ * clearing out the important information and unregistering the clock
+ */
+void ice_ptp_release(struct ice_pf *pf)
+{
+	clear_bit(ICE_FLAG_PTP, pf->flags);
+
+	if (!pf->ptp.clock)
+		return;
+
+	ptp_clock_unregister(pf->ptp.clock);
+	pf->ptp.clock = NULL;
+
+	dev_info(ice_pf_to_dev(pf), "Removed PTP clock\n");
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
new file mode 100644
index 000000000000..838ee92de9e2
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -0,0 +1,36 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2018-2019, Intel Corporation. */
+
+#ifndef _ICE_PTP_H_
+#define _ICE_PTP_H_
+
+#include <linux/ptp_clock_kernel.h>
+
+#include "ice_ptp_hw.h"
+
+/**
+ * struct ice_ptp - data used for integrating with CONFIG_PTP_1588_CLOCK
+ * @info: structure defining PTP hardware capabilities
+ * @clock: pointer to registered PTP clock device
+ */
+struct ice_ptp {
+	struct ptp_clock_info info;
+	struct ptp_clock *clock;
+};
+
+#define __ptp_info_to_ptp(i) \
+	container_of((i), struct ice_ptp, info)
+#define ptp_info_to_pf(i) \
+	container_of(__ptp_info_to_ptp((i)), struct ice_pf, ptp)
+
+#define PTP_SHARED_CLK_IDX_VALID	BIT(31)
+
+#if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
+struct ice_pf;
+void ice_ptp_init(struct ice_pf *pf);
+void ice_ptp_release(struct ice_pf *pf);
+#else /* IS_ENABLED(CONFIG_PTP_1588_CLOCK) */
+static inline void ice_ptp_init(struct ice_pf *pf) { }
+static inline void ice_ptp_release(struct ice_pf *pf) { }
+#endif /* IS_ENABLED(CONFIG_PTP_1588_CLOCK) */
+#endif /* _ICE_PTP_H_ */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
