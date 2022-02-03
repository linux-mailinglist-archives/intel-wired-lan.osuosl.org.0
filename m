Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F12624A83A8
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Feb 2022 13:17:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6172041687;
	Thu,  3 Feb 2022 12:17:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MQRDv-_iHqjm; Thu,  3 Feb 2022 12:17:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5CD114166B;
	Thu,  3 Feb 2022 12:17:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E898F1BF3B9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 12:16:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CB8DF60FF3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 12:16:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ern0BisRLKm4 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Feb 2022 12:16:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0A37E60FF1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 12:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643890619; x=1675426619;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mTxtmM7PxDYabUdQxaPGX7R+O/XvKUxedI0be3fyatI=;
 b=OToAS340iSzT+dVu85WjEXF0o46uz1NdC2uoB0tIEtFEf5pjBK5zaJaT
 HzrqD692VKa8y79BEnRdQPr4b1nx0z6fP84NBTna1Qqk/Ra0+lQy87Prp
 vti0NkkiO3y2blCH8nqrDnDC7kZZNX6Z7yIcZqRcCpaz0t0EBZbVQ9b/X
 UmgW4obSuQIL7HSLCfQU/ztl1h7lubI3dSTzdtXtxHVZ+pUntJorF9XAy
 bRP8LDfWyRG0wXxyUdBSAv2SUwbTblgISX4gN8Mg3iWxm5v4nWWZnTW0j
 X7+ILGXcenm5Y6Ls3Z38z3EnNgvigvV0R9HOKYe6GsFqvw0csECiwXsiX Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="308858810"
X-IronPort-AV: E=Sophos;i="5.88,339,1635231600"; d="scan'208";a="308858810"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 04:16:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,339,1635231600"; d="scan'208";a="631322307"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga004.jf.intel.com with ESMTP; 03 Feb 2022 04:16:55 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  3 Feb 2022 13:16:51 +0100
Message-Id: <20220203121651.18937-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 intel-net] ice: avoid XDP checks in
 ice_clean_tx_irq()
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
Cc: netdev@vger.kernel.org, kuba@kernel.org, bpf@vger.kernel.org,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit 9610bd988df9 ("ice: optimize XDP_TX workloads") introduced Tx IRQ
cleaning routine dedicated for XDP rings. Currently it is impossible to
call ice_clean_tx_irq() against XDP ring, so it is safe to drop
ice_ring_is_xdp() calls in there.

Fixes: 1c96c16858ba ("ice: update to newer kernel API")
Fixes: cc14db11c8a4 ("ice: use prefetch methods")
Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---

v2: fix commit msg and collect ack (Alex)

 drivers/net/ethernet/intel/ice/ice_txrx.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 7d8824b4c8ff..25a5a3f2d107 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -223,8 +223,7 @@ static bool ice_clean_tx_irq(struct ice_tx_ring *tx_ring, int napi_budget)
 	struct ice_tx_buf *tx_buf;
 
 	/* get the bql data ready */
-	if (!ice_ring_is_xdp(tx_ring))
-		netdev_txq_bql_complete_prefetchw(txring_txq(tx_ring));
+	netdev_txq_bql_complete_prefetchw(txring_txq(tx_ring));
 
 	tx_buf = &tx_ring->tx_buf[i];
 	tx_desc = ICE_TX_DESC(tx_ring, i);
@@ -313,10 +312,6 @@ static bool ice_clean_tx_irq(struct ice_tx_ring *tx_ring, int napi_budget)
 	tx_ring->next_to_clean = i;
 
 	ice_update_tx_ring_stats(tx_ring, total_pkts, total_bytes);
-
-	if (ice_ring_is_xdp(tx_ring))
-		return !!budget;
-
 	netdev_tx_completed_queue(txring_txq(tx_ring), total_pkts, total_bytes);
 
 #define TX_WAKE_THRESHOLD ((s16)(DESC_NEEDED * 2))
-- 
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
