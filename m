Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 417C2A2CEA1
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 22:01:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 89A8E84B6B;
	Fri,  7 Feb 2025 21:01:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DVDdM18SBUmC; Fri,  7 Feb 2025 21:01:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 88B6084A3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738962104;
	bh=9c6x/vAUShT5SupNu/Z/WnqU9qrp2RfLuHp/BAr1j2o=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JVhT3RL1W73IHxohwe3b2j73nlh8tj2DF2mDXecgI7laiUAghr56VldAR3RmHdzyC
	 gcNDPCqawN/cnRXKui4uylDGzIRKutq8UkEMV6uKLoc9em+KC0fk0No9nrcfbEUs5D
	 eRQt5SImdU16cqQI6UmgOaQVnXdnvFp6+oRIkbzu9UOKNKT6dN1CVR/Ml22oqdpHPT
	 PD24HiDbjeu3iJFRoT+ZXMt34utmdlPwLv+83S9LARz7DXBUkQDdDFGO/n+Qp8ZYTV
	 +1S6IHbMZKu7sfWUzdHGlIZY1dfvsQPdhJAWpctaae6s1WRmf18OpRQIUiwKI8tW2O
	 1UsJ2yTigiZqA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 88B6084A3A;
	Fri,  7 Feb 2025 21:01:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2C2CA1B7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CFCA581FBE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZaSW6QSYNFBr for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 19:50:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=tatyana.e.nikolova@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 68DC9812F4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68DC9812F4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 68DC9812F4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:32 +0000 (UTC)
X-CSE-ConnectionGUID: MPmppsR0RXWVHbZJLHMwdA==
X-CSE-MsgGUID: 4ywzeMHFQ0GH1xgpfULywA==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="42451837"
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="42451837"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 11:50:32 -0800
X-CSE-ConnectionGUID: YKpjz0qsRWqU832PMJge3w==
X-CSE-MsgGUID: YmLjrNf2TL6+F1QcX6VgXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="112238245"
Received: from tenikolo-mobl1.amr.corp.intel.com ([10.124.81.134])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 11:50:31 -0800
From: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
To: jgg@nvidia.com,
	leon@kernel.org,
	intel-wired-lan@lists.osuosl.org
Cc: linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 Shiraz Saleem <shiraz.saleem@intel.com>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>
Date: Fri,  7 Feb 2025 13:49:25 -0600
Message-Id: <20250207194931.1569-19-tatyana.e.nikolova@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20250207194931.1569-1-tatyana.e.nikolova@intel.com>
References: <20250207194931.1569-1-tatyana.e.nikolova@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 07 Feb 2025 21:01:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738957832; x=1770493832;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1njxF/OFVSBb3pfansdKiMVBWz6FlLcT259jhGIRIJY=;
 b=QW0u0OvjfD9nQ3AE2bXPiH9Hq/1hy96QskAiQjgKfKy0Yuh0+pMA0ulX
 4FPFFGPPZG4ouLViV+vgMiWAFuw6ZYm9leKmFrjfGaHOOWpuVkrY4hOj4
 bpKAgI8rja8vGX1z0zzAVHf2GEz5yrP+owYQA07pfb1+TD8LYVF9zDGJ3
 z25CVKwf3ZVAYBl3hy2Y0M6zPWT2AIiQUJBAeVb+jsgytgu2LQGUUhv6u
 n2/VT33beJiu5E2F3YwBZp3btGF3jkZ/B17Mz3PHGVyCKlOS+HCn8epDz
 1nJn+kuQ1L1yTIb1MaU/rHniGZD4kYLVRr4sPPoIS9Pfa/l86Zbf98oG9
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QW0u0Ovj
Subject: [Intel-wired-lan] [rdma v3 18/24] RDMA/irdma: Support 64-byte CQEs
 and GEN3 CQE opcode decoding
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

From: Shiraz Saleem <shiraz.saleem@intel.com>

Introduce support for 64-byte CQEs in GEN3 devices. Additionally,
implement GEN3-specific CQE opcode decoding.

Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
Signed-off-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
---

