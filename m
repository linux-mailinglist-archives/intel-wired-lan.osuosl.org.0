Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 07AA8A9D00F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Apr 2025 19:54:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8180B80D64;
	Fri, 25 Apr 2025 17:54:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q9T9f9Fcj1Zz; Fri, 25 Apr 2025 17:54:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A915980DCF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745603685;
	bh=wUyDDDATMAbAlsjuyDcvLPYobzWIS7zLHCptp+fvkNY=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=89I8X2mYYDeqG8RH6EjdfVHnnWAEn4cWT9lAbkkye5DsmMThlpzUXQCzpU5u2aJVs
	 hs/6TtvIPQswi0l6nVEIqx0vstrOKqpVsaT3vVYj1EMOSttnPWol/Ji4+hwn+kCMw6
	 S4L7odtnSFRIKEy1q9t7+Kw5R2KJiY9A81lZvNnhRQi6zTZn2jfIhWHlCeIqK+JJwf
	 bTQhR1vzVBzO0mc4X35DcEKIerEhNhhpNFd2Yntsy5FJvoT15ZdfvXiOkmbbL/2qpo
	 avv/6FxuwskO/H++7VFdb7K7f+i/sMbNqIqQkvvFqGoyrEqCR8CbmsS931w/bNp3Sd
	 mJacAyJQi1ZnQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A915980DCF;
	Fri, 25 Apr 2025 17:54:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BD058127
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 17:54:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A34A580DCF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 17:54:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cYY7n6pKp_QF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Apr 2025 17:54:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::54a; helo=mail-pg1-x54a.google.com;
 envelope-from=3ycwlaackd3apfwobjjuccuzs.qcawbhsz-kwfsr-zobzwghg.cgicgz.cfu@flex--brianvv.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D318380D1D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D318380D1D
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com
 [IPv6:2607:f8b0:4864:20::54a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D318380D1D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 17:54:42 +0000 (UTC)
Received: by mail-pg1-x54a.google.com with SMTP id
 41be03b00d2f7-b16837f1874so1160708a12.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 10:54:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745603682; x=1746208482;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=wUyDDDATMAbAlsjuyDcvLPYobzWIS7zLHCptp+fvkNY=;
 b=VSrR+tIuto3St+97YeqFycs8fQwiXkfwsAJQFEZV59rHHIRuXD9XOLlaqougIewa96
 9U/6yk6Zqq/XLdmZfaPotRXMTJ7YVHkEerHLCAIfrj7RqnykX8b3y61z7NGCg4sytmv7
 whYvT1NtHBmDHeT5Dfk1Cld3L8zq4OEpDIh/TXGg5kMsAYrSsHrYnCc7AWLHf67HcHH2
 zIFWr3ExXIUyVG4pX+FoDkT3tcjorsfLWGFAMc/q2e3yIVxN55uN1gLtwgyYr5Ht4NNP
 xztDYk1XkssaDZHGrL3jZA9/RU0l0XlVwYQ7BvYBZZ8WsMDgMsb+z+AHAC3fyVv56By7
 irjg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVk4OsR2ZMHitbjgowzZ7I2cxXfxHRuGmQNZjrdc8fBvjrxEIaynOe7N6kwh7sEJKaVqweZdtSB0tElLB21tv4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyZKYSMv+lBkrSnUSQHvAobJYHcglS/7BBoTRx+Si/4mTapFtBy
 nJWYfUZ/d1keyZE6IwOCDK4r03Mcmu1F2L9I96NI6yuKmD0MM8vxizx2SVC1So+Ui8lIcQLZidq
 zxZ4Atg==
X-Google-Smtp-Source: AGHT+IEJMb0ZmvksR4COBHZqXiP7tE9JuIPcnR5oiaXvoL19IqL5V1QRPcjHRCuU+i31xkfihBjXX09nyPlC
X-Received: from pfvf11.prod.google.com ([2002:a05:6a00:1acb:b0:739:485f:c33e])
 (user=brianvv job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6a21:1085:b0:1f5:5b2a:f641
 with SMTP id adf61e73a8af0-2045b986d2amr4582036637.28.1745603681950; Fri, 25
 Apr 2025 10:54:41 -0700 (PDT)
Date: Fri, 25 Apr 2025 17:54:26 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.49.0.850.g28803427d3-goog
Message-ID: <20250425175426.3353069-1-brianvv@google.com>
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
 d=google.com; s=20230601; t=1745603682; x=1746208482; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=wUyDDDATMAbAlsjuyDcvLPYobzWIS7zLHCptp+fvkNY=;
 b=CQwfBdaP03F7xuAUx70zkKnFfF4/VJVNfNzCkh3YJP+KMc5O5JdJrLVZy7B8egnf/p
 foKDr8l1ibe8hpFrumP4scqXNsfw3PayNfeAq5gcabM4GYulyX6yL2IyJ6xLwP35mlF/
 nUSGdlFwdg8cuCLewCGioUNsn5giE7PgiELC1b1Q+K1gkqO4EwQd8rVZ6vT8gkt05uzZ
 BBGrtbm8GdTvNE2MmXQ5i98TrwpIQD+mKj0gcYkeO94ZB06Ia4yPLnvXYaObqyF4nYF9
 iyXokjbhP1clGmjrzih16wOH34/1xFTPhUFe0uaEFN0VgevRnW65vKCmKGkjucFyF8N4
 BGSw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=CQwfBdaP
Subject: [Intel-wired-lan] [iwl-next PATCH] idpf: fix a race in txq wakeup
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

Luckly netif_subqueue_maybe_stop macro already allows you to use a
function to evaluate the start/stop conditions so the fix only requires
to pass the right helper function to evaluate all the conditions at once.

The patch removes idpf_tx_maybe_stop_common since it's no longer needed
and instead adjusts separetely the conditions for singleq and splitq.

Note that idpf_rx_buf_hw_update doesn't need to check for resources
since that will be covered in idpf_tx_splitq_frame.

To reproduce:

Reduce the threshold for pending completions to increase the chances of
hitting this pause by locally changing the kernel:

drivers/net/ethernet/intel/idpf/idpf_txrx.h

-#define IDPF_TX_COMPLQ_OVERFLOW_THRESH(txcq)   ((txcq)->desc_count >> 1)
+#define IDPF_TX_COMPLQ_OVERFLOW_THRESH(txcq)   ((txcq)->desc_count >> 4)

Use pktgen to force the host to push small pkts very aggresively:

./pktgen_sample02_multiqueue.sh -i eth1 -s 100 -6 -d $IP -m $MAC \
  -p 10000-10000 -t 16 -n 0 -v -x -c 64

Signed-off-by: Josh Hay <joshua.a.hay@intel.com>
Signed-off-by: Brian Vazquez <brianvv@google.com>
Signed-off-by: Luigi Rizzo <lrizzo@google.com>
---
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  9 ++--
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 44 +++++++------------
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  8 ----
 3 files changed, 21 insertions(+), 40 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index c6b927fa9979..fb85270c69d6 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -364,15 +364,16 @@ netdev_tx_t idpf_tx_singleq_frame(struct sk_buff *skb,
 	struct idpf_tx_buf *first;
 	unsigned int count;
 	__be16 protocol;
-	int csum, tso;
+	int csum, tso, needed;
 
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
index 970fa9e5c39b..cb41b6fcf03f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -2184,6 +2184,19 @@ void idpf_tx_splitq_build_flow_desc(union idpf_tx_flex_desc *desc,
 	desc->flow.qw1.compl_tag = cpu_to_le16(params->compl_tag);
 }
 
+/* Global conditions to tell whether the txq (and related resources)
+ * has room to allow the use of "size" descriptors.
+ */
+static inline int txq_has_room(struct idpf_tx_queue *tx_q, u32 size)
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
@@ -2194,29 +2207,10 @@ void idpf_tx_splitq_build_flow_desc(union idpf_tx_flex_desc *desc,
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
+				      txq_has_room(tx_q, descs_needed), 1, 1))
+		return 0;
 
-out:
 	u64_stats_update_begin(&tx_q->stats_sync);
 	u64_stats_inc(&tx_q->q_stats.q_busy);
 	u64_stats_update_end(&tx_q->stats_sync);
@@ -2242,12 +2236,6 @@ void idpf_tx_buf_hw_update(struct idpf_tx_queue *tx_q, u32 val,
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
index c779fe71df99..36a0f828a6f8 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -1049,12 +1049,4 @@ bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_rx_queue *rxq,
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
2.49.0.850.g28803427d3-goog

