Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4335081D15B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Dec 2023 03:58:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE7F542CEE;
	Sat, 23 Dec 2023 02:58:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE7F542CEE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703300313;
	bh=WJ1bjhAN6Rn3Gq0+LczAimIPLK6MFzvJJS84dI7RBeQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VYsEP8/rwqsU/76HcRmvAcd6EIBEmgTjn2mfd7Hee7Fvp5E47iV8Pbhwgv9eauHSJ
	 wHy2hHS7jcDzJUV3kLtlOT8KIN5gsIAcRQKT0S27htu1TBWQs/kQvxD/8El4oAHI+A
	 2g7pgr3vDWDYAhA/P9zEvY0c8LzH+HmlwLxiDjqHoAEQsZQy8ahAb9MjuJYrUJigQK
	 iiu+wAW8LPk3RzbfbbAsGDsDxoObwb6/v1nsGS2DA7ebvdtD6FBBCRL2Pm/WKlf1nU
	 lbUr1cofDZPMyAc2SWXpjTPratBl7MgPaMbitoAHD1arc7Ebo0HtpAsU1L4O9LraMd
	 AY9WoiZvQVOeA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cWE_K22-iWM0; Sat, 23 Dec 2023 02:58:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B16440348;
	Sat, 23 Dec 2023 02:58:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B16440348
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 44C891BF3EC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:58:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2ADAE6059D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:58:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2ADAE6059D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SYB2K2fxXGZs for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Dec 2023 02:58:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4C22060073
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:58:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C22060073
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="386610798"
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="386610798"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2023 18:58:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="25537414"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa001.jf.intel.com with ESMTP; 22 Dec 2023 18:58:15 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Sat, 23 Dec 2023 03:55:24 +0100
Message-ID: <20231223025554.2316836-5-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
References: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703300299; x=1734836299;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=46Vvjei49P7oFRMYlPnyxLohII5Trr+LUZK0y4+x0UE=;
 b=WanKfbTQJ/KyzdANvyWKhwRXQRdK9DEf94K0In7HssAhPvgSXR7u85cE
 jxQxDhvQP9Ux8JqvAti6nFVErJpu0T7XoPnSLEk3a8e2zFt7X3O1Rup71
 NYbX83bwxFRpKZ7YnJQ7qJf8YUBwu9Vxreme8+69am28K/g7DRO4MLTOu
 UQAAeofrLw3NihImBK2iT4tV9izWUy4hgy304V4ZY59cIdU8w591qjV52
 pSZp+0RRmV77wI/k3GaxlVv8gNS0Axoz/kHYTh6KOPFJZjE5g7HFsGctm
 pDQ0rzmD8kwcgqK8++UPpswSTCVYyHMV2ThlyS/3gIcrcfuzn7UE1oOZ/
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WanKfbTQ
Subject: [Intel-wired-lan] [PATCH RFC net-next 04/34] libie: support
 different types of buffers for Rx
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Unlike previous generations, idpf requires more buffer types for optimal
performance. This includes: header buffers, short buffers, and
no-overhead buffers (w/o headroom and tailroom, for TCP zerocopy when
the header split is enabled).
Introduce libie Rx buffer type and calculate page_pool params
accordingly. All the HW-related details like buffer alignment are still
accounted. For the header buffers, pick 256 bytes as in most places in
the kernel (have you ever seen frames with bigger headers?).

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/libie/rx.c | 107 +++++++++++++++++++++++---
 include/linux/net/intel/libie/rx.h    |  19 +++++
 2 files changed, 115 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/libie/rx.c b/drivers/net/ethernet/intel/libie/rx.c
index 610f16043bcf..3d3b19d2b40d 100644
--- a/drivers/net/ethernet/intel/libie/rx.c
+++ b/drivers/net/ethernet/intel/libie/rx.c
@@ -6,14 +6,14 @@
 /* Rx buffer management */
 
 /**
- * libie_rx_hw_len - get the actual buffer size to be passed to HW
+ * libie_rx_hw_len_mtu - get the actual buffer size to be passed to HW
  * @pp: &page_pool_params of the netdev to calculate the size for
  *
  * Return: HW-writeable length per one buffer to pass it to the HW accounting:
  * MTU the @dev has, HW required alignment, minimum and maximum allowed values,
  * and system's page size.
  */
