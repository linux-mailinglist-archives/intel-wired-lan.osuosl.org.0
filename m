Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 572D988D7C6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 08:48:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 01F0381372;
	Wed, 27 Mar 2024 07:48:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sG9tn9QAWyk8; Wed, 27 Mar 2024 07:48:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6BF8C8134E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711525732;
	bh=LdImLoztTThOxb6/wh5FSjQqCgQIiteep3IRxYhr+dc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vTEbFu2TFVbadLDEonbmuKU/G5Ssfp75kg7M6xb1QAGQNnJvsaAizFCmUK3GvyO4r
	 aMqMmyU9/TneY6bpoLJ4nB2Thx+AMkzmRS9KRlzgZyNOcCc/xSgxVtRubR3I1KBtmB
	 JcTLDZEXwpq7nHjyLYw/A2TfxcOhVLhky1MEhwsbnf5MM9ThHLmgLKkggaP74LjWY0
	 EYZTTkoJuMiIkUmQTko5wivxj0o8qJmjaSOJ6YeKiXO7uboYFcln6LCD6R521pY1UC
	 xJANBnIjihTLDBpdqarqhHqA/F/GQ3if9l00ikDOctU0j/LUtvaD5fHG+4mTqjwkth
	 wzcvSSd6R5YWg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6BF8C8134E;
	Wed, 27 Mar 2024 07:48:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0D1181BF42D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 07:48:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EDB5B81263
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 07:48:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h3c-jOLcygsr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 07:48:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3275C80FA8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3275C80FA8
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3275C80FA8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 07:48:48 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-134-OiSkdrrNM7OpWQmkxxJRnQ-1; Wed, 27 Mar 2024 03:48:42 -0400
X-MC-Unique: OiSkdrrNM7OpWQmkxxJRnQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BD29385CE42;
 Wed, 27 Mar 2024 07:48:41 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.224.197])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E64E5492BDC;
 Wed, 27 Mar 2024 07:48:39 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 27 Mar 2024 08:48:26 +0100
Message-ID: <20240327074833.8701-2-ivecera@redhat.com>
In-Reply-To: <20240327074833.8701-1-ivecera@redhat.com>
References: <20240327074833.8701-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1711525727;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LdImLoztTThOxb6/wh5FSjQqCgQIiteep3IRxYhr+dc=;
 b=gA2qUYV13fzLJVzB1xlEwudPZoZBUd/ZOcMpkj6Wp67M2CeIAdVt+1GYK9RX2AzDxFU/aF
 fS+oUlR28uRDRt5lZKWyzCfHBXu0RztftFfvtE8d8fxYEIop0jePTDZoSLq9uAijZuDpM7
 1mzFGK3z/d/7LrRs7as671VAJ658jCs=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=gA2qUYV1
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/8] i40e: Enforce software
 interrupt during busy-poll exit
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 aleksandr.loktionov@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 Hugo Ferreira <hferreir@redhat.com>, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
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
2) Extends i40e_buildreg_itr() to be able to add an enforced software
   interrupt into built value
2) In i40e_update_enable_itr() enforces a software interrupt trigger
   if we are exiting busy poll to catch any pending clean-ups
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
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  6 ++
 .../net/ethernet/intel/i40e/i40e_register.h   |  3 +
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 82 ++++++++++++++-----
 drivers/net/ethernet/intel/i40e/i40e_txrx.h   |  1 +
 5 files changed, 72 insertions(+), 21 deletions(-)

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
index 3279f3bb68c2..663b2237eb4e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -3922,6 +3922,12 @@ static void i40e_vsi_configure_msix(struct i40e_vsi *vsi)
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
index 14ab642cafdb..432afbb64201 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_register.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_register.h
@@ -333,8 +333,11 @@
 #define I40E_PFINT_DYN_CTLN_ITR_INDX_SHIFT 3
 #define I40E_PFINT_DYN_CTLN_ITR_INDX_MASK I40E_MASK(0x3, I40E_PFINT_DYN_CTLN_ITR_INDX_SHIFT)
 #define I40E_PFINT_DYN_CTLN_INTERVAL_SHIFT 5
