Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 800FCAB9F1F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 16:58:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2880183CF2;
	Fri, 16 May 2025 14:58:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0PZmw0vC1ATX; Fri, 16 May 2025 14:58:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 03483812A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747407535;
	bh=G0ZQtDiUSHwE3j9MdLUMEcqRvpGMiJkvglGgl2ScyN0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ag3oRBxYXkdKf8ffNp940Cum77NZInVojLwC4YbBxZDMgt+fKtttOn5BzXIF8Hzaf
	 tIKO4ICXE9pWcCavgRGRa/5ERVlFiiYaLThZaW+BozmRXjcH/QbZaAZa7Vx6ah2YH+
	 1bxa+okctJkBLZWWEu6zGIqVk5W8llCImWOFI4z69cMmF49pfmCk2gNWTKdoPRyb4e
	 7HlAAtQnnqb8JDoLboMis7g+uMAlYhfPXDw9fecggXZaUlQLFcrvG79XWaC2TAwSIQ
	 4y9ZczdR4Llbjnigz4QOy2g85EeN4ZtC6LFlf/aojndQ/G5avAh9lrAwSvN0S8b6ld
	 OUXIQF71KlTwQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03483812A8;
	Fri, 16 May 2025 14:58:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6CAC7185
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 14:58:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5E402422EE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 14:58:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JE91M6sJzq9E for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 14:58:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5AF80422E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5AF80422E2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5AF80422E2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 14:58:52 +0000 (UTC)
X-CSE-ConnectionGUID: 8xmlJNfmSFGf5SGqc48kGA==
X-CSE-MsgGUID: tnnxiLEZQqqLU6vzxINK1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11435"; a="60407589"
X-IronPort-AV: E=Sophos;i="6.15,294,1739865600"; d="scan'208";a="60407589"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 07:58:52 -0700
X-CSE-ConnectionGUID: mpNXsojCTS+h6TjJRGEkLg==
X-CSE-MsgGUID: jJqqaaMIRuqrNlUZ3+Ty5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,294,1739865600"; d="scan'208";a="139240131"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa007.jf.intel.com with ESMTP; 16 May 2025 07:58:45 -0700
Received: from mglak.igk.intel.com (mglak.igk.intel.com [10.237.112.146])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id A121734327;
 Fri, 16 May 2025 15:58:42 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jiri Pirko <jiri@resnulli.us>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Lee Trager <lee@trager.us>, Madhavan Srinivasan <maddy@linux.ibm.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 Milena Olech <milena.olech@intel.com>, pavan.kumar.linga@intel.com,
 "Singhai, Anjali" <anjali.singhai@intel.com>
Date: Fri, 16 May 2025 16:58:10 +0200
Message-ID: <20250516145814.5422-14-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250516145814.5422-1-larysa.zaremba@intel.com>
References: <20250516145814.5422-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747407533; x=1778943533;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=geZZZysPMY9PMrhjcHCWziIlBDrYnkmzIKmFL4aEMuQ=;
 b=JI9e2CWrZ2sXweNuEJPZOjjuQ8vQurftPdaTONElFf2J3j5YBbAW5l3B
 txjitiUv2w3kBEy/YhrZGGNIoWAqkqWD9H4sQWw1GWfNU79m2zPR5wAiJ
 SUyJ97Xy3MVVnnqeJNRm2oLqiNV+yqTqHTpe9tY3MThFmPvt9Kaav8nfA
 Q25jcePHOzYvDnRYwo93vDqkDdPPXRNUQyjaPNLDqXPdNB4LzFKdjP6z/
 /G3pws7wafuap/+pUh/9OzOV6+goud/QKf7feg5hAhwTxPfAEDg3XJqGr
 HUeg8RYGu0YgfJnNodzQQIZOT7YWbYwGvQGRCE6+bjA151y2duAi5C1CD
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JI9e2CWr
Subject: [Intel-wired-lan] [PATCH iwl-next v4 13/15] ixd: add reset checks
 and initialize the mailbox
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

At the end of the probe, trigger hard reset, initialize and schedule the
after-reset task. If the reset is complete in a pre-determined time,
initialize the default mailbox, through which other resources will be
negotiated.

