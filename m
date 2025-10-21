Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 35890BF9339
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Oct 2025 01:20:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7AA1B82CE4;
	Tue, 21 Oct 2025 23:20:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bexIKLmoTgNA; Tue, 21 Oct 2025 23:20:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2922782977
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761088816;
	bh=dzYnMKWW2VI8SP30fOVdqbUj504gJrrTd82OXuKkqgQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RKWpeZ9P9BV6wXDlGPPJA3uFNJk035bZ2w0UNYbp5GlYUIobtyWOqFqkcHHPDPgoz
	 kTnaGwSFUITjmDPZdVNwu7e4+D8fpOU/Ag/Ub/ZFelX2NBds+Dbs4ae0nvBVcaxft6
	 IkS/lGUqMzUDeamU3yXnDhG1Do3Ec/EvKTqnqqHhJ5V5UhCBxBC9sut8GcBE6URTsk
	 7zUUvEMqCeq9G7b63yhPs/cKtHn1mBInxVslVJdjLu/DoqI6/LqdPUbrYN4BrHZGRb
	 Slox8MyhKtL7NPFMN6DreFjxp7sQdU2jKbnUUI+4wDV/miDeuZElp1ThXwvEpYU81f
	 x+iA7Plbtn/bQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2922782977;
	Tue, 21 Oct 2025 23:20:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 820C8277
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 23:20:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 740DC40D9C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 23:20:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Sdj51fTZZ1VP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Oct 2025 23:20:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2BB1140D91
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2BB1140D91
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2BB1140D91
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 23:20:12 +0000 (UTC)
X-CSE-ConnectionGUID: KyO0WWdrTR2FBLCfg1zO8Q==
X-CSE-MsgGUID: +/rNf7aqSeufFbRum1vKEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74665325"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="74665325"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 16:20:11 -0700
X-CSE-ConnectionGUID: kFsNy+nDSd6yIzalhtK9hw==
X-CSE-MsgGUID: MvzvH5SZS9qWmjvJFfZ5pA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="214352299"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.14])
 by orviesa002.jf.intel.com with ESMTP; 21 Oct 2025 16:20:11 -0700
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Date: Tue, 21 Oct 2025 16:30:47 -0700
Message-Id: <20251021233056.1320108-2-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20251021233056.1320108-1-joshua.a.hay@intel.com>
References: <20251021233056.1320108-1-joshua.a.hay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761088813; x=1792624813;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c51wRCNpb/c2FzrlyFdWZvS7ciHnFHPfgq3HRIjSNN8=;
 b=eSrPBgwqkVOOEp/gugpJ2Ox3HHs012Di8lRHOyRSofJ4eoU1bl8iMeCj
 b5bwMxW7Kc6wFiFizTzbia6egohGyB6lKQ/vZ5q9khiMGDQ+h6V6uKWtN
 +ZbI6VPaXnR0o+BWi+P/ISQB8zj1Vd7+/mGE89EZJ+yrreJqD15KoE3U6
 cQxSvGgzPrUWu3EZeQGeTHfizXLg6q2gM+HK0Ed1h+IFoNay9kMVsaZQR
 I/cI+HOlWwNM017N9GR9aLYVnLAKzHOqXWdVsUAi9XA8mbNtxEBZZyTte
 tjdPQ+Aakl6Q06ELEZrKUOsNBDvy4G4KlE+22kZyEvmfvDeF2ts1C3a14
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eSrPBgwq
Subject: [Intel-wired-lan] [PATCH iwl-next v9 01/10] idpf: introduce local
 idpf structure to store virtchnl queue chunks
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

From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>

Queue ID and register info received from device Control Plane is stored
locally in the same little endian format. As the queue chunks are
retrieved in 3 functions, lexx_to_cpu conversions are done each time.
Instead introduce a new idpf structure to store the received queue info.
It also avoids conditional check to retrieve queue chunks.

With this change, there is no need to store the queue chunks in
'req_qs_chunks' field. So remove that.

Suggested-by: Milena Olech <milena.olech@intel.com>
Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>

