Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF2BA2CEAB
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 22:02:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 65B3570533;
	Fri,  7 Feb 2025 21:01:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V8pQz7gLqoFN; Fri,  7 Feb 2025 21:01:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4A8E0608B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738962106;
	bh=0LQUvXcA7cZZP69HF8t6IRnJ9/RNz4C3+KCJInIZOAU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=40zxqokFo07exW0TRcng8+3wwL0HaPvoRYsPIXMWBwNmMlo53bM14LNvhUHbZ4HqO
	 qP+yV3Zkz0osTuiBQNaWsEIbZA1EnqR6hC0UAKNn0iuB3JbFHdEMDcvV73L9rHFkjv
	 MjrsYbrqlEYta4Vew6kJRyEvE7WOIEit0IqsIVvH+aFtnwT2TpIzLqSOwnPAZhQmPX
	 QaDb/zeT9YT5b8T+ePGGnki98eADARjfcvlt6bCF+oaFfGeS5ptF0ETYMEdXYVpvr8
	 voNUclqUDzCCFteOtzNnuLEJ+WLzFU+JTdWpbgJ8vU//zPxzGgQlfyD7Y086ixf2xB
	 UeSihf2cpnfqQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4A8E0608B7;
	Fri,  7 Feb 2025 21:01:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3A569E4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 964CA81E35
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qiUSLKkPr534 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 19:50:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=tatyana.e.nikolova@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4C17C8111B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C17C8111B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4C17C8111B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:33 +0000 (UTC)
X-CSE-ConnectionGUID: Wa8EGZCoSPqmlqVlUCBsPw==
X-CSE-MsgGUID: 4OJG7/nRQ6umSCMeGISL7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="42451845"
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="42451845"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 11:50:33 -0800
X-CSE-ConnectionGUID: J6tj8RLtRmaowb0Cgudz6w==
X-CSE-MsgGUID: gZ82SuNeSl60OUDaL4vpEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="112238261"
Received: from tenikolo-mobl1.amr.corp.intel.com ([10.124.81.134])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 11:50:32 -0800
From: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
To: jgg@nvidia.com,
	leon@kernel.org,
	intel-wired-lan@lists.osuosl.org
Cc: linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 Faisal Latif <faisal.latif@intel.com>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>
Date: Fri,  7 Feb 2025 13:49:26 -0600
Message-Id: <20250207194931.1569-20-tatyana.e.nikolova@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20250207194931.1569-1-tatyana.e.nikolova@intel.com>
References: <20250207194931.1569-1-tatyana.e.nikolova@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 07 Feb 2025 21:01:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738957833; x=1770493833;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DtBkjUO/Q2y3io0xzpO5mGrpPNT4A0raRCHBl/9SCNk=;
 b=ENKf9hsa15BWUWfHnr4gmlYGuRk8mkjTX0mO5I2P3vHPVjsYPZn/We7F
 C+3TknwG1YVsy1ZMd6cDykVAHUbo8UTPq037x/ye+uuW6a3UyshmjeXpn
 m+h+UWeUk1eysXA90i2D7y62Iyz+EHHG6FIL0uf+vV9OgCvqtRkw8XpiA
 cWZp4xasxGaNpGxT6mA6pVXUfvmqi0k4rtd+tCNOt5C2+4xZ0CdfkHPmd
 yYum6ZngUSxOiX1l8ifcPPSuAZR+h9Vf7+G28Z9Ywmc+MGv/Ht0X1VXkl
 k78T8PP1Bk7vVTn3Rw6jXgyL2Xn8F9IMx28pBghDt6n7eEI6kNJujxN1b
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ENKf9hsa
Subject: [Intel-wired-lan] [rdma v3 19/24] RDMA/irdma: Add SRQ support
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

From: Faisal Latif <faisal.latif@intel.com>

Implement verb API and UAPI changes to support SRQ functionality in GEN3
devices.

Signed-off-by: Faisal Latif <faisal.latif@intel.com>
Signed-off-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
---

v3:
* Clean up SRQ unrelated changes.
* Do not use wqe_idx to get SRQ context in irdma_sc_get_next_aeqe()
because its lower 6 bits are not correctly set.

 drivers/infiniband/hw/irdma/ctrl.c  | 236 +++++++++++++-
 drivers/infiniband/hw/irdma/defs.h  |  36 ++-
 drivers/infiniband/hw/irdma/hw.c    |  21 +-
 drivers/infiniband/hw/irdma/irdma.h |   1 +
 drivers/infiniband/hw/irdma/main.h  |  12 +-
 drivers/infiniband/hw/irdma/type.h  |  66 ++++
 drivers/infiniband/hw/irdma/uk.c    | 162 +++++++++-
 drivers/infiniband/hw/irdma/user.h  |  41 +++
 drivers/infiniband/hw/irdma/utils.c |  27 ++
 drivers/infiniband/hw/irdma/verbs.c | 475 +++++++++++++++++++++++++++-
 drivers/infiniband/hw/irdma/verbs.h |  25 ++
 include/uapi/rdma/irdma-abi.h       |  15 +-
 12 files changed, 1103 insertions(+), 14 deletions(-)

diff --git a/drivers/infiniband/hw/irdma/ctrl.c b/drivers/infiniband/hw/irdma/ctrl.c
index d01c55172f6a..c4da8f981dac 100644
--- a/drivers/infiniband/hw/irdma/ctrl.c
+++ b/drivers/infiniband/hw/irdma/ctrl.c
@@ -412,7 +412,8 @@ int irdma_sc_qp_init(struct irdma_sc_qp *qp, struct irdma_qp_init_info *info)
 	pble_obj_cnt = info->pd->dev->hmc_info->hmc_obj[IRDMA_HMC_IW_PBLE].cnt;
 
 	if ((info->virtual_map && info->sq_pa >= pble_obj_cnt) ||
-	    (info->virtual_map && info->rq_pa >= pble_obj_cnt))
+	    (!info->qp_uk_init_info.srq_uk &&
+	     info->virtual_map && info->rq_pa >= pble_obj_cnt))
 		return -EINVAL;
 
 	qp->llp_stream_handle = (void *)(-1);
@@ -446,6 +447,208 @@ int irdma_sc_qp_init(struct irdma_sc_qp *qp, struct irdma_qp_init_info *info)
 	return 0;
 }
 
