Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C60D3C64771
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Nov 2025 14:49:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7FE4F80DD9;
	Mon, 17 Nov 2025 13:49:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wtV3hMj-_8L0; Mon, 17 Nov 2025 13:49:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5EC4080E37
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763387380;
	bh=Dm6UOSdxTORCePIs3OxiZ1NTUbfa5hy4VdyglRvU4F0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7kgrOXot3qkbRN5pRcpC4dHds+E2hMvTYvi+HbfDHabfC1eO7Dtln52jYr994MHzF
	 9rlCnfB/G5/XcN+ucQRerCFwHSO5aELgSo9ey48LKqnVoeA0WYbGy7BwN5BaJ5qKed
	 5GgMw6PcUUwnsK9p9q/O56UkRQs+1FdpIYvZQ7JIWX+j7QPxmPLuqf71PoXGsfim9r
	 45gkQxlLeTCBMXM3qZaLThYhEXa9ywlHhs+c2MIXv8XvsFzD94tFtadQdOaofwsZua
	 MBnurUzAvGbQAuSIsL1RYQuAmkHrpEeANJs4axlsGBGIM+oi7M/ofLYPJYIrqXJ/jI
	 ejEZKLexzGWuQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5EC4080E37;
	Mon, 17 Nov 2025 13:49:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6D350158
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 13:49:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5463660DBD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 13:49:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JOsj9o775wRQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Nov 2025 13:49:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 20F5E60D5E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 20F5E60D5E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 20F5E60D5E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 13:49:36 +0000 (UTC)
X-CSE-ConnectionGUID: 8O0QJ0J6RLyLT9+Utd9g7A==
X-CSE-MsgGUID: ifqzi+rDRqapXRtDg+OvzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="76846131"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="76846131"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 05:49:36 -0800
X-CSE-ConnectionGUID: MnuiaBA5Ss+q0BQh8CtK9A==
X-CSE-MsgGUID: F7ZHKrzWS56SU+NFGrbhtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="190115725"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa007.fm.intel.com with ESMTP; 17 Nov 2025 05:49:29 -0800
Received: from mglak.igk.intel.com (mglak.igk.intel.com [10.237.112.146])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 10FD137E3A;
 Mon, 17 Nov 2025 13:49:27 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: aleksander.lobakin@intel.com, sridhar.samudrala@intel.com,
 "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>,
 jayaprakash.shanmugam@intel.com, natalia.wochtman@intel.com,
 Jiri Pirko <jiri@resnulli.us>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Richard Cochran <richardcochran@gmail.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Mon, 17 Nov 2025 14:48:48 +0100
Message-ID: <20251117134912.18566-9-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20251117134912.18566-1-larysa.zaremba@intel.com>
References: <20251117134912.18566-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763387376; x=1794923376;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UsqK9V54xEa8sSuDEMxJg4qPvn7sRRHzG69i8HRc79I=;
 b=XDDavVgnmC7DQ78lCCMDGMC3yIusO5ouqmeMAXHeu/TZ1Q1dM4ObwVZN
 pANUJvSuvf3w5SOOExf7iH2LMjEHDFWpgnR7s19mXeTeZ0SFCX8X3Lvl7
 QWda8FiC6sO7NqJfwFiDo10hiMGrDBtTMYfjCZcWTSjd5bIkUS9XyeVDd
 OJz67H7aHoTOcfhn1rd+8NPN2VP7AVTrh7/6mF9z/ITtjs3ALN6TxZs2S
 GqLr7bbyWT8kKm5sBCG2l0TW8eJauh7dSbqmz5Wju50aT+4ovhyhnPkHG
 AzjXCqPPe0840V0dXDWcK81XG/vbdBTHRaXS7xDQ3Nb6iIQddP0YGQ0d0
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XDDavVgn
Subject: [Intel-wired-lan] [PATCH iwl-next v5 08/15] idpf: refactor idpf to
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

Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/idpf/Kconfig       |   1 +
 drivers/net/ethernet/intel/idpf/idpf.h        |  70 +-------
 .../net/ethernet/intel/idpf/idpf_controlq.c   |  26 ++-
 .../net/ethernet/intel/idpf/idpf_controlq.h   |   2 -
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |  61 +++----
 drivers/net/ethernet/intel/idpf/idpf_idc.c    |  38 +++--
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   7 +-
 drivers/net/ethernet/intel/idpf/idpf_main.c   | 111 ++++++------
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  32 ++--
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 158 ++++++++----------
 .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   |  58 ++++---
 11 files changed, 264 insertions(+), 300 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/Kconfig b/drivers/net/ethernet/intel/idpf/Kconfig
index adab2154125b..586df3a4afe9 100644
--- a/drivers/net/ethernet/intel/idpf/Kconfig
+++ b/drivers/net/ethernet/intel/idpf/Kconfig
@@ -6,6 +6,7 @@ config IDPF
 	depends on PCI_MSI
 	depends on PTP_1588_CLOCK_OPTIONAL
 	select DIMLIB
+	select LIBIE_CP
 	select LIBETH_XDP
 	help
 	  This driver supports Intel(R) Infrastructure Data Path Function
diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 1a1ea3fef092..dfa7618ed261 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -23,6 +23,7 @@ struct idpf_rss_data;
 
 #include <linux/intel/iidc_rdma.h>
 #include <linux/intel/iidc_rdma_idpf.h>
+#include <linux/intel/libie/controlq.h>
 #include <linux/intel/virtchnl2.h>
 
 #include "idpf_txrx.h"
@@ -625,6 +626,7 @@ struct idpf_vc_xn_manager;
  * @flags: See enum idpf_flags
  * @reset_reg: See struct idpf_reset_reg
  * @hw: Device access data
+ * @ctlq_ctx: controlq context
  * @num_avail_msix: Available number of MSIX vectors
  * @num_msix_entries: Number of entries in MSIX table
  * @msix_entries: MSIX table
@@ -682,6 +684,7 @@ struct idpf_adapter {
 	DECLARE_BITMAP(flags, IDPF_FLAGS_NBITS);
 	struct idpf_reset_reg reset_reg;
 	struct idpf_hw hw;
+	struct libie_ctlq_ctx ctlq_ctx;
 	u16 num_avail_msix;
 	u16 num_msix_entries;
 	struct msix_entry *msix_entries;
@@ -870,70 +873,6 @@ static inline u8 idpf_get_min_tx_pkt_len(struct idpf_adapter *adapter)
 	return pkt_len ? pkt_len : IDPF_TX_MIN_PKT_LEN;
 }
 
