Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 93060A2CEA2
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 22:01:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A941C7053A;
	Fri,  7 Feb 2025 21:01:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oOXLKeDgACJW; Fri,  7 Feb 2025 21:01:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A0C7A60802
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738962096;
	bh=TER0XTyRWYTEncqyC77bSuvScRFxGSUUKUDhgiK4+E4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dGFgX5QOLrGqDU4k+Q+0oFLeGfL0Zc4KdRC2r+nt3zn8geVQ1lRwkNyswLgM+p2yF
	 BtV7zIIfjqjK0GZqOHWyWrfkV7o8zmIpyI5dKTX76F9RgCT3M2WNx0gWktiWa/EfIN
	 sqHYazi7XrSIkrKcP1rogcaGUisC1fswifHPXaar33P90hleYxjSxyQmsNSVZsutl3
	 vDNh6xkB7uyUlfsr4akBsU0aqN6agARFuoj3EATQHrS/UprAw1pG9+pWcX73IlJ2vb
	 On6m4T1N/ctZfQ67ft6J0QGj1IYX4Z9K2mgUcGX23uxXoRCPdav5DOJvDnFNhSh6gT
	 pFA524riRYKMw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A0C7A60802;
	Fri,  7 Feb 2025 21:01:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 41F3A1B5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EC00C7051A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8T11Gm9b2Ki3 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 19:50:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=tatyana.e.nikolova@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A1F60704CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A1F60704CA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A1F60704CA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:29 +0000 (UTC)
X-CSE-ConnectionGUID: wQwjOXGFQMyDSUpCOboAqQ==
X-CSE-MsgGUID: yObT22MPSSyM3xaQD3ZMCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="42451813"
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="42451813"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 11:50:29 -0800
X-CSE-ConnectionGUID: DbwGFFW8Qz2caV0qcwzpAg==
X-CSE-MsgGUID: M8CqMj7FRxSGVS/j4Z5LzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="112238193"
Received: from tenikolo-mobl1.amr.corp.intel.com ([10.124.81.134])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 11:50:28 -0800
From: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
To: jgg@nvidia.com,
	leon@kernel.org,
	intel-wired-lan@lists.osuosl.org
Cc: linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 Krzysztof Czurylo <krzysztof.czurylo@intel.com>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>
Date: Fri,  7 Feb 2025 13:49:20 -0600
Message-Id: <20250207194931.1569-14-tatyana.e.nikolova@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20250207194931.1569-1-tatyana.e.nikolova@intel.com>
References: <20250207194931.1569-1-tatyana.e.nikolova@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 07 Feb 2025 21:01:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738957830; x=1770493830;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VO8NtffjZdWWlPNOJ9NiBfe/E5XaZ0/5X3NfuT0YQac=;
 b=eF00g5/Ore0Bycy3hPcbxx0gB0aSNhIxLvIWn4t1tZ45qfvfbTkQrOTh
 K5j5DontmNP5XgDQqsJCw4r9426VFfFzt4YVrRL2RXg10W5+n4S/hmjzn
 DZIEmwvD987w6XR+Wirk7HMHDLL4Iq0+jfkeuAlHfmkMWd7zIlQA8AVI9
 QrszJCwy9J19aci0JfazY6xeFdHBXwe1VDZxv5mYHepo8EoZychbUZcCy
 UF6PQataQBDw0pqfOdZi1hNoS1srllY1Fpi3PIKPbA2C92XfAu+T2mtTJ
 Wy46mbUCp66n3lfK6pnXys95YMdhmFD2iDomLCuvsSV5oRXPtOMA7/J1J
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eF00g5/O
Subject: [Intel-wired-lan] [rdma v3 13/24] RDMA/irdma: Add GEN3 HW
 statistics support
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

From: Krzysztof Czurylo <krzysztof.czurylo@intel.com>

Plug into the unified HW statistics framework by adding a hardware
statistics map array for GEN3, defining the HW-specific width and
location for each counter in the statistics buffer.

Signed-off-by: Krzysztof Czurylo <krzysztof.czurylo@intel.com>
Signed-off-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
---
 drivers/infiniband/hw/irdma/ctrl.c       |  33 +++++--
 drivers/infiniband/hw/irdma/defs.h       |   2 +-
 drivers/infiniband/hw/irdma/ig3rdma_hw.c |  63 +++++++++++++
 drivers/infiniband/hw/irdma/type.h       |  19 +++-
 drivers/infiniband/hw/irdma/verbs.c      | 110 +++++++++++++----------
 5 files changed, 166 insertions(+), 61 deletions(-)

