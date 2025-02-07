Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C02A2CEAA
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 22:02:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6082270549;
	Fri,  7 Feb 2025 21:01:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a6-ON_03qQLz; Fri,  7 Feb 2025 21:01:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E1077054C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738962105;
	bh=Qj7EZI+f226BmLwJRTQPs1+Ccgtk9hhrrCEGbaWMaV4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=By8cF8Zc1k1sKyVjPQom4wLSOnSDguvbOAbV2UFJsqI6oBi9Ar4Xbr4RbfNwx6kVv
	 nKllI4jCMo7B/Sc+lud9yOGPWbSw6mW8TzIm7z1qULty1RuQYt3OY92y2/mbIlizhh
	 VlXIGu8DnHwo2Ok9QBDJWwrvc6kMQoRNE6qx5NMalR9ui0EbybqtLT34Gaj5XoV/Dy
	 aNbNOZ3OmOcOZx8uqrkh3FiDq/Lu14WZPgXahQJCeqVUKrFAiU8BIGDOrfGhm39CJR
	 qYt9+tuuRz/as9LIktTKVrkTAanR5aE/lmeJ2BPl73N+sefE1MRhy+ZGKi/Q614/p/
	 s2s47wLGA5n5A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E1077054C;
	Fri,  7 Feb 2025 21:01:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1CED7E4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 195228132E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w0L3-VDQVTtQ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 19:50:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=tatyana.e.nikolova@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0B3F1812F4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B3F1812F4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0B3F1812F4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:33 +0000 (UTC)
X-CSE-ConnectionGUID: A2MiNqrUS0imsZoCi9IM2A==
X-CSE-MsgGUID: +ye0SK0lS9q68BM1nAmRqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="42451850"
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="42451850"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 11:50:34 -0800
X-CSE-ConnectionGUID: xrhlp6kiS02m/MqkhHAFKA==
X-CSE-MsgGUID: FtPfCKE9QzGslN5sDo7IdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="112238274"
Received: from tenikolo-mobl1.amr.corp.intel.com ([10.124.81.134])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 11:50:33 -0800
From: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
To: jgg@nvidia.com,
	leon@kernel.org,
	intel-wired-lan@lists.osuosl.org
Cc: linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 Shiraz Saleem <shiraz.saleem@intel.com>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>
Date: Fri,  7 Feb 2025 13:49:27 -0600
Message-Id: <20250207194931.1569-21-tatyana.e.nikolova@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20250207194931.1569-1-tatyana.e.nikolova@intel.com>
References: <20250207194931.1569-1-tatyana.e.nikolova@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 07 Feb 2025 21:01:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738957834; x=1770493834;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HK4xdxQlDPR2lgYlMQU0vczuFT9fwLQwjb/aR5EAQKM=;
 b=Guq0UIJbYyi9G8TbJxV85u7Ca391k1sBGF2zvoXY+AiNcrF2lYQfAg6F
 SHMBwttpT2da/g76B+pp3WfvE9E1L+t5KTDj/Ht9Pc3q75yWyoY3gXtte
 iQ+EscxVt+LBGalIipC4Xm7qJd025v0uBcz698QQiPsWV0XKl1MAosY8s
 4NFRRpE68iaXMt7SxtwpV/RGtS2x2fTzl6EaPbIY45iS4VsyHeLX1nFGl
 9VEXz4WQVCFUgTM0Anh4rT4jm0ODj5I1O3hgwdtrmlOYrlw2/slG+dGFT
 ZXE1ZluRjsDf5Zz3TcAqpo4chbuU91AxpANpxZmOp5ZIuGdTjjCR/8FHz
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Guq0UIJb
Subject: [Intel-wired-lan] [rdma v3 20/24] RDMA/irdma: Restrict Memory
 Window and CQE Timestamping to GEN3
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

With the deprecation of Memory Window and Timestamping support in GEN2,
move these features to be exclusive to GEN3. This iteration supports
only Type2 Memory Windows. Additionally, it includes the reporting of
the timestamp mask and Host Channel Adapter (HCA) core clock frequency
via the query device verb.

Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
Signed-off-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
---
 drivers/infiniband/hw/irdma/verbs.c | 42 ++++++++++++++++++-----------
 1 file changed, 26 insertions(+), 16 deletions(-)

