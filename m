Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A1AB3F96D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Sep 2025 11:01:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB0E7812F6;
	Tue,  2 Sep 2025 09:01:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zwu0MWLfnEIm; Tue,  2 Sep 2025 09:01:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 89059812D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756803689;
	bh=nBk4aTZPMZ8qd/OL7ighcnr2Ni2UuaEc/RBhFK21t7U=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FTHNZG9cyNpbHffyEKFmpHvSeSQE7/JdzT6AzCCjx9zaU6hZLvC/6F+CAKWtdY3RY
	 zIIszp5YuQDWKydbiKaI9v/DhXlhl7Y2GCbugRnO9sRFBKAzSNmUFJZbeZIRHsBrbr
	 26LICILcNqLudZMdSgNObs/HzXXy2tU0SeL7fME+F1MRQmyu7pRwrVAIyrnz2AcivU
	 pfUL68rrmQT0rTPMy9uJ6u5vy0Hthv3WImrTa00wTvoAeL3eYC5srLi/gwA3hiKhii
	 mMKt/9t7HCvyue7EhvhGlfl/8EcmoLbpiwXUAyOLrAVnZ423+HphMA7Ax50m3Od9eu
	 VfqrEZTsgkU2A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 89059812D4;
	Tue,  2 Sep 2025 09:01:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D939310E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 09:01:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C9DDF40920
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 09:01:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NLLOmGcKf9qf for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Sep 2025 09:01:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=anton.nadezhdin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6211D40B48
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6211D40B48
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6211D40B48
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 09:01:25 +0000 (UTC)
X-CSE-ConnectionGUID: 81/nlSqMR36BlhQosT+91A==
X-CSE-MsgGUID: KZMtFxDvS26cSXi1qfEtcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11540"; a="76666702"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="76666702"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 02:01:24 -0700
X-CSE-ConnectionGUID: qokKNQGARWe7ZWFQKbcC7A==
X-CSE-MsgGUID: LlDir4i5R9KUR2PMzpzjqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="176494154"
Received: from host59.igk.intel.com ([10.123.220.59])
 by fmviesa004.fm.intel.com with ESMTP; 02 Sep 2025 02:01:22 -0700
From: Anton Nadezhdin <anton.nadezhdin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 richardcochran@gmail.com, Milena Olech <milena.olech@intel.com>,
 Anton Nadezhdin <anton.nadezhdin@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Tue,  2 Sep 2025 06:50:24 -0400
Message-ID: <20250902105321.5750-3-anton.nadezhdin@intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20250902105321.5750-1-anton.nadezhdin@intel.com>
References: <20250902105321.5750-1-anton.nadezhdin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756803685; x=1788339685;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=023AtQm9hKj7OSuODX7ZKQ7pBtxkG0JPTCftMpQLw8Q=;
 b=aAR6QMfOzA5zCOg/f8SE2WU4RNm63IUxVVzvetIM5k6++vgAmS0CLo8P
 pGkjnGpiJqzrtmWiSRs4x3v8ynG2eqLskJVJTMMorUNg28Vgtq5F4opT4
 bFcg42JSjxv4hwd0pPEGhD+1J5TGlpzWf123rP88HcIN9ofWqTu0KkC3V
 LucLGMRNO3+pEzSiAwQRlUI1scAettsHytT+lbq157BJtY0H+8H9GdHFC
 gJNHweozI6aEhNQAcgziuc5SiVHIes4IZFHHftf3D47NUgu7hKN/qtuS+
 Pljt9dBB5KLnVUUKkvASDaeCI+2bWXLS0jqXx2AraWVxP+d8rnAkObdEq
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aAR6QMfO
Subject: [Intel-wired-lan] [PATCH iwl-next 2/2] idpf: add direct method for
 disciplining Tx timestamping
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

From: Milena Olech <milena.olech@intel.com>

Currently IDPF supports only mailbox access to PHC operations and
Tx timestamping, however the driver shall also be able to handle direct
access. The difference is that PHC/timestamps actions are performed
directly, through BAR registers, instead of sending a virtchnl message to
CP. Registers offsets are negotiated with the CP during the capabilities
negotiation.

Signed-off-by: Milena Olech <milena.olech@intel.com>
Co-developed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 103 ++++++++++++++++-
 drivers/net/ethernet/intel/idpf/idpf_ptp.h    |  45 ++++++--
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  85 +++++++++-----
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |   4 +
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |   3 +-
 .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   | 108 +++++++-----------
 drivers/net/ethernet/intel/idpf/virtchnl2.h   |   6 +-
 7 files changed, 245 insertions(+), 109 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
index b19dbddf95bf..02881f2902ae 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
@@ -746,6 +746,7 @@ u64 idpf_ptp_extend_ts(struct idpf_vport *vport, u64 in_tstamp)
  * @tx_q: Transmit queue on which the Tx timestamp is requested
  * @skb: The SKB to associate with this timestamp request
  * @idx: Index of the Tx timestamp latch
