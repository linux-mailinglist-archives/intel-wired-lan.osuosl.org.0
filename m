Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB22A2CE9D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 22:01:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ED7B884A70;
	Fri,  7 Feb 2025 21:01:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n0GEkX8bAeDc; Fri,  7 Feb 2025 21:01:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 551BE84A60
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738962097;
	bh=CaeQfA2UpyBv/XnRqebeivGNM7qk4j+7vefV8sMSCnI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=K/UTWZuV3Xxr8fMVTKedolcxtASpfV5MfHaMEWNuWPfaK7X8kvpujqFCaJ16ZhVkG
	 o3WuxBNQE5JeZdMxhsRF7o+f7wyqd7BdXI7KwlaqnGmgx8VTCNJfSUskFgJ1V5YBe4
	 V2D8vmNwlRj4EdgBC0+GdI04MHyK6pMEHxzPIFzlsG1eORLmY34JGWUZ49Yb2Q4bgq
	 RSyqWvO3n3lNMFbZeUz1guN2ZKwbGHiXE9FwGK/fgI+2/T6c42FuoIXfwhSqKiL2gc
	 090WcOefti1TSQ5AHe5jtKcXjgWVN/rS3apbnJHNBhHHMjL+Vzv5oaqcOAAeaPs4Sl
	 sYp9xPKs4o64g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 551BE84A60;
	Fri,  7 Feb 2025 21:01:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 205C91B5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E65C0812D1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xLGoHn48JhgQ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 19:50:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=tatyana.e.nikolova@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org ABCB881065
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ABCB881065
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ABCB881065
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:30 +0000 (UTC)
X-CSE-ConnectionGUID: F7He0MzgR2OZxCuVDCcaBA==
X-CSE-MsgGUID: wyo4kjcBQKyluNqqX37P9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="42451821"
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="42451821"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 11:50:30 -0800
X-CSE-ConnectionGUID: lIvnLzLKRAiEOmBKhuIPvg==
X-CSE-MsgGUID: PDw/leGfTe2XJJnJmVLnTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="112238210"
Received: from tenikolo-mobl1.amr.corp.intel.com ([10.124.81.134])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 11:50:30 -0800
From: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
To: jgg@nvidia.com,
	leon@kernel.org,
	intel-wired-lan@lists.osuosl.org
Cc: linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 Shiraz Saleem <shiraz.saleem@intel.com>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>
Date: Fri,  7 Feb 2025 13:49:22 -0600
Message-Id: <20250207194931.1569-16-tatyana.e.nikolova@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20250207194931.1569-1-tatyana.e.nikolova@intel.com>
References: <20250207194931.1569-1-tatyana.e.nikolova@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 07 Feb 2025 21:01:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738957831; x=1770493831;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xppOYkyx2KNBkJ04dt1uWfYS7ysZaq1+epyJ1FKtVeM=;
 b=R+H7A0l6VNKolQCTF16eHNi+TUW0AgLqqdWm7Lk5TtWYUK1TytuDImvH
 /B1CipRDEgmQSfBkH/TtuM4gG4/XL0UGuxDQmjl03ww+Ik9DhJmmICxaf
 gJ7MlEUkpPCTEtjurF+vQXzxP7mq30mkMVcxMD+wRcRydR5GzEeSlzHLb
 n5kL/UVBokf9os3tVnj0tjfVnPyfzjbWHYiyIeYycY3+UCUVwyVLxG9Ux
 uX0U4+rNT3pS0hWLzLrtM0x+CRulmkjPwAIEnz43tcyLHmXUT/4s5lp+V
 T4nuiCpMz4mEB7JYR6XDDTWTGEp159eXBtFGhcP0A74DmYiXn01pC3Z8B
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=R+H7A0l6
Subject: [Intel-wired-lan] [rdma v3 15/24] RDMA/irdma: Add GEN3 virtual QP1
 support
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

