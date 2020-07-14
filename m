Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 867FA2200AC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2020 00:32:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 18D652375C;
	Tue, 14 Jul 2020 22:32:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yHqEf5H6BSxg; Tue, 14 Jul 2020 22:32:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1416920767;
	Tue, 14 Jul 2020 22:31:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 714BC1BF33B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2020 22:31:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6A3CD87880
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2020 22:31:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZSe3ABcg-aDi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jul 2020 22:31:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 52B7C8789D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2020 22:31:54 +0000 (UTC)
IronPort-SDR: 2vgsib/IYXPOFwUaEITGCh6cH7JPzEa5ZlRDT0G2Fwx4fwFcNqUSlWj4j2NqWBCNdjyLEVu/OP
 ppXNvJe37KrQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9682"; a="150455660"
X-IronPort-AV: E=Sophos;i="5.75,353,1589266800"; d="scan'208";a="150455660"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 15:31:53 -0700
IronPort-SDR: btYDKRueVZYALczrywlFlWNcPh55jGxeM2aIb3Q1Hsrz99FSSgQ9OtviDrfBppmJFtLxvMjWqe
 j0OvyYW+JX6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,353,1589266800"; d="scan'208";a="270120833"
Received: from alicemic-1.jf.intel.com ([10.166.17.62])
 by fmsmga008.fm.intel.com with ESMTP; 14 Jul 2020 15:31:33 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.michael@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Tue, 14 Jul 2020 07:03:33 -0700
Message-Id: <20200714140334.23696-14-alice.michael@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200714140334.23696-1-alice.michael@intel.com>
References: <20200714140334.23696-1-alice.michael@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next, v5,
 13/14] iecm: Add iecm to the kernel build system
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
Cc: Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Phani Burra <phani.r.burra@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This introduces iecm as a module to the kernel, and adds
relevant documentation.

Signed-off-by: Alice Michael <alice.michael@intel.com>
Signed-off-by: Alan Brady <alan.brady@intel.com>
Signed-off-by: Phani Burra <phani.r.burra@intel.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Reviewed-by: Donald Skidmore <donald.c.skidmore@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
---
 .../device_drivers/ethernet/intel/iecm.rst    | 93 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 drivers/net/ethernet/intel/Kconfig            | 10 ++
 drivers/net/ethernet/intel/Makefile           |  1 +
 drivers/net/ethernet/intel/iecm/Makefile      | 19 ++++
 5 files changed, 124 insertions(+)
 create mode 100644 Documentation/networking/device_drivers/ethernet/intel/iecm.rst
 create mode 100644 drivers/net/ethernet/intel/iecm/Makefile

