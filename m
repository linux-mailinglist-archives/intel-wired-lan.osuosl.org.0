Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D9460AC2811
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 May 2025 19:06:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7DC264035C;
	Fri, 23 May 2025 17:06:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kaTMD3ROZnBF; Fri, 23 May 2025 17:06:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 705A740489
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748019964;
	bh=Jb5xOHXNwNrtSHVjYYw4DTzu5vttAOR+TyYUeQ7VuxQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tUKB9Lzr0a1pmifeeWb+1d9l4q/r5sVYcX6rCcuvwe3aWTQeotdz0B6pCCPJvx/D/
	 1BY0P6XgZSnjz7L4ljKGIbi8w9Ao1ys6tsQt6kFfOhRGH0lzIfUbdJMase0g+3ZgTZ
	 hJaFVWjtQ3aDbtbkIRiE/JVaGzJQ/gzFsglS7TLN6L1viNSMETglaRbearb6vOMPxf
	 aAxA5PJFgKs/NM/HgTXAD/wEoNU4rllru42jb44FOE6d3RF2CrX2ulHH2AxMOlMIUQ
	 c1n/7LIEU7oksbJvgbUUC1Z26xCNx+gLkrW3rkSPxbBvXeUSIc3LcVPW4M6IByiuCz
	 FJJJV2xZByuvA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 705A740489;
	Fri, 23 May 2025 17:06:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3511868
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 17:06:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 479A840BB0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 17:06:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b3u_E4U-CsJQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 May 2025 17:06:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=tatyana.e.nikolova@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 626DE404C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 626DE404C7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 626DE404C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 17:06:01 +0000 (UTC)
X-CSE-ConnectionGUID: Wsfa5vNFQxy3bEq5FHLftA==
X-CSE-MsgGUID: aB/IGwDsQceZPJXHWlAuIA==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="60738381"
X-IronPort-AV: E=Sophos;i="6.15,309,1739865600"; d="scan'208";a="60738381"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2025 10:06:01 -0700
X-CSE-ConnectionGUID: cFpzqTy5RSaXQLQoPuTUug==
X-CSE-MsgGUID: 3LSnHyN0SsGk2kk3wM615A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,309,1739865600"; d="scan'208";a="164457425"
Received: from pthorat-mobl.amr.corp.intel.com (HELO
 soc-PF51RAGT.clients.intel.com) ([10.246.116.180])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2025 10:06:00 -0700
From: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: jgg@nvidia.com, leon@kernel.org, linux-rdma@vger.kernel.org,
 netdev@vger.kernel.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 Joshua Hay <joshua.a.hay@intel.com>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>
Date: Fri, 23 May 2025 12:04:30 -0500
Message-ID: <20250523170435.668-2-tatyana.e.nikolova@intel.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20250523170435.668-1-tatyana.e.nikolova@intel.com>
References: <20250523170435.668-1-tatyana.e.nikolova@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748019962; x=1779555962;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=12HY0XL3isOxMbdNScbuxkYknDTpt8jGRWApBnpG/pI=;
 b=Mduycer39dnb6gsTvgq5aOpAkjhum2sc93C/e/F0mF8g8+/PSmqYU1Ri
 oBs45hLjPsHgk0DXO1NY8hZf6uXskDSrKs/iWWLoVuj+2h1Cl8I8bWOPr
 cr7gC5MOhgiMtzMxucD91pj5Unb7K+oiKx2fBtmwqRiM+fN+/S9TCLSPM
 pARdj/is2A2hcqF1r4F8B7SxabdszAcUwHPAW7EFin7hhV5WiViThAHxN
 cRfU7B+8lQGNqaaCQmwZeTgQXmQaggFh97vgl3AXSbk+7JgAC5RksVrKA
 inu9kdLq3A+gNMMDf3CPooc2VHqbP9DWLTFk5Uk5uWi3Hl0CjP/gUsI2f
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Mduycer3
Subject: [Intel-wired-lan] [iwl-next 1/6] idpf: use reserved RDMA vectors
 from control plane
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

