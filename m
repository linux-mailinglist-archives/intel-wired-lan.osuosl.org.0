Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C159047035E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Dec 2021 16:00:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6951D4121E;
	Fri, 10 Dec 2021 15:00:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cGo2v0a5wZVx; Fri, 10 Dec 2021 15:00:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1BFFA40245;
	Fri, 10 Dec 2021 15:00:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B99D61BF4DB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 15:00:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A64D261454
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 15:00:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uBsLxpO9e565 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Dec 2021 15:00:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E859061267
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 15:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639148401; x=1670684401;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NAjfLwKAA0aaJZjsmbyAproroBZGHTAecKgHYZ5lUrg=;
 b=Ihrprs0lXhKX9y+Wnx2+ssMxU/fm1Qt0Ffn6zxViKTj2+k+sPMhYN67E
 KfeJICrw+JwhGVvJc5Uhb1YpZUzTFeX9tQCrP2ngRZso2tJdOF/GAmkdK
 TtkwkGWRqv84G4TCm9iye+EAZEnJIh3EvegvLNierCfHBcb+xsc6/z/Dc
 /0HzdJ28qUp8AlhCrNTx6+SsYvTeA8LeRcEVVlG5mTQOzu+URRII5o1JV
 3Kdg5+URmZwyzkLPCqvYd6JGOU+nHOF83Dt8Pf0qB4AAeci5vhD0038r/
 KK1erjqhsTK8dLGK8pj3Zew0SxwkI3jXbVXk3HwvJ2Cb7S2zbq0K399Cr A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="238160371"
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="238160371"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 07:00:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="680763790"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga005.jf.intel.com with ESMTP; 10 Dec 2021 06:59:58 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 10 Dec 2021 15:59:41 +0100
Message-Id: <20211210145941.5865-6-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211210145941.5865-1-maciej.fijalkowski@intel.com>
References: <20211210145941.5865-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net 5/5] ice: xsk: fix cleaned_count
 setting
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
Cc: elza.mathew@intel.com, netdev@vger.kernel.org, kuba@kernel.org,
 bpf@vger.kernel.org, davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently cleaned_count is initialized to ICE_DESC_UNUSED(rx_ring) and
later on during the Rx processing it is incremented per each frame that
driver consumed. This can result in excessive buffers requested from xsk
pool based on that value.

To address this, just drop cleaned_count and pass
ICE_DESC_UNUSED(rx_ring) directly as a function argument to
ice_alloc_rx_bufs_zc(). Idea is to ask for buffers as many as consumed.

Let us also call ice_alloc_rx_bufs_zc unconditionally at the end of
ice_clean_rx_irq_zc. This has been changed in that way for corresponding
ice_clean_rx_irq, but not here.

Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.h | 1 -
 drivers/net/ethernet/intel/ice/ice_xsk.c  | 6 +-----
 2 files changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index c56dd1749903..b7b3bd4816f0 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -24,7 +24,6 @@
 #define ICE_MAX_DATA_PER_TXD_ALIGNED \
 	(~(ICE_MAX_READ_REQ_SIZE - 1) & ICE_MAX_DATA_PER_TXD)
 
-#define ICE_RX_BUF_WRITE	16	/* Must be power of 2 */
 #define ICE_MAX_TXQ_PER_TXQG	128
 
 /* Attempt to maximize the headroom available for incoming frames. We use a 2K
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 80f5a6194a49..925326c70701 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -504,7 +504,6 @@ ice_run_xdp_zc(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
 int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
 {
 	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
-	u16 cleaned_count = ICE_DESC_UNUSED(rx_ring);
 	struct ice_tx_ring *xdp_ring;
 	unsigned int xdp_xmit = 0;
 	struct bpf_prog *xdp_prog;
@@ -561,7 +560,6 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
 
 			total_rx_bytes += size;
 			total_rx_packets++;
-			cleaned_count++;
 
 			ice_bump_ntc(rx_ring);
 			continue;
@@ -574,7 +572,6 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
 			break;
 		}
 
-		cleaned_count++;
 		ice_bump_ntc(rx_ring);
 
 		if (eth_skb_pad(skb)) {
@@ -596,8 +593,7 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
 		ice_receive_skb(rx_ring, skb, vlan_tag);
 	}
 
-	if (cleaned_count >= ICE_RX_BUF_WRITE)
-		failure = !ice_alloc_rx_bufs_zc(rx_ring, cleaned_count);
+	failure = !ice_alloc_rx_bufs_zc(rx_ring, ICE_DESC_UNUSED(rx_ring));
 
 	ice_finalize_xdp_rx(xdp_ring, xdp_xmit);
 	ice_update_rx_ring_stats(rx_ring, total_rx_packets, total_rx_bytes);
-- 
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
