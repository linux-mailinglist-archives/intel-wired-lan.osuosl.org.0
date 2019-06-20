Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE6D4DD84
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2019 00:52:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2A5732214F;
	Thu, 20 Jun 2019 22:52:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wv1HEIEsUOJs; Thu, 20 Jun 2019 22:52:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7E1BB203E4;
	Thu, 20 Jun 2019 22:52:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3BD081BF38A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 17:24:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 37CF087E1D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 17:24:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1e5dLp+ikqX7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2019 17:24:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F34BE87E19
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 17:24:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 10:24:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,397,1557212400"; d="scan'208";a="359020352"
Received: from silpixa00399838.ir.intel.com (HELO
 silpixa00399838.ger.corp.intel.com) ([10.237.223.110])
 by fmsmga006.fm.intel.com with ESMTP; 20 Jun 2019 10:24:43 -0700
From: Kevin Laatz <kevin.laatz@intel.com>
To: netdev@vger.kernel.org, ast@kernel.org, daniel@iogearbox.net,
 bjorn.topel@intel.com, magnus.karlsson@intel.com
Date: Thu, 20 Jun 2019 09:09:52 +0000
Message-Id: <20190620090958.2135-6-kevin.laatz@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190620090958.2135-1-kevin.laatz@intel.com>
References: <20190620090958.2135-1-kevin.laatz@intel.com>
X-Mailman-Approved-At: Thu, 20 Jun 2019 22:52:28 +0000
Subject: [Intel-wired-lan] [PATCH 05/11] ixgbe: add offset to zca_free
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
Cc: bruce.richardson@intel.com, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, ciara.loftus@intel.com,
 Kevin Laatz <kevin.laatz@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch adds the offset param to for zero_copy_allocator to
ixgbe_zca_free. This change is required to calculate the handle, otherwise,
this function will not work in unaligned chunk mode since we can't easily mask
back to the original handle in unaligned chunk mode.

Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h | 3 ++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c         | 8 ++++----
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h
index d93a690aff74..49702e2a4360 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h
@@ -33,7 +33,8 @@ struct xdp_umem *ixgbe_xsk_umem(struct ixgbe_adapter *adapter,
 int ixgbe_xsk_umem_setup(struct ixgbe_adapter *adapter, struct xdp_umem *umem,
 			 u16 qid);
 
-void ixgbe_zca_free(struct zero_copy_allocator *alloc, unsigned long handle);
+void ixgbe_zca_free(struct zero_copy_allocator *alloc, unsigned long handle,
+		off_t off);
 
 void ixgbe_alloc_rx_buffers_zc(struct ixgbe_ring *rx_ring, u16 cleaned_count);
 int ixgbe_clean_rx_irq_zc(struct ixgbe_q_vector *q_vector,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
index 49536adafe8e..1ec02077ccb2 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -268,16 +268,16 @@ static void ixgbe_reuse_rx_buffer_zc(struct ixgbe_ring *rx_ring,
 	obi->skb = NULL;
 }
 
-void ixgbe_zca_free(struct zero_copy_allocator *alloc, unsigned long handle)
+void ixgbe_zca_free(struct zero_copy_allocator *alloc, unsigned long handle,
+		off_t off)
 {
 	struct ixgbe_rx_buffer *bi;
 	struct ixgbe_ring *rx_ring;
-	u64 hr, mask;
+	u64 hr;
 	u16 nta;
 
 	rx_ring = container_of(alloc, struct ixgbe_ring, zca);
 	hr = rx_ring->xsk_umem->headroom + XDP_PACKET_HEADROOM;
-	mask = rx_ring->xsk_umem->chunk_mask;
 
 	nta = rx_ring->next_to_alloc;
 	bi = rx_ring->rx_buffer_info;
@@ -285,7 +285,7 @@ void ixgbe_zca_free(struct zero_copy_allocator *alloc, unsigned long handle)
 	nta++;
 	rx_ring->next_to_alloc = (nta < rx_ring->count) ? nta : 0;
 
-	handle &= mask;
+	handle -= off;
 
 	bi->dma = xdp_umem_get_dma(rx_ring->xsk_umem, handle);
 	bi->dma += hr;
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
