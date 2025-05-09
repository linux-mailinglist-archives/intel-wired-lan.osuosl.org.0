Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 78330AB157E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 May 2025 15:43:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 327DC41465;
	Fri,  9 May 2025 13:43:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mwzy6CQFjL0k; Fri,  9 May 2025 13:43:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 454B2414B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746798226;
	bh=bDvSnCA0GwdRZyMuxolJHwyC4Oolx1yACwf1VWTM2sU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jHGFp193+JjufrIX2IENWYfHJtN7kaiDjoe4NlhHR1Oj8RMkAde64Xq1CIlJHdDm4
	 4OWB6Eh2hIzjFjOWlCKRVJyIfIZZIwjUgQmC8ts6nPwwWVm0/D9bbMrUCKDjYUmhe0
	 VBorLluHEz5qSSE98ASTT6aHIE2bxpL05h+TR6HD00qw9jzpdWeUARxNAcCKTSheGp
	 AnyKkaPmyJ1sL6Kfn00jZBvzd/oI26LBvkRfZ61YU6jZbZX1eA+eZofHZlTjcx6eMZ
	 B2eED+RVFP6jauMJ2I/CfwjTF3EOypPohyilie80EpvVjpUEQ6W4lkr7Oyd7JJ8PNB
	 oRJCAttPyPfSA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 454B2414B6;
	Fri,  9 May 2025 13:43:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E570E1A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 13:43:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CB5EA81136
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 13:43:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nfP6yKK_FNx2 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 May 2025 13:43:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 949ED8111E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 949ED8111E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 949ED8111E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 13:43:43 +0000 (UTC)
X-CSE-ConnectionGUID: i8BcSha+TseTL4zDiCkfQw==
X-CSE-MsgGUID: eF9qZ4rMTHuwteFIoE+fTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="48532880"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="48532880"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 06:43:43 -0700
X-CSE-ConnectionGUID: XYNq6tBxTI6P1p2NgtGL4A==
X-CSE-MsgGUID: x4QesVOOQ/mlgB17Q4wdhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="136323195"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa009.jf.intel.com with ESMTP; 09 May 2025 06:43:35 -0700
Received: from mglak.igk.intel.com (mglak.igk.intel.com [10.237.112.146])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id AFD1D3430D;
 Fri,  9 May 2025 14:43:32 +0100 (IST)
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
 Phani R Burra <phani.r.burra@intel.com>
Date: Fri,  9 May 2025 15:43:03 +0200
Message-ID: <20250509134319.66631-7-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250509134319.66631-1-larysa.zaremba@intel.com>
References: <20250509134319.66631-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746798223; x=1778334223;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ft79cqsO0b3cUKj3wD3M4T2WB0pWgXtBCGA+LjPomCw=;
 b=IBg0j1NsbMIaminXyzlfu6o0MBZtRIkxRXmTJpzuwkc2jJW1tBfa9sul
 +KNnnguSCI2WyfLFW9vyP6T/GumQibfSOuOniNYmaNGHJidRwng0+PAK2
 i7rEv+VMGAeEGzR6+8WMYUBL2AwQfNNoSaRLP+f3TeWJrrzpa9DS3ycGo
 Jgw6ugC2bGCxGJuz7m9nTAEXym8kns953KnT9E912If5Z9ksg3/zCjNXg
 zjgO/uzOLPxWNVMH+p1UbUHVVR3CbqC/7ixLDYnGBzPqBE8Ufuuo0KMIh
 dJnZU3xxqZi3k5oC1hsjA/vfj5ftyGrxMy7gUks01o1MlO8rKwrXgwy8/
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IBg0j1Ns
Subject: [Intel-wired-lan] [PATCH iwl-next v3 06/15] libie: add bookkeeping
 support for control queue messages
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

From: Phani R Burra <phani.r.burra@intel.com>

All send control queue messages are allocated/freed in libie itself and
tracked with the unique transaction (Xn) ids until they receive response or
time out. Responses can be received out of order, therefore transactions
are stored in an array and tracked though a bitmap.

Pre-allocated DMA memory is used where possible. It reduces the driver
overhead in handling memory allocation/free and message timeouts.

Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Phani R Burra <phani.r.burra@intel.com>
Co-developed-by: Victor Raj <victor.raj@intel.com>
Signed-off-by: Victor Raj <victor.raj@intel.com>
Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/libie/controlq.c | 578 ++++++++++++++++++++
 include/linux/intel/libie/controlq.h        | 170 ++++++
 2 files changed, 748 insertions(+)

