Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OKzjD3Zv8Gn9TQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 10:27:34 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FE44800AC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 10:27:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B1DC3411B6;
	Tue, 28 Apr 2026 08:27:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GkNMisl4Q0jY; Tue, 28 Apr 2026 08:27:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1EA0241199
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777364850;
	bh=xog7ERfYY2MMt9FXP5XwDdOCY9NOClW/6mge82a5l14=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RcFUyBmrc/x0l/UEE3fWeln8abnzRfaAXXC5aB8UoUoJd8KA35jn5/Y2XYHeKMHZL
	 dPMrykMJwcCpyJW2ENwKBViQgRVGOaym7hnRrSzJTovjjKLVH7c2Tu+l+UV5WH2EQo
	 HujFETCPV56D6m7pO1UpaKWCJ4ILJ5+xpZSwOVMIWlWpezC3vzHfyuAscsuG2V2QJt
	 TTBA0NNsIL9WJqEDunvNUvBX4wvJFZuFzghRzTJaoocxI6X1cBPoKmZA3OTRNEN7PC
	 6DXwKENSPCKCgui453+GM0ovmLMeDad9MCBbIruuvouclCF7i5xdsg4NdNU0M7gc8f
	 s/9iM8OGkip5A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1EA0241199;
	Tue, 28 Apr 2026 08:27:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 04E6B23D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 08:27:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EAA3A60F01
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 08:27:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vtWgBY-Oqfrf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 08:27:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DF29F60DD7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF29F60DD7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DF29F60DD7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 08:27:26 +0000 (UTC)
X-CSE-ConnectionGUID: AEE+3R4ITmi0mnbVNmLYWA==
X-CSE-MsgGUID: 1TtHY99PTdm88SR+OHj5Ng==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78376976"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="78376976"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 01:27:23 -0700
X-CSE-ConnectionGUID: rTpXDvGmRkSAyhF/KRqeHg==
X-CSE-MsgGUID: 5plcLv73S5K2SiWwDuf2wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="232881583"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa006.jf.intel.com with ESMTP; 28 Apr 2026 01:27:18 -0700
Received: from mglak.igk.intel.com (mglak.igk.intel.com [10.237.112.146])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 92B2927BA4;
 Tue, 28 Apr 2026 09:27:15 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: aleksander.lobakin@intel.com, sridhar.samudrala@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>,
 jayaprakash.shanmugam@intel.com, Jiri Pirko <jiri@resnulli.us>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Richard Cochran <richardcochran@gmail.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Bharath R <Bharath.r@intel.com>
Date: Tue, 28 Apr 2026 10:26:45 +0200
Message-ID: <20260428082654.44364-12-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20260428082654.44364-1-larysa.zaremba@intel.com>
References: <20260428082654.44364-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777364847; x=1808900847;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4jKecIqM4LmL7jbhRajYoS+OrTo2r0ZYQJa/fTeck7w=;
 b=LJ9MmTnCRUFAVdN5evAO/9J/zpI3+xZ/eMxJtze4PSpnIKrTPs9ncetH
 7ghWwL5nOc70ByB1xaDXerSAOFgQFs8GMDxqMGmqLwXLUKK9etlOK2g5C
 sPwuPUS5gEsYWFozNsZpOAuSYQqEm+OQu/ZH5GJw3CyAQZZbKT31XkF33
 Sh/dj1pCf7up0lmvrMAbYKrKDB9ViEfwAA0Rsff12CUOWg1xe8ZgV2kuU
 5YkJFHzOiUNlR2Y08E5/zXN8Pfa1xERpPxxqVqfGEpweMWfSnvnT/8pPj
 +hcHbwu64OHZH0e8SYwrbTmqGQJkooU6TKStNKnAYX56YOfE2Lp8eWJyi
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LJ9MmTnC
Subject: [Intel-wired-lan] [PATCH iwl-next v7 11/14] ixd: add basic driver
 framework for Intel(R) Control Plane Function
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
X-Rspamd-Queue-Id: B7FE44800AC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,intel.com:url,intel.com:mid,intel.com:email];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]

