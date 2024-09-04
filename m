Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 486F496C2EE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 17:51:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E2FF608C4;
	Wed,  4 Sep 2024 15:51:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TW_QGLpdYfg8; Wed,  4 Sep 2024 15:51:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 32D06608B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725465099;
	bh=oSyY27Lp507SKDq3P5usR3xoImymaWC2D+0MZCcJwVE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uldorZaHwjFCMLSCiVvkrkh5vNkPzuWde/dGhWtEzlT/TdZ+nMe50YtNuCYfKwNzH
	 CeAdDV8PJJAxQlimxRC6oj0BWnohBSeZWmJNHPwcOje59ugqvrT11ZTbFdfliDjHUW
	 74ZNM52CpSRJaLxg+0Irdpi09fNm2GkD6OSGL2Lf4cmmwolCqdDHgz0e13GSn0WorM
	 FYJeQDS/tBFAEwCsH81ORE44x/yKm47gaJ/sF7qPoVu9Q4tRawCucEB8Odozy1mV0O
	 NyWyslOUqlRutibkc9n/p2L6wOggcDTQY10IACz51Ij9SoPgv3nz4GY/+2FV7Z4sfN
	 eLG5r8OE7bm2Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32D06608B7;
	Wed,  4 Sep 2024 15:51:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CB27D1BF40B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 15:51:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B186A608B4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 15:51:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kgLq9deQM0SI for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 15:51:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A397A608AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A397A608AE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A397A608AE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 15:51:36 +0000 (UTC)
X-CSE-ConnectionGUID: UpO5ickiSGaig5HFur+rcw==
X-CSE-MsgGUID: WNLBAjc4Q2irtlkzzKb34A==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="34737166"
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="34737166"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 08:51:36 -0700
X-CSE-ConnectionGUID: JMT4w5N0Rpqri3o6nBks+Q==
X-CSE-MsgGUID: t8HBK54VSYCpBYPAGzw2lA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="66041898"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa008.jf.intel.com with ESMTP; 04 Sep 2024 08:51:33 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  4 Sep 2024 17:47:47 +0200
Message-ID: <20240904154748.2114199-6-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240904154748.2114199-1-aleksander.lobakin@intel.com>
References: <20240904154748.2114199-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725465096; x=1757001096;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I7IXuGxMRYR7eY6NBf+1xNpvg8CKYVVrl2sOjIQby4A=;
 b=fNEMVSXQXAf+aN3866KHEhcl6K5iYf4mhcJO10pgkJccnzcaSuGP9yX1
 5VC72c4bY0fFnA64lztONVaOybJA3+HqFZxzRAuB3BUNYB5emG//fihaG
 DFLegz5pUSFd5Sq1DnjJbYQJ3hj5RkF5aaFqTw8jLpKn340mQk6zAzowD
 m/S59jtCKyupTgLtCJiqOLtkE6/h7Nn5drcZwj/6T+A18gXwBtlxJTW7X
 WvrwBsaATgmIVfNKOgEEV4Kub/jLwRR7deCGjw3FQ1uBp41SOtnhDAau3
 SlBL5XAQU2f1mG2c8ga8b9cOKyFj/5ypSj+fG6Wpb/1mSX0gnpDKBRCx2
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fNEMVSXQ
Subject: [Intel-wired-lan] [PATCH iwl-next v2 5/6] idpf: fix netdev Tx queue
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
index 3a2a92e79e60..33305de06975 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -1018,7 +1018,6 @@ void idpf_tx_dma_map_error(struct idpf_tx_queue *txq, struct sk_buff *skb,
 			   struct idpf_tx_buf *first, u16 ring_idx);
 unsigned int idpf_tx_desc_count_required(struct idpf_tx_queue *txq,
 					 struct sk_buff *skb);
-int idpf_tx_maybe_stop_common(struct idpf_tx_queue *tx_q, unsigned int size);
 void idpf_tx_timeout(struct net_device *netdev, unsigned int txqueue);
 netdev_tx_t idpf_tx_singleq_frame(struct sk_buff *skb,
 				  struct idpf_tx_queue *tx_q);
@@ -1027,4 +1026,12 @@ bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_rx_queue *rxq,
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
index a7f7efc61caf..05555303e097 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -2131,29 +2131,6 @@ void idpf_tx_splitq_build_flow_desc(union idpf_tx_flex_desc *desc,
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
@@ -2165,7 +2142,7 @@ static int idpf_tx_maybe_stop_splitq(struct idpf_tx_queue *tx_q,
 				     unsigned int descs_needed)
 {
 	if (idpf_tx_maybe_stop_common(tx_q, descs_needed))
-		goto splitq_stop;
+		goto out;
 
 	/* If there are too many outstanding completions expected on the
 	 * completion queue, stop the TX queue to give the device some time to
@@ -2184,10 +2161,12 @@ static int idpf_tx_maybe_stop_splitq(struct idpf_tx_queue *tx_q,
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
@@ -2210,7 +2189,11 @@ void idpf_tx_buf_hw_update(struct idpf_tx_queue *tx_q, u32 val,
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
2.46.0