---
v8: rebase on AF_XDP series
---
 drivers/net/ethernet/intel/idpf/idpf.h        |  31 +++-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  35 ++--
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 155 +++++++++---------
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |  11 +-
 4 files changed, 140 insertions(+), 92 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index f0387b83a9ed..ef75f8cadb2e 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -553,11 +553,38 @@ struct idpf_vector_lifo {
 	u16 *vec_idx;
 };
 
+/**
+ * idpf_queue_id_reg_chunk - individual queue ID and register chunk
+ * @qtail_reg_start: queue tail register offset
+ * @qtail_reg_spacing: queue tail register spacing
+ * @type: queue type of the queues in the chunk
+ * @start_queue_id: starting queue ID in the chunk
+ * @num_queues: number of queues in the chunk
+ */
+struct idpf_queue_id_reg_chunk {
+	u64 qtail_reg_start;
+	u32 qtail_reg_spacing;
+	u32 type;
+	u32 start_queue_id;
+	u32 num_queues;
+};
+
+/**
+ * idpf_queue_id_reg_info - struct to store the queue ID and register chunk
+ *			    info received over the mailbox
+ * @num_chunks: number of chunks
+ * @queue_chunks: array of chunks
+ */
+struct idpf_queue_id_reg_info {
+	u16 num_chunks;
+	struct idpf_queue_id_reg_chunk *queue_chunks;
+};
+
 /**
  * struct idpf_vport_config - Vport configuration data
  * @user_config: see struct idpf_vport_user_config_data
  * @max_q: Maximum possible queues
- * @req_qs_chunks: Queue chunk data for requested queues
+ * @qid_reg_info: Struct to store the queue ID and register info
  * @mac_filter_list_lock: Lock to protect mac filters
  * @flow_steer_list_lock: Lock to protect fsteer filters
  * @flags: See enum idpf_vport_config_flags
@@ -565,7 +592,7 @@ struct idpf_vector_lifo {
 struct idpf_vport_config {
 	struct idpf_vport_user_config_data user_config;
 	struct idpf_vport_max_q max_q;
-	struct virtchnl2_add_queues *req_qs_chunks;
+	struct idpf_queue_id_reg_info qid_reg_info;
 	spinlock_t mac_filter_list_lock;
 	spinlock_t flow_steer_list_lock;
 	DECLARE_BITMAP(flags, IDPF_VPORT_CONFIG_FLAGS_NBITS);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index bd38ecc7872c..199400a928d0 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -916,6 +916,7 @@ static void idpf_remove_features(struct idpf_vport *vport)
 static void idpf_vport_stop(struct idpf_vport *vport, bool rtnl)
 {
 	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
+	struct idpf_queue_id_reg_info *chunks;
 
 	if (np->state <= __IDPF_VPORT_DOWN)
 		return;
@@ -926,6 +927,8 @@ static void idpf_vport_stop(struct idpf_vport *vport, bool rtnl)
 	netif_carrier_off(vport->netdev);
 	netif_tx_disable(vport->netdev);
 
+	chunks = &vport->adapter->vport_config[vport->idx]->qid_reg_info;
+
 	idpf_send_disable_vport_msg(vport);
 	idpf_send_disable_queues_msg(vport);
 	idpf_send_map_unmap_queue_vector_msg(vport, false);
@@ -935,7 +938,7 @@ static void idpf_vport_stop(struct idpf_vport *vport, bool rtnl)
 	 * instead of deleting and reallocating the vport.
 	 */
 	if (test_and_clear_bit(IDPF_VPORT_DEL_QUEUES, vport->flags))
-		idpf_send_delete_queues_msg(vport);
+		idpf_send_delete_queues_msg(vport, chunks);
 
 	idpf_remove_features(vport);
 
@@ -1037,15 +1040,14 @@ static void idpf_vport_rel(struct idpf_vport *vport)
 
 	kfree(vport->q_vector_idxs);
 	vport->q_vector_idxs = NULL;
