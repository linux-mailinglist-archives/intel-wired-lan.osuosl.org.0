Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1477A411A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Sep 2023 08:29:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 111564149E;
	Mon, 18 Sep 2023 06:29:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 111564149E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695018541;
	bh=8pefJNKhCAz+oropDduDVfNe7pZdQCpUI7r5kDo8auQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tr+T4PMEgEOLPf23mMKU84bpyx7KeMQHXwv2N+ecTfzdLgaQSn2zVe1sLXmfzOVDh
	 M28xh7zGyueUjEJgR+zuYsvlClq/3iGzSZXpbu6+OEts+jacxexJqlJabzpjlHtiER
	 +RVjsqWScXIkOKJDXAm0uy79NmONBlTPSYnxtD9zH1PE9BS/H5ZMmo9LZQlTD9dejP
	 qjWGa4WyKHcCHa7GrMsWvK4WkZV1mN+xFpBc2BI9ewX3y048toplIdQ3a2PI1lmzVV
	 qKR3MktpvUzLTq8G2H/BUkg54LCTbiBmvD+08FOKoSardEp5iScAkX+q6I18l5BhYy
	 PgRbTXogt8xJg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q3Iz8xPUOtbX; Mon, 18 Sep 2023 06:28:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 766B141479;
	Mon, 18 Sep 2023 06:28:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 766B141479
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C02561BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:28:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 97B4281F8A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:28:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 97B4281F8A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kUXvt4HwVs4b for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Sep 2023 06:28:52 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F2C9B81F89
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:28:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F2C9B81F89
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="378488672"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="378488672"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2023 23:28:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="815893642"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="815893642"
Received: from dpdk-yahui-icx1.sh.intel.com ([10.67.111.186])
 by fmsmga004.fm.intel.com with ESMTP; 17 Sep 2023 23:28:46 -0700
From: Yahui Cao <yahui.cao@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Sep 2023 06:25:45 +0000
Message-Id: <20230918062546.40419-13-yahui.cao@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230918062546.40419-1-yahui.cao@intel.com>
References: <20230918062546.40419-1-yahui.cao@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695018532; x=1726554532;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ld+ZJ5057Q+8KA+jeihl1t+bwCq6BgWp+IhBcyLnv5A=;
 b=NfcUYiC6NgXgfgFWwY9+qbjjINRvj+0F4WIbqncw0UMSzzxy0gbLIP02
 u/H9Ug1jMA7TwdjHkkhewROyj6RYxaobzi6iTI1ibYD/KVpQOJJUWDoT5
 bG558lKGM117WLUqLfOQuMAiA21/1NOtBcCHvwISzK7WB6Vwk9X+5uLE7
 1lxyrosFtQaTy5ayjaTUOrOwP2+m2dWioC4LtK6Cl02bGTqivSvCrNsEK
 o7PzVY1ZmldlKOINKorK70Ff//N3jnzcXsZjOzCsgoZ834fXZQw3w2EIy
 glTl5mxl7uPxWI+EsM9YPthkdXjlbbPbNtsTE4zJJnIWGAJCB46sEUg3N
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NfcUYiC6
Subject: [Intel-wired-lan] [PATCH iwl-next v3 12/13] ice: Save and restore
 mmio registers
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

In E800 device model, VF takes direct control over the context of
AdminQ, irq ctrl, TX tail and RX tail by accessing VF pci mmio. Rest of
all the state can only be setup by PF and the procedure is that VF sends
all these configuration to PF through virtual channel messages to setup
the rest of the state.

To migrate AdminQ/irq context successfully, only AdminQ/irq register
needs to be restored, rest of the part like generic msix is handled by
migration stack.

To migrate RX dma ring successfully, RX ring base, length(setup via
virtual channel messages) and tail register (setup via VF pci mmio)
must be restored before RX queue is enabled.

To migrate TX dma ring successfully, TX ring base and length(setup via
virtual channel messages) must be restored before TX queue is enabled,
and TX tail(setup via VF pci mmio) doesn't need to be restored since TX
queue is drained before migration and TX tail is stateless.

For simplicity, just restore all the VF pci mmio before virtual channel
messages are replayed so that all the TX/RX ring context are restored
before queue is enabled.

