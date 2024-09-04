Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D89396C2F2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 17:51:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDB6E608BB;
	Wed,  4 Sep 2024 15:51:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UrdjW-2RNNBc; Wed,  4 Sep 2024 15:51:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF91A608B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725465103;
	bh=zm/+N6Zj+06xniG9fcqVulgXJ3iLxtJUSmGQCJZ2B4A=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5Q+fVZCmUmhQZcOgc1dRj3xAR/trhWhfPjFiV8QLM1H8+FlKjM9RatMr6JZ9DBjCN
	 zFNEBGj2uBRK7IjG4kzQDQl7flhAVCBUwhqQBUQOle7RAbwKUTPUL4/cjlBuCqhwvh
	 zvCEYfifDKEAYAlNWQu1QLKhGr9MqaKK8JHuxLUHqTkRE0MIacXyBJRl2D54x8q7+O
	 tIn8+wUF4qwjYgJ7XMzne0U9LblI2oHpEYQAfhxFJo9JHnsMuUXB71W9/Z2WSGKrtn
	 e5p8jsugU1QpnTvYsWbG7nnRO2UargcKZ20X8Tmgb8ZzRkpdxBoqRpoKnzcTHm+X/1
	 66jERf36qvb3A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF91A608B0;
	Wed,  4 Sep 2024 15:51:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 01D911BF40B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 15:51:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EED8D608B4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 15:51:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lUhIVQbRlRSJ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 15:51:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D7387608C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7387608C0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D7387608C0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 15:51:39 +0000 (UTC)
X-CSE-ConnectionGUID: dtai177IRP2hoeFkjsC+eQ==
X-CSE-MsgGUID: OHFMl8bZTPmV0J6PW/FLaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="34737182"
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="34737182"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 08:51:39 -0700
X-CSE-ConnectionGUID: I0ZPpcSjSdKZrqsj7JfItw==
X-CSE-MsgGUID: g8yYJJn8RKeWwzEkz8hc/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="66041927"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa008.jf.intel.com with ESMTP; 04 Sep 2024 08:51:36 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  4 Sep 2024 17:47:48 +0200
Message-ID: <20240904154748.2114199-7-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240904154748.2114199-1-aleksander.lobakin@intel.com>
References: <20240904154748.2114199-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725465100; x=1757001100;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LqE/tFqL1KYIhzSk2Z4RC2xXGcBDDix12mdWewpmx9I=;
 b=ThCPmyv/CY2CccTKRTlYb7VyENkmEFmblxajf9pw3e8d2IEU3/N4R/Ob
 tI7YZVr8umcI5QQllOlNZThSFMLojV0H2qGLOyfRQnkBfEEun11phgnYZ
 6e8CCOf5yC1ijGixW+l4bTZUIeG0HMgtr6iCyHXazfd+DJ+WMqjZJaF/A
 1NXzZn9r+KmjnICk5+mhryH3hnrDouespsYkTZzUVsy5BUN0LyL/SYy44
 hEy/JklNMANvoi5OZWprtzKCmalm/waH9vPN8pLjhC5gr4ZA+SOg24ZS0
 xtFsc/n6iqhXrI/5UAVUBoTp8468ZOdfNEvVZ/SQt9rifUhSq6uoPpYYc
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ThCPmyv/
Subject: [Intel-wired-lan] [PATCH iwl-next v2 6/6] idpf: enable WB_ON_ITR
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Joshua Hay <joshua.a.hay@intel.com>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Joshua Hay <joshua.a.hay@intel.com>

Tell hardware to write back completed descriptors even when interrupts
are disabled. Otherwise, descriptors might not be written back until
the hardware can flush a full cacheline of descriptors. This can cause
unnecessary delays when traffic is light (or even trigger Tx queue
timeout).

The example scenario to reproduce the Tx timeout if the fix is not
applied:
  - configure at least 2 Tx queues to be assigned to the same q_vector,
  - generate a huge Tx traffic on the first Tx queue
  - try to send a few packets using the second Tx queue.
In such a case Tx timeout will appear on the second Tx queue because no
completion descriptors are written back for that queue while interrupts
are disabled due to NAPI polling.

