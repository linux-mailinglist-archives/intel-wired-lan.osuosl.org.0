Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD176CEC82
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 17:14:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE235841DA;
	Wed, 29 Mar 2023 15:14:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE235841DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680102879;
	bh=GnI2YDlgdD32qIDTj8va8at7cFIzTIS3KnZbhReuetU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4tQc7w+UpgWO28Rhq3mokL2qWXjniokNqR8vKFh2YZnCcAWa7+/jN+qiLLDbpl8lw
	 mEzXMSxbjSb7ISpvrVtDpbeZ0i0kgTfXCJBNWMdb9bGrdwkAG9gRTyjAx1u1OEZ0VS
	 vGcm/FOYG3xlO5ViQicYtXdiwFz5gH53qSS0BwydMKQxscMcI0U6l7Wg0mcaJY7BvD
	 PXua4B3MMFeiwTt8C3FT7PCHwgzug+5Xt3EzRs11MQhP/W42xWn8jicwEgRwjUJ7ro
	 Y+oX0rJd6J5XFLA2Vqf0zd9MTCKfKAaVhyGcgVrOfvnbhVnIZIXc5RS6aiI5emM5t3
	 vAWBXQVgk6xXA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pJvuPtYr1mlh; Wed, 29 Mar 2023 15:14:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D0EED84147;
	Wed, 29 Mar 2023 15:14:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D0EED84147
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AFA0F1BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 14:07:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 492188418E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 14:07:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 492188418E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AlXeSnEyG-pV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Mar 2023 14:07:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D1EA38419C
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D1EA38419C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 14:07:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="342480754"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="342480754"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 07:06:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="748791359"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="748791359"
Received: from unknown (HELO lo0-100.bstnma-vfttp-361.verizon-gni.com)
 ([10.166.80.24])
 by fmsmga008.fm.intel.com with ESMTP; 29 Mar 2023 07:06:25 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 29 Mar 2023 07:03:52 -0700
Message-Id: <20230329140404.1647925-4-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230329140404.1647925-1-pavan.kumar.linga@intel.com>
References: <20230329140404.1647925-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 29 Mar 2023 15:14:11 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680098822; x=1711634822;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=d1CgpXkWhRGr922by4K11Bzb9vndRssiztoY7DAaTyw=;
 b=UwoXYS7TOFMI6c5EGUNol22xRGG5nlDh3kHkCVqDVbnc5xzQW/6//Jko
 z2DP/tRGcl5mhZkaMtNDK4MB31yleHikHbyzifiNr+rKINPTcyS5UHxyc
 YJ1bmbHgjzOricsapQ8aMBlStTnyqazMZvwWaWGn1ZgW3uF5QmXQiYFb7
 Nfp2LbYdqt1+PkM/nLUxCG2yL9fYS+0NuMVPhUKYHDAfp+AfkYztn702b
 woNIX7+QF0tp+qwJdLL5h5GvXjiqoDUhkH8XcjXEK9moQPv2th+WJe7p+
 XrHfMj29hkCgVsmFzhxNBKZmCXeLOMpqviHoIN6trqKeONCuJE99pcwto
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UwoXYS7T
Subject: [Intel-wired-lan] [PATCH net-next 03/15] idpf: add controlq init
 and reset checks
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
Cc: willemb@google.com, Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>, netdev@vger.kernel.org,
 Phani Burra <phani.r.burra@intel.com>, decot@google.com,
 shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Joshua Hay <joshua.a.hay@intel.com>

At the end of the probe, initialize and schedule the event workqueue.
It calls the hard reset function where reset checks are done to find
if the device is out of the reset. Control queue initialization and
the necessary control queue support is added.

Introduce function pointers for the register operations which are
different between PF and VF devices.

Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Co-developed-by: Alan Brady <alan.brady@intel.com>
Signed-off-by: Alan Brady <alan.brady@intel.com>
Co-developed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
Co-developed-by: Phani Burra <phani.r.burra@intel.com>
Signed-off-by: Phani Burra <phani.r.burra@intel.com>
Co-developed-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
Signed-off-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
---
 drivers/net/ethernet/intel/idpf/Makefile      |   7 +-
 drivers/net/ethernet/intel/idpf/idpf.h        |  89 +++
 .../net/ethernet/intel/idpf/idpf_controlq.c   | 644 ++++++++++++++++++
 .../net/ethernet/intel/idpf/idpf_controlq.h   | 117 ++++
 .../ethernet/intel/idpf/idpf_controlq_api.h   | 190 ++++++
 .../ethernet/intel/idpf/idpf_controlq_setup.c | 175 +++++
 drivers/net/ethernet/intel/idpf/idpf_dev.c    | 103 +++
 drivers/net/ethernet/intel/idpf/idpf_devids.h |  10 +
 .../ethernet/intel/idpf/idpf_lan_pf_regs.h    |  70 ++
 .../ethernet/intel/idpf/idpf_lan_vf_regs.h    |  65 ++
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 176 +++++
 drivers/net/ethernet/intel/idpf/idpf_main.c   |  12 +-
 drivers/net/ethernet/intel/idpf/idpf_mem.h    |  20 +
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c | 100 +++
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 128 ++++
 15 files changed, 1904 insertions(+), 2 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_setup.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_dev.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_devids.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lan_pf_regs.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lan_vf_regs.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_mem.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c

diff --git a/drivers/net/ethernet/intel/idpf/Makefile b/drivers/net/ethernet/intel/idpf/Makefile
index d26521c987e1..9607f61db27e 100644
--- a/drivers/net/ethernet/intel/idpf/Makefile
+++ b/drivers/net/ethernet/intel/idpf/Makefile
@@ -6,5 +6,10 @@
 obj-$(CONFIG_IDPF) += idpf.o
 
 idpf-y := \
+	idpf_controlq.o		\
+	idpf_controlq_setup.o	\
+	idpf_dev.o		\
 	idpf_lib.o		\
-	idpf_main.o
+	idpf_main.o		\
+	idpf_virtchnl.o 	\
+	idpf_vf_dev.o
diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 7494f9d29970..c5e1b2aaf93c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -4,24 +4,113 @@
 #ifndef _IDPF_H_
 #define _IDPF_H_
 
+/* Forward declaration */
+struct idpf_adapter;
+
 #include <linux/aer.h>
 #include <linux/etherdevice.h>
 #include <linux/pci.h>
 
 #include "idpf_controlq.h"
 
+/* Default Mailbox settings */
+#define IDPF_DFLT_MBX_BUF_SIZE		SZ_4K
+#define IDPF_NUM_DFLT_MBX_Q		2	/* includes both TX and RX */
+#define IDPF_DFLT_MBX_Q_LEN		64
+#define IDPF_DFLT_MBX_ID		-1
+
 /* available message levels */
 #define IDPF_AVAIL_NETIF_M (NETIF_MSG_DRV | NETIF_MSG_PROBE | NETIF_MSG_LINK)
 
+enum idpf_state {
+	__IDPF_STARTUP,
+	__IDPF_STATE_LAST /* this member MUST be last */
+};
+
+enum idpf_flags {
+	/* Hard reset causes */
+	/* Hard reset when txrx timeout */
+	__IDPF_HR_FUNC_RESET,
+	/* when reset event is received on virtchannel */
+	__IDPF_HR_CORE_RESET,
+	/* Set on driver load for a clean HW */
+	__IDPF_HR_DRV_LOAD,
+	/* Reset in progress */
+	__IDPF_HR_RESET_IN_PROG,
+	/* Driver remove in progress */
+	__IDPF_REMOVE_IN_PROG,
+	/* must be last */
+	__IDPF_FLAGS_NBITS,
+};
+
+struct idpf_reset_reg {
+	/* Reset status register */
+	void __iomem *rstat;
+	/* Reset status mask */
+	u32 rstat_m;
+};
+
+/* product specific register API */
+struct idpf_reg_ops {
+	void (*ctlq_reg_init)(struct idpf_ctlq_create_info *cq);
+	void (*reset_reg_init)(struct idpf_adapter *adapter);
+	void (*trigger_reset)(struct idpf_adapter *adapter,
+			      enum idpf_flags trig_cause);
+};
+
+struct idpf_dev_ops {
+	struct idpf_reg_ops reg_ops;
+};
+
 struct idpf_adapter {
 	struct pci_dev *pdev;
 	u32 msg_enable;
+	enum idpf_state state;
+	DECLARE_BITMAP(flags, __IDPF_FLAGS_NBITS);
+	struct idpf_reset_reg reset_reg;
 	struct idpf_hw hw;
+
+	struct delayed_work vc_event_task; /* delayed virtchannel event task */
+	struct workqueue_struct *vc_event_wq;
+
+	struct idpf_dev_ops dev_ops;
+
+	struct mutex reset_lock;	/* lock to protect reset flows */
 };
 
+/**
+ * idpf_get_reg_addr - Get BAR0 register address
+ * @adapter: private data struct
+ * @reg_offset: register offset value
+ *
+ * Based on the register offset, return the actual BAR0 register address
+ */
+static inline void __iomem *idpf_get_reg_addr(struct idpf_adapter *adapter,
+					      resource_size_t reg_offset)
+{
+	return (void __iomem *)(adapter->hw.hw_addr + reg_offset);
+}
+
+/**
+ * idpf_is_reset_detected - check if we were reset at some point
+ * @adapter: driver specific private structure
+ *
+ * Returns true if we are either in reset currently or were previously reset.
+ */
+static inline bool idpf_is_reset_detected(struct idpf_adapter *adapter)
+{
+	if (!adapter->hw.arq)
+		return true;
+
+	return !(readl(idpf_get_reg_addr(adapter, adapter->hw.arq->reg.len)) &
+		 adapter->hw.arq->reg.len_ena_mask);
+}
+
 int idpf_pf_probe(struct pci_dev *pdev, struct idpf_adapter *adapter);
 int idpf_vf_probe(struct pci_dev *pdev, struct idpf_adapter *adapter);
 int idpf_probe_common(struct pci_dev *pdev, struct idpf_adapter *adapter);
 void idpf_remove_common(struct pci_dev *pdev);
+int idpf_init_dflt_mbx(struct idpf_adapter *adapter);
+void idpf_deinit_dflt_mbx(struct idpf_adapter *adapter);
 
 #endif /* !_IDPF_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_controlq.c b/drivers/net/ethernet/intel/idpf/idpf_controlq.c
