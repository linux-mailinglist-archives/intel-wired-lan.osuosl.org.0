Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C33A80F38
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 17:06:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0CB3B6071C;
	Tue,  8 Apr 2025 15:06:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZKiJgB31Z-DR; Tue,  8 Apr 2025 15:06:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A0CB608F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744124764;
	bh=iBZArrXvA5Gj47XcQaiuo2pxklYpNVtuFMBVilNBljo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YqEhLqGEMmWBIt/IakYJaPEPGdhbZbv/w3DBE+zSsvPGIxeywkfLUM1MWGZCF8mze
	 VaJevQCll3TSO6gl01rtM3y7DBzDI4fZ5ot9vCcMtx/fiVfbrpeAQfz9AES6hv0wEC
	 cixvGaFlJPTJQBe77vaqwjytTExQ+RZCbHa0tXJpMOMQVNh3C1bP9RzLPhC75b0W9s
	 odAN57zK8NhjH3jruneOeypVOzIkH+TJ+T2B5cOwHxK8dzEUV3gB4T5NVWUiR4j2b+
	 2w1MNlACfbkpfyAizvHSxSRijQz3a+zgmm8fZQFvkFNLl3hk4FPE9QFdoy5Z4d2ScG
	 hMCyJFgVlxHhQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A0CB608F1;
	Tue,  8 Apr 2025 15:06:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C98EB1F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 12:48:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BC5DF60B71
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 12:48:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kg9jgiQk96Ow for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 12:48:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4023161170
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4023161170
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4023161170
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 12:48:53 +0000 (UTC)
X-CSE-ConnectionGUID: /NxEAZ3fSliMk3Gxu7Js6w==
X-CSE-MsgGUID: Ovn3Q06zSrOH2rckQMDPSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="56184967"
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="56184967"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 05:48:52 -0700
X-CSE-ConnectionGUID: HqfU9PDTTCi3dGs4yBOV3Q==
X-CSE-MsgGUID: pX70YElBSUGBMSjOIpFJWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="133130768"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa003.jf.intel.com with ESMTP; 08 Apr 2025 05:48:39 -0700
Received: from mglak.igk.intel.com (mglak.igk.intel.com [10.237.112.146])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 8CF7134318;
 Tue,  8 Apr 2025 13:48:35 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Mustafa Ismail <mustafa.ismail@intel.com>,
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
 Wenjun Wu <wenjun1.wu@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 Milena Olech <milena.olech@intel.com>, pavan.kumar.linga@intel.com,
 "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>
Date: Tue,  8 Apr 2025 14:47:54 +0200
Message-ID: <20250408124816.11584-9-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250408124816.11584-1-larysa.zaremba@intel.com>
References: <20250408124816.11584-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 08 Apr 2025 15:06:03 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744116533; x=1775652533;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Pr4LVjJ1CbFVitCJg2C5p+MvV1o6ogqVPoZHp57eNj0=;
 b=fZztj5yH+xZikNwwQID5Hjx1PL/P0vYsz3MNl0LSAIgXGzdkBY2lpd5Q
 75t396uufJ7ZgcMHkzk6zEbTOPac33GgCgICG4lYJvxjlqhnv9qxXuXXF
 i7cAoWAvVP8z0P/bFi6JvS7yAhJOLcguH1R3oTqc9JvZR4QorifBqlbHH
 TsScu6dD1gM7S70A+rbCjAhI5SJKJiPonT9EhgJ5rjzoEMBTWuFrzMPqZ
 GBh2aQk70DhzoMbMvll2UjhvlcRU9gQL6ATKrqSTJjWr5RGOPsilTSk1A
 6A6aaGugcjj/xUFYrUbtt490U3sI0bO1ys7rbriYgMlYjBAi1J9kstsSL
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fZztj5yH
Subject: [Intel-wired-lan] [PATCH iwl-next 08/14] idpf: refactor idpf to use
 libeth controlq and Xn APIs
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

Support to initialize and configure controlq, Xn manager,
MMIO and reset APIs was introduced in libeth. As part of it,
most of the existing controlq structures are renamed and
modified. Use those APIs in idpf and make all the necessary changes.

Previously for the send and receive virtchnl messages, there
used to be a memcpy involved in controlq code to copy the buffer
info passed by the send function into the controlq specific
buffers. There was no restriction to use automatic memory
in that case. The new implementation in libeth removed copying
of the send buffer info and introduced DMA mapping of the
send buffer itself. To accommodate it, use dynamic memory for
the send buffers. In case of receive, idpf receives a page pool
buffer allocated by the libeth and care should be taken to
release it after use in the idpf.

The changes are fairly trivial and localized, with a notable exception
being the consolidation of idpf_vc_xn_shutdown and idpf_deinit_dflt_mbx
under the latter name. This has some additional consequences that are
addressed in the following patches.

Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/idpf/Kconfig       |    1 +
 drivers/net/ethernet/intel/idpf/Makefile      |    2 -
 drivers/net/ethernet/intel/idpf/idpf.h        |   41 +-
 .../net/ethernet/intel/idpf/idpf_controlq.c   |  624 ------
 .../net/ethernet/intel/idpf/idpf_controlq.h   |  130 --
 .../ethernet/intel/idpf/idpf_controlq_api.h   |  174 --
 .../ethernet/intel/idpf/idpf_controlq_setup.c |  171 --
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |   95 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   49 +-
 drivers/net/ethernet/intel/idpf/idpf_main.c   |   83 +-
 drivers/net/ethernet/intel/idpf/idpf_mem.h    |   20 -
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |    2 +-
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |   93 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 1689 ++++++-----------
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |    8 +-
 15 files changed, 734 insertions(+), 2448 deletions(-)
 delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.c
 delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.h
 delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
 delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_setup.c
 delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_mem.h

diff --git a/drivers/net/ethernet/intel/idpf/Kconfig b/drivers/net/ethernet/intel/idpf/Kconfig
index 1addd663acad..226ed911c598 100644
--- a/drivers/net/ethernet/intel/idpf/Kconfig
+++ b/drivers/net/ethernet/intel/idpf/Kconfig
@@ -6,6 +6,7 @@ config IDPF
 	depends on PCI_MSI
 	select DIMLIB
 	select LIBETH
+	select LIBETH_CP
 	help
 	  This driver supports Intel(R) Infrastructure Data Path Function
 	  devices.
diff --git a/drivers/net/ethernet/intel/idpf/Makefile b/drivers/net/ethernet/intel/idpf/Makefile
index 2ce01a0b5898..3407cd20b498 100644
--- a/drivers/net/ethernet/intel/idpf/Makefile
+++ b/drivers/net/ethernet/intel/idpf/Makefile
@@ -6,8 +6,6 @@
 obj-$(CONFIG_IDPF) += idpf.o
 
 idpf-y := \
-	idpf_controlq.o		\
-	idpf_controlq_setup.o	\
 	idpf_dev.o		\
 	idpf_ethtool.o		\
 	idpf_lib.o		\
diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 57c9d233f10e..f4197e7a2ef8 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -17,10 +17,10 @@ struct idpf_vport_max_q;
 #include <linux/sctp.h>
 #include <linux/ethtool_netlink.h>
 #include <net/gro.h>
+#include <net/libeth/controlq.h>
 
 #include <linux/intel/virtchnl2.h>
 #include "idpf_txrx.h"
-#include "idpf_controlq.h"
 
 #define GETMAXVAL(num_bits)		GENMASK((num_bits) - 1, 0)
 
@@ -30,11 +30,10 @@ struct idpf_vport_max_q;
 #define IDPF_NUM_FILTERS_PER_MSG	20
 #define IDPF_NUM_DFLT_MBX_Q		2	/* includes both TX and RX */
 #define IDPF_DFLT_MBX_Q_LEN		64
-#define IDPF_DFLT_MBX_ID		-1
 /* maximum number of times to try before resetting mailbox */
 #define IDPF_MB_MAX_ERR			20
 #define IDPF_NUM_CHUNKS_PER_MSG(struct_sz, chunk_sz)	\
-	((IDPF_CTLQ_MAX_BUF_LEN - (struct_sz)) / (chunk_sz))
+	((LIBETH_CTLQ_MAX_BUF_LEN - (struct_sz)) / (chunk_sz))
 
 #define IDPF_MAX_WAIT			500
 
