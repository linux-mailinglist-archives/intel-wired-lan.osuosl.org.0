Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CDBB87BC71
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Mar 2024 13:01:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA8B2409EE;
	Thu, 14 Mar 2024 12:01:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nk_nB6Kv3TnB; Thu, 14 Mar 2024 12:01:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C87D7409A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710417663;
	bh=6/gK8g9f+wzelZGE5wq8NtDc/f04FJ1g3I3JNi+j5Os=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=yVRdXaU3xdXGSzliIiWQS0c5BUvJa84gN+DvBsvuv0vuByU8XXKW6ocZz0MbOoBX6
	 Wgu+gCUIvFEllF8ljvkzRsgzy6i2ba2F2xTtqbt3iXPdpIH1V+K9W7rpJb12Uv8wQ0
	 cRYbp2yGVSoiUhiPh6LvpHq86Kn0kCdxKq5KN9XpoYwYAeBOjA5JIuVFLfAHdlSHkO
	 loZA1iNqI7JlxugwPMv+bG5/JPule3pU9l7Sgsr0CjhFGDCX6pqN7cfULJrjIwgULb
	 waET21gk3PxAKbCXo9Y1MjRNLbT5srtSR0llSiq5z3D6fsI4RblbrLF4SMTSU2BbNx
	 hkUT3iimANaAQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C87D7409A2;
	Thu, 14 Mar 2024 12:01:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1CE691BF3F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 12:01:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 16070606C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 12:01:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HnI9v66EXe7e for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Mar 2024 12:01:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C9DBE60586
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C9DBE60586
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C9DBE60586
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 12:01:00 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-563-tbIZCbFOP_CrupvkeJo2wQ-1; Thu,
 14 Mar 2024 08:00:53 -0400
X-MC-Unique: tbIZCbFOP_CrupvkeJo2wQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1D1463803916;
 Thu, 14 Mar 2024 12:00:52 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.224.236])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E3FF73C23;
 Thu, 14 Mar 2024 12:00:49 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Thu, 14 Mar 2024 13:00:48 +0100
Message-ID: <20240314120049.111241-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1710417659;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=6/gK8g9f+wzelZGE5wq8NtDc/f04FJ1g3I3JNi+j5Os=;
 b=QrCxGHEFaDNr/rFmI5igvFoxwm008CK7VczTqaAEiD+0dATfMH651Y6oknvS94/EUnuGk1
 AN7OygNlk8pPOZdRVesV6lQ4FFNspylK8mwrt0GZGSsFiYoNMT7yvx1Vg6P+F0PmyUn6wA
 Dzw7CnUTR+EBHaPnZEFotedzheOjq40=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=QrCxGHEF
Subject: [Intel-wired-lan] [PATCH net v2] i40e: Enforce software interrupt
 during busy-poll exit
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
Cc: aleksandr.loktionov@intel.com,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>, pawel.chmielewski@intel.com,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Hugo Ferreira <hferreir@redhat.com>, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

As for ice bug fixed by commit b7306b42beaf ("ice: manage interrupts
during poll exit") followed by commit 23be7075b318 ("ice: fix software
generating extra interrupts") I'm seeing the similar issue also with
i40e driver.

In certain situation when busy-loop is enabled together with adaptive
coalescing, the driver occasionally misses that there are outstanding
descriptors to clean when exiting busy poll.

Try to catch the remaining work by triggering a software interrupt
when exiting busy poll. No extra interrupts will be generated when
busy polling is not used.

The issue was found when running sockperf ping-pong tcp test with
adaptive coalescing and busy poll enabled (50 as value busy_pool
and busy_read sysctl knobs) and results in huge latency spikes
with more than 100000us.

The fix is inspired from the ice driver and do the following:
1) During napi poll exit in case of busy-poll (napo_complete_done()
   returns false) this is recorded to q_vector that we were in busy
   loop.
