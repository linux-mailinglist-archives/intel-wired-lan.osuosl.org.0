Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C4AAB9F18
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 16:58:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2D8FE83CE8;
	Fri, 16 May 2025 14:58:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RbhVhJtjxrI2; Fri, 16 May 2025 14:58:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 53E0E83CD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747407525;
	bh=d8WqRXylMUlFwR8thdm3/pPC5C/qUy9kzXYxmDICGG4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=62K7pAXM53rQ8wiRMizYelNoAIVStvg+lHX+GF84q64V1a8S5LytjQePWbrMYB7CX
	 UBTiwT3A9b52hgKByTGet3FSExoE9+dP/HGaFRHLb0iYosea0WOoBsJb5mzp4GHziQ
	 O6b6btqZ1DCrJRCvpZCL27CZ1zxpWX5B0j8pGQAMgkBy8k9k8NdT6eXQn8QZPyALT4
	 4SwofBTe1mRvttCDQgwpIVA06Y8H5nMics2ktWBNB12HtHbob9fj+egnfJUupKAgy7
	 vV3LQHyhr9rLooLT5kCKhFklSISM+ZOyzpe2aV93qeGYF/qMD77nIm7hRs556dv/as
	 kZKKPKDfBZNBA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 53E0E83CD3;
	Fri, 16 May 2025 14:58:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 30F5C1AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 14:58:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 20C1D6129E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 14:58:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9epAstaRJpZr for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 14:58:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DD54E6074D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD54E6074D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DD54E6074D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 14:58:41 +0000 (UTC)
X-CSE-ConnectionGUID: 5p/XbzQrSDSXTWHtn385gg==
X-CSE-MsgGUID: tZyVJ6ixSBqZIuonPUFTDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11435"; a="49308658"
X-IronPort-AV: E=Sophos;i="6.15,294,1739865600"; d="scan'208";a="49308658"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 07:58:41 -0700
X-CSE-ConnectionGUID: mai8k8i7SYOie5DyOCKGTw==
X-CSE-MsgGUID: mexUyD+DSLyxfvjZX1MUQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,294,1739865600"; d="scan'208";a="142717989"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa003.fm.intel.com with ESMTP; 16 May 2025 07:58:34 -0700
Received: from mglak.igk.intel.com (mglak.igk.intel.com [10.237.112.146])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id C520134327;
 Fri, 16 May 2025 15:58:31 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jiri Pirko <jiri@resnulli.us>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Lee Trager <lee@trager.us>, Madhavan Srinivasan <maddy@linux.ibm.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 Milena Olech <milena.olech@intel.com>, pavan.kumar.linga@intel.com,
 "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>
Date: Fri, 16 May 2025 16:58:05 +0200
Message-ID: <20250516145814.5422-9-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250516145814.5422-1-larysa.zaremba@intel.com>
References: <20250516145814.5422-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747407521; x=1778943521;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rgaA47h2U5tvz/uH/7E5sYK2HESaRNX1yColDM0T3XM=;
 b=ZvL1kn4MIWe1XjSpZ360Hl03CCWGejX+DAjS6AdPuubkKMZe+++J7gRW
 lNCBcenrln8SN/uvflNhQytVo0xoTWRthyMEnajjL6E/1cDtZxBxRt7lo
 JxJeJbetTZGybkDCO6meFXHtE7G4TyFLhvEilDiWb1bb/+v2XgZ+/iROk
 1jneZzTlH3hvM6Zjv3QlAxLNe1vT2pDKandN8FNH1ow3gdoQvkYSUM7P9
 XcwqnK7n/gkkAWjqPcuzy1rBvB8HNU0ioI34HZA26t+nb79k+yqoPb9zk
 BIgNQcBNxREhtAg4vX4Yfl7pLGRPbHoGmeIRdvcvEwK7XzSplZQErvMgX
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZvL1kn4M
Subject: [Intel-wired-lan] [PATCH iwl-next v4 08/15] idpf: refactor idpf to
 use libie_pci APIs
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

