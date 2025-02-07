Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 400D6A2CEAC
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 22:02:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F7B37054B;
	Fri,  7 Feb 2025 21:01:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hX3EPNH6WpjA; Fri,  7 Feb 2025 21:01:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 25B027053E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738962110;
	bh=lSIKUCX8vbjR1l6tmEAXe+0lYA8Nf4s7ojRiPxOFo7c=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GwsHL0gO0Hu6jDUqUEhLeQecoyZJC1L+y+dO4CskGQQBqyTUmtt2UyQuGD6M9NA7v
	 7FE3pCD8Hnd6H6qe7ow+lAGHsT4fsbzpfYcadfCN61sy1IK76p5tNVYg3mYkyjWeJy
	 B7zh5DPrS3bcNnrC3ahqOw+YoKPcL8WyIj9kAFjq77KPCGzJ+QMIhpJRPD5nxoSEkY
	 Y5cBwD2rlHkgx8bxIoXXHnkBmei4tNHDoW1U4UtAXM28rgR2WgMSAxm/Il8WHRlMqi
	 Oja1N2mXLxo/ogYbRFV8sMHktTK3LvR6+o46gPstqWFPKRO0fqIN3suMic03DG0Kk0
	 DilDRQtKkvzig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 25B027053E;
	Fri,  7 Feb 2025 21:01:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 27FA0E4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5D711812E3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xy7z-mPX50NX for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 19:50:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=tatyana.e.nikolova@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BBAC981FFD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BBAC981FFD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BBAC981FFD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:35 +0000 (UTC)
X-CSE-ConnectionGUID: pty2p1pRS3GBuCl0XHuK9Q==
X-CSE-MsgGUID: agTH8WTeSSi9/2xDO8T8iA==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="42451866"
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="42451866"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 11:50:35 -0800
X-CSE-ConnectionGUID: y359G6ZCTAa+CPmSGEAE9w==
X-CSE-MsgGUID: ZwGX4XDhT0qvrScpD1n5Ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="112238320"
Received: from tenikolo-mobl1.amr.corp.intel.com ([10.124.81.134])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 11:50:35 -0800
From: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
To: jgg@nvidia.com,
	leon@kernel.org,
	intel-wired-lan@lists.osuosl.org
Cc: linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 Jay Bhat <jay.bhat@intel.com>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>
Date: Fri,  7 Feb 2025 13:49:30 -0600
Message-Id: <20250207194931.1569-24-tatyana.e.nikolova@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20250207194931.1569-1-tatyana.e.nikolova@intel.com>
References: <20250207194931.1569-1-tatyana.e.nikolova@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 07 Feb 2025 21:01:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738957836; x=1770493836;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pfIUcaR5dZE/cwk9L6q74wr5wLMBPBa6grT8rfjRYmo=;
 b=c6hlnUib+TFRmy62mEGJARj5w3v2itQY/XyMvUyO56BwLhOabeMDBGtX
 3wBI7wRV52Cc9wIZPcgrWrsOUUmMs74ca5Q3q0PZ22clbBanBnmUBnHxf
 vGpCxSI8aCnpZfp7zWq7nGs0vWYt9U0dYojXduEfcXj4Ps8V3ltzveqJ/
 NvenwfBDfDrLHwo1eAnRxkn+ICOZxyEQCkgiX7ITyhs8fezXayeP1LdxN
 xxdIAvln/8xXC8ji/95XvFFqEgvUBSMG75hAC1JjAkhikD7rK9zKe2i63
 ypBSalg6kUhwU0QEg20gu3KkUaZd5s1MdwjUoX3A5TyEX9HGTFHum7EdI
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c6hlnUib
Subject: [Intel-wired-lan] [rdma v3 23/24] RDMA/irdma: Add Push Page Support
 for GEN3
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

From: Jay Bhat <jay.bhat@intel.com>

Implement the necessary support for enabling push on GEN3 devices.

Key Changes:
- Introduce a RDMA virtual channel operation with the Control Plane (CP)
to manage the doorbell/push page which is a privileged operation.
- Implement the MMIO mapping of push pages which adheres to the updated
  BAR layout and page indexing specific to GEN3 devices.
