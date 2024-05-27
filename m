Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B348D0A3A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 May 2024 20:58:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D338B81EA5;
	Mon, 27 May 2024 18:58:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6q35VKdBgN0r; Mon, 27 May 2024 18:58:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D3DD581E1E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716836321;
	bh=OAuz3CLWjMBKj125aBcDEF2YOLBJsqS7XobaY4gZB/w=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KWFJrqW5xYWokjkQQjAgquRwwzdmafVxiXr98VLKobYZMTDLXhkyz0KVF5+rbAbrt
	 dwtMMbgFrTEHDurnTFb3bJib5OBtzMOn9Pv8cLM56mmBgYKQF4w7MIBQ1NVhnNU/p8
	 W09L5rLpSqSWQaaIuTG12+DkfjVU/8KaImM9nXehTkSSXfFwhck4kIUhAlAhHfo4hh
	 Hs/2SoHsm9DnIkve1v1hNsNvwPcrl2wtaQlIvCmeVbbGkbQlRufdAK0Wf6SzjanDJp
	 ORI+hMpTZdMECjoy4m+3AVzfvoPRwiG5CeGIjYPm1VhSKZjYQojouvVvOy6bB1UZrH
	 wGG6NUMSMVzxg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D3DD581E1E;
	Mon, 27 May 2024 18:58:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 48A521D1FEE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 18:58:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 346BE80E83
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 18:58:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MAMEWLapiYSK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 May 2024 18:58:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7AEAE81E13
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7AEAE81E13
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7AEAE81E13
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 18:58:37 +0000 (UTC)
X-CSE-ConnectionGUID: 7k+BZ5DzQn+ziTdgOULK4g==
X-CSE-MsgGUID: aOkHeaGtRW22BcMgl9HY6g==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13353917"
X-IronPort-AV: E=Sophos;i="6.08,193,1712646000"; d="scan'208";a="13353917"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 11:58:37 -0700
X-CSE-ConnectionGUID: rXIz60icQqmYdYdkFMjO9g==
X-CSE-MsgGUID: at/1yFPUT1eRngA1AueqyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,193,1712646000"; d="scan'208";a="34910005"
Received: from rfrazer-mobl3.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.110.208])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 11:58:34 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 27 May 2024 12:57:58 -0600
Message-ID: <20240527185810.3077299-2-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240527185810.3077299-1-ahmed.zaki@intel.com>
References: <20240527185810.3077299-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716836317; x=1748372317;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xlQFhp0T85NA7sgbSIIS/1rCY6QDZA/2u2hCGE4P3FM=;
 b=CQ+WGanLhMD2oxzJ6QU3w6WV/lb31jwj0n3ejYhvjHART6kYn6/+hTMw
 oXT93gvWRs6oI1BjIVZBOI0BRmavwD4fUiRFJRHrlJYo22vh7MHGLRZxu
 zEJPJy69na2BPZz3hJ/0gmwyg+3u5GJZhhMktkNYvV7z4D/CX0vTf6wU8
 HrRui24bC0Wxs/ANv0hg1i+2eouzn6YdCBZD5nQTLdF1FZZFfPEUqG2yc
 z4pOn/qEtql1HClWxibrxQCWkiz4kQXCsTXAnt7ZqO8PIWlTTEQw9iqad
 aAAsO8kvDdPbhdXIFDa2wCHEMKh0Zuskr6h3oeEm9UyHcKbRlzkF8isrp
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CQ+WGanL
Subject: [Intel-wired-lan] [PATCH iwl-next v2 01/13] ice: add parser create
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 Ahmed Zaki <ahmed.zaki@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>, anthony.l.nguyen@intel.com,
 jacob.e.keller@intel.com, Junfeng Guo <junfeng.guo@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Junfeng Guo <junfeng.guo@intel.com>

Add new parser module which can parse a packet in binary and generate
information like ptype, protocol/offset pairs and flags which can be later
used to feed the FXP profile creation directly.

Add skeleton of the create and destroy APIs:
ice_parser_create()
ice_parser_destroy()

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
Co-developed-by: Ahmed Zaki <ahmed.zaki@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile     |  1 +
 drivers/net/ethernet/intel/ice/ice_common.h |  1 +
 drivers/net/ethernet/intel/ice/ice_parser.c | 31 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_parser.h | 13 +++++++++
 4 files changed, 46 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_parser.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_parser.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 03500e28ac99..23fa3f7f36ef 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -28,6 +28,7 @@ ice-y := ice_main.o	\
 	 ice_vlan_mode.o \
 	 ice_flex_pipe.o \
 	 ice_flow.o	\
+	 ice_parser.o    \
 	 ice_idc.o	\
 	 devlink/devlink.o	\
 	 devlink/devlink_port.o \
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 86cc1df469dd..9a91f71ab727 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -10,6 +10,7 @@
 #include "ice_type.h"
 #include "ice_nvm.h"
 #include "ice_flex_pipe.h"
+#include "ice_parser.h"
 #include <linux/avf/virtchnl.h>
 #include "ice_switch.h"
 #include "ice_fdir.h"
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
new file mode 100644
index 000000000000..b7865b6a0a9b
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -0,0 +1,31 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2024 Intel Corporation */
+
+#include "ice_common.h"
+
+/**
+ * ice_parser_create - create a parser instance
+ * @hw: pointer to the hardware structure
+ *
+ * Return a pointer to the allocated parser instance
+ */
+struct ice_parser *ice_parser_create(struct ice_hw *hw)
+{
+	struct ice_parser *p;
+
+	p = kzalloc(sizeof(*p), GFP_KERNEL);
+	if (!p)
+		return ERR_PTR(-ENOMEM);
+
+	p->hw = hw;
+	return p;
+}
+
+/**
+ * ice_parser_destroy - destroy a parser instance
+ * @psr: pointer to a parser instance
+ */
+void ice_parser_destroy(struct ice_parser *psr)
+{
+	kfree(psr);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
new file mode 100644
index 000000000000..09ed380eee32
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2024 Intel Corporation */
+
+#ifndef _ICE_PARSER_H_
+#define _ICE_PARSER_H_
+
+struct ice_parser {
+	struct ice_hw *hw; /* pointer to the hardware structure */
+};
+
+struct ice_parser *ice_parser_create(struct ice_hw *hw);
+void ice_parser_destroy(struct ice_parser *psr);
+#endif /* _ICE_PARSER_H_ */
-- 
2.43.0

