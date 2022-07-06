Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A394568086
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Jul 2022 09:55:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 78BAB60FA1;
	Wed,  6 Jul 2022 07:54:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 78BAB60FA1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657094099;
	bh=dE/cA0VmO1pjW5fwS3ONxTWQJ8S/wINAaB1HuihZG7E=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=aWCijRLiy3/7AGq84NRq3f6jf5WAab9SRKeodBPna46EuLqbhR8IvLNxl0ttMFSRA
	 G/7pWqLrhDku6yS8wBssK/h9mPmPfak5804tf804BG0mMGC2scuSqzqGZOOQ1EEN32
	 LcKfLYs1co9gbPRiy5vhPKo+l73OKEIUSdgDY7IhCn6p7MkeYEdY0iWXY13DTxGX+V
	 OXBhrGTVEe5QPlPcBJUN/Io2r/kqK7MkcgDtXwfqnn39on6LbbmCK7NcQzUPnskRCT
	 leAqmuQTw+Fc9rzjvatUD60MQz1/jaIb4B28kHaClcM9/LDsHk6DoFv3WRCrvSn7RI
	 6bLTd70Xi3i0w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rhdD1m7I_m1B; Wed,  6 Jul 2022 07:54:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 486FD60F97;
	Wed,  6 Jul 2022 07:54:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 486FD60F97
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 046551BF31A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jul 2022 07:54:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CFE6F403A7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jul 2022 07:54:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CFE6F403A7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aXk9hPB7hte8 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Jul 2022 07:54:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7357A400E2
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7357A400E2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jul 2022 07:54:52 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3890061DFA;
 Wed,  6 Jul 2022 07:54:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18C69C3411C;
 Wed,  6 Jul 2022 07:54:49 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: netdev@vger.kernel.org
Date: Wed,  6 Jul 2022 09:54:19 +0200
Message-Id: <d8e3744f060ee11d5069bfd0f581f02d0ecb5e08.1657093744.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1657094090;
 bh=ELRHvyXNJVImNM2lth4w2n4eIkbQRwt/oCHIWIRH2F0=;
 h=From:To:Cc:Subject:Date:From;
 b=Ovmjdjg/J+FeRWgkFNGcvru2B+5IzSto7Ma2M6Bi7Zgl0Jx5eS6kmwurjyjrOECfB
 6GY9fPUomDY9n8kRc5zKwk7JYGGezEbbLFbBzKEnnhmd84iLJ9JGtba4HB4HmjVfLU
 QHJYgwqkPUfCFKc4mT0woG4w8FQsi/QI2ro0IVKEgNmCujMFVCdHdW8lpCFAQ2Hbt0
 yE4x3rs1PIBSQ5cuMAMKxeS1UrjAQwKUXyJMb1NYxvNQqQCKy9W8xniFBGojfVAPJG
 MbSb7dHMlOumR2jgfQMSHSJdEYMkk4r2j3+mzpF/cJy9+AnuZghLtqhF2IJUPjDzKl
 ScrllAR/QZ5Ag==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Ovmjdjg/
Subject: [Intel-wired-lan] [PATCH net-next] igc: add xdp frags support to
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
