Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EBF5AF3FA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Sep 2019 03:30:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BC027203D9;
	Wed, 11 Sep 2019 01:30:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1efWpz7Ys21R; Wed, 11 Sep 2019 01:30:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 86600221F0;
	Wed, 11 Sep 2019 01:30:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8EFFC1BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2019 01:30:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 80D0A85F4B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2019 01:30:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MKjKcRuCDcFy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Sep 2019 01:30:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 22EBF85F43
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2019 01:30:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 18:30:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,491,1559545200"; d="scan'208";a="184343713"
Received: from ssaleem-mobl.amr.corp.intel.com ([10.255.81.181])
 by fmsmga008.fm.intel.com with ESMTP; 10 Sep 2019 18:30:30 -0700
From: Shiraz Saleem <shiraz.saleem@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 10 Sep 2019 20:30:11 -0500
Message-Id: <20190911013012.710-17-shiraz.saleem@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190911013012.710-1-shiraz.saleem@intel.com>
References: <20190911013012.710-1-shiraz.saleem@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC rdma-next 16/17] RDMA/irdma: Add Kconfig and
 Makefile
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
Cc: Shiraz Saleem <shiraz.saleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add Kconfig and Makefile to build irdma driver

Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
---
 drivers/infiniband/Kconfig           |  1 +
 drivers/infiniband/hw/Makefile       |  1 +
 drivers/infiniband/hw/irdma/Kconfig  | 11 +++++++++++
 drivers/infiniband/hw/irdma/Makefile | 31 +++++++++++++++++++++++++++++++
 4 files changed, 44 insertions(+)
 create mode 100644 drivers/infiniband/hw/irdma/Kconfig
 create mode 100644 drivers/infiniband/hw/irdma/Makefile

diff --git a/drivers/infiniband/Kconfig b/drivers/infiniband/Kconfig
index b44b1c3..0b31438 100644
--- a/drivers/infiniband/Kconfig
+++ b/drivers/infiniband/Kconfig
@@ -87,6 +87,7 @@ source "drivers/infiniband/hw/cxgb3/Kconfig"
 source "drivers/infiniband/hw/cxgb4/Kconfig"
 source "drivers/infiniband/hw/efa/Kconfig"
 source "drivers/infiniband/hw/i40iw/Kconfig"
+source "drivers/infiniband/hw/irdma/Kconfig"
 source "drivers/infiniband/hw/mlx4/Kconfig"
 source "drivers/infiniband/hw/mlx5/Kconfig"
 source "drivers/infiniband/hw/ocrdma/Kconfig"
diff --git a/drivers/infiniband/hw/Makefile b/drivers/infiniband/hw/Makefile
index 433fca5..d61d690 100644
--- a/drivers/infiniband/hw/Makefile
+++ b/drivers/infiniband/hw/Makefile
@@ -5,6 +5,7 @@ obj-$(CONFIG_INFINIBAND_CXGB3)		+= cxgb3/
 obj-$(CONFIG_INFINIBAND_CXGB4)		+= cxgb4/
 obj-$(CONFIG_INFINIBAND_EFA)		+= efa/
 obj-$(CONFIG_INFINIBAND_I40IW)		+= i40iw/
+obj-$(CONFIG_INFINIBAND_IRDMA)		+= irdma/
 obj-$(CONFIG_MLX4_INFINIBAND)		+= mlx4/
 obj-$(CONFIG_MLX5_INFINIBAND)		+= mlx5/
 obj-$(CONFIG_INFINIBAND_OCRDMA)		+= ocrdma/
diff --git a/drivers/infiniband/hw/irdma/Kconfig b/drivers/infiniband/hw/irdma/Kconfig
new file mode 100644
index 0000000..652f5f9
--- /dev/null
+++ b/drivers/infiniband/hw/irdma/Kconfig
@@ -0,0 +1,11 @@
+config INFINIBAND_IRDMA
+       tristate "Intel(R) Ethernet Connection RDMA Driver"
+       depends on INET && (I40E || ICE)
+       depends on IPV6 || !IPV6
+       depends on PCI
+       select GENERIC_ALLOCATOR
+       ---help---
+       This is an Ethernet RDMA driver that supports E810 (iWARP/RoCE)
+       and X722 (iWARP) network devices.
+       To compile this driver as a module, choose M here. The module
+       will be called irdma.
diff --git a/drivers/infiniband/hw/irdma/Makefile b/drivers/infiniband/hw/irdma/Makefile
new file mode 100644
index 0000000..455940d
--- /dev/null
+++ b/drivers/infiniband/hw/irdma/Makefile
@@ -0,0 +1,31 @@
+# SPDX-License-Identifier: GPL-2.0 OR Linux-OpenIB
+# Copyright (c) 2019, Intel Corporation.
+
+#
+# Makefile for the Intel(R) Ethernet Connection RDMA Linux Driver
+#
+
+ccflags-y := -I $(srctree)/drivers/net/ethernet/intel/i40e
+ccflags-y += -I $(srctree)/drivers/net/ethernet/intel/ice
+
+obj-$(CONFIG_INFINIBAND_IRDMA) += irdma.o
+
+irdma-objs := cm.o        \
+              ctrl.o      \
+              hmc.o       \
+              hw.o        \
+              i40iw_hw.o  \
+              i40iw_if.o  \
+              icrdma_hw.o \
+              irdma_if.o  \
+              main.o      \
+              pble.o      \
+              puda.o      \
+              trace.o     \
+              uda.o       \
+              uk.o        \
+              utils.o     \
+              verbs.o     \
+              ws.o        \
+
+CFLAGS_trace.o = -I$(src)
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
