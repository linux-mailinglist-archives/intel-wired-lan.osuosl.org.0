Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F1F810FFD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Dec 2023 12:31:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 11A4983410;
	Wed, 13 Dec 2023 11:31:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 11A4983410
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702467106;
	bh=dmI2rhHti8bzZsb/2xXP9gMO7AFwWmi+flqYPvUAXC8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SeXtTv7AqYE2xSQ+w958Z/+TGDHOCdq+N6Se9WKzJu91yvUvOJnjutng/D2Hs48Xi
	 I45Pp1QlNU+KQ300DB5CaDPAcvZewRyf2lcQGeYWuVqKsrGA1MgIqzCQJPGqunFsXb
	 Y/ZyDoMUDSPoq1ufS6flCiIC9hYO1XusLB/42TzN3yk7UG+9Gkpw0Xhhs2sgkQDI/U
	 +EnYe605Hby74qQnveX+4cRXiRb10tv5vz36ZmvWj1a+HCCULbIHhh6rhbo63qG+5/
	 b68Yipktk2kTqdsmNe2RbWqWyK2np5GLhc687ts16/OlKoeF5TSh88Ce/xviC2FgrF
	 R3YsLp+ab/Fqg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bYql0FJ2039W; Wed, 13 Dec 2023 11:31:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C76181AAC;
	Wed, 13 Dec 2023 11:31:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C76181AAC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 354A51BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 11:31:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0DB9741953
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 11:31:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0DB9741953
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lGgc2kb5Gt34 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Dec 2023 11:31:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8FA0840608
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 11:31:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8FA0840608
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="375104039"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="375104039"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 03:31:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="844279536"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="844279536"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmsmga004.fm.intel.com with ESMTP; 13 Dec 2023 03:31:08 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Wed, 13 Dec 2023 12:28:31 +0100
Message-ID: <20231213112835.2262651-9-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231213112835.2262651-1-aleksander.lobakin@intel.com>
References: <20231213112835.2262651-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702467072; x=1734003072;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4DiC3NQAzAt61dhtsmHMEP21ETiBi5sJsIY8ZwsJnDA=;
 b=QE8Z4+zgyRLqskrd5O4I1HZiHjyVdOcXZ5QBFW2mi0UA4Zoj6CpBXXWP
 e76PEtPXQ76GspJ9Pk+NaRREAdzXSq4/Xkwf+9Q+2wM3hhp51lvVWNGo2
 aQ4RJDrnUwyeOKlEJffikr48Id/QhQ6yrTO7oTo6U9snTxssP6Fc/mx8p
 aIeCWCjYh417YjmWgV+b3Erm4fZ9g6RjDtqUVqgrZ/abxxP58ZiULwaLK
 q1uCwUL3n1Y8IyJ2XPdCbpw+WSBBu13hm4tApSfKcnbEkJdH1WTZoC7o0
 ZLW92KWXfFWNdw7jMlO7gfZFGxq4BDWOQbnE2FecoQ3Zqn3J6sHy25r9A
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QE8Z4+zg
Subject: [Intel-wired-lan] [PATCH net-next v7 08/12] libie: add Rx buffer
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
index f503476d8eef..04037973cd87 100644
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
