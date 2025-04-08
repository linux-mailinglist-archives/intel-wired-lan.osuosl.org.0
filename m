Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6C0A7FCAE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 12:46:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF30B61016;
	Tue,  8 Apr 2025 10:46:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id esLFBwnav8OH; Tue,  8 Apr 2025 10:46:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ABCA16085C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744109194;
	bh=RBfWuKnRkfWEDkiGFiHYxeELPazSvt3dbBxIqi7h87U=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JlTNWWei+AeqhOzp+idHzs3GfLYAV1oYHMuWkrWSISZUIV5sRgtW54XOQltZZNnbp
	 Q+o7uaJ/B0iDbeIouJHTfVCTSFaeNjm7lOFlXQw/fM3sip/TVuHNzK+38qiZ4ZbCUT
	 +WVe6Z8vT6jMQ2OgdS4CBHX1YZB1KqJWEvhcznX/km2w4WtRyHZzXDGHGC24e0WuJs
	 NT5nPSRNxPcS6pj5T1e1AWriJ68lZidz49eIIBPDCDlMomYH09wGZS196OGMc1FxTD
	 8EbggplwaOj0PpDAPRrUr73To9miQQpyEqImwFNpLyARNCYmQMqFH6oQw0SXy6SnT2
	 dxkK+MibbfcHw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id ABCA16085C;
	Tue,  8 Apr 2025 10:46:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 923861DE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 10:46:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 834A74065F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 10:46:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q6SO5MFpLkFV for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 10:46:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 75B1140637
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 75B1140637
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 75B1140637
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 10:46:32 +0000 (UTC)
X-CSE-ConnectionGUID: 2+iRb3ZHTRqHuKqKL0zRdw==
X-CSE-MsgGUID: niVnbZDVSg6vT8QDMS4Z+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="56902793"
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="56902793"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 03:46:32 -0700
X-CSE-ConnectionGUID: RGT6MdvSQpy+Q4uUGNn+9w==
X-CSE-MsgGUID: 2AkxKTK4SIKAkwRctw6krA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="128566152"
Received: from gklab-003-014.igk.intel.com ([10.211.116.96])
 by fmviesa008.fm.intel.com with ESMTP; 08 Apr 2025 03:46:28 -0700
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Willem de Bruijn <willemb@google.com>,
 Mina Almasry <almasrymina@google.com>,
 Samuel Salin <Samuel.salin@intel.com>
Date: Tue,  8 Apr 2025 12:31:03 +0200
Message-ID: <20250408103240.30287-19-milena.olech@intel.com>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <20250408103240.30287-2-milena.olech@intel.com>
References: <20250408103240.30287-2-milena.olech@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744109193; x=1775645193;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v6Zt591Cm0L6Pxy+yebAtevuwBmFfxz5QDqpjlk+NN0=;
 b=ZU5sfRtMClprvm/uoK7Mlcmak08tfaixH4o2FpEsbv2gVn35s0uXElYv
 dXgZ7Rn/mWua9rISvK8VTYdKrJfXS5Qc1ve1XE2739X+9Nj6wMtIHdkmF
 2D/WjTAu6bJRUhoK6tn+DKtxqmigR0Kp6vuBk9xAumdAEsBVthP+9HtPJ
 6Ampzjh5mJbarxeseNyKymX5TGd+NkG/K4DcBGQU5/kg3tmSWzLKomYE7
 dNC9nZJdK1FGu7krBKSXrXd5e+aKIuEyPwx9plsKLRCMsiWxawxoK1nh6
 G3wEd3ipkVDbs6TDljYbcoVbPYxOlOL/NqW7/Q8P0fjuRWZbm1gfGN/+U
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZU5sfRtM
Subject: [Intel-wired-lan] [PATCH v10 iwl-next 08/11] idpf: add PTP clock
 configuration
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

PTP clock configuration operations - set time, adjust time and adjust
frequency are required to control the clock and maintain synchronization
process.