diff --git a/drivers/infiniband/hw/irdma/verbs.c b/drivers/infiniband/hw/irdma/verbs.c
index 4ab81bf60543..fc5b9b629a51 100644
--- a/drivers/infiniband/hw/irdma/verbs.c
+++ b/drivers/infiniband/hw/irdma/verbs.c
@@ -41,7 +41,8 @@ static int irdma_query_device(struct ib_device *ibdev,
 	props->max_cq = rf->max_cq - rf->used_cqs;
 	props->max_cqe = rf->max_cqe - 1;
 	props->max_mr = rf->max_mr - rf->used_mrs;
-	props->max_mw = props->max_mr;
+	if (hw_attrs->uk_attrs.hw_rev >= IRDMA_GEN_3)
+		props->max_mw = props->max_mr;
 	props->max_pd = rf->max_pd - rf->used_pds;
 	props->max_sge_rd = hw_attrs->uk_attrs.max_hw_read_sges;
 	props->max_qp_rd_atom = hw_attrs->max_hw_ird;
@@ -56,12 +57,16 @@ static int irdma_query_device(struct ib_device *ibdev,
 	props->max_mcast_qp_attach = IRDMA_MAX_MGS_PER_CTX;
 	props->max_total_mcast_qp_attach = rf->max_qp * IRDMA_MAX_MGS_PER_CTX;
 	props->max_fast_reg_page_list_len = IRDMA_MAX_PAGES_PER_FMR;
-#define HCA_CLOCK_TIMESTAMP_MASK 0x1ffff
-	if (hw_attrs->uk_attrs.hw_rev >= IRDMA_GEN_2)
-		props->timestamp_mask = HCA_CLOCK_TIMESTAMP_MASK;
 	props->max_srq = rf->max_srq - rf->used_srqs;
 	props->max_srq_wr = IRDMA_MAX_SRQ_WRS;
 	props->max_srq_sge = hw_attrs->uk_attrs.max_hw_wq_frags;
+	if (hw_attrs->uk_attrs.hw_rev >= IRDMA_GEN_3) {
+#define HCA_CORE_CLOCK_KHZ 1000000UL
+		props->timestamp_mask = GENMASK(31, 0);
+		props->hca_core_clock = HCA_CORE_CLOCK_KHZ;
+	}
+	if (hw_attrs->uk_attrs.hw_rev >= IRDMA_GEN_3)
+		props->device_cap_flags |= IB_DEVICE_MEM_WINDOW_TYPE_2B;
 
 	return 0;
 }
@@ -798,7 +803,8 @@ static void irdma_roce_fill_and_set_qpctx_info(struct irdma_qp *iwqp,
 		roce_info->is_qp1 = true;
 	roce_info->rd_en = true;
 	roce_info->wr_rdresp_en = true;
-	roce_info->bind_en = true;
+	if (dev->hw_attrs.uk_attrs.hw_rev >= IRDMA_GEN_3)
+		roce_info->bind_en = true;
 	roce_info->dcqcn_en = false;
 	roce_info->rtomin = 5;
 
@@ -829,7 +835,6 @@ static void irdma_iw_fill_and_set_qpctx_info(struct irdma_qp *iwqp,
 	ether_addr_copy(iwarp_info->mac_addr, iwdev->netdev->dev_addr);
 	iwarp_info->rd_en = true;
 	iwarp_info->wr_rdresp_en = true;
-	iwarp_info->bind_en = true;
 	iwarp_info->ecn_en = true;
 	iwarp_info->rtomin = 5;
 
@@ -1147,8 +1152,6 @@ static int irdma_get_ib_acc_flags(struct irdma_qp *iwqp)
 		}
 		if (iwqp->iwarp_info.rd_en)
 			acc_flags |= IB_ACCESS_REMOTE_READ;
-		if (iwqp->iwarp_info.bind_en)
-			acc_flags |= IB_ACCESS_MW_BIND;
 	}
 	return acc_flags;
 }