@@ -191,7 +190,8 @@ struct idpf_vport_max_q {
  * @trigger_reset: Trigger a reset to occur
  */
 struct idpf_reg_ops {
-	void (*ctlq_reg_init)(struct idpf_ctlq_create_info *cq);
+	void (*ctlq_reg_init)(struct libeth_mmio_info *mmio,
+			      struct libeth_ctlq_create_info *cctlq_info);
 	int (*intr_reg_init)(struct idpf_vport *vport);
 	void (*mb_intr_reg_init)(struct idpf_adapter *adapter);
 	void (*reset_reg_init)(struct idpf_adapter *adapter);
@@ -476,8 +476,6 @@ struct idpf_vport_config {
 	DECLARE_BITMAP(flags, IDPF_VPORT_CONFIG_FLAGS_NBITS);
 };
 
-struct idpf_vc_xn_manager;
-
 /**
  * struct idpf_adapter - Device data struct generated on probe
  * @pdev: PCI device struct given on probe
@@ -488,7 +486,10 @@ struct idpf_vc_xn_manager;
  * @state: Init state machine
  * @flags: See enum idpf_flags
  * @reset_reg: See struct idpf_reset_reg
- * @hw: Device access data
+ * @ctlq_ctx: controlq context
+ * @asq: Send control queue info
+ * @arq: Receive control queue info
+ * @xn_init_params: Xn transaction manager parameters
  * @num_req_msix: Requested number of MSIX vectors
  * @num_avail_msix: Available number of MSIX vectors
  * @num_msix_entries: Number of entries in MSIX table
@@ -540,7 +541,10 @@ struct idpf_adapter {
 	enum idpf_state state;
 	DECLARE_BITMAP(flags, IDPF_FLAGS_NBITS);
 	struct idpf_reset_reg reset_reg;
-	struct idpf_hw hw;
+	struct libeth_ctlq_ctx ctlq_ctx;
+	struct libeth_ctlq_info *asq;
+	struct libeth_ctlq_info *arq;
+	struct libeth_ctlq_xn_init_params xn_init_params;
 	u16 num_req_msix;
 	u16 num_avail_msix;
 	u16 num_msix_entries;
@@ -573,7 +577,6 @@ struct idpf_adapter {
 	struct delayed_work stats_task;
 	struct workqueue_struct *stats_wq;
 	struct virtchnl2_get_capabilities caps;
-	struct idpf_vc_xn_manager *vcxn_mngr;
 
 	struct idpf_dev_ops dev_ops;
 	int num_vfs;
@@ -705,19 +708,6 @@ static inline u8 idpf_get_min_tx_pkt_len(struct idpf_adapter *adapter)
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
@@ -726,11 +716,12 @@ static inline void __iomem *idpf_get_reg_addr(struct idpf_adapter *adapter,
  */
 static inline bool idpf_is_reset_detected(struct idpf_adapter *adapter)
 {
-	if (!adapter->hw.arq)
+	struct libeth_ctlq_info *arq = adapter->arq;
+
+	if (!arq)
 		return true;
 
-	return !(readl(idpf_get_reg_addr(adapter, adapter->hw.arq->reg.len)) &
-		 adapter->hw.arq->reg.len_mask);
+	return !(readl(arq->reg.len) & arq->reg.len_mask);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_controlq.c b/drivers/net/ethernet/intel/idpf/idpf_controlq.c
deleted file mode 100644
index b28991dd1870..000000000000
--- a/drivers/net/ethernet/intel/idpf/idpf_controlq.c
+++ /dev/null
@@ -1,624 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/* Copyright (C) 2023 Intel Corporation */
-
-#include "idpf_controlq.h"
-
-/**
- * idpf_ctlq_setup_regs - initialize control queue registers
- * @cq: pointer to the specific control queue
- * @q_create_info: structs containing info for each queue to be initialized
- */
-static void idpf_ctlq_setup_regs(struct idpf_ctlq_info *cq,
-				 struct idpf_ctlq_create_info *q_create_info)
-{
-	/* set control queue registers in our local struct */
-	cq->reg.head = q_create_info->reg.head;
-	cq->reg.tail = q_create_info->reg.tail;
-	cq->reg.len = q_create_info->reg.len;
-	cq->reg.bah = q_create_info->reg.bah;
-	cq->reg.bal = q_create_info->reg.bal;
-	cq->reg.len_mask = q_create_info->reg.len_mask;
-	cq->reg.len_ena_mask = q_create_info->reg.len_ena_mask;
-	cq->reg.head_mask = q_create_info->reg.head_mask;
-}
-
-/**
- * idpf_ctlq_init_regs - Initialize control queue registers
- * @hw: pointer to hw struct
- * @cq: pointer to the specific Control queue
- * @is_rxq: true if receive control queue, false otherwise
- *
- * Initialize registers. The caller is expected to have already initialized the
- * descriptor ring memory and buffer memory
- */
-static void idpf_ctlq_init_regs(struct idpf_hw *hw, struct idpf_ctlq_info *cq,
-				bool is_rxq)
-{
-	/* Update tail to post pre-allocated buffers for rx queues */
-	if (is_rxq)
-		wr32(hw, cq->reg.tail, (u32)(cq->ring_size - 1));
-
-	/* For non-Mailbox control queues only TAIL need to be set */
-	if (cq->q_id != -1)
-		return;
-
-	/* Clear Head for both send or receive */
-	wr32(hw, cq->reg.head, 0);
-
-	/* set starting point */
-	wr32(hw, cq->reg.bal, lower_32_bits(cq->desc_ring.pa));
-	wr32(hw, cq->reg.bah, upper_32_bits(cq->desc_ring.pa));
-	wr32(hw, cq->reg.len, (cq->ring_size | cq->reg.len_ena_mask));
-}
-
-/**
- * idpf_ctlq_init_rxq_bufs - populate receive queue descriptors with buf
- * @cq: pointer to the specific Control queue
- *
- * Record the address of the receive queue DMA buffers in the descriptors.
- * The buffers must have been previously allocated.
- */
-static void idpf_ctlq_init_rxq_bufs(struct idpf_ctlq_info *cq)
-{
-	int i;
-
-	for (i = 0; i < cq->ring_size; i++) {
-		struct idpf_ctlq_desc *desc = IDPF_CTLQ_DESC(cq, i);
-		struct idpf_dma_mem *bi = cq->bi.rx_buff[i];
-
-		/* No buffer to post to descriptor, continue */
-		if (!bi)
-			continue;
-
-		desc->flags =
-			cpu_to_le16(IDPF_CTLQ_FLAG_BUF | IDPF_CTLQ_FLAG_RD);
-		desc->opcode = 0;
-		desc->datalen = cpu_to_le16(bi->size);
-		desc->ret_val = 0;
-		desc->v_opcode_dtype = 0;
-		desc->v_retval = 0;
-		desc->params.indirect.addr_high =
-			cpu_to_le32(upper_32_bits(bi->pa));
-		desc->params.indirect.addr_low =
-			cpu_to_le32(lower_32_bits(bi->pa));
-		desc->params.indirect.param0 = 0;
-		desc->params.indirect.sw_cookie = 0;
-		desc->params.indirect.v_flags = 0;
-	}
-}
-
-/**
- * idpf_ctlq_shutdown - shutdown the CQ
- * @hw: pointer to hw struct
- * @cq: pointer to the specific Control queue
- *
- * The main shutdown routine for any controq queue
- */
-static void idpf_ctlq_shutdown(struct idpf_hw *hw, struct idpf_ctlq_info *cq)
-{
-	mutex_lock(&cq->cq_lock);
-
-	/* free ring buffers and the ring itself */
-	idpf_ctlq_dealloc_ring_res(hw, cq);
-
-	/* Set ring_size to 0 to indicate uninitialized queue */
-	cq->ring_size = 0;
-
-	mutex_unlock(&cq->cq_lock);
-	mutex_destroy(&cq->cq_lock);
-}
-
-/**
- * idpf_ctlq_add - add one control queue
- * @hw: pointer to hardware struct
- * @qinfo: info for queue to be created
- * @cq_out: (output) double pointer to control queue to be created
- *
- * Allocate and initialize a control queue and add it to the control queue list.
- * The cq parameter will be allocated/initialized and passed back to the caller
- * if no errors occur.
- *
- * Note: idpf_ctlq_init must be called prior to any calls to idpf_ctlq_add
- */
-int idpf_ctlq_add(struct idpf_hw *hw,
-		  struct idpf_ctlq_create_info *qinfo,
-		  struct idpf_ctlq_info **cq_out)
-{
-	struct idpf_ctlq_info *cq;
-	bool is_rxq = false;
-	int err;
-
-	cq = kzalloc(sizeof(*cq), GFP_KERNEL);
-	if (!cq)
-		return -ENOMEM;
-
-	cq->cq_type = qinfo->type;
-	cq->q_id = qinfo->id;
-	cq->buf_size = qinfo->buf_size;
-	cq->ring_size = qinfo->len;
-
-	cq->next_to_use = 0;
-	cq->next_to_clean = 0;
-	cq->next_to_post = cq->ring_size - 1;
-
-	switch (qinfo->type) {
-	case IDPF_CTLQ_TYPE_MAILBOX_RX:
-		is_rxq = true;
-		fallthrough;
-	case IDPF_CTLQ_TYPE_MAILBOX_TX:
-		err = idpf_ctlq_alloc_ring_res(hw, cq);
-		break;
-	default:
-		err = -EBADR;
-		break;
-	}
-
-	if (err)
-		goto init_free_q;
-
-	if (is_rxq) {
-		idpf_ctlq_init_rxq_bufs(cq);
-	} else {
-		/* Allocate the array of msg pointers for TX queues */
-		cq->bi.tx_msg = kcalloc(qinfo->len,
-					sizeof(struct idpf_ctlq_msg *),
-					GFP_KERNEL);
-		if (!cq->bi.tx_msg) {
-			err = -ENOMEM;
-			goto init_dealloc_q_mem;
-		}
-	}
-
-	idpf_ctlq_setup_regs(cq, qinfo);
-
-	idpf_ctlq_init_regs(hw, cq, is_rxq);
-
-	mutex_init(&cq->cq_lock);
-
-	list_add(&cq->cq_list, &hw->cq_list_head);
-
-	*cq_out = cq;
-
-	return 0;
-
-init_dealloc_q_mem:
-	/* free ring buffers and the ring itself */
-	idpf_ctlq_dealloc_ring_res(hw, cq);
-init_free_q:
-	kfree(cq);
-
-	return err;
-}
-
-/**
- * idpf_ctlq_remove - deallocate and remove specified control queue
- * @hw: pointer to hardware struct
- * @cq: pointer to control queue to be removed
- */
-void idpf_ctlq_remove(struct idpf_hw *hw,
-		      struct idpf_ctlq_info *cq)
-{
-	list_del(&cq->cq_list);
-	idpf_ctlq_shutdown(hw, cq);
-	kfree(cq);
-}
-
-/**
- * idpf_ctlq_init - main initialization routine for all control queues
- * @hw: pointer to hardware struct
- * @num_q: number of queues to initialize
- * @q_info: array of structs containing info for each queue to be initialized
- *
- * This initializes any number and any type of control queues. This is an all
- * or nothing routine; if one fails, all previously allocated queues will be
- * destroyed. This must be called prior to using the individual add/remove
- * APIs.
- */
-int idpf_ctlq_init(struct idpf_hw *hw, u8 num_q,
-		   struct idpf_ctlq_create_info *q_info)
-{
-	struct idpf_ctlq_info *cq, *tmp;
-	int err;
-	int i;
-
-	INIT_LIST_HEAD(&hw->cq_list_head);
-
-	for (i = 0; i < num_q; i++) {
-		struct idpf_ctlq_create_info *qinfo = q_info + i;
-
-		err = idpf_ctlq_add(hw, qinfo, &cq);
-		if (err)
-			goto init_destroy_qs;
-	}
-
-	return 0;
-
-init_destroy_qs:
-	list_for_each_entry_safe(cq, tmp, &hw->cq_list_head, cq_list)
-		idpf_ctlq_remove(hw, cq);
-
-	return err;
-}
-
-/**
- * idpf_ctlq_deinit - destroy all control queues
- * @hw: pointer to hw struct
- */
-void idpf_ctlq_deinit(struct idpf_hw *hw)
-{
-	struct idpf_ctlq_info *cq, *tmp;
-
-	list_for_each_entry_safe(cq, tmp, &hw->cq_list_head, cq_list)
-		idpf_ctlq_remove(hw, cq);
-}
-
-/**
- * idpf_ctlq_send - send command to Control Queue (CTQ)
- * @hw: pointer to hw struct
- * @cq: handle to control queue struct to send on
- * @num_q_msg: number of messages to send on control queue
- * @q_msg: pointer to array of queue messages to be sent
- *
- * The caller is expected to allocate DMAable buffers and pass them to the
- * send routine via the q_msg struct / control queue specific data struct.
- * The control queue will hold a reference to each send message until
- * the completion for that message has been cleaned.
- */
-int idpf_ctlq_send(struct idpf_hw *hw, struct idpf_ctlq_info *cq,
-		   u16 num_q_msg, struct idpf_ctlq_msg q_msg[])
-{
-	struct idpf_ctlq_desc *desc;
-	int num_desc_avail;
-	int err = 0;
-	int i;
-
-	mutex_lock(&cq->cq_lock);
-
-	/* Ensure there are enough descriptors to send all messages */
-	num_desc_avail = IDPF_CTLQ_DESC_UNUSED(cq);
-	if (num_desc_avail == 0 || num_desc_avail < num_q_msg) {
-		err = -ENOSPC;
-		goto err_unlock;
-	}
-
-	for (i = 0; i < num_q_msg; i++) {
-		struct idpf_ctlq_msg *msg = &q_msg[i];
-
-		desc = IDPF_CTLQ_DESC(cq, cq->next_to_use);
-
-		desc->opcode = cpu_to_le16(msg->opcode);
-		desc->pfid_vfid = cpu_to_le16(msg->func_id);
-
-		desc->v_opcode_dtype = cpu_to_le32(msg->cookie.mbx.chnl_opcode);
-		desc->v_retval = cpu_to_le32(msg->cookie.mbx.chnl_retval);
-
-		desc->flags = cpu_to_le16((msg->host_id & IDPF_HOST_ID_MASK) <<
-					  IDPF_CTLQ_FLAG_HOST_ID_S);
-		if (msg->data_len) {
-			struct idpf_dma_mem *buff = msg->ctx.indirect.payload;
-
-			desc->datalen |= cpu_to_le16(msg->data_len);
-			desc->flags |= cpu_to_le16(IDPF_CTLQ_FLAG_BUF);
-			desc->flags |= cpu_to_le16(IDPF_CTLQ_FLAG_RD);
-
-			/* Update the address values in the desc with the pa
-			 * value for respective buffer
-			 */
-			desc->params.indirect.addr_high =
-				cpu_to_le32(upper_32_bits(buff->pa));
-			desc->params.indirect.addr_low =
-				cpu_to_le32(lower_32_bits(buff->pa));
-
-			memcpy(&desc->params, msg->ctx.indirect.context,
-			       IDPF_INDIRECT_CTX_SIZE);
-		} else {
-			memcpy(&desc->params, msg->ctx.direct,
-			       IDPF_DIRECT_CTX_SIZE);
-		}
-
-		/* Store buffer info */
-		cq->bi.tx_msg[cq->next_to_use] = msg;
-
-		(cq->next_to_use)++;
-		if (cq->next_to_use == cq->ring_size)
-			cq->next_to_use = 0;
-	}
-
-	/* Force memory write to complete before letting hardware
-	 * know that there are new descriptors to fetch.
-	 */
-	dma_wmb();
-
-	wr32(hw, cq->reg.tail, cq->next_to_use);
-
-err_unlock:
-	mutex_unlock(&cq->cq_lock);
-
-	return err;
-}
-
-/**
- * idpf_ctlq_clean_sq - reclaim send descriptors on HW write back for the
- * requested queue
- * @cq: pointer to the specific Control queue
- * @clean_count: (input|output) number of descriptors to clean as input, and
- * number of descriptors actually cleaned as output
- * @msg_status: (output) pointer to msg pointer array to be populated; needs
- * to be allocated by caller
- *
- * Returns an array of message pointers associated with the cleaned
- * descriptors. The pointers are to the original ctlq_msgs sent on the cleaned
- * descriptors.  The status will be returned for each; any messages that failed
- * to send will have a non-zero status. The caller is expected to free original
- * ctlq_msgs and free or reuse the DMA buffers.
- */
-int idpf_ctlq_clean_sq(struct idpf_ctlq_info *cq, u16 *clean_count,
-		       struct idpf_ctlq_msg *msg_status[])
-{
-	struct idpf_ctlq_desc *desc;
-	u16 i, num_to_clean;
-	u16 ntc, desc_err;
-
-	if (*clean_count == 0)
-		return 0;
-	if (*clean_count > cq->ring_size)
-		return -EBADR;
-
-	mutex_lock(&cq->cq_lock);
-
-	ntc = cq->next_to_clean;
-
-	num_to_clean = *clean_count;
-
-	for (i = 0; i < num_to_clean; i++) {
-		/* Fetch next descriptor and check if marked as done */
-		desc = IDPF_CTLQ_DESC(cq, ntc);
-		if (!(le16_to_cpu(desc->flags) & IDPF_CTLQ_FLAG_DD))
-			break;
-
-		/* Ensure no other fields are read until DD flag is checked */
-		dma_rmb();
-
-		/* strip off FW internal code */
-		desc_err = le16_to_cpu(desc->ret_val) & 0xff;
-
-		msg_status[i] = cq->bi.tx_msg[ntc];
-		msg_status[i]->status = desc_err;
-
-		cq->bi.tx_msg[ntc] = NULL;
-
-		/* Zero out any stale data */
-		memset(desc, 0, sizeof(*desc));
-
-		ntc++;
-		if (ntc == cq->ring_size)
-			ntc = 0;
-	}
-
-	cq->next_to_clean = ntc;
-
-	mutex_unlock(&cq->cq_lock);
-
-	/* Return number of descriptors actually cleaned */
-	*clean_count = i;
-
-	return 0;
-}
-
-/**
- * idpf_ctlq_post_rx_buffs - post buffers to descriptor ring
- * @hw: pointer to hw struct
- * @cq: pointer to control queue handle
- * @buff_count: (input|output) input is number of buffers caller is trying to
- * return; output is number of buffers that were not posted
- * @buffs: array of pointers to dma mem structs to be given to hardware
- *
- * Caller uses this function to return DMA buffers to the descriptor ring after
- * consuming them; buff_count will be the number of buffers.
- *
- * Note: this function needs to be called after a receive call even
- * if there are no DMA buffers to be returned, i.e. buff_count = 0,
- * buffs = NULL to support direct commands
- */
-int idpf_ctlq_post_rx_buffs(struct idpf_hw *hw, struct idpf_ctlq_info *cq,
-			    u16 *buff_count, struct idpf_dma_mem **buffs)
-{
-	struct idpf_ctlq_desc *desc;
-	u16 ntp = cq->next_to_post;
-	bool buffs_avail = false;
-	u16 tbp = ntp + 1;
-	int i = 0;
-
-	if (*buff_count > cq->ring_size)
-		return -EBADR;
-
-	if (*buff_count > 0)
-		buffs_avail = true;
-
-	mutex_lock(&cq->cq_lock);
-
-	if (tbp >= cq->ring_size)
-		tbp = 0;
-
-	if (tbp == cq->next_to_clean)
-		/* Nothing to do */
-		goto post_buffs_out;
-
-	/* Post buffers for as many as provided or up until the last one used */
-	while (ntp != cq->next_to_clean) {
-		desc = IDPF_CTLQ_DESC(cq, ntp);
-
-		if (cq->bi.rx_buff[ntp])
-			goto fill_desc;
-		if (!buffs_avail) {
-			/* If the caller hasn't given us any buffers or
-			 * there are none left, search the ring itself
-			 * for an available buffer to move to this
-			 * entry starting at the next entry in the ring
-			 */
-			tbp = ntp + 1;
-
-			/* Wrap ring if necessary */
-			if (tbp >= cq->ring_size)
-				tbp = 0;
-
-			while (tbp != cq->next_to_clean) {
-				if (cq->bi.rx_buff[tbp]) {
-					cq->bi.rx_buff[ntp] =
-						cq->bi.rx_buff[tbp];
-					cq->bi.rx_buff[tbp] = NULL;
-
-					/* Found a buffer, no need to
-					 * search anymore
-					 */
-					break;
-				}
-
-				/* Wrap ring if necessary */
-				tbp++;
-				if (tbp >= cq->ring_size)
-					tbp = 0;
-			}
-
-			if (tbp == cq->next_to_clean)
-				goto post_buffs_out;
-		} else {
-			/* Give back pointer to DMA buffer */
-			cq->bi.rx_buff[ntp] = buffs[i];
-			i++;
-
-			if (i >= *buff_count)
-				buffs_avail = false;
-		}
-
-fill_desc:
-		desc->flags =
-			cpu_to_le16(IDPF_CTLQ_FLAG_BUF | IDPF_CTLQ_FLAG_RD);
-
-		/* Post buffers to descriptor */
-		desc->datalen = cpu_to_le16(cq->bi.rx_buff[ntp]->size);
-		desc->params.indirect.addr_high =
-			cpu_to_le32(upper_32_bits(cq->bi.rx_buff[ntp]->pa));
-		desc->params.indirect.addr_low =
-			cpu_to_le32(lower_32_bits(cq->bi.rx_buff[ntp]->pa));
-
-		ntp++;
-		if (ntp == cq->ring_size)
-			ntp = 0;
-	}
-
-post_buffs_out:
-	/* Only update tail if buffers were actually posted */
-	if (cq->next_to_post != ntp) {
-		if (ntp)
-			/* Update next_to_post to ntp - 1 since current ntp
-			 * will not have a buffer
-			 */
-			cq->next_to_post = ntp - 1;
-		else
-			/* Wrap to end of end ring since current ntp is 0 */
-			cq->next_to_post = cq->ring_size - 1;
-
-		dma_wmb();
-
-		wr32(hw, cq->reg.tail, cq->next_to_post);
-	}
-
-	mutex_unlock(&cq->cq_lock);
-
-	/* return the number of buffers that were not posted */
-	*buff_count = *buff_count - i;
-
-	return 0;
-}
-
-/**
- * idpf_ctlq_recv - receive control queue message call back
- * @cq: pointer to control queue handle to receive on
- * @num_q_msg: (input|output) input number of messages that should be received;
- * output number of messages actually received
- * @q_msg: (output) array of received control queue messages on this q;
- * needs to be pre-allocated by caller for as many messages as requested
- *
- * Called by interrupt handler or polling mechanism. Caller is expected
- * to free buffers
- */
-int idpf_ctlq_recv(struct idpf_ctlq_info *cq, u16 *num_q_msg,
-		   struct idpf_ctlq_msg *q_msg)
-{
-	u16 num_to_clean, ntc, flags;
-	struct idpf_ctlq_desc *desc;
-	int err = 0;
-	u16 i;
-
-	/* take the lock before we start messing with the ring */
-	mutex_lock(&cq->cq_lock);
-
-	ntc = cq->next_to_clean;
-
-	num_to_clean = *num_q_msg;
-
-	for (i = 0; i < num_to_clean; i++) {
-		/* Fetch next descriptor and check if marked as done */
-		desc = IDPF_CTLQ_DESC(cq, ntc);
-		flags = le16_to_cpu(desc->flags);
-
-		if (!(flags & IDPF_CTLQ_FLAG_DD))
-			break;
-
-		/* Ensure no other fields are read until DD flag is checked */
-		dma_rmb();
-
-		q_msg[i].vmvf_type = (flags &
-				      (IDPF_CTLQ_FLAG_FTYPE_VM |
-				       IDPF_CTLQ_FLAG_FTYPE_PF)) >>
-				       IDPF_CTLQ_FLAG_FTYPE_S;
-
-		if (flags & IDPF_CTLQ_FLAG_ERR)
-			err  = -EBADMSG;
-
-		q_msg[i].cookie.mbx.chnl_opcode =
-				le32_to_cpu(desc->v_opcode_dtype);
-		q_msg[i].cookie.mbx.chnl_retval =
-				le32_to_cpu(desc->v_retval);
-
-		q_msg[i].opcode = le16_to_cpu(desc->opcode);
-		q_msg[i].data_len = le16_to_cpu(desc->datalen);
-		q_msg[i].status = le16_to_cpu(desc->ret_val);
-
-		if (desc->datalen) {
-			memcpy(q_msg[i].ctx.indirect.context,
-			       &desc->params.indirect, IDPF_INDIRECT_CTX_SIZE);
-
-			/* Assign pointer to dma buffer to ctlq_msg array
-			 * to be given to upper layer
-			 */
-			q_msg[i].ctx.indirect.payload = cq->bi.rx_buff[ntc];
-
-			/* Zero out pointer to DMA buffer info;
-			 * will be repopulated by post buffers API
-			 */
-			cq->bi.rx_buff[ntc] = NULL;
-		} else {
-			memcpy(q_msg[i].ctx.direct, desc->params.raw,
-			       IDPF_DIRECT_CTX_SIZE);
-		}
-
-		/* Zero out stale data in descriptor */
-		memset(desc, 0, sizeof(struct idpf_ctlq_desc));
-
-		ntc++;
-		if (ntc == cq->ring_size)
-			ntc = 0;
-	}
-
-	cq->next_to_clean = ntc;
-
-	mutex_unlock(&cq->cq_lock);
-
-	*num_q_msg = i;
-	if (*num_q_msg == 0)
-		err = -ENOMSG;
-
-	return err;
-}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_controlq.h b/drivers/net/ethernet/intel/idpf/idpf_controlq.h
deleted file mode 100644
index c1aba09e9856..000000000000
--- a/drivers/net/ethernet/intel/idpf/idpf_controlq.h
+++ /dev/null
@@ -1,130 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/* Copyright (C) 2023 Intel Corporation */
-
-#ifndef _IDPF_CONTROLQ_H_
-#define _IDPF_CONTROLQ_H_
-
-#include <linux/slab.h>
-
-#include "idpf_controlq_api.h"
-
-/* Maximum buffer length for all control queue types */
-#define IDPF_CTLQ_MAX_BUF_LEN	4096
-
-#define IDPF_CTLQ_DESC(R, i) \
-	(&(((struct idpf_ctlq_desc *)((R)->desc_ring.va))[i]))
-
-#define IDPF_CTLQ_DESC_UNUSED(R) \
-	((u16)((((R)->next_to_clean > (R)->next_to_use) ? 0 : (R)->ring_size) + \
-	       (R)->next_to_clean - (R)->next_to_use - 1))
-
-/* Control Queue default settings */
-#define IDPF_CTRL_SQ_CMD_TIMEOUT	250  /* msecs */
-
-struct idpf_ctlq_desc {
-	/* Control queue descriptor flags */
-	__le16 flags;
-	/* Control queue message opcode */
-	__le16 opcode;
-	__le16 datalen;		/* 0 for direct commands */
-	union {
-		__le16 ret_val;
-		__le16 pfid_vfid;
-#define IDPF_CTLQ_DESC_VF_ID_S	0
-#define IDPF_CTLQ_DESC_VF_ID_M	(0x7FF << IDPF_CTLQ_DESC_VF_ID_S)
-#define IDPF_CTLQ_DESC_PF_ID_S	11
-#define IDPF_CTLQ_DESC_PF_ID_M	(0x1F << IDPF_CTLQ_DESC_PF_ID_S)
-	};
-
-	/* Virtchnl message opcode and virtchnl descriptor type
-	 * v_opcode=[27:0], v_dtype=[31:28]
-	 */
-	__le32 v_opcode_dtype;
-	/* Virtchnl return value */
-	__le32 v_retval;
-	union {
-		struct {
-			__le32 param0;
-			__le32 param1;
-			__le32 param2;
-			__le32 param3;
-		} direct;
-		struct {
-			__le32 param0;
-			__le16 sw_cookie;
-			/* Virtchnl flags */
-			__le16 v_flags;
-			__le32 addr_high;
-			__le32 addr_low;
-		} indirect;
-		u8 raw[16];
-	} params;
-};
-
-/* Flags sub-structure
- * |0  |1  |2  |3  |4  |5  |6  |7  |8  |9  |10 |11 |12 |13 |14 |15 |
- * |DD |CMP|ERR|  * RSV *  |FTYPE  | *RSV* |RD |VFC|BUF|  HOST_ID  |
- */
-/* command flags and offsets */
-#define IDPF_CTLQ_FLAG_DD_S		0
-#define IDPF_CTLQ_FLAG_CMP_S		1
-#define IDPF_CTLQ_FLAG_ERR_S		2
-#define IDPF_CTLQ_FLAG_FTYPE_S		6
-#define IDPF_CTLQ_FLAG_RD_S		10
-#define IDPF_CTLQ_FLAG_VFC_S		11
-#define IDPF_CTLQ_FLAG_BUF_S		12
-#define IDPF_CTLQ_FLAG_HOST_ID_S	13
-
-#define IDPF_CTLQ_FLAG_DD	BIT(IDPF_CTLQ_FLAG_DD_S)	/* 0x1	  */
-#define IDPF_CTLQ_FLAG_CMP	BIT(IDPF_CTLQ_FLAG_CMP_S)	/* 0x2	  */
-#define IDPF_CTLQ_FLAG_ERR	BIT(IDPF_CTLQ_FLAG_ERR_S)	/* 0x4	  */
-#define IDPF_CTLQ_FLAG_FTYPE_VM	BIT(IDPF_CTLQ_FLAG_FTYPE_S)	/* 0x40	  */
-#define IDPF_CTLQ_FLAG_FTYPE_PF	BIT(IDPF_CTLQ_FLAG_FTYPE_S + 1)	/* 0x80   */
-#define IDPF_CTLQ_FLAG_RD	BIT(IDPF_CTLQ_FLAG_RD_S)	/* 0x400  */
-#define IDPF_CTLQ_FLAG_VFC	BIT(IDPF_CTLQ_FLAG_VFC_S)	/* 0x800  */
-#define IDPF_CTLQ_FLAG_BUF	BIT(IDPF_CTLQ_FLAG_BUF_S)	/* 0x1000 */
-
-/* Host ID is a special field that has 3b and not a 1b flag */
-#define IDPF_CTLQ_FLAG_HOST_ID_M MAKE_MASK(0x7000UL, IDPF_CTLQ_FLAG_HOST_ID_S)
-
-struct idpf_mbxq_desc {
-	u8 pad[8];		/* CTLQ flags/opcode/len/retval fields */
-	u32 chnl_opcode;	/* avoid confusion with desc->opcode */
-	u32 chnl_retval;	/* ditto for desc->retval */
-	u32 pf_vf_id;		/* used by CP when sending to PF */
-};
-
-/* Define the driver hardware struct to replace other control structs as needed
- * Align to ctlq_hw_info
- */
-struct idpf_hw {
-	void __iomem *hw_addr;
-	resource_size_t hw_addr_len;
-
-	struct idpf_adapter *back;
-
-	/* control queue - send and receive */
-	struct idpf_ctlq_info *asq;
-	struct idpf_ctlq_info *arq;
-
-	/* pci info */
-	u16 device_id;
-	u16 vendor_id;
-	u16 subsystem_device_id;
-	u16 subsystem_vendor_id;
-	u8 revision_id;
-	bool adapter_stopped;
-
-	struct list_head cq_list_head;
-};
-
-int idpf_ctlq_alloc_ring_res(struct idpf_hw *hw,
-			     struct idpf_ctlq_info *cq);
-
-void idpf_ctlq_dealloc_ring_res(struct idpf_hw *hw, struct idpf_ctlq_info *cq);
-
-/* prototype for functions used for dynamic memory allocation */
-void *idpf_alloc_dma_mem(struct idpf_hw *hw, struct idpf_dma_mem *mem,
-			 u64 size);
-void idpf_free_dma_mem(struct idpf_hw *hw, struct idpf_dma_mem *mem);
-#endif /* _IDPF_CONTROLQ_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_controlq_api.h b/drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
deleted file mode 100644
index e8e046ef2f0d..000000000000
--- a/drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
+++ /dev/null
@@ -1,174 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/* Copyright (C) 2023 Intel Corporation */
-
-#ifndef _IDPF_CONTROLQ_API_H_
-#define _IDPF_CONTROLQ_API_H_
-
-#include "idpf_mem.h"
-
-struct idpf_hw;
-
-/* Used for queue init, response and events */
-enum idpf_ctlq_type {
-	IDPF_CTLQ_TYPE_MAILBOX_TX	= 0,
-	IDPF_CTLQ_TYPE_MAILBOX_RX	= 1,
-	IDPF_CTLQ_TYPE_CONFIG_TX	= 2,
-	IDPF_CTLQ_TYPE_CONFIG_RX	= 3,
-	IDPF_CTLQ_TYPE_EVENT_RX		= 4,
-	IDPF_CTLQ_TYPE_RDMA_TX		= 5,
-	IDPF_CTLQ_TYPE_RDMA_RX		= 6,
-	IDPF_CTLQ_TYPE_RDMA_COMPL	= 7
-};
-
-/* Generic Control Queue Structures */
-struct idpf_ctlq_reg {
-	/* used for queue tracking */
-	u32 head;
-	u32 tail;
-	/* Below applies only to default mb (if present) */
-	u32 len;
-	u32 bah;
-	u32 bal;
-	u32 len_mask;
-	u32 len_ena_mask;
-	u32 head_mask;
-};
-
-/* Generic queue msg structure */
-struct idpf_ctlq_msg {
-	u8 vmvf_type; /* represents the source of the message on recv */
-#define IDPF_VMVF_TYPE_VF 0
-#define IDPF_VMVF_TYPE_VM 1
-#define IDPF_VMVF_TYPE_PF 2
-	u8 host_id;
-	/* 3b field used only when sending a message to CP - to be used in
-	 * combination with target func_id to route the message
-	 */
-#define IDPF_HOST_ID_MASK 0x7
-
-	u16 opcode;
-	u16 data_len;	/* data_len = 0 when no payload is attached */
-	union {
-		u16 func_id;	/* when sending a message */
-		u16 status;	/* when receiving a message */
-	};
-	union {
-		struct {
-			u32 chnl_opcode;
-			u32 chnl_retval;
-		} mbx;
-	} cookie;
-	union {
-#define IDPF_DIRECT_CTX_SIZE	16
-#define IDPF_INDIRECT_CTX_SIZE	8
-		/* 16 bytes of context can be provided or 8 bytes of context
-		 * plus the address of a DMA buffer
-		 */
-		u8 direct[IDPF_DIRECT_CTX_SIZE];
-		struct {
-			u8 context[IDPF_INDIRECT_CTX_SIZE];
-			struct idpf_dma_mem *payload;
-		} indirect;
-		struct {
-			u32 rsvd;
-			u16 data;
-			u16 flags;
-		} sw_cookie;
-	} ctx;
-};
-
-/* Generic queue info structures */
-/* MB, CONFIG and EVENT q do not have extended info */
-struct idpf_ctlq_create_info {
-	enum idpf_ctlq_type type;
-	int id; /* absolute queue offset passed as input
-		 * -1 for default mailbox if present
-		 */
-	u16 len; /* Queue length passed as input */
-	u16 buf_size; /* buffer size passed as input */
-	u64 base_address; /* output, HPA of the Queue start  */
-	struct idpf_ctlq_reg reg; /* registers accessed by ctlqs */
-
-	int ext_info_size;
-	void *ext_info; /* Specific to q type */
-};
-
-/* Control Queue information */
-struct idpf_ctlq_info {
-	struct list_head cq_list;
-
-	enum idpf_ctlq_type cq_type;
-	int q_id;
-	struct mutex cq_lock;		/* control queue lock */
-	/* used for interrupt processing */
-	u16 next_to_use;
-	u16 next_to_clean;
-	u16 next_to_post;		/* starting descriptor to post buffers
-					 * to after recev
-					 */
-
-	struct idpf_dma_mem desc_ring;	/* descriptor ring memory
-					 * idpf_dma_mem is defined in OSdep.h
-					 */
-	union {
-		struct idpf_dma_mem **rx_buff;
-		struct idpf_ctlq_msg **tx_msg;
-	} bi;
-
-	u16 buf_size;			/* queue buffer size */
-	u16 ring_size;			/* Number of descriptors */
-	struct idpf_ctlq_reg reg;	/* registers accessed by ctlqs */
-};
-
-/**
- * enum idpf_mbx_opc - PF/VF mailbox commands
- * @idpf_mbq_opc_send_msg_to_cp: used by PF or VF to send a message to its CP
- */
-enum idpf_mbx_opc {
-	idpf_mbq_opc_send_msg_to_cp		= 0x0801,
-};
-
-/* API supported for control queue management */
-/* Will init all required q including default mb.  "q_info" is an array of
- * create_info structs equal to the number of control queues to be created.
- */
-int idpf_ctlq_init(struct idpf_hw *hw, u8 num_q,
-		   struct idpf_ctlq_create_info *q_info);
-
-/* Allocate and initialize a single control queue, which will be added to the
- * control queue list; returns a handle to the created control queue
- */
-int idpf_ctlq_add(struct idpf_hw *hw,
-		  struct idpf_ctlq_create_info *qinfo,
-		  struct idpf_ctlq_info **cq);
-
-/* Deinitialize and deallocate a single control queue */
-void idpf_ctlq_remove(struct idpf_hw *hw,
-		      struct idpf_ctlq_info *cq);
-
-/* Sends messages to HW and will also free the buffer*/
-int idpf_ctlq_send(struct idpf_hw *hw,
-		   struct idpf_ctlq_info *cq,
-		   u16 num_q_msg,
-		   struct idpf_ctlq_msg q_msg[]);
-
-/* Receives messages and called by interrupt handler/polling
- * initiated by app/process. Also caller is supposed to free the buffers
- */
-int idpf_ctlq_recv(struct idpf_ctlq_info *cq, u16 *num_q_msg,
-		   struct idpf_ctlq_msg *q_msg);
-
-/* Reclaims send descriptors on HW write back */
-int idpf_ctlq_clean_sq(struct idpf_ctlq_info *cq, u16 *clean_count,
-		       struct idpf_ctlq_msg *msg_status[]);
-
-/* Indicate RX buffers are done being processed */
-int idpf_ctlq_post_rx_buffs(struct idpf_hw *hw,
-			    struct idpf_ctlq_info *cq,
-			    u16 *buff_count,
-			    struct idpf_dma_mem **buffs);
-
-/* Will destroy all q including the default mb */
-void idpf_ctlq_deinit(struct idpf_hw *hw);
-
-#endif /* _IDPF_CONTROLQ_API_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_controlq_setup.c b/drivers/net/ethernet/intel/idpf/idpf_controlq_setup.c
deleted file mode 100644
index a942a6385d06..000000000000
--- a/drivers/net/ethernet/intel/idpf/idpf_controlq_setup.c
+++ /dev/null
@@ -1,171 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/* Copyright (C) 2023 Intel Corporation */
-
-#include "idpf_controlq.h"
-
-/**
- * idpf_ctlq_alloc_desc_ring - Allocate Control Queue (CQ) rings
- * @hw: pointer to hw struct
- * @cq: pointer to the specific Control queue
- */
-static int idpf_ctlq_alloc_desc_ring(struct idpf_hw *hw,
-				     struct idpf_ctlq_info *cq)
-{
-	size_t size = cq->ring_size * sizeof(struct idpf_ctlq_desc);
-
-	cq->desc_ring.va = idpf_alloc_dma_mem(hw, &cq->desc_ring, size);
-	if (!cq->desc_ring.va)
-		return -ENOMEM;
-
-	return 0;
-}
-
-/**
- * idpf_ctlq_alloc_bufs - Allocate Control Queue (CQ) buffers
- * @hw: pointer to hw struct
- * @cq: pointer to the specific Control queue
- *
- * Allocate the buffer head for all control queues, and if it's a receive
- * queue, allocate DMA buffers
- */
-static int idpf_ctlq_alloc_bufs(struct idpf_hw *hw,
-				struct idpf_ctlq_info *cq)
-{
-	int i;
-
-	/* Do not allocate DMA buffers for transmit queues */
-	if (cq->cq_type == IDPF_CTLQ_TYPE_MAILBOX_TX)
-		return 0;
-
-	/* We'll be allocating the buffer info memory first, then we can
-	 * allocate the mapped buffers for the event processing
-	 */
-	cq->bi.rx_buff = kcalloc(cq->ring_size, sizeof(struct idpf_dma_mem *),
-				 GFP_KERNEL);
-	if (!cq->bi.rx_buff)
-		return -ENOMEM;
-
-	/* allocate the mapped buffers (except for the last one) */
-	for (i = 0; i < cq->ring_size - 1; i++) {
-		struct idpf_dma_mem *bi;
-		int num = 1; /* number of idpf_dma_mem to be allocated */
-
-		cq->bi.rx_buff[i] = kcalloc(num, sizeof(struct idpf_dma_mem),
-					    GFP_KERNEL);
-		if (!cq->bi.rx_buff[i])
-			goto unwind_alloc_cq_bufs;
-
-		bi = cq->bi.rx_buff[i];
-
-		bi->va = idpf_alloc_dma_mem(hw, bi, cq->buf_size);
-		if (!bi->va) {
-			/* unwind will not free the failed entry */
-			kfree(cq->bi.rx_buff[i]);
-			goto unwind_alloc_cq_bufs;
-		}
-	}
-
-	return 0;
-
-unwind_alloc_cq_bufs:
-	/* don't try to free the one that failed... */
-	i--;
-	for (; i >= 0; i--) {
-		idpf_free_dma_mem(hw, cq->bi.rx_buff[i]);
-		kfree(cq->bi.rx_buff[i]);
-	}
-	kfree(cq->bi.rx_buff);
-
-	return -ENOMEM;
-}
-
-/**
- * idpf_ctlq_free_desc_ring - Free Control Queue (CQ) rings
- * @hw: pointer to hw struct
- * @cq: pointer to the specific Control queue
- *
- * This assumes the posted send buffers have already been cleaned
- * and de-allocated
- */
-static void idpf_ctlq_free_desc_ring(struct idpf_hw *hw,
-				     struct idpf_ctlq_info *cq)
-{
-	idpf_free_dma_mem(hw, &cq->desc_ring);
-}
-
-/**
- * idpf_ctlq_free_bufs - Free CQ buffer info elements
- * @hw: pointer to hw struct
- * @cq: pointer to the specific Control queue
- *
- * Free the DMA buffers for RX queues, and DMA buffer header for both RX and TX
- * queues.  The upper layers are expected to manage freeing of TX DMA buffers
- */
-static void idpf_ctlq_free_bufs(struct idpf_hw *hw, struct idpf_ctlq_info *cq)
-{
-	void *bi;
-
-	if (cq->cq_type == IDPF_CTLQ_TYPE_MAILBOX_RX) {
-		int i;
-
-		/* free DMA buffers for rx queues*/
-		for (i = 0; i < cq->ring_size; i++) {
-			if (cq->bi.rx_buff[i]) {
-				idpf_free_dma_mem(hw, cq->bi.rx_buff[i]);
-				kfree(cq->bi.rx_buff[i]);
-			}
-		}
-
-		bi = (void *)cq->bi.rx_buff;
-	} else {
-		bi = (void *)cq->bi.tx_msg;
-	}
-
-	/* free the buffer header */
-	kfree(bi);
-}
-
-/**
- * idpf_ctlq_dealloc_ring_res - Free memory allocated for control queue
- * @hw: pointer to hw struct
- * @cq: pointer to the specific Control queue
- *
- * Free the memory used by the ring, buffers and other related structures
- */
-void idpf_ctlq_dealloc_ring_res(struct idpf_hw *hw, struct idpf_ctlq_info *cq)
-{
-	/* free ring buffers and the ring itself */
-	idpf_ctlq_free_bufs(hw, cq);
-	idpf_ctlq_free_desc_ring(hw, cq);
-}
-
-/**
- * idpf_ctlq_alloc_ring_res - allocate memory for descriptor ring and bufs
- * @hw: pointer to hw struct
- * @cq: pointer to control queue struct
- *
- * Do *NOT* hold cq_lock when calling this as the memory allocation routines
- * called are not going to be atomic context safe
- */
-int idpf_ctlq_alloc_ring_res(struct idpf_hw *hw, struct idpf_ctlq_info *cq)
-{
-	int err;
-
-	/* allocate the ring memory */
-	err = idpf_ctlq_alloc_desc_ring(hw, cq);
-	if (err)
-		return err;
-
-	/* allocate buffers in the rings */
-	err = idpf_ctlq_alloc_bufs(hw, cq);
-	if (err)
-		goto idpf_init_cq_free_ring;
-
-	/* success! */
-	return 0;
-
-idpf_init_cq_free_ring:
-	idpf_free_dma_mem(hw, &cq->desc_ring);
-
-	return err;
-}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_dev.c
index 41e4bd49402a..0663faa2dfe1 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_dev.c
@@ -9,42 +9,32 @@
 
 /**
  * idpf_ctlq_reg_init - initialize default mailbox registers
- * @cq: pointer to the array of create control queues
+ * @mmio: struct that contains MMIO region info
+ * @cci: struct where the register offset pointer to be copied to
  */
-static void idpf_ctlq_reg_init(struct idpf_ctlq_create_info *cq)
+static void idpf_ctlq_reg_init(struct libeth_mmio_info *mmio,
+			       struct libeth_ctlq_create_info *cci)
 {
-	int i;
-
-	for (i = 0; i < IDPF_NUM_DFLT_MBX_Q; i++) {
-		struct idpf_ctlq_create_info *ccq = cq + i;
-
-		switch (ccq->type) {
-		case IDPF_CTLQ_TYPE_MAILBOX_TX:
-			/* set head and tail registers in our local struct */
-			ccq->reg.head = PF_FW_ATQH;
-			ccq->reg.tail = PF_FW_ATQT;
-			ccq->reg.len = PF_FW_ATQLEN;
-			ccq->reg.bah = PF_FW_ATQBAH;
-			ccq->reg.bal = PF_FW_ATQBAL;
-			ccq->reg.len_mask = PF_FW_ATQLEN_ATQLEN_M;
-			ccq->reg.len_ena_mask = PF_FW_ATQLEN_ATQENABLE_M;
-			ccq->reg.head_mask = PF_FW_ATQH_ATQH_M;
-			break;
-		case IDPF_CTLQ_TYPE_MAILBOX_RX:
-			/* set head and tail registers in our local struct */
-			ccq->reg.head = PF_FW_ARQH;
-			ccq->reg.tail = PF_FW_ARQT;
-			ccq->reg.len = PF_FW_ARQLEN;
-			ccq->reg.bah = PF_FW_ARQBAH;
-			ccq->reg.bal = PF_FW_ARQBAL;
-			ccq->reg.len_mask = PF_FW_ARQLEN_ARQLEN_M;
-			ccq->reg.len_ena_mask = PF_FW_ARQLEN_ARQENABLE_M;
-			ccq->reg.head_mask = PF_FW_ARQH_ARQH_M;
-			break;
-		default:
-			break;
-		}
-	}
+	struct libeth_ctlq_reg *tx_reg = &cci[LIBETH_CTLQ_TYPE_TX].reg;
+	struct libeth_ctlq_reg *rx_reg = &cci[LIBETH_CTLQ_TYPE_RX].reg;
+
+	tx_reg->head		= libeth_pci_get_mmio_addr(mmio, PF_FW_ATQH);
+	tx_reg->tail		= libeth_pci_get_mmio_addr(mmio, PF_FW_ATQT);
+	tx_reg->len		= libeth_pci_get_mmio_addr(mmio, PF_FW_ATQLEN);
+	tx_reg->addr_high	= libeth_pci_get_mmio_addr(mmio, PF_FW_ATQBAH);
+	tx_reg->addr_low	= libeth_pci_get_mmio_addr(mmio, PF_FW_ATQBAL);
+	tx_reg->len_mask	= PF_FW_ATQLEN_ATQLEN_M;
+	tx_reg->len_ena_mask	= PF_FW_ATQLEN_ATQENABLE_M;
+	tx_reg->head_mask	= PF_FW_ATQH_ATQH_M;
+
+	rx_reg->head		= libeth_pci_get_mmio_addr(mmio, PF_FW_ARQH);
+	rx_reg->tail		= libeth_pci_get_mmio_addr(mmio, PF_FW_ARQT);
+	rx_reg->len		= libeth_pci_get_mmio_addr(mmio, PF_FW_ARQLEN);
+	rx_reg->addr_high	= libeth_pci_get_mmio_addr(mmio, PF_FW_ARQBAH);
+	rx_reg->addr_low	= libeth_pci_get_mmio_addr(mmio, PF_FW_ARQBAL);
+	rx_reg->len_mask	= PF_FW_ARQLEN_ARQLEN_M;
+	rx_reg->len_ena_mask	= PF_FW_ARQLEN_ARQENABLE_M;
+	rx_reg->head_mask	= PF_FW_ARQH_ARQH_M;
 }
 
 /**
@@ -53,13 +43,14 @@ static void idpf_ctlq_reg_init(struct idpf_ctlq_create_info *cq)
  */
 static void idpf_mb_intr_reg_init(struct idpf_adapter *adapter)
 {
+	struct libeth_mmio_info *mmio = &adapter->ctlq_ctx.mmio_info;
 	struct idpf_intr_reg *intr = &adapter->mb_vector.intr_reg;
 	u32 dyn_ctl = le32_to_cpu(adapter->caps.mailbox_dyn_ctl);
 
-	intr->dyn_ctl = idpf_get_reg_addr(adapter, dyn_ctl);
+	intr->dyn_ctl = libeth_pci_get_mmio_addr(mmio, dyn_ctl);
 	intr->dyn_ctl_intena_m = PF_GLINT_DYN_CTL_INTENA_M;
 	intr->dyn_ctl_itridx_m = PF_GLINT_DYN_CTL_ITR_INDX_M;
-	intr->icr_ena = idpf_get_reg_addr(adapter, PF_INT_DIR_OICR_ENA);
+	intr->icr_ena = libeth_pci_get_mmio_addr(mmio, PF_INT_DIR_OICR_ENA);
 	intr->icr_ena_ctlq_m = PF_INT_DIR_OICR_ENA_M;
 }
 
@@ -72,6 +63,7 @@ static int idpf_intr_reg_init(struct idpf_vport *vport)
 	struct idpf_adapter *adapter = vport->adapter;
 	int num_vecs = vport->num_q_vectors;
 	struct idpf_vec_regs *reg_vals;
+	struct libeth_mmio_info *mmio;
 	int num_regs, i, err = 0;
 	u32 rx_itr, tx_itr;
 	u16 total_vecs;
@@ -88,14 +80,17 @@ static int idpf_intr_reg_init(struct idpf_vport *vport)
 		goto free_reg_vals;
 	}
 
+	mmio = &adapter->ctlq_ctx.mmio_info;
+
 	for (i = 0; i < num_vecs; i++) {
 		struct idpf_q_vector *q_vector = &vport->q_vectors[i];
 		u16 vec_id = vport->q_vector_idxs[i] - IDPF_MBX_Q_VEC;
 		struct idpf_intr_reg *intr = &q_vector->intr_reg;
+		struct idpf_vec_regs *reg = &reg_vals[vec_id];
 		u32 spacing;
 
-		intr->dyn_ctl = idpf_get_reg_addr(adapter,
-						  reg_vals[vec_id].dyn_ctl_reg);
+		intr->dyn_ctl =	libeth_pci_get_mmio_addr(mmio,
+							 reg->dyn_ctl_reg);
 		intr->dyn_ctl_intena_m = PF_GLINT_DYN_CTL_INTENA_M;
 		intr->dyn_ctl_intena_msk_m = PF_GLINT_DYN_CTL_INTENA_MSK_M;
 		intr->dyn_ctl_itridx_s = PF_GLINT_DYN_CTL_ITR_INDX_S;
@@ -105,16 +100,14 @@ static int idpf_intr_reg_init(struct idpf_vport *vport)
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
+		intr->rx_itr = libeth_pci_get_mmio_addr(mmio, rx_itr);
+		intr->tx_itr = libeth_pci_get_mmio_addr(mmio, tx_itr);
 	}
 
 free_reg_vals:
@@ -129,7 +122,9 @@ static int idpf_intr_reg_init(struct idpf_vport *vport)
  */
 static void idpf_reset_reg_init(struct idpf_adapter *adapter)
 {
-	adapter->reset_reg.rstat = idpf_get_reg_addr(adapter, PFGEN_RSTAT);
+	adapter->reset_reg.rstat =
+		libeth_pci_get_mmio_addr(&adapter->ctlq_ctx.mmio_info,
+					 PFGEN_RSTAT);
 	adapter->reset_reg.rstat_m = PFGEN_RSTAT_PFR_STATE_M;
 }
 
@@ -141,11 +136,11 @@ static void idpf_reset_reg_init(struct idpf_adapter *adapter)
 static void idpf_trigger_reset(struct idpf_adapter *adapter,
 			       enum idpf_flags __always_unused trig_cause)
 {
-	u32 reset_reg;
+	void __iomem *addr;
 
-	reset_reg = readl(idpf_get_reg_addr(adapter, PFGEN_CTRL));
-	writel(reset_reg | PFGEN_CTRL_PFSWR,
-	       idpf_get_reg_addr(adapter, PFGEN_CTRL));
+	addr = libeth_pci_get_mmio_addr(&adapter->ctlq_ctx.mmio_info,
+					PFGEN_CTRL);
+	writel(readl(addr) | PFGEN_CTRL_PFSWR, addr);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 7ee8ad61d77d..bf403dcf794e 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1187,6 +1187,7 @@ void idpf_statistics_task(struct work_struct *work)
  */
 void idpf_mbx_task(struct work_struct *work)
 {
+	struct libeth_ctlq_xn_recv_params xn_params = {};
 	struct idpf_adapter *adapter;
 
 	adapter = container_of(work, struct idpf_adapter, mbx_task.work);
@@ -1197,7 +1198,11 @@ void idpf_mbx_task(struct work_struct *work)
 		queue_delayed_work(adapter->mbx_wq, &adapter->mbx_task,
 				   msecs_to_jiffies(300));
 
-	idpf_recv_mb_msg(adapter);
+	xn_params.xnm = adapter->xn_init_params.xnm;
+	xn_params.ctlq = adapter->arq;
+	xn_params.ctlq_msg_handler = idpf_recv_event_msg;
+
+	libeth_ctlq_xn_recv(&xn_params);
 }
 
 /**
@@ -1656,15 +1661,14 @@ void idpf_deinit_task(struct idpf_adapter *adapter)
 
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
@@ -1750,7 +1754,6 @@ static int idpf_init_hard_reset(struct idpf_adapter *adapter)
 		idpf_vc_core_deinit(adapter);
 		if (!is_reset)
 			reg_ops->trigger_reset(adapter, IDPF_HR_FUNC_RESET);
-		idpf_deinit_dflt_mbx(adapter);
 	} else {
 		dev_err(dev, "Unhandled hard reset cause\n");
 		err = -EBADRQC;
@@ -1758,7 +1761,7 @@ static int idpf_init_hard_reset(struct idpf_adapter *adapter)
 	}
 
 	/* Wait for reset to complete */
-	err = idpf_check_reset_complete(&adapter->hw, &adapter->reset_reg);
+	err = idpf_check_reset_complete(adapter, &adapter->reset_reg);
 	if (err) {
 		dev_err(dev, "The driver was unable to contact the device's firmware. Check that the FW is running. Driver state= 0x%x\n",
 			adapter->state);
@@ -2303,40 +2306,6 @@ static int idpf_set_mac(struct net_device *netdev, void *p)
 	return err;
 }
 
-/**
- * idpf_alloc_dma_mem - Allocate dma memory
- * @hw: pointer to hw struct
- * @mem: pointer to dma_mem struct
- * @size: size of the memory to allocate
- */
-void *idpf_alloc_dma_mem(struct idpf_hw *hw, struct idpf_dma_mem *mem, u64 size)
-{
-	struct idpf_adapter *adapter = hw->back;
-	size_t sz = ALIGN(size, 4096);
-
-	mem->va = dma_alloc_coherent(&adapter->pdev->dev, sz,
-				     &mem->pa, GFP_KERNEL);
-	mem->size = sz;
-
-	return mem->va;
-}
-
-/**
- * idpf_free_dma_mem - Free the allocated dma memory
- * @hw: pointer to hw struct
- * @mem: pointer to dma_mem struct
- */
-void idpf_free_dma_mem(struct idpf_hw *hw, struct idpf_dma_mem *mem)
-{
-	struct idpf_adapter *adapter = hw->back;
-
-	dma_free_coherent(&adapter->pdev->dev, mem->size,
-			  mem->va, mem->pa);
-	mem->size = 0;
-	mem->va = NULL;
-	mem->pa = 0;
-}
-
 static const struct net_device_ops idpf_netdev_ops = {
 	.ndo_open = idpf_open,
 	.ndo_stop = idpf_stop,
diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index bec4a02c5373..0de919413f1e 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -9,8 +9,20 @@
 
 MODULE_DESCRIPTION(DRV_SUMMARY);
 MODULE_IMPORT_NS("LIBETH");
+MODULE_IMPORT_NS("LIBETH_CP");
+MODULE_IMPORT_NS("LIBETH_PCI");
 MODULE_LICENSE("GPL");
 
+/**
+ * idpf_decfg_device - deconfigure device and device specific resources
+ * @adapter: driver specific private structure
+ */
+static void idpf_decfg_device(struct idpf_adapter *adapter)
+{
+	libeth_pci_unmap_all_mmio_regions(&adapter->ctlq_ctx.mmio_info);
+	libeth_pci_deinit_dev(adapter->pdev);
+}
+
 /**
  * idpf_remove - Device removal routine
  * @pdev: PCI device information struct
@@ -35,7 +47,6 @@ static void idpf_remove(struct pci_dev *pdev)
 
 	/* Be a good citizen and leave the device clean on exit */
 	adapter->dev_ops.reg_ops.trigger_reset(adapter, IDPF_HR_FUNC_RESET);
-	idpf_deinit_dflt_mbx(adapter);
 
 	if (!adapter->netdevs)
 		goto destroy_wqs;
@@ -69,15 +80,13 @@ static void idpf_remove(struct pci_dev *pdev)
 	adapter->vport_config = NULL;
 	kfree(adapter->netdevs);
 	adapter->netdevs = NULL;
-	kfree(adapter->vcxn_mngr);
-	adapter->vcxn_mngr = NULL;
 
 	mutex_destroy(&adapter->vport_ctrl_lock);
 	mutex_destroy(&adapter->vector_lock);
 	mutex_destroy(&adapter->queue_lock);
 	mutex_destroy(&adapter->vc_buf_lock);
 
-	pci_set_drvdata(pdev, NULL);
+	idpf_decfg_device(adapter);
 	kfree(adapter);
 }
 
@@ -91,31 +100,42 @@ static void idpf_shutdown(struct pci_dev *pdev)
 
 	cancel_delayed_work_sync(&adapter->vc_event_task);
 	idpf_vc_core_deinit(adapter);
-	idpf_deinit_dflt_mbx(adapter);
 
 	if (system_state == SYSTEM_POWER_OFF)
 		pci_set_power_state(pdev, PCI_D3hot);
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
+	struct libeth_mmio_info *mmio_info = &adapter->ctlq_ctx.mmio_info;
 	struct pci_dev *pdev = adapter->pdev;
-	struct idpf_hw *hw = &adapter->hw;
+	int err;
 
-	hw->hw_addr = pcim_iomap_table(pdev)[0];
-	if (!hw->hw_addr) {
-		pci_err(pdev, "failed to allocate PCI iomap table\n");
+	err = libeth_pci_init_dev(pdev);
+	if (err)
+		return err;
 
+	mmio_info->pdev = pdev;
+	INIT_LIST_HEAD(&mmio_info->mmio_list);
+
+	err = libeth_pci_map_mmio_region(mmio_info, 0,
+					 pci_resource_len(pdev, 0));
+	if (!err) {
+		libeth_pci_deinit_dev(pdev);
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
@@ -156,28 +176,13 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
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
@@ -185,7 +190,7 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (!adapter->init_wq) {
 		dev_err(dev, "Failed to allocate init workqueue\n");
 		err = -ENOMEM;
-		goto err_free;
+		goto err_init_wq;
 	}
 
 	adapter->serv_wq = alloc_workqueue("%s-%s-service",
@@ -231,13 +236,6 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
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
@@ -256,8 +254,6 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	return 0;
 
-err_cfg_hw:
-	destroy_workqueue(adapter->vc_event_wq);
 err_vc_event_wq_alloc:
 	destroy_workqueue(adapter->stats_wq);
 err_stats_wq_alloc:
@@ -266,8 +262,11 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
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
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_mem.h b/drivers/net/ethernet/intel/idpf/idpf_mem.h
deleted file mode 100644
index b21a04fccf0f..000000000000
--- a/drivers/net/ethernet/intel/idpf/idpf_mem.h
+++ /dev/null
@@ -1,20 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/* Copyright (C) 2023 Intel Corporation */
-
-#ifndef _IDPF_MEM_H_
-#define _IDPF_MEM_H_
-
-#include <linux/io.h>
-
-struct idpf_dma_mem {
-	void *va;
-	dma_addr_t pa;
-	size_t size;
-};
-
-#define wr32(a, reg, value)	writel((value), ((a)->hw_addr + (reg)))
-#define rd32(a, reg)		readl((a)->hw_addr + (reg))
-#define wr64(a, reg, value)	writeq((value), ((a)->hw_addr + (reg)))
-#define rd64(a, reg)		readq((a)->hw_addr + (reg))
-
-#endif /* _IDPF_MEM_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 9f0cbb164054..d02ca4ee564c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -240,7 +240,7 @@ enum idpf_tx_ctx_desc_eipt_offload {
 				 (sizeof(u16) * IDPF_RX_MAX_PTYPE_PROTO_IDS))
 #define IDPF_RX_PTYPE_HDR_SZ	sizeof(struct virtchnl2_get_ptype_info)
 #define IDPF_RX_MAX_PTYPES_PER_BUF	\
-	DIV_ROUND_DOWN_ULL((IDPF_CTLQ_MAX_BUF_LEN - IDPF_RX_PTYPE_HDR_SZ), \
+	DIV_ROUND_DOWN_ULL(LIBETH_CTLQ_MAX_BUF_LEN - IDPF_RX_PTYPE_HDR_SZ, \
 			   IDPF_RX_MAX_PTYPE_SZ)
 
 #define IDPF_GET_PTYPE_SIZE(p) struct_size((p), proto_id, (p)->proto_id_count)
diff --git a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
index aba828abcb17..a2c4e41e1797 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
@@ -9,42 +9,32 @@
 
 /**
  * idpf_vf_ctlq_reg_init - initialize default mailbox registers
- * @cq: pointer to the array of create control queues
+ * @mmio: struct that contains MMIO region info
+ * @cci: struct where the register offset pointer to be copied to
  */
-static void idpf_vf_ctlq_reg_init(struct idpf_ctlq_create_info *cq)
+static void idpf_vf_ctlq_reg_init(struct libeth_mmio_info *mmio,
+				  struct libeth_ctlq_create_info *cci)
 {
-	int i;
-
-	for (i = 0; i < IDPF_NUM_DFLT_MBX_Q; i++) {
-		struct idpf_ctlq_create_info *ccq = cq + i;
-
-		switch (ccq->type) {
-		case IDPF_CTLQ_TYPE_MAILBOX_TX:
-			/* set head and tail registers in our local struct */
-			ccq->reg.head = VF_ATQH;
-			ccq->reg.tail = VF_ATQT;
-			ccq->reg.len = VF_ATQLEN;
-			ccq->reg.bah = VF_ATQBAH;
-			ccq->reg.bal = VF_ATQBAL;
-			ccq->reg.len_mask = VF_ATQLEN_ATQLEN_M;
-			ccq->reg.len_ena_mask = VF_ATQLEN_ATQENABLE_M;
-			ccq->reg.head_mask = VF_ATQH_ATQH_M;
-			break;
-		case IDPF_CTLQ_TYPE_MAILBOX_RX:
-			/* set head and tail registers in our local struct */
-			ccq->reg.head = VF_ARQH;
-			ccq->reg.tail = VF_ARQT;
-			ccq->reg.len = VF_ARQLEN;
-			ccq->reg.bah = VF_ARQBAH;
-			ccq->reg.bal = VF_ARQBAL;
-			ccq->reg.len_mask = VF_ARQLEN_ARQLEN_M;
-			ccq->reg.len_ena_mask = VF_ARQLEN_ARQENABLE_M;
-			ccq->reg.head_mask = VF_ARQH_ARQH_M;
-			break;
-		default:
-			break;
-		}
-	}
+	struct libeth_ctlq_reg *tx_reg = &cci[LIBETH_CTLQ_TYPE_TX].reg;
+	struct libeth_ctlq_reg *rx_reg = &cci[LIBETH_CTLQ_TYPE_RX].reg;
+
+	tx_reg->head		= libeth_pci_get_mmio_addr(mmio, VF_ATQH);
+	tx_reg->tail		= libeth_pci_get_mmio_addr(mmio, VF_ATQT);
+	tx_reg->len		= libeth_pci_get_mmio_addr(mmio, VF_ATQLEN);
+	tx_reg->addr_high	= libeth_pci_get_mmio_addr(mmio, VF_ATQBAH);
+	tx_reg->addr_low	= libeth_pci_get_mmio_addr(mmio, VF_ATQBAL);
+	tx_reg->len_mask	= VF_ATQLEN_ATQLEN_M;
+	tx_reg->len_ena_mask	= VF_ATQLEN_ATQENABLE_M;
+	tx_reg->head_mask	= VF_ATQH_ATQH_M;
+
+	rx_reg->head		= libeth_pci_get_mmio_addr(mmio, VF_ARQH);
+	rx_reg->tail		= libeth_pci_get_mmio_addr(mmio, VF_ARQT);
+	rx_reg->len		= libeth_pci_get_mmio_addr(mmio, VF_ARQLEN);
+	rx_reg->addr_high	= libeth_pci_get_mmio_addr(mmio, VF_ARQBAH);
+	rx_reg->addr_low	= libeth_pci_get_mmio_addr(mmio, VF_ARQBAL);
+	rx_reg->len_mask	= VF_ARQLEN_ARQLEN_M;
+	rx_reg->len_ena_mask	= VF_ARQLEN_ARQENABLE_M;
+	rx_reg->head_mask	= VF_ARQH_ARQH_M;
 }
 
 /**
@@ -53,13 +43,14 @@ static void idpf_vf_ctlq_reg_init(struct idpf_ctlq_create_info *cq)
  */
 static void idpf_vf_mb_intr_reg_init(struct idpf_adapter *adapter)
 {
+	struct libeth_mmio_info *mmio = &adapter->ctlq_ctx.mmio_info;
 	struct idpf_intr_reg *intr = &adapter->mb_vector.intr_reg;
 	u32 dyn_ctl = le32_to_cpu(adapter->caps.mailbox_dyn_ctl);
 
-	intr->dyn_ctl = idpf_get_reg_addr(adapter, dyn_ctl);
+	intr->dyn_ctl = libeth_pci_get_mmio_addr(mmio, dyn_ctl);
 	intr->dyn_ctl_intena_m = VF_INT_DYN_CTL0_INTENA_M;
 	intr->dyn_ctl_itridx_m = VF_INT_DYN_CTL0_ITR_INDX_M;
-	intr->icr_ena = idpf_get_reg_addr(adapter, VF_INT_ICR0_ENA1);
+	intr->icr_ena = libeth_pci_get_mmio_addr(mmio, VF_INT_ICR0_ENA1);
 	intr->icr_ena_ctlq_m = VF_INT_ICR0_ENA1_ADMINQ_M;
 }
 
@@ -72,6 +63,7 @@ static int idpf_vf_intr_reg_init(struct idpf_vport *vport)
 	struct idpf_adapter *adapter = vport->adapter;
 	int num_vecs = vport->num_q_vectors;
 	struct idpf_vec_regs *reg_vals;
+	struct libeth_mmio_info *mmio;
 	int num_regs, i, err = 0;
 	u32 rx_itr, tx_itr;
 	u16 total_vecs;
@@ -88,14 +80,17 @@ static int idpf_vf_intr_reg_init(struct idpf_vport *vport)
 		goto free_reg_vals;
 	}
 
+	mmio = &adapter->ctlq_ctx.mmio_info;
+
 	for (i = 0; i < num_vecs; i++) {
 		struct idpf_q_vector *q_vector = &vport->q_vectors[i];
 		u16 vec_id = vport->q_vector_idxs[i] - IDPF_MBX_Q_VEC;
 		struct idpf_intr_reg *intr = &q_vector->intr_reg;
+		struct idpf_vec_regs *reg = &reg_vals[vec_id];
 		u32 spacing;
 
-		intr->dyn_ctl = idpf_get_reg_addr(adapter,
-						  reg_vals[vec_id].dyn_ctl_reg);
+		intr->dyn_ctl =	libeth_pci_get_mmio_addr(mmio,
+							 reg->dyn_ctl_reg);
 		intr->dyn_ctl_intena_m = VF_INT_DYN_CTLN_INTENA_M;
 		intr->dyn_ctl_intena_msk_m = VF_INT_DYN_CTLN_INTENA_MSK_M;
 		intr->dyn_ctl_itridx_s = VF_INT_DYN_CTLN_ITR_INDX_S;
@@ -105,16 +100,14 @@ static int idpf_vf_intr_reg_init(struct idpf_vport *vport)
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
+		intr->rx_itr = libeth_pci_get_mmio_addr(mmio, rx_itr);
+		intr->tx_itr = libeth_pci_get_mmio_addr(mmio, tx_itr);
 	}
 
 free_reg_vals:
@@ -129,7 +122,9 @@ static int idpf_vf_intr_reg_init(struct idpf_vport *vport)
  */
 static void idpf_vf_reset_reg_init(struct idpf_adapter *adapter)
 {
-	adapter->reset_reg.rstat = idpf_get_reg_addr(adapter, VFGEN_RSTAT);
+	adapter->reset_reg.rstat =
+		libeth_pci_get_mmio_addr(&adapter->ctlq_ctx.mmio_info,
+					 VFGEN_RSTAT);
 	adapter->reset_reg.rstat_m = VFGEN_RSTAT_VFR_STATE_M;
 }
 
@@ -141,10 +136,14 @@ static void idpf_vf_reset_reg_init(struct idpf_adapter *adapter)
 static void idpf_vf_trigger_reset(struct idpf_adapter *adapter,
 				  enum idpf_flags trig_cause)
 {
+	struct libeth_ctlq_xn_send_params xn_params = {
+		.chnl_opcode	= VIRTCHNL2_OP_RESET_VF,
+	};
+
 	/* Do not send VIRTCHNL2_OP_RESET_VF message on driver unload */
 	if (trig_cause == IDPF_HR_FUNC_RESET &&
 	    !test_bit(IDPF_REMOVE_IN_PROG, adapter->flags))
-		idpf_send_mb_msg(adapter, VIRTCHNL2_OP_RESET_VF, 0, NULL, 0);
+		idpf_send_mb_msg(adapter, &xn_params, NULL, 0);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index bfa2a3dad3d6..2bfb8882ae13 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -8,99 +8,6 @@
 
 #define IDPF_VC_XN_MIN_TIMEOUT_MSEC	2000
 #define IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC	(60 * 1000)
-#define IDPF_VC_XN_IDX_M		GENMASK(7, 0)
-#define IDPF_VC_XN_SALT_M		GENMASK(15, 8)
-#define IDPF_VC_XN_RING_LEN		U8_MAX
-
-/**
- * enum idpf_vc_xn_state - Virtchnl transaction status
- * @IDPF_VC_XN_IDLE: not expecting a reply, ready to be used
- * @IDPF_VC_XN_WAITING: expecting a reply, not yet received
- * @IDPF_VC_XN_COMPLETED_SUCCESS: a reply was expected and received,
- *				  buffer updated
- * @IDPF_VC_XN_COMPLETED_FAILED: a reply was expected and received, but there
- *				 was an error, buffer not updated
- * @IDPF_VC_XN_SHUTDOWN: transaction object cannot be used, VC torn down
- * @IDPF_VC_XN_ASYNC: transaction sent asynchronously and doesn't have the
- *		      return context; a callback may be provided to handle
- *		      return
- */
-enum idpf_vc_xn_state {
-	IDPF_VC_XN_IDLE = 1,
-	IDPF_VC_XN_WAITING,
-	IDPF_VC_XN_COMPLETED_SUCCESS,
-	IDPF_VC_XN_COMPLETED_FAILED,
-	IDPF_VC_XN_SHUTDOWN,
-	IDPF_VC_XN_ASYNC,
-};
-
-struct idpf_vc_xn;
-/* Callback for asynchronous messages */
-typedef int (*async_vc_cb) (struct idpf_adapter *, struct idpf_vc_xn *,
-			    const struct idpf_ctlq_msg *);
-
-/**
- * struct idpf_vc_xn - Data structure representing virtchnl transactions
- * @completed: virtchnl event loop uses that to signal when a reply is
- *	       available, uses kernel completion API
- * @state: virtchnl event loop stores the data below, protected by the
- *	   completion's lock.
- * @reply_sz: Original size of reply, may be > reply_buf.iov_len; it will be
- *	      truncated on its way to the receiver thread according to
- *	      reply_buf.iov_len.
- * @reply: Reference to the buffer(s) where the reply data should be written
- *	   to. May be 0-length (then NULL address permitted) if the reply data
- *	   should be ignored.
- * @async_handler: if sent asynchronously, a callback can be provided to handle
- *		   the reply when it's received
- * @vc_op: corresponding opcode sent with this transaction
- * @idx: index used as retrieval on reply receive, used for cookie
- * @salt: changed every message to make unique, used for cookie
- */
-struct idpf_vc_xn {
-	struct completion completed;
-	enum idpf_vc_xn_state state;
-	size_t reply_sz;
-	struct kvec reply;
-	async_vc_cb async_handler;
-	u32 vc_op;
-	u8 idx;
-	u8 salt;
-};
-
-/**
- * struct idpf_vc_xn_params - Parameters for executing transaction
- * @send_buf: kvec for send buffer
- * @recv_buf: kvec for recv buffer, may be NULL, must then have zero length
- * @timeout_ms: timeout to wait for reply
- * @async: send message asynchronously, will not wait on completion
- * @async_handler: If sent asynchronously, optional callback handler. The user
- *		   must be careful when using async handlers as the memory for
- *		   the recv_buf _cannot_ be on stack if this is async.
- * @vc_op: virtchnl op to send
- */
-struct idpf_vc_xn_params {
-	struct kvec send_buf;
-	struct kvec recv_buf;
-	int timeout_ms;
-	bool async;
-	async_vc_cb async_handler;
-	u32 vc_op;
-};
-
-/**
- * struct idpf_vc_xn_manager - Manager for tracking transactions
- * @ring: backing and lookup for transactions
- * @free_xn_bm: bitmap for free transactions
- * @xn_bm_lock: make bitmap access synchronous where necessary
- * @salt: used to make cookie unique every message
- */
-struct idpf_vc_xn_manager {
-	struct idpf_vc_xn ring[IDPF_VC_XN_RING_LEN];
-	DECLARE_BITMAP(free_xn_bm, IDPF_VC_XN_RING_LEN);
-	spinlock_t xn_bm_lock;
-	u8 salt;
-};
 
 /**
  * idpf_vid_to_vport - Translate vport id to vport pointer
@@ -162,586 +69,100 @@ static void idpf_handle_event_link(struct idpf_adapter *adapter,
 
 /**
  * idpf_recv_event_msg - Receive virtchnl event message
- * @adapter: Driver specific private structure
+ * @ctx: control queue context
  * @ctlq_msg: message to copy from
  *
  * Receive virtchnl event message
  */
-static void idpf_recv_event_msg(struct idpf_adapter *adapter,
-				struct idpf_ctlq_msg *ctlq_msg)
+void idpf_recv_event_msg(struct libeth_ctlq_ctx *ctx,
+			 struct libeth_ctlq_msg *ctlq_msg)
 {
-	int payload_size = ctlq_msg->ctx.indirect.payload->size;
+	struct kvec *buff = &ctlq_msg->recv_mem;
+	int payload_size = buff->iov_len;
+	struct idpf_adapter *adapter;
 	struct virtchnl2_event *v2e;
 	u32 event;
 
+	adapter = container_of(ctx, struct idpf_adapter, ctlq_ctx);
 	if (payload_size < sizeof(*v2e)) {
 		dev_err_ratelimited(&adapter->pdev->dev, "Failed to receive valid payload for event msg (op %d len %d)\n",
-				    ctlq_msg->cookie.mbx.chnl_opcode,
+				    ctlq_msg->chnl_opcode,
 				    payload_size);
-		return;
+		goto free_rx_buf;
 	}
 
-	v2e = (struct virtchnl2_event *)ctlq_msg->ctx.indirect.payload->va;
+	v2e = (struct virtchnl2_event *)buff->iov_base;
 	event = le32_to_cpu(v2e->event);
 
 	switch (event) {
 	case VIRTCHNL2_EVENT_LINK_CHANGE:
 		idpf_handle_event_link(adapter, v2e);
-		return;
+		break;
 	default:
 		dev_err(&adapter->pdev->dev,
 			"Unknown event %d from PF\n", event);
 		break;
 	}
-}
-
-/**
- * idpf_mb_clean - Reclaim the send mailbox queue entries
- * @adapter: Driver specific private structure
- *
- * Reclaim the send mailbox queue entries to be used to send further messages
- *
- * Returns 0 on success, negative on failure
- */
-static int idpf_mb_clean(struct idpf_adapter *adapter)
-{
-	u16 i, num_q_msg = IDPF_DFLT_MBX_Q_LEN;
-	struct idpf_ctlq_msg **q_msg;
-	struct idpf_dma_mem *dma_mem;
-	int err;
-
-	q_msg = kcalloc(num_q_msg, sizeof(struct idpf_ctlq_msg *), GFP_ATOMIC);
-	if (!q_msg)
-		return -ENOMEM;
 
-	err = idpf_ctlq_clean_sq(adapter->hw.asq, &num_q_msg, q_msg);
-	if (err)
-		goto err_kfree;
-
-	for (i = 0; i < num_q_msg; i++) {
-		if (!q_msg[i])
-			continue;
-		dma_mem = q_msg[i]->ctx.indirect.payload;
-		if (dma_mem)
-			dma_free_coherent(&adapter->pdev->dev, dma_mem->size,
-					  dma_mem->va, dma_mem->pa);
-		kfree(q_msg[i]);
-		kfree(dma_mem);
-	}
-
-err_kfree:
-	kfree(q_msg);
-
-	return err;
+free_rx_buf:
+	libeth_ctlq_release_rx_buf(adapter->arq, buff);
 }
 
 /**
- * idpf_send_mb_msg - Send message over mailbox
+ * idpf_mb_clean - cleanup the send mailbox queue entries
  * @adapter: Driver specific private structure
- * @op: virtchnl opcode
- * @msg_size: size of the payload
- * @msg: pointer to buffer holding the payload
- * @cookie: unique SW generated cookie per message
  *
- * Will prepare the control queue message and initiates the send api
- *
- * Returns 0 on success, negative on failure
+ * This is a helper function to clean the send mailbox queue entries.
  */
-int idpf_send_mb_msg(struct idpf_adapter *adapter, u32 op,
-		     u16 msg_size, u8 *msg, u16 cookie)
+static void idpf_mb_clean(struct idpf_adapter *adapter)
 {
-	struct idpf_ctlq_msg *ctlq_msg;
-	struct idpf_dma_mem *dma_mem;
-	int err;
-
-	/* If we are here and a reset is detected nothing much can be
-	 * done. This thread should silently abort and expected to
-	 * be corrected with a new run either by user or driver
-	 * flows after reset
-	 */
-	if (idpf_is_reset_detected(adapter))
-		return 0;
-
-	err = idpf_mb_clean(adapter);
-	if (err)
-		return err;
-
-	ctlq_msg = kzalloc(sizeof(*ctlq_msg), GFP_ATOMIC);
-	if (!ctlq_msg)
-		return -ENOMEM;
-
-	dma_mem = kzalloc(sizeof(*dma_mem), GFP_ATOMIC);
-	if (!dma_mem) {
-		err = -ENOMEM;
-		goto dma_mem_error;
-	}
-
-	ctlq_msg->opcode = idpf_mbq_opc_send_msg_to_cp;
-	ctlq_msg->func_id = 0;
-	ctlq_msg->data_len = msg_size;
-	ctlq_msg->cookie.mbx.chnl_opcode = op;
-	ctlq_msg->cookie.mbx.chnl_retval = 0;
-	dma_mem->size = IDPF_CTLQ_MAX_BUF_LEN;
-	dma_mem->va = dma_alloc_coherent(&adapter->pdev->dev, dma_mem->size,
-					 &dma_mem->pa, GFP_ATOMIC);
-	if (!dma_mem->va) {
-		err = -ENOMEM;
-		goto dma_alloc_error;
-	}
-
-	/* It's possible we're just sending an opcode but no buffer */
-	if (msg && msg_size)
-		memcpy(dma_mem->va, msg, msg_size);
-	ctlq_msg->ctx.indirect.payload = dma_mem;
-	ctlq_msg->ctx.sw_cookie.data = cookie;
-
-	err = idpf_ctlq_send(&adapter->hw, adapter->hw.asq, 1, ctlq_msg);
-	if (err)
-		goto send_error;
-
-	return 0;
-
-send_error:
-	dma_free_coherent(&adapter->pdev->dev, dma_mem->size, dma_mem->va,
-			  dma_mem->pa);
-dma_alloc_error:
-	kfree(dma_mem);
-dma_mem_error:
-	kfree(ctlq_msg);
-
-	return err;
-}
-
-/* API for virtchnl "transaction" support ("xn" for short).
- *
- * We are reusing the completion lock to serialize the accesses to the
- * transaction state for simplicity, but it could be its own separate synchro
- * as well. For now, this API is only used from within a workqueue context;
- * raw_spin_lock() is enough.
- */
-/**
- * idpf_vc_xn_lock - Request exclusive access to vc transaction
- * @xn: struct idpf_vc_xn* to access
- */
-#define idpf_vc_xn_lock(xn)			\
-	raw_spin_lock(&(xn)->completed.wait.lock)
-
-/**
- * idpf_vc_xn_unlock - Release exclusive access to vc transaction
- * @xn: struct idpf_vc_xn* to access
- */
-#define idpf_vc_xn_unlock(xn)		\
-	raw_spin_unlock(&(xn)->completed.wait.lock)
-
-/**
- * idpf_vc_xn_release_bufs - Release reference to reply buffer(s) and
- * reset the transaction state.
- * @xn: struct idpf_vc_xn to update
- */
-static void idpf_vc_xn_release_bufs(struct idpf_vc_xn *xn)
-{
-	xn->reply.iov_base = NULL;
-	xn->reply.iov_len = 0;
-
-	if (xn->state != IDPF_VC_XN_SHUTDOWN)
-		xn->state = IDPF_VC_XN_IDLE;
-}
-
-/**
- * idpf_vc_xn_init - Initialize virtchnl transaction object
- * @vcxn_mngr: pointer to vc transaction manager struct
- */
-static void idpf_vc_xn_init(struct idpf_vc_xn_manager *vcxn_mngr)
-{
-	int i;
-
-	spin_lock_init(&vcxn_mngr->xn_bm_lock);
-
-	for (i = 0; i < ARRAY_SIZE(vcxn_mngr->ring); i++) {
-		struct idpf_vc_xn *xn = &vcxn_mngr->ring[i];
-
-		xn->state = IDPF_VC_XN_IDLE;
-		xn->idx = i;
-		idpf_vc_xn_release_bufs(xn);
-		init_completion(&xn->completed);
-	}
-
-	bitmap_fill(vcxn_mngr->free_xn_bm, IDPF_VC_XN_RING_LEN);
-}
-
-/**
- * idpf_vc_xn_shutdown - Uninitialize virtchnl transaction object
- * @vcxn_mngr: pointer to vc transaction manager struct
- *
- * All waiting threads will be woken-up and their transaction aborted. Further
- * operations on that object will fail.
- */
-static void idpf_vc_xn_shutdown(struct idpf_vc_xn_manager *vcxn_mngr)
-{
-	int i;
-
-	spin_lock_bh(&vcxn_mngr->xn_bm_lock);
-	bitmap_zero(vcxn_mngr->free_xn_bm, IDPF_VC_XN_RING_LEN);
-	spin_unlock_bh(&vcxn_mngr->xn_bm_lock);
-
-	for (i = 0; i < ARRAY_SIZE(vcxn_mngr->ring); i++) {
-		struct idpf_vc_xn *xn = &vcxn_mngr->ring[i];
+	struct libeth_ctlq_xn_clean_params clean_params = {
+		.ctx		= &adapter->ctlq_ctx,
+		.ctlq		= adapter->asq,
+		.rel_tx_buf	= kfree,
+		.num_msgs	= IDPF_DFLT_MBX_Q_LEN,
+	};
 
-		idpf_vc_xn_lock(xn);
-		xn->state = IDPF_VC_XN_SHUTDOWN;
-		idpf_vc_xn_release_bufs(xn);
-		idpf_vc_xn_unlock(xn);
-		complete_all(&xn->completed);
-	}
+	libeth_ctlq_xn_send_clean(&clean_params);
 }
 
 /**
- * idpf_vc_xn_pop_free - Pop a free transaction from free list
- * @vcxn_mngr: transaction manager to pop from
+ * idpf_send_mb_msg - send mailbox message to the device control plane
+ * @adapter: driver specific private structure
+ * @xn_params: Xn send parameters to fill
+ * @send_buf: buffer to send
+ * @send_buf_size: size of the send buffer
  *
- * Returns NULL if no free transactions
- */
-static
-struct idpf_vc_xn *idpf_vc_xn_pop_free(struct idpf_vc_xn_manager *vcxn_mngr)
-{
-	struct idpf_vc_xn *xn = NULL;
-	unsigned long free_idx;
-
-	spin_lock_bh(&vcxn_mngr->xn_bm_lock);
-	free_idx = find_first_bit(vcxn_mngr->free_xn_bm, IDPF_VC_XN_RING_LEN);
-	if (free_idx == IDPF_VC_XN_RING_LEN)
-		goto do_unlock;
-
-	clear_bit(free_idx, vcxn_mngr->free_xn_bm);
-	xn = &vcxn_mngr->ring[free_idx];
-	xn->salt = vcxn_mngr->salt++;
-
-do_unlock:
-	spin_unlock_bh(&vcxn_mngr->xn_bm_lock);
-
-	return xn;
-}
-
-/**
- * idpf_vc_xn_push_free - Push a free transaction to free list
- * @vcxn_mngr: transaction manager to push to
- * @xn: transaction to push
- */
-static void idpf_vc_xn_push_free(struct idpf_vc_xn_manager *vcxn_mngr,
-				 struct idpf_vc_xn *xn)
-{
-	idpf_vc_xn_release_bufs(xn);
-	set_bit(xn->idx, vcxn_mngr->free_xn_bm);
-}
-
-/**
- * idpf_vc_xn_exec - Perform a send/recv virtchnl transaction
- * @adapter: driver specific private structure with vcxn_mngr
- * @params: parameters for this particular transaction including
- *   -vc_op: virtchannel operation to send
- *   -send_buf: kvec iov for send buf and len
- *   -recv_buf: kvec iov for recv buf and len (ignored if NULL)
- *   -timeout_ms: timeout waiting for a reply (milliseconds)
- *   -async: don't wait for message reply, will lose caller context
- *   -async_handler: callback to handle async replies
+ * Fill the Xn parameters with the required info to send a virtchnl message.
+ * The send buffer is DMA mapped in the libeth to avoid memcpy.
  *
- * @returns >= 0 for success, the size of the initial reply (may or may not be
- * >= @recv_buf.iov_len, but we never overflow @@recv_buf_iov_base). < 0 for
- * error.
- */
-static ssize_t idpf_vc_xn_exec(struct idpf_adapter *adapter,
-			       const struct idpf_vc_xn_params *params)
-{
-	const struct kvec *send_buf = &params->send_buf;
-	struct idpf_vc_xn *xn;
-	ssize_t retval;
-	u16 cookie;
-
-	xn = idpf_vc_xn_pop_free(adapter->vcxn_mngr);
-	/* no free transactions available */
-	if (!xn)
-		return -ENOSPC;
-
-	idpf_vc_xn_lock(xn);
-	if (xn->state == IDPF_VC_XN_SHUTDOWN) {
-		retval = -ENXIO;
-		goto only_unlock;
-	} else if (xn->state != IDPF_VC_XN_IDLE) {
-		/* We're just going to clobber this transaction even though
-		 * it's not IDLE. If we don't reuse it we could theoretically
-		 * eventually leak all the free transactions and not be able to
-		 * send any messages. At least this way we make an attempt to
-		 * remain functional even though something really bad is
-		 * happening that's corrupting what was supposed to be free
-		 * transactions.
-		 */
-		WARN_ONCE(1, "There should only be idle transactions in free list (idx %d op %d)\n",
-			  xn->idx, xn->vc_op);
-	}
-
-	xn->reply = params->recv_buf;
-	xn->reply_sz = 0;
-	xn->state = params->async ? IDPF_VC_XN_ASYNC : IDPF_VC_XN_WAITING;
-	xn->vc_op = params->vc_op;
-	xn->async_handler = params->async_handler;
-	idpf_vc_xn_unlock(xn);
-
-	if (!params->async)
-		reinit_completion(&xn->completed);
-	cookie = FIELD_PREP(IDPF_VC_XN_SALT_M, xn->salt) |
-		 FIELD_PREP(IDPF_VC_XN_IDX_M, xn->idx);
-
-	retval = idpf_send_mb_msg(adapter, params->vc_op,
-				  send_buf->iov_len, send_buf->iov_base,
-				  cookie);
-	if (retval) {
-		idpf_vc_xn_lock(xn);
-		goto release_and_unlock;
-	}
-
-	if (params->async)
-		return 0;
-
-	wait_for_completion_timeout(&xn->completed,
-				    msecs_to_jiffies(params->timeout_ms));
-
-	/* No need to check the return value; we check the final state of the
-	 * transaction below. It's possible the transaction actually gets more
-	 * timeout than specified if we get preempted here but after
-	 * wait_for_completion_timeout returns. This should be non-issue
-	 * however.
-	 */
-	idpf_vc_xn_lock(xn);
-	switch (xn->state) {
-	case IDPF_VC_XN_SHUTDOWN:
-		retval = -ENXIO;
-		goto only_unlock;
-	case IDPF_VC_XN_WAITING:
-		dev_notice_ratelimited(&adapter->pdev->dev,
-				       "Transaction timed-out (op:%d cookie:%04x vc_op:%d salt:%02x timeout:%dms)\n",
-				       params->vc_op, cookie, xn->vc_op,
-				       xn->salt, params->timeout_ms);
-		retval = -ETIME;
-		break;
-	case IDPF_VC_XN_COMPLETED_SUCCESS:
-		retval = xn->reply_sz;
-		break;
-	case IDPF_VC_XN_COMPLETED_FAILED:
-		dev_notice_ratelimited(&adapter->pdev->dev, "Transaction failed (op %d)\n",
-				       params->vc_op);
-		retval = -EIO;
-		break;
-	default:
-		/* Invalid state. */
-		WARN_ON_ONCE(1);
-		retval = -EIO;
-		break;
-	}
-
-release_and_unlock:
-	idpf_vc_xn_push_free(adapter->vcxn_mngr, xn);
-	/* If we receive a VC reply after here, it will be dropped. */
-only_unlock:
-	idpf_vc_xn_unlock(xn);
-
-	return retval;
-}
-
-/**
- * idpf_vc_xn_forward_async - Handle async reply receives
- * @adapter: private data struct
- * @xn: transaction to handle
- * @ctlq_msg: corresponding ctlq_msg
+ * Cleanup the mailbox queue entries of the previously sent message to
+ * unmap and release the buffer.
  *
- * For async sends we're going to lose the caller's context so, if an
- * async_handler was provided, it can deal with the reply, otherwise we'll just
- * check and report if there is an error.
+ * Return: 0 if sending was successful or reset in detected,
+ *	   negative error code on failure.
  */
-static int
-idpf_vc_xn_forward_async(struct idpf_adapter *adapter, struct idpf_vc_xn *xn,
-			 const struct idpf_ctlq_msg *ctlq_msg)
+int idpf_send_mb_msg(struct idpf_adapter *adapter,
+		     struct libeth_ctlq_xn_send_params *xn_params,
+		     void *send_buf, size_t send_buf_size)
 {
-	int err = 0;
+	if (idpf_is_reset_detected(adapter)) {
+		if (!libeth_cp_can_send_onstack(send_buf_size))
+			kfree(send_buf);
 
-	if (ctlq_msg->cookie.mbx.chnl_opcode != xn->vc_op) {
-		dev_err_ratelimited(&adapter->pdev->dev, "Async message opcode does not match transaction opcode (msg: %d) (xn: %d)\n",
-				    ctlq_msg->cookie.mbx.chnl_opcode, xn->vc_op);
-		xn->reply_sz = 0;
-		err = -EINVAL;
-		goto release_bufs;
+		return -EBUSY;
 	}
 
-	if (xn->async_handler) {
-		err = xn->async_handler(adapter, xn, ctlq_msg);
-		goto release_bufs;
-	}
-
-	if (ctlq_msg->cookie.mbx.chnl_retval) {
-		xn->reply_sz = 0;
-		dev_err_ratelimited(&adapter->pdev->dev, "Async message failure (op %d)\n",
-				    ctlq_msg->cookie.mbx.chnl_opcode);
-		err = -EINVAL;
-	}
+	idpf_mb_clean(adapter);
 
-release_bufs:
-	idpf_vc_xn_push_free(adapter->vcxn_mngr, xn);
+	xn_params->send_buf.iov_base = send_buf;
+	xn_params->send_buf.iov_len = send_buf_size;
+	xn_params->xnm = adapter->xn_init_params.xnm;
+	xn_params->ctlq = adapter->asq;
+	xn_params->rel_tx_buf = kfree;
+	xn_params->ctlq_msg = NULL;
 
-	return err;
-}
-
-/**
- * idpf_vc_xn_forward_reply - copy a reply back to receiving thread
- * @adapter: driver specific private structure with vcxn_mngr
- * @ctlq_msg: controlq message to send back to receiving thread
- */
-static int
-idpf_vc_xn_forward_reply(struct idpf_adapter *adapter,
-			 const struct idpf_ctlq_msg *ctlq_msg)
-{
-	const void *payload = NULL;
-	size_t payload_size = 0;
-	struct idpf_vc_xn *xn;
-	u16 msg_info;
-	int err = 0;
-	u16 xn_idx;
-	u16 salt;
-
-	msg_info = ctlq_msg->ctx.sw_cookie.data;
-	xn_idx = FIELD_GET(IDPF_VC_XN_IDX_M, msg_info);
-	if (xn_idx >= ARRAY_SIZE(adapter->vcxn_mngr->ring)) {
-		dev_err_ratelimited(&adapter->pdev->dev, "Out of bounds cookie received: %02x\n",
-				    xn_idx);
-		return -EINVAL;
-	}
-	xn = &adapter->vcxn_mngr->ring[xn_idx];
-	idpf_vc_xn_lock(xn);
-	salt = FIELD_GET(IDPF_VC_XN_SALT_M, msg_info);
-	if (xn->salt != salt) {
-		dev_err_ratelimited(&adapter->pdev->dev, "Transaction salt does not match (exp:%d@%02x(%d) != got:%d@%02x)\n",
-				    xn->vc_op, xn->salt, xn->state,
-				    ctlq_msg->cookie.mbx.chnl_opcode, salt);
-		idpf_vc_xn_unlock(xn);
-		return -EINVAL;
-	}
-
-	switch (xn->state) {
-	case IDPF_VC_XN_WAITING:
-		/* success */
-		break;
-	case IDPF_VC_XN_IDLE:
-		dev_err_ratelimited(&adapter->pdev->dev, "Unexpected or belated VC reply (op %d)\n",
-				    ctlq_msg->cookie.mbx.chnl_opcode);
-		err = -EINVAL;
-		goto out_unlock;
-	case IDPF_VC_XN_SHUTDOWN:
-		/* ENXIO is a bit special here as the recv msg loop uses that
-		 * know if it should stop trying to clean the ring if we lost
-		 * the virtchnl. We need to stop playing with registers and
-		 * yield.
-		 */
-		err = -ENXIO;
-		goto out_unlock;
-	case IDPF_VC_XN_ASYNC:
-		err = idpf_vc_xn_forward_async(adapter, xn, ctlq_msg);
-		idpf_vc_xn_unlock(xn);
-		return err;
-	default:
-		dev_err_ratelimited(&adapter->pdev->dev, "Overwriting VC reply (op %d)\n",
-				    ctlq_msg->cookie.mbx.chnl_opcode);
-		err = -EBUSY;
-		goto out_unlock;
-	}
-
-	if (ctlq_msg->cookie.mbx.chnl_opcode != xn->vc_op) {
-		dev_err_ratelimited(&adapter->pdev->dev, "Message opcode does not match transaction opcode (msg: %d) (xn: %d)\n",
-				    ctlq_msg->cookie.mbx.chnl_opcode, xn->vc_op);
-		xn->reply_sz = 0;
-		xn->state = IDPF_VC_XN_COMPLETED_FAILED;
-		err = -EINVAL;
-		goto out_unlock;
-	}
-
-	if (ctlq_msg->cookie.mbx.chnl_retval) {
-		xn->reply_sz = 0;
-		xn->state = IDPF_VC_XN_COMPLETED_FAILED;
-		err = -EINVAL;
-		goto out_unlock;
-	}
-
-	if (ctlq_msg->data_len) {
-		payload = ctlq_msg->ctx.indirect.payload->va;
-		payload_size = ctlq_msg->data_len;
-	}
-
-	xn->reply_sz = payload_size;
-	xn->state = IDPF_VC_XN_COMPLETED_SUCCESS;
-
-	if (xn->reply.iov_base && xn->reply.iov_len && payload_size)
-		memcpy(xn->reply.iov_base, payload,
-		       min_t(size_t, xn->reply.iov_len, payload_size));
-
-out_unlock:
-	idpf_vc_xn_unlock(xn);
-	/* we _cannot_ hold lock while calling complete */
-	complete(&xn->completed);
-
-	return err;
-}
-
-/**
- * idpf_recv_mb_msg - Receive message over mailbox
- * @adapter: Driver specific private structure
- *
- * Will receive control queue message and posts the receive buffer. Returns 0
- * on success and negative on failure.
- */
-int idpf_recv_mb_msg(struct idpf_adapter *adapter)
-{
-	struct idpf_ctlq_msg ctlq_msg;
-	struct idpf_dma_mem *dma_mem;
-	int post_err, err;
-	u16 num_recv;
-
-	while (1) {
-		/* This will get <= num_recv messages and output how many
-		 * actually received on num_recv.
-		 */
-		num_recv = 1;
-		err = idpf_ctlq_recv(adapter->hw.arq, &num_recv, &ctlq_msg);
-		if (err || !num_recv)
-			break;
-
-		if (ctlq_msg.data_len) {
-			dma_mem = ctlq_msg.ctx.indirect.payload;
-		} else {
-			dma_mem = NULL;
-			num_recv = 0;
-		}
-
-		if (ctlq_msg.cookie.mbx.chnl_opcode == VIRTCHNL2_OP_EVENT)
-			idpf_recv_event_msg(adapter, &ctlq_msg);
-		else
-			err = idpf_vc_xn_forward_reply(adapter, &ctlq_msg);
-
-		post_err = idpf_ctlq_post_rx_buffs(&adapter->hw,
-						   adapter->hw.arq,
-						   &num_recv, &dma_mem);
-
-		/* If post failed clear the only buffer we supplied */
-		if (post_err) {
-			if (dma_mem)
-				dmam_free_coherent(&adapter->pdev->dev,
-						   dma_mem->size, dma_mem->va,
-						   dma_mem->pa);
-			break;
-		}
-
-		/* virtchnl trying to shutdown, stop cleaning */
-		if (err == -ENXIO)
-			break;
-	}
-
-	return err;
+	return libeth_ctlq_xn_send(xn_params);
 }
 
 /**
@@ -782,11 +203,14 @@ static int idpf_wait_for_marker_event(struct idpf_vport *vport)
  */
 static int idpf_send_ver_msg(struct idpf_adapter *adapter)
 {
-	struct idpf_vc_xn_params xn_params = {};
+	struct libeth_ctlq_xn_send_params xn_params = {
+		.timeout_ms	= IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
+		.chnl_opcode	= VIRTCHNL2_OP_VERSION,
+	};
+	struct virtchnl2_version_info *vvi_recv;
 	struct virtchnl2_version_info vvi;
-	ssize_t reply_sz;
 	u32 major, minor;
-	int err = 0;
+	int err;
 
 	if (adapter->virt_ver_maj) {
 		vvi.major = cpu_to_le32(adapter->virt_ver_maj);
@@ -796,24 +220,18 @@ static int idpf_send_ver_msg(struct idpf_adapter *adapter)
 		vvi.minor = cpu_to_le32(IDPF_VIRTCHNL_VERSION_MINOR);
 	}
 
-	xn_params.vc_op = VIRTCHNL2_OP_VERSION;
-	xn_params.send_buf.iov_base = &vvi;
-	xn_params.send_buf.iov_len = sizeof(vvi);
-	xn_params.recv_buf = xn_params.send_buf;
-	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
-
-	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
-	if (reply_sz < 0)
-		return reply_sz;
-	if (reply_sz < sizeof(vvi))
-		return -EIO;
+	err = idpf_send_mb_msg(adapter, &xn_params, &vvi, sizeof(vvi));
+	if (err)
+		return err;
 
-	major = le32_to_cpu(vvi.major);
-	minor = le32_to_cpu(vvi.minor);
+	vvi_recv = xn_params.recv_mem.iov_base;
+	major = le32_to_cpu(vvi_recv->major);
+	minor = le32_to_cpu(vvi_recv->minor);
 
 	if (major > IDPF_VIRTCHNL_VERSION_MAJOR) {
 		dev_warn(&adapter->pdev->dev, "Virtchnl major version greater than supported\n");
-		return -EINVAL;
+		err = -EINVAL;
+		goto free_rx_buf;
 	}
 
 	if (major == IDPF_VIRTCHNL_VERSION_MAJOR &&
@@ -831,6 +249,9 @@ static int idpf_send_ver_msg(struct idpf_adapter *adapter)
 	adapter->virt_ver_maj = major;
 	adapter->virt_ver_min = minor;
 
+free_rx_buf:
+	libeth_ctlq_release_rx_buf(adapter->arq, &xn_params.recv_mem);
+
 	return err;
 }
 
@@ -843,9 +264,12 @@ static int idpf_send_ver_msg(struct idpf_adapter *adapter)
  */
 static int idpf_send_get_caps_msg(struct idpf_adapter *adapter)
 {
+	struct libeth_ctlq_xn_send_params xn_params = {
+		.timeout_ms	= IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
+		.chnl_opcode	= VIRTCHNL2_OP_GET_CAPS,
+	};
 	struct virtchnl2_get_capabilities caps = {};
-	struct idpf_vc_xn_params xn_params = {};
-	ssize_t reply_sz;
+	int err;
 
 	caps.csum_caps =
 		cpu_to_le32(VIRTCHNL2_CAP_TX_CSUM_L3_IPV4	|
@@ -902,18 +326,14 @@ static int idpf_send_get_caps_msg(struct idpf_adapter *adapter)
 			    VIRTCHNL2_CAP_PROMISC		|
 			    VIRTCHNL2_CAP_LOOPBACK);
 
-	xn_params.vc_op = VIRTCHNL2_OP_GET_CAPS;
-	xn_params.send_buf.iov_base = &caps;
-	xn_params.send_buf.iov_len = sizeof(caps);
-	xn_params.recv_buf.iov_base = &adapter->caps;
-	xn_params.recv_buf.iov_len = sizeof(adapter->caps);
-	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
+	err = idpf_send_mb_msg(adapter, &xn_params, &caps, sizeof(caps));
+	if (err)
+		return err;
 
-	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
-	if (reply_sz < 0)
-		return reply_sz;
-	if (reply_sz < sizeof(adapter->caps))
-		return -EIO;
+	memcpy(&adapter->caps, xn_params.recv_mem.iov_base,
+	       sizeof(adapter->caps));
+
+	libeth_ctlq_release_rx_buf(adapter->arq, &xn_params.recv_mem);
 
 	return 0;
 }
@@ -1098,8 +518,10 @@ static int __idpf_queue_reg_init(struct idpf_vport *vport, u32 *reg_vals,
 				 int num_regs, u32 q_type)
 {
 	struct idpf_adapter *adapter = vport->adapter;
+	struct libeth_mmio_info *mmio;
 	int i, j, k = 0;
 
+	mmio = &adapter->ctlq_ctx.mmio_info;
 	switch (q_type) {
 	case VIRTCHNL2_QUEUE_TYPE_TX:
 		for (i = 0; i < vport->num_txq_grp; i++) {
@@ -1107,7 +529,8 @@ static int __idpf_queue_reg_init(struct idpf_vport *vport, u32 *reg_vals,
 
 			for (j = 0; j < tx_qgrp->num_txq && k < num_regs; j++, k++)
 				tx_qgrp->txqs[j]->tail =
-					idpf_get_reg_addr(adapter, reg_vals[k]);
+					libeth_pci_get_mmio_addr(mmio,
+								 reg_vals[k]);
 		}
 		break;
 	case VIRTCHNL2_QUEUE_TYPE_RX:
@@ -1119,8 +542,8 @@ static int __idpf_queue_reg_init(struct idpf_vport *vport, u32 *reg_vals,
 				struct idpf_rx_queue *q;
 
 				q = rx_qgrp->singleq.rxqs[j];
-				q->tail = idpf_get_reg_addr(adapter,
-							    reg_vals[k]);
+				q->tail = libeth_pci_get_mmio_addr(mmio,
+								   reg_vals[k]);
 			}
 		}
 		break;
@@ -1133,8 +556,8 @@ static int __idpf_queue_reg_init(struct idpf_vport *vport, u32 *reg_vals,
 				struct idpf_buf_queue *q;
 
 				q = &rx_qgrp->splitq.bufq_sets[j].bufq;
-				q->tail = idpf_get_reg_addr(adapter,
-							    reg_vals[k]);
+				q->tail = libeth_pci_get_mmio_addr(mmio,
+								   reg_vals[k]);
 			}
 		}
 		break;
@@ -1244,11 +667,13 @@ int idpf_queue_reg_init(struct idpf_vport *vport)
 int idpf_send_create_vport_msg(struct idpf_adapter *adapter,
 			       struct idpf_vport_max_q *max_q)
 {
+	struct libeth_ctlq_xn_send_params xn_params = {
+		.timeout_ms	= IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
+		.chnl_opcode	= VIRTCHNL2_OP_CREATE_VPORT,
+	};
 	struct virtchnl2_create_vport *vport_msg;
-	struct idpf_vc_xn_params xn_params = {};
 	u16 idx = adapter->next_vport;
 	int err, buf_size;
-	ssize_t reply_sz;
 
 	buf_size = sizeof(struct virtchnl2_create_vport);
 	vport_msg = kzalloc(buf_size, GFP_KERNEL);
@@ -1275,27 +700,23 @@ int idpf_send_create_vport_msg(struct idpf_adapter *adapter,
 	}
 
 	if (!adapter->vport_params_recvd[idx]) {
-		adapter->vport_params_recvd[idx] = kzalloc(IDPF_CTLQ_MAX_BUF_LEN,
-							   GFP_KERNEL);
+		adapter->vport_params_recvd[idx] =
+			kzalloc(LIBETH_CTLQ_MAX_BUF_LEN, GFP_KERNEL);
 		if (!adapter->vport_params_recvd[idx]) {
 			err = -ENOMEM;
 			goto rel_buf;
 		}
 	}
 
-	xn_params.vc_op = VIRTCHNL2_OP_CREATE_VPORT;
-	xn_params.send_buf.iov_base = vport_msg;
-	xn_params.send_buf.iov_len = buf_size;
-	xn_params.recv_buf.iov_base = adapter->vport_params_recvd[idx];
-	xn_params.recv_buf.iov_len = IDPF_CTLQ_MAX_BUF_LEN;
-	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
-	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
-	if (reply_sz < 0) {
-		err = reply_sz;
+	err = idpf_send_mb_msg(adapter, &xn_params, vport_msg,
+			       sizeof(*vport_msg));
+	if (err)
 		goto free_vport_params;
-	}
 
-	kfree(vport_msg);
+	memcpy(adapter->vport_params_recvd[idx], xn_params.recv_mem.iov_base,
+	       xn_params.recv_mem.iov_len);
+
+	libeth_ctlq_release_rx_buf(adapter->arq, &xn_params.recv_mem);
 
 	return 0;
 
@@ -1362,19 +783,23 @@ int idpf_check_supported_desc_ids(struct idpf_vport *vport)
  */
 int idpf_send_destroy_vport_msg(struct idpf_vport *vport)
 {
-	struct idpf_vc_xn_params xn_params = {};
+	struct libeth_ctlq_xn_send_params xn_params = {
+		.timeout_ms	= IDPF_VC_XN_MIN_TIMEOUT_MSEC,
+		.chnl_opcode	= VIRTCHNL2_OP_DESTROY_VPORT,
+	};
 	struct virtchnl2_vport v_id;
-	ssize_t reply_sz;
+	int err;
 
 	v_id.vport_id = cpu_to_le32(vport->vport_id);
 
-	xn_params.vc_op = VIRTCHNL2_OP_DESTROY_VPORT;
-	xn_params.send_buf.iov_base = &v_id;
-	xn_params.send_buf.iov_len = sizeof(v_id);
-	xn_params.timeout_ms = IDPF_VC_XN_MIN_TIMEOUT_MSEC;
-	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
+	err = idpf_send_mb_msg(vport->adapter, &xn_params, &v_id, sizeof(v_id));
+	if (err)
+		return err;
+
+	libeth_ctlq_release_rx_buf(vport->adapter->arq,
+				   &xn_params.recv_mem);
 
-	return reply_sz < 0 ? reply_sz : 0;
+	return 0;
 }
 
 /**
@@ -1386,19 +811,23 @@ int idpf_send_destroy_vport_msg(struct idpf_vport *vport)
  */
 int idpf_send_enable_vport_msg(struct idpf_vport *vport)
 {
-	struct idpf_vc_xn_params xn_params = {};
+	struct libeth_ctlq_xn_send_params xn_params = {
+		.timeout_ms	= IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
+		.chnl_opcode	= VIRTCHNL2_OP_ENABLE_VPORT,
+	};
 	struct virtchnl2_vport v_id;
-	ssize_t reply_sz;
+	int err;
 
 	v_id.vport_id = cpu_to_le32(vport->vport_id);
 
-	xn_params.vc_op = VIRTCHNL2_OP_ENABLE_VPORT;
-	xn_params.send_buf.iov_base = &v_id;
-	xn_params.send_buf.iov_len = sizeof(v_id);
-	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
-	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
+	err = idpf_send_mb_msg(vport->adapter, &xn_params, &v_id, sizeof(v_id));
+	if (err)
+		return err;
+
+	libeth_ctlq_release_rx_buf(vport->adapter->arq,
+				   &xn_params.recv_mem);
 
-	return reply_sz < 0 ? reply_sz : 0;
+	return 0;
 }
 
 /**
@@ -1410,19 +839,23 @@ int idpf_send_enable_vport_msg(struct idpf_vport *vport)
  */
 int idpf_send_disable_vport_msg(struct idpf_vport *vport)
 {
-	struct idpf_vc_xn_params xn_params = {};
+	struct libeth_ctlq_xn_send_params xn_params = {
+		.timeout_ms	= IDPF_VC_XN_MIN_TIMEOUT_MSEC,
+		.chnl_opcode	= VIRTCHNL2_OP_DISABLE_VPORT,
+	};
 	struct virtchnl2_vport v_id;
-	ssize_t reply_sz;
+	int err;
 
 	v_id.vport_id = cpu_to_le32(vport->vport_id);
 
-	xn_params.vc_op = VIRTCHNL2_OP_DISABLE_VPORT;
-	xn_params.send_buf.iov_base = &v_id;
-	xn_params.send_buf.iov_len = sizeof(v_id);
-	xn_params.timeout_ms = IDPF_VC_XN_MIN_TIMEOUT_MSEC;
-	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
+	err = idpf_send_mb_msg(vport->adapter, &xn_params, &v_id, sizeof(v_id));
+	if (err)
+		return err;
 
-	return reply_sz < 0 ? reply_sz : 0;
+	libeth_ctlq_release_rx_buf(vport->adapter->arq,
+				   &xn_params.recv_mem);
+
+	return 0;
 }
 
 /**
@@ -1434,13 +867,15 @@ int idpf_send_disable_vport_msg(struct idpf_vport *vport)
  */
 static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
 {
-	struct virtchnl2_config_tx_queues *ctq __free(kfree) = NULL;
+	struct libeth_ctlq_xn_send_params xn_params = {
+		.timeout_ms	= IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
+		.chnl_opcode	= VIRTCHNL2_OP_CONFIG_TX_QUEUES,
+	};
 	struct virtchnl2_txq_info *qi __free(kfree) = NULL;
-	struct idpf_vc_xn_params xn_params = {};
+	struct virtchnl2_config_tx_queues *ctq;
 	u32 config_sz, chunk_sz, buf_sz;
 	int totqs, num_msgs, num_chunks;
-	ssize_t reply_sz;
-	int i, k = 0;
+	int i, k = 0, err = 0;
 
 	totqs = vport->num_txq + vport->num_complq;
 	qi = kcalloc(totqs, sizeof(struct virtchnl2_txq_info), GFP_KERNEL);
@@ -1514,34 +949,38 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
 			   totqs);
 	num_msgs = DIV_ROUND_UP(totqs, num_chunks);
 
-	buf_sz = struct_size(ctq, qinfo, num_chunks);
-	ctq = kzalloc(buf_sz, GFP_KERNEL);
-	if (!ctq)
-		return -ENOMEM;
-
-	xn_params.vc_op = VIRTCHNL2_OP_CONFIG_TX_QUEUES;
-	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
-
 	for (i = 0, k = 0; i < num_msgs; i++) {
-		memset(ctq, 0, buf_sz);
+		buf_sz = struct_size(ctq, qinfo, num_chunks);
+		ctq = kzalloc(buf_sz, GFP_KERNEL);
+		if (!ctq)
+			return -ENOMEM;
+
 		ctq->vport_id = cpu_to_le32(vport->vport_id);
 		ctq->num_qinfo = cpu_to_le16(num_chunks);
 		memcpy(ctq->qinfo, &qi[k], chunk_sz * num_chunks);
 
-		xn_params.send_buf.iov_base = ctq;
-		xn_params.send_buf.iov_len = buf_sz;
-		reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
-		if (reply_sz < 0)
-			return reply_sz;
+		err = idpf_send_mb_msg(vport->adapter, &xn_params, ctq, buf_sz);
+		if (err)
+			goto rel_last_buf;
+
+		libeth_ctlq_release_rx_buf(vport->adapter->arq,
+					   &xn_params.recv_mem);
 
 		k += num_chunks;
 		totqs -= num_chunks;
 		num_chunks = min(num_chunks, totqs);
-		/* Recalculate buffer size */
-		buf_sz = struct_size(ctq, qinfo, num_chunks);
 	}
 
-	return 0;
+rel_last_buf:
+	/* Only the last buffer might be of size LIBETH_CP_TX_COPYBREAK or less.
+	 * For buffers larger than LIBETH_CP_TX_COPYBREAK, are DMA mapped
+	 * and released on mailbox cleanup. Smaller buffers are memcopied into
+	 * the pre-allocated DMA buffers and are released here.
+	 */
+	if (num_msgs && libeth_cp_can_send_onstack(buf_sz))
+		kfree(ctq);
+
+	return err;
 }
 
 /**
@@ -1553,13 +992,15 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
  */
 static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 {
-	struct virtchnl2_config_rx_queues *crq __free(kfree) = NULL;
+	struct libeth_ctlq_xn_send_params xn_params = {
+		.timeout_ms	= IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
+		.chnl_opcode	= VIRTCHNL2_OP_CONFIG_RX_QUEUES,
+	};
 	struct virtchnl2_rxq_info *qi __free(kfree) = NULL;
-	struct idpf_vc_xn_params xn_params = {};
+	struct virtchnl2_config_rx_queues *crq;
 	u32 config_sz, chunk_sz, buf_sz;
 	int totqs, num_msgs, num_chunks;
-	ssize_t reply_sz;
-	int i, k = 0;
+	int i, k = 0, err = 0;
 
 	totqs = vport->num_rxq + vport->num_bufq;
 	qi = kcalloc(totqs, sizeof(struct virtchnl2_rxq_info), GFP_KERNEL);
@@ -1666,34 +1107,33 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 			   totqs);
 	num_msgs = DIV_ROUND_UP(totqs, num_chunks);
 
-	buf_sz = struct_size(crq, qinfo, num_chunks);
-	crq = kzalloc(buf_sz, GFP_KERNEL);
-	if (!crq)
-		return -ENOMEM;
-
-	xn_params.vc_op = VIRTCHNL2_OP_CONFIG_RX_QUEUES;
-	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
-
 	for (i = 0, k = 0; i < num_msgs; i++) {
-		memset(crq, 0, buf_sz);
+		buf_sz = struct_size(crq, qinfo, num_chunks);
+		crq = kzalloc(buf_sz, GFP_KERNEL);
+		if (!crq)
+			return -ENOMEM;
+
 		crq->vport_id = cpu_to_le32(vport->vport_id);
 		crq->num_qinfo = cpu_to_le16(num_chunks);
 		memcpy(crq->qinfo, &qi[k], chunk_sz * num_chunks);
 
-		xn_params.send_buf.iov_base = crq;
-		xn_params.send_buf.iov_len = buf_sz;
-		reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
-		if (reply_sz < 0)
-			return reply_sz;
+		err = idpf_send_mb_msg(vport->adapter, &xn_params, crq, buf_sz);
+		if (err)
+			goto rel_last_buf;
+
+		libeth_ctlq_release_rx_buf(vport->adapter->arq,
+					   &xn_params.recv_mem);
 
 		k += num_chunks;
 		totqs -= num_chunks;
 		num_chunks = min(num_chunks, totqs);
-		/* Recalculate buffer size */
-		buf_sz = struct_size(crq, qinfo, num_chunks);
 	}
 
-	return 0;
+rel_last_buf:
+	if (num_msgs && libeth_cp_can_send_onstack(buf_sz))
+		kfree(crq);
+
+	return err;
 }
 
 /**
@@ -1707,14 +1147,18 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
  */
 static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, bool ena)
 {
-	struct virtchnl2_del_ena_dis_queues *eq __free(kfree) = NULL;
+	struct libeth_ctlq_xn_send_params xn_params = {
+		.timeout_ms	= ena ? IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC :
+					IDPF_VC_XN_MIN_TIMEOUT_MSEC,
+		.chnl_opcode	= ena ? VIRTCHNL2_OP_ENABLE_QUEUES :
+					VIRTCHNL2_OP_DISABLE_QUEUES,
+	};
 	struct virtchnl2_queue_chunk *qc __free(kfree) = NULL;
 	u32 num_msgs, num_chunks, num_txq, num_rxq, num_q;
-	struct idpf_vc_xn_params xn_params = {};
+	struct virtchnl2_del_ena_dis_queues *eq;
 	struct virtchnl2_queue_chunks *qcs;
 	u32 config_sz, chunk_sz, buf_sz;
-	ssize_t reply_sz;
-	int i, j, k = 0;
+	int i, j, k = 0, err = 0;
 
 	num_txq = vport->num_txq + vport->num_complq;
 	num_rxq = vport->num_rxq + vport->num_bufq;
@@ -1806,40 +1250,34 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, bool ena)
 			   num_q);
 	num_msgs = DIV_ROUND_UP(num_q, num_chunks);
 
-	buf_sz = struct_size(eq, chunks.chunks, num_chunks);
-	eq = kzalloc(buf_sz, GFP_KERNEL);
-	if (!eq)
-		return -ENOMEM;
-
-	if (ena) {
-		xn_params.vc_op = VIRTCHNL2_OP_ENABLE_QUEUES;
-		xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
-	} else {
-		xn_params.vc_op = VIRTCHNL2_OP_DISABLE_QUEUES;
-		xn_params.timeout_ms = IDPF_VC_XN_MIN_TIMEOUT_MSEC;
-	}
-
 	for (i = 0, k = 0; i < num_msgs; i++) {
-		memset(eq, 0, buf_sz);
+		buf_sz = struct_size(eq, chunks.chunks, num_chunks);
+		eq = kzalloc(buf_sz, GFP_KERNEL);
+		if (!eq)
+			return -ENOMEM;
+
 		eq->vport_id = cpu_to_le32(vport->vport_id);
 		eq->chunks.num_chunks = cpu_to_le16(num_chunks);
 		qcs = &eq->chunks;
 		memcpy(qcs->chunks, &qc[k], chunk_sz * num_chunks);
 
-		xn_params.send_buf.iov_base = eq;
-		xn_params.send_buf.iov_len = buf_sz;
-		reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
-		if (reply_sz < 0)
-			return reply_sz;
+		err = idpf_send_mb_msg(vport->adapter, &xn_params, eq, buf_sz);
+		if (err)
+			goto rel_last_buf;
+
+		libeth_ctlq_release_rx_buf(vport->adapter->arq,
+					   &xn_params.recv_mem);
 
 		k += num_chunks;
 		num_q -= num_chunks;
 		num_chunks = min(num_chunks, num_q);
-		/* Recalculate buffer size */
-		buf_sz = struct_size(eq, chunks.chunks, num_chunks);
 	}
 
-	return 0;
+rel_last_buf:
+	if (num_msgs && libeth_cp_can_send_onstack(buf_sz))
+		kfree(eq);
+
+	return err;
 }
 
 /**
@@ -1853,13 +1291,17 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, bool ena)
  */
 int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 {
-	struct virtchnl2_queue_vector_maps *vqvm __free(kfree) = NULL;
+	struct libeth_ctlq_xn_send_params xn_params = {
+		.timeout_ms =	map ? IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC :
+				      IDPF_VC_XN_MIN_TIMEOUT_MSEC,
+		.chnl_opcode =	map ? VIRTCHNL2_OP_MAP_QUEUE_VECTOR :
+				      VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR,
+	};
 	struct virtchnl2_queue_vector *vqv __free(kfree) = NULL;
-	struct idpf_vc_xn_params xn_params = {};
+	struct virtchnl2_queue_vector_maps *vqvm;
 	u32 config_sz, chunk_sz, buf_sz;
 	u32 num_msgs, num_chunks, num_q;
-	ssize_t reply_sz;
-	int i, j, k = 0;
+	int i, j, k = 0, err = 0;
 
 	num_q = vport->num_txq + vport->num_rxq;
 
@@ -1934,39 +1376,34 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 			   num_q);
 	num_msgs = DIV_ROUND_UP(num_q, num_chunks);
 
-	buf_sz = struct_size(vqvm, qv_maps, num_chunks);
-	vqvm = kzalloc(buf_sz, GFP_KERNEL);
-	if (!vqvm)
-		return -ENOMEM;
-
-	if (map) {
-		xn_params.vc_op = VIRTCHNL2_OP_MAP_QUEUE_VECTOR;
-		xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
-	} else {
-		xn_params.vc_op = VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR;
-		xn_params.timeout_ms = IDPF_VC_XN_MIN_TIMEOUT_MSEC;
-	}
-
 	for (i = 0, k = 0; i < num_msgs; i++) {
-		memset(vqvm, 0, buf_sz);
-		xn_params.send_buf.iov_base = vqvm;
-		xn_params.send_buf.iov_len = buf_sz;
+		buf_sz = struct_size(vqvm, qv_maps, num_chunks);
+		vqvm = kzalloc(buf_sz, GFP_KERNEL);
+		if (!vqvm)
+			return -ENOMEM;
+
 		vqvm->vport_id = cpu_to_le32(vport->vport_id);
 		vqvm->num_qv_maps = cpu_to_le16(num_chunks);
 		memcpy(vqvm->qv_maps, &vqv[k], chunk_sz * num_chunks);
 
-		reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
-		if (reply_sz < 0)
-			return reply_sz;
+		err = idpf_send_mb_msg(vport->adapter, &xn_params, vqvm,
+				       buf_sz);
+		if (err)
+			goto rel_last_buf;
+
+		libeth_ctlq_release_rx_buf(vport->adapter->arq,
+					   &xn_params.recv_mem);
 
 		k += num_chunks;
 		num_q -= num_chunks;
 		num_chunks = min(num_chunks, num_q);
-		/* Recalculate buffer size */
-		buf_sz = struct_size(vqvm, qv_maps, num_chunks);
 	}
 
-	return 0;
+rel_last_buf:
+	if (num_msgs && libeth_cp_can_send_onstack(buf_sz))
+		kfree(vqvm);
+
+	return err;
 }
 
 /**
@@ -2040,21 +1477,24 @@ static void idpf_convert_reg_to_queue_chunks(struct virtchnl2_queue_chunk *dchun
  */
 int idpf_send_delete_queues_msg(struct idpf_vport *vport)
 {
-	struct virtchnl2_del_ena_dis_queues *eq __free(kfree) = NULL;
+	struct libeth_ctlq_xn_send_params xn_params = {
+		.timeout_ms	= IDPF_VC_XN_MIN_TIMEOUT_MSEC,
+		.chnl_opcode	= VIRTCHNL2_OP_DEL_QUEUES,
+	};
+	struct idpf_adapter *adapter = vport->adapter;
 	struct virtchnl2_create_vport *vport_params;
 	struct virtchnl2_queue_reg_chunks *chunks;
-	struct idpf_vc_xn_params xn_params = {};
+	struct virtchnl2_del_ena_dis_queues *eq;
 	struct idpf_vport_config *vport_config;
 	u16 vport_idx = vport->idx;
-	ssize_t reply_sz;
+	int buf_size, err;
 	u16 num_chunks;
-	int buf_size;
 
-	vport_config = vport->adapter->vport_config[vport_idx];
+	vport_config = adapter->vport_config[vport_idx];
 	if (vport_config->req_qs_chunks) {
 		chunks = &vport_config->req_qs_chunks->chunks;
 	} else {
-		vport_params = vport->adapter->vport_params_recvd[vport_idx];
+		vport_params = adapter->vport_params_recvd[vport_idx];
 		chunks = &vport_params->chunks;
 	}
 
@@ -2071,13 +1511,17 @@ int idpf_send_delete_queues_msg(struct idpf_vport *vport)
 	idpf_convert_reg_to_queue_chunks(eq->chunks.chunks, chunks->chunks,
 					 num_chunks);
 
-	xn_params.vc_op = VIRTCHNL2_OP_DEL_QUEUES;
-	xn_params.timeout_ms = IDPF_VC_XN_MIN_TIMEOUT_MSEC;
-	xn_params.send_buf.iov_base = eq;
-	xn_params.send_buf.iov_len = buf_size;
-	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
+	err = idpf_send_mb_msg(adapter, &xn_params, eq, buf_size);
+	if (err)
+		goto rel_buf;
+
+	libeth_ctlq_release_rx_buf(adapter->arq, &xn_params.recv_mem);
+
+rel_buf:
+	if (libeth_cp_can_send_onstack(buf_size))
+		kfree(eq);
 
-	return reply_sz < 0 ? reply_sz : 0;
+	return err;
 }
 
 /**
@@ -2112,19 +1556,18 @@ int idpf_send_config_queues_msg(struct idpf_vport *vport)
 int idpf_send_add_queues_msg(const struct idpf_vport *vport, u16 num_tx_q,
 			     u16 num_complq, u16 num_rx_q, u16 num_rx_bufq)
 {
-	struct virtchnl2_add_queues *vc_msg __free(kfree) = NULL;
-	struct idpf_vc_xn_params xn_params = {};
+	struct libeth_ctlq_xn_send_params xn_params = {
+		.timeout_ms	= IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
+		.chnl_opcode	= VIRTCHNL2_OP_ADD_QUEUES,
+	};
+	struct idpf_adapter *adapter = vport->adapter;
 	struct idpf_vport_config *vport_config;
+	struct virtchnl2_add_queues *vc_msg;
 	struct virtchnl2_add_queues aq = {};
 	u16 vport_idx = vport->idx;
-	ssize_t reply_sz;
-	int size;
+	int size, err;
 
-	vc_msg = kzalloc(IDPF_CTLQ_MAX_BUF_LEN, GFP_KERNEL);
-	if (!vc_msg)
-		return -ENOMEM;
-
-	vport_config = vport->adapter->vport_config[vport_idx];
+	vport_config = adapter->vport_config[vport_idx];
 	kfree(vport_config->req_qs_chunks);
 	vport_config->req_qs_chunks = NULL;
 
@@ -2134,33 +1577,32 @@ int idpf_send_add_queues_msg(const struct idpf_vport *vport, u16 num_tx_q,
 	aq.num_rx_q = cpu_to_le16(num_rx_q);
 	aq.num_rx_bufq = cpu_to_le16(num_rx_bufq);
 
-	xn_params.vc_op = VIRTCHNL2_OP_ADD_QUEUES;
-	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
-	xn_params.send_buf.iov_base = &aq;
-	xn_params.send_buf.iov_len = sizeof(aq);
-	xn_params.recv_buf.iov_base = vc_msg;
-	xn_params.recv_buf.iov_len = IDPF_CTLQ_MAX_BUF_LEN;
-	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
-	if (reply_sz < 0)
-		return reply_sz;
+	err = idpf_send_mb_msg(adapter, &xn_params, &aq, sizeof(aq));
+	if (err)
+		return err;
+
+	vc_msg = xn_params.recv_mem.iov_base;
 
 	/* compare vc_msg num queues with vport num queues */
 	if (le16_to_cpu(vc_msg->num_tx_q) != num_tx_q ||
 	    le16_to_cpu(vc_msg->num_rx_q) != num_rx_q ||
 	    le16_to_cpu(vc_msg->num_tx_complq) != num_complq ||
-	    le16_to_cpu(vc_msg->num_rx_bufq) != num_rx_bufq)
-		return -EINVAL;
+	    le16_to_cpu(vc_msg->num_rx_bufq) != num_rx_bufq) {
+		err = -EINVAL;
+		goto free_rx_buf;
+	}
 
 	size = struct_size(vc_msg, chunks.chunks,
 			   le16_to_cpu(vc_msg->chunks.num_chunks));
-	if (reply_sz < size)
-		return -EIO;
 
 	vport_config->req_qs_chunks = kmemdup(vc_msg, size, GFP_KERNEL);
 	if (!vport_config->req_qs_chunks)
-		return -ENOMEM;
+		err = -ENOMEM;
 
-	return 0;
+free_rx_buf:
+	libeth_ctlq_release_rx_buf(adapter->arq, &xn_params.recv_mem);
+
+	return err;
 }
 
 /**
@@ -2172,49 +1614,43 @@ int idpf_send_add_queues_msg(const struct idpf_vport *vport, u16 num_tx_q,
  */
 int idpf_send_alloc_vectors_msg(struct idpf_adapter *adapter, u16 num_vectors)
 {
-	struct virtchnl2_alloc_vectors *rcvd_vec __free(kfree) = NULL;
-	struct idpf_vc_xn_params xn_params = {};
+	struct libeth_ctlq_xn_send_params xn_params = {
+		.timeout_ms	= IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
+		.chnl_opcode	= VIRTCHNL2_OP_ALLOC_VECTORS,
+	};
+	struct virtchnl2_alloc_vectors *rcvd_vec;
 	struct virtchnl2_alloc_vectors ac = {};
-	ssize_t reply_sz;
 	u16 num_vchunks;
-	int size;
+	int size, err;
 
 	ac.num_vectors = cpu_to_le16(num_vectors);
 
-	rcvd_vec = kzalloc(IDPF_CTLQ_MAX_BUF_LEN, GFP_KERNEL);
-	if (!rcvd_vec)
-		return -ENOMEM;
+	err = idpf_send_mb_msg(adapter, &xn_params, &ac, sizeof(ac));
+	if (err)
+		return err;
 
-	xn_params.vc_op = VIRTCHNL2_OP_ALLOC_VECTORS;
-	xn_params.send_buf.iov_base = &ac;
-	xn_params.send_buf.iov_len = sizeof(ac);
-	xn_params.recv_buf.iov_base = rcvd_vec;
-	xn_params.recv_buf.iov_len = IDPF_CTLQ_MAX_BUF_LEN;
-	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
-	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
-	if (reply_sz < 0)
-		return reply_sz;
+	rcvd_vec = xn_params.recv_mem.iov_base;
 
 	num_vchunks = le16_to_cpu(rcvd_vec->vchunks.num_vchunks);
 	size = struct_size(rcvd_vec, vchunks.vchunks, num_vchunks);
-	if (reply_sz < size)
-		return -EIO;
-
-	if (size > IDPF_CTLQ_MAX_BUF_LEN)
-		return -EINVAL;
 
 	kfree(adapter->req_vec_chunks);
 	adapter->req_vec_chunks = kmemdup(rcvd_vec, size, GFP_KERNEL);
-	if (!adapter->req_vec_chunks)
-		return -ENOMEM;
+	if (!adapter->req_vec_chunks) {
+		err = -ENOMEM;
+		goto free_rx_buf;
+	}
 
 	if (le16_to_cpu(adapter->req_vec_chunks->num_vectors) < num_vectors) {
 		kfree(adapter->req_vec_chunks);
 		adapter->req_vec_chunks = NULL;
-		return -EINVAL;
+		err = -EINVAL;
 	}
 
-	return 0;
+free_rx_buf:
+	libeth_ctlq_release_rx_buf(adapter->arq, &xn_params.recv_mem);
+
+	return err;
 }
 
 /**
@@ -2226,25 +1662,33 @@ int idpf_send_alloc_vectors_msg(struct idpf_adapter *adapter, u16 num_vectors)
 int idpf_send_dealloc_vectors_msg(struct idpf_adapter *adapter)
 {
 	struct virtchnl2_alloc_vectors *ac = adapter->req_vec_chunks;
-	struct virtchnl2_vector_chunks *vcs = &ac->vchunks;
-	struct idpf_vc_xn_params xn_params = {};
-	ssize_t reply_sz;
-	int buf_size;
+	struct libeth_ctlq_xn_send_params xn_params = {
+		.timeout_ms	= IDPF_VC_XN_MIN_TIMEOUT_MSEC,
+		.chnl_opcode	= VIRTCHNL2_OP_DEALLOC_VECTORS,
+	};
+	struct virtchnl2_vector_chunks *vcs;
+	int buf_size, err;
 
-	buf_size = struct_size(vcs, vchunks, le16_to_cpu(vcs->num_vchunks));
+	buf_size = struct_size(&ac->vchunks, vchunks,
+			       le16_to_cpu(ac->vchunks.num_vchunks));
+	vcs = kmemdup(&ac->vchunks, buf_size, GFP_KERNEL);
+	if (!vcs)
+		return -ENOMEM;
 
-	xn_params.vc_op = VIRTCHNL2_OP_DEALLOC_VECTORS;
-	xn_params.send_buf.iov_base = vcs;
-	xn_params.send_buf.iov_len = buf_size;
-	xn_params.timeout_ms = IDPF_VC_XN_MIN_TIMEOUT_MSEC;
-	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
-	if (reply_sz < 0)
-		return reply_sz;
+	err = idpf_send_mb_msg(adapter, &xn_params, vcs, buf_size);
+	if (err)
+		goto rel_buf;
 
 	kfree(adapter->req_vec_chunks);
 	adapter->req_vec_chunks = NULL;
 
-	return 0;
+	libeth_ctlq_release_rx_buf(adapter->arq, &xn_params.recv_mem);
+
+rel_buf:
+	if (libeth_cp_can_send_onstack(buf_size))
+		kfree(vcs);
+
+	return err;
 }
 
 /**
@@ -2267,18 +1711,22 @@ static int idpf_get_max_vfs(struct idpf_adapter *adapter)
  */
 int idpf_send_set_sriov_vfs_msg(struct idpf_adapter *adapter, u16 num_vfs)
 {
+	struct libeth_ctlq_xn_send_params xn_params = {
+		.timeout_ms	= IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
+		.chnl_opcode	= VIRTCHNL2_OP_SET_SRIOV_VFS,
+	};
 	struct virtchnl2_sriov_vfs_info svi = {};
-	struct idpf_vc_xn_params xn_params = {};
-	ssize_t reply_sz;
+	int err;
 
 	svi.num_vfs = cpu_to_le16(num_vfs);
-	xn_params.vc_op = VIRTCHNL2_OP_SET_SRIOV_VFS;
-	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
-	xn_params.send_buf.iov_base = &svi;
-	xn_params.send_buf.iov_len = sizeof(svi);
-	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
 
-	return reply_sz < 0 ? reply_sz : 0;
+	err = idpf_send_mb_msg(adapter, &xn_params, &svi, sizeof(svi));
+	if (err)
+		return err;
+
+	libeth_ctlq_release_rx_buf(adapter->arq, &xn_params.recv_mem);
+
+	return 0;
 }
 
 /**
@@ -2289,50 +1737,51 @@ int idpf_send_set_sriov_vfs_msg(struct idpf_adapter *adapter, u16 num_vfs)
  */
 int idpf_send_get_stats_msg(struct idpf_vport *vport)
 {
+	struct libeth_ctlq_xn_send_params xn_params = {
+		.timeout_ms	= IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
+		.chnl_opcode	= VIRTCHNL2_OP_GET_STATS,
+	};
 	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
 	struct rtnl_link_stats64 *netstats = &np->netstats;
-	struct virtchnl2_vport_stats stats_msg = {};
-	struct idpf_vc_xn_params xn_params = {};
-	ssize_t reply_sz;
-
+	struct virtchnl2_vport_stats *stats_recv;
+	struct virtchnl2_vport_stats stats = {};
+	int err;
 
 	/* Don't send get_stats message if the link is down */
 	if (np->state <= __IDPF_VPORT_DOWN)
 		return 0;
 
-	stats_msg.vport_id = cpu_to_le32(vport->vport_id);
-
-	xn_params.vc_op = VIRTCHNL2_OP_GET_STATS;
-	xn_params.send_buf.iov_base = &stats_msg;
-	xn_params.send_buf.iov_len = sizeof(stats_msg);
-	xn_params.recv_buf = xn_params.send_buf;
-	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
+	stats.vport_id = cpu_to_le32(vport->vport_id);
 
-	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
-	if (reply_sz < 0)
-		return reply_sz;
-	if (reply_sz < sizeof(stats_msg))
-		return -EIO;
+	err = idpf_send_mb_msg(vport->adapter, &xn_params, &stats,
+			       sizeof(stats));
+	if (err)
+		return err;
 
 	spin_lock_bh(&np->stats_lock);
 
-	netstats->rx_packets = le64_to_cpu(stats_msg.rx_unicast) +
-			       le64_to_cpu(stats_msg.rx_multicast) +
-			       le64_to_cpu(stats_msg.rx_broadcast);
-	netstats->tx_packets = le64_to_cpu(stats_msg.tx_unicast) +
-			       le64_to_cpu(stats_msg.tx_multicast) +
-			       le64_to_cpu(stats_msg.tx_broadcast);
-	netstats->rx_bytes = le64_to_cpu(stats_msg.rx_bytes);
-	netstats->tx_bytes = le64_to_cpu(stats_msg.tx_bytes);
-	netstats->rx_errors = le64_to_cpu(stats_msg.rx_errors);
-	netstats->tx_errors = le64_to_cpu(stats_msg.tx_errors);
-	netstats->rx_dropped = le64_to_cpu(stats_msg.rx_discards);
-	netstats->tx_dropped = le64_to_cpu(stats_msg.tx_discards);
-
-	vport->port_stats.vport_stats = stats_msg;
+	stats_recv = xn_params.recv_mem.iov_base;
+
+	netstats->rx_packets = le64_to_cpu(stats_recv->rx_unicast) +
+			       le64_to_cpu(stats_recv->rx_multicast) +
+			       le64_to_cpu(stats_recv->rx_broadcast);
+	netstats->tx_packets = le64_to_cpu(stats_recv->tx_unicast) +
+			       le64_to_cpu(stats_recv->tx_multicast) +
+			       le64_to_cpu(stats_recv->tx_broadcast);
+	netstats->rx_bytes = le64_to_cpu(stats_recv->rx_bytes);
+	netstats->tx_bytes = le64_to_cpu(stats_recv->tx_bytes);
+	netstats->rx_errors = le64_to_cpu(stats_recv->rx_errors);
+	netstats->tx_errors = le64_to_cpu(stats_recv->tx_errors);
+	netstats->rx_dropped = le64_to_cpu(stats_recv->rx_discards);
+	netstats->tx_dropped = le64_to_cpu(stats_recv->tx_discards);
+
+	vport->port_stats.vport_stats = *stats_recv;
 
 	spin_unlock_bh(&np->stats_lock);
 
+	libeth_ctlq_release_rx_buf(vport->adapter->arq,
+				   &xn_params.recv_mem);
+
 	return 0;
 }
 
@@ -2345,52 +1794,44 @@ int idpf_send_get_stats_msg(struct idpf_vport *vport)
  */
 int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport, bool get)
 {
-	struct virtchnl2_rss_lut *recv_rl __free(kfree) = NULL;
-	struct virtchnl2_rss_lut *rl __free(kfree) = NULL;
-	struct idpf_vc_xn_params xn_params = {};
+	struct libeth_ctlq_xn_send_params xn_params = {
+		.timeout_ms	= IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
+		.chnl_opcode	= get ? VIRTCHNL2_OP_GET_RSS_LUT :
+					VIRTCHNL2_OP_SET_RSS_LUT,
+	};
+	struct idpf_adapter *adapter = vport->adapter;
+	struct virtchnl2_rss_lut *rl, *recv_rl;
 	struct idpf_rss_data *rss_data;
 	int buf_size, lut_buf_size;
-	ssize_t reply_sz;
-	int i;
+	u16 recv_len;
+	int i, err;
 
-	rss_data =
-		&vport->adapter->vport_config[vport->idx]->user_config.rss_data;
+	rss_data = &adapter->vport_config[vport->idx]->user_config.rss_data;
 	buf_size = struct_size(rl, lut, rss_data->rss_lut_size);
 	rl = kzalloc(buf_size, GFP_KERNEL);
 	if (!rl)
 		return -ENOMEM;
 
 	rl->vport_id = cpu_to_le32(vport->vport_id);
+	rl->lut_entries = cpu_to_le16(rss_data->rss_lut_size);
+	for (i = 0; i < rss_data->rss_lut_size; i++)
+		rl->lut[i] = cpu_to_le32(rss_data->rss_lut[i]);
 
-	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
-	xn_params.send_buf.iov_base = rl;
-	xn_params.send_buf.iov_len = buf_size;
-
-	if (get) {
-		recv_rl = kzalloc(IDPF_CTLQ_MAX_BUF_LEN, GFP_KERNEL);
-		if (!recv_rl)
-			return -ENOMEM;
-		xn_params.vc_op = VIRTCHNL2_OP_GET_RSS_LUT;
-		xn_params.recv_buf.iov_base = recv_rl;
-		xn_params.recv_buf.iov_len = IDPF_CTLQ_MAX_BUF_LEN;
-	} else {
-		rl->lut_entries = cpu_to_le16(rss_data->rss_lut_size);
-		for (i = 0; i < rss_data->rss_lut_size; i++)
-			rl->lut[i] = cpu_to_le32(rss_data->rss_lut[i]);
+	err = idpf_send_mb_msg(adapter, &xn_params, rl, buf_size);
+	if (err)
+		goto free_tx_buf;
 
-		xn_params.vc_op = VIRTCHNL2_OP_SET_RSS_LUT;
-	}
-	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
-	if (reply_sz < 0)
-		return reply_sz;
 	if (!get)
-		return 0;
-	if (reply_sz < sizeof(struct virtchnl2_rss_lut))
-		return -EIO;
+		goto free_rx_buf;
+
+	recv_rl = xn_params.recv_mem.iov_base;
+	recv_len = xn_params.recv_mem.iov_len;
 
 	lut_buf_size = le16_to_cpu(recv_rl->lut_entries) * sizeof(u32);
-	if (reply_sz < lut_buf_size)
-		return -EIO;
+	if (recv_len < lut_buf_size) {
+		err = -EIO;
+		goto free_rx_buf;
+	}
 
 	/* size didn't change, we can reuse existing lut buf */
 	if (rss_data->rss_lut_size == le16_to_cpu(recv_rl->lut_entries))
@@ -2402,13 +1843,19 @@ int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport, bool get)
 	rss_data->rss_lut = kzalloc(lut_buf_size, GFP_KERNEL);
 	if (!rss_data->rss_lut) {
 		rss_data->rss_lut_size = 0;
-		return -ENOMEM;
+		err = -ENOMEM;
+		goto free_rx_buf;
 	}
 
 do_memcpy:
 	memcpy(rss_data->rss_lut, recv_rl->lut, rss_data->rss_lut_size);
+free_rx_buf:
+	libeth_ctlq_release_rx_buf(adapter->arq, &xn_params.recv_mem);
+free_tx_buf:
+	if (libeth_cp_can_send_onstack(buf_size))
+		kfree(rl);
 
-	return 0;
+	return err;
 }
 
 /**
@@ -2420,53 +1867,44 @@ int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport, bool get)
  */
 int idpf_send_get_set_rss_key_msg(struct idpf_vport *vport, bool get)
 {
-	struct virtchnl2_rss_key *recv_rk __free(kfree) = NULL;
-	struct virtchnl2_rss_key *rk __free(kfree) = NULL;
-	struct idpf_vc_xn_params xn_params = {};
+	struct libeth_ctlq_xn_send_params xn_params = {
+		.timeout_ms	= IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
+		.chnl_opcode	= get ? VIRTCHNL2_OP_GET_RSS_KEY :
+					VIRTCHNL2_OP_SET_RSS_KEY,
+	};
+	struct idpf_adapter *adapter = vport->adapter;
+	struct virtchnl2_rss_key *rk, *recv_rk;
 	struct idpf_rss_data *rss_data;
-	ssize_t reply_sz;
-	int i, buf_size;
-	u16 key_size;
+	u16 key_size, recv_len;
+	int i, buf_size, err;
 
-	rss_data =
-		&vport->adapter->vport_config[vport->idx]->user_config.rss_data;
+	rss_data = &adapter->vport_config[vport->idx]->user_config.rss_data;
 	buf_size = struct_size(rk, key_flex, rss_data->rss_key_size);
 	rk = kzalloc(buf_size, GFP_KERNEL);
 	if (!rk)
 		return -ENOMEM;
 
 	rk->vport_id = cpu_to_le32(vport->vport_id);
-	xn_params.send_buf.iov_base = rk;
-	xn_params.send_buf.iov_len = buf_size;
-	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
-	if (get) {
-		recv_rk = kzalloc(IDPF_CTLQ_MAX_BUF_LEN, GFP_KERNEL);
-		if (!recv_rk)
-			return -ENOMEM;
+	rk->key_len = cpu_to_le16(rss_data->rss_key_size);
+	for (i = 0; i < rss_data->rss_key_size; i++)
+		rk->key_flex[i] = rss_data->rss_key[i];
 
-		xn_params.vc_op = VIRTCHNL2_OP_GET_RSS_KEY;
-		xn_params.recv_buf.iov_base = recv_rk;
-		xn_params.recv_buf.iov_len = IDPF_CTLQ_MAX_BUF_LEN;
-	} else {
-		rk->key_len = cpu_to_le16(rss_data->rss_key_size);
-		for (i = 0; i < rss_data->rss_key_size; i++)
-			rk->key_flex[i] = rss_data->rss_key[i];
-
-		xn_params.vc_op = VIRTCHNL2_OP_SET_RSS_KEY;
-	}
+	err = idpf_send_mb_msg(adapter, &xn_params, rk, buf_size);
+	if (err)
+		goto free_tx_buf;
 
-	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
-	if (reply_sz < 0)
-		return reply_sz;
 	if (!get)
-		return 0;
-	if (reply_sz < sizeof(struct virtchnl2_rss_key))
-		return -EIO;
+		goto free_rx_buf;
+
+	recv_rk = xn_params.recv_mem.iov_base;
+	recv_len = xn_params.recv_mem.iov_len;
 
 	key_size = min_t(u16, NETDEV_RSS_KEY_LEN,
 			 le16_to_cpu(recv_rk->key_len));
-	if (reply_sz < key_size)
-		return -EIO;
+	if (recv_len < key_size) {
+		err = -EIO;
+		goto free_rx_buf;
+	}
 
 	/* key len didn't change, reuse existing buf */
 	if (rss_data->rss_key_size == key_size)
@@ -2477,13 +1915,19 @@ int idpf_send_get_set_rss_key_msg(struct idpf_vport *vport, bool get)
 	rss_data->rss_key = kzalloc(key_size, GFP_KERNEL);
 	if (!rss_data->rss_key) {
 		rss_data->rss_key_size = 0;
-		return -ENOMEM;
+		err = -ENOMEM;
+		goto free_rx_buf;
 	}
 
 do_memcpy:
 	memcpy(rss_data->rss_key, recv_rk->key_flex, rss_data->rss_key_size);
+free_rx_buf:
+	libeth_ctlq_release_rx_buf(adapter->arq, &xn_params.recv_mem);
+free_tx_buf:
+	if (libeth_cp_can_send_onstack(buf_size))
+		kfree(rk);
 
-	return 0;
+	return err;
 }
 
 /**
@@ -2548,15 +1992,18 @@ static void idpf_finalize_ptype_lookup(struct libeth_rx_pt *ptype)
  */
 int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
 {
-	struct virtchnl2_get_ptype_info *get_ptype_info __free(kfree) = NULL;
-	struct virtchnl2_get_ptype_info *ptype_info __free(kfree) = NULL;
+	struct libeth_ctlq_xn_send_params xn_params = {
+		.timeout_ms	= IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
+		.chnl_opcode	= VIRTCHNL2_OP_GET_PTYPE_INFO,
+	};
 	struct libeth_rx_pt *ptype_lkup __free(kfree) = NULL;
+	struct virtchnl2_get_ptype_info *get_ptype_info;
 	int max_ptype, ptypes_recvd = 0, ptype_offset;
 	struct idpf_adapter *adapter = vport->adapter;
-	struct idpf_vc_xn_params xn_params = {};
+	struct virtchnl2_get_ptype_info *ptype_info;
+	int buf_size = sizeof(*get_ptype_info);
 	u16 next_ptype_id = 0;
-	ssize_t reply_sz;
-	int i, j, k;
+	int i, j, k, err = 0;
 
 	if (vport->rx_ptype_lkup)
 		return 0;
@@ -2570,22 +2017,11 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
 	if (!ptype_lkup)
 		return -ENOMEM;
 
-	get_ptype_info = kzalloc(sizeof(*get_ptype_info), GFP_KERNEL);
-	if (!get_ptype_info)
-		return -ENOMEM;
-
-	ptype_info = kzalloc(IDPF_CTLQ_MAX_BUF_LEN, GFP_KERNEL);
-	if (!ptype_info)
-		return -ENOMEM;
-
-	xn_params.vc_op = VIRTCHNL2_OP_GET_PTYPE_INFO;
-	xn_params.send_buf.iov_base = get_ptype_info;
-	xn_params.send_buf.iov_len = sizeof(*get_ptype_info);
-	xn_params.recv_buf.iov_base = ptype_info;
-	xn_params.recv_buf.iov_len = IDPF_CTLQ_MAX_BUF_LEN;
-	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
-
 	while (next_ptype_id < max_ptype) {
+		get_ptype_info = kzalloc(buf_size, GFP_KERNEL);
+		if (!get_ptype_info)
+			return -ENOMEM;
+
 		get_ptype_info->start_ptype_id = cpu_to_le16(next_ptype_id);
 
 		if ((next_ptype_id + IDPF_RX_MAX_PTYPES_PER_BUF) > max_ptype)
@@ -2595,13 +2031,15 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
 			get_ptype_info->num_ptypes =
 				cpu_to_le16(IDPF_RX_MAX_PTYPES_PER_BUF);
 
-		reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
-		if (reply_sz < 0)
-			return reply_sz;
+		err = idpf_send_mb_msg(adapter, &xn_params, get_ptype_info,
+				       buf_size);
+		if (err)
+			goto free_tx_buf;
 
+		ptype_info = xn_params.recv_mem.iov_base;
 		ptypes_recvd += le16_to_cpu(ptype_info->num_ptypes);
 		if (ptypes_recvd > max_ptype)
-			return -EINVAL;
+			goto free_rx_buf;
 
 		next_ptype_id = le16_to_cpu(get_ptype_info->start_ptype_id) +
 				le16_to_cpu(get_ptype_info->num_ptypes);
@@ -2617,8 +2055,8 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
 					((u8 *)ptype_info + ptype_offset);
 
 			ptype_offset += IDPF_GET_PTYPE_SIZE(ptype);
-			if (ptype_offset > IDPF_CTLQ_MAX_BUF_LEN)
-				return -EINVAL;
+			if (ptype_offset > LIBETH_CTLQ_MAX_BUF_LEN)
+				goto free_rx_buf;
 
 			/* 0xFFFF indicates end of ptypes */
 			if (le16_to_cpu(ptype->ptype_id_10) ==
@@ -2748,12 +2186,24 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
 
 			idpf_finalize_ptype_lookup(&ptype_lkup[k]);
 		}
+		libeth_ctlq_release_rx_buf(adapter->arq,
+					   &xn_params.recv_mem);
+		if (libeth_cp_can_send_onstack(buf_size))
+			kfree(get_ptype_info);
 	}
 
 out:
 	vport->rx_ptype_lkup = no_free_ptr(ptype_lkup);
 
 	return 0;
+
+free_rx_buf:
+	libeth_ctlq_release_rx_buf(adapter->arq, &xn_params.recv_mem);
+free_tx_buf:
+	if (libeth_cp_can_send_onstack(buf_size))
+		kfree(get_ptype_info);
+
+	return err;
 }
 
 /**
@@ -2765,40 +2215,25 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
  */
 int idpf_send_ena_dis_loopback_msg(struct idpf_vport *vport)
 {
-	struct idpf_vc_xn_params xn_params = {};
+	struct libeth_ctlq_xn_send_params xn_params = {
+		.timeout_ms	= IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
+		.chnl_opcode	= VIRTCHNL2_OP_LOOPBACK,
+	};
 	struct virtchnl2_loopback loopback;
-	ssize_t reply_sz;
+	int err;
 
 	loopback.vport_id = cpu_to_le32(vport->vport_id);
 	loopback.enable = idpf_is_feature_ena(vport, NETIF_F_LOOPBACK);
 
-	xn_params.vc_op = VIRTCHNL2_OP_LOOPBACK;
-	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
-	xn_params.send_buf.iov_base = &loopback;
-	xn_params.send_buf.iov_len = sizeof(loopback);
-	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
-
-	return reply_sz < 0 ? reply_sz : 0;
-}
-
-/**
- * idpf_find_ctlq - Given a type and id, find ctlq info
- * @hw: hardware struct
- * @type: type of ctrlq to find
- * @id: ctlq id to find
- *
- * Returns pointer to found ctlq info struct, NULL otherwise.
- */
-static struct idpf_ctlq_info *idpf_find_ctlq(struct idpf_hw *hw,
-					     enum idpf_ctlq_type type, int id)
-{
-	struct idpf_ctlq_info *cq, *tmp;
+	err = idpf_send_mb_msg(vport->adapter, &xn_params, &loopback,
+			       sizeof(loopback));
+	if (err)
+		return err;
 
-	list_for_each_entry_safe(cq, tmp, &hw->cq_list_head, cq_list)
-		if (cq->q_id == id && cq->cq_type == type)
-			return cq;
+	libeth_ctlq_release_rx_buf(vport->adapter->arq,
+				   &xn_params.recv_mem);
 
-	return NULL;
+	return 0;
 }
 
 /**
@@ -2809,40 +2244,43 @@ static struct idpf_ctlq_info *idpf_find_ctlq(struct idpf_hw *hw,
  */
 int idpf_init_dflt_mbx(struct idpf_adapter *adapter)
 {
-	struct idpf_ctlq_create_info ctlq_info[] = {
+	struct libeth_ctlq_ctx *ctx = &adapter->ctlq_ctx;
+	struct libeth_ctlq_create_info ctlq_info[] = {
 		{
-			.type = IDPF_CTLQ_TYPE_MAILBOX_TX,
-			.id = IDPF_DFLT_MBX_ID,
+			.type = LIBETH_CTLQ_TYPE_TX,
+			.id = LIBETH_CTLQ_MBX_ID,
 			.len = IDPF_DFLT_MBX_Q_LEN,
-			.buf_size = IDPF_CTLQ_MAX_BUF_LEN
 		},
 		{
-			.type = IDPF_CTLQ_TYPE_MAILBOX_RX,
-			.id = IDPF_DFLT_MBX_ID,
+			.type = LIBETH_CTLQ_TYPE_RX,
+			.id = LIBETH_CTLQ_MBX_ID,
 			.len = IDPF_DFLT_MBX_Q_LEN,
-			.buf_size = IDPF_CTLQ_MAX_BUF_LEN
 		}
 	};
-	struct idpf_hw *hw = &adapter->hw;
+	struct libeth_ctlq_xn_init_params params = {
+		.num_qs = IDPF_NUM_DFLT_MBX_Q,
+		.cctlq_info = ctlq_info,
+		.ctx = ctx,
+	};
 	int err;
 
-	adapter->dev_ops.reg_ops.ctlq_reg_init(ctlq_info);
+	adapter->dev_ops.reg_ops.ctlq_reg_init(&ctx->mmio_info,
+					       params.cctlq_info);
 
-	err = idpf_ctlq_init(hw, IDPF_NUM_DFLT_MBX_Q, ctlq_info);
+	err = libeth_ctlq_xn_init(&params);
 	if (err)
 		return err;
 
-	hw->asq = idpf_find_ctlq(hw, IDPF_CTLQ_TYPE_MAILBOX_TX,
-				 IDPF_DFLT_MBX_ID);
-	hw->arq = idpf_find_ctlq(hw, IDPF_CTLQ_TYPE_MAILBOX_RX,
-				 IDPF_DFLT_MBX_ID);
-
-	if (!hw->asq || !hw->arq) {
-		idpf_ctlq_deinit(hw);
-
+	adapter->asq = libeth_find_ctlq(ctx, LIBETH_CTLQ_TYPE_TX,
+					LIBETH_CTLQ_MBX_ID);
+	adapter->arq = libeth_find_ctlq(ctx, LIBETH_CTLQ_TYPE_RX,
+					LIBETH_CTLQ_MBX_ID);
+	if (!adapter->asq || !adapter->arq) {
+		libeth_ctlq_xn_deinit(params.xnm, ctx);
 		return -ENOENT;
 	}
 
+	adapter->xn_init_params.xnm = params.xnm;
 	adapter->state = __IDPF_VER_CHECK;
 
 	return 0;
@@ -2854,12 +2292,13 @@ int idpf_init_dflt_mbx(struct idpf_adapter *adapter)
  */
 void idpf_deinit_dflt_mbx(struct idpf_adapter *adapter)
 {
-	if (adapter->hw.arq && adapter->hw.asq) {
+	if (adapter->arq && adapter->asq) {
 		idpf_mb_clean(adapter);
-		idpf_ctlq_deinit(&adapter->hw);
+		libeth_ctlq_xn_deinit(adapter->xn_init_params.xnm,
+				      &adapter->ctlq_ctx);
 	}
-	adapter->hw.arq = NULL;
-	adapter->hw.asq = NULL;
+	adapter->arq = NULL;
+	adapter->asq = NULL;
 }
 
 /**
@@ -2932,15 +2371,6 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
 	u16 num_max_vports;
 	int err = 0;
 
-	if (!adapter->vcxn_mngr) {
-		adapter->vcxn_mngr = kzalloc(sizeof(*adapter->vcxn_mngr), GFP_KERNEL);
-		if (!adapter->vcxn_mngr) {
-			err = -ENOMEM;
-			goto init_failed;
-		}
-	}
-	idpf_vc_xn_init(adapter->vcxn_mngr);
-
 	while (adapter->state != __IDPF_INIT_SW) {
 		switch (adapter->state) {
 		case __IDPF_VER_CHECK:
@@ -3054,8 +2484,7 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
 	 * the mailbox again
 	 */
 	adapter->state = __IDPF_VER_CHECK;
-	if (adapter->vcxn_mngr)
-		idpf_vc_xn_shutdown(adapter->vcxn_mngr);
+	idpf_deinit_dflt_mbx(adapter);
 	set_bit(IDPF_HR_DRV_LOAD, adapter->flags);
 	queue_delayed_work(adapter->vc_event_wq, &adapter->vc_event_task,
 			   msecs_to_jiffies(task_delay));
@@ -3078,13 +2507,13 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 	/* Avoid transaction timeouts when called during reset */
 	remove_in_prog = test_bit(IDPF_REMOVE_IN_PROG, adapter->flags);
 	if (!remove_in_prog)
-		idpf_vc_xn_shutdown(adapter->vcxn_mngr);
+		idpf_deinit_dflt_mbx(adapter);
 
 	idpf_deinit_task(adapter);
 	idpf_intr_rel(adapter);
 
 	if (remove_in_prog)
-		idpf_vc_xn_shutdown(adapter->vcxn_mngr);
+		idpf_deinit_dflt_mbx(adapter);
 
 	cancel_delayed_work_sync(&adapter->serv_task);
 	cancel_delayed_work_sync(&adapter->mbx_task);
@@ -3507,9 +2936,9 @@ u32 idpf_get_vport_id(struct idpf_vport *vport)
 
 /**
  * idpf_mac_filter_async_handler - Async callback for mac filters
- * @adapter: private data struct
- * @xn: transaction for message
- * @ctlq_msg: received message
+ * @ctx: controlq context structure
+ * @buff: response buffer pointer and size
+ * @status: async call return value
  *
  * In some scenarios driver can't sleep and wait for a reply (e.g.: stack is
  * holding rtnl_lock) when adding a new mac filter. It puts us in a difficult
@@ -3517,13 +2946,14 @@ u32 idpf_get_vport_id(struct idpf_vport *vport)
  * ultimately do is remove it from our list of mac filters and report the
  * error.
  */
-static int idpf_mac_filter_async_handler(struct idpf_adapter *adapter,
-					 struct idpf_vc_xn *xn,
-					 const struct idpf_ctlq_msg *ctlq_msg)
+static void idpf_mac_filter_async_handler(void *ctx,
+					  struct kvec *buff,
+					  int status)
 {
 	struct virtchnl2_mac_addr_list *ma_list;
 	struct idpf_vport_config *vport_config;
 	struct virtchnl2_mac_addr *mac_addr;
+	struct idpf_adapter *adapter = ctx;
 	struct idpf_mac_filter *f, *tmp;
 	struct list_head *ma_list_head;
 	struct idpf_vport *vport;
@@ -3531,18 +2961,18 @@ static int idpf_mac_filter_async_handler(struct idpf_adapter *adapter,
 	int i;
 
 	/* if success we're done, we're only here if something bad happened */
-	if (!ctlq_msg->cookie.mbx.chnl_retval)
-		return 0;
+	if (!status)
+		goto free_mem;
 
+	ma_list = buff->iov_base;
 	/* make sure at least struct is there */
-	if (xn->reply_sz < sizeof(*ma_list))
+	if (buff->iov_len < sizeof(*ma_list))
 		goto invalid_payload;
 
-	ma_list = ctlq_msg->ctx.indirect.payload->va;
 	mac_addr = ma_list->mac_addr_list;
 	num_entries = le16_to_cpu(ma_list->num_mac_addr);
 	/* we should have received a buffer at least this big */
-	if (xn->reply_sz < struct_size(ma_list, mac_addr_list, num_entries))
+	if (buff->iov_len < struct_size(ma_list, mac_addr_list, num_entries))
 		goto invalid_payload;
 
 	vport = idpf_vid_to_vport(adapter, le32_to_cpu(ma_list->vport_id));
@@ -3562,16 +2992,15 @@ static int idpf_mac_filter_async_handler(struct idpf_adapter *adapter,
 			if (ether_addr_equal(mac_addr[i].addr, f->macaddr))
 				list_del(&f->list);
 	spin_unlock_bh(&vport_config->mac_filter_list_lock);
-	dev_err_ratelimited(&adapter->pdev->dev, "Received error sending MAC filter request (op %d)\n",
-			    xn->vc_op);
-
-	return 0;
+	dev_err_ratelimited(&adapter->pdev->dev, "Received error %d on sending MAC filter request\n",
+			    status);
+	goto free_mem;
 
 invalid_payload:
-	dev_err_ratelimited(&adapter->pdev->dev, "Received invalid MAC filter payload (op %d) (len %zd)\n",
-			    xn->vc_op, xn->reply_sz);
-
-	return -EINVAL;
+	dev_err_ratelimited(&adapter->pdev->dev, "Received invalid MAC filter payload (len %zd)\n",
+			    buff->iov_len);
+free_mem:
+	libeth_ctlq_release_rx_buf(adapter->arq, buff);
 }
 
 /**
@@ -3587,21 +3016,24 @@ int idpf_add_del_mac_filters(struct idpf_vport *vport,
 			     struct idpf_netdev_priv *np,
 			     bool add, bool async)
 {
-	struct virtchnl2_mac_addr_list *ma_list __free(kfree) = NULL;
+	struct libeth_ctlq_xn_send_params xn_params = {
+		.timeout_ms	= IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
+		.chnl_opcode	= add ? VIRTCHNL2_OP_ADD_MAC_ADDR :
+					VIRTCHNL2_OP_DEL_MAC_ADDR,
+	};
 	struct virtchnl2_mac_addr *mac_addr __free(kfree) = NULL;
 	struct idpf_adapter *adapter = np->adapter;
-	struct idpf_vc_xn_params xn_params = {};
+	struct virtchnl2_mac_addr_list *ma_list;
 	struct idpf_vport_config *vport_config;
 	u32 num_msgs, total_filters = 0;
 	struct idpf_mac_filter *f;
-	ssize_t reply_sz;
-	int i = 0, k;
+	int i = 0, k, err = 0;
+	u32 buf_size;
 
-	xn_params.vc_op = add ? VIRTCHNL2_OP_ADD_MAC_ADDR :
-				VIRTCHNL2_OP_DEL_MAC_ADDR;
-	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
-	xn_params.async = async;
-	xn_params.async_handler = idpf_mac_filter_async_handler;
+	if (async) {
+		xn_params.resp_cb = idpf_mac_filter_async_handler;
+		xn_params.send_ctx = adapter;
+	}
 
 	vport_config = adapter->vport_config[np->vport_idx];
 	spin_lock_bh(&vport_config->mac_filter_list_lock);
@@ -3656,37 +3088,60 @@ int idpf_add_del_mac_filters(struct idpf_vport *vport,
 	num_msgs = DIV_ROUND_UP(total_filters, IDPF_NUM_FILTERS_PER_MSG);
 
 	for (i = 0, k = 0; i < num_msgs; i++) {
-		u32 entries_size, buf_size, num_entries;
+		u32 entries_size, num_entries;
 
 		num_entries = min_t(u32, total_filters,
 				    IDPF_NUM_FILTERS_PER_MSG);
 		entries_size = sizeof(struct virtchnl2_mac_addr) * num_entries;
 		buf_size = struct_size(ma_list, mac_addr_list, num_entries);
 
-		if (!ma_list || num_entries != IDPF_NUM_FILTERS_PER_MSG) {
-			kfree(ma_list);
-			ma_list = kzalloc(buf_size, GFP_ATOMIC);
-			if (!ma_list)
-				return -ENOMEM;
-		} else {
-			memset(ma_list, 0, buf_size);
-		}
+		ma_list = kzalloc(buf_size, GFP_KERNEL);
+		if (!ma_list)
+			return -ENOMEM;
 
 		ma_list->vport_id = cpu_to_le32(np->vport_id);
 		ma_list->num_mac_addr = cpu_to_le16(num_entries);
 		memcpy(ma_list->mac_addr_list, &mac_addr[k], entries_size);
 
-		xn_params.send_buf.iov_base = ma_list;
-		xn_params.send_buf.iov_len = buf_size;
-		reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
-		if (reply_sz < 0)
-			return reply_sz;
+		err = idpf_send_mb_msg(adapter, &xn_params, ma_list, buf_size);
+		if (err)
+			goto free_tx_buf;
+
+		if (!async)
+			libeth_ctlq_release_rx_buf(adapter->arq,
+						   &xn_params.recv_mem);
 
 		k += num_entries;
 		total_filters -= num_entries;
 	}
 
-	return 0;
+free_tx_buf:
+	if (num_msgs && libeth_cp_can_send_onstack(buf_size))
+		kfree(ma_list);
+
+	return err;
+}
+
+/**
+ * idpf_promiscuous_async_handler - async callback for promiscuous mode
+ * @ctx: controlq context structure
+ * @buff: response buffer pointer and size
+ * @status: async call return value
+ *
+ * Nobody is waiting for the promiscuous virtchnl message response. Print
+ * an error message if something went wrong and return.
+ */
+static void idpf_promiscuous_async_handler(void *ctx,
+					   struct kvec *buff,
+					   int status)
+{
+	struct idpf_adapter *adapter = ctx;
+
+	if (status)
+		dev_err_ratelimited(&adapter->pdev->dev, "Failed to set promiscuous mode: %d\n",
+				    status);
+
+	libeth_ctlq_release_rx_buf(adapter->arq, buff);
 }
 
 /**
@@ -3703,9 +3158,13 @@ int idpf_set_promiscuous(struct idpf_adapter *adapter,
 			 struct idpf_vport_user_config_data *config_data,
 			 u32 vport_id)
 {
-	struct idpf_vc_xn_params xn_params = {};
+	struct libeth_ctlq_xn_send_params xn_params = {
+		.timeout_ms	= IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
+		.chnl_opcode	= VIRTCHNL2_OP_CONFIG_PROMISCUOUS_MODE,
+		.resp_cb	= idpf_promiscuous_async_handler,
+		.send_ctx	= adapter,
+	};
 	struct virtchnl2_promisc_info vpi;
-	ssize_t reply_sz;
 	u16 flags = 0;
 
 	if (test_bit(__IDPF_PROMISC_UC, config_data->user_flags))
@@ -3716,13 +3175,5 @@ int idpf_set_promiscuous(struct idpf_adapter *adapter,
 	vpi.vport_id = cpu_to_le32(vport_id);
 	vpi.flags = cpu_to_le16(flags);
 
-	xn_params.vc_op = VIRTCHNL2_OP_CONFIG_PROMISCUOUS_MODE;
-	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
-	xn_params.send_buf.iov_base = &vpi;
-	xn_params.send_buf.iov_len = sizeof(vpi);
-	/* setting promiscuous is only ever done asynchronously */
-	xn_params.async = true;
-	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
-
-	return reply_sz < 0 ? reply_sz : 0;
+	return idpf_send_mb_msg(adapter, &xn_params, &vpi, sizeof(vpi));
 }
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
index 83da5d8da56b..35226aa9f3b1 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -21,9 +21,11 @@ int idpf_get_reg_intr_vecs(struct idpf_vport *vport,
 int idpf_queue_reg_init(struct idpf_vport *vport);
 int idpf_vport_queue_ids_init(struct idpf_vport *vport);
 
-int idpf_recv_mb_msg(struct idpf_adapter *adapter);
-int idpf_send_mb_msg(struct idpf_adapter *adapter, u32 op,
-		     u16 msg_size, u8 *msg, u16 cookie);
+void idpf_recv_event_msg(struct libeth_ctlq_ctx *ctx,
+			 struct libeth_ctlq_msg *ctlq_msg);
+int idpf_send_mb_msg(struct idpf_adapter *adapter,
+		     struct libeth_ctlq_xn_send_params *xn_params,
+		     void *send_buf, size_t send_buf_size);
 
 void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q);
 u32 idpf_get_vport_id(struct idpf_vport *vport);
-- 
2.47.0

