Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDBB87662F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Mar 2024 15:19:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 91EF5835C9;
	Fri,  8 Mar 2024 14:19:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AbQc_UmCes_b; Fri,  8 Mar 2024 14:19:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E476683592
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709907557;
	bh=iI3xy63TdtiNaIUBsA5mY7Pxws/bbEGBxv2wKz0rPrg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=D+DFoo3IMMdfhOb3yMP36Ru67tF2W7z5VVG97N5XbzoltdidolcZKatC+NOful5av
	 iXO/Z/fdqqJJ+xYBhm/AH1XcQDkhqt2IdYhkALZ7mShYVXyXXyXCJ+PNba2gSguc21
	 Zcx+B7nGOGhp+DA2oTjsoWAyG3SkN0g38pa+Gob17hrX3Zk2LB+CpLGMz+8/MCJLQE
	 OiU7MD8QPWKzuWbq43vTaGwr/fNtZbmZFhFcNe6gCE44Ow3fwxJa/X+sAeaHT2+DGL
	 vRAGonjrrcugKZnZiX6J6oBQ2WonR8a4/YXcgkF3BwzS73NraUd3E/daW0R8QiWmBh
	 bcHCB/mAAaOjA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E476683592;
	Fri,  8 Mar 2024 14:19:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 568CF1BF279
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 14:19:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 508D060A40
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 14:19:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1IUsWfNCa7pe for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Mar 2024 14:19:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D71C260855
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D71C260855
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D71C260855
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 14:19:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4504645"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; 
   d="scan'208";a="4504645"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 06:19:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="15177268"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa005.jf.intel.com with ESMTP; 08 Mar 2024 06:19:10 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Fri,  8 Mar 2024 15:18:31 +0100
Message-ID: <20240308141833.2966600-7-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240308141833.2966600-1-aleksander.lobakin@intel.com>
References: <20240308141833.2966600-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709907554; x=1741443554;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kCzqkCvkuWoOSUEAIPTJJg5+Fhvo+GudX2MdqduyuDk=;
 b=cpgY7k9d/7stnPWXqHvow6vwZWGDANxP3Iro6L1dy0UO0zK6M8Dwj/iL
 cBsXWzV/OIy2rW5W+laGGAUuXnUtwFZ+pDw4i4TEM8z2n1L+13xSeaMul
 cP2U/fdzX/LZMhfZyrIx9PbGsxcztzAycrGc9FAqzhdB7SJ9OPBb9/4Ew
 Ujfa5Wjkczl1ka1PFbZpR57fb2wvacXYBXv+NlhVbEtYH6HK/91g5K5hS
 +fxtOZz0RpzWEhGJFqHkNCuEPx+CAc23dkmiDFCqKGYhrtJu7+P4r5xq+
 Hlm1TmDoi+nrKTj1Jf763XvNqJe7U64bvSy4D8zgcDxT66A47t5fjcfl7
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cpgY7k9d
Subject: [Intel-wired-lan] [PATCH net-next v8 6/8] libeth: add Rx buffer
 management
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
 Jesper Dangaard Brouer <hawk@kernel.org>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Yunsheng Lin <linyunsheng@huawei.com>, intel-wired-lan@lists.osuosl.org,
 David Christensen <drc@linux.vnet.ibm.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add a couple intuitive helpers to hide Rx buffer implementation details
in the library and not multiplicate it between drivers. The settings are
sorta optimized for 100G+ NICs, but nothing really HW-specific here.
Use the new page_pool_dev_alloc() to dynamically switch between
split-page and full-page modes depending on MTU, page size, required
headroom etc. For example, on x86_64 with the default driver settings
each page is shared between 2 buffers. Turning on XDP (not in this
series) -> increasing headroom requirement pushes truesize out of 2048
boundary, leading to that each buffer starts getting a full page.
The "ceiling" limit is %PAGE_SIZE, as only order-0 pages are used to
avoid compound overhead. For the above architecture, this means maximum
linear frame size of 3712 w/o XDP.
Not that &libeth_buf_queue is not a complete queue/ring structure for
now, rather a shim, but eventually the libeth-enabled drivers will move
to it, with iavf being the first one.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/libeth/Kconfig |   1 +
 include/net/libeth/rx.h                   | 115 ++++++++++++++++++++++
 drivers/net/ethernet/intel/libeth/rx.c    |  98 ++++++++++++++++++
 3 files changed, 214 insertions(+)

diff --git a/drivers/net/ethernet/intel/libeth/Kconfig b/drivers/net/ethernet/intel/libeth/Kconfig
index 58caf729ad16..f0f78d42ce48 100644
--- a/drivers/net/ethernet/intel/libeth/Kconfig
+++ b/drivers/net/ethernet/intel/libeth/Kconfig
@@ -3,6 +3,7 @@
 
 config LIBETH
 	tristate