diff --git a/drivers/net/ethernet/intel/libie/controlq.c b/drivers/net/ethernet/intel/libie/controlq.c
index 80b0f1c2cc0a..90f62bd00382 100644
--- a/drivers/net/ethernet/intel/libie/controlq.c
+++ b/drivers/net/ethernet/intel/libie/controlq.c
@@ -602,6 +602,584 @@ u32 libie_ctlq_recv(struct libie_ctlq_info *ctlq, struct libie_ctlq_msg *msg,
 }
 EXPORT_SYMBOL_NS_GPL(libie_ctlq_recv, "LIBIE_CP");
 
+/**
+ * libie_ctlq_xn_pop_free - get a free Xn entry from the free list
+ * @xnm: Xn transaction manager
+ *
+ * Retrieve a free Xn entry from the free list.
+ *
+ * Return: valid Xn entry pointer or NULL if there are no free Xn entries.
+ */
+static struct libie_ctlq_xn *
+libie_ctlq_xn_pop_free(struct libie_ctlq_xn_manager *xnm)
+{
+	struct libie_ctlq_xn *xn;
+	u32 free_idx;
+
+	guard(spinlock)(&xnm->free_xns_bm_lock);
+
+	if (unlikely(xnm->shutdown))
+		return NULL;
+
+	free_idx = find_next_bit(xnm->free_xns_bm, LIBIE_CTLQ_MAX_XN_ENTRIES,
+				 0);
+	if (free_idx == LIBIE_CTLQ_MAX_XN_ENTRIES)
+		return NULL;
+
+	__clear_bit(free_idx, xnm->free_xns_bm);
+	xn = &xnm->ring[free_idx];
+	xn->cookie = xnm->cookie++;
+
+	return xn;
+}
+
+/**
+ * __libie_ctlq_xn_push_free - unsafely push a Xn entry into the free list
+ * @xnm: Xn transaction manager
+ * @xn: xn entry to be added into the free list
+ */
+static void __libie_ctlq_xn_push_free(struct libie_ctlq_xn_manager *xnm,
+				      struct libie_ctlq_xn *xn)
+{
+	__set_bit(xn->index, xnm->free_xns_bm);
+
+	if (likely(!xnm->shutdown))
+		return;
+
+	if (bitmap_full(xnm->free_xns_bm, LIBIE_CTLQ_MAX_XN_ENTRIES))
+		complete(&xnm->can_destroy);
+}
+
+/**
+ * libie_ctlq_xn_push_free - push a Xn entry into the free list
+ * @xnm: Xn transaction manager
+ * @xn: xn entry to be added into the free list, not locked
+ *
+ * Safely add a used Xn entry back to the free list.
+ */
+static void libie_ctlq_xn_push_free(struct libie_ctlq_xn_manager *xnm,
+				    struct libie_ctlq_xn *xn)
+{
+	guard(spinlock)(&xnm->free_xns_bm_lock);
+
+	__libie_ctlq_xn_push_free(xnm, xn);
+}
+
+/**
+ * libie_ctlq_xn_put - put an Xn that will not be used in the current thread
+ * @xnm: Xn transaction manager
+ * @xn: async xn entry to be put for now, not locked
+ *
+ * If the Xn manager is being shutdown, nothing will handle the related
+ * async request.
+ */
+static void libie_ctlq_xn_put(struct libie_ctlq_xn_manager *xnm,
+			      struct libie_ctlq_xn *xn)
+{
+	guard(spinlock)(&xnm->free_xns_bm_lock);
+
+	if (unlikely(xnm->shutdown))
+		__libie_ctlq_xn_push_free(xnm, xn);
+}
+
+/**
+ * libie_ctlq_xn_deinit_dma - free the DMA memory allocated for send messages
+ * @dev: device pointer
+ * @xnm: pointer to the transaction manager
+ * @num_entries: number of Xn entries to free the DMA for
+ */
+static void libie_ctlq_xn_deinit_dma(struct device *dev,
+				     struct libie_ctlq_xn_manager *xnm,
+				      u32 num_entries)
+{
+	for (u32 i = 0; i < num_entries; i++) {
+		struct libie_ctlq_xn *xn = &xnm->ring[i];
+
+		libie_cp_free_dma_mem(dev, xn->dma_mem);
+		kfree(xn->dma_mem);
+	}
+}
+
+/**
+ * libie_ctlq_xn_init_dma - pre-allocate DMA memory for send messages that use
+ * stack variables
+ * @dev: device pointer
+ * @xnm: pointer to transaction manager
+ *
+ * Return: %0 on success or error if memory allocation fails
+ */
+static int libie_ctlq_xn_init_dma(struct device *dev,
+				  struct libie_ctlq_xn_manager *xnm)
+{
+	u32 i;
+
+	for (i = 0; i < LIBIE_CTLQ_MAX_XN_ENTRIES; i++) {
+		struct libie_ctlq_xn *xn = &xnm->ring[i];
+		struct libie_cp_dma_mem *dma_mem;
+
+		dma_mem = kzalloc(sizeof(*dma_mem), GFP_KERNEL);
+		if (!dma_mem)
+			goto dealloc_dma;
+
+		dma_mem->va = libie_cp_alloc_dma_mem(dev, dma_mem,
+						     LIBIE_CTLQ_MAX_BUF_LEN);
+		if (!dma_mem->va) {
+			kfree(dma_mem);
+			goto dealloc_dma;
+		}
+
+		xn->dma_mem = dma_mem;
+	}
+
+	return 0;
+
+dealloc_dma:
+	libie_ctlq_xn_deinit_dma(dev, xnm, i);
+
+	return -ENOMEM;
+}
+
+/**
+ * libie_ctlq_xn_process_recv - process Xn data in receive message
+ * @params: Xn receive param information to handle a receive message
+ * @ctlq_msg: received control queue message
+ *
+ * Process a control queue receive message and send a complete event
+ * notification.
+ *
+ * Return: true if a message has been processed, false otherwise.
+ */
+static bool
+libie_ctlq_xn_process_recv(struct libie_ctlq_xn_recv_params *params,
+			   struct libie_ctlq_msg *ctlq_msg)
+{
+	struct libie_ctlq_xn_manager *xnm = params->xnm;
+	struct libie_ctlq_xn *xn;
+	u16 msg_cookie, xn_index;
+	struct kvec *response;
+	int status;
+	u16 data;
+
+	data = ctlq_msg->sw_cookie;
+	xn_index = FIELD_GET(LIBIE_CTLQ_XN_INDEX_M, data);
+	msg_cookie = FIELD_GET(LIBIE_CTLQ_XN_COOKIE_M, data);
+	status = ctlq_msg->chnl_retval ? -EFAULT : 0;
+
+	xn = &xnm->ring[xn_index];
+	if (ctlq_msg->chnl_opcode != xn->virtchnl_opcode ||
+	    msg_cookie != xn->cookie)
+		return false;
+
+	spin_lock(&xn->xn_lock);
+	if (xn->state != LIBIE_CTLQ_XN_ASYNC &&
+	    xn->state != LIBIE_CTLQ_XN_WAITING) {
+		spin_unlock(&xn->xn_lock);
+		return false;
+	}
+
+	response = &ctlq_msg->recv_mem;
+	if (xn->state == LIBIE_CTLQ_XN_ASYNC) {
+		xn->resp_cb(xn->send_ctx, response, status);
+		xn->state = LIBIE_CTLQ_XN_IDLE;
+		spin_unlock(&xn->xn_lock);
+		libie_ctlq_xn_push_free(xnm, xn);
+
+		return true;
+	}
+
+	xn->recv_mem = *response;
+	xn->state = status ? LIBIE_CTLQ_XN_COMPLETED_FAILED :
+			     LIBIE_CTLQ_XN_COMPLETED_SUCCESS;
+
+	complete(&xn->cmd_completion_event);
+	spin_unlock(&xn->xn_lock);
+
+	return true;
+}
+
+/**
+ * libie_xn_check_async_timeout - Check for asynchronous message timeouts
+ * @xnm: Xn transaction manager
+ *
+ * Call the corresponding callback to notify the caller about the timeout.
+ */
+static void libie_xn_check_async_timeout(struct libie_ctlq_xn_manager *xnm)
+{
+	u32 idx;
+
+	for_each_clear_bit(idx, xnm->free_xns_bm, LIBIE_CTLQ_MAX_XN_ENTRIES) {
+		struct libie_ctlq_xn *xn = &xnm->ring[idx];
+		u64 timeout_ms;
+
+		spin_lock(&xn->xn_lock);
+
+		timeout_ms = ktime_ms_delta(ktime_get(), xn->timestamp);
+		if (xn->state != LIBIE_CTLQ_XN_ASYNC ||
+		    timeout_ms < xn->timeout_ms) {
+			spin_unlock(&xn->xn_lock);
+			continue;
+		}
+
+		xn->resp_cb(xn->send_ctx, NULL, -ETIMEDOUT);
+		xn->state = LIBIE_CTLQ_XN_IDLE;
+		spin_unlock(&xn->xn_lock);
+		libie_ctlq_xn_push_free(xnm, xn);
+	}
+}
+
+/**
+ * libie_ctlq_xn_recv - process control queue receive message
+ * @params: Xn receive param information to handle a receive message
+ *
+ * Process a receive message and update the receive queue buffer.
+ *
+ * Return: true if a message has been processed, false otherwise.
+ */
+bool libie_ctlq_xn_recv(struct libie_ctlq_xn_recv_params *params)
+{
+	struct libie_ctlq_msg ctlq_msg;
+	u32 num_msgs;
+
+	num_msgs = libie_ctlq_recv(params->ctlq, &ctlq_msg, 1);
+
+	if (num_msgs && !libie_ctlq_xn_process_recv(params, &ctlq_msg))
+		params->ctlq_msg_handler(params->xnm->ctx, &ctlq_msg);
+
+	libie_ctlq_post_rx_buffs(params->ctlq);
+	libie_xn_check_async_timeout(params->xnm);
+
+	return !!num_msgs;
+}
+EXPORT_SYMBOL_NS_GPL(libie_ctlq_xn_recv, "LIBIE_CP");
+
+/**
+ * libie_cp_map_dma_mem - map a given virtual address for DMA
+ * @dev: device information
+ * @va: virtual address to be mapped
+ * @size: size of the memory
+ * @direction: DMA direction either from/to device
+ * @dma_mem: memory for DMA information to be stored
+ *
+ * Return: true on success, false on DMA map failure.
+ */
+static bool libie_cp_map_dma_mem(struct device *dev, void *va, size_t size,
+				 int direction,
+				  struct libie_cp_dma_mem *dma_mem)
+{
+	dma_mem->pa = dma_map_single(dev, va, size, direction);
+
+	return dma_mapping_error(dev, dma_mem->pa) ? false : true;
+}
+
+/**
+ * libie_cp_unmap_dma_mem - unmap previously mapped DMA address
+ * @dev: device information
+ * @dma_mem: DMA memory information
+ */
+static void libie_cp_unmap_dma_mem(struct device *dev,
+				   const struct libie_cp_dma_mem *dma_mem)
+{
+	dma_unmap_single(dev, dma_mem->pa, dma_mem->size,
+			 dma_mem->direction);
+}
+
+/**
+ * libie_ctlq_xn_process_send - process and send a control queue message
+ * @params: Xn send param information for sending a control queue message
+ * @xn: Assigned Xn entry for tracking the control queue message
+ *
+ * Return: %0 on success, -%errno on failure.
+ */
+static
+int libie_ctlq_xn_process_send(struct libie_ctlq_xn_send_params *params,
+			       struct libie_ctlq_xn *xn)
+{
+	size_t buf_len = params->send_buf.iov_len;
+	struct device *dev = params->ctlq->dev;
+	void *buf = params->send_buf.iov_base;
+	struct libie_cp_dma_mem *dma_mem;
+	u16 cookie;
+	int ret;
+
+	if (!buf || !buf_len)
+		return -EOPNOTSUPP;
+
+	if (libie_cp_can_send_onstack(buf_len)) {
+		dma_mem = xn->dma_mem;
+		memcpy(dma_mem->va, buf, buf_len);
+	} else {
+		dma_mem = &xn->send_dma_mem;
+		dma_mem->va = buf;
+		dma_mem->size = buf_len;
+		dma_mem->direction = DMA_TO_DEVICE;
+
+		if (!libie_cp_map_dma_mem(dev, buf, buf_len, DMA_TO_DEVICE,
+					  dma_mem))
+			return -ENOMEM;
+	}
+
+	cookie = FIELD_PREP(LIBIE_CTLQ_XN_COOKIE_M, xn->cookie) |
+		 FIELD_PREP(LIBIE_CTLQ_XN_INDEX_M, xn->index);
+
+	scoped_guard(spinlock, &params->ctlq->lock) {
+		if (!params->ctlq_msg || params->resp_cb) {
+			struct libie_ctlq_info *ctlq = params->ctlq;
+
+			*ctlq->tx_msg[ctlq->next_to_use] =
+				params->ctlq_msg ? *params->ctlq_msg :
+				(struct libie_ctlq_msg) {
+					.opcode = LIBIE_CTLQ_SEND_MSG_TO_CP
+				};
+			params->ctlq_msg = ctlq->tx_msg[ctlq->next_to_use];
+		}
+
+		params->ctlq_msg->sw_cookie = cookie;
+		params->ctlq_msg->send_mem = *dma_mem;
+		params->ctlq_msg->data_len = buf_len;
+		params->ctlq_msg->chnl_opcode = params->chnl_opcode;
+		ret = libie_ctlq_send(params->ctlq, params->ctlq_msg, 1);
+	}
+
+	if (ret && !libie_cp_can_send_onstack(buf_len))
+		libie_cp_unmap_dma_mem(dev, dma_mem);
+
+	return ret;
+}
+
+/**
+ * libie_ctlq_xn_send - Function to send a control queue message
+ * @params: Xn send param information for sending a control queue message
+ *
+ * Send a control queue (mailbox or config) message.
+ * Based on the params value, the call can be completed synchronously or
+ * asynchronously.
+ *
+ * Return: %0 on success, -%errno on failure.
+ */
+int libie_ctlq_xn_send(struct libie_ctlq_xn_send_params *params)
+{
+	bool free_send = !libie_cp_can_send_onstack(params->send_buf.iov_len);
+	struct libie_ctlq_xn *xn;
+	int ret;
+
+	if (params->send_buf.iov_len > LIBIE_CTLQ_MAX_BUF_LEN) {
+		ret = -EINVAL;
+		goto free_buf;
+	}
+
+	xn = libie_ctlq_xn_pop_free(params->xnm);
+	/* no free transactions available */
+	if (unlikely(!xn)) {
+		ret = -EAGAIN;
+		goto free_buf;
+	}
+
+	spin_lock(&xn->xn_lock);
+
+	xn->state = params->resp_cb ? LIBIE_CTLQ_XN_ASYNC :
+				      LIBIE_CTLQ_XN_WAITING;
+	xn->ctlq = params->ctlq;
+	xn->virtchnl_opcode = params->chnl_opcode;
+
+	if (params->resp_cb) {
+		xn->send_ctx = params->send_ctx;
+		xn->resp_cb = params->resp_cb;
+		xn->timeout_ms = params->timeout_ms;
+		xn->timestamp = ktime_get();
+	}
+
+	ret = libie_ctlq_xn_process_send(params, xn);
+	if (ret)
+		goto release_xn;
+	else
+		free_send = false;
+
+	spin_unlock(&xn->xn_lock);
+
+	if (params->resp_cb) {
+		libie_ctlq_xn_put(params->xnm, xn);
+		return 0;
+	}
+
+	wait_for_completion_timeout(&xn->cmd_completion_event,
+				    msecs_to_jiffies(params->timeout_ms));
+
+	spin_lock(&xn->xn_lock);
+	switch (xn->state) {
+	case LIBIE_CTLQ_XN_WAITING:
+		ret = -ETIMEDOUT;
+		break;
+	case LIBIE_CTLQ_XN_COMPLETED_SUCCESS:
+		params->recv_mem = xn->recv_mem;
+		break;
+	default:
+		ret = -EBADMSG;
+		break;
+	}
+
+	/* Free the receive buffer in case of failure. On timeout, receive
+	 * buffer is not allocated.
+	 */
+	if (ret && ret != -ETIMEDOUT)
+		libie_ctlq_release_rx_buf(&xn->recv_mem);
+
+release_xn:
+	xn->state = LIBIE_CTLQ_XN_IDLE;
+	reinit_completion(&xn->cmd_completion_event);
+	spin_unlock(&xn->xn_lock);
+	libie_ctlq_xn_push_free(params->xnm, xn);
+free_buf:
+	if (free_send)
+		params->rel_tx_buf(params->send_buf.iov_base);
+
+	return ret;
+}
+EXPORT_SYMBOL_NS_GPL(libie_ctlq_xn_send, "LIBIE_CP");
+
+/**
+ * libie_ctlq_xn_send_clean - cleanup the send control queue message buffers
+ * @params: Xn clean param information for send complete handling
+ *
+ * Cleanup the send buffers for the given control queue, if force is set, then
+ * clear all the outstanding send messages irrrespective their send status.
+ * Force should be used during deinit or reset.
+ *
+ * Return: number of send buffers cleaned.
+ */
+u32 libie_ctlq_xn_send_clean(const struct libie_ctlq_xn_clean_params *params)
+{
+	struct libie_ctlq_info *ctlq = params->ctlq;
+	struct device *dev = ctlq->dev;
+	u32 ntc, i;
+
+	spin_lock(&ctlq->lock);
+	ntc = ctlq->next_to_clean;
+
+	for (i = 0; i < params->num_msgs; i++) {
+		struct libie_ctlq_msg *msg = ctlq->tx_msg[ntc];
+		struct libie_ctlq_desc *desc;
+		u64 qword;
+
+		desc = &ctlq->descs[ntc];
+		qword = le64_to_cpu(desc->qword0);
+
+		if (!FIELD_GET(LIBIE_CTLQ_DESC_FLAG_DD, qword))
+			break;
+
+		dma_rmb();
+
+		if (!libie_cp_can_send_onstack(msg->data_len)) {
+			libie_cp_unmap_dma_mem(dev, &msg->send_mem);
+			params->rel_tx_buf(msg->send_mem.va);
+		}
+
+		memset(msg, 0, sizeof(*msg));
+		desc->qword0 = 0;
+
+		if (unlikely(++ntc == ctlq->ring_len))
+			ntc = 0;
+	}
+
+	ctlq->next_to_clean = ntc;
+	spin_unlock(&ctlq->lock);
+
+	return i;
+}
+EXPORT_SYMBOL_NS_GPL(libie_ctlq_xn_send_clean, "LIBIE_CP");
+
+/**
+ * libie_ctlq_xn_deinit - deallocate and free the transaction manager resources
+ * @xnm: pointer to the transaction manager
+ * @ctx: controlq context structure
+ *
+ * All Rx processing must be stopped beforehand.
+ */
+void libie_ctlq_xn_deinit(struct libie_ctlq_xn_manager *xnm,
+			  struct libie_ctlq_ctx *ctx)
+{
+	bool must_wait = false;
+	u32 i;
+
+	/* Should be no new clear bits after this */
+	spin_lock(&xnm->free_xns_bm_lock);
+	xnm->shutdown = true;
+
+	for_each_clear_bit(i, xnm->free_xns_bm, LIBIE_CTLQ_MAX_XN_ENTRIES) {
+		struct libie_ctlq_xn *xn = &xnm->ring[i];
+
+		spin_lock(&xn->xn_lock);
+
+		if (xn->state == LIBIE_CTLQ_XN_WAITING ||
+		    xn->state == LIBIE_CTLQ_XN_IDLE) {
+			complete(&xn->cmd_completion_event);
+			must_wait = true;
+		} else if (xn->state == LIBIE_CTLQ_XN_ASYNC) {
+			__libie_ctlq_xn_push_free(xnm, xn);
+		}
+
+		spin_unlock(&xn->xn_lock);
+	}
+
+	spin_unlock(&xnm->free_xns_bm_lock);
+
+	if (must_wait)
+		wait_for_completion(&xnm->can_destroy);
+
+	libie_ctlq_xn_deinit_dma(&ctx->mmio_info.pdev->dev, xnm,
+				 LIBIE_CTLQ_MAX_XN_ENTRIES);
+	kfree(xnm);
+	libie_ctlq_deinit(ctx);
+}
+EXPORT_SYMBOL_NS_GPL(libie_ctlq_xn_deinit, "LIBIE_CP");
+
+/**
+ * libie_ctlq_xn_init - initialize the Xn transaction manager
+ * @params: Xn init param information for allocating Xn manager resources
+ *
+ * Return: %0 on success, -%errno on failure.
+ */
+int libie_ctlq_xn_init(struct libie_ctlq_xn_init_params *params)
+{
+	struct libie_ctlq_xn_manager *xnm;
+	int ret;
+
+	ret = libie_ctlq_init(params->ctx, params->cctlq_info, params->num_qs);
+	if (ret)
+		return ret;
+
+	xnm = kzalloc(sizeof(*xnm), GFP_KERNEL);
+	if (!xnm)
+		goto ctlq_deinit;
+
+	ret = libie_ctlq_xn_init_dma(&params->ctx->mmio_info.pdev->dev, xnm);
+	if (ret)
+		goto free_xnm;
+
+	spin_lock_init(&xnm->free_xns_bm_lock);
+	init_completion(&xnm->can_destroy);
+	bitmap_fill(xnm->free_xns_bm, LIBIE_CTLQ_MAX_XN_ENTRIES);
+
+	for (u32 i = 0; i < LIBIE_CTLQ_MAX_XN_ENTRIES; i++) {
+		struct libie_ctlq_xn *xn = &xnm->ring[i];
+
+		xn->index = i;
+		init_completion(&xn->cmd_completion_event);
+		spin_lock_init(&xn->xn_lock);
+	}
+	xnm->ctx = params->ctx;
+	params->xnm = xnm;
+
+	return 0;
+
+free_xnm:
+	kfree(xnm);
+ctlq_deinit:
+	libie_ctlq_deinit(params->ctx);
+
+	return -ENOMEM;
+}
+EXPORT_SYMBOL_NS_GPL(libie_ctlq_xn_init, "LIBIE_CP");
+
 MODULE_DESCRIPTION("Control Plane communication API");
 MODULE_IMPORT_NS("LIBETH");
 MODULE_LICENSE("GPL");
