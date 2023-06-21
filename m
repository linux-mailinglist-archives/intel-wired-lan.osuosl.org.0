Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C5C737E17
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 11:12:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AA03E41821;
	Wed, 21 Jun 2023 09:12:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA03E41821
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687338734;
	bh=e17jPSmqhscAv5zh7L1byZJ973SfdrxlRb9UJYubcek=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bpXCBWaZCV6QMgciyoFus8U/d/k5+U0uR4pIu/T/WDfsbYooj03MALz6Hs+QqyCa4
	 7sbvIyWJBGsAm9IOEmmDqfpjsbAnrQ7qlmz/doDak5128ipKfbBK4XYqOUtzwSy72I
	 k+e24Gks4FFRhAFYL9wGV5u4+EFLJvvDt6cV6Uj/TwVJDgde/43QcwsWFhXJD6SzlJ
	 7NrcwIHpzzmER4od0wx0LHX6Ao6dray6eHm/8A6JZB1lfxTxaqAozLJw2P7suT1+1g
	 wyM0IxrQiDkp17KhIFWS+P2q8PV/u2r7qe0uzqnB20FBh1h6teD8miMjpOw4Es+mUT
	 NyNzuJETpgsbw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2YixnxNbhzRy; Wed, 21 Jun 2023 09:12:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AE6B4417F0;
	Wed, 21 Jun 2023 09:12:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AE6B4417F0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 258911BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:12:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0BBB083280
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:12:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0BBB083280
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DJ6NOeNtg-ei for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 09:12:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1170183276
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1170183276
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:12:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="357613737"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="357613737"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 02:12:01 -0700
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="748570915"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="748570915"
Received: from dpdk-liulingy-2.sh.intel.com ([10.67.119.34])
 by orsmga001.jf.intel.com with ESMTP; 21 Jun 2023 02:11:58 -0700
From: Lingyu Liu <lingyu.liu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 21 Jun 2023 09:11:07 +0000
Message-Id: <20230621091112.44945-11-lingyu.liu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230621091112.44945-1-lingyu.liu@intel.com>
References: <20230621091112.44945-1-lingyu.liu@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687338722; x=1718874722;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kvUqUoJfmsAGAHJ2OFcFVkFXp9F7E49WDXcUjO33ex0=;
 b=Uo6LvQjUtEqMtdPyr349eb+Ka6yC/AF0ryRNLY7pzvNlzVEDtMpQHOdP
 WGZeJxeC+ruXxhnYfR3f4OdrZYqRH10MTjNRg325E/ceQK79MrqtR48dE
 skMIIl5Rfo1BXXEmoiHgZkHuvtRTBeyXcsmKZolTsNWcJXKOuky2WvtoW
 hJyM1lxTYiPK1Aeh7WP1LqHCoCVpHiBEe8H/Hxw83vrJkXs1wqWDf+Rzt
 Z+wZgYwPCrVW+QVc46WEBNbtI5JQVdzAx7ODlJq+TDGcoIo3WMxyL2wpt
 LtQDasQHcuiaAj5LyH00vlRLEx5ZcVTkTzUubfkznkfqqs+Iah2FvG5r7
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Uo6LvQjU
Subject: [Intel-wired-lan] [PATCH iwl-next V2 10/15] ice: save and restore
 TX queue head
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
Cc: kevin.tian@intel.com, yi.l.liu@intel.com, phani.r.burra@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Save TX queue head in device migration region and
restore TX queue head at migration dst by inserting NOP
descriptors packages and kicking doorbell.

By default, VF driver's TX DMA ring context is configured by
ice driver. In device resuming stage of live migration, it's
ice driver's reponsibility to recover the TX DMA ring context.
Due to HW limitation, some of TX DMA ring context can't be
recovered by writing mmio registers. Instead, it can be
recovered by injecting NOP descriptors into the DMA ring
descriptors indirectly. The NOP descriptor injection needs
assistance from host kernel driver to read/write TX DMA ring
descriptors. As a result, vfio_dma_rw() is used to recover the
TX DMA ring context.

Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
Signed-off-by: Yahui Cao <yahui.cao@intel.com>
---
 .../net/ethernet/intel/ice/ice_migration.c    | 203 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  10 +
 include/linux/net/intel/ice_migration.h       |   9 +-
 3 files changed, 213 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_migration.c b/drivers/net/ethernet/intel/ice/ice_migration.c
index 2579bc0bd193..c2a83a97af05 100644
--- a/drivers/net/ethernet/intel/ice/ice_migration.c
+++ b/drivers/net/ethernet/intel/ice/ice_migration.c
@@ -3,6 +3,7 @@
 
 #include "ice.h"
 #include "ice_base.h"
