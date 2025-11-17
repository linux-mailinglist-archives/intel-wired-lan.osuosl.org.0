Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7335CC6477E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Nov 2025 14:49:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2C5A1811A4;
	Mon, 17 Nov 2025 13:49:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MYjKeWU-zQmQ; Mon, 17 Nov 2025 13:49:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CCB85811FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763387387;
	bh=P5JH7nwmG4GOY+al+72JsQ0Dg+y4nHbLnAGyl0yQh5Y=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kIsUsCo5v9O17aQq3w2zzOkRkCRxohCf3ttTvz5OttTAk80AJrzWakbEk0/MPhwKe
	 n/jKpTHoa3Ocgk8QE3yDJ6ClB4fc7MAuJH80zqUmgAAmMlTbIAS/64KgBzSyV5XLGI
	 Gvq0jJaehCLYld+3p8GyAvHXzuK3St3u9Mo9LTxdTXpxZI4PvBYM+DZJEgy+Mnl2RG
	 31wuJ6mXjQlmnGGrd2ogh8vvzlQfje1/6S+29DqGYthxvnjR9tLULWIb3o2Gk74XEf
	 eGBDtt5bpdI5cAZtknFl4KtCqmXA2x8+i5t1zYt/wgvj6231Snfz0ioKi2zckcEYMe
	 QSbPpBx6xa8Iw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CCB85811FB;
	Mon, 17 Nov 2025 13:49:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3C9C9D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 13:49:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 22A4E60DD5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 13:49:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LIS4TrmvJkil for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Nov 2025 13:49:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 86F5F60DD0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 86F5F60DD0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 86F5F60DD0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 13:49:44 +0000 (UTC)
X-CSE-ConnectionGUID: amjqrvPLSn608w4oN5fGFw==
X-CSE-MsgGUID: M0i4BOTiRACJh0sjmevhPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="76846198"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="76846198"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 05:49:44 -0800
X-CSE-ConnectionGUID: 0TDJOshGS+O7Uc45j0xqgA==
X-CSE-MsgGUID: soAGFZ9iROiTaJXF1vBwWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="190115774"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa007.fm.intel.com with ESMTP; 17 Nov 2025 05:49:38 -0800
Received: from mglak.igk.intel.com (mglak.igk.intel.com [10.237.112.146])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 4F25337E3A;
 Mon, 17 Nov 2025 13:49:36 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: aleksander.lobakin@intel.com, sridhar.samudrala@intel.com,
 "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>,
 jayaprakash.shanmugam@intel.com, natalia.wochtman@intel.com,
 Jiri Pirko <jiri@resnulli.us>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Richard Cochran <richardcochran@gmail.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Mon, 17 Nov 2025 14:48:53 +0100
Message-ID: <20251117134912.18566-14-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20251117134912.18566-1-larysa.zaremba@intel.com>
References: <20251117134912.18566-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763387385; x=1794923385;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p+H3R478rp2wtJbokh56/OGK8O72WV/GcdULLfeL7AA=;
 b=RmbWwCPkCB4D0/2OG5nmkJ2T4PV9Zd3iWYutpYopTXdGsWUB+EaSlK3p
 9+m+k7Za4tAh4NqBv899qU2/tuDevPZ5hLY494zgD3WOLyZxzseFNYv2Q
 IRPIIhKPZy757ICMo2SwfRVzJUzZpnWu+EQIg9Kl2lGk3K8d7JqLIgGzi
 Qmp6pdu2bJWt43w9hipC3LPwVU8Ih6qtWLgQGhILrn9CmKqZLYJwqR/KC
 JY5CFbW66EyxBCfGM9fMEtphWHBPNUrcnVH8AU2FPxqeDvx8dqoSodSYY
 XKK/hroaOvow1XbWGij/ADF8Ei7k+aS6Jr45HujDjFGHGzb8e8Canz3uO
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RmbWwCPk
Subject: [Intel-wired-lan] [PATCH iwl-next v5 13/15] ixd: add reset checks
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
 drivers/net/ethernet/intel/ixd/ixd_main.c     |  32 +++-
 7 files changed, 326 insertions(+), 9 deletions(-)
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
index 75ee53152e61..b4d4000b63ed 100644
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
 }
 
 /**
@@ -51,7 +58,7 @@ static int ixd_iomap_regions(struct ixd_adapter *adapter)
 	};
 
 	for (int i = 0; i < ARRAY_SIZE(regions); i++) {
-		struct libie_mmio_info *mmio_info = &adapter->hw;
+		struct libie_mmio_info *mmio_info = &adapter->cp_ctx.mmio_info;
 		bool map_ok;
 
 		map_ok = libie_pci_map_mmio_region(mmio_info,
@@ -81,11 +88,15 @@ static int ixd_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
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
@@ -93,7 +104,18 @@ static int ixd_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	pci_set_drvdata(pdev, adapter);
 
-	return ixd_iomap_regions(adapter);
+	err = ixd_iomap_regions(adapter);
+	if (err)
+		return err;
+
+	INIT_DELAYED_WORK(&adapter->init_task.init_work,
+			  ixd_init_task);
+
+	ixd_trigger_reset(adapter);
+	queue_delayed_work(system_unbound_wq, &adapter->init_task.init_work,
+			   msecs_to_jiffies(500));
+
+	return 0;
 }
 
 static const struct pci_device_id ixd_pci_tbl[] = {
-- 
2.47.0