+	select PAGE_POOL
 	help
 	  libeth is a common library containing routines shared between several
 	  drivers, but not yet promoted to the generic kernel API.
diff --git a/include/net/libeth/rx.h b/include/net/libeth/rx.h
index fb100e3b578a..8814a864ccc9 100644
--- a/include/net/libeth/rx.h
+++ b/include/net/libeth/rx.h
@@ -4,8 +4,123 @@
 #ifndef __LIBETH_RX_H
 #define __LIBETH_RX_H
 
+#include <linux/if_vlan.h>
+
+#include <net/page_pool/helpers.h>
 #include <net/xdp.h>
 
+/* Rx buffer management */
+
+/* Space reserved in front of each frame */
+#define LIBETH_SKB_HEADROOM	(NET_SKB_PAD + NET_IP_ALIGN)
+/* Maximum headroom for worst-case calculations */
+#define LIBETH_MAX_HEADROOM	LIBETH_SKB_HEADROOM
+/* Link layer / L2 overhead: Ethernet, 2 VLAN tags (C + S), FCS */
+#define LIBETH_RX_LL_LEN	(ETH_HLEN + 2 * VLAN_HLEN + ETH_FCS_LEN)
+
+/* Always use order-0 pages */
+#define LIBETH_RX_PAGE_ORDER	0
+/* Pick a sane buffer stride and align to a cacheline boundary */
+#define LIBETH_RX_BUF_STRIDE	SKB_DATA_ALIGN(128)
+/* HW-writeable space in one buffer: truesize - headroom/tailroom, aligned */
+#define LIBETH_RX_PAGE_LEN(hr)						  \
+	ALIGN_DOWN(SKB_MAX_ORDER(hr, LIBETH_RX_PAGE_ORDER),		  \
+		   LIBETH_RX_BUF_STRIDE)
+
+/**
+ * struct libeth_fqe - structure representing an Rx buffer
+ * @page: page holding the buffer
+ * @offset: offset from the page start (to the headroom)
+ * @truesize: total space occupied by the buffer (w/ headroom and tailroom)
+ *
+ * Depending on the MTU, API switches between one-page-per-frame and shared
+ * page model (to conserve memory on bigger-page platforms). In case of the
+ * former, @offset is always 0 and @truesize is always ```PAGE_SIZE```.
+ */
+struct libeth_fqe {
+	struct page		*page;
+	u32			offset;
+	u32			truesize;
+} __aligned_largest;
+
+/**
+ * struct libeth_fq - structure representing a buffer queue
+ * @fp: hotpath part of the structure
+ * @pp: &page_pool for buffer management
+ * @fqes: array of Rx buffers
+ * @truesize: size to allocate per buffer, w/overhead
+ * @count: number of descriptors/buffers the queue has
+ * @rx_buf_len: HW-writeable length per each buffer
+ */
+struct libeth_fq {
+	struct_group_tagged(libeth_fq_fp, fp,
+		struct page_pool	*pp;
+		struct libeth_fqe	*fqes;
+
+		u32			truesize;
+		u32			count;
+	);
+
+	/* Cold fields */
+	u32			buf_len;
+};
+
+int libeth_rx_fq_create(struct libeth_fq *fq, struct napi_struct *napi);
+void libeth_rx_fq_destroy(struct libeth_fq *fq);
+
+/**
+ * libeth_rx_alloc - allocate a new Rx buffer
+ * @fq: buffer queue to allocate for
+ * @i: index of the buffer within the queue
+ *
+ * Return: DMA address to be passed to HW for Rx on successful allocation,
+ * ```DMA_MAPPING_ERROR``` otherwise.
+ */
+static inline dma_addr_t libeth_rx_alloc(const struct libeth_fq_fp *fq, u32 i)
+{
+	struct libeth_fqe *buf = &fq->fqes[i];
+
+	buf->truesize = fq->truesize;
+	buf->page = page_pool_dev_alloc(fq->pp, &buf->offset, &buf->truesize);
+	if (unlikely(!buf->page))
+		return DMA_MAPPING_ERROR;
+
+	return page_pool_get_dma_addr(buf->page) + buf->offset +
+	       fq->pp->p.offset;
+}
+
+void libeth_rx_recycle_slow(struct page *page);
+
+/**
+ * libeth_rx_sync_for_cpu - synchronize or recycle buffer post DMA
+ * @fqe: buffer to process
+ * @len: frame length from the descriptor
+ *
+ * Process the buffer after it's written by HW. The regular path is to
+ * synchronize DMA for CPU, but in case of no data it will be immediately
+ * recycled back to its PP.
+ *
+ * Return: true when there's data to process, false otherwise.
+ */
+static inline bool libeth_rx_sync_for_cpu(const struct libeth_fqe *fqe,
+					  u32 len)
+{
+	struct page *page = fqe->page;
+
+	/* Very rare, but possible case. The most common reason:
+	 * the last fragment contained FCS only, which was then
+	 * stripped by the HW.
+	 */
+	if (unlikely(!len)) {
+		libeth_rx_recycle_slow(page);
+		return false;
+	}
+
+	page_pool_dma_sync_for_cpu(page->pp, page, fqe->offset, len);
+
+	return true;
+}
+
 /* Converting abstract packet type numbers into a software structure with
  * the packet parameters to do O(1) lookup on Rx.
  */
