Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB89A8B90B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Apr 2025 14:29:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D3B6D6F71A;
	Wed, 16 Apr 2025 12:29:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 94_-eryEcjLT; Wed, 16 Apr 2025 12:29:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63AA86F70A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744806571;
	bh=v8P+x5FP5MCktG/IpcMBctiZLa+mtzDpsXXrPYTKIuY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wChaAr5UeNza9+n5ZNtN9upjP47h2hrEYL3wVPF0lRFzzGNISm9dNzp6+NUomEymH
	 /46UavOxKRf857yVBmvkK9qqHBahZa5T0Le8lFAhvgj1MrH2WnIvvBgdrxQhghU2UJ
	 3c4p/vdfr7NPAFpEXO+elm2ORg5SzDrqNYRXqoCNE89qMgtRnF+8b33Sa3MSlRVnlP
	 S4CPVm+Ro9Vfl2LwOsCNXfayWYjgh9S7fPmjpPnbJRKJssBJoAHjyBHdn1owHn3SIL
	 4vz7wMOClr7uy5H42vb6uYDabXaIlsdqeU1XUfiyzzeRiKq3ODdDqb3Dkx6PBSeE2d
	 4x+H3NL4gMGuw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 63AA86F70A;
	Wed, 16 Apr 2025 12:29:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9C8B3E83
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 12:29:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 825904017A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 12:29:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RSt_-OZizSmE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 12:29:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 81B6B400DA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 81B6B400DA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 81B6B400DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 12:29:29 +0000 (UTC)
X-CSE-ConnectionGUID: pzpbofPAQLuKCeGzLfXcVg==
X-CSE-MsgGUID: WaiLUKwURjeEg+kS+tg+Aw==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="46232507"
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="46232507"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 05:29:24 -0700
X-CSE-ConnectionGUID: Yq2AVapUT92epVZ2wvbU/w==
X-CSE-MsgGUID: dL1/zHrKQmWxHRf3b24nVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="130479768"
Received: from gklab-003-014.igk.intel.com ([10.211.116.96])
 by fmviesa007.fm.intel.com with ESMTP; 16 Apr 2025 05:29:22 -0700
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Willem de Bruijn <willemb@google.com>,
 Mina Almasry <almasrymina@google.com>,
 Samuel Salin <Samuel.salin@intel.com>
Date: Wed, 16 Apr 2025 14:19:08 +0200
Message-ID: <20250416122142.86176-12-milena.olech@intel.com>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <20250416122142.86176-2-milena.olech@intel.com>
References: <20250416122142.86176-2-milena.olech@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744806569; x=1776342569;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BCWKC1RB1asqD076Zc0HMgai9J/a64iD8RwbZGyoLGE=;
 b=UgDafjGjMmRtvumDyvVHqLRDOAPKWzuHbifUOsh+iDon1+sHWjlHXLRz
 mtmszXPEZ9rLEPVJ7JBM1cEsoQRRq2IL+tVQpcFKA22mu8xe2busYhBxb
 r4wyZ1Y5jHh55JFel5r8wlPey3MdNN4AZ6MuEDlVq9HIDkK/vK+weqaRW
 BHS/sUVpHstgPcFjh/wZBn8rTtVykxjUwEsEyKK/kT48nuH0rxAQZDeGT
 854Nt3WZ/TQtvgBFT9E4A04esby5y99aAPlO6F8Ve4U4Vj7E2V8DGED2m
 ICVkA0tXuydRk51qEehYRMQdZr6bLLz+FViU7SoOiFVb/NlO2ic4AdZ0k
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UgDafjGj
Subject: [Intel-wired-lan] [PATCH v12 iwl-next 05/11] idpf: negotiate PTP
 capabilities and get PTP clock
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

