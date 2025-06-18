Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 29995ADEFFD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Jun 2025 16:44:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A628C403E0;
	Wed, 18 Jun 2025 14:44:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n37XUKZpW5u3; Wed, 18 Jun 2025 14:44:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6CD52403E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750257876;
	bh=dhA9eLZLq26V7UXeS86N5+QaWPToT7HTlHRnWriYDfs=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Rn8t6y8rdFUyqIF78VpjQbgyrNst7nYbQ8G3CcvWNBLIbu2X+fyBq0PbJ0C5oCcT4
	 cCV96Mgdbr4MCzCaP991BYNlzY1qHjv36/gqNRU3LAw7Ro5Hx03PB1zxPjcx4hDInA
	 AI8P1ZwHuLXf9O9ev7AXZZcZTR3qceMN2SSxSgbWIQaCKT6+PtW63V34vTe5RIFGJU
	 8pVw2D7A6xwBLqUueT5cbebcFXcG5fiJxI/QbeXS0nOJP5wVNYYfL5wD5WeZbMZQ+r
	 ocXttPBPme4g4J+3WSfRKXZd2cJ0jvTjCwYWi7nVCaVbdQ3KktpmkXMrMM+MFLU6Ia
	 wRFfcqwbn4uXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6CD52403E1;
	Wed, 18 Jun 2025 14:44:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id EBA3C151
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 14:44:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D208040391
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 14:44:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SkmvVXOaCgcR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jun 2025 14:44:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7BF0240388
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7BF0240388
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7BF0240388
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 14:44:31 +0000 (UTC)
X-CSE-ConnectionGUID: +JYGSllsRuiq5K6ikcTjSg==
X-CSE-MsgGUID: l1ZTefiPS3GF56md+a8aTQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="63520126"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="63520126"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 07:44:31 -0700
X-CSE-ConnectionGUID: pUCNFtHxTLiX0IXXqV9Xtw==
X-CSE-MsgGUID: itoorhJrRDKJEkInFi85bA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="150145545"
Received: from gklab-003-014.igk.intel.com ([10.91.173.44])
 by orviesa007.jf.intel.com with ESMTP; 18 Jun 2025 07:44:29 -0700
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Willem de Bruijn <willemb@google.com>
Date: Wed, 18 Jun 2025 16:42:36 +0200
Message-ID: <20250618144308.81960-3-milena.olech@intel.com>
X-Mailer: git-send-email 2.43.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750257872; x=1781793872;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ONHLN6CxRHfgebqxTvLdgzaPNyDOZwjY7ko8i9CiZow=;
 b=ZezbEMYBVBOxOzWxBNTxzezbx4DKjTtfd/oRMFJ366t9lC4ei5CPZiPK
 iiM8sHhKyMuHXfi/jQqrqL8EjUQgmHslSam3vTusRVIKC3CQJ9aY8l0Y3
 zInN13yaYDaNnS1H1f7KqCwmq43I6tCPLL137Nme2cYePuyBwHnWZ8SAZ
 mTSRsWa5Qel6sSOYLtCZB6/u07UsUa82H4/86fNGz9QrhOc+PXCdVb1sD
 FeRXiY5/pwvFVIR1HtxK2zm6f3Iub4W2vQXTp6aIMlU7UeNbA9Z5hvael
 f8S/9JDM26hBetqKhcz+3gGIO6uk4dkE351kbpILSUUTlzwM5jYGdR1GM
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZezbEMYB
Subject: [Intel-wired-lan] [PATCH v3 iwl-next] idpf: add cross timestamping
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

Add cross timestamp support through virtchnl mailbox messages and directly,
through PCIe BAR registers. Cross timestamping assumes that both system
time and device clock time values are cached simultaneously, what is
triggered by HW. Feature is enabled for both ARM and x86 archs.

Signed-off-by: Milena Olech <milena.olech@intel.com>
Reviewed-by: Karol Kolacinski <karol.kolacinski@intel.com>
Reviewed-by: Willem de Bruijn <willemb@google.com>
---
v2 -> v3: revert rebase of the top of iXD
v1 -> v2: rebase on the top of iXD, fix kernel doc, use IS_ENABLED
directly in the code flow

 drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 136 ++++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_ptp.h    |  17 +++
 .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   |  55 ++++++-
 3 files changed, 207 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
index cb46185da749..31da005f27fc 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
@@ -42,6 +42,13 @@ void idpf_ptp_get_features_access(const struct idpf_adapter *adapter)
 							   direct,
 							   mailbox);
 
