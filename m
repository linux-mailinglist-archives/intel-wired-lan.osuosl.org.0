Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D6442721BF9
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 04:29:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 02E3260BC6;
	Mon,  5 Jun 2023 02:29:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 02E3260BC6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685932185;
	bh=/OMNe7nkUcihxGOfImentWoNtOStFJ8d/SCpUCVILUI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xgaME4P76Ifi9Oi8s2LSKYvI8bhR5sFDEmsd4FLJGRMzYTR5AT6E75tWbHrCLWddJ
	 cRuCUesltMt5h/AKJGaOJYumdv5srY4CDond87zj5fsw6sX7E+newynWJ80Hhlxf6m
	 ICzpr7USCM9vZRAcENrZYXaubk/w2qEQfxJi+U8RvFMJGxw41UulIwWzLMPC8oszg6
	 uRQ1CGvarqQHOmAGERqRrVlQMXtFPb/W/Lwb2SltSP+4L8MajLpknpUFBpUQC6tTzn
	 BPsHiYj1PP7IcFlrDyhoGbv6WikLdhQGR4RvTBrYNUuxcRnTn79cEZBHObYVX3oCFL
	 wi6YGiTlQ8wUg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N5j2uXBg2ujU; Mon,  5 Jun 2023 02:29:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C30160BBB;
	Mon,  5 Jun 2023 02:29:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C30160BBB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 60F961BF336
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:29:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BC85560BAD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:29:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC85560BAD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HJkaLFt4kOue for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 02:29:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E62C60BB9
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6E62C60BB9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:29:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="358710403"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="358710403"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2023 19:29:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="1038604690"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="1038604690"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.16])
 by fmsmga005.fm.intel.com with ESMTP; 04 Jun 2023 19:29:32 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jun 2023 10:29:06 +0800
Message-Id: <20230605022920.2361266-2-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230605022920.2361266-1-junfeng.guo@intel.com>
References: <20230605022920.2361266-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685932173; x=1717468173;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7Ztl4UMRMoD1zxQvpihQn/nLCtVEh3Ca5FIZG+koBZY=;
 b=h/Zv7AH5WPb3Bqua45GKJ3KdOP7VbRX5LpOqpuXBRKg27NxqfmHkG7/q
 /pHS/8LFuqnYppJzCiGRhkEvSE9Lh/bGR7XZ81GeLx49hlH5ny0Fyobhx
 iu5jNhLBXwpLTOhPV5uYxtmyK78SXTauA1JWdFcdFZ9aMETknHj9ZZp+Q
 +LZRgmksC9DWBTxSyatNpt2XtqgtctufQgqCLot+EVFiLCgrP8p8Zz0t5
 Oynf9B3InOf7QoRh1d++oDiOcOorDIyxifIuljdcKs6fTxQGv5S+2xmO2
 nj4MAXO8y5dvZ9uRkG/dNUMTef5MVru2cWtR7R7Gg+ZFz2AvwF+nf9Iqj
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h/Zv7AH5
Subject: [Intel-wired-lan] [PATCH iwl-next 01/15] ice: add parser create and
 destroy skeleton
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
Cc: qi.z.zhang@intel.com
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
 drivers/net/ethernet/intel/ice/ice_common.h |  1 +
 drivers/net/ethernet/intel/ice/ice_ddp.c    | 10 +++---
 drivers/net/ethernet/intel/ice/ice_ddp.h    | 13 ++++++++
 drivers/net/ethernet/intel/ice/ice_parser.c | 34 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_parser.h | 13 ++++++++
 5 files changed, 66 insertions(+), 5 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_parser.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_parser.h

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
index 000000000000..692ad26ec551
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2018-2023 Intel Corporation */
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
+	p->rt.psr = p;
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
index 000000000000..c6cd74c6e434
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2018-2023 Intel Corporation */
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
