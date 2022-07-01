Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E67195637F5
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Jul 2022 18:32:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8BF8841A25;
	Fri,  1 Jul 2022 16:32:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8BF8841A25
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656693160;
	bh=dE/cA0VmO1pjW5fwS3ONxTWQJ8S/wINAaB1HuihZG7E=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=q9cmCctZ29W/D31NpO7Z1SDRqa5HxmkinPx9IWPFHscHoPcETmVgHbLmhpQFGUfRo
	 8b13u6dsi0UfNwL0z86bkt9nTEOvIB/d4zjqXXYIv7uehBijC7eDa+ya5VfKx7BZQ/
	 7MuiwPJ3DU1tpNia7wTO0Q8I030biyC6DuJkMUF3Ox1gUeEyz55kd14HMl3gQBxLfh
	 K2HTZYW0AwYBzaHGAmKpq5C5QDH+4T4fG1dwb9+JS5qCNEDhWdO6hoapZGURTfzwoB
	 u7Lcx7B/tFmREc3gQ7CfQY7tVX8I7+KYF6XJdtoL1kKIoAnjoGe8CsZib6N3SDWipE
	 FEf0u/xh0QAuw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l5ph5bvBqDlL; Fri,  1 Jul 2022 16:32:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C82F74188B;
	Fri,  1 Jul 2022 16:32:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C82F74188B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 710A21BF4D7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 16:32:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 57DE360F68
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 16:32:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57DE360F68
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0FdG-QyoLYKV for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Jul 2022 16:32:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F61F60BFE
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4F61F60BFE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 16:32:33 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 6D7B4B82F36;
 Fri,  1 Jul 2022 16:32:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBEACC3411E;
 Fri,  1 Jul 2022 16:32:28 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: netdev@vger.kernel.org
Date: Fri,  1 Jul 2022 18:32:01 +0200
Message-Id: <5562ea0b0ceb8f4aa1c58888fa3f23e35ec9e23e.1656692974.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1656693149;
 bh=ELRHvyXNJVImNM2lth4w2n4eIkbQRwt/oCHIWIRH2F0=;
 h=From:To:Cc:Subject:Date:From;
 b=XlLyb3cVVwb8Pt8Z4SVvtTCfLeknOoV4A7YtFafFwAYSeEgqGVYe5ZND1YbGjGcn5
 mtAt97hdD7q6q5qyG9PLyk/oDYHxByJkT03lcdwGAY8rGLOai9d8S+Ncb1ipUO/KQs
 ersVBBvDYJHf00GeHKwcWOi3gTD/xkB86JD75dlMnCl0QOCjIGYxvMvG9Qy+OAISun
 VRmaoSnq+nZqvnDkOmwnMo3V8X/4xedw3KOyrEZfJmT7fJLC8qd2v28IkyfFK84/27
 xPiS70awulLj1O2ruD0SEvcsDzSf8Euk/Y7tvJ8Rhm5egsW3s55AiX0PDsFTESkdAL
 3EaBoze5N/Bxg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=XlLyb3cV
Subject: [Intel-wired-lan] [RFT net-next] igc: add xdp frags support to
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
Cc: intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 jbrouer@redhat.com, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add the capability to map non-linear xdp frames in XDP_TX and
ndo_xdp_xmit callback.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
Please note this patch is only compiled tested since I do not have
access to a igc NIC
---
 drivers/net/ethernet/intel/igc/igc_main.c | 128 ++++++++++++++--------
 1 file changed, 83 insertions(+), 45 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index ae17af44fe02..71657d03da03 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2129,65 +2129,102 @@ static bool igc_alloc_rx_buffers_zc(struct igc_ring *ring, u16 count)
 	return ok;
 }
 