Co-developed-by: Amritha Nambiar <amritha.nambiar@intel.com>
Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ixd/Kconfig        |   1 +
 drivers/net/ethernet/intel/ixd/Makefile       |   2 +
 drivers/net/ethernet/intel/ixd/ixd.h          |  28 +++-
 drivers/net/ethernet/intel/ixd/ixd_dev.c      |  89 +++++++++++
 drivers/net/ethernet/intel/ixd/ixd_lan_regs.h |  40 +++++
 drivers/net/ethernet/intel/ixd/ixd_lib.c      | 143 ++++++++++++++++++
 drivers/net/ethernet/intel/ixd/ixd_main.c     |  26 +++-
 7 files changed, 321 insertions(+), 8 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ixd/ixd_dev.c
 create mode 100644 drivers/net/ethernet/intel/ixd/ixd_lib.c

diff --git a/drivers/net/ethernet/intel/ixd/Kconfig b/drivers/net/ethernet/intel/ixd/Kconfig
index f5594efe292c..24510c50070e 100644
--- a/drivers/net/ethernet/intel/ixd/Kconfig
+++ b/drivers/net/ethernet/intel/ixd/Kconfig
@@ -5,6 +5,7 @@ config IXD
 	tristate "Intel(R) Control Plane Function Support"
 	depends on PCI_MSI
 	select LIBETH
+	select LIBIE_CP
 	select LIBIE_PCI
 	help
 	  This driver supports Intel(R) Control Plane PCI Function
diff --git a/drivers/net/ethernet/intel/ixd/Makefile b/drivers/net/ethernet/intel/ixd/Makefile
index 3849bc240600..164b2c86952f 100644
--- a/drivers/net/ethernet/intel/ixd/Makefile
+++ b/drivers/net/ethernet/intel/ixd/Makefile
@@ -6,3 +6,5 @@
 obj-$(CONFIG_IXD) += ixd.o
 
 ixd-y := ixd_main.o
+ixd-y += ixd_dev.o
+ixd-y += ixd_lib.o
diff --git a/drivers/net/ethernet/intel/ixd/ixd.h b/drivers/net/ethernet/intel/ixd/ixd.h
index d813c27941a5..99c44f2aa659 100644
--- a/drivers/net/ethernet/intel/ixd/ixd.h
+++ b/drivers/net/ethernet/intel/ixd/ixd.h
@@ -4,14 +4,25 @@
 #ifndef _IXD_H_
 #define _IXD_H_
 
-#include <linux/intel/libie/pci.h>
+#include <linux/intel/libie/controlq.h>
 
 /**
  * struct ixd_adapter - Data structure representing a CPF
- * @hw: Device access data
+ * @cp_ctx: Control plane communication context
+ * @init_task: Delayed initialization after reset
+ * @xnm: virtchnl transaction manager
+ * @asq: Send control queue info
+ * @arq: Receive control queue info
  */
 struct ixd_adapter {
-	struct libie_mmio_info hw;
+	struct libie_ctlq_ctx cp_ctx;
+	struct {
+		struct delayed_work init_work;
+		u8 reset_retries;
+	} init_task;
+	struct libie_ctlq_xn_manager *xnm;
+	struct libie_ctlq_info *asq;
+	struct libie_ctlq_info *arq;
 };
 
 /**
@@ -22,7 +33,16 @@ struct ixd_adapter {
  */
 static inline struct device *ixd_to_dev(struct ixd_adapter *adapter)
 {
-	return &adapter->hw.pdev->dev;
+	return &adapter->cp_ctx.mmio_info.pdev->dev;
 }
 
+void ixd_ctlq_reg_init(struct ixd_adapter *adapter,
+		       struct libie_ctlq_reg *ctlq_reg_tx,
+		       struct libie_ctlq_reg *ctlq_reg_rx);
+void ixd_trigger_reset(struct ixd_adapter *adapter);
+bool ixd_check_reset_complete(struct ixd_adapter *adapter);
+void ixd_init_task(struct work_struct *work);
+int ixd_init_dflt_mbx(struct ixd_adapter *adapter);
+void ixd_deinit_dflt_mbx(struct ixd_adapter *adapter);
+
 #endif /* _IXD_H_ */