+#define I40E_PFINT_DYN_CTLN_INTERVAL_MASK I40E_MASK(0xFFF, I40E_PFINT_DYN_CTLN_INTERVAL_SHIFT)
 #define I40E_PFINT_DYN_CTLN_SW_ITR_INDX_ENA_SHIFT 24
 #define I40E_PFINT_DYN_CTLN_SW_ITR_INDX_ENA_MASK I40E_MASK(0x1, I40E_PFINT_DYN_CTLN_SW_ITR_INDX_ENA_SHIFT)
+#define I40E_PFINT_DYN_CTLN_SW_ITR_INDX_SHIFT 25
+#define I40E_PFINT_DYN_CTLN_SW_ITR_INDX_MASK I40E_MASK(0x3, I40E_PFINT_DYN_CTLN_SW_ITR_INDX_SHIFT)
 #define I40E_PFINT_ICR0 0x00038780 /* Reset: CORER */
 #define I40E_PFINT_ICR0_INTEVENT_SHIFT 0
 #define I40E_PFINT_ICR0_INTEVENT_MASK I40E_MASK(0x1, I40E_PFINT_ICR0_INTEVENT_SHIFT)
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 0d7177083708..1a12b732818e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -2630,7 +2630,22 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 	return failure ? budget : (int)total_rx_packets;
 }
 
-static inline u32 i40e_buildreg_itr(const int type, u16 itr)
+/**
+ * i40e_buildreg_itr - build a value for writing to I40E_PFINT_DYN_CTLN register
+ * @itr_idx: interrupt throttling index
+ * @interval: interrupt throttling interval value in usecs
+ * @force_swint: force software interrupt
+ *
+ * The function builds a value for I40E_PFINT_DYN_CTLN register that
+ * is used to update interrupt throttling interval for specified ITR index
+ * and optionally enforces a software interrupt. If the @itr_idx is equal
+ * to I40E_ITR_NONE then no interval change is applied and only @force_swint
+ * parameter is taken into account. If the interval change and enforced
+ * software interrupt are not requested then the built value just enables
+ * appropriate vector interrupt.
+ **/
+static u32 i40e_buildreg_itr(enum i40e_dyn_idx itr_idx, u16 interval,
+			     bool force_swint)
 {
 	u32 val;
 
@@ -2644,23 +2659,33 @@ static inline u32 i40e_buildreg_itr(const int type, u16 itr)
 	 * an event in the PBA anyway so we need to rely on the automask
 	 * to hold pending events for us until the interrupt is re-enabled
 	 *
-	 * The itr value is reported in microseconds, and the register
-	 * value is recorded in 2 microsecond units. For this reason we
-	 * only need to shift by the interval shift - 1 instead of the
-	 * full value.
+	 * We have to shift the given value as it is reported in microseconds
+	 * and the register value is recorded in 2 microsecond units.
 	 */
-	itr &= I40E_ITR_MASK;
+	interval >>= 1;
 
+	/* 1. Enable vector interrupt
+	 * 2. Update the interval for the specified ITR index
+	 *    (I40E_ITR_NONE in the register is used to indicate that
+	 *     no interval update is requested)
+	 */
 	val = I40E_PFINT_DYN_CTLN_INTENA_MASK |
-	      (type << I40E_PFINT_DYN_CTLN_ITR_INDX_SHIFT) |
-	      (itr << (I40E_PFINT_DYN_CTLN_INTERVAL_SHIFT - 1));
+	      FIELD_PREP(I40E_PFINT_DYN_CTLN_ITR_INDX_MASK, itr_idx) |
+	      FIELD_PREP(I40E_PFINT_DYN_CTLN_INTERVAL_MASK, interval);
+
+	/* 3. Enforce software interrupt trigger if requested
+	 *    (These software interrupts rate is limited by ITR2 that is
+	 *     set to 20K interrupts per second)
+	 */
+	if (force_swint)
+		val |= I40E_PFINT_DYN_CTLN_SWINT_TRIG_MASK |
+		       I40E_PFINT_DYN_CTLN_SW_ITR_INDX_ENA_MASK |
+		       FIELD_PREP(I40E_PFINT_DYN_CTLN_SW_ITR_INDX_MASK,
+				  I40E_SW_ITR);
 
 	return val;
 }
 