-static int igc_xdp_init_tx_buffer(struct igc_tx_buffer *buffer,
-				  struct xdp_frame *xdpf,
-				  struct igc_ring *ring)
-{
-	dma_addr_t dma;
-
-	dma = dma_map_single(ring->dev, xdpf->data, xdpf->len, DMA_TO_DEVICE);
-	if (dma_mapping_error(ring->dev, dma)) {
-		netdev_err_once(ring->netdev, "Failed to map DMA for TX\n");
-		return -ENOMEM;
-	}
-
-	buffer->type = IGC_TX_BUFFER_TYPE_XDP;
-	buffer->xdpf = xdpf;
-	buffer->protocol = 0;
-	buffer->bytecount = xdpf->len;
-	buffer->gso_segs = 1;
-	buffer->time_stamp = jiffies;
-	dma_unmap_len_set(buffer, len, xdpf->len);
-	dma_unmap_addr_set(buffer, dma, dma);
-	return 0;
-}
-
 /* This function requires __netif_tx_lock is held by the caller. */
 static int igc_xdp_init_tx_descriptor(struct igc_ring *ring,
 				      struct xdp_frame *xdpf)
 {
-	struct igc_tx_buffer *buffer;
-	union igc_adv_tx_desc *desc;
-	u32 cmd_type, olinfo_status;
-	int err;
+	struct skb_shared_info *sinfo = xdp_get_shared_info_from_frame(xdpf);
+	u8 nr_frags = unlikely(xdp_frame_has_frags(xdpf)) ? sinfo->nr_frags : 0;
+	u16 count, index = ring->next_to_use;
+	struct igc_tx_buffer *head = &ring->tx_buffer_info[index];
+	struct igc_tx_buffer *buffer = head;
+	union igc_adv_tx_desc *desc = IGC_TX_DESC(ring, index);
+	u32 olinfo_status, len = xdpf->len, cmd_type;
+	void *data = xdpf->data;
+	u16 i;
 
-	if (!igc_desc_unused(ring))
-		return -EBUSY;
+	count = TXD_USE_COUNT(len);
+	for (i = 0; i < nr_frags; i++)
+		count += TXD_USE_COUNT(skb_frag_size(&sinfo->frags[i]));
 
-	buffer = &ring->tx_buffer_info[ring->next_to_use];
-	err = igc_xdp_init_tx_buffer(buffer, xdpf, ring);
-	if (err)
-		return err;
+	if (igc_maybe_stop_tx(ring, count + 3)) {
+		/* this is a hard error */
+		return -EBUSY;
+	}
 
-	cmd_type = IGC_ADVTXD_DTYP_DATA | IGC_ADVTXD_DCMD_DEXT |
-		   IGC_ADVTXD_DCMD_IFCS | IGC_TXD_DCMD |
-		   buffer->bytecount;
-	olinfo_status = buffer->bytecount << IGC_ADVTXD_PAYLEN_SHIFT;
+	i = 0;
+	head->bytecount = xdp_get_frame_len(xdpf);
+	head->type = IGC_TX_BUFFER_TYPE_XDP;
+	head->gso_segs = 1;
+	head->xdpf = xdpf;
 
-	desc = IGC_TX_DESC(ring, ring->next_to_use);
-	desc->read.cmd_type_len = cpu_to_le32(cmd_type);
+	olinfo_status = head->bytecount << IGC_ADVTXD_PAYLEN_SHIFT;
 	desc->read.olinfo_status = cpu_to_le32(olinfo_status);
-	desc->read.buffer_addr = cpu_to_le64(dma_unmap_addr(buffer, dma));
 
-	netdev_tx_sent_queue(txring_txq(ring), buffer->bytecount);
+	for (;;) {
+		dma_addr_t dma;
 
-	buffer->next_to_watch = desc;
+		dma = dma_map_single(ring->dev, data, len, DMA_TO_DEVICE);
+		if (dma_mapping_error(ring->dev, dma)) {
+			netdev_err_once(ring->netdev,
+					"Failed to map DMA for TX\n");
+			goto unmap;
+		}
 
-	ring->next_to_use++;
-	if (ring->next_to_use == ring->count)
-		ring->next_to_use = 0;
+		dma_unmap_len_set(buffer, len, len);
+		dma_unmap_addr_set(buffer, dma, dma);
+
+		cmd_type = IGC_ADVTXD_DTYP_DATA | IGC_ADVTXD_DCMD_DEXT |
+			   IGC_ADVTXD_DCMD_IFCS | len;
+
+		desc->read.cmd_type_len = cpu_to_le32(cmd_type);
+		desc->read.buffer_addr = cpu_to_le64(dma);
+
+		buffer->protocol = 0;
+
+		if (++index == ring->count)
+			index = 0;
+
+		if (i == nr_frags)
+			break;
+
+		buffer = &ring->tx_buffer_info[index];
+		desc = IGC_TX_DESC(ring, index);
+		desc->read.olinfo_status = 0;
+
+		data = skb_frag_address(&sinfo->frags[i]);
+		len = skb_frag_size(&sinfo->frags[i]);
+		i++;
+	}
+	desc->read.cmd_type_len |= cpu_to_le32(IGC_TXD_DCMD);
+
+	netdev_tx_sent_queue(txring_txq(ring), head->bytecount);
+	/* set the timestamp */
+	head->time_stamp = jiffies;
+	/* set next_to_watch value indicating a packet is present */
+	head->next_to_watch = desc;
+	ring->next_to_use = index;
 
 	return 0;
+
+unmap:
+	for (;;) {
+		buffer = &ring->tx_buffer_info[index];
+		if (dma_unmap_len(buffer, len))
+			dma_unmap_page(ring->dev,
+				       dma_unmap_addr(buffer, dma),
+				       dma_unmap_len(buffer, len),
+				       DMA_TO_DEVICE);
+		dma_unmap_len_set(buffer, len, 0);
+		if (buffer == head)
+			break;
+
+		if (!index)
+			index += ring->count;
+		index--;
+	}
+
+	return -ENOMEM;
 }
 
 static struct igc_ring *igc_xdp_get_tx_ring(struct igc_adapter *adapter,
@@ -2369,6 +2406,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 			xdp_prepare_buff(&xdp, pktbuf - igc_rx_offset(rx_ring),
 					 igc_rx_offset(rx_ring) + pkt_offset,
 					 size, true);
+			xdp_buff_clear_frags_flag(&xdp);
 
 			skb = igc_xdp_run_prog(adapter, &xdp);
 		}
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