diff --git a/drivers/net/ethernet/intel/ixd/ixd_dev.c b/drivers/net/ethernet/intel/ixd/ixd_dev.c
new file mode 100644
index 000000000000..6c41a820eecc
--- /dev/null
+++ b/drivers/net/ethernet/intel/ixd/ixd_dev.c
@@ -0,0 +1,89 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2025 Intel Corporation */
+
+#include "ixd.h"
+#include "ixd_lan_regs.h"
+
+/**
+ * ixd_ctlq_reg_init - Initialize default mailbox registers
+ * @adapter: PCI device driver-specific private data
+ * @ctlq_reg_tx: Transmit queue registers info to be filled
+ * @ctlq_reg_rx: Receive queue registers info to be filled
+ */
+void ixd_ctlq_reg_init(struct ixd_adapter *adapter,
+		       struct libie_ctlq_reg *ctlq_reg_tx,
+		       struct libie_ctlq_reg *ctlq_reg_rx)
+{
+	struct libie_mmio_info *mmio_info = &adapter->cp_ctx.mmio_info;
+	*ctlq_reg_tx = (struct libie_ctlq_reg) {
+		.head = libie_pci_get_mmio_addr(mmio_info, PF_FW_ATQH),
+		.tail = libie_pci_get_mmio_addr(mmio_info, PF_FW_ATQT),
+		.len = libie_pci_get_mmio_addr(mmio_info, PF_FW_ATQLEN),
+		.addr_high = libie_pci_get_mmio_addr(mmio_info, PF_FW_ATQBAH),
+		.addr_low = libie_pci_get_mmio_addr(mmio_info, PF_FW_ATQBAL),
+		.len_mask = PF_FW_ATQLEN_ATQLEN_M,
+		.len_ena_mask = PF_FW_ATQLEN_ATQENABLE_M,
+		.head_mask = PF_FW_ATQH_ATQH_M,
+	};
+
+	*ctlq_reg_rx = (struct libie_ctlq_reg) {
+		.head = libie_pci_get_mmio_addr(mmio_info, PF_FW_ARQH),
+		.tail = libie_pci_get_mmio_addr(mmio_info, PF_FW_ARQT),
+		.len = libie_pci_get_mmio_addr(mmio_info, PF_FW_ARQLEN),
+		.addr_high = libie_pci_get_mmio_addr(mmio_info, PF_FW_ARQBAH),
+		.addr_low = libie_pci_get_mmio_addr(mmio_info, PF_FW_ARQBAL),
+		.len_mask = PF_FW_ARQLEN_ARQLEN_M,
+		.len_ena_mask = PF_FW_ARQLEN_ARQENABLE_M,
+		.head_mask = PF_FW_ARQH_ARQH_M,
+	};
+}
+
+static const struct ixd_reset_reg ixd_reset_reg = {
+	.rstat  = PFGEN_RSTAT,
+	.rstat_m = PFGEN_RSTAT_PFR_STATE_M,
+	.rstat_ok_v = 0b01,
+	.rtrigger = PFGEN_CTRL,
+	.rtrigger_m = PFGEN_CTRL_PFSWR,
+};
+
+/**
+ * ixd_trigger_reset - Trigger PFR reset
+ * @adapter: the device with mapped reset register
+ */
+void ixd_trigger_reset(struct ixd_adapter *adapter)
+{
+	void __iomem *addr;
+	u32 reg_val;
+
+	addr = libie_pci_get_mmio_addr(&adapter->cp_ctx.mmio_info,
+				       ixd_reset_reg.rtrigger);
+	reg_val = readl(addr);
+	writel(reg_val | ixd_reset_reg.rtrigger_m, addr);
+}
+
+/**
+ * ixd_check_reset_complete - Check if the PFR reset is completed
+ * @adapter: CPF being reset
+ *
+ * Return: %true if the register read indicates reset has been finished,
+ *	   %false otherwise
+ */
+bool ixd_check_reset_complete(struct ixd_adapter *adapter)
+{
+	u32 reg_val, reset_status;
+	void __iomem *addr;
+
+	addr = libie_pci_get_mmio_addr(&adapter->cp_ctx.mmio_info,
+				       ixd_reset_reg.rstat);
+	reg_val = readl(addr);
+	reset_status = reg_val & ixd_reset_reg.rstat_m;
+
+	/* 0xFFFFFFFF might be read if the other side hasn't cleared
+	 * the register for us yet.
+	 */
+	if (reg_val != 0xFFFFFFFF &&
+	    reset_status == ixd_reset_reg.rstat_ok_v)
+		return true;
+
+	return false;
+}
diff --git a/drivers/net/ethernet/intel/ixd/ixd_lan_regs.h b/drivers/net/ethernet/intel/ixd/ixd_lan_regs.h
index a991eaa8a2aa..26b1e3cfcf20 100644
--- a/drivers/net/ethernet/intel/ixd/ixd_lan_regs.h
+++ b/drivers/net/ethernet/intel/ixd/ixd_lan_regs.h
@@ -11,9 +11,33 @@
 #define PF_FW_MBX_REG_LEN		4096
 #define PF_FW_MBX			0x08400000
 
