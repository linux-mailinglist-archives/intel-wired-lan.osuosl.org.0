Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E783E7A4118
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Sep 2023 08:28:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2E7BC41494;
	Mon, 18 Sep 2023 06:28:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2E7BC41494
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695018530;
	bh=srePvUGoavikQU1LnYVpJSsqLUwVVumECyeOuj8QriE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6IPUlaC9ZBHv2AF4byS7Z1cMWmC6ELLoqj7cm05yjX3uy9/80t5CfzJZjoU2pXsIi
	 1iMHbjBffOL8Rl0CdDHmViQrCoKeVSC6qG+N+iW2x2XFDFHcJ8qlqO8tKxE4X8+lWg
	 z7t38FEMbGUwOe0pEmS5dtDlhotljuMaus8hlmlVFLEB5KAUcK5500seREMG2lUdiH
	 rDBowe16AGiJN4cWKAsl10ingys5AA1DzCd1DhL0E0jZt7bL5mnfUupkCSAkNz5AQO
	 KT5WqOgqLd3Q1KM/6VEPMrCur82GohA19k1ZkGOb7i1B6doy+M0V+i8cba1qnWzfK6
	 BLWSuyLo5cK4g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XKnplRBclV7W; Mon, 18 Sep 2023 06:28:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A8C9041463;
	Mon, 18 Sep 2023 06:28:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A8C9041463
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6B6091BF955
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:28:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 44539611B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:28:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 44539611B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y_Rft9TpLWou for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Sep 2023 06:28:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 15897611B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:28:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 15897611B4
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="378488639"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="378488639"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2023 23:28:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="815893613"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="815893613"
Received: from dpdk-yahui-icx1.sh.intel.com ([10.67.111.186])
 by fmsmga004.fm.intel.com with ESMTP; 17 Sep 2023 23:28:36 -0700
From: Yahui Cao <yahui.cao@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Sep 2023 06:25:43 +0000
Message-Id: <20230918062546.40419-11-yahui.cao@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230918062546.40419-1-yahui.cao@intel.com>
References: <20230918062546.40419-1-yahui.cao@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695018522; x=1726554522;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QAGAvhgofHvjdu05VrvwkkzXHxMwIcITqc7vd0VaIM8=;
 b=Ur1QV58LM+uVkIW4rVBSoNKfbtfHiR8scFiLnf91IZLR4NDTKmh/OpNW
 A6m8r6aTxrBXGLzLYyV6zjzSWldrdDW76rO7/Q7wq18O4IMR+oN6GLF2V
 CVmpN0BAQmJBAPPMSq3AN/0mLMARtWNRLKRSeC3gszJTWEn3TypU2q7uy
 lQdSieU9sQ7d2cxG2may/6XXdiuVxt/FdESry0aGPrAxQ1vJckxl9JRQ4
 +adz73T5L9jcikRZAMUcTlaVUZIbJxIBsyjdryz6dPrIgzw0Ri3SiCGC5
 jCx3H/7/lbVZyb6bHcauv9qyklBdvPugKaPZoURISy/tXO33OgKXsVvMd
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ur1QV58L
Subject: [Intel-wired-lan] [PATCH iwl-next v3 10/13] ice: Save and restore
 TX Queue head
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
Cc: kevin.tian@intel.com, yishaih@nvidia.com, brett.creeley@amd.com,
 kvm@vger.kernel.org, edumazet@google.com, shameerali.kolothum.thodi@huawei.com,
 jesse.brandeburg@intel.com, alex.williamson@redhat.com,
 madhu.chittim@intel.com, anthony.l.nguyen@intel.com, jgg@nvidia.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Lingyu Liu <lingyu.liu@intel.com>

TX Queue head is a fundamental DMA ring context which determines the
next TX descriptor to be fetched. However, TX Queue head is not visible
to VF while it is only visible in PF. As a result, PF needs to save and
restore TX Queue head explicitly.

Unfortunately, due to HW limitation, TX Queue head can't be recovered
through writing mmio registers.

Since sending one packet will make TX head advanced by 1 index, TX Queue
head can be advanced by N index through sending N packets. So filling in
DMA ring with NOP descriptors and bumping doorbell can be used to change
TX Queue head indirectly. And this method has no side effects except
changing TX head value.