v3:
* Fix detection of CQ empty when avoid_mem_cflct is on.
* In resize CQ, do not double the CQ size if avoid_mem_cflct is on.
* Make CQ size an even number, which is a GEN3 HW requirement.

 drivers/infiniband/hw/irdma/main.h  |  2 +-
 drivers/infiniband/hw/irdma/utils.c |  5 ++++-
 drivers/infiniband/hw/irdma/verbs.c | 30 ++++++++++++++++++++++++-----
 drivers/infiniband/hw/irdma/verbs.h | 13 +++++++++++++
 4 files changed, 43 insertions(+), 7 deletions(-)

diff --git a/drivers/infiniband/hw/irdma/main.h b/drivers/infiniband/hw/irdma/main.h
index f0196aafe59b..0c7f5f730f1f 100644
--- a/drivers/infiniband/hw/irdma/main.h
+++ b/drivers/infiniband/hw/irdma/main.h
@@ -69,7 +69,7 @@ extern struct idc_rdma_core_auxiliary_drv icrdma_core_auxiliary_drv;
 #define IRDMA_MACIP_ADD		1
 #define IRDMA_MACIP_DELETE	2
 
-#define IW_CCQ_SIZE	(IRDMA_CQP_SW_SQSIZE_2048 + 1)
+#define IW_CCQ_SIZE	(IRDMA_CQP_SW_SQSIZE_2048 + 2)
 #define IW_CEQ_SIZE	2048
 #define IW_AEQ_SIZE	2048
 
diff --git a/drivers/infiniband/hw/irdma/utils.c b/drivers/infiniband/hw/irdma/utils.c
index 87c88be47ee3..60ef85e842d1 100644
--- a/drivers/infiniband/hw/irdma/utils.c
+++ b/drivers/infiniband/hw/irdma/utils.c
@@ -2381,7 +2381,10 @@ bool irdma_cq_empty(struct irdma_cq *iwcq)
 	u8 polarity;
 
 	ukcq  = &iwcq->sc_cq.cq_uk;
-	cqe = IRDMA_GET_CURRENT_CQ_ELEM(ukcq);
+	if (ukcq->avoid_mem_cflct)
+		cqe = IRDMA_GET_CURRENT_EXTENDED_CQ_ELEM(ukcq);
+	else
+		cqe = IRDMA_GET_CURRENT_CQ_ELEM(ukcq);
 	get_64bit_val(cqe, 24, &qword3);
 	polarity = (u8)FIELD_GET(IRDMA_CQ_VALID, qword3);
 
