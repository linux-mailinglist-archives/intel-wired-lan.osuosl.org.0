Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F2A92BB3F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jul 2024 15:31:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4954040723;
	Tue,  9 Jul 2024 13:31:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TArQOu912Yxa; Tue,  9 Jul 2024 13:31:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC8F7409C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720531877;
	bh=Hj6GZYwIowZcQuY1B/2Ja2Ei6DevAxq/hHnIuhK4zD0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AwNhsBQSjKisP4voOewrYY76TSeCfQjx91Zqp9QdXvRHJcMhQBes9plhsON7v5XjM
	 bRYF/2hobX8KDSjGM9AalmWI5H0wsISzPfAhAg40DuQRJ9zrP8mcT6f3OFlVxsg1T6
	 ryEC5/2xm2NdCarpb0VJnSSxEoam7x6YYKOfNAtUlZbCdOOAajzxShqx3qjQIqg8cV
	 hKlPAa8BaBbFS0xDM72TLa+Exa/hCqYzg66EzrTiT+Gr+XX2aMdk24DZgWoB6I7ZfS
	 A3J6XHABS1JaGfi9vCDJIOGpB+60z1sLl1cIimZGYLZQN+OvA4CRY1bfGsw/hl2lGA
	 M44fHslBR3mnw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC8F7409C6;
	Tue,  9 Jul 2024 13:31:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BC9551BF228
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 13:31:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A76DA4095C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 13:31:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gyr8Cip1ONWk for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Jul 2024 13:31:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.188;
 helo=szxga02-in.huawei.com; envelope-from=linyunsheng@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 30EF740728
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 30EF740728
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 30EF740728
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 13:31:11 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.88.105])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4WJMLm2QSMzcpJ1;
 Tue,  9 Jul 2024 21:30:40 +0800 (CST)
Received: from dggpemf200006.china.huawei.com (unknown [7.185.36.61])
 by mail.maildlp.com (Postfix) with ESMTPS id 7747D140485;
 Tue,  9 Jul 2024 21:31:06 +0800 (CST)
Received: from localhost.localdomain (10.69.192.56) by
 dggpemf200006.china.huawei.com (7.185.36.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Tue, 9 Jul 2024 21:31:05 +0800
From: Yunsheng Lin <linyunsheng@huawei.com>
To: <davem@davemloft.net>, <kuba@kernel.org>, <pabeni@redhat.com>
Date: Tue, 9 Jul 2024 21:27:29 +0800
Message-ID: <20240709132741.47751-5-linyunsheng@huawei.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20240709132741.47751-1-linyunsheng@huawei.com>
References: <20240709132741.47751-1-linyunsheng@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.69.192.56]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 dggpemf200006.china.huawei.com (7.185.36.61)
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: [Intel-wired-lan] [PATCH net-next v10 04/15] mm: page_frag: add
 '_va' suffix to page_frag API
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
Cc: Yonghong Song <yonghong.song@linux.dev>, kvm@vger.kernel.org,
 "Michael S. Tsirkin" <mst@redhat.com>, Neil Brown <neilb@suse.de>,
 Jason Wang <jasowang@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Alexander Duyck <alexander.duyck@gmail.com>,
 Andrii Nakryiko <andrii@kernel.org>, David Howells <dhowells@redhat.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Subbaraya Sundeep <sbhatta@marvell.com>,
 Marc Dionne <marc.dionne@auristor.com>, Christoph Hellwig <hch@lst.de>,
 Anna Schumaker <anna@kernel.org>, Jeroen de Borst <jeroendb@google.com>,
 Sagi Grimberg <sagi@grimberg.me>, Daniel Borkmann <daniel@iogearbox.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Yunsheng Lin <linyunsheng@huawei.com>, linux-afs@lists.infradead.org,
 =?UTF-8?q?Eugenio=20P=C3=A9rez?= <eperezma@redhat.com>,
 Stanislav Fomichev <sdf@fomichev.me>, intel-wired-lan@lists.osuosl.org,
 Olga Kornievskaia <kolga@netapp.com>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Sunil Goutham <sgoutham@marvell.com>,
 linux-mm@kvack.org, Chaitanya Kulkarni <kch@nvidia.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>, Dai Ngo <Dai.Ngo@oracle.com>,
 Sean Wang <sean.wang@mediatek.com>, virtualization@lists.linux.dev,
 KP Singh <kpsingh@kernel.org>, Tom Talpey <tom@talpey.com>,
 Shailend Chand <shailend@google.com>, linux-mediatek@lists.infradead.org,
 linux-nvme@lists.infradead.org, Keith Busch <kbusch@kernel.org>,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Jens Axboe <axboe@kernel.dk>, Hao Luo <haoluo@google.com>,
 linux-nfs@vger.kernel.org, Song Liu <song@kernel.org>, netdev@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Eduard Zingerman <eddyz87@gmail.com>, hariprasad <hkelam@marvell.com>,
 Chuck Lever <chuck.lever@oracle.com>, Jiri Olsa <jolsa@kernel.org>,
 Praveen Kaligineedi <pkaligineedi@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Martin KaFai Lau <martin.lau@linux.dev>, Geetha sowjanya <gakula@marvell.com>,
 Trond Myklebust <trondmy@kernel.org>, Felix Fietkau <nbd@nbd.name>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently the page_frag API is returning 'virtual address'