@@ -2433,8 +2436,8 @@ static int irdma_query_srq(struct ib_srq *ibsrq, struct ib_srq_attr *attr)
 
 static inline int cq_validate_flags(u32 flags, u8 hw_rev)
 {
-	/* GEN1 does not support CQ create flags */
-	if (hw_rev == IRDMA_GEN_1)
+	/* GEN1/2 does not support CQ create flags */
+	if (hw_rev <= IRDMA_GEN_2)
 		return flags ? -EOPNOTSUPP : 0;
 
 	return flags & ~IB_UVERBS_CQ_FLAGS_TIMESTAMP_COMPLETION ? -EOPNOTSUPP : 0;
@@ -2660,8 +2663,9 @@ static int irdma_create_cq(struct ib_cq *ibcq,
 /**
  * irdma_get_mr_access - get hw MR access permissions from IB access flags
  * @access: IB access flags
+ * @hw_rev: Hardware version
  */
-static inline u16 irdma_get_mr_access(int access)
+static inline u16 irdma_get_mr_access(int access, u8 hw_rev)
 {
 	u16 hw_access = 0;
 
@@ -2671,8 +2675,10 @@ static inline u16 irdma_get_mr_access(int access)
 		     IRDMA_ACCESS_FLAGS_REMOTEWRITE : 0;
 	hw_access |= (access & IB_ACCESS_REMOTE_READ) ?
 		     IRDMA_ACCESS_FLAGS_REMOTEREAD : 0;
-	hw_access |= (access & IB_ACCESS_MW_BIND) ?
-		     IRDMA_ACCESS_FLAGS_BIND_WINDOW : 0;
+	if (hw_rev >= IRDMA_GEN_3) {
+		hw_access |= (access & IB_ACCESS_MW_BIND) ?
+			     IRDMA_ACCESS_FLAGS_BIND_WINDOW : 0;
+	}
 	hw_access |= (access & IB_ZERO_BASED) ?
 		     IRDMA_ACCESS_FLAGS_ZERO_BASED : 0;
 	hw_access |= IRDMA_ACCESS_FLAGS_LOCALREAD;
@@ -3242,7 +3248,8 @@ static int irdma_hwreg_mr(struct irdma_device *iwdev, struct irdma_mr *iwmr,
 	stag_info->stag_idx = iwmr->stag >> IRDMA_CQPSQ_STAG_IDX_S;
 	stag_info->stag_key = (u8)iwmr->stag;
 	stag_info->total_len = iwmr->len;
-	stag_info->access_rights = irdma_get_mr_access(access);
+	stag_info->access_rights = irdma_get_mr_access(access,
+						       iwdev->rf->sc_dev.hw_attrs.uk_attrs.hw_rev);
 	stag_info->pd_id = iwpd->sc_pd.pd_id;
 	stag_info->all_memory = pd->flags & IB_PD_UNSAFE_GLOBAL_RKEY;
 	if (stag_info->access_rights & IRDMA_ACCESS_FLAGS_ZERO_BASED)
@@ -4027,7 +4034,9 @@ static int irdma_post_send(struct ib_qp *ibqp,
 
 			stag_info.signaled = info.signaled;
 			stag_info.read_fence = info.read_fence;
-			stag_info.access_rights = irdma_get_mr_access(reg_wr(ib_wr)->access);
+			stag_info.access_rights =
+				irdma_get_mr_access(reg_wr(ib_wr)->access,
+						    dev->hw_attrs.uk_attrs.hw_rev);
 			stag_info.stag_key = reg_wr(ib_wr)->key & 0xff;
 			stag_info.stag_idx = reg_wr(ib_wr)->key >> 8;
 			stag_info.page_size = reg_wr(ib_wr)->mr->page_size;
@@ -5230,7 +5239,9 @@ static const struct ib_device_ops irdma_gen1_dev_ops = {
 };
 
 static const struct ib_device_ops irdma_gen3_dev_ops = {
+	.alloc_mw = irdma_alloc_mw,
 	.create_srq = irdma_create_srq,
+	.dealloc_mw = irdma_dealloc_mw,
 	.destroy_srq = irdma_destroy_srq,
 	.modify_srq = irdma_modify_srq,
 	.post_srq_recv = irdma_post_srq_recv,
@@ -5271,7 +5282,6 @@ static const struct ib_device_ops irdma_dev_ops = {
 
 	.alloc_hw_port_stats = irdma_alloc_hw_port_stats,
 	.alloc_mr = irdma_alloc_mr,
-	.alloc_mw = irdma_alloc_mw,
 	.alloc_pd = irdma_alloc_pd,
 	.alloc_ucontext = irdma_alloc_ucontext,
 	.create_cq = irdma_create_cq,
-- 
2.37.3