-static u32 libie_rx_hw_len(const struct page_pool_params *pp)
+static u32 libie_rx_hw_len_mtu(const struct page_pool_params *pp)
 {
 	u32 len;
 
@@ -24,6 +24,96 @@ static u32 libie_rx_hw_len(const struct page_pool_params *pp)
 	return len;
 }
 
+/**
+ * libie_rx_hw_len_truesize - get the short buffer size to be passed to HW
+ * @pp: &page_pool_params of the netdev to calculate the size for
+ * @truesize: desired truesize for the buffers
+ *
+ * Return: HW-writeable length per one buffer to pass it to the HW ignoring the
+ * MTU and closest to the passed truesize. Can be used for "short" buffer
+ * queues to fragment pages more efficiently.
+ */
+static u32 libie_rx_hw_len_truesize(const struct page_pool_params *pp,
+				    u32 truesize)
+{
+	u32 min, len;
+
+	min = SKB_HEAD_ALIGN(pp->offset + LIBIE_RX_BUF_LEN_ALIGN);
+	truesize = clamp(roundup_pow_of_two(truesize), roundup_pow_of_two(min),
+			 PAGE_SIZE << LIBIE_RX_PAGE_ORDER);
+
+	len = SKB_WITH_OVERHEAD(truesize - pp->offset);
+	len = ALIGN_DOWN(len, LIBIE_RX_BUF_LEN_ALIGN);
+	len = clamp(len, LIBIE_MIN_RX_BUF_LEN, pp->max_len);
+
+	return len;
+}
+
+static void libie_rx_page_pool_params(struct libie_buf_queue *bq,
+				      struct page_pool_params *pp)
+{
+	pp->offset = LIBIE_SKB_HEADROOM;
+	/* HW-writeable / syncable length per one page */
+	pp->max_len = LIBIE_RX_BUF_LEN(pp->offset);
+
+	/* HW-writeable length per buffer */
+	switch (bq->type) {
+	case LIBIE_RX_BUF_MTU:
+		bq->rx_buf_len = libie_rx_hw_len_mtu(pp);
+		break;
+	case LIBIE_RX_BUF_SHORT:
+		bq->rx_buf_len = libie_rx_hw_len_truesize(pp, bq->truesize);
+		break;
+	case LIBIE_RX_BUF_HDR:
+		bq->rx_buf_len = ALIGN(LIBIE_MAX_HEAD, LIBIE_RX_BUF_LEN_ALIGN);
+		break;
+	default:
+		break;
+	}
+
+	/* Buffer size to allocate */
+	bq->truesize = roundup_pow_of_two(SKB_HEAD_ALIGN(pp->offset +
+							 bq->rx_buf_len));
+}
+
+/**
+ * libie_rx_page_pool_params_zc - calculate params without the stack overhead
+ * @bq: buffer queue to calculate the size for
+ * @pp: &page_pool_params of the netdev
+ *
+ * Adjusts the PP params to exclude the stack overhead and sets both the buffer
+ * lengh and the truesize, which are equal for the data buffers. Note that this
+ * requires separate header buffers to be always active and account the
+ * overhead.
+ * With the MTU == ``PAGE_SIZE``, this allows the kernel to enable the zerocopy
+ * mode.
+ */
+static bool libie_rx_page_pool_params_zc(struct libie_buf_queue *bq,
+					 struct page_pool_params *pp)
+{
+	u32 mtu;
+
+	pp->offset = 0;
+	pp->max_len = PAGE_SIZE << LIBIE_RX_PAGE_ORDER;
+
+	switch (bq->type) {
+	case LIBIE_RX_BUF_MTU:
+		mtu = READ_ONCE(pp->netdev->mtu);
+		break;
+	case LIBIE_RX_BUF_SHORT:
+		mtu = bq->truesize;
+		break;
+	default:
+		return false;
+	}
+
+	bq->rx_buf_len = clamp(roundup_pow_of_two(mtu), LIBIE_RX_BUF_LEN_ALIGN,
+			       pp->max_len);
+	bq->truesize = bq->rx_buf_len;
+
+	return true;
+}
+
 /**
  * libie_rx_page_pool_create - create a PP with the default libie settings
  * @bq: buffer queue struct to fill
@@ -43,17 +133,12 @@ int libie_rx_page_pool_create(struct libie_buf_queue *bq,
 		.netdev		= napi->dev,
 		.napi		= napi,
 		.dma_dir	= DMA_FROM_DEVICE,
-		.offset		= LIBIE_SKB_HEADROOM,
 	};
 
-	/* HW-writeable / syncable length per one page */
-	pp.max_len = LIBIE_RX_BUF_LEN(pp.offset);
-
-	/* HW-writeable length per buffer */
-	bq->rx_buf_len = libie_rx_hw_len(&pp);
-	/* Buffer size to allocate */
-	bq->truesize = roundup_pow_of_two(SKB_HEAD_ALIGN(pp.offset +
-							 bq->rx_buf_len));
+	if (!bq->hsplit)
+		libie_rx_page_pool_params(bq, &pp);
+	else if (!libie_rx_page_pool_params_zc(bq, &pp))
+		return -EINVAL;
 
 	bq->pp = page_pool_create(&pp);
 