+	/* Get the cross timestamp */
+	direct = VIRTCHNL2_CAP_PTP_GET_CROSS_TIME;
+	mailbox = VIRTCHNL2_CAP_PTP_GET_CROSS_TIME_MB;
+	ptp->get_cross_tstamp_access = idpf_ptp_get_access(adapter,
+							   direct,
+							   mailbox);
+
 	/* Set the device clock time */
 	direct = VIRTCHNL2_CAP_PTP_SET_DEVICE_CLK_TIME;
 	mailbox = VIRTCHNL2_CAP_PTP_SET_DEVICE_CLK_TIME;
@@ -171,6 +178,127 @@ static int idpf_ptp_read_src_clk_reg(struct idpf_adapter *adapter, u64 *src_clk,
 	return 0;
 }
 
+#if IS_ENABLED(CONFIG_ARM_ARCH_TIMER) || IS_ENABLED(CONFIG_X86)
+/**
+ * idpf_ptp_get_sync_device_time_direct - Get the cross time stamp values
+ *					  directly
+ * @adapter: Driver specific private structure
+ * @dev_time: 64bit main timer value
+ * @sys_time: 64bit system time value
+ */
+static void idpf_ptp_get_sync_device_time_direct(struct idpf_adapter *adapter,
+						 u64 *dev_time, u64 *sys_time)
+{
+	u32 dev_time_lo, dev_time_hi, sys_time_lo, sys_time_hi;
+	struct idpf_ptp *ptp = adapter->ptp;
+
+	spin_lock(&ptp->read_dev_clk_lock);
+
+	idpf_ptp_enable_shtime(adapter);
+
+	dev_time_lo = readl(ptp->dev_clk_regs.dev_clk_ns_l);
+	dev_time_hi = readl(ptp->dev_clk_regs.dev_clk_ns_h);
+
+	sys_time_lo = readl(ptp->dev_clk_regs.sys_time_ns_l);
+	sys_time_hi = readl(ptp->dev_clk_regs.sys_time_ns_h);
+
+	spin_unlock(&ptp->read_dev_clk_lock);
+
+	*dev_time = (u64)dev_time_hi << 32 | dev_time_lo;
+	*sys_time = (u64)sys_time_hi << 32 | sys_time_lo;
+}
+
+/**
+ * idpf_ptp_get_sync_device_time_mailbox - Get the cross time stamp values
+ *					   through mailbox
+ * @adapter: Driver specific private structure
+ * @dev_time: 64bit main timer value expressed in nanoseconds
+ * @sys_time: 64bit system time value expressed in nanoseconds
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int idpf_ptp_get_sync_device_time_mailbox(struct idpf_adapter *adapter,
+						 u64 *dev_time, u64 *sys_time)
+{
+	struct idpf_ptp_dev_timers cross_time;
+	int err;
+
+	err = idpf_ptp_get_cross_time(adapter, &cross_time);
+	if (err)
+		return err;
+
+	*dev_time = cross_time.dev_clk_time_ns;
+	*sys_time = cross_time.sys_time_ns;
+
+	return err;
+}
+
+/**
+ * idpf_ptp_get_sync_device_time - Get the cross time stamp info
+ * @device: Current device time
+ * @system: System counter value read synchronously with device time
+ * @ctx: Context provided by timekeeping code
+ *
+ * The device and the system clocks time read simultaneously.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int idpf_ptp_get_sync_device_time(ktime_t *device,
+					 struct system_counterval_t *system,
+					 void *ctx)
+{
+	struct idpf_adapter *adapter = ctx;
+	u64 ns_time_dev, ns_time_sys;
+	int err;
+
+	switch (adapter->ptp->get_cross_tstamp_access) {
+	case IDPF_PTP_NONE:
+		return -EOPNOTSUPP;
+	case IDPF_PTP_DIRECT:
+		idpf_ptp_get_sync_device_time_direct(adapter, &ns_time_dev,
+						     &ns_time_sys);
+		break;
+	case IDPF_PTP_MAILBOX:
+		err = idpf_ptp_get_sync_device_time_mailbox(adapter,
+							    &ns_time_dev,
+							    &ns_time_sys);
+		if (err)
+			return err;
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	*device = ns_to_ktime(ns_time_dev);
+
+	system->cs_id = IS_ENABLED(CONFIG_X86) ? CSID_X86_ART
+					       : CSID_ARM_ARCH_COUNTER;
+	system->cycles = ns_time_sys;
+	system->use_nsecs = true;
+
+	return 0;
+}
+
+/**
+ * idpf_ptp_get_crosststamp - Capture a device cross timestamp
+ * @info: the driver's PTP info structure
+ * @cts: The memory to fill the cross timestamp info
+ *
+ * Capture a cross timestamp between the system time and the device PTP hardware
+ * clock.
+ *
+ * Return: cross timestamp value on success, -errno on failure.
+ */
+static int idpf_ptp_get_crosststamp(struct ptp_clock_info *info,
+				    struct system_device_crosststamp *cts)
+{
+	struct idpf_adapter *adapter = idpf_ptp_info_to_adapter(info);
+
+	return get_device_system_crosststamp(idpf_ptp_get_sync_device_time,
+					     adapter, NULL, cts);
+}
+#endif /* CONFIG_ARM_ARCH_TIMER || CONFIG_X86 */
+
 /**
  * idpf_ptp_gettimex64 - Get the time of the clock
  * @info: the driver's PTP info structure
@@ -664,6 +792,14 @@ static void idpf_ptp_set_caps(const struct idpf_adapter *adapter)
 	info->verify = idpf_ptp_verify_pin;
 	info->enable = idpf_ptp_gpio_enable;
 	info->do_aux_work = idpf_ptp_do_aux_work;
+#if IS_ENABLED(CONFIG_ARM_ARCH_TIMER)
+	info->getcrosststamp = idpf_ptp_get_crosststamp;
+#elif IS_ENABLED(CONFIG_X86)
+	if (pcie_ptm_enabled(adapter->pdev) &&
+	    boot_cpu_has(X86_FEATURE_ART) &&
+	    boot_cpu_has(X86_FEATURE_TSC_KNOWN_FREQ))
+		info->getcrosststamp = idpf_ptp_get_crosststamp;
+#endif /* CONFIG_ARM_ARCH_TIMER */
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.h b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
index a876749d6116..785da03e4cf5 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ptp.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
@@ -21,6 +21,8 @@ struct idpf_ptp_cmd {
  * @dev_clk_ns_h: high part of the device clock register
  * @phy_clk_ns_l: low part of the PHY clock register
  * @phy_clk_ns_h: high part of the PHY clock register
+ * @sys_time_ns_l: low part of the system time register
+ * @sys_time_ns_h: high part of the system time register
  * @incval_l: low part of the increment value register
  * @incval_h: high part of the increment value register
  * @shadj_l: low part of the shadow adjust register
@@ -42,6 +44,10 @@ struct idpf_ptp_dev_clk_regs {
 	void __iomem *phy_clk_ns_l;
 	void __iomem *phy_clk_ns_h;
 
+	/* System time */
+	void __iomem *sys_time_ns_l;
+	void __iomem *sys_time_ns_h;
+
 	/* Main timer adjustments */
 	void __iomem *incval_l;
 	void __iomem *incval_h;
@@ -162,6 +168,7 @@ struct idpf_ptp_vport_tx_tstamp_caps {
  * @dev_clk_regs: the set of registers to access the device clock
  * @caps: PTP capabilities negotiated with the Control Plane
  * @get_dev_clk_time_access: access type for getting the device clock time
+ * @get_cross_tstamp_access: access type for the cross timestamping
  * @set_dev_clk_time_access: access type for setting the device clock time
  * @adj_dev_clk_time_access: access type for the adjusting the device clock
  * @tx_tstamp_access: access type for the Tx timestamp value read
@@ -182,6 +189,7 @@ struct idpf_ptp {
 	struct idpf_ptp_dev_clk_regs dev_clk_regs;
 	u32 caps;
 	enum idpf_ptp_access get_dev_clk_time_access:2;
+	enum idpf_ptp_access get_cross_tstamp_access:2;
 	enum idpf_ptp_access set_dev_clk_time_access:2;
 	enum idpf_ptp_access adj_dev_clk_time_access:2;
 	enum idpf_ptp_access tx_tstamp_access:2;
@@ -264,6 +272,8 @@ void idpf_ptp_get_features_access(const struct idpf_adapter *adapter);
 bool idpf_ptp_get_txq_tstamp_capability(struct idpf_tx_queue *txq);
 int idpf_ptp_get_dev_clk_time(struct idpf_adapter *adapter,
 			      struct idpf_ptp_dev_timers *dev_clk_time);
+int idpf_ptp_get_cross_time(struct idpf_adapter *adapter,
+			    struct idpf_ptp_dev_timers *cross_time);
 int idpf_ptp_set_dev_clk_time(struct idpf_adapter *adapter, u64 time);
 int idpf_ptp_adj_dev_clk_fine(struct idpf_adapter *adapter, u64 incval);
 int idpf_ptp_adj_dev_clk_time(struct idpf_adapter *adapter, s64 delta);
@@ -305,6 +315,13 @@ idpf_ptp_get_dev_clk_time(struct idpf_adapter *adapter,
 	return -EOPNOTSUPP;
 }
 
+static inline int
+idpf_ptp_get_cross_time(struct idpf_adapter *adapter,
+			struct idpf_ptp_dev_timers *cross_time)
+{
+	return -EOPNOTSUPP;
+}
+
 static inline int idpf_ptp_set_dev_clk_time(struct idpf_adapter *adapter,
 					    u64 time)
 {
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
index bdcc54a5fb56..4f1fb0cefe51 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
@@ -30,6 +30,7 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
 		.send_buf.iov_len = sizeof(send_ptp_caps_msg),
 		.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
 	};
+	struct virtchnl2_ptp_cross_time_reg_offsets cross_tstamp_offsets;
 	struct virtchnl2_ptp_clk_adj_reg_offsets clk_adj_offsets;
 	struct virtchnl2_ptp_clk_reg_offsets clock_offsets;
 	struct idpf_ptp_secondary_mbx *scnd_mbx;
@@ -71,7 +72,7 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
 
 	access_type = ptp->get_dev_clk_time_access;
 	if (access_type != IDPF_PTP_DIRECT)
-		goto discipline_clock;
+		goto cross_tstamp;
 
 	clock_offsets = recv_ptp_caps_msg->clk_offsets;
 
@@ -90,6 +91,22 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
 	temp_offset = le32_to_cpu(clock_offsets.cmd_sync_trigger);
 	ptp->dev_clk_regs.cmd_sync = idpf_get_reg_addr(adapter, temp_offset);
 
+cross_tstamp:
+	access_type = ptp->get_cross_tstamp_access;
+	if (access_type != IDPF_PTP_DIRECT)
+		goto discipline_clock;
+
+	cross_tstamp_offsets = recv_ptp_caps_msg->cross_time_offsets;
+
+	temp_offset = le32_to_cpu(cross_tstamp_offsets.sys_time_ns_l);
+	ptp->dev_clk_regs.sys_time_ns_l = idpf_get_reg_addr(adapter,
+							    temp_offset);
+	temp_offset = le32_to_cpu(cross_tstamp_offsets.sys_time_ns_h);
+	ptp->dev_clk_regs.sys_time_ns_h = idpf_get_reg_addr(adapter,
+							    temp_offset);
+	temp_offset = le32_to_cpu(cross_tstamp_offsets.cmd_sync_trigger);
+	ptp->dev_clk_regs.cmd_sync = idpf_get_reg_addr(adapter, temp_offset);
+
 discipline_clock:
 	access_type = ptp->adj_dev_clk_time_access;
 	if (access_type != IDPF_PTP_DIRECT)
@@ -162,6 +179,42 @@ int idpf_ptp_get_dev_clk_time(struct idpf_adapter *adapter,
 	return 0;
 }
 
+/**
+ * idpf_ptp_get_cross_time - Send virtchnl get cross time message
+ * @adapter: Driver specific private structure
+ * @cross_time: Pointer to the device clock structure where the value is set
+ *
+ * Send virtchnl get cross time message to get the time of the clock and the
+ * system time.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+int idpf_ptp_get_cross_time(struct idpf_adapter *adapter,
+			    struct idpf_ptp_dev_timers *cross_time)
+{
+	struct virtchnl2_ptp_get_cross_time cross_time_msg;
+	struct idpf_vc_xn_params xn_params = {
+		.vc_op = VIRTCHNL2_OP_PTP_GET_CROSS_TIME,
+		.send_buf.iov_base = &cross_time_msg,
+		.send_buf.iov_len = sizeof(cross_time_msg),
+		.recv_buf.iov_base = &cross_time_msg,
+		.recv_buf.iov_len = sizeof(cross_time_msg),
+		.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
+	};
+	int reply_sz;
+
+	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
+	if (reply_sz < 0)
+		return reply_sz;
+	if (reply_sz != sizeof(cross_time_msg))
+		return -EIO;
+
+	cross_time->dev_clk_time_ns = le64_to_cpu(cross_time_msg.dev_time_ns);
+	cross_time->sys_time_ns = le64_to_cpu(cross_time_msg.sys_time_ns);
+
+	return 0;
+}
+
 /**
  * idpf_ptp_set_dev_clk_time - Send virtchnl set device time message
  * @adapter: Driver specific private structure

base-commit: 245d0e432f7858217773389541a9c1b4d10d9a40
-- 
2.43.5