To advance TX Head queue, HW needs to touch memory by DMA. But directly
touching VM's memory to advance TX Queue head does not follow vfio
migration protocol design, because vIOMMU state is not defined by the
protocol. Even this may introduce functional and security issue under
hostile guest circumstances.

In order not to touch any VF memory or IO page table, TX Queue head
restore is using PF managed memory and PF isolation domain. This will
also introduce another dependency that while switching TX Queue between
PF space and VF space, TX Queue head value is not changed. HW provides
an indirect context access so that head value can be kept while
switching context.

In virtual channel model, VF driver only send TX queue ring base and
length info to PF, while rest of the TX queue context are managed by PF.
TX queue length must be verified by PF during virtual channel message
processing. When PF uses dummy descriptors to advance TX head, it will
configure the TX ring base as the new address managed by PF itself. As a
result, all of the TX queue context is taken control of by PF and this
method won't generate any attacking vulnerability

The overall steps for TX head restoring handler are:
1. Backup TX context, switch TX queue context as PF space and PF
   DMA ring base with interrupt disabled
2. Fill the DMA ring with dummy descriptors and bump doorbell to
   advance TX head. Once kicking doorbell, HW will issue DMA and
   send PCI upstream memory transaction tagged by PF BDF. Since
   ring base is PF's managed DMA buffer, DMA can work successfully
   and TX Head is advanced as expected.
3. Overwrite TX context by the backup context in step 1. Since TX
   queue head value is not changed while context switch, TX queue
   head is successfully restored.

Since everything is happening inside PF context, it is transparent to
vfio driver and has no effects outside of PF.

Co-developed-by: Yahui Cao <yahui.cao@intel.com>
Signed-off-by: Yahui Cao <yahui.cao@intel.com>
Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
---
 .../net/ethernet/intel/ice/ice_migration.c    | 277 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  17 ++
 2 files changed, 294 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_migration.c b/drivers/net/ethernet/intel/ice/ice_migration.c
index 34cfc58ed525..3b6bb6b975f7 100644
--- a/drivers/net/ethernet/intel/ice/ice_migration.c
+++ b/drivers/net/ethernet/intel/ice/ice_migration.c
@@ -3,10 +3,14 @@
 
 #include "ice.h"
 #include "ice_base.h"
+#include "ice_txrx_lib.h"
 
 #define ICE_MIG_DEVSTAT_MAGIC			0xE8000001
 #define ICE_MIG_DEVSTAT_VERSION			0x1
 #define ICE_MIG_VF_QRX_TAIL_MAX			256
