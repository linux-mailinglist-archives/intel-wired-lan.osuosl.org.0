Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C00A55BF872
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Sep 2022 10:00:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F28D961007;
	Wed, 21 Sep 2022 07:59:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F28D961007
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663747200;
	bh=rKqYsXCT6mwTvDeizzQAeVKIEKGiTGRXy4RQ/odQ9BM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=CmCxIyOAZ54wz3LfYUf96oZQW1NXssYF3gYZXFNuxdGrhCa9EDobFfbor9KJvGy6W
	 KWIa5q5dI/brVyx09fj/15lA6vF0vhv2S2sccXtPrHP4xRn6pL25lea4YP5pop8hEd
	 2sCXV6a0ZhZMm2HLLQL8+RsfV+lFLWdmJORS/5GVowugS91MOIEk0ZXx2atUtGZniI
	 Ko5oGJt0XXpT2i9UtTkFD8aANFwTesojyG54e3xzzN3tp6M3QrvmRoDr9SY16vt5qu
	 gQNK2AOY2sD65DdufknWcmvdmFCOLOffIIEJBrnhYMkqOIMrsyr3PewCHCFnCKkxxS
	 esTZZlEUUI5bQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zA8tntVXMHRP; Wed, 21 Sep 2022 07:59:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C69F861001;
	Wed, 21 Sep 2022 07:59:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C69F861001
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 47AB01BF228
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 07:59:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 12F7D40B7C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 07:59:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12F7D40B7C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c8HqY4aAm4vt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Sep 2022 07:59:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 59DF4402E7
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 59DF4402E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 07:59:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="298652351"
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="298652351"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 00:59:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="761651656"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.129])
 by fmsmga001.fm.intel.com with ESMTP; 21 Sep 2022 00:59:43 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 21 Sep 2022 10:59:37 +0300
Message-Id: <20220921075937.1117880-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663747193; x=1695283193;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Dw448ofKjwCtvAOdaTvuIrTzsvmjoeTM3TRb3hnVA+Q=;
 b=YuHtb9rj09X5pf4nRnQDSACCb8meJkAXRbmnied6aSQhTZzHfZYzMXBz
 Myx9vETaOhkW229Srd6HBfkoqR8hnWC6nVvDA0yvKjbBCpklLqZyPA4wO
 bWaqySOwSYk98saNGLVx5kF80CnukR+sSE6MZrPNKkXLRu3fqtXVvScvE
 nZRKauPHVNo+7ZrVpHK8cNi7q6z28gzkyTNn14Nm4GwsWDLusXVbGbMiI
 xTjVylGoZYV4vMnVfzOMdSLcPMwMeS47D0RhluAFFMYadaQOQPBXEY+Z4
 HlQSRt5O5QK8PIa1CHmYf5ggiN1GKu7fly0U4s6cHgXjzcqwXbPEsdxFj
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YuHtb9rj
Subject: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Add e1000e trace module
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add tracepoints to the driver via a new file e1000e_trace.h and some new
trace calls added in interesting places in the driver. Add some tracing
for s0ix flows to help in a debug of shared resources with the CSME
firmware. The idea here is that tracepoints have such low performance cost
when disabled that we can leave these in the upstream driver.

Performance not affected, and this can be very useful for debugging and
adding new trace events to paths in the future.

Usage:
echo "e1000e_trace:*" > /sys/kernel/debug/tracing/set_event
echo 1 > /sys/kernel/debug/tracing/events/e1000e_trace/enable

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/e1000e/Makefile    |  3 ++
 .../net/ethernet/intel/e1000e/e1000e_trace.h  | 42 +++++++++++++++++++
 drivers/net/ethernet/intel/e1000e/netdev.c    |  4 ++
 3 files changed, 49 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/e1000e/e1000e_trace.h

diff --git a/drivers/net/ethernet/intel/e1000e/Makefile b/drivers/net/ethernet/intel/e1000e/Makefile
index 44e58b6e7660..0baa15503c38 100644
--- a/drivers/net/ethernet/intel/e1000e/Makefile
+++ b/drivers/net/ethernet/intel/e1000e/Makefile
@@ -5,6 +5,9 @@
 # Makefile for the Intel(R) PRO/1000 ethernet driver
 #
 
+ccflags-y += -I$(src)
+subdir-ccflags-y += -I$(src)
+
 obj-$(CONFIG_E1000E) += e1000e.o
 
 e1000e-objs := 82571.o ich8lan.o 80003es2lan.o \
diff --git a/drivers/net/ethernet/intel/e1000e/e1000e_trace.h b/drivers/net/ethernet/intel/e1000e/e1000e_trace.h
new file mode 100644
index 000000000000..3d8c39076513
--- /dev/null
+++ b/drivers/net/ethernet/intel/e1000e/e1000e_trace.h
@@ -0,0 +1,42 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright(c) 2018, Intel Corporation. */
+/* Modeled on trace-events-sample.h */
+/* The trace subsystem name for e1000e will be "e1000e_trace".
+ *
+ * This file is named e1000e_trace.h.
+ *
+ * Since this include file's name is different from the trace
+ * subsystem name, we'll have to define TRACE_INCLUDE_FILE at the end
+ * of this file.
+ */
+
+#undef TRACE_SYSTEM
+#define TRACE_SYSTEM e1000e_trace
+
+#if !defined(_TRACE_E1000E_TRACE_H) || defined(TRACE_HEADER_MULTI_READ)
+#define _TRACE_E1000E_TRACE_H
+
+#include <linux/tracepoint.h>
+
+TRACE_EVENT(e1000e_trace_mac_register,
+	    TP_PROTO(uint32_t reg),
+	    TP_ARGS(reg),
+	    TP_STRUCT__entry(__field(uint32_t,	reg)),
+	    TP_fast_assign(__entry->reg = reg;),
+	    TP_printk("event: TraceHub e1000e mac register: 0x%08x",
+		      __entry->reg)
+);
+
+#endif
+/* This must be outside ifdef _E1000E_TRACE_H */
+/* This trace include file is not located in the .../include/trace
+ * with the kernel tracepoint definitions, because we're a loadable
+ * module.
+ */
+
+#undef TRACE_INCLUDE_PATH
+#define TRACE_INCLUDE_PATH .
+#undef TRACE_INCLUDE_FILE
+#define TRACE_INCLUDE_FILE e1000e_trace
+
+#include <trace/define_trace.h>
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 9bc5a0de07a9..d8dbe632891f 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -28,6 +28,8 @@
 #include <linux/suspend.h>
 
 #include "e1000.h"
+#define CREATE_TRACE_POINTS
+#include "e1000e_trace.h"
 
 char e1000e_driver_name[] = "e1000e";
 
@@ -6340,6 +6342,7 @@ static void e1000e_s0ix_entry_flow(struct e1000_adapter *adapter)
 		mac_data = er32(H2ME);
 		mac_data |= E1000_H2ME_START_DPG;
 		mac_data &= ~E1000_H2ME_EXIT_DPG;
+		trace_e1000e_trace_mac_register(mac_data);
 		ew32(H2ME, mac_data);
 	} else {
 		/* Request driver configure the device to S0ix */
@@ -6494,6 +6497,7 @@ static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
 		mac_data = er32(H2ME);
 		mac_data &= ~E1000_H2ME_START_DPG;
 		mac_data |= E1000_H2ME_EXIT_DPG;
+		trace_e1000e_trace_mac_register(mac_data);
 		ew32(H2ME, mac_data);
 
 		/* Poll up to 2.5 seconds for ME to unconfigure DPG.
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