Add a new RDMA virtual channel op during QP1 creation that allow the
Control Plane (CP) to virtualize a regular QP as QP1 on non-default
RDMA capable vPorts. Additionally, the CP will return the Qsets to use
on the ib_device of the vPort.

Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
Signed-off-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
---
 drivers/infiniband/hw/irdma/ctrl.c     | 10 ++-
 drivers/infiniband/hw/irdma/main.h     |  1 +
 drivers/infiniband/hw/irdma/utils.c    | 30 ++++++++-
 drivers/infiniband/hw/irdma/verbs.c    | 84 ++++++++++++++++++++------
 drivers/infiniband/hw/irdma/virtchnl.c | 52 ++++++++++++++++
 drivers/infiniband/hw/irdma/virtchnl.h | 19 ++++++
 6 files changed, 174 insertions(+), 22 deletions(-)

diff --git a/drivers/infiniband/hw/irdma/ctrl.c b/drivers/infiniband/hw/irdma/ctrl.c
index 8fd2882f75af..7d2ae701b8f5 100644
--- a/drivers/infiniband/hw/irdma/ctrl.c
+++ b/drivers/infiniband/hw/irdma/ctrl.c
@@ -74,6 +74,14 @@ static void irdma_set_qos_info(struct irdma_sc_vsi  *vsi,
 {
 	u8 i;
 
+	if (vsi->dev->hw_attrs.uk_attrs.hw_rev >= IRDMA_GEN_3) {
+		for (i = 0; i < IRDMA_MAX_USER_PRIORITY; i++) {
+			vsi->qos[i].qs_handle = vsi->dev->qos[i].qs_handle;
+			vsi->qos[i].valid = true;
+		}
+
+		return;
+	}
 	vsi->qos_rel_bw = l2p->vsi_rel_bw;
 	vsi->qos_prio_type = l2p->vsi_prio_type;
 	vsi->dscp_mode = l2p->dscp_mode;
@@ -1877,7 +1885,7 @@ void irdma_sc_vsi_init(struct irdma_sc_vsi  *vsi,
 		mutex_init(&vsi->qos[i].qos_mutex);
 		INIT_LIST_HEAD(&vsi->qos[i].qplist);
 	}
-	if (vsi->register_qset) {
+	if (vsi->dev->hw_attrs.uk_attrs.hw_rev == IRDMA_GEN_2) {
 		vsi->dev->ws_add = irdma_ws_add;
 		vsi->dev->ws_remove = irdma_ws_remove;
 		vsi->dev->ws_reset = irdma_ws_reset;
diff --git a/drivers/infiniband/hw/irdma/main.h b/drivers/infiniband/hw/irdma/main.h
index 1dab2ffba5e5..f0196aafe59b 100644
--- a/drivers/infiniband/hw/irdma/main.h
+++ b/drivers/infiniband/hw/irdma/main.h
@@ -260,6 +260,7 @@ struct irdma_pci_f {
 	bool reset:1;
 	bool rsrc_created:1;
 	bool msix_shared:1;
+	bool hwqp1_rsvd:1;
 	u8 rsrc_profile;
 	u8 *hmc_info_mem;
 	u8 *mem_rsrc;
diff --git a/drivers/infiniband/hw/irdma/utils.c b/drivers/infiniband/hw/irdma/utils.c
index 8ab8af02abc9..87c88be47ee3 100644
--- a/drivers/infiniband/hw/irdma/utils.c
+++ b/drivers/infiniband/hw/irdma/utils.c
@@ -1113,6 +1113,26 @@ static void irdma_dealloc_push_page(struct irdma_pci_f *rf,
 	irdma_put_cqp_request(&rf->cqp, cqp_request);
 }
 
+static void irdma_free_gsi_qp_rsrc(struct irdma_qp *iwqp, u32 qp_num)
+{
+	struct irdma_device *iwdev = iwqp->iwdev;
+	struct irdma_pci_f *rf = iwdev->rf;
+	unsigned long flags;
+
+	if (rf->sc_dev.hw_attrs.uk_attrs.hw_rev < IRDMA_GEN_3)
+		return;
+
+	irdma_vchnl_req_del_vport(&rf->sc_dev, iwdev->vport_id, qp_num);
+
+	if (qp_num == 1) {
+		spin_lock_irqsave(&rf->rsrc_lock, flags);
+		rf->hwqp1_rsvd = false;
+		spin_unlock_irqrestore(&rf->rsrc_lock, flags);
+	} else if (qp_num > 2) {
+		irdma_free_rsrc(rf, rf->allocated_qps, qp_num);
+	}
+}
+
 /**
  * irdma_free_qp_rsrc - free up memory resources for qp
  * @iwqp: qp ptr (user or kernel)
@@ -1121,7 +1141,7 @@ void irdma_free_qp_rsrc(struct irdma_qp *iwqp)
 {
 	struct irdma_device *iwdev = iwqp->iwdev;
 	struct irdma_pci_f *rf = iwdev->rf;
-	u32 qp_num = iwqp->ibqp.qp_num;
+	u32 qp_num = iwqp->sc_qp.qp_uk.qp_id;
 
 	irdma_ieq_cleanup_qp(iwdev->vsi.ieq, &iwqp->sc_qp);
 	irdma_dealloc_push_page(rf, &iwqp->sc_qp);
@@ -1131,8 +1151,12 @@ void irdma_free_qp_rsrc(struct irdma_qp *iwqp)
 					   iwqp->sc_qp.user_pri);
 	}
 
-	if (qp_num > 2)
-		irdma_free_rsrc(rf, rf->allocated_qps, qp_num);
+	if (iwqp->ibqp.qp_type == IB_QPT_GSI) {
+		irdma_free_gsi_qp_rsrc(iwqp, qp_num);
+	} else {
+		if (qp_num > 2)
+			irdma_free_rsrc(rf, rf->allocated_qps, qp_num);
+	}
 	dma_free_coherent(rf->sc_dev.hw->device, iwqp->q2_ctx_mem.size,
 			  iwqp->q2_ctx_mem.va, iwqp->q2_ctx_mem.pa);
 	iwqp->q2_ctx_mem.va = NULL;
diff --git a/drivers/infiniband/hw/irdma/verbs.c b/drivers/infiniband/hw/irdma/verbs.c
index 2535e0f59ceb..cf5a5d28fe53 100644
--- a/drivers/infiniband/hw/irdma/verbs.c
+++ b/drivers/infiniband/hw/irdma/verbs.c
@@ -545,6 +545,9 @@ static int irdma_destroy_qp(struct ib_qp *ibqp, struct ib_udata *udata)
 	irdma_cqp_qp_destroy_cmd(&iwdev->rf->sc_dev, &iwqp->sc_qp);
 
 	irdma_remove_push_mmap_entries(iwqp);
+
+	if (iwqp->sc_qp.qp_uk.qp_id == 1)
+		iwdev->rf->hwqp1_rsvd = false;
 	irdma_free_qp_rsrc(iwqp);
 
 	return 0;
@@ -723,6 +726,7 @@ static int irdma_setup_kmode_qp(struct irdma_device *iwdev,
 		info->rq_pa + (ukinfo->rq_depth * IRDMA_QP_WQE_MIN_SIZE);
 	ukinfo->sq_size = ukinfo->sq_depth >> ukinfo->sq_shift;
 	ukinfo->rq_size = ukinfo->rq_depth >> ukinfo->rq_shift;
+	ukinfo->qp_id = info->qp_uk_init_info.qp_id;
 
 	iwqp->max_send_wr = (ukinfo->sq_depth - IRDMA_SQ_RSVD) >> ukinfo->sq_shift;
 	iwqp->max_recv_wr = (ukinfo->rq_depth - IRDMA_RQ_RSVD) >> ukinfo->rq_shift;
@@ -779,6 +783,8 @@ static void irdma_roce_fill_and_set_qpctx_info(struct irdma_qp *iwqp,
 	roce_info = &iwqp->roce_info;
 	ether_addr_copy(roce_info->mac_addr, iwdev->netdev->dev_addr);
 
+	if (iwqp->ibqp.qp_type == IB_QPT_GSI && iwqp->ibqp.qp_num != 1)
+		roce_info->is_qp1 = true;
 	roce_info->rd_en = true;
 	roce_info->wr_rdresp_en = true;
 	roce_info->bind_en = true;
@@ -868,6 +874,47 @@ static void irdma_flush_worker(struct work_struct *work)
 	irdma_generate_flush_completions(iwqp);
 }
 
+static int irdma_setup_gsi_qp_rsrc(struct irdma_qp *iwqp, u32 *qp_num)
+{
+	struct irdma_device *iwdev = iwqp->iwdev;
+	struct irdma_pci_f *rf = iwdev->rf;
+	unsigned long flags;
+	int ret;
+
+	if (rf->rdma_ver <= IRDMA_GEN_2) {
+		*qp_num = 1;
+		return 0;
+	}
+
+	spin_lock_irqsave(&rf->rsrc_lock, flags);
+	if (!rf->hwqp1_rsvd) {
+		*qp_num = 1;
+		rf->hwqp1_rsvd = true;
+		spin_unlock_irqrestore(&rf->rsrc_lock, flags);
+	} else {
+		spin_unlock_irqrestore(&rf->rsrc_lock, flags);
+		ret = irdma_alloc_rsrc(rf, rf->allocated_qps, rf->max_qp,
+				       qp_num, &rf->next_qp);
+		if (ret)
+			return ret;
+	}
+
+	ret = irdma_vchnl_req_add_vport(&rf->sc_dev, iwdev->vport_id, *qp_num,
+					(&iwdev->vsi)->qos);
+	if (ret) {
+		if (*qp_num != 1) {
+			irdma_free_rsrc(rf, rf->allocated_qps, *qp_num);
+		} else {
+			spin_lock_irqsave(&rf->rsrc_lock, flags);
+			rf->hwqp1_rsvd = false;
+			spin_unlock_irqrestore(&rf->rsrc_lock, flags);
+		}
+		return ret;
+	}
+
+	return 0;
+}
+
 /**
  * irdma_create_qp - create qp
  * @ibqp: ptr of qp
@@ -929,16 +976,20 @@ static int irdma_create_qp(struct ib_qp *ibqp,
 	init_info.host_ctx = (__le64 *)(init_info.q2 + IRDMA_Q2_BUF_SIZE);
 	init_info.host_ctx_pa = init_info.q2_pa + IRDMA_Q2_BUF_SIZE;
 
-	if (init_attr->qp_type == IB_QPT_GSI)
-		qp_num = 1;
-	else
+	if (init_attr->qp_type == IB_QPT_GSI) {
+		err_code = irdma_setup_gsi_qp_rsrc(iwqp, &qp_num);
+		if (err_code)
+			goto error;
+		iwqp->ibqp.qp_num = 1;
+	} else {
 		err_code = irdma_alloc_rsrc(rf, rf->allocated_qps, rf->max_qp,
 					    &qp_num, &rf->next_qp);
-	if (err_code)
-		goto error;
+		if (err_code)
+			goto error;
+		iwqp->ibqp.qp_num = qp_num;
+	}
 
 	iwqp->iwpd = iwpd;
-	iwqp->ibqp.qp_num = qp_num;
 	qp = &iwqp->sc_qp;
 	iwqp->iwscq = to_iwcq(init_attr->send_cq);
 	iwqp->iwrcq = to_iwcq(init_attr->recv_cq);
@@ -998,10 +1049,17 @@ static int irdma_create_qp(struct ib_qp *ibqp,
 	ctx_info->send_cq_num = iwqp->iwscq->sc_cq.cq_uk.cq_id;
 	ctx_info->rcv_cq_num = iwqp->iwrcq->sc_cq.cq_uk.cq_id;
 
-	if (rdma_protocol_roce(&iwdev->ibdev, 1))
+	if (rdma_protocol_roce(&iwdev->ibdev, 1)) {
+		if (dev->ws_add(&iwdev->vsi, 0)) {
+			irdma_cqp_qp_destroy_cmd(&rf->sc_dev, &iwqp->sc_qp);
+			err_code = -EINVAL;
+			goto error;
+		}
+		irdma_qp_add_qos(&iwqp->sc_qp);
 		irdma_roce_fill_and_set_qpctx_info(iwqp, ctx_info);
-	else
+	} else {
 		irdma_iw_fill_and_set_qpctx_info(iwqp, ctx_info);
+	}
 
 	err_code = irdma_cqp_create_qp_cmd(iwqp);
 	if (err_code)
@@ -1013,16 +1071,6 @@ static int irdma_create_qp(struct ib_qp *ibqp,
 	iwqp->sig_all = init_attr->sq_sig_type == IB_SIGNAL_ALL_WR;
 	rf->qp_table[qp_num] = iwqp;
 
-	if (rdma_protocol_roce(&iwdev->ibdev, 1)) {
-		if (dev->ws_add(&iwdev->vsi, 0)) {
-			irdma_cqp_qp_destroy_cmd(&rf->sc_dev, &iwqp->sc_qp);
-			err_code = -EINVAL;
-			goto error;
-		}
-
-		irdma_qp_add_qos(&iwqp->sc_qp);
-	}
-
 	if (udata) {
 		/* GEN_1 legacy support with libi40iw does not have expanded uresp struct */
 		if (udata->outlen < sizeof(uresp)) {
diff --git a/drivers/infiniband/hw/irdma/virtchnl.c b/drivers/infiniband/hw/irdma/virtchnl.c
index 4f5c0a369cc7..c6482ac7c628 100644
--- a/drivers/infiniband/hw/irdma/virtchnl.c
+++ b/drivers/infiniband/hw/irdma/virtchnl.c
@@ -110,6 +110,8 @@ static int irdma_vchnl_req_verify_resp(struct irdma_vchnl_req *vchnl_req,
 	case IRDMA_VCHNL_OP_GET_REG_LAYOUT:
 	case IRDMA_VCHNL_OP_QUEUE_VECTOR_MAP:
 	case IRDMA_VCHNL_OP_QUEUE_VECTOR_UNMAP:
+	case IRDMA_VCHNL_OP_ADD_VPORT:
+	case IRDMA_VCHNL_OP_DEL_VPORT:
 		break;
 	default:
 		return -EOPNOTSUPP;
@@ -315,6 +317,56 @@ int irdma_vchnl_req_get_reg_layout(struct irdma_sc_dev *dev)
 	return 0;
 }
 
+int irdma_vchnl_req_add_vport(struct irdma_sc_dev *dev, u16 vport_id,
+			      u32 qp1_id, struct irdma_qos *qos)
+{
+	struct irdma_vchnl_resp_vport_info resp_vport = { 0 };
+	struct irdma_vchnl_req_vport_info req_vport = { 0 };
+	struct irdma_vchnl_req_init_info info = { 0 };
+	int ret, i;
+
+	if (!dev->vchnl_up)
+		return -EBUSY;
+
+	info.op_code = IRDMA_VCHNL_OP_ADD_VPORT;
+	info.op_ver = IRDMA_VCHNL_OP_ADD_VPORT_V0;
+	req_vport.vport_id = vport_id;
+	req_vport.qp1_id = qp1_id;
+	info.req_parm_len = sizeof(req_vport);
+	info.req_parm = &req_vport;
+	info.resp_parm = &resp_vport;
+	info.resp_parm_len = sizeof(resp_vport);
+
+	ret = irdma_vchnl_req_send_sync(dev, &info);
+	if (ret)
+		return ret;
+
+	for (i = 0;  i < IRDMA_MAX_USER_PRIORITY; i++) {
+		qos[i].qs_handle = resp_vport.qs_handle[i];
+		qos[i].valid = true;
+	}
+
+	return 0;
+}
+
+int irdma_vchnl_req_del_vport(struct irdma_sc_dev *dev, u16 vport_id, u32 qp1_id)
+{
+	struct irdma_vchnl_req_init_info info = { 0 };
+	struct irdma_vchnl_req_vport_info req_vport = { 0 };
+
+	if (!dev->vchnl_up)
+		return -EBUSY;
+
+	info.op_code = IRDMA_VCHNL_OP_DEL_VPORT;
+	info.op_ver = IRDMA_VCHNL_OP_DEL_VPORT_V0;
+	req_vport.vport_id = vport_id;
+	req_vport.qp1_id = qp1_id;
+	info.req_parm_len = sizeof(req_vport);
+	info.req_parm = &req_vport;
+
+	return irdma_vchnl_req_send_sync(dev, &info);
+}
+
 /**
  * irdma_vchnl_req_aeq_vec_map - Map AEQ to vector on this function
  * @dev: RDMA device pointer
diff --git a/drivers/infiniband/hw/irdma/virtchnl.h b/drivers/infiniband/hw/irdma/virtchnl.h
index 3af725587754..23e66bc2aa44 100644
--- a/drivers/infiniband/hw/irdma/virtchnl.h
+++ b/drivers/infiniband/hw/irdma/virtchnl.h
@@ -17,6 +17,8 @@
 #define IRDMA_VCHNL_OP_GET_REG_LAYOUT_V0 0
 #define IRDMA_VCHNL_OP_QUEUE_VECTOR_MAP_V0 0
 #define IRDMA_VCHNL_OP_QUEUE_VECTOR_UNMAP_V0 0
+#define IRDMA_VCHNL_OP_ADD_VPORT_V0 0
+#define IRDMA_VCHNL_OP_DEL_VPORT_V0 0
 #define IRDMA_VCHNL_OP_GET_RDMA_CAPS_V0 0
 #define IRDMA_VCHNL_OP_GET_RDMA_CAPS_MIN_SIZE 1
 
@@ -57,6 +59,8 @@ enum irdma_vchnl_ops {
 	IRDMA_VCHNL_OP_GET_RDMA_CAPS = 13,
 	IRDMA_VCHNL_OP_QUEUE_VECTOR_MAP = 14,
 	IRDMA_VCHNL_OP_QUEUE_VECTOR_UNMAP = 15,
+	IRDMA_VCHNL_OP_ADD_VPORT = 16,
+	IRDMA_VCHNL_OP_DEL_VPORT = 17,
 };
 
 struct irdma_vchnl_req_hmc_info {
@@ -81,6 +85,15 @@ struct irdma_vchnl_qvlist_info {
 	struct irdma_vchnl_qv_info qv_info[];
 };
 
+struct irdma_vchnl_req_vport_info {
+	u16 vport_id;
+	u32 qp1_id;
+};
+
+struct irdma_vchnl_resp_vport_info {
+	u16 qs_handle[IRDMA_MAX_USER_PRIORITY];
+};
+
 struct irdma_vchnl_op_buf {
 	u16 op_code;
 	u16 op_ver;
@@ -141,6 +154,8 @@ struct irdma_vchnl_req_init_info {
 	u16 op_ver;
 } __packed;
 
+struct irdma_qos;
+
 int irdma_sc_vchnl_init(struct irdma_sc_dev *dev,
 			struct irdma_vchnl_init_info *info);
 int irdma_vchnl_send_sync(struct irdma_sc_dev *dev, u8 *msg, u16 len,
@@ -156,4 +171,8 @@ int irdma_vchnl_req_get_reg_layout(struct irdma_sc_dev *dev);
 int irdma_vchnl_req_aeq_vec_map(struct irdma_sc_dev *dev, u32 v_idx);
 int irdma_vchnl_req_ceq_vec_map(struct irdma_sc_dev *dev, u16 ceq_id,
 				u32 v_idx);
+int irdma_vchnl_req_add_vport(struct irdma_sc_dev *dev, u16 vport_id,
+			      u32 qp1_id, struct irdma_qos *qos);
+int irdma_vchnl_req_del_vport(struct irdma_sc_dev *dev, u16 vport_id,
+			      u32 qp1_id);
 #endif /* IRDMA_VIRTCHNL_H */
-- 
2.37.3