diff --git a/drivers/infiniband/hw/irdma/ctrl.c b/drivers/infiniband/hw/irdma/ctrl.c
index 55080b56311b..8fd2882f75af 100644
--- a/drivers/infiniband/hw/irdma/ctrl.c
+++ b/drivers/infiniband/hw/irdma/ctrl.c
@@ -1968,7 +1968,8 @@ int irdma_vsi_stats_init(struct irdma_sc_vsi *vsi,
 		(void *)((uintptr_t)stats_buff_mem->va +
 			 IRDMA_GATHER_STATS_BUF_SIZE);
 
-	irdma_hw_stats_start_timer(vsi);
+	if (vsi->dev->hw_attrs.uk_attrs.hw_rev < IRDMA_GEN_3)
+		irdma_hw_stats_start_timer(vsi);
 
 	/* when stat allocation is not required default to fcn_id. */
 	vsi->stats_idx = info->fcn_id;
@@ -2013,7 +2014,9 @@ void irdma_vsi_stats_free(struct irdma_sc_vsi *vsi)
 
 	if (!vsi->pestat)
 		return;
-	irdma_hw_stats_stop_timer(vsi);
+
+	if (dev->hw_attrs.uk_attrs.hw_rev < IRDMA_GEN_3)
+		irdma_hw_stats_stop_timer(vsi);
 	dma_free_coherent(vsi->pestat->hw->device,
 			  vsi->pestat->gather_info.stats_buff_mem.size,
 			  vsi->pestat->gather_info.stats_buff_mem.va,
@@ -5929,14 +5932,26 @@ void irdma_cfg_aeq(struct irdma_sc_dev *dev, u32 idx, bool enable)
  */
 void sc_vsi_update_stats(struct irdma_sc_vsi *vsi)
 {
-	struct irdma_gather_stats *gather_stats;
-	struct irdma_gather_stats *last_gather_stats;
+	struct irdma_dev_hw_stats *hw_stats = &vsi->pestat->hw_stats;
+	struct irdma_gather_stats *gather_stats =
+		vsi->pestat->gather_info.gather_stats_va;
+	struct irdma_gather_stats *last_gather_stats =
+		vsi->pestat->gather_info.last_gather_stats_va;
+	const struct irdma_hw_stat_map *map = vsi->dev->hw_stats_map;
+	u16 max_stat_idx = vsi->dev->hw_attrs.max_stat_idx;
+	u16 i;
+
+	if (vsi->dev->hw_attrs.uk_attrs.hw_rev >= IRDMA_GEN_3) {
+		for (i = 0; i < max_stat_idx; i++) {
+			u16 idx = map[i].byteoff / sizeof(u64);
+
+			hw_stats->stats_val[i] = gather_stats->val[idx];
+		}
+		return;
+	}
 
-	gather_stats = vsi->pestat->gather_info.gather_stats_va;
-	last_gather_stats = vsi->pestat->gather_info.last_gather_stats_va;
-	irdma_update_stats(&vsi->pestat->hw_stats, gather_stats,
-			   last_gather_stats, vsi->dev->hw_stats_map,
-			   vsi->dev->hw_attrs.max_stat_idx);
+	irdma_update_stats(hw_stats, gather_stats, last_gather_stats,
+			   map, max_stat_idx);
 }
 
 /**
diff --git a/drivers/infiniband/hw/irdma/defs.h b/drivers/infiniband/hw/irdma/defs.h
index 52ace06912eb..2fc8e3cf4395 100644
--- a/drivers/infiniband/hw/irdma/defs.h
+++ b/drivers/infiniband/hw/irdma/defs.h
@@ -415,7 +415,7 @@ enum irdma_cqp_op_type {
 #define IRDMA_CQPSQ_STATS_USE_INST BIT_ULL(61)
 #define IRDMA_CQPSQ_STATS_OP GENMASK_ULL(37, 32)
 #define IRDMA_CQPSQ_STATS_INST_INDEX GENMASK_ULL(6, 0)
-#define IRDMA_CQPSQ_STATS_HMC_FCN_INDEX GENMASK_ULL(5, 0)
+#define IRDMA_CQPSQ_STATS_HMC_FCN_INDEX GENMASK_ULL(15, 0)
 #define IRDMA_CQPSQ_WS_WQEVALID BIT_ULL(63)
 #define IRDMA_CQPSQ_WS_NODEOP GENMASK_ULL(55, 52)
 #define IRDMA_SD_MAX GENMASK_ULL(15, 0)
diff --git a/drivers/infiniband/hw/irdma/ig3rdma_hw.c b/drivers/infiniband/hw/irdma/ig3rdma_hw.c
index 1d582c50e4d2..2a3d7144c771 100644
--- a/drivers/infiniband/hw/irdma/ig3rdma_hw.c
+++ b/drivers/infiniband/hw/irdma/ig3rdma_hw.c
@@ -48,9 +48,70 @@ static const struct irdma_irq_ops ig3rdma_irq_ops = {
 	.irdma_en_irq = ig3rdma_ena_irq,
 };
 
+static const struct irdma_hw_stat_map ig3rdma_hw_stat_map[] = {
+	[IRDMA_HW_STAT_INDEX_RXVLANERR] =	{   0, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_IP4RXOCTS] =	{   8, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_IP4RXPKTS] =	{  16, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_IP4RXDISCARD] =	{  24, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_IP4RXTRUNC] =	{  32, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_IP4RXFRAGS] =	{  40, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_IP4RXMCOCTS] =	{  48, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_IP4RXMCPKTS] =	{  56, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_IP6RXOCTS] =	{  64, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_IP6RXPKTS] =	{  72, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_IP6RXDISCARD] =	{  80, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_IP6RXTRUNC] =	{  88, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_IP6RXFRAGS] =	{  96, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_IP6RXMCOCTS] =	{ 104, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_IP6RXMCPKTS] =	{ 112, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_IP4TXOCTS] =	{ 120, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_IP4TXPKTS] =	{ 128, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_IP4TXFRAGS] =	{ 136, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_IP4TXMCOCTS] =	{ 144, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_IP4TXMCPKTS] =	{ 152, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_IP6TXOCTS] =	{ 160, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_IP6TXPKTS] =	{ 168, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_IP6TXFRAGS] =	{ 176, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_IP6TXMCOCTS] =	{ 184, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_IP6TXMCPKTS] =	{ 192, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_IP4TXNOROUTE] =	{ 200, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_IP6TXNOROUTE] =	{ 208, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_TCPRTXSEG] =	{ 216, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_TCPRXOPTERR] =	{ 224, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_TCPRXPROTOERR] =	{ 232, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_TCPTXSEG] =	{ 240, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_TCPRXSEGS] =	{ 248, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_UDPRXPKTS] =	{ 256, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_UDPTXPKTS] =	{ 264, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_RDMARXWRS] =	{ 272, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_RDMARXRDS] =	{ 280, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_RDMARXSNDS] =	{ 288, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_RDMATXWRS] =	{ 296, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_RDMATXRDS] =	{ 304, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_RDMATXSNDS] =	{ 312, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_RDMAVBND] =	{ 320, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_RDMAVINV] =	{ 328, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_RXNPECNMARKEDPKTS] = { 336, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_RXRPCNPHANDLED] =	{ 344, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_RXRPCNPIGNORED] =	{ 352, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_TXNPCNPSENT] =	{ 360, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_RNR_SENT] =	{ 368, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_RNR_RCVD] =	{ 376, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_RDMAORDLMTCNT] =	{ 384, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_RDMAIRDLMTCNT] =	{ 392, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_RDMARXATS] =	{ 408, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_RDMATXATS] =	{ 416, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_NAKSEQERR] =	{ 424, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_NAKSEQERR_IMPLIED] = { 432, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_RTO] =		{ 440, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_RXOOOPKTS] =	{ 448, 0, 0 },
+	[IRDMA_HW_STAT_INDEX_ICRCERR] =		{ 456, 0, 0 },
+};
+
 void ig3rdma_init_hw(struct irdma_sc_dev *dev)
 {
 	dev->irq_ops = &ig3rdma_irq_ops;
+	dev->hw_stats_map = ig3rdma_hw_stat_map;
 
 	dev->hw_attrs.uk_attrs.hw_rev = IRDMA_GEN_3;
 	dev->hw_attrs.uk_attrs.max_hw_wq_frags = IG3RDMA_MAX_WQ_FRAGMENT_COUNT;
@@ -70,6 +131,8 @@ void ig3rdma_init_hw(struct irdma_sc_dev *dev)
 	dev->hw_attrs.page_size_cap = SZ_4K | SZ_2M | SZ_1G;
 	dev->hw_attrs.max_hw_ird = IG3RDMA_MAX_IRD_SIZE;
 	dev->hw_attrs.max_hw_ord = IG3RDMA_MAX_ORD_SIZE;
+	dev->hw_attrs.max_stat_inst = IG3RDMA_MAX_STATS_COUNT;
+	dev->hw_attrs.max_stat_idx = IRDMA_HW_STAT_INDEX_MAX_GEN_3;
 	dev->hw_attrs.uk_attrs.min_hw_wq_size = IG3RDMA_MIN_WQ_SIZE;
 	dev->hw_attrs.uk_attrs.max_hw_srq_quanta = IRDMA_SRQ_MAX_QUANTA;
 	dev->hw_attrs.uk_attrs.max_hw_inline = IG3RDMA_MAX_INLINE_DATA_SIZE;
diff --git a/drivers/infiniband/hw/irdma/type.h b/drivers/infiniband/hw/irdma/type.h
index 30c0e74f2c90..1a038011200b 100644
--- a/drivers/infiniband/hw/irdma/type.h
+++ b/drivers/infiniband/hw/irdma/type.h
@@ -156,6 +156,21 @@ enum irdma_hw_stats_index {
 	IRDMA_HW_STAT_INDEX_RXRPCNPIGNORED      = 44,
 	IRDMA_HW_STAT_INDEX_TXNPCNPSENT         = 45,
 	IRDMA_HW_STAT_INDEX_MAX_GEN_2		= 46,
+
+	/* gen3 */
+	IRDMA_HW_STAT_INDEX_RNR_SENT		= 46,
+	IRDMA_HW_STAT_INDEX_RNR_RCVD		= 47,
+	IRDMA_HW_STAT_INDEX_RDMAORDLMTCNT	= 48,
+	IRDMA_HW_STAT_INDEX_RDMAIRDLMTCNT	= 49,
+	IRDMA_HW_STAT_INDEX_RDMARXATS		= 50,
+	IRDMA_HW_STAT_INDEX_RDMATXATS		= 51,
+	IRDMA_HW_STAT_INDEX_NAKSEQERR		= 52,
+	IRDMA_HW_STAT_INDEX_NAKSEQERR_IMPLIED	= 53,
+	IRDMA_HW_STAT_INDEX_RTO			= 54,
+	IRDMA_HW_STAT_INDEX_RXOOOPKTS		= 55,
+	IRDMA_HW_STAT_INDEX_ICRCERR		= 56,
+
+	IRDMA_HW_STAT_INDEX_MAX_GEN_3		= 57,
 };
 
 enum irdma_feature_type {
@@ -569,7 +584,7 @@ struct irdma_sc_qp {
 struct irdma_stats_inst_info {
 	bool use_hmc_fcn_index;
 	u8 hmc_fn_id;
-	u8 stats_idx;
+	u16 stats_idx;
 };
 
 struct irdma_up_info {
@@ -1027,7 +1042,7 @@ struct irdma_qp_host_ctx_info {
 	u32 send_cq_num;
 	u32 rcv_cq_num;
 	u32 rem_endpoint_idx;
-	u8 stats_idx;
+	u16 stats_idx;
 	bool srq_valid:1;
 	bool tcp_info_valid:1;
 	bool iwarp_info_valid:1;
diff --git a/drivers/infiniband/hw/irdma/verbs.c b/drivers/infiniband/hw/irdma/verbs.c
index c7df33a6c3df..a0257b87d99f 100644
--- a/drivers/infiniband/hw/irdma/verbs.c
+++ b/drivers/infiniband/hw/irdma/verbs.c
@@ -3914,40 +3914,7 @@ static int irdma_req_notify_cq(struct ib_cq *ibcq,
 	return ret;
 }
 
-static int irdma_roce_port_immutable(struct ib_device *ibdev, u32 port_num,
-				     struct ib_port_immutable *immutable)
-{
-	struct ib_port_attr attr;
-	int err;
-
-	immutable->core_cap_flags = RDMA_CORE_PORT_IBA_ROCE_UDP_ENCAP;
-	err = ib_query_port(ibdev, port_num, &attr);
-	if (err)
-		return err;
-
-	immutable->max_mad_size = IB_MGMT_MAD_SIZE;
-	immutable->pkey_tbl_len = attr.pkey_tbl_len;
-	immutable->gid_tbl_len = attr.gid_tbl_len;
-
-	return 0;
-}
-
-static int irdma_iw_port_immutable(struct ib_device *ibdev, u32 port_num,
-				   struct ib_port_immutable *immutable)
-{
-	struct ib_port_attr attr;
-	int err;
-
-	immutable->core_cap_flags = RDMA_CORE_PORT_IWARP;
-	err = ib_query_port(ibdev, port_num, &attr);
-	if (err)
-		return err;
-	immutable->gid_tbl_len = attr.gid_tbl_len;
-
-	return 0;
-}
-
-static const struct rdma_stat_desc irdma_hw_stat_names[] = {
+static const struct rdma_stat_desc irdma_hw_stat_descs[] = {
 	/* gen1 - 32-bit */
 	[IRDMA_HW_STAT_INDEX_IP4RXDISCARD].name		= "ip4InDiscards",
 	[IRDMA_HW_STAT_INDEX_IP4RXTRUNC].name		= "ip4InTruncatedPkts",
@@ -3955,9 +3922,6 @@ static const struct rdma_stat_desc irdma_hw_stat_names[] = {
 	[IRDMA_HW_STAT_INDEX_IP6RXDISCARD].name		= "ip6InDiscards",
 	[IRDMA_HW_STAT_INDEX_IP6RXTRUNC].name		= "ip6InTruncatedPkts",
 	[IRDMA_HW_STAT_INDEX_IP6TXNOROUTE].name		= "ip6OutNoRoutes",
-	[IRDMA_HW_STAT_INDEX_TCPRTXSEG].name		= "tcpRetransSegs",
-	[IRDMA_HW_STAT_INDEX_TCPRXOPTERR].name		= "tcpInOptErrors",
-	[IRDMA_HW_STAT_INDEX_TCPRXPROTOERR].name	= "tcpInProtoErrors",
 	[IRDMA_HW_STAT_INDEX_RXVLANERR].name		= "rxVlanErrors",
 	/* gen1 - 64-bit */
 	[IRDMA_HW_STAT_INDEX_IP4RXOCTS].name		= "ip4InOctets",
@@ -3976,16 +3940,14 @@ static const struct rdma_stat_desc irdma_hw_stat_names[] = {
 	[IRDMA_HW_STAT_INDEX_IP6TXPKTS].name		= "ip6OutPkts",
 	[IRDMA_HW_STAT_INDEX_IP6TXFRAGS].name		= "ip6OutSegRqd",
 	[IRDMA_HW_STAT_INDEX_IP6TXMCPKTS].name		= "ip6OutMcastPkts",
-	[IRDMA_HW_STAT_INDEX_TCPRXSEGS].name		= "tcpInSegs",
-	[IRDMA_HW_STAT_INDEX_TCPTXSEG].name		= "tcpOutSegs",
-	[IRDMA_HW_STAT_INDEX_RDMARXRDS].name		= "iwInRdmaReads",
-	[IRDMA_HW_STAT_INDEX_RDMARXSNDS].name		= "iwInRdmaSends",
-	[IRDMA_HW_STAT_INDEX_RDMARXWRS].name		= "iwInRdmaWrites",
-	[IRDMA_HW_STAT_INDEX_RDMATXRDS].name		= "iwOutRdmaReads",
-	[IRDMA_HW_STAT_INDEX_RDMATXSNDS].name		= "iwOutRdmaSends",
-	[IRDMA_HW_STAT_INDEX_RDMATXWRS].name		= "iwOutRdmaWrites",
-	[IRDMA_HW_STAT_INDEX_RDMAVBND].name		= "iwRdmaBnd",
-	[IRDMA_HW_STAT_INDEX_RDMAVINV].name		= "iwRdmaInv",
+	[IRDMA_HW_STAT_INDEX_RDMARXRDS].name		= "InRdmaReads",
+	[IRDMA_HW_STAT_INDEX_RDMARXSNDS].name		= "InRdmaSends",
+	[IRDMA_HW_STAT_INDEX_RDMARXWRS].name		= "InRdmaWrites",
+	[IRDMA_HW_STAT_INDEX_RDMATXRDS].name		= "OutRdmaReads",
+	[IRDMA_HW_STAT_INDEX_RDMATXSNDS].name		= "OutRdmaSends",
+	[IRDMA_HW_STAT_INDEX_RDMATXWRS].name		= "OutRdmaWrites",
+	[IRDMA_HW_STAT_INDEX_RDMAVBND].name		= "RdmaBnd",
+	[IRDMA_HW_STAT_INDEX_RDMAVINV].name		= "RdmaInv",
 
 	/* gen2 - 32-bit */
 	[IRDMA_HW_STAT_INDEX_RXRPCNPHANDLED].name	= "cnpHandled",
@@ -3999,9 +3961,59 @@ static const struct rdma_stat_desc irdma_hw_stat_names[] = {
 	[IRDMA_HW_STAT_INDEX_UDPRXPKTS].name		= "RxUDP",
 	[IRDMA_HW_STAT_INDEX_UDPTXPKTS].name		= "TxUDP",
 	[IRDMA_HW_STAT_INDEX_RXNPECNMARKEDPKTS].name	= "RxECNMrkd",
-
+	[IRDMA_HW_STAT_INDEX_TCPRTXSEG].name		= "RetransSegs",
+	[IRDMA_HW_STAT_INDEX_TCPRXOPTERR].name		= "InOptErrors",
+	[IRDMA_HW_STAT_INDEX_TCPRXPROTOERR].name	= "InProtoErrors",
+	[IRDMA_HW_STAT_INDEX_TCPRXSEGS].name		= "InSegs",
+	[IRDMA_HW_STAT_INDEX_TCPTXSEG].name		= "OutSegs",
+
+	/* gen3 */
+	[IRDMA_HW_STAT_INDEX_RNR_SENT].name		= "RNR sent",
+	[IRDMA_HW_STAT_INDEX_RNR_RCVD].name		= "RNR received",
+	[IRDMA_HW_STAT_INDEX_RDMAORDLMTCNT].name	= "ord limit count",
+	[IRDMA_HW_STAT_INDEX_RDMAIRDLMTCNT].name	= "ird limit count",
+	[IRDMA_HW_STAT_INDEX_RDMARXATS].name		= "Rx atomics",
+	[IRDMA_HW_STAT_INDEX_RDMATXATS].name		= "Tx atomics",
+	[IRDMA_HW_STAT_INDEX_NAKSEQERR].name		= "Nak Sequence Error",
+	[IRDMA_HW_STAT_INDEX_NAKSEQERR_IMPLIED].name	= "Nak Sequence Error Implied",
+	[IRDMA_HW_STAT_INDEX_RTO].name			= "RTO",
+	[IRDMA_HW_STAT_INDEX_RXOOOPKTS].name		= "Rcvd Out of order packets",
+	[IRDMA_HW_STAT_INDEX_ICRCERR].name		= "CRC errors",
 };
 
+static int irdma_roce_port_immutable(struct ib_device *ibdev, u32 port_num,
+				     struct ib_port_immutable *immutable)
+{
+	struct ib_port_attr attr;
+	int err;
+
+	immutable->core_cap_flags = RDMA_CORE_PORT_IBA_ROCE_UDP_ENCAP;
+	err = ib_query_port(ibdev, port_num, &attr);
+	if (err)
+		return err;
+
+	immutable->max_mad_size = IB_MGMT_MAD_SIZE;
+	immutable->pkey_tbl_len = attr.pkey_tbl_len;
+	immutable->gid_tbl_len = attr.gid_tbl_len;
+
+	return 0;
+}
+
+static int irdma_iw_port_immutable(struct ib_device *ibdev, u32 port_num,
+				   struct ib_port_immutable *immutable)
+{
+	struct ib_port_attr attr;
+	int err;
+
+	immutable->core_cap_flags = RDMA_CORE_PORT_IWARP;
+	err = ib_query_port(ibdev, port_num, &attr);
+	if (err)
+		return err;
+	immutable->gid_tbl_len = attr.gid_tbl_len;
+
+	return 0;
+}
+
 static void irdma_get_dev_fw_str(struct ib_device *dev, char *str)
 {
 	struct irdma_device *iwdev = to_iwdev(dev);
@@ -4025,7 +4037,7 @@ static struct rdma_hw_stats *irdma_alloc_hw_port_stats(struct ib_device *ibdev,
 	int num_counters = dev->hw_attrs.max_stat_idx;
 	unsigned long lifespan = RDMA_HW_STATS_DEFAULT_LIFESPAN;
 
-	return rdma_alloc_hw_stats_struct(irdma_hw_stat_names, num_counters,
+	return rdma_alloc_hw_stats_struct(irdma_hw_stat_descs, num_counters,
 					  lifespan);
 }
 
-- 
2.37.3