or 'va' when allocing and expecting 'virtual address' or
'va' as input when freeing.

As we are about to support new use cases that the caller
need to deal with 'struct page' or need to deal with both
'va' and 'struct page'. In order to differentiate the API
handling between 'va' and 'struct page', add '_va' suffix
to the corresponding API mirroring the page_pool_alloc_va()
API of the page_pool. So that callers expecting to deal with
va, page or both va and page may call page_frag_alloc_va*,
page_frag_alloc_pg*, or page_frag_alloc* API accordingly.

CC: Alexander Duyck <alexander.duyck@gmail.com>
Signed-off-by: Yunsheng Lin <linyunsheng@huawei.com>
---
 drivers/net/ethernet/google/gve/gve_rx.c      |  4 ++--
 drivers/net/ethernet/intel/ice/ice_txrx.c     |  2 +-
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  2 +-
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  2 +-
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c |  4 ++--
 .../marvell/octeontx2/nic/otx2_common.c       |  2 +-
 drivers/net/ethernet/mediatek/mtk_wed_wo.c    |  4 ++--
 drivers/nvme/host/tcp.c                       |  8 +++----
 drivers/nvme/target/tcp.c                     | 22 +++++++++----------
 drivers/vhost/net.c                           |  6 ++---
 include/linux/page_frag_cache.h               | 21 +++++++++---------
 include/linux/skbuff.h                        |  2 +-
 kernel/bpf/cpumap.c                           |  2 +-
 mm/page_frag_cache.c                          | 12 +++++-----
 mm/page_frag_test.c                           | 13 ++++++-----
 net/core/skbuff.c                             | 14 ++++++------
 net/core/xdp.c                                |  2 +-
 net/rxrpc/txbuf.c                             | 15 +++++++------
 net/sunrpc/svcsock.c                          |  6 ++---
 19 files changed, 74 insertions(+), 69 deletions(-)