new file mode 100644
index 000000000000..d9bcf7c35ae2
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_controlq.c
@@ -0,0 +1,644 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2023 Intel Corporation */
+
+#include "idpf_controlq.h"
+
+/**
+ * idpf_ctlq_setup_regs - initialize control queue registers
+ * @cq: pointer to the specific control queue
+ * @q_create_info: structs containing info for each queue to be initialized
+ */
+static void idpf_ctlq_setup_regs(struct idpf_ctlq_info *cq,
+				 struct idpf_ctlq_create_info *q_create_info)
+{
+	/* set control queue registers in our local struct */
+	cq->reg.head = q_create_info->reg.head;
+	cq->reg.tail = q_create_info->reg.tail;
+	cq->reg.len = q_create_info->reg.len;
+	cq->reg.bah = q_create_info->reg.bah;
+	cq->reg.bal = q_create_info->reg.bal;
+	cq->reg.len_mask = q_create_info->reg.len_mask;
+	cq->reg.len_ena_mask = q_create_info->reg.len_ena_mask;
+	cq->reg.head_mask = q_create_info->reg.head_mask;
+}
+
+/**
+ * idpf_ctlq_init_regs - Initialize control queue registers
+ * @hw: pointer to hw struct
+ * @cq: pointer to the specific Control queue
+ * @is_rxq: true if receive control queue, false otherwise
+ *
+ * Initialize registers. The caller is expected to have already initialized the
+ * descriptor ring memory and buffer memory
+ */
+static void idpf_ctlq_init_regs(struct idpf_hw *hw, struct idpf_ctlq_info *cq,
+				bool is_rxq)
+{
+	/* Update tail to post pre-allocated buffers for rx queues */
+	if (is_rxq)
+		wr32(hw, cq->reg.tail, (u32)(cq->ring_size - 1));
+
+	/* For non-Mailbox control queues only TAIL need to be set */
+	if (cq->q_id != -1)
+		return;
+
+	/* Clear Head for both send or receive */
+	wr32(hw, cq->reg.head, 0);
+
+	/* set starting point */
+	wr32(hw, cq->reg.bal, lower_32_bits(cq->desc_ring.pa));
+	wr32(hw, cq->reg.bah, upper_32_bits(cq->desc_ring.pa));
+	wr32(hw, cq->reg.len, (cq->ring_size | cq->reg.len_ena_mask));
+}
+
+/**
+ * idpf_ctlq_init_rxq_bufs - populate receive queue descriptors with buf
+ * @cq: pointer to the specific Control queue
+ *
+ * Record the address of the receive queue DMA buffers in the descriptors.
+ * The buffers must have been previously allocated.
+ */
+static void idpf_ctlq_init_rxq_bufs(struct idpf_ctlq_info *cq)
+{
+	int i = 0;
+
+	for (i = 0; i < cq->ring_size; i++) {
+		struct idpf_ctlq_desc *desc = IDPF_CTLQ_DESC(cq, i);
+		struct idpf_dma_mem *bi = cq->bi.rx_buff[i];
+
+		/* No buffer to post to descriptor, continue */
+		if (!bi)
+			continue;
+
+		desc->flags =
+			cpu_to_le16(IDPF_CTLQ_FLAG_BUF | IDPF_CTLQ_FLAG_RD);
+		desc->opcode = 0;
+		desc->datalen = cpu_to_le16(bi->size);
+		desc->ret_val = 0;
+		desc->v_opcode_dtype = 0;
+		desc->v_retval = 0;
+		desc->params.indirect.addr_high =
+			cpu_to_le32(upper_32_bits(bi->pa));
+		desc->params.indirect.addr_low =
+			cpu_to_le32(lower_32_bits(bi->pa));
+		desc->params.indirect.param0 = 0;
+		desc->params.indirect.sw_cookie = 0;
+		desc->params.indirect.v_flags = 0;
+	}
+}
+
+/**
+ * idpf_ctlq_shutdown - shutdown the CQ
+ * @hw: pointer to hw struct
+ * @cq: pointer to the specific Control queue
+ *
+ * The main shutdown routine for any controq queue
+ */
+static void idpf_ctlq_shutdown(struct idpf_hw *hw, struct idpf_ctlq_info *cq)
+{
+	mutex_lock(&cq->cq_lock);
+
+	if (!cq->ring_size)
+		goto shutdown_sq_out;
+
+	/* free ring buffers and the ring itself */
+	idpf_ctlq_dealloc_ring_res(hw, cq);
+
+	/* Set ring_size to 0 to indicate uninitialized queue */
+	cq->ring_size = 0;
+
+shutdown_sq_out:
+	mutex_unlock(&cq->cq_lock);
+	mutex_destroy(&cq->cq_lock);
+}
+
+/**
+ * idpf_ctlq_add - add one control queue
+ * @hw: pointer to hardware struct
+ * @qinfo: info for queue to be created
+ * @cq_out: (output) double pointer to control queue to be created
+ *
+ * Allocate and initialize a control queue and add it to the control queue list.
+ * The cq parameter will be allocated/initialized and passed back to the caller
+ * if no errors occur.
+ *
+ * Note: idpf_ctlq_init must be called prior to any calls to idpf_ctlq_add
+ */
+int idpf_ctlq_add(struct idpf_hw *hw,
+		  struct idpf_ctlq_create_info *qinfo,
+		  struct idpf_ctlq_info **cq_out)
+{
+	struct idpf_ctlq_info *cq;
+	bool is_rxq = false;
+	int status = 0;
+
+	if (!qinfo->len || !qinfo->buf_size ||
+	    qinfo->len > IDPF_CTLQ_MAX_RING_SIZE ||
+	    qinfo->buf_size > IDPF_CTLQ_MAX_BUF_LEN)
+		return -EINVAL;
+
+	cq = kcalloc(1, sizeof(struct idpf_ctlq_info), GFP_KERNEL);
+	if (!cq)
+		return -ENOMEM;
+
+	cq->cq_type = qinfo->type;
+	cq->q_id = qinfo->id;
+	cq->buf_size = qinfo->buf_size;
+	cq->ring_size = qinfo->len;
+
+	cq->next_to_use = 0;
+	cq->next_to_clean = 0;
+	cq->next_to_post = cq->ring_size - 1;
+
+	switch (qinfo->type) {
+	case IDPF_CTLQ_TYPE_MAILBOX_RX:
+		is_rxq = true;
+		fallthrough;
+	case IDPF_CTLQ_TYPE_MAILBOX_TX:
+		status = idpf_ctlq_alloc_ring_res(hw, cq);
+		break;
+	default:
+		status = -EBADR;
+		break;
+	}
+
+	if (status)
+		goto init_free_q;
+
+	if (is_rxq) {
+		idpf_ctlq_init_rxq_bufs(cq);
+	} else {
+		/* Allocate the array of msg pointers for TX queues */
+		cq->bi.tx_msg = kcalloc(qinfo->len,
+					sizeof(struct idpf_ctlq_msg *),
+					GFP_KERNEL);
+		if (!cq->bi.tx_msg) {
+			status = -ENOMEM;
+			goto init_dealloc_q_mem;
+		}
+	}
+
+	idpf_ctlq_setup_regs(cq, qinfo);
+
+	idpf_ctlq_init_regs(hw, cq, is_rxq);
+
+	mutex_init(&cq->cq_lock);
+
+	list_add(&cq->cq_list, &hw->cq_list_head);
+
+	*cq_out = cq;
+
+	return status;
+
+init_dealloc_q_mem:
+	/* free ring buffers and the ring itself */
+	idpf_ctlq_dealloc_ring_res(hw, cq);
+init_free_q:
+	kfree(cq);
+	cq = NULL;
+
+	return status;
+}
+
+/**
+ * idpf_ctlq_remove - deallocate and remove specified control queue
+ * @hw: pointer to hardware struct
+ * @cq: pointer to control queue to be removed
+ */
+void idpf_ctlq_remove(struct idpf_hw *hw,
+		      struct idpf_ctlq_info *cq)
+{
+	list_del(&cq->cq_list);
+	idpf_ctlq_shutdown(hw, cq);
+	kfree(cq);
+}
+
+/**
+ * idpf_ctlq_init - main initialization routine for all control queues
+ * @hw: pointer to hardware struct
+ * @num_q: number of queues to initialize
+ * @q_info: array of structs containing info for each queue to be initialized
+ *
+ * This initializes any number and any type of control queues. This is an all
+ * or nothing routine; if one fails, all previously allocated queues will be
+ * destroyed. This must be called prior to using the individual add/remove
+ * APIs.
+ */
+int idpf_ctlq_init(struct idpf_hw *hw, u8 num_q,
+		   struct idpf_ctlq_create_info *q_info)
+{
+	struct idpf_ctlq_info *cq = NULL, *tmp = NULL;
+	int ret_code = 0;
+	int i = 0;
+
+	INIT_LIST_HEAD(&hw->cq_list_head);
+
+	for (i = 0; i < num_q; i++) {
+		struct idpf_ctlq_create_info *qinfo = q_info + i;
+
+		ret_code = idpf_ctlq_add(hw, qinfo, &cq);
+		if (ret_code)
+			goto init_destroy_qs;
+	}
+
+	return ret_code;
+
+init_destroy_qs:
+	list_for_each_entry_safe(cq, tmp, &hw->cq_list_head, cq_list)
+		idpf_ctlq_remove(hw, cq);
+
+	return ret_code;
+}
+
+/**
+ * idpf_ctlq_deinit - destroy all control queues
+ * @hw: pointer to hw struct
+ */
+void idpf_ctlq_deinit(struct idpf_hw *hw)
+{
+	struct idpf_ctlq_info *cq = NULL, *tmp = NULL;
+
+	list_for_each_entry_safe(cq, tmp, &hw->cq_list_head, cq_list)
+		idpf_ctlq_remove(hw, cq);
+}
+
+/**
+ * idpf_ctlq_send - send command to Control Queue (CTQ)
+ * @hw: pointer to hw struct
+ * @cq: handle to control queue struct to send on
+ * @num_q_msg: number of messages to send on control queue
+ * @q_msg: pointer to array of queue messages to be sent
+ *
+ * The caller is expected to allocate DMAable buffers and pass them to the
+ * send routine via the q_msg struct / control queue specific data struct.
+ * The control queue will hold a reference to each send message until
+ * the completion for that message has been cleaned.
+ */
+int idpf_ctlq_send(struct idpf_hw *hw, struct idpf_ctlq_info *cq,
+		   u16 num_q_msg, struct idpf_ctlq_msg q_msg[])
+{
+	struct idpf_ctlq_desc *desc;
+	int num_desc_avail = 0;
+	int status = 0;
+	int i = 0;
+
+	if (!cq || !cq->ring_size)
+		return -ENOBUFS;
+
+	mutex_lock(&cq->cq_lock);
+
+	/* Ensure there are enough descriptors to send all messages */
+	num_desc_avail = IDPF_CTLQ_DESC_UNUSED(cq);
+	if (num_desc_avail == 0 || num_desc_avail < num_q_msg) {
+		status = -ENOSPC;
+		goto sq_send_command_out;
+	}
+
+	for (i = 0; i < num_q_msg; i++) {
+		struct idpf_ctlq_msg *msg = &q_msg[i];
+
+		desc = IDPF_CTLQ_DESC(cq, cq->next_to_use);
+
+		desc->opcode = cpu_to_le16(msg->opcode);
+		desc->pfid_vfid = cpu_to_le16(msg->func_id);
+
+		desc->v_opcode_dtype = cpu_to_le32(msg->cookie.mbx.chnl_opcode);
+		desc->v_retval = cpu_to_le32(msg->cookie.mbx.chnl_retval);
+
+		desc->flags = cpu_to_le16((msg->host_id & IDPF_HOST_ID_MASK) <<
+					  IDPF_CTLQ_FLAG_HOST_ID_S);
+		if (msg->data_len) {
+			struct idpf_dma_mem *buff = msg->ctx.indirect.payload;
+
+			desc->datalen |= cpu_to_le16(msg->data_len);
+			desc->flags |= cpu_to_le16(IDPF_CTLQ_FLAG_BUF);
+			desc->flags |= cpu_to_le16(IDPF_CTLQ_FLAG_RD);
+
+			/* Update the address values in the desc with the pa
+			 * value for respective buffer
+			 */
+			desc->params.indirect.addr_high =
+				cpu_to_le32(upper_32_bits(buff->pa));
+			desc->params.indirect.addr_low =
+				cpu_to_le32(lower_32_bits(buff->pa));
+
+			memcpy(&desc->params, msg->ctx.indirect.context,
+			       IDPF_INDIRECT_CTX_SIZE);
+		} else {
+			memcpy(&desc->params, msg->ctx.direct,
+			       IDPF_DIRECT_CTX_SIZE);
+		}
+
+		/* Store buffer info */
+		cq->bi.tx_msg[cq->next_to_use] = msg;
+
+		(cq->next_to_use)++;
+		if (cq->next_to_use == cq->ring_size)
+			cq->next_to_use = 0;
+	}
+
+	/* Force memory write to complete before letting hardware
+	 * know that there are new descriptors to fetch.
+	 */
+	dma_wmb();
+
+	wr32(hw, cq->reg.tail, cq->next_to_use);
+
+sq_send_command_out:
+	mutex_unlock(&cq->cq_lock);
+
+	return status;
+}
+
+/**
+ * idpf_ctlq_clean_sq - reclaim send descriptors on HW write back for the
+ * requested queue
+ * @cq: pointer to the specific Control queue
+ * @clean_count: (input|output) number of descriptors to clean as input, and
+ * number of descriptors actually cleaned as output
+ * @msg_status: (output) pointer to msg pointer array to be populated; needs
+ * to be allocated by caller
+ *
+ * Returns an array of message pointers associated with the cleaned
+ * descriptors. The pointers are to the original ctlq_msgs sent on the cleaned
+ * descriptors.  The status will be returned for each; any messages that failed
+ * to send will have a non-zero status. The caller is expected to free original
+ * ctlq_msgs and free or reuse the DMA buffers.
+ */
+int idpf_ctlq_clean_sq(struct idpf_ctlq_info *cq, u16 *clean_count,
+		       struct idpf_ctlq_msg *msg_status[])
+{
+	struct idpf_ctlq_desc *desc;
+	u16 i = 0, num_to_clean;
+	u16 ntc, desc_err;
+	int ret = 0;
+
+	if (!cq || !cq->ring_size)
+		return -ENOBUFS;
+
+	if (*clean_count == 0)
+		return 0;
+	if (*clean_count > cq->ring_size)
+		return -EBADR;
+
+	mutex_lock(&cq->cq_lock);
+
+	ntc = cq->next_to_clean;
+
+	num_to_clean = *clean_count;
+
+	for (i = 0; i < num_to_clean; i++) {
+		/* Fetch next descriptor and check if marked as done */
+		desc = IDPF_CTLQ_DESC(cq, ntc);
+		if (!(le16_to_cpu(desc->flags) & IDPF_CTLQ_FLAG_DD))
+			break;
+
+		/* strip off FW internal code */
+		desc_err = le16_to_cpu(desc->ret_val) & 0xff;
+
+		msg_status[i] = cq->bi.tx_msg[ntc];
+		msg_status[i]->status = desc_err;
+
+		cq->bi.tx_msg[ntc] = NULL;
+
+		/* Zero out any stale data */
+		memset(desc, 0, sizeof(*desc));
+
+		ntc++;
+		if (ntc == cq->ring_size)
+			ntc = 0;
+	}
+
+	cq->next_to_clean = ntc;
+
+	mutex_unlock(&cq->cq_lock);
+
+	/* Return number of descriptors actually cleaned */
+	*clean_count = i;
+
+	return ret;
+}
+
+/**
+ * idpf_ctlq_post_rx_buffs - post buffers to descriptor ring
+ * @hw: pointer to hw struct
+ * @cq: pointer to control queue handle
+ * @buff_count: (input|output) input is number of buffers caller is trying to
+ * return; output is number of buffers that were not posted
+ * @buffs: array of pointers to dma mem structs to be given to hardware
+ *
+ * Caller uses this function to return DMA buffers to the descriptor ring after
+ * consuming them; buff_count will be the number of buffers.
+ *
+ * Note: this function needs to be called after a receive call even
+ * if there are no DMA buffers to be returned, i.e. buff_count = 0,
+ * buffs = NULL to support direct commands
+ */
+int idpf_ctlq_post_rx_buffs(struct idpf_hw *hw, struct idpf_ctlq_info *cq,
+			    u16 *buff_count, struct idpf_dma_mem **buffs)
+{
+	struct idpf_ctlq_desc *desc;
+	u16 ntp = cq->next_to_post;
+	bool buffs_avail = false;
+	u16 tbp = ntp + 1;
+	int status = 0;
+	int i = 0;
+
+	if (*buff_count > cq->ring_size)
+		return -EBADR;
+
+	if (*buff_count > 0)
+		buffs_avail = true;
+
+	mutex_lock(&cq->cq_lock);
+
+	if (tbp >= cq->ring_size)
+		tbp = 0;
+
+	if (tbp == cq->next_to_clean)
+		/* Nothing to do */
+		goto post_buffs_out;
+
+	/* Post buffers for as many as provided or up until the last one used */
+	while (ntp != cq->next_to_clean) {
+		desc = IDPF_CTLQ_DESC(cq, ntp);
+
+		if (cq->bi.rx_buff[ntp])
+			goto fill_desc;
+		if (!buffs_avail) {
+			/* If the caller hasn't given us any buffers or
+			 * there are none left, search the ring itself
+			 * for an available buffer to move to this
+			 * entry starting at the next entry in the ring
+			 */
+			tbp = ntp + 1;
+
+			/* Wrap ring if necessary */
+			if (tbp >= cq->ring_size)
+				tbp = 0;
+
+			while (tbp != cq->next_to_clean) {
+				if (cq->bi.rx_buff[tbp]) {
+					cq->bi.rx_buff[ntp] =
+						cq->bi.rx_buff[tbp];
+					cq->bi.rx_buff[tbp] = NULL;
+
+					/* Found a buffer, no need to
+					 * search anymore
+					 */
+					break;
+				}
+
+				/* Wrap ring if necessary */
+				tbp++;
+				if (tbp >= cq->ring_size)
+					tbp = 0;
+			}
+
+			if (tbp == cq->next_to_clean)
+				goto post_buffs_out;
+		} else {
+			/* Give back pointer to DMA buffer */
+			cq->bi.rx_buff[ntp] = buffs[i];
+			i++;
+
+			if (i >= *buff_count)
+				buffs_avail = false;
+		}
+
+fill_desc:
+		desc->flags =
+			cpu_to_le16(IDPF_CTLQ_FLAG_BUF | IDPF_CTLQ_FLAG_RD);
+
+		/* Post buffers to descriptor */
+		desc->datalen = cpu_to_le16(cq->bi.rx_buff[ntp]->size);
+		desc->params.indirect.addr_high =
+			cpu_to_le32(upper_32_bits(cq->bi.rx_buff[ntp]->pa));
+		desc->params.indirect.addr_low =
+			cpu_to_le32(lower_32_bits(cq->bi.rx_buff[ntp]->pa));
+
+		ntp++;
+		if (ntp == cq->ring_size)
+			ntp = 0;
+	}
+
+post_buffs_out:
+	/* Only update tail if buffers were actually posted */
+	if (cq->next_to_post != ntp) {
+		if (ntp)
+			/* Update next_to_post to ntp - 1 since current ntp
+			 * will not have a buffer
+			 */
+			cq->next_to_post = ntp - 1;
+		else
+			/* Wrap to end of end ring since current ntp is 0 */
+			cq->next_to_post = cq->ring_size - 1;
+
+		wr32(hw, cq->reg.tail, cq->next_to_post);
+	}
+
+	mutex_unlock(&cq->cq_lock);
+
+	/* return the number of buffers that were not posted */
+	*buff_count = *buff_count - i;
+
+	return status;
+}
+
+/**
+ * idpf_ctlq_recv - receive control queue message call back
+ * @cq: pointer to control queue handle to receive on
+ * @num_q_msg: (input|output) input number of messages that should be received;
+ * output number of messages actually received
+ * @q_msg: (output) array of received control queue messages on this q;
+ * needs to be pre-allocated by caller for as many messages as requested
+ *
+ * Called by interrupt handler or polling mechanism. Caller is expected
+ * to free buffers
+ */
+int idpf_ctlq_recv(struct idpf_ctlq_info *cq, u16 *num_q_msg,
+		   struct idpf_ctlq_msg *q_msg)
+{
+	u16 num_to_clean, ntc, ret_val, flags;
+	struct idpf_ctlq_desc *desc;
+	int ret_code = 0;
+	u16 i = 0;
+
+	if (!cq || !cq->ring_size)
+		return -ENOBUFS;
+
+	if (*num_q_msg == 0)
+		return 0;
+	else if (*num_q_msg > cq->ring_size)
+		return -EBADR;
+
+	/* take the lock before we start messing with the ring */
+	mutex_lock(&cq->cq_lock);
+
+	ntc = cq->next_to_clean;
+
+	num_to_clean = *num_q_msg;
+
+	for (i = 0; i < num_to_clean; i++) {
+		/* Fetch next descriptor and check if marked as done */
+		desc = IDPF_CTLQ_DESC(cq, ntc);
+		flags = le16_to_cpu(desc->flags);
+
+		if (!(flags & IDPF_CTLQ_FLAG_DD))
+			break;
+
+		ret_val = le16_to_cpu(desc->ret_val);
+
+		q_msg[i].vmvf_type = (flags &
+				      (IDPF_CTLQ_FLAG_FTYPE_VM |
+				       IDPF_CTLQ_FLAG_FTYPE_PF)) >>
+				      IDPF_CTLQ_FLAG_FTYPE_S;
+
+		if (flags & IDPF_CTLQ_FLAG_ERR)
+			ret_code = -EBADMSG;
+
+		q_msg[i].cookie.mbx.chnl_opcode =
+				le32_to_cpu(desc->v_opcode_dtype);
+		q_msg[i].cookie.mbx.chnl_retval =
+				le32_to_cpu(desc->v_retval);
+
+		q_msg[i].opcode = le16_to_cpu(desc->opcode);
+		q_msg[i].data_len = le16_to_cpu(desc->datalen);
+		q_msg[i].status = ret_val;
+
+		if (desc->datalen) {
+			memcpy(q_msg[i].ctx.indirect.context,
+			       &desc->params.indirect, IDPF_INDIRECT_CTX_SIZE);
+
+			/* Assign pointer to dma buffer to ctlq_msg array
+			 * to be given to upper layer
+			 */
+			q_msg[i].ctx.indirect.payload = cq->bi.rx_buff[ntc];
+
+			/* Zero out pointer to DMA buffer info;
+			 * will be repopulated by post buffers API
+			 */
+			cq->bi.rx_buff[ntc] = NULL;
+		} else {
+			memcpy(q_msg[i].ctx.direct, desc->params.raw,
+			       IDPF_DIRECT_CTX_SIZE);
+		}
+
+		/* Zero out stale data in descriptor */
+		memset(desc, 0, sizeof(struct idpf_ctlq_desc));
+
+		ntc++;
+		if (ntc == cq->ring_size)
+			ntc = 0;
+	};
+
+	cq->next_to_clean = ntc;
+
+	mutex_unlock(&cq->cq_lock);
+
+	*num_q_msg = i;
+	if (*num_q_msg == 0)
+		ret_code = -ENOMSG;
+
+	return ret_code;
+}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_controlq.h b/drivers/net/ethernet/intel/idpf/idpf_controlq.h
index 383089c91675..3279394aa085 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_controlq.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_controlq.h
@@ -4,11 +4,128 @@
 #ifndef _IDPF_CONTROLQ_H_
 #define _IDPF_CONTROLQ_H_
 