+#define PF_FW_ARQBAL			(PF_FW_MBX)
+#define PF_FW_ARQBAH			(PF_FW_MBX + 0x4)
+#define PF_FW_ARQLEN			(PF_FW_MBX + 0x8)
+#define PF_FW_ARQLEN_ARQLEN_M		GENMASK(12, 0)
+#define PF_FW_ARQLEN_ARQENABLE_S	31
+#define PF_FW_ARQLEN_ARQENABLE_M	BIT(PF_FW_ARQLEN_ARQENABLE_S)
+#define PF_FW_ARQH_ARQH_M		GENMASK(12, 0)
+#define PF_FW_ARQH			(PF_FW_MBX + 0xC)
+#define PF_FW_ARQT			(PF_FW_MBX + 0x10)
+
+#define PF_FW_ATQBAL			(PF_FW_MBX + 0x14)
+#define PF_FW_ATQBAH			(PF_FW_MBX + 0x18)
+#define PF_FW_ATQLEN			(PF_FW_MBX + 0x1C)
+#define PF_FW_ATQLEN_ATQLEN_M		GENMASK(9, 0)
+#define PF_FW_ATQLEN_ATQENABLE_S	31
+#define PF_FW_ATQLEN_ATQENABLE_M	BIT(PF_FW_ATQLEN_ATQENABLE_S)
+#define PF_FW_ATQH_ATQH_M		GENMASK(9, 0)
+#define PF_FW_ATQH			(PF_FW_MBX + 0x20)
+#define PF_FW_ATQT			(PF_FW_MBX + 0x24)
+
 /* Reset registers */
 #define PFGEN_RTRIG_REG_LEN		2048
 #define PFGEN_RTRIG			0x08407000	/* Device resets */
+#define PFGEN_RSTAT			0x08407008	/* PFR status */
+#define PFGEN_RSTAT_PFR_STATE_M		GENMASK(1, 0)
+#define PFGEN_CTRL			0x0840700C	/* PFR trigger */
+#define PFGEN_CTRL_PFSWR		BIT(0)
 
 /**
  * struct ixd_bar_region - BAR region description
@@ -25,4 +49,20 @@ struct ixd_bar_region {
 	resource_size_t size;
 };
 
+/**
+ * struct ixd_reset_reg - structure for reset registers
+ * @rstat: offset of status in register
+ * @rstat_m: status mask
+ * @rstat_ok_v: value that indicates PFR completed status
+ * @rtrigger: offset of reset trigger in register
+ * @rtrigger_m: reset trigger mask
+ */
+struct ixd_reset_reg {
+	u32	rstat;
+	u32	rstat_m;
+	u32	rstat_ok_v;
+	u32	rtrigger;
+	u32	rtrigger_m;
+};
+
 #endif /* _IXD_LAN_REGS_H_ */
