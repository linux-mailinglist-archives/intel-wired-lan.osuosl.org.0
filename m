Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F6EB16415
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jul 2025 18:08:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C9CE9613DD;
	Wed, 30 Jul 2025 16:07:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hp26ANLPz3oD; Wed, 30 Jul 2025 16:07:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD1D060B4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753891677;
	bh=ccHy1WKLjLpQ3WKFd51VqcSUmSMiXwrysA7o6PVhtL0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ciJ43M1SooQW3R0cOwLYnhF4DiR+mds9NwLnIdXjQekL7UNDSqSUyigdJn+149HmL
	 hyqoWjo4Au9kZRAZQXol0axpp3U6+EN01qtxxp3GtfLKFMSSFXlzYrW8KgSnlxMFsp
	 u0229E3eUmW4L3GKFlRRakxAW3x0EcA2BM15p+nlXFyinmLkQUSnMjXL/JqKPr4Fdm
	 Y0QPMGCAPzhZVwJSM5ZAZjQDL+4IDsfvVoIMla5+cD8iYADHkjc8xl+/D94cvZcJFf
	 IdkJkKzkSlkO+0LCRCBlt8AB/Qa1FAUWg9DTBh+DfWmYjn8ElGMNHayHXD+ZuolrY6
	 4baJwll4HX6ZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD1D060B4E;
	Wed, 30 Jul 2025 16:07:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 70CDE13D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 16:07:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 56B1A83D66
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 16:07:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x8Y4sZLTItSr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jul 2025 16:07:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8AA6E83D11
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8AA6E83D11
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8AA6E83D11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 16:07:55 +0000 (UTC)
X-CSE-ConnectionGUID: A44oFaqzQH2ZTNq95bLIcA==
X-CSE-MsgGUID: bNAKdXb1STy0BMGI3cm+Fw==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="67278730"
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="67278730"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 09:07:55 -0700
X-CSE-ConnectionGUID: XXvAdTJgQRSXAeuvDuikbw==
X-CSE-MsgGUID: 07HKgeVIS+Se1wT+geQllg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="163812864"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa010.fm.intel.com with ESMTP; 30 Jul 2025 09:07:50 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Simon Horman <horms@kernel.org>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, bpf@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Joshua Hay <joshua.a.hay@intel.com>, Luigi Rizzo <lrizzo@google.com>,
 Brian Vazquez <brianvv@google.com>, Madhu Chittim <madhu.chittim@intel.com>
Date: Wed, 30 Jul 2025 18:07:01 +0200
Message-ID: <20250730160717.28976-3-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250730160717.28976-1-aleksander.lobakin@intel.com>
References: <20250730160717.28976-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753891676; x=1785427676;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hMMUhtjFkGQwGNG2s1RT3EdTc5gLdms+67qwwdYi7Yk=;
 b=Il561vzjHEOMvBJEi6cudW8cPwvb1BNp/zdHdJKVshkOQg4CAKvkf20P
 L1/AwGa3p9Ns3OusT2ZCDYnv7FJaG2Ebk82nx5MJHB1T+wP2EMNHKUIHL
 dYlvF34x+suDGWo+UxpgxXxpB4vddVZJMwSMPw/QVmL56bpwWdkT5dcpD
 U3ye57I/pdWL7Qki6VJorDQkvld4kCTJmJXWM7SwPCyOCKEQjDiwHrBKM
 vhZpYaPx525Kko1Kmsq+qB0UeK5YCv5COAYOXrLgsgkh5WKvb6NuAXpEr
 oveyivgC8CSAIUFZ49osl0WdIKQpxQgnGiJT9berJlUQwfGFRjjWTq31p
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Il561vzj
Subject: [Intel-wired-lan] [PATCH iwl-next v3 02/18] idpf: improve when to
 set RE bit logic
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Joshua Hay <joshua.a.hay@intel.com>

Track the gap between next_to_use and the last RE index. Set RE again
if the gap is large enough to ensure RE bit is set frequently. This is
critical before removing the stashing mechanisms because the
opportunistic descriptor ring cleaning from the out-of-order completions
will go away. Previously the descriptors would be "cleaned" by both the
descriptor (RE) completion and the out-of-order completions. Without the
latter, we must ensure the RE bit is set more frequently. Otherwise,
it's theoretically possible for the descriptor ring next_to_clean to
never advance.  The previous implementation was dependent on the start
of a packet falling on a 64th index in the descriptor ring, which is not
guaranteed with large packets.

