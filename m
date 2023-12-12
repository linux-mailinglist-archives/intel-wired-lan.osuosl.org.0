Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4158480EF69
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Dec 2023 15:56:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F62761542;
	Tue, 12 Dec 2023 14:56:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F62761542
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702392999;
	bh=17sirw7pn8ETaBFpibe6kfaGa12Hx46pFhGltafSsK0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Ntqa83FEDYlEmYnzL4YbpWUTBkKmDSxLCCDedvWzmDwWhL8jj54eWY1qwPpYZ1vM6
	 n8k683AmWWKBNWtysBIaB0LL8bIjLSbWCiB8qExG7uYjUUBoM75sD59w9ujBrMWio6
	 Tx98U2myAyO3h3cJ4FH+o7DVJwzWjdn5A/JiI+EZGL8xbCuUuNTuVpMkqDWsP72Ud7
	 u6R8AM96JOyOw9OnfV/8l2ffttAD8C68T5hx5JHJ8IhcmvmBvWnxjIwneJHBlwQKBc
	 jYlRNdqX0B7h8ZtfNy6MfBS1/HoXDPa9SouYekfgz7Ea74nlPuCdYF1pGOHT0on/MB
	 C8sX6OcpIoeMA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QueIiYJNnaKY; Tue, 12 Dec 2023 14:56:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E4BCE6152F;
	Tue, 12 Dec 2023 14:56:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E4BCE6152F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D3D101BF5A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 14:56:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AB22C408DB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 14:56:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB22C408DB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zFnmg0JwUaTv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Dec 2023 14:56:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 36613408DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 14:56:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 36613408DA
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="374972147"
X-IronPort-AV: E=Sophos;i="6.04,270,1695711600"; d="scan'208";a="374972147"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 06:56:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,270,1695711600"; d="scan'208";a="17637353"
Received: from kkazimiedevpc.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.102.224])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 06:56:26 -0800
From: Michal Kubiak <michal.kubiak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 12 Dec 2023 15:55:46 +0100
Message-Id: <20231212145546.396273-1-michal.kubiak@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702392990; x=1733928990;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rtJ1TpolWl/YBfRHUC7KrytBuUFTlnN1c8GTu2B9qwg=;
 b=Da+Y4OsWjVxRyG+t0nngIaLHwVygy1u5ROznN/hP+MrGRbI7L+qgZxwJ
 g+Exn1MERB84hUs6g9AaH4aIvmIKVyV+2fQCpaSjSXjZLazOHZ+73zV81
 P8/xN6wgJS8uKex4S5X+8oHu1PDlRjoo7bc3N2Wm+HPsotN0PuufnlXIu
 xHIP8jIY3zldkhrAvmmGRXa0Zs7rhCsWpHor6WDmcDxtjvHX2yoU5s0q/
 60XP7TxvyuIdNeYVHuFiL6U2++tkdftSjzuY3RUPvTTyCLuwQSzGg4HRx
 BXlsbSHRBCVoXSkLTBtR1zGWwdiqx9LrlOGLA0n1EEnvd4w28kGLDPxAR
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Da+Y4OsW
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: enable WB_ON_ITR
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
Cc: maciej.fijalkowski@intel.com, emil.s.tantilov@intel.com,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, joshua.a.hay@intel.com,
 aleksander.lobakin@intel.com, Michal Kubiak <michal.kubiak@intel.com>,
 alan.brady@intel.com, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Joshua Hay <joshua.a.hay@intel.com>

Tell hardware to writeback completed descriptors even when interrupts
are disabled. Otherwise, descriptors might not be written back until
the hardware can flush a full cacheline of descriptors. This can cause
unnecessary delays when traffic is light (or even trigger Tx queue
timeout).

Fixes: c2d548cad150 ("idpf: add TX splitq napi poll support")
Fixes: a5ab9ee0df0b ("idpf: add singleq start_xmit and napi poll")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Co-developed-by: Michal Kubiak <michal.kubiak@intel.com>
Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |  2 ++
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  6 ++++-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  7 +++++-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   | 23 +++++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  2 ++
 5 files changed, 38 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_dev.c
index 34ad1ac46b78..2c6776086130 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_dev.c
@@ -96,8 +96,10 @@ static int idpf_intr_reg_init(struct idpf_vport *vport)
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
index 81288a17da2a..8e1478b7d86c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -1168,8 +1168,10 @@ int idpf_vport_singleq_napi_poll(struct napi_struct *napi, int budget)
 						    &work_done);
 
 	/* If work not completed, return budget and polling will return */