-/**
- * idpf_get_mbx_reg_addr - Get BAR0 mailbox register address
- * @adapter: private data struct
- * @reg_offset: register offset value
- *
- * Return: BAR0 mailbox register address based on register offset.
- */
-static inline void __iomem *idpf_get_mbx_reg_addr(struct idpf_adapter *adapter,
-						  resource_size_t reg_offset)
-{
-	return adapter->hw.mbx.vaddr + reg_offset;
-}
-
-/**
- * idpf_get_rstat_reg_addr - Get BAR0 rstat register address
- * @adapter: private data struct
- * @reg_offset: register offset value
- *
- * Return: BAR0 rstat register address based on register offset.
- */
-static inline void __iomem *idpf_get_rstat_reg_addr(struct idpf_adapter *adapter,
-						    resource_size_t reg_offset)
-{
-	reg_offset -= adapter->dev_ops.static_reg_info[1].start;
-
-	return adapter->hw.rstat.vaddr + reg_offset;
-}
-
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
-	struct idpf_hw *hw = &adapter->hw;
-
-	for (int i = 0; i < hw->num_lan_regs; i++) {
-		struct idpf_mmio_reg *region = &hw->lan_regs[i];
-
-		if (reg_offset >= region->addr_start &&
-		    reg_offset < (region->addr_start + region->addr_len)) {
-			/* Convert the offset so that it is relative to the
-			 * start of the region.  Then add the base address of
-			 * the region to get the final address.
-			 */
-			reg_offset -= region->addr_start;
-
-			return region->vaddr + reg_offset;
-		}
-	}
-
-	/* It's impossible to hit this case with offsets from the CP. But if we
-	 * do for any other reason, the kernel will panic on that register
-	 * access. Might as well do it here to make it clear what's happening.
-	 */
-	BUG();
-
-	return NULL;
-}
-
 /**
  * idpf_is_reset_detected - check if we were reset at some point
  * @adapter: driver specific private structure
@@ -945,7 +884,8 @@ static inline bool idpf_is_reset_detected(struct idpf_adapter *adapter)
 	if (!adapter->hw.arq)
 		return true;
 
-	return !(readl(idpf_get_mbx_reg_addr(adapter, adapter->hw.arq->reg.len)) &
+	return !(readl(libie_pci_get_mmio_addr(&adapter->ctlq_ctx.mmio_info,
+					       adapter->hw.arq->reg.len)) &
 		 adapter->hw.arq->reg.len_mask);
 }
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_controlq.c b/drivers/net/ethernet/intel/idpf/idpf_controlq.c
index 67894eda2d29..89f6b39934d8 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_controlq.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_controlq.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /* Copyright (C) 2023 Intel Corporation */
 
-#include "idpf_controlq.h"
+#include "idpf.h"
 
 /**
  * idpf_ctlq_setup_regs - initialize control queue registers
@@ -34,21 +34,27 @@ static void idpf_ctlq_setup_regs(struct idpf_ctlq_info *cq,
 static void idpf_ctlq_init_regs(struct idpf_hw *hw, struct idpf_ctlq_info *cq,
 				bool is_rxq)
 {
+	struct libie_mmio_info *mmio = &hw->back->ctlq_ctx.mmio_info;
+
 	/* Update tail to post pre-allocated buffers for rx queues */
 	if (is_rxq)
-		idpf_mbx_wr32(hw, cq->reg.tail, (u32)(cq->ring_size - 1));
+		writel((u32)(cq->ring_size - 1),
+		       libie_pci_get_mmio_addr(mmio, cq->reg.tail));
 
 	/* For non-Mailbox control queues only TAIL need to be set */
 	if (cq->q_id != -1)
 		return;
 
 	/* Clear Head for both send or receive */
-	idpf_mbx_wr32(hw, cq->reg.head, 0);
+	writel(0, libie_pci_get_mmio_addr(mmio, cq->reg.head));
 
 	/* set starting point */
-	idpf_mbx_wr32(hw, cq->reg.bal, lower_32_bits(cq->desc_ring.pa));
-	idpf_mbx_wr32(hw, cq->reg.bah, upper_32_bits(cq->desc_ring.pa));
-	idpf_mbx_wr32(hw, cq->reg.len, (cq->ring_size | cq->reg.len_ena_mask));
+	writel(lower_32_bits(cq->desc_ring.pa),
+	       libie_pci_get_mmio_addr(mmio, cq->reg.bal));
+	writel(upper_32_bits(cq->desc_ring.pa),
+	       libie_pci_get_mmio_addr(mmio, cq->reg.bah));
+	writel((cq->ring_size | cq->reg.len_ena_mask),
+	       libie_pci_get_mmio_addr(mmio, cq->reg.len));
 }
 
 /**
@@ -328,7 +334,9 @@ int idpf_ctlq_send(struct idpf_hw *hw, struct idpf_ctlq_info *cq,
 	 */
 	dma_wmb();
 
-	idpf_mbx_wr32(hw, cq->reg.tail, cq->next_to_use);
+	writel(cq->next_to_use,
+	       libie_pci_get_mmio_addr(&hw->back->ctlq_ctx.mmio_info,
+				       cq->reg.tail));
 
 err_unlock:
 	spin_unlock(&cq->cq_lock);
@@ -520,7 +528,9 @@ int idpf_ctlq_post_rx_buffs(struct idpf_hw *hw, struct idpf_ctlq_info *cq,
 
 		dma_wmb();
 
-		idpf_mbx_wr32(hw, cq->reg.tail, cq->next_to_post);
+		writel(cq->next_to_post,
+		       libie_pci_get_mmio_addr(&hw->back->ctlq_ctx.mmio_info,
+					       cq->reg.tail));
 	}
 
 	spin_unlock(&cq->cq_lock);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_controlq.h b/drivers/net/ethernet/intel/idpf/idpf_controlq.h