diff --git a/Documentation/networking/device_drivers/ethernet/intel/iecm.rst b/Documentation/networking/device_drivers/ethernet/intel/iecm.rst
new file mode 100644
index 000000000000..aefa6bd1094d
--- /dev/null
+++ b/Documentation/networking/device_drivers/ethernet/intel/iecm.rst
@@ -0,0 +1,93 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+============================
+Intel Ethernet Common Module
+============================
+
+The Intel Ethernet Common Module is meant to serve as an abstraction layer
+between device specific implementation details and common net device driver
+flows. This library provides several function hooks which allow a device driver
+to specify register addresses, control queue communications, and other device
+specific functionality.  Some functions are required to be implemented while
+others have a default implementation that is used when none is supplied by the
+device driver.  Doing this, a device driver can be written to take advantage
+of existing code while also giving the flexibility to implement device specific
+features.
+
+The common use case for this library is for a network device driver that wants
+to specify its own device specific details but also leverage the more common
+code flows found in network device drivers.
+
+Sections in this document:
+	Entry Point
+	Exit Point
+	Register Operations API
+	Virtchnl Operations API
+
+Entry Point
+~~~~~~~~~~~
+The primary entry point to the library is the iecm_probe function.  Prior to
+calling this, device drivers must have allocated an iecm_adapter struct and
+initialized it with the required API functions.  The adapter struct, along with
+the pci_dev struct and the pci_device_id struct, is provided to iecm_probe
+which finalizes device initialization and prepares the device for open.
+
+The iecm_dev_ops struct within the iecm_adapter struct is the primary vehicle
+for passing information from device drivers to the common module.  A dependent
+module must define and assign a reg_ops_init function which will assign the
+respective function pointers to initialize register values (see iecm_reg_ops
+struct).  These are required to be provided by the dependent device driver as
+no suitable default can be assumed for register addresses.
+
+The vc_ops_init function pointer and the related iecm_virtchnl_ops struct are
+optional and should only be necessary for device drivers which use a different
+method/timing for communicating across a mailbox to the hardware.  Within iecm
+is a default interface provided in the case where one is not provided by the
+device driver.
+
+Exit Point
+~~~~~~~~~~
+When the device driver is being prepared to be removed through the pci_driver
+remove callback, it is required for the device driver to call iecm_remove with
+the pci_dev struct provided.  This is required to ensure all resources are
+properly freed and returned to the operating system.
+
+Register Operations API
+~~~~~~~~~~~~~~~~~~~~~~~
+iecm_reg_ops contains three different function pointers relating to initializing
+registers for the specific net device using the library.
+
+ctlq_reg_init relates specifically to setting up registers related to control
+queue/mailbox communications.  Registers that should be defined include: head,
+tail, len, bah, bal, len_mask, len_ena_mask, and head_mask.
+
+vportq_reg_init relates to setting up queue registers.  The tail registers to
+be assigned to the iecm_queue struct for each RX/TX queue.
+
+intr_reg_init relates to any registers needed to setup interrupts.  These
+include registers needed to enable the interrupt and change ITR settings.
+
+If the initialization function finds that one or more required function
+pointers were not provided, an error will be issued and the device will be
+inoperable.
+
+
+Virtchnl Operations API
+~~~~~~~~~~~~~~~~~~~~~~~
+The virtchnl is a conduit between driver and hardware that allows device
+drivers to send and receive control messages to/from hardware.  This is
+optional to be specified as there is a general interface that can be assumed
+when using this library.  However, if a device deviates in some way to
+communicate across the mailbox correctly, this interface is provided to allow
+that.
+
+If vc_ops_init is set in the dev_ops field of the iecm_adapter struct, then it
+is assumed the device driver is providing its own interface to do virtchnl
+communications.  While providing vc_ops_init is optional, if it is provided, it
+is required that the device driver provide function pointers for those functions
+in vc_ops, with exception for the enable_vport, disable_vport, and destroy_vport
+functions which may not be required for all devices.
+
+If the initialization function finds that vc_ops_init was defined but one or
+more required function pointers were not provided, an error will be issued and
+the device will be inoperable.
diff --git a/MAINTAINERS b/MAINTAINERS
index b325ed166228..46274e134eda 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8652,6 +8652,7 @@ F:	Documentation/networking/device_drivers/ethernet/intel/
 F:	drivers/net/ethernet/intel/
 F:	drivers/net/ethernet/intel/*/
 F:	include/linux/avf/virtchnl.h
+F:	include/linux/net/intel/
 
 INTEL FRAMEBUFFER DRIVER (excluding 810 and 815)
 M:	Maik Broemme <mbroemme@libmpq.org>
diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index 3cd13fd55011..db200ff7fb98 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -342,4 +342,14 @@ config IGC
 	  To compile this driver as a module, choose M here. The module
 	  will be called igc.
 
+config IECM
+	tristate "Intel(R) Ethernet Common Module Support"
+	default n
+	depends on PCI
+	help
+	 To compile this driver as a module, choose M here. The module
+	 will be called iecm.  MSI-X interrupt support is required
+
+	  More specific information on configuring the driver is in
+	  <file:Documentation/networking/device_drivers/ethernet/intel/iecm.rst>.
 endif # NET_VENDOR_INTEL
diff --git a/drivers/net/ethernet/intel/Makefile b/drivers/net/ethernet/intel/Makefile
index 3075290063f6..c9eba9cc5087 100644
--- a/drivers/net/ethernet/intel/Makefile
+++ b/drivers/net/ethernet/intel/Makefile
@@ -16,3 +16,4 @@ obj-$(CONFIG_IXGB) += ixgb/
 obj-$(CONFIG_IAVF) += iavf/
 obj-$(CONFIG_FM10K) += fm10k/
 obj-$(CONFIG_ICE) += ice/
+obj-$(CONFIG_IECM) += iecm/
diff --git a/drivers/net/ethernet/intel/iecm/Makefile b/drivers/net/ethernet/intel/iecm/Makefile
new file mode 100644
index 000000000000..61c814013582
--- /dev/null
+++ b/drivers/net/ethernet/intel/iecm/Makefile
@@ -0,0 +1,19 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# Copyright (C) 2020 Intel Corporation
+
+#
+# Makefile for the Intel(R) Ethernet Common Module
+#
+
+obj-$(CONFIG_IECM) += iecm.o
+
+iecm-y := \
+	iecm_lib.o \
+	iecm_virtchnl.o \
+	iecm_txrx.o \
+	iecm_singleq_txrx.o \
+	iecm_ethtool.o \
+	iecm_controlq.o \
+	iecm_osdep.o \
+	iecm_controlq_setup.o \
+	iecm_main.o
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
