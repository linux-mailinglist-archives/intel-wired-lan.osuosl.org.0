Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9D1808E97
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 18:22:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 66C7883D5F;
	Thu,  7 Dec 2023 17:22:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 66C7883D5F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701969778;
	bh=GIpIWaZRWlzeV/Luu0IbiIyfG8e9e5SXWEomD9qd1aM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ODaKlWgPsBCee4EPEtMPSKx0fu0bXoIn8g5xj9hr4BzhylLOuEpXK8sHq7SXW8r0+
	 gMs5bhJlNJkFUO/sEkCBj7Cch95vpEhX06avamKaFDSxmrRRbmOXjsnVCSVVjUl5W9
	 qLK54MPSG1jr+ywkGuyJjjenVcKOpn5Ojk2ZKIWMS4f1B3SDLTi1J0eRpRm/rZw1Yz
	 iZz/3d0sj7HdS9d6X9B1iAJ8ravikib9Iga4Q1OsoMTaz4vHoB3dY1VOewgG7lBxBV
	 t8fV4fPZAt3+dsLnhDkJbGA5A1I19dT92RsCCzSDG/tNThH4tqC+xSPs9jQlD9ZDIv
	 g9E8sCYTfG3Eg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F1dfnaTWuOTV; Thu,  7 Dec 2023 17:22:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BE0FA83D1D;
	Thu,  7 Dec 2023 17:22:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE0FA83D1D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C0C0F1BF380
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 17:22:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 999B960AB1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 17:22:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 999B960AB1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vaUdxwbXSlIF for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 17:22:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6FC9160A5E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 17:22:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6FC9160A5E
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="374434950"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="374434950"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 09:22:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="721548612"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="721548612"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orsmga003.jf.intel.com with ESMTP; 07 Dec 2023 09:22:28 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu,  7 Dec 2023 18:20:06 +0100
Message-ID: <20231207172010.1441468-9-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231207172010.1441468-1-aleksander.lobakin@intel.com>
References: <20231207172010.1441468-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701969757; x=1733505757;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FQfYz0xaVViXyj7pHMqIkPjovFndX4l5KodNcEsRVXA=;
 b=XgBRtqv9ittLrZH70aHWtmCe3n2xLhZVILW3ikDhsXkP0GxDGVkkvM8F
 kgOibZyH30nEo3WmBhyymjkzj0rcZbMtQI3FK4w2n65k+wlnjCSjUQNrg
 i2ki9MV2lsiPAXq7yu7twK+htclzkoju/XiSJBiIz2iTVkODfrxHWn6RD
 8JzX7jTwFtPiubx9tpu8JcdCeKh4920UOi38mz1j+KPOvLyVbZUz5LgTg
 XtlvLY9iRpI8UqpgnjQzwX2m2rRn0q5D/k0P024JSVUirjnitmoVUEy18
 swTydOoGrj/lxqWHjYv4AXet0KCfdy+FW3IDJgNmmnf4iFdQlyfLjEFHg
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XgBRtqv9
Subject: [Intel-wired-lan] [PATCH net-next v6 08/12] libie: add Rx buffer
 management (via Page Pool)
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Yunsheng Lin <linyunsheng@huawei.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, David Christensen <drc@linux.vnet.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add a couple intuitive helpers to hide Rx buffer implementation details
in the library and not multiplicate it between drivers. The settings are
optimized for Intel hardware, but nothing really HW-specific here.
Use the new page_pool_dev_alloc() to dynamically switch between
split-page and full-page modes depending on MTU, page size, required
headroom etc. For example, on x86_64 with the default driver settings
each page is shared between 2 buffers. Turning on XDP (not in this
series) -> increasing headroom requirement pushes truesize out of 2048
boundary, leading to that each buffer starts getting a full page.
The "ceiling" limit is %PAGE_SIZE, as only order-0 pages are used to
avoid compound overhead. For the above architecture, this means maximum
linear frame size of 3712 w/o XDP.
Not that &libie_buf_queue is not a complete queue/ring structure for
now, rather a shim, but eventually the libie-enabled drivers will move
to it, with iavf being the first one.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/libie/Kconfig |   1 +
 drivers/net/ethernet/intel/libie/rx.c    |  69 ++++++++++++
 include/linux/net/intel/libie/rx.h       | 133 ++++++++++++++++++++++-
 3 files changed, 202 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/libie/Kconfig b/drivers/net/ethernet/intel/libie/Kconfig
index 1eda4a5faa5a..6e0162fb94d2 100644
--- a/drivers/net/ethernet/intel/libie/Kconfig
+++ b/drivers/net/ethernet/intel/libie/Kconfig
@@ -3,6 +3,7 @@
 
 config LIBIE
 	tristate
+	select PAGE_POOL
 	help
 	  libie (Intel Ethernet library) is a common library containing
 	  routines shared between several Intel Ethernet drivers.
