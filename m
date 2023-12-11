Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D58F080C9ED
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Dec 2023 13:33:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BE78D60E64;
	Mon, 11 Dec 2023 12:33:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE78D60E64
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702298019;
	bh=cR1sYmrRI0Vq5NEkjYQKXWOBEIM4SERAEJQHTj0rs58=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=5nP1f/cP8LnA3wrG+f9ri8lWNcdgEPNAsO9XPqVOG40gl8oPAndll0b1MbL1hfOZr
	 5Ppy0tRxzioOMou50Rqh7HhmB55OQRhl3YpQj8+vbS+JDm9LLnZ9fVs0GBWCkGOTxY
	 T2HUuyZLLH4JDn2CgKj7NsyKRJvS2Hu+0omB7SXThUW7mETXmt2Hj1gVUvx50wYdhz
	 k5bZilavWM+CvHTCAuno6PXXeo5lnafJdT7GEEwAWtOj0UAvGCNVIIQi51uGRrIL/B
	 EITfOPFXXyUHCJgFT2MkykQUUNHH6FEn51Fb2Tf8bslVnihsgAwts4BxU51iJyVphX
	 K1Gg3wqX8bXHA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8QWHocqe4RFE; Mon, 11 Dec 2023 12:33:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A07260BAC;
	Mon, 11 Dec 2023 12:33:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A07260BAC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B506B1BF48D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 12:33:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9857F4028D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 12:33:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9857F4028D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QBGYkhr2yxEg for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Dec 2023 12:33:32 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3EC09400BF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 12:33:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3EC09400BF
X-IronPort-AV: E=McAfee;i="6600,9927,10920"; a="391808851"
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; d="scan'208";a="391808851"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 04:33:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; d="scan'208";a="21069107"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa001.jf.intel.com with ESMTP; 11 Dec 2023 04:33:28 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 11 Dec 2023 13:31:44 +0100
Message-ID: <20231211123144.3759488-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702298012; x=1733834012;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LkVViNkwO7QQP+f8k/J3d57xIdGBSObZp2X787WTBXs=;
 b=TYXj+4C+Jpi3VQgLpIXZaNDNIB7MdPFZMCUf7dAFsu348U0n5eU+GBAw
 DULgEf9/KRE3EvBNo1YY9yZrWC4hMQQelw7qEmJqD9sOQiEXSxPnwL9x+
 +d5crMnOr+5sZo7R07r1NmL3YoufMb6my6XRUaPLmI/6Q70oLZPYSQ1GN
 33b9tZSQORtUzunJpBxWBiPCtXJ7NKiuA6WGvZl+LcbutrE3oT8UCkGEq
 d+txYVCFRtdlr65MBfra9+em1/ble3Zzjxl3FiGJqcOaD8jzVY5q4mY35
 skQ2bStaviDBOqfPWhn2DxFjaXOgGzYWAlGo1+0FqZFOvR1qrfMes8xOs
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TYXj+4C+
Subject: [Intel-wired-lan] [PATCH iwl-net v2] idpf: fix corrupted frames and
 skb leaks in singleq mode
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

idpf_ring::skb serves only for keeping an incomplete frame between
several NAPI Rx polling cycles, as one cycle may end up before
processing the end of packet descriptor. The pointer is taken from
the ring onto the stack before entering the loop and gets written
there after the loop exits. When inside the loop, only the onstack
pointer is used.
For some reason, the logics is broken in the singleq mode, where the
pointer is taken from the ring each iteration. This means that if a
frame got fragmented into several descriptors, each fragment will have
its own skb, but only the last one will be passed up the stack
(containing garbage), leaving the rest leaked.
Then, on ifdown, rxq::skb is being freed only in the splitq mode, while
it can point to a valid skb in singleq as well. This can lead to a yet
another skb leak.
Just don't touch the ring skb field inside the polling loop, letting
the onstack skb pointer work as expected: build a new skb if it's the
first frame descriptor and attach a frag otherwise. On ifdown, free
rxq::skb unconditionally if the pointer is non-NULL.

Fixes: a5ab9ee0df0b ("idpf: add singleq start_xmit and napi poll")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Reviewed-by: Eric Dumazet <edumazet@google.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
Tony, please add it to dev-queue instead of the first revision.

From v1[0]:
* fix the related skb leak on ifdown;
* fix subject prefix;
* pick Reviewed-bys.

[0] https://lore.kernel.org/all/20231201143821.1091005-1-aleksander.lobakin@intel.com
---
 drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c | 1 -
 drivers/net/ethernet/intel/idpf/idpf_txrx.c         | 2 +-
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index 81288a17da2a..20c4b3a64710 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -1044,7 +1044,6 @@ static int idpf_rx_singleq_clean(struct idpf_queue *rx_q, int budget)
 		}
 
 		idpf_rx_sync_for_cpu(rx_buf, fields.size);
-		skb = rx_q->skb;
 		if (skb)
 			idpf_rx_add_frag(rx_buf, skb, fields.size);
 		else
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 1f728a9004d9..9e942e5baf39 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -396,7 +396,7 @@ static void idpf_rx_desc_rel(struct idpf_queue *rxq, bool bufq, s32 q_model)
 	if (!rxq)
 		return;
 
-	if (!bufq && idpf_is_queue_model_split(q_model) && rxq->skb) {
+	if (rxq->skb) {
 		dev_kfree_skb_any(rxq->skb);
 		rxq->skb = NULL;
 	}
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
