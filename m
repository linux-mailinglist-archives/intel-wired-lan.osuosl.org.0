Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 100DA7B5BD6
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Oct 2023 22:09:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6B5624119C;
	Mon,  2 Oct 2023 20:09:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B5624119C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696277394;
	bh=/zJgbA5bhhGR6UvSLB5Y4LhXfuApkEkAHGlwa153ANw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=6B9ZTHgYu/WYmdKIP380K6eu0plR7R1qabwbCG0O4UyQF0rsh98fqVD/0HIGNK/rx
	 4RHSSyivl/87c8Gny+dOlKesmWSWJC+50nKgk5dfzPyVN9Jht5nqRA7/k0hLcZZdN2
	 6Aaor8oGI7YrqEwBCVN4UBxf0cHgDU0Unjrbn/HXlzhhIRhU87h2HRsU2AmkcwAV+d
	 KwlCMvp8cW95hI8y77DlN8J4ptm3LEYbknwqek1rzu9NXiRS6jFBinVwYGQjVJ3TKO
	 wITjVAuIhHszNeZz67SS97y7N9rJD4Gtv5qWI57m8Kkixn4uvvlZn23OuZgEDHcicG
	 Wq8jwTK9h/8nA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mFYHDrYLIzV5; Mon,  2 Oct 2023 20:09:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2F92D41176;
	Mon,  2 Oct 2023 20:09:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F92D41176
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 251AA1BF34D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Oct 2023 20:09:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EE53960B71
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Oct 2023 20:09:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE53960B71
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TclDCs1J5Q3p for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Oct 2023 20:09:46 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 02 Oct 2023 20:09:46 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 593D960B70
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 593D960B70
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Oct 2023 20:09:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="1318508"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; 
   d="scan'208";a="1318508"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 13:02:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="750696427"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="750696427"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 13:02:38 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  2 Oct 2023 13:02:32 -0700
Message-Id: <20231002200232.3682771-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696277387; x=1727813387;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QSUega9DohiHtZANJ0msxTsPiln6mFa8NddCKUeRwmk=;
 b=EPikVpQCNXHqgKBOOM0s+R4fSE21t7kpqDkompao6MjVlr0dBROEoxhY
 p5S7ophZM0QFecNyqZYUdTKOtB3xxI8V4+xBnr7THrZc9v+g9prT0djpU
 v6faw5AdkHbVq9lVGZiReq3yu+7a2G+nYXwoizhx4Y0IvUE8VEY1x6rCe
 3L+gGD4QFHmdUt+mxOg2BhIuYMaNQp2hiLkyyGZ61CIbRgIalNZew8eSa
 SkNSryQbm8c4ms+Bhj/YgngWAc+ykjHcQ51ai7y+7tvi4N7nR4DOMEb1n
 87u06RWo+QUgg6tD+5scFDOLuF1m7+m5MfhfJ0tgANiIq7P1u4wZXsMhv
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EPikVpQC
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: reset first in crash dump
 kernels
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
Cc: pmenzel@molgen.mpg.de, Vishal Agrawal <vagrawal@redhat.com>,
 linux-pci@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 netdev@vger.kernel.org, jkc@redhat.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When the system boots into the crash dump kernel after a panic, the ice
networking device may still have pending transactions that can cause errors
or machine checks when the device is re-enabled. This can prevent the crash
dump kernel from loading the driver or collecting the crash data.

To avoid this issue, perform a function level reset (FLR) on the ice device
via PCIe config space before enabling it on the crash kernel. This will
clear any outstanding transactions and stop all queues and interrupts.
Restore the config space after the FLR, otherwise it was found in testing
that the driver wouldn't load successfully.

The following sequence causes the original issue:
- Load the ice driver with modprobe ice
- Enable SR-IOV with 2 VFs: echo 2 > /sys/class/net/eth0/device/sriov_num_vfs
- Trigger a crash with echo c > /proc/sysrq-trigger
- Load the ice driver again (or let it load automatically) with modprobe ice
- The system crashes again during pcim_enable_device()

Reported-by: Vishal Agrawal <vagrawal@redhat.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
v2: respond to list comments and update commit message
v1: initial version
---
 drivers/net/ethernet/intel/ice/ice_main.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index c8286adae946..6550c46e4e36 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6,6 +6,7 @@
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
 #include <generated/utsrelease.h>
+#include <linux/crash_dump.h>
 #include "ice.h"
 #include "ice_base.h"
 #include "ice_lib.h"
@@ -5014,6 +5015,20 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		return -EINVAL;
 	}
 
+	/* when under a kdump kernel initiate a reset before enabling the
+	 * device in order to clear out any pending DMA transactions. These
+	 * transactions can cause some systems to machine check when doing
+	 * the pcim_enable_device() below.
+	 */
+	if (is_kdump_kernel()) {
+		pci_save_state(pdev);
+		pci_clear_master(pdev);
+		err = pcie_flr(pdev);
+		if (err)
+			return err;
+		pci_restore_state(pdev);
+	}
+
 	/* this driver uses devres, see
 	 * Documentation/driver-api/driver-model/devres.rst
 	 */

base-commit: 6a70e5cbedaf8ad10528ac9ac114f3ec20f422df
-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