However, there are 2 corner cases which need to be taken care of:
- During device suspenion, irq register may be dirtied when stopping
  queue. So save irq register into internal pre-saved area before queue
  is stopped and fetch the pre-saved irq register value at device
  saving stage.
- When PF processes virtual channel VIRTCHNL_OP_CONFIG_VSI_QUEUES, irq
  register may be dirtied. So restore the affacted irq register after
  virtual channel messages are replayed.

Signed-off-by: Yahui Cao <yahui.cao@intel.com>
---
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   8 +
 .../net/ethernet/intel/ice/ice_migration.c    | 304 ++++++++++++++++++
 .../intel/ice/ice_migration_private.h         |   7 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   2 +
 4 files changed, 321 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index 67d8332d92f6..3ce8503c482f 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -31,8 +31,16 @@
 #define PF_FW_ATQLEN_ATQVFE_M			BIT(28)
 #define PF_FW_ATQLEN_ATQOVFL_M			BIT(29)
 #define PF_FW_ATQLEN_ATQCRIT_M			BIT(30)
+#define VF_MBX_ARQBAH(_VF)			(0x0022B800 + ((_VF) * 4))
+#define VF_MBX_ARQBAL(_VF)			(0x0022B400 + ((_VF) * 4))
+#define VF_MBX_ARQH(_VF)			(0x0022C000 + ((_VF) * 4))
 #define VF_MBX_ARQLEN(_VF)			(0x0022BC00 + ((_VF) * 4))
+#define VF_MBX_ARQT(_VF)			(0x0022C400 + ((_VF) * 4))
+#define VF_MBX_ATQBAH(_VF)			(0x0022A400 + ((_VF) * 4))
+#define VF_MBX_ATQBAL(_VF)			(0x0022A000 + ((_VF) * 4))
+#define VF_MBX_ATQH(_VF)			(0x0022AC00 + ((_VF) * 4))
 #define VF_MBX_ATQLEN(_VF)			(0x0022A800 + ((_VF) * 4))
+#define VF_MBX_ATQT(_VF)			(0x0022B000 + ((_VF) * 4))
 #define PF_FW_ATQLEN_ATQENABLE_M		BIT(31)
 #define PF_FW_ATQT				0x00080400
 #define PF_MBX_ARQBAH				0x0022E400
diff --git a/drivers/net/ethernet/intel/ice/ice_migration.c b/drivers/net/ethernet/intel/ice/ice_migration.c
index 7cf3a28a95b0..9f8e88108932 100644
--- a/drivers/net/ethernet/intel/ice/ice_migration.c
+++ b/drivers/net/ethernet/intel/ice/ice_migration.c
@@ -25,6 +25,27 @@ struct ice_migration_virtchnl_msg_listnode {
 	struct ice_migration_virtchnl_msg_slot msg_slot;
 };
 
