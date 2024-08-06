Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 508ED94907D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Aug 2024 15:13:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CA28D40A43;
	Tue,  6 Aug 2024 13:13:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iNjTXmR8xKKN; Tue,  6 Aug 2024 13:13:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 082D440A6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722950015;
	bh=U5Si4PFO4cohtZglzS/YtCMjh4zi9WQoS4NbMVOCZIU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=i/ALimchs3kABvgGmOqzvUSrSRnLOLGNX390/hPzEeX+JMMgxsIAjm5KJAJVCHZu2
	 +FEZgz8Q9G9NHb8bli2rxKZQw3kn2ZO1b5MvP727HpkH7d6dZMrgsHTPIrzalM45Eu
	 rOWVJ2GmlD0Vz6fWAsHEob23ldSGvQnKp6BNsKdTltBStCCvgnJwYuQsms/N1oBDDI
	 ygHpTj8NuLWCAQit0160q+1Bh8xVngw4MtFvgJXMPqdyIfFqpmYoTuSiDrzRHjDvsb
	 RFeivr4IhJw+E2gN+WOstscvxKBps2hb84xMagXAbhS0/JvPxh/94FOP1TV7t0xiW3
	 /ZXqKB+67ZRYw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 082D440A6C;
	Tue,  6 Aug 2024 13:13:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4BE591BF300
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 13:13:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 37F4F403F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 13:13:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AaIiMgE4dohP for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Aug 2024 13:13:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 15716403B2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 15716403B2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 15716403B2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 13:13:30 +0000 (UTC)
X-CSE-ConnectionGUID: sFucVY7FTyy0qKLoGT+Z1Q==
X-CSE-MsgGUID: ziMK7bNKSt2t3Fy96Lf78A==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="20842136"
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="20842136"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 06:13:29 -0700
X-CSE-ConnectionGUID: 8b7wVvi6QBitGXj/3KZWHA==
X-CSE-MsgGUID: AfPCn/xoQkG2mtANgN/v3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="56475822"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa009.fm.intel.com with ESMTP; 06 Aug 2024 06:13:26 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  6 Aug 2024 15:12:38 +0200
Message-ID: <20240806131240.800259-8-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240806131240.800259-1-aleksander.lobakin@intel.com>
References: <20240806131240.800259-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722950010; x=1754486010;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tpJ6HRHvdzGj4qFRuoUwc+Xi1PWZVyJf4WSGrHJGRng=;
 b=muz36Tcdc50jrnuj6gQ6Ho4A9fo56EVbmZeh5D6ck1Omy6yeOReRVXYe
 Bpi8SOdHpIXt3537ZLVZslfmrBkIa55hAIaAehbdto3Ohbshj/WTylp1g
 x0mAa4UY+4c0eU6msDS1ZUHFqhYLc1T9rn9i/4HATpoYEDXoMLZoVJYd7
 aqZDXsYhy76+FecIBFnoD5/tiq0898O8QAJmDGO9asXIXPkz220whg7wh
 ge0EyKCGmAZNszG/hY4rpuRV0LPV2s4XgzK8MkmkjX880GD4n8lSnnDl2
 B7mKVz/mezcjr20G+yddWtptfbMKRiO/nfo5EPdUAo529RowD2fTxtY6+
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=muz36Tcd
Subject: [Intel-wired-lan] [PATCH iwl-next 7/9] idpf: fix netdev Tx queue
 stop/wake
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Joshua Hay <joshua.a.hay@intel.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Kubiak <michal.kubiak@intel.com>

netif_txq_maybe_stop() returns -1, 0, or 1, while
idpf_tx_maybe_stop_common() says it returns 0 or -EBUSY. As a result,
there sometimes are Tx queue timeout warnings despite that the queue
is empty or there is at least enough space to restart it.
Make idpf_tx_maybe_stop_common() inline and returning true or false,
handling the return of netif_txq_maybe_stop() properly. Use a correct
goto in idpf_tx_maybe_stop_splitq() to avoid stopping the queue or
incrementing the stops counter twice.

Fixes: 6818c4d5b3c2 ("idpf: add splitq start_xmit")
Fixes: a5ab9ee0df0b ("idpf: add singleq start_xmit and napi poll")
Cc: stable@vger.kernel.org # 6.7+
Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  9 ++++-
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  4 +++
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 35 +++++--------------
 3 files changed, 21 insertions(+), 27 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 2478f71adb95..df3574ac58c2 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -1020,7 +1020,6 @@ void idpf_tx_dma_map_error(struct idpf_tx_queue *txq, struct sk_buff *skb,
 			   struct idpf_tx_buf *first, u16 ring_idx);
 unsigned int idpf_tx_desc_count_required(struct idpf_tx_queue *txq,
 					 struct sk_buff *skb);
