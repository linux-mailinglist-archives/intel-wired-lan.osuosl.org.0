Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FDAA2CEA4
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 22:01:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D474984BB0;
	Fri,  7 Feb 2025 21:01:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dm1-w-akn8uX; Fri,  7 Feb 2025 21:01:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 07ABD84B6A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738962113;
	bh=fVJY2VDANLkY0Bs9/8n5GFJKVO6bHSoguQXa4Uka9YY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=h/KMKw9WNnTk6Fgte3C5Kfn4e6gWvVEte84ZTWqCUUSPCBJi2K3SAmDJmTSPprb3k
	 fRpIfY4dneZKmHPh6czZrVYrULQd+CX0Ay1uKuUrXBXYph2D8TqlCnQgQsJg7po4+S
	 u7ug8bO0FGFgFtcfBpQFHfC1Dooe8AGlVk79AjSqAhvWvdsj97oo8xomkOfQgZjrFc
	 S+8NG+qNrgdNOg8x3w0jyfwg0SXFcIk8DbXURE9tocYWV7l5ra02nIi5IqyOsnjsWf
	 g/trVEVhjyaGWU8HBhCNt8ervOT/cEv6yEi/dngm/x4BpL18IJ8cuRn7hudTLnYr5M
	 cnpe3zCURg7Ew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 07ABD84B6A;
	Fri,  7 Feb 2025 21:01:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3D4E4E4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E543B81311
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CeogWtdQvZjB for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 19:50:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=tatyana.e.nikolova@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2BDBE8120B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2BDBE8120B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2BDBE8120B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:35 +0000 (UTC)
X-CSE-ConnectionGUID: Z8M+u5brQmKJ2qqnpjxZ4Q==
X-CSE-MsgGUID: tGtzsKg7QH+1yc+b3ClHcw==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="42451860"
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="42451860"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 11:50:35 -0800
X-CSE-ConnectionGUID: WuFLaaxYSM+0y9KTb/qrEA==
X-CSE-MsgGUID: U0qQtSFHSyGFN648A/OItw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="112238305"
Received: from tenikolo-mobl1.amr.corp.intel.com ([10.124.81.134])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 11:50:34 -0800
From: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
To: jgg@nvidia.com,
	leon@kernel.org,
	intel-wired-lan@lists.osuosl.org
Cc: linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 Shiraz Saleem <shiraz.saleem@intel.com>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>
Date: Fri,  7 Feb 2025 13:49:29 -0600
Message-Id: <20250207194931.1569-23-tatyana.e.nikolova@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20250207194931.1569-1-tatyana.e.nikolova@intel.com>
References: <20250207194931.1569-1-tatyana.e.nikolova@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 07 Feb 2025 21:01:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738957835; x=1770493835;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TaU3KiZeaz97WId/Ln8CJ2RevTmVCKyLDQIFOl15t0Q=;
 b=mSL8ltXOF47N3+3n0nfInT9t8cBqqqGDbWQj7sQg4++wrl03M0+YIiJt
 7Hdf29lZIiZmgM2NpsCx8jBG2yDeiqGrTFpu1ulbfQjpMHU6LIFbihvlf
 DaGJKiqPXZTOCvfhb/4XwL25bYz6PwatXhcMFmRieKU+VCI4SvsxUuOWj
 Mc6Tb3EJM1XWuxBIuRhXAUkexCxwole4NjlXOzRT5Af/z5iCDVLRrT3e7
 3SZGGtJtSyJf6CBA7fmkk2BrPK3f8hDgrt2ATqEos/V/E0039D/s+bY+4
 oBkHKkfXJDrrmcg8JfxQqOZGUYVN/l4h0jZt3N2bWBLPyDQXuG7oLm5Qt
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mSL8ltXO
Subject: [Intel-wired-lan] [rdma v3 22/24] RDMA/irdma: Extend CQE Error and
 Flush Handling for GEN3 Devices
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

Enhance the CQE error and flush handling specific to GEN3 devices.
Unlike GEN1/2 devices, which depend on software to generate completions
in error, GEN3 devices leverage firmware to generate CQEs in error for
all WQEs posted after a QP moves to an error state.

Key changes include:
- Updating the CQ poll logic to properly advance the CQ head in the
event of a flush CQE.
- Updating the flush logic for GEN3 to pass error WQE idx
for SQ on an AE to flush out unprocessed WQEs in error.
- Isolating the decoding of AE to flush codes into a separate routine
irdma_ae_to_qp_err_code. This routine can now be leveraged to
flush error CQEs on an AE and when error CQE is received for SRQ.

Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
Signed-off-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
---

v3:
* Use irdma_aeqe_info to update QP err_rq_idx when setting
the QP flush fields.
* Remove the checks which prevented the use of the delayed
flush worker thread for GEN3.

 drivers/infiniband/hw/irdma/ctrl.c  |   9 ++
 drivers/infiniband/hw/irdma/defs.h  | 105 +--------------
 drivers/infiniband/hw/irdma/hw.c    |  99 ++++----------
 drivers/infiniband/hw/irdma/type.h  |  14 +-
 drivers/infiniband/hw/irdma/uk.c    |  39 +++++-
 drivers/infiniband/hw/irdma/user.h  | 194 +++++++++++++++++++++++++++-
 drivers/infiniband/hw/irdma/verbs.c |  10 +-
 7 files changed, 280 insertions(+), 190 deletions(-)