- Support up to 16 QPs on a single push page, given that they are tied
to the same Queue Set.
- Impose limits on the size of WQEs pushed based on the message length
constraints provided by the CP.

Signed-off-by: Jay Bhat <jay.bhat@intel.com>
Signed-off-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
---

v3:
* Populate hmc_fn_id and use_hmc_fn_id fields in
irdma_cqp_manage_push_page_info structure.
* Remove logic for push page sharing among QPs.

 drivers/infiniband/hw/irdma/ctrl.c     |  1 -
 drivers/infiniband/hw/irdma/defs.h     |  2 +
 drivers/infiniband/hw/irdma/irdma.h    |  1 +
 drivers/infiniband/hw/irdma/type.h     |  3 ++
 drivers/infiniband/hw/irdma/user.h     |  1 -
 drivers/infiniband/hw/irdma/utils.c    | 21 +++++++++--
 drivers/infiniband/hw/irdma/verbs.c    | 51 +++++++++++++++++++++-----
 drivers/infiniband/hw/irdma/verbs.h    |  3 ++
 drivers/infiniband/hw/irdma/virtchnl.c | 40 ++++++++++++++++++++
 drivers/infiniband/hw/irdma/virtchnl.h | 11 ++++++
 include/uapi/rdma/irdma-abi.h          |  3 +-
 11 files changed, 121 insertions(+), 16 deletions(-)