-int idpf_tx_maybe_stop_common(struct idpf_tx_queue *tx_q, unsigned int size);
 void idpf_tx_timeout(struct net_device *netdev, unsigned int txqueue);
 netdev_tx_t idpf_tx_singleq_frame(struct sk_buff *skb,
 				  struct idpf_tx_queue *tx_q);
@@ -1029,4 +1028,12 @@ bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_rx_queue *rxq,
 				      u16 cleaned_count);
 int idpf_tso(struct sk_buff *skb, struct idpf_tx_offload_params *off);
 
+static inline bool idpf_tx_maybe_stop_common(struct idpf_tx_queue *tx_q,
+					     u32 needed)
+{
+	return !netif_subqueue_maybe_stop(tx_q->netdev, tx_q->idx,
+					  IDPF_DESC_UNUSED(tx_q),
+					  needed, needed);
+}
+
 #endif /* !_IDPF_TXRX_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index 947d3ff9677c..5ba360abbe66 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -375,6 +375,10 @@ netdev_tx_t idpf_tx_singleq_frame(struct sk_buff *skb,
 				      IDPF_TX_DESCS_FOR_CTX)) {
 		idpf_tx_buf_hw_update(tx_q, tx_q->next_to_use, false);
 
+		u64_stats_update_begin(&tx_q->stats_sync);
+		u64_stats_inc(&tx_q->q_stats.q_busy);
+		u64_stats_update_end(&tx_q->stats_sync);
+
 		return NETDEV_TX_BUSY;
 	}
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index fd44a65a0537..26ef064972d4 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -2127,29 +2127,6 @@ void idpf_tx_splitq_build_flow_desc(union idpf_tx_flex_desc *desc,
 	desc->flow.qw1.compl_tag = cpu_to_le16(params->compl_tag);
 }
 
-/**
- * idpf_tx_maybe_stop_common - 1st level check for common Tx stop conditions
- * @tx_q: the queue to be checked
- * @size: number of descriptors we want to assure is available
- *
- * Returns 0 if stop is not needed
- */
-int idpf_tx_maybe_stop_common(struct idpf_tx_queue *tx_q, unsigned int size)
-{
-	struct netdev_queue *nq;
-
-	if (likely(IDPF_DESC_UNUSED(tx_q) >= size))
-		return 0;
-
-	u64_stats_update_begin(&tx_q->stats_sync);
-	u64_stats_inc(&tx_q->q_stats.q_busy);
-	u64_stats_update_end(&tx_q->stats_sync);
-
-	nq = netdev_get_tx_queue(tx_q->netdev, tx_q->idx);
-
-	return netif_txq_maybe_stop(nq, IDPF_DESC_UNUSED(tx_q), size, size);
-}
-
 /**
  * idpf_tx_maybe_stop_splitq - 1st level check for Tx splitq stop conditions
  * @tx_q: the queue to be checked
@@ -2161,7 +2138,7 @@ static int idpf_tx_maybe_stop_splitq(struct idpf_tx_queue *tx_q,
 				     unsigned int descs_needed)
 {
 	if (idpf_tx_maybe_stop_common(tx_q, descs_needed))
-		goto splitq_stop;
+		goto out;
 
 	/* If there are too many outstanding completions expected on the
 	 * completion queue, stop the TX queue to give the device some time to
@@ -2180,10 +2157,12 @@ static int idpf_tx_maybe_stop_splitq(struct idpf_tx_queue *tx_q,
 	return 0;
 
 splitq_stop:
+	netif_stop_subqueue(tx_q->netdev, tx_q->idx);
+
+out:
 	u64_stats_update_begin(&tx_q->stats_sync);
 	u64_stats_inc(&tx_q->q_stats.q_busy);
 	u64_stats_update_end(&tx_q->stats_sync);
-	netif_stop_subqueue(tx_q->netdev, tx_q->idx);
 
 	return -EBUSY;
 }
@@ -2206,7 +2185,11 @@ void idpf_tx_buf_hw_update(struct idpf_tx_queue *tx_q, u32 val,
 	nq = netdev_get_tx_queue(tx_q->netdev, tx_q->idx);
 	tx_q->next_to_use = val;
 
-	idpf_tx_maybe_stop_common(tx_q, IDPF_TX_DESC_NEEDED);
+	if (idpf_tx_maybe_stop_common(tx_q, IDPF_TX_DESC_NEEDED)) {
+		u64_stats_update_begin(&tx_q->stats_sync);
+		u64_stats_inc(&tx_q->q_stats.q_busy);
+		u64_stats_update_end(&tx_q->stats_sync);
+	}
 
 	/* Force memory writes to complete before letting h/w
 	 * know there are new descriptors to fetch.  (Only
-- 
2.45.2