Use libie_pci init and MMIO APIs where possible, struct idpf_hw cannot be
deleted for now as it also houses control queues that will be refactored
later. Use libie_cp header for libie_ctlq_ctx that contains mmio info from
the start in order to not increase the diff later.

Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/idpf/Kconfig       |  1 +
 drivers/net/ethernet/intel/idpf/idpf.h        | 19 ++---
 drivers/net/ethernet/intel/idpf/idpf_dev.c    | 37 +++++----
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  7 +-
 drivers/net/ethernet/intel/idpf/idpf_main.c   | 83 +++++++++----------
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c | 29 ++++---
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 13 +--
 .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   | 52 +++++++-----
 8 files changed, 126 insertions(+), 115 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/Kconfig b/drivers/net/ethernet/intel/idpf/Kconfig
index 2c359a8551c7..e0a50e60e1ad 100644
--- a/drivers/net/ethernet/intel/idpf/Kconfig
+++ b/drivers/net/ethernet/intel/idpf/Kconfig
@@ -7,6 +7,7 @@ config IDPF
 	depends on PTP_1588_CLOCK_OPTIONAL
 	select DIMLIB
 	select LIBETH
+	select LIBIE_PCI
 	help
 	  This driver supports Intel(R) Infrastructure Data Path Function
 	  devices.
diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 0c8fc4c1e927..fb36dcbd8f5c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -20,6 +20,7 @@ struct idpf_rss_data;
 #include <linux/ethtool_netlink.h>
 #include <net/gro.h>
 
+#include <linux/intel/libie/controlq.h>
 #include <linux/intel/virtchnl2.h>
 #include "idpf_txrx.h"
 #include "idpf_controlq.h"
@@ -556,6 +557,7 @@ struct idpf_vc_xn_manager;
  * @flags: See enum idpf_flags
  * @reset_reg: See struct idpf_reset_reg
  * @hw: Device access data
+ * @ctlq_ctx: controlq context
  * @num_req_msix: Requested number of MSIX vectors
  * @num_avail_msix: Available number of MSIX vectors
  * @num_msix_entries: Number of entries in MSIX table
@@ -611,6 +613,7 @@ struct idpf_adapter {
 	DECLARE_BITMAP(flags, IDPF_FLAGS_NBITS);
 	struct idpf_reset_reg reset_reg;
 	struct idpf_hw hw;
+	struct libie_ctlq_ctx ctlq_ctx;
 	u16 num_req_msix;
 	u16 num_avail_msix;
 	u16 num_msix_entries;
@@ -772,19 +775,6 @@ static inline u8 idpf_get_min_tx_pkt_len(struct idpf_adapter *adapter)
 	return pkt_len ? pkt_len : IDPF_TX_MIN_PKT_LEN;
 }
 
-/**
- * idpf_get_reg_addr - Get BAR0 register address
- * @adapter: private data struct
- * @reg_offset: register offset value
- *
- * Based on the register offset, return the actual BAR0 register address
- */
-static inline void __iomem *idpf_get_reg_addr(struct idpf_adapter *adapter,
-					      resource_size_t reg_offset)
-{
-	return (void __iomem *)(adapter->hw.hw_addr + reg_offset);
-}
-
 /**
  * idpf_is_reset_detected - check if we were reset at some point
  * @adapter: driver specific private structure
@@ -796,7 +786,8 @@ static inline bool idpf_is_reset_detected(struct idpf_adapter *adapter)
 	if (!adapter->hw.arq)
 		return true;
 
-	return !(readl(idpf_get_reg_addr(adapter, adapter->hw.arq->reg.len)) &
+	return !(readl(libie_pci_get_mmio_addr(&adapter->ctlq_ctx.mmio_info,
+					       adapter->hw.arq->reg.len)) &
 		 adapter->hw.arq->reg.len_mask);
 }
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_dev.c
index 6d5c9098f577..d89ee10a2efc 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_dev.c
@@ -54,13 +54,14 @@ static void idpf_ctlq_reg_init(struct idpf_ctlq_create_info *cq)
  */
 static void idpf_mb_intr_reg_init(struct idpf_adapter *adapter)
 {
+	struct libie_mmio_info *mmio = &adapter->ctlq_ctx.mmio_info;
 	struct idpf_intr_reg *intr = &adapter->mb_vector.intr_reg;
 	u32 dyn_ctl = le32_to_cpu(adapter->caps.mailbox_dyn_ctl);
 
-	intr->dyn_ctl = idpf_get_reg_addr(adapter, dyn_ctl);
+	intr->dyn_ctl = libie_pci_get_mmio_addr(mmio, dyn_ctl);
 	intr->dyn_ctl_intena_m = PF_GLINT_DYN_CTL_INTENA_M;
 	intr->dyn_ctl_itridx_m = PF_GLINT_DYN_CTL_ITR_INDX_M;
-	intr->icr_ena = idpf_get_reg_addr(adapter, PF_INT_DIR_OICR_ENA);
+	intr->icr_ena = libie_pci_get_mmio_addr(mmio, PF_INT_DIR_OICR_ENA);
 	intr->icr_ena_ctlq_m = PF_INT_DIR_OICR_ENA_M;
 }
 