Extend get PTP capabilities function to request for the clock adjustments
and add functions to enable these actions using dedicated virtchnl
messages.

Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Reviewed-by: Willem de Bruijn <willemb@google.com>
Signed-off-by: Milena Olech <milena.olech@intel.com>
Tested-by: Mina Almasry <almasrymina@google.com>
Tested-by: Samuel Salin <Samuel.salin@intel.com>
---
v8 -> v9: minor - remove unnecessary dot in the function description

 drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 191 ++++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_ptp.h    |  52 ++++-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |   3 +
 .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   | 143 ++++++++++++-
 4 files changed, 386 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
index c00f0a03ccab..ea6ebd1391e1 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
@@ -48,6 +48,20 @@ void idpf_ptp_get_features_access(const struct idpf_adapter *adapter)
 	ptp->get_cross_tstamp_access = idpf_ptp_get_access(adapter,
 							   direct,
 							   mailbox);
+
+	/* Set the device clock time */
+	direct = VIRTCHNL2_CAP_PTP_SET_DEVICE_CLK_TIME;
+	mailbox = VIRTCHNL2_CAP_PTP_SET_DEVICE_CLK_TIME;
+	ptp->set_dev_clk_time_access = idpf_ptp_get_access(adapter,
+							   direct,
+							   mailbox);
+
+	/* Adjust the device clock time */
+	direct = VIRTCHNL2_CAP_PTP_ADJ_DEVICE_CLK;
+	mailbox = VIRTCHNL2_CAP_PTP_ADJ_DEVICE_CLK_MB;
+	ptp->adj_dev_clk_time_access = idpf_ptp_get_access(adapter,
+							   direct,
+							   mailbox);
 }
 
 /**
@@ -307,6 +321,154 @@ static int idpf_ptp_gettimex64(struct ptp_clock_info *info,
 	return 0;
 }
 
+/**
+ * idpf_ptp_settime64 - Set the time of the clock
+ * @info: the driver's PTP info structure
+ * @ts: timespec64 structure that holds the new time value
+ *
+ * Set the device clock to the user input value. The conversion from timespec
+ * to ns happens in the write function.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int idpf_ptp_settime64(struct ptp_clock_info *info,
+			      const struct timespec64 *ts)
+{
+	struct idpf_adapter *adapter = idpf_ptp_info_to_adapter(info);
+	enum idpf_ptp_access access;
+	int err;
+	u64 ns;
+
+	access = adapter->ptp->set_dev_clk_time_access;
+	if (access != IDPF_PTP_MAILBOX)
+		return -EOPNOTSUPP;
+
+	ns = timespec64_to_ns(ts);
+
+	err = idpf_ptp_set_dev_clk_time(adapter, ns);
+	if (err) {
+		pci_err(adapter->pdev, "Failed to set the time, err: %pe\n", ERR_PTR(err));
+		return err;
+	}
+
+	return 0;
+}
+
+/**
+ * idpf_ptp_adjtime_nonatomic - Do a non-atomic clock adjustment
+ * @info: the driver's PTP info structure
+ * @delta: Offset in nanoseconds to adjust the time by
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int idpf_ptp_adjtime_nonatomic(struct ptp_clock_info *info, s64 delta)
+{
+	struct timespec64 now, then;
+	int err;
+
+	err = idpf_ptp_gettimex64(info, &now, NULL);
+	if (err)
+		return err;
+
+	then = ns_to_timespec64(delta);
+	now = timespec64_add(now, then);
+
+	return idpf_ptp_settime64(info, &now);
+}
+
+/**
+ * idpf_ptp_adjtime - Adjust the time of the clock by the indicated delta
+ * @info: the driver's PTP info structure
+ * @delta: Offset in nanoseconds to adjust the time by
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int idpf_ptp_adjtime(struct ptp_clock_info *info, s64 delta)
+{
+	struct idpf_adapter *adapter = idpf_ptp_info_to_adapter(info);
+	enum idpf_ptp_access access;
+	int err;
+
+	access = adapter->ptp->adj_dev_clk_time_access;
+	if (access != IDPF_PTP_MAILBOX)
+		return -EOPNOTSUPP;
+
+	/* Hardware only supports atomic adjustments using signed 32-bit
+	 * integers. For any adjustment outside this range, perform
+	 * a non-atomic get->adjust->set flow.
+	 */
+	if (delta > S32_MAX || delta < S32_MIN)
+		return idpf_ptp_adjtime_nonatomic(info, delta);
+
+	err = idpf_ptp_adj_dev_clk_time(adapter, delta);
+	if (err) {
+		pci_err(adapter->pdev, "Failed to adjust the clock with delta %lld err: %pe\n", delta, ERR_PTR(err));
+		return err;
+	}
+
+	return 0;
+}
+
+/**
+ * idpf_ptp_adjfine - Adjust clock increment rate
+ * @info: the driver's PTP info structure
+ * @scaled_ppm: Parts per million with 16-bit fractional field
+ *
+ * Adjust the frequency of the clock by the indicated scaled ppm from the
+ * base frequency.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int idpf_ptp_adjfine(struct ptp_clock_info *info, long scaled_ppm)
+{
+	struct idpf_adapter *adapter = idpf_ptp_info_to_adapter(info);
+	enum idpf_ptp_access access;
+	u64 incval, diff;
+	int err;
+
+	access = adapter->ptp->adj_dev_clk_time_access;
+	if (access != IDPF_PTP_MAILBOX)
+		return -EOPNOTSUPP;
+
+	incval = adapter->ptp->base_incval;
+
+	diff = adjust_by_scaled_ppm(incval, scaled_ppm);
+	err = idpf_ptp_adj_dev_clk_fine(adapter, diff);
+	if (err)
+		pci_err(adapter->pdev, "Failed to adjust clock increment rate for scaled ppm %ld %pe\n", scaled_ppm, ERR_PTR(err));
+
+	return 0;
+}
+
+/**
+ * idpf_ptp_verify_pin - Verify if pin supports requested pin function
+ * @info: the driver's PTP info structure
+ * @pin: Pin index
+ * @func: Assigned function
+ * @chan: Assigned channel
+ *
+ * Return: EOPNOTSUPP as not supported yet.
+ */
+static int idpf_ptp_verify_pin(struct ptp_clock_info *info, unsigned int pin,
+			       enum ptp_pin_function func, unsigned int chan)
+{
+	return -EOPNOTSUPP;
+}
+
+/**
+ * idpf_ptp_gpio_enable - Enable/disable ancillary features of PHC
+ * @info: the driver's PTP info structure
+ * @rq: The requested feature to change
+ * @on: Enable/disable flag
+ *
+ * Return: EOPNOTSUPP as not supported yet.
+ */
+static int idpf_ptp_gpio_enable(struct ptp_clock_info *info,
+				struct ptp_clock_request *rq, int on)
+{
+	return -EOPNOTSUPP;
+}
+
 /**
  * idpf_ptp_set_caps - Set PTP capabilities
  * @adapter: Driver specific private structure
@@ -321,7 +483,13 @@ static void idpf_ptp_set_caps(const struct idpf_adapter *adapter)
 		 KBUILD_MODNAME, pci_name(adapter->pdev));
 
 	info->owner = THIS_MODULE;
+	info->max_adj = adapter->ptp->max_adj;
 	info->gettimex64 = idpf_ptp_gettimex64;
+	info->settime64 = idpf_ptp_settime64;
+	info->adjfine = idpf_ptp_adjfine;
+	info->adjtime = idpf_ptp_adjtime;
+	info->verify = idpf_ptp_verify_pin;
+	info->enable = idpf_ptp_gpio_enable;
 
 #if IS_ENABLED(CONFIG_ARM_ARCH_TIMER)
 	info->getcrosststamp = idpf_ptp_get_crosststamp;
@@ -372,6 +540,7 @@ static int idpf_ptp_create_clock(const struct idpf_adapter *adapter)
  */
 int idpf_ptp_init(struct idpf_adapter *adapter)
 {
+	struct timespec64 ts;
 	int err;
 
 	if (!idpf_is_cap_ena(adapter, IDPF_OTHER_CAPS, VIRTCHNL2_CAP_PTP)) {
@@ -399,12 +568,34 @@ int idpf_ptp_init(struct idpf_adapter *adapter)
 	if (err)
 		goto free_ptp;
 
+	/* Write the default increment time value if the clock adjustments
+	 * are enabled.
+	 */
+	if (adapter->ptp->adj_dev_clk_time_access != IDPF_PTP_NONE) {
+		err = idpf_ptp_adj_dev_clk_fine(adapter,
+						adapter->ptp->base_incval);
+		if (err)
+			goto remove_clock;
+	}
+
+	/* Write the initial time value if the set time operation is enabled */
+	if (adapter->ptp->set_dev_clk_time_access != IDPF_PTP_NONE) {
+		ts = ktime_to_timespec64(ktime_get_real());
+		err = idpf_ptp_settime64(&adapter->ptp->info, &ts);
+		if (err)
+			goto remove_clock;
+	}
+
 	spin_lock_init(&adapter->ptp->read_dev_clk_lock);
 
 	pci_dbg(adapter->pdev, "PTP init successful\n");
 
 	return 0;
 
+remove_clock:
+	ptp_clock_unregister(adapter->ptp->clock);
+	adapter->ptp->clock = NULL;
+
 free_ptp:
 	kfree(adapter->ptp);
 	adapter->ptp = NULL;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.h b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
index b605e779f922..8022ed31defd 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ptp.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
@@ -23,6 +23,14 @@ struct idpf_ptp_cmd {
  * @phy_clk_ns_h: high part of the PHY clock register
  * @sys_time_ns_l: low part of the system time register
  * @sys_time_ns_h: high part of the system time register
+ * @incval_l: low part of the increment value register
+ * @incval_h: high part of the increment value register
+ * @shadj_l: low part of the shadow adjust register
+ * @shadj_h: high part of the shadow adjust register
+ * phy_incval_l: low part of the PHY increment value register
+ * phy_incval_h: high part of the PHY increment value register
+ * phy_shadj_l: low part of the PHY shadow adjust register
+ * phy_shadj_h: high part of the PHY shadow adjust register
  * @cmd: PTP command register
  * @phy_cmd: PHY command register
  * @cmd_sync: PTP command synchronization register
@@ -40,6 +48,18 @@ struct idpf_ptp_dev_clk_regs {
 	void __iomem *sys_time_ns_l;
 	void __iomem *sys_time_ns_h;
 
+	/* Main timer adjustments */
+	void __iomem *incval_l;
+	void __iomem *incval_h;
+	void __iomem *shadj_l;
+	void __iomem *shadj_h;
+
+	/* PHY timer adjustments */
+	void __iomem *phy_incval_l;
+	void __iomem *phy_incval_h;
+	void __iomem *phy_shadj_l;
+	void __iomem *phy_shadj_h;
+
 	/* Command */
 	void __iomem *cmd;
 	void __iomem *phy_cmd;
@@ -76,11 +96,15 @@ struct idpf_ptp_secondary_mbx {
  * @info: structure defining PTP hardware capabilities
  * @clock: pointer to registered PTP clock device
  * @adapter: back pointer to the adapter
+ * @base_incval: base increment value of the PTP clock
+ * @max_adj: maximum adjustment of the PTP clock
  * @cmd: HW specific command masks
  * @dev_clk_regs: the set of registers to access the device clock
  * @caps: PTP capabilities negotiated with the Control Plane
  * @get_dev_clk_time_access: access type for getting the device clock time
  * @get_cross_tstamp_access: access type for the cross timestamping
+ * @set_dev_clk_time_access: access type for setting the device clock time
+ * @adj_dev_clk_time_access: access type for the adjusting the device clock
  * @rsv: reserved bits
  * @secondary_mbx: parameters for using dedicated PTP mailbox
  * @read_dev_clk_lock: spinlock protecting access to the device clock read
@@ -90,12 +114,16 @@ struct idpf_ptp {
 	struct ptp_clock_info info;
 	struct ptp_clock *clock;
 	struct idpf_adapter *adapter;
+	u64 base_incval;
+	u64 max_adj;
 	struct idpf_ptp_cmd cmd;
 	struct idpf_ptp_dev_clk_regs dev_clk_regs;
 	u32 caps;
 	enum idpf_ptp_access get_dev_clk_time_access:2;
 	enum idpf_ptp_access get_cross_tstamp_access:2;
-	u32 rsv:28;
+	enum idpf_ptp_access set_dev_clk_time_access:2;
+	enum idpf_ptp_access adj_dev_clk_time_access:2;
+	u8 rsv;
 	struct idpf_ptp_secondary_mbx secondary_mbx;
 	spinlock_t read_dev_clk_lock;
 };
@@ -133,6 +161,9 @@ int idpf_ptp_get_dev_clk_time(struct idpf_adapter *adapter,
 			      struct idpf_ptp_dev_timers *dev_clk_time);
 int idpf_ptp_get_cross_time(struct idpf_adapter *adapter,
 			    struct idpf_ptp_dev_timers *cross_time);
+int idpf_ptp_set_dev_clk_time(struct idpf_adapter *adapter, u64 time);
+int idpf_ptp_adj_dev_clk_fine(struct idpf_adapter *adapter, u64 incval);
+int idpf_ptp_adj_dev_clk_time(struct idpf_adapter *adapter, s64 delta);
 #else /* CONFIG_PTP_1588_CLOCK */
 static inline int idpf_ptp_init(struct idpf_adapter *adapter)
 {
@@ -162,5 +193,24 @@ idpf_ptp_get_cross_time(struct idpf_adapter *adapter,
 {
 	return -EOPNOTSUPP;
 }
+
+static inline int idpf_ptp_set_dev_clk_time(struct idpf_adapter *adapter,
+					    u64 time)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline int idpf_ptp_adj_dev_clk_fine(struct idpf_adapter *adapter,
+					    u64 incval)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline int idpf_ptp_adj_dev_clk_time(struct idpf_adapter *adapter,
+					    s64 delta)
+{
+	return -EOPNOTSUPP;
+}
+
 #endif /* CONFIG_PTP_1588_CLOCK */
 #endif /* _IDPF_PTP_H */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 139d19353e28..b7c9c5d84350 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -166,6 +166,9 @@ static bool idpf_ptp_is_mb_msg(u32 op)
 	switch (op) {
 	case VIRTCHNL2_OP_PTP_GET_DEV_CLK_TIME:
 	case VIRTCHNL2_OP_PTP_GET_CROSS_TIME:
+	case VIRTCHNL2_OP_PTP_SET_DEV_CLK_TIME:
+	case VIRTCHNL2_OP_PTP_ADJ_DEV_CLK_FINE:
+	case VIRTCHNL2_OP_PTP_ADJ_DEV_CLK_TIME:
 		return true;
 	default:
 		return false;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
index e51fa16d13cd..b8185778cd07 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
@@ -20,7 +20,9 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
 		.caps = cpu_to_le32(VIRTCHNL2_CAP_PTP_GET_DEVICE_CLK_TIME |
 				    VIRTCHNL2_CAP_PTP_GET_DEVICE_CLK_TIME_MB |
 				    VIRTCHNL2_CAP_PTP_GET_CROSS_TIME |
-				    VIRTCHNL2_CAP_PTP_GET_CROSS_TIME_MB)
+				    VIRTCHNL2_CAP_PTP_GET_CROSS_TIME_MB |
+				    VIRTCHNL2_CAP_PTP_SET_DEVICE_CLK_TIME_MB |
+				    VIRTCHNL2_CAP_PTP_ADJ_DEVICE_CLK_MB)
 	};
 	struct idpf_vc_xn_params xn_params = {
 		.vc_op = VIRTCHNL2_OP_PTP_GET_CAPS,
@@ -29,6 +31,7 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
 		.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
 	};
 	struct virtchnl2_ptp_cross_time_reg_offsets cross_tstamp_offsets;
+	struct virtchnl2_ptp_clk_adj_reg_offsets clk_adj_offsets;
 	struct virtchnl2_ptp_clk_reg_offsets clock_offsets;
 	struct idpf_ptp_secondary_mbx *scnd_mbx;
 	struct idpf_ptp *ptp = adapter->ptp;
@@ -51,6 +54,8 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
 		return -EIO;
 
 	ptp->caps = le32_to_cpu(recv_ptp_caps_msg->caps);
+	ptp->base_incval = le64_to_cpu(recv_ptp_caps_msg->base_incval);
+	ptp->max_adj = le32_to_cpu(recv_ptp_caps_msg->max_adj);
 
 	scnd_mbx = &ptp->secondary_mbx;
 	scnd_mbx->peer_mbx_q_id = le16_to_cpu(recv_ptp_caps_msg->peer_mbx_q_id);
@@ -89,7 +94,7 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
 cross_tstamp:
 	access_type = ptp->get_cross_tstamp_access;
 	if (access_type != IDPF_PTP_DIRECT)
-		return 0;
+		goto discipline_clock;
 
 	cross_tstamp_offsets = recv_ptp_caps_msg->cross_time_offsets;
 
@@ -102,6 +107,39 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
 	temp_offset = le32_to_cpu(cross_tstamp_offsets.cmd_sync_trigger);
 	ptp->dev_clk_regs.cmd_sync = idpf_get_reg_addr(adapter, temp_offset);
 
+discipline_clock:
+	access_type = ptp->adj_dev_clk_time_access;
+	if (access_type != IDPF_PTP_DIRECT)
+		return 0;
+
+	clk_adj_offsets = recv_ptp_caps_msg->clk_adj_offsets;
+
+	/* Device clock offsets */
+	temp_offset = le32_to_cpu(clk_adj_offsets.dev_clk_cmd_type);
+	ptp->dev_clk_regs.cmd = idpf_get_reg_addr(adapter, temp_offset);
+	temp_offset = le32_to_cpu(clk_adj_offsets.dev_clk_incval_l);
+	ptp->dev_clk_regs.incval_l = idpf_get_reg_addr(adapter, temp_offset);
+	temp_offset = le32_to_cpu(clk_adj_offsets.dev_clk_incval_h);
+	ptp->dev_clk_regs.incval_h = idpf_get_reg_addr(adapter, temp_offset);
+	temp_offset = le32_to_cpu(clk_adj_offsets.dev_clk_shadj_l);
+	ptp->dev_clk_regs.shadj_l = idpf_get_reg_addr(adapter, temp_offset);
+	temp_offset = le32_to_cpu(clk_adj_offsets.dev_clk_shadj_h);
+	ptp->dev_clk_regs.shadj_h = idpf_get_reg_addr(adapter, temp_offset);
+
+	/* PHY clock offsets */
+	temp_offset = le32_to_cpu(clk_adj_offsets.phy_clk_cmd_type);
+	ptp->dev_clk_regs.phy_cmd = idpf_get_reg_addr(adapter, temp_offset);
+	temp_offset = le32_to_cpu(clk_adj_offsets.phy_clk_incval_l);
+	ptp->dev_clk_regs.phy_incval_l = idpf_get_reg_addr(adapter,
+							   temp_offset);
+	temp_offset = le32_to_cpu(clk_adj_offsets.phy_clk_incval_h);
+	ptp->dev_clk_regs.phy_incval_h = idpf_get_reg_addr(adapter,
+							   temp_offset);
+	temp_offset = le32_to_cpu(clk_adj_offsets.phy_clk_shadj_l);
+	ptp->dev_clk_regs.phy_shadj_l = idpf_get_reg_addr(adapter, temp_offset);
+	temp_offset = le32_to_cpu(clk_adj_offsets.phy_clk_shadj_h);
+	ptp->dev_clk_regs.phy_shadj_h = idpf_get_reg_addr(adapter, temp_offset);
+
 	return 0;
 }
 
@@ -168,6 +206,7 @@ int idpf_ptp_get_cross_time(struct idpf_adapter *adapter,
 	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
 	if (reply_sz < 0)
 		return reply_sz;
+
 	if (reply_sz != sizeof(cross_time_msg))
 		return -EIO;
 
@@ -176,3 +215,103 @@ int idpf_ptp_get_cross_time(struct idpf_adapter *adapter,
 
 	return 0;
 }
+
+/**
+ * idpf_ptp_set_dev_clk_time - Send virtchnl set device time message
+ * @adapter: Driver specific private structure
+ * @time: New time value
+ *
+ * Send virtchnl set time message to set the time of the clock.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+int idpf_ptp_set_dev_clk_time(struct idpf_adapter *adapter, u64 time)
+{
+	struct virtchnl2_ptp_set_dev_clk_time set_dev_clk_time_msg = {
+		.dev_time_ns = cpu_to_le64(time),
+	};
+	struct idpf_vc_xn_params xn_params = {
+		.vc_op = VIRTCHNL2_OP_PTP_SET_DEV_CLK_TIME,
+		.send_buf.iov_base = &set_dev_clk_time_msg,
+		.send_buf.iov_len = sizeof(set_dev_clk_time_msg),
+		.recv_buf.iov_base = &set_dev_clk_time_msg,
+		.recv_buf.iov_len = sizeof(set_dev_clk_time_msg),
+		.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
+	};
+	int reply_sz;
+
+	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
+	if (reply_sz < 0)
+		return reply_sz;
+	if (reply_sz != sizeof(set_dev_clk_time_msg))
+		return -EIO;
+
+	return 0;
+}
+
+/**
+ * idpf_ptp_adj_dev_clk_time - Send virtchnl adj device clock time message
+ * @adapter: Driver specific private structure
+ * @delta: Offset in nanoseconds to adjust the time by
+ *
+ * Send virtchnl adj time message to adjust the clock by the indicated delta.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+int idpf_ptp_adj_dev_clk_time(struct idpf_adapter *adapter, s64 delta)
+{
+	struct virtchnl2_ptp_adj_dev_clk_time adj_dev_clk_time_msg = {
+		.delta = cpu_to_le64(delta),
+	};
+	struct idpf_vc_xn_params xn_params = {
+		.vc_op = VIRTCHNL2_OP_PTP_ADJ_DEV_CLK_TIME,
+		.send_buf.iov_base = &adj_dev_clk_time_msg,
+		.send_buf.iov_len = sizeof(adj_dev_clk_time_msg),
+		.recv_buf.iov_base = &adj_dev_clk_time_msg,
+		.recv_buf.iov_len = sizeof(adj_dev_clk_time_msg),
+		.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
+	};
+	int reply_sz;
+
+	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
+	if (reply_sz < 0)
+		return reply_sz;
+	if (reply_sz != sizeof(adj_dev_clk_time_msg))
+		return -EIO;
+
+	return 0;
+}
+
+/**
+ * idpf_ptp_adj_dev_clk_fine - Send virtchnl adj time message
+ * @adapter: Driver specific private structure
+ * @incval: Source timer increment value per clock cycle
+ *
+ * Send virtchnl adj fine message to adjust the frequency of the clock by
+ * incval.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+int idpf_ptp_adj_dev_clk_fine(struct idpf_adapter *adapter, u64 incval)
+{
+	struct virtchnl2_ptp_adj_dev_clk_fine adj_dev_clk_fine_msg = {
+		.incval = cpu_to_le64(incval),
+	};
+	struct idpf_vc_xn_params xn_params = {
+		.vc_op = VIRTCHNL2_OP_PTP_ADJ_DEV_CLK_FINE,
+		.send_buf.iov_base = &adj_dev_clk_fine_msg,
+		.send_buf.iov_len = sizeof(adj_dev_clk_fine_msg),
+		.recv_buf.iov_base = &adj_dev_clk_fine_msg,
+		.recv_buf.iov_len = sizeof(adj_dev_clk_fine_msg),
+		.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
+	};
+	int reply_sz;
+
+	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
+	if (reply_sz < 0)
+		return reply_sz;
+	if (reply_sz != sizeof(adj_dev_clk_fine_msg))
+		return -EIO;
+
+	return 0;
+}
-- 
2.43.5

