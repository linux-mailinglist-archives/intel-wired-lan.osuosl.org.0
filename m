Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DB51DA64F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2020 02:17:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7FDE88814A;
	Wed, 20 May 2020 00:17:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CKSyBy6AkcGl; Wed, 20 May 2020 00:17:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6B58087FEC;
	Wed, 20 May 2020 00:16:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 19AC01BF97D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 00:16:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 13B6E88002
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 00:16:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aRP56efiv9Xb for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 May 2020 00:16:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4499887FE3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 00:16:56 +0000 (UTC)
IronPort-SDR: bTdG1kxZ02i+Z2a18zN9A8zCD7s7Sj12ubjNLvT3WlH4SqnPAp8zkF1DZ7S9R9WrwpoLUhl0IR
 H170syckht/w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 17:16:55 -0700
IronPort-SDR: Ibt8CvRaYfWx42N02Itd0QIyllW+BrQlRVmFzGyzI4a7bymkjGKe+pRjHhbhDd5YbLROjpGVOF
 AvSIfJPa1Kbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,411,1583222400"; d="scan'208";a="466180311"
Received: from ssaleem-mobl.amr.corp.intel.com ([10.209.18.5])
 by fmsmga005.fm.intel.com with ESMTP; 19 May 2020 17:16:55 -0700
From: Shiraz Saleem <shiraz.saleem@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 19 May 2020 19:16:11 -0500
Message-Id: <20200520001613.475-15-shiraz.saleem@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200520001613.475-1-shiraz.saleem@intel.com>
References: <20200520001613.475-1-shiraz.saleem@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH RFC v6 14/16] RDMA/irdma: Add ABI
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
 include/uapi/rdma/irdma-abi.h | 140 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 140 insertions(+)
 create mode 100644 include/uapi/rdma/irdma-abi.h

diff --git a/include/uapi/rdma/irdma-abi.h b/include/uapi/rdma/irdma-abi.h
new file mode 100644
index 0000000..2eb2532
--- /dev/null
+++ b/include/uapi/rdma/irdma-abi.h
@@ -0,0 +1,140 @@
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
+	__aligned_u64 db_mmap_key;
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
+struct irdma_modify_qp_req {
+	__u8 sq_flush;
+	__u8 rq_flush;
+	__u8 rsvd[6];
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
+	__aligned_u64 push_wqe_mmap_key;
+	__aligned_u64 push_db_mmap_key;
+	__u16 push_offset;
+	__u8 push_valid;
+	__u8 rsvd[5];
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