diff --git a/drivers/net/ethernet/intel/ixd/ixd_lib.c b/drivers/net/ethernet/intel/ixd/ixd_lib.c
new file mode 100644
index 000000000000..b8dd5c4de7b2
--- /dev/null
+++ b/drivers/net/ethernet/intel/ixd/ixd_lib.c
@@ -0,0 +1,143 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2025 Intel Corporation */
+
+#include "ixd.h"
+
+#define IXD_DFLT_MBX_Q_LEN 64
+
+/**
+ * ixd_init_ctlq_create_info - Initialize control queue info for creation
+ * @info: destination
+ * @type: type of the queue to create
+ * @ctlq_reg: register assigned to the control queue
+ */
+static void ixd_init_ctlq_create_info(struct libie_ctlq_create_info *info,
+				      enum virtchnl2_queue_type type,
+				      const struct libie_ctlq_reg *ctlq_reg)
+{
+	*info = (struct libie_ctlq_create_info) {
+		.type = type,
+		.id = -1,
+		.reg = *ctlq_reg,
+		.len = IXD_DFLT_MBX_Q_LEN,
+	};
+}
+
+/**
+ * ixd_init_libie_xn_params - Initialize xn transaction manager creation info
+ * @params: destination
+ * @adapter: adapter info struct
+ * @ctlqs: list of the managed queues to create
+ * @num_queues: length of the queue list
+ */
+static void ixd_init_libie_xn_params(struct libie_ctlq_xn_init_params *params,
+				     struct ixd_adapter *adapter,
+				      struct libie_ctlq_create_info *ctlqs,
+				      uint num_queues)
+{
+	*params = (struct libie_ctlq_xn_init_params){
+		.cctlq_info = ctlqs,
+		.ctx = &adapter->cp_ctx,
+		.num_qs = num_queues,
+	};
+}
+
+/**
+ * ixd_adapter_fill_dflt_ctlqs - Find default control queues and store them
+ * @adapter: adapter info struct
+ */
+static void ixd_adapter_fill_dflt_ctlqs(struct ixd_adapter *adapter)
+{
+	guard(spinlock)(&adapter->cp_ctx.ctlqs_lock);
+	struct libie_ctlq_info *cq;
+
+	list_for_each_entry(cq, &adapter->cp_ctx.ctlqs, list) {
+		if (cq->qid != -1)
+			continue;
+		if (cq->type == VIRTCHNL2_QUEUE_TYPE_RX)
+			adapter->arq = cq;
+		else if (cq->type == VIRTCHNL2_QUEUE_TYPE_TX)
+			adapter->asq = cq;
+	}
+}
+
+/**
+ * ixd_init_dflt_mbx - Setup default mailbox parameters and make request
+ * @adapter: adapter info struct
+ *
+ * Return: %0 on success, negative errno code on failure
+ */
+int ixd_init_dflt_mbx(struct ixd_adapter *adapter)
+{
+	struct libie_ctlq_create_info ctlqs_info[2];
+	struct libie_ctlq_xn_init_params xn_params;
+	struct libie_ctlq_reg ctlq_reg_tx;
+	struct libie_ctlq_reg ctlq_reg_rx;
+	int err;
+
+	ixd_ctlq_reg_init(adapter, &ctlq_reg_tx, &ctlq_reg_rx);
+	ixd_init_ctlq_create_info(&ctlqs_info[0], VIRTCHNL2_QUEUE_TYPE_TX,
+				  &ctlq_reg_tx);
+	ixd_init_ctlq_create_info(&ctlqs_info[1], VIRTCHNL2_QUEUE_TYPE_RX,
+				  &ctlq_reg_rx);
+	ixd_init_libie_xn_params(&xn_params, adapter, ctlqs_info,
+				 ARRAY_SIZE(ctlqs_info));
+	err = libie_ctlq_xn_init(&xn_params);
+	if (err)
+		return err;
+	adapter->xnm = xn_params.xnm;
+
+	ixd_adapter_fill_dflt_ctlqs(adapter);
+
+	if (!adapter->asq || !adapter->arq) {
+		libie_ctlq_xn_deinit(adapter->xnm, &adapter->cp_ctx);
+		return -ENOENT;
+	}
+
+	return 0;
+}
+
+/**
+ * ixd_deinit_dflt_mbx - Deinitialize default mailbox
+ * @adapter: adapter info struct
+ */
+void ixd_deinit_dflt_mbx(struct ixd_adapter *adapter)
+{
+	if (adapter->arq || adapter->asq)
+		libie_ctlq_xn_deinit(adapter->xnm, &adapter->cp_ctx);
+
+	adapter->arq = NULL;
+	adapter->asq = NULL;
+	adapter->xnm = NULL;
+}
+
+/**
+ * ixd_init_task - Initialize after reset
+ * @work: init work struct
+ */
+void ixd_init_task(struct work_struct *work)
+{
+	struct ixd_adapter *adapter;
+	int err;
+
+	adapter = container_of(work, struct ixd_adapter,
+			       init_task.init_work.work);
+
+	if (!ixd_check_reset_complete(adapter)) {
+		if (++adapter->init_task.reset_retries < 10)
+			queue_delayed_work(system_unbound_wq,
+					   &adapter->init_task.init_work,
+					   msecs_to_jiffies(500));
+		else
+			dev_err(ixd_to_dev(adapter),
+				"Device reset failed. The driver was unable to contact the device's firmware. Check that the FW is running.\n");
+		return;
+	}
+
+	adapter->init_task.reset_retries = 0;
+	err = ixd_init_dflt_mbx(adapter);
+	if (err)
+		dev_err(ixd_to_dev(adapter),
+			"Failed to initialize the default mailbox: %pe\n",
+			ERR_PTR(err));
+}
diff --git a/drivers/net/ethernet/intel/ixd/ixd_main.c b/drivers/net/ethernet/intel/ixd/ixd_main.c
index 5b8b8258fec8..71b216fd40cc 100644
--- a/drivers/net/ethernet/intel/ixd/ixd_main.c
+++ b/drivers/net/ethernet/intel/ixd/ixd_main.c
@@ -5,6 +5,7 @@
 #include "ixd_lan_regs.h"
 
 MODULE_DESCRIPTION("Intel(R) Control Plane Function Device Driver");