Add module register and probe functionality. Add the required support to
register IXD PCI driver, as well as probe and remove call backs. Enable the
PCI device and request the kernel to reserve the memory resources that will
be used by the driver. Finally map the BAR0 address space.

For now, use devm_alloc() to allocate adapter, as it requires the least
amount of code. In a later commit, it will be replaced with a devlink
alternative.

Co-developed-by: Amritha Nambiar <amritha.nambiar@intel.com>
Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
Tested-by: Bharath R <Bharath.r@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 .../device_drivers/ethernet/index.rst         |   1 +
 .../device_drivers/ethernet/intel/ixd.rst     |  39 ++++++
 drivers/net/ethernet/intel/Kconfig            |   2 +
 drivers/net/ethernet/intel/Makefile           |   1 +
 drivers/net/ethernet/intel/ixd/Kconfig        |  13 ++
 drivers/net/ethernet/intel/ixd/Makefile       |   8 ++
 drivers/net/ethernet/intel/ixd/ixd.h          |  28 +++++
 drivers/net/ethernet/intel/ixd/ixd_lan_regs.h |  28 +++++
 drivers/net/ethernet/intel/ixd/ixd_main.c     | 112 ++++++++++++++++++
 9 files changed, 232 insertions(+)
 create mode 100644 Documentation/networking/device_drivers/ethernet/intel/ixd.rst
 create mode 100644 drivers/net/ethernet/intel/ixd/Kconfig
 create mode 100644 drivers/net/ethernet/intel/ixd/Makefile
 create mode 100644 drivers/net/ethernet/intel/ixd/ixd.h
 create mode 100644 drivers/net/ethernet/intel/ixd/ixd_lan_regs.h
 create mode 100644 drivers/net/ethernet/intel/ixd/ixd_main.c

diff --git a/Documentation/networking/device_drivers/ethernet/index.rst b/Documentation/networking/device_drivers/ethernet/index.rst
index 5f3f06111911..5b6846f387f8 100644
--- a/Documentation/networking/device_drivers/ethernet/index.rst
+++ b/Documentation/networking/device_drivers/ethernet/index.rst
@@ -38,6 +38,7 @@ Contents:
    intel/igbvf
    intel/ixgbe
    intel/ixgbevf
+   intel/ixd
    intel/i40e
    intel/iavf
    intel/ice
diff --git a/Documentation/networking/device_drivers/ethernet/intel/ixd.rst b/Documentation/networking/device_drivers/ethernet/intel/ixd.rst
new file mode 100644
index 000000000000..1387626e5d20
--- /dev/null
+++ b/Documentation/networking/device_drivers/ethernet/intel/ixd.rst
@@ -0,0 +1,39 @@
+.. SPDX-License-Identifier: GPL-2.0+
+
+==========================================================================
+iXD Linux* Base Driver for the Intel(R) Control Plane Function
+==========================================================================
+
+Intel iXD Linux driver.
+Copyright(C) 2025 Intel Corporation.
+
+.. contents::
+
+For questions related to hardware requirements, refer to the documentation
+supplied with your Intel adapter. All hardware requirements listed apply to use
+with Linux.
+
+
+Identifying Your Adapter
+========================
+For information on how to identify your adapter, and for the latest Intel
+network drivers, refer to the Intel Support website:
+http://www.intel.com/support
+
+
+Support
+=======
+For general information, go to the Intel support website at:
+http://www.intel.com/support/
+
+If an issue is identified with the released source code on a supported kernel
+with a supported adapter, email the specific information related to the issue
+to intel-wired-lan@lists.osuosl.org.
+
+
+Trademarks
+==========
+Intel is a trademark or registered trademark of Intel Corporation or its
+subsidiaries in the United States and/or other countries.
+
+* Other names and brands may be claimed as the property of others.
diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index 288fa8ce53af..780f113986ea 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -398,4 +398,6 @@ config IGC_LEDS
 
 source "drivers/net/ethernet/intel/idpf/Kconfig"
 
+source "drivers/net/ethernet/intel/ixd/Kconfig"
+
 endif # NET_VENDOR_INTEL
