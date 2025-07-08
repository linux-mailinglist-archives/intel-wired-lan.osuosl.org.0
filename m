Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4465EAFD92B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 23:06:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E9CD640B5E;
	Tue,  8 Jul 2025 21:06:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RuS3eFmUpYv6; Tue,  8 Jul 2025 21:06:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 37C6940B3E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752008817;
	bh=JwEfhWl1kZQcUiyYZIEz22K/60bJ15iz7Z4FoJx+w6c=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=luPn8TRr4B4qpFhcqct2Vhmf3styDPcaAjm2a1ReQ33LzMWggjT20ZNCv7tY7jXbC
	 T4eGYN/niQzLOCS+szlV9otZSwrVQleqM5Q9U7o4RyUeUWloNdOKm7rlU3VsHG0RI5
	 ylwumtCGgGwt+zIk2GPbWCEUBYoa2vVpIoGXh7FP9q4Z0AocxVT715O8bVHF/Ghq2V
	 oltWRhZYnt3HoCufiWWvkIUYymgR1no4BJc4TGsFRH0gSMNPzCqbhrgekrsiv8TZip
	 2VnuzG7xdgCs9TP74ThkR2eruSXhUov4OrtLwxrQ2UhsybMkOZs7+BMBnCJXx5/3Ot
	 4j7oWuY1R/E2g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 37C6940B3E;
	Tue,  8 Jul 2025 21:06:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3A4C11BF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 21:06:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3703E40B51
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 21:06:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KAt1NhMidgAk for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jul 2025 21:06:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=tatyana.e.nikolova@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3BA3440B29
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3BA3440B29
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3BA3440B29
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 21:06:54 +0000 (UTC)
X-CSE-ConnectionGUID: reXWLQSISoy3URgmz6iVGw==
X-CSE-MsgGUID: lJ1PjmS4S4SCVTvwJzexCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="54391713"
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="54391713"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 14:06:53 -0700
X-CSE-ConnectionGUID: ItPZb1H9SEynLapWkCc0ZQ==
X-CSE-MsgGUID: TlINGZ5tSJ6Ww0+SnDkW9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="179276529"
Received: from pthorat-mobl.amr.corp.intel.com (HELO
 soc-PF51RAGT.clients.intel.com) ([10.246.116.180])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 14:06:53 -0700
From: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: jgg@nvidia.com, leon@kernel.org, linux-rdma@vger.kernel.org,
 netdev@vger.kernel.org, kuba@kernel.org,
 Joshua Hay <joshua.a.hay@intel.com>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>
Date: Tue,  8 Jul 2025 16:05:49 -0500
Message-ID: <20250708210554.1662-2-tatyana.e.nikolova@intel.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20250708210554.1662-1-tatyana.e.nikolova@intel.com>
References: <20250708210554.1662-1-tatyana.e.nikolova@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752008814; x=1783544814;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZIohbx4+Qg//6L4z0hw6EW6o7QY/TzBWc2ryE1HFePY=;
 b=gUfmCasdoHp44/Rt/3B8qtMSq1XOFcMgOPBapdEXvf9n7vVtZ9QDTwaF
 WhqgIlG8iCQiLAhUO9JSu2ls3kXSxi2vmLXC/EZpOIxgPxMm3vpxDEzSL
 lPPza6bgE/7hK2L6KNtfy4FUzzunyrdIspTkks/nVAoL4UNWiAvSSoQgY
 H4QQ2nvkFgqIrfEizFgdfHAUka8EqWzra2pMk4xDX2S9RK/Drlapwumfo
 4dqQbwtp+9SQnxHQizNfDQXT4mXBg9gO9n7gsO81v7w6hv9NipG2E71UF
 HYmmF6g0HsZSJhMnIEbEgmgN7mbb11wW/JPt3Z+784MNf68iQvlnXVJeo
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gUfmCasd
Subject: [Intel-wired-lan] [iwl-next v3 1/6] idpf: use reserved RDMA vectors
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

Reviewed-by: Madhu Chittim <madhu.chittim@intel
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Signed-off-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
---

v2:
- s/v_actual/actual_vecs
- Log requested, available, and minimum vectors in warning msg
- Remove unnecessary newline from rdma_msix_entries kcalloc
- Don't use redundant iterator for msix_entries

 drivers/net/ethernet/intel/idpf/idpf.h      | 28 ++++++-
 drivers/net/ethernet/intel/idpf/idpf_lib.c  | 83 ++++++++++++++++-----
 drivers/net/ethernet/intel/idpf/idpf_txrx.h |  1 +
 drivers/net/ethernet/intel/idpf/virtchnl2.h |  5 +-
 4 files changed, 97 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 1e812c3f62f9..d9f06764aba0 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -507,10 +507,11 @@ struct idpf_vc_xn_manager;
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
@@ -561,10 +562,11 @@ struct idpf_adapter {
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
@@ -630,6 +632,17 @@ static inline int idpf_is_queue_model_split(u16 q_model)
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
@@ -682,6 +695,17 @@ static inline u16 idpf_get_reserved_vecs(struct idpf_adapter *adapter)
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
index 4eb20ec2accb..71d1577ca9e4 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -88,6 +88,8 @@ void idpf_intr_rel(struct idpf_adapter *adapter)
 	idpf_deinit_vector_stack(adapter);
 	kfree(adapter->msix_entries);
 	adapter->msix_entries = NULL;
+	kfree(adapter->rdma_msix_entries);
+	adapter->rdma_msix_entries = NULL;
 }
 
 /**
@@ -299,13 +301,33 @@ int idpf_req_rel_vector_indexes(struct idpf_adapter *adapter,
  */
 int idpf_intr_req(struct idpf_adapter *adapter)
 {
+	u16 num_lan_vecs, min_lan_vecs, num_rdma_vecs = 0, min_rdma_vecs = 0;
 	u16 default_vports = idpf_get_default_vports(adapter);
 	int num_q_vecs, total_vecs, num_vec_ids;
-	int min_vectors, v_actual, err;
+	int min_vectors, actual_vecs, err;
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
@@ -316,52 +338,76 @@ int idpf_intr_req(struct idpf_adapter *adapter)
 		return -EAGAIN;
 	}
 
