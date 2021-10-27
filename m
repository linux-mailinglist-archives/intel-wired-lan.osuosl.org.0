Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DA59243D1C7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Oct 2021 21:39:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6DA1B40501;
	Wed, 27 Oct 2021 19:39:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oYxlWgXe3bT5; Wed, 27 Oct 2021 19:39:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 711F6404F8;
	Wed, 27 Oct 2021 19:39:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 616F41BF333
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 19:38:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 58B1680CAA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 19:38:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WwKSLsKTSYqn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Oct 2021 19:38:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9032480BD4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 19:38:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="217424718"
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="217424718"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 12:38:54 -0700
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="573163395"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 12:38:54 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: anthony.l.nguyen@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Wed, 27 Oct 2021 12:38:36 -0700
Message-Id: <20211027193836.372561-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211023004128.86999-1-jesse.brandeburg@intel.com>
References: <20211023004128.86999-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 2/4] ice: use prefetch methods
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The kernel provides some prefetch mechanisms to speed up commonly
cold cache line accesses during receive processing. Since these are
software structures it helps to have these strategically placed
prefetches.

Be careful to call BQL prefetch complete only for non XDP queues.

Co-developed-by: Piotr Raczynski <piotr.raczynski@intel.com>
Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
Testing Hints:
Run AF_XDP socket and then terminate it or run xdp2
sample and send some traffic into the port.

Performance numbers for xdp2 sample are not noticeably
affected by introducing branch from this patch.
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 12a2edd13877..de9247d45c39 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -3,8 +3,9 @@
 
 /* The driver transmit and receive code */
 
-#include <linux/prefetch.h>
 #include <linux/mm.h>
+#include <linux/netdevice.h>
+#include <linux/prefetch.h>
 #include <linux/bpf_trace.h>
 #include <net/dsfield.h>
 #include <net/xdp.h>
@@ -219,6 +220,10 @@ static bool ice_clean_tx_irq(struct ice_tx_ring *tx_ring, int napi_budget)
 	struct ice_tx_desc *tx_desc;
 	struct ice_tx_buf *tx_buf;
 
+	/* get the bql data ready */
+	if (!ice_ring_is_xdp(tx_ring))
+		netdev_txq_bql_complete_prefetchw(txring_txq(tx_ring));
+
 	tx_buf = &tx_ring->tx_buf[i];
 	tx_desc = ICE_TX_DESC(tx_ring, i);
 	i -= tx_ring->count;
@@ -232,6 +237,9 @@ static bool ice_clean_tx_irq(struct ice_tx_ring *tx_ring, int napi_budget)
 		if (!eop_desc)
 			break;
 
+		/* follow the guidelines of other drivers */
+		prefetchw(&tx_buf->skb->users);
+
 		smp_rmb();	/* prevent any other reads prior to eop_desc */
 
 		ice_trace(clean_tx_irq, tx_ring, tx_desc, tx_buf);
@@ -2265,6 +2273,9 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct ice_tx_ring *tx_ring)
 		return NETDEV_TX_BUSY;
 	}
 
+	/* prefetch for bql data which is infrequently used */
+	netdev_txq_bql_enqueue_prefetchw(txring_txq(tx_ring));
+
 	offload.tx_ring = tx_ring;
 
 	/* record the location of the first descriptor for this packet */
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
