Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 377DC790FF3
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Sep 2023 04:15:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDC3881E84;
	Mon,  4 Sep 2023 02:15:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BDC3881E84
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693793720;
	bh=jQAntgE6ewSXcLA6J5R+WcipfZjAvfLqKx42k1gRMj4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zXkrHfiiZls17IBy0RvOpGtYDnR+yzGGNhzA+wqKOw0S3Bz0s3/YKM8+mjv+niU/i
	 offlLeRPwF8LIr4FnK1kYPvc/fBB2XuHeFLqnxx3PL0nSwqGl+GRaa05qCR+fJ0M7O
	 u03zPO345dP3L7guvXBWnPkyzYCSF6LJAOHTpsuc77ncnVUHsypxjyBlRmKmdtgKP6
	 Q4YHnwtsEBpvSouJV5A4sHyHG2ecgV/w1ynA/HwZnbUtCRd6ltjzj4JiZRbfUV10GB
	 kaYwDkFNjpOBZQWPdDI6AQ2+I1BDqxAMivcS2DJd6O5buQQ3ET99NqFyYtc+zMrknG
	 MFfTW3DTG7H8w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z1IjpVRiFZhl; Mon,  4 Sep 2023 02:15:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E85781E78;
	Mon,  4 Sep 2023 02:15:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E85781E78
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 506451BF360
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 02:15:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3644981E1F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 02:15:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3644981E1F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K1k5ehipEg19 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Sep 2023 02:15:10 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4BD2581E17
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 02:15:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4BD2581E17
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="379215098"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="379215098"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2023 19:15:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="769826739"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="769826739"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.19])
 by orsmga008.jf.intel.com with ESMTP; 03 Sep 2023 19:15:05 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 Sep 2023 10:14:41 +0800
Message-Id: <20230904021455.3944605-2-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230904021455.3944605-1-junfeng.guo@intel.com>
References: <20230904021455.3944605-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693793710; x=1725329710;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lR+dRyWeTfop0uPF4h5KLrVy6UPvo2c7XqLr0anaWP4=;
 b=gEPnJxI0mPRzsSPsK3RW56YqHAearDks03OixkF/4vnJ84O4xKwAiWDW
 95/hW6huf/Xyp+pxXUBhIRQukIOValq1/+5tgLmTMi3FNVZ3GBWMw5s07
 Dr14T7tsJhUZBV0kr9i3NF7crZ5yGPGUAO+awgyUOFQTnwqkTk54TyOqq
 tTi0YhndEMwkdgapHZ93xcVMRRswqk/bB8rxpw8VuozU36hZfi1o/R+Ug
 u4eM7YDhEuAkRiYbFzb2pjoCKrT3YZZHmU29ValEcmfqM9bQM7+yLDcFs
 O7zz8XLRFIWJhwEz/ippDQdwo+K+1VB8AzScZE2QDMz4hdcaYsdQGsiN4
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gEPnJxI0
Subject: [Intel-wired-lan] [PATCH iwl-next v9 01/15] ice: add parser create
 and destroy skeleton
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
Cc: ivecera@redhat.com, netdev@vger.kernel.org, qi.z.zhang@intel.com,
 jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add new parser module which can parse a packet in binary
and generate information like ptype, protocol/offset pairs
and flags which can be used to feed the FXP profile creation
directly.

The patch added skeleton of the create and destroy APIs:
ice_parser_create
ice_parser_destroy

Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile     |  1 +
 drivers/net/ethernet/intel/ice/ice_common.h |  1 +
 drivers/net/ethernet/intel/ice/ice_ddp.c    | 10 +++----
 drivers/net/ethernet/intel/ice/ice_ddp.h    | 13 ++++++++
 drivers/net/ethernet/intel/ice/ice_parser.c | 33 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_parser.h | 13 ++++++++
 6 files changed, 66 insertions(+), 5 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_parser.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_parser.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 5d89392f969b..1c9c2816f103 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -26,6 +26,7 @@ ice-y := ice_main.o	\
 	 ice_vlan_mode.o \
 	 ice_flex_pipe.o \
 	 ice_flow.o	\
+	 ice_parser.o    \
 	 ice_idc.o	\
 	 ice_devlink.o	\
 	 ice_ddp.o	\
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 8ba5f935a092..4052227d5791 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -9,6 +9,7 @@
 #include "ice_type.h"
 #include "ice_nvm.h"
 #include "ice_flex_pipe.h"
