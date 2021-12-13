Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 43ADB47308B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Dec 2021 16:31:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DFA2485245;
	Mon, 13 Dec 2021 15:31:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x6Rw5Q2GZR70; Mon, 13 Dec 2021 15:31:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D625985265;
	Mon, 13 Dec 2021 15:31:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4D5A91BF371
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 15:31:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4971A6F482
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 15:31:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e7ROKw4Wdx5L for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Dec 2021 15:31:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B55CB6F47C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 15:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639409495; x=1670945495;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rfq5psmoi374dmziTJT7+nktFd6U4UtrIwbRZTJRL70=;
 b=RcByMco7Fq6PikLL+IiW/pqAkCloQVSwQRmffVhD5NENr1y+Z9uM6G/+
 xWlO/6b37A3lT/HasMS6CxqcDI0gYWyb3rx0c9SKqNRgkhDNrcrC67IgX
 mgyiwaqdf53PR4LIcAO9Wj48i5RMH1GZxGcotZQOszxppdmVEh9WA2LPk
 IYnLDStAjKxozrKW7KkQkz2Utckgiz1rybZrE/W6berO+GulaR+uorV0C
 eovlHHdp2+lmqSDHc+MBf6/wqT9FcunHMbzwdwaSGtVfdxt8JGCM9VU60
 BIETz+IxFrshaZ2Dw8qDAzc/RaNyHY03+YVNNnFIbEl6qDGDD5zIOqSyL A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10196"; a="236286870"
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="236286870"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 07:31:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="613864772"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga004.jf.intel.com with ESMTP; 13 Dec 2021 07:31:33 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Dec 2021 16:31:10 +0100
Message-Id: <20211213153111.110877-6-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211213153111.110877-1-maciej.fijalkowski@intel.com>
References: <20211213153111.110877-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 intel-net 5/6] ice: xsk: allow empty Rx
 descriptors on XSK ZC data path
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

Commit ac6f733a7bd5 ("ice: allow empty Rx descriptors") stated that ice
HW can produce empty descriptors that are valid and they should be
processed.

Add this support to xsk ZC path to avoid potential processing problems.

Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index ffa9a160766a..c1491dc0675d 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -538,12 +538,18 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
 		 */
 		dma_rmb();
 
+		xdp = *ice_xdp_buf(rx_ring, rx_ring->next_to_clean);
+
 		size = le16_to_cpu(rx_desc->wb.pkt_len) &
 				   ICE_RX_FLX_DESC_PKT_LEN_M;
-		if (!size)
-			break;
+		if (!size) {
+			xdp->data = NULL;
+			xdp->data_end = NULL;
+			xdp->data_hard_start = NULL;
+			xdp->data_meta = NULL;
+			goto construct_skb;
+		}
 
-		xdp = *ice_xdp_buf(rx_ring, rx_ring->next_to_clean);
 		xsk_buff_set_size(xdp, size);
 		xsk_buff_dma_sync_for_cpu(xdp, rx_ring->xsk_pool);
 
@@ -561,7 +567,7 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
 			ice_bump_ntc(rx_ring);
 			continue;
 		}
-
+construct_skb:
 		/* XDP_PASS path */
 		skb = ice_construct_skb_zc(rx_ring, xdp);
 		if (!skb) {
-- 
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
