Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC5FA2CEA7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 22:02:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7822070540;
	Fri,  7 Feb 2025 21:01:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LWnJYMPkE1XC; Fri,  7 Feb 2025 21:01:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D76770522
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738962102;
	bh=zZyRZpNo7YUoLNzNl/U8EZsU7vH5yttpqOgxa9P51OE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EMXsfNx3LwogbqCVs9iRzWFI6H35df6DWOxCd1UlI78AVls1e/z53jYGt2RSUizMd
	 Qz88DHZb3Tp0+2V5iEA6K7etAtbVbMElALTuCmCg/mlkAgYqjfTJPHONC++jqlvDM+
	 7lrOzXMejbwNY7ttvGB59oJOlYtAjKYkq4j6o21oEdnjZEy5Z0kkDJo/E7Iwd/Zk8w
	 MQLun9sBTy2G84oIfCqL7PySm5xI4pgSGSwMab6Z3CloZLVsZdNwDptsL2EBmy9MZy
	 qOPtKzdyc+vVgrNpxHhPgfIKJBo/q1ZqZLi+Qo+QRKKm3BVFA8E/0JZ/FYLwdPP864
	 8ztUFswd7UoZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D76770522;
	Fri,  7 Feb 2025 21:01:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 05B471B5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 10DAA81197
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BFJDDSIJGDe4 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 19:50:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=tatyana.e.nikolova@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C893D81008
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C893D81008
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C893D81008
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:31 +0000 (UTC)
X-CSE-ConnectionGUID: XVJDwHhpRU67ItxUViF8bw==
X-CSE-MsgGUID: Si+E5kTPT72741GwtjUrWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="42451831"
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="42451831"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 11:50:31 -0800
X-CSE-ConnectionGUID: sOMe5iTkSruDUChKmX61Hw==
X-CSE-MsgGUID: cYNYvPHuQ7+rcws5pUZMwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="112238237"
Received: from tenikolo-mobl1.amr.corp.intel.com ([10.124.81.134])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 11:50:31 -0800
From: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
To: jgg@nvidia.com,
	leon@kernel.org,
	intel-wired-lan@lists.osuosl.org
Cc: linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 Vinoth Kumar Chandra Mohan <vinoth.kumar.chandra.mohan@intel.com>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>
Date: Fri,  7 Feb 2025 13:49:24 -0600
Message-Id: <20250207194931.1569-18-tatyana.e.nikolova@intel.com>
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
 bh=r1oFtMTh+LoSSliDKk+9SgWZ2dhOpaPsV0/WLizLsQs=;
 b=MZhItSl1LqnCqhXYvdk8aXFhhEM+ndjYrlYdgweBJXvZ5L1pbiinKqkM
 ZoGqIVcDlq9uVbvptWMMRZfjP4sHv/M6o+vnh8JBeInlDn6Lg/S1GiINA
 wziLi3ZfdHEGNntg6mgPDHRhKWVB4X2G3b//DCzL0Qcz9F8ZGe0jlsFzo
 6uJFW8/PGstkgsF6ZGAHZj5wQLpYQHsRwy4eXtupeyOkYuMrqe+asI2wi
 2w6FzZ/WyC8XRTmccBBd5fmMphEfhYhokoTtolZ5+p3qEsRq4aowKjHp0
 qe5TaB6jHonOBJSdto8RHgVZEv5lOWlwuqSsVZbNn31j9VfeEnRtQfuWc
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MZhItSl1
Subject: [Intel-wired-lan] [rdma v3 17/24] RDMA/irdma: Add support for V2
 HMC resource management scheme
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

From: Vinoth Kumar Chandra Mohan <vinoth.kumar.chandra.mohan@intel.com>

HMC resource initialization is updated to support V1 or V2 approach
based on the FW capability. In the V2 approach, driver receives the
assigned HMC resources count and verifies if it will fit in the given
local memory. If it doesn't fit, the driver load fails.