+#include "ice_parser.h"
 #include <linux/avf/virtchnl.h>
 #include "ice_switch.h"
 #include "ice_fdir.h"
diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
index d71ed210f9c4..3bdf03b9ee71 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
@@ -288,11 +288,11 @@ void *ice_pkg_enum_section(struct ice_seg *ice_seg, struct ice_pkg_enum *state,
  * indicates a base offset of 10, and the index for the entry is 2, then
  * section handler function should set the offset to 10 + 2 = 12.
  */
-static void *ice_pkg_enum_entry(struct ice_seg *ice_seg,
-				struct ice_pkg_enum *state, u32 sect_type,
-				u32 *offset,
-				void *(*handler)(u32 sect_type, void *section,
-						 u32 index, u32 *offset))
+void *ice_pkg_enum_entry(struct ice_seg *ice_seg,
+			 struct ice_pkg_enum *state, u32 sect_type,
+			 u32 *offset,
+			 void *(*handler)(u32 sect_type, void *section,
+					  u32 index, u32 *offset))
 {
 	void *entry;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.h b/drivers/net/ethernet/intel/ice/ice_ddp.h
index 37eadb3d27a8..da5dfeed3b1f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.h
@@ -238,10 +238,18 @@ struct ice_meta_sect {
 #define ICE_SID_CDID_KEY_BUILDER_RSS 47
 #define ICE_SID_CDID_REDIR_RSS 48
 
+#define ICE_SID_RXPARSER_CAM		50
+#define ICE_SID_RXPARSER_NOMATCH_CAM	51
+#define ICE_SID_RXPARSER_IMEM		52
 #define ICE_SID_RXPARSER_MARKER_PTYPE 55
 #define ICE_SID_RXPARSER_BOOST_TCAM 56
+#define ICE_SID_RXPARSER_PROTO_GRP	57
 #define ICE_SID_RXPARSER_METADATA_INIT 58
+#define ICE_SID_TXPARSER_NOMATCH_CAM	61
 #define ICE_SID_TXPARSER_BOOST_TCAM 66
+#define ICE_SID_RXPARSER_MARKER_GRP	72
+#define ICE_SID_RXPARSER_PG_SPILL	76
+#define ICE_SID_RXPARSER_NOMATCH_SPILL	78
 
 #define ICE_SID_XLT0_PE 80
 #define ICE_SID_XLT_KEY_BUILDER_PE 81
@@ -437,6 +445,11 @@ int ice_update_pkg(struct ice_hw *hw, struct ice_buf *bufs, u32 count);
 
 int ice_pkg_buf_reserve_section(struct ice_buf_build *bld, u16 count);
 u16 ice_pkg_buf_get_active_sections(struct ice_buf_build *bld);
+void *
+ice_pkg_enum_entry(struct ice_seg *ice_seg, struct ice_pkg_enum *state,
+		   u32 sect_type, u32 *offset,
+		   void *(*handler)(u32 sect_type, void *section,
+				    u32 index, u32 *offset));
 void *ice_pkg_enum_section(struct ice_seg *ice_seg, struct ice_pkg_enum *state,
 			   u32 sect_type);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
new file mode 100644
index 000000000000..747dfad66db2
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -0,0 +1,33 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2023 Intel Corporation */
+
+#include "ice_common.h"
+
+/**
+ * ice_parser_create - create a parser instance
+ * @hw: pointer to the hardware structure
+ * @psr: output parameter for a new parser instance be created
+ */
+int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
+{
+	struct ice_parser *p;
+
+	p = devm_kzalloc(ice_hw_to_dev(hw), sizeof(struct ice_parser),
+			 GFP_KERNEL);
+	if (!p)
+		return -ENOMEM;
+
+	p->hw = hw;
+
+	*psr = p;
+	return 0;
+}
+
+/**
+ * ice_parser_destroy - destroy a parser instance
+ * @psr: pointer to a parser instance
+ */
+void ice_parser_destroy(struct ice_parser *psr)
+{
+	devm_kfree(ice_hw_to_dev(psr->hw), psr);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
new file mode 100644
index 000000000000..85c470235e67
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2023 Intel Corporation */
+
+#ifndef _ICE_PARSER_H_
+#define _ICE_PARSER_H_
+
+struct ice_parser {
+	struct ice_hw *hw; /* pointer to the hardware structure */
+};
+
+int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr);
+void ice_parser_destroy(struct ice_parser *psr);
+#endif /* _ICE_PARSER_H_ */
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