+#include <linux/slab.h>
+
+#include "idpf_controlq_api.h"
+
+/* Maximum buffer lengths for all control queue types */
+#define IDPF_CTLQ_MAX_RING_SIZE 1024
+#define IDPF_CTLQ_MAX_BUF_LEN	4096
+
+#define IDPF_CTLQ_DESC(R, i) \
+	(&(((struct idpf_ctlq_desc *)((R)->desc_ring.va))[i]))
+
+#define IDPF_CTLQ_DESC_UNUSED(R) \
+	((u16)((((R)->next_to_clean > (R)->next_to_use) ? 0 : (R)->ring_size) + \
+	       (R)->next_to_clean - (R)->next_to_use - 1))
+
+/* Control Queue default settings */
+#define IDPF_CTRL_SQ_CMD_TIMEOUT	250  /* msecs */
+
+struct idpf_ctlq_desc {
+	/* Control queue descriptor flags */
+	__le16 flags;
+	/* Control queue message opcode */
+	__le16 opcode;
+	__le16 datalen;		/* 0 for direct commands */
+	union {
+		__le16 ret_val;
+		__le16 pfid_vfid;
+#define IDPF_CTLQ_DESC_VF_ID_S	0
+#define IDPF_CTLQ_DESC_VF_ID_M	(0x7FF << IDPF_CTLQ_DESC_VF_ID_S)
+#define IDPF_CTLQ_DESC_PF_ID_S	11
+#define IDPF_CTLQ_DESC_PF_ID_M	(0x1F << IDPF_CTLQ_DESC_PF_ID_S)
+	};
+
+	/* Virtchnl message opcode and virtchnl descriptor type
+	 * v_opcode=[27:0], v_dtype=[31:28]
+	 */
+	__le32 v_opcode_dtype;
+	/* Virtchnl return value */
+	__le32 v_retval;
+	union {
+		struct {
+			__le32 param0;
+			__le32 param1;
+			__le32 param2;
+			__le32 param3;
+		} direct;
+		struct {
+			__le32 param0;
+			__le16 sw_cookie;
+			/* Virtchnl flags */
+			__le16 v_flags;
+			__le32 addr_high;
+			__le32 addr_low;
+		} indirect;
+		u8 raw[16];
+	} params;
+};
+
+/* Flags sub-structure
+ * |0  |1  |2  |3  |4  |5  |6  |7  |8  |9  |10 |11 |12 |13 |14 |15 |
+ * |DD |CMP|ERR|  * RSV *  |FTYPE  | *RSV* |RD |VFC|BUF|  HOST_ID  |
+ */
+/* command flags and offsets */
+#define IDPF_CTLQ_FLAG_DD_S		0
+#define IDPF_CTLQ_FLAG_CMP_S		1
+#define IDPF_CTLQ_FLAG_ERR_S		2
+#define IDPF_CTLQ_FLAG_FTYPE_S		6
+#define IDPF_CTLQ_FLAG_RD_S		10
+#define IDPF_CTLQ_FLAG_VFC_S		11
+#define IDPF_CTLQ_FLAG_BUF_S		12
+#define IDPF_CTLQ_FLAG_HOST_ID_S	13
+
+#define IDPF_CTLQ_FLAG_DD	BIT(IDPF_CTLQ_FLAG_DD_S)	/* 0x1	  */
+#define IDPF_CTLQ_FLAG_CMP	BIT(IDPF_CTLQ_FLAG_CMP_S)	/* 0x2	  */
+#define IDPF_CTLQ_FLAG_ERR	BIT(IDPF_CTLQ_FLAG_ERR_S)	/* 0x4	  */
+#define IDPF_CTLQ_FLAG_FTYPE_VM	BIT(IDPF_CTLQ_FLAG_FTYPE_S)	/* 0x40	  */
+#define IDPF_CTLQ_FLAG_FTYPE_PF	BIT(IDPF_CTLQ_FLAG_FTYPE_S + 1)	/* 0x80   */
+#define IDPF_CTLQ_FLAG_RD	BIT(IDPF_CTLQ_FLAG_RD_S)	/* 0x400  */
+#define IDPF_CTLQ_FLAG_VFC	BIT(IDPF_CTLQ_FLAG_VFC_S)	/* 0x800  */
+#define IDPF_CTLQ_FLAG_BUF	BIT(IDPF_CTLQ_FLAG_BUF_S)	/* 0x1000 */
+
+/* Host ID is a special field that has 3b and not a 1b flag */
+#define IDPF_CTLQ_FLAG_HOST_ID_M MAKE_MASK(0x7000UL, IDPF_CTLQ_FLAG_HOST_ID_S)
+
+struct idpf_mbxq_desc {
+	u8 pad[8];		/* CTLQ flags/opcode/len/retval fields */
+	u32 chnl_opcode;	/* avoid confusion with desc->opcode */
+	u32 chnl_retval;	/* ditto for desc->retval */
+	u32 pf_vf_id;		/* used by CP when sending to PF */
+};
+
+/* Define the APF hardware struct to replace other control structs as needed
+ * Align to ctlq_hw_info
+ */
 struct idpf_hw {
 	void __iomem *hw_addr;
 	resource_size_t hw_addr_len;
 
 	void *back;
+
+	/* control queue - send and receive */
+	struct idpf_ctlq_info *asq;
+	struct idpf_ctlq_info *arq;
+
+	/* pci info */
+	u16 device_id;
+	u16 vendor_id;
+	u16 subsystem_device_id;
+	u16 subsystem_vendor_id;
+	u8 revision_id;
+	bool adapter_stopped;
+
+	struct list_head cq_list_head;
 };
 