From: Joshua Hay <joshua.a.hay@intel.com>

Fetch the number of reserved RDMA vectors from the control plane.
Adjust the number of reserved LAN vectors if necessary. Adjust the
minimum number of vectors the OS should reserve to include RDMA; and
fail if the OS cannot reserve enough vectors for the minimum number of
LAN and RDMA vectors required. Create a separate msix table for the
reserved RDMA vectors, which will just get handed off to the RDMA core
device to do with what it will.

Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Signed-off-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h      | 28 +++++++-
 drivers/net/ethernet/intel/idpf/idpf_lib.c  | 74 +++++++++++++++++----
 drivers/net/ethernet/intel/idpf/idpf_txrx.h |  1 +
 drivers/net/ethernet/intel/idpf/virtchnl2.h |  5 +-
 4 files changed, 92 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 66544faab710..8ef7120e6717 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -489,10 +489,11 @@ struct idpf_vc_xn_manager;
  * @flags: See enum idpf_flags
  * @reset_reg: See struct idpf_reset_reg
  * @hw: Device access data
- * @num_req_msix: Requested number of MSIX vectors
  * @num_avail_msix: Available number of MSIX vectors
  * @num_msix_entries: Number of entries in MSIX table
  * @msix_entries: MSIX table
+ * @num_rdma_msix_entries: Available number of MSIX vectors for RDMA
+ * @rdma_msix_entries: RDMA MSIX table
  * @req_vec_chunks: Requested vector chunk data
  * @mb_vector: Mailbox vector data
  * @vector_stack: Stack to store the msix vector indexes
@@ -542,10 +543,11 @@ struct idpf_adapter {
 	DECLARE_BITMAP(flags, IDPF_FLAGS_NBITS);
 	struct idpf_reset_reg reset_reg;
 	struct idpf_hw hw;
-	u16 num_req_msix;
 	u16 num_avail_msix;
 	u16 num_msix_entries;
 	struct msix_entry *msix_entries;
+	u16 num_rdma_msix_entries;
+	struct msix_entry *rdma_msix_entries;
 	struct virtchnl2_alloc_vectors *req_vec_chunks;
 	struct idpf_q_vector mb_vector;
 	struct idpf_vector_lifo vector_stack;
@@ -609,6 +611,17 @@ static inline int idpf_is_queue_model_split(u16 q_model)
 bool idpf_is_capability_ena(struct idpf_adapter *adapter, bool all,
 			    enum idpf_cap_field field, u64 flag);
 
+/**
+ * idpf_is_rdma_cap_ena - Determine if RDMA is supported
+ * @adapter: private data struct
+ *
+ * Return: true if RDMA capability is enabled, false otherwise
+ */
+static inline bool idpf_is_rdma_cap_ena(struct idpf_adapter *adapter)
+{
+	return idpf_is_cap_ena(adapter, IDPF_OTHER_CAPS, VIRTCHNL2_CAP_RDMA);
+}
+
 #define IDPF_CAP_RSS (\
 	VIRTCHNL2_CAP_RSS_IPV4_TCP	|\
 	VIRTCHNL2_CAP_RSS_IPV4_TCP	|\
@@ -663,6 +676,17 @@ static inline u16 idpf_get_reserved_vecs(struct idpf_adapter *adapter)
 	return le16_to_cpu(adapter->caps.num_allocated_vectors);
 }
 