diff --git a/drivers/net/ethernet/intel/libeth/rx.c b/drivers/net/ethernet/intel/libeth/rx.c
index 3fe14394c848..f7254c3c1834 100644
--- a/drivers/net/ethernet/intel/libeth/rx.c
+++ b/drivers/net/ethernet/intel/libeth/rx.c
@@ -3,6 +3,104 @@
 
 #include <net/libeth/rx.h>
 
+/* Rx buffer management */
+
+/**
+ * libeth_rx_hw_len - get the actual buffer size to be passed to HW
+ * @pp: &page_pool_params of the netdev to calculate the size for
+ * @max_len: maximum buffer size for a single descriptor
+ *
+ * Return: HW-writeable length per one buffer to pass it to the HW accounting:
+ * MTU the @dev has, HW required alignment, minimum and maximum allowed values,
+ * and system's page size.
+ */
+static u32 libeth_rx_hw_len(const struct page_pool_params *pp, u32 max_len)
+{
+	u32 len;
+
+	len = READ_ONCE(pp->netdev->mtu) + LIBETH_RX_LL_LEN;
+	len = ALIGN(len, LIBETH_RX_BUF_STRIDE);
+	len = min3(len, ALIGN_DOWN(max_len ? : U32_MAX, LIBETH_RX_BUF_STRIDE),
+		   pp->max_len);
+
+	return len;
+}
+
+/**
+ * libeth_rx_fqcreate - create a PP with the default libeth settings
+ * @fq: buffer queue struct to fill
+ * @napi: &napi_struct covering this PP (no usage outside its poll loops)
+ *
+ * Return: 0 on success, -errno on failure.
+ */
+int libeth_rx_fq_create(struct libeth_fq *fq, struct napi_struct *napi)
+{
+	struct page_pool_params pp = {
+		.flags		= PP_FLAG_DMA_MAP | PP_FLAG_DMA_SYNC_DEV,
+		.order		= LIBETH_RX_PAGE_ORDER,
+		.pool_size	= fq->count,
+		.nid		= NUMA_NO_NODE,
+		.dev		= napi->dev->dev.parent,
+		.netdev		= napi->dev,
+		.napi		= napi,
+		.dma_dir	= DMA_FROM_DEVICE,
+		.offset		= LIBETH_SKB_HEADROOM,
+	};
+	struct libeth_fqe *fqes;
+	struct page_pool *pool;
+
+	/* HW-writeable / syncable length per one page */
+	pp.max_len = LIBETH_RX_PAGE_LEN(pp.offset);
+
+	/* HW-writeable length per buffer */
+	fq->buf_len = libeth_rx_hw_len(&pp, fq->buf_len);
+	/* Buffer size to allocate */
+	fq->truesize = roundup_pow_of_two(SKB_HEAD_ALIGN(pp.offset +
+							 fq->buf_len));
+
+	pool = page_pool_create(&pp);
+	if (IS_ERR(pool))
+		return PTR_ERR(pool);
+
+	fqes = kcalloc(fq->count, sizeof(*fqes), GFP_KERNEL);
+	if (!fqes)
+		goto err_buf;
+
+	fq->fqes = fqes;
+	fq->pp = pool;
+
+	return 0;
+
+err_buf:
+	page_pool_destroy(pool);
+
+	return -ENOMEM;
+}
+EXPORT_SYMBOL_NS_GPL(libeth_rx_fq_create, LIBETH);
+
+/**
+ * libeth_rx_fq_destroy - destroy a &page_pool created by libeth
+ * @fq: buffer queue to process
+ */
+void libeth_rx_fq_destroy(struct libeth_fq *fq)
+{
+	kfree(fq->fqes);
+	page_pool_destroy(fq->pp);
+}
+EXPORT_SYMBOL_NS_GPL(libeth_rx_fq_destroy, LIBETH);
+
+/**
+ * libeth_rx_recycle_slow - recycle a libeth page from the NAPI context
+ * @page: page to recycle
+ *
+ * To be used on exceptions or rare cases not requiring fast inline recycling.
+ */
+void libeth_rx_recycle_slow(struct page *page)
+{
+	page_pool_recycle_direct(page->pp, page);
+}
+EXPORT_SYMBOL_NS_GPL(libeth_rx_recycle_slow, LIBETH);
+
 /* Converting abstract packet type numbers into a software structure with
  * the packet parameters to do O(1) lookup on Rx.
  */
-- 
2.44.0