+ * @params: pointer to tx params struct
  *
  * Request tx timestamp index negotiated during PTP init that will be set into
  * Tx descriptor.
@@ -754,7 +755,7 @@ u64 idpf_ptp_extend_ts(struct idpf_vport *vport, u64 in_tstamp)
  * -errno otherwise.
  */
 int idpf_ptp_request_ts(struct idpf_tx_queue *tx_q, struct sk_buff *skb,
-			u32 *idx)
+			u32 *idx, struct idpf_tx_splitq_params *params)
 {
 	struct idpf_ptp_tx_tstamp *ptp_tx_tstamp;
 	struct list_head *head;
@@ -770,6 +771,13 @@ int idpf_ptp_request_ts(struct idpf_tx_queue *tx_q, struct sk_buff *skb,
 
 	ptp_tx_tstamp = list_first_entry(head, struct idpf_ptp_tx_tstamp,
 					 list_member);
+
+	if (xa_is_err(xa_store(&tx_q->ptp_tx_tstamps, params->compl_tag,
+			       ptp_tx_tstamp, GFP_ATOMIC))) {
+		spin_unlock(&tx_q->cached_tstamp_caps->latches_lock);
+		return -ENOBUFS;
+	}
+
 	list_del(&ptp_tx_tstamp->list_member);
 
 	ptp_tx_tstamp->skb = skb_get(skb);
@@ -781,8 +789,98 @@ int idpf_ptp_request_ts(struct idpf_tx_queue *tx_q, struct sk_buff *skb,
 	spin_unlock(&tx_q->cached_tstamp_caps->latches_lock);
 
 	*idx = ptp_tx_tstamp->idx;
+	params->ptp_tx_tstamp = ptp_tx_tstamp;
+
+	return 0;
+}
+
+/**
+ * idpf_ptp_update_tstamp_tracker - Update the Tx timestamp tracker based on
+ *				    the skb compatibility.
+ * @caps: Tx timestamp capabilities that monitor the latch status
+ * @skb: skb for which the tstamp value is returned through virtchnl message
+ * @state_before: Current state of the Tx timestamp latch
+ * @state_after: Expected state of the Tx timestamp latch
+ *
+ * Find a proper skb tracker for which the Tx timestamp is received and change
+ * the state to expected value.
+ *
+ * Return: true if the tracker has been found and updated, false otherwise.
+ */
+bool idpf_ptp_update_tstamp_tracker(struct idpf_ptp_vport_tx_tstamp_caps *caps,
+				    struct sk_buff *skb,
+				    enum idpf_ptp_tx_tstamp_state state_before,
+				    enum idpf_ptp_tx_tstamp_state state_after)
+{
+	bool updated = false;
+
+	spin_lock_bh(&caps->status_lock);
+	for (u16 i = 0; i < caps->num_entries; i++) {
+		struct idpf_ptp_tx_tstamp_status *status;
+
+		status = &caps->tx_tstamp_status[i];
+		if (skb == status->skb && status->state == state_before) {
+			status->state = state_after;
+			updated = true;
+			break;
+		}
+	}
+	spin_unlock_bh(&caps->status_lock);
+
+	return updated;
+}
+
+/**
+ * idpf_ptp_get_tx_tstamp - Read the Tx timestamp value
+ * @vport: Virtual port structure
+ * @tx_tstamp: Tx timestamp structure that holds the latch register offsets
+ *
+ * Read the Tx timestamp value directly - through BAR registers - and provide
+ * it back to the skb.
+ *
+ * Return: 0 on success, negative error code on failure.
+ */
+int idpf_ptp_get_tx_tstamp(struct idpf_vport *vport,
+			   struct idpf_ptp_tx_tstamp *tx_tstamp)
+{
+	struct idpf_ptp_vport_tx_tstamp_caps *tstamp_caps;
+	u32 tstamp_l, tstamp_h, readiness_h, readiness_l;
+	u64 tstamp, readiness_bitmap;
+	int err = 0;
+
+	tstamp_caps = vport->tx_tstamp_caps;
+
+	readiness_l = readl(tstamp_caps->readiness_offset_l);
+	readiness_h = readl(tstamp_caps->readiness_offset_h);
+	readiness_bitmap = (u64)readiness_h << 32 | readiness_l;
+
+	if (unlikely(!(readiness_bitmap & BIT_ULL(tx_tstamp->idx)))) {
+		err = -EIO;
+		dev_err(&vport->adapter->pdev->dev,
+			"Tx timestamp latch %u is not ready for skb %p\n",
+			tx_tstamp->idx, tx_tstamp->skb);
+		goto error;
+	}
+
+	tstamp_l = readl(tx_tstamp->tx_latch_reg_offset_l);
+	tstamp_h = readl(tx_tstamp->tx_latch_reg_offset_h);
+	tstamp = (u64)tstamp_h << 32 | tstamp_l;
+
+	spin_lock(&tstamp_caps->latches_lock);
+	list_del(&tx_tstamp->list_member);
+	idpf_ptp_get_tstamp_value(vport, tstamp, tx_tstamp, false);
+	spin_unlock(&tstamp_caps->latches_lock);
 
 	return 0;
+
+error:
+	consume_skb(tx_tstamp->skb);
+	spin_lock(&tstamp_caps->latches_lock);
+	list_del(&tx_tstamp->list_member);
+	list_add(&tx_tstamp->list_member,
+		 &tstamp_caps->latches_free);
+	spin_unlock(&tstamp_caps->latches_lock);
+	return err;
 }
 
 /**
@@ -957,7 +1055,8 @@ static void idpf_ptp_release_vport_tstamp(struct idpf_vport *vport)
 	struct idpf_ptp_tx_tstamp *ptp_tx_tstamp, *tmp;
 	struct list_head *head;
 
-	cancel_work_sync(&vport->tstamp_task);
+	if (vport->adapter->ptp->tx_tstamp_access == IDPF_PTP_MAILBOX)
+		cancel_work_sync(&vport->tstamp_task);
 
 	/* Remove list with free latches */
 	spin_lock_bh(&vport->tx_tstamp_caps->latches_lock);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.h b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
index 26cc616f420c..10ba2081e242 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ptp.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
@@ -132,8 +132,8 @@ struct idpf_ptp_tx_tstamp_status {
  */
 struct idpf_ptp_tx_tstamp {
 	struct list_head list_member;
-	u32 tx_latch_reg_offset_l;
-	u32 tx_latch_reg_offset_h;
+	void __iomem *tx_latch_reg_offset_l;
+	void __iomem *tx_latch_reg_offset_h;
 	struct sk_buff *skb;
 	u64 tstamp;
 	u32 idx;
@@ -141,23 +141,27 @@ struct idpf_ptp_tx_tstamp {
 
 /**
  * struct idpf_ptp_vport_tx_tstamp_caps - Tx timestamp capabilities
- * @vport_id: the vport id
+ * @vport: pointer to the virtual port structure
  * @num_entries: the number of negotiated Tx timestamp entries
  * @tstamp_ns_lo_bit: first bit for nanosecond part of the timestamp
+ * @access: indicates an access to Tx timestamp
  * @latches_lock: the lock to the lists of free/used timestamp indexes
  * @status_lock: the lock to the status tracker
- * @access: indicates an access to Tx timestamp
+ * @readiness_offset_l: Tx tstamp readiness bitmap low offset
+ * @readiness_offset_h: Tx tstamp readiness bitmap high offset
  * @latches_free: the list of the free Tx timestamps latches
  * @latches_in_use: the list of the used Tx timestamps latches
  * @tx_tstamp_status: Tx tstamp status tracker
  */
 struct idpf_ptp_vport_tx_tstamp_caps {
-	u32 vport_id;
+	struct idpf_vport *vport;
 	u16 num_entries;
 	u16 tstamp_ns_lo_bit;
+	bool access:1;
 	spinlock_t latches_lock;
 	spinlock_t status_lock;
-	bool access:1;
+	void __iomem *readiness_offset_l;
+	void __iomem *readiness_offset_h;
 	struct list_head latches_free;
 	struct list_head latches_in_use;
 	struct idpf_ptp_tx_tstamp_status tx_tstamp_status[];
@@ -287,13 +291,22 @@ int idpf_ptp_adj_dev_clk_fine_mb(struct idpf_adapter *adapter, u64 incval);
 int idpf_ptp_adj_dev_clk_time_mb(struct idpf_adapter *adapter, s64 delta);
 int idpf_ptp_get_vport_tstamps_caps(struct idpf_vport *vport);
 int idpf_ptp_get_tx_tstamp_mb(struct idpf_vport *vport);
+int idpf_ptp_get_tx_tstamp(struct idpf_vport *vport,
+			   struct idpf_ptp_tx_tstamp *tx_tstamp);
+int idpf_ptp_get_tstamp_value(struct idpf_vport *vport, u64 tstamp_latch,
+			      struct idpf_ptp_tx_tstamp *ptp_tx_tstamp,
+			      bool update_tracker);
 int idpf_ptp_set_timestamp_mode(struct idpf_vport *vport,
 				struct kernel_hwtstamp_config *config);
 u64 idpf_ptp_extend_ts(struct idpf_vport *vport, u64 in_tstamp);
 u64 idpf_ptp_tstamp_extend_32b_to_64b(u64 cached_phc_time, u32 in_timestamp);
 int idpf_ptp_request_ts(struct idpf_tx_queue *tx_q, struct sk_buff *skb,
-			u32 *idx);
+			u32 *idx, struct idpf_tx_splitq_params *params);
 void idpf_tstamp_task(struct work_struct *work);
+bool idpf_ptp_update_tstamp_tracker(struct idpf_ptp_vport_tx_tstamp_caps *caps,
+				    struct sk_buff *skb,
+				    enum idpf_ptp_tx_tstamp_state state_before,
+				    enum idpf_ptp_tx_tstamp_state state_after);
 #else /* CONFIG_PTP_1588_CLOCK */
 static inline int idpf_ptp_init(struct idpf_adapter *adapter)
 {
@@ -358,6 +371,11 @@ static inline int idpf_ptp_get_tx_tstamp_mb(struct idpf_vport *vport)
 	return -EOPNOTSUPP;
 }
 
+static inline int idpf_ptp_get_tx_tstamp(struct idpf_vport *vport)
+{
+	return -EOPNOTSUPP;
+}
+
 static inline int
 idpf_ptp_set_timestamp_mode(struct idpf_vport *vport,
 			    struct kernel_hwtstamp_config *config)
@@ -377,11 +395,22 @@ static inline u64 idpf_ptp_tstamp_extend_32b_to_64b(u64 cached_phc_time,
 }
 
 static inline int idpf_ptp_request_ts(struct idpf_tx_queue *tx_q,
-				      struct sk_buff *skb, u32 *idx)
+				      struct sk_buff *skb, u32 *idx
+				      struct idpf_tx_splitq_params *params)
 {
 	return -EOPNOTSUPP;
 }
 
 static inline void idpf_tstamp_task(struct work_struct *work) { }
+
+static inline bool
+idpf_ptp_update_tstamp_tracker(struct idpf_ptp_vport_tx_tstamp_caps *caps,
+			       struct sk_buff *skb,
+			       enum idpf_ptp_tx_tstamp_state state_before,
+			       enum idpf_ptp_tx_tstamp_state state_after)
+{
+	return false;
+}
+
 #endif /* CONFIG_PTP_1588_CLOCK */
 #endif /* _IDPF_PTP_H */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index c78af4ffa897..a0dd7ab0bb1a 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -947,6 +947,7 @@ static void idpf_txq_group_rel(struct idpf_vport *vport,
 				txq_grp->txqs[j]->refillq = NULL;
 			}
 
+			xa_destroy(&txq_grp->txqs[j]->ptp_tx_tstamps);
 			kfree(txq_grp->txqs[j]);
 			txq_grp->txqs[j] = NULL;
 		}
@@ -1063,9 +1064,12 @@ static int idpf_vport_init_fast_path_txqs(struct idpf_vport *vport,
 					  struct idpf_q_vec_rsrc *rsrc)
 {
 	struct idpf_ptp_vport_tx_tstamp_caps *caps = vport->tx_tstamp_caps;
-	struct work_struct *tstamp_task = &vport->tstamp_task;
+	struct work_struct *tstamp_task = NULL;
 	int k = 0;
 
+	if (vport->adapter->ptp->tx_tstamp_access == IDPF_PTP_MAILBOX)
+		tstamp_task = &vport->tstamp_task;
+
 	vport->txqs = kcalloc(rsrc->num_txq, sizeof(*vport->txqs),
 			      GFP_KERNEL);
 	if (!vport->txqs)
@@ -1370,6 +1374,7 @@ static int idpf_txq_group_alloc(struct idpf_vport *vport,
 			q->tx_min_pkt_len = idpf_get_min_tx_pkt_len(adapter);
 			q->netdev = vport->netdev;
 			q->txq_grp = tx_qgrp;
+			xa_init(&q->ptp_tx_tstamps);
 
 			if (!split) {
 				q->clean_budget = vport->compln_clean_budget;
@@ -1626,34 +1631,54 @@ int idpf_vport_queues_alloc(struct idpf_vport *vport,
  * idpf_tx_read_tstamp - schedule a work to read Tx timestamp value
  * @txq: queue to read the timestamp from
  * @skb: socket buffer to provide Tx timestamp value
+ * @buf_id: completion tag for this packet
  *
  * Schedule a work to read Tx timestamp value generated once the packet is
  * transmitted.
  */
-static void idpf_tx_read_tstamp(struct idpf_tx_queue *txq, struct sk_buff *skb)
+static void idpf_tx_read_tstamp(struct idpf_tx_queue *txq, struct sk_buff *skb,
+				u32 buf_id)
 {
 	struct idpf_ptp_vport_tx_tstamp_caps *tx_tstamp_caps;
-	struct idpf_ptp_tx_tstamp_status *tx_tstamp_status;
+	struct idpf_ptp_tx_tstamp_status *tx_tstamp_status = NULL;
+	enum idpf_ptp_access access;
+	int err;
 
 	tx_tstamp_caps = txq->cached_tstamp_caps;
-	spin_lock_bh(&tx_tstamp_caps->status_lock);
-
-	for (u32 i = 0; i < tx_tstamp_caps->num_entries; i++) {
-		tx_tstamp_status = &tx_tstamp_caps->tx_tstamp_status[i];
-		if (tx_tstamp_status->state != IDPF_PTP_FREE)
-			continue;
+	access = tx_tstamp_caps->vport->adapter->ptp->tx_tstamp_access;
+	if (access == IDPF_PTP_MAILBOX) {
+		spin_lock(&tx_tstamp_caps->status_lock);
+
+		for (int i = 0; i < tx_tstamp_caps->num_entries; i++) {
+			struct idpf_ptp_tx_tstamp_status *status;
+
+			status = &tx_tstamp_caps->tx_tstamp_status[i];
+			if (status->state == IDPF_PTP_FREE) {
+				tx_tstamp_status = status;
+				tx_tstamp_status->skb = skb;
+				tx_tstamp_status->state = IDPF_PTP_REQUEST;
+				break;
+			}
+		}
 
-		tx_tstamp_status->skb = skb;
-		tx_tstamp_status->state = IDPF_PTP_REQUEST;
+		spin_unlock(&tx_tstamp_caps->status_lock);
+		if (!tx_tstamp_status)
+			return;
 
-		/* Fetch timestamp from completion descriptor through
-		 * virtchnl msg to report to stack.
-		 */
 		queue_work(system_unbound_wq, txq->tstamp_task);
-		break;
-	}
+	} else if (access == IDPF_PTP_DIRECT) {
+		struct idpf_ptp_tx_tstamp *tx_tstamp = xa_load(&txq->ptp_tx_tstamps, buf_id);
 
-	spin_unlock_bh(&tx_tstamp_caps->status_lock);
+		if (tx_tstamp)
+			err = idpf_ptp_get_tx_tstamp(tx_tstamp_caps->vport, tx_tstamp);
+		else
+			err = -EFAULT;
+
+		if (err)
+			pci_dbg(tx_tstamp_caps->vport->adapter->pdev,
+				"Cannot read Tx timestamp %pe\n",
+				ERR_PTR(err));
+	}
 }
 
 #define idpf_tx_splitq_clean_bump_ntc(txq, ntc, desc, buf)	\
@@ -1765,7 +1790,7 @@ static void idpf_tx_clean_bufs(struct idpf_tx_queue *txq, u32 buf_id,
 	tx_buf = &txq->tx_buf[buf_id];
 	if (tx_buf->type == LIBETH_SQE_SKB) {
 		if (skb_shinfo(tx_buf->skb)->tx_flags & SKBTX_IN_PROGRESS)
-			idpf_tx_read_tstamp(txq, tx_buf->skb);
+			idpf_tx_read_tstamp(txq, tx_buf->skb, buf_id);
 
 		libeth_tx_complete(tx_buf, &cp);
 		idpf_post_buf_refill(txq->refillq, buf_id);
@@ -2555,12 +2580,12 @@ netdev_tx_t idpf_tx_drop_skb(struct idpf_tx_queue *tx_q, struct sk_buff *skb)
  * idpf_tx_tstamp - set up context descriptor for hardware timestamp
  * @tx_q: queue to send buffer on
  * @skb: pointer to the SKB we're sending
- * @off: pointer to the offload struct
+ * @params: pointer to tx params struct
  *
  * Return: Positive index number on success, negative otherwise.
  */
 static int idpf_tx_tstamp(struct idpf_tx_queue *tx_q, struct sk_buff *skb,
-			  struct idpf_tx_offload_params *off)
+			  struct idpf_tx_splitq_params *params)
 {
 	int err, idx;
 
@@ -2572,11 +2597,11 @@ static int idpf_tx_tstamp(struct idpf_tx_queue *tx_q, struct sk_buff *skb,
 		return -1;
 
 	/* Tx timestamps cannot be sampled when doing TSO */
-	if (off->tx_flags & IDPF_TX_FLAGS_TSO)
+	if (params->offload.tx_flags & IDPF_TX_FLAGS_TSO)
 		return -1;
 
 	/* Grab an open timestamp slot */
-	err = idpf_ptp_request_ts(tx_q, skb, &idx);
+	err = idpf_ptp_request_ts(tx_q, skb, &idx, params);
 	if (err) {
 		u64_stats_update_begin(&tx_q->stats_sync);
 		u64_stats_inc(&tx_q->q_stats.tstamp_skipped);
@@ -2585,7 +2610,7 @@ static int idpf_tx_tstamp(struct idpf_tx_queue *tx_q, struct sk_buff *skb,
 		return -1;
 	}
 
-	off->tx_flags |= IDPF_TX_FLAGS_TSYN;
+	params->offload.tx_flags |= IDPF_TX_FLAGS_TSYN;
 
 	return idx;
 }
@@ -2607,7 +2632,7 @@ static void idpf_tx_set_tstamp_desc(union idpf_flex_tx_ctx_desc *ctx_desc,
 }
 #else /* CONFIG_PTP_1588_CLOCK */
 static int idpf_tx_tstamp(struct idpf_tx_queue *tx_q, struct sk_buff *skb,
-			  struct idpf_tx_offload_params *off)
+			  struct idpf_tx_offload_params *params)
 {
 	return -1;
 }
@@ -2687,12 +2712,6 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 		u64_stats_update_end(&tx_q->stats_sync);
 	}
 
-	idx = idpf_tx_tstamp(tx_q, skb, &tx_params.offload);
-	if (idx != -1) {
-		ctx_desc = idpf_tx_splitq_get_ctx_desc(tx_q);
-		idpf_tx_set_tstamp_desc(ctx_desc, idx);
-	}
-
 	if (idpf_queue_has(FLOW_SCH_EN, tx_q)) {
 		struct idpf_sw_queue *refillq = tx_q->refillq;
 
@@ -2741,6 +2760,12 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 			tx_params.offload.td_cmd |= IDPF_TX_FLEX_DESC_CMD_CS_EN;
 	}
 
+	idx = idpf_tx_tstamp(tx_q, skb, &tx_params);
+	if (idx != -1) {
+		ctx_desc = idpf_tx_splitq_get_ctx_desc(tx_q);
+		idpf_tx_set_tstamp_desc(ctx_desc, idx);
+	}
+
 	first = &tx_q->tx_buf[buf_id];
 	first->skb = skb;
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 2a413147707d..02d1f496167c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -180,6 +180,7 @@ struct idpf_tx_offload_params {
  * @compl_tag: Associated tag for completion
  * @td_tag: Descriptor tunneling tag
  * @offload: Offload parameters
+ * @ptp_tx_tstamp: pointer to Tx timestamp latch struct in use by this packet
  * @prev_ntu: stored TxQ next_to_use in case of rollback
  * @prev_refill_ntc: stored refillq next_to_clean in case of packet rollback
  * @prev_refill_gen: stored refillq generation bit in case of packet rollback
@@ -193,6 +194,7 @@ struct idpf_tx_splitq_params {
 	};
 
 	struct idpf_tx_offload_params offload;
+	struct idpf_ptp_tx_tstamp *ptp_tx_tstamp;
 
 	u16 prev_ntu;
 	u16 prev_refill_ntc;
@@ -607,6 +609,7 @@ libeth_cacheline_set_assert(struct idpf_rx_queue,
  * @xdp_lock: lock for XDP Tx queues sharing
  * @cached_tstamp_caps: Tx timestamp capabilities negotiated with the CP
  * @tstamp_task: Work that handles Tx timestamp read
+ * @ptp_tx_tstamps: XArray for storing Tx timestamps
  * @stats_sync: See struct u64_stats_sync
  * @q_stats: See union idpf_tx_queue_stats
  * @q_id: Queue id
@@ -673,6 +676,7 @@ struct idpf_tx_queue {
 
 	struct idpf_ptp_vport_tx_tstamp_caps *cached_tstamp_caps;
 	struct work_struct *tstamp_task;
+	struct xarray ptp_tx_tstamps;
 
 	struct u64_stats_sync stats_sync;
 	struct idpf_tx_queue_stats q_stats;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 30e6033ce24b..44a84469b650 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -3373,7 +3373,8 @@ int idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
 		return err == -EOPNOTSUPP ? 0 : err;
 	}
 
-	INIT_WORK(&vport->tstamp_task, idpf_tstamp_task);
+	if (vport->adapter->ptp->tx_tstamp_access == IDPF_PTP_MAILBOX)
+		INIT_WORK(&vport->tstamp_task, idpf_tstamp_task);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
index f85caba92b17..92256e3491d6 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
@@ -25,6 +25,7 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
 				    VIRTCHNL2_CAP_PTP_SET_DEVICE_CLK_TIME_MB |
 				    VIRTCHNL2_CAP_PTP_ADJ_DEVICE_CLK |
 				    VIRTCHNL2_CAP_PTP_ADJ_DEVICE_CLK_MB |
+				    VIRTCHNL2_CAP_PTP_TX_TSTAMPS |
 				    VIRTCHNL2_CAP_PTP_TX_TSTAMPS_MB)
 	};
 	struct idpf_vc_xn_params xn_params = {
@@ -342,11 +343,12 @@ int idpf_ptp_get_vport_tstamps_caps(struct idpf_vport *vport)
 		.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
 	};
 	enum idpf_ptp_access tstamp_access, get_dev_clk_access;
+	struct idpf_adapter *adapter = vport->adapter;
 	struct idpf_ptp *ptp = vport->adapter->ptp;
 	struct list_head *head;
 	int err = 0, reply_sz;
 	u16 num_latches;
-	u32 size;
+	u32 size, temp;
 
 	if (!ptp)
 		return -EOPNOTSUPP;
@@ -395,9 +397,16 @@ int idpf_ptp_get_vport_tstamps_caps(struct idpf_vport *vport)
 
 	tstamp_caps->tstamp_ns_lo_bit = rcv_tx_tstamp_caps->tstamp_ns_lo_bit;
 
-	for (u16 i = 0; i < tstamp_caps->num_entries; i++) {
-		__le32 offset_l, offset_h;
+	if (tstamp_access == IDPF_PTP_DIRECT) {
+		temp = le32_to_cpu(rcv_tx_tstamp_caps->readiness_offset_l);
+		tstamp_caps->readiness_offset_l = idpf_get_reg_addr(adapter,
+								    temp);
+		temp = le32_to_cpu(rcv_tx_tstamp_caps->readiness_offset_h);
+		tstamp_caps->readiness_offset_h = idpf_get_reg_addr(adapter,
+								    temp);
+	}
 
+	for (u16 i = 0; i < tstamp_caps->num_entries; i++) {
 		ptp_tx_tstamp = kzalloc(sizeof(*ptp_tx_tstamp), GFP_KERNEL);
 		if (!ptp_tx_tstamp) {
 			err = -ENOMEM;
@@ -409,10 +418,12 @@ int idpf_ptp_get_vport_tstamps_caps(struct idpf_vport *vport)
 		if (tstamp_access != IDPF_PTP_DIRECT)
 			goto skip_offsets;
 
-		offset_l = tx_tstamp_latch_caps.tx_latch_reg_offset_l;
-		offset_h = tx_tstamp_latch_caps.tx_latch_reg_offset_h;
-		ptp_tx_tstamp->tx_latch_reg_offset_l = le32_to_cpu(offset_l);
-		ptp_tx_tstamp->tx_latch_reg_offset_h = le32_to_cpu(offset_h);
+		temp = le32_to_cpu(tx_tstamp_latch_caps.tx_latch_reg_offset_l);
+		ptp_tx_tstamp->tx_latch_reg_offset_l = idpf_get_reg_addr(adapter,
+									 temp);
+		temp = le32_to_cpu(tx_tstamp_latch_caps.tx_latch_reg_offset_h);
+		ptp_tx_tstamp->tx_latch_reg_offset_h = idpf_get_reg_addr(adapter,
+									 temp);
 
 skip_offsets:
 		ptp_tx_tstamp->idx = tx_tstamp_latch_caps.index;
@@ -423,6 +434,7 @@ int idpf_ptp_get_vport_tstamps_caps(struct idpf_vport *vport)
 		tstamp_caps->tx_tstamp_status[i].state = IDPF_PTP_FREE;
 	}
 
+	tstamp_caps->vport = vport;
 	vport->tx_tstamp_caps = tstamp_caps;
 	kfree(rcv_tx_tstamp_caps);
 
@@ -442,94 +454,58 @@ int idpf_ptp_get_vport_tstamps_caps(struct idpf_vport *vport)
 	return err;
 }
 
-/**
- * idpf_ptp_update_tstamp_tracker - Update the Tx timestamp tracker based on
- *				    the skb compatibility.
- * @caps: Tx timestamp capabilities that monitor the latch status
- * @skb: skb for which the tstamp value is returned through virtchnl message
- * @current_state: Current state of the Tx timestamp latch
- * @expected_state: Expected state of the Tx timestamp latch
- *
- * Find a proper skb tracker for which the Tx timestamp is received and change
- * the state to expected value.
- *
- * Return: true if the tracker has been found and updated, false otherwise.
- */
-static bool
-idpf_ptp_update_tstamp_tracker(struct idpf_ptp_vport_tx_tstamp_caps *caps,
-			       struct sk_buff *skb,
-			       enum idpf_ptp_tx_tstamp_state current_state,
-			       enum idpf_ptp_tx_tstamp_state expected_state)
-{
-	bool updated = false;
-
-	spin_lock(&caps->status_lock);
-	for (u16 i = 0; i < caps->num_entries; i++) {
-		struct idpf_ptp_tx_tstamp_status *status;
-
-		status = &caps->tx_tstamp_status[i];
-
-		if (skb == status->skb && status->state == current_state) {
-			status->state = expected_state;
-			updated = true;
-			break;
-		}
-	}
-	spin_unlock(&caps->status_lock);
-
-	return updated;
-}
-
 /**
  * idpf_ptp_get_tstamp_value - Get the Tx timestamp value and provide it
  *			       back to the skb.
  * @vport: Virtual port structure
  * @tstamp_latch: Tx timestamp latch structure fulfilled by the Control Plane
  * @ptp_tx_tstamp: Tx timestamp latch to add to the free list
+ * @update_tracker: Whether to update the timestamp tracker
  *
  * Read the value of the Tx timestamp for a given latch received from the
  * Control Plane, extend it to 64 bit and provide back to the skb.
  *
  * Return: 0 on success, -errno otherwise.
  */
-static int
-idpf_ptp_get_tstamp_value(struct idpf_vport *vport,
-			  struct virtchnl2_ptp_tx_tstamp_latch *tstamp_latch,
-			  struct idpf_ptp_tx_tstamp *ptp_tx_tstamp)
+int idpf_ptp_get_tstamp_value(struct idpf_vport *vport, u64 tstamp_latch,
+			      struct idpf_ptp_tx_tstamp *ptp_tx_tstamp,
+			      bool update_tracker)
 {
 	struct idpf_ptp_vport_tx_tstamp_caps *tx_tstamp_caps;
 	struct skb_shared_hwtstamps shhwtstamps;
-	bool state_upd = false;
 	u8 tstamp_ns_lo_bit;
+	int err = 0;
 	u64 tstamp;
 
 	tx_tstamp_caps = vport->tx_tstamp_caps;
 	tstamp_ns_lo_bit = tx_tstamp_caps->tstamp_ns_lo_bit;
 
-	ptp_tx_tstamp->tstamp = le64_to_cpu(tstamp_latch->tstamp);
+	ptp_tx_tstamp->tstamp = tstamp_latch;
 	ptp_tx_tstamp->tstamp >>= tstamp_ns_lo_bit;
 
-	state_upd = idpf_ptp_update_tstamp_tracker(tx_tstamp_caps,
-						   ptp_tx_tstamp->skb,
-						   IDPF_PTP_READ_VALUE,
-						   IDPF_PTP_FREE);
-	if (!state_upd)
-		return -EINVAL;
+	if (update_tracker) {
+		if (!idpf_ptp_update_tstamp_tracker(tx_tstamp_caps,
+						    ptp_tx_tstamp->skb,
+						    IDPF_PTP_READ_VALUE,
+						    IDPF_PTP_FREE)) {
+			err = -EINVAL;
+			goto exit;
+		}
+	}
 
 	tstamp = idpf_ptp_extend_ts(vport, ptp_tx_tstamp->tstamp);
 	shhwtstamps.hwtstamp = ns_to_ktime(tstamp);
 	skb_tstamp_tx(ptp_tx_tstamp->skb, &shhwtstamps);
-	consume_skb(ptp_tx_tstamp->skb);
-	ptp_tx_tstamp->skb = NULL;
-
-	list_add(&ptp_tx_tstamp->list_member,
-		 &tx_tstamp_caps->latches_free);
-
 	u64_stats_update_begin(&vport->tstamp_stats.stats_sync);
 	u64_stats_inc(&vport->tstamp_stats.packets);
 	u64_stats_update_end(&vport->tstamp_stats.stats_sync);
 
-	return 0;
+exit:
+	consume_skb(ptp_tx_tstamp->skb);
+	list_add(&ptp_tx_tstamp->list_member,
+		 &tx_tstamp_caps->latches_free);
+
+	return err;
 }
 
 /**
@@ -596,8 +572,8 @@ idpf_ptp_get_tx_tstamp_async_handler(struct idpf_adapter *adapter,
 			if (tstamp_latch.index == tx_tstamp->idx) {
 				list_del(&tx_tstamp->list_member);
 				err = idpf_ptp_get_tstamp_value(tstamp_vport,
-								&tstamp_latch,
-								tx_tstamp);
+								le64_to_cpu(tstamp_latch.tstamp),
+								tx_tstamp, true);
 				if (err)
 					goto unlock;
 
diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/drivers/net/ethernet/intel/idpf/virtchnl2.h
index 02ae447cc24a..c43caa3cd115 100644
--- a/drivers/net/ethernet/intel/idpf/virtchnl2.h
+++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h
@@ -1464,7 +1464,8 @@ VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_ptp_tx_tstamp_latch_caps);
  * @num_latches: Total number of latches
  * @tstamp_ns_lo_bit: First bit for nanosecond part of the timestamp
  * @tstamp_ns_hi_bit: Last bit for nanosecond part of the timestamp
- * @pad: Padding for future tstamp granularity extensions
+ * @readiness_offset_l: Tx tstamp readiness bitmap low register offset
+ * @readiness_offset_h: Tx tstamp readiness bitmap high register offset
  * @tstamp_latches: Capabilities of Tx timestamp entries
  *
  * PF/VF sends this message to negotiate the Tx timestamp latches for each
@@ -1477,7 +1478,8 @@ struct virtchnl2_ptp_get_vport_tx_tstamp_caps {
 	__le16 num_latches;
 	u8 tstamp_ns_lo_bit;
 	u8 tstamp_ns_hi_bit;
-	u8 pad[8];
+	__le32 readiness_offset_l;
+	__le32 readiness_offset_h;
 
 	struct virtchnl2_ptp_tx_tstamp_latch_caps tstamp_latches[]
 						  __counted_by_le(num_latches);
-- 
2.42.0

