Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E385C54E70
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Nov 2025 01:31:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F142040C2F;
	Thu, 13 Nov 2025 00:31:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2FkAu9MEb90g; Thu, 13 Nov 2025 00:31:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A582E40B8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762993861;
	bh=EGX8QCVtRnsdOqQWC0938yHrz5bdgKBSEbg30/qrbfo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BPuthmfH/u+s30cUxpHgc1+fypaSSy2chKq9PlT7f/yAtneUfdBxVg3lfMMWEnftt
	 IaVofL6dmpH8uKts1Yq57DmZUoPAAuKZsgzsFfhnMG2dGVEZHZUZw9PvdTEsrRHEDm
	 wKredC+cpoOo6Lqpe6X2Cm5w0WQzsC+J2ZCa96WRIkrrWLRmGZNqnhmgHpxC3v+kAx
	 O96gEuBTqLIqVdb7D4LkGadLBQg1Q8v9zZ/QmQ8CkDx6PzxdcKfy1DYXtZNf9wJ1uF
	 JYqkixnmdYKOPBXgAxH9J0Myjcosv2iopSn62osGD6kwaGIZ5MkxjGhscTiXIG/NTm
	 H6FV7PK9//oTg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A582E40B8B;
	Thu, 13 Nov 2025 00:31:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 95006230
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 00:31:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BC4B860E00
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 00:30:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8Bqc8rRiC7U7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Nov 2025 00:30:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5AFC86066C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5AFC86066C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5AFC86066C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 00:30:58 +0000 (UTC)
X-CSE-ConnectionGUID: /Dgv+si5Soy5Rx8IWbQXbQ==
X-CSE-MsgGUID: HSMm+DmxTg21MNa1rO8zSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="82465648"
X-IronPort-AV: E=Sophos;i="6.19,300,1754982000"; d="scan'208";a="82465648"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 16:30:57 -0800
X-CSE-ConnectionGUID: ShX4DbGwQbabcqodYZpNlA==
X-CSE-MsgGUID: uMlFzebcRlGZdZGMuT9ekA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,300,1754982000"; d="scan'208";a="190099551"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.14])
 by fmviesa010.fm.intel.com with ESMTP; 12 Nov 2025 16:30:56 -0800
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Date: Wed, 12 Nov 2025 16:41:34 -0800
Message-Id: <20251113004143.2924761-2-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20251113004143.2924761-1-joshua.a.hay@intel.com>
References: <20251113004143.2924761-1-joshua.a.hay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762993858; x=1794529858;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YJNT71g8TDtjl6Qqq/nKz9fJYxXauaHGSuJQOy47c/I=;
 b=Q/vkYXT5NdqZLB/6ozneAIdLrlNdZo45kACo+iqpY8JZQ9g573/d7ZRI
 z65VivwVLtJzNUVT4RK81dKKKeLGiYIuNVtZxoj0E4gVdN8Y+GTe+W41b
 Tis77iwITPlzjDjpl6XB5O8zxinyxkggl4+R1aJ9SjHgyZNtH0iMPSbpQ
 avWwx1UMy2LJN1N2OYqhi3Kyng2PTQCG2TY1vCMzxnHcgKyBlIQ3ntbtX
 N9IUGb6Y2zlP8sVjdIChohqfXZrttnbSedVdGdMFY1TzfB7bSducp64QC
 vJp3wtneTLItdvzqimjiZ42UVL6uiikb35ufbHwR4LzVK859NdScmcDwo
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q/vkYXT5
Subject: [Intel-wired-lan] [PATCH iwl-next v10 01/10] idpf: introduce local
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
v10: prevent queue_chunk mem leak and add queue_chunk deinit helper func
v8: rebase on AF_XDP series
---
 drivers/net/ethernet/intel/idpf/idpf.h        |  31 +++-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  35 ++--
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 162 ++++++++++--------
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |  18 +-
 4 files changed, 154 insertions(+), 92 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index dab36c0c3cdc..0cafb2130668 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -551,11 +551,38 @@ struct idpf_vector_lifo {
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
@@ -563,7 +590,7 @@ struct idpf_vector_lifo {
 struct idpf_vport_config {
 	struct idpf_vport_user_config_data user_config;
 	struct idpf_vport_max_q max_q;
-	struct virtchnl2_add_queues *req_qs_chunks;
+	struct idpf_queue_id_reg_info qid_reg_info;
 	spinlock_t mac_filter_list_lock;
 	spinlock_t flow_steer_list_lock;
 	DECLARE_BITMAP(flags, IDPF_VPORT_CONFIG_FLAGS_NBITS);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index d9f6e9c0dcf9..e33a0d7f07aa 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -916,6 +916,7 @@ static void idpf_remove_features(struct idpf_vport *vport)
 static void idpf_vport_stop(struct idpf_vport *vport, bool rtnl)
 {
 	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
+	struct idpf_queue_id_reg_info *chunks;
 
 	if (!test_bit(IDPF_VPORT_UP, np->state))
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
+	idpf_vport_deinit_queue_reg_chunks(adapter->vport_config[idx]);
 free_vector_idxs:
 	kfree(vport->q_vector_idxs);
 free_vport:
@@ -1414,6 +1421,7 @@ static int idpf_vport_open(struct idpf_vport *vport, bool rtnl)
 	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
 	struct idpf_adapter *adapter = vport->adapter;
 	struct idpf_vport_config *vport_config;
+	struct idpf_queue_id_reg_info *chunks;
 	int err;
 
 	if (test_bit(IDPF_VPORT_UP, np->state))
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
 	bool vport_is_up = test_bit(IDPF_VPORT_UP, np->state);
 	struct idpf_adapter *adapter = vport->adapter;
+	struct idpf_vport_config *vport_config;
 	struct idpf_vport *new_vport;
 	int err;
 
@@ -2016,8 +2027,10 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 		goto free_vport;
 	}
 
+	vport_config = adapter->vport_config[vport->idx];
+
 	if (!vport_is_up) {
-		idpf_send_delete_queues_msg(vport);
+		idpf_send_delete_queues_msg(vport, &vport_config->qid_reg_info);
 	} else {
 		set_bit(IDPF_VPORT_DEL_QUEUES, vport->flags);
 		idpf_vport_stop(vport, false);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 44cd4b466c48..df687dc466e4 100644
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
@@ -3690,15 +3705,24 @@ void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
 
 	if (!(vport_msg->vport_flags &
 	      cpu_to_le16(VIRTCHNL2_VPORT_UPLINK_PORT)))
-		return;
+		return 0;
 
 	err = idpf_ptp_get_vport_tstamps_caps(vport);
 	if (err) {
 		pci_dbg(vport->adapter->pdev, "Tx timestamping not supported\n");
-		return;
+		if (err == -EOPNOTSUPP)
+			return 0;
+		goto err_out;
 	}
 
 	INIT_WORK(&vport->tstamp_task, idpf_tstamp_task);
+
+	return 0;
+
+err_out:
+	idpf_vport_deinit_queue_reg_chunks(vport_config);
+
+	return err;
 }
 
 /**
@@ -3757,21 +3781,21 @@ int idpf_get_vec_ids(struct idpf_adapter *adapter,
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
@@ -3864,30 +3888,18 @@ static int __idpf_vport_queue_ids_init(struct idpf_vport *vport,
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
index eac3d15daa42..6c8f8072e317 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -92,6 +92,7 @@ struct idpf_netdev_priv;
 struct idpf_vec_regs;
 struct idpf_vport;
 struct idpf_vport_max_q;
+struct idpf_vport_config;
 struct idpf_vport_user_config_data;
 
 ssize_t idpf_vc_xn_exec(struct idpf_adapter *adapter,
@@ -103,8 +104,16 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter);
 
 int idpf_get_reg_intr_vecs(struct idpf_vport *vport,
 			   struct idpf_vec_regs *reg_vals);
-int idpf_queue_reg_init(struct idpf_vport *vport);
-int idpf_vport_queue_ids_init(struct idpf_vport *vport);
+int idpf_queue_reg_init(struct idpf_vport *vport,
+			struct idpf_queue_id_reg_info *chunks);
+int idpf_vport_queue_ids_init(struct idpf_vport *vport,
+			      struct idpf_queue_id_reg_info *chunks);
+static inline void
+idpf_vport_deinit_queue_reg_chunks(struct idpf_vport_config *vport_cfg)
+{
+	kfree(vport_cfg->qid_reg_info.queue_chunks);
+	vport_cfg->qid_reg_info.queue_chunks = NULL;
+}
 
 bool idpf_vport_is_cap_ena(struct idpf_vport *vport, u16 flag);
 bool idpf_sideband_flow_type_ena(struct idpf_vport *vport, u32 flow_type);
@@ -143,7 +152,7 @@ int idpf_send_disable_queues_msg(struct idpf_vport *vport);
 int idpf_send_config_queues_msg(struct idpf_vport *vport);
 int idpf_send_enable_queues_msg(struct idpf_vport *vport);
 
-void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q);
+int idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q);
 u32 idpf_get_vport_id(struct idpf_vport *vport);
 int idpf_send_create_vport_msg(struct idpf_adapter *adapter,
 			       struct idpf_vport_max_q *max_q);
@@ -158,7 +167,8 @@ void idpf_vport_dealloc_max_qs(struct idpf_adapter *adapter,
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