+int idpf_ctlq_alloc_ring_res(struct idpf_hw *hw,
+			     struct idpf_ctlq_info *cq);
+
+void idpf_ctlq_dealloc_ring_res(struct idpf_hw *hw, struct idpf_ctlq_info *cq);
+
+/* prototype for functions used for dynamic memory allocation */
+void *idpf_alloc_dma_mem(struct idpf_hw *hw, struct idpf_dma_mem *mem,
+			 u64 size);
+void idpf_free_dma_mem(struct idpf_hw *hw, struct idpf_dma_mem *mem);
 #endif /* _IDPF_CONTROLQ_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_controlq_api.h b/drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
new file mode 100644
index 000000000000..1301272a4ca7
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
@@ -0,0 +1,190 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2023 Intel Corporation */
+
+#ifndef _IDPF_CONTROLQ_API_H_
+#define _IDPF_CONTROLQ_API_H_
+
+#include "idpf_mem.h"
+
+struct idpf_hw;
+
+/* Used for queue init, response and events */
+enum idpf_ctlq_type {
+	IDPF_CTLQ_TYPE_MAILBOX_TX	= 0,
+	IDPF_CTLQ_TYPE_MAILBOX_RX	= 1,
+	IDPF_CTLQ_TYPE_CONFIG_TX	= 2,
+	IDPF_CTLQ_TYPE_CONFIG_RX	= 3,
+	IDPF_CTLQ_TYPE_EVENT_RX		= 4,
+	IDPF_CTLQ_TYPE_RDMA_TX		= 5,
+	IDPF_CTLQ_TYPE_RDMA_RX		= 6,
+	IDPF_CTLQ_TYPE_RDMA_COMPL	= 7
+};
+
+/* Generic Control Queue Structures */
+struct idpf_ctlq_reg {
+	/* used for queue tracking */
+	u32 head;
+	u32 tail;
+	/* Below applies only to default mb (if present) */
+	u32 len;
+	u32 bah;
+	u32 bal;
+	u32 len_mask;
+	u32 len_ena_mask;
+	u32 head_mask;
+};
+
+/* Generic queue msg structure */
+struct idpf_ctlq_msg {
+	u8 vmvf_type; /* represents the source of the message on recv */
+#define IDPF_VMVF_TYPE_VF 0
+#define IDPF_VMVF_TYPE_VM 1
+#define IDPF_VMVF_TYPE_PF 2
+	u8 host_id;
+	/* 3b field used only when sending a message to peer - to be used in
+	 * combination with target func_id to route the message
+	 */
+#define IDPF_HOST_ID_MASK 0x7
+
+	u16 opcode;
+	u16 data_len;	/* data_len = 0 when no payload is attached */
+	union {
+		u16 func_id;	/* when sending a message */
+		u16 status;	/* when receiving a message */
+	};
+	union {
+		struct {
+			u32 chnl_opcode;
+			u32 chnl_retval;
+		} mbx;
+	} cookie;
+	union {
+#define IDPF_DIRECT_CTX_SIZE	16
+#define IDPF_INDIRECT_CTX_SIZE	8
+		/* 16 bytes of context can be provided or 8 bytes of context
+		 * plus the address of a DMA buffer
+		 */
+		u8 direct[IDPF_DIRECT_CTX_SIZE];
+		struct {
+			u8 context[IDPF_INDIRECT_CTX_SIZE];
+			struct idpf_dma_mem *payload;
+		} indirect;
+	} ctx;
+};
+
+/* Generic queue info structures */
+/* MB, CONFIG and EVENT q do not have extended info */
+struct idpf_ctlq_create_info {
+	enum idpf_ctlq_type type;
+	int id; /* absolute queue offset passed as input
+		 * -1 for default mailbox if present
+		 */
+	u16 len; /* Queue length passed as input */
+	u16 buf_size; /* buffer size passed as input */
+	u64 base_address; /* output, HPA of the Queue start  */
+	struct idpf_ctlq_reg reg; /* registers accessed by ctlqs */
+
+	int ext_info_size;
+	void *ext_info; /* Specific to q type */
+};
+
+/* Control Queue information */
+struct idpf_ctlq_info {
+	struct list_head cq_list;
+
+	enum idpf_ctlq_type cq_type;
+	int q_id;
+	struct mutex cq_lock;		/* queue lock
+					 * idpf_lock is defined in OSdep.h
+					 */
+	/* used for interrupt processing */
+	u16 next_to_use;
+	u16 next_to_clean;
+	u16 next_to_post;		/* starting descriptor to post buffers
+					 * to after recev
+					 */
+
+	struct idpf_dma_mem desc_ring;	/* descriptor ring memory
+					 * idpf_dma_mem is defined in OSdep.h
+					 */
+	union {
+		struct idpf_dma_mem **rx_buff;
+		struct idpf_ctlq_msg **tx_msg;
+	} bi;
+
+	u16 buf_size;			/* queue buffer size */
+	u16 ring_size;			/* Number of descriptors */
+	struct idpf_ctlq_reg reg;	/* registers accessed by ctlqs */
+};
+
+/* PF/VF mailbox commands */
+enum idpf_mbx_opc {
+	/* idpf_mbq_opc_send_msg_to_pf:
+	 *	usage: used by PF or VF to send a message to its CPF
+	 *	target: RX queue and function ID of parent PF taken from HW
+	 */
+	idpf_mbq_opc_send_msg_to_pf		= 0x0801,
+
+	/* idpf_mbq_opc_send_msg_to_vf:
+	 *	usage: used by PF to send message to a VF
+	 *	target: VF control queue ID must be specified in descriptor
+	 */
+	idpf_mbq_opc_send_msg_to_vf		= 0x0802,
+
+	/* idpf_mbq_opc_send_msg_to_peer_pf:
+	 *	usage: used by any function to send message to any peer PF
+	 *	target: RX queue and host of parent PF taken from HW
+	 */
+	idpf_mbq_opc_send_msg_to_peer_pf	= 0x0803,
+
+	/* idpf_mbq_opc_send_msg_to_peer_drv:
+	 *	usage: used by any function to send message to any peer driver
+	 *	target: RX queue and target host must be specific in descriptor
+	 */
+	idpf_mbq_opc_send_msg_to_peer_drv	= 0x0804,
+};
+
+/* API supported for control queue management */
+/* Will init all required q including default mb.  "q_info" is an array of
+ * create_info structs equal to the number of control queues to be created.
+ */
+int idpf_ctlq_init(struct idpf_hw *hw, u8 num_q,
+		   struct idpf_ctlq_create_info *q_info);
+
+/* Allocate and initialize a single control queue, which will be added to the
+ * control queue list; returns a handle to the created control queue
+ */
+int idpf_ctlq_add(struct idpf_hw *hw,
+		  struct idpf_ctlq_create_info *qinfo,
+		  struct idpf_ctlq_info **cq);
+
+/* Deinitialize and deallocate a single control queue */
+void idpf_ctlq_remove(struct idpf_hw *hw,
+		      struct idpf_ctlq_info *cq);
+
+/* Sends messages to HW and will also free the buffer*/
+int idpf_ctlq_send(struct idpf_hw *hw,
+		   struct idpf_ctlq_info *cq,
+		   u16 num_q_msg,
+		   struct idpf_ctlq_msg q_msg[]);
+
+/* Receives messages and called by interrupt handler/polling
+ * initiated by app/process. Also caller is supposed to free the buffers
+ */
+int idpf_ctlq_recv(struct idpf_ctlq_info *cq, u16 *num_q_msg,
+		   struct idpf_ctlq_msg *q_msg);
+
+/* Reclaims send descriptors on HW write back */
+int idpf_ctlq_clean_sq(struct idpf_ctlq_info *cq, u16 *clean_count,
+		       struct idpf_ctlq_msg *msg_status[]);
+
+/* Indicate RX buffers are done being processed */
+int idpf_ctlq_post_rx_buffs(struct idpf_hw *hw,
+			    struct idpf_ctlq_info *cq,
+			    u16 *buff_count,
+			    struct idpf_dma_mem **buffs);
+
+/* Will destroy all q including the default mb */
+void idpf_ctlq_deinit(struct idpf_hw *hw);
+
+#endif /* _IDPF_CONTROLQ_API_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_controlq_setup.c b/drivers/net/ethernet/intel/idpf/idpf_controlq_setup.c
new file mode 100644
index 000000000000..d15deb9ac546
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_controlq_setup.c
@@ -0,0 +1,175 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2023 Intel Corporation */
+
+#include "idpf_controlq.h"
+
+/**
+ * idpf_ctlq_alloc_desc_ring - Allocate Control Queue (CQ) rings
+ * @hw: pointer to hw struct
+ * @cq: pointer to the specific Control queue
+ */
+static int idpf_ctlq_alloc_desc_ring(struct idpf_hw *hw,
+				     struct idpf_ctlq_info *cq)
+{
+	size_t size = cq->ring_size * sizeof(struct idpf_ctlq_desc);
+
+	cq->desc_ring.va = idpf_alloc_dma_mem(hw, &cq->desc_ring, size);
+	if (!cq->desc_ring.va)
+		return -ENOMEM;
+
+	return 0;
+}
+
+/**
+ * idpf_ctlq_alloc_bufs - Allocate Control Queue (CQ) buffers
+ * @hw: pointer to hw struct
+ * @cq: pointer to the specific Control queue
+ *
+ * Allocate the buffer head for all control queues, and if it's a receive
+ * queue, allocate DMA buffers
+ */
+static int idpf_ctlq_alloc_bufs(struct idpf_hw *hw,
+				struct idpf_ctlq_info *cq)
+{
+	int i = 0;
+
+	/* Do not allocate DMA buffers for transmit queues */
+	if (cq->cq_type == IDPF_CTLQ_TYPE_MAILBOX_TX)
+		return 0;
+
+	/* We'll be allocating the buffer info memory first, then we can
+	 * allocate the mapped buffers for the event processing
+	 */
+	cq->bi.rx_buff = kcalloc(cq->ring_size, sizeof(struct idpf_dma_mem *),
+				 GFP_KERNEL);
+	if (!cq->bi.rx_buff)
+		return -ENOMEM;
+
+	/* allocate the mapped buffers (except for the last one) */
+	for (i = 0; i < cq->ring_size - 1; i++) {
+		struct idpf_dma_mem *bi;
+		int num = 1; /* number of idpf_dma_mem to be allocated */
+
+		cq->bi.rx_buff[i] = kcalloc(num, sizeof(struct idpf_dma_mem),
+					    GFP_KERNEL);
+		if (!cq->bi.rx_buff[i])
+			goto unwind_alloc_cq_bufs;
+
+		bi = cq->bi.rx_buff[i];
+
+		bi->va = idpf_alloc_dma_mem(hw, bi, cq->buf_size);
+		if (!bi->va) {
+			/* unwind will not free the failed entry */
+			kfree(cq->bi.rx_buff[i]);
+			goto unwind_alloc_cq_bufs;
+		}
+	}
+
+	return 0;
+
+unwind_alloc_cq_bufs:
+	/* don't try to free the one that failed... */
+	i--;
+	for (; i >= 0; i--) {
+		idpf_free_dma_mem(hw, cq->bi.rx_buff[i]);
+		kfree(cq->bi.rx_buff[i]);
+	}
+	kfree(cq->bi.rx_buff);
+
+	return -ENOMEM;
+}
+
+/**
+ * idpf_ctlq_free_desc_ring - Free Control Queue (CQ) rings
+ * @hw: pointer to hw struct
+ * @cq: pointer to the specific Control queue
+ *
+ * This assumes the posted send buffers have already been cleaned
+ * and de-allocated
+ */
+static void idpf_ctlq_free_desc_ring(struct idpf_hw *hw,
+				     struct idpf_ctlq_info *cq)
+{
+	idpf_free_dma_mem(hw, &cq->desc_ring);
+}
+
+/**
+ * idpf_ctlq_free_bufs - Free CQ buffer info elements
+ * @hw: pointer to hw struct
+ * @cq: pointer to the specific Control queue
+ *
+ * Free the DMA buffers for RX queues, and DMA buffer header for both RX and TX
+ * queues.  The upper layers are expected to manage freeing of TX DMA buffers
+ */
+static void idpf_ctlq_free_bufs(struct idpf_hw *hw, struct idpf_ctlq_info *cq)
+{
+	void *bi;
+
+	if (cq->cq_type == IDPF_CTLQ_TYPE_MAILBOX_RX) {
+		int i;
+
+		/* free DMA buffers for rx queues*/
+		for (i = 0; i < cq->ring_size; i++) {
+			if (cq->bi.rx_buff[i]) {
+				idpf_free_dma_mem(hw, cq->bi.rx_buff[i]);
+				kfree(cq->bi.rx_buff[i]);
+			}
+		}
+
+		bi = (void *)cq->bi.rx_buff;
+	} else {
+		bi = (void *)cq->bi.tx_msg;
+	}
+
+	/* free the buffer header */
+	kfree(bi);
+}
+
+/**
+ * idpf_ctlq_dealloc_ring_res - Free memory allocated for control queue
+ * @hw: pointer to hw struct
+ * @cq: pointer to the specific Control queue
+ *
+ * Free the memory used by the ring, buffers and other related structures
+ */
+void idpf_ctlq_dealloc_ring_res(struct idpf_hw *hw, struct idpf_ctlq_info *cq)
+{
+	/* free ring buffers and the ring itself */
+	idpf_ctlq_free_bufs(hw, cq);
+	idpf_ctlq_free_desc_ring(hw, cq);
+}
+
+/**
+ * idpf_ctlq_alloc_ring_res - allocate memory for descriptor ring and bufs
+ * @hw: pointer to hw struct
+ * @cq: pointer to control queue struct
+ *
+ * Do *NOT* hold the lock when calling this as the memory allocation routines
+ * called are not going to be atomic context safe
+ */
+int idpf_ctlq_alloc_ring_res(struct idpf_hw *hw, struct idpf_ctlq_info *cq)
+{
+	int ret_code;
+
+	/* verify input for valid configuration */
+	if (!cq->ring_size || !cq->buf_size)
+		return -EINVAL;
+
+	/* allocate the ring memory */
+	ret_code = idpf_ctlq_alloc_desc_ring(hw, cq);
+	if (ret_code)
+		return ret_code;
+
+	/* allocate buffers in the rings */
+	ret_code = idpf_ctlq_alloc_bufs(hw, cq);
+	if (ret_code)
+		goto idpf_init_cq_free_ring;
+
+	/* success! */
+	return 0;
+
+idpf_init_cq_free_ring:
+	idpf_free_dma_mem(hw, &cq->desc_ring);
+
+	return ret_code;
+}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_dev.c
new file mode 100644
index 000000000000..a1bb080c1944
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_dev.c
@@ -0,0 +1,103 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2023 Intel Corporation */
+
+#include "idpf.h"
+#include "idpf_lan_pf_regs.h"
+
+/**
+ * idpf_ctlq_reg_init - initialize default mailbox registers
+ * @cq: pointer to the array of create control queues
+ */
+static void idpf_ctlq_reg_init(struct idpf_ctlq_create_info *cq)
+{
+	int i;
+
+	for (i = 0; i < IDPF_NUM_DFLT_MBX_Q; i++) {
+		struct idpf_ctlq_create_info *ccq = cq + i;
+
+		switch (ccq->type) {
+		case IDPF_CTLQ_TYPE_MAILBOX_TX:
+			/* set head and tail registers in our local struct */
+			ccq->reg.head = PF_FW_ATQH;
+			ccq->reg.tail = PF_FW_ATQT;
+			ccq->reg.len = PF_FW_ATQLEN;
+			ccq->reg.bah = PF_FW_ATQBAH;
+			ccq->reg.bal = PF_FW_ATQBAL;
+			ccq->reg.len_mask = PF_FW_ATQLEN_ATQLEN_M;
+			ccq->reg.len_ena_mask = PF_FW_ATQLEN_ATQENABLE_M;
+			ccq->reg.head_mask = PF_FW_ATQH_ATQH_M;
+			break;
+		case IDPF_CTLQ_TYPE_MAILBOX_RX:
+			/* set head and tail registers in our local struct */
+			ccq->reg.head = PF_FW_ARQH;
+			ccq->reg.tail = PF_FW_ARQT;
+			ccq->reg.len = PF_FW_ARQLEN;
+			ccq->reg.bah = PF_FW_ARQBAH;
+			ccq->reg.bal = PF_FW_ARQBAL;
+			ccq->reg.len_mask = PF_FW_ARQLEN_ARQLEN_M;
+			ccq->reg.len_ena_mask = PF_FW_ARQLEN_ARQENABLE_M;
+			ccq->reg.head_mask = PF_FW_ARQH_ARQH_M;
+			break;
+		default:
+			break;
+		}
+	}
+}
+
+/**
+ * idpf_reset_reg_init - Initialize reset registers
+ * @adapter: Driver specific private structure
+ */
+static void idpf_reset_reg_init(struct idpf_adapter *adapter)
+{
+	adapter->reset_reg.rstat = idpf_get_reg_addr(adapter, PFGEN_RSTAT);
+	adapter->reset_reg.rstat_m = PFGEN_RSTAT_PFR_STATE_M;
+}
+
+/**
+ * idpf_trigger_reset - trigger reset
+ * @adapter: Driver specific private structure
+ * @trig_cause: Reason to trigger a reset
+ */
+static void idpf_trigger_reset(struct idpf_adapter *adapter,
+			       enum idpf_flags __always_unused trig_cause)
+{
+	u32 reset_reg;
+
+	reset_reg = readl(idpf_get_reg_addr(adapter, PFGEN_CTRL));
+	writel(reset_reg | PFGEN_CTRL_PFSWR, idpf_get_reg_addr(adapter, PFGEN_CTRL));
+}
+
+/**
+ * idpf_reg_ops_init - Initialize register API function pointers
+ * @adapter: Driver specific private structure
+ */
+static void idpf_reg_ops_init(struct idpf_adapter *adapter)
+{
+	adapter->dev_ops.reg_ops.ctlq_reg_init = idpf_ctlq_reg_init;
+	adapter->dev_ops.reg_ops.reset_reg_init = idpf_reset_reg_init;
+	adapter->dev_ops.reg_ops.trigger_reset = idpf_trigger_reset;
+}
+
+/**
+ * idpf_dev_ops_init - Initialize device API function pointers
+ * @adapter: Driver specific private structure
+ */
+static void idpf_dev_ops_init(struct idpf_adapter *adapter)
+{
+	idpf_reg_ops_init(adapter);
+}
+
+/**
+ * idpf_pf_probe - Device initialization routine
+ * @pdev: PCI device information struct
+ * @adapter: pointer to adapter structure allocated by caller
+ *
+ * Returns 0 on success, negative on failure
+ */
+int idpf_pf_probe(struct pci_dev *pdev, struct idpf_adapter *adapter)
+{
+	idpf_dev_ops_init(adapter);
+
+	return idpf_probe_common(pdev, adapter);
+}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_devids.h b/drivers/net/ethernet/intel/idpf/idpf_devids.h
new file mode 100644
index 000000000000..5154a52ae61c
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_devids.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2023 Intel Corporation */
+
+#ifndef _IDPF_DEVIDS_H_
+#define _IDPF_DEVIDS_H_
+
+#define IDPF_DEV_ID_PF			0x1452
+#define IDPF_DEV_ID_VF			0x145C
+
+#endif /* _IDPF_DEVIDS_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lan_pf_regs.h b/drivers/net/ethernet/intel/idpf/idpf_lan_pf_regs.h
new file mode 100644
index 000000000000..9cc9610990b4
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_lan_pf_regs.h
@@ -0,0 +1,70 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2023 Intel Corporation */
+
+#ifndef _IDPF_LAN_PF_REGS_H_
+#define _IDPF_LAN_PF_REGS_H_
+
+/* Receive queues */
+#define PF_QRX_BASE			0x00000000
+#define PF_QRX_TAIL(_QRX)		(PF_QRX_BASE + (((_QRX) * 0x1000)))
+#define PF_QRX_BUFFQ_BASE		0x03000000
+#define PF_QRX_BUFFQ_TAIL(_QRX)		(PF_QRX_BUFFQ_BASE + (((_QRX) * 0x1000)))
+
+/* Transmit queues */
+#define PF_QTX_BASE			0x05000000
+#define PF_QTX_COMM_DBELL(_DBQM)	(PF_QTX_BASE + ((_DBQM) * 0x1000))
+
+/* Control(PF Mailbox) Queue */
+#define PF_FW_BASE			0x08400000
+
+#define PF_FW_ARQBAL			(PF_FW_BASE)
+#define PF_FW_ARQBAH			(PF_FW_BASE + 0x4)
+#define PF_FW_ARQLEN			(PF_FW_BASE + 0x8)
+#define PF_FW_ARQLEN_ARQLEN_S		0
+#define PF_FW_ARQLEN_ARQLEN_M		GENMASK(12, 0)
+#define PF_FW_ARQLEN_ARQVFE_S		28
+#define PF_FW_ARQLEN_ARQVFE_M		BIT(PF_FW_ARQLEN_ARQVFE_S)
+#define PF_FW_ARQLEN_ARQOVFL_S		29
+#define PF_FW_ARQLEN_ARQOVFL_M		BIT(PF_FW_ARQLEN_ARQOVFL_S)
+#define PF_FW_ARQLEN_ARQCRIT_S		30
+#define PF_FW_ARQLEN_ARQCRIT_M		BIT(PF_FW_ARQLEN_ARQCRIT_S)
+#define PF_FW_ARQLEN_ARQENABLE_S	31
+#define PF_FW_ARQLEN_ARQENABLE_M	BIT(PF_FW_ARQLEN_ARQENABLE_S)
+#define PF_FW_ARQH			(PF_FW_BASE + 0xC)
+#define PF_FW_ARQH_ARQH_S		0
+#define PF_FW_ARQH_ARQH_M		GENMASK(12, 0)
+#define PF_FW_ARQT			(PF_FW_BASE + 0x10)
+
+#define PF_FW_ATQBAL			(PF_FW_BASE + 0x14)
+#define PF_FW_ATQBAH			(PF_FW_BASE + 0x18)
+#define PF_FW_ATQLEN			(PF_FW_BASE + 0x1C)
+#define PF_FW_ATQLEN_ATQLEN_S		0
+#define PF_FW_ATQLEN_ATQLEN_M		GENMASK(9, 0)
+#define PF_FW_ATQLEN_ATQVFE_S		28
+#define PF_FW_ATQLEN_ATQVFE_M		BIT(PF_FW_ATQLEN_ATQVFE_S)
+#define PF_FW_ATQLEN_ATQOVFL_S		29
+#define PF_FW_ATQLEN_ATQOVFL_M		BIT(PF_FW_ATQLEN_ATQOVFL_S)
+#define PF_FW_ATQLEN_ATQCRIT_S		30
+#define PF_FW_ATQLEN_ATQCRIT_M		BIT(PF_FW_ATQLEN_ATQCRIT_S)
+#define PF_FW_ATQLEN_ATQENABLE_S	31
+#define PF_FW_ATQLEN_ATQENABLE_M	BIT(PF_FW_ATQLEN_ATQENABLE_S)
+#define PF_FW_ATQH			(PF_FW_BASE + 0x20)
+#define PF_FW_ATQH_ATQH_S		0
+#define PF_FW_ATQH_ATQH_M		GENMASK(9, 0)
+#define PF_FW_ATQT			(PF_FW_BASE + 0x24)
+
+/* Reset registers */
+#define PFGEN_RTRIG			0x08407000
+#define PFGEN_RTRIG_CORER_S		0
+#define PFGEN_RTRIG_CORER_M		BIT(0)
+#define PFGEN_RTRIG_LINKR_S		1
+#define PFGEN_RTRIG_LINKR_M		BIT(1)
+#define PFGEN_RTRIG_IMCR_S		2
+#define PFGEN_RTRIG_IMCR_M		BIT(2)
+#define PFGEN_RSTAT			0x08407008 /* PFR Status */
+#define PFGEN_RSTAT_PFR_STATE_S		0
+#define PFGEN_RSTAT_PFR_STATE_M		GENMASK(1, 0)
+#define PFGEN_CTRL			0x0840700C
+#define PFGEN_CTRL_PFSWR		BIT(0)
+
+#endif
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lan_vf_regs.h b/drivers/net/ethernet/intel/idpf/idpf_lan_vf_regs.h
new file mode 100644
index 000000000000..8040bedea2fd
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_lan_vf_regs.h
@@ -0,0 +1,65 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2023 Intel Corporation */
+
+#ifndef _IDPF_LAN_VF_REGS_H_
+#define _IDPF_LAN_VF_REGS_H_
+
+/* Reset */
+#define VFGEN_RSTAT			0x00008800
+#define VFGEN_RSTAT_VFR_STATE_S		0
+#define VFGEN_RSTAT_VFR_STATE_M		GENMASK(1, 0)
+
+/* Control(VF Mailbox) Queue */
+#define VF_BASE				0x00006000
+
+#define VF_ATQBAL			(VF_BASE + 0x1C00)
+#define VF_ATQBAH			(VF_BASE + 0x1800)
+#define VF_ATQLEN			(VF_BASE + 0x0800)
+#define VF_ATQLEN_ATQLEN_S		0
+#define VF_ATQLEN_ATQLEN_M		GENMASK(9, 0)
+#define VF_ATQLEN_ATQVFE_S		28
+#define VF_ATQLEN_ATQVFE_M		BIT(VF_ATQLEN_ATQVFE_S)
+#define VF_ATQLEN_ATQOVFL_S		29
+#define VF_ATQLEN_ATQOVFL_M		BIT(VF_ATQLEN_ATQOVFL_S)
+#define VF_ATQLEN_ATQCRIT_S		30
+#define VF_ATQLEN_ATQCRIT_M		BIT(VF_ATQLEN_ATQCRIT_S)
+#define VF_ATQLEN_ATQENABLE_S		31
+#define VF_ATQLEN_ATQENABLE_M		BIT(VF_ATQLEN_ATQENABLE_S)
+#define VF_ATQH				(VF_BASE + 0x0400)
+#define VF_ATQH_ATQH_S			0
+#define VF_ATQH_ATQH_M			GENMASK(9, 0)
+#define VF_ATQT				(VF_BASE + 0x2400)
+
+#define VF_ARQBAL			(VF_BASE + 0x0C00)
+#define VF_ARQBAH			(VF_BASE)
+#define VF_ARQLEN			(VF_BASE + 0x2000)
+#define VF_ARQLEN_ARQLEN_S		0
+#define VF_ARQLEN_ARQLEN_M		GENMASK(9, 0)
+#define VF_ARQLEN_ARQVFE_S		28
+#define VF_ARQLEN_ARQVFE_M		BIT(VF_ARQLEN_ARQVFE_S)
+#define VF_ARQLEN_ARQOVFL_S		29
+#define VF_ARQLEN_ARQOVFL_M		BIT(VF_ARQLEN_ARQOVFL_S)
+#define VF_ARQLEN_ARQCRIT_S		30
+#define VF_ARQLEN_ARQCRIT_M		BIT(VF_ARQLEN_ARQCRIT_S)
+#define VF_ARQLEN_ARQENABLE_S		31
+#define VF_ARQLEN_ARQENABLE_M		BIT(VF_ARQLEN_ARQENABLE_S)
+#define VF_ARQH				(VF_BASE + 0x1400)
+#define VF_ARQH_ARQH_S			0
+#define VF_ARQH_ARQH_M			GENMASK(12, 0)
+#define VF_ARQT				(VF_BASE + 0x1000)
+
+/* Transmit queues */
+#define VF_QTX_TAIL_BASE		0x00000000
+#define VF_QTX_TAIL(_QTX)		(VF_QTX_TAIL_BASE + (_QTX) * 0x4)
+#define VF_QTX_TAIL_EXT_BASE		0x00040000
+#define VF_QTX_TAIL_EXT(_QTX)		(VF_QTX_TAIL_EXT_BASE + ((_QTX) * 4))
+
+/* Receive queues */
+#define VF_QRX_TAIL_BASE		0x00002000
+#define VF_QRX_TAIL(_QRX)		(VF_QRX_TAIL_BASE + ((_QRX) * 4))
+#define VF_QRX_TAIL_EXT_BASE		0x00050000
+#define VF_QRX_TAIL_EXT(_QRX)		(VF_QRX_TAIL_EXT_BASE + ((_QRX) * 4))
+#define VF_QRXB_TAIL_BASE		0x00060000
+#define VF_QRXB_TAIL(_QRX)		(VF_QRXB_TAIL_BASE + ((_QRX) * 4))
+
+#endif
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index bf25574c75e4..4f948cff8fc1 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -26,6 +26,113 @@ static int idpf_cfg_hw(struct idpf_adapter *adapter)
 	return 0;
 }
 