diff --git a/drivers/infiniband/hw/irdma/ctrl.c b/drivers/infiniband/hw/irdma/ctrl.c
index 75411c4b68fb..4158db00085f 100644
--- a/drivers/infiniband/hw/irdma/ctrl.c
+++ b/drivers/infiniband/hw/irdma/ctrl.c
@@ -2674,6 +2674,12 @@ int irdma_sc_qp_flush_wqes(struct irdma_sc_qp *qp,
 		info->ae_code | FIELD_PREP(IRDMA_CQPSQ_FWQE_AESOURCE,
 					   info->ae_src) : 0;
 	set_64bit_val(wqe, 8, temp);
+	if (cqp->dev->hw_attrs.uk_attrs.hw_rev >= IRDMA_GEN_3) {
+		set_64bit_val(wqe, 40,
+			      FIELD_PREP(IRDMA_CQPSQ_FWQE_ERR_SQ_IDX, info->err_sq_idx));
+		set_64bit_val(wqe, 48,
+			      FIELD_PREP(IRDMA_CQPSQ_FWQE_ERR_RQ_IDX, info->err_rq_idx));
+	}
 
 	hdr = qp->qp_uk.qp_id |
 	      FIELD_PREP(IRDMA_CQPSQ_OPCODE, IRDMA_CQP_OP_FLUSH_WQES) |
@@ -2682,6 +2688,9 @@ int irdma_sc_qp_flush_wqes(struct irdma_sc_qp *qp,
 	      FIELD_PREP(IRDMA_CQPSQ_FWQE_FLUSHSQ, flush_sq) |
 	      FIELD_PREP(IRDMA_CQPSQ_FWQE_FLUSHRQ, flush_rq) |
 	      FIELD_PREP(IRDMA_CQPSQ_WQEVALID, cqp->polarity);
+	if (cqp->dev->hw_attrs.uk_attrs.hw_rev >= IRDMA_GEN_3)
+		hdr |= FIELD_PREP(IRDMA_CQPSQ_FWQE_ERR_SQ_IDX_VALID, info->err_sq_idx_valid) |
+		       FIELD_PREP(IRDMA_CQPSQ_FWQE_ERR_RQ_IDX_VALID, info->err_rq_idx_valid);
 	dma_wmb(); /* make sure WQE is written before valid bit is set */
 
 	set_64bit_val(wqe, 24, hdr);
diff --git a/drivers/infiniband/hw/irdma/defs.h b/drivers/infiniband/hw/irdma/defs.h
index 3b3680816a65..983b22d7ae23 100644
--- a/drivers/infiniband/hw/irdma/defs.h
+++ b/drivers/infiniband/hw/irdma/defs.h
@@ -301,107 +301,6 @@ enum irdma_cqp_op_type {
 #define IRDMA_CQP_OP_GATHER_STATS			0x2e
 #define IRDMA_CQP_OP_UP_MAP				0x2f
 
-/* Async Events codes */
-#define IRDMA_AE_AMP_UNALLOCATED_STAG					0x0102
-#define IRDMA_AE_AMP_INVALID_STAG					0x0103
-#define IRDMA_AE_AMP_BAD_QP						0x0104
-#define IRDMA_AE_AMP_BAD_PD						0x0105
-#define IRDMA_AE_AMP_BAD_STAG_KEY					0x0106
-#define IRDMA_AE_AMP_BAD_STAG_INDEX					0x0107
-#define IRDMA_AE_AMP_BOUNDS_VIOLATION					0x0108
-#define IRDMA_AE_AMP_RIGHTS_VIOLATION					0x0109
-#define IRDMA_AE_AMP_TO_WRAP						0x010a
-#define IRDMA_AE_AMP_FASTREG_VALID_STAG					0x010c
-#define IRDMA_AE_AMP_FASTREG_MW_STAG					0x010d
-#define IRDMA_AE_AMP_FASTREG_INVALID_RIGHTS				0x010e
-#define IRDMA_AE_AMP_FASTREG_INVALID_LENGTH				0x0110
-#define IRDMA_AE_AMP_INVALIDATE_SHARED					0x0111
-#define IRDMA_AE_AMP_INVALIDATE_NO_REMOTE_ACCESS_RIGHTS			0x0112
-#define IRDMA_AE_AMP_INVALIDATE_MR_WITH_BOUND_WINDOWS			0x0113
-#define IRDMA_AE_AMP_MWBIND_VALID_STAG					0x0114
-#define IRDMA_AE_AMP_MWBIND_OF_MR_STAG					0x0115
-#define IRDMA_AE_AMP_MWBIND_TO_ZERO_BASED_STAG				0x0116
-#define IRDMA_AE_AMP_MWBIND_TO_MW_STAG					0x0117
-#define IRDMA_AE_AMP_MWBIND_INVALID_RIGHTS				0x0118
-#define IRDMA_AE_AMP_MWBIND_INVALID_BOUNDS				0x0119
-#define IRDMA_AE_AMP_MWBIND_TO_INVALID_PARENT				0x011a
-#define IRDMA_AE_AMP_MWBIND_BIND_DISABLED				0x011b
-#define IRDMA_AE_PRIV_OPERATION_DENIED					0x011c
-#define IRDMA_AE_AMP_INVALIDATE_TYPE1_MW				0x011d
-#define IRDMA_AE_AMP_MWBIND_ZERO_BASED_TYPE1_MW				0x011e
-#define IRDMA_AE_AMP_FASTREG_INVALID_PBL_HPS_CFG			0x011f
-#define IRDMA_AE_AMP_MWBIND_WRONG_TYPE					0x0120
-#define IRDMA_AE_AMP_FASTREG_PBLE_MISMATCH				0x0121
-#define IRDMA_AE_UDA_XMIT_DGRAM_TOO_LONG				0x0132
-#define IRDMA_AE_UDA_XMIT_BAD_PD					0x0133
-#define IRDMA_AE_UDA_XMIT_DGRAM_TOO_SHORT				0x0134
-#define IRDMA_AE_UDA_L4LEN_INVALID					0x0135
-#define IRDMA_AE_BAD_CLOSE						0x0201
-#define IRDMA_AE_RDMAP_ROE_BAD_LLP_CLOSE				0x0202
-#define IRDMA_AE_CQ_OPERATION_ERROR					0x0203
-#define IRDMA_AE_RDMA_READ_WHILE_ORD_ZERO				0x0205
-#define IRDMA_AE_STAG_ZERO_INVALID					0x0206
-#define IRDMA_AE_IB_RREQ_AND_Q1_FULL					0x0207
-#define IRDMA_AE_IB_INVALID_REQUEST					0x0208
-#define IRDMA_AE_SRQ_LIMIT						0x0209
-#define IRDMA_AE_WQE_UNEXPECTED_OPCODE					0x020a
-#define IRDMA_AE_WQE_INVALID_PARAMETER					0x020b
-#define IRDMA_AE_WQE_INVALID_FRAG_DATA					0x020c
-#define IRDMA_AE_IB_REMOTE_ACCESS_ERROR					0x020d
-#define IRDMA_AE_IB_REMOTE_OP_ERROR					0x020e
-#define IRDMA_AE_SRQ_CATASTROPHIC_ERROR					0x020f
-#define IRDMA_AE_WQE_LSMM_TOO_LONG					0x0220
-#define IRDMA_AE_ATOMIC_ALIGNMENT					0x0221
-#define IRDMA_AE_ATOMIC_MASK						0x0222
-#define IRDMA_AE_INVALID_REQUEST					0x0223
-#define IRDMA_AE_PCIE_ATOMIC_DISABLE					0x0224
-#define IRDMA_AE_DDP_INVALID_MSN_GAP_IN_MSN				0x0301
-#define IRDMA_AE_DDP_UBE_DDP_MESSAGE_TOO_LONG_FOR_AVAILABLE_BUFFER	0x0303
-#define IRDMA_AE_DDP_UBE_INVALID_DDP_VERSION				0x0304
-#define IRDMA_AE_DDP_UBE_INVALID_MO					0x0305
-#define IRDMA_AE_DDP_UBE_INVALID_MSN_NO_BUFFER_AVAILABLE		0x0306
-#define IRDMA_AE_DDP_UBE_INVALID_QN					0x0307
-#define IRDMA_AE_DDP_NO_L_BIT						0x0308
-#define IRDMA_AE_RDMAP_ROE_INVALID_RDMAP_VERSION			0x0311
-#define IRDMA_AE_RDMAP_ROE_UNEXPECTED_OPCODE				0x0312
-#define IRDMA_AE_ROE_INVALID_RDMA_READ_REQUEST				0x0313
-#define IRDMA_AE_ROE_INVALID_RDMA_WRITE_OR_READ_RESP			0x0314
-#define IRDMA_AE_ROCE_RSP_LENGTH_ERROR					0x0316
-#define IRDMA_AE_ROCE_EMPTY_MCG						0x0380
-#define IRDMA_AE_ROCE_BAD_MC_IP_ADDR					0x0381
-#define IRDMA_AE_ROCE_BAD_MC_QPID					0x0382
-#define IRDMA_AE_MCG_QP_PROTOCOL_MISMATCH				0x0383
-#define IRDMA_AE_INVALID_ARP_ENTRY					0x0401
-#define IRDMA_AE_INVALID_TCP_OPTION_RCVD				0x0402
-#define IRDMA_AE_STALE_ARP_ENTRY					0x0403
-#define IRDMA_AE_INVALID_AH_ENTRY					0x0406
-#define IRDMA_AE_LLP_CLOSE_COMPLETE					0x0501
-#define IRDMA_AE_LLP_CONNECTION_RESET					0x0502
-#define IRDMA_AE_LLP_FIN_RECEIVED					0x0503
-#define IRDMA_AE_LLP_RECEIVED_MARKER_AND_LENGTH_FIELDS_DONT_MATCH	0x0504
-#define IRDMA_AE_LLP_RECEIVED_MPA_CRC_ERROR				0x0505
-#define IRDMA_AE_LLP_SEGMENT_TOO_SMALL					0x0507
-#define IRDMA_AE_LLP_SYN_RECEIVED					0x0508
-#define IRDMA_AE_LLP_TERMINATE_RECEIVED					0x0509
-#define IRDMA_AE_LLP_TOO_MANY_RETRIES					0x050a
-#define IRDMA_AE_LLP_TOO_MANY_KEEPALIVE_RETRIES				0x050b
-#define IRDMA_AE_LLP_DOUBT_REACHABILITY					0x050c
-#define IRDMA_AE_LLP_CONNECTION_ESTABLISHED				0x050e
-#define IRDMA_AE_LLP_TOO_MANY_RNRS					0x050f
-#define IRDMA_AE_RESOURCE_EXHAUSTION					0x0520
-#define IRDMA_AE_RESET_SENT						0x0601
-#define IRDMA_AE_TERMINATE_SENT						0x0602
-#define IRDMA_AE_RESET_NOT_SENT						0x0603
-#define IRDMA_AE_LCE_QP_CATASTROPHIC					0x0700
-#define IRDMA_AE_LCE_FUNCTION_CATASTROPHIC				0x0701
-#define IRDMA_AE_LCE_CQ_CATASTROPHIC					0x0702
-#define IRDMA_AE_REMOTE_QP_CATASTROPHIC					0x0703
-#define IRDMA_AE_LOCAL_QP_CATASTROPHIC					0x0704
-#define IRDMA_AE_RCE_QP_CATASTROPHIC					0x0705
-#define IRDMA_AE_QP_SUSPEND_COMPLETE					0x0900
-#define IRDMA_AE_CQP_DEFERRED_COMPLETE					0x0901
-#define IRDMA_AE_ADAPTER_CATASTROPHIC					0x0B0B
-
 #define FLD_LS_64(dev, val, field)	\
 	(((u64)(val) << (dev)->hw_shifts[field ## _S]) & (dev)->hw_masks[field ## _M])
 #define FLD_RS_64(dev, val, field)	\
@@ -771,6 +670,10 @@ enum irdma_cqp_op_type {
 #define IRDMA_CQPSQ_FWQE_USERFLCODE BIT_ULL(60)
 #define IRDMA_CQPSQ_FWQE_FLUSHSQ BIT_ULL(61)
 #define IRDMA_CQPSQ_FWQE_FLUSHRQ BIT_ULL(62)
+#define IRDMA_CQPSQ_FWQE_ERR_SQ_IDX_VALID BIT_ULL(42)
+#define IRDMA_CQPSQ_FWQE_ERR_SQ_IDX GENMASK_ULL(49, 32)
+#define IRDMA_CQPSQ_FWQE_ERR_RQ_IDX_VALID BIT_ULL(43)
+#define IRDMA_CQPSQ_FWQE_ERR_RQ_IDX GENMASK_ULL(46, 32)
 #define IRDMA_CQPSQ_MAPT_PORT GENMASK_ULL(15, 0)
 #define IRDMA_CQPSQ_MAPT_ADDPORT BIT_ULL(62)
 #define IRDMA_CQPSQ_UPESD_SDCMD GENMASK_ULL(31, 0)
diff --git a/drivers/infiniband/hw/irdma/hw.c b/drivers/infiniband/hw/irdma/hw.c
index 4bc98fa2d3a5..6239205e09d0 100644
--- a/drivers/infiniband/hw/irdma/hw.c
+++ b/drivers/infiniband/hw/irdma/hw.c
@@ -135,76 +135,24 @@ static void irdma_process_ceq(struct irdma_pci_f *rf, struct irdma_ceq *ceq)
 static void irdma_set_flush_fields(struct irdma_sc_qp *qp,
 				   struct irdma_aeqe_info *info)
 {
+	struct qp_err_code qp_err;
+
 	qp->sq_flush_code = info->sq;
 	qp->rq_flush_code = info->rq;
-	qp->event_type = IRDMA_QP_EVENT_CATASTROPHIC;
-
-	switch (info->ae_id) {
-	case IRDMA_AE_AMP_BOUNDS_VIOLATION:
-	case IRDMA_AE_AMP_INVALID_STAG:
-	case IRDMA_AE_AMP_RIGHTS_VIOLATION:
-	case IRDMA_AE_AMP_UNALLOCATED_STAG:
-	case IRDMA_AE_AMP_BAD_PD:
-	case IRDMA_AE_AMP_BAD_QP:
-	case IRDMA_AE_AMP_BAD_STAG_KEY:
-	case IRDMA_AE_AMP_BAD_STAG_INDEX:
-	case IRDMA_AE_AMP_TO_WRAP:
-	case IRDMA_AE_PRIV_OPERATION_DENIED:
-		qp->flush_code = FLUSH_PROT_ERR;
-		qp->event_type = IRDMA_QP_EVENT_ACCESS_ERR;
-		break;
-	case IRDMA_AE_UDA_XMIT_BAD_PD:
-	case IRDMA_AE_WQE_UNEXPECTED_OPCODE:
-		qp->flush_code = FLUSH_LOC_QP_OP_ERR;
-		qp->event_type = IRDMA_QP_EVENT_CATASTROPHIC;
-		break;
-	case IRDMA_AE_UDA_XMIT_DGRAM_TOO_LONG:
-	case IRDMA_AE_UDA_XMIT_DGRAM_TOO_SHORT:
-	case IRDMA_AE_UDA_L4LEN_INVALID:
-	case IRDMA_AE_DDP_UBE_INVALID_MO:
-	case IRDMA_AE_DDP_UBE_DDP_MESSAGE_TOO_LONG_FOR_AVAILABLE_BUFFER:
-		qp->flush_code = FLUSH_LOC_LEN_ERR;
-		qp->event_type = IRDMA_QP_EVENT_CATASTROPHIC;
-		break;
-	case IRDMA_AE_AMP_INVALIDATE_NO_REMOTE_ACCESS_RIGHTS:
-	case IRDMA_AE_IB_REMOTE_ACCESS_ERROR:
-		qp->flush_code = FLUSH_REM_ACCESS_ERR;
-		qp->event_type = IRDMA_QP_EVENT_ACCESS_ERR;
-		break;
-	case IRDMA_AE_LLP_SEGMENT_TOO_SMALL:
-	case IRDMA_AE_LLP_RECEIVED_MPA_CRC_ERROR:
-	case IRDMA_AE_ROCE_RSP_LENGTH_ERROR:
-	case IRDMA_AE_IB_REMOTE_OP_ERROR:
-		qp->flush_code = FLUSH_REM_OP_ERR;
-		qp->event_type = IRDMA_QP_EVENT_CATASTROPHIC;
-		break;
-	case IRDMA_AE_LCE_QP_CATASTROPHIC:
-		qp->flush_code = FLUSH_FATAL_ERR;
-		qp->event_type = IRDMA_QP_EVENT_CATASTROPHIC;
-		break;
-	case IRDMA_AE_IB_RREQ_AND_Q1_FULL:
-		qp->flush_code = FLUSH_GENERAL_ERR;
-		break;
-	case IRDMA_AE_LLP_TOO_MANY_RETRIES:
-		qp->flush_code = FLUSH_RETRY_EXC_ERR;
-		qp->event_type = IRDMA_QP_EVENT_CATASTROPHIC;
-		break;
-	case IRDMA_AE_AMP_MWBIND_INVALID_RIGHTS:
-	case IRDMA_AE_AMP_MWBIND_BIND_DISABLED:
-	case IRDMA_AE_AMP_MWBIND_INVALID_BOUNDS:
-	case IRDMA_AE_AMP_MWBIND_VALID_STAG:
-		qp->flush_code = FLUSH_MW_BIND_ERR;
-		qp->event_type = IRDMA_QP_EVENT_ACCESS_ERR;
-		break;
-	case IRDMA_AE_IB_INVALID_REQUEST:
-		qp->flush_code = FLUSH_REM_INV_REQ_ERR;
-		qp->event_type = IRDMA_QP_EVENT_REQ_ERR;
-		break;
-	default:
-		qp->flush_code = FLUSH_GENERAL_ERR;
-		qp->event_type = IRDMA_QP_EVENT_CATASTROPHIC;
-		break;
+	if (qp->qp_uk.uk_attrs->hw_rev >= IRDMA_GEN_3) {
+		if (info->sq) {
+			qp->err_sq_idx_valid = true;
+			qp->err_sq_idx = info->wqe_idx;
+		}
+		if (info->rq) {
+			qp->err_rq_idx_valid = true;
+			qp->err_rq_idx = info->wqe_idx;
+		}
 	}
+
+	qp_err = irdma_ae_to_qp_err_code(info->ae_id);
+	qp->flush_code = qp_err.flush_code;
+	qp->event_type = qp_err.event_type;
 }
 
 /**
@@ -320,7 +268,6 @@ static void irdma_process_aeq(struct irdma_pci_f *rf)
 			if (info->ae_id != IRDMA_AE_QP_SUSPEND_COMPLETE)
 				iwqp->last_aeq = info->ae_id;
 			spin_unlock_irqrestore(&iwqp->lock, flags);
-			ctx_info = &iwqp->ctx_info;
 		} else if (info->srq) {
 			if (info->ae_id != IRDMA_AE_SRQ_LIMIT)
 				continue;
@@ -466,9 +413,11 @@ static void irdma_process_aeq(struct irdma_pci_f *rf)
 		default:
 			ibdev_err(&iwdev->ibdev, "abnormal ae_id = 0x%x bool qp=%d qp_id = %d, ae_src=%d\n",
 				  info->ae_id, info->qp, info->qp_cq_id, info->ae_src);
-			if (rdma_protocol_roce(&iwdev->ibdev, 1)) {
-				ctx_info->roce_info->err_rq_idx_valid = info->rq;
-				if (info->rq) {
+			ctx_info = &iwqp->ctx_info;
+			if (rdma_protocol_roce(&iwqp->iwdev->ibdev, 1)) {
+				ctx_info->roce_info->err_rq_idx_valid =
+					ctx_info->srq_valid ? false : info->err_rq_idx_valid;
+				if (ctx_info->roce_info->err_rq_idx_valid) {
 					ctx_info->roce_info->err_rq_idx = info->wqe_idx;
 					irdma_sc_qp_setctx_roce(&iwqp->sc_qp, iwqp->host_ctx.va,
 								ctx_info);
@@ -2832,7 +2781,9 @@ void irdma_flush_wqes(struct irdma_qp *iwqp, u32 flush_mask)
 	struct irdma_pci_f *rf = iwqp->iwdev->rf;
 	u8 flush_code = iwqp->sc_qp.flush_code;
 
-	if (!(flush_mask & IRDMA_FLUSH_SQ) && !(flush_mask & IRDMA_FLUSH_RQ))
+	if ((!(flush_mask & IRDMA_FLUSH_SQ) &&
+	     !(flush_mask & IRDMA_FLUSH_RQ)) ||
+	    ((flush_mask & IRDMA_REFLUSH) && rf->rdma_ver >= IRDMA_GEN_3))
 		return;
 
 	/* Set flush info fields*/
@@ -2845,6 +2796,10 @@ void irdma_flush_wqes(struct irdma_qp *iwqp, u32 flush_mask)
 	info.rq_major_code = IRDMA_FLUSH_MAJOR_ERR;
 	info.rq_minor_code = FLUSH_GENERAL_ERR;
 	info.userflushcode = true;
+	info.err_sq_idx_valid = iwqp->sc_qp.err_sq_idx_valid;
+	info.err_sq_idx = iwqp->sc_qp.err_sq_idx;
+	info.err_rq_idx_valid = iwqp->sc_qp.err_rq_idx_valid;
+	info.err_rq_idx = iwqp->sc_qp.err_rq_idx;
 
 	if (flush_mask & IRDMA_REFLUSH) {
 		if (info.sq)
diff --git a/drivers/infiniband/hw/irdma/type.h b/drivers/infiniband/hw/irdma/type.h
index 8e7558cb7aa6..665dc74cb10a 100644
--- a/drivers/infiniband/hw/irdma/type.h
+++ b/drivers/infiniband/hw/irdma/type.h
@@ -97,12 +97,6 @@ enum irdma_term_mpa_errors {
 	MPA_REQ_RSP = 0x04,
 };
 
-enum irdma_qp_event_type {
-	IRDMA_QP_EVENT_CATASTROPHIC,
-	IRDMA_QP_EVENT_ACCESS_ERR,
-	IRDMA_QP_EVENT_REQ_ERR,
-};
-
 enum irdma_hw_stats_index {
 	/* gen1 - 32-bit */
 	IRDMA_HW_STAT_INDEX_IP4RXDISCARD	= 0,
@@ -565,6 +559,10 @@ struct irdma_sc_qp {
 	bool virtual_map:1;
 	bool flush_sq:1;
 	bool flush_rq:1;
+	bool err_sq_idx_valid:1;
+	bool err_rq_idx_valid:1;
+	u32 err_sq_idx;
+	u32 err_rq_idx;
 	bool sq_flush_code:1;
 	bool rq_flush_code:1;
 	u32 pkt_limit;
@@ -1289,6 +1287,8 @@ struct irdma_cqp_manage_push_page_info {
 };
 
 struct irdma_qp_flush_info {
+	u32 err_sq_idx;
+	u32 err_rq_idx;
 	u16 sq_minor_code;
 	u16 sq_major_code;
 	u16 rq_minor_code;
@@ -1299,6 +1299,8 @@ struct irdma_qp_flush_info {
 	bool rq:1;
 	bool userflushcode:1;
 	bool generate_ae:1;
+	bool err_sq_idx_valid:1;
+	bool err_rq_idx_valid:1;
 };
 
 struct irdma_gen_ae_info {
diff --git a/drivers/infiniband/hw/irdma/uk.c b/drivers/infiniband/hw/irdma/uk.c
index fb944c49f864..ce1ae10c30fc 100644
--- a/drivers/infiniband/hw/irdma/uk.c
+++ b/drivers/infiniband/hw/irdma/uk.c
@@ -1148,6 +1148,7 @@ int irdma_uk_cq_poll_cmpl(struct irdma_cq_uk *cq,
 	__le64 *cqe;
 	struct irdma_qp_uk *qp;
 	struct irdma_srq_uk *srq;
+	struct qp_err_code qp_err;
 	u8 is_srq;
 	struct irdma_ring *pring = NULL;
 	u32 wqe_idx;
@@ -1233,16 +1234,35 @@ int irdma_uk_cq_poll_cmpl(struct irdma_cq_uk *cq,
 	if (info->error) {
 		info->major_err = FIELD_GET(IRDMA_CQ_MAJERR, qword3);
 		info->minor_err = FIELD_GET(IRDMA_CQ_MINERR, qword3);
-		if (info->major_err == IRDMA_FLUSH_MAJOR_ERR) {
-			info->comp_status = IRDMA_COMPL_STATUS_FLUSHED;
+		switch (info->major_err) {
+		case IRDMA_SRQFLUSH_RSVD_MAJOR_ERR:
+			qp_err = irdma_ae_to_qp_err_code(info->minor_err);
+			info->minor_err = qp_err.flush_code;
+			fallthrough;
+		case IRDMA_FLUSH_MAJOR_ERR:
 			/* Set the min error to standard flush error code for remaining cqes */
 			if (info->minor_err != FLUSH_GENERAL_ERR) {
 				qword3 &= ~IRDMA_CQ_MINERR;
 				qword3 |= FIELD_PREP(IRDMA_CQ_MINERR, FLUSH_GENERAL_ERR);
 				set_64bit_val(cqe, 24, qword3);
 			}
-		} else {
-			info->comp_status = IRDMA_COMPL_STATUS_UNKNOWN;
+			info->comp_status = IRDMA_COMPL_STATUS_FLUSHED;
+			break;
+		default:
+#define IRDMA_CIE_SIGNATURE 0xE
+#define IRDMA_CQMAJERR_HIGH_NIBBLE GENMASK(15, 12)
+			if (info->q_type == IRDMA_CQE_QTYPE_SQ &&
+			    qp->qp_type == IRDMA_QP_TYPE_ROCE_UD &&
+			    FIELD_GET(IRDMA_CQMAJERR_HIGH_NIBBLE, info->major_err)
+			    == IRDMA_CIE_SIGNATURE) {
+				info->error = 0;
+				info->major_err = 0;
+				info->minor_err = 0;
+				info->comp_status = IRDMA_COMPL_STATUS_SUCCESS;
+			} else {
+				info->comp_status = IRDMA_COMPL_STATUS_UNKNOWN;
+			}
+			break;
 		}
 	} else {
 		info->comp_status = IRDMA_COMPL_STATUS_SUCCESS;
@@ -1251,7 +1271,6 @@ int irdma_uk_cq_poll_cmpl(struct irdma_cq_uk *cq,
 	get_64bit_val(cqe, 0, &qword0);
 	get_64bit_val(cqe, 16, &qword2);
 
-	info->tcp_seq_num_rtt = (u32)FIELD_GET(IRDMACQ_TCPSEQNUMRTT, qword0);
 	info->qp_id = (u32)FIELD_GET(IRDMACQ_QPID, qword2);
 	info->ud_src_qpn = (u32)FIELD_GET(IRDMACQ_UDSRCQPN, qword2);
 
@@ -1377,9 +1396,15 @@ int irdma_uk_cq_poll_cmpl(struct irdma_cq_uk *cq,
 	ret_code = 0;
 
 exit:
-	if (!ret_code && info->comp_status == IRDMA_COMPL_STATUS_FLUSHED)
+	if (!ret_code && info->comp_status == IRDMA_COMPL_STATUS_FLUSHED) {
 		if (pring && IRDMA_RING_MORE_WORK(*pring))
-			move_cq_head = false;
+		/* Park CQ head during a flush to generate additional CQEs
+		 * from SW for all unprocessed WQEs. For GEN3 and beyond
+		 * FW will generate/flush these CQEs so move to the next CQE
+		 */
+			move_cq_head = qp->uk_attrs->hw_rev <= IRDMA_GEN_2 ?
+						false : true;
+	}
 
 	if (move_cq_head) {
 		IRDMA_RING_MOVE_HEAD_NOCHECK(cq->cq_ring);
diff --git a/drivers/infiniband/hw/irdma/user.h b/drivers/infiniband/hw/irdma/user.h
index ed7ce98e887b..ab57f689827a 100644
--- a/drivers/infiniband/hw/irdma/user.h
+++ b/drivers/infiniband/hw/irdma/user.h
@@ -46,7 +46,109 @@
 #define IRDMA_OP_TYPE_REC	0x3e
 #define IRDMA_OP_TYPE_REC_IMM	0x3f
 
-#define IRDMA_FLUSH_MAJOR_ERR	1
+#define IRDMA_FLUSH_MAJOR_ERR 1
+#define IRDMA_SRQFLUSH_RSVD_MAJOR_ERR 0xfffe
+
+/* Async Events codes */
+#define IRDMA_AE_AMP_UNALLOCATED_STAG					0x0102
+#define IRDMA_AE_AMP_INVALID_STAG					0x0103
+#define IRDMA_AE_AMP_BAD_QP						0x0104
+#define IRDMA_AE_AMP_BAD_PD						0x0105
+#define IRDMA_AE_AMP_BAD_STAG_KEY					0x0106
+#define IRDMA_AE_AMP_BAD_STAG_INDEX					0x0107
+#define IRDMA_AE_AMP_BOUNDS_VIOLATION					0x0108
+#define IRDMA_AE_AMP_RIGHTS_VIOLATION					0x0109
+#define IRDMA_AE_AMP_TO_WRAP						0x010a
+#define IRDMA_AE_AMP_FASTREG_VALID_STAG					0x010c
+#define IRDMA_AE_AMP_FASTREG_MW_STAG					0x010d
+#define IRDMA_AE_AMP_FASTREG_INVALID_RIGHTS				0x010e
+#define IRDMA_AE_AMP_FASTREG_INVALID_LENGTH				0x0110
+#define IRDMA_AE_AMP_INVALIDATE_SHARED					0x0111
+#define IRDMA_AE_AMP_INVALIDATE_NO_REMOTE_ACCESS_RIGHTS			0x0112
+#define IRDMA_AE_AMP_INVALIDATE_MR_WITH_BOUND_WINDOWS			0x0113
+#define IRDMA_AE_AMP_MWBIND_VALID_STAG					0x0114
+#define IRDMA_AE_AMP_MWBIND_OF_MR_STAG					0x0115
+#define IRDMA_AE_AMP_MWBIND_TO_ZERO_BASED_STAG				0x0116
+#define IRDMA_AE_AMP_MWBIND_TO_MW_STAG					0x0117
+#define IRDMA_AE_AMP_MWBIND_INVALID_RIGHTS				0x0118
+#define IRDMA_AE_AMP_MWBIND_INVALID_BOUNDS				0x0119
+#define IRDMA_AE_AMP_MWBIND_TO_INVALID_PARENT				0x011a
+#define IRDMA_AE_AMP_MWBIND_BIND_DISABLED				0x011b
+#define IRDMA_AE_PRIV_OPERATION_DENIED					0x011c
+#define IRDMA_AE_AMP_INVALIDATE_TYPE1_MW				0x011d
+#define IRDMA_AE_AMP_MWBIND_ZERO_BASED_TYPE1_MW				0x011e
+#define IRDMA_AE_AMP_FASTREG_INVALID_PBL_HPS_CFG			0x011f
+#define IRDMA_AE_AMP_MWBIND_WRONG_TYPE					0x0120
+#define IRDMA_AE_AMP_FASTREG_PBLE_MISMATCH				0x0121
+#define IRDMA_AE_UDA_XMIT_DGRAM_TOO_LONG				0x0132
+#define IRDMA_AE_UDA_XMIT_BAD_PD					0x0133
+#define IRDMA_AE_UDA_XMIT_DGRAM_TOO_SHORT				0x0134
+#define IRDMA_AE_UDA_L4LEN_INVALID					0x0135
+#define IRDMA_AE_BAD_CLOSE						0x0201
+#define IRDMA_AE_RDMAP_ROE_BAD_LLP_CLOSE				0x0202
+#define IRDMA_AE_CQ_OPERATION_ERROR					0x0203
+#define IRDMA_AE_RDMA_READ_WHILE_ORD_ZERO				0x0205
+#define IRDMA_AE_STAG_ZERO_INVALID					0x0206
+#define IRDMA_AE_IB_RREQ_AND_Q1_FULL					0x0207
+#define IRDMA_AE_IB_INVALID_REQUEST					0x0208
+#define IRDMA_AE_SRQ_LIMIT						0x0209
+#define IRDMA_AE_WQE_UNEXPECTED_OPCODE					0x020a
+#define IRDMA_AE_WQE_INVALID_PARAMETER					0x020b
+#define IRDMA_AE_WQE_INVALID_FRAG_DATA					0x020c
+#define IRDMA_AE_IB_REMOTE_ACCESS_ERROR					0x020d
+#define IRDMA_AE_IB_REMOTE_OP_ERROR					0x020e
+#define IRDMA_AE_SRQ_CATASTROPHIC_ERROR					0x020f
+#define IRDMA_AE_WQE_LSMM_TOO_LONG					0x0220
+#define IRDMA_AE_ATOMIC_ALIGNMENT					0x0221
+#define IRDMA_AE_ATOMIC_MASK						0x0222
+#define IRDMA_AE_INVALID_REQUEST					0x0223
+#define IRDMA_AE_PCIE_ATOMIC_DISABLE					0x0224
+#define IRDMA_AE_DDP_INVALID_MSN_GAP_IN_MSN				0x0301
+#define IRDMA_AE_DDP_UBE_DDP_MESSAGE_TOO_LONG_FOR_AVAILABLE_BUFFER	0x0303
+#define IRDMA_AE_DDP_UBE_INVALID_DDP_VERSION				0x0304
+#define IRDMA_AE_DDP_UBE_INVALID_MO					0x0305
+#define IRDMA_AE_DDP_UBE_INVALID_MSN_NO_BUFFER_AVAILABLE		0x0306
+#define IRDMA_AE_DDP_UBE_INVALID_QN					0x0307
+#define IRDMA_AE_DDP_NO_L_BIT						0x0308
+#define IRDMA_AE_RDMAP_ROE_INVALID_RDMAP_VERSION			0x0311
+#define IRDMA_AE_RDMAP_ROE_UNEXPECTED_OPCODE				0x0312
+#define IRDMA_AE_ROE_INVALID_RDMA_READ_REQUEST				0x0313
+#define IRDMA_AE_ROE_INVALID_RDMA_WRITE_OR_READ_RESP			0x0314
+#define IRDMA_AE_ROCE_RSP_LENGTH_ERROR					0x0316
+#define IRDMA_AE_ROCE_EMPTY_MCG						0x0380
+#define IRDMA_AE_ROCE_BAD_MC_IP_ADDR					0x0381
+#define IRDMA_AE_ROCE_BAD_MC_QPID					0x0382
+#define IRDMA_AE_MCG_QP_PROTOCOL_MISMATCH				0x0383
+#define IRDMA_AE_INVALID_ARP_ENTRY					0x0401
+#define IRDMA_AE_INVALID_TCP_OPTION_RCVD				0x0402
+#define IRDMA_AE_STALE_ARP_ENTRY					0x0403
+#define IRDMA_AE_INVALID_AH_ENTRY					0x0406
+#define IRDMA_AE_LLP_CLOSE_COMPLETE					0x0501
+#define IRDMA_AE_LLP_CONNECTION_RESET					0x0502
+#define IRDMA_AE_LLP_FIN_RECEIVED					0x0503
+#define IRDMA_AE_LLP_RECEIVED_MARKER_AND_LENGTH_FIELDS_DONT_MATCH	0x0504
+#define IRDMA_AE_LLP_RECEIVED_MPA_CRC_ERROR				0x0505
+#define IRDMA_AE_LLP_SEGMENT_TOO_SMALL					0x0507
+#define IRDMA_AE_LLP_SYN_RECEIVED					0x0508
+#define IRDMA_AE_LLP_TERMINATE_RECEIVED					0x0509
+#define IRDMA_AE_LLP_TOO_MANY_RETRIES					0x050a
+#define IRDMA_AE_LLP_TOO_MANY_KEEPALIVE_RETRIES				0x050b
+#define IRDMA_AE_LLP_DOUBT_REACHABILITY					0x050c
+#define IRDMA_AE_LLP_CONNECTION_ESTABLISHED				0x050e
+#define IRDMA_AE_LLP_TOO_MANY_RNRS					0x050f
+#define IRDMA_AE_RESOURCE_EXHAUSTION					0x0520
+#define IRDMA_AE_RESET_SENT						0x0601
+#define IRDMA_AE_TERMINATE_SENT						0x0602
+#define IRDMA_AE_RESET_NOT_SENT						0x0603
+#define IRDMA_AE_LCE_QP_CATASTROPHIC					0x0700
+#define IRDMA_AE_LCE_FUNCTION_CATASTROPHIC				0x0701
+#define IRDMA_AE_LCE_CQ_CATASTROPHIC					0x0702
+#define IRDMA_AE_REMOTE_QP_CATASTROPHIC					0x0703
+#define IRDMA_AE_LOCAL_QP_CATASTROPHIC					0x0704
+#define IRDMA_AE_RCE_QP_CATASTROPHIC					0x0705
+#define IRDMA_AE_QP_SUSPEND_COMPLETE					0x0900
+#define IRDMA_AE_CQP_DEFERRED_COMPLETE					0x0901
+#define IRDMA_AE_ADAPTER_CATASTROPHIC					0x0B0B
 
 enum irdma_device_caps_const {
 	IRDMA_WQE_SIZE =			4,
@@ -109,6 +211,13 @@ enum irdma_flush_opcode {
 	FLUSH_RETRY_EXC_ERR,
 	FLUSH_MW_BIND_ERR,
 	FLUSH_REM_INV_REQ_ERR,
+	FLUSH_RNR_RETRY_EXC_ERR,
+};
+
+enum irdma_qp_event_type {
+	IRDMA_QP_EVENT_CATASTROPHIC,
+	IRDMA_QP_EVENT_ACCESS_ERR,
+	IRDMA_QP_EVENT_REQ_ERR,
 };
 
 enum irdma_cmpl_status {
@@ -282,6 +391,11 @@ struct irdma_cq_poll_info {
 	bool imm_valid:1;
 };
 
+struct qp_err_code {
+	enum irdma_flush_opcode flush_code;
+	enum irdma_qp_event_type event_type;
+};
+
 int irdma_uk_atomic_compare_swap(struct irdma_qp_uk *qp,
 				 struct irdma_post_sq_info *info, bool post_sq);
 int irdma_uk_atomic_fetch_add(struct irdma_qp_uk *qp,
@@ -479,4 +593,82 @@ int irdma_get_rqdepth(struct irdma_uk_attrs *uk_attrs, u32 rq_size, u8 shift,
 int irdma_get_srqdepth(struct irdma_uk_attrs *uk_attrs, u32 srq_size, u8 shift,
 		       u32 *srqdepth);
 void irdma_clr_wqes(struct irdma_qp_uk *qp, u32 qp_wqe_idx);
+
+static inline struct qp_err_code irdma_ae_to_qp_err_code(u16 ae_id)
+{
+	struct qp_err_code qp_err = {};
+
+	switch (ae_id) {
+	case IRDMA_AE_AMP_BOUNDS_VIOLATION:
+	case IRDMA_AE_AMP_INVALID_STAG:
+	case IRDMA_AE_AMP_RIGHTS_VIOLATION:
+	case IRDMA_AE_AMP_UNALLOCATED_STAG:
+	case IRDMA_AE_AMP_BAD_PD:
+	case IRDMA_AE_AMP_BAD_QP:
+	case IRDMA_AE_AMP_BAD_STAG_KEY:
+	case IRDMA_AE_AMP_BAD_STAG_INDEX:
+	case IRDMA_AE_AMP_TO_WRAP:
+	case IRDMA_AE_PRIV_OPERATION_DENIED:
+		qp_err.flush_code = FLUSH_PROT_ERR;
+		qp_err.event_type = IRDMA_QP_EVENT_ACCESS_ERR;
+		break;
+	case IRDMA_AE_UDA_XMIT_BAD_PD:
+	case IRDMA_AE_WQE_UNEXPECTED_OPCODE:
+		qp_err.flush_code = FLUSH_LOC_QP_OP_ERR;
+		qp_err.event_type = IRDMA_QP_EVENT_CATASTROPHIC;
+		break;
+	case IRDMA_AE_UDA_XMIT_DGRAM_TOO_SHORT:
+	case IRDMA_AE_UDA_XMIT_DGRAM_TOO_LONG:
+	case IRDMA_AE_UDA_L4LEN_INVALID:
+	case IRDMA_AE_DDP_UBE_INVALID_MO:
+	case IRDMA_AE_DDP_UBE_DDP_MESSAGE_TOO_LONG_FOR_AVAILABLE_BUFFER:
+		qp_err.flush_code = FLUSH_LOC_LEN_ERR;
+		qp_err.event_type = IRDMA_QP_EVENT_CATASTROPHIC;
+		break;
+	case IRDMA_AE_AMP_INVALIDATE_NO_REMOTE_ACCESS_RIGHTS:
+	case IRDMA_AE_IB_REMOTE_ACCESS_ERROR:
+		qp_err.flush_code = FLUSH_REM_ACCESS_ERR;
+		qp_err.event_type = IRDMA_QP_EVENT_ACCESS_ERR;
+		break;
+	case IRDMA_AE_AMP_MWBIND_INVALID_RIGHTS:
+	case IRDMA_AE_AMP_MWBIND_BIND_DISABLED:
+	case IRDMA_AE_AMP_MWBIND_INVALID_BOUNDS:
+	case IRDMA_AE_AMP_MWBIND_VALID_STAG:
+		qp_err.flush_code = FLUSH_MW_BIND_ERR;
+		qp_err.event_type = IRDMA_QP_EVENT_ACCESS_ERR;
+		break;
+	case IRDMA_AE_LLP_TOO_MANY_RETRIES:
+		qp_err.flush_code = FLUSH_RETRY_EXC_ERR;
+		qp_err.event_type = IRDMA_QP_EVENT_CATASTROPHIC;
+		break;
+	case IRDMA_AE_IB_INVALID_REQUEST:
+		qp_err.flush_code = FLUSH_REM_INV_REQ_ERR;
+		qp_err.event_type = IRDMA_QP_EVENT_REQ_ERR;
+		break;
+	case IRDMA_AE_LLP_SEGMENT_TOO_SMALL:
+	case IRDMA_AE_LLP_RECEIVED_MPA_CRC_ERROR:
+	case IRDMA_AE_ROCE_RSP_LENGTH_ERROR:
+	case IRDMA_AE_IB_REMOTE_OP_ERROR:
+		qp_err.flush_code = FLUSH_REM_OP_ERR;
+		qp_err.event_type = IRDMA_QP_EVENT_CATASTROPHIC;
+		break;
+	case IRDMA_AE_LLP_TOO_MANY_RNRS:
+		qp_err.flush_code = FLUSH_RNR_RETRY_EXC_ERR;
+		qp_err.event_type = IRDMA_QP_EVENT_CATASTROPHIC;
+		break;
+	case IRDMA_AE_LCE_QP_CATASTROPHIC:
+	case IRDMA_AE_REMOTE_QP_CATASTROPHIC:
+	case IRDMA_AE_LOCAL_QP_CATASTROPHIC:
+	case IRDMA_AE_RCE_QP_CATASTROPHIC:
+		qp_err.flush_code = FLUSH_FATAL_ERR;
+		qp_err.event_type = IRDMA_QP_EVENT_CATASTROPHIC;
+		break;
+	default:
+		qp_err.flush_code = FLUSH_GENERAL_ERR;
+		qp_err.event_type = IRDMA_QP_EVENT_CATASTROPHIC;
+		break;
+	}
+
+	return qp_err;
+}
 #endif /* IRDMA_USER_H */
diff --git a/drivers/infiniband/hw/irdma/verbs.c b/drivers/infiniband/hw/irdma/verbs.c
index d144d0a7fd3e..495fa34b77af 100644
--- a/drivers/infiniband/hw/irdma/verbs.c
+++ b/drivers/infiniband/hw/irdma/verbs.c
@@ -542,10 +542,10 @@ static int irdma_destroy_qp(struct ib_qp *ibqp, struct ib_udata *udata)
 
 	iwqp->sc_qp.qp_uk.destroy_pending = true;
 
-	if (iwqp->iwarp_state == IRDMA_QP_STATE_RTS)
+	if (iwqp->iwarp_state >= IRDMA_QP_STATE_IDLE)
 		irdma_modify_qp_to_err(&iwqp->sc_qp);
 
-	if (!iwqp->user_mode)
+	if (iwdev->rf->rdma_ver <= IRDMA_GEN_2 && !iwqp->user_mode)
 		cancel_delayed_work_sync(&iwqp->dwork_flush);
 
 	if (!iwqp->user_mode) {
@@ -4110,9 +4110,11 @@ static int irdma_post_send(struct ib_qp *ibqp,
 		spin_unlock_irqrestore(&iwqp->lock, flags);
 	} else {
 		spin_unlock_irqrestore(&iwqp->lock, flags);
-		mod_delayed_work(iwqp->iwdev->cleanup_wq, &iwqp->dwork_flush,
+		mod_delayed_work(iwqp->iwdev->cleanup_wq,
+				 &iwqp->dwork_flush,
 				 msecs_to_jiffies(IRDMA_FLUSH_DELAY_MS));
 	}
+
 	if (err)
 		*bad_wr = ib_wr;
 
@@ -4236,6 +4238,8 @@ static enum ib_wc_status irdma_flush_err_to_ib_wc_status(enum irdma_flush_opcode
 		return IB_WC_MW_BIND_ERR;
 	case FLUSH_REM_INV_REQ_ERR:
 		return IB_WC_REM_INV_REQ_ERR;
+	case FLUSH_RNR_RETRY_EXC_ERR:
+		return IB_WC_RNR_RETRY_EXC_ERR;
 	case FLUSH_FATAL_ERR:
 	default:
 		return IB_WC_FATAL_ERR;
-- 
2.37.3