+#include "ice_txrx_lib.h"
 
 struct ice_migration_virtchnl_msg_slot {
 	u32 opcode;
@@ -19,6 +20,8 @@ struct ice_migration_dev_state {
 	u16 vsi_id;
 	/* next RX desc index to be processed by the device */
 	u16 rx_head[IAVF_QRX_TAIL_MAX];
+	/* next TX desc index to be processed by the device */
+	u16 tx_head[IAVF_QRX_TAIL_MAX];
 } __aligned(8);
 
 /**
@@ -207,10 +210,51 @@ ice_migration_save_rx_head(struct ice_vf *vf,
 	return 0;
 }
 
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
+		if (!test_bit(i, vf->txq_ena))
+			continue;
+
+		reg = rd32(&pf->hw, QTX_COMM_HEAD(vsi->txq_map[i]));
+		tx_head = (reg & QTX_COMM_HEAD_HEAD_M)
+					>> QTX_COMM_HEAD_HEAD_S;
+
+		if (tx_head == QTX_COMM_HEAD_HEAD_M ||
+		    tx_head == (vsi->tx_rings[i]->count - 1))
+			/* when transmitted packet number is 0 or tx_ring
+			 * length, the next packet to be sent is 0.
+			 */
+			tx_head = 0;
+		else
+			tx_head++;
+
+		devstate->tx_head[i] = tx_head;
+	}
+	return 0;
+}
+
 /**
  * ice_migration_save_devstate - save VF msg to migration buffer
- * @opaque: pointer to VF handler in ice vdev
- * @buf: pointer to VF msg in migration buffer
+ * @opaque: pointer to vf handler in ice vdev
+ * @buf: pointer to vf msg in migration buffer
  * @buf_sz: size of migration buffer
  *
  * Return 0 for success, negative for error
@@ -243,6 +287,11 @@ int ice_migration_save_devstate(void *opaque, u8 *buf, u64 buf_sz)
 		dev_err(dev, "VF %d failed to save rxq head\n", vf->vf_id);
 		return ret;
 	}
+	ret = ice_migration_save_tx_head(vf, devstate);
+	if (ret) {
+		dev_err(dev, "VF %d failed to save txq head\n", vf->vf_id);
+		return ret;
+	}
 	buf += sizeof(*devstate);
 
 	list_for_each_entry(msg_listnode, &vf->virtchnl_msg_list, node) {
@@ -320,18 +369,145 @@ ice_migration_restore_rx_head(struct ice_vf *vf,
 	return 0;
 }
 
+static int
+ice_migration_restore_tx_head(struct ice_vf *vf,
+			      struct ice_migration_dev_state *devstate,
+			      struct vfio_device *vdev)
+{
+	struct ice_tx_desc *tx_desc_dummy, *tx_desc;
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
+	struct ice_pf *pf = vf->pf;
+	u16 max_ring_len = 0;
+	struct device *dev;
+	int ret = 0;
+	int i = 0;
+
+	dev = ice_pf_to_dev(vf->pf);
+
+	if (!vsi) {
+		dev_err(dev, "VF %d VSI is NULL\n", vf->vf_id);
+		return -EINVAL;
+	}
+
+	ice_for_each_txq(vsi, i) {
+		if (!test_bit(i, vf->txq_ena))
+			continue;
+
+		max_ring_len = max(vsi->tx_rings[i]->count, max_ring_len);
+	}
+
+	if (max_ring_len == 0)
+		return 0;
+
+	tx_desc = (struct ice_tx_desc *)kcalloc
+		  (max_ring_len, sizeof(struct ice_tx_desc), GFP_KERNEL);
+	tx_desc_dummy = (struct ice_tx_desc *)kcalloc
+			(max_ring_len, sizeof(struct ice_tx_desc), GFP_KERNEL);
+	if (!tx_desc || !tx_desc_dummy) {
+		dev_err(dev, "VF %d failed to allocate memory for tx descriptors to restore tx head\n",
+			vf->vf_id);
+		ret = -ENOMEM;
+		goto err;
+	}
+
+	for (i = 0; i < max_ring_len; i++) {
+		u32 td_cmd;
+
+		td_cmd = ICE_TXD_LAST_DESC_CMD | ICE_TX_DESC_CMD_DUMMY;
+		tx_desc_dummy[i].cmd_type_offset_bsz =
+					ice_build_ctob(td_cmd, 0, SZ_256, 0);
+	}
+
+	/* For each tx queue, we restore the tx head following below steps:
+	 * 1. backup original tx ring descriptor memory
+	 * 2. overwrite the tx ring descriptor with dummy packets
+	 * 3. kick doorbell register to trigger descriptor writeback,
+	 *    then tx head will move from 0 to tail - 1 and tx head is restored
+	 *    to the place we expect.
+	 * 4. restore the tx ring with original tx ring descriptor memory in
+	 *    order not to corrupt the ring context.
+	 */
+	ice_for_each_txq(vsi, i) {
+		struct ice_tx_ring *tx_ring = vsi->tx_rings[i];
+		u16 *tx_heads = devstate->tx_head;
+		u32 tx_head;
+		int j;
+
+		if (!test_bit(i, vf->txq_ena) || tx_heads[i] == 0)
+			continue;
+
+		if (tx_heads[i] >= tx_ring->count) {
+			dev_err(dev, "saved tx ring head exceeds tx ring count\n");
+			ret = -EINVAL;
+			goto err;
+		}
+		ret = vfio_dma_rw(vdev, tx_ring->dma, (void *)tx_desc,
+				  tx_ring->count * sizeof(tx_desc[0]), false);
+		if (ret) {
+			dev_err(dev, "kvm read guest tx ring error: %d\n",
+				ret);
+			goto err;
+		}
+		ret = vfio_dma_rw(vdev, tx_ring->dma, (void *)tx_desc_dummy,
+				  tx_heads[i] * sizeof(tx_desc_dummy[0]), true);
+		if (ret) {
+			dev_err(dev, "kvm write guest return error: %d\n",
+				ret);
+			goto err;
+		}
+
+		/* Force memory writes to complete before letting h/w know there
+		 * are new descriptors to fetch.
+		 */
+		wmb();
+		writel(tx_heads[i], tx_ring->tail);
+		/* wait until tx_head equals tx_heads[i] - 1 */
+		tx_head = rd32(&pf->hw, QTX_COMM_HEAD(vsi->txq_map[i]));
+		tx_head = (tx_head & QTX_COMM_HEAD_HEAD_M)
+			   >> QTX_COMM_HEAD_HEAD_S;
+		for (j = 0; j < QTX_HEAD_RESTORE_DELAY_MAX &&
+				tx_head != (u32)(tx_heads[i] - 1); j++) {
+			usleep_range(QTX_HEAD_RESTORE_DELAY_SLEEP_US_MIN, QTX_HEAD_RESTORE_DELAY_SLEEP_US_MAX);
+			tx_head = rd32(&pf->hw, QTX_COMM_HEAD(vsi->txq_map[i]));
+			tx_head = (tx_head & QTX_COMM_HEAD_HEAD_M)
+				   >> QTX_COMM_HEAD_HEAD_S;
+		}
+		if (j == 10) {
+			ret = -EIO;
+			dev_err(dev, "VF %d txq[%d] head restore timeout\n",
+				vf->vf_id, i);
+			goto err;
+		}
+		ret = vfio_dma_rw(vdev, tx_ring->dma, (void *)tx_desc,
+				  tx_ring->count * sizeof(tx_desc[0]), true);
+		if (ret) {
+			dev_err(dev, "kvm write guest tx ring error: %d\n",
+				ret);
+			goto err;
+		}
+	}
+
+err:
+	kfree(tx_desc_dummy);
+	kfree(tx_desc);
+
+	return ret;
+}
+
 /**
  * ice_migration_restore_devstate - restore device state at dst
  * @opaque: pointer to VF handler in ice vdev
  * @buf: pointer to device state buf in migration buffer
  * @buf_sz: size of migration buffer
+ * @vdev: pointer to vfio device
  *
  * This function uses the device state saved in migration buffer
  * to restore device state at dst VM
  *
  * Return 0 for success, negative for error
  */