Signed-off-by: Vinoth Kumar Chandra Mohan <vinoth.kumar.chandra.mohan@intel.com>
Signed-off-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
---
 drivers/infiniband/hw/irdma/ctrl.c | 121 ++++++++++++++++++++++++++++-
 drivers/infiniband/hw/irdma/defs.h |   3 +
 drivers/infiniband/hw/irdma/type.h |  25 +++---
 3 files changed, 130 insertions(+), 19 deletions(-)

diff --git a/drivers/infiniband/hw/irdma/ctrl.c b/drivers/infiniband/hw/irdma/ctrl.c
index 52bb87f4b2c5..d01c55172f6a 100644
--- a/drivers/infiniband/hw/irdma/ctrl.c
+++ b/drivers/infiniband/hw/irdma/ctrl.c
@@ -2901,6 +2901,41 @@ static int irdma_sc_cq_modify(struct irdma_sc_cq *cq,
 	return 0;
 }
 
+/**
+ * irdma_sc_get_decoded_ird_size_gen_3 - get decoded IRD size for GEN 3
+ * @ird_enc: IRD encoding
+ * IRD size defaults to a value of 4 in case of invalid input.
+ */
+static u16 irdma_sc_get_decoded_ird_size_gen_3(u8 ird_enc)
+{
+	switch (ird_enc) {
+	case IRDMA_IRD_HW_SIZE_4096_GEN3:
+		return 4096;
+	case IRDMA_IRD_HW_SIZE_2048_GEN3:
+		return 2048;
+	case IRDMA_IRD_HW_SIZE_1024_GEN3:
+		return 1024;
+	case IRDMA_IRD_HW_SIZE_512_GEN3:
+		return 512;
+	case IRDMA_IRD_HW_SIZE_256_GEN3:
+		return 256;
+	case IRDMA_IRD_HW_SIZE_128_GEN3:
+		return 128;
+	case IRDMA_IRD_HW_SIZE_64_GEN3:
+		return 64;
+	case IRDMA_IRD_HW_SIZE_32_GEN3:
+		return 32;
+	case IRDMA_IRD_HW_SIZE_16_GEN3:
+		return 16;
+	case IRDMA_IRD_HW_SIZE_8_GEN3:
+		return 8;
+	case IRDMA_IRD_HW_SIZE_4_GEN3:
+		return 4;
+	default:
+		return 4;
+	}
+}
+
 /**
  * irdma_check_cqp_progress - check cqp processing progress
  * @timeout: timeout info struct
@@ -3212,6 +3247,7 @@ static int irdma_sc_parse_fpm_query_buf(struct irdma_sc_dev *dev, __le64 *buf,
 					struct irdma_hmc_fpm_misc *hmc_fpm_misc)
 {
 	struct irdma_hmc_obj_info *obj_info;
+	u8 ird_encoding;
 	u64 temp;
 	u32 size;
 	u16 max_pe_sds;
@@ -3287,6 +3323,14 @@ static int irdma_sc_parse_fpm_query_buf(struct irdma_sc_dev *dev, __le64 *buf,
 	hmc_fpm_misc->max_ceqs = FIELD_GET(IRDMA_QUERY_FPM_MAX_CEQS, temp);
 	hmc_fpm_misc->ht_multiplier = FIELD_GET(IRDMA_QUERY_FPM_HTMULTIPLIER, temp);
 	hmc_fpm_misc->timer_bucket = FIELD_GET(IRDMA_QUERY_FPM_TIMERBUCKET, temp);
+	if (FIELD_GET(IRDMA_MANAGE_RSRC_VER2,
+		      dev->feature_info[IRDMA_FTN_FLAGS])) {
+		ird_encoding = (u8)FIELD_GET(IRDMA_QUERY_FPM_MAX_IRD, temp);
+		hmc_fpm_misc->ird =
+			irdma_sc_get_decoded_ird_size_gen_3(ird_encoding) / 2;
+		dev->hw_attrs.max_hw_ird = hmc_fpm_misc->ird;
+		dev->hw_attrs.max_hw_ord = hmc_fpm_misc->ird;
+	}
 	if (dev->hw_attrs.uk_attrs.hw_rev == IRDMA_GEN_1)
 		return 0;
 	irdma_sc_decode_fpm_query(buf, 96, obj_info, IRDMA_HMC_IW_FSIMC);
@@ -5444,10 +5488,71 @@ static void irdma_set_host_hmc_rsrc_gen_3(struct irdma_sc_dev *dev)
 		avail_sds -= DIV_ROUND_UP(mrwanted, MAX_MR_PER_SD);
 	}
 
+	if (FIELD_GET(IRDMA_MANAGE_RSRC_VER2, dev->feature_info[IRDMA_FTN_FLAGS]) &&
+	    pblewanted > avail_sds * MAX_PBLE_PER_SD)
+		ibdev_dbg(to_ibdev(dev),
+			  "HMC: Warn: Resource version 2: pble wanted = 0x%x available = 0x%x\n",
+			  pblewanted, avail_sds * MAX_PBLE_PER_SD);
+
 	pblewanted = min(pblewanted, avail_sds * MAX_PBLE_PER_SD);
 	hmc_info->hmc_obj[IRDMA_HMC_IW_PBLE].cnt = pblewanted;
 }
 
+/**
+ * irdma_verify_commit_fpm_gen_3 - verify query fpm values
+ * @dev: sc device struct
+ * @max_pages: max local memory available
+ * @qpwanted: number of qp's wanted
+ */
+static int irdma_verify_commit_fpm_gen_3(struct irdma_sc_dev *dev,
+					 u32 max_pages,
+					 u32 qpwanted)
+{
+	struct irdma_hmc_fpm_misc *hmc_fpm_misc;
+	u32 rrf_cnt, xf_cnt, timer_cnt, pages_needed;
+	struct irdma_hmc_info *hmc_info;
+	u32 rrffl_cnt = 0;
+	u32 xffl_cnt = 0;
+	u32 q1fl_cnt;
+
+	hmc_info = dev->hmc_info;
+	hmc_fpm_misc = &dev->hmc_fpm_misc;
+
+	rrf_cnt = roundup_pow_of_two(IRDMA_RRF_MULTIPLIER * qpwanted);
+
+	if (hmc_info->hmc_obj[IRDMA_HMC_IW_RRFFL].max_cnt)
+		rrffl_cnt =
+			hmc_info->hmc_obj[IRDMA_HMC_IW_RRF].cnt /
+			hmc_fpm_misc->rrf_block_size;
+
+	xf_cnt = roundup_pow_of_two(IRDMA_XF_MULTIPLIER * qpwanted);
+
+	if (xf_cnt)
+		xffl_cnt = xf_cnt / hmc_fpm_misc->xf_block_size;
+
+	timer_cnt = (round_up(qpwanted, 512) / 512 + 1) *
+		hmc_fpm_misc->timer_bucket;
+
+	q1fl_cnt = hmc_info->hmc_obj[IRDMA_HMC_IW_Q1].cnt / hmc_fpm_misc->q1_block_size;
+
+	pages_needed = irdma_get_objs_pages(dev, hmc_info, IRDMA_LOC_MEM);
+	if (pages_needed > max_pages) {
+		ibdev_dbg(to_ibdev(dev),
+			  "HMC: FAIL: SW counts rrf_cnt = %u rrffl_cnt = %u timer_cnt = %u",
+			  rrf_cnt, rrffl_cnt, timer_cnt);
+		ibdev_dbg(to_ibdev(dev),
+			  "HMC: FAIL: SW counts xf_cnt = %u xffl_cnt = %u q1fl_cnt = %u",
+			  xf_cnt, xffl_cnt, q1fl_cnt);
+
+		return -EINVAL;
+	}
+
+	hmc_fpm_misc->max_sds -= pages_needed;
+	hmc_fpm_misc->loc_mem_pages -= pages_needed;
+
+	return 0;
+}
+
 /**
  * irdma_set_loc_hmc_rsrc_gen_3 - calculate hmc resources for gen 3
  * @dev: sc device struct
@@ -5463,6 +5568,9 @@ static int irdma_set_loc_hmc_rsrc_gen_3(struct irdma_sc_dev *dev,
 	struct irdma_hmc_info *hmc_info;
 	u32 ird, ord;
 
+	if (FIELD_GET(IRDMA_MANAGE_RSRC_VER2, dev->feature_info[IRDMA_FTN_FLAGS]))
+		return irdma_verify_commit_fpm_gen_3(dev, max_pages, qpwanted);
+
 	hmc_info = dev->hmc_info;
 	hmc_fpm_misc = &dev->hmc_fpm_misc;
 	ird = dev->hw_attrs.max_hw_ird;
@@ -5563,9 +5671,12 @@ static int cfg_fpm_value_gen_3(struct irdma_sc_dev *dev,
 	hmc_info->hmc_obj[IRDMA_HMC_IW_OOISCFFL].max_cnt = 0;
 	hmc_info->hmc_obj[IRDMA_HMC_IW_HTE].max_cnt = 0;
 	hmc_info->hmc_obj[IRDMA_HMC_IW_FSIMC].max_cnt = 0;
-	hmc_info->hmc_obj[IRDMA_HMC_IW_FSIAV].max_cnt =
-		min(hmc_info->hmc_obj[IRDMA_HMC_IW_FSIAV].max_cnt,
-		    (u32)IRDMA_FSIAV_CNT_MAX);
+
+	if (!FIELD_GET(IRDMA_MANAGE_RSRC_VER2, dev->feature_info[IRDMA_FTN_FLAGS]))
+		hmc_info->hmc_obj[IRDMA_HMC_IW_FSIAV].max_cnt =
+			min(hmc_info->hmc_obj[IRDMA_HMC_IW_FSIAV].max_cnt,
+			(u32)IRDMA_FSIAV_CNT_MAX);
+
 	for (i = IRDMA_HMC_IW_QP; i < IRDMA_HMC_IW_MAX; i++)
 		hmc_info->hmc_obj[i].cnt = hmc_info->hmc_obj[i].max_cnt;
 
@@ -5573,6 +5684,9 @@ static int cfg_fpm_value_gen_3(struct irdma_sc_dev *dev,
 		if (!irdma_set_loc_hmc_rsrc_gen_3(dev, loc_mem_pages, qpwanted))
 			break;
 
+		if (FIELD_GET(IRDMA_MANAGE_RSRC_VER2, dev->feature_info[IRDMA_FTN_FLAGS]))
+			return -EINVAL;
+
 		qpwanted /= 2;
 		if (mrte_loc == IRDMA_LOC_MEM) {
 			mrwanted = qpwanted * IRDMA_MIN_MR_PER_QP;
@@ -5659,6 +5773,7 @@ int irdma_cfg_fpm_val(struct irdma_sc_dev *dev, u32 qp_count)
 		  hmc_info->hmc_obj[IRDMA_HMC_IW_PBLE].max_cnt,
 		  hmc_info->hmc_obj[IRDMA_HMC_IW_FSIMC].max_cnt,
 		  hmc_info->hmc_obj[IRDMA_HMC_IW_FSIAV].max_cnt);
+
 	hmc_info->hmc_obj[IRDMA_HMC_IW_FSIMC].cnt =
 		hmc_info->hmc_obj[IRDMA_HMC_IW_FSIMC].max_cnt;
 	hmc_info->hmc_obj[IRDMA_HMC_IW_FSIAV].cnt =
diff --git a/drivers/infiniband/hw/irdma/defs.h b/drivers/infiniband/hw/irdma/defs.h
index 1eff7d8d8f15..d8f5ad23770b 100644
--- a/drivers/infiniband/hw/irdma/defs.h
+++ b/drivers/infiniband/hw/irdma/defs.h
@@ -757,6 +757,7 @@ enum irdma_cqp_op_type {
 #define IRDMA_CQPSQ_SUSPENDQP_QPID GENMASK_ULL(23, 0)
 #define IRDMA_CQPSQ_RESUMEQP_QSHANDLE GENMASK_ULL(31, 0)
 #define IRDMA_CQPSQ_RESUMEQP_QPID GENMASK(23, 0)
+#define IRDMA_MANAGE_RSRC_VER2 BIT_ULL(2)
 
 #define IRDMA_CQPSQ_MIN_STAG_INVALID 0x0001
 #define IRDMA_CQPSQ_MIN_SUSPEND_PND 0x0005
@@ -909,6 +910,7 @@ enum irdma_cqp_op_type {
 #define IRDMA_FEATURE_INFO GENMASK_ULL(47, 0)
 #define IRDMA_FEATURE_CNT GENMASK_ULL(47, 32)
 #define IRDMA_FEATURE_TYPE GENMASK_ULL(63, 48)
+#define IRDMA_FEATURE_RSRC_MAX GENMASK_ULL(31, 0)
 
 #define IRDMAQPSQ_OPCODE GENMASK_ULL(37, 32)
 #define IRDMAQPSQ_COPY_HOST_PBL BIT_ULL(43)
@@ -986,6 +988,7 @@ enum irdma_cqp_op_type {
 #define IRDMA_QUERY_FPM_MAX_PE_SDS GENMASK_ULL(44, 32)
 #define IRDMA_QUERY_FPM_MAX_PE_SDS_GEN3 GENMASK_ULL(47, 32)
 #define IRDMA_QUERY_FPM_MAX_CEQS GENMASK_ULL(9, 0)
+#define IRDMA_QUERY_FPM_MAX_IRD GENMASK_ULL(53, 50)
 #define IRDMA_QUERY_FPM_XFBLOCKSIZE GENMASK_ULL(63, 32)
 #define IRDMA_QUERY_FPM_Q1BLOCKSIZE GENMASK_ULL(63, 32)
 #define IRDMA_QUERY_FPM_HTMULTIPLIER GENMASK_ULL(19, 16)
diff --git a/drivers/infiniband/hw/irdma/type.h b/drivers/infiniband/hw/irdma/type.h
index b258a7cb4dd9..1aeca41a46a3 100644
--- a/drivers/infiniband/hw/irdma/type.h
+++ b/drivers/infiniband/hw/irdma/type.h
@@ -180,22 +180,14 @@ enum irdma_feature_type {
 	IRDMA_CQ_MAX_INCR     = 3,
 	IRDMA_CEQ_MAX_INCR    = 4,
 	IRDMA_SD_MAX_INCR     = 5,
-	IRDMA_QP_SMALL        = 6,
-	IRDMA_QP_MEDIUM       = 7,
-	IRDMA_QP_LARGE        = 8,
-	IRDMA_QP_XLARGE       = 9,
-	IRDMA_CQ_SMALL        = 10,
-	IRDMA_CQ_MEDIUM       = 11,
-	IRDMA_CQ_LARGE        = 12,
-	IRDMA_CQ_XLARGE       = 13,
-	IRDMA_CEQ_SMALL       = 14,
-	IRDMA_CEQ_MEDIUM      = 15,
-	IRDMA_CEQ_LARGE       = 16,
-	IRDMA_CEQ_XLARGE      = 17,
-	IRDMA_SD_SMALL        = 18,
-	IRDMA_SD_MEDIUM       = 19,
-	IRDMA_SD_LARGE        = 20,
-	IRDMA_SD_XLARGE       = 21,
+	IRDMA_MR_MAX_INCR     = 6,
+	IRDMA_Q1_MAX_INCR     = 7,
+	IRDMA_AH_MAX_INCR     = 8,
+	IRDMA_SRQ_MAX_INCR    = 9,
+	IRDMA_TIMER_MAX_INCR  = 10,
+	IRDMA_XF_MAX_INCR     = 11,
+	IRDMA_RRF_MAX_INCR    = 12,
+	IRDMA_PBLE_MAX_INCR   = 13,
 	IRDMA_OBJ_1           = 22,
 	IRDMA_OBJ_2           = 23,
 	IRDMA_ENDPT_TRK       = 24,
@@ -615,6 +607,7 @@ struct irdma_hmc_fpm_misc {
 	u32 max_ceqs;
 	u32 max_sds;
 	u32 loc_mem_pages;
+	u8 ird;
 	u32 xf_block_size;
 	u32 q1_block_size;
 	u32 ht_multiplier;
-- 
2.37.3

