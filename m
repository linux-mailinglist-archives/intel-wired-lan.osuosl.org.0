Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBCCA8ADFF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Apr 2025 04:16:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B2207608C3;
	Wed, 16 Apr 2025 02:16:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iyjvTTSfpl8g; Wed, 16 Apr 2025 02:16:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04051608F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744769776;
	bh=KtxkmrzNNrccQKjtuodEwzpakOgbPVStTZnCzGC/u3E=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=g9MAuCQS9lzg+n2yfZ5xc65Xs1SqMgOkhn8rSJxiAFh6GuSm0PObd0lE1Tnxe/fpg
	 YW0f0u1Djbev9dpVhkUBuQ3AVPc64lNmBb4dUCWjskNSLl+M1zDo0dBfXwG+GebdGe
	 eWaOnCsKf+oKQt4cl50ZmRMOOXnW9h16iIl9k4a/8htlamjaAe3uPF9bxMy/RBqyJB
	 Hdt27XWxJorZ6+kin6tu7RWjTciX+oAvloMAWzuT8DKKwo3KAGTOlOKHz9koMEpgq0
	 LXiKrc2gc4jJcTAFos/JHtDj2TvdFmZkNdt/MvaLtXO7yOaM8AGh1kCFOnR/N/R0DX
	 eed8xlK7THFYg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 04051608F3;
	Wed, 16 Apr 2025 02:16:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 19EA6435
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 02:16:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 972DE83EC8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 02:16:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4dg05BjWYwXH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 02:16:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=tatyana.e.nikolova@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C4BA083B57
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C4BA083B57
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C4BA083B57
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 02:16:12 +0000 (UTC)
X-CSE-ConnectionGUID: MynUpt5VT5Kyvfp8vtxIOw==
X-CSE-MsgGUID: CW91M4yXTZuFouebfliMnQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="50125556"
X-IronPort-AV: E=Sophos;i="6.15,214,1739865600"; d="scan'208";a="50125556"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 19:16:12 -0700
X-CSE-ConnectionGUID: 9eSx1RFYQ7WwEyFpYPCNnQ==
X-CSE-MsgGUID: NQUPF83FT/K7KSTZ1San8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,214,1739865600"; d="scan'208";a="130605790"
Received: from bnkannan-mobl1.amr.corp.intel.com (HELO
 soc-PF51RAGT.clients.intel.com) ([10.246.114.218])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 19:16:11 -0700
From: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
To: jgg@nvidia.com,
	leon@kernel.org,
	intel-wired-lan@lists.osuosl.org
Cc: linux-rdma@vger.kernel.org,
	netdev@vger.kernel.org
Date: Tue, 15 Apr 2025 21:15:45 -0500
Message-ID: <20250416021549.606-2-tatyana.e.nikolova@intel.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20250416021549.606-1-tatyana.e.nikolova@intel.com>
References: <20250416021549.606-1-tatyana.e.nikolova@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744769773; x=1776305773;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8BvrqoyWkuGLWTBq31HsE3fGTiSi0Tns1abueBYwNvM=;
 b=ltSuOloW+tMu1xC9WfIfqzL7Dhjo442CRSOZPkIMECqCQ5cAsfkI78rU
 Q8008w8HCzohWzj1FUddxd9vxHhJQZS5hjKmLx33okJ6lPWWHTqzmrir3
 KU2ZL1tUhkNrzvfgugNByk5HP/r6X7k5wXQ3abbCdvHdWWqI0v6iEOsah
 1D7SfCq7QDIVXexldmVZhptCSCDFSsdSfJ8shwp9qcVeFweSYpPeOBEPS
 TWyYI10zzcJmQrKqtVD8j65Lux7mkFEcINOLvgChveYCMnpMieJ/I1cwX
 KzX3lP0LCewl+W4XfwaZ5oClKB6tIi+PyNxjSzUgPc89vwpkpXFAihtQI
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ltSuOloW
Subject: [Intel-wired-lan] [iwl-next v5 1/5] iidc/ice/irdma: Rename IDC
 header file
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

From: Dave Ertman <david.m.ertman@intel.com>

To prepare for the IDC upgrade to support different CORE
PCI drivers, rename header file from iidc.h to iidc_rdma.h
since this files functionality is specifically for RDMA support.

Use net/dscp.h include in irdma osdep.h and DSCP_MAX type.h,
instead of iidc header and define.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
---
 MAINTAINERS                                     | 2 +-
 drivers/infiniband/hw/irdma/main.h              | 2 +-
 drivers/infiniband/hw/irdma/osdep.h             | 2 +-
 drivers/infiniband/hw/irdma/type.h              | 4 ++--
 drivers/net/ethernet/intel/ice/ice_idc_int.h    | 2 +-
 include/linux/net/intel/{iidc.h => iidc_rdma.h} | 6 +++---
 6 files changed, 9 insertions(+), 9 deletions(-)
 rename include/linux/net/intel/{iidc.h => iidc_rdma.h} (97%)