diff --git a/drivers/net/ethernet/intel/libie/rx.c b/drivers/net/ethernet/intel/libie/rx.c
index f503476d8eef..359867714a1b 100644
--- a/drivers/net/ethernet/intel/libie/rx.c
+++ b/drivers/net/ethernet/intel/libie/rx.c
@@ -3,6 +3,75 @@
 
 #include <linux/net/intel/libie/rx.h>
 
+/* Rx buffer management */
+
+/**
+ * libie_rx_hw_len - get the actual buffer size to be passed to HW
+ * @pp: &page_pool_params of the netdev to calculate the size for
+ *
+ * Return: HW-writeable length per one buffer to pass it to the HW accounting:
+ * MTU the @dev has, HW required alignment, minimum and maximum allowed values,
+ * and system's page size.
+ */
+static u32 libie_rx_hw_len(const struct page_pool_params *pp)
+{
+	u32 len;
+
+	len = READ_ONCE(pp->netdev->mtu) + LIBIE_RX_LL_LEN;
+	len = ALIGN(len, LIBIE_RX_BUF_LEN_ALIGN);
+	len = clamp(len, LIBIE_MIN_RX_BUF_LEN, pp->max_len);
+
+	return len;
+}
+
+/**
+ * libie_rx_page_pool_create - create a PP with the default libie settings
+ * @bq: buffer queue struct to fill
+ * @napi: &napi_struct covering this PP (no usage outside its poll loops)
+ *
+ * Return: 0 on success, -errno on failure.
+ */
+int libie_rx_page_pool_create(struct libie_buf_queue *bq,
+			      struct napi_struct *napi)
+{
+	struct page_pool_params pp = {
+		.flags		= PP_FLAG_DMA_MAP | PP_FLAG_DMA_SYNC_DEV,
+		.order		= LIBIE_RX_PAGE_ORDER,
+		.pool_size	= bq->count,
+		.nid		= NUMA_NO_NODE,
+		.dev		= napi->dev->dev.parent,
+		.netdev		= napi->dev,
+		.napi		= napi,
+		.dma_dir	= DMA_FROM_DEVICE,
+		.offset		= LIBIE_SKB_HEADROOM,
+	};
+
+	/* HW-writeable / syncable length per one page */
+	pp.max_len = LIBIE_RX_BUF_LEN(pp.offset);
+
+	/* HW-writeable length per buffer */
+	bq->rx_buf_len = libie_rx_hw_len(&pp);
+	/* Buffer size to allocate */
+	bq->truesize = roundup_pow_of_two(SKB_HEAD_ALIGN(pp.offset +
+							 bq->rx_buf_len));
+
+	bq->pp = page_pool_create(&pp);
+
+	return PTR_ERR_OR_ZERO(bq->pp);
+}
+EXPORT_SYMBOL_NS_GPL(libie_rx_page_pool_create, LIBIE);
+
+/**
+ * libie_rx_page_pool_destroy - destroy a &page_pool created by libie
+ * @bq: buffer queue to process
+ */
+void libie_rx_page_pool_destroy(struct libie_buf_queue *bq)
+{
+	page_pool_destroy(bq->pp);
+	bq->pp = NULL;
+}
+EXPORT_SYMBOL_NS_GPL(libie_rx_page_pool_destroy, LIBIE);
+
 /* O(1) converting i40e/ice/iavf's 8/10-bit hardware packet type to a parsed
  * bitfield struct.
  */
diff --git a/include/linux/net/intel/libie/rx.h b/include/linux/net/intel/libie/rx.h
index 55263930aa99..71bc9a1a9856 100644
--- a/include/linux/net/intel/libie/rx.h
+++ b/include/linux/net/intel/libie/rx.h
@@ -4,7 +4,138 @@
 #ifndef __LIBIE_RX_H
 #define __LIBIE_RX_H
 