2) In i40e_update_enable_itr()
   - updates refreshed ITR intervals directly using PFINT_ITRN register
   - if we are exiting ordinary poll then just enables the interrupt
     using PFINT_DYN_CTLN
   - if we are exiting busy poll then enables the interrupt and
     additionally triggers an immediate software interrupt to catch any
     pending clean-ups
3) Reuses unused 3rd ITR (interrupt throttle) index and set it to
   20K interrupts per second to limit the number of these sw interrupts.

Test results
============
Prior:
[root@dell-per640-07 net]# sockperf ping-pong -i 10.9.9.1 --tcp -m 1000 --mps=max -t 120
sockperf: == version #3.10-no.git ==
sockperf[CLIENT] send on:sockperf: using recvfrom() to block on socket(s)

[ 0] IP = 10.9.9.1        PORT = 11111 # TCP
sockperf: Warmup stage (sending a few dummy messages)...
sockperf: Starting test...
sockperf: Test end (interrupted by timer)
sockperf: Test ended
sockperf: [Total Run] RunTime=119.999 sec; Warm up time=400 msec; SentMessages=2438563; ReceivedMessages=2438562
sockperf: ========= Printing statistics for Server No: 0
sockperf: [Valid Duration] RunTime=119.549 sec; SentMessages=2429473; ReceivedMessages=2429473
sockperf: ====> avg-latency=24.571 (std-dev=93.297, mean-ad=4.904, median-ad=1.510, siqr=1.063, cv=3.797, std-error=0.060, 99.0% ci=[24.417, 24.725])
sockperf: # dropped messages = 0; # duplicated messages = 0; # out-of-order messages = 0
sockperf: Summary: Latency is 24.571 usec
sockperf: Total 2429473 observations; each percentile contains 24294.73 observations
sockperf: ---> <MAX> observation = 103294.331
sockperf: ---> percentile 99.999 =   45.633
sockperf: ---> percentile 99.990 =   37.013
sockperf: ---> percentile 99.900 =   35.910
sockperf: ---> percentile 99.000 =   33.390
sockperf: ---> percentile 90.000 =   28.626
sockperf: ---> percentile 75.000 =   27.741
sockperf: ---> percentile 50.000 =   26.743
sockperf: ---> percentile 25.000 =   25.614
sockperf: ---> <MIN> observation =   12.220

After:
[root@dell-per640-07 net]# sockperf ping-pong -i 10.9.9.1 --tcp -m 1000 --mps=max -t 120
sockperf: == version #3.10-no.git ==
sockperf[CLIENT] send on:sockperf: using recvfrom() to block on socket(s)

[ 0] IP = 10.9.9.1        PORT = 11111 # TCP
sockperf: Warmup stage (sending a few dummy messages)...
sockperf: Starting test...
sockperf: Test end (interrupted by timer)
sockperf: Test ended
sockperf: [Total Run] RunTime=119.999 sec; Warm up time=400 msec; SentMessages=2400055; ReceivedMessages=2400054
sockperf: ========= Printing statistics for Server No: 0
sockperf: [Valid Duration] RunTime=119.549 sec; SentMessages=2391186; ReceivedMessages=2391186
sockperf: ====> avg-latency=24.965 (std-dev=5.934, mean-ad=4.642, median-ad=1.485, siqr=1.067, cv=0.238, std-error=0.004, 99.0% ci=[24.955, 24.975])
sockperf: # dropped messages = 0; # duplicated messages = 0; # out-of-order messages = 0
sockperf: Summary: Latency is 24.965 usec
sockperf: Total 2391186 observations; each percentile contains 23911.86 observations
sockperf: ---> <MAX> observation =  195.841
sockperf: ---> percentile 99.999 =   45.026
sockperf: ---> percentile 99.990 =   39.009
sockperf: ---> percentile 99.900 =   35.922
sockperf: ---> percentile 99.000 =   33.482
sockperf: ---> percentile 90.000 =   28.902
sockperf: ---> percentile 75.000 =   27.821
sockperf: ---> percentile 50.000 =   26.860
sockperf: ---> percentile 25.000 =   25.685
sockperf: ---> <MIN> observation =   12.277