diff --git a/drivers/net/ethernet/intel/Makefile b/drivers/net/ethernet/intel/Makefile
index 9a37dc76aef0..08b29f3b6801 100644
--- a/drivers/net/ethernet/intel/Makefile
+++ b/drivers/net/ethernet/intel/Makefile
@@ -19,3 +19,4 @@ obj-$(CONFIG_IAVF) += iavf/
 obj-$(CONFIG_FM10K) += fm10k/
 obj-$(CONFIG_ICE) += ice/
 obj-$(CONFIG_IDPF) += idpf/
+obj-$(CONFIG_IXD) += ixd/
diff --git a/drivers/net/ethernet/intel/ixd/Kconfig b/drivers/net/ethernet/intel/ixd/Kconfig
new file mode 100644
index 000000000000..f5594efe292c
--- /dev/null
+++ b/drivers/net/ethernet/intel/ixd/Kconfig
@@ -0,0 +1,13 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# Copyright (C) 2025 Intel Corporation
+
+config IXD
+	tristate "Intel(R) Control Plane Function Support"
+	depends on PCI_MSI
+	select LIBETH
+	select LIBIE_PCI
+	help
+	  This driver supports Intel(R) Control Plane PCI Function
+	  of Intel E2100 and later IPUs and FNICs.
+	  It facilitates a centralized control over multiple IDPF PFs/VFs/SFs
+	  exposed by the same card.
diff --git a/drivers/net/ethernet/intel/ixd/Makefile b/drivers/net/ethernet/intel/ixd/Makefile
new file mode 100644
index 000000000000..3849bc240600
--- /dev/null
+++ b/drivers/net/ethernet/intel/ixd/Makefile
@@ -0,0 +1,8 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# Copyright (C) 2025 Intel Corporation
+
+# Intel(R) Control Plane Function Linux Driver
+
+obj-$(CONFIG_IXD) += ixd.o
+
+ixd-y := ixd_main.o
diff --git a/drivers/net/ethernet/intel/ixd/ixd.h b/drivers/net/ethernet/intel/ixd/ixd.h
new file mode 100644
index 000000000000..d813c27941a5
--- /dev/null
+++ b/drivers/net/ethernet/intel/ixd/ixd.h
@@ -0,0 +1,28 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2025 Intel Corporation */
+
+#ifndef _IXD_H_
+#define _IXD_H_
+
+#include <linux/intel/libie/pci.h>
+
+/**
+ * struct ixd_adapter - Data structure representing a CPF
+ * @hw: Device access data
+ */
+struct ixd_adapter {
+	struct libie_mmio_info hw;
+};
+
+/**
+ * ixd_to_dev - Get the corresponding device struct from an adapter
+ * @adapter: PCI device driver-specific private data
+ *
+ * Return: struct device corresponding to the given adapter
+ */
+static inline struct device *ixd_to_dev(struct ixd_adapter *adapter)
+{
+	return &adapter->hw.pdev->dev;
+}
+
+#endif /* _IXD_H_ */
diff --git a/drivers/net/ethernet/intel/ixd/ixd_lan_regs.h b/drivers/net/ethernet/intel/ixd/ixd_lan_regs.h
new file mode 100644
index 000000000000..fbb88929d0de
--- /dev/null
+++ b/drivers/net/ethernet/intel/ixd/ixd_lan_regs.h
@@ -0,0 +1,28 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2025 Intel Corporation */
+
+#ifndef _IXD_LAN_REGS_H_
+#define _IXD_LAN_REGS_H_
+
+/* Control Plane Function PCI ID */
+#define IXD_DEV_ID_CPF			0x1efe
+
+/* Control Queue (Mailbox) */
+#define PF_FW_MBX_REG_LEN		4096
+#define PF_FW_MBX			0x08400000
+
+/* Reset registers */
+#define PFGEN_RTRIG_REG_LEN		2048
+#define PFGEN_RTRIG			0x08407000	/* Device resets */
+
+/**
+ * struct ixd_bar_region - BAR region description
+ * @offset: BAR region offset
+ * @size: BAR region size
+ */
+struct ixd_bar_region {
+	resource_size_t offset;
+	resource_size_t size;
+};
+
+#endif /* _IXD_LAN_REGS_H_ */
diff --git a/drivers/net/ethernet/intel/ixd/ixd_main.c b/drivers/net/ethernet/intel/ixd/ixd_main.c
new file mode 100644
index 000000000000..75ee53152e61
--- /dev/null
+++ b/drivers/net/ethernet/intel/ixd/ixd_main.c
@@ -0,0 +1,112 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2025 Intel Corporation */
+
+#include "ixd.h"
+#include "ixd_lan_regs.h"
+
+MODULE_DESCRIPTION("Intel(R) Control Plane Function Device Driver");
+MODULE_IMPORT_NS("LIBIE_PCI");
+MODULE_LICENSE("GPL");
+
+/**
+ * ixd_remove - remove a CPF PCI device
+ * @pdev: PCI device being removed
+ */
+static void ixd_remove(struct pci_dev *pdev)
+{
+	struct ixd_adapter *adapter = pci_get_drvdata(pdev);
+
+	libie_pci_unmap_all_mmio_regions(&adapter->hw);
+}
+
+/**
+ * ixd_shutdown - shut down a CPF PCI device
+ * @pdev: PCI device being shut down
+ */
+static void ixd_shutdown(struct pci_dev *pdev)
+{
+	ixd_remove(pdev);
+
+	if (system_state == SYSTEM_POWER_OFF)
+		pci_set_power_state(pdev, PCI_D3hot);
+}
+
+/**
+ * ixd_iomap_regions - iomap PCI BARs
+ * @adapter: adapter to map memory regions for
+ *
+ * Returns: %0 on success, negative on failure
+ */
+static int ixd_iomap_regions(struct ixd_adapter *adapter)
+{
+	const struct ixd_bar_region regions[] = {
+		{
+			.offset = PFGEN_RTRIG,
+			.size = PFGEN_RTRIG_REG_LEN,
+		},
+		{
+			.offset = PF_FW_MBX,
+			.size = PF_FW_MBX_REG_LEN,
+		},
+	};
+
+	for (int i = 0; i < ARRAY_SIZE(regions); i++) {
+		struct libie_mmio_info *mmio_info = &adapter->hw;
+		bool map_ok;
+
+		map_ok = libie_pci_map_mmio_region(mmio_info,
+						   regions[i].offset,
+						   regions[i].size);
+		if (!map_ok) {
+			dev_err(ixd_to_dev(adapter),
+				"Failed to map PCI device MMIO region\n");
+
+			libie_pci_unmap_all_mmio_regions(mmio_info);
+			return -EIO;
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * ixd_probe - probe a CPF PCI device
+ * @pdev: corresponding PCI device
+ * @ent: entry in ixd_pci_tbl
+ *
+ * Returns: %0 on success, negative errno code on failure
+ */
+static int ixd_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
+{
+	struct ixd_adapter *adapter;
+	int err;
+
+	adapter = devm_kzalloc(&pdev->dev, sizeof(*adapter), GFP_KERNEL);
+	if (!adapter)
+		return -ENOMEM;
+	adapter->hw.pdev = pdev;
+	INIT_LIST_HEAD(&adapter->hw.mmio_list);
+
+	err = libie_pci_init_dev(pdev);
+	if (err)
+		return err;
+
+	pci_set_drvdata(pdev, adapter);
+
+	return ixd_iomap_regions(adapter);
+}
+
+static const struct pci_device_id ixd_pci_tbl[] = {
+	{ PCI_VDEVICE(INTEL, IXD_DEV_ID_CPF) },
+	{ }
+};
+MODULE_DEVICE_TABLE(pci, ixd_pci_tbl);
+
+static struct pci_driver ixd_driver = {
+	.name			= KBUILD_MODNAME,
+	.id_table		= ixd_pci_tbl,
+	.probe			= ixd_probe,
+	.remove			= ixd_remove,
+	.shutdown		= ixd_shutdown,
+};
+module_pci_driver(ixd_driver);
-- 
2.47.0