diff --git a/include/linux/net/intel/libie/rx.h b/include/linux/net/intel/libie/rx.h
index 0d6bce19ad6b..87ad8f9e89c7 100644
--- a/include/linux/net/intel/libie/rx.h
+++ b/include/linux/net/intel/libie/rx.h
@@ -19,6 +19,8 @@
 #define LIBIE_MAX_HEADROOM	LIBIE_SKB_HEADROOM
 /* Link layer / L2 overhead: Ethernet, 2 VLAN tags (C + S), FCS */
 #define LIBIE_RX_LL_LEN		(ETH_HLEN + 2 * VLAN_HLEN + ETH_FCS_LEN)
+/* Maximum supported L2-L4 header length */
+#define LIBIE_MAX_HEAD		256
 
 /* Always use order-0 pages */
 #define LIBIE_RX_PAGE_ORDER	0
@@ -64,6 +66,18 @@ struct libie_rx_buffer {
 	u32			truesize;
 };
 
+/**
+ * enum libie_rx_buf_type - enum representing types of Rx buffers
+ * @LIBIE_RX_BUF_MTU: buffer size is determined by MTU
+ * @LIBIE_RX_BUF_SHORT: buffer size is smaller than MTU, for short frames
+ * @LIBIE_RX_BUF_HDR: buffer size is ```LIBIE_MAX_HEAD```-sized, for headers
+ */
+enum libie_rx_buf_type {
+	LIBIE_RX_BUF_MTU	= 0U,
+	LIBIE_RX_BUF_SHORT,
+	LIBIE_RX_BUF_HDR,
+};
+
 /**
  * struct libie_buf_queue - structure representing a buffer queue
  * @pp: &page_pool for buffer management
@@ -71,6 +85,8 @@ struct libie_rx_buffer {
  * @truesize: size to allocate per buffer, w/overhead
  * @count: number of descriptors/buffers the queue has
  * @rx_buf_len: HW-writeable length per each buffer
+ * @type: type of the buffers this queue has
+ * @hsplit: flag whether header split is enabled
  */
 struct libie_buf_queue {
 	struct page_pool	*pp;
@@ -81,6 +97,9 @@ struct libie_buf_queue {
 
 	/* Cold fields */
 	u32			rx_buf_len;
+	enum libie_rx_buf_type	type:2;
+
+	bool			hsplit:1;
 };
 
 int libie_rx_page_pool_create(struct libie_buf_queue *bq,
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
