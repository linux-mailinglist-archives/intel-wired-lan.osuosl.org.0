Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1976681503C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Dec 2023 20:38:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 95EAD4044C;
	Fri, 15 Dec 2023 19:38:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 95EAD4044C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702669101;
	bh=6gDSk16Wgj/INpwSz3a+O1JdEdyPM4eo6aEHsPbFFII=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Mlyv7hXU5kmLq5KN7bTpG0KsZTClAjUcruxC6tJur/OIimCe92tgFKsCd7TlJmK8u
	 VaMzifPHykL67YOH+wH8DZdeRsjmqr68okzx+y51jmlgVtnXwWQ97vpT74OK/reeg5
	 GUKLJDcqN17nxrUHLPk2vCVMtf8KGp4pPWMzZvpB0g2lIs4uQewHqCYR7iS4NunZuv
	 H8tqlcx4sffj9bipJN6oJdyioQX7Jeu5E3VPS0moUU0qzBXKoRic9SEJgOGpNsB78O
	 rKHkWunKwqLxljkqkd4FLEg59rcYOzIMOnYF7UxjNQlnZxiCGySjRI3zWHV/L4rTJZ
	 eTHGqJQWIIN0g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VMTJ5Hwp1vd1; Fri, 15 Dec 2023 19:38:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A2FFC403BE;
	Fri, 15 Dec 2023 19:38:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A2FFC403BE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5A29E1BF83A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 19:38:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 31ECC83EC8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 19:38:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 31ECC83EC8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uLz42jxQWR1M for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Dec 2023 19:38:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EB73083EC7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 19:38:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB73083EC7
X-IronPort-AV: E=McAfee;i="6600,9927,10925"; a="481507504"
X-IronPort-AV: E=Sophos;i="6.04,279,1695711600"; d="scan'208";a="481507504"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 11:38:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10925"; a="918553520"
X-IronPort-AV: E=Sophos;i="6.04,279,1695711600"; d="scan'208";a="918553520"
Received: from kkazimiedevpc.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.102.224])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 11:38:09 -0800
From: Michal Kubiak <michal.kubiak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 Dec 2023 20:37:21 +0100
Message-Id: <20231215193721.425087-1-michal.kubiak@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702669092; x=1734205092;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jDbFOdN1ChuJpxwykZrXa3nUg0U4HOCKV5E92MF0BIs=;
 b=NsL4qubxkonhczKWSDgquJ2wCAoCl15XSOJxZnaRG1MuHIhtCJA+HDFg
 zmaxMUNSOjR+rSWxyEVgOelT1Fkmi3PP8deFlC3o2r7nfCnZgCiHacEY3
 WlyID9OQgYskbn7JTMLNm3GkHKLnMws9eYTLQEPNAOHjPpX+SVdvNmRLk
 XWHaVdKn9Mgbql5nl6dGCdjtJrn4mMy/l9546ipOX+9QfP4C8bDPBdOaX
 w6V7sOJSDReg99EQ4it0AB5FN1F//dqH6YcRho31q7ORfWvIDt1gJrr4m
 ylQYrm2Abz68k5nYJqu9GydujN0Px89yW+jJ6e36xqR/g++z+12AwbmbF
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NsL4qubx
Subject: [Intel-wired-lan] [PATCH iwl-net v2] idpf: enable WB_ON_ITR
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

The patch is necessary to start work on the AF_XDP implementation for
the idpf driver, because there may be a case where a regular LAN Tx
queue and an XDP queue share the same NAPI.

Fixes: c2d548cad150 ("idpf: add TX splitq napi poll support")
Fixes: a5ab9ee0df0b ("idpf: add singleq start_xmit and napi poll")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Co-developed-by: Michal Kubiak <michal.kubiak@intel.com>
Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>

---

v1 -> v2:
	- reordered members of 'idpf_q_vector' to optimize the structure
	  layout in terms of cachelines,
	- added kdocs for new structure members,
	- added description of the example problem fixed by the patch,
	- fixed a typo in the commit message ("writeback" -> "write
	  back").
---
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |  2 ++
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  6 ++++-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  7 ++++-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   | 26 +++++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  2 ++
 5 files changed, 41 insertions(+), 2 deletions(-)

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
index df76493faa75..e0660ede58ff 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -484,9 +484,11 @@ struct idpf_vec_regs {
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
@@ -495,9 +497,11 @@ struct idpf_vec_regs {
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
@@ -510,6 +514,7 @@ struct idpf_intr_reg {
  * @affinity_mask: CPU affinity mask
  * @napi: napi handler
  * @v_idx: Vector index
+ * @wb_on_itr: WB on ITR enabled or not
  * @intr_reg: See struct idpf_intr_reg
  * @num_txq: Number of TX queues
  * @tx: Array of TX queues to service
@@ -533,6 +538,7 @@ struct idpf_q_vector {
 	cpumask_t affinity_mask;
 	struct napi_struct napi;
 	u16 v_idx;
+	bool wb_on_itr;
 	struct idpf_intr_reg intr_reg;
 
 	u16 num_txq;
@@ -973,6 +979,26 @@ static inline void idpf_rx_sync_for_cpu(struct idpf_rx_buf *rx_buf, u32 len)
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