Fixes: c2d548cad150 ("idpf: add TX splitq napi poll support")
Fixes: a5ab9ee0df0b ("idpf: add singleq start_xmit and napi poll")
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Co-developed-by: Michal Kubiak <michal.kubiak@intel.com>
Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   | 27 ++++++++++++++++++-
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |  2 ++
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  6 ++++-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  7 ++++-
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  2 ++
 5 files changed, 41 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 33305de06975..f0537826f840 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -349,9 +349,11 @@ struct idpf_vec_regs {
  * struct idpf_intr_reg
  * @dyn_ctl: Dynamic control interrupt register
  * @dyn_ctl_intena_m: Mask for dyn_ctl interrupt enable
+ * @dyn_ctl_intena_msk_m: Mask for dyn_ctl interrupt enable mask
  * @dyn_ctl_itridx_s: Register bit offset for ITR index
  * @dyn_ctl_itridx_m: Mask for ITR index
  * @dyn_ctl_intrvl_s: Register bit offset for ITR interval
+ * @dyn_ctl_wb_on_itr_m: Mask for WB on ITR feature
  * @rx_itr: RX ITR register
  * @tx_itr: TX ITR register
  * @icr_ena: Interrupt cause register offset
@@ -360,9 +362,11 @@ struct idpf_vec_regs {
 struct idpf_intr_reg {
 	void __iomem *dyn_ctl;
 	u32 dyn_ctl_intena_m;
+	u32 dyn_ctl_intena_msk_m;
 	u32 dyn_ctl_itridx_s;
 	u32 dyn_ctl_itridx_m;
 	u32 dyn_ctl_intrvl_s;
+	u32 dyn_ctl_wb_on_itr_m;
 	void __iomem *rx_itr;
 	void __iomem *tx_itr;
 	void __iomem *icr_ena;
@@ -383,6 +387,7 @@ struct idpf_intr_reg {
  * @intr_reg: See struct idpf_intr_reg
  * @napi: napi handler
  * @total_events: Number of interrupts processed
+ * @wb_on_itr: whether WB on ITR is enabled
  * @tx_dim: Data for TX net_dim algorithm
  * @tx_itr_value: TX interrupt throttling rate
  * @tx_intr_mode: Dynamic ITR or not
@@ -413,6 +418,7 @@ struct idpf_q_vector {
 	__cacheline_group_begin_aligned(read_write);
 	struct napi_struct napi;
 	u16 total_events;
+	bool wb_on_itr;
 
 	struct dim tx_dim;
 	u16 tx_itr_value;
@@ -431,7 +437,7 @@ struct idpf_q_vector {
 	cpumask_var_t affinity_mask;
 	__cacheline_group_end_aligned(cold);
 };
-libeth_cacheline_set_assert(struct idpf_q_vector, 104,
+libeth_cacheline_set_assert(struct idpf_q_vector, 112,
 			    424 + 2 * sizeof(struct dim),
 			    8 + sizeof(cpumask_var_t));
 
@@ -987,6 +993,25 @@ static inline void idpf_tx_splitq_build_desc(union idpf_tx_flex_desc *desc,
 		idpf_tx_splitq_build_flow_desc(desc, params, td_cmd, size);
 }
 
+/**
+ * idpf_vport_intr_set_wb_on_itr - enable descriptor writeback on disabled interrupts
+ * @q_vector: pointer to queue vector struct
+ */
+static inline void idpf_vport_intr_set_wb_on_itr(struct idpf_q_vector *q_vector)
+{
+	struct idpf_intr_reg *reg;
+
+	if (q_vector->wb_on_itr)
+		return;
+
+	q_vector->wb_on_itr = true;
+	reg = &q_vector->intr_reg;
+
+	writel(reg->dyn_ctl_wb_on_itr_m | reg->dyn_ctl_intena_msk_m |
+	       (IDPF_NO_ITR_UPDATE_IDX << reg->dyn_ctl_itridx_s),
+	       reg->dyn_ctl);
+}
+
 int idpf_vport_singleq_napi_poll(struct napi_struct *napi, int budget);
 void idpf_vport_init_num_qs(struct idpf_vport *vport,
 			    struct virtchnl2_create_vport *vport_msg);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_dev.c
index 3df9935685e9..6c913a703df6 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_dev.c
@@ -97,8 +97,10 @@ static int idpf_intr_reg_init(struct idpf_vport *vport)
 		intr->dyn_ctl = idpf_get_reg_addr(adapter,
 						  reg_vals[vec_id].dyn_ctl_reg);
 		intr->dyn_ctl_intena_m = PF_GLINT_DYN_CTL_INTENA_M;
+		intr->dyn_ctl_intena_msk_m = PF_GLINT_DYN_CTL_INTENA_MSK_M;
 		intr->dyn_ctl_itridx_s = PF_GLINT_DYN_CTL_ITR_INDX_S;
 		intr->dyn_ctl_intrvl_s = PF_GLINT_DYN_CTL_INTERVAL_S;
+		intr->dyn_ctl_wb_on_itr_m = PF_GLINT_DYN_CTL_WB_ON_ITR_M;
 
 		spacing = IDPF_ITR_IDX_SPACING(reg_vals[vec_id].itrn_index_spacing,
 					       IDPF_PF_ITR_IDX_SPACING);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index 5ba360abbe66..dfd7cf1d9aa0 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -1120,8 +1120,10 @@ int idpf_vport_singleq_napi_poll(struct napi_struct *napi, int budget)
 						    &work_done);
 
 	/* If work not completed, return budget and polling will return */
-	if (!clean_complete)
+	if (!clean_complete) {
+		idpf_vport_intr_set_wb_on_itr(q_vector);
 		return budget;
+	}
 
 	work_done = min_t(int, work_done, budget - 1);
 
@@ -1130,6 +1132,8 @@ int idpf_vport_singleq_napi_poll(struct napi_struct *napi, int budget)
 	 */
 	if (likely(napi_complete_done(napi, work_done)))
 		idpf_vport_intr_update_itr_ena_irq(q_vector);
+	else
+		idpf_vport_intr_set_wb_on_itr(q_vector);
 
 	return work_done;
 }
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 05555303e097..8f0d70e0b7ea 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3714,6 +3714,7 @@ void idpf_vport_intr_update_itr_ena_irq(struct idpf_q_vector *q_vector)
 	/* net_dim() updates ITR out-of-band using a work item */
 	idpf_net_dim(q_vector);
 
+	q_vector->wb_on_itr = false;
 	intval = idpf_vport_intr_buildreg_itr(q_vector,
 					      IDPF_NO_ITR_UPDATE_IDX, 0);
 
@@ -4016,8 +4017,10 @@ static int idpf_vport_splitq_napi_poll(struct napi_struct *napi, int budget)
 	clean_complete &= idpf_tx_splitq_clean_all(q_vector, budget, &work_done);
 
 	/* If work not completed, return budget and polling will return */
-	if (!clean_complete)
+	if (!clean_complete) {
+		idpf_vport_intr_set_wb_on_itr(q_vector);
 		return budget;
+	}
 
 	work_done = min_t(int, work_done, budget - 1);
 
@@ -4026,6 +4029,8 @@ static int idpf_vport_splitq_napi_poll(struct napi_struct *napi, int budget)
 	 */
 	if (likely(napi_complete_done(napi, work_done)))
 		idpf_vport_intr_update_itr_ena_irq(q_vector);
+	else
+		idpf_vport_intr_set_wb_on_itr(q_vector);
 
 	/* Switch to poll mode in the tear-down path after sending disable
 	 * queues virtchnl message, as the interrupts will be disabled after
diff --git a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
index 629cb5cb7c9f..99b8dbaf4225 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
@@ -97,7 +97,9 @@ static int idpf_vf_intr_reg_init(struct idpf_vport *vport)
 		intr->dyn_ctl = idpf_get_reg_addr(adapter,
 						  reg_vals[vec_id].dyn_ctl_reg);
 		intr->dyn_ctl_intena_m = VF_INT_DYN_CTLN_INTENA_M;
+		intr->dyn_ctl_intena_msk_m = VF_INT_DYN_CTLN_INTENA_MSK_M;
 		intr->dyn_ctl_itridx_s = VF_INT_DYN_CTLN_ITR_INDX_S;
+		intr->dyn_ctl_wb_on_itr_m = VF_INT_DYN_CTLN_WB_ON_ITR_M;
 
 		spacing = IDPF_ITR_IDX_SPACING(reg_vals[vec_id].itrn_index_spacing,
 					       IDPF_VF_ITR_IDX_SPACING);
-- 
2.46.0