+struct ice_migration_mmio_regs {
+	/* VF Interrupts */
+	u32 int_dyn_ctl[ICE_MIG_VF_MSIX_MAX];
+	u32 int_intr[ICE_MIG_VF_ITR_NUM][ICE_MIG_VF_MSIX_MAX];
+
+	/* VF Control Queues */
+	u32 asq_bal;
+	u32 asq_bah;
+	u32 asq_len;
+	u32 asq_head;
+	u32 asq_tail;
+	u32 arq_bal;
+	u32 arq_bah;
+	u32 arq_len;
+	u32 arq_head;
+	u32 arq_tail;
+
+	/* VF LAN RX */
+	u32 rx_tail[ICE_MIG_VF_QRX_TAIL_MAX];
+};
+
 struct ice_migration_dev_state {
 	u32 magic;
 	u32 version;
@@ -33,6 +54,7 @@ struct ice_migration_dev_state {
 	u16 num_txq;
 	u16 num_rxq;
 
+	struct ice_migration_mmio_regs regs;
 	u16 vsi_id;
 	/* next RX desc index to be processed by the device */
 	u16 rx_head[ICE_MIG_VF_QRX_TAIL_MAX];
@@ -277,6 +299,57 @@ u32 ice_migration_supported_caps(void)
 	return VIRTCHNL_VF_MIGRATION_SUPPORT_FEATURE;
 }
 
+/**
+ * ice_migration_save_dirtied_regs - save registers which may be dirtied
+ * @vf: pointer to VF structure
+ * @devstate: pointer to migration device state
+ *
+ * Return 0 for success, negative for error
+ */
+static int ice_migration_save_dirtied_regs(struct ice_vf *vf)
+{
+	struct ice_migration_dirtied_regs *dirtied_regs = &vf->dirtied_regs;
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_hw *hw = &vf->pf->hw;
+	struct ice_vsi *vsi;
+	int itr, v_id;
+
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi) {
+		dev_err(dev, "VF %d VSI is NULL\n", vf->vf_id);
+		return -EINVAL;
+	}
+
+	if (WARN_ON_ONCE(vsi->num_q_vectors + ICE_NONQ_VECS_VF > ICE_MIG_VF_MSIX_MAX))
+		return -EINVAL;
+
+	/* Save Mailbox Q vectors */
+	dirtied_regs->int_dyn_ctl[0] =
+		rd32(hw, GLINT_DYN_CTL(vf->first_vector_idx));
+	for (itr = 0; itr < ICE_MIG_VF_ITR_NUM; itr++)
+		dirtied_regs->int_intr[itr][0] =
+			rd32(hw, GLINT_ITR(itr, vf->first_vector_idx));
+
+	/* Save Data Q vectors */
+	for (v_id = 0; v_id < vsi->num_q_vectors; v_id++) {
+		int irq = v_id + ICE_NONQ_VECS_VF;
+		struct ice_q_vector *q_vector;
+
+		q_vector = vsi->q_vectors[v_id];
+		if (!q_vector) {
+			dev_err(dev, "VF %d invalid q vectors\n", vf->vf_id);
+			return -EINVAL;
+		}
+		dirtied_regs->int_dyn_ctl[irq] =
+				rd32(hw, GLINT_DYN_CTL(q_vector->reg_idx));
+		for (itr = 0; itr < ICE_MIG_VF_ITR_NUM; itr++)
+			dirtied_regs->int_intr[itr][irq] =
+				rd32(hw, GLINT_ITR(itr, q_vector->reg_idx));
+	}
+
+	return 0;
+}
+
 /**
  * ice_migration_suspend_dev - suspend device on src
  * @pf: pointer to PF of migration device
@@ -326,6 +399,15 @@ int ice_migration_suspend_dev(struct ice_pf *pf, int vf_id)
 	eth_zero_addr(vf->hw_lan_addr);
 	eth_zero_addr(vf->dev_lan_addr);
 
+	/* Irq register may be dirtied when stopping queue. So save irq
+	 * register into pre-saved area before queue is stopped.
+	 */
+	ret = ice_migration_save_dirtied_regs(vf);
+	if (ret) {
+		dev_err(dev, "VF %d failed to save dirtied register copy\n",
+			vf->vf_id);
+		goto out_put_vf;
+	}
 	ret = ice_vsi_stop_lan_tx_rings(vsi, ICE_NO_RESET, vf->vf_id);
 	if (ret) {
 		dev_err(dev, "VF %d failed to stop tx rings\n", vf->vf_id);
@@ -449,6 +531,83 @@ ice_migration_save_tx_head(struct ice_vf *vf,
 	return 0;
 }
 
+/**
+ * ice_migration_save_regs - save mmio registers in migration region
+ * @vf: pointer to VF structure
+ * @devstate: pointer to migration device state
+ *
+ * Return 0 for success, negative for error
+ */
+static int
+ice_migration_save_regs(struct ice_vf *vf,
+			struct ice_migration_dev_state *devstate)
+{
+	struct ice_migration_dirtied_regs *dirtied_regs = &vf->dirtied_regs;
+	struct ice_migration_mmio_regs *regs = &devstate->regs;
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_hw *hw = &vf->pf->hw;
+	struct ice_vsi *vsi;
+	int i, itr, v_id;
+
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi) {
+		dev_err(dev, "VF %d VSI is NULL\n", vf->vf_id);
+		return -EINVAL;
+	}
+
+	if (WARN_ON_ONCE(vsi->num_q_vectors + ICE_NONQ_VECS_VF > ICE_MIG_VF_MSIX_MAX))
+		return -EINVAL;
+
+	/* For irq registers which may be dirtied when virtual channel message
+	 * VIRTCHNL_OP_CONFIG_VSI_QUEUES is processed, load values from
+	 * pre-saved area.
+	 */
+
+	/* Save Mailbox Q vectors */
+	regs->int_dyn_ctl[0] = dirtied_regs->int_dyn_ctl[0];
+	for (itr = 0; itr < ICE_MIG_VF_ITR_NUM; itr++)
+		regs->int_intr[itr][0] = dirtied_regs->int_intr[itr][0];
+
+	/* Save Data Q vectors */
+	for (v_id = 0; v_id < vsi->num_q_vectors; v_id++) {
+		int irq = v_id + ICE_NONQ_VECS_VF;
+		struct ice_q_vector *q_vector;
+
+		q_vector = vsi->q_vectors[v_id];
+		if (!q_vector) {
+			dev_err(dev, "VF %d invalid q vectors\n", vf->vf_id);
+			return -EINVAL;
+		}
+		regs->int_dyn_ctl[irq] = dirtied_regs->int_dyn_ctl[irq];
+		for (itr = 0; itr < ICE_MIG_VF_ITR_NUM; itr++)
+			regs->int_intr[itr][irq] =
+				dirtied_regs->int_intr[itr][irq];
+	}
+
+	regs->asq_bal = rd32(hw, VF_MBX_ATQBAL(vf->vf_id));
+	regs->asq_bah = rd32(hw, VF_MBX_ATQBAH(vf->vf_id));
+	regs->asq_len = rd32(hw, VF_MBX_ATQLEN(vf->vf_id));
+	regs->asq_head = rd32(hw, VF_MBX_ATQH(vf->vf_id));
+	regs->asq_tail = rd32(hw, VF_MBX_ATQT(vf->vf_id));
+	regs->arq_bal = rd32(hw, VF_MBX_ARQBAL(vf->vf_id));
+	regs->arq_bah = rd32(hw, VF_MBX_ARQBAH(vf->vf_id));
+	regs->arq_len = rd32(hw,  VF_MBX_ARQLEN(vf->vf_id));
+	regs->arq_head = rd32(hw, VF_MBX_ARQH(vf->vf_id));
+	regs->arq_tail = rd32(hw, VF_MBX_ARQT(vf->vf_id));
+
+	ice_for_each_rxq(vsi, i) {
+		struct ice_rx_ring *rx_ring = vsi->rx_rings[i];
+
+		regs->rx_tail[i] = 0;
+		if (!test_bit(i, vf->rxq_ena))
+			continue;
+
+		regs->rx_tail[i] = rd32(hw, QRX_TAIL(rx_ring->reg_idx));
+	}
+
+	return 0;
+}
+
 /**
  * ice_migration_save_devstate - save device state to migration buffer
  * @pf: pointer to PF of migration device
@@ -502,6 +661,12 @@ int ice_migration_save_devstate(struct ice_pf *pf, int vf_id, u8 *buf, u64 buf_s
 	buf = devstate->virtchnl_msgs;
 	devstate->vsi_id = vf->vm_vsi_num;
 
+	ret = ice_migration_save_regs(vf, devstate);
+	if (ret) {
+		dev_err(dev, "VF %d failed to save mmio registers\n", vf->vf_id);
+		goto out_put_vf;
+	}
+
 	ret = ice_migration_save_rx_head(vf, devstate);
 	if (ret) {
 		dev_err(dev, "VF %d failed to save rxq head\n", vf->vf_id);
@@ -854,6 +1019,122 @@ ice_migration_restore_tx_head(struct ice_vf *vf,
 	return ret;
 }
 
+/**
+ * ice_migration_restore_regs - restore mmio registers from device state buffer
+ * @vf: pointer to VF structure
+ * @devstate: pointer to migration device state
+ *
+ * Return 0 for success, negative for error
+ */
+static int
+ice_migration_restore_regs(struct ice_vf *vf,
+			   struct ice_migration_dev_state *devstate)
+{
+	struct ice_migration_mmio_regs *regs = &devstate->regs;
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_hw *hw = &vf->pf->hw;
+	struct ice_vsi *vsi;
+	int i, itr, v_id;
+
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi) {
+		dev_err(dev, "VF %d VSI is NULL\n", vf->vf_id);
+		return -EINVAL;
+	}
+
+	if (WARN_ON_ONCE(vsi->num_q_vectors + ICE_NONQ_VECS_VF > ICE_MIG_VF_MSIX_MAX))
+		return -EINVAL;
+
+	/* Restore Mailbox Q vectors */
+	wr32(hw, GLINT_DYN_CTL(vf->first_vector_idx), regs->int_dyn_ctl[0]);
+	for (itr = 0; itr < ICE_MIG_VF_ITR_NUM; itr++)
+		wr32(hw, GLINT_ITR(itr, vf->first_vector_idx), regs->int_intr[itr][0]);
+
+	/* Restore Data Q vectors */
+	for (v_id = 0; v_id < vsi->num_q_vectors; v_id++) {
+		int irq = v_id + ICE_NONQ_VECS_VF;
+		struct ice_q_vector *q_vector;
+
+		q_vector = vsi->q_vectors[v_id];
+		if (!q_vector) {
+			dev_err(dev, "VF %d invalid q vectors\n", vf->vf_id);
+			return -EINVAL;
+		}
+		wr32(hw, GLINT_DYN_CTL(q_vector->reg_idx),
+		     regs->int_dyn_ctl[irq]);
+		for (itr = 0; itr < ICE_MIG_VF_ITR_NUM; itr++)
+			wr32(hw, GLINT_ITR(itr, q_vector->reg_idx),
+			     regs->int_intr[itr][irq]);
+	}
+
+	wr32(hw, VF_MBX_ATQBAL(vf->vf_id), regs->asq_bal);
+	wr32(hw, VF_MBX_ATQBAH(vf->vf_id), regs->asq_bah);
+	wr32(hw, VF_MBX_ATQLEN(vf->vf_id), regs->asq_len);
+	wr32(hw, VF_MBX_ATQH(vf->vf_id), regs->asq_head);
+	/* Since Mailbox ctrl tx queue tail is bumped by VF driver to notify
+	 * HW to send pks, VF_MBX_ATQT is not necessry to be restored here.
+	 */
+	wr32(hw, VF_MBX_ARQBAL(vf->vf_id), regs->arq_bal);
+	wr32(hw, VF_MBX_ARQBAH(vf->vf_id), regs->arq_bah);
+	wr32(hw, VF_MBX_ARQLEN(vf->vf_id), regs->arq_len);
+	wr32(hw, VF_MBX_ARQH(vf->vf_id), regs->arq_head);
+	wr32(hw, VF_MBX_ARQT(vf->vf_id), regs->arq_tail);
+
+	ice_for_each_rxq(vsi, i) {
+		struct ice_rx_ring *rx_ring = vsi->rx_rings[i];
+
+		wr32(hw, QRX_TAIL(rx_ring->reg_idx), regs->rx_tail[i]);
+	}
+
+	return 0;
+}
+
+/**
+ * ice_migration_restore_dirtied_regs - restore registers which may be dirtied
+ * @vf: pointer to VF structure
+ * @devstate: pointer to migration device state
+ *
+ * Return 0 for success, negative for error
+ */
+static int
+ice_migration_restore_dirtied_regs(struct ice_vf *vf,
+				   struct ice_migration_dev_state *devstate)
+{
+	struct ice_migration_mmio_regs *regs = &devstate->regs;
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_hw *hw = &vf->pf->hw;
+	struct ice_vsi *vsi;
+	int itr, v_id;
+
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi) {
+		dev_err(dev, "VF %d VSI is NULL\n", vf->vf_id);
+		return -EINVAL;
+	}
+
+	if (WARN_ON_ONCE(vsi->num_q_vectors + ICE_NONQ_VECS_VF > ICE_MIG_VF_MSIX_MAX))
+		return -EINVAL;
+
+	/* Restore Data Q vectors */
+	for (v_id = 0; v_id < vsi->num_q_vectors; v_id++) {
+		int irq = v_id + ICE_NONQ_VECS_VF;
+		struct ice_q_vector *q_vector;
+
+		q_vector = vsi->q_vectors[v_id];
+		if (!q_vector) {
+			dev_err(dev, "VF %d invalid q vectors\n", vf->vf_id);
+			return -EINVAL;
+		}
+		wr32(hw, GLINT_DYN_CTL(q_vector->reg_idx),
+		     regs->int_dyn_ctl[irq]);
+		for (itr = 0; itr < ICE_MIG_VF_ITR_NUM; itr++)
+			wr32(hw, GLINT_ITR(itr, q_vector->reg_idx),
+			     regs->int_intr[itr][irq]);
+	}
+
+	return 0;
+}
+
 /**
  * ice_migration_restore_devstate - restore device state at dst
  * @pf: pointer to PF of migration device
@@ -890,6 +1171,18 @@ int ice_migration_restore_devstate(struct ice_pf *pf, int vf_id, const u8 *buf,
 	devstate = (struct ice_migration_dev_state *)buf;
 	vf->vm_vsi_num = devstate->vsi_id;
 	dev_dbg(dev, "VF %d vm vsi num is:%d\n", vf->vf_id, vf->vm_vsi_num);
+
+	/* RX tail register must be restored before queue is enabled. For
+	 * simplicity, just restore all the mmio before virtual channel messages
+	 * are replayed.
+	 */
+	ret = ice_migration_restore_regs(vf, devstate);
+	if (ret) {
+		dev_err(dev, "VF %d failed to restore mmio registers\n",
+			vf->vf_id);
+		goto out_put_vf;
+	}
+
 	msg_slot = (struct ice_migration_virtchnl_msg_slot *)devstate->virtchnl_msgs;
 	set_bit(ICE_VF_STATE_REPLAYING_VC, vf->vf_states);
 