+/**
+ * idpf_check_reset_complete - check that reset is complete
+ * @hw: pointer to hw struct
+ * @reset_reg: struct with reset registers
+ *
+ * Returns 0 if device is ready to use, or -EBUSY if it's in reset.
+ **/
+static int idpf_check_reset_complete(struct idpf_hw *hw,
+				     struct idpf_reset_reg *reset_reg)
+{
+	struct idpf_adapter *adapter = (struct idpf_adapter *)hw->back;
+	int i;
+
+	for (i = 0; i < 2000; i++) {
+		u32 reg_val = readl(reset_reg->rstat);
+
+		/* 0xFFFFFFFF might be read if other side hasn't cleared the
+		 * register for us yet and 0xFFFFFFFF is not a valid value for
+		 * the register, so treat that as invalid.
+		 */
+		if (reg_val != 0xFFFFFFFF && (reg_val & reset_reg->rstat_m))
+			return 0;
+
+		usleep_range(5000, 10000);
+	}
+
+	dev_warn(&adapter->pdev->dev, "Device reset timeout!\n");
+	/* Clear the reset flag unconditionally here since the reset
+	 * technically isn't in progress anymore from the driver's perspective
+	 */
+	clear_bit(__IDPF_HR_RESET_IN_PROG, adapter->flags);
+
+	return -EBUSY;
+}
+
+/**
+ * idpf_init_hard_reset - Initiate a hardware reset
+ * @adapter: Driver specific private structure
+ *
+ * Deallocate the vports and all the resources associated with them and
+ * reallocate. Also reinitialize the mailbox. Return 0 on success,
+ * negative on failure.
+ */
+static int idpf_init_hard_reset(struct idpf_adapter *adapter)
+{
+	struct idpf_reg_ops *reg_ops = &adapter->dev_ops.reg_ops;
+	struct device *dev = &adapter->pdev->dev;
+	int err;
+
+	mutex_lock(&adapter->reset_lock);
+
+	dev_info(dev, "Device HW Reset initiated\n");
+	/* Prepare for reset */
+	if (test_and_clear_bit(__IDPF_HR_DRV_LOAD, adapter->flags)) {
+		reg_ops->trigger_reset(adapter, __IDPF_HR_DRV_LOAD);
+	} else if (test_and_clear_bit(__IDPF_HR_FUNC_RESET, adapter->flags)) {
+		bool is_reset = idpf_is_reset_detected(adapter);
+
+		if (!is_reset)
+			reg_ops->trigger_reset(adapter, __IDPF_HR_FUNC_RESET);
+		idpf_deinit_dflt_mbx(adapter);
+	} else {
+		dev_err(dev, "Unhandled hard reset cause\n");
+		err = -EBADRQC;
+		goto handle_err;
+	}
+
+	/* Wait for reset to complete */
+	err = idpf_check_reset_complete(&adapter->hw, &adapter->reset_reg);
+	if (err) {
+		dev_err(dev, "The driver was unable to contact the device's firmware. Check that the FW is running. Driver state= 0x%x\n",
+			adapter->state);
+		goto handle_err;
+	}
+
+	/* Reset is complete and so start building the driver resources again */
+	err = idpf_init_dflt_mbx(adapter);
+	if (err)
+		dev_err(dev, "Failed to initialize default mailbox: %d\n", err);
+
+handle_err:
+	mutex_unlock(&adapter->reset_lock);
+
+	return err;
+}
+
+/**
+ * idpf_vc_event_task - Handle virtchannel event logic
+ * @work: work queue struct
+ */
+static void idpf_vc_event_task(struct work_struct *work)
+{
+	struct idpf_adapter *adapter;
+
+	adapter = container_of(work, struct idpf_adapter, vc_event_task.work);
+
+	if (test_bit(__IDPF_REMOVE_IN_PROG, adapter->flags))
+		return;
+
+	if (test_bit(__IDPF_HR_CORE_RESET, adapter->flags) ||
+	    test_bit(__IDPF_HR_FUNC_RESET, adapter->flags) ||
+	    test_bit(__IDPF_HR_DRV_LOAD, adapter->flags)) {
+		set_bit(__IDPF_HR_RESET_IN_PROG, adapter->flags);
+		idpf_init_hard_reset(adapter);
+	}
+}
+
 /**
  * idpf_probe_common - Device initialization routine
  * @pdev: PCI device information struct
@@ -63,6 +170,15 @@ int idpf_probe_common(struct pci_dev *pdev, struct idpf_adapter *adapter)
 	pci_set_master(pdev);
 	pci_set_drvdata(pdev, adapter);
 
+	adapter->vc_event_wq = alloc_workqueue("%s-%s-vc_event", 0, 0,
+					       dev_driver_string(dev),
+					       dev_name(dev));
+	if (!adapter->vc_event_wq) {
+		dev_err(dev, "Failed to allocate virtchnl event workqueue\n");
+		err = -ENOMEM;
+		goto err_vc_event_wq_alloc;
+	}
+
 	/* setup msglvl */
 	adapter->msg_enable = netif_msg_init(-1, IDPF_AVAIL_NETIF_M);
 