+#define QTX_HEAD_RESTORE_DELAY_MAX		100
+#define QTX_HEAD_RESTORE_DELAY_SLEEP_US_MIN	10
+#define QTX_HEAD_RESTORE_DELAY_SLEEP_US_MAX	10
 
 struct ice_migration_virtchnl_msg_slot {
 	u32 opcode;
@@ -30,6 +34,8 @@ struct ice_migration_dev_state {
 	u16 vsi_id;
 	/* next RX desc index to be processed by the device */
 	u16 rx_head[ICE_MIG_VF_QRX_TAIL_MAX];
+	/* next TX desc index to be processed by the device */
+	u16 tx_head[ICE_MIG_VF_QRX_TAIL_MAX];
 	u8 virtchnl_msgs[];
 } __aligned(8);
 
@@ -317,6 +323,62 @@ ice_migration_save_rx_head(struct ice_vf *vf,
 	return 0;
 }
 
+/**
+ * ice_migration_save_tx_head - save tx head in migration region
+ * @vf: pointer to VF structure
+ * @devstate: pointer to migration device state
+ *
+ * Return 0 for success, negative for error
+ */
+static int
+ice_migration_save_tx_head(struct ice_vf *vf,
+			   struct ice_migration_dev_state *devstate)
+{
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
+	struct ice_pf *pf = vf->pf;
+	struct device *dev;
+	int i = 0;
+
+	dev = ice_pf_to_dev(pf);
+
+	if (!vsi) {
+		dev_err(dev, "VF %d VSI is NULL\n", vf->vf_id);
+		return -EINVAL;
+	}
+
+	ice_for_each_txq(vsi, i) {
+		u16 tx_head;
+		u32 reg;
+
+		devstate->tx_head[i] = 0;
+		if (!test_bit(i, vf->txq_ena))
+			continue;
+
+		reg = rd32(&pf->hw, QTX_COMM_HEAD(vsi->txq_map[i]));
+		tx_head = (reg & QTX_COMM_HEAD_HEAD_M)
+					>> QTX_COMM_HEAD_HEAD_S;
+
+		/* 1. If TX head is QTX_COMM_HEAD_HEAD_M marker, which means
+		 *    it is the value written by software and there are no
+		 *    descriptors write back happened, then there are no
+		 *    packets sent since queue enabled.
+		 * 2. If TX head is ring length minus 1, then it just returns
+		 *    to the start of the ring.
+		 */
+		if (tx_head == QTX_COMM_HEAD_HEAD_M ||
+		    tx_head == (vsi->tx_rings[i]->count - 1))
+			tx_head = 0;
+		else
+			/* Add compensation since value read from TX Head
+			 * register is always the real TX head minus 1
+			 */
+			tx_head++;
+
+		devstate->tx_head[i] = tx_head;
+	}
+	return 0;
+}
+
 /**
  * ice_migration_save_devstate - save device state to migration buffer
  * @pf: pointer to PF of migration device
@@ -376,6 +438,12 @@ int ice_migration_save_devstate(struct ice_pf *pf, int vf_id, u8 *buf, u64 buf_s
 		goto out_put_vf;
 	}
 
+	ret = ice_migration_save_tx_head(vf, devstate);
+	if (ret) {
+		dev_err(dev, "VF %d failed to save txq head\n", vf->vf_id);
+		goto out_put_vf;
+	}
+
 	list_for_each_entry(msg_listnode, &vf->virtchnl_msg_list, node) {
 		struct ice_migration_virtchnl_msg_slot *msg_slot;
 		u64 slot_size;
@@ -517,6 +585,205 @@ ice_migration_restore_rx_head(struct ice_vf *vf,
 	return 0;
 }
 
+/**
+ * ice_migration_init_dummy_desc - init dma ring by dummy descriptor
+ * @ice_tx_desc: tx ring descriptor array
+ * @len: array length
+ * @tx_pkt_dma: dummy packet dma address
+ */
+static inline void
+ice_migration_init_dummy_desc(struct ice_tx_desc *tx_desc,
+			      u16 len,
+			      dma_addr_t tx_pkt_dma)
+{
+	int i;
+
+	/* Init ring with dummy descriptors */
+	for (i = 0; i < len; i++) {
+		u32 td_cmd;
+
+		td_cmd = ICE_TXD_LAST_DESC_CMD | ICE_TX_DESC_CMD_DUMMY;
+		tx_desc[i].cmd_type_offset_bsz =
+				ice_build_ctob(td_cmd, 0, SZ_256, 0);
+		tx_desc[i].buf_addr = cpu_to_le64(tx_pkt_dma);
+	}
+}
+
+/**
+ * ice_migration_inject_dummy_desc - inject dummy descriptors
+ * @vf: pointer to VF structure
+ * @tx_ring: tx ring instance
+ * @head: tx head to be restored
+ * @tx_desc_dma:tx descriptor ring base dma address
+ *
+ * For each TX queue, restore the TX head by following below steps:
+ * 1. Backup TX context, switch TX queue context as PF space and PF
+ *    DMA ring base with interrupt disabled
+ * 2. Fill the DMA ring with dummy descriptors and bump doorbell to
+ *    advance TX head. Once kicking doorbell, HW will issue DMA and
+ *    send PCI upstream memory transaction tagged by PF BDF. Since
+ *    ring base is PF's managed DMA buffer, DMA can work successfully
+ *    and TX Head is advanced as expected.
+ * 3. Overwrite TX context by the backup context in step 1. Since TX
+ *    queue head value is not changed while context switch, TX queue
+ *    head is successfully restored.
+ *
+ * Return 0 for success, negative for error.
+ */
+static int
+ice_migration_inject_dummy_desc(struct ice_vf *vf, struct ice_tx_ring *tx_ring,
+				u16 head, dma_addr_t tx_desc_dma)
+{
+	struct ice_tlan_ctx tlan_ctx, tlan_ctx_orig;
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_hw *hw = &vf->pf->hw;
+	u32 reg_dynctl_orig;
+	u32 reg_tqctl_orig;
+	u32 tx_head;
+	int status;
+	int i;
+
+	/* 1.1 Backup TX Queue context */
+	status = ice_read_txq_ctx(hw, &tlan_ctx, tx_ring->reg_idx);
+	if (status) {
+		dev_err(dev, "Failed to read TXQ[%d] context, err=%d\n",
+			tx_ring->q_index, status);
+		return -EIO;
+	}
+	memcpy(&tlan_ctx_orig, &tlan_ctx, sizeof(tlan_ctx));
+	reg_tqctl_orig = rd32(hw, QINT_TQCTL(tx_ring->reg_idx));
+	if (tx_ring->q_vector)
+		reg_dynctl_orig = rd32(hw, GLINT_DYN_CTL(tx_ring->q_vector->reg_idx));
+
+	/* 1.2 switch TX queue context as PF space and PF DMA ring base */
+	tlan_ctx.vmvf_type = ICE_TLAN_CTX_VMVF_TYPE_PF;
+	tlan_ctx.vmvf_num = 0;
+	tlan_ctx.base = tx_desc_dma >> ICE_TLAN_CTX_BASE_S;
+	status = ice_write_txq_ctx(hw, &tlan_ctx, tx_ring->reg_idx);
+	if (status) {
+		dev_err(dev, "Failed to write TXQ[%d] context, err=%d\n",
+			tx_ring->q_index, status);
+		return -EIO;
+	}
+
+	/* 1.3 Disable TX queue interrupt */
+	wr32(hw, QINT_TQCTL(tx_ring->reg_idx), QINT_TQCTL_ITR_INDX_M);
+
+	/* To disable tx queue interrupt during run time, software should
+	 * write mmio to trigger a MSIX interrupt.
+	 */
+	if (tx_ring->q_vector)
+		wr32(hw, GLINT_DYN_CTL(tx_ring->q_vector->reg_idx),
+		     (ICE_ITR_NONE << GLINT_DYN_CTL_ITR_INDX_S) |
+		     GLINT_DYN_CTL_SWINT_TRIG_M |
+		     GLINT_DYN_CTL_INTENA_M);
+
+	/* Force memory writes to complete before letting h/w know there
+	 * are new descriptors to fetch.
+	 */
+	wmb();
+
+	/* 2.1 Bump doorbell to advance TX Queue head */
+	writel(head, tx_ring->tail);
+
+	/* 2.2 Wait until TX Queue head move to expected place */
+	tx_head = rd32(hw, QTX_COMM_HEAD(tx_ring->reg_idx));
+	tx_head = (tx_head & QTX_COMM_HEAD_HEAD_M)
+		   >> QTX_COMM_HEAD_HEAD_S;
+	for (i = 0; i < QTX_HEAD_RESTORE_DELAY_MAX && tx_head != (head - 1); i++) {
+		usleep_range(QTX_HEAD_RESTORE_DELAY_SLEEP_US_MIN,
+			     QTX_HEAD_RESTORE_DELAY_SLEEP_US_MAX);
+		tx_head = rd32(hw, QTX_COMM_HEAD(tx_ring->reg_idx));
+		tx_head = (tx_head & QTX_COMM_HEAD_HEAD_M)
+			   >> QTX_COMM_HEAD_HEAD_S;
+	}
+	if (i == QTX_HEAD_RESTORE_DELAY_MAX) {
+		dev_err(dev, "VF %d txq[%d] head restore timeout\n",
+			vf->vf_id, tx_ring->q_index);
+		return -EIO;
+	}
+
+	/* 3. Overwrite TX Queue context with backup context */
+	status = ice_write_txq_ctx(hw, &tlan_ctx_orig, tx_ring->reg_idx);
+	if (status) {
+		dev_err(dev, "Failed to write TXQ[%d] context, err=%d\n",
+			tx_ring->q_index, status);
+		return -EIO;
+	}
+	wr32(hw, QINT_TQCTL(tx_ring->reg_idx), reg_tqctl_orig);
+	if (tx_ring->q_vector)
+		wr32(hw, GLINT_DYN_CTL(tx_ring->q_vector->reg_idx), reg_dynctl_orig);
+
+	return 0;
+}
+
+/**
+ * ice_migration_restore_tx_head - restore tx head at dst
+ * @vf: pointer to VF structure
+ * @devstate: pointer to migration device state
+ *
+ * Return 0 for success, negative for error
+ */
+static int
+ice_migration_restore_tx_head(struct ice_vf *vf,
+			      struct ice_migration_dev_state *devstate)
+{
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	u16 max_ring_len = ICE_MAX_NUM_DESC;
+	dma_addr_t tx_desc_dma, tx_pkt_dma;
+	struct ice_tx_desc *tx_desc;
+	struct ice_vsi *vsi;
+	char *tx_pkt;
+	int ret = 0;
+	int i = 0;
+
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi) {
+		dev_err(dev, "VF %d VSI is NULL\n", vf->vf_id);
+		return -EINVAL;
+	}
+
+	/* Allocate DMA ring and descriptor by PF */
+	tx_desc = dma_alloc_coherent(dev, max_ring_len * sizeof(struct ice_tx_desc),
+				     &tx_desc_dma, GFP_KERNEL | __GFP_ZERO);
+	tx_pkt = dma_alloc_coherent(dev, SZ_4K, &tx_pkt_dma, GFP_KERNEL | __GFP_ZERO);
+	if (!tx_desc || !tx_pkt) {
+		dev_err(dev, "PF failed to allocate memory for VF %d\n", vf->vf_id);
+		ret = -ENOMEM;
+		goto err;
+	}
+
+	ice_for_each_txq(vsi, i) {
+		struct ice_tx_ring *tx_ring = vsi->tx_rings[i];
+		u16 *tx_heads = devstate->tx_head;
+
+		/* 1. Skip if TX Queue is not enabled */
+		if (!test_bit(i, vf->txq_ena) || tx_heads[i] == 0)
+			continue;
+
+		if (tx_heads[i] >= tx_ring->count) {
+			dev_err(dev, "VF %d: invalid tx ring length to restore\n",
+				vf->vf_id);
+			ret = -EINVAL;
+			goto err;
+		}
+
+		/* Dummy descriptors must be re-initialized after use, since
+		 * it may be written back by HW
+		 */
+		ice_migration_init_dummy_desc(tx_desc, max_ring_len, tx_pkt_dma);
+		ret = ice_migration_inject_dummy_desc(vf, tx_ring, tx_heads[i], tx_desc_dma);
+		if (ret)
+			goto err;
+	}
+
+err:
+	dma_free_coherent(dev, max_ring_len * sizeof(struct ice_tx_desc), tx_desc, tx_desc_dma);
+	dma_free_coherent(dev, SZ_4K, tx_pkt, tx_pkt_dma);
+
+	return ret;
+}
+
 /**
  * ice_migration_restore_devstate - restore device state at dst
  * @pf: pointer to PF of migration device
@@ -593,6 +860,16 @@ int ice_migration_restore_devstate(struct ice_pf *pf, int vf_id, const u8 *buf,
 		msg_slot = (struct ice_migration_virtchnl_msg_slot *)
 					((char *)msg_slot + slot_sz);
 	}
+
+	/* Only do the TX Queue head restore after rest of device state is
+	 * loaded successfully.
+	 */
+	ret = ice_migration_restore_tx_head(vf, devstate);
+	if (ret) {
+		dev_err(dev, "VF %d failed to restore rx head\n", vf->vf_id);
+		goto out_clear_replay;
+	}
+
 out_clear_replay:
 	clear_bit(ICE_VF_STATE_REPLAYING_VC, vf->vf_states);
 out_put_vf:
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 7cedd0542d4b..df00defa550d 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -1341,6 +1341,23 @@ static int ice_vc_ena_qs_msg(struct ice_vf *vf, u8 *msg)
 			continue;
 
 		ice_vf_ena_txq_interrupt(vsi, vf_q_id);
+
+		/* TX head register is a shadow copy of on-die TX head which
+		 * maintains the accurate location. And TX head register is
+		 * updated only after a packet is sent. If nothing is sent
+		 * after the queue is enabled, then the value is the one
+		 * updated last time and out-of-date.
+		 *
+		 * QTX_COMM_HEAD.HEAD rang value from 0x1fe0 to 0x1fff is
+		 * reserved and will never be used by HW. Manually write a
+		 * reserved value into TX head and use this as a marker for
+		 * the case that there's no packets sent.
+		 *
+		 * This marker is only used in live migration use case.
+		 */
+		if (vf->migration_enabled)
+			wr32(&vsi->back->hw, QTX_COMM_HEAD(vsi->txq_map[vf_q_id]),
+			     QTX_COMM_HEAD_HEAD_M);
 		set_bit(vf_q_id, vf->txq_ena);
 	}
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