+/**
+ * idpf_get_reserved_rdma_vecs - Get reserved RDMA vectors
+ * @adapter: private data struct
+ *
+ * Return: number of vectors reserved for RDMA
+ */
+static inline u16 idpf_get_reserved_rdma_vecs(struct idpf_adapter *adapter)
+{
+	return le16_to_cpu(adapter->caps.num_rdma_allocated_vectors);
+}
+
 /**
  * idpf_get_default_vports - Get default number of vports
  * @adapter: private data struct
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index aa755dedb41d..0d5c57502cac 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -87,6 +87,8 @@ void idpf_intr_rel(struct idpf_adapter *adapter)
 	idpf_deinit_vector_stack(adapter);
 	kfree(adapter->msix_entries);
 	adapter->msix_entries = NULL;
+	kfree(adapter->rdma_msix_entries);
+	adapter->rdma_msix_entries = NULL;
 }
 
 /**
@@ -314,13 +316,33 @@ int idpf_req_rel_vector_indexes(struct idpf_adapter *adapter,
  */
 int idpf_intr_req(struct idpf_adapter *adapter)
 {
+	u16 num_lan_vecs, min_lan_vecs, num_rdma_vecs = 0, min_rdma_vecs = 0;
 	u16 default_vports = idpf_get_default_vports(adapter);
 	int num_q_vecs, total_vecs, num_vec_ids;
 	int min_vectors, v_actual, err;
 	unsigned int vector;
 	u16 *vecids;
+	int i;
 
 	total_vecs = idpf_get_reserved_vecs(adapter);
+	num_lan_vecs = total_vecs;
+	if (idpf_is_rdma_cap_ena(adapter)) {
+		num_rdma_vecs = idpf_get_reserved_rdma_vecs(adapter);
+		min_rdma_vecs = IDPF_MIN_RDMA_VEC;
+
+		if (!num_rdma_vecs) {
+			/* If idpf_get_reserved_rdma_vecs is 0, vectors are
+			 * pulled from the LAN pool.
+			 */
+			num_rdma_vecs = min_rdma_vecs;
+		} else if (num_rdma_vecs < min_rdma_vecs) {
+			dev_err(&adapter->pdev->dev,
+				"Not enough vectors reserved for RDMA (min: %u, current: %u)\n",
+				min_rdma_vecs, num_rdma_vecs);
+			return -EINVAL;
+		}
+	}
+
 	num_q_vecs = total_vecs - IDPF_MBX_Q_VEC;
 
 	err = idpf_send_alloc_vectors_msg(adapter, num_q_vecs);
@@ -331,52 +353,75 @@ int idpf_intr_req(struct idpf_adapter *adapter)
 		return -EAGAIN;
 	}
 