+/**
+ * irdma_sc_srq_init - init sc_srq structure
+ * @srq: srq sc struct
+ * @info: parameters for srq init
+ */
+int irdma_sc_srq_init(struct irdma_sc_srq *srq,
+		      struct irdma_srq_init_info *info)
+{
+	u32 srq_size_quanta;
+	int ret_code;
+
+	ret_code = irdma_uk_srq_init(&srq->srq_uk, &info->srq_uk_init_info);
+	if (ret_code)
+		return ret_code;
+
+	srq->dev = info->pd->dev;
+	srq->pd = info->pd;
+	srq->vsi = info->vsi;
+	srq->srq_pa = info->srq_pa;
+	srq->first_pm_pbl_idx = info->first_pm_pbl_idx;
+	srq->pasid = info->pasid;
+	srq->pasid_valid = info->pasid_valid;
+	srq->srq_limit = info->srq_limit;
+	srq->leaf_pbl_size = info->leaf_pbl_size;
+	srq->virtual_map = info->virtual_map;
+	srq->tph_en = info->tph_en;
+	srq->arm_limit_event = info->arm_limit_event;
+	srq->tph_val = info->tph_value;
+	srq->shadow_area_pa = info->shadow_area_pa;
+
+	/* Smallest SRQ size is 256B i.e. 8 quanta */
+	srq_size_quanta = max((u32)IRDMA_SRQ_MIN_QUANTA,
+			      srq->srq_uk.srq_size *
+			      srq->srq_uk.wqe_size_multiplier);
+	srq->hw_srq_size = irdma_get_encoded_wqe_size(srq_size_quanta,
+						      IRDMA_QUEUE_TYPE_SRQ);
+
+	return 0;
+}
+
+/**
+ * irdma_sc_srq_create - send srq create CQP WQE
+ * @srq: srq sc struct
+ * @scratch: u64 saved to be used during cqp completion
+ * @post_sq: flag for cqp db to ring
+ */
+static int irdma_sc_srq_create(struct irdma_sc_srq *srq, u64 scratch,
+			       bool post_sq)
+{
+	struct irdma_sc_cqp *cqp;
+	__le64 *wqe;
+	u64 hdr;
+
+	cqp = srq->pd->dev->cqp;
+	if (srq->srq_uk.srq_id < cqp->dev->hw_attrs.min_hw_srq_id ||
+	    srq->srq_uk.srq_id >
+	    (cqp->dev->hmc_info->hmc_obj[IRDMA_HMC_IW_SRQ].max_cnt - 1))
+		return -EINVAL;
+
+	wqe = irdma_sc_cqp_get_next_send_wqe(cqp, scratch);
+	if (!wqe)
+		return -ENOMEM;
+
+	set_64bit_val(wqe, 0,
+		      FIELD_PREP(IRDMA_CQPSQ_SRQ_SRQ_LIMIT, srq->srq_limit) |
+		      FIELD_PREP(IRDMA_CQPSQ_SRQ_RQSIZE, srq->hw_srq_size) |
+		      FIELD_PREP(IRDMA_CQPSQ_SRQ_RQ_WQE_SIZE, srq->srq_uk.wqe_size));
+	set_64bit_val(wqe, 8, (uintptr_t)srq);
+	set_64bit_val(wqe, 16,
+		      FIELD_PREP(IRDMA_CQPSQ_SRQ_PD_ID, srq->pd->pd_id));
+	set_64bit_val(wqe, 32,
+		      FIELD_PREP(IRDMA_CQPSQ_SRQ_PHYSICAL_BUFFER_ADDR,
+				 srq->srq_pa >>
+				 IRDMA_CQPSQ_SRQ_PHYSICAL_BUFFER_ADDR_S));
+	set_64bit_val(wqe, 40,
+		      FIELD_PREP(IRDMA_CQPSQ_SRQ_DB_SHADOW_ADDR,
+				 srq->shadow_area_pa >>
+				 IRDMA_CQPSQ_SRQ_DB_SHADOW_ADDR_S));
+	set_64bit_val(wqe, 48,
+		      FIELD_PREP(IRDMA_CQPSQ_SRQ_FIRST_PM_PBL_IDX,
+				 srq->first_pm_pbl_idx));
+
+	hdr = srq->srq_uk.srq_id |
+	      FIELD_PREP(IRDMA_CQPSQ_OPCODE, IRDMA_CQP_OP_CREATE_SRQ) |
+	      FIELD_PREP(IRDMA_CQPSQ_SRQ_LEAF_PBL_SIZE, srq->leaf_pbl_size) |
+	      FIELD_PREP(IRDMA_CQPSQ_SRQ_VIRTMAP, srq->virtual_map) |
+	      FIELD_PREP(IRDMA_CQPSQ_SRQ_ARM_LIMIT_EVENT,
+			 srq->arm_limit_event) |
+	      FIELD_PREP(IRDMA_CQPSQ_WQEVALID, cqp->polarity);
+
+	dma_wmb(); /* make sure WQE is written before valid bit is set */
+
+	set_64bit_val(wqe, 24, hdr);
+
+	print_hex_dump_debug("WQE: SRQ_CREATE WQE", DUMP_PREFIX_OFFSET, 16, 8,
+			     wqe, IRDMA_CQP_WQE_SIZE * 8, false);
+	if (post_sq)
+		irdma_sc_cqp_post_sq(cqp);
+
+	return 0;
+}
+
+/**
+ * irdma_sc_srq_modify - send modify_srq CQP WQE
+ * @srq: srq sc struct
+ * @info: parameters for srq modification
+ * @scratch: u64 saved to be used during cqp completion
+ * @post_sq: flag for cqp db to ring
+ */
+static int irdma_sc_srq_modify(struct irdma_sc_srq *srq,
+			       struct irdma_modify_srq_info *info, u64 scratch,
+			       bool post_sq)
+{
+	struct irdma_sc_cqp *cqp;
+	__le64 *wqe;
+	u64 hdr;
+
+	cqp = srq->dev->cqp;
+	if (srq->srq_uk.srq_id < cqp->dev->hw_attrs.min_hw_srq_id ||
+	    srq->srq_uk.srq_id >
+	    (cqp->dev->hmc_info->hmc_obj[IRDMA_HMC_IW_SRQ].max_cnt - 1))
+		return -EINVAL;
+
+	wqe = irdma_sc_cqp_get_next_send_wqe(cqp, scratch);
+	if (!wqe)
+		return -ENOMEM;
+
+	set_64bit_val(wqe, 0,
+		      FIELD_PREP(IRDMA_CQPSQ_SRQ_SRQ_LIMIT, info->srq_limit) |
+		      FIELD_PREP(IRDMA_CQPSQ_SRQ_RQSIZE, srq->hw_srq_size) |
+		      FIELD_PREP(IRDMA_CQPSQ_SRQ_RQ_WQE_SIZE, srq->srq_uk.wqe_size));
+	set_64bit_val(wqe, 8,
+		      FIELD_PREP(IRDMA_CQPSQ_SRQ_SRQCTX, srq->srq_uk.srq_id));
+	set_64bit_val(wqe, 16,
+		      FIELD_PREP(IRDMA_CQPSQ_SRQ_PD_ID, srq->pd->pd_id));
+	set_64bit_val(wqe, 32,
+		      FIELD_PREP(IRDMA_CQPSQ_SRQ_PHYSICAL_BUFFER_ADDR,
+				 srq->srq_pa >>
+				 IRDMA_CQPSQ_SRQ_PHYSICAL_BUFFER_ADDR_S));
+	set_64bit_val(wqe, 40,
+		      FIELD_PREP(IRDMA_CQPSQ_SRQ_DB_SHADOW_ADDR,
+				 srq->shadow_area_pa >>
+				 IRDMA_CQPSQ_SRQ_DB_SHADOW_ADDR_S));
+	set_64bit_val(wqe, 48,
+		      FIELD_PREP(IRDMA_CQPSQ_SRQ_FIRST_PM_PBL_IDX,
+				 srq->first_pm_pbl_idx));
+
+	hdr = srq->srq_uk.srq_id |
+	      FIELD_PREP(IRDMA_CQPSQ_OPCODE, IRDMA_CQP_OP_MODIFY_SRQ) |
+	      FIELD_PREP(IRDMA_CQPSQ_SRQ_LEAF_PBL_SIZE, srq->leaf_pbl_size) |
+	      FIELD_PREP(IRDMA_CQPSQ_SRQ_VIRTMAP, srq->virtual_map) |
+	      FIELD_PREP(IRDMA_CQPSQ_SRQ_ARM_LIMIT_EVENT,
+			 info->arm_limit_event) |
+	      FIELD_PREP(IRDMA_CQPSQ_WQEVALID, cqp->polarity);
+	dma_wmb(); /* make sure WQE is written before valid bit is set */
+
+	set_64bit_val(wqe, 24, hdr);
+
+	print_hex_dump_debug("WQE: SRQ_MODIFY WQE", DUMP_PREFIX_OFFSET, 16, 8,
+			     wqe, IRDMA_CQP_WQE_SIZE * 8, false);
+	if (post_sq)
+		irdma_sc_cqp_post_sq(cqp);
+
+	return 0;
+}
+
+/**
+ * irdma_sc_srq_destroy - send srq_destroy CQP WQE
+ * @srq: srq sc struct
+ * @scratch: u64 saved to be used during cqp completion
+ * @post_sq: flag for cqp db to ring
+ */
+static int irdma_sc_srq_destroy(struct irdma_sc_srq *srq, u64 scratch,
+				bool post_sq)
+{
+	struct irdma_sc_cqp *cqp;
+	__le64 *wqe;
+	u64 hdr;
+
+	cqp = srq->dev->cqp;
+
+	wqe = irdma_sc_cqp_get_next_send_wqe(cqp, scratch);
+	if (!wqe)
+		return -ENOMEM;
+
+	set_64bit_val(wqe, 8, (uintptr_t)srq);
+
+	hdr = srq->srq_uk.srq_id |
+	      FIELD_PREP(IRDMA_CQPSQ_OPCODE, IRDMA_CQP_OP_DESTROY_SRQ) |
+	      FIELD_PREP(IRDMA_CQPSQ_WQEVALID, cqp->polarity);
+	dma_wmb(); /* make sure WQE is written before valid bit is set */
+
+	set_64bit_val(wqe, 24, hdr);
+
+	print_hex_dump_debug("WQE: SRQ_DESTROY WQE", DUMP_PREFIX_OFFSET, 16,
+			     8, wqe, IRDMA_CQP_WQE_SIZE * 8, false);
+	if (post_sq)
+		irdma_sc_cqp_post_sq(cqp);
+
+	return 0;
+}
+
 /**
  * irdma_sc_qp_create - create qp
  * @qp: sc qp
@@ -837,6 +1040,7 @@ static void irdma_sc_qp_setctx_roce_gen_3(struct irdma_sc_qp *qp,
 	      FIELD_PREP(IRDMAQPC_ISQP1, roce_info->is_qp1) |
 	      FIELD_PREP(IRDMAQPC_ROCE_TVER, roce_info->roce_tver) |
 	      FIELD_PREP(IRDMAQPC_IPV4, udp->ipv4) |
+	      FIELD_PREP(IRDMAQPC_USE_SRQ, !qp->qp_uk.srq_uk ? 0 : 1) |
 	      FIELD_PREP(IRDMAQPC_INSERTVLANTAG, udp->insert_vlan_tag);
 	set_64bit_val(qp_ctx, 0, qw0);
 	set_64bit_val(qp_ctx, 8, qp->sq_pa);
@@ -921,6 +1125,9 @@ static void irdma_sc_qp_setctx_roce_gen_3(struct irdma_sc_qp *qp,
 		      FIELD_PREP(IRDMAQPC_LOCAL_IPADDR0, udp->local_ipaddr[0]));
 	set_64bit_val(qp_ctx, 200,
 		      FIELD_PREP(IRDMAQPC_THIGH, roce_info->t_high) |
+		      FIELD_PREP(IRDMAQPC_SRQ_ID,
+				 !qp->qp_uk.srq_uk ?
+					0 : qp->qp_uk.srq_uk->srq_id) |
 		      FIELD_PREP(IRDMAQPC_TLOW, roce_info->t_low));
 	set_64bit_val(qp_ctx, 208, roce_info->pd_id |
 		      FIELD_PREP(IRDMAQPC_STAT_INDEX_GEN3, info->stats_idx) |
@@ -2219,6 +2426,14 @@ u8 irdma_get_encoded_wqe_size(u32 wqsize, enum irdma_queue_type queue_type)
 {
 	u8 encoded_size = 0;
 
+	if (queue_type == IRDMA_QUEUE_TYPE_SRQ) {
+		/* Smallest SRQ size is 256B (8 quanta) that gets
+		 * encoded to 0.
+		 */
+		encoded_size = ilog2(wqsize) - 3;
+
+		return encoded_size;
+	}
 	/* cqp sq's hw coded value starts from 1 for size of 4
 	 * while it starts from 0 for qp' wq's.
 	 */