diff --git a/MAINTAINERS b/MAINTAINERS
index 96b827049501..136309587791 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11890,7 +11890,7 @@ F:	Documentation/networking/device_drivers/ethernet/intel/
 F:	drivers/net/ethernet/intel/
 F:	drivers/net/ethernet/intel/*/
 F:	include/linux/avf/virtchnl.h
-F:	include/linux/net/intel/iidc.h
+F:	include/linux/net/intel/*/
 
 INTEL ETHERNET PROTOCOL DRIVER FOR RDMA
 M:	Mustafa Ismail <mustafa.ismail@intel.com>
diff --git a/drivers/infiniband/hw/irdma/main.h b/drivers/infiniband/hw/irdma/main.h
index bb0b6494ccb2..e8083b0c8cb2 100644
--- a/drivers/infiniband/hw/irdma/main.h
+++ b/drivers/infiniband/hw/irdma/main.h
@@ -29,7 +29,7 @@
 #include <linux/io-64-nonatomic-lo-hi.h>
 #endif
 #include <linux/auxiliary_bus.h>
-#include <linux/net/intel/iidc.h>
+#include <linux/net/intel/iidc_rdma.h>
 #include <rdma/ib_smi.h>
 #include <rdma/ib_verbs.h>
 #include <rdma/ib_pack.h>
diff --git a/drivers/infiniband/hw/irdma/osdep.h b/drivers/infiniband/hw/irdma/osdep.h
index 4b4f78288d12..3f73ceacccb6 100644
--- a/drivers/infiniband/hw/irdma/osdep.h
+++ b/drivers/infiniband/hw/irdma/osdep.h
@@ -5,8 +5,8 @@
 
 #include <linux/pci.h>
 #include <linux/bitfield.h>
-#include <linux/net/intel/iidc.h>
 #include <rdma/ib_verbs.h>
+#include <net/dscp.h>
 
 #define STATS_TIMER_DELAY	60000
 
diff --git a/drivers/infiniband/hw/irdma/type.h b/drivers/infiniband/hw/irdma/type.h
index 59b34afa867b..527c6da2c1ac 100644
--- a/drivers/infiniband/hw/irdma/type.h
+++ b/drivers/infiniband/hw/irdma/type.h
@@ -567,7 +567,7 @@ struct irdma_sc_vsi {
 	u8 qos_rel_bw;
 	u8 qos_prio_type;
 	u8 stats_idx;
-	u8 dscp_map[IIDC_MAX_DSCP_MAPPING];
+	u8 dscp_map[DSCP_MAX];
 	struct irdma_qos qos[IRDMA_MAX_USER_PRIORITY];
 	u64 hw_stats_regs[IRDMA_HW_STAT_INDEX_MAX_GEN_1];
 	bool dscp_mode:1;
@@ -695,7 +695,7 @@ struct irdma_l2params {
 	u16 qs_handle_list[IRDMA_MAX_USER_PRIORITY];
 	u16 mtu;
 	u8 up2tc[IRDMA_MAX_USER_PRIORITY];
-	u8 dscp_map[IIDC_MAX_DSCP_MAPPING];
+	u8 dscp_map[DSCP_MAX];
 	u8 num_tc;
 	u8 vsi_rel_bw;
 	u8 vsi_prio_type;
diff --git a/drivers/net/ethernet/intel/ice/ice_idc_int.h b/drivers/net/ethernet/intel/ice/ice_idc_int.h
index 4b0c86757df9..b0c504a6408e 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc_int.h
+++ b/drivers/net/ethernet/intel/ice/ice_idc_int.h
@@ -4,7 +4,7 @@
 #ifndef _ICE_IDC_INT_H_
 #define _ICE_IDC_INT_H_
 
-#include <linux/net/intel/iidc.h>
+#include <linux/net/intel/iidc_rdma.h>
 
 struct ice_pf;
 
diff --git a/include/linux/net/intel/iidc.h b/include/linux/net/intel/iidc_rdma.h
similarity index 97%
rename from include/linux/net/intel/iidc.h
rename to include/linux/net/intel/iidc_rdma.h
index 13274c3def66..0cd75404e459 100644
--- a/include/linux/net/intel/iidc.h
+++ b/include/linux/net/intel/iidc_rdma.h
@@ -1,8 +1,8 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 /* Copyright (C) 2021, Intel Corporation. */
 
-#ifndef _IIDC_H_
-#define _IIDC_H_
+#ifndef _IIDC_RDMA_H_
+#define _IIDC_RDMA_H_
 
 #include <linux/auxiliary_bus.h>
 #include <linux/dcbnl.h>
@@ -106,4 +106,4 @@ struct iidc_auxiliary_drv {
 	void (*event_handler)(struct ice_pf *pf, struct iidc_event *event);
 };
 
-#endif /* _IIDC_H_*/
+#endif /* _IIDC_RDMA_H_*/
-- 
2.37.3