Fixes: 0bcd952feec7 ("ethernet/intel: consolidate NAPI and NAPI exit")
Reported-by: Hugo Ferreira <hferreir@redhat.com>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h        |  1 +
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  6 +++
 .../net/ethernet/intel/i40e/i40e_register.h   |  2 +
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 46 ++++++++++++++-----
 drivers/net/ethernet/intel/i40e/i40e_txrx.h   |  1 +
 5 files changed, 45 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index ba24f3fa92c3..2fbabcdb5bb5 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -955,6 +955,7 @@ struct i40e_q_vector {
 	struct rcu_head rcu;	/* to avoid race with update stats on free */
 	char name[I40E_INT_NAME_STR_LEN];
 	bool arm_wb_state;
+	bool in_busy_poll;
 	int irq_num;		/* IRQ assigned to this q_vector */
 } ____cacheline_internodealigned_in_smp;
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index f86578857e8a..6576a0081093 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -3911,6 +3911,12 @@ static void i40e_vsi_configure_msix(struct i40e_vsi *vsi)
 		     q_vector->tx.target_itr >> 1);
 		q_vector->tx.current_itr = q_vector->tx.target_itr;
 
+		/* Set ITR for software interrupts triggered after exiting
+		 * busy-loop polling.
+		 */
+		wr32(hw, I40E_PFINT_ITRN(I40E_SW_ITR, vector - 1),
+		     I40E_ITR_20K);
+
 		wr32(hw, I40E_PFINT_RATEN(vector - 1),
 		     i40e_intrl_usec_to_reg(vsi->int_rate_limit));
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_register.h b/drivers/net/ethernet/intel/i40e/i40e_register.h
index 14ab642cafdb..baa6bb68bcf8 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_register.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_register.h
@@ -335,6 +335,8 @@
 #define I40E_PFINT_DYN_CTLN_INTERVAL_SHIFT 5
 #define I40E_PFINT_DYN_CTLN_SW_ITR_INDX_ENA_SHIFT 24
 #define I40E_PFINT_DYN_CTLN_SW_ITR_INDX_ENA_MASK I40E_MASK(0x1, I40E_PFINT_DYN_CTLN_SW_ITR_INDX_ENA_SHIFT)
+#define I40E_PFINT_DYN_CTLN_SW_ITR_INDX_SHIFT 25
+#define I40E_PFINT_DYN_CTLN_SW_ITR_INDX_MASK I40E_MASK(0x3, I40E_PFINT_DYN_CTLN_SW_ITR_INDX_SHIFT)
 #define I40E_PFINT_ICR0 0x00038780 /* Reset: CORER */
 #define I40E_PFINT_ICR0_INTEVENT_SHIFT 0
 #define I40E_PFINT_ICR0_INTEVENT_MASK I40E_MASK(0x1, I40E_PFINT_ICR0_INTEVENT_SHIFT)
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 0d7177083708..356c3140adf3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -2658,8 +2658,22 @@ static inline u32 i40e_buildreg_itr(const int type, u16 itr)
 	return val;
 }
 