@@ -940,6 +1233,17 @@ int ice_migration_restore_devstate(struct ice_pf *pf, int vf_id, const u8 *buf,
 		goto out_clear_replay;
 	}
 
+	/* When PF processes virtual channel VIRTCHNL_OP_CONFIG_VSI_QUEUES, irq
+	 * register may be dirtied. So restore the affacted irq register again
+	 * after virtual channel messages are replayed.
+	 */
+	ret = ice_migration_restore_dirtied_regs(vf, devstate);
+	if (ret) {
+		dev_err(dev, "VF %d failed to restore dirtied registers\n",
+			vf->vf_id);
+		goto out_clear_replay;
+	}
+
 out_clear_replay:
 	clear_bit(ICE_VF_STATE_REPLAYING_VC, vf->vf_states);
 out_put_vf:
diff --git a/drivers/net/ethernet/intel/ice/ice_migration_private.h b/drivers/net/ethernet/intel/ice/ice_migration_private.h
index af70025f2f36..c5bbe35a0d1f 100644
--- a/drivers/net/ethernet/intel/ice/ice_migration_private.h
+++ b/drivers/net/ethernet/intel/ice/ice_migration_private.h
@@ -10,6 +10,13 @@
  * in ice-vfio-pic.ko should be exposed as part of ice_migration.h.
  */
 
+#define ICE_MIG_VF_MSIX_MAX		65
+#define ICE_MIG_VF_ITR_NUM		4
+struct ice_migration_dirtied_regs {
+	u32 int_dyn_ctl[ICE_MIG_VF_MSIX_MAX];
+	u32 int_intr[ICE_MIG_VF_ITR_NUM][ICE_MIG_VF_MSIX_MAX];
+};
+
 #if IS_ENABLED(CONFIG_ICE_VFIO_PCI)
 void ice_migration_init_vf(struct ice_vf *vf);
 void ice_migration_uninit_vf(struct ice_vf *vf);
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index e37c3b0ecc06..f5cc3844fbbd 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -14,6 +14,7 @@
 #include "ice_type.h"
 #include "ice_virtchnl_fdir.h"
 #include "ice_vsi_vlan_ops.h"
+#include "ice_migration_private.h"
 
 #define ICE_MAX_SRIOV_VFS		256
 
@@ -144,6 +145,7 @@ struct ice_vf {
 	u64 virtchnl_msg_size;
 	u32 virtchnl_retval;
 	u16 vm_vsi_num;
+	struct ice_migration_dirtied_regs dirtied_regs;
 };
 
 /* Flags for controlling behavior of ice_reset_vf */
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
