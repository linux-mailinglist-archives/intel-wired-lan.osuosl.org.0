Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DCCA7B860D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Oct 2023 19:02:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD4814226A;
	Wed,  4 Oct 2023 17:02:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD4814226A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696438948;
	bh=thGIsKuPu13958bJKbrjY8I1kn96l2f03r+aGRZOIEg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=sAAPybDabEkl8JAU51Kbd2qMajRAOBa4JCZ44c8RMk+oFJsbql1i8ak7ewYm0DYln
	 MKZ2fhnbxnuAVFR3KROQu54M1FlLtlG3uqQYjIx1Ay88nAaMVD8ZIFtMArfMdgINTC
	 OVkPawPBNW78oiMxVG8O2FuF4vE6wqaeY8NEGJo7R9563nRJNo1F/FJ7PE8wVSHSgZ
	 QlOLD3YSkG/WxWzuGjrrDr9VwLkxAcnpLS5ODZGxpZTnfN0hD7UxMgSekvmDJWznfZ
	 t9VomNgzJQyZV3PpRbxo8KK5d8mxkwOsRAKnjsu2/4mBaipEfao/UkxBbbHeMd3d37
	 dIC2tgxz4F3dA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yQ0LvvOpSh2s; Wed,  4 Oct 2023 17:02:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A37342084;
	Wed,  4 Oct 2023 17:02:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A37342084
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A9EDA1BF423
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 17:02:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8F0CB404A8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 17:02:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F0CB404A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5c2UDmcsjzyW for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Oct 2023 17:02:20 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 06DFF401ED
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 17:02:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 06DFF401ED
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="362589464"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="362589464"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 10:02:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="821765087"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="821765087"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 10:02:17 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  4 Oct 2023 10:02:14 -0700
Message-Id: <20231004170214.474792-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696438940; x=1727974940;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=88we1DSu8Bs6O8JdeNsZBSGueiNIhCurw3oB1CXvjPA=;
 b=a9Dspv2LRwp78nqGY5TlKGm726kB1PNBX+LbIZcOdV9BrSSi3a3DGR+R
 weBqkNu912g+1QDydj/Yccd18Qje3IdLML1M/Ezj9zWYn7sVYbsXKiAoo
 twVIz1barwvOwnEMWfJNfuk2SQlYt61luX3lKYRorJdT3o762aqNmgRzn
 qOYXUszgRyLAtzjKlR7MtCbJZGMqUp9N4G4zt1D+xSl//d15L52AnL1yX
 Z8HN2ZNQeNMW8iDSzDcSpxD0tSXHfMm4hQfmUTdGnyfAUbV2ZZOUPJCwt
 af0De+b3s5huLYJDI+FYKksQZas+7Ig/dpiVkDRaMcW+KN/HS4QG+QwFc
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=a9Dspv2L
Subject: [Intel-wired-lan] [PATCH iwl-net v3] ice: reset first in crash dump
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

Fixes: 837f08fdecbe ("ice: Add basic driver framework for Intel(R) E800 Series")

Reported-by: Vishal Agrawal <vagrawal@redhat.com>
Reviewed-by: Jay Vosburgh <jay.vosburgh@canonical.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
v3: add Fixes tag as approximate, added Jay's RB tag
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