diff --git a/drivers/infiniband/hw/irdma/verbs.c b/drivers/infiniband/hw/irdma/verbs.c
index b5fe5f2fa68b..82a7cec25b52 100644
--- a/drivers/infiniband/hw/irdma/verbs.c
+++ b/drivers/infiniband/hw/irdma/verbs.c
@@ -1971,8 +1971,13 @@ static int irdma_resize_cq(struct ib_cq *ibcq, int entries,
 
 	if (!iwcq->user_mode) {
 		entries++;
-		if (rf->sc_dev.hw_attrs.uk_attrs.hw_rev >= IRDMA_GEN_2)
+
+		if (!iwcq->sc_cq.cq_uk.avoid_mem_cflct &&
+		    dev->hw_attrs.uk_attrs.hw_rev >= IRDMA_GEN_2)
 			entries *= 2;
+
+		if (entries & 1)
+			entries += 1; /* cq size must be an even number */
 	}
 
 	info.cq_size = max(entries, 4);
@@ -2115,6 +2120,7 @@ static int irdma_create_cq(struct ib_cq *ibcq,
 	unsigned long flags;
 	int err_code;
 	int entries = attr->cqe;
+	bool cqe_64byte_ena;
 
 	err_code = cq_validate_flags(attr->flags, dev->hw_attrs.uk_attrs.hw_rev);
 	if (err_code)
@@ -2138,6 +2144,9 @@ static int irdma_create_cq(struct ib_cq *ibcq,
 	info.dev = dev;
 	ukinfo->cq_size = max(entries, 4);
 	ukinfo->cq_id = cq_num;
+	cqe_64byte_ena = dev->hw_attrs.uk_attrs.feature_flags & IRDMA_FEATURE_64_BYTE_CQE ?
+			 true : false;
+	ukinfo->avoid_mem_cflct = cqe_64byte_ena;
 	iwcq->ibcq.cqe = info.cq_uk_init_info.cq_size;
 	if (attr->comp_vector < rf->ceqs_count)
 		info.ceq_id = attr->comp_vector;
@@ -2213,11 +2222,18 @@ static int irdma_create_cq(struct ib_cq *ibcq,
 		}
 
 		entries++;
-		if (dev->hw_attrs.uk_attrs.hw_rev >= IRDMA_GEN_2)
+		if (!cqe_64byte_ena && dev->hw_attrs.uk_attrs.hw_rev >= IRDMA_GEN_2)
 			entries *= 2;
+
+		if (entries & 1)
+			entries += 1; /* cq size must be an even number */
+
 		ukinfo->cq_size = entries;
 
-		rsize = info.cq_uk_init_info.cq_size * sizeof(struct irdma_cqe);
+		if (cqe_64byte_ena)
+			rsize = info.cq_uk_init_info.cq_size * sizeof(struct irdma_extended_cqe);
+		else
+			rsize = info.cq_uk_init_info.cq_size * sizeof(struct irdma_cqe);
 		iwcq->kmem.size = ALIGN(round_up(rsize, 256), 256);
 		iwcq->kmem.va = dma_alloc_coherent(dev->hw->device,
 						   iwcq->kmem.size,
@@ -3775,8 +3791,12 @@ static void irdma_process_cqe(struct ib_wc *entry,
 	if (cq_poll_info->q_type == IRDMA_CQE_QTYPE_SQ) {
 		set_ib_wc_op_sq(cq_poll_info, entry);
 	} else {
-		set_ib_wc_op_rq(cq_poll_info, entry,
-				qp->qp_uk.qp_caps & IRDMA_SEND_WITH_IMM);
+		if (qp->dev->hw_attrs.uk_attrs.hw_rev <= IRDMA_GEN_2)
+			set_ib_wc_op_rq(cq_poll_info, entry,
+					qp->qp_uk.qp_caps & IRDMA_SEND_WITH_IMM ?
+					true : false);
+		else
+			set_ib_wc_op_rq_gen_3(cq_poll_info, entry);
 		if (qp->qp_uk.qp_type != IRDMA_QP_TYPE_ROCE_UD &&
 		    cq_poll_info->stag_invalid_set) {
 			entry->ex.invalidate_rkey = cq_poll_info->inv_stag;
diff --git a/drivers/infiniband/hw/irdma/verbs.h b/drivers/infiniband/hw/irdma/verbs.h
index cfa140b36395..fcb163c45252 100644
--- a/drivers/infiniband/hw/irdma/verbs.h
+++ b/drivers/infiniband/hw/irdma/verbs.h
@@ -267,6 +267,19 @@ static inline void set_ib_wc_op_sq(struct irdma_cq_poll_info *cq_poll_info,
 	}
 }
 
+static inline void set_ib_wc_op_rq_gen_3(struct irdma_cq_poll_info *info,
+					 struct ib_wc *entry)
+{
+	switch (info->op_type) {
+	case IRDMA_OP_TYPE_RDMA_WRITE:
+	case IRDMA_OP_TYPE_RDMA_WRITE_SOL:
+		entry->opcode = IB_WC_RECV_RDMA_WITH_IMM;
+		break;
+	default:
+		entry->opcode = IB_WC_RECV;
+	}
+}
+
 static inline void set_ib_wc_op_rq(struct irdma_cq_poll_info *cq_poll_info,
 				   struct ib_wc *entry, bool send_imm_support)
 {
-- 
2.37.3