diff --git a/include/linux/intel/libie/controlq.h b/include/linux/intel/libie/controlq.h
index 534508fbb405..7a4e56025e5b 100644
--- a/include/linux/intel/libie/controlq.h
+++ b/include/linux/intel/libie/controlq.h
@@ -20,6 +20,8 @@
 #define LIBIE_CTLQ_SEND_MSG_TO_CP		0x801
 #define LIBIE_CTLQ_SEND_MSG_TO_PEER		0x804
 
+#define LIBIE_CP_TX_COPYBREAK		128
+
 /**
  * struct libie_ctlq_ctx - contains controlq info and MMIO region info
  * @mmio_info: MMIO region info structure
@@ -60,11 +62,13 @@ struct libie_ctlq_reg {
  * @va: virtual address
  * @pa: physical address
  * @size: memory size
+ * @direction: memory to device or device to memory
  */
 struct libie_cp_dma_mem {
 	void		*va;
 	dma_addr_t	pa;
 	size_t		size;
+	int		direction;
 };
 
 /**
@@ -246,4 +250,170 @@ u32 libie_ctlq_recv(struct libie_ctlq_info *ctlq, struct libie_ctlq_msg *msg,
 
 int libie_ctlq_post_rx_buffs(struct libie_ctlq_info *ctlq);
 
+/* Only 8 bits are available in descriptor for Xn index */
+#define LIBIE_CTLQ_MAX_XN_ENTRIES		256
+#define LIBIE_CTLQ_XN_COOKIE_M			GENMASK(15, 8)
+#define LIBIE_CTLQ_XN_INDEX_M			GENMASK(7, 0)
+
+/**
+ * enum libie_ctlq_xn_state - Transaction state of a virtchnl message
+ * @LIBIE_CTLQ_XN_IDLE: transaction is available to use
+ * @LIBIE_CTLQ_XN_WAITING: waiting for transaction to complete
+ * @LIBIE_CTLQ_XN_COMPLETED_SUCCESS: transaction completed with success
+ * @LIBIE_CTLQ_XN_COMPLETED_FAILED: transaction completed with failure
+ * @LIBIE_CTLQ_XN_ASYNC: asynchronous virtchnl message transaction type
+ */
+enum libie_ctlq_xn_state {
+	LIBIE_CTLQ_XN_IDLE = 0,
+	LIBIE_CTLQ_XN_WAITING,
+	LIBIE_CTLQ_XN_COMPLETED_SUCCESS,
+	LIBIE_CTLQ_XN_COMPLETED_FAILED,
+	LIBIE_CTLQ_XN_ASYNC,
+};
+
+/**
+ * struct libie_ctlq_xn - structure representing a virtchnl transaction entry
+ * @resp_cb: callback to handle the response of an asynchronous virtchnl message
+ * @xn_lock: lock to protect the transaction entry state
+ * @ctlq: send control queue information
+ * @cmd_completion_event: signal when a reply is available
+ * @dma_mem: DMA memory of send buffer that use stack variable
+ * @send_dma_mem: DMA memory of send buffer
+ * @recv_mem: receive buffer
+ * @send_ctx: context for callback function
+ * @timeout_ms: Xn transaction timeout in msecs
+ * @timestamp: timestamp to record the Xn send
+ * @virtchnl_opcode: virtchnl command opcode used for Xn transaction
+ * @state: transaction state of a virtchnl message
+ * @cookie: unique message identifier
+ * @index: index of the transaction entry
+ */
+struct libie_ctlq_xn {
+	void (*resp_cb)(void *ctx, struct kvec *mem, int status);
+	spinlock_t			xn_lock;	/* protects state */
+	struct libie_ctlq_info		*ctlq;
+	struct completion		cmd_completion_event;
+	struct libie_cp_dma_mem	*dma_mem;
+	struct libie_cp_dma_mem	send_dma_mem;
+	struct kvec			recv_mem;
+	void				*send_ctx;
+	u64				timeout_ms;
+	ktime_t				timestamp;
+	u32				virtchnl_opcode;
+	enum libie_ctlq_xn_state	state;
+	u8				cookie;
+	u8				index;
+};
+
+/**
+ * struct libie_ctlq_xn_manager - structure representing the array of virtchnl
+ *				   transaction entries
+ * @ctx: pointer to controlq context structure
+ * @free_xns_bm_lock: lock to protect the free Xn entries bit map
+ * @free_xns_bm: bitmap that represents the free Xn entries
+ * @ring: array of Xn entries
+ * @can_destroy: completion triggered by the last returned transaction
+ * @shutdown: shows the transactions the xnm shutdown is waiting for them
+ * @cookie: unique message identifier
+ */
+struct libie_ctlq_xn_manager {
+	struct libie_ctlq_ctx	*ctx;
+	spinlock_t		free_xns_bm_lock;	/* get/check entries */
+	DECLARE_BITMAP(free_xns_bm, LIBIE_CTLQ_MAX_XN_ENTRIES);
+	struct libie_ctlq_xn	ring[LIBIE_CTLQ_MAX_XN_ENTRIES];
+	struct completion	can_destroy;
+	bool			shutdown;
+	u8			cookie;
+};
+
+/**
+ * struct libie_ctlq_xn_send_params - structure representing send Xn entry
+ * @resp_cb: callback to handle the response of an asynchronous virtchnl message
+ * @rel_tx_buf: driver entry point for freeing the send buffer after send
+ * @xnm: Xn manager to process Xn entries
+ * @ctlq: send control queue information
+ * @ctlq_msg: control queue message information
+ * @send_buf: represents the buffer that carries outgoing information
+ * @recv_mem: receive buffer
+ * @send_ctx: context for call back function
+ * @timeout_ms: virtchnl transaction timeout in msecs
+ * @chnl_opcode: virtchnl message opcode
+ */
+struct libie_ctlq_xn_send_params {
+	void (*resp_cb)(void *ctx, struct kvec *mem, int status);
+	void (*rel_tx_buf)(const void *buf_va);
+	struct libie_ctlq_xn_manager		*xnm;
+	struct libie_ctlq_info			*ctlq;
+	struct libie_ctlq_msg			*ctlq_msg;
+	struct kvec				send_buf;
+	struct kvec				recv_mem;
+	void					*send_ctx;
+	u64					timeout_ms;
+	u32					chnl_opcode;
+};
+
+/**
+ * libie_cp_can_send_onstack - can a message be sent using a stack variable
+ * @size: ctlq data buffer size
+ *
+ * Return: %true if the message size is small enough for caller to pass
+ *	   an on-stack buffer, %false if kmalloc is needed
+ */
+static inline bool libie_cp_can_send_onstack(u32 size)
+{
+	return size <= LIBIE_CP_TX_COPYBREAK;
+}
+
+/**
+ * struct libie_ctlq_xn_recv_params - structure representing receive Xn entry
+ * @ctlq_msg_handler: callback to handle a message originated from the peer
+ * @xnm: Xn manager to process Xn entries
+ * @ctlq: control queue information
+ */
+struct libie_ctlq_xn_recv_params {
+	void (*ctlq_msg_handler)(struct libie_ctlq_ctx *ctx,
+				 struct libie_ctlq_msg *msg);
+	struct libie_ctlq_xn_manager		*xnm;
+	struct libie_ctlq_info			*ctlq;
+};
+
+/**
+ * struct libie_ctlq_xn_clean_params - Data structure used for cleaning the
+ * control queue messages
+ * @rel_tx_buf: driver entry point for freeing the send buffer after send
+ * @ctx: pointer to context structure
+ * @ctlq: control queue information
+ * @send_ctx: context for call back function
+ * @num_msgs: number of messages to be cleaned
+ */
+struct libie_ctlq_xn_clean_params {
+	void (*rel_tx_buf)(const void *buf_va);
+	struct libie_ctlq_ctx			*ctx;
+	struct libie_ctlq_info			*ctlq;
+	void					*send_ctx;
+	u16					num_msgs;
+};
+
+/**
+ * struct libie_ctlq_xn_init_params - Data structure used for initializing the
+ * Xn transaction manager
+ * @cctlq_info: control queue information
+ * @ctx: pointer to controlq context structure
+ * @xnm: Xn manager to process Xn entries
+ * @num_qs: number of control queues needs to initialized
+ */
+struct libie_ctlq_xn_init_params {
+	struct libie_ctlq_create_info		*cctlq_info;
+	struct libie_ctlq_ctx			*ctx;
+	struct libie_ctlq_xn_manager		*xnm;
+	u32					num_qs;
+};
+
+int libie_ctlq_xn_init(struct libie_ctlq_xn_init_params *params);
+void libie_ctlq_xn_deinit(struct libie_ctlq_xn_manager *xnm,
+			  struct libie_ctlq_ctx *ctx);
+int libie_ctlq_xn_send(struct libie_ctlq_xn_send_params *params);
+bool libie_ctlq_xn_recv(struct libie_ctlq_xn_recv_params *params);
+u32 libie_ctlq_xn_send_clean(const struct libie_ctlq_xn_clean_params *params);
+
 #endif /* __LIBIE_CONTROLQ_H */
-- 
2.47.0