-int ice_migration_restore_devstate(void *opaque, const u8 *buf, u64 buf_sz)
+int ice_migration_restore_devstate(void *opaque, const u8 *buf, u64 buf_sz,
+				   struct vfio_device *vdev)
 {
 	struct ice_migration_virtchnl_msg_slot *msg_slot;
 	struct ice_vf *vf = (struct ice_vf *)opaque;
@@ -343,7 +519,7 @@ int ice_migration_restore_devstate(void *opaque, const u8 *buf, u64 buf_sz)
 	u64 slot_sz;
 	int ret = 0;
 
-	if (!buf)
+	if (!buf || !vdev)
 		return -EINVAL;
 
 	total_sz += sizeof(struct ice_migration_dev_state);
@@ -374,7 +550,7 @@ int ice_migration_restore_devstate(void *opaque, const u8 *buf, u64 buf_sz)
 			dev_err(dev, "VF %d msg size exceeds buffer size\n",
 				vf->vf_id);
 			ret = -ENOBUFS;
-			break;
+			goto err;
 		}
 		dev_dbg(dev, "VF %d replay virtchnl message op code: %d, msg len: %d\n",
 			vf->vf_id, msg_slot->opcode, msg_slot->msg_len);
@@ -386,7 +562,7 @@ int ice_migration_restore_devstate(void *opaque, const u8 *buf, u64 buf_sz)
 		if (ret) {
 			dev_err(dev, "failed to replay virtchnl message op code: %d\n",
 				msg_slot->opcode);
-			break;
+			goto err;
 		}
 		if (msg_slot->opcode == VIRTCHNL_OP_CONFIG_VSI_QUEUES) {
 			ret = ice_migration_restore_rx_head(vf, devstate);
@@ -405,9 +581,22 @@ int ice_migration_restore_devstate(void *opaque, const u8 *buf, u64 buf_sz)
 			dev_err(dev, "VF %d msg size exceeds buffer size\n",
 				vf->vf_id);
 			ret = -ENOBUFS;
-			break;
+			goto err;
 		}
 	}