-	if (!clean_complete)
+	if (!clean_complete) {
+		idpf_vport_intr_set_wb_on_itr(q_vector);
 		return budget;
+	}
 
 	work_done = min_t(int, work_done, budget - 1);
 
@@ -1178,6 +1180,8 @@ int idpf_vport_singleq_napi_poll(struct napi_struct *napi, int budget)
 	 */
 	if (likely(napi_complete_done(napi, work_done)))
 		idpf_vport_intr_update_itr_ena_irq(q_vector);
+	else
+		idpf_vport_intr_set_wb_on_itr(q_vector);
 
 	return work_done;
 }
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 1646ff3877ba..b496566ee2aa 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3639,6 +3639,7 @@ void idpf_vport_intr_update_itr_ena_irq(struct idpf_q_vector *q_vector)
 					      IDPF_NO_ITR_UPDATE_IDX, 0);
 
 	writel(intval, q_vector->intr_reg.dyn_ctl);
+	q_vector->wb_on_itr = false;
 }
 
 /**
@@ -3930,8 +3931,10 @@ static int idpf_vport_splitq_napi_poll(struct napi_struct *napi, int budget)
 	clean_complete &= idpf_tx_splitq_clean_all(q_vector, budget, &work_done);
 
 	/* If work not completed, return budget and polling will return */
-	if (!clean_complete)
+	if (!clean_complete) {
+		idpf_vport_intr_set_wb_on_itr(q_vector);
 		return budget;
+	}
 
 	work_done = min_t(int, work_done, budget - 1);
 
@@ -3940,6 +3943,8 @@ static int idpf_vport_splitq_napi_poll(struct napi_struct *napi, int budget)
 	 */
 	if (likely(napi_complete_done(napi, work_done)))
 		idpf_vport_intr_update_itr_ena_irq(q_vector);
+	else
+		idpf_vport_intr_set_wb_on_itr(q_vector);
 
 	/* Switch to poll mode in the tear-down path after sending disable
 	 * queues virtchnl message, as the interrupts will be disabled after
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index df76493faa75..50761c2d9f3b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -495,9 +495,11 @@ struct idpf_vec_regs {
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
@@ -534,6 +536,7 @@ struct idpf_q_vector {
 	struct napi_struct napi;
 	u16 v_idx;
 	struct idpf_intr_reg intr_reg;
+	bool wb_on_itr;
 
 	u16 num_txq;
 	struct idpf_queue **tx;
@@ -973,6 +976,26 @@ static inline void idpf_rx_sync_for_cpu(struct idpf_rx_buf *rx_buf, u32 len)
 				      page_pool_get_dma_dir(pp));
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
+	reg = &q_vector->intr_reg;
+
+	writel(reg->dyn_ctl_wb_on_itr_m | reg->dyn_ctl_intena_msk_m |
+	       IDPF_NO_ITR_UPDATE_IDX << reg->dyn_ctl_itridx_s,
+	       reg->dyn_ctl);
+
+	q_vector->wb_on_itr = true;
+}
+
 int idpf_vport_singleq_napi_poll(struct napi_struct *napi, int budget);
 void idpf_vport_init_num_qs(struct idpf_vport *vport,
 			    struct virtchnl2_create_vport *vport_msg);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
index 8ade4e3a9fe1..f5b0a0666636 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
@@ -96,7 +96,9 @@ static int idpf_vf_intr_reg_init(struct idpf_vport *vport)
 		intr->dyn_ctl = idpf_get_reg_addr(adapter,
 						  reg_vals[vec_id].dyn_ctl_reg);
 		intr->dyn_ctl_intena_m = VF_INT_DYN_CTLN_INTENA_M;
+		intr->dyn_ctl_intena_msk_m = VF_INT_DYN_CTLN_INTENA_MSK_M;
 		intr->dyn_ctl_itridx_s = VF_INT_DYN_CTLN_ITR_INDX_S;
+		intr->dyn_ctl_wb_on_itr_m = VF_INT_DYN_CTLN_WB_ON_ITR_M;
 
 		spacing = IDPF_ITR_IDX_SPACING(reg_vals[vec_id].itrn_index_spacing,
 					       IDPF_VF_ITR_IDX_SPACING);
-- 
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
