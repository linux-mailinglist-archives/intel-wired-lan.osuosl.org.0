Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C67CF1A3670
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Apr 2020 17:00:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 10569878E3;
	Thu,  9 Apr 2020 15:00:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mEQOpEkwXxCb; Thu,  9 Apr 2020 15:00:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D28C487A8E;
	Thu,  9 Apr 2020 15:00:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8C9991BF9AF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2020 11:53:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 85F818594B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2020 11:53:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9cgWMyLFYCli for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2020 11:53:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 96EDC866B3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2020 11:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586346780;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BcJO2PQZQoTdxh1ktsCU9M3+07NWPu/ha/1VIUeextI=;
 b=FAStVQLcMzJa3GOlkPljfuVw04iGCA8epbTSIeDuMHpbLkf5HVE31/pMBtfz0vy0YDcC1n
 reKyJ3x1GOI2yoKSvMX4Ihm6p2xXAD6KezOH2afjGSfgxGAFvsQKqAIZY6SGUOULt4tL/5
 zzTo2mHV+CcIw6O4130c5txat589BmE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-40-fWTj1sQ-Mnmm7YMTHvjhIQ-1; Wed, 08 Apr 2020 07:52:55 -0400
X-MC-Unique: fWTj1sQ-Mnmm7YMTHvjhIQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EEAB119067E1;
 Wed,  8 Apr 2020 11:52:52 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.40.208.40])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6225E99E03;
 Wed,  8 Apr 2020 11:52:47 +0000 (UTC)
Received: from [192.168.42.3] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 7F9EA300020FA;
 Wed,  8 Apr 2020 13:52:46 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: sameehj@amazon.com
Date: Wed, 08 Apr 2020 13:52:46 +0200
Message-ID: <158634676645.707275.7536684877295305696.stgit@firesoul>
In-Reply-To: <158634658714.707275.7903484085370879864.stgit@firesoul>
References: <158634658714.707275.7903484085370879864.stgit@firesoul>
User-Agent: StGit/0.19
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mailman-Approved-At: Thu, 09 Apr 2020 15:00:49 +0000
Subject: [Intel-wired-lan] [PATCH RFC v2 26/33] i40e: add XDP frame size to
 driver
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
 David Ahern <dsahern@gmail.com>, zorik@amazon.com,
 Lorenzo Bianconi <lorenzo@kernel.org>, netdev@vger.kernel.org,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 gtzalik@amazon.com, Saeed Mahameed <saeedm@mellanox.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 intel-wired-lan@lists.osuosl.org, Jesper Dangaard Brouer <brouer@redhat.com>,
 bpf@vger.kernel.org, Daniel Borkmann <borkmann@iogearbox.net>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>, akiyano@amazon.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This driver uses different memory models depending on PAGE_SIZE at
compile time. For PAGE_SIZE 4K it uses page splitting, meaning for
normal MTU frame size is 2048 bytes (and headroom 192 bytes). For
larger MTUs the driver still use page splitting, by allocating
order-1 pages (8192 bytes) for RX frames. For PAGE_SIZE larger than
4K, driver instead advance its rx_buffer->page_offset with the frame
size "truesize".

For XDP frame size calculations, this mean that in PAGE_SIZE larger
than 4K mode the frame_sz change on a per packet basis. For the page
split 4K PAGE_SIZE mode, xdp.frame_sz is more constant and can be
updated once outside the main NAPI loop.

The default setting in the driver uses build_skb(), which provides
the necessary headroom and tailroom for XDP-redirect in RX-frame
(in both modes).

There is one complication, which is legacy-rx mode (configurable via
ethtool priv-flags). There are zero headroom in this mode, which is a
requirement for XDP-redirect to work. The conversion to xdp_frame
(convert_to_xdp_frame) will detect this insufficient space, and
xdp_do_redirect() call will fail. This is deemed acceptable, as it
allows other XDP actions to still work in legacy-mode. In
legacy-mode + larger PAGE_SIZE due to lacking tailroom, we also
accept that xdp_adjust_tail shrink doesn't work.

Cc: intel-wired-lan@lists.osuosl.org
Cc: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Cc: Alexander Duyck <alexander.duyck@gmail.com>
Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c |   31 +++++++++++++++++++++++----
 1 file changed, 26 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index b8496037ef7f..1fb6b1004dcb 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -1507,6 +1507,23 @@ static inline unsigned int i40e_rx_offset(struct i40e_ring *rx_ring)
 	return ring_uses_build_skb(rx_ring) ? I40E_SKB_PAD : 0;
 }
 
+static inline unsigned int i40e_rx_frame_truesize(struct i40e_ring *rx_ring,
+						  unsigned int size)
+{
+	unsigned int truesize;
+
+#if (PAGE_SIZE < 8192)
+	truesize = i40e_rx_pg_size(rx_ring) / 2; /* Must be power-of-2 */
+#else
+	truesize = i40e_rx_offset(rx_ring) ?
+		SKB_DATA_ALIGN(size + i40e_rx_offset(rx_ring)) +
+		SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) :
+		SKB_DATA_ALIGN(size);
+#endif
+	return truesize;
+}
+
+
 /**
  * i40e_alloc_mapped_page - recycle or make a new page
  * @rx_ring: ring to use
@@ -2246,13 +2263,11 @@ static void i40e_rx_buffer_flip(struct i40e_ring *rx_ring,
 				struct i40e_rx_buffer *rx_buffer,
 				unsigned int size)
 {
-#if (PAGE_SIZE < 8192)
-	unsigned int truesize = i40e_rx_pg_size(rx_ring) / 2;
+	unsigned int truesize = i40e_rx_frame_truesize(rx_ring, size);
 
+#if (PAGE_SIZE < 8192)
 	rx_buffer->page_offset ^= truesize;
 #else
-	unsigned int truesize = SKB_DATA_ALIGN(i40e_rx_offset(rx_ring) + size);
-
 	rx_buffer->page_offset += truesize;
 #endif
 }
@@ -2335,6 +2350,9 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget)
 	bool failure = false;
 	struct xdp_buff xdp;
 
+#if (PAGE_SIZE < 8192)
+	xdp.frame_sz = i40e_rx_frame_truesize(rx_ring, 0);
+#endif
 	xdp.rxq = &rx_ring->xdp_rxq;
 
 	while (likely(total_rx_packets < (unsigned int)budget)) {
@@ -2389,7 +2407,10 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget)
 			xdp.data_hard_start = xdp.data -
 					      i40e_rx_offset(rx_ring);
 			xdp.data_end = xdp.data + size;
-
+#if (PAGE_SIZE > 4096)
+			/* At larger PAGE_SIZE, frame_sz depend on len size */
+			xdp.frame_sz = i40e_rx_frame_truesize(rx_ring, size);
+#endif
 			skb = i40e_run_xdp(rx_ring, &xdp);
 		}
 


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