@@ -4585,7 +4800,7 @@ int irdma_sc_get_next_aeqe(struct irdma_sc_aeq *aeq,
 	case IRDMA_AE_SRQ_LIMIT:
 		info->srq = true;
 		/* [63:6] from CMPL_CTXT, [5:0] from WQDESCIDX. */
-		info->compl_ctx = compl_ctx | info->wqe_idx;
+		info->compl_ctx = compl_ctx;
 		ae_src = IRDMA_AE_SOURCE_RSVD;
 		break;
 	case IRDMA_AE_PRIV_OPERATION_DENIED:
@@ -6161,6 +6376,22 @@ static int irdma_exec_cqp_cmd(struct irdma_sc_dev *dev,
 						   &pcmdinfo->in.u.mc_modify.info,
 						   pcmdinfo->in.u.mc_modify.scratch);
 		break;
+	case IRDMA_OP_SRQ_CREATE:
+		status = irdma_sc_srq_create(pcmdinfo->in.u.srq_create.srq,
+					     pcmdinfo->in.u.srq_create.scratch,
+					     pcmdinfo->post_sq);
+		break;
+	case IRDMA_OP_SRQ_MODIFY:
+		status = irdma_sc_srq_modify(pcmdinfo->in.u.srq_modify.srq,
+					     &pcmdinfo->in.u.srq_modify.info,
+					     pcmdinfo->in.u.srq_modify.scratch,
+					     pcmdinfo->post_sq);
+		break;
+	case IRDMA_OP_SRQ_DESTROY:
+		status = irdma_sc_srq_destroy(pcmdinfo->in.u.srq_destroy.srq,
+					      pcmdinfo->in.u.srq_destroy.scratch,
+					      pcmdinfo->post_sq);
+		break;
 	default:
 		status = -EOPNOTSUPP;
 		break;
@@ -6318,6 +6549,7 @@ int irdma_sc_dev_init(enum irdma_vers ver, struct irdma_sc_dev *dev,
 	dev->protocol_used = info->protocol_used;
 	/* Setup the hardware limits, hmc may limit further */
 	dev->hw_attrs.min_hw_qp_id = IRDMA_MIN_IW_QP_ID;
+	dev->hw_attrs.min_hw_srq_id = IRDMA_MIN_IW_SRQ_ID;
 	dev->hw_attrs.min_hw_aeq_size = IRDMA_MIN_AEQ_ENTRIES;
 	if (dev->hw_attrs.uk_attrs.hw_rev >= IRDMA_GEN_3)
 		dev->hw_attrs.max_hw_aeq_size = IRDMA_MAX_AEQ_ENTRIES_GEN_3;
diff --git a/drivers/infiniband/hw/irdma/defs.h b/drivers/infiniband/hw/irdma/defs.h
index d8f5ad23770b..408058b6ba55 100644
--- a/drivers/infiniband/hw/irdma/defs.h
+++ b/drivers/infiniband/hw/irdma/defs.h
@@ -140,7 +140,11 @@ enum irdma_protocol_used {
 #define IRDMA_QP_SW_MAX_RQ_QUANTA	32768
 #define IRDMA_MAX_QP_WRS(max_quanta_per_wr) \
 	((IRDMA_QP_SW_MAX_WQ_QUANTA - IRDMA_SQ_RSVD) / (max_quanta_per_wr))
+#define IRDMA_SRQ_MIN_QUANTA 8
 #define IRDMA_SRQ_MAX_QUANTA 262144
+#define IRDMA_MAX_SRQ_WRS \
+	((IRDMA_SRQ_MAX_QUANTA - IRDMA_RQ_RSVD) / IRDMA_MAX_QUANTA_PER_WR)
+
 #define IRDMAQP_TERM_SEND_TERM_AND_FIN		0
 #define IRDMAQP_TERM_SEND_TERM_ONLY		1
 #define IRDMAQP_TERM_SEND_FIN_ONLY		2
@@ -236,9 +240,12 @@ enum irdma_cqp_op_type {
 	IRDMA_OP_ADD_LOCAL_MAC_ENTRY		= 46,
 	IRDMA_OP_DELETE_LOCAL_MAC_ENTRY		= 47,
 	IRDMA_OP_CQ_MODIFY			= 48,
+	IRDMA_OP_SRQ_CREATE			= 49,
+	IRDMA_OP_SRQ_MODIFY			= 50,
+	IRDMA_OP_SRQ_DESTROY			= 51,
 
 	/* Must be last entry*/
-	IRDMA_MAX_CQP_OPS			= 49,
+	IRDMA_MAX_CQP_OPS			= 52,
 };
 
 /* CQP SQ WQES */
@@ -248,6 +255,9 @@ enum irdma_cqp_op_type {
 #define IRDMA_CQP_OP_CREATE_CQ				0x03
 #define IRDMA_CQP_OP_MODIFY_CQ				0x04
 #define IRDMA_CQP_OP_DESTROY_CQ				0x05
+#define IRDMA_CQP_OP_CREATE_SRQ				0x06
+#define IRDMA_CQP_OP_MODIFY_SRQ				0x07
+#define IRDMA_CQP_OP_DESTROY_SRQ			0x08
 #define IRDMA_CQP_OP_ALLOC_STAG				0x09
 #define IRDMA_CQP_OP_REG_MR				0x0a
 #define IRDMA_CQP_OP_QUERY_STAG				0x0b
@@ -519,6 +529,7 @@ enum irdma_cqp_op_type {
 #define IRDMA_CQ_ERROR BIT_ULL(55)
 #define IRDMA_CQ_SQ BIT_ULL(62)
 
+#define IRDMA_CQ_SRQ BIT_ULL(52)
 #define IRDMA_CQ_VALID BIT_ULL(63)
 #define IRDMA_CQ_IMMVALID BIT_ULL(62)
 #define IRDMA_CQ_UDSMACVALID BIT_ULL(61)
@@ -628,6 +639,24 @@ enum irdma_cqp_op_type {
 
 #define IRDMA_CQPSQ_QP_DBSHADOWADDR IRDMA_CQPHC_QPCTX
 
+#define IRDMA_CQPSQ_SRQ_RQSIZE GENMASK_ULL(3, 0)
+#define IRDMA_CQPSQ_SRQ_RQ_WQE_SIZE GENMASK_ULL(5, 4)
+#define IRDMA_CQPSQ_SRQ_SRQ_LIMIT GENMASK_ULL(43, 32)
+#define IRDMA_CQPSQ_SRQ_SRQCTX GENMASK_ULL(63, 6)
+#define IRDMA_CQPSQ_SRQ_PD_ID GENMASK_ULL(39, 16)
+#define IRDMA_CQPSQ_SRQ_SRQ_ID GENMASK_ULL(15, 0)
+#define IRDMA_CQPSQ_SRQ_OP GENMASK_ULL(37, 32)
+#define IRDMA_CQPSQ_SRQ_LEAF_PBL_SIZE GENMASK_ULL(45, 44)
+#define IRDMA_CQPSQ_SRQ_VIRTMAP BIT_ULL(47)
+#define IRDMA_CQPSQ_SRQ_TPH_EN BIT_ULL(60)
+#define IRDMA_CQPSQ_SRQ_ARM_LIMIT_EVENT BIT_ULL(61)
+#define IRDMA_CQPSQ_SRQ_FIRST_PM_PBL_IDX GENMASK_ULL(27, 0)
+#define IRDMA_CQPSQ_SRQ_TPH_VALUE GENMASK_ULL(7, 0)
+#define IRDMA_CQPSQ_SRQ_PHYSICAL_BUFFER_ADDR_S 8
+#define IRDMA_CQPSQ_SRQ_PHYSICAL_BUFFER_ADDR GENMASK_ULL(63, 8)
+#define IRDMA_CQPSQ_SRQ_DB_SHADOW_ADDR_S 6
+#define IRDMA_CQPSQ_SRQ_DB_SHADOW_ADDR GENMASK_ULL(63, 6)
+
 #define IRDMA_CQPSQ_CQ_CQSIZE GENMASK_ULL(20, 0)
 #define IRDMA_CQPSQ_CQ_CQCTX GENMASK_ULL(62, 0)
 #define IRDMA_CQPSQ_CQ_SHADOW_READ_THRESHOLD GENMASK(17, 0)
@@ -779,6 +808,11 @@ enum irdma_cqp_op_type {
 #define IRDMAQPC_INSERTL2TAG2 BIT_ULL(11)
 #define IRDMAQPC_LIMIT GENMASK_ULL(13, 12)
 
+#define IRDMAQPC_USE_SRQ BIT_ULL(10)
+#define IRDMAQPC_SRQ_ID GENMASK_ULL(15, 0)
+#define IRDMAQPC_PASID GENMASK_ULL(19, 0)
+#define IRDMAQPC_PASID_VALID BIT_ULL(11)
+
 #define IRDMAQPC_ECN_EN BIT_ULL(14)
 #define IRDMAQPC_DROPOOOSEG BIT_ULL(15)
 #define IRDMAQPC_DUPACK_THRESH GENMASK_ULL(18, 16)
diff --git a/drivers/infiniband/hw/irdma/hw.c b/drivers/infiniband/hw/irdma/hw.c
index c8f81a6245be..4bc98fa2d3a5 100644
--- a/drivers/infiniband/hw/irdma/hw.c
+++ b/drivers/infiniband/hw/irdma/hw.c
@@ -269,6 +269,7 @@ static void irdma_process_aeq(struct irdma_pci_f *rf)
 	struct irdma_sc_qp *qp = NULL;
 	struct irdma_qp_host_ctx_info *ctx_info = NULL;
 	struct irdma_device *iwdev = rf->iwdev;
+	struct irdma_sc_srq *srq;
 	unsigned long flags;
 
 	u32 aeqcnt = 0;
@@ -320,6 +321,9 @@ static void irdma_process_aeq(struct irdma_pci_f *rf)
 				iwqp->last_aeq = info->ae_id;
 			spin_unlock_irqrestore(&iwqp->lock, flags);
 			ctx_info = &iwqp->ctx_info;
+		} else if (info->srq) {
+			if (info->ae_id != IRDMA_AE_SRQ_LIMIT)
+				continue;
 		} else {
 			if (info->ae_id != IRDMA_AE_CQ_OPERATION_ERROR &&
 			    info->ae_id != IRDMA_AE_CQP_DEFERRED_COMPLETE)
@@ -417,6 +421,12 @@ static void irdma_process_aeq(struct irdma_pci_f *rf)
 			}
 			irdma_cq_rem_ref(&iwcq->ibcq);
 			break;
+		case IRDMA_AE_SRQ_LIMIT:
+			srq = (struct irdma_sc_srq *)(uintptr_t)info->compl_ctx;
+			irdma_srq_event(srq);
+			break;
+		case IRDMA_AE_SRQ_CATASTROPHIC_ERROR:
+			break;
 		case IRDMA_AE_CQP_DEFERRED_COMPLETE:
 			/* Remove completed CQP requests from pending list
 			 * and notify about those CQP ops completion.
@@ -1839,7 +1849,9 @@ static void irdma_get_used_rsrc(struct irdma_device *iwdev)
 	iwdev->rf->used_qps = find_first_zero_bit(iwdev->rf->allocated_qps,
 						 iwdev->rf->max_qp);
 	iwdev->rf->used_cqs = find_first_zero_bit(iwdev->rf->allocated_cqs,
-						 iwdev->rf->max_cq);
+						  iwdev->rf->max_cq);
+	iwdev->rf->used_srqs = find_first_zero_bit(iwdev->rf->allocated_srqs,
+						   iwdev->rf->max_srq);
 	iwdev->rf->used_mrs = find_first_zero_bit(iwdev->rf->allocated_mrs,
 						 iwdev->rf->max_mr);
 }
@@ -2056,7 +2068,8 @@ static void irdma_set_hw_rsrc(struct irdma_pci_f *rf)
 	rf->allocated_qps = (void *)(rf->mem_rsrc +
 		   (sizeof(struct irdma_arp_entry) * rf->arp_table_size));
 	rf->allocated_cqs = &rf->allocated_qps[BITS_TO_LONGS(rf->max_qp)];
-	rf->allocated_mrs = &rf->allocated_cqs[BITS_TO_LONGS(rf->max_cq)];
+	rf->allocated_srqs = &rf->allocated_cqs[BITS_TO_LONGS(rf->max_cq)];
+	rf->allocated_mrs = &rf->allocated_srqs[BITS_TO_LONGS(rf->max_srq)];
 	rf->allocated_pds = &rf->allocated_mrs[BITS_TO_LONGS(rf->max_mr)];
 	rf->allocated_ahs = &rf->allocated_pds[BITS_TO_LONGS(rf->max_pd)];
 	rf->allocated_mcgs = &rf->allocated_ahs[BITS_TO_LONGS(rf->max_ah)];
@@ -2084,12 +2097,14 @@ static u32 irdma_calc_mem_rsrc_size(struct irdma_pci_f *rf)
 	rsrc_size += sizeof(unsigned long) * BITS_TO_LONGS(rf->max_qp);
 	rsrc_size += sizeof(unsigned long) * BITS_TO_LONGS(rf->max_mr);
 	rsrc_size += sizeof(unsigned long) * BITS_TO_LONGS(rf->max_cq);
+	rsrc_size += sizeof(unsigned long) * BITS_TO_LONGS(rf->max_srq);
 	rsrc_size += sizeof(unsigned long) * BITS_TO_LONGS(rf->max_pd);
 	rsrc_size += sizeof(unsigned long) * BITS_TO_LONGS(rf->arp_table_size);
 	rsrc_size += sizeof(unsigned long) * BITS_TO_LONGS(rf->max_ah);
 	rsrc_size += sizeof(unsigned long) * BITS_TO_LONGS(rf->max_mcg);
 	rsrc_size += sizeof(struct irdma_qp **) * rf->max_qp;
 	rsrc_size += sizeof(struct irdma_cq **) * rf->max_cq;
+	rsrc_size += sizeof(struct irdma_srq **) * rf->max_srq;
 
 	return rsrc_size;
 }
@@ -2117,6 +2132,7 @@ u32 irdma_initialize_hw_rsrc(struct irdma_pci_f *rf)
 	rf->max_qp = rf->sc_dev.hmc_info->hmc_obj[IRDMA_HMC_IW_QP].cnt;
 	rf->max_mr = rf->sc_dev.hmc_info->hmc_obj[IRDMA_HMC_IW_MR].cnt;
 	rf->max_cq = rf->sc_dev.hmc_info->hmc_obj[IRDMA_HMC_IW_CQ].cnt;
+	rf->max_srq = rf->sc_dev.hmc_info->hmc_obj[IRDMA_HMC_IW_SRQ].cnt;
 	rf->max_pd = rf->sc_dev.hw_attrs.max_hw_pds;
 	rf->arp_table_size = rf->sc_dev.hmc_info->hmc_obj[IRDMA_HMC_IW_ARP].cnt;
 	rf->max_ah = rf->sc_dev.hmc_info->hmc_obj[IRDMA_HMC_IW_FSIAV].cnt;
@@ -2136,6 +2152,7 @@ u32 irdma_initialize_hw_rsrc(struct irdma_pci_f *rf)
 	set_bit(0, rf->allocated_mrs);
 	set_bit(0, rf->allocated_qps);
 	set_bit(0, rf->allocated_cqs);
+	set_bit(0, rf->allocated_srqs);
 	set_bit(0, rf->allocated_pds);
 	set_bit(0, rf->allocated_arps);
 	set_bit(0, rf->allocated_ahs);
diff --git a/drivers/infiniband/hw/irdma/irdma.h b/drivers/infiniband/hw/irdma/irdma.h
index e012f795bce8..ff938a01d70c 100644
--- a/drivers/infiniband/hw/irdma/irdma.h
+++ b/drivers/infiniband/hw/irdma/irdma.h
@@ -162,6 +162,7 @@ struct irdma_hw_attrs {
 	u32 max_done_count;
 	u32 max_sleep_count;
 	u32 max_cqp_compl_wait_time_ms;
+	u32 min_hw_srq_id;
 	u16 max_stat_inst;
 	u16 max_stat_idx;
 };
diff --git a/drivers/infiniband/hw/irdma/main.h b/drivers/infiniband/hw/irdma/main.h
index 0c7f5f730f1f..ffcf4b8a22f8 100644
--- a/drivers/infiniband/hw/irdma/main.h
+++ b/drivers/infiniband/hw/irdma/main.h
@@ -273,6 +273,8 @@ struct irdma_pci_f {
 	u32 max_mr;
 	u32 max_qp;
 	u32 max_cq;
+	u32 max_srq;
+	u32 next_srq;
 	u32 max_ah;
 	u32 next_ah;
 	u32 max_mcg;
@@ -286,6 +288,7 @@ struct irdma_pci_f {
 	u32 mr_stagmask;
 	u32 used_pds;
 	u32 used_cqs;
+	u32 used_srqs;
 	u32 used_mrs;
 	u32 used_qps;
 	u32 arp_table_size;
@@ -297,6 +300,7 @@ struct irdma_pci_f {
 	unsigned long *allocated_ws_nodes;
 	unsigned long *allocated_qps;
 	unsigned long *allocated_cqs;
+	unsigned long *allocated_srqs;
 	unsigned long *allocated_mrs;
 	unsigned long *allocated_pds;
 	unsigned long *allocated_mcgs;
@@ -420,6 +424,11 @@ static inline struct irdma_pci_f *dev_to_rf(struct irdma_sc_dev *dev)
 	return container_of(dev, struct irdma_pci_f, sc_dev);
 }
 
+static inline struct irdma_srq *to_iwsrq(struct ib_srq *ibsrq)
+{
+	return container_of(ibsrq, struct irdma_srq, ibsrq);
+}
+
 /**
  * irdma_alloc_resource - allocate a resource
  * @iwdev: device pointer
@@ -515,7 +524,8 @@ int irdma_modify_qp_roce(struct ib_qp *ibqp, struct ib_qp_attr *attr,
 void irdma_cq_add_ref(struct ib_cq *ibcq);
 void irdma_cq_rem_ref(struct ib_cq *ibcq);
 void irdma_cq_wq_destroy(struct irdma_pci_f *rf, struct irdma_sc_cq *cq);
-
+void irdma_srq_event(struct irdma_sc_srq *srq);
+void irdma_srq_wq_destroy(struct irdma_pci_f *rf, struct irdma_sc_srq *srq);
 void irdma_cleanup_pending_cqp_op(struct irdma_pci_f *rf);
 int irdma_hw_modify_qp(struct irdma_device *iwdev, struct irdma_qp *iwqp,
 		       struct irdma_modify_qp_info *info, bool wait);
diff --git a/drivers/infiniband/hw/irdma/type.h b/drivers/infiniband/hw/irdma/type.h
index 1aeca41a46a3..fa1f7ea83186 100644
--- a/drivers/infiniband/hw/irdma/type.h
+++ b/drivers/infiniband/hw/irdma/type.h
@@ -242,6 +242,7 @@ enum irdma_syn_rst_handling {
 enum irdma_queue_type {
 	IRDMA_QUEUE_TYPE_SQ_RQ = 0,
 	IRDMA_QUEUE_TYPE_CQP,
+	IRDMA_QUEUE_TYPE_SRQ,
 };
 
 struct irdma_sc_dev;
@@ -732,6 +733,51 @@ struct irdma_modify_cq_info {
 	bool cq_resize:1;
 };
 
+struct irdma_srq_init_info {
+	struct irdma_sc_pd *pd;
+	struct irdma_sc_vsi *vsi;
+	u64 srq_pa;
+	u64 shadow_area_pa;
+	u32 first_pm_pbl_idx;
+	u32 pasid;
+	u32 srq_size;
+	u16 srq_limit;
+	u8 pasid_valid;
+	u8 wqe_size;
+	u8 leaf_pbl_size;
+	u8 virtual_map;
+	u8 tph_en;
+	u8 arm_limit_event;
+	u8 tph_value;
+	u8 pbl_chunk_size;
+	struct irdma_srq_uk_init_info srq_uk_init_info;
+};
+
+struct irdma_sc_srq {
+	struct irdma_sc_dev *dev;
+	struct irdma_sc_vsi *vsi;
+	struct irdma_sc_pd *pd;
+	struct irdma_srq_uk srq_uk;
+	void *back_srq;
+	u64 srq_pa;
+	u64 shadow_area_pa;
+	u32 first_pm_pbl_idx;
+	u32 pasid;
+	u32 hw_srq_size;
+	u16 srq_limit;
+	u8 pasid_valid;
+	u8 leaf_pbl_size;
+	u8 virtual_map;
+	u8 tph_en;
+	u8 arm_limit_event;
+	u8 tph_val;
+};
+
+struct irdma_modify_srq_info {
+	u16 srq_limit;
+	u8 arm_limit_event;
+};
+
 struct irdma_create_qp_info {
 	bool ord_valid:1;
 	bool tcp_ctx_valid:1;
@@ -1038,6 +1084,7 @@ struct irdma_qp_host_ctx_info {
 	};
 	u32 send_cq_num;
 	u32 rcv_cq_num;
+	u32 srq_id;
 	u32 rem_endpoint_idx;
 	u16 stats_idx;
 	bool srq_valid:1;
@@ -1337,6 +1384,8 @@ void irdma_sc_cq_resize(struct irdma_sc_cq *cq, struct irdma_modify_cq_info *inf
 int irdma_sc_static_hmc_pages_allocated(struct irdma_sc_cqp *cqp, u64 scratch,
 					u8 hmc_fn_id, bool post_sq,
 					bool poll_registers);
+int irdma_sc_srq_init(struct irdma_sc_srq *srq,
+		      struct irdma_srq_init_info *info);
 
 void sc_vsi_update_stats(struct irdma_sc_vsi *vsi);
 struct cqp_info {
@@ -1580,6 +1629,23 @@ struct cqp_info {
 			struct irdma_dma_mem query_buff_mem;
 			u64 scratch;
 		} query_rdma;
+
+		struct {
+			struct irdma_sc_srq *srq;
+			u64 scratch;
+		} srq_create;
+
+		struct {
+			struct irdma_sc_srq *srq;
+			struct irdma_modify_srq_info info;
+			u64 scratch;
+		} srq_modify;
+
+		struct {
+			struct irdma_sc_srq *srq;
+			u64 scratch;
+		} srq_destroy;
+
 	} u;
 };
 
diff --git a/drivers/infiniband/hw/irdma/uk.c b/drivers/infiniband/hw/irdma/uk.c
index 38c54e59cc2e..e7ffde792781 100644
--- a/drivers/infiniband/hw/irdma/uk.c
+++ b/drivers/infiniband/hw/irdma/uk.c
@@ -198,6 +198,26 @@ __le64 *irdma_qp_get_next_send_wqe(struct irdma_qp_uk *qp, u32 *wqe_idx,
 	return wqe;
 }
 
+__le64 *irdma_srq_get_next_recv_wqe(struct irdma_srq_uk *srq, u32 *wqe_idx)
+{
+	int ret_code;
+	__le64 *wqe;
+
+	if (IRDMA_RING_FULL_ERR(srq->srq_ring))
+		return NULL;
+
+	IRDMA_ATOMIC_RING_MOVE_HEAD(srq->srq_ring, *wqe_idx, ret_code);
+	if (ret_code)
+		return NULL;
+
+	if (!*wqe_idx)
+		srq->srwqe_polarity = !srq->srwqe_polarity;
+	/* rq_wqe_size_multiplier is no of 32 byte quanta in one rq wqe */
+	wqe = srq->srq_base[*wqe_idx * (srq->wqe_size_multiplier)].elem;
+
+	return wqe;
+}
+
 /**
  * irdma_qp_get_next_recv_wqe - get next qp's rcv wqe
  * @qp: hw qp ptr
@@ -317,6 +337,58 @@ int irdma_uk_rdma_write(struct irdma_qp_uk *qp, struct irdma_post_sq_info *info,
 	return 0;
 }
 
+/**
+ * irdma_uk_srq_post_receive - post a receive wqe to a shared rq
+ * @srq: shared rq ptr
+ * @info: post rq information
+ */
+int irdma_uk_srq_post_receive(struct irdma_srq_uk *srq,
+			      struct irdma_post_rq_info *info)
+{
+	u32 wqe_idx, i, byte_off;
+	u32 addl_frag_cnt;
+	__le64 *wqe;
+	u64 hdr;
+
+	if (srq->max_srq_frag_cnt < info->num_sges)
+		return -EINVAL;
+
+	wqe = irdma_srq_get_next_recv_wqe(srq, &wqe_idx);
+	if (!wqe)
+		return -ENOMEM;
+
+	addl_frag_cnt = info->num_sges > 1 ? info->num_sges - 1 : 0;
+	srq->wqe_ops.iw_set_fragment(wqe, 0, info->sg_list,
+				     srq->srwqe_polarity);
+
+	for (i = 1, byte_off = 32; i < info->num_sges; i++) {
+		srq->wqe_ops.iw_set_fragment(wqe, byte_off, &info->sg_list[i],
+					     srq->srwqe_polarity);
+		byte_off += 16;
+	}
+
+	/* if not an odd number set valid bit in next fragment */
+	if (srq->uk_attrs->hw_rev >= IRDMA_GEN_2 && !(info->num_sges & 0x01) &&
+	    info->num_sges) {
+		srq->wqe_ops.iw_set_fragment(wqe, byte_off, NULL,
+					     srq->srwqe_polarity);
+		if (srq->uk_attrs->hw_rev == IRDMA_GEN_2)
+			++addl_frag_cnt;
+	}
+
+	set_64bit_val(wqe, 16, (u64)info->wr_id);
+	hdr = FIELD_PREP(IRDMAQPSQ_ADDFRAGCNT, addl_frag_cnt) |
+	      FIELD_PREP(IRDMAQPSQ_VALID, srq->srwqe_polarity);
+
+	dma_wmb(); /* make sure WQE is populated before valid bit is set */
+
+	set_64bit_val(wqe, 24, hdr);
+
+	set_64bit_val(srq->shadow_area, 0, (wqe_idx + 1) % srq->srq_ring.size);
+
+	return 0;
+}
+
 /**
  * irdma_uk_rdma_read - rdma read command
  * @qp: hw qp ptr
@@ -973,6 +1045,8 @@ int irdma_uk_cq_poll_cmpl(struct irdma_cq_uk *cq,
 	u64 comp_ctx, qword0, qword2, qword3;
 	__le64 *cqe;
 	struct irdma_qp_uk *qp;
+	struct irdma_srq_uk *srq;
+	u8 is_srq;
 	struct irdma_ring *pring = NULL;
 	u32 wqe_idx;
 	int ret_code;
@@ -1046,8 +1120,14 @@ int irdma_uk_cq_poll_cmpl(struct irdma_cq_uk *cq,
 	}
 
 	info->q_type = (u8)FIELD_GET(IRDMA_CQ_SQ, qword3);
+	is_srq = (u8)FIELD_GET(IRDMA_CQ_SRQ, qword3);
 	info->error = (bool)FIELD_GET(IRDMA_CQ_ERROR, qword3);
 	info->ipv4 = (bool)FIELD_GET(IRDMACQ_IPV4, qword3);
+	get_64bit_val(cqe, 8, &comp_ctx);
+	if (is_srq)
+		get_64bit_val(cqe, 40, (u64 *)&qp);
+	else
+		qp = (struct irdma_qp_uk *)(unsigned long)comp_ctx;
 	if (info->error) {
 		info->major_err = FIELD_GET(IRDMA_CQ_MAJERR, qword3);
 		info->minor_err = FIELD_GET(IRDMA_CQ_MINERR, qword3);
@@ -1085,7 +1165,22 @@ int irdma_uk_cq_poll_cmpl(struct irdma_cq_uk *cq,
 	info->qp_handle = (irdma_qp_handle)(unsigned long)qp;
 	info->op_type = (u8)FIELD_GET(IRDMACQ_OP, qword3);
 
-	if (info->q_type == IRDMA_CQE_QTYPE_RQ) {
+	if (info->q_type == IRDMA_CQE_QTYPE_RQ && is_srq) {
+		srq = qp->srq_uk;
+
+		get_64bit_val(cqe, 8, &info->wr_id);
+		info->bytes_xfered = (u32)FIELD_GET(IRDMACQ_PAYLDLEN, qword0);
+
+		if (qword3 & IRDMACQ_STAG) {
+			info->stag_invalid_set = true;
+			info->inv_stag = (u32)FIELD_GET(IRDMACQ_INVSTAG,
+							qword2);
+		} else {
+			info->stag_invalid_set = false;
+		}
+		IRDMA_RING_MOVE_TAIL(srq->srq_ring);
+		pring = &srq->srq_ring;
+	} else if (info->q_type == IRDMA_CQE_QTYPE_RQ && !is_srq) {
 		u32 array_idx;
 
 		array_idx = wqe_idx / qp->rq_wqe_size_multiplier;
@@ -1210,10 +1305,10 @@ int irdma_uk_cq_poll_cmpl(struct irdma_cq_uk *cq,
 }
 
 /**
- * irdma_qp_round_up - return round up qp wq depth
+ * irdma_round_up_wq - return round up qp wq depth
  * @wqdepth: wq depth in quanta to round up
  */
-static int irdma_qp_round_up(u32 wqdepth)
+static int irdma_round_up_wq(u32 wqdepth)
 {
 	int scount = 1;
 
@@ -1268,7 +1363,7 @@ int irdma_get_sqdepth(struct irdma_uk_attrs *uk_attrs, u32 sq_size, u8 shift,
 {
 	u32 min_size = (u32)uk_attrs->min_hw_wq_size << shift;
 
-	*sqdepth = irdma_qp_round_up((sq_size << shift) + IRDMA_SQ_RSVD);
+	*sqdepth = irdma_round_up_wq((sq_size << shift) + IRDMA_SQ_RSVD);
 
 	if (*sqdepth < min_size)
 		*sqdepth = min_size;
@@ -1290,7 +1385,7 @@ int irdma_get_rqdepth(struct irdma_uk_attrs *uk_attrs, u32 rq_size, u8 shift,
 {
 	u32 min_size = (u32)uk_attrs->min_hw_wq_size << shift;
 
-	*rqdepth = irdma_qp_round_up((rq_size << shift) + IRDMA_RQ_RSVD);
+	*rqdepth = irdma_round_up_wq((rq_size << shift) + IRDMA_RQ_RSVD);
 
 	if (*rqdepth < min_size)
 		*rqdepth = min_size;
@@ -1300,6 +1395,26 @@ int irdma_get_rqdepth(struct irdma_uk_attrs *uk_attrs, u32 rq_size, u8 shift,
 	return 0;
 }
 
+/*
+ * irdma_get_srqdepth - get SRQ depth (quanta)
+ * @uk_attrs: qp HW attributes
+ * @srq_size: SRQ size
+ * @shift: shift which determines size of WQE
+ * @srqdepth: depth of SRQ
+ */
+int irdma_get_srqdepth(struct irdma_uk_attrs *uk_attrs, u32 srq_size, u8 shift,
+		       u32 *srqdepth)
+{
+	*srqdepth = irdma_round_up_wq((srq_size << shift) + IRDMA_RQ_RSVD);
+
+	if (*srqdepth < ((u32)uk_attrs->min_hw_wq_size << shift))
+		*srqdepth = uk_attrs->min_hw_wq_size << shift;
+	else if (*srqdepth > uk_attrs->max_hw_srq_quanta)
+		return -EINVAL;
+
+	return 0;
+}
+
 static const struct irdma_wqe_uk_ops iw_wqe_uk_ops = {
 	.iw_copy_inline_data = irdma_copy_inline_data,
 	.iw_inline_data_size_to_quanta = irdma_inline_data_size_to_quanta,
@@ -1335,6 +1450,42 @@ static void irdma_setup_connection_wqes(struct irdma_qp_uk *qp,
 	IRDMA_RING_MOVE_HEAD_BY_COUNT_NOCHECK(qp->initial_ring, move_cnt);
 }
 
+/**
+ * irdma_uk_srq_init - initialize shared qp
+ * @srq: hw srq (user and kernel)
+ * @info: srq initialization info
+ *
+ * Initializes the vars used in both user and kernel mode.
+ * The size of the wqe depends on number of max fragments
+ * allowed. Then size of wqe * the number of wqes should be the
+ * amount of memory allocated for srq.
+ */
+int irdma_uk_srq_init(struct irdma_srq_uk *srq,
+		      struct irdma_srq_uk_init_info *info)
+{
+	u8 rqshift;
+
+	srq->uk_attrs = info->uk_attrs;
+	if (info->max_srq_frag_cnt > srq->uk_attrs->max_hw_wq_frags)
+		return -EINVAL;
+
+	irdma_get_wqe_shift(srq->uk_attrs, info->max_srq_frag_cnt, 0, &rqshift);
+	srq->srq_caps = info->srq_caps;
+	srq->srq_base = info->srq;
+	srq->shadow_area = info->shadow_area;
+	srq->srq_id = info->srq_id;
+	srq->srwqe_polarity = 0;
+	srq->srq_size = info->srq_size;
+	srq->wqe_size = rqshift;
+	srq->max_srq_frag_cnt = min(srq->uk_attrs->max_hw_wq_frags,
+				    ((u32)2 << rqshift) - 1);
+	IRDMA_RING_INIT(srq->srq_ring, srq->srq_size);
+	srq->wqe_size_multiplier = 1 << rqshift;
+	srq->wqe_ops = iw_wqe_uk_ops;
+
+	return 0;
+}
+
 /**
  * irdma_uk_calc_shift_wq - calculate WQE shift for both SQ and RQ
  * @ukinfo: qp initialization info
@@ -1461,6 +1612,7 @@ int irdma_uk_qp_init(struct irdma_qp_uk *qp, struct irdma_qp_uk_init_info *info)
 		qp->wqe_ops = iw_wqe_uk_ops_gen_1;
 	else
 		qp->wqe_ops = iw_wqe_uk_ops;
+	qp->srq_uk = info->srq_uk;
 	return ret_code;
 }
 
diff --git a/drivers/infiniband/hw/irdma/user.h b/drivers/infiniband/hw/irdma/user.h
index 5f489feda32c..cf324f1c539e 100644
--- a/drivers/infiniband/hw/irdma/user.h
+++ b/drivers/infiniband/hw/irdma/user.h
@@ -60,6 +60,7 @@ enum irdma_device_caps_const {
 	IRDMA_GATHER_STATS_BUF_SIZE =		1024,
 	IRDMA_MIN_IW_QP_ID =			0,
 	IRDMA_MAX_IW_QP_ID =			262143,
+	IRDMA_MIN_IW_SRQ_ID =			0,
 	IRDMA_MIN_CEQID =			0,
 	IRDMA_MAX_CEQID =			1023,
 	IRDMA_CEQ_MAX_COUNT =			IRDMA_MAX_CEQID + 1,
@@ -148,6 +149,8 @@ enum irdma_qp_caps {
 	IRDMA_PUSH_MODE      = 8,
 };
 
+struct irdma_srq_uk;
+struct irdma_srq_uk_init_info;
 struct irdma_qp_uk;
 struct irdma_cq_uk;
 struct irdma_qp_uk_init_info;
@@ -301,6 +304,39 @@ int irdma_uk_calc_depth_shift_sq(struct irdma_qp_uk_init_info *ukinfo,
 				 u32 *sq_depth, u8 *sq_shift);
 int irdma_uk_calc_depth_shift_rq(struct irdma_qp_uk_init_info *ukinfo,
 				 u32 *rq_depth, u8 *rq_shift);
+int irdma_uk_srq_init(struct irdma_srq_uk *srq,
+		      struct irdma_srq_uk_init_info *info);
+int irdma_uk_srq_post_receive(struct irdma_srq_uk *srq,
+			      struct irdma_post_rq_info *info);
+
+struct irdma_srq_uk {
+	u32 srq_caps;
+	struct irdma_qp_quanta *srq_base;
+	struct irdma_uk_attrs *uk_attrs;
+	__le64 *shadow_area;
+	struct irdma_ring srq_ring;
+	struct irdma_ring initial_ring;
+	u32 srq_id;
+	u32 srq_size;
+	u32 max_srq_frag_cnt;
+	struct irdma_wqe_uk_ops wqe_ops;
+	u8 srwqe_polarity;
+	u8 wqe_size;
+	u8 wqe_size_multiplier;
+	u8 deferred_flag;
+};
+
+struct irdma_srq_uk_init_info {
+	struct irdma_qp_quanta *srq;
+	struct irdma_uk_attrs *uk_attrs;
+	__le64 *shadow_area;
+	u64 *srq_wrid_array;
+	u32 srq_id;
+	u32 srq_caps;
+	u32 srq_size;
+	u32 max_srq_frag_cnt;
+};
+
 struct irdma_sq_uk_wr_trk_info {
 	u64 wrid;
 	u32 wr_len;
@@ -345,6 +381,7 @@ struct irdma_qp_uk {
 	bool destroy_pending:1; /* Indicates the QP is being destroyed */
 	void *back_qp;
 	u8 dbg_rq_flushed;
+	struct irdma_srq_uk *srq_uk;
 	u8 sq_flush_seen;
 	u8 rq_flush_seen;
 };
@@ -384,6 +421,7 @@ struct irdma_qp_uk_init_info {
 	u8 rq_shift;
 	int abi_ver;
 	bool legacy_mode;
+	struct irdma_srq_uk *srq_uk;
 };
 
 struct irdma_cq_uk_init_info {
@@ -399,6 +437,7 @@ struct irdma_cq_uk_init_info {
 __le64 *irdma_qp_get_next_send_wqe(struct irdma_qp_uk *qp, u32 *wqe_idx,
 				   u16 quanta, u32 total_size,
 				   struct irdma_post_sq_info *info);
+__le64 *irdma_srq_get_next_recv_wqe(struct irdma_srq_uk *srq, u32 *wqe_idx);
 __le64 *irdma_qp_get_next_recv_wqe(struct irdma_qp_uk *qp, u32 *wqe_idx);
 void irdma_uk_clean_cq(void *q, struct irdma_cq_uk *cq);
 int irdma_nop(struct irdma_qp_uk *qp, u64 wr_id, bool signaled, bool post_sq);
@@ -410,5 +449,7 @@ int irdma_get_sqdepth(struct irdma_uk_attrs *uk_attrs, u32 sq_size, u8 shift,
 		      u32 *wqdepth);
 int irdma_get_rqdepth(struct irdma_uk_attrs *uk_attrs, u32 rq_size, u8 shift,
 		      u32 *wqdepth);
+int irdma_get_srqdepth(struct irdma_uk_attrs *uk_attrs, u32 srq_size, u8 shift,
+		       u32 *srqdepth);
 void irdma_clr_wqes(struct irdma_qp_uk *qp, u32 qp_wqe_idx);
 #endif /* IRDMA_USER_H */
diff --git a/drivers/infiniband/hw/irdma/utils.c b/drivers/infiniband/hw/irdma/utils.c
index 60ef85e842d1..552a4cf2c51b 100644
--- a/drivers/infiniband/hw/irdma/utils.c
+++ b/drivers/infiniband/hw/irdma/utils.c
@@ -697,6 +697,9 @@ static const char *const irdma_cqp_cmd_names[IRDMA_MAX_CQP_OPS] = {
 	[IRDMA_OP_ADD_LOCAL_MAC_ENTRY] = "Add Local MAC Entry Cmd",
 	[IRDMA_OP_DELETE_LOCAL_MAC_ENTRY] = "Delete Local MAC Entry Cmd",
 	[IRDMA_OP_CQ_MODIFY] = "CQ Modify Cmd",
+	[IRDMA_OP_SRQ_CREATE] = "Create SRQ Cmd",
+	[IRDMA_OP_SRQ_MODIFY] = "Modify SRQ Cmd",
+	[IRDMA_OP_SRQ_DESTROY] = "Destroy SRQ Cmd",
 };
 
 static const struct irdma_cqp_err_info irdma_noncrit_err_list[] = {
@@ -1167,6 +1170,30 @@ void irdma_free_qp_rsrc(struct irdma_qp *iwqp)
 	kfree(iwqp->kqp.rq_wrid_mem);
 }
 
+/**
+ * irdma_srq_wq_destroy - send srq destroy cqp
+ * @rf: RDMA PCI function
+ * @srq: hardware control srq
+ */
+void irdma_srq_wq_destroy(struct irdma_pci_f *rf, struct irdma_sc_srq *srq)
+{
+	struct irdma_cqp_request *cqp_request;
+	struct cqp_cmds_info *cqp_info;
+
+	cqp_request = irdma_alloc_and_get_cqp_request(&rf->cqp, true);
+	if (!cqp_request)
+		return;
+
+	cqp_info = &cqp_request->info;
+	cqp_info->cqp_cmd = IRDMA_OP_SRQ_DESTROY;
+	cqp_info->post_sq = 1;
+	cqp_info->in.u.srq_destroy.srq = srq;
+	cqp_info->in.u.srq_destroy.scratch = (uintptr_t)cqp_request;
+
+	irdma_handle_cqp_op(rf, cqp_request);
+	irdma_put_cqp_request(&rf->cqp, cqp_request);
+}
+
 /**
  * irdma_cq_wq_destroy - send cq destroy cqp
  * @rf: RDMA PCI function
diff --git a/drivers/infiniband/hw/irdma/verbs.c b/drivers/infiniband/hw/irdma/verbs.c
index 82a7cec25b52..4ab81bf60543 100644
--- a/drivers/infiniband/hw/irdma/verbs.c
+++ b/drivers/infiniband/hw/irdma/verbs.c
@@ -59,6 +59,9 @@ static int irdma_query_device(struct ib_device *ibdev,
 #define HCA_CLOCK_TIMESTAMP_MASK 0x1ffff
 	if (hw_attrs->uk_attrs.hw_rev >= IRDMA_GEN_2)
 		props->timestamp_mask = HCA_CLOCK_TIMESTAMP_MASK;
+	props->max_srq = rf->max_srq - rf->used_srqs;
+	props->max_srq_wr = IRDMA_MAX_SRQ_WRS;
+	props->max_srq_sge = hw_attrs->uk_attrs.max_hw_wq_frags;
 
 	return 0;
 }
@@ -336,6 +339,8 @@ static int irdma_alloc_ucontext(struct ib_ucontext *uctx,
 		uresp.comp_mask |= IRDMA_ALLOC_UCTX_USE_RAW_ATTR;
 		uresp.min_hw_wq_size = uk_attrs->min_hw_wq_size;
 		uresp.comp_mask |= IRDMA_ALLOC_UCTX_MIN_HW_WQ_SIZE;
+		uresp.max_hw_srq_quanta = uk_attrs->max_hw_srq_quanta;
+		uresp.comp_mask |= IRDMA_ALLOC_UCTX_MAX_HW_SRQ_QUANTA;
 		if (ib_copy_to_udata(udata, &uresp,
 				     min(sizeof(uresp), udata->outlen))) {
 			rdma_user_mmap_entry_remove(ucontext->db_mmap_entry);
@@ -347,6 +352,8 @@ static int irdma_alloc_ucontext(struct ib_ucontext *uctx,
 	spin_lock_init(&ucontext->cq_reg_mem_list_lock);
 	INIT_LIST_HEAD(&ucontext->qp_reg_mem_list);
 	spin_lock_init(&ucontext->qp_reg_mem_list_lock);
+	INIT_LIST_HEAD(&ucontext->srq_reg_mem_list);
+	spin_lock_init(&ucontext->srq_reg_mem_list_lock);
 
 	return 0;
 
@@ -571,7 +578,11 @@ static void irdma_setup_virt_qp(struct irdma_device *iwdev,
 	if (iwpbl->pbl_allocated) {
 		init_info->virtual_map = true;
 		init_info->sq_pa = qpmr->sq_pbl.idx;
-		init_info->rq_pa = qpmr->rq_pbl.idx;
+		/* Need to use contiguous buffer for RQ of QP
+		 * in case it is associated with SRQ.
+		 */
+		init_info->rq_pa = init_info->qp_uk_init_info.srq_uk ?
+			qpmr->rq_pa : qpmr->rq_pbl.idx;
 	} else {
 		init_info->sq_pa = qpmr->sq_pbl.addr;
 		init_info->rq_pa = qpmr->rq_pbl.addr;
@@ -940,6 +951,18 @@ static int irdma_create_qp(struct ib_qp *ibqp,
 	struct irdma_uk_attrs *uk_attrs = &dev->hw_attrs.uk_attrs;
 	struct irdma_qp_init_info init_info = {};
 	struct irdma_qp_host_ctx_info *ctx_info;
+	struct irdma_srq *iwsrq;
+	bool srq_valid = false;
+	u32 srq_id = 0;
+
+	if (init_attr->srq) {
+		iwsrq = to_iwsrq(init_attr->srq);
+		srq_valid = true;
+		srq_id = iwsrq->srq_num;
+		init_attr->cap.max_recv_sge = uk_attrs->max_hw_wq_frags;
+		init_attr->cap.max_recv_wr = 4;
+		init_info.qp_uk_init_info.srq_uk = &iwsrq->sc_srq.srq_uk;
+	}
 
 	err_code = irdma_validate_qp_attrs(init_attr, iwdev);
 	if (err_code)
@@ -1046,6 +1069,8 @@ static int irdma_create_qp(struct ib_qp *ibqp,
 	}
 
 	ctx_info = &iwqp->ctx_info;
+	ctx_info->srq_valid = srq_valid;
+	ctx_info->srq_id = srq_id;
 	ctx_info->send_cq_num = iwqp->iwscq->sc_cq.cq_uk.cq_id;
 	ctx_info->rcv_cq_num = iwqp->iwrcq->sc_cq.cq_uk.cq_id;
 
@@ -1171,6 +1196,7 @@ static int irdma_query_qp(struct ib_qp *ibqp, struct ib_qp_attr *attr,
 	init_attr->qp_context = iwqp->ibqp.qp_context;
 	init_attr->send_cq = iwqp->ibqp.send_cq;
 	init_attr->recv_cq = iwqp->ibqp.recv_cq;
+	init_attr->srq = iwqp->ibqp.srq;
 	init_attr->cap = attr->cap;
 
 	return 0;
@@ -1833,6 +1859,24 @@ int irdma_modify_qp(struct ib_qp *ibqp, struct ib_qp_attr *attr, int attr_mask,
 	return err;
 }
 
+/**
+ * irdma_srq_free_rsrc - free up resources for srq
+ * @rf: RDMA PCI function
+ * @iwsrq: srq ptr
+ */
+static void irdma_srq_free_rsrc(struct irdma_pci_f *rf, struct irdma_srq *iwsrq)
+{
+	struct irdma_sc_srq *srq = &iwsrq->sc_srq;
+
+	if (!iwsrq->user_mode) {
+		dma_free_coherent(rf->sc_dev.hw->device, iwsrq->kmem.size,
+				  iwsrq->kmem.va, iwsrq->kmem.pa);
+		iwsrq->kmem.va = NULL;
+	}
+
+	irdma_free_rsrc(rf, rf->allocated_srqs, srq->srq_uk.srq_id);
+}
+
 /**
  * irdma_cq_free_rsrc - free up resources for cq
  * @rf: RDMA PCI function
@@ -1896,6 +1940,22 @@ static int irdma_process_resize_list(struct irdma_cq *iwcq,
 	return cnt;
 }
 
+/**
+ * irdma_destroy_srq - destroy srq
+ * @ibsrq: srq pointer
+ * @udata: user data
+ */
+static int irdma_destroy_srq(struct ib_srq *ibsrq, struct ib_udata *udata)
+{
+	struct irdma_device *iwdev = to_iwdev(ibsrq->device);
+	struct irdma_srq *iwsrq = to_iwsrq(ibsrq);
+	struct irdma_sc_srq *srq = &iwsrq->sc_srq;
+
+	irdma_srq_wq_destroy(iwdev->rf, srq);
+	irdma_srq_free_rsrc(iwdev->rf, iwsrq);
+	return 0;
+}
+
 /**
  * irdma_destroy_cq - destroy cq
  * @ib_cq: cq pointer
@@ -2084,6 +2144,293 @@ static int irdma_resize_cq(struct ib_cq *ibcq, int entries,
 	return ret;
 }
 
+/**
+ * irdma_srq_event - event notification for srq limit
+ * @srq: shared srq struct
+ */
+void irdma_srq_event(struct irdma_sc_srq *srq)
+{
+	struct irdma_srq *iwsrq = container_of(srq, struct irdma_srq, sc_srq);
+	struct ib_srq *ibsrq = &iwsrq->ibsrq;
+	struct ib_event event;
+
+	srq->srq_limit = 0;
+
+	if (!ibsrq->event_handler)
+		return;
+
+	event.device = ibsrq->device;
+	event.element.port_num = 1;
+	event.element.srq = ibsrq;
+	event.event = IB_EVENT_SRQ_LIMIT_REACHED;
+	ibsrq->event_handler(&event, ibsrq->srq_context);
+}
+
+/**
+ * irdma_modify_srq - modify srq request
+ * @ibsrq: srq's pointer for modify
+ * @attr: access attributes
+ * @attr_mask: state mask
+ * @udata: user data
+ */
+static int irdma_modify_srq(struct ib_srq *ibsrq, struct ib_srq_attr *attr,
+			    enum ib_srq_attr_mask attr_mask,
+			    struct ib_udata *udata)
+{
+	struct irdma_device *iwdev = to_iwdev(ibsrq->device);
+	struct irdma_srq *iwsrq = to_iwsrq(ibsrq);
+	struct irdma_cqp_request *cqp_request;
+	struct irdma_pci_f *rf = iwdev->rf;
+	struct irdma_modify_srq_info *info;
+	struct cqp_cmds_info *cqp_info;
+	int status;
+
+	if (attr_mask & IB_SRQ_MAX_WR)
+		return -EINVAL;
+
+	if (!(attr_mask & IB_SRQ_LIMIT))
+		return 0;
+
+	if (attr->srq_limit > iwsrq->sc_srq.srq_uk.srq_size)
+		return -EINVAL;
+
+	/* Execute this cqp op synchronously, so we can update srq_limit
+	 * upon successful completion.
+	 */
+	cqp_request = irdma_alloc_and_get_cqp_request(&rf->cqp, true);
+	if (!cqp_request)
+		return -ENOMEM;
+
+	cqp_info = &cqp_request->info;
+	info = &cqp_info->in.u.srq_modify.info;
+	info->srq_limit = attr->srq_limit;
+	if (info->srq_limit > 0xFFF)
+		info->srq_limit = 0xFFF;
+	info->arm_limit_event = 1;
+
+	cqp_info->cqp_cmd = IRDMA_OP_SRQ_MODIFY;
+	cqp_info->post_sq = 1;
+	cqp_info->in.u.srq_modify.srq = &iwsrq->sc_srq;
+	cqp_info->in.u.srq_modify.scratch = (uintptr_t)cqp_request;
+	status = irdma_handle_cqp_op(rf, cqp_request);
+	irdma_put_cqp_request(&rf->cqp, cqp_request);
+	if (status)
+		return status;
+
+	iwsrq->sc_srq.srq_limit = info->srq_limit;
+
+	return 0;
+}
+
+static int irdma_setup_umode_srq(struct irdma_device *iwdev,
+				 struct irdma_srq *iwsrq,
+				 struct irdma_srq_init_info *info,
+				 struct ib_udata *udata)
+{
+#define IRDMA_CREATE_SRQ_MIN_REQ_LEN \
+	offsetofend(struct irdma_create_srq_req, user_shadow_area)
+	struct irdma_create_srq_req req = {};
+	struct irdma_ucontext *ucontext;
+	struct irdma_srq_mr *srqmr;
+	struct irdma_pbl *iwpbl;
+	unsigned long flags;
+
+	iwsrq->user_mode = true;
+	ucontext = rdma_udata_to_drv_context(udata, struct irdma_ucontext,
+					     ibucontext);
+
+	if (udata->inlen < IRDMA_CREATE_SRQ_MIN_REQ_LEN)
+		return -EINVAL;
+
+	if (ib_copy_from_udata(&req, udata,
+			       min(sizeof(req), udata->inlen)))
+		return -EFAULT;
+
+	spin_lock_irqsave(&ucontext->srq_reg_mem_list_lock, flags);
+	iwpbl = irdma_get_pbl((unsigned long)req.user_srq_buf,
+			      &ucontext->srq_reg_mem_list);
+	spin_unlock_irqrestore(&ucontext->srq_reg_mem_list_lock, flags);
+	if (!iwpbl)
+		return -EPROTO;
+
+	iwsrq->iwpbl = iwpbl;
+	srqmr = &iwpbl->srq_mr;
+
+	if (iwpbl->pbl_allocated) {
+		info->virtual_map = true;
+		info->pbl_chunk_size = 1;
+		info->first_pm_pbl_idx = srqmr->srq_pbl.idx;
+		info->leaf_pbl_size = 1;
+	} else {
+		info->srq_pa = srqmr->srq_pbl.addr;
+	}
+	info->shadow_area_pa = srqmr->shadow;
+
+	return 0;
+}
+
+static int irdma_setup_kmode_srq(struct irdma_device *iwdev,
+				 struct irdma_srq *iwsrq,
+				 struct irdma_srq_init_info *info, u32 depth,
+				 u8 shift)
+{
+	struct irdma_srq_uk_init_info *ukinfo = &info->srq_uk_init_info;
+	struct irdma_dma_mem *mem = &iwsrq->kmem;
+	u32 size, ring_size;
+
+	ring_size = depth * IRDMA_QP_WQE_MIN_SIZE;
+	size = ring_size + (IRDMA_SHADOW_AREA_SIZE << 3);
+
+	mem->size = ALIGN(size, 256);
+	mem->va = dma_alloc_coherent(iwdev->rf->hw.device, mem->size,
+				     &mem->pa, GFP_KERNEL);
+	if (!mem->va)
+		return -ENOMEM;
+
+	ukinfo->srq = mem->va;
+	ukinfo->srq_size = depth >> shift;
+	ukinfo->shadow_area = mem->va + ring_size;
+
+	info->shadow_area_pa = info->srq_pa + ring_size;
+	info->srq_pa = mem->pa;
+
+	return 0;
+}
+
+/**
+ * irdma_create_srq - create srq
+ * @ibsrq: ib's srq pointer
+ * @initattrs: attributes for srq
+ * @udata: user data for create srq
+ */
+static int irdma_create_srq(struct ib_srq *ibsrq,
+			    struct ib_srq_init_attr *initattrs,
+			    struct ib_udata *udata)
+{
+	struct irdma_device *iwdev = to_iwdev(ibsrq->device);
+	struct ib_srq_attr *attr = &initattrs->attr;
+	struct irdma_pd *iwpd = to_iwpd(ibsrq->pd);
+	struct irdma_srq *iwsrq = to_iwsrq(ibsrq);
+	struct irdma_srq_uk_init_info *ukinfo;
+	struct irdma_cqp_request *cqp_request;
+	struct irdma_srq_init_info info = {};
+	struct irdma_pci_f *rf = iwdev->rf;
+	struct irdma_uk_attrs *uk_attrs;
+	struct cqp_cmds_info *cqp_info;
+	int err_code = 0;
+	u32 depth;
+	u8 shift;
+
+	uk_attrs = &rf->sc_dev.hw_attrs.uk_attrs;
+	ukinfo = &info.srq_uk_init_info;
+
+	if (initattrs->srq_type != IB_SRQT_BASIC)
+		return -EOPNOTSUPP;
+
+	if (!(uk_attrs->feature_flags & IRDMA_FEATURE_SRQ) ||
+	    attr->max_sge > uk_attrs->max_hw_wq_frags)
+		return -EINVAL;
+
+	refcount_set(&iwsrq->refcnt, 1);
+	spin_lock_init(&iwsrq->lock);
+	err_code = irdma_alloc_rsrc(rf, rf->allocated_srqs, rf->max_srq,
+				    &iwsrq->srq_num, &rf->next_srq);
+	if (err_code)
+		return err_code;
+
+	ukinfo->max_srq_frag_cnt = attr->max_sge;
+	ukinfo->uk_attrs = uk_attrs;
+	ukinfo->srq_id = iwsrq->srq_num;
+
+	irdma_get_wqe_shift(ukinfo->uk_attrs, ukinfo->max_srq_frag_cnt, 0,
+			    &shift);
+
+	err_code = irdma_get_srqdepth(ukinfo->uk_attrs, attr->max_wr,
+				      shift, &depth);
+	if (err_code)
+		return err_code;
+
+	/* Actual SRQ size in WRs for ring and HW */
+	ukinfo->srq_size = depth >> shift;
+
+	/* Max postable WRs to SRQ */
+	iwsrq->max_wr = (depth - IRDMA_RQ_RSVD) >> shift;
+	attr->max_wr = iwsrq->max_wr;
+
+	if (udata)
+		err_code = irdma_setup_umode_srq(iwdev, iwsrq, &info, udata);
+	else
+		err_code = irdma_setup_kmode_srq(iwdev, iwsrq, &info, depth,
+						 shift);
+
+	if (err_code)
+		goto free_rsrc;
+
+	info.vsi = &iwdev->vsi;
+	info.pd = &iwpd->sc_pd;
+
+	err_code = irdma_sc_srq_init(&iwsrq->sc_srq, &info);
+	if (err_code)
+		goto free_dmem;
+
+	cqp_request = irdma_alloc_and_get_cqp_request(&rf->cqp, true);
+	if (!cqp_request) {
+		err_code = -ENOMEM;
+		goto free_dmem;
+	}
+
+	cqp_info = &cqp_request->info;
+	cqp_info->cqp_cmd = IRDMA_OP_SRQ_CREATE;
+	cqp_info->post_sq = 1;
+	cqp_info->in.u.srq_create.srq = &iwsrq->sc_srq;
+	cqp_info->in.u.srq_create.scratch = (uintptr_t)cqp_request;
+	err_code = irdma_handle_cqp_op(rf, cqp_request);
+	irdma_put_cqp_request(&rf->cqp, cqp_request);
+	if (err_code)
+		goto free_dmem;
+
+	if (udata) {
+		struct irdma_create_srq_resp resp = {};
+
+		resp.srq_id = iwsrq->srq_num;
+		resp.srq_size = ukinfo->srq_size;
+		if (ib_copy_to_udata(udata, &resp,
+				     min(sizeof(resp), udata->outlen))) {
+			err_code = -EPROTO;
+			goto srq_destroy;
+		}
+	}
+
+	return 0;
+
+srq_destroy:
+	irdma_srq_wq_destroy(rf, &iwsrq->sc_srq);
+
+free_dmem:
+	if (!iwsrq->user_mode)
+		dma_free_coherent(rf->hw.device, iwsrq->kmem.size,
+				  iwsrq->kmem.va, iwsrq->kmem.pa);
+free_rsrc:
+	irdma_free_rsrc(rf, rf->allocated_srqs, iwsrq->srq_num);
+	return err_code;
+}
+
+/**
+ * irdma_query_srq - get SRQ attributes
+ * @ibsrq: the SRQ to query
+ * @attr: the attributes of the SRQ
+ */
+static int irdma_query_srq(struct ib_srq *ibsrq, struct ib_srq_attr *attr)
+{
+	struct irdma_srq *iwsrq = to_iwsrq(ibsrq);
+
+	attr->max_wr = iwsrq->max_wr;
+	attr->max_sge = iwsrq->sc_srq.srq_uk.max_srq_frag_cnt;
+	attr->srq_limit = iwsrq->sc_srq.srq_limit;
+
+	return 0;
+}
+
 static inline int cq_validate_flags(u32 flags, u8 hw_rev)
 {
 	/* GEN1 does not support CQ create flags */
@@ -2536,6 +2883,7 @@ static int irdma_handle_q_mem(struct irdma_device *iwdev,
 	struct irdma_mr *iwmr = iwpbl->iwmr;
 	struct irdma_qp_mr *qpmr = &iwpbl->qp_mr;
 	struct irdma_cq_mr *cqmr = &iwpbl->cq_mr;
+	struct irdma_srq_mr *srqmr = &iwpbl->srq_mr;
 	struct irdma_hmc_pble *hmc_p;
 	u64 *arr = iwmr->pgaddrmem;
 	u32 pg_size, total;
@@ -2555,7 +2903,10 @@ static int irdma_handle_q_mem(struct irdma_device *iwdev,
 		total = req->sq_pages + req->rq_pages;
 		hmc_p = &qpmr->sq_pbl;
 		qpmr->shadow = (dma_addr_t)arr[total];
-
+		/* Need to use physical address for RQ of QP
+		 * in case it is associated with SRQ.
+		 */
+		qpmr->rq_pa = (dma_addr_t)arr[req->sq_pages];
 		if (lvl) {
 			ret = irdma_check_mem_contiguous(arr, req->sq_pages,
 							 pg_size);
@@ -2575,6 +2926,18 @@ static int irdma_handle_q_mem(struct irdma_device *iwdev,
 			hmc_p->addr = arr[req->sq_pages];
 		}
 		break;
+	case IRDMA_MEMREG_TYPE_SRQ:
+		hmc_p = &srqmr->srq_pbl;
+		srqmr->shadow = (dma_addr_t)arr[req->rq_pages];
+		if (lvl)
+			ret = irdma_check_mem_contiguous(arr, req->rq_pages,
+							 pg_size);
+
+		if (!ret)
+			hmc_p->idx = palloc->level1.idx;
+		else
+			hmc_p->addr = arr[0];
+	break;
 	case IRDMA_MEMREG_TYPE_CQ:
 		hmc_p = &cqmr->cq_pbl;
 
@@ -3045,6 +3408,37 @@ static int irdma_reg_user_mr_type_qp(struct irdma_mem_reg_req req,
 	return 0;
 }
 
+static int irdma_reg_user_mr_type_srq(struct irdma_mem_reg_req req,
+				      struct ib_udata *udata,
+				      struct irdma_mr *iwmr)
+{
+	struct irdma_device *iwdev = to_iwdev(iwmr->ibmr.device);
+	struct irdma_pbl *iwpbl = &iwmr->iwpbl;
+	struct irdma_ucontext *ucontext;
+	unsigned long flags;
+	u32 total;
+	int err;
+	u8 lvl;
+
+	total = req.rq_pages + IRDMA_SHADOW_PGCNT;
+	if (total > iwmr->page_cnt)
+		return -EINVAL;
+
+	lvl = req.rq_pages > 1 ? PBLE_LEVEL_1 : PBLE_LEVEL_0;
+	err = irdma_handle_q_mem(iwdev, &req, iwpbl, lvl);
+	if (err)
+		return err;
+
+	ucontext = rdma_udata_to_drv_context(udata, struct irdma_ucontext,
+					     ibucontext);
+	spin_lock_irqsave(&ucontext->srq_reg_mem_list_lock, flags);
+	list_add_tail(&iwpbl->list, &ucontext->srq_reg_mem_list);
+	iwpbl->on_list = true;
+	spin_unlock_irqrestore(&ucontext->srq_reg_mem_list_lock, flags);
+
+	return 0;
+}
+
 static int irdma_reg_user_mr_type_cq(struct irdma_mem_reg_req req,
 				     struct ib_udata *udata,
 				     struct irdma_mr *iwmr)
@@ -3130,6 +3524,12 @@ static struct ib_mr *irdma_reg_user_mr(struct ib_pd *pd, u64 start, u64 len,
 		if (err)
 			goto error;
 
+		break;
+	case IRDMA_MEMREG_TYPE_SRQ:
+		err = irdma_reg_user_mr_type_srq(req, udata, iwmr);
+		if (err)
+			goto error;
+
 		break;
 	case IRDMA_MEMREG_TYPE_CQ:
 		err = irdma_reg_user_mr_type_cq(req, udata, iwmr);
@@ -3446,6 +3846,14 @@ static void irdma_del_memlist(struct irdma_mr *iwmr,
 		}
 		spin_unlock_irqrestore(&ucontext->qp_reg_mem_list_lock, flags);
 		break;
+	case IRDMA_MEMREG_TYPE_SRQ:
+		spin_lock_irqsave(&ucontext->srq_reg_mem_list_lock, flags);
+		if (iwpbl->on_list) {
+			iwpbl->on_list = false;
+			list_del(&iwpbl->list);
+		}
+		spin_unlock_irqrestore(&ucontext->srq_reg_mem_list_lock, flags);
+		break;
 	default:
 		break;
 	}
@@ -3664,6 +4072,47 @@ static int irdma_post_send(struct ib_qp *ibqp,
 	return err;
 }
 
+/**
+ * irdma_post_srq_recv - post receive wr for kernel application
+ * @ibsrq: ib srq pointer
+ * @ib_wr: work request for receive
+ * @bad_wr: bad wr caused an error
+ */
+static int irdma_post_srq_recv(struct ib_srq *ibsrq,
+			       const struct ib_recv_wr *ib_wr,
+			       const struct ib_recv_wr **bad_wr)
+{
+	struct irdma_srq *iwsrq = to_iwsrq(ibsrq);
+	struct irdma_srq_uk *uksrq = &iwsrq->sc_srq.srq_uk;
+	struct irdma_post_rq_info post_recv = {};
+	unsigned long flags;
+	int err = 0;
+
+	spin_lock_irqsave(&iwsrq->lock, flags);
+	while (ib_wr) {
+		if (ib_wr->num_sge > uksrq->max_srq_frag_cnt) {
+			err = -EINVAL;
+			goto out;
+		}
+		post_recv.num_sges = ib_wr->num_sge;
+		post_recv.wr_id = ib_wr->wr_id;
+		post_recv.sg_list = ib_wr->sg_list;
+		err = irdma_uk_srq_post_receive(uksrq, &post_recv);
+		if (err)
+			goto out;
+
+		ib_wr = ib_wr->next;
+	}
+
+out:
+	spin_unlock_irqrestore(&iwsrq->lock, flags);
+
+	if (err)
+		*bad_wr = ib_wr;
+
+	return err;
+}
+
 /**
  * irdma_post_recv - post receive wr for kernel application
  * @ibqp: ib qp pointer
@@ -3683,6 +4132,11 @@ static int irdma_post_recv(struct ib_qp *ibqp,
 	iwqp = to_iwqp(ibqp);
 	ukqp = &iwqp->sc_qp.qp_uk;
 
+	if (ukqp->srq_uk) {
+		*bad_wr = ib_wr;
+		return -EINVAL;
+	}
+
 	spin_lock_irqsave(&iwqp->lock, flags);
 	while (ib_wr) {
 		post_recv.num_sges = ib_wr->num_sge;
@@ -4771,6 +5225,18 @@ static enum rdma_link_layer irdma_get_link_layer(struct ib_device *ibdev,
 	return IB_LINK_LAYER_ETHERNET;
 }
 
+static const struct ib_device_ops irdma_gen1_dev_ops = {
+	.dealloc_driver = irdma_ib_dealloc_device,
+};
+
+static const struct ib_device_ops irdma_gen3_dev_ops = {
+	.create_srq = irdma_create_srq,
+	.destroy_srq = irdma_destroy_srq,
+	.modify_srq = irdma_modify_srq,
+	.post_srq_recv = irdma_post_srq_recv,
+	.query_srq = irdma_query_srq,
+};
+
 static const struct ib_device_ops irdma_roce_dev_ops = {
 	.attach_mcast = irdma_attach_mcast,
 	.create_ah = irdma_create_ah,
@@ -4841,6 +5307,7 @@ static const struct ib_device_ops irdma_dev_ops = {
 	INIT_RDMA_OBJ_SIZE(ib_cq, irdma_cq, ibcq),
 	INIT_RDMA_OBJ_SIZE(ib_mw, irdma_mr, ibmw),
 	INIT_RDMA_OBJ_SIZE(ib_qp, irdma_qp, ibqp),
+	INIT_RDMA_OBJ_SIZE(ib_srq, irdma_srq, ibsrq),
 };
 
 /**
@@ -4888,6 +5355,10 @@ static void irdma_init_rdma_device(struct irdma_device *iwdev)
 	iwdev->ibdev.num_comp_vectors = iwdev->rf->ceqs_count;
 	iwdev->ibdev.dev.parent = &pcidev->dev;
 	ib_set_device_ops(&iwdev->ibdev, &irdma_dev_ops);
+	if (iwdev->rf->rdma_ver == IRDMA_GEN_1)
+		ib_set_device_ops(&iwdev->ibdev, &irdma_gen1_dev_ops);
+	if (iwdev->rf->rdma_ver >= IRDMA_GEN_3)
+		ib_set_device_ops(&iwdev->ibdev, &irdma_gen3_dev_ops);
 }
 
 /**
diff --git a/drivers/infiniband/hw/irdma/verbs.h b/drivers/infiniband/hw/irdma/verbs.h
index fcb163c45252..2817122ba989 100644
--- a/drivers/infiniband/hw/irdma/verbs.h
+++ b/drivers/infiniband/hw/irdma/verbs.h
@@ -8,6 +8,7 @@
 
 #define IRDMA_PKEY_TBL_SZ		1
 #define IRDMA_DEFAULT_PKEY		0xFFFF
+#define IRDMA_SHADOW_PGCNT		1
 
 struct irdma_ucontext {
 	struct ib_ucontext ibucontext;
@@ -17,6 +18,8 @@ struct irdma_ucontext {
 	spinlock_t cq_reg_mem_list_lock; /* protect CQ memory list */
 	struct list_head qp_reg_mem_list;
 	spinlock_t qp_reg_mem_list_lock; /* protect QP memory list */
+	struct list_head srq_reg_mem_list;
+	spinlock_t srq_reg_mem_list_lock; /* protect SRQ memory list */
 	int abi_ver;
 	u8 legacy_mode : 1;
 	u8 use_raw_attrs : 1;
@@ -65,10 +68,16 @@ struct irdma_cq_mr {
 	bool split;
 };
 
+struct irdma_srq_mr {
+	struct irdma_hmc_pble srq_pbl;
+	dma_addr_t shadow;
+};
+
 struct irdma_qp_mr {
 	struct irdma_hmc_pble sq_pbl;
 	struct irdma_hmc_pble rq_pbl;
 	dma_addr_t shadow;
+	dma_addr_t rq_pa;
 	struct page *sq_page;
 };
 
@@ -85,6 +94,7 @@ struct irdma_pbl {
 	union {
 		struct irdma_qp_mr qp_mr;
 		struct irdma_cq_mr cq_mr;
+		struct irdma_srq_mr srq_mr;
 	};
 
 	bool pbl_allocated:1;
@@ -112,6 +122,21 @@ struct irdma_mr {
 	struct irdma_pbl iwpbl;
 };
 
+struct irdma_srq {
+	struct ib_srq ibsrq;
+	struct irdma_sc_srq sc_srq __aligned(64);
+	struct irdma_dma_mem kmem;
+	u64 *srq_wrid_mem;
+	refcount_t refcnt;
+	spinlock_t lock; /* for poll srq */
+	struct irdma_pbl *iwpbl;
+	struct irdma_sge *sg_list;
+	u16 srq_head;
+	u32 srq_num;
+	u32 max_wr;
+	bool user_mode:1;
+};
+
 struct irdma_cq {
 	struct ib_cq ibcq;
 	struct irdma_sc_cq sc_cq;
diff --git a/include/uapi/rdma/irdma-abi.h b/include/uapi/rdma/irdma-abi.h
index 4e42054cca33..f7788d33376b 100644
--- a/include/uapi/rdma/irdma-abi.h
+++ b/include/uapi/rdma/irdma-abi.h
@@ -20,11 +20,13 @@ enum irdma_memreg_type {
 	IRDMA_MEMREG_TYPE_MEM  = 0,
 	IRDMA_MEMREG_TYPE_QP   = 1,
 	IRDMA_MEMREG_TYPE_CQ   = 2,
+	IRDMA_MEMREG_TYPE_SRQ  = 3,
 };
 
 enum {
 	IRDMA_ALLOC_UCTX_USE_RAW_ATTR = 1 << 0,
 	IRDMA_ALLOC_UCTX_MIN_HW_WQ_SIZE = 1 << 1,
+	IRDMA_ALLOC_UCTX_MAX_HW_SRQ_QUANTA = 1 << 2,
 	IRDMA_SUPPORT_WQE_FORMAT_V2 = 1 << 3,
 };
 
@@ -55,7 +57,8 @@ struct irdma_alloc_ucontext_resp {
 	__u8 rsvd2;
 	__aligned_u64 comp_mask;
 	__u16 min_hw_wq_size;
-	__u8 rsvd3[6];
+	__u32 max_hw_srq_quanta;
+	__u8 rsvd3[2];
 };
 
 struct irdma_alloc_pd_resp {
@@ -72,6 +75,16 @@ struct irdma_create_cq_req {
 	__aligned_u64 user_shadow_area;
 };
 
+struct irdma_create_srq_req {
+	__aligned_u64 user_srq_buf;
+	__aligned_u64 user_shadow_area;
+};
+
+struct irdma_create_srq_resp {
+	__u32 srq_id;
+	__u32 srq_size;
+};
+
 struct irdma_create_qp_req {
 	__aligned_u64 user_wqe_bufs;
 	__aligned_u64 user_compl_ctx;
-- 
2.37.3