-/* a small macro to shorten up some long lines */
-#define INTREG I40E_PFINT_DYN_CTLN
-
 /* The act of updating the ITR will cause it to immediately trigger. In order
  * to prevent this from throwing off adaptive update statistics we defer the
  * update so that it can only happen so often. So after either Tx or Rx are
@@ -2679,8 +2704,10 @@ static inline u32 i40e_buildreg_itr(const int type, u16 itr)
 static inline void i40e_update_enable_itr(struct i40e_vsi *vsi,
 					  struct i40e_q_vector *q_vector)
 {
+	enum i40e_dyn_idx itr_idx = I40E_ITR_NONE;
 	struct i40e_hw *hw = &vsi->back->hw;
-	u32 intval;
+	u16 interval = 0;
+	u32 itr_val;
 
 	/* If we don't have MSIX, then we only need to re-enable icr0 */
 	if (!test_bit(I40E_FLAG_MSIX_ENA, vsi->back->flags)) {
@@ -2702,8 +2729,8 @@ static inline void i40e_update_enable_itr(struct i40e_vsi *vsi,
 	 */
 	if (q_vector->rx.target_itr < q_vector->rx.current_itr) {
 		/* Rx ITR needs to be reduced, this is highest priority */
-		intval = i40e_buildreg_itr(I40E_RX_ITR,
-					   q_vector->rx.target_itr);
+		itr_idx = I40E_RX_ITR;
+		interval = q_vector->rx.target_itr;
 		q_vector->rx.current_itr = q_vector->rx.target_itr;
 		q_vector->itr_countdown = ITR_COUNTDOWN_START;
 	} else if ((q_vector->tx.target_itr < q_vector->tx.current_itr) ||
@@ -2712,25 +2739,36 @@ static inline void i40e_update_enable_itr(struct i40e_vsi *vsi,
 		/* Tx ITR needs to be reduced, this is second priority
 		 * Tx ITR needs to be increased more than Rx, fourth priority
 		 */
-		intval = i40e_buildreg_itr(I40E_TX_ITR,
-					   q_vector->tx.target_itr);
+		itr_idx = I40E_TX_ITR;
+		interval = q_vector->tx.target_itr;
 		q_vector->tx.current_itr = q_vector->tx.target_itr;
 		q_vector->itr_countdown = ITR_COUNTDOWN_START;
 	} else if (q_vector->rx.current_itr != q_vector->rx.target_itr) {
 		/* Rx ITR needs to be increased, third priority */
-		intval = i40e_buildreg_itr(I40E_RX_ITR,
-					   q_vector->rx.target_itr);
+		itr_idx = I40E_RX_ITR;
+		interval = q_vector->rx.target_itr;
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
+	/* Do not update interrupt control register if VSI is down */
+	if (test_bit(__I40E_VSI_DOWN, vsi->state))
+		return;
+
+	/* Update ITR interval if necessary and enforce software interrupt
+	 * if we are exiting busy poll.
+	 */
+	if (q_vector->in_busy_poll) {
+		itr_val = i40e_buildreg_itr(itr_idx, interval, true);
+		q_vector->in_busy_poll = false;
+	} else {
+		itr_val = i40e_buildreg_itr(itr_idx, interval, false);
+	}
+	wr32(hw, I40E_PFINT_DYN_CTLN(q_vector->reg_idx), itr_val);
 }
 
 /**
@@ -2845,6 +2883,8 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
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