PTP capabilities are negotiated using virtchnl command. Add get
capabilities function, direct access to read the PTP clock.
Set initial PTP capabilities exposed to the stack.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Milena Olech <milena.olech@intel.com>
Tested-by: Willem de Bruijn <willemb@google.com>
Tested-by: Mina Almasry <almasrymina@google.com>
Tested-by: Samuel Salin <Samuel.salin@intel.com>
---
v9 -> v10: remove cross timestamping, add spinlock to protect device
clock read operation, change device clock read latch mechanism
v1 -> v2: change the size of access fields in ptp struct,
remove CONFIG_PCIE_PTM dependency

 drivers/net/ethernet/intel/idpf/Makefile      |   2 +
 drivers/net/ethernet/intel/idpf/idpf.h        |   2 +
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |  14 ++
 .../ethernet/intel/idpf/idpf_lan_pf_regs.h    |   4 +
 drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 170 ++++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_ptp.h    |  84 +++++++++
 .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   |  78 ++++++++
 7 files changed, 354 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c

diff --git a/drivers/net/ethernet/intel/idpf/Makefile b/drivers/net/ethernet/intel/idpf/Makefile
index 1f38a9d7125c..83ac5e296382 100644
--- a/drivers/net/ethernet/intel/idpf/Makefile
+++ b/drivers/net/ethernet/intel/idpf/Makefile
@@ -17,4 +17,6 @@ idpf-y := \
 	idpf_vf_dev.o
 
 idpf-$(CONFIG_IDPF_SINGLEQ)	+= idpf_singleq_txrx.o
+
 idpf-$(CONFIG_PTP_1588_CLOCK)	+= idpf_ptp.o