-/* a small macro to shorten up some long lines */
-#define INTREG I40E_PFINT_DYN_CTLN
+static inline u32 i40e_buildreg_swint(int type)
+{
+	u32 val;
+
+	/* 1. Enable the interrupt
+	 * 2. Do not modify any ITR interval
+	 * 3. Trigger a SW interrupt specified by type
+	 */
+	val = I40E_PFINT_DYN_CTLN_INTENA_MASK |
+	      I40E_PFINT_DYN_CTLN_ITR_INDX_MASK | /* set noitr */
+	      I40E_PFINT_DYN_CTLN_SWINT_TRIG_MASK |
+	      I40E_PFINT_DYN_CTLN_SW_ITR_INDX_ENA_MASK |
+	      FIELD_PREP(I40E_PFINT_DYN_CTLN_SW_ITR_INDX_MASK, type);
+
+	return val;
+}
 
 /* The act of updating the ITR will cause it to immediately trigger. In order
  * to prevent this from throwing off adaptive update statistics we defer the
@@ -2702,8 +2716,8 @@ static inline void i40e_update_enable_itr(struct i40e_vsi *vsi,
 	 */
 	if (q_vector->rx.target_itr < q_vector->rx.current_itr) {
 		/* Rx ITR needs to be reduced, this is highest priority */
-		intval = i40e_buildreg_itr(I40E_RX_ITR,
-					   q_vector->rx.target_itr);
+		wr32(hw, I40E_PFINT_ITRN(I40E_RX_ITR, q_vector->reg_idx),
+		     q_vector->rx.target_itr >> 1);
 		q_vector->rx.current_itr = q_vector->rx.target_itr;
 		q_vector->itr_countdown = ITR_COUNTDOWN_START;
 	} else if ((q_vector->tx.target_itr < q_vector->tx.current_itr) ||
@@ -2712,25 +2726,33 @@ static inline void i40e_update_enable_itr(struct i40e_vsi *vsi,
 		/* Tx ITR needs to be reduced, this is second priority
 		 * Tx ITR needs to be increased more than Rx, fourth priority
 		 */
-		intval = i40e_buildreg_itr(I40E_TX_ITR,
-					   q_vector->tx.target_itr);
+		wr32(hw, I40E_PFINT_ITRN(I40E_TX_ITR, q_vector->reg_idx),
+		     q_vector->tx.target_itr >> 1);
 		q_vector->tx.current_itr = q_vector->tx.target_itr;
 		q_vector->itr_countdown = ITR_COUNTDOWN_START;
 	} else if (q_vector->rx.current_itr != q_vector->rx.target_itr) {
 		/* Rx ITR needs to be increased, third priority */
-		intval = i40e_buildreg_itr(I40E_RX_ITR,
-					   q_vector->rx.target_itr);
+		wr32(hw, I40E_PFINT_ITRN(I40E_RX_ITR, q_vector->reg_idx),
+		     q_vector->rx.target_itr >> 1);
 		q_vector->rx.current_itr = q_vector->rx.target_itr;
 		q_vector->itr_countdown = ITR_COUNTDOWN_START;
 	} else {
 		/* No ITR update, lowest priority */
-		intval = i40e_buildreg_itr(I40E_ITR_NONE, 0);
 		if (q_vector->itr_countdown)
 			q_vector->itr_countdown--;
 	}
 
-	if (!test_bit(__I40E_VSI_DOWN, vsi->state))
-		wr32(hw, INTREG(q_vector->reg_idx), intval);
+	/* Do not enable interrupt if VSI is down */
+	if (test_bit(__I40E_VSI_DOWN, vsi->state))
+		return;
+
+	if (!q_vector->in_busy_poll) {
+		intval = i40e_buildreg_itr(I40E_ITR_NONE, 0);
+	} else {
+		q_vector->in_busy_poll = false;
+		intval = i40e_buildreg_swint(I40E_SW_ITR);
+	}
+	wr32(hw, I40E_PFINT_DYN_CTLN(q_vector->reg_idx), intval);
 }
 
 /**
@@ -2845,6 +2867,8 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
 	 */
 	if (likely(napi_complete_done(napi, work_done)))
 		i40e_update_enable_itr(vsi, q_vector);
+	else
+		q_vector->in_busy_poll = true;
 
 	return min(work_done, budget - 1);
 }
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
index abf15067eb5d..2cdc7de6301c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
@@ -68,6 +68,7 @@ enum i40e_dyn_idx {
 /* these are indexes into ITRN registers */
 #define I40E_RX_ITR    I40E_IDX_ITR0
 #define I40E_TX_ITR    I40E_IDX_ITR1
+#define I40E_SW_ITR    I40E_IDX_ITR2
 
 /* Supported RSS offloads */
 #define I40E_DEFAULT_RSS_HENA ( \
-- 
2.43.0