Signed-off-by: Luigi Rizzo <lrizzo@google.com>
Signed-off-by: Brian Vazquez <brianvv@google.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.h |  6 ++++--
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 20 +++++++++++++++++++-
 2 files changed, 23 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 58232a1bd0a9..c75ca5d3e57c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -610,6 +610,8 @@ libeth_cacheline_set_assert(struct idpf_rx_queue, 64,
  * @netdev: &net_device corresponding to this queue
  * @next_to_use: Next descriptor to use
  * @next_to_clean: Next descriptor to clean
+ * @last_re: last descriptor index that RE bit was set
+ * @tx_max_bufs: Max buffers that can be transmitted with scatter-gather
  * @cleaned_bytes: Splitq only, TXQ only: When a TX completion is received on
  *		   the TX completion queue, it can be for any TXQ associated
  *		   with that completion queue. This means we can clean up to
@@ -620,7 +622,6 @@ libeth_cacheline_set_assert(struct idpf_rx_queue, 64,
  *		   only once at the end of the cleaning routine.
  * @clean_budget: singleq only, queue cleaning budget
  * @cleaned_pkts: Number of packets cleaned for the above said case
- * @tx_max_bufs: Max buffers that can be transmitted with scatter-gather
  * @stash: Tx buffer stash for Flow-based scheduling mode
  * @refillq: Pointer to refill queue
  * @compl_tag_bufid_m: Completion tag buffer id mask
@@ -663,6 +664,8 @@ struct idpf_tx_queue {
 	__cacheline_group_begin_aligned(read_write);
 	u16 next_to_use;
 	u16 next_to_clean;
+	u16 last_re;
+	u16 tx_max_bufs;
 
 	union {
 		u32 cleaned_bytes;
@@ -670,7 +673,6 @@ struct idpf_tx_queue {
 	};
 	u16 cleaned_pkts;
 
-	u16 tx_max_bufs;
 	struct idpf_txq_stash *stash;
 	struct idpf_sw_queue *refillq;
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 145447e81f30..3262707c8fab 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -294,6 +294,8 @@ static int idpf_tx_desc_alloc(const struct idpf_vport *vport,
 	 */
 	idpf_queue_change(GEN_CHK, refillq);
 
+	tx_q->last_re = tx_q->desc_count - IDPF_TX_SPLITQ_RE_MIN_GAP;
+
 	return 0;
 
 err_alloc:
@@ -2912,6 +2914,21 @@ static void idpf_tx_set_tstamp_desc(union idpf_flex_tx_ctx_desc *ctx_desc,
 { }
 #endif /* CONFIG_PTP_1588_CLOCK */
 
+/**
+ * idpf_tx_splitq_need_re - check whether RE bit needs to be set
+ * @tx_q: pointer to Tx queue
+ *
+ * Return: true if RE bit needs to be set, false otherwise
+ */
+static bool idpf_tx_splitq_need_re(struct idpf_tx_queue *tx_q)
+{
+	int gap = tx_q->next_to_use - tx_q->last_re;
+
+	gap += (gap < 0) ? tx_q->desc_count : 0;
+
+	return gap >= IDPF_TX_SPLITQ_RE_MIN_GAP;
+}
+
 /**
  * idpf_tx_splitq_frame - Sends buffer on Tx ring using flex descriptors
  * @skb: send buffer
@@ -2998,9 +3015,10 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 		 * MIN_RING size to ensure it will be set at least once each
 		 * time around the ring.
 		 */
-		if (!(tx_q->next_to_use % IDPF_TX_SPLITQ_RE_MIN_GAP)) {
+		if (idpf_tx_splitq_need_re(tx_q)) {
 			tx_params.eop_cmd |= IDPF_TXD_FLEX_FLOW_CMD_RE;
 			tx_q->txq_grp->num_completions_pending++;
+			tx_q->last_re = tx_q->next_to_use;
 		}
 
 		if (skb->ip_summed == CHECKSUM_PARTIAL)
-- 
2.50.1