@@ -73,9 +189,20 @@ int idpf_probe_common(struct pci_dev *pdev, struct idpf_adapter *adapter)
 		goto err_cfg_hw;
 	}
 
+	mutex_init(&adapter->reset_lock);
+
+	INIT_DELAYED_WORK(&adapter->vc_event_task, idpf_vc_event_task);
+
+	adapter->dev_ops.reg_ops.reset_reg_init(adapter);
+	set_bit(__IDPF_HR_DRV_LOAD, adapter->flags);
+	queue_delayed_work(adapter->vc_event_wq, &adapter->vc_event_task,
+			   msecs_to_jiffies(10 * (pdev->devfn & 0x07)));
+
 	return 0;
 
 err_cfg_hw:
+	destroy_workqueue(adapter->vc_event_wq);
+err_vc_event_wq_alloc:
 	pci_disable_pcie_error_reporting(pdev);
 
 	return err;
@@ -92,5 +219,54 @@ void idpf_remove_common(struct pci_dev *pdev)
 	if (!adapter)
 		return;
 
+	set_bit(__IDPF_REMOVE_IN_PROG, adapter->flags);
+
+	/* Wait until vc_event_task is done to consider if any hard reset is
+	 * in progress else we may go ahead and release the resources but the
+	 * thread doing the hard reset might continue the init path and
+	 * end up in bad state.
+	 */
+	cancel_delayed_work_sync(&adapter->vc_event_task);
+	/* Be a good citizen and leave the device clean on exit */
+	adapter->dev_ops.reg_ops.trigger_reset(adapter, __IDPF_HR_FUNC_RESET);
+	idpf_deinit_dflt_mbx(adapter);
+
+	destroy_workqueue(adapter->vc_event_wq);
+	mutex_destroy(&adapter->reset_lock);
+
 	pci_disable_pcie_error_reporting(pdev);
 }
