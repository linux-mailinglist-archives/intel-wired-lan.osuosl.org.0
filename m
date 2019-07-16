Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B3E6A73C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jul 2019 13:21:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2138D87657;
	Tue, 16 Jul 2019 11:21:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nbcmROGig5L0; Tue, 16 Jul 2019 11:21:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 16AD786BF9;
	Tue, 16 Jul 2019 11:21:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B96771BF82D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2019 11:21:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B61DE85FF3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2019 11:21:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9SZ-TnBudltq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jul 2019 11:21:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2270685BD5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2019 11:21:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jul 2019 04:21:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,498,1557212400"; d="scan'208";a="366631415"
Received: from silpixa00399838.ir.intel.com (HELO
 silpixa00399838.ger.corp.intel.com) ([10.237.223.10])
 by fmsmga006.fm.intel.com with ESMTP; 16 Jul 2019 04:21:49 -0700
From: Kevin Laatz <kevin.laatz@intel.com>
To: netdev@vger.kernel.org, ast@kernel.org, daniel@iogearbox.net,
 bjorn.topel@intel.com, magnus.karlsson@intel.com,
 jakub.kicinski@netronome.com, jonathan.lemon@gmail.com
Date: Tue, 16 Jul 2019 03:06:29 +0000
Message-Id: <20190716030637.5634-3-kevin.laatz@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190716030637.5634-1-kevin.laatz@intel.com>
References: <20190620090958.2135-1-kevin.laatz@intel.com>
 <20190716030637.5634-1-kevin.laatz@intel.com>
Subject: [Intel-wired-lan] [PATCH v2 02/10] ixgbe: simplify Rx buffer recycle
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
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
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
index 6b609553329f..bc86057628c8 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -201,8 +201,6 @@ ixgbe_rx_buffer *ixgbe_get_rx_buffer_zc(struct ixgbe_ring *rx_ring,
 static void ixgbe_reuse_rx_buffer_zc(struct ixgbe_ring *rx_ring,
 				     struct ixgbe_rx_buffer *obi)
 {
-	unsigned long mask = (unsigned long)rx_ring->xsk_umem->chunk_mask;
-	u64 hr = rx_ring->xsk_umem->headroom + XDP_PACKET_HEADROOM;
 	u16 nta = rx_ring->next_to_alloc;
 	struct ixgbe_rx_buffer *nbi;
 
@@ -212,14 +210,9 @@ static void ixgbe_reuse_rx_buffer_zc(struct ixgbe_ring *rx_ring,
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