diff --git a/drivers/infiniband/hw/irdma/ctrl.c b/drivers/infiniband/hw/irdma/ctrl.c
index 4158db00085f..a6df550eb8c8 100644
--- a/drivers/infiniband/hw/irdma/ctrl.c
+++ b/drivers/infiniband/hw/irdma/ctrl.c
@@ -6584,7 +6584,6 @@ int irdma_sc_dev_init(enum irdma_vers ver, struct irdma_sc_dev *dev,
 	dev->hw_attrs.max_hw_outbound_msg_size = IRDMA_MAX_OUTBOUND_MSG_SIZE;
 	dev->hw_attrs.max_mr_size = IRDMA_MAX_MR_SIZE;
 	dev->hw_attrs.max_hw_inbound_msg_size = IRDMA_MAX_INBOUND_MSG_SIZE;
-	dev->hw_attrs.max_hw_device_pages = IRDMA_MAX_PUSH_PAGE_COUNT;
 	dev->hw_attrs.uk_attrs.max_hw_inline = IRDMA_MAX_INLINE_DATA_SIZE;
 	dev->hw_attrs.max_hw_wqes = IRDMA_MAX_WQ_ENTRIES;
 	dev->hw_attrs.max_qp_wr = IRDMA_MAX_QP_WRS(IRDMA_MAX_QUANTA_PER_WR);
diff --git a/drivers/infiniband/hw/irdma/defs.h b/drivers/infiniband/hw/irdma/defs.h
index 983b22d7ae23..46330513085b 100644
--- a/drivers/infiniband/hw/irdma/defs.h
+++ b/drivers/infiniband/hw/irdma/defs.h
@@ -167,6 +167,8 @@ enum irdma_protocol_used {
 #define IRDMA_MAX_RQ_WQE_SHIFT_GEN1 2
 #define IRDMA_MAX_RQ_WQE_SHIFT_GEN2 3
 
+#define IRDMA_DEFAULT_MAX_PUSH_LEN 8192
+
 #define IRDMA_SQ_RSVD	258
 #define IRDMA_RQ_RSVD	1
 
diff --git a/drivers/infiniband/hw/irdma/irdma.h b/drivers/infiniband/hw/irdma/irdma.h
index ff938a01d70c..def6a16f5d6e 100644
--- a/drivers/infiniband/hw/irdma/irdma.h
+++ b/drivers/infiniband/hw/irdma/irdma.h
@@ -133,6 +133,7 @@ struct irdma_uk_attrs {
 	u32 min_hw_cq_size;
 	u32 max_hw_cq_size;
 	u32 max_hw_srq_quanta;
+	u16 max_hw_push_len;
 	u16 max_hw_sq_chunk;
 	u16 min_hw_wq_size;
 	u8 hw_rev;
diff --git a/drivers/infiniband/hw/irdma/type.h b/drivers/infiniband/hw/irdma/type.h
index 665dc74cb10a..e04d6c35cf59 100644
--- a/drivers/infiniband/hw/irdma/type.h
+++ b/drivers/infiniband/hw/irdma/type.h
@@ -1282,8 +1282,11 @@ struct irdma_qhash_table_info {
 struct irdma_cqp_manage_push_page_info {
 	u32 push_idx;
 	u16 qs_handle;
+	u16 hmc_fn_id;
 	u8 free_page;
 	u8 push_page_type;
+	u8 page_type;
+	u8 use_hmc_fn_id;
 };
 
 struct irdma_qp_flush_info {
diff --git a/drivers/infiniband/hw/irdma/user.h b/drivers/infiniband/hw/irdma/user.h
index ab57f689827a..47617ba285c1 100644
--- a/drivers/infiniband/hw/irdma/user.h
+++ b/drivers/infiniband/hw/irdma/user.h
@@ -182,7 +182,6 @@ enum irdma_device_caps_const {
 	IRDMA_MAX_SGE_RD =			13,
 	IRDMA_MAX_OUTBOUND_MSG_SIZE =		2147483647,
 	IRDMA_MAX_INBOUND_MSG_SIZE =		2147483647,
-	IRDMA_MAX_PUSH_PAGE_COUNT =		1024,
 	IRDMA_MAX_PE_ENA_VF_COUNT =		32,
 	IRDMA_MAX_VF_FPM_ID =			47,
 	IRDMA_MAX_SQ_PAYLOAD_SIZE =		2145386496,
diff --git a/drivers/infiniband/hw/irdma/utils.c b/drivers/infiniband/hw/irdma/utils.c
index 552a4cf2c51b..11ceca099538 100644
--- a/drivers/infiniband/hw/irdma/utils.c
+++ b/drivers/infiniband/hw/irdma/utils.c
@@ -1085,18 +1085,29 @@ int irdma_cqp_qp_create_cmd(struct irdma_sc_dev *dev, struct irdma_sc_qp *qp)
 /**
  * irdma_dealloc_push_page - free a push page for qp
  * @rf: RDMA PCI function
- * @qp: hardware control qp
+ * @iwqp: QP pointer
  */
 static void irdma_dealloc_push_page(struct irdma_pci_f *rf,
-				    struct irdma_sc_qp *qp)
+				    struct irdma_qp *iwqp)
 {
 	struct irdma_cqp_request *cqp_request;
 	struct cqp_cmds_info *cqp_info;
 	int status;
+	struct irdma_sc_qp *qp = &iwqp->sc_qp;
 
 	if (qp->push_idx == IRDMA_INVALID_PUSH_PAGE_INDEX)
 		return;
 
+	if (!rf->sc_dev.privileged) {
+		u32 pg_idx = qp->push_idx;
+
+		status = irdma_vchnl_req_manage_push_pg(&rf->sc_dev, false,
+							qp->qs_handle, &pg_idx);
+		if (!status)
+			qp->push_idx = IRDMA_INVALID_PUSH_PAGE_INDEX;
+		return;
+	}
+
 	cqp_request = irdma_alloc_and_get_cqp_request(&rf->cqp, false);
 	if (!cqp_request)
 		return;
@@ -1108,11 +1119,15 @@ static void irdma_dealloc_push_page(struct irdma_pci_f *rf,
 	cqp_info->in.u.manage_push_page.info.qs_handle = qp->qs_handle;
 	cqp_info->in.u.manage_push_page.info.free_page = 1;
 	cqp_info->in.u.manage_push_page.info.push_page_type = 0;
+	cqp_info->in.u.manage_push_page.info.hmc_fn_id =
+		iwqp->iwdev->rf->sc_dev.hmc_fn_id;
+	cqp_info->in.u.manage_push_page.info.use_hmc_fn_id = 1;
 	cqp_info->in.u.manage_push_page.cqp = &rf->cqp.sc_cqp;
 	cqp_info->in.u.manage_push_page.scratch = (uintptr_t)cqp_request;
 	status = irdma_handle_cqp_op(rf, cqp_request);
 	if (!status)
 		qp->push_idx = IRDMA_INVALID_PUSH_PAGE_INDEX;
+
 	irdma_put_cqp_request(&rf->cqp, cqp_request);
 }
 
@@ -1147,7 +1162,7 @@ void irdma_free_qp_rsrc(struct irdma_qp *iwqp)
 	u32 qp_num = iwqp->sc_qp.qp_uk.qp_id;
 
 	irdma_ieq_cleanup_qp(iwdev->vsi.ieq, &iwqp->sc_qp);
-	irdma_dealloc_push_page(rf, &iwqp->sc_qp);
+	irdma_dealloc_push_page(rf, iwqp);
 	if (iwqp->sc_qp.vsi) {
 		irdma_qp_rem_qos(&iwqp->sc_qp);
 		iwqp->sc_qp.dev->ws_remove(iwqp->sc_qp.vsi,
diff --git a/drivers/infiniband/hw/irdma/verbs.c b/drivers/infiniband/hw/irdma/verbs.c
index 495fa34b77af..5a83362f0945 100644
--- a/drivers/infiniband/hw/irdma/verbs.c
+++ b/drivers/infiniband/hw/irdma/verbs.c
@@ -247,6 +247,18 @@ static void irdma_alloc_push_page(struct irdma_qp *iwqp)
 	struct irdma_sc_qp *qp = &iwqp->sc_qp;
 	int status;
 
+	if (!iwdev->rf->sc_dev.privileged) {
+		u32 pg_idx;
+
+		status = irdma_vchnl_req_manage_push_pg(&iwdev->rf->sc_dev,
+							true, qp->qs_handle,
+							&pg_idx);
+		if (!status && pg_idx != IRDMA_INVALID_PUSH_PAGE_INDEX)
+			qp->push_idx = pg_idx;
+
+		return;
+	}
+
 	cqp_request = irdma_alloc_and_get_cqp_request(&iwdev->rf->cqp, true);
 	if (!cqp_request)
 		return;
@@ -259,15 +271,16 @@ static void irdma_alloc_push_page(struct irdma_qp *iwqp)
 		qp->vsi->qos[qp->user_pri].qs_handle;
 	cqp_info->in.u.manage_push_page.info.free_page = 0;
 	cqp_info->in.u.manage_push_page.info.push_page_type = 0;
+	cqp_info->in.u.manage_push_page.info.hmc_fn_id =
+		iwqp->iwdev->rf->sc_dev.hmc_fn_id;
+	cqp_info->in.u.manage_push_page.info.use_hmc_fn_id = 1;
 	cqp_info->in.u.manage_push_page.cqp = &iwdev->rf->cqp.sc_cqp;
 	cqp_info->in.u.manage_push_page.scratch = (uintptr_t)cqp_request;
 
 	status = irdma_handle_cqp_op(iwdev->rf, cqp_request);
 	if (!status && cqp_request->compl_info.op_ret_val <
-	    iwdev->rf->sc_dev.hw_attrs.max_hw_device_pages) {
+	    iwdev->rf->sc_dev.hw_attrs.max_hw_device_pages)
 		qp->push_idx = cqp_request->compl_info.op_ret_val;
-		qp->push_offset = 0;
-	}
 
 	irdma_put_cqp_request(&iwdev->rf->cqp, cqp_request);
 }
@@ -351,6 +364,9 @@ static int irdma_alloc_ucontext(struct ib_ucontext *uctx,
 		uresp.comp_mask |= IRDMA_ALLOC_UCTX_MIN_HW_WQ_SIZE;
 		uresp.max_hw_srq_quanta = uk_attrs->max_hw_srq_quanta;
 		uresp.comp_mask |= IRDMA_ALLOC_UCTX_MAX_HW_SRQ_QUANTA;
+		uresp.max_hw_push_len = uk_attrs->max_hw_push_len;
+		uresp.comp_mask |= IRDMA_SUPPORT_MAX_HW_PUSH_LEN;
+
 		if (ib_copy_to_udata(udata, &uresp,
 				     min(sizeof(uresp), udata->outlen))) {
 			rdma_user_mmap_entry_remove(ucontext->db_mmap_entry);
@@ -485,6 +501,23 @@ static void irdma_clean_cqes(struct irdma_qp *iwqp, struct irdma_cq *iwcq)
 	spin_unlock_irqrestore(&iwcq->lock, flags);
 }
 
+static u64 irdma_compute_push_wqe_offset(struct irdma_device *iwdev, u32 page_idx)
+{
+	u64 bar_off = (uintptr_t)iwdev->rf->sc_dev.hw_regs[IRDMA_DB_ADDR_OFFSET];
+
+	if (iwdev->rf->sc_dev.hw_attrs.uk_attrs.hw_rev == IRDMA_GEN_2) {
+		/* skip over db page */
+		bar_off += IRDMA_HW_PAGE_SIZE;
+		/* skip over reserved space */
+		bar_off += IRDMA_PF_BAR_RSVD;
+	}
+
+	/* push wqe page */
+	bar_off += (u64)page_idx * IRDMA_HW_PAGE_SIZE;
+
+	return bar_off;
+}
+
 static void irdma_remove_push_mmap_entries(struct irdma_qp *iwqp)
 {
 	if (iwqp->push_db_mmap_entry) {
@@ -503,14 +536,12 @@ static int irdma_setup_push_mmap_entries(struct irdma_ucontext *ucontext,
 					 u64 *push_db_mmap_key)
 {
 	struct irdma_device *iwdev = ucontext->iwdev;
-	u64 rsvd, bar_off;
+	u64 bar_off;
+
+	WARN_ON_ONCE(iwdev->rf->sc_dev.hw_attrs.uk_attrs.hw_rev < IRDMA_GEN_2);
+
+	bar_off = irdma_compute_push_wqe_offset(iwdev, iwqp->sc_qp.push_idx);
 
-	rsvd = IRDMA_PF_BAR_RSVD;
-	bar_off = (uintptr_t)iwdev->rf->sc_dev.hw_regs[IRDMA_DB_ADDR_OFFSET];
-	/* skip over db page */
-	bar_off += IRDMA_HW_PAGE_SIZE;
-	/* push wqe page */
-	bar_off += rsvd + iwqp->sc_qp.push_idx * IRDMA_HW_PAGE_SIZE;
 	iwqp->push_wqe_mmap_entry = irdma_user_mmap_entry_insert(ucontext,
 					bar_off, IRDMA_MMAP_IO_WC,
 					push_wqe_mmap_key);
diff --git a/drivers/infiniband/hw/irdma/verbs.h b/drivers/infiniband/hw/irdma/verbs.h
index 49972b0600a3..7e4ed0535c3b 100644
--- a/drivers/infiniband/hw/irdma/verbs.h
+++ b/drivers/infiniband/hw/irdma/verbs.h
@@ -8,6 +8,9 @@
 
 #define IRDMA_PKEY_TBL_SZ		1
 #define IRDMA_DEFAULT_PKEY		0xFFFF
+
+#define IRDMA_QPS_PER_PUSH_PAGE		16
+#define IRDMA_PUSH_WIN_SIZE		256
 #define IRDMA_SHADOW_PGCNT		1
 
 struct irdma_ucontext {
diff --git a/drivers/infiniband/hw/irdma/virtchnl.c b/drivers/infiniband/hw/irdma/virtchnl.c
index c6482ac7c628..d42814dda12b 100644
--- a/drivers/infiniband/hw/irdma/virtchnl.c
+++ b/drivers/infiniband/hw/irdma/virtchnl.c
@@ -66,6 +66,7 @@ int irdma_sc_vchnl_init(struct irdma_sc_dev *dev,
 	dev->privileged = info->privileged;
 	dev->is_pf = info->is_pf;
 	dev->hw_attrs.uk_attrs.hw_rev = info->hw_rev;
+	dev->hw_attrs.uk_attrs.max_hw_push_len = IRDMA_DEFAULT_MAX_PUSH_LEN;
 
 	if (!dev->privileged) {
 		int ret = irdma_vchnl_req_get_ver(dev, IRDMA_VCHNL_CHNL_VER_MAX,
@@ -83,6 +84,7 @@ int irdma_sc_vchnl_init(struct irdma_sc_dev *dev,
 			return ret;
 
 		dev->hw_attrs.uk_attrs.hw_rev = dev->vc_caps.hw_rev;
+		dev->hw_attrs.uk_attrs.max_hw_push_len = dev->vc_caps.max_hw_push_len;
 	}
 
 	return 0;
@@ -107,6 +109,7 @@ static int irdma_vchnl_req_verify_resp(struct irdma_vchnl_req *vchnl_req,
 		if (resp_len < IRDMA_VCHNL_OP_GET_RDMA_CAPS_MIN_SIZE)
 			return -EBADMSG;
 		break;
+	case IRDMA_VCHNL_OP_MANAGE_PUSH_PAGE:
 	case IRDMA_VCHNL_OP_GET_REG_LAYOUT:
 	case IRDMA_VCHNL_OP_QUEUE_VECTOR_MAP:
 	case IRDMA_VCHNL_OP_QUEUE_VECTOR_UNMAP:
@@ -186,6 +189,40 @@ static int irdma_vchnl_req_send_sync(struct irdma_sc_dev *dev,
 	return ret;
 }
 
+/**
+ * irdma_vchnl_req_manage_push_pg - manage push page
+ * @dev: rdma device pointer
+ * @add: Add or remove push page
+ * @qs_handle: qs_handle of push page for add
+ * @pg_idx: index of push page that is added or removed
+ */
+int irdma_vchnl_req_manage_push_pg(struct irdma_sc_dev *dev, bool add,
+				   u32 qs_handle, u32 *pg_idx)
+{
+	struct irdma_vchnl_manage_push_page add_push_pg = {};
+	struct irdma_vchnl_req_init_info info = {};
+
+	if (!dev->vchnl_up)
+		return -EBUSY;
+
+	add_push_pg.add = add;
+	add_push_pg.pg_idx = add ? 0 : *pg_idx;
+	add_push_pg.qs_handle = qs_handle;
+
+	info.op_code = IRDMA_VCHNL_OP_MANAGE_PUSH_PAGE;
+	info.op_ver = IRDMA_VCHNL_OP_MANAGE_PUSH_PAGE_V0;
+	info.req_parm = &add_push_pg;
+	info.req_parm_len = sizeof(add_push_pg);
+	info.resp_parm = pg_idx;
+	info.resp_parm_len = sizeof(*pg_idx);
+
+	ibdev_dbg(to_ibdev(dev),
+		  "VIRT: Sending msg: manage_push_pg add = %d, idx %u, qsh %u\n",
+		  add_push_pg.add, add_push_pg.pg_idx, add_push_pg.qs_handle);
+
+	return irdma_vchnl_req_send_sync(dev, &info);
+}
+
 /**
  * irdma_vchnl_req_get_reg_layout - Get Register Layout
  * @dev: RDMA device pointer
@@ -563,6 +600,9 @@ int irdma_vchnl_req_get_caps(struct irdma_sc_dev *dev)
 	if (ret)
 		return ret;
 
+	if (!dev->vc_caps.max_hw_push_len)
+		dev->vc_caps.max_hw_push_len = IRDMA_DEFAULT_MAX_PUSH_LEN;
+
 	if (dev->vc_caps.hw_rev > IRDMA_GEN_MAX ||
 	    dev->vc_caps.hw_rev < IRDMA_GEN_2) {
 		ibdev_dbg(to_ibdev(dev),
diff --git a/drivers/infiniband/hw/irdma/virtchnl.h b/drivers/infiniband/hw/irdma/virtchnl.h
index 23e66bc2aa44..0c88f6463077 100644
--- a/drivers/infiniband/hw/irdma/virtchnl.h
+++ b/drivers/infiniband/hw/irdma/virtchnl.h
@@ -14,6 +14,7 @@
 #define IRDMA_VCHNL_OP_GET_HMC_FCN_V1 1
 #define IRDMA_VCHNL_OP_GET_HMC_FCN_V2 2
 #define IRDMA_VCHNL_OP_PUT_HMC_FCN_V0 0
+#define IRDMA_VCHNL_OP_MANAGE_PUSH_PAGE_V0 0
 #define IRDMA_VCHNL_OP_GET_REG_LAYOUT_V0 0
 #define IRDMA_VCHNL_OP_QUEUE_VECTOR_MAP_V0 0
 #define IRDMA_VCHNL_OP_QUEUE_VECTOR_UNMAP_V0 0
@@ -55,6 +56,7 @@ enum irdma_vchnl_ops {
 	IRDMA_VCHNL_OP_GET_VER = 0,
 	IRDMA_VCHNL_OP_GET_HMC_FCN = 1,
 	IRDMA_VCHNL_OP_PUT_HMC_FCN = 2,
+	IRDMA_VCHNL_OP_MANAGE_PUSH_PAGE = 10,
 	IRDMA_VCHNL_OP_GET_REG_LAYOUT = 11,
 	IRDMA_VCHNL_OP_GET_RDMA_CAPS = 13,
 	IRDMA_VCHNL_OP_QUEUE_VECTOR_MAP = 14,
@@ -125,6 +127,13 @@ struct irdma_vchnl_init_info {
 	bool is_pf;
 };
 
+struct irdma_vchnl_manage_push_page {
+	u8 page_type;
+	u8 add;
+	u32 pg_idx;
+	u32 qs_handle;
+};
+
 struct irdma_vchnl_reg_info {
 	u32 reg_offset;
 	u16 field_cnt;
@@ -167,6 +176,8 @@ int irdma_vchnl_req_put_hmc_fcn(struct irdma_sc_dev *dev);
 int irdma_vchnl_req_get_caps(struct irdma_sc_dev *dev);
 int irdma_vchnl_req_get_resp(struct irdma_sc_dev *dev,
 			     struct irdma_vchnl_req *vc_req);
+int irdma_vchnl_req_manage_push_pg(struct irdma_sc_dev *dev, bool add,
+				   u32 qs_handle, u32 *pg_idx);
 int irdma_vchnl_req_get_reg_layout(struct irdma_sc_dev *dev);
 int irdma_vchnl_req_aeq_vec_map(struct irdma_sc_dev *dev, u32 v_idx);
 int irdma_vchnl_req_ceq_vec_map(struct irdma_sc_dev *dev, u16 ceq_id,
diff --git a/include/uapi/rdma/irdma-abi.h b/include/uapi/rdma/irdma-abi.h
index f7788d33376b..9c8cee0753f0 100644
--- a/include/uapi/rdma/irdma-abi.h
+++ b/include/uapi/rdma/irdma-abi.h
@@ -28,6 +28,7 @@ enum {
 	IRDMA_ALLOC_UCTX_MIN_HW_WQ_SIZE = 1 << 1,
 	IRDMA_ALLOC_UCTX_MAX_HW_SRQ_QUANTA = 1 << 2,
 	IRDMA_SUPPORT_WQE_FORMAT_V2 = 1 << 3,
+	IRDMA_SUPPORT_MAX_HW_PUSH_LEN = 1 << 4,
 };
 
 struct irdma_alloc_ucontext_req {
@@ -58,7 +59,7 @@ struct irdma_alloc_ucontext_resp {
 	__aligned_u64 comp_mask;
 	__u16 min_hw_wq_size;
 	__u32 max_hw_srq_quanta;
-	__u8 rsvd3[2];
+	__u16 max_hw_push_len;
 };
 
 struct irdma_alloc_pd_resp {
-- 
2.37.3