+
+	/* Since we can't restore tx head directly due to HW limitation, we
+	 * could only restore tx head indirectly by dummy packets injection.
+	 * After virtual channel replay completes, tx rings are enabled.
+	 * Then restore tx head for tx rings by injecting dummy packets.
+	 */
+	ret = ice_migration_restore_tx_head(vf, devstate, vdev);
+	if (ret) {
+		dev_err(dev, "failed to restore tx queue head\n");
+		goto err;
+	}
+
+err:
 	clear_bit(ICE_VF_STATE_REPLAYING_VC, vf->vf_states);
 	return ret;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 7f5868c975d7..e6018bf0b6a8 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -1328,6 +1328,16 @@ static int ice_vc_ena_qs_msg(struct ice_vf *vf, u8 *msg)
 			continue;
 
 		ice_vf_ena_txq_interrupt(vsi, vf_q_id);
+		/* set TXQ head value to 0x1FFF to indicate no packet is sent. According
+		 * to CVL HAS Transmit Queue Context Structure, the size of descriptor
+		 * queue is from 8 descriptores (QLEN=0x8) to 8K-32 descriptors
+		 * (QLEN=0x1FE0). So QTX_COMM_HEAD.HEAD rang value from 0x1fe0 to 0x1fff
+		 * is reserved and will never be used by HW. So, use 0x1FFF as a marker.
+		 * This is used by live migration.
+		 */
+		if (vf->migration_active)
+			wr32(&vsi->back->hw, QTX_COMM_HEAD(vsi->txq_map[vf_q_id]),
+			     QTX_COMM_HEAD_HEAD_M);
 		set_bit(vf_q_id, vf->txq_ena);
 	}
 
diff --git a/include/linux/net/intel/ice_migration.h b/include/linux/net/intel/ice_migration.h
index 68e567791b5c..b59200a0a059 100644
--- a/include/linux/net/intel/ice_migration.h
+++ b/include/linux/net/intel/ice_migration.h
@@ -3,17 +3,22 @@
 
 #ifndef _ICE_MIGRATION_H_
 #define _ICE_MIGRATION_H_
+#include <linux/vfio.h>
 
 #if IS_ENABLED(CONFIG_ICE_VFIO_PCI)
 
 #define IAVF_QRX_TAIL_MAX 256
+#define QTX_HEAD_RESTORE_DELAY_MAX 100
+#define QTX_HEAD_RESTORE_DELAY_SLEEP_US_MIN 10
+#define QTX_HEAD_RESTORE_DELAY_SLEEP_US_MAX 10
 
 void *ice_migration_get_vf(struct pci_dev *vf_pdev);
 void ice_migration_put_vf(void *opaque);
 void ice_migration_init_vf(void *opaque);
 void ice_migration_uninit_vf(void *opaque);
 int ice_migration_save_devstate(void *opaque, u8 *buf, u64 buf_sz);
-int ice_migration_restore_devstate(void *opaque, const u8 *buf, u64 buf_sz);
+int ice_migration_restore_devstate(void *opaque, const u8 *buf, u64 buf_sz,
+				   struct vfio_device *vdev);
 
 #else
 static inline void *ice_migration_get_vf(struct pci_dev *vf_pdev)
@@ -32,7 +37,7 @@ static inline int ice_migration_save_devstate(void *opaque, u8 *buf, u64 buf_sz)
 }
 
 static inline int ice_migration_restore_devstate(void *opaque, const u8 *buf,
-						 u64 buf_sz)
+						 u64 buf_sz, struct vfio_device *vdev)
 {
 	return 0;
 }
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