-#include <linux/netdevice.h>
+#include <linux/if_vlan.h>
+#include <net/page_pool/helpers.h>
+
+/* Rx MTU/buffer/truesize helpers. Mostly pure software-side; HW-defined values
+ * are valid for all Intel HW.
+ */
+
+/* Space reserved in front of each frame */
+#define LIBIE_SKB_HEADROOM	(NET_SKB_PAD + NET_IP_ALIGN)
+/* Maximum headroom to calculate max MTU below */
+#define LIBIE_MAX_HEADROOM	LIBIE_SKB_HEADROOM
+/* Link layer / L2 overhead: Ethernet, 2 VLAN tags (C + S), FCS */
+#define LIBIE_RX_LL_LEN		(ETH_HLEN + 2 * VLAN_HLEN + ETH_FCS_LEN)
+
+/* Always use order-0 pages */
+#define LIBIE_RX_PAGE_ORDER	0
+/* Rx buffer size config is a multiple of 128 */
+#define LIBIE_RX_BUF_LEN_ALIGN	128
+/* HW-writeable space in one buffer: truesize - headroom/tailroom,
+ * HW-aligned
+ */
+#define __LIBIE_RX_BUF_LEN(hr)						\
+	ALIGN_DOWN(SKB_MAX_ORDER(hr, LIBIE_RX_PAGE_ORDER),		\
+		   LIBIE_RX_BUF_LEN_ALIGN)
+/* The smallest and largest size for a single descriptor as per HW */
+#define LIBIE_MIN_RX_BUF_LEN	1024U
+#define LIBIE_MAX_RX_BUF_LEN	9728U
+/* "True" HW-writeable space: minimum from SW and HW values */
+#define LIBIE_RX_BUF_LEN(hr)	min_t(u32, __LIBIE_RX_BUF_LEN(hr),	\
+				      LIBIE_MAX_RX_BUF_LEN)
+
+/* The maximum frame size as per HW (S/G) */
+#define __LIBIE_MAX_RX_FRM_LEN	16382U
+/* ATST, HW can chain up to 5 Rx descriptors */
+#define LIBIE_MAX_RX_FRM_LEN(hr)					\
+	min_t(u32, __LIBIE_MAX_RX_FRM_LEN, LIBIE_RX_BUF_LEN(hr) * 5)
+/* Maximum frame size minus LL overhead */
+#define LIBIE_MAX_MTU							\
+	(LIBIE_MAX_RX_FRM_LEN(LIBIE_MAX_HEADROOM) - LIBIE_RX_LL_LEN)
+
+/* Rx buffer management */
+
+/**
+ * struct libie_rx_buffer - structure representing an Rx buffer
+ * @page: page holding the buffer
+ * @offset: offset from the page start (to the headroom)
+ * @truesize: total space occupied by the buffer (w/ headroom and tailroom)
+ *
+ * Depending on the MTU, API switches between one-page-per-frame and shared
+ * page model (to conserve memory on bigger-page platforms). In case of the
+ * former, @offset is always 0 and @truesize is always ```PAGE_SIZE```.
+ */
+struct libie_rx_buffer {
+	struct page		*page;
+	u32			offset;
+	u32			truesize;
+};
+
+/**
+ * struct libie_buf_queue - structure representing a buffer queue
+ * @pp: &page_pool for buffer management
+ * @rx_bi: array of Rx buffers
+ * @truesize: size to allocate per buffer, w/overhead
+ * @count: number of descriptors/buffers the queue has
+ * @rx_buf_len: HW-writeable length per each buffer
+ */
+struct libie_buf_queue {
+	struct page_pool	*pp;
+	struct libie_rx_buffer	*rx_bi;
+
+	u32			truesize;
+	u32			count;
+
+	/* Cold fields */
+	u32			rx_buf_len;
+};
+
+int libie_rx_page_pool_create(struct libie_buf_queue *bq,
+			      struct napi_struct *napi);
+void libie_rx_page_pool_destroy(struct libie_buf_queue *bq);
+
+/**
+ * libie_rx_alloc - allocate a new Rx buffer
+ * @bq: buffer queue to allocate for
+ * @i: index of the buffer within the queue
+ *
+ * Return: DMA address to be passed to HW for Rx on successful allocation,
+ * ```DMA_MAPPING_ERROR``` otherwise.
+ */
+static inline dma_addr_t libie_rx_alloc(const struct libie_buf_queue *bq,
+					u32 i)
+{
+	struct libie_rx_buffer *buf = &bq->rx_bi[i];
+
+	buf->truesize = bq->truesize;
+	buf->page = page_pool_dev_alloc(bq->pp, &buf->offset, &buf->truesize);
+	if (unlikely(!buf->page))
+		return DMA_MAPPING_ERROR;
+
+	return page_pool_get_dma_addr(buf->page) + buf->offset +
+	       bq->pp->p.offset;
+}
+
+/**
+ * libie_rx_sync_for_cpu - synchronize or recycle buffer post DMA
+ * @buf: buffer to process
+ * @len: frame length from the descriptor
+ *
+ * Process the buffer after it's written by HW. The regular path is to
+ * synchronize DMA for CPU, but in case of no data it will be immediately
+ * recycled back to its PP.
+ *
+ * Return: true when there's data to process, false otherwise.
+ */
+static inline bool libie_rx_sync_for_cpu(const struct libie_rx_buffer *buf,
+					 u32 len)
+{
+	struct page *page = buf->page;
+
+	/* Very rare, but possible case. The most common reason:
+	 * the last fragment contained FCS only, which was then
+	 * stripped by the HW.
+	 */
+	if (unlikely(!len)) {
+		page_pool_recycle_direct(page->pp, page);
+		return false;
+	}
+
+	page_pool_dma_sync_for_cpu(page->pp, page, buf->offset, len);
+
+	return true;
+}
 
 /* O(1) converting i40e/ice/iavf's 8/10-bit hardware packet type to a parsed
  * bitfield struct.
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