+
+/**
+ * idpf_alloc_dma_mem - Allocate dma memory
+ * @hw: pointer to hw struct
+ * @mem: pointer to dma_mem struct
+ * @size: size of the memory to allocate
+ */
+void *idpf_alloc_dma_mem(struct idpf_hw *hw, struct idpf_dma_mem *mem, u64 size)
+{
+	struct idpf_adapter *adapter = (struct idpf_adapter *)hw->back;
+	size_t sz = ALIGN(size, 4096);
+
+	mem->va = dma_alloc_coherent(&adapter->pdev->dev, sz,
+				     &mem->pa, GFP_KERNEL | __GFP_ZERO);
+	mem->size = sz;
+
+	return mem->va;
+}
+
+/**
+ * idpf_free_dma_mem - Free the allocated dma memory
+ * @hw: pointer to hw struct
+ * @mem: pointer to dma_mem struct
+ */
+void idpf_free_dma_mem(struct idpf_hw *hw, struct idpf_dma_mem *mem)
+{
+	struct idpf_adapter *adapter = (struct idpf_adapter *)hw->back;
+
+	dma_free_coherent(&adapter->pdev->dev, mem->size,
+			  mem->va, mem->pa);
+	mem->size = 0;
+	mem->va = NULL;
+	mem->pa = 0;
+}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index 617df9b924fa..9907964b1c14 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -2,6 +2,7 @@
 /* Copyright (C) 2023 Intel Corporation */
 
 #include "idpf.h"