index de4ece40c2ff..acf595e9265f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_controlq.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_controlq.h
@@ -109,8 +109,6 @@ struct idpf_mmio_reg {
  * Align to ctlq_hw_info
  */
 struct idpf_hw {
-	struct idpf_mmio_reg mbx;
-	struct idpf_mmio_reg rstat;
 	/* Array of remaining LAN BAR regions */
 	int num_lan_regs;
 	struct idpf_mmio_reg *lan_regs;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_dev.c
index a4625638cf3f..3a9355d40c90 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_dev.c
@@ -16,7 +16,6 @@
 static void idpf_ctlq_reg_init(struct idpf_adapter *adapter,
 			       struct idpf_ctlq_create_info *cq)
 {
-	resource_size_t mbx_start = adapter->dev_ops.static_reg_info[0].start;
 	int i;
 
 	for (i = 0; i < IDPF_NUM_DFLT_MBX_Q; i++) {
@@ -25,22 +24,22 @@ static void idpf_ctlq_reg_init(struct idpf_adapter *adapter,
 		switch (ccq->type) {
 		case IDPF_CTLQ_TYPE_MAILBOX_TX:
 			/* set head and tail registers in our local struct */
-			ccq->reg.head = PF_FW_ATQH - mbx_start;
-			ccq->reg.tail = PF_FW_ATQT - mbx_start;
-			ccq->reg.len = PF_FW_ATQLEN - mbx_start;
-			ccq->reg.bah = PF_FW_ATQBAH - mbx_start;
-			ccq->reg.bal = PF_FW_ATQBAL - mbx_start;
+			ccq->reg.head = PF_FW_ATQH;
+			ccq->reg.tail = PF_FW_ATQT;
+			ccq->reg.len = PF_FW_ATQLEN;
+			ccq->reg.bah = PF_FW_ATQBAH;
+			ccq->reg.bal = PF_FW_ATQBAL;
 			ccq->reg.len_mask = PF_FW_ATQLEN_ATQLEN_M;
 			ccq->reg.len_ena_mask = PF_FW_ATQLEN_ATQENABLE_M;
 			ccq->reg.head_mask = PF_FW_ATQH_ATQH_M;
 			break;
 		case IDPF_CTLQ_TYPE_MAILBOX_RX:
 			/* set head and tail registers in our local struct */
-			ccq->reg.head = PF_FW_ARQH - mbx_start;
-			ccq->reg.tail = PF_FW_ARQT - mbx_start;
-			ccq->reg.len = PF_FW_ARQLEN - mbx_start;
-			ccq->reg.bah = PF_FW_ARQBAH - mbx_start;
-			ccq->reg.bal = PF_FW_ARQBAL - mbx_start;
+			ccq->reg.head = PF_FW_ARQH;
+			ccq->reg.tail = PF_FW_ARQT;
+			ccq->reg.len = PF_FW_ARQLEN;
+			ccq->reg.bah = PF_FW_ARQBAH;
+			ccq->reg.bal = PF_FW_ARQBAL;
 			ccq->reg.len_mask = PF_FW_ARQLEN_ARQLEN_M;
 			ccq->reg.len_ena_mask = PF_FW_ARQLEN_ARQENABLE_M;
 			ccq->reg.head_mask = PF_FW_ARQH_ARQH_M;
@@ -57,13 +56,14 @@ static void idpf_ctlq_reg_init(struct idpf_adapter *adapter,
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
 
@@ -78,6 +78,7 @@ static int idpf_intr_reg_init(struct idpf_vport *vport,
 	struct idpf_adapter *adapter = vport->adapter;
 	u16 num_vecs = rsrc->num_q_vectors;
 	struct idpf_vec_regs *reg_vals;
+	struct libie_mmio_info *mmio;
 	int num_regs, i, err = 0;
 	u32 rx_itr, tx_itr, val;
 	u16 total_vecs;
@@ -94,14 +95,17 @@ static int idpf_intr_reg_init(struct idpf_vport *vport,
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
@@ -111,22 +115,21 @@ static int idpf_intr_reg_init(struct idpf_vport *vport,
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
 
 	/* Data vector for NOIRQ queues */
 
 	val = reg_vals[rsrc->q_vector_idxs[i] - IDPF_MBX_Q_VEC].dyn_ctl_reg;
-	rsrc->noirq_dyn_ctl = idpf_get_reg_addr(adapter, val);
+	rsrc->noirq_dyn_ctl =
+		libie_pci_get_mmio_addr(&adapter->ctlq_ctx.mmio_info, val);
 
 	val = PF_GLINT_DYN_CTL_WB_ON_ITR_M | PF_GLINT_DYN_CTL_INTENA_MSK_M |
 	      FIELD_PREP(PF_GLINT_DYN_CTL_ITR_INDX_M, IDPF_NO_ITR_UPDATE_IDX);
@@ -144,7 +147,9 @@ static int idpf_intr_reg_init(struct idpf_vport *vport,
  */
 static void idpf_reset_reg_init(struct idpf_adapter *adapter)
 {
-	adapter->reset_reg.rstat = idpf_get_rstat_reg_addr(adapter, PFGEN_RSTAT);
+	adapter->reset_reg.rstat =
+		libie_pci_get_mmio_addr(&adapter->ctlq_ctx.mmio_info,
+					PFGEN_RSTAT);
 	adapter->reset_reg.rstat_m = PFGEN_RSTAT_PFR_STATE_M;
 }
 
@@ -156,11 +161,11 @@ static void idpf_reset_reg_init(struct idpf_adapter *adapter)
 static void idpf_trigger_reset(struct idpf_adapter *adapter,
 			       enum idpf_flags __always_unused trig_cause)
 {
-	u32 reset_reg;
+	void __iomem *addr;
 
-	reset_reg = readl(idpf_get_rstat_reg_addr(adapter, PFGEN_CTRL));
-	writel(reset_reg | PFGEN_CTRL_PFSWR,
-	       idpf_get_rstat_reg_addr(adapter, PFGEN_CTRL));
+	addr = libie_pci_get_mmio_addr(&adapter->ctlq_ctx.mmio_info,
+				       PFGEN_CTRL);
+	writel(readl(addr) | PFGEN_CTRL_PFSWR, addr);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c b/drivers/net/ethernet/intel/idpf/idpf_idc.c
index 7e20a07e98e5..c1b963f6bfad 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_idc.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_idc.c
@@ -410,9 +410,12 @@ idpf_idc_init_msix_data(struct idpf_adapter *adapter)
 int idpf_idc_init_aux_core_dev(struct idpf_adapter *adapter,
 			       enum iidc_function_type ftype)
 {
+	struct libie_mmio_info *mmio = &adapter->ctlq_ctx.mmio_info;
 	struct iidc_rdma_core_dev_info *cdev_info;
 	struct iidc_rdma_priv_dev_info *privd;
-	int err, i;
+	struct libie_pci_mmio_region *mr;
+	size_t num_mem_regions;
+	int err, i = 0;
 
 	adapter->cdev_info = kzalloc(sizeof(*cdev_info), GFP_KERNEL);
 	if (!adapter->cdev_info)
@@ -430,8 +433,15 @@ int idpf_idc_init_aux_core_dev(struct idpf_adapter *adapter,
 	cdev_info->rdma_protocol = IIDC_RDMA_PROTOCOL_ROCEV2;
 	privd->ftype = ftype;
 
+	num_mem_regions = list_count_nodes(&mmio->mmio_list);
+	if (num_mem_regions <= IDPF_MMIO_REG_NUM_STATIC) {
+		err = -EINVAL;
+		goto err_plug_aux_dev;
+	}
+
+	num_mem_regions -= IDPF_MMIO_REG_NUM_STATIC;
 	privd->mapped_mem_regions =
-		kcalloc(adapter->hw.num_lan_regs,
+		kcalloc(num_mem_regions,
 			sizeof(struct iidc_rdma_lan_mapped_mem_region),
 			GFP_KERNEL);
 	if (!privd->mapped_mem_regions) {
@@ -439,14 +449,22 @@ int idpf_idc_init_aux_core_dev(struct idpf_adapter *adapter,
 		goto err_plug_aux_dev;
 	}
 
-	privd->num_memory_regions = cpu_to_le16(adapter->hw.num_lan_regs);
-	for (i = 0; i < adapter->hw.num_lan_regs; i++) {
-		privd->mapped_mem_regions[i].region_addr =
-			adapter->hw.lan_regs[i].vaddr;
-		privd->mapped_mem_regions[i].size =
-			cpu_to_le64(adapter->hw.lan_regs[i].addr_len);
-		privd->mapped_mem_regions[i].start_offset =
-			cpu_to_le64(adapter->hw.lan_regs[i].addr_start);
+	privd->num_memory_regions = cpu_to_le16(num_mem_regions);
+	list_for_each_entry(mr, &mmio->mmio_list, list) {
+		struct resource *static_regs = adapter->dev_ops.static_reg_info;
+		bool is_static = false;
+
+		for (uint j = 0; j < IDPF_MMIO_REG_NUM_STATIC; j++)
+			if (mr->offset == static_regs[j].start)
+				is_static = true;
+
+		if (is_static)
+			continue;
+
+		privd->mapped_mem_regions[i].region_addr = mr->addr;
+		privd->mapped_mem_regions[i].size = cpu_to_le64(mr->size);
+		privd->mapped_mem_regions[i++].start_offset =
+						cpu_to_le64(mr->offset);
 	}
 
 	idpf_idc_init_msix_data(adapter);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index dca7861a0a2a..e15b1e8effc8 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1845,15 +1845,14 @@ void idpf_deinit_task(struct idpf_adapter *adapter)
 
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
@@ -1916,7 +1915,7 @@ static void idpf_init_hard_reset(struct idpf_adapter *adapter)
 	}
 
 	/* Wait for reset to complete */
-	err = idpf_check_reset_complete(&adapter->hw, &adapter->reset_reg);
+	err = idpf_check_reset_complete(adapter, &adapter->reset_reg);
 	if (err) {
 		dev_err(dev, "The driver was unable to contact the device's firmware. Check that the FW is running. Driver state= 0x%x\n",
 			adapter->state);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index de5d722cc21d..9da02ce42605 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -15,6 +15,8 @@
 
 MODULE_DESCRIPTION(DRV_SUMMARY);
 MODULE_IMPORT_NS("LIBETH");
+MODULE_IMPORT_NS("LIBIE_CP");
+MODULE_IMPORT_NS("LIBIE_PCI");
 MODULE_IMPORT_NS("LIBETH_XDP");
 MODULE_LICENSE("GPL");
 
@@ -90,6 +92,15 @@ static int idpf_dev_init(struct idpf_adapter *adapter,
 	return 0;
 }
 
+/**
+ * idpf_decfg_device - deconfigure device and device specific resources
+ * @adapter: driver specific private structure
+ */
+static void idpf_decfg_device(struct idpf_adapter *adapter)
+{
+	libie_pci_unmap_all_mmio_regions(&adapter->ctlq_ctx.mmio_info);
+}
+
 /**
  * idpf_remove - Device removal routine
  * @pdev: PCI device information struct
@@ -159,6 +170,7 @@ static void idpf_remove(struct pci_dev *pdev)
 	mutex_destroy(&adapter->queue_lock);
 	mutex_destroy(&adapter->vc_buf_lock);
 
+	idpf_decfg_device(adapter);
 	pci_set_drvdata(pdev, NULL);
 	kfree(adapter);
 }
@@ -181,46 +193,52 @@ static void idpf_shutdown(struct pci_dev *pdev)
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
-	resource_size_t res_start, mbx_start, rstat_start;
+	struct libie_mmio_info *mmio_info = &adapter->ctlq_ctx.mmio_info;
 	struct pci_dev *pdev = adapter->pdev;
-	struct idpf_hw *hw = &adapter->hw;
-	struct device *dev = &pdev->dev;
-	long len;
+	struct resource *region;
+	bool mapped = false;
+	int err;
 
-	res_start = pci_resource_start(pdev, 0);
+	err = libie_pci_init_dev(pdev);
+	if (err)
+		return err;
 
-	/* Map mailbox space for virtchnl communication */
-	mbx_start = res_start + adapter->dev_ops.static_reg_info[0].start;
-	len = resource_size(&adapter->dev_ops.static_reg_info[0]);
-	hw->mbx.vaddr = devm_ioremap(dev, mbx_start, len);
-	if (!hw->mbx.vaddr) {
-		pci_err(pdev, "failed to allocate BAR0 mbx region\n");
+	mmio_info->pdev = pdev;
+	INIT_LIST_HEAD(&mmio_info->mmio_list);
 
+	/* Map mailbox space for virtchnl communication */
+	region = &adapter->dev_ops.static_reg_info[0];
+	mapped = libie_pci_map_mmio_region(mmio_info, region->start,
+					   resource_size(region));
+	if (!mapped) {
+		pci_err(pdev, "failed to map BAR0 mbx region\n");
 		return -ENOMEM;
 	}
-	hw->mbx.addr_start = adapter->dev_ops.static_reg_info[0].start;
-	hw->mbx.addr_len = len;
 
 	/* Map rstat space for resets */
-	rstat_start = res_start + adapter->dev_ops.static_reg_info[1].start;
-	len = resource_size(&adapter->dev_ops.static_reg_info[1]);
-	hw->rstat.vaddr = devm_ioremap(dev, rstat_start, len);
-	if (!hw->rstat.vaddr) {
-		pci_err(pdev, "failed to allocate BAR0 rstat region\n");
+	region = &adapter->dev_ops.static_reg_info[1];
 
+	mapped = libie_pci_map_mmio_region(mmio_info, region->start,
+					   resource_size(region));
+	if (!mapped) {
+		pci_err(pdev, "failed to map BAR0 rstat region\n");
+		libie_pci_unmap_all_mmio_regions(mmio_info);
 		return -ENOMEM;
 	}
-	hw->rstat.addr_start = adapter->dev_ops.static_reg_info[1].start;
-	hw->rstat.addr_len = len;
 
-	hw->back = adapter;
+	err = pci_enable_ptm(pdev, NULL);
+	if (err)
+		pci_dbg(pdev, "PCIe PTM is not supported by PCIe bus/controller\n");
+
+	pci_set_drvdata(pdev, adapter);
+	adapter->hw.back = adapter;
 
 	return 0;
 }
@@ -246,32 +264,21 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	adapter->req_rx_splitq = true;
 
 	adapter->pdev = pdev;
-	err = pcim_enable_device(pdev);
-	if (err)
-		goto err_free;
 
-	err = pcim_request_region(pdev, 0, pci_name(pdev));
+	err = idpf_dev_init(adapter, ent);
 	if (err) {
-		pci_err(pdev, "pcim_request_region failed %pe\n", ERR_PTR(err));
-
+		dev_err(&pdev->dev, "Unexpected dev ID 0x%x in idpf probe\n",
+			ent->device);
 		goto err_free;
 	}
 
-	err = pci_enable_ptm(pdev, NULL);
-	if (err)
-		pci_dbg(pdev, "PCIe PTM is not supported by PCIe bus/controller\n");
-
-	/* set up for high or low dma */
-	err = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
+	err = idpf_cfg_device(adapter);
 	if (err) {
-		pci_err(pdev, "DMA configuration failed: %pe\n", ERR_PTR(err));
-
+		pci_err(pdev, "Failed to configure device specific resources: %pe\n",
+			ERR_PTR(err));
 		goto err_free;
 	}
 
-	pci_set_master(pdev);
-	pci_set_drvdata(pdev, adapter);
-
 	adapter->init_wq = alloc_workqueue("%s-%s-init",
 					   WQ_UNBOUND | WQ_MEM_RECLAIM, 0,
 					   dev_driver_string(dev),
@@ -279,7 +286,7 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (!adapter->init_wq) {
 		dev_err(dev, "Failed to allocate init workqueue\n");
 		err = -ENOMEM;
-		goto err_free;
+		goto err_init_wq;
 	}
 
 	adapter->serv_wq = alloc_workqueue("%s-%s-service",
@@ -324,20 +331,6 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* setup msglvl */
 	adapter->msg_enable = netif_msg_init(-1, IDPF_AVAIL_NETIF_M);
 
-	err = idpf_dev_init(adapter, ent);
-	if (err) {
-		dev_err(&pdev->dev, "Unexpected dev ID 0x%x in idpf probe\n",
-			ent->device);
-		goto destroy_vc_event_wq;
-	}
-
-	err = idpf_cfg_hw(adapter);
-	if (err) {
-		dev_err(dev, "Failed to configure HW structure for adapter: %d\n",
-			err);
-		goto destroy_vc_event_wq;
-	}
-
 	mutex_init(&adapter->vport_ctrl_lock);
 	mutex_init(&adapter->vector_lock);
 	mutex_init(&adapter->queue_lock);
@@ -356,8 +349,6 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	return 0;
 
-destroy_vc_event_wq:
-	destroy_workqueue(adapter->vc_event_wq);
 err_vc_event_wq_alloc:
 	destroy_workqueue(adapter->stats_wq);
 err_stats_wq_alloc:
@@ -366,6 +357,8 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	destroy_workqueue(adapter->serv_wq);
 err_serv_wq_alloc:
 	destroy_workqueue(adapter->init_wq);
+err_init_wq:
+	idpf_decfg_device(adapter);
 err_free:
 	kfree(adapter);
 	return err;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
index 7527b967e2e7..b7aa9538435e 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
@@ -56,13 +56,14 @@ static void idpf_vf_ctlq_reg_init(struct idpf_adapter *adapter,
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
 
@@ -77,6 +78,7 @@ static int idpf_vf_intr_reg_init(struct idpf_vport *vport,
 	struct idpf_adapter *adapter = vport->adapter;
 	u16 num_vecs = rsrc->num_q_vectors;
 	struct idpf_vec_regs *reg_vals;
+	struct libie_mmio_info *mmio;
 	int num_regs, i, err = 0;
 	u32 rx_itr, tx_itr, val;
 	u16 total_vecs;
@@ -93,14 +95,17 @@ static int idpf_vf_intr_reg_init(struct idpf_vport *vport,
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
@@ -110,22 +115,21 @@ static int idpf_vf_intr_reg_init(struct idpf_vport *vport,
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
 
 	/* Data vector for NOIRQ queues */
 
 	val = reg_vals[rsrc->q_vector_idxs[i] - IDPF_MBX_Q_VEC].dyn_ctl_reg;
-	rsrc->noirq_dyn_ctl = idpf_get_reg_addr(adapter, val);
+	rsrc->noirq_dyn_ctl =
+		libie_pci_get_mmio_addr(&adapter->ctlq_ctx.mmio_info, val);
 
 	val = VF_INT_DYN_CTLN_WB_ON_ITR_M | VF_INT_DYN_CTLN_INTENA_MSK_M |
 	      FIELD_PREP(VF_INT_DYN_CTLN_ITR_INDX_M, IDPF_NO_ITR_UPDATE_IDX);
@@ -143,7 +147,9 @@ static int idpf_vf_intr_reg_init(struct idpf_vport *vport,
  */
 static void idpf_vf_reset_reg_init(struct idpf_adapter *adapter)
 {
-	adapter->reset_reg.rstat = idpf_get_rstat_reg_addr(adapter, VFGEN_RSTAT);
+	adapter->reset_reg.rstat =
+		libie_pci_get_mmio_addr(&adapter->ctlq_ctx.mmio_info,
+					VFGEN_RSTAT);
 	adapter->reset_reg.rstat_m = VFGEN_RSTAT_VFR_STATE_M;
 }
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index eb834f29ff77..278247e456f4 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -2,6 +2,7 @@
 /* Copyright (C) 2023 Intel Corporation */
 
 #include <linux/export.h>
+#include <linux/intel/libie/pci.h>
 #include <net/libeth/rx.h>
 
 #include "idpf.h"
@@ -1017,12 +1018,46 @@ static int idpf_send_get_caps_msg(struct idpf_adapter *adapter)
 }
 
 /**
- * idpf_send_get_lan_memory_regions - Send virtchnl get LAN memory regions msg
+ * idpf_mmio_region_non_static - Check if region is not static
+ * @mmio_info: PCI resources info
+ * @reg: region to check
+ *
+ * Return: %true if region can be received though virtchnl command,
+ *	   %false if region is related to mailbox or resetting
+ */
+static bool idpf_mmio_region_non_static(struct libie_mmio_info *mmio_info,
+					struct libie_pci_mmio_region *reg)
+{
+	struct idpf_adapter *adapter =
+		container_of(mmio_info, struct idpf_adapter,
+			     ctlq_ctx.mmio_info);
+
+	for (uint i = 0; i < IDPF_MMIO_REG_NUM_STATIC; i++) {
+		if (reg->bar_idx == 0 &&
+		    reg->offset == adapter->dev_ops.static_reg_info[i].start)
+			return false;
+	}
+
+	return true;
+}
+
+/**
+ * idpf_decfg_lan_memory_regions - Unmap non-static memory regions
+ * @adapter: Driver specific private structure
+ */
+static void idpf_decfg_lan_memory_regions(struct idpf_adapter *adapter)
+{
+	libie_pci_unmap_fltr_regs(&adapter->ctlq_ctx.mmio_info,
+				  idpf_mmio_region_non_static);
+}
+
+/**
+ * idpf_cfg_lan_memory_regions - Send virtchnl get LAN memory regions msg
  * @adapter: Driver specific private struct
  *
  * Return: 0 on success or error code on failure.
  */
-static int idpf_send_get_lan_memory_regions(struct idpf_adapter *adapter)
+static int idpf_cfg_lan_memory_regions(struct idpf_adapter *adapter)
 {
 	struct virtchnl2_get_lan_memory_regions *rcvd_regions __free(kfree);
 	struct idpf_vc_xn_params xn_params = {
@@ -1031,7 +1066,6 @@ static int idpf_send_get_lan_memory_regions(struct idpf_adapter *adapter)
 		.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
 	};
 	int num_regions, size;
-	struct idpf_hw *hw;
 	ssize_t reply_sz;
 	int err = 0;
 
@@ -1052,88 +1086,51 @@ static int idpf_send_get_lan_memory_regions(struct idpf_adapter *adapter)
 	if (size > IDPF_CTLQ_MAX_BUF_LEN)
 		return -EINVAL;
 
-	hw = &adapter->hw;
-	hw->lan_regs = kcalloc(num_regions, sizeof(*hw->lan_regs), GFP_KERNEL);
-	if (!hw->lan_regs)
-		return -ENOMEM;
-
 	for (int i = 0; i < num_regions; i++) {
-		hw->lan_regs[i].addr_len =
-			le64_to_cpu(rcvd_regions->mem_reg[i].size);
-		hw->lan_regs[i].addr_start =
-			le64_to_cpu(rcvd_regions->mem_reg[i].start_offset);
+		struct libie_mmio_info *mmio = &adapter->ctlq_ctx.mmio_info;
+		resource_size_t offset, len;
+
+		offset = le64_to_cpu(rcvd_regions->mem_reg[i].start_offset);
+		len = le64_to_cpu(rcvd_regions->mem_reg[i].size);
+		if (!libie_pci_map_mmio_region(mmio, offset, len)) {
+			idpf_decfg_lan_memory_regions(adapter);
+			return -EIO;
+		}
 	}
-	hw->num_lan_regs = num_regions;
 
 	return err;
 }
 
 /**
- * idpf_calc_remaining_mmio_regs - calculate MMIO regions outside mbx and rstat
+ * idpf_map_remaining_mmio_regs - map MMIO regions outside mbx and rstat
  * @adapter: Driver specific private structure
  *
- * Called when idpf_send_get_lan_memory_regions is not supported. This will
+ * Called when idpf_cfg_lan_memory_regions is not supported. This will
  * calculate the offsets and sizes for the regions before, in between, and
  * after the mailbox and rstat MMIO mappings.
  *
  * Return: 0 on success or error code on failure.
  */
-static int idpf_calc_remaining_mmio_regs(struct idpf_adapter *adapter)
+static int idpf_map_remaining_mmio_regs(struct idpf_adapter *adapter)
 {
 	struct resource *rstat_reg = &adapter->dev_ops.static_reg_info[1];
 	struct resource *mbx_reg = &adapter->dev_ops.static_reg_info[0];
-	struct idpf_hw *hw = &adapter->hw;
-
-	hw->num_lan_regs = IDPF_MMIO_MAP_FALLBACK_MAX_REMAINING;
-	hw->lan_regs = kcalloc(hw->num_lan_regs, sizeof(*hw->lan_regs),
-			       GFP_KERNEL);
-	if (!hw->lan_regs)
-		return -ENOMEM;
+	struct libie_mmio_info *mmio = &adapter->ctlq_ctx.mmio_info;
+	resource_size_t reg_start;
 
 	/* Region preceding mailbox */
-	hw->lan_regs[0].addr_start = 0;
-	hw->lan_regs[0].addr_len = mbx_reg->start;
-	/* Region between mailbox and rstat */
-	hw->lan_regs[1].addr_start = mbx_reg->end + 1;
-	hw->lan_regs[1].addr_len = rstat_reg->start -
-					hw->lan_regs[1].addr_start;
-	/* Region after rstat */
-	hw->lan_regs[2].addr_start = rstat_reg->end + 1;
-	hw->lan_regs[2].addr_len = pci_resource_len(adapter->pdev, 0) -
-					hw->lan_regs[2].addr_start;
-
-	return 0;
-}
+	libie_pci_map_mmio_region(mmio, 0, mbx_reg->start);
 
-/**
- * idpf_map_lan_mmio_regs - map remaining LAN BAR regions
- * @adapter: Driver specific private structure
- *
- * Return: 0 on success or error code on failure.
- */
-static int idpf_map_lan_mmio_regs(struct idpf_adapter *adapter)
-{
-	struct pci_dev *pdev = adapter->pdev;
-	struct idpf_hw *hw = &adapter->hw;
-	resource_size_t res_start;
-
-	res_start = pci_resource_start(pdev, 0);
-
-	for (int i = 0; i < hw->num_lan_regs; i++) {
-		resource_size_t start;
-		long len;
-
-		len = hw->lan_regs[i].addr_len;
-		if (!len)
-			continue;
-		start = hw->lan_regs[i].addr_start + res_start;
+	/* Region between mailbox and rstat */
+	reg_start = mbx_reg->end + 1;
+	libie_pci_map_mmio_region(mmio, reg_start,
+				  rstat_reg->start - reg_start);
 
-		hw->lan_regs[i].vaddr = devm_ioremap(&pdev->dev, start, len);
-		if (!hw->lan_regs[i].vaddr) {
-			pci_err(pdev, "failed to allocate BAR0 region\n");
-			return -ENOMEM;
-		}
-	}
+	/* Region after rstat */
+	reg_start = rstat_reg->end + 1;
+	libie_pci_map_mmio_region(mmio, reg_start,
+				  pci_resource_len(adapter->pdev, 0) -
+				  reg_start);
 
 	return 0;
 }
@@ -1404,7 +1401,7 @@ static int __idpf_queue_reg_init(struct idpf_vport *vport,
 				 struct idpf_q_vec_rsrc *rsrc, u32 *reg_vals,
 				 int num_regs, u32 q_type)
 {
-	struct idpf_adapter *adapter = vport->adapter;
+	struct libie_mmio_info *mmio = &vport->adapter->ctlq_ctx.mmio_info;
 	int i, j, k = 0;
 
 	switch (q_type) {
@@ -1414,7 +1411,8 @@ static int __idpf_queue_reg_init(struct idpf_vport *vport,
 
 			for (j = 0; j < tx_qgrp->num_txq && k < num_regs; j++, k++)
 				tx_qgrp->txqs[j]->tail =
-					idpf_get_reg_addr(adapter, reg_vals[k]);
+					libie_pci_get_mmio_addr(mmio,
+								reg_vals[k]);
 		}
 		break;
 	case VIRTCHNL2_QUEUE_TYPE_RX:
@@ -1426,8 +1424,8 @@ static int __idpf_queue_reg_init(struct idpf_vport *vport,
 				struct idpf_rx_queue *q;
 
 				q = rx_qgrp->singleq.rxqs[j];
-				q->tail = idpf_get_reg_addr(adapter,
-							    reg_vals[k]);
+				q->tail = libie_pci_get_mmio_addr(mmio,
+								  reg_vals[k]);
 			}
 		}
 		break;
@@ -1440,8 +1438,8 @@ static int __idpf_queue_reg_init(struct idpf_vport *vport,
 				struct idpf_buf_queue *q;
 
 				q = &rx_qgrp->splitq.bufq_sets[j].bufq;
-				q->tail = idpf_get_reg_addr(adapter,
-							    reg_vals[k]);
+				q->tail = libie_pci_get_mmio_addr(mmio,
+								  reg_vals[k]);
 			}
 		}
 		break;
@@ -3505,29 +3503,22 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
 	}
 
 	if (idpf_is_cap_ena(adapter, IDPF_OTHER_CAPS, VIRTCHNL2_CAP_LAN_MEMORY_REGIONS)) {
-		err = idpf_send_get_lan_memory_regions(adapter);
+		err = idpf_cfg_lan_memory_regions(adapter);
 		if (err) {
-			dev_err(&adapter->pdev->dev, "Failed to get LAN memory regions: %d\n",
+			dev_err(&adapter->pdev->dev, "Failed to configure LAN memory regions: %d\n",
 				err);
 			return -EINVAL;
 		}
 	} else {
 		/* Fallback to mapping the remaining regions of the entire BAR */
-		err = idpf_calc_remaining_mmio_regs(adapter);
+		err = idpf_map_remaining_mmio_regs(adapter);
 		if (err) {
-			dev_err(&adapter->pdev->dev, "Failed to allocate BAR0 region(s): %d\n",
+			dev_err(&adapter->pdev->dev, "Failed to configure BAR0 region(s): %d\n",
 				err);
 			return -ENOMEM;
 		}
 	}
 
-	err = idpf_map_lan_mmio_regs(adapter);
-	if (err) {
-		dev_err(&adapter->pdev->dev, "Failed to map BAR0 region(s): %d\n",
-			err);
-		return -ENOMEM;
-	}
-
 	pci_sriov_set_totalvfs(adapter->pdev, idpf_get_max_vfs(adapter));
 	num_max_vports = idpf_get_max_vports(adapter);
 	adapter->max_vports = num_max_vports;
@@ -3634,7 +3625,6 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
  */
 void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 {
-	struct idpf_hw *hw = &adapter->hw;
 	bool remove_in_prog;
 
 	if (!test_bit(IDPF_VC_CORE_INIT, adapter->flags))
@@ -3659,12 +3649,10 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 
 	idpf_vport_params_buf_rel(adapter);
 
-	kfree(hw->lan_regs);
-	hw->lan_regs = NULL;
-
 	kfree(adapter->vports);
 	adapter->vports = NULL;
 
+	idpf_decfg_lan_memory_regions(adapter);
 	clear_bit(IDPF_VC_CORE_INIT, adapter->flags);
 }
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
index 61cedb6f2854..82f26fc7bc08 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
@@ -31,6 +31,7 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
 		.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
 	};
 	struct virtchnl2_ptp_cross_time_reg_offsets cross_tstamp_offsets;
+	struct libie_mmio_info *mmio = &adapter->ctlq_ctx.mmio_info;
 	struct virtchnl2_ptp_clk_adj_reg_offsets clk_adj_offsets;
 	struct virtchnl2_ptp_clk_reg_offsets clock_offsets;
 	struct idpf_ptp_secondary_mbx *scnd_mbx;
@@ -77,19 +78,20 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
 	clock_offsets = recv_ptp_caps_msg->clk_offsets;
 
 	temp_offset = le32_to_cpu(clock_offsets.dev_clk_ns_l);
-	ptp->dev_clk_regs.dev_clk_ns_l = idpf_get_reg_addr(adapter,
-							   temp_offset);
+	ptp->dev_clk_regs.dev_clk_ns_l =
+		libie_pci_get_mmio_addr(mmio, temp_offset);
 	temp_offset = le32_to_cpu(clock_offsets.dev_clk_ns_h);
-	ptp->dev_clk_regs.dev_clk_ns_h = idpf_get_reg_addr(adapter,
-							   temp_offset);
+	ptp->dev_clk_regs.dev_clk_ns_h =
+		libie_pci_get_mmio_addr(mmio, temp_offset);
 	temp_offset = le32_to_cpu(clock_offsets.phy_clk_ns_l);
-	ptp->dev_clk_regs.phy_clk_ns_l = idpf_get_reg_addr(adapter,
-							   temp_offset);
+	ptp->dev_clk_regs.phy_clk_ns_l =
+		libie_pci_get_mmio_addr(mmio, temp_offset);
 	temp_offset = le32_to_cpu(clock_offsets.phy_clk_ns_h);
-	ptp->dev_clk_regs.phy_clk_ns_h = idpf_get_reg_addr(adapter,
-							   temp_offset);
+	ptp->dev_clk_regs.phy_clk_ns_h =
+		libie_pci_get_mmio_addr(mmio, temp_offset);
 	temp_offset = le32_to_cpu(clock_offsets.cmd_sync_trigger);
-	ptp->dev_clk_regs.cmd_sync = idpf_get_reg_addr(adapter, temp_offset);
+	ptp->dev_clk_regs.cmd_sync =
+		libie_pci_get_mmio_addr(mmio, temp_offset);
 
 cross_tstamp:
 	access_type = ptp->get_cross_tstamp_access;
@@ -99,13 +101,14 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
 	cross_tstamp_offsets = recv_ptp_caps_msg->cross_time_offsets;
 
 	temp_offset = le32_to_cpu(cross_tstamp_offsets.sys_time_ns_l);
-	ptp->dev_clk_regs.sys_time_ns_l = idpf_get_reg_addr(adapter,
-							    temp_offset);
+	ptp->dev_clk_regs.sys_time_ns_l =
+		libie_pci_get_mmio_addr(mmio, temp_offset);
 	temp_offset = le32_to_cpu(cross_tstamp_offsets.sys_time_ns_h);
-	ptp->dev_clk_regs.sys_time_ns_h = idpf_get_reg_addr(adapter,
-							    temp_offset);
+	ptp->dev_clk_regs.sys_time_ns_h =
+		libie_pci_get_mmio_addr(mmio, temp_offset);
 	temp_offset = le32_to_cpu(cross_tstamp_offsets.cmd_sync_trigger);
-	ptp->dev_clk_regs.cmd_sync = idpf_get_reg_addr(adapter, temp_offset);
+	ptp->dev_clk_regs.cmd_sync =
+		libie_pci_get_mmio_addr(mmio, temp_offset);
 
 discipline_clock:
 	access_type = ptp->adj_dev_clk_time_access;
@@ -116,29 +119,32 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
 
 	/* Device clock offsets */
 	temp_offset = le32_to_cpu(clk_adj_offsets.dev_clk_cmd_type);
-	ptp->dev_clk_regs.cmd = idpf_get_reg_addr(adapter, temp_offset);
+	ptp->dev_clk_regs.cmd = libie_pci_get_mmio_addr(mmio, temp_offset);
 	temp_offset = le32_to_cpu(clk_adj_offsets.dev_clk_incval_l);
-	ptp->dev_clk_regs.incval_l = idpf_get_reg_addr(adapter, temp_offset);
+	ptp->dev_clk_regs.incval_l = libie_pci_get_mmio_addr(mmio, temp_offset);
 	temp_offset = le32_to_cpu(clk_adj_offsets.dev_clk_incval_h);
-	ptp->dev_clk_regs.incval_h = idpf_get_reg_addr(adapter, temp_offset);
+	ptp->dev_clk_regs.incval_h = libie_pci_get_mmio_addr(mmio, temp_offset);
 	temp_offset = le32_to_cpu(clk_adj_offsets.dev_clk_shadj_l);
-	ptp->dev_clk_regs.shadj_l = idpf_get_reg_addr(adapter, temp_offset);
+	ptp->dev_clk_regs.shadj_l = libie_pci_get_mmio_addr(mmio, temp_offset);
 	temp_offset = le32_to_cpu(clk_adj_offsets.dev_clk_shadj_h);
-	ptp->dev_clk_regs.shadj_h = idpf_get_reg_addr(adapter, temp_offset);
+	ptp->dev_clk_regs.shadj_h = libie_pci_get_mmio_addr(mmio, temp_offset);
 
 	/* PHY clock offsets */
 	temp_offset = le32_to_cpu(clk_adj_offsets.phy_clk_cmd_type);
-	ptp->dev_clk_regs.phy_cmd = idpf_get_reg_addr(adapter, temp_offset);
+	ptp->dev_clk_regs.phy_cmd =
+		libie_pci_get_mmio_addr(mmio, temp_offset);
 	temp_offset = le32_to_cpu(clk_adj_offsets.phy_clk_incval_l);
-	ptp->dev_clk_regs.phy_incval_l = idpf_get_reg_addr(adapter,
-							   temp_offset);
+	ptp->dev_clk_regs.phy_incval_l =
+		libie_pci_get_mmio_addr(mmio, temp_offset);
 	temp_offset = le32_to_cpu(clk_adj_offsets.phy_clk_incval_h);
-	ptp->dev_clk_regs.phy_incval_h = idpf_get_reg_addr(adapter,
-							   temp_offset);
+	ptp->dev_clk_regs.phy_incval_h =
+		libie_pci_get_mmio_addr(mmio, temp_offset);
 	temp_offset = le32_to_cpu(clk_adj_offsets.phy_clk_shadj_l);
-	ptp->dev_clk_regs.phy_shadj_l = idpf_get_reg_addr(adapter, temp_offset);
+	ptp->dev_clk_regs.phy_shadj_l =
+		libie_pci_get_mmio_addr(mmio, temp_offset);
 	temp_offset = le32_to_cpu(clk_adj_offsets.phy_clk_shadj_h);
-	ptp->dev_clk_regs.phy_shadj_h = idpf_get_reg_addr(adapter, temp_offset);
+	ptp->dev_clk_regs.phy_shadj_h =
+		libie_pci_get_mmio_addr(mmio, temp_offset);
 
 	return 0;
 }
-- 
2.47.0