+MODULE_IMPORT_NS("LIBIE_CP");
 MODULE_IMPORT_NS("LIBIE_PCI");
 MODULE_LICENSE("GPL");
 
@@ -16,7 +17,13 @@ static void ixd_remove(struct pci_dev *pdev)
 {
 	struct ixd_adapter *adapter = pci_get_drvdata(pdev);
 
-	libie_pci_unmap_all_mmio_regions(&adapter->hw);
+	/* Do not mix removal with (re)initialization */
+	cancel_delayed_work_sync(&adapter->init_task.init_work);
+	/* Leave the device clean on exit */
+	ixd_trigger_reset(adapter);
+	ixd_deinit_dflt_mbx(adapter);
+
+	libie_pci_unmap_all_mmio_regions(&adapter->cp_ctx.mmio_info);
 	libie_pci_deinit_dev(pdev);
 }
 
@@ -52,7 +59,7 @@ static int ixd_iomap_regions(struct ixd_adapter *adapter)
 	};
 
 	for (int i = 0; i < ARRAY_SIZE(regions); i++) {
-		struct libie_mmio_info *mmio_info = &adapter->hw;
+		struct libie_mmio_info *mmio_info = &adapter->cp_ctx.mmio_info;
 		bool map_ok;
 
 		map_ok = libie_pci_map_mmio_region(mmio_info,
@@ -82,11 +89,15 @@ static int ixd_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	struct ixd_adapter *adapter;
 	int err;
 
+	if (WARN_ON(ent->device != IXD_DEV_ID_CPF))
+		return -EINVAL;
+
 	adapter = devm_kzalloc(&pdev->dev, sizeof(*adapter), GFP_KERNEL);
 	if (!adapter)
 		return -ENOMEM;
-	adapter->hw.pdev = pdev;
-	INIT_LIST_HEAD(&adapter->hw.mmio_list);
+
+	adapter->cp_ctx.mmio_info.pdev = pdev;
+	INIT_LIST_HEAD(&adapter->cp_ctx.mmio_info.mmio_list);
 
 	err = libie_pci_init_dev(pdev);
 	if (err)
@@ -98,6 +109,13 @@ static int ixd_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (err)
 		goto deinit_dev;
 
+	INIT_DELAYED_WORK(&adapter->init_task.init_work,
+			  ixd_init_task);
+
+	ixd_trigger_reset(adapter);
+	queue_delayed_work(system_unbound_wq, &adapter->init_task.init_work,
+			   msecs_to_jiffies(500));
+
 	return 0;
 
 deinit_dev:
-- 
2.47.0