+#include "idpf_devids.h"
 
 #define DRV_SUMMARY	"Infrastructure Data Path Function Linux Driver"
 
@@ -50,7 +51,16 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (!adapter)
 		return -ENOMEM;
 
-	return idpf_probe_common(pdev, adapter);
+	if (ent->device == IDPF_DEV_ID_PF)
+		return idpf_pf_probe(pdev, adapter);
+	if (ent->device == IDPF_DEV_ID_VF)
+		return idpf_vf_probe(pdev, adapter);
+
+	dev_err(&pdev->dev, "Unexpected dev ID 0x%x in idpf probe\n",
+		ent->device);
+
+	return -EINVAL;
+
 }
 
 /* idpf_pci_tbl - PCI Dev idpf ID Table
diff --git a/drivers/net/ethernet/intel/idpf/idpf_mem.h b/drivers/net/ethernet/intel/idpf/idpf_mem.h
new file mode 100644
index 000000000000..b21a04fccf0f
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_mem.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2023 Intel Corporation */
+
+#ifndef _IDPF_MEM_H_
+#define _IDPF_MEM_H_
+
+#include <linux/io.h>
+
+struct idpf_dma_mem {
+	void *va;
+	dma_addr_t pa;
+	size_t size;
+};
+
+#define wr32(a, reg, value)	writel((value), ((a)->hw_addr + (reg)))
+#define rd32(a, reg)		readl((a)->hw_addr + (reg))
+#define wr64(a, reg, value)	writeq((value), ((a)->hw_addr + (reg)))
+#define rd64(a, reg)		readq((a)->hw_addr + (reg))
+
+#endif /* _IDPF_MEM_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
new file mode 100644
index 000000000000..1a166ec1e979
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
@@ -0,0 +1,100 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2023 Intel Corporation */
+
+#include "idpf.h"
+#include "idpf_lan_vf_regs.h"
+
+/**
+ * idpf_vf_ctlq_reg_init - initialize default mailbox registers
+ * @cq: pointer to the array of create control queues
+ */
+static void idpf_vf_ctlq_reg_init(struct idpf_ctlq_create_info *cq)
+{
+	int i;
+
+	for (i = 0; i < IDPF_NUM_DFLT_MBX_Q; i++) {
+		struct idpf_ctlq_create_info *ccq = cq + i;
+
+		switch (ccq->type) {
+		case IDPF_CTLQ_TYPE_MAILBOX_TX:
+			/* set head and tail registers in our local struct */
+			ccq->reg.head = VF_ATQH;
+			ccq->reg.tail = VF_ATQT;
+			ccq->reg.len = VF_ATQLEN;
+			ccq->reg.bah = VF_ATQBAH;
+			ccq->reg.bal = VF_ATQBAL;
+			ccq->reg.len_mask = VF_ATQLEN_ATQLEN_M;
+			ccq->reg.len_ena_mask = VF_ATQLEN_ATQENABLE_M;
+			ccq->reg.head_mask = VF_ATQH_ATQH_M;
+			break;
+		case IDPF_CTLQ_TYPE_MAILBOX_RX:
+			/* set head and tail registers in our local struct */
+			ccq->reg.head = VF_ARQH;
+			ccq->reg.tail = VF_ARQT;
+			ccq->reg.len = VF_ARQLEN;
+			ccq->reg.bah = VF_ARQBAH;
+			ccq->reg.bal = VF_ARQBAL;
+			ccq->reg.len_mask = VF_ARQLEN_ARQLEN_M;
+			ccq->reg.len_ena_mask = VF_ARQLEN_ARQENABLE_M;
+			ccq->reg.head_mask = VF_ARQH_ARQH_M;
+			break;
+		default:
+			break;
+		}
+	}
+}
+
+/**
+ * idpf_vf_reset_reg_init - Initialize reset registers
+ * @adapter: Driver specific private structure
+ */
+static void idpf_vf_reset_reg_init(struct idpf_adapter *adapter)
+{
+	adapter->reset_reg.rstat = idpf_get_reg_addr(adapter, VFGEN_RSTAT);
+	adapter->reset_reg.rstat_m = VFGEN_RSTAT_VFR_STATE_M;
+}
+
+/**
+ * idpf_vf_trigger_reset - trigger reset
+ * @adapter: Driver specific private structure
+ * @trig_cause: Reason to trigger a reset
+ */
+static void idpf_vf_trigger_reset(struct idpf_adapter *adapter,
+				  enum idpf_flags trig_cause)
+{
+	/* stub */
+}
+
+/**
+ * idpf_vf_reg_ops_init - Initialize register API function pointers
+ * @adapter: Driver specific private structure
+ */
+static void idpf_vf_reg_ops_init(struct idpf_adapter *adapter)
+{
+	adapter->dev_ops.reg_ops.ctlq_reg_init = idpf_vf_ctlq_reg_init;
+	adapter->dev_ops.reg_ops.reset_reg_init = idpf_vf_reset_reg_init;
+	adapter->dev_ops.reg_ops.trigger_reset = idpf_vf_trigger_reset;
+}
+
+/**
+ * idpf_vf_dev_ops_init - Initialize device API function pointers
+ * @adapter: Driver specific private structure
+ */
+static void idpf_vf_dev_ops_init(struct idpf_adapter *adapter)
+{
+	idpf_vf_reg_ops_init(adapter);
+}
+
+/**
+ * idpf_vf_probe - Device initialization routine
+ * @pdev: PCI device information struct
+ * @adapter: pointer to adapter structure allocated by caller
+ *
+ * Returns 0 on success, negative on failure
+ */
+int idpf_vf_probe(struct pci_dev *pdev, struct idpf_adapter *adapter)
+{
+	idpf_vf_dev_ops_init(adapter);
+
+	return idpf_probe_common(pdev, adapter);
+}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
new file mode 100644
index 000000000000..87298c99027d
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -0,0 +1,128 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2023 Intel Corporation */
+
+#include "idpf.h"
+
+/**
+ * idpf_mb_clean - Reclaim the send mailbox queue entries
+ * @adapter: Driver specific private structure
+ *
+ * Reclaim the send mailbox queue entries to be used to send further messages
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int idpf_mb_clean(struct idpf_adapter *adapter)
+{
+	u16 i, num_q_msg = IDPF_DFLT_MBX_Q_LEN;
+	struct idpf_ctlq_msg **q_msg;
+	struct idpf_dma_mem *dma_mem;
+	int err;
+
+	if (!adapter->hw.asq)
+		return -EINVAL;
+
+	q_msg = kcalloc(num_q_msg, sizeof(struct idpf_ctlq_msg *), GFP_ATOMIC);
+	if (!q_msg)
+		return -ENOMEM;
+
+	err = idpf_ctlq_clean_sq(adapter->hw.asq, &num_q_msg, q_msg);
+	if (err)
+		goto err_kfree;
+
+	for (i = 0; i < num_q_msg; i++) {
+		if (!q_msg[i])
+			continue;
+		dma_mem = q_msg[i]->ctx.indirect.payload;
+		if (dma_mem)
+			dmam_free_coherent(&adapter->pdev->dev, dma_mem->size,
+					   dma_mem->va, dma_mem->pa);
+		kfree(q_msg[i]);
+		kfree(dma_mem);
+	}
+
+err_kfree:
+	kfree(q_msg);
+
+	return err;
+}
+
+/**
+ * idpf_find_ctlq - Given a type and id, find ctlq info
+ * @hw: hardware struct
+ * @type: type of ctrlq to find
+ * @id: ctlq id to find
+ *
+ * Returns pointer to found ctlq info struct, NULL otherwise.
+ */
+static struct idpf_ctlq_info *idpf_find_ctlq(struct idpf_hw *hw,
+					     enum idpf_ctlq_type type, int id)
+{
+	struct idpf_ctlq_info *cq, *tmp;
+
+	list_for_each_entry_safe(cq, tmp, &hw->cq_list_head, cq_list)
+		if (cq->q_id == id && cq->cq_type == type)
+			return cq;
+
+	return NULL;
+}
+
+/**
+ * idpf_init_dflt_mbx - Setup default mailbox parameters and make request
+ * @adapter: adapter info struct
+ *
+ * Returns 0 on success, negative otherwise
+ */
+int idpf_init_dflt_mbx(struct idpf_adapter *adapter)
+{
+	struct idpf_ctlq_create_info ctlq_info[] = {
+		{
+			.type = IDPF_CTLQ_TYPE_MAILBOX_TX,
+			.id = IDPF_DFLT_MBX_ID,
+			.len = IDPF_DFLT_MBX_Q_LEN,
+			.buf_size = IDPF_DFLT_MBX_BUF_SIZE
+		},
+		{
+			.type = IDPF_CTLQ_TYPE_MAILBOX_RX,
+			.id = IDPF_DFLT_MBX_ID,
+			.len = IDPF_DFLT_MBX_Q_LEN,
+			.buf_size = IDPF_DFLT_MBX_BUF_SIZE
+		}
+	};
+	struct idpf_hw *hw = &adapter->hw;
+	int err;
+
+	adapter->dev_ops.reg_ops.ctlq_reg_init(ctlq_info);
+
+	err = idpf_ctlq_init(hw, IDPF_NUM_DFLT_MBX_Q, ctlq_info);
+	if (err)
+		return err;
+
+	hw->asq = idpf_find_ctlq(hw, IDPF_CTLQ_TYPE_MAILBOX_TX,
+				 IDPF_DFLT_MBX_ID);
+	hw->arq = idpf_find_ctlq(hw, IDPF_CTLQ_TYPE_MAILBOX_RX,
+				 IDPF_DFLT_MBX_ID);
+
+	if (!hw->asq || !hw->arq) {
+		idpf_ctlq_deinit(hw);
+
+		return -ENOENT;
+	}
+
+	adapter->state = __IDPF_STARTUP;
+
+	return 0;
+}
+
+/**
+ * idpf_deinit_dflt_mbx - Free up ctlqs setup
+ * @adapter: Driver specific private data structure
+ */
+void idpf_deinit_dflt_mbx(struct idpf_adapter *adapter)
+{
+	if (adapter->hw.arq && adapter->hw.asq) {
+		idpf_mb_clean(adapter);
+		idpf_ctlq_deinit(&adapter->hw);
+	}
+	adapter->hw.arq = NULL;
+	adapter->hw.asq = NULL;
+}
-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
