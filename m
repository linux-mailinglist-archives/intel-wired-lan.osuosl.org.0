Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E324B3F96B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Sep 2025 11:01:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 32A708457F;
	Tue,  2 Sep 2025 09:01:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hehd8A7KDy_B; Tue,  2 Sep 2025 09:01:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9CDC584558
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756803687;
	bh=oID4BQJsjSf9COJFcWtWY3Gbkijl6F2rEsjmUb1S4GY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FYM7onQm/B6sGoDNlOcfuFH2abZzB1U8uvC2o/8Ir7fR5YZt+LdGIrlF3faN3yNwF
	 Robblj8hGKYXOVdqA3QXLq/ZhxYwAcy/twyaxzo+nxM5SYRlX/DDarHrQraMabK4V3
	 u92mQ1xJneK26lIbFzLWdKsokQZOHdfQFLbyKmeVMt2lP11pd7k8KJGapMDVtmVugC
	 SOimfg4EkKGGvSdh/y3uYMuPBnGw4/xL3jS9HX65jdbI7nk5eB2ki4QUA0gKvvJeTc
	 PZ/5whD3tPSlHxAgLzjx0DlNJRstzc8iPpysnSsO50yw1/Oeq1SWsXo5YReWKOLZ6e
	 aeELQsENEQWwg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9CDC584558;
	Tue,  2 Sep 2025 09:01:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5A92D439
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 09:01:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3D3E140B4B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 09:01:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SSH56qXaLnKf for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Sep 2025 09:01:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=anton.nadezhdin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org ECD1740920
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ECD1740920
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ECD1740920
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 09:01:24 +0000 (UTC)
X-CSE-ConnectionGUID: NWi9FGwrQt2BAD/GTDdtaQ==
X-CSE-MsgGUID: YNUbxGU9S/if4VAw3ErXTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11540"; a="76666695"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="76666695"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 02:01:22 -0700
X-CSE-ConnectionGUID: khcWKVXTR4eSqRMYjj0g9w==
X-CSE-MsgGUID: bSmRbM77TFaWBZqVPl3IHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="176494124"
Received: from host59.igk.intel.com ([10.123.220.59])
 by fmviesa004.fm.intel.com with ESMTP; 02 Sep 2025 02:01:19 -0700
From: Anton Nadezhdin <anton.nadezhdin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 richardcochran@gmail.com, Milena Olech <milena.olech@intel.com>,
 Anton Nadezhdin <anton.nadezhdin@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Tue,  2 Sep 2025 06:50:23 -0400
Message-ID: <20250902105321.5750-2-anton.nadezhdin@intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20250902105321.5750-1-anton.nadezhdin@intel.com>
References: <20250902105321.5750-1-anton.nadezhdin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756803685; x=1788339685;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/xOyD6m3LWUgjU23AaWy3SNFc7l8Jq5cgTrTP1IWzMs=;
 b=KO6O8l8Z1ivf3qpSf5xsgg0Ug1bCOhF7BV5lbQgxUbu9sGuFlLCw1Y6t
 9B4pm3J4MeK6PmpNKRDxUYGY/Ta0t9bPlq6ifTYFA/dmCh5VjAVf4ePtQ
 8mzYs6JWmXZX6JMpvZQ2yyBq1s/zRVsbKfYrgQjb8/Cc0F9kmtPi1qsCz
 3UJq6vAdVmabZ09aSuEd/qO/PraaKk9C5qtFljznN+rA2bGWgIasXC5Zd
 e8P/BnzANZCo6wWbUIyjX/I/SJ1zfm8LcMGKw4FaVAQEftPfzABrRGfTc
 jHoqsvdInsYlxekM6xdq/Mtc4YluD57HiMMxdaGouIrZBw+3EGMfAHGrm
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KO6O8l8Z
Subject: [Intel-wired-lan] [PATCH iwl-next 1/2] idpf: add direct access to
 discipline the main timer
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

From: Milena Olech <milena.olech@intel.com>

IDPF allows to access the clock through virtchnl messages, or directly,
through PCI BAR registers. Registers offsets are negotiated with the
Control Plane during driver initialization process.
Add support for direct operations to modify the clock.