@@ -75,6 +76,7 @@ static int idpf_intr_reg_init(struct idpf_vport *vport,
 	struct idpf_adapter *adapter = vport->adapter;
 	u16 num_vecs = rsrc->num_q_vectors;
 	struct idpf_vec_regs *reg_vals;
+	struct libie_mmio_info *mmio;
 	int num_regs, i, err = 0;
 	u32 rx_itr, tx_itr;
 	u16 total_vecs;
@@ -91,14 +93,17 @@ static int idpf_intr_reg_init(struct idpf_vport *vport,
 		goto free_reg_vals;
 	}
 
+	mmio = &adapter->ctlq_ctx.mmio_info;
+
 	for (i = 0; i < num_vecs; i++) {
 		struct idpf_q_vector *q_vector = &rsrc->q_vectors[i];
 		u16 vec_id = rsrc->q_vector_idxs[i] - IDPF_MBX_Q_VEC;
 		struct idpf_intr_reg *intr = &q_vector->intr_reg;
+		struct idpf_vec_regs *reg = &reg_vals[vec_id];
 		u32 spacing;
 
-		intr->dyn_ctl = idpf_get_reg_addr(adapter,
-						  reg_vals[vec_id].dyn_ctl_reg);
+		intr->dyn_ctl =	libie_pci_get_mmio_addr(mmio,
+							reg->dyn_ctl_reg);
 		intr->dyn_ctl_intena_m = PF_GLINT_DYN_CTL_INTENA_M;
 		intr->dyn_ctl_intena_msk_m = PF_GLINT_DYN_CTL_INTENA_MSK_M;
 		intr->dyn_ctl_itridx_s = PF_GLINT_DYN_CTL_ITR_INDX_S;
@@ -108,16 +113,14 @@ static int idpf_intr_reg_init(struct idpf_vport *vport,
 		intr->dyn_ctl_sw_itridx_ena_m =
 			PF_GLINT_DYN_CTL_SW_ITR_INDX_ENA_M;
 
-		spacing = IDPF_ITR_IDX_SPACING(reg_vals[vec_id].itrn_index_spacing,
+		spacing = IDPF_ITR_IDX_SPACING(reg->itrn_index_spacing,
 					       IDPF_PF_ITR_IDX_SPACING);
 		rx_itr = PF_GLINT_ITR_ADDR(VIRTCHNL2_ITR_IDX_0,
-					   reg_vals[vec_id].itrn_reg,
-					   spacing);
+					   reg->itrn_reg, spacing);
 		tx_itr = PF_GLINT_ITR_ADDR(VIRTCHNL2_ITR_IDX_1,
-					   reg_vals[vec_id].itrn_reg,
-					   spacing);
-		intr->rx_itr = idpf_get_reg_addr(adapter, rx_itr);
-		intr->tx_itr = idpf_get_reg_addr(adapter, tx_itr);
+					   reg->itrn_reg, spacing);
+		intr->rx_itr = libie_pci_get_mmio_addr(mmio, rx_itr);
+		intr->tx_itr = libie_pci_get_mmio_addr(mmio, tx_itr);
 	}
 
 free_reg_vals:
@@ -132,7 +135,9 @@ static int idpf_intr_reg_init(struct idpf_vport *vport,
  */
 static void idpf_reset_reg_init(struct idpf_adapter *adapter)
 {
-	adapter->reset_reg.rstat = idpf_get_reg_addr(adapter, PFGEN_RSTAT);
+	adapter->reset_reg.rstat =
+		libie_pci_get_mmio_addr(&adapter->ctlq_ctx.mmio_info,
+					PFGEN_RSTAT);
 	adapter->reset_reg.rstat_m = PFGEN_RSTAT_PFR_STATE_M;
 }
 
@@ -144,11 +149,11 @@ static void idpf_reset_reg_init(struct idpf_adapter *adapter)
 static void idpf_trigger_reset(struct idpf_adapter *adapter,
 			       enum idpf_flags __always_unused trig_cause)
 {
-	u32 reset_reg;
+	void __iomem *addr;
 
-	reset_reg = readl(idpf_get_reg_addr(adapter, PFGEN_CTRL));
-	writel(reset_reg | PFGEN_CTRL_PFSWR,
-	       idpf_get_reg_addr(adapter, PFGEN_CTRL));
+	addr = libie_pci_get_mmio_addr(&adapter->ctlq_ctx.mmio_info,
+				       PFGEN_CTRL);
+	writel(readl(addr) | PFGEN_CTRL_PFSWR, addr);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index b7eaf39b1647..68330b884967 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1664,15 +1664,14 @@ void idpf_deinit_task(struct idpf_adapter *adapter)
 
 /**
  * idpf_check_reset_complete - check that reset is complete
- * @hw: pointer to hw struct
+ * @adapter: adapter to check
  * @reset_reg: struct with reset registers
  *
  * Returns 0 if device is ready to use, or -EBUSY if it's in reset.
  **/
-static int idpf_check_reset_complete(struct idpf_hw *hw,
+static int idpf_check_reset_complete(struct idpf_adapter *adapter,
 				     struct idpf_reset_reg *reset_reg)
 {
-	struct idpf_adapter *adapter = hw->back;
 	int i;
 
 	for (i = 0; i < 2000; i++) {
@@ -1766,7 +1765,7 @@ static int idpf_init_hard_reset(struct idpf_adapter *adapter)
 	}
 
 	/* Wait for reset to complete */
-	err = idpf_check_reset_complete(&adapter->hw, &adapter->reset_reg);
+	err = idpf_check_reset_complete(adapter, &adapter->reset_reg);
 	if (err) {
 		dev_err(dev, "The driver was unable to contact the device's firmware. Check that the FW is running. Driver state= 0x%x\n",
 			adapter->state);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index 0efd9c0c7a90..bb84b2871b84 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -9,8 +9,20 @@
 
 MODULE_DESCRIPTION(DRV_SUMMARY);
 MODULE_IMPORT_NS("LIBETH");
+MODULE_IMPORT_NS("LIBIE_CP");
+MODULE_IMPORT_NS("LIBIE_PCI");
 MODULE_LICENSE("GPL");
 
+/**
+ * idpf_decfg_device - deconfigure device and device specific resources
+ * @adapter: driver specific private structure
+ */
+static void idpf_decfg_device(struct idpf_adapter *adapter)
+{
+	libie_pci_unmap_all_mmio_regions(&adapter->ctlq_ctx.mmio_info);
+	libie_pci_deinit_dev(adapter->pdev);
+}
+
 /**
  * idpf_remove - Device removal routine
  * @pdev: PCI device information struct
@@ -77,7 +89,7 @@ static void idpf_remove(struct pci_dev *pdev)
 	mutex_destroy(&adapter->queue_lock);
 	mutex_destroy(&adapter->vc_buf_lock);
 
-	pci_set_drvdata(pdev, NULL);
+	idpf_decfg_device(adapter);
 	kfree(adapter);
 }
 
@@ -99,24 +111,36 @@ static void idpf_shutdown(struct pci_dev *pdev)
 }
 
 /**
- * idpf_cfg_hw - Initialize HW struct
- * @adapter: adapter to setup hw struct for
+ * idpf_cfg_device - configure device and device specific resources
+ * @adapter: driver specific private structure
  *
- * Returns 0 on success, negative on failure
+ * Return: %0 on success, -%errno on failure.
  */
-static int idpf_cfg_hw(struct idpf_adapter *adapter)
+static int idpf_cfg_device(struct idpf_adapter *adapter)
 {
+	struct libie_mmio_info *mmio_info = &adapter->ctlq_ctx.mmio_info;
 	struct pci_dev *pdev = adapter->pdev;
-	struct idpf_hw *hw = &adapter->hw;
+	int err;
 
-	hw->hw_addr = pcim_iomap_table(pdev)[0];
-	if (!hw->hw_addr) {
-		pci_err(pdev, "failed to allocate PCI iomap table\n");
+	err = libie_pci_init_dev(pdev);
+	if (err)
+		return err;
 
+	mmio_info->pdev = pdev;
+	INIT_LIST_HEAD(&mmio_info->mmio_list);
+
+	err = libie_pci_map_mmio_region(mmio_info, 0,
+					pci_resource_len(pdev, 0));
+	if (!err) {
+		libie_pci_deinit_dev(pdev);
 		return -ENOMEM;
 	}
 
-	hw->back = adapter;
+	err = pci_enable_ptm(pdev, NULL);
+	if (err)
+		pci_dbg(pdev, "PCIe PTM is not supported by PCIe bus/controller\n");
+
+	pci_set_drvdata(pdev, adapter);
 
 	return 0;
 }
@@ -157,32 +181,13 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	}
 
 	adapter->pdev = pdev;
-	err = pcim_enable_device(pdev);
-	if (err)
-		goto err_free;
-
-	err = pcim_iomap_regions(pdev, BIT(0), pci_name(pdev));
+	err = idpf_cfg_device(adapter);
 	if (err) {
-		pci_err(pdev, "pcim_iomap_regions failed %pe\n", ERR_PTR(err));
-
+		pci_err(pdev, "Failed to configure device specific resources: %pe\n",
+			ERR_PTR(err));
 		goto err_free;
 	}
 
-	err = pci_enable_ptm(pdev, NULL);
-	if (err)
-		pci_dbg(pdev, "PCIe PTM is not supported by PCIe bus/controller\n");
-
-	/* set up for high or low dma */
-	err = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
-	if (err) {
-		pci_err(pdev, "DMA configuration failed: %pe\n", ERR_PTR(err));
-
-		goto err_free;
-	}
-
-	pci_set_master(pdev);
-	pci_set_drvdata(pdev, adapter);
-
 	adapter->init_wq = alloc_workqueue("%s-%s-init",
 					   WQ_UNBOUND | WQ_MEM_RECLAIM, 0,
 					   dev_driver_string(dev),
@@ -190,7 +195,7 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (!adapter->init_wq) {
 		dev_err(dev, "Failed to allocate init workqueue\n");
 		err = -ENOMEM;
-		goto err_free;
+		goto err_init_wq;
 	}
 
 	adapter->serv_wq = alloc_workqueue("%s-%s-service",
@@ -235,13 +240,6 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* setup msglvl */
 	adapter->msg_enable = netif_msg_init(-1, IDPF_AVAIL_NETIF_M);
 
-	err = idpf_cfg_hw(adapter);
-	if (err) {
-		dev_err(dev, "Failed to configure HW structure for adapter: %d\n",
-			err);
-		goto err_cfg_hw;
-	}
-
 	mutex_init(&adapter->vport_ctrl_lock);
 	mutex_init(&adapter->vector_lock);
 	mutex_init(&adapter->queue_lock);
@@ -260,8 +258,6 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	return 0;
 
-err_cfg_hw:
-	destroy_workqueue(adapter->vc_event_wq);
 err_vc_event_wq_alloc:
 	destroy_workqueue(adapter->stats_wq);
 err_stats_wq_alloc:
@@ -270,8 +266,11 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	destroy_workqueue(adapter->serv_wq);
 err_serv_wq_alloc:
 	destroy_workqueue(adapter->init_wq);
+err_init_wq:
+	idpf_decfg_device(adapter);
 err_free:
 	kfree(adapter);
+
 	return err;
 }
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
index ac091280e828..ee4907bd4f28 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
@@ -53,13 +53,14 @@ static void idpf_vf_ctlq_reg_init(struct idpf_ctlq_create_info *cq)
  */
 static void idpf_vf_mb_intr_reg_init(struct idpf_adapter *adapter)
 {
+	struct libie_mmio_info *mmio = &adapter->ctlq_ctx.mmio_info;
 	struct idpf_intr_reg *intr = &adapter->mb_vector.intr_reg;
 	u32 dyn_ctl = le32_to_cpu(adapter->caps.mailbox_dyn_ctl);
 
-	intr->dyn_ctl = idpf_get_reg_addr(adapter, dyn_ctl);
+	intr->dyn_ctl = libie_pci_get_mmio_addr(mmio, dyn_ctl);
 	intr->dyn_ctl_intena_m = VF_INT_DYN_CTL0_INTENA_M;
 	intr->dyn_ctl_itridx_m = VF_INT_DYN_CTL0_ITR_INDX_M;
-	intr->icr_ena = idpf_get_reg_addr(adapter, VF_INT_ICR0_ENA1);
+	intr->icr_ena = libie_pci_get_mmio_addr(mmio, VF_INT_ICR0_ENA1);
 	intr->icr_ena_ctlq_m = VF_INT_ICR0_ENA1_ADMINQ_M;
 }
 
@@ -74,6 +75,7 @@ static int idpf_vf_intr_reg_init(struct idpf_vport *vport,
 	struct idpf_adapter *adapter = vport->adapter;
 	u16 num_vecs = rsrc->num_q_vectors;
 	struct idpf_vec_regs *reg_vals;
+	struct libie_mmio_info *mmio;
 	int num_regs, i, err = 0;
 	u32 rx_itr, tx_itr;
 	u16 total_vecs;
@@ -90,14 +92,17 @@ static int idpf_vf_intr_reg_init(struct idpf_vport *vport,
 		goto free_reg_vals;
 	}
 
+	mmio = &adapter->ctlq_ctx.mmio_info;
+
 	for (i = 0; i < num_vecs; i++) {
 		struct idpf_q_vector *q_vector = &rsrc->q_vectors[i];
 		u16 vec_id = rsrc->q_vector_idxs[i] - IDPF_MBX_Q_VEC;
 		struct idpf_intr_reg *intr = &q_vector->intr_reg;
+		struct idpf_vec_regs *reg = &reg_vals[vec_id];
 		u32 spacing;
 
-		intr->dyn_ctl = idpf_get_reg_addr(adapter,
-						  reg_vals[vec_id].dyn_ctl_reg);
+		intr->dyn_ctl =	libie_pci_get_mmio_addr(mmio,
+							reg->dyn_ctl_reg);
 		intr->dyn_ctl_intena_m = VF_INT_DYN_CTLN_INTENA_M;
 		intr->dyn_ctl_intena_msk_m = VF_INT_DYN_CTLN_INTENA_MSK_M;
 		intr->dyn_ctl_itridx_s = VF_INT_DYN_CTLN_ITR_INDX_S;
@@ -107,16 +112,14 @@ static int idpf_vf_intr_reg_init(struct idpf_vport *vport,
 		intr->dyn_ctl_sw_itridx_ena_m =
 			VF_INT_DYN_CTLN_SW_ITR_INDX_ENA_M;
 
-		spacing = IDPF_ITR_IDX_SPACING(reg_vals[vec_id].itrn_index_spacing,
+		spacing = IDPF_ITR_IDX_SPACING(reg->itrn_index_spacing,
 					       IDPF_VF_ITR_IDX_SPACING);
 		rx_itr = VF_INT_ITRN_ADDR(VIRTCHNL2_ITR_IDX_0,
-					  reg_vals[vec_id].itrn_reg,
-					  spacing);
+					  reg->itrn_reg, spacing);
 		tx_itr = VF_INT_ITRN_ADDR(VIRTCHNL2_ITR_IDX_1,
-					  reg_vals[vec_id].itrn_reg,
-					  spacing);
-		intr->rx_itr = idpf_get_reg_addr(adapter, rx_itr);
-		intr->tx_itr = idpf_get_reg_addr(adapter, tx_itr);
+					  reg->itrn_reg, spacing);
+		intr->rx_itr = libie_pci_get_mmio_addr(mmio, rx_itr);
+		intr->tx_itr = libie_pci_get_mmio_addr(mmio, tx_itr);
 	}
 
 free_reg_vals:
@@ -131,7 +134,9 @@ static int idpf_vf_intr_reg_init(struct idpf_vport *vport,
  */
 static void idpf_vf_reset_reg_init(struct idpf_adapter *adapter)
 {
-	adapter->reset_reg.rstat = idpf_get_reg_addr(adapter, VFGEN_RSTAT);
+	adapter->reset_reg.rstat =
+		libie_pci_get_mmio_addr(&adapter->ctlq_ctx.mmio_info,
+					VFGEN_RSTAT);
 	adapter->reset_reg.rstat_m = VFGEN_RSTAT_VFR_STATE_M;
 }
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index b93082b98f3a..d8b62ca46f60 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -1163,7 +1163,7 @@ static int __idpf_queue_reg_init(struct idpf_vport *vport,
 				 struct idpf_q_vec_rsrc *rsrc, u32 *reg_vals,
 				 int num_regs, u32 q_type)
 {
-	struct idpf_adapter *adapter = vport->adapter;
+	struct libie_mmio_info *mmio = &vport->adapter->ctlq_ctx.mmio_info;
 	int i, j, k = 0;
 
 	switch (q_type) {
@@ -1173,7 +1173,8 @@ static int __idpf_queue_reg_init(struct idpf_vport *vport,
 
 			for (j = 0; j < tx_qgrp->num_txq && k < num_regs; j++, k++)
 				tx_qgrp->txqs[j]->tail =
-					idpf_get_reg_addr(adapter, reg_vals[k]);
+					libie_pci_get_mmio_addr(mmio,
+								reg_vals[k]);
 		}
 		break;
 	case VIRTCHNL2_QUEUE_TYPE_RX:
@@ -1185,8 +1186,8 @@ static int __idpf_queue_reg_init(struct idpf_vport *vport,
 				struct idpf_rx_queue *q;
 
 				q = rx_qgrp->singleq.rxqs[j];
-				q->tail = idpf_get_reg_addr(adapter,
-							    reg_vals[k]);
+				q->tail = libie_pci_get_mmio_addr(mmio,
+								  reg_vals[k]);
 			}
 		}
 		break;
@@ -1199,8 +1200,8 @@ static int __idpf_queue_reg_init(struct idpf_vport *vport,
 				struct idpf_buf_queue *q;
 
 				q = &rx_qgrp->splitq.bufq_sets[j].bufq;
-				q->tail = idpf_get_reg_addr(adapter,
-							    reg_vals[k]);
+				q->tail = libie_pci_get_mmio_addr(mmio,
+								  reg_vals[k]);
 			}
 		}
 		break;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
index bdcc54a5fb56..f9b23e98e55f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
@@ -30,6 +30,7 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
 		.send_buf.iov_len = sizeof(send_ptp_caps_msg),
 		.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
 	};
+	struct libie_mmio_info	*mmio_info = &adapter->ctlq_ctx.mmio_info;
 	struct virtchnl2_ptp_clk_adj_reg_offsets clk_adj_offsets;
 	struct virtchnl2_ptp_clk_reg_offsets clock_offsets;
 	struct idpf_ptp_secondary_mbx *scnd_mbx;
@@ -76,19 +77,20 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
 	clock_offsets = recv_ptp_caps_msg->clk_offsets;
 
 	temp_offset = le32_to_cpu(clock_offsets.dev_clk_ns_l);
-	ptp->dev_clk_regs.dev_clk_ns_l = idpf_get_reg_addr(adapter,
-							   temp_offset);
+	ptp->dev_clk_regs.dev_clk_ns_l =
+		libie_pci_get_mmio_addr(mmio_info, temp_offset);
 	temp_offset = le32_to_cpu(clock_offsets.dev_clk_ns_h);
-	ptp->dev_clk_regs.dev_clk_ns_h = idpf_get_reg_addr(adapter,
-							   temp_offset);
+	ptp->dev_clk_regs.dev_clk_ns_h =
+		libie_pci_get_mmio_addr(mmio_info, temp_offset);
 	temp_offset = le32_to_cpu(clock_offsets.phy_clk_ns_l);
-	ptp->dev_clk_regs.phy_clk_ns_l = idpf_get_reg_addr(adapter,
-							   temp_offset);
+	ptp->dev_clk_regs.phy_clk_ns_l =
+		libie_pci_get_mmio_addr(mmio_info, temp_offset);
 	temp_offset = le32_to_cpu(clock_offsets.phy_clk_ns_h);
-	ptp->dev_clk_regs.phy_clk_ns_h = idpf_get_reg_addr(adapter,
-							   temp_offset);
+	ptp->dev_clk_regs.phy_clk_ns_h =
+		libie_pci_get_mmio_addr(mmio_info, temp_offset);
 	temp_offset = le32_to_cpu(clock_offsets.cmd_sync_trigger);
-	ptp->dev_clk_regs.cmd_sync = idpf_get_reg_addr(adapter, temp_offset);
+	ptp->dev_clk_regs.cmd_sync =
+		libie_pci_get_mmio_addr(mmio_info, temp_offset);
 
 discipline_clock:
 	access_type = ptp->adj_dev_clk_time_access;
@@ -99,29 +101,37 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
 
 	/* Device clock offsets */
 	temp_offset = le32_to_cpu(clk_adj_offsets.dev_clk_cmd_type);
-	ptp->dev_clk_regs.cmd = idpf_get_reg_addr(adapter, temp_offset);
+	ptp->dev_clk_regs.cmd =
+		libie_pci_get_mmio_addr(mmio_info, temp_offset);
 	temp_offset = le32_to_cpu(clk_adj_offsets.dev_clk_incval_l);
-	ptp->dev_clk_regs.incval_l = idpf_get_reg_addr(adapter, temp_offset);
+	ptp->dev_clk_regs.incval_l =
+		libie_pci_get_mmio_addr(mmio_info, temp_offset);
 	temp_offset = le32_to_cpu(clk_adj_offsets.dev_clk_incval_h);
-	ptp->dev_clk_regs.incval_h = idpf_get_reg_addr(adapter, temp_offset);
+	ptp->dev_clk_regs.incval_h =
+		libie_pci_get_mmio_addr(mmio_info, temp_offset);
 	temp_offset = le32_to_cpu(clk_adj_offsets.dev_clk_shadj_l);
-	ptp->dev_clk_regs.shadj_l = idpf_get_reg_addr(adapter, temp_offset);
+	ptp->dev_clk_regs.shadj_l =
+		libie_pci_get_mmio_addr(mmio_info, temp_offset);
 	temp_offset = le32_to_cpu(clk_adj_offsets.dev_clk_shadj_h);
-	ptp->dev_clk_regs.shadj_h = idpf_get_reg_addr(adapter, temp_offset);
+	ptp->dev_clk_regs.shadj_h =
+		libie_pci_get_mmio_addr(mmio_info, temp_offset);
 
 	/* PHY clock offsets */
 	temp_offset = le32_to_cpu(clk_adj_offsets.phy_clk_cmd_type);
-	ptp->dev_clk_regs.phy_cmd = idpf_get_reg_addr(adapter, temp_offset);
+	ptp->dev_clk_regs.phy_cmd =
+		libie_pci_get_mmio_addr(mmio_info, temp_offset);
 	temp_offset = le32_to_cpu(clk_adj_offsets.phy_clk_incval_l);
-	ptp->dev_clk_regs.phy_incval_l = idpf_get_reg_addr(adapter,
-							   temp_offset);
+	ptp->dev_clk_regs.phy_incval_l =
+		libie_pci_get_mmio_addr(mmio_info, temp_offset);
 	temp_offset = le32_to_cpu(clk_adj_offsets.phy_clk_incval_h);
-	ptp->dev_clk_regs.phy_incval_h = idpf_get_reg_addr(adapter,
-							   temp_offset);
+	ptp->dev_clk_regs.phy_incval_h =
+		libie_pci_get_mmio_addr(mmio_info, temp_offset);
 	temp_offset = le32_to_cpu(clk_adj_offsets.phy_clk_shadj_l);
-	ptp->dev_clk_regs.phy_shadj_l = idpf_get_reg_addr(adapter, temp_offset);
+	ptp->dev_clk_regs.phy_shadj_l =
+		libie_pci_get_mmio_addr(mmio_info, temp_offset);
 	temp_offset = le32_to_cpu(clk_adj_offsets.phy_clk_shadj_h);
-	ptp->dev_clk_regs.phy_shadj_h = idpf_get_reg_addr(adapter, temp_offset);
+	ptp->dev_clk_regs.phy_shadj_h =
+		libie_pci_get_mmio_addr(mmio_info, temp_offset);
 
 	return 0;
 }
-- 
2.47.0