+	kfree(vport_config->qid_reg_info.queue_chunks);
+	vport_config->qid_reg_info.queue_chunks = NULL;
 
 	kfree(adapter->vport_params_recvd[idx]);
 	adapter->vport_params_recvd[idx] = NULL;
 	kfree(adapter->vport_params_reqd[idx]);
 	adapter->vport_params_reqd[idx] = NULL;
-	if (adapter->vport_config[idx]) {
-		kfree(adapter->vport_config[idx]->req_qs_chunks);
-		adapter->vport_config[idx]->req_qs_chunks = NULL;
-	}
+
 	kfree(vport);
 	adapter->num_alloc_vports--;
 }
@@ -1164,6 +1166,7 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
 	u16 idx = adapter->next_vport;
 	struct idpf_vport *vport;
 	u16 num_max_q;
+	int err;
 
 	if (idx == IDPF_NO_FREE_SLOT)
 		return NULL;
@@ -1212,7 +1215,9 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
 	if (!vport->q_vector_idxs)
 		goto free_vport;
 
-	idpf_vport_init(vport, max_q);
+	err = idpf_vport_init(vport, max_q);
+	if (err)
+		goto free_vector_idxs;
 
 	/* This alloc is done separate from the LUT because it's not strictly
 	 * dependent on how many queues we have. If we change number of queues
@@ -1222,7 +1227,7 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
 	rss_data = &adapter->vport_config[idx]->user_config.rss_data;
 	rss_data->rss_key = kzalloc(rss_data->rss_key_size, GFP_KERNEL);
 	if (!rss_data->rss_key)
-		goto free_vector_idxs;
+		goto free_qreg_chunks;
 
 	/* Initialize default rss key */
 	netdev_rss_key_fill((void *)rss_data->rss_key, rss_data->rss_key_size);
@@ -1237,6 +1242,8 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
 
 	return vport;
 
+free_qreg_chunks:
+	kfree(adapter->vport_config[idx]->qid_reg_info.queue_chunks);
 free_vector_idxs:
 	kfree(vport->q_vector_idxs);
 free_vport:
@@ -1414,6 +1421,7 @@ static int idpf_vport_open(struct idpf_vport *vport, bool rtnl)
 	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
 	struct idpf_adapter *adapter = vport->adapter;
 	struct idpf_vport_config *vport_config;
+	struct idpf_queue_id_reg_info *chunks;
 	int err;
 
 	if (np->state != __IDPF_VPORT_DOWN)
@@ -1436,7 +1444,10 @@ static int idpf_vport_open(struct idpf_vport *vport, bool rtnl)
 	if (err)
 		goto intr_rel;
 
-	err = idpf_vport_queue_ids_init(vport);
+	vport_config = adapter->vport_config[vport->idx];
+	chunks = &vport_config->qid_reg_info;
+
+	err = idpf_vport_queue_ids_init(vport, chunks);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to initialize queue ids for vport %u: %d\n",
 			vport->vport_id, err);
@@ -1450,7 +1461,7 @@ static int idpf_vport_open(struct idpf_vport *vport, bool rtnl)
 		goto queues_rel;
 	}
 
-	err = idpf_queue_reg_init(vport);
+	err = idpf_queue_reg_init(vport, chunks);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to initialize queue registers for vport %u: %d\n",
 			vport->vport_id, err);
@@ -1507,7 +1518,6 @@ static int idpf_vport_open(struct idpf_vport *vport, bool rtnl)
 
 	idpf_restore_features(vport);
 
-	vport_config = adapter->vport_config[vport->idx];
 	if (vport_config->user_config.rss_data.rss_lut)
 		err = idpf_config_rss(vport);
 	else
@@ -1967,6 +1977,7 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
 	enum idpf_vport_state current_state = np->state;
 	struct idpf_adapter *adapter = vport->adapter;
+	struct idpf_vport_config *vport_config;
 	struct idpf_vport *new_vport;
 	int err;
 
@@ -2016,8 +2027,10 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 		goto free_vport;
 	}
 