-	min_vectors = IDPF_MBX_Q_VEC + IDPF_MIN_Q_VEC * default_vports;
-	v_actual = pci_alloc_irq_vectors(adapter->pdev, min_vectors,
-					 total_vecs, PCI_IRQ_MSIX);
-	if (v_actual < min_vectors) {
-		dev_err(&adapter->pdev->dev, "Failed to allocate MSIX vectors: %d\n",
-			v_actual);
+	min_lan_vecs = IDPF_MBX_Q_VEC + IDPF_MIN_Q_VEC * default_vports;
+	min_vectors = min_lan_vecs + min_rdma_vecs;
+	actual_vecs = pci_alloc_irq_vectors(adapter->pdev, min_vectors,
+					    total_vecs, PCI_IRQ_MSIX);
+	if (actual_vecs < min_vectors) {
+		dev_err(&adapter->pdev->dev, "Failed to allocate minimum MSIX vectors required: %d\n",
+			actual_vecs);
 		err = -EAGAIN;
 		goto send_dealloc_vecs;
 	}
 
-	adapter->msix_entries = kcalloc(v_actual, sizeof(struct msix_entry),
-					GFP_KERNEL);
+	if (idpf_is_rdma_cap_ena(adapter)) {
+		if (actual_vecs < total_vecs) {
+			dev_warn(&adapter->pdev->dev,
+				 "Warning: %d vectors requested, only %d available. Defaulting to minimum (%d) for RDMA and remaining for LAN.\n",
+				 total_vecs, actual_vecs, IDPF_MIN_RDMA_VEC);
+			num_rdma_vecs = IDPF_MIN_RDMA_VEC;
+		}
 
+		adapter->rdma_msix_entries = kcalloc(num_rdma_vecs,
+						     sizeof(struct msix_entry),
+						     GFP_KERNEL);
+		if (!adapter->rdma_msix_entries) {
+			err = -ENOMEM;
+			goto free_irq;
+		}
+	}
+
+	num_lan_vecs = actual_vecs - num_rdma_vecs;
+	adapter->msix_entries = kcalloc(num_lan_vecs, sizeof(struct msix_entry),
+					GFP_KERNEL);
 	if (!adapter->msix_entries) {
 		err = -ENOMEM;
-		goto free_irq;
+		goto free_rdma_msix;
 	}
 
 	adapter->mb_vector.v_idx = le16_to_cpu(adapter->caps.mailbox_vector_id);
 
-	vecids = kcalloc(total_vecs, sizeof(u16), GFP_KERNEL);
+	vecids = kcalloc(actual_vecs, sizeof(u16), GFP_KERNEL);
 	if (!vecids) {
 		err = -ENOMEM;
 		goto free_msix;
 	}
 
-	num_vec_ids = idpf_get_vec_ids(adapter, vecids, total_vecs,
+	num_vec_ids = idpf_get_vec_ids(adapter, vecids, actual_vecs,
 				       &adapter->req_vec_chunks->vchunks);
-	if (num_vec_ids < v_actual) {
+	if (num_vec_ids < actual_vecs) {
 		err = -EINVAL;
 		goto free_vecids;
 	}
 
-	for (vector = 0; vector < v_actual; vector++) {
+	for (vector = 0; vector < num_lan_vecs; vector++) {
 		adapter->msix_entries[vector].entry = vecids[vector];
 		adapter->msix_entries[vector].vector =
 			pci_irq_vector(adapter->pdev, vector);
 	}
+	for (i = 0; i < num_rdma_vecs; vector++, i++) {
+		adapter->rdma_msix_entries[i].entry = vecids[vector];
+		adapter->rdma_msix_entries[i].vector =
+			pci_irq_vector(adapter->pdev, vector);
+	}
 
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
@@ -383,6 +429,9 @@ int idpf_intr_req(struct idpf_adapter *adapter)
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
index 36a0f828a6f8..281de655a813 100644
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
index 11b8f6f05799..a2881979c7f8 100644
--- a/drivers/net/ethernet/intel/idpf/virtchnl2.h
+++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h
@@ -483,6 +483,8 @@ VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_version_info);
  *			segment offload.
  * @max_hdr_buf_per_lso: Max number of header buffers that can be used for
  *			 an LSO.
+ * @num_rdma_allocated_vectors: Maximum number of allocated RDMA vectors for
+ *				the device.
  * @pad1: Padding for future extensions.
  *
  * Dataplane driver sends this message to CP to negotiate capabilities and
@@ -530,7 +532,8 @@ struct virtchnl2_get_capabilities {
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

