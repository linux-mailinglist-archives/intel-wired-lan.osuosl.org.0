Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7323BA9FA04
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Apr 2025 21:55:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25E268134F;
	Mon, 28 Apr 2025 19:55:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CL8I4Bu0kq7s; Mon, 28 Apr 2025 19:55:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B07281346
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745870154;
	bh=WF1rdyAsoL1EvhWVSLVqE87e6m1CGCQ1ONSXKdBqozE=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=geEPCmXrRGj6zqupvem8eJdJVeskPFIEDuUYoBj0yX1dCR3lzL04GiVcldblZI0IO
	 FeVn+Ju7pOhB0u7e6uqtKKgq8is+xaj9muR7Obhljjtns2Eg9cft+G9jZu2opTjmfG
	 KNsKWeOEB4G0taS1oozzxmxP5QJvA8I9UbpbS01rKDrjPkgwWPUc4jFyEB6fSTkHVC
	 OjJuEALN3mdAzUHxV5xZvF0TgAAl3yEL5IvlkPRl+z2xe2153FeGS/JENYlvNLds5n
	 7OT0k9VWDYlQZhsvpxTNSOlNe5qOkXGC9VMZMjk1Fl8AAJUgxY9OFM4uIPibokqMy3
	 uBuMMvB2BaLmw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B07281346;
	Mon, 28 Apr 2025 19:55:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 383C713D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 19:55:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1B49F81342
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 19:55:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 18sp66MwdKxV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Apr 2025 19:55:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::44a; helo=mail-pf1-x44a.google.com;
 envelope-from=3rt0paackd4cm2tly66rzzrwp.nzxty4pw-7t2po-wlywt343.z35z3w.z2r@flex--brianvv.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 529DC8133D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 529DC8133D
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com
 [IPv6:2607:f8b0:4864:20::44a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 529DC8133D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 19:55:51 +0000 (UTC)
Received: by mail-pf1-x44a.google.com with SMTP id
 d2e1a72fcca58-736a7d0b82fso5331849b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 12:55:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745870150; x=1746474950;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=WF1rdyAsoL1EvhWVSLVqE87e6m1CGCQ1ONSXKdBqozE=;
 b=Moi+nRFBpeogcTOLalUTizIUV7MxNcKDxkVsTmxvfz8xaHOyTgotcQV3Jmq9j1jS9F
 tSJnuYVL9zUWfyku/4I+cEhA1D+5vSy/2rFf03kNNAoK0WMUPzK2LRooMZ5pUwSorl+z
 /8DgAPS4qZvUG5gD7G1YhFABMKUfR8t4P5MzocCe8ddg+yzUcBQYE8DZ/2cfKCLugqLE
 IwOorb0afUG7OWq0yLHfjp0L929wD/Z0WUUrKjMYr9fVDVnD7MmaAv21rqfjOE7hQLpN
 r2TFOUaRO4Tm1yT5Pf4SIn6YRErd208fncWIhezkBIU1L7yRmAi4Klk+ZEb+MyS7nbTL
 TEEA==
X-Forwarded-Encrypted: i=1;
 AJvYcCW22klwRvB+xxgkG9D9miXwLVb1Qz6zgh2wputwGIl2XO3LhvljLGIrRhtLDw03FvquxaG//G+QO1UH5pg1Qx8=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw4nM/zc4KczWUMHK5fh8KA8MtDRVX58gOb1NQ5nD2ZkSfBGTVk
 0sJcpIssnEvCUZHVl2WjWgoRtjg08dW5BPtTbXyrDrci198CsqQrg85iuCXhjCfzwsU2U+r27Pj
 JFSQbOA==
X-Google-Smtp-Source: AGHT+IGgzi/mmJ2yTIATM1jhnypep6TvOgCGYfDJkP79jyyBpEEK6EumSZueXfXDpyYjfteBqr8NEmlR8IGO
X-Received: from pfbcl15.prod.google.com ([2002:a05:6a00:32cf:b0:740:65f:220a])
 (user=brianvv job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6a20:cfa4:b0:1f5:58b9:6d97
 with SMTP id adf61e73a8af0-2093e52803amr1192392637.35.1745870150677; Mon, 28
 Apr 2025 12:55:50 -0700 (PDT)
Date: Mon, 28 Apr 2025 19:55:32 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.49.0.901.g37484f566f-goog
Message-ID: <20250428195532.1590892-1-brianvv@google.com>
From: Brian Vazquez <brianvv@google.com>
To: Brian Vazquez <brianvv.kernel@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org
Cc: David Decotigny <decot@google.com>,
 Anjali Singhai <anjali.singhai@intel.com>, 
 Sridhar Samudrala <sridhar.samudrala@intel.com>, linux-kernel@vger.kernel.org, 
 netdev@vger.kernel.org, emil.s.tantilov@intel.com, 
 Brian Vazquez <brianvv@google.com>, Josh Hay <joshua.a.hay@intel.com>, 
 Luigi Rizzo <lrizzo@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1745870150; x=1746474950; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=WF1rdyAsoL1EvhWVSLVqE87e6m1CGCQ1ONSXKdBqozE=;
 b=sCm6gi3ojAnrcGI4ffluoJjCUJxthF/jBRXzz/j9oL0DTQtfrw2+y9iDXd6MSRLRba
 Sw7WqiMgt+ToLrRc0CWi5I69l0wRMMkCd73uDLmiNntVByCK2JZFuIXAIjZqJuuB31yo
 YpTvcsyLxfZBCzSQmTQ2o/LobEoc2zyReAB5RnrDhmCVz0ON6/odj8gLMd0oV09l6IFf
 zBdBRMXXdA6sB+YUDNP5PSxHlPfxNZFJmWk7JbCuCZ7QalCFMU2XVJy+/AgKISTXMIbJ
 qm2UY6GTtmqTkH/1sHHZ3Sl6sOWWCE5Dn8YAHwq0WUxebAT+8f7i2AruR2i41yTYPMyI
 imuw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=sCm6gi3o
Subject: [Intel-wired-lan] [iwl-net PATCH v2] idpf: fix a race in txq wakeup
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

Add a helper function to correctly handle the lockless
synchronization when the sender needs to block. The paradigm is

        if (no_resources()) {
                stop_queue();
                barrier();
                if (!no_resources())
                        restart_queue();
        }

netif_subqueue_maybe_stop already handles the paradigm correctly, but
the code split the check for resources in three parts, the first one
(descriptors) followed the protocol, but the other two (completions and
tx_buf) were only doing the first part and so race prone.

Luckily netif_subqueue_maybe_stop macro already allows you to use a
function to evaluate the start/stop conditions so the fix only requires
the right helper function to evaluate all the conditions at once.

The patch removes idpf_tx_maybe_stop_common since it's no longer needed
and instead adjusts separately the conditions for singleq and splitq.

Note that idpf_rx_buf_hw_update doesn't need to check for resources
since that will be covered in idpf_tx_splitq_frame.

To reproduce:

Reduce the threshold for pending completions to increase the chances of
hitting this pause by changing your kernel:

drivers/net/ethernet/intel/idpf/idpf_txrx.h

-#define IDPF_TX_COMPLQ_OVERFLOW_THRESH(txcq)   ((txcq)->desc_count >> 1)
+#define IDPF_TX_COMPLQ_OVERFLOW_THRESH(txcq)   ((txcq)->desc_count >> 4)

Use pktgen to force the host to push small pkts very aggressively:

./pktgen_sample02_multiqueue.sh -i eth1 -s 100 -6 -d $IP -m $MAC \
  -p 10000-10000 -t 16 -n 0 -v -x -c 64

Fixes: 6818c4d5b3c2 ("idpf: add splitq start_xmit")
Signed-off-by: Josh Hay <joshua.a.hay@intel.com>
Signed-off-by: Brian Vazquez <brianvv@google.com>
Signed-off-by: Luigi Rizzo <lrizzo@google.com>
---
v2:
- Fix typos
- Fix RCT in singleq function
- No inline in c files
- Submit to iwl-net and add Fixes tag

 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  9 ++--
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 45 +++++++------------
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  8 ----
 3 files changed, 22 insertions(+), 40 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index eae1b6f474e6..6ade54e21325 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -362,17 +362,18 @@ netdev_tx_t idpf_tx_singleq_frame(struct sk_buff *skb,
 {
 	struct idpf_tx_offload_params offload = { };
 	struct idpf_tx_buf *first;
+	int csum, tso, needed;
 	unsigned int count;
 	__be16 protocol;
-	int csum, tso;
 
 	count = idpf_tx_desc_count_required(tx_q, skb);
 	if (unlikely(!count))
 		return idpf_tx_drop_skb(tx_q, skb);
 
-	if (idpf_tx_maybe_stop_common(tx_q,
-				      count + IDPF_TX_DESCS_PER_CACHE_LINE +
-				      IDPF_TX_DESCS_FOR_CTX)) {
+	needed = count + IDPF_TX_DESCS_PER_CACHE_LINE + IDPF_TX_DESCS_FOR_CTX;
+	if (!netif_subqueue_maybe_stop(tx_q->netdev, tx_q->idx,
+				       IDPF_DESC_UNUSED(tx_q),
+				       needed, needed)) {
 		idpf_tx_buf_hw_update(tx_q, tx_q->next_to_use, false);
 
 		u64_stats_update_begin(&tx_q->stats_sync);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index bdf52cef3891..a6ca2f55b5d5 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -2132,6 +2132,19 @@ void idpf_tx_splitq_build_flow_desc(union idpf_tx_flex_desc *desc,
 	desc->flow.qw1.compl_tag = cpu_to_le16(params->compl_tag);
 }
 
+/* Global conditions to tell whether the txq (and related resources)
+ * has room to allow the use of "size" descriptors.
+ */
+static int idpf_txq_has_room(struct idpf_tx_queue *tx_q, u32 size)
+{
+	if (IDPF_DESC_UNUSED(tx_q) < size ||
+	    IDPF_TX_COMPLQ_PENDING(tx_q->txq_grp) >
+		IDPF_TX_COMPLQ_OVERFLOW_THRESH(tx_q->txq_grp->complq) ||
+	    IDPF_TX_BUF_RSV_LOW(tx_q))
+		return 0;
+	return 1;
+}
+
 /**
  * idpf_tx_maybe_stop_splitq - 1st level check for Tx splitq stop conditions
  * @tx_q: the queue to be checked
@@ -2142,29 +2155,11 @@ void idpf_tx_splitq_build_flow_desc(union idpf_tx_flex_desc *desc,
 static int idpf_tx_maybe_stop_splitq(struct idpf_tx_queue *tx_q,
 				     unsigned int descs_needed)
 {
-	if (idpf_tx_maybe_stop_common(tx_q, descs_needed))
-		goto out;
-
-	/* If there are too many outstanding completions expected on the
-	 * completion queue, stop the TX queue to give the device some time to
-	 * catch up
-	 */
-	if (unlikely(IDPF_TX_COMPLQ_PENDING(tx_q->txq_grp) >
-		     IDPF_TX_COMPLQ_OVERFLOW_THRESH(tx_q->txq_grp->complq)))
-		goto splitq_stop;
-
-	/* Also check for available book keeping buffers; if we are low, stop
-	 * the queue to wait for more completions
-	 */
-	if (unlikely(IDPF_TX_BUF_RSV_LOW(tx_q)))
-		goto splitq_stop;
-
-	return 0;
-
-splitq_stop:
-	netif_stop_subqueue(tx_q->netdev, tx_q->idx);
+	if (netif_subqueue_maybe_stop(tx_q->netdev, tx_q->idx,
+				      idpf_txq_has_room(tx_q, descs_needed),
+				      1, 1))
+		return 0;
 
-out:
 	u64_stats_update_begin(&tx_q->stats_sync);
 	u64_stats_inc(&tx_q->q_stats.q_busy);
 	u64_stats_update_end(&tx_q->stats_sync);
@@ -2190,12 +2185,6 @@ void idpf_tx_buf_hw_update(struct idpf_tx_queue *tx_q, u32 val,
 	nq = netdev_get_tx_queue(tx_q->netdev, tx_q->idx);
 	tx_q->next_to_use = val;
 
-	if (idpf_tx_maybe_stop_common(tx_q, IDPF_TX_DESC_NEEDED)) {
-		u64_stats_update_begin(&tx_q->stats_sync);
-		u64_stats_inc(&tx_q->q_stats.q_busy);
-		u64_stats_update_end(&tx_q->stats_sync);
-	}
-
 	/* Force memory writes to complete before letting h/w
 	 * know there are new descriptors to fetch.  (Only
 	 * applicable for weak-ordered memory model archs,
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index b029f566e57c..c192a6c547dd 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -1037,12 +1037,4 @@ bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_rx_queue *rxq,
 				      u16 cleaned_count);
 int idpf_tso(struct sk_buff *skb, struct idpf_tx_offload_params *off);
 
-static inline bool idpf_tx_maybe_stop_common(struct idpf_tx_queue *tx_q,
-					     u32 needed)
-{
-	return !netif_subqueue_maybe_stop(tx_q->netdev, tx_q->idx,
-					  IDPF_DESC_UNUSED(tx_q),
-					  needed, needed);
-}
-
 #endif /* !_IDPF_TXRX_H_ */
-- 
2.49.0.901.g37484f566f-goog