-	min_vectors = IDPF_MBX_Q_VEC + IDPF_MIN_Q_VEC * default_vports;
+	min_lan_vecs = IDPF_MBX_Q_VEC + IDPF_MIN_Q_VEC * default_vports;
+	min_vectors = min_lan_vecs + min_rdma_vecs;
 	v_actual = pci_alloc_irq_vectors(adapter->pdev, min_vectors,
 					 total_vecs, PCI_IRQ_MSIX);
 	if (v_actual < min_vectors) {
-		dev_err(&adapter->pdev->dev, "Failed to allocate MSIX vectors: %d\n",
+		dev_err(&adapter->pdev->dev, "Failed to allocate minimum MSIX vectors required: %d\n",
 			v_actual);
 		err = -EAGAIN;
 		goto send_dealloc_vecs;
 	}
 
-	adapter->msix_entries = kcalloc(v_actual, sizeof(struct msix_entry),
-					GFP_KERNEL);
+	if (idpf_is_rdma_cap_ena(adapter)) {
+		if (v_actual < total_vecs) {
+			dev_warn(&adapter->pdev->dev,
+				 "Warning: not enough vectors available. Defaulting to minimum for RDMA and remaining for LAN.\n");
+			num_rdma_vecs = IDPF_MIN_RDMA_VEC;
+		}
 
+		adapter->rdma_msix_entries =
+			kcalloc(num_rdma_vecs,
+				sizeof(struct msix_entry), GFP_KERNEL);
+		if (!adapter->rdma_msix_entries) {
+			err = -ENOMEM;
+			goto free_irq;
+		}
+	}
+
+	num_lan_vecs = v_actual - num_rdma_vecs;
+	adapter->msix_entries = kcalloc(num_lan_vecs, sizeof(struct msix_entry),
+					GFP_KERNEL);
 	if (!adapter->msix_entries) {
 		err = -ENOMEM;
-		goto free_irq;
+		goto free_rdma_msix;
 	}
 
 	idpf_set_mb_vec_id(adapter);
 
-	vecids = kcalloc(total_vecs, sizeof(u16), GFP_KERNEL);
+	vecids = kcalloc(v_actual, sizeof(u16), GFP_KERNEL);
 	if (!vecids) {
 		err = -ENOMEM;
 		goto free_msix;
 	}
 
-	num_vec_ids = idpf_get_vec_ids(adapter, vecids, total_vecs,
+	num_vec_ids = idpf_get_vec_ids(adapter, vecids, v_actual,
 				       &adapter->req_vec_chunks->vchunks);
 	if (num_vec_ids < v_actual) {
 		err = -EINVAL;
 		goto free_vecids;
 	}
 
-	for (vector = 0; vector < v_actual; vector++) {
-		adapter->msix_entries[vector].entry = vecids[vector];
-		adapter->msix_entries[vector].vector =
+	for (i = 0, vector = 0; vector < num_lan_vecs; vector++, i++) {
+		adapter->msix_entries[i].entry = vecids[vector];
+		adapter->msix_entries[i].vector =
+			pci_irq_vector(adapter->pdev, vector);
+	}
+	for (i = 0; i < num_rdma_vecs; vector++, i++) {
+		adapter->rdma_msix_entries[i].entry = vecids[vector];
+		adapter->rdma_msix_entries[i].vector =
 			pci_irq_vector(adapter->pdev, vector);
 	}
 
-	adapter->num_req_msix = total_vecs;
-	adapter->num_msix_entries = v_actual;
 	/* 'num_avail_msix' is used to distribute excess vectors to the vports
 	 * after considering the minimum vectors required per each default
 	 * vport
 	 */
-	adapter->num_avail_msix = v_actual - min_vectors;
+	adapter->num_avail_msix = num_lan_vecs - min_lan_vecs;
+	adapter->num_msix_entries = num_lan_vecs;
+	if (idpf_is_rdma_cap_ena(adapter))
+		adapter->num_rdma_msix_entries = num_rdma_vecs;
 
 	/* Fill MSIX vector lifo stack with vector indexes */
 	err = idpf_init_vector_stack(adapter);
@@ -398,6 +443,9 @@ int idpf_intr_req(struct idpf_adapter *adapter)
 free_msix:
 	kfree(adapter->msix_entries);
 	adapter->msix_entries = NULL;
+free_rdma_msix:
+	kfree(adapter->rdma_msix_entries);
+	adapter->rdma_msix_entries = NULL;
 free_irq:
 	pci_free_irq_vectors(adapter->pdev);
 send_dealloc_vecs:
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index b029f566e57c..9cb97397d89b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -57,6 +57,7 @@
 /* Default vector sharing */
 #define IDPF_MBX_Q_VEC		1
 #define IDPF_MIN_Q_VEC		1
+#define IDPF_MIN_RDMA_VEC	2
 
 #define IDPF_DFLT_TX_Q_DESC_COUNT		512
 #define IDPF_DFLT_TX_COMPLQ_DESC_COUNT		512
diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/drivers/net/ethernet/intel/idpf/virtchnl2.h
index 63deb120359c..80c17e4a394e 100644
--- a/drivers/net/ethernet/intel/idpf/virtchnl2.h
+++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h
@@ -473,6 +473,8 @@ VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_version_info);
  *			segment offload.
  * @max_hdr_buf_per_lso: Max number of header buffers that can be used for
  *			 an LSO.
+ * @num_rdma_allocated_vectors: Maximum number of allocated RDMA vectors for
+ *				the device.
  * @pad1: Padding for future extensions.
  *
  * Dataplane driver sends this message to CP to negotiate capabilities and
@@ -520,7 +522,8 @@ struct virtchnl2_get_capabilities {
 	__le32 device_type;
 	u8 min_sso_packet_len;
 	u8 max_hdr_buf_per_lso;
-	u8 pad1[10];
+	__le16 num_rdma_allocated_vectors;
+	u8 pad1[8];
 };
 VIRTCHNL2_CHECK_STRUCT_LEN(80, virtchnl2_get_capabilities);
 
-- 
2.37.3

