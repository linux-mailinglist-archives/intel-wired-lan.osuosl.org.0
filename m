Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D460C4DD87
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2019 00:52:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8B79522193;
	Thu, 20 Jun 2019 22:52:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vo0nSNjZnVFS; Thu, 20 Jun 2019 22:52:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 60EF6220A9;
	Thu, 20 Jun 2019 22:52:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6B3101BF38A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 17:24:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6816E87E30
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 17:24:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XJALXB+T3MiZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2019 17:24:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1711387E19
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 17:24:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 10:24:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,397,1557212400"; d="scan'208";a="359020325"
Received: from silpixa00399838.ir.intel.com (HELO
 silpixa00399838.ger.corp.intel.com) ([10.237.223.110])
 by fmsmga006.fm.intel.com with ESMTP; 20 Jun 2019 10:24:36 -0700
From: Kevin Laatz <kevin.laatz@intel.com>
To: netdev@vger.kernel.org, ast@kernel.org, daniel@iogearbox.net,
 bjorn.topel@intel.com, magnus.karlsson@intel.com
Date: Thu, 20 Jun 2019 09:09:49 +0000
Message-Id: <20190620090958.2135-3-kevin.laatz@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190620090958.2135-1-kevin.laatz@intel.com>
References: <20190620090958.2135-1-kevin.laatz@intel.com>
X-Mailman-Approved-At: Thu, 20 Jun 2019 22:52:28 +0000
Subject: [Intel-wired-lan] [PATCH 02/11] ixgbe: simplify Rx buffer recycle
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

Currently, the dma, addr and handle are modified when we reuse Rx buffers
in zero-copy mode. However, this is not required as the inputs to the
function are copies, not the original values themselves. As we use the
copies within the function, we can use the original 'obi' values
directly without having to mask and add the headroom.

Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
index bfe95ce0bd7f..49536adafe8e 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -251,8 +251,6 @@ ixgbe_rx_buffer *ixgbe_get_rx_buffer_zc(struct ixgbe_ring *rx_ring,
 static void ixgbe_reuse_rx_buffer_zc(struct ixgbe_ring *rx_ring,
 				     struct ixgbe_rx_buffer *obi)
 {
-	unsigned long mask = (unsigned long)rx_ring->xsk_umem->chunk_mask;
-	u64 hr = rx_ring->xsk_umem->headroom + XDP_PACKET_HEADROOM;
 	u16 nta = rx_ring->next_to_alloc;
 	struct ixgbe_rx_buffer *nbi;
 
@@ -262,14 +260,9 @@ static void ixgbe_reuse_rx_buffer_zc(struct ixgbe_ring *rx_ring,
 	rx_ring->next_to_alloc = (nta < rx_ring->count) ? nta : 0;
 
 	/* transfer page from old buffer to new buffer */
-	nbi->dma = obi->dma & mask;
-	nbi->dma += hr;
-
-	nbi->addr = (void *)((unsigned long)obi->addr & mask);
-	nbi->addr += hr;
-
-	nbi->handle = obi->handle & mask;
-	nbi->handle += rx_ring->xsk_umem->headroom;
+	nbi->dma = obi->dma;
+	nbi->addr = obi->addr;
+	nbi->handle = obi->handle;
 
 	obi->addr = NULL;
 	obi->skb = NULL;
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
