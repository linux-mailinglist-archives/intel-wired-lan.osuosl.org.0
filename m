Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3217A6CF5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Sep 2023 23:30:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 676A38216B;
	Tue, 19 Sep 2023 21:30:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 676A38216B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695159013;
	bh=1vm1QBViLm483KXD5JsMYRlHrK96l76NcagWPd1zvl0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Fownx5iYTSQHQ9PcpF8kh0mXXr+xLI0FkxE06BH1F7OJJHom1G9sIvpfhCjnWu4ne
	 VZ8K/b+ZZlx64B8XqhQ0TtJTN6HJ+d8DK6KtcfhI2c4bwB9ys0tXt7Oymh+J2R1JFl
	 8VW9GGRONrmmJcszufdJH6fT+o0GJtMlBKkOV9w63l3hGzmxJvsd7JPigZKbQ5aqus
	 Q6svxhU0ZCeLzl4LnApsKUERDW1SE4RmOUOlbynwbWwLopStbjayLQ6dxXcdCnxX4c
	 GesnyW0JbwWX6YGhG7bzXPZD6PNA848/coJGTK69licvQH80gCORl7uiXxyeBoruxu
	 yA4zuEFAHgAMQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZVe6jy4bjmdB; Tue, 19 Sep 2023 21:30:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42C4A82021;
	Tue, 19 Sep 2023 21:30:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 42C4A82021
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A34851BF401
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 21:30:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6CEC74179A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 21:30:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6CEC74179A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id prPfz57vPAmQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Sep 2023 21:30:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8C3904179D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 21:30:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C3904179D
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="370371207"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="370371207"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 14:30:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="781438589"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="781438589"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 14:30:05 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 19 Sep 2023 14:29:59 -0700
Message-Id: <20230919212959.1939749-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695159006; x=1726695006;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xmrU+1T0MIKHsMrQLcIKm6SI9n4e26Ci6nUCbS3K5ec=;
 b=lNk/X/Z+f44N5rcscjkPOyYC3dXm4EWmELquv8Kim3xB63e9rz02pi5+
 NsO6gyn4MFUP6RWvfDDForLjvG9Ta9M/aeTOoiPKs81Zg0E8cO+ZMSktK
 le9qUfac2sArUmr6gntufVO+PMzcu017QeWUKEqi15BFb7f/hcm/iExoT
 QdBa0fHjA66xxVDQODHENXAuqxcrOu2sorsBURbBk9yxmhTc+PMQPfemK
 kmfJyTQNdl8BI0mLIG4JFS6/lvSdo1Jr/S6n8VD4RHWlu7sZxvRZObAhF
 D+yqQ+UdwHu0RJJh1malcODmdB8OSkBIsj7Q1RC4LSsp4mNcPiBdRUqls
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lNk/X/Z+
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: reset first in crash dump
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, jkc@redhat.com,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When booting into the crash dump kernels there are cases where upon
enabling the device, the system under test will panic or machine check.

One such test is to
- load ice driver
$ modprobe ice
- enable SR-IOV (2 VFs)
$ echo 2 > /sys/class/net/eth0/device/sriov_num_vfs
- crash
echo c > /proc/sysrq-trigger
- load ice driver (or happens automatically)
modprobe ice
- crash during pcim_enable_device()

Avoid this problem by issuing a FLR to the device via PCIe config space
on the crash kernel, to clear out any outstanding transactions and stop
all queues and interrupts. Restore config space afterword because the
driver won't load successfully otherwise.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
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
-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