+	vport_config = adapter->vport_config[vport->idx];
+
 	if (current_state <= __IDPF_VPORT_DOWN) {
-		idpf_send_delete_queues_msg(vport);
+		idpf_send_delete_queues_msg(vport, &vport_config->qid_reg_info);
 	} else {
 		set_bit(IDPF_VPORT_DEL_QUEUES, vport->flags);
 		idpf_vport_stop(vport, false);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index cbb5fa30f5a0..2251ad8aa67b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -1257,6 +1257,42 @@ static void idpf_init_avail_queues(struct idpf_adapter *adapter)
 	avail_queues->avail_complq = le16_to_cpu(caps->max_tx_complq);
 }
 
+/**
+ * idpf_vport_init_queue_reg_chunks - initialize queue register chunks
+ * @vport_config: persistent vport structure to store the queue register info
+ * @schunks: source chunks to copy data from
+ *
+ * Return: %0 on success, -%errno on failure.
+ */
+static int
+idpf_vport_init_queue_reg_chunks(struct idpf_vport_config *vport_config,
+				 struct virtchnl2_queue_reg_chunks *schunks)
+{
+	struct idpf_queue_id_reg_info *q_info = &vport_config->qid_reg_info;
+	u16 num_chunks = le16_to_cpu(schunks->num_chunks);
+
+	kfree(q_info->queue_chunks);
+
+	q_info->num_chunks = num_chunks;
+	q_info->queue_chunks = kcalloc(num_chunks, sizeof(*q_info->queue_chunks),
+				       GFP_KERNEL);
+	if (!q_info->queue_chunks)
+		return -ENOMEM;
+
+	for (u16 i = 0; i < num_chunks; i++) {
+		struct idpf_queue_id_reg_chunk *dchunk = &q_info->queue_chunks[i];
+		struct virtchnl2_queue_reg_chunk *schunk = &schunks->chunks[i];
+
+		dchunk->qtail_reg_start = le64_to_cpu(schunk->qtail_reg_start);
+		dchunk->qtail_reg_spacing = le32_to_cpu(schunk->qtail_reg_spacing);
+		dchunk->type = le32_to_cpu(schunk->type);
+		dchunk->start_queue_id = le32_to_cpu(schunk->start_queue_id);
+		dchunk->num_queues = le32_to_cpu(schunk->num_queues);
+	}
+
+	return 0;
+}
+
 /**
  * idpf_get_reg_intr_vecs - Get vector queue register offset
  * @vport: virtual port structure
@@ -1317,25 +1353,25 @@ int idpf_get_reg_intr_vecs(struct idpf_vport *vport,
  * are filled.
  */
 static int idpf_vport_get_q_reg(u32 *reg_vals, int num_regs, u32 q_type,
-				struct virtchnl2_queue_reg_chunks *chunks)
+				struct idpf_queue_id_reg_info *chunks)
 {
-	u16 num_chunks = le16_to_cpu(chunks->num_chunks);
+	u16 num_chunks = chunks->num_chunks;
 	int reg_filled = 0, i;
 	u32 reg_val;
 
 	while (num_chunks--) {
-		struct virtchnl2_queue_reg_chunk *chunk;
+		struct idpf_queue_id_reg_chunk *chunk;
 		u16 num_q;
 
-		chunk = &chunks->chunks[num_chunks];
-		if (le32_to_cpu(chunk->type) != q_type)
+		chunk = &chunks->queue_chunks[num_chunks];
+		if (chunk->type != q_type)
 			continue;
 
-		num_q = le32_to_cpu(chunk->num_queues);
-		reg_val = le64_to_cpu(chunk->qtail_reg_start);
+		num_q = chunk->num_queues;
+		reg_val = chunk->qtail_reg_start;
 		for (i = 0; i < num_q && reg_filled < num_regs ; i++) {
 			reg_vals[reg_filled++] = reg_val;
-			reg_val += le32_to_cpu(chunk->qtail_reg_spacing);
+			reg_val += chunk->qtail_reg_spacing;
 		}
 	}
 
@@ -1405,15 +1441,13 @@ static int __idpf_queue_reg_init(struct idpf_vport *vport, u32 *reg_vals,
 /**
  * idpf_queue_reg_init - initialize queue registers
  * @vport: virtual port structure
+ * @chunks: queue registers received over mailbox
  *
  * Return 0 on success, negative on failure
  */
-int idpf_queue_reg_init(struct idpf_vport *vport)
+int idpf_queue_reg_init(struct idpf_vport *vport,
+			struct idpf_queue_id_reg_info *chunks)
 {
-	struct virtchnl2_create_vport *vport_params;
-	struct virtchnl2_queue_reg_chunks *chunks;
-	struct idpf_vport_config *vport_config;
-	u16 vport_idx = vport->idx;
 	int num_regs, ret = 0;
 	u32 *reg_vals;
 
@@ -1422,16 +1456,6 @@ int idpf_queue_reg_init(struct idpf_vport *vport)
 	if (!reg_vals)
 		return -ENOMEM;
 
-	vport_config = vport->adapter->vport_config[vport_idx];
-	if (vport_config->req_qs_chunks) {
-		struct virtchnl2_add_queues *vc_aq =
-		  (struct virtchnl2_add_queues *)vport_config->req_qs_chunks;
-		chunks = &vc_aq->chunks;
-	} else {
-		vport_params = vport->adapter->vport_params_recvd[vport_idx];
-		chunks = &vport_params->chunks;
-	}
-
 	/* Initialize Tx queue tail register address */
 	num_regs = idpf_vport_get_q_reg(reg_vals, IDPF_LARGE_MAX_Q,
 					VIRTCHNL2_QUEUE_TYPE_TX,
@@ -2477,46 +2501,36 @@ int idpf_send_disable_queues_msg(struct idpf_vport *vport)
  * @num_chunks: number of chunks to copy
  */
 static void idpf_convert_reg_to_queue_chunks(struct virtchnl2_queue_chunk *dchunks,
-					     struct virtchnl2_queue_reg_chunk *schunks,
+					     struct idpf_queue_id_reg_chunk *schunks,
 					     u16 num_chunks)
 {
 	u16 i;
 
 	for (i = 0; i < num_chunks; i++) {
-		dchunks[i].type = schunks[i].type;
-		dchunks[i].start_queue_id = schunks[i].start_queue_id;
-		dchunks[i].num_queues = schunks[i].num_queues;
+		dchunks[i].type = cpu_to_le32(schunks[i].type);
+		dchunks[i].start_queue_id = cpu_to_le32(schunks[i].start_queue_id);
+		dchunks[i].num_queues = cpu_to_le32(schunks[i].num_queues);
 	}
 }
 
 /**
  * idpf_send_delete_queues_msg - send delete queues virtchnl message
- * @vport: Virtual port private data structure
+ * @vport: virtual port private data structure
+ * @chunks: queue ids received over mailbox
  *
  * Will send delete queues virtchnl message. Return 0 on success, negative on
  * failure.
  */
-int idpf_send_delete_queues_msg(struct idpf_vport *vport)
+int idpf_send_delete_queues_msg(struct idpf_vport *vport,
+				struct idpf_queue_id_reg_info *chunks)
 {
 	struct virtchnl2_del_ena_dis_queues *eq __free(kfree) = NULL;
-	struct virtchnl2_create_vport *vport_params;
-	struct virtchnl2_queue_reg_chunks *chunks;
 	struct idpf_vc_xn_params xn_params = {};
-	struct idpf_vport_config *vport_config;
-	u16 vport_idx = vport->idx;
 	ssize_t reply_sz;
 	u16 num_chunks;
 	int buf_size;
 
-	vport_config = vport->adapter->vport_config[vport_idx];
-	if (vport_config->req_qs_chunks) {
-		chunks = &vport_config->req_qs_chunks->chunks;
-	} else {
-		vport_params = vport->adapter->vport_params_recvd[vport_idx];
-		chunks = &vport_params->chunks;
-	}
-
-	num_chunks = le16_to_cpu(chunks->num_chunks);
+	num_chunks = chunks->num_chunks;
 	buf_size = struct_size(eq, chunks.chunks, num_chunks);
 
 	eq = kzalloc(buf_size, GFP_KERNEL);
@@ -2526,7 +2540,7 @@ int idpf_send_delete_queues_msg(struct idpf_vport *vport)
 	eq->vport_id = cpu_to_le32(vport->vport_id);
 	eq->chunks.num_chunks = cpu_to_le16(num_chunks);
 
-	idpf_convert_reg_to_queue_chunks(eq->chunks.chunks, chunks->chunks,
+	idpf_convert_reg_to_queue_chunks(eq->chunks.chunks, chunks->queue_chunks,
 					 num_chunks);
 
 	xn_params.vc_op = VIRTCHNL2_OP_DEL_QUEUES;
@@ -2583,8 +2597,6 @@ int idpf_send_add_queues_msg(const struct idpf_vport *vport, u16 num_tx_q,
 		return -ENOMEM;
 
 	vport_config = vport->adapter->vport_config[vport_idx];
-	kfree(vport_config->req_qs_chunks);
-	vport_config->req_qs_chunks = NULL;
 
 	aq.vport_id = cpu_to_le32(vport->vport_id);
 	aq.num_tx_q = cpu_to_le16(num_tx_q);
@@ -2614,11 +2626,7 @@ int idpf_send_add_queues_msg(const struct idpf_vport *vport, u16 num_tx_q,
 	if (reply_sz < size)
 		return -EIO;
 
-	vport_config->req_qs_chunks = kmemdup(vc_msg, size, GFP_KERNEL);
-	if (!vport_config->req_qs_chunks)
-		return -ENOMEM;
-
-	return 0;
+	return idpf_vport_init_queue_reg_chunks(vport_config, &vc_msg->chunks);
 }
 
 /**
@@ -3642,8 +3650,10 @@ int idpf_vport_alloc_vec_indexes(struct idpf_vport *vport)
  * @max_q: vport max queue info
  *
  * Will initialize vport with the info received through MB earlier
+ *
+ * Return: %0 on success, -%errno on failure.
  */
-void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
+int idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
 {
 	struct idpf_adapter *adapter = vport->adapter;
 	struct virtchnl2_create_vport *vport_msg;
@@ -3658,6 +3668,11 @@ void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
 	rss_data = &vport_config->user_config.rss_data;
 	vport_msg = adapter->vport_params_recvd[idx];
 
+	err = idpf_vport_init_queue_reg_chunks(vport_config,
+					       &vport_msg->chunks);
+	if (err)
+		return err;
+
 	vport_config->max_q.max_txq = max_q->max_txq;
 	vport_config->max_q.max_rxq = max_q->max_rxq;
 	vport_config->max_q.max_complq = max_q->max_complq;
@@ -3690,15 +3705,17 @@ void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
 
 	if (!(vport_msg->vport_flags &
 	      cpu_to_le16(VIRTCHNL2_VPORT_UPLINK_PORT)))
-		return;
+		return 0;
 
 	err = idpf_ptp_get_vport_tstamps_caps(vport);
 	if (err) {
 		pci_dbg(vport->adapter->pdev, "Tx timestamping not supported\n");
-		return;
+		return err == -EOPNOTSUPP ? 0 : err;
 	}
 
 	INIT_WORK(&vport->tstamp_task, idpf_tstamp_task);
+
+	return 0;
 }
 
 /**
@@ -3757,21 +3774,21 @@ int idpf_get_vec_ids(struct idpf_adapter *adapter,
  * Returns number of ids filled
  */
 static int idpf_vport_get_queue_ids(u32 *qids, int num_qids, u16 q_type,
-				    struct virtchnl2_queue_reg_chunks *chunks)
+				    struct idpf_queue_id_reg_info *chunks)
 {
-	u16 num_chunks = le16_to_cpu(chunks->num_chunks);
+	u16 num_chunks = chunks->num_chunks;
 	u32 num_q_id_filled = 0, i;
 	u32 start_q_id, num_q;
 
 	while (num_chunks--) {
-		struct virtchnl2_queue_reg_chunk *chunk;
+		struct idpf_queue_id_reg_chunk *chunk;
 
-		chunk = &chunks->chunks[num_chunks];
-		if (le32_to_cpu(chunk->type) != q_type)
+		chunk = &chunks->queue_chunks[num_chunks];
+		if (chunk->type != q_type)
 			continue;
 
-		num_q = le32_to_cpu(chunk->num_queues);
-		start_q_id = le32_to_cpu(chunk->start_queue_id);
+		num_q = chunk->num_queues;
+		start_q_id = chunk->start_queue_id;
 
 		for (i = 0; i < num_q; i++) {
 			if ((num_q_id_filled + i) < num_qids) {
@@ -3864,30 +3881,18 @@ static int __idpf_vport_queue_ids_init(struct idpf_vport *vport,
 /**
  * idpf_vport_queue_ids_init - Initialize queue ids from Mailbox parameters
  * @vport: virtual port for which the queues ids are initialized
+ * @chunks: queue ids received over mailbox
  *
  * Will initialize all queue ids with ids received as mailbox parameters.
  * Returns 0 on success, negative if all the queues are not initialized.
  */
-int idpf_vport_queue_ids_init(struct idpf_vport *vport)
+int idpf_vport_queue_ids_init(struct idpf_vport *vport,
+			      struct idpf_queue_id_reg_info *chunks)
 {
-	struct virtchnl2_create_vport *vport_params;
-	struct virtchnl2_queue_reg_chunks *chunks;
-	struct idpf_vport_config *vport_config;
-	u16 vport_idx = vport->idx;
 	int num_ids, err = 0;
 	u16 q_type;
 	u32 *qids;
 
-	vport_config = vport->adapter->vport_config[vport_idx];
-	if (vport_config->req_qs_chunks) {
-		struct virtchnl2_add_queues *vc_aq =
-			(struct virtchnl2_add_queues *)vport_config->req_qs_chunks;
-		chunks = &vc_aq->chunks;
-	} else {
-		vport_params = vport->adapter->vport_params_recvd[vport_idx];
-		chunks = &vport_params->chunks;
-	}
-
 	qids = kcalloc(IDPF_MAX_QIDS, sizeof(u32), GFP_KERNEL);
 	if (!qids)
 		return -ENOMEM;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
index eac3d15daa42..a8bded37a86a 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -103,8 +103,10 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter);
 
 int idpf_get_reg_intr_vecs(struct idpf_vport *vport,
 			   struct idpf_vec_regs *reg_vals);
-int idpf_queue_reg_init(struct idpf_vport *vport);
-int idpf_vport_queue_ids_init(struct idpf_vport *vport);
+int idpf_queue_reg_init(struct idpf_vport *vport,
+			struct idpf_queue_id_reg_info *chunks);
+int idpf_vport_queue_ids_init(struct idpf_vport *vport,
+			      struct idpf_queue_id_reg_info *chunks);
 
 bool idpf_vport_is_cap_ena(struct idpf_vport *vport, u16 flag);
 bool idpf_sideband_flow_type_ena(struct idpf_vport *vport, u32 flow_type);
@@ -143,7 +145,7 @@ int idpf_send_disable_queues_msg(struct idpf_vport *vport);
 int idpf_send_config_queues_msg(struct idpf_vport *vport);
 int idpf_send_enable_queues_msg(struct idpf_vport *vport);
 
-void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q);
+int idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q);
 u32 idpf_get_vport_id(struct idpf_vport *vport);
 int idpf_send_create_vport_msg(struct idpf_adapter *adapter,
 			       struct idpf_vport_max_q *max_q);
@@ -158,7 +160,8 @@ void idpf_vport_dealloc_max_qs(struct idpf_adapter *adapter,
 			       struct idpf_vport_max_q *max_q);
 int idpf_send_add_queues_msg(const struct idpf_vport *vport, u16 num_tx_q,
 			     u16 num_complq, u16 num_rx_q, u16 num_rx_bufq);
-int idpf_send_delete_queues_msg(struct idpf_vport *vport);
+int idpf_send_delete_queues_msg(struct idpf_vport *vport,
+				struct idpf_queue_id_reg_info *chunks);
 
 int idpf_vport_alloc_vec_indexes(struct idpf_vport *vport);
 int idpf_get_vec_ids(struct idpf_adapter *adapter,
-- 
2.39.2

