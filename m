Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B5A4DD79
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2019 00:52:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 43AAC8612E;
	Thu, 20 Jun 2019 22:52:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ucM0D4f8Ijc5; Thu, 20 Jun 2019 22:52:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 06BFE86055;
	Thu, 20 Jun 2019 22:52:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9769B1BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 16:53:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9275620770
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 16:53:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S9JI9fDOu9yh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2019 16:53:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id E8AEF20389
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 16:53:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 09:53:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,397,1557212400"; d="scan'208";a="183135135"
Received: from silpixa00399838.ir.intel.com (HELO
 silpixa00399838.ger.corp.intel.com) ([10.237.223.110])
 by fmsmga004.fm.intel.com with ESMTP; 20 Jun 2019 09:53:52 -0700
From: Kevin Laatz <kevin.laatz@intel.com>
To: netdev@vger.kernel.org, ast@kernel.org, daniel@iogearbox.net,
 bjorn.topel@intel.com, magnus.karlsson@intel.com
Date: Thu, 20 Jun 2019 08:39:17 +0000
Message-Id: <20190620083924.1996-5-kevin.laatz@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190620083924.1996-1-kevin.laatz@intel.com>
References: <20190620083924.1996-1-kevin.laatz@intel.com>
X-Mailman-Approved-At: Thu, 20 Jun 2019 22:52:28 +0000
Subject: [Intel-wired-lan] [PATCH 04/11] i40e: add offset to zca_free
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
Cc: bruce.richardson@intel.com, ciara.loftus@intel.com,
 Kevin Laatz <kevin.laatz@intel.com>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch adds the offset param to for zero_copy_allocator to
i40e_zca_free. This change is required to calculate the handle, otherwise,
this function will not work in unaligned chunk mode since we can't easily mask
back to the original handle in unaligned chunk mode.

Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_xsk.c | 8 ++++----
 drivers/net/ethernet/intel/i40e/i40e_xsk.h | 3 ++-
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index c89e692e8663..8c281f356293 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -438,16 +438,16 @@ static void i40e_reuse_rx_buffer_zc(struct i40e_ring *rx_ring,
  * @alloc: Zero-copy allocator
  * @handle: Buffer handle
  **/
-void i40e_zca_free(struct zero_copy_allocator *alloc, unsigned long handle)
+void i40e_zca_free(struct zero_copy_allocator *alloc, unsigned long handle,
+		off_t off)
 {
 	struct i40e_rx_buffer *bi;
 	struct i40e_ring *rx_ring;
-	u64 hr, mask;
+	u64 hr;
 	u16 nta;
 
 	rx_ring = container_of(alloc, struct i40e_ring, zca);
 	hr = rx_ring->xsk_umem->headroom + XDP_PACKET_HEADROOM;
-	mask = rx_ring->xsk_umem->chunk_mask;
 
 	nta = rx_ring->next_to_alloc;
 	bi = &rx_ring->rx_bi[nta];
@@ -455,7 +455,7 @@ void i40e_zca_free(struct zero_copy_allocator *alloc, unsigned long handle)
 	nta++;
 	rx_ring->next_to_alloc = (nta < rx_ring->count) ? nta : 0;
 
-	handle &= mask;
+	handle -= off;
 
 	bi->dma = xdp_umem_get_dma(rx_ring->xsk_umem, handle);
 	bi->dma += hr;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.h b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
index 8cc0a2e7d9a2..85691dc9ac42 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
@@ -12,7 +12,8 @@ int i40e_queue_pair_disable(struct i40e_vsi *vsi, int queue_pair);
 int i40e_queue_pair_enable(struct i40e_vsi *vsi, int queue_pair);
 int i40e_xsk_umem_setup(struct i40e_vsi *vsi, struct xdp_umem *umem,
 			u16 qid);
-void i40e_zca_free(struct zero_copy_allocator *alloc, unsigned long handle);
+void i40e_zca_free(struct zero_copy_allocator *alloc, unsigned long handle,
+		off_t off);
 bool i40e_alloc_rx_buffers_zc(struct i40e_ring *rx_ring, u16 cleaned_count);
 int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget);
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
