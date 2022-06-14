Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF3A54BDA7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jun 2022 00:32:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 556364093B;
	Tue, 14 Jun 2022 22:32:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tJhK9SyHjECa; Tue, 14 Jun 2022 22:32:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3492240931;
	Tue, 14 Jun 2022 22:32:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B18041BF294
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jun 2022 22:32:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A87AA60FC2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jun 2022 22:32:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WjHgEOrc3UbG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jun 2022 22:32:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A313C60DFE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jun 2022 22:32:00 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 983C2B81B76;
 Tue, 14 Jun 2022 22:31:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 019FEC3411B;
 Tue, 14 Jun 2022 22:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1655245917;
 bh=leGr+JWd0li0QJzHgZsu5Lo8BHy460tyUF/B30Yspnw=;
 h=From:To:Cc:Subject:Date:From;
 b=ARDlUG51Ii4QDpvKuPXkSGROYBTgorByvKJpCrNaWjuaOy6WwJBpsx5CtfyQKDHHg
 jGCmHYio0NE62vZhLmCFz+PkY4iHK8Tf1Ll2e03Hlqm6GiV8pMKSlqRamb6x2dy0Ut
 M/+ib8Hg4AqFszRbyk3mFY0i8V+UIpXWGRicfjkVAmHqGhc2lb67Q1Sspwu9vhLpTg
 K37uzYMrwSnRP5PnVat1NjkA8iWlAmB4E2ijLf1TuWeNrMlEg5FxX6Xhh0KnkZrhkh
 XMaMQwAcNMbVIz3jJORn47yR7Lng9efctY/Cpn6lqcfcKKkQA9B9hT7oYceZxkYNVx
 fJ92AftTiy7NQ==
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: netdev@vger.kernel.org
Date: Wed, 15 Jun 2022 00:31:29 +0200
Message-Id: <3cd4bb394267b48b019fa6ccd4088577833051cb.1655245561.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] igb: add xdp frags support to
 ndo_xdp_xmit
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
Cc: intel-wired-lan@lists.osuosl.org, jbrouer@redhat.com, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add the capability to map non-linear xdp frames in XDP_TX and
ndo_xdp_xmit callback.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 121 ++++++++++++++--------
 1 file changed, 78 insertions(+), 43 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 68be2976f539..ca1a4e511cbc 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -6257,74 +6257,108 @@ int igb_xmit_xdp_ring(struct igb_adapter *adapter,
 		      struct igb_ring *tx_ring,
 		      struct xdp_frame *xdpf)
 {
-	union e1000_adv_tx_desc *tx_desc;
-	u32 len, cmd_type, olinfo_status;
-	struct igb_tx_buffer *tx_buffer;
-	dma_addr_t dma;
-	u16 i;
+	struct skb_shared_info *sinfo = xdp_get_shared_info_from_frame(xdpf);
+	u8 nr_frags = unlikely(xdp_frame_has_frags(xdpf)) ? sinfo->nr_frags : 0;
+	u16 count, i, index = tx_ring->next_to_use;
+	struct igb_tx_buffer *tx_head = &tx_ring->tx_buffer_info[index];
+	struct igb_tx_buffer *tx_buffer = tx_head;
+	union e1000_adv_tx_desc *tx_desc = IGB_TX_DESC(tx_ring, index);
+	u32 len = xdpf->len, cmd_type, olinfo_status;
+	void *data = xdpf->data;
+
+	count = TXD_USE_COUNT(len);
+	for (i = 0; i < nr_frags; i++)
+		count += TXD_USE_COUNT(skb_frag_size(&sinfo->frags[i]));
+
+	if (igb_maybe_stop_tx(tx_ring, count + 3))
+		return IGB_XDP_CONSUMED;
 
-	len = xdpf->len;
+	i = 0;
+	/* record the location of the first descriptor for this packet */
+	tx_head->bytecount = xdp_get_frame_len(xdpf);
+	tx_head->type = IGB_TYPE_XDP;
+	tx_head->gso_segs = 1;
+	tx_head->xdpf = xdpf;
 
-	if (unlikely(!igb_desc_unused(tx_ring)))
-		return IGB_XDP_CONSUMED;
+	olinfo_status = tx_head->bytecount << E1000_ADVTXD_PAYLEN_SHIFT;
+	/* 82575 requires a unique index per ring */
+	if (test_bit(IGB_RING_FLAG_TX_CTX_IDX, &tx_ring->flags))
+		olinfo_status |= tx_ring->reg_idx << 4;
+	tx_desc->read.olinfo_status = cpu_to_le32(olinfo_status);
 
-	dma = dma_map_single(tx_ring->dev, xdpf->data, len, DMA_TO_DEVICE);
-	if (dma_mapping_error(tx_ring->dev, dma))
-		return IGB_XDP_CONSUMED;
+	for (;;) {
+		dma_addr_t dma;
 
-	/* record the location of the first descriptor for this packet */
-	tx_buffer = &tx_ring->tx_buffer_info[tx_ring->next_to_use];
-	tx_buffer->bytecount = len;
-	tx_buffer->gso_segs = 1;
-	tx_buffer->protocol = 0;
+		dma = dma_map_single(tx_ring->dev, data, len, DMA_TO_DEVICE);
+		if (dma_mapping_error(tx_ring->dev, dma))
+			goto unmap;
 
-	i = tx_ring->next_to_use;
-	tx_desc = IGB_TX_DESC(tx_ring, i);
+		/* record length, and DMA address */
+		dma_unmap_len_set(tx_buffer, len, len);
+		dma_unmap_addr_set(tx_buffer, dma, dma);
 
-	dma_unmap_len_set(tx_buffer, len, len);
-	dma_unmap_addr_set(tx_buffer, dma, dma);
-	tx_buffer->type = IGB_TYPE_XDP;
-	tx_buffer->xdpf = xdpf;
+		/* put descriptor type bits */
+		cmd_type = E1000_ADVTXD_DTYP_DATA | E1000_ADVTXD_DCMD_DEXT |
+			   E1000_ADVTXD_DCMD_IFCS | len;
 
-	tx_desc->read.buffer_addr = cpu_to_le64(dma);
+		tx_desc->read.cmd_type_len = cpu_to_le32(cmd_type);
+		tx_desc->read.buffer_addr = cpu_to_le64(dma);
 
-	/* put descriptor type bits */
-	cmd_type = E1000_ADVTXD_DTYP_DATA |
-		   E1000_ADVTXD_DCMD_DEXT |
-		   E1000_ADVTXD_DCMD_IFCS;
-	cmd_type |= len | IGB_TXD_DCMD;
-	tx_desc->read.cmd_type_len = cpu_to_le32(cmd_type);
+		tx_buffer->protocol = 0;
 
-	olinfo_status = len << E1000_ADVTXD_PAYLEN_SHIFT;
-	/* 82575 requires a unique index per ring */
-	if (test_bit(IGB_RING_FLAG_TX_CTX_IDX, &tx_ring->flags))
-		olinfo_status |= tx_ring->reg_idx << 4;
+		if (++index == tx_ring->count)
+			index = 0;
 
-	tx_desc->read.olinfo_status = cpu_to_le32(olinfo_status);
+		if (i == nr_frags)
+			break;
+
+		tx_buffer = &tx_ring->tx_buffer_info[index];
+		tx_desc = IGB_TX_DESC(tx_ring, index);
+		tx_desc->read.olinfo_status = 0;
 
-	netdev_tx_sent_queue(txring_txq(tx_ring), tx_buffer->bytecount);
+		data = skb_frag_address(&sinfo->frags[i]);
+		len = skb_frag_size(&sinfo->frags[i]);
+		i++;
+	}
+	tx_desc->read.cmd_type_len |= cpu_to_le32(IGB_TXD_DCMD);
 
+	netdev_tx_sent_queue(txring_txq(tx_ring), tx_head->bytecount);
 	/* set the timestamp */
-	tx_buffer->time_stamp = jiffies;
+	tx_head->time_stamp = jiffies;
 
 	/* Avoid any potential race with xdp_xmit and cleanup */
 	smp_wmb();
 
 	/* set next_to_watch value indicating a packet is present */
-	i++;
-	if (i == tx_ring->count)
-		i = 0;
-
-	tx_buffer->next_to_watch = tx_desc;
-	tx_ring->next_to_use = i;
+	tx_head->next_to_watch = tx_desc;
+	tx_ring->next_to_use = index;
 
 	/* Make sure there is space in the ring for the next send. */
 	igb_maybe_stop_tx(tx_ring, DESC_NEEDED);
 
 	if (netif_xmit_stopped(txring_txq(tx_ring)) || !netdev_xmit_more())
-		writel(i, tx_ring->tail);
+		writel(index, tx_ring->tail);
 
 	return IGB_XDP_TX;
+
+unmap:
+	for (;;) {
+		tx_buffer = &tx_ring->tx_buffer_info[index];
+		if (dma_unmap_len(tx_buffer, len))
+			dma_unmap_page(tx_ring->dev,
+				       dma_unmap_addr(tx_buffer, dma),
+				       dma_unmap_len(tx_buffer, len),
+				       DMA_TO_DEVICE);
+		dma_unmap_len_set(tx_buffer, len, 0);
+		if (tx_buffer == tx_head)
+			break;
+
+		if (!index)
+			index += tx_ring->count;
+		index--;
+	}
+
+	return IGB_XDP_CONSUMED;
 }
 
 netdev_tx_t igb_xmit_frame_ring(struct sk_buff *skb,
@@ -8815,6 +8849,7 @@ static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
 			unsigned int offset = pkt_offset + igb_rx_offset(rx_ring);
 
 			xdp_prepare_buff(&xdp, hard_start, offset, size, true);
+			xdp_buff_clear_frags_flag(&xdp);
 #if (PAGE_SIZE > 4096)
 			/* At larger PAGE_SIZE, frame_sz depend on len size */
 			xdp.frame_sz = igb_rx_frame_truesize(rx_ring, size);
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