Signed-off-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |   4 +-
 drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 192 ++++++++++++++----
 drivers/net/ethernet/intel/idpf/idpf_ptp.h    |  60 +++---
 .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   |  31 +--
 4 files changed, 207 insertions(+), 80 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_dev.c
index a4625638cf3f..344975352fad 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_dev.c
@@ -171,8 +171,8 @@ static void idpf_trigger_reset(struct idpf_adapter *adapter,
  */
 static void idpf_ptp_reg_init(const struct idpf_adapter *adapter)
 {
-	adapter->ptp->cmd.shtime_enable_mask = PF_GLTSYN_CMD_SYNC_SHTIME_EN_M;
-	adapter->ptp->cmd.exec_cmd_mask = PF_GLTSYN_CMD_SYNC_EXEC_CMD_M;
+	adapter->ptp->cmd.shtime_enable = PF_GLTSYN_CMD_SYNC_SHTIME_EN_M;
+	adapter->ptp->cmd.exec_cmd = PF_GLTSYN_CMD_SYNC_EXEC_CMD_M;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
index 990e78686786..b19dbddf95bf 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
@@ -80,14 +80,30 @@ static void idpf_ptp_enable_shtime(struct idpf_adapter *adapter)
 	u32 shtime_enable, exec_cmd;
 
 	/* Get offsets */
-	shtime_enable = adapter->ptp->cmd.shtime_enable_mask;
-	exec_cmd = adapter->ptp->cmd.exec_cmd_mask;
+	shtime_enable = adapter->ptp->cmd.shtime_enable;
+	exec_cmd = adapter->ptp->cmd.exec_cmd;
 
 	/* Set the shtime en and the sync field */
 	writel(shtime_enable, adapter->ptp->dev_clk_regs.cmd_sync);
 	writel(exec_cmd | shtime_enable, adapter->ptp->dev_clk_regs.cmd_sync);
 }
 
+/**
+ * idpf_ptp_tmr_cmd - Prepare and trigger a timer sync command
+ * @adapter: Driver specific private structure
+ * @cmd: Command to be executed
+ */
+static void idpf_ptp_tmr_cmd(struct idpf_adapter *adapter, u32 cmd)
+{
+	struct idpf_ptp *ptp = adapter->ptp;
+	u32 exec_cmd = ptp->cmd.exec_cmd;
+
+	writel(cmd, ptp->dev_clk_regs.cmd);
+	writel(cmd, ptp->dev_clk_regs.phy_cmd);
+	writel(exec_cmd, ptp->dev_clk_regs.cmd_sync);
+	writel(0, ptp->dev_clk_regs.cmd);
+}
+
 /**
  * idpf_ptp_read_src_clk_reg_direct - Read directly the main timer value
  * @adapter: Driver specific private structure
@@ -139,7 +155,7 @@ static int idpf_ptp_read_src_clk_reg_mailbox(struct idpf_adapter *adapter,
 	/* Read the system timestamp pre PHC read */
 	ptp_read_system_prets(sts);
 
-	err = idpf_ptp_get_dev_clk_time(adapter, &clk_time);
+	err = idpf_ptp_get_dev_clk_time_mb(adapter, &clk_time);
 	if (err)
 		return err;
 
@@ -223,7 +239,7 @@ static int idpf_ptp_get_sync_device_time_mailbox(struct idpf_adapter *adapter,
 	struct idpf_ptp_dev_timers cross_time;
 	int err;
 
-	err = idpf_ptp_get_cross_time(adapter, &cross_time);
+	err = idpf_ptp_get_cross_time_mb(adapter, &cross_time);
 	if (err)
 		return err;
 
@@ -403,6 +419,33 @@ static int idpf_ptp_update_cached_phctime(struct idpf_adapter *adapter)
 	return 0;
 }
 
+/**
+ * idpf_ptp_set_dev_clk_time_direct- Set the time of the clock directly through
+ *				     BAR registers.
+ * @adapter: Driver specific private structure
+ * @dev_clk_time: Value expressed in nanoseconds to set
+ *
+ * Set the time of the device clock to provided value directly through BAR
+ * registers received during PTP capabilities negotiation.
+ */
+static void idpf_ptp_set_dev_clk_time_direct(struct idpf_adapter *adapter,
+					     u64 dev_clk_time)
+{
+	struct idpf_ptp *ptp = adapter->ptp;
+	u32 dev_clk_time_l, dev_clk_time_h;
+
+	dev_clk_time_l = lower_32_bits(dev_clk_time);
+	dev_clk_time_h = upper_32_bits(dev_clk_time);
+
+	writel(dev_clk_time_l, ptp->dev_clk_regs.dev_clk_ns_l);
+	writel(dev_clk_time_h, ptp->dev_clk_regs.dev_clk_ns_h);
+
+	writel(dev_clk_time_l, ptp->dev_clk_regs.phy_clk_ns_l);
+	writel(dev_clk_time_h, ptp->dev_clk_regs.phy_clk_ns_h);
+
+	idpf_ptp_tmr_cmd(adapter, ptp->cmd.init_time);
+}
+
 /**
  * idpf_ptp_settime64 - Set the time of the clock
  * @info: the driver's PTP info structure
@@ -422,16 +465,20 @@ static int idpf_ptp_settime64(struct ptp_clock_info *info,
 	u64 ns;
 
 	access = adapter->ptp->set_dev_clk_time_access;
-	if (access != IDPF_PTP_MAILBOX)
+	if (access == IDPF_PTP_NONE)
 		return -EOPNOTSUPP;
 
 	ns = timespec64_to_ns(ts);
 
-	err = idpf_ptp_set_dev_clk_time(adapter, ns);
-	if (err) {
-		pci_err(adapter->pdev, "Failed to set the time, err: %pe\n",
-			ERR_PTR(err));
-		return err;
+	if (access == IDPF_PTP_MAILBOX) {
+		err = idpf_ptp_set_dev_clk_time_mb(adapter, ns);
+		if (err) {
+			pci_err(adapter->pdev,
+				"Failed to set the time: %pe\n", ERR_PTR(err));
+			return err;
+		}
+	} else {
+		idpf_ptp_set_dev_clk_time_direct(adapter, ns);
 	}
 
 	err = idpf_ptp_update_cached_phctime(adapter);
@@ -464,6 +511,30 @@ static int idpf_ptp_adjtime_nonatomic(struct ptp_clock_info *info, s64 delta)
 	return idpf_ptp_settime64(info, &now);
 }
 
+/**
+ * idpf_ptp_adj_dev_clk_time_direct - Adjust the time of the clock directly
+ *				      through BAR registers.
+ * @adapter: Driver specific private structure
+ * @delta: Offset in nanoseconds to adjust the time by
+ *
+ * Adjust the time of the clock directly through BAR registers received during
+ * PTP capabilities negotiation.
+ */
+static void idpf_ptp_adj_dev_clk_time_direct(struct idpf_adapter *adapter,
+					     s64 delta)
+{
+	struct idpf_ptp *ptp = adapter->ptp;
+	u32 delta_l = (s32)delta;
+
+	writel(0, ptp->dev_clk_regs.shadj_l);
+	writel(delta_l, ptp->dev_clk_regs.shadj_h);
+
+	writel(0, ptp->dev_clk_regs.phy_shadj_l);
+	writel(delta_l, ptp->dev_clk_regs.phy_shadj_h);
+
+	idpf_ptp_tmr_cmd(adapter, ptp->cmd.adj_time);
+}
+
 /**
  * idpf_ptp_adjtime - Adjust the time of the clock by the indicated delta
  * @info: the driver's PTP info structure
@@ -478,7 +549,7 @@ static int idpf_ptp_adjtime(struct ptp_clock_info *info, s64 delta)
 	int err;
 
 	access = adapter->ptp->adj_dev_clk_time_access;
-	if (access != IDPF_PTP_MAILBOX)
+	if (access == IDPF_PTP_NONE)
 		return -EOPNOTSUPP;
 
 	/* Hardware only supports atomic adjustments using signed 32-bit
@@ -488,11 +559,16 @@ static int idpf_ptp_adjtime(struct ptp_clock_info *info, s64 delta)
 	if (delta > S32_MAX || delta < S32_MIN)
 		return idpf_ptp_adjtime_nonatomic(info, delta);
 
-	err = idpf_ptp_adj_dev_clk_time(adapter, delta);
-	if (err) {
-		pci_err(adapter->pdev, "Failed to adjust the clock with delta %lld err: %pe\n",
-			delta, ERR_PTR(err));
-		return err;
+	if (access == IDPF_PTP_MAILBOX) {
+		err = idpf_ptp_adj_dev_clk_time_mb(adapter, delta);
+		if (err) {
+			pci_err(adapter->pdev,
+				"Failed to adjust the clock with delta %lld err: %pe\n",
+				delta, ERR_PTR(err));
+			return err;
+		}
+	} else {
+		idpf_ptp_adj_dev_clk_time_direct(adapter, delta);
 	}
 
 	err = idpf_ptp_update_cached_phctime(adapter);
@@ -503,6 +579,33 @@ static int idpf_ptp_adjtime(struct ptp_clock_info *info, s64 delta)
 	return 0;
 }
 
+/**
+ * idpf_ptp_adj_dev_clk_fine_direct - Adjust clock increment rate directly
+ *				      through BAR registers.
+ * @adapter: Driver specific private structure
+ * @incval: Source timer increment value per clock cycle
+ *
+ * Adjust clock increment rate directly through BAR registers received during
+ * PTP capabilities negotiation.
+ */
+static void idpf_ptp_adj_dev_clk_fine_direct(struct idpf_adapter *adapter,
+					     u64 incval)
+{
+	struct idpf_ptp *ptp = adapter->ptp;
+	u32 incval_l, incval_h;
+
+	incval_l = lower_32_bits(incval);
+	incval_h = upper_32_bits(incval);
+
+	writel(incval_l, ptp->dev_clk_regs.shadj_l);
+	writel(incval_h, ptp->dev_clk_regs.shadj_h);
+
+	writel(incval_l, ptp->dev_clk_regs.phy_shadj_l);
+	writel(incval_h, ptp->dev_clk_regs.phy_shadj_h);
+
+	idpf_ptp_tmr_cmd(adapter, ptp->cmd.init_incval);
+}
+
 /**
  * idpf_ptp_adjfine - Adjust clock increment rate
  * @info: the driver's PTP info structure
@@ -521,16 +624,22 @@ static int idpf_ptp_adjfine(struct ptp_clock_info *info, long scaled_ppm)
 	int err;
 
 	access = adapter->ptp->adj_dev_clk_time_access;
-	if (access != IDPF_PTP_MAILBOX)
+	if (access == IDPF_PTP_NONE)
 		return -EOPNOTSUPP;
 
 	incval = adapter->ptp->base_incval;
-
 	diff = adjust_by_scaled_ppm(incval, scaled_ppm);
-	err = idpf_ptp_adj_dev_clk_fine(adapter, diff);
-	if (err)
-		pci_err(adapter->pdev, "Failed to adjust clock increment rate for scaled ppm %ld %pe\n",
-			scaled_ppm, ERR_PTR(err));
+
+	if (access == IDPF_PTP_MAILBOX) {
+		err = idpf_ptp_adj_dev_clk_fine_mb(adapter, diff);
+		if (err) {
+			pci_err(adapter->pdev,
+				"Failed to adjust clock increment rate\n");
+			return err;
+		}
+	} else {
+		idpf_ptp_adj_dev_clk_fine_direct(adapter, diff);
+	}
 
 	return 0;
 }
@@ -757,7 +866,7 @@ void idpf_tstamp_task(struct work_struct *work)
 
 	vport = container_of(work, struct idpf_vport, tstamp_task);
 
-	idpf_ptp_get_tx_tstamp(vport);
+	idpf_ptp_get_tx_tstamp_mb(vport);
 }
 
 /**
@@ -928,6 +1037,7 @@ bool idpf_ptp_get_txq_tstamp_capability(struct idpf_tx_queue *txq)
  */
 int idpf_ptp_init(struct idpf_adapter *adapter)
 {
+	struct idpf_ptp *ptp;
 	struct timespec64 ts;
 	int err;
 
@@ -940,8 +1050,10 @@ int idpf_ptp_init(struct idpf_adapter *adapter)
 	if (!adapter->ptp)
 		return -ENOMEM;
 
+	ptp = adapter->ptp;
+
 	/* add a back pointer to adapter */
-	adapter->ptp->adapter = adapter;
+	ptp->adapter = adapter;
 
 	if (adapter->dev_ops.reg_ops.ptp_reg_init)
 		adapter->dev_ops.reg_ops.ptp_reg_init(adapter);
@@ -951,47 +1063,51 @@ int idpf_ptp_init(struct idpf_adapter *adapter)
 		pci_err(adapter->pdev, "Failed to get PTP caps err %d\n", err);
 		goto free_ptp;
 	}
+	/* Do not initialize the PTP if the device clock time cannot be read. */
+	if (ptp->get_dev_clk_time_access == IDPF_PTP_NONE) {
+		err = -EIO;
+		goto free_ptp;
+	}
 
 	err = idpf_ptp_create_clock(adapter);
 	if (err)
 		goto free_ptp;
-
-	if (adapter->ptp->get_dev_clk_time_access != IDPF_PTP_NONE)
-		ptp_schedule_worker(adapter->ptp->clock, 0);
+	ptp_schedule_worker(ptp->clock, 0);
 
 	/* Write the default increment time value if the clock adjustments
 	 * are enabled.
 	 */
-	if (adapter->ptp->adj_dev_clk_time_access != IDPF_PTP_NONE) {
-		err = idpf_ptp_adj_dev_clk_fine(adapter,
-						adapter->ptp->base_incval);
+	if (ptp->adj_dev_clk_time_access == IDPF_PTP_MAILBOX) {
+		err = idpf_ptp_adj_dev_clk_fine_mb(adapter, ptp->base_incval);
 		if (err)
 			goto remove_clock;
+	} else if (ptp->adj_dev_clk_time_access == IDPF_PTP_DIRECT) {
+		idpf_ptp_adj_dev_clk_fine_direct(adapter, ptp->base_incval);
 	}
 
 	/* Write the initial time value if the set time operation is enabled */
-	if (adapter->ptp->set_dev_clk_time_access != IDPF_PTP_NONE) {
+	if (ptp->set_dev_clk_time_access != IDPF_PTP_NONE) {
 		ts = ktime_to_timespec64(ktime_get_real());
-		err = idpf_ptp_settime64(&adapter->ptp->info, &ts);
+		err = idpf_ptp_settime64(&ptp->info, &ts);
 		if (err)
 			goto remove_clock;
 	}
 
-	spin_lock_init(&adapter->ptp->read_dev_clk_lock);
+	spin_lock_init(&ptp->read_dev_clk_lock);
 
 	pci_dbg(adapter->pdev, "PTP init successful\n");
 
 	return 0;
 
 remove_clock:
-	if (adapter->ptp->get_dev_clk_time_access != IDPF_PTP_NONE)
-		ptp_cancel_worker_sync(adapter->ptp->clock);
+	if (ptp->get_dev_clk_time_access != IDPF_PTP_NONE)
+		ptp_cancel_worker_sync(ptp->clock);
 
-	ptp_clock_unregister(adapter->ptp->clock);
-	adapter->ptp->clock = NULL;
+	ptp_clock_unregister(ptp->clock);
+	ptp->clock = NULL;
 
 free_ptp:
-	kfree(adapter->ptp);
+	kfree(ptp);
 	adapter->ptp = NULL;
 
 	return err;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.h b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
index 785da03e4cf5..26cc616f420c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ptp.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
@@ -7,13 +7,21 @@
 #include <linux/ptp_clock_kernel.h>
 
 /**
- * struct idpf_ptp_cmd - PTP command masks
- * @exec_cmd_mask: mask to trigger command execution
- * @shtime_enable_mask: mask to enable shadow time
+ * struct idpf_ptp_cmd_mask - PTP command masks
+ * @exec_cmd: mask to trigger command execution
+ * @shtime_enable: mask to enable shadow time
+ * @init_time: initialize the device clock timer
+ * @init_incval: initialize increment value
+ * @adj_time: adjust the device clock timer
+ * @read_time: read the device clock timer
  */
-struct idpf_ptp_cmd {
-	u32 exec_cmd_mask;
-	u32 shtime_enable_mask;
+struct idpf_ptp_cmd_mask {
+	u32 exec_cmd;
+	u32 shtime_enable;
+	u32 init_time;
+	u32 init_incval;
+	u32 adj_time;
+	u32 read_time;
 };
 
 /* struct idpf_ptp_dev_clk_regs - PTP device registers
@@ -183,7 +191,7 @@ struct idpf_ptp {
 	struct idpf_adapter *adapter;
 	u64 base_incval;
 	u64 max_adj;
-	struct idpf_ptp_cmd cmd;
+	struct idpf_ptp_cmd_mask cmd;
 	u64 cached_phc_time;
 	unsigned long cached_phc_jiffies;
 	struct idpf_ptp_dev_clk_regs dev_clk_regs;
@@ -270,15 +278,15 @@ void idpf_ptp_release(struct idpf_adapter *adapter);
 int idpf_ptp_get_caps(struct idpf_adapter *adapter);
 void idpf_ptp_get_features_access(const struct idpf_adapter *adapter);
 bool idpf_ptp_get_txq_tstamp_capability(struct idpf_tx_queue *txq);
-int idpf_ptp_get_dev_clk_time(struct idpf_adapter *adapter,
-			      struct idpf_ptp_dev_timers *dev_clk_time);
-int idpf_ptp_get_cross_time(struct idpf_adapter *adapter,
-			    struct idpf_ptp_dev_timers *cross_time);
-int idpf_ptp_set_dev_clk_time(struct idpf_adapter *adapter, u64 time);
-int idpf_ptp_adj_dev_clk_fine(struct idpf_adapter *adapter, u64 incval);
-int idpf_ptp_adj_dev_clk_time(struct idpf_adapter *adapter, s64 delta);
+int idpf_ptp_get_cross_time_mb(struct idpf_adapter *adapter,
+			       struct idpf_ptp_dev_timers *cross_time);
+int idpf_ptp_get_dev_clk_time_mb(struct idpf_adapter *adapter,
+				 struct idpf_ptp_dev_timers *dev_clk_time);
+int idpf_ptp_set_dev_clk_time_mb(struct idpf_adapter *adapter, u64 time);
+int idpf_ptp_adj_dev_clk_fine_mb(struct idpf_adapter *adapter, u64 incval);
+int idpf_ptp_adj_dev_clk_time_mb(struct idpf_adapter *adapter, s64 delta);
 int idpf_ptp_get_vport_tstamps_caps(struct idpf_vport *vport);
-int idpf_ptp_get_tx_tstamp(struct idpf_vport *vport);
+int idpf_ptp_get_tx_tstamp_mb(struct idpf_vport *vport);
 int idpf_ptp_set_timestamp_mode(struct idpf_vport *vport,
 				struct kernel_hwtstamp_config *config);
 u64 idpf_ptp_extend_ts(struct idpf_vport *vport, u64 in_tstamp);
@@ -309,33 +317,33 @@ idpf_ptp_get_txq_tstamp_capability(struct idpf_tx_queue *txq)
 }
 
 static inline int
-idpf_ptp_get_dev_clk_time(struct idpf_adapter *adapter,
-			  struct idpf_ptp_dev_timers *dev_clk_time)
+idpf_ptp_get_dev_clk_time_mb(struct idpf_adapter *adapter,
+			     struct idpf_ptp_dev_timers *dev_clk_time)
 {
 	return -EOPNOTSUPP;
 }
 
 static inline int
-idpf_ptp_get_cross_time(struct idpf_adapter *adapter,
-			struct idpf_ptp_dev_timers *cross_time)
+idpf_ptp_get_cross_time_mb(struct idpf_adapter *adapter,
+			   struct idpf_ptp_dev_timers *cross_time)
 {
 	return -EOPNOTSUPP;
 }
 
-static inline int idpf_ptp_set_dev_clk_time(struct idpf_adapter *adapter,
-					    u64 time)
+static inline int idpf_ptp_set_dev_clk_time_mb(struct idpf_adapter *adapter,
+					       u64 time)
 {
 	return -EOPNOTSUPP;
 }
 
-static inline int idpf_ptp_adj_dev_clk_fine(struct idpf_adapter *adapter,
-					    u64 incval)
+static inline int idpf_ptp_adj_dev_clk_fine_mb(struct idpf_adapter *adapter,
+					       u64 incval)
 {
 	return -EOPNOTSUPP;
 }
 
-static inline int idpf_ptp_adj_dev_clk_time(struct idpf_adapter *adapter,
-					    s64 delta)
+static inline int idpf_ptp_adj_dev_clk_time_mb(struct idpf_adapter *adapter,
+					       s64 delta)
 {
 	return -EOPNOTSUPP;
 }
@@ -345,7 +353,7 @@ static inline int idpf_ptp_get_vport_tstamps_caps(struct idpf_vport *vport)
 	return -EOPNOTSUPP;
 }
 
-static inline int idpf_ptp_get_tx_tstamp(struct idpf_vport *vport)
+static inline int idpf_ptp_get_tx_tstamp_mb(struct idpf_vport *vport)
 {
 	return -EOPNOTSUPP;
 }
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
index 61cedb6f2854..f85caba92b17 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
@@ -20,7 +20,10 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
 		.caps = cpu_to_le32(VIRTCHNL2_CAP_PTP_GET_DEVICE_CLK_TIME |
 				    VIRTCHNL2_CAP_PTP_GET_DEVICE_CLK_TIME_MB |
 				    VIRTCHNL2_CAP_PTP_GET_CROSS_TIME |
+				    VIRTCHNL2_CAP_PTP_GET_CROSS_TIME_MB |
+				    VIRTCHNL2_CAP_PTP_SET_DEVICE_CLK_TIME |
 				    VIRTCHNL2_CAP_PTP_SET_DEVICE_CLK_TIME_MB |
+				    VIRTCHNL2_CAP_PTP_ADJ_DEVICE_CLK |
 				    VIRTCHNL2_CAP_PTP_ADJ_DEVICE_CLK_MB |
 				    VIRTCHNL2_CAP_PTP_TX_TSTAMPS_MB)
 	};
@@ -144,7 +147,7 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
 }
 
 /**
- * idpf_ptp_get_dev_clk_time - Send virtchnl get device clk time message
+ * idpf_ptp_get_dev_clk_time_mb - Send virtchnl get device clk time message
  * @adapter: Driver specific private structure
  * @dev_clk_time: Pointer to the device clock structure where the value is set
  *
@@ -152,8 +155,8 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
  *
  * Return: 0 on success, -errno otherwise.
  */
-int idpf_ptp_get_dev_clk_time(struct idpf_adapter *adapter,
-			      struct idpf_ptp_dev_timers *dev_clk_time)
+int idpf_ptp_get_dev_clk_time_mb(struct idpf_adapter *adapter,
+				 struct idpf_ptp_dev_timers *dev_clk_time)
 {
 	struct virtchnl2_ptp_get_dev_clk_time get_dev_clk_time_msg;
 	struct idpf_vc_xn_params xn_params = {
@@ -180,7 +183,7 @@ int idpf_ptp_get_dev_clk_time(struct idpf_adapter *adapter,
 }
 
 /**
- * idpf_ptp_get_cross_time - Send virtchnl get cross time message
+ * idpf_ptp_get_cross_time_mb - Send virtchnl get cross time message
  * @adapter: Driver specific private structure
  * @cross_time: Pointer to the device clock structure where the value is set
  *
@@ -189,8 +192,8 @@ int idpf_ptp_get_dev_clk_time(struct idpf_adapter *adapter,
  *
  * Return: 0 on success, -errno otherwise.
  */
-int idpf_ptp_get_cross_time(struct idpf_adapter *adapter,
-			    struct idpf_ptp_dev_timers *cross_time)
+int idpf_ptp_get_cross_time_mb(struct idpf_adapter *adapter,
+			       struct idpf_ptp_dev_timers *cross_time)
 {
 	struct virtchnl2_ptp_get_cross_time cross_time_msg;
 	struct idpf_vc_xn_params xn_params = {
@@ -216,7 +219,7 @@ int idpf_ptp_get_cross_time(struct idpf_adapter *adapter,
 }
 
 /**
- * idpf_ptp_set_dev_clk_time - Send virtchnl set device time message
+ * idpf_ptp_set_dev_clk_time_mb - Send virtchnl set device time message
  * @adapter: Driver specific private structure
  * @time: New time value
  *
@@ -224,7 +227,7 @@ int idpf_ptp_get_cross_time(struct idpf_adapter *adapter,
  *
  * Return: 0 on success, -errno otherwise.
  */
-int idpf_ptp_set_dev_clk_time(struct idpf_adapter *adapter, u64 time)
+int idpf_ptp_set_dev_clk_time_mb(struct idpf_adapter *adapter, u64 time)
 {
 	struct virtchnl2_ptp_set_dev_clk_time set_dev_clk_time_msg = {
 		.dev_time_ns = cpu_to_le64(time),
@@ -249,7 +252,7 @@ int idpf_ptp_set_dev_clk_time(struct idpf_adapter *adapter, u64 time)
 }
 
 /**
- * idpf_ptp_adj_dev_clk_time - Send virtchnl adj device clock time message
+ * idpf_ptp_adj_dev_clk_time_mb - Send virtchnl adj device clock time message
  * @adapter: Driver specific private structure
  * @delta: Offset in nanoseconds to adjust the time by
  *
@@ -257,7 +260,7 @@ int idpf_ptp_set_dev_clk_time(struct idpf_adapter *adapter, u64 time)
  *
  * Return: 0 on success, -errno otherwise.
  */
-int idpf_ptp_adj_dev_clk_time(struct idpf_adapter *adapter, s64 delta)
+int idpf_ptp_adj_dev_clk_time_mb(struct idpf_adapter *adapter, s64 delta)
 {
 	struct virtchnl2_ptp_adj_dev_clk_time adj_dev_clk_time_msg = {
 		.delta = cpu_to_le64(delta),
@@ -282,7 +285,7 @@ int idpf_ptp_adj_dev_clk_time(struct idpf_adapter *adapter, s64 delta)
 }
 
 /**
- * idpf_ptp_adj_dev_clk_fine - Send virtchnl adj time message
+ * idpf_ptp_adj_dev_clk_fine_mb - Send virtchnl adj time message
  * @adapter: Driver specific private structure
  * @incval: Source timer increment value per clock cycle
  *
@@ -291,7 +294,7 @@ int idpf_ptp_adj_dev_clk_time(struct idpf_adapter *adapter, s64 delta)
  *
  * Return: 0 on success, -errno otherwise.
  */
-int idpf_ptp_adj_dev_clk_fine(struct idpf_adapter *adapter, u64 incval)
+int idpf_ptp_adj_dev_clk_fine_mb(struct idpf_adapter *adapter, u64 incval)
 {
 	struct virtchnl2_ptp_adj_dev_clk_fine adj_dev_clk_fine_msg = {
 		.incval = cpu_to_le64(incval),
@@ -610,7 +613,7 @@ idpf_ptp_get_tx_tstamp_async_handler(struct idpf_adapter *adapter,
 }
 
 /**
- * idpf_ptp_get_tx_tstamp - Send virtchnl get Tx timestamp latches message
+ * idpf_ptp_get_tx_tstamp_mb - Send virtchnl get Tx timestamp latches message
  * @vport: Virtual port structure
  *
  * Send virtchnl get Tx tstamp message to read the value of the HW timestamp.
@@ -618,7 +621,7 @@ idpf_ptp_get_tx_tstamp_async_handler(struct idpf_adapter *adapter,
  *
  * Return: 0 on success, -errno otherwise.
  */
-int idpf_ptp_get_tx_tstamp(struct idpf_vport *vport)
+int idpf_ptp_get_tx_tstamp_mb(struct idpf_vport *vport)
 {
 	struct virtchnl2_ptp_get_vport_tx_tstamp_latches *send_tx_tstamp_msg;
 	struct idpf_ptp_vport_tx_tstamp_caps *tx_tstamp_caps;
-- 
2.42.0