diff --git a/drivers/net/ethernet/google/gve/gve_rx.c b/drivers/net/ethernet/google/gve/gve_rx.c
index acb73d4d0de6..b6c10100e462 100644
--- a/drivers/net/ethernet/google/gve/gve_rx.c
+++ b/drivers/net/ethernet/google/gve/gve_rx.c
@@ -729,7 +729,7 @@ static int gve_xdp_redirect(struct net_device *dev, struct gve_rx_ring *rx,
 
 	total_len = headroom + SKB_DATA_ALIGN(len) +
 		SKB_DATA_ALIGN(sizeof(struct skb_shared_info));
-	frame = page_frag_alloc(&rx->page_cache, total_len, GFP_ATOMIC);
+	frame = page_frag_alloc_va(&rx->page_cache, total_len, GFP_ATOMIC);
 	if (!frame) {
 		u64_stats_update_begin(&rx->statss);
 		rx->xdp_alloc_fails++;
@@ -742,7 +742,7 @@ static int gve_xdp_redirect(struct net_device *dev, struct gve_rx_ring *rx,
 
 	err = xdp_do_redirect(dev, &new, xdp_prog);
 	if (err)
-		page_frag_free(frame);
+		page_frag_free_va(frame);
 
 	return err;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 8bb743f78fcb..399b317c509d 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -126,7 +126,7 @@ ice_unmap_and_free_tx_buf(struct ice_tx_ring *ring, struct ice_tx_buf *tx_buf)
 		dev_kfree_skb_any(tx_buf->skb);
 		break;
 	case ICE_TX_BUF_XDP_TX:
-		page_frag_free(tx_buf->raw_buf);
+		page_frag_free_va(tx_buf->raw_buf);
 		break;
 	case ICE_TX_BUF_XDP_XMIT:
 		xdp_return_frame(tx_buf->xdpf);
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index feba314a3fe4..6379f57d8228 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -148,7 +148,7 @@ static inline int ice_skb_pad(void)
  * @ICE_TX_BUF_DUMMY: dummy Flow Director packet, unmap and kfree()
  * @ICE_TX_BUF_FRAG: mapped skb OR &xdp_buff frag, only unmap DMA
  * @ICE_TX_BUF_SKB: &sk_buff, unmap and consume_skb(), update stats
- * @ICE_TX_BUF_XDP_TX: &xdp_buff, unmap and page_frag_free(), stats
+ * @ICE_TX_BUF_XDP_TX: &xdp_buff, unmap and page_frag_free_va(), stats
  * @ICE_TX_BUF_XDP_XMIT: &xdp_frame, unmap and xdp_return_frame(), stats
  * @ICE_TX_BUF_XSK_TX: &xdp_buff on XSk queue, xsk_buff_free(), stats
  */
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index 2719f0e20933..a1a41a14df0d 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -250,7 +250,7 @@ ice_clean_xdp_tx_buf(struct device *dev, struct ice_tx_buf *tx_buf,
 
 	switch (tx_buf->type) {
 	case ICE_TX_BUF_XDP_TX:
-		page_frag_free(tx_buf->raw_buf);
+		page_frag_free_va(tx_buf->raw_buf);
 		break;
 	case ICE_TX_BUF_XDP_XMIT:
 		xdp_return_frame_bulk(tx_buf->xdpf, bq);
diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index b938dc06045d..fcd1b149a45d 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -303,7 +303,7 @@ static bool ixgbevf_clean_tx_irq(struct ixgbevf_q_vector *q_vector,
 
 		/* free the skb */
 		if (ring_is_xdp(tx_ring))
-			page_frag_free(tx_buffer->data);
+			page_frag_free_va(tx_buffer->data);
 		else
 			napi_consume_skb(tx_buffer->skb, napi_budget);
 
@@ -2413,7 +2413,7 @@ static void ixgbevf_clean_tx_ring(struct ixgbevf_ring *tx_ring)
 
 		/* Free all the Tx ring sk_buffs */
 		if (ring_is_xdp(tx_ring))
-			page_frag_free(tx_buffer->data);
+			page_frag_free_va(tx_buffer->data);
 		else
 			dev_kfree_skb_any(tx_buffer->skb);
 
diff --git a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_common.c b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_common.c
index 87d5776e3b88..a485e988fa1d 100644
--- a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_common.c
+++ b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_common.c
@@ -553,7 +553,7 @@ static int __otx2_alloc_rbuf(struct otx2_nic *pfvf, struct otx2_pool *pool,
 	*dma = dma_map_single_attrs(pfvf->dev, buf, pool->rbsize,
 				    DMA_FROM_DEVICE, DMA_ATTR_SKIP_CPU_SYNC);
 	if (unlikely(dma_mapping_error(pfvf->dev, *dma))) {
-		page_frag_free(buf);
+		page_frag_free_va(buf);
 		return -ENOMEM;
 	}
 
diff --git a/drivers/net/ethernet/mediatek/mtk_wed_wo.c b/drivers/net/ethernet/mediatek/mtk_wed_wo.c
index 7063c78bd35f..c4228719f8a4 100644
--- a/drivers/net/ethernet/mediatek/mtk_wed_wo.c
+++ b/drivers/net/ethernet/mediatek/mtk_wed_wo.c
@@ -142,8 +142,8 @@ mtk_wed_wo_queue_refill(struct mtk_wed_wo *wo, struct mtk_wed_wo_queue *q,
 		dma_addr_t addr;
 		void *buf;
 
-		buf = page_frag_alloc(&q->cache, q->buf_size,
-				      GFP_ATOMIC | GFP_DMA32);
+		buf = page_frag_alloc_va(&q->cache, q->buf_size,
+					 GFP_ATOMIC | GFP_DMA32);
 		if (!buf)
 			break;
 
diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 8b5e4327fe83..4b7a897897fc 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -506,7 +506,7 @@ static void nvme_tcp_exit_request(struct blk_mq_tag_set *set,
 {
 	struct nvme_tcp_request *req = blk_mq_rq_to_pdu(rq);
 
-	page_frag_free(req->pdu);
+	page_frag_free_va(req->pdu);
 }
 
 static int nvme_tcp_init_request(struct blk_mq_tag_set *set,
@@ -520,7 +520,7 @@ static int nvme_tcp_init_request(struct blk_mq_tag_set *set,
 	struct nvme_tcp_queue *queue = &ctrl->queues[queue_idx];
 	u8 hdgst = nvme_tcp_hdgst_len(queue);
 
-	req->pdu = page_frag_alloc(&queue->pf_cache,
+	req->pdu = page_frag_alloc_va(&queue->pf_cache,
 		sizeof(struct nvme_tcp_cmd_pdu) + hdgst,
 		GFP_KERNEL | __GFP_ZERO);
 	if (!req->pdu)
@@ -1337,7 +1337,7 @@ static void nvme_tcp_free_async_req(struct nvme_tcp_ctrl *ctrl)
 {
 	struct nvme_tcp_request *async = &ctrl->async_req;
 
-	page_frag_free(async->pdu);
+	page_frag_free_va(async->pdu);
 }
 
 static int nvme_tcp_alloc_async_req(struct nvme_tcp_ctrl *ctrl)
@@ -1346,7 +1346,7 @@ static int nvme_tcp_alloc_async_req(struct nvme_tcp_ctrl *ctrl)
 	struct nvme_tcp_request *async = &ctrl->async_req;
 	u8 hdgst = nvme_tcp_hdgst_len(queue);
 
-	async->pdu = page_frag_alloc(&queue->pf_cache,
+	async->pdu = page_frag_alloc_va(&queue->pf_cache,
 		sizeof(struct nvme_tcp_cmd_pdu) + hdgst,
 		GFP_KERNEL | __GFP_ZERO);
 	if (!async->pdu)
diff --git a/drivers/nvme/target/tcp.c b/drivers/nvme/target/tcp.c
index 380f22ee3ebb..bea3aa79ef43 100644
--- a/drivers/nvme/target/tcp.c
+++ b/drivers/nvme/target/tcp.c
@@ -1463,24 +1463,24 @@ static int nvmet_tcp_alloc_cmd(struct nvmet_tcp_queue *queue,
 	c->queue = queue;
 	c->req.port = queue->port->nport;
 
-	c->cmd_pdu = page_frag_alloc(&queue->pf_cache,
+	c->cmd_pdu = page_frag_alloc_va(&queue->pf_cache,
 			sizeof(*c->cmd_pdu) + hdgst, GFP_KERNEL | __GFP_ZERO);
 	if (!c->cmd_pdu)
 		return -ENOMEM;
 	c->req.cmd = &c->cmd_pdu->cmd;
 
-	c->rsp_pdu = page_frag_alloc(&queue->pf_cache,
+	c->rsp_pdu = page_frag_alloc_va(&queue->pf_cache,
 			sizeof(*c->rsp_pdu) + hdgst, GFP_KERNEL | __GFP_ZERO);
 	if (!c->rsp_pdu)
 		goto out_free_cmd;
 	c->req.cqe = &c->rsp_pdu->cqe;
 
-	c->data_pdu = page_frag_alloc(&queue->pf_cache,
+	c->data_pdu = page_frag_alloc_va(&queue->pf_cache,
 			sizeof(*c->data_pdu) + hdgst, GFP_KERNEL | __GFP_ZERO);
 	if (!c->data_pdu)
 		goto out_free_rsp;
 
-	c->r2t_pdu = page_frag_alloc(&queue->pf_cache,
+	c->r2t_pdu = page_frag_alloc_va(&queue->pf_cache,
 			sizeof(*c->r2t_pdu) + hdgst, GFP_KERNEL | __GFP_ZERO);
 	if (!c->r2t_pdu)
 		goto out_free_data;
@@ -1495,20 +1495,20 @@ static int nvmet_tcp_alloc_cmd(struct nvmet_tcp_queue *queue,
 
 	return 0;
 out_free_data:
-	page_frag_free(c->data_pdu);
+	page_frag_free_va(c->data_pdu);
 out_free_rsp:
-	page_frag_free(c->rsp_pdu);
+	page_frag_free_va(c->rsp_pdu);
 out_free_cmd:
-	page_frag_free(c->cmd_pdu);
+	page_frag_free_va(c->cmd_pdu);
 	return -ENOMEM;
 }
 
 static void nvmet_tcp_free_cmd(struct nvmet_tcp_cmd *c)
 {
-	page_frag_free(c->r2t_pdu);
-	page_frag_free(c->data_pdu);
-	page_frag_free(c->rsp_pdu);
-	page_frag_free(c->cmd_pdu);
+	page_frag_free_va(c->r2t_pdu);
+	page_frag_free_va(c->data_pdu);
+	page_frag_free_va(c->rsp_pdu);
+	page_frag_free_va(c->cmd_pdu);
 }
 
 static int nvmet_tcp_alloc_cmds(struct nvmet_tcp_queue *queue)
diff --git a/drivers/vhost/net.c b/drivers/vhost/net.c
index f16279351db5..6691fac01e0d 100644
--- a/drivers/vhost/net.c
+++ b/drivers/vhost/net.c
@@ -686,8 +686,8 @@ static int vhost_net_build_xdp(struct vhost_net_virtqueue *nvq,
 		return -ENOSPC;
 
 	buflen += SKB_DATA_ALIGN(len + pad);
-	buf = page_frag_alloc_align(&net->pf_cache, buflen, GFP_KERNEL,
-				    SMP_CACHE_BYTES);
+	buf = page_frag_alloc_va_align(&net->pf_cache, buflen, GFP_KERNEL,
+				       SMP_CACHE_BYTES);
 	if (unlikely(!buf))
 		return -ENOMEM;
 
@@ -734,7 +734,7 @@ static int vhost_net_build_xdp(struct vhost_net_virtqueue *nvq,
 	return 0;
 
 err:
-	page_frag_free(buf);
+	page_frag_free_va(buf);
 	return ret;
 }
 
diff --git a/include/linux/page_frag_cache.h b/include/linux/page_frag_cache.h
index ed8bacbb877b..185d875e3e6b 100644
--- a/include/linux/page_frag_cache.h
+++ b/include/linux/page_frag_cache.h
@@ -28,23 +28,24 @@ struct page_frag_cache {
 
 void page_frag_cache_drain(struct page_frag_cache *nc);
 void __page_frag_cache_drain(struct page *page, unsigned int count);
-void *__page_frag_alloc_align(struct page_frag_cache *nc, unsigned int fragsz,
-			      gfp_t gfp_mask, unsigned int align_mask);
+void *__page_frag_alloc_va_align(struct page_frag_cache *nc,
+				 unsigned int fragsz, gfp_t gfp_mask,
+				 unsigned int align_mask);
 
-static inline void *page_frag_alloc_align(struct page_frag_cache *nc,
-					  unsigned int fragsz, gfp_t gfp_mask,
-					  unsigned int align)
+static inline void *page_frag_alloc_va_align(struct page_frag_cache *nc,
+					     unsigned int fragsz,
+					     gfp_t gfp_mask, unsigned int align)
 {
 	WARN_ON_ONCE(!is_power_of_2(align));
-	return __page_frag_alloc_align(nc, fragsz, gfp_mask, -align);
+	return __page_frag_alloc_va_align(nc, fragsz, gfp_mask, -align);
 }
 
-static inline void *page_frag_alloc(struct page_frag_cache *nc,
-				    unsigned int fragsz, gfp_t gfp_mask)
+static inline void *page_frag_alloc_va(struct page_frag_cache *nc,
+				       unsigned int fragsz, gfp_t gfp_mask)
 {
-	return __page_frag_alloc_align(nc, fragsz, gfp_mask, ~0u);
+	return __page_frag_alloc_va_align(nc, fragsz, gfp_mask, ~0u);
 }
 
-void page_frag_free(void *addr);
+void page_frag_free_va(void *addr);
 
 #endif
diff --git a/include/linux/skbuff.h b/include/linux/skbuff.h
index e0e2be5194fb..fb74725d1af8 100644
--- a/include/linux/skbuff.h
+++ b/include/linux/skbuff.h
@@ -3381,7 +3381,7 @@ static inline struct sk_buff *netdev_alloc_skb_ip_align(struct net_device *dev,
 
 static inline void skb_free_frag(void *addr)
 {
-	page_frag_free(addr);
+	page_frag_free_va(addr);
 }
 
 void *__napi_alloc_frag_align(unsigned int fragsz, unsigned int align_mask);
diff --git a/kernel/bpf/cpumap.c b/kernel/bpf/cpumap.c
index fbdf5a1aabfe..3b70b6b071b9 100644
--- a/kernel/bpf/cpumap.c
+++ b/kernel/bpf/cpumap.c
@@ -323,7 +323,7 @@ static int cpu_map_kthread_run(void *data)
 
 			/* Bring struct page memory area to curr CPU. Read by
 			 * build_skb_around via page_is_pfmemalloc(), and when
-			 * freed written by page_frag_free call.
+			 * freed written by page_frag_free_va call.
 			 */
 			prefetchw(page);
 		}
diff --git a/mm/page_frag_cache.c b/mm/page_frag_cache.c
index ef0a02f12acc..373f3bc29fcb 100644
--- a/mm/page_frag_cache.c
+++ b/mm/page_frag_cache.c
@@ -69,9 +69,9 @@ void __page_frag_cache_drain(struct page *page, unsigned int count)
 }
 EXPORT_SYMBOL(__page_frag_cache_drain);
 
-void *__page_frag_alloc_align(struct page_frag_cache *nc,
-			      unsigned int fragsz, gfp_t gfp_mask,
-			      unsigned int align_mask)
+void *__page_frag_alloc_va_align(struct page_frag_cache *nc,
+				 unsigned int fragsz, gfp_t gfp_mask,
+				 unsigned int align_mask)
 {
 	int aligned_remaining, remaining;
 	unsigned int size = PAGE_SIZE;
@@ -144,16 +144,16 @@ void *__page_frag_alloc_align(struct page_frag_cache *nc,
 
 	return nc->va + (size - aligned_remaining);
 }
-EXPORT_SYMBOL(__page_frag_alloc_align);
+EXPORT_SYMBOL(__page_frag_alloc_va_align);
 
 /*
  * Frees a page fragment allocated out of either a compound or order 0 page.
  */
-void page_frag_free(void *addr)
+void page_frag_free_va(void *addr)
 {
 	struct page *page = virt_to_head_page(addr);
 
 	if (unlikely(put_page_testzero(page)))
 		free_unref_page(page, compound_order(page));
 }
-EXPORT_SYMBOL(page_frag_free);
+EXPORT_SYMBOL(page_frag_free_va);
diff --git a/mm/page_frag_test.c b/mm/page_frag_test.c
index 755d66af9fd4..50166a059c7d 100644
--- a/mm/page_frag_test.c
+++ b/mm/page_frag_test.c
@@ -276,7 +276,7 @@ static int page_frag_pop_thread(void *arg)
 
 		if (obj) {
 			nr--;
-			page_frag_free(obj);
+			page_frag_free_va(obj);
 		} else {
 			cond_resched();
 		}
@@ -304,17 +304,20 @@ static int page_frag_push_thread(void *arg)
 		int ret;
 
 		if (test_align)
-			va = page_frag_alloc_align(&test_frag, test_alloc_len,
-						   GFP_KERNEL, SMP_CACHE_BYTES);
+			va = page_frag_alloc_va_align(&test_frag,
+						      test_alloc_len,
+						      GFP_KERNEL,
+						      SMP_CACHE_BYTES);
 		else
-			va = page_frag_alloc(&test_frag, test_alloc_len, GFP_KERNEL);
+			va = page_frag_alloc_va(&test_frag, test_alloc_len,
+						GFP_KERNEL);
 
 		if (!va)
 			continue;
 
 		ret = objpool_push(va, pool);
 		if (ret) {
-			page_frag_free(va);
+			page_frag_free_va(va);
 			cond_resched();
 		} else {
 			nr--;
diff --git a/net/core/skbuff.c b/net/core/skbuff.c
index 83f8cd8aa2d1..4b8acd967793 100644
--- a/net/core/skbuff.c
+++ b/net/core/skbuff.c
@@ -314,8 +314,8 @@ void *__napi_alloc_frag_align(unsigned int fragsz, unsigned int align_mask)
 	fragsz = SKB_DATA_ALIGN(fragsz);
 
 	local_lock_nested_bh(&napi_alloc_cache.bh_lock);
-	data = __page_frag_alloc_align(&nc->page, fragsz, GFP_ATOMIC,
-				       align_mask);
+	data = __page_frag_alloc_va_align(&nc->page, fragsz, GFP_ATOMIC,
+					  align_mask);
 	local_unlock_nested_bh(&napi_alloc_cache.bh_lock);
 	return data;
 
@@ -330,8 +330,8 @@ void *__netdev_alloc_frag_align(unsigned int fragsz, unsigned int align_mask)
 		struct page_frag_cache *nc = this_cpu_ptr(&netdev_alloc_cache);
 
 		fragsz = SKB_DATA_ALIGN(fragsz);
-		data = __page_frag_alloc_align(nc, fragsz, GFP_ATOMIC,
-					       align_mask);
+		data = __page_frag_alloc_va_align(nc, fragsz, GFP_ATOMIC,
+						  align_mask);
 	} else {
 		local_bh_disable();
 		data = __napi_alloc_frag_align(fragsz, align_mask);
@@ -748,14 +748,14 @@ struct sk_buff *__netdev_alloc_skb(struct net_device *dev, unsigned int len,
 
 	if (in_hardirq() || irqs_disabled()) {
 		nc = this_cpu_ptr(&netdev_alloc_cache);
-		data = page_frag_alloc(nc, len, gfp_mask);
+		data = page_frag_alloc_va(nc, len, gfp_mask);
 		pfmemalloc = nc->pfmemalloc;
 	} else {
 		local_bh_disable();
 		local_lock_nested_bh(&napi_alloc_cache.bh_lock);
 
 		nc = this_cpu_ptr(&napi_alloc_cache.page);
-		data = page_frag_alloc(nc, len, gfp_mask);
+		data = page_frag_alloc_va(nc, len, gfp_mask);
 		pfmemalloc = nc->pfmemalloc;
 
 		local_unlock_nested_bh(&napi_alloc_cache.bh_lock);
@@ -845,7 +845,7 @@ struct sk_buff *napi_alloc_skb(struct napi_struct *napi, unsigned int len)
 	} else {
 		len = SKB_HEAD_ALIGN(len);
 
-		data = page_frag_alloc(&nc->page, len, gfp_mask);
+		data = page_frag_alloc_va(&nc->page, len, gfp_mask);
 		pfmemalloc = nc->page.pfmemalloc;
 	}
 	local_unlock_nested_bh(&napi_alloc_cache.bh_lock);
diff --git a/net/core/xdp.c b/net/core/xdp.c
index 022c12059cf2..23b318459a01 100644
--- a/net/core/xdp.c
+++ b/net/core/xdp.c
@@ -389,7 +389,7 @@ void __xdp_return(void *data, struct xdp_mem_info *mem, bool napi_direct,
 		page_pool_put_full_page(page->pp, page, napi_direct);
 		break;
 	case MEM_TYPE_PAGE_SHARED:
-		page_frag_free(data);
+		page_frag_free_va(data);
 		break;
 	case MEM_TYPE_PAGE_ORDER0:
 		page = virt_to_page(data); /* Assumes order0 page*/
diff --git a/net/rxrpc/txbuf.c b/net/rxrpc/txbuf.c
index c3913d8a50d3..dccb0353ee84 100644
--- a/net/rxrpc/txbuf.c
+++ b/net/rxrpc/txbuf.c
@@ -33,8 +33,8 @@ struct rxrpc_txbuf *rxrpc_alloc_data_txbuf(struct rxrpc_call *call, size_t data_
 
 	data_align = umax(data_align, L1_CACHE_BYTES);
 	mutex_lock(&call->conn->tx_data_alloc_lock);
-	buf = page_frag_alloc_align(&call->conn->tx_data_alloc, total, gfp,
-				    data_align);
+	buf = page_frag_alloc_va_align(&call->conn->tx_data_alloc, total, gfp,
+				       data_align);
 	mutex_unlock(&call->conn->tx_data_alloc_lock);
 	if (!buf) {
 		kfree(txb);
@@ -96,17 +96,18 @@ struct rxrpc_txbuf *rxrpc_alloc_ack_txbuf(struct rxrpc_call *call, size_t sack_s
 	if (!txb)
 		return NULL;
 
-	buf = page_frag_alloc(&call->local->tx_alloc,
-			      sizeof(*whdr) + sizeof(*ack) + 1 + 3 + sizeof(*trailer), gfp);
+	buf = page_frag_alloc_va(&call->local->tx_alloc,
+				 sizeof(*whdr) + sizeof(*ack) + 1 + 3 + sizeof(*trailer), gfp);
 	if (!buf) {
 		kfree(txb);
 		return NULL;
 	}
 
 	if (sack_size) {
-		buf2 = page_frag_alloc(&call->local->tx_alloc, sack_size, gfp);
+		buf2 = page_frag_alloc_va(&call->local->tx_alloc, sack_size,
+					  gfp);
 		if (!buf2) {
-			page_frag_free(buf);
+			page_frag_free_va(buf);
 			kfree(txb);
 			return NULL;
 		}
@@ -180,7 +181,7 @@ static void rxrpc_free_txbuf(struct rxrpc_txbuf *txb)
 			  rxrpc_txbuf_free);
 	for (i = 0; i < txb->nr_kvec; i++)
 		if (txb->kvec[i].iov_base)
-			page_frag_free(txb->kvec[i].iov_base);
+			page_frag_free_va(txb->kvec[i].iov_base);
 	kfree(txb);
 	atomic_dec(&rxrpc_nr_txbuf);
 }
diff --git a/net/sunrpc/svcsock.c b/net/sunrpc/svcsock.c
index 6b3f01beb294..42d20412c1c3 100644
--- a/net/sunrpc/svcsock.c
+++ b/net/sunrpc/svcsock.c
@@ -1222,8 +1222,8 @@ static int svc_tcp_sendmsg(struct svc_sock *svsk, struct svc_rqst *rqstp,
 	/* The stream record marker is copied into a temporary page
 	 * fragment buffer so that it can be included in rq_bvec.
 	 */
-	buf = page_frag_alloc(&svsk->sk_frag_cache, sizeof(marker),
-			      GFP_KERNEL);
+	buf = page_frag_alloc_va(&svsk->sk_frag_cache, sizeof(marker),
+				 GFP_KERNEL);
 	if (!buf)
 		return -ENOMEM;
 	memcpy(buf, &marker, sizeof(marker));
@@ -1235,7 +1235,7 @@ static int svc_tcp_sendmsg(struct svc_sock *svsk, struct svc_rqst *rqstp,
 	iov_iter_bvec(&msg.msg_iter, ITER_SOURCE, rqstp->rq_bvec,
 		      1 + count, sizeof(marker) + rqstp->rq_res.len);
 	ret = sock_sendmsg(svsk->sk_sock, &msg);
-	page_frag_free(buf);
+	page_frag_free_va(buf);
 	if (ret < 0)
 		return ret;
 	*sentp += ret;
-- 
2.33.0

