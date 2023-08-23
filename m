Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DB763785426
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Aug 2023 11:32:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7753B61261;
	Wed, 23 Aug 2023 09:32:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7753B61261
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692783141;
	bh=9l1e6wdSIN/lkFwvpMFiB5zWyKWxveg4K1wdYmyYotU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=96yyKmvnwjyWkQFULJM/Mq+ZPiPUEsBTkiAzrK0Z7AhDB5s5QOLWtCdYe7Z4B/rt4
	 jwqB3e6wJZHudcGlXSt5bEx5BgYd8A8pIu3tzrHGG55r6K00FclF5COR5zR70tzSpA
	 DQ3B2XomrafxKQTkA2HTzoK3IKc5ud07QFAGybrlpHfiYKqeXUxXI+9ZRQZp599qzK
	 Ck3u66x9S5S8GiK1f2nOsz4yFT/N4Ixu374QaMfEQ7I+UApvjybKQ/wT4dvUiVjone
	 1fizDmL++PtkrpPu4g2F/Sz/q4hvggx6kijOgzR6x+RYUvNGhBW1SPm7aDXNCm8Teh
	 0DPGl1lcFgRcA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id chAUMswauaBo; Wed, 23 Aug 2023 09:32:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F023060AE2;
	Wed, 23 Aug 2023 09:32:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F023060AE2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D6D9A1BF34E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 09:32:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BDF6240543
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 09:32:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BDF6240543
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 069kiUPWEzJc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Aug 2023 09:32:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DB15740502
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 09:32:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB15740502
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="359100459"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="359100459"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 02:32:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="713507420"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="713507420"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.19])
 by orsmga006.jf.intel.com with ESMTP; 23 Aug 2023 02:32:04 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 23 Aug 2023 17:31:44 +0800
Message-Id: <20230823093158.782802-2-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230823093158.782802-1-junfeng.guo@intel.com>
References: <20230821081438.2937934-1-junfeng.guo@intel.com>
 <20230823093158.782802-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692783127; x=1724319127;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K9x8FDf/YdpQXwHLWBnorxtFd/JUNWyZ5i86X1WOEOs=;
 b=Te5eDJJp1xghkOkqtQPE01x1SsOUxIC0WwvfVTkDW31tQCNTh4WUubWy
 4dhZ5DRfjR5A7FKSmyY3jrIKZs2f/KTEaBD8Q035KaRaUwm5Tdl0Qn9Zd
 OypUqFXZdCW2+pzBeKwfjAfzmh1rgXQ/PfB+hSPnJNQ6XZEz7ETkTNcfX
 68xoCV2nJALs3ToNz/bXU00RYmDI6Rf1dX8w8BrUfCj1gPrkincd9tFLj
 oRntqmUBOQpSgHNcflBvPGIB0dLIijTN7IGtIZQeynVQT/uTbluCbz8HI
 pwzJvnXDhWo8WSw7lYECgYBI0QgPI55G9torSGIy+y+FhkF1/Na10co7p
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Te5eDJJp
Subject: [Intel-wired-lan] [PATCH iwl-next v7 01/15] ice: add parser create
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
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, horms@kernel.org
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
 drivers/net/ethernet/intel/ice/ice_common.h |  4 +++
 drivers/net/ethernet/intel/ice/ice_ddp.c    | 10 +++----
 drivers/net/ethernet/intel/ice/ice_ddp.h    | 13 ++++++++
 drivers/net/ethernet/intel/ice/ice_parser.c | 33 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_parser.h | 13 ++++++++
 5 files changed, 68 insertions(+), 5 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_parser.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_parser.h

diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 8ba5f935a092..528dde976373 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -9,10 +9,14 @@
 #include "ice_type.h"
 #include "ice_nvm.h"
 #include "ice_flex_pipe.h"
+#include "ice_parser.h"
 #include <linux/avf/virtchnl.h>
 #include "ice_switch.h"
 #include "ice_fdir.h"
 
+#define BITS_PER_WORD	16
+#define BITMAP_MASK(n)	GENMASK(((n) - 1), 0)
+
 #define ICE_SQ_SEND_DELAY_TIME_MS	10
 #define ICE_SQ_SEND_MAX_EXECUTE		3
 
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