+idpf-$(CONFIG_PTP_1588_CLOCK)	+= idpf_virtchnl_ptp.o
diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index dbed71f894cd..eb80b7f1e912 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -191,6 +191,7 @@ struct idpf_vport_max_q {
  * @mb_intr_reg_init: Mailbox interrupt register initialization
  * @reset_reg_init: Reset register initialization
  * @trigger_reset: Trigger a reset to occur
+ * @ptp_reg_init: PTP register initialization
  */
 struct idpf_reg_ops {
 	void (*ctlq_reg_init)(struct idpf_ctlq_create_info *cq);
@@ -199,6 +200,7 @@ struct idpf_reg_ops {
 	void (*reset_reg_init)(struct idpf_adapter *adapter);
 	void (*trigger_reset)(struct idpf_adapter *adapter,
 			      enum idpf_flags trig_cause);
+	void (*ptp_reg_init)(const struct idpf_adapter *adapter);
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_dev.c
index 41e4bd49402a..3fae81f1f988 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_dev.c
@@ -4,6 +4,7 @@
 #include "idpf.h"
 #include "idpf_lan_pf_regs.h"
 #include "idpf_virtchnl.h"
+#include "idpf_ptp.h"
 
 #define IDPF_PF_ITR_IDX_SPACING		0x4
 
@@ -148,6 +149,18 @@ static void idpf_trigger_reset(struct idpf_adapter *adapter,
 	       idpf_get_reg_addr(adapter, PFGEN_CTRL));
 }
 
+/**
+ * idpf_ptp_reg_init - Initialize required registers
+ * @adapter: Driver specific private structure
+ *
+ * Set the bits required for enabling shtime and cmd execution
+ */
+static void idpf_ptp_reg_init(const struct idpf_adapter *adapter)
+{
+	adapter->ptp->cmd.shtime_enable_mask = PF_GLTSYN_CMD_SYNC_SHTIME_EN_M;
+	adapter->ptp->cmd.exec_cmd_mask = PF_GLTSYN_CMD_SYNC_EXEC_CMD_M;
+}
+
 /**
  * idpf_reg_ops_init - Initialize register API function pointers
  * @adapter: Driver specific private structure
@@ -159,6 +172,7 @@ static void idpf_reg_ops_init(struct idpf_adapter *adapter)
 	adapter->dev_ops.reg_ops.mb_intr_reg_init = idpf_mb_intr_reg_init;
 	adapter->dev_ops.reg_ops.reset_reg_init = idpf_reset_reg_init;
 	adapter->dev_ops.reg_ops.trigger_reset = idpf_trigger_reset;
+	adapter->dev_ops.reg_ops.ptp_reg_init = idpf_ptp_reg_init;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lan_pf_regs.h b/drivers/net/ethernet/intel/idpf/idpf_lan_pf_regs.h
index 24edb8a6ec2e..cc9aa2b6a14a 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lan_pf_regs.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_lan_pf_regs.h
@@ -53,6 +53,10 @@
 #define PF_FW_ATQH_ATQH_M		GENMASK(9, 0)
 #define PF_FW_ATQT			(PF_FW_BASE + 0x24)
 
+/* Timesync registers */
+#define PF_GLTSYN_CMD_SYNC_EXEC_CMD_M	GENMASK(1, 0)
+#define PF_GLTSYN_CMD_SYNC_SHTIME_EN_M	BIT(2)
+
 /* Interrupts */
 #define PF_GLINT_BASE			0x08900000
 #define PF_GLINT_DYN_CTL(_INT)		(PF_GLINT_BASE + ((_INT) * 0x1000))
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
index 1ac6367f5989..cb27a8ee3acc 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
@@ -4,6 +4,163 @@
 #include "idpf.h"
 #include "idpf_ptp.h"
 
+/**
+ * idpf_ptp_get_access - Determine the access type of the PTP features
+ * @adapter: Driver specific private structure
+ * @direct: Capability that indicates the direct access
+ * @mailbox: Capability that indicates the mailbox access
+ *
+ * Return: the type of supported access for the PTP feature.
+ */
+static enum idpf_ptp_access
+idpf_ptp_get_access(const struct idpf_adapter *adapter, u32 direct, u32 mailbox)
+{
+	if (adapter->ptp->caps & direct)
+		return IDPF_PTP_DIRECT;
+	else if (adapter->ptp->caps & mailbox)
+		return IDPF_PTP_MAILBOX;
+	else
+		return IDPF_PTP_NONE;
+}
+
+/**
+ * idpf_ptp_get_features_access - Determine the access type of PTP features
+ * @adapter: Driver specific private structure
+ *
+ * Fulfill the adapter structure with type of the supported PTP features
+ * access.
+ */
+void idpf_ptp_get_features_access(const struct idpf_adapter *adapter)
+{
+	struct idpf_ptp *ptp = adapter->ptp;
+	u32 direct, mailbox;
+
+	/* Get the device clock time */
+	direct = VIRTCHNL2_CAP_PTP_GET_DEVICE_CLK_TIME;
+	mailbox = VIRTCHNL2_CAP_PTP_GET_DEVICE_CLK_TIME_MB;
+	ptp->get_dev_clk_time_access = idpf_ptp_get_access(adapter,
+							   direct,
+							   mailbox);
+}
+
+/**
+ * idpf_ptp_enable_shtime - Enable shadow time and execute a command
+ * @adapter: Driver specific private structure
+ */
+static void idpf_ptp_enable_shtime(struct idpf_adapter *adapter)
+{
+	u32 shtime_enable, exec_cmd;
+
+	/* Get offsets */
+	shtime_enable = adapter->ptp->cmd.shtime_enable_mask;
+	exec_cmd = adapter->ptp->cmd.exec_cmd_mask;
+
+	/* Set the shtime en and the sync field */
+	writel(shtime_enable, adapter->ptp->dev_clk_regs.cmd_sync);
+	writel(exec_cmd | shtime_enable, adapter->ptp->dev_clk_regs.cmd_sync);
+}
+
+/**
+ * idpf_ptp_read_src_clk_reg_direct - Read directly the main timer value
+ * @adapter: Driver specific private structure
+ * @sts: Optional parameter for holding a pair of system timestamps from
+ *	 the system clock. Will be ignored when NULL is given.
+ *
+ * Return: the device clock time.
+ */
+static u64 idpf_ptp_read_src_clk_reg_direct(struct idpf_adapter *adapter,
+					    struct ptp_system_timestamp *sts)
+{
+	struct idpf_ptp *ptp = adapter->ptp;
+	u32 hi, lo;
+
+	spin_lock(&ptp->read_dev_clk_lock);
+
+	/* Read the system timestamp pre PHC read */
+	ptp_read_system_prets(sts);
+
+	idpf_ptp_enable_shtime(adapter);
+
+	/* Read the system timestamp post PHC read */
+	ptp_read_system_postts(sts);
+
+	lo = readl(ptp->dev_clk_regs.dev_clk_ns_l);
+	hi = readl(ptp->dev_clk_regs.dev_clk_ns_h);
+
+	spin_unlock(&ptp->read_dev_clk_lock);
+
+	return ((u64)hi << 32) | lo;
+}
+
+/**
+ * idpf_ptp_read_src_clk_reg - Read the main timer value
+ * @adapter: Driver specific private structure
+ * @src_clk: Returned main timer value in nanoseconds unit
+ * @sts: Optional parameter for holding a pair of system timestamps from
+ *	 the system clock. Will be ignored if NULL is given.
+ *
+ * Return: the device clock time on success, -errno otherwise.
+ */
+static int idpf_ptp_read_src_clk_reg(struct idpf_adapter *adapter, u64 *src_clk,
+				     struct ptp_system_timestamp *sts)
+{
+	switch (adapter->ptp->get_dev_clk_time_access) {
+	case IDPF_PTP_NONE:
+		return -EOPNOTSUPP;
+	case IDPF_PTP_DIRECT:
+		*src_clk = idpf_ptp_read_src_clk_reg_direct(adapter, sts);
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	return 0;
+}
+
+/**
+ * idpf_ptp_gettimex64 - Get the time of the clock
+ * @info: the driver's PTP info structure
+ * @ts: timespec64 structure to hold the current time value
+ * @sts: Optional parameter for holding a pair of system timestamps from
+ *	 the system clock. Will be ignored if NULL is given.
+ *
+ * Return: the device clock value in ns, after converting it into a timespec
+ * struct on success, -errno otherwise.
+ */
+static int idpf_ptp_gettimex64(struct ptp_clock_info *info,
+			       struct timespec64 *ts,
+			       struct ptp_system_timestamp *sts)
+{
+	struct idpf_adapter *adapter = idpf_ptp_info_to_adapter(info);
+	u64 time_ns;
+	int err;
+
+	err = idpf_ptp_read_src_clk_reg(adapter, &time_ns, sts);
+	if (err)
+		return -EACCES;
+
+	*ts = ns_to_timespec64(time_ns);
+
+	return 0;
+}
+
+/**
+ * idpf_ptp_set_caps - Set PTP capabilities
+ * @adapter: Driver specific private structure
+ *
+ * This function sets the PTP functions.
+ */
+static void idpf_ptp_set_caps(const struct idpf_adapter *adapter)
+{
+	struct ptp_clock_info *info = &adapter->ptp->info;
+
+	snprintf(info->name, sizeof(info->name), "%s-%s-clk",
+		 KBUILD_MODNAME, pci_name(adapter->pdev));
+
+	info->owner = THIS_MODULE;
+	info->gettimex64 = idpf_ptp_gettimex64;
+}
+
 /**
  * idpf_ptp_create_clock - Create PTP clock device for userspace
  * @adapter: Driver specific private structure
@@ -16,6 +173,8 @@ static int idpf_ptp_create_clock(const struct idpf_adapter *adapter)
 {
 	struct ptp_clock *clock;
 
+	idpf_ptp_set_caps(adapter);
+
 	/* Attempt to register the clock before enabling the hardware. */
 	clock = ptp_clock_register(&adapter->ptp->info,
 				   &adapter->pdev->dev);
@@ -55,10 +214,21 @@ int idpf_ptp_init(struct idpf_adapter *adapter)
 	/* add a back pointer to adapter */
 	adapter->ptp->adapter = adapter;
 
+	if (adapter->dev_ops.reg_ops.ptp_reg_init)
+		adapter->dev_ops.reg_ops.ptp_reg_init(adapter);
+
+	err = idpf_ptp_get_caps(adapter);
+	if (err) {
+		pci_err(adapter->pdev, "Failed to get PTP caps err %d\n", err);
+		goto free_ptp;
+	}
+
 	err = idpf_ptp_create_clock(adapter);
 	if (err)
 		goto free_ptp;
 
+	spin_lock_init(&adapter->ptp->read_dev_clk_lock);
+
 	pci_dbg(adapter->pdev, "PTP init successful\n");
 
 	return 0;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.h b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
index d009417bf947..955d697e51ab 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ptp.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
@@ -6,21 +6,96 @@
 
 #include <linux/ptp_clock_kernel.h>
 
+/**
+ * struct idpf_ptp_cmd - PTP command masks
+ * @exec_cmd_mask: mask to trigger command execution
+ * @shtime_enable_mask: mask to enable shadow time
+ */
+struct idpf_ptp_cmd {
+	u32 exec_cmd_mask;
+	u32 shtime_enable_mask;
+};
+
+/* struct idpf_ptp_dev_clk_regs - PTP device registers
+ * @dev_clk_ns_l: low part of the device clock register
+ * @dev_clk_ns_h: high part of the device clock register
+ * @phy_clk_ns_l: low part of the PHY clock register
+ * @phy_clk_ns_h: high part of the PHY clock register
+ * @cmd: PTP command register
+ * @phy_cmd: PHY command register
+ * @cmd_sync: PTP command synchronization register
+ */
+struct idpf_ptp_dev_clk_regs {
+	/* Main clock */
+	void __iomem *dev_clk_ns_l;
+	void __iomem *dev_clk_ns_h;
+
+	/* PHY timer */
+	void __iomem *phy_clk_ns_l;
+	void __iomem *phy_clk_ns_h;
+
+	/* Command */
+	void __iomem *cmd;
+	void __iomem *phy_cmd;
+	void __iomem *cmd_sync;
+};
+
+/**
+ * enum idpf_ptp_access - the type of access to PTP operations
+ * @IDPF_PTP_NONE: no access
+ * @IDPF_PTP_DIRECT: direct access through BAR registers
+ * @IDPF_PTP_MAILBOX: access through mailbox messages
+ */
+enum idpf_ptp_access {
+	IDPF_PTP_NONE = 0,
+	IDPF_PTP_DIRECT,
+	IDPF_PTP_MAILBOX,
+};
+
 /**
  * struct idpf_ptp - PTP parameters
  * @info: structure defining PTP hardware capabilities
  * @clock: pointer to registered PTP clock device
  * @adapter: back pointer to the adapter
+ * @cmd: HW specific command masks
+ * @dev_clk_regs: the set of registers to access the device clock
+ * @caps: PTP capabilities negotiated with the Control Plane
+ * @get_dev_clk_time_access: access type for getting the device clock time
+ * @rsv: reserved bits
+ * @read_dev_clk_lock: spinlock protecting access to the device clock read
+ *		       operation executed by the HW latch
  */
 struct idpf_ptp {
 	struct ptp_clock_info info;
 	struct ptp_clock *clock;
 	struct idpf_adapter *adapter;
+	struct idpf_ptp_cmd cmd;
+	struct idpf_ptp_dev_clk_regs dev_clk_regs;
+	u32 caps;
+	enum idpf_ptp_access get_dev_clk_time_access:2;
+	u32 rsv:30;
+	spinlock_t read_dev_clk_lock;
 };
 
+/**
+ * idpf_ptp_info_to_adapter - get driver adapter struct from ptp_clock_info
+ * @info: pointer to ptp_clock_info struct
+ *
+ * Return: pointer to the corresponding adapter struct
+ */
+static inline struct idpf_adapter *
+idpf_ptp_info_to_adapter(const struct ptp_clock_info *info)
+{
+	const struct idpf_ptp *ptp = container_of_const(info, struct idpf_ptp,
+							info);
+	return ptp->adapter;
+}
+
 #if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
 int idpf_ptp_init(struct idpf_adapter *adapter);
 void idpf_ptp_release(struct idpf_adapter *adapter);
+int idpf_ptp_get_caps(struct idpf_adapter *adapter);
+void idpf_ptp_get_features_access(const struct idpf_adapter *adapter);
 #else /* CONFIG_PTP_1588_CLOCK */
 static inline int idpf_ptp_init(struct idpf_adapter *adapter)
 {
@@ -28,5 +103,14 @@ static inline int idpf_ptp_init(struct idpf_adapter *adapter)
 }
 
 static inline void idpf_ptp_release(struct idpf_adapter *adapter) { }
+
+static inline int idpf_ptp_get_caps(struct idpf_adapter *adapter)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline void
+idpf_ptp_get_features_access(const struct idpf_adapter *adapter) { }
+
 #endif /* CONFIG_PTP_1588_CLOCK */
 #endif /* _IDPF_PTP_H */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
new file mode 100644
index 000000000000..c3c6b920f277
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
@@ -0,0 +1,78 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2024 Intel Corporation */
+
+#include "idpf.h"
+#include "idpf_ptp.h"
+#include "idpf_virtchnl.h"
+
+/**
+ * idpf_ptp_get_caps - Send virtchnl get ptp capabilities message
+ * @adapter: Driver specific private structure
+ *
+ * Send virtchnl get PTP capabilities message.
+ *
+ * Return: 0 on success, -errno on failure.
+ */
+int idpf_ptp_get_caps(struct idpf_adapter *adapter)
+{
+	struct virtchnl2_ptp_get_caps *recv_ptp_caps_msg __free(kfree) = NULL;
+	struct virtchnl2_ptp_get_caps send_ptp_caps_msg = {
+		.caps = cpu_to_le32(VIRTCHNL2_CAP_PTP_GET_DEVICE_CLK_TIME |
+				    VIRTCHNL2_CAP_PTP_GET_DEVICE_CLK_TIME_MB |
+				    VIRTCHNL2_CAP_PTP_GET_CROSS_TIME |
+				    VIRTCHNL2_CAP_PTP_GET_CROSS_TIME_MB)
+	};
+	struct idpf_vc_xn_params xn_params = {
+		.vc_op = VIRTCHNL2_OP_PTP_GET_CAPS,
+		.send_buf.iov_base = &send_ptp_caps_msg,
+		.send_buf.iov_len = sizeof(send_ptp_caps_msg),
+		.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
+	};
+	struct virtchnl2_ptp_clk_reg_offsets clock_offsets;
+	struct idpf_ptp *ptp = adapter->ptp;
+	enum idpf_ptp_access access_type;
+	u32 temp_offset;
+	int reply_sz;
+
+	recv_ptp_caps_msg = kzalloc(sizeof(struct virtchnl2_ptp_get_caps),
+				    GFP_KERNEL);
+	if (!recv_ptp_caps_msg)
+		return -ENOMEM;
+
+	xn_params.recv_buf.iov_base = recv_ptp_caps_msg;
+	xn_params.recv_buf.iov_len = sizeof(*recv_ptp_caps_msg);
+
+	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
+	if (reply_sz < 0)
+		return reply_sz;
+	else if (reply_sz != sizeof(*recv_ptp_caps_msg))
+		return -EIO;
+
+	ptp->caps = le32_to_cpu(recv_ptp_caps_msg->caps);
+
+	/* Determine the access type for the PTP features */
+	idpf_ptp_get_features_access(adapter);
+
+	access_type = ptp->get_dev_clk_time_access;
+	if (access_type != IDPF_PTP_DIRECT)
+		return 0;
+
+	clock_offsets = recv_ptp_caps_msg->clk_offsets;
+
+	temp_offset = le32_to_cpu(clock_offsets.dev_clk_ns_l);
+	ptp->dev_clk_regs.dev_clk_ns_l = idpf_get_reg_addr(adapter,
+							   temp_offset);
+	temp_offset = le32_to_cpu(clock_offsets.dev_clk_ns_h);
+	ptp->dev_clk_regs.dev_clk_ns_h = idpf_get_reg_addr(adapter,
+							   temp_offset);
+	temp_offset = le32_to_cpu(clock_offsets.phy_clk_ns_l);
+	ptp->dev_clk_regs.phy_clk_ns_l = idpf_get_reg_addr(adapter,
+							   temp_offset);
+	temp_offset = le32_to_cpu(clock_offsets.phy_clk_ns_h);
+	ptp->dev_clk_regs.phy_clk_ns_h = idpf_get_reg_addr(adapter,
+							   temp_offset);
+	temp_offset = le32_to_cpu(clock_offsets.cmd_sync_trigger);
+	ptp->dev_clk_regs.cmd_sync = idpf_get_reg_addr(adapter, temp_offset);
+
+	return 0;
+}
-- 
2.43.5

