Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD97D13FCA6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jan 2020 00:06:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6E4C887F52;
	Thu, 16 Jan 2020 23:06:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LSRFXQQNT1Ma; Thu, 16 Jan 2020 23:06:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 547A887B3C;
	Thu, 16 Jan 2020 23:06:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AED151BF39D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2020 23:05:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A2DA887F9C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2020 23:05:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4rLRQxOzjC1A for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jan 2020 23:05:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 189E987B3C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2020 23:05:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 15:05:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,327,1574150400"; d="scan'208";a="424242180"
Received: from nmaznan-mobl1.gar.corp.intel.com (HELO
 ssaleem-MOBL.amr.corp.intel.com) ([10.254.99.102])
 by fmsmga005.fm.intel.com with ESMTP; 16 Jan 2020 15:05:33 -0800
From: Shiraz Saleem <shiraz.saleem@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 16 Jan 2020 17:05:06 -0600
Message-Id: <20200116230508.1814-15-shiraz.saleem@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200116230508.1814-1-shiraz.saleem@intel.com>
References: <20200116230508.1814-1-shiraz.saleem@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH RFC rdma 14/16] RDMA/irdma: Add ABI
 definitions
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
Cc: Mustafa Ismail <mustafa.ismail@intel.com>,
 Shiraz Saleem <shiraz.saleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mustafa Ismail <mustafa.ismail@intel.com>

Add ABI definitions for irdma.

Signed-off-by: Mustafa Ismail <mustafa.ismail@intel.com>
Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
---
 include/uapi/rdma/irdma-abi.h | 131 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 131 insertions(+)
 create mode 100644 include/uapi/rdma/irdma-abi.h

diff --git a/include/uapi/rdma/irdma-abi.h b/include/uapi/rdma/irdma-abi.h
new file mode 100644
index 0000000..0875d73
--- /dev/null
+++ b/include/uapi/rdma/irdma-abi.h
@@ -0,0 +1,131 @@
+/* SPDX-License-Identifier: (GPL-2.0 WITH Linux-syscall-note) OR Linux-OpenIB) */
+/*
+ * Copyright (c) 2006 - 2019 Intel Corporation.  All rights reserved.
+ * Copyright (c) 2005 Topspin Communications.  All rights reserved.
+ * Copyright (c) 2005 Cisco Systems.  All rights reserved.
+ * Copyright (c) 2005 Open Grid Computing, Inc. All rights reserved.
+ */
+
+#ifndef IRDMA_ABI_H
+#define IRDMA_ABI_H
+
+#include <linux/types.h>
+
+/* irdma must support legacy GEN_1 i40iw kernel
+ * and user-space whose last ABI ver is 5
+ */
+#define IRDMA_ABI_VER 6
+
+enum irdma_memreg_type {
+	IW_MEMREG_TYPE_MEM  = 0,
+	IW_MEMREG_TYPE_QP   = 1,
+	IW_MEMREG_TYPE_CQ   = 2,
+	IW_MEMREG_TYPE_RSVD = 3,
+	IW_MEMREG_TYPE_MW   = 4,
+};
+
+struct irdma_alloc_ucontext_req {
+	__u32 rsvd32;
+	__u8 userspace_ver;
+	__u8 rsvd8[3];
+};
+
+struct i40iw_alloc_ucontext_req {
+	__u32 rsvd32;
+	__u8 userspace_ver;
+	__u8 rsvd8[3];
+};
+
+struct irdma_alloc_ucontext_resp {
+	__aligned_u64 feature_flags;
+	__u32 max_hw_wq_frags;
+	__u32 max_hw_read_sges;
+	__u32 max_hw_inline;
+	__u32 max_hw_rq_quanta;
+	__u32 max_hw_wq_quanta;
+	__u32 min_hw_cq_size;
+	__u32 max_hw_cq_size;
+	__u32 rsvd1[7];
+	__u16 max_hw_sq_chunk;
+	__u16 rsvd2[11];
+	__u8 kernel_ver;
+	__u8 hw_rev;
+	__u8 rsvd3[6];
+};
+
+struct i40iw_alloc_ucontext_resp {
+	__u32 max_pds;
+	__u32 max_qps;
+	__u32 wq_size; /* size of the WQs (SQ+RQ) in the mmaped area */
+	__u8 kernel_ver;
+	__u8 rsvd[3];
+};
+
+struct irdma_alloc_pd_resp {
+	__u32 pd_id;
+	__u8 rsvd[4];
+};
+
+struct irdma_resize_cq_req {
+	__aligned_u64 user_cq_buffer;
+};
+
+struct irdma_create_cq_req {
+	__aligned_u64 user_cq_buf;
+	__aligned_u64 user_shadow_area;
+};
+
+struct irdma_create_qp_req {
+	__aligned_u64 user_wqe_bufs;
+	__aligned_u64 user_compl_ctx;
+};
+
+struct i40iw_create_qp_req {
+	__aligned_u64 user_wqe_bufs;
+	__aligned_u64 user_compl_ctx;
+};
+
+struct irdma_mem_reg_req {
+	__u16 reg_type; /* Memory, QP or CQ */
+	__u16 cq_pages;
+	__u16 rq_pages;
+	__u16 sq_pages;
+};
+
+struct irdma_create_cq_resp {
+	__u32 cq_id;
+	__u32 cq_size;
+};
+
+struct irdma_create_qp_resp {
+	__u32 qp_id;
+	__u32 actual_sq_size;
+	__u32 actual_rq_size;
+	__u32 irdma_drv_opt;
+	__u32 qp_caps;
+	__u16 rsvd1;
+	__u8 lsmm;
+	__u8 rsvd2;
+};
+
+struct i40iw_create_qp_resp {
+	__u32 qp_id;
+	__u32 actual_sq_size;
+	__u32 actual_rq_size;
+	__u32 i40iw_drv_opt;
+	__u16 push_idx;
+	__u8 lsmm;
+	__u8 rsvd;
+};
+
+struct irdma_modify_qp_resp {
+	__u16 push_idx;
+	__u16 push_offset;
+	__u8 rsvd[4];
+};
+
+struct irdma_create_ah_resp {
+	__u32 ah_id;
+	__u8 rsvd[4];
+};
+#endif /* IRDMA_ABI_H */
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
