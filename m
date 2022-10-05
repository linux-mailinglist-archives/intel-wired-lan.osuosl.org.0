Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A04D85F50DB
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Oct 2022 10:32:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D35860D9D;
	Wed,  5 Oct 2022 08:32:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D35860D9D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664958776;
	bh=Z+X2otfe2yIE+fpnkz/59zKMA/1uu7WZTOCp/SJ5U1E=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mdC0+wxCXd6CjMwYoGnpRpU9JZx33g/IG7UOcBNpiZIQQpB+oc7kQhsEmaWzMrMhD
	 7DCaGQ4s3c/nlCMzh7DErz9DMEzD2SCJOqE+/l3SMTwdUicKin18S+YsIfMZQ23ML8
	 ARnc+iQ/hm/qWX8yi0ko0IhGuZXy6/MGCzDpyyByKUngsa1I2FjlbuLIS3tfWcLFL7
	 ZxbDT89vJAhpwHdbVJMVYwGAP/6T1kJLOIMRIbeHoe+evYJo2Hd9NOSGaJg9WnqxTq
	 ahbkosJVaTc6dSJo2CIw38bzsPZfSfa5mPK8OSBoRHdI8uOC8oJsQgOdk7Egh6/bgM
	 9zhGqTh6lulPA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sHRJL_0awkTE; Wed,  5 Oct 2022 08:32:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BBA6460B77;
	Wed,  5 Oct 2022 08:32:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BBA6460B77
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7BB871BF422
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 08:32:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5760D81A92
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 08:32:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5760D81A92
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iZ1PfkS4wbUr for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Oct 2022 08:32:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 85DA381753
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com
 [IPv6:2607:f8b0:4864:20::1033])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 85DA381753
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 08:32:41 +0000 (UTC)
Received: by mail-pj1-x1033.google.com with SMTP id
 o9-20020a17090a0a0900b0020ad4e758b3so1117097pjo.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Oct 2022 01:32:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=references:in-reply-to:message-id:date:subject:cc:to:from
 :x-gm-message-state:from:to:cc:subject:date;
 bh=5c69IeZzfgTGXU/R5PtSxXzBkuWCA8qXZSyfdvVPThc=;
 b=j1sR2zLNnalxDc+emExsvidPHkcZ7i9hzgVSwKHFGUj/rGoBBd92rpQZwjRf58n1nx
 4j9Vl9C6f2JLGRK5YmQuHOr0iWlsICSA/T+OwjTxeLIsmAjpWi3B/kMcpHhyERldd20e
 nW1SIACtY2o3ZqtA16cREAf83lkEc3Cg7RWqqAg9R6KUjnbJhCFMmJqUUDgJ7kADve7K
 9No2btqQowjAyoBZhTSg6Gt7CuYtjzN400fjMiEyXhETCwCs9n4D4K1ehZcgA1BVgYyT
 AOR05SmTMsw5qpCNFicw9s1D1pVQy1fTcTVn91bUWajAx6JNzrhWL84IcTEXcoXI5NxF
 eMFw==
X-Gm-Message-State: ACrzQf3JcMbnFvICMyLFyTcacpqHqt33HQErDeQobb3Y8iFaxClmsoP0
 w/Ykw6J31Q9SUaqGOvKtVF+oOcLch44dlL7sPg8hItMJLd5MxjaLboJk2DB8MvNqLNddH3bt81K
 E8XorNU/d7reaWhkU2d7N3Ln1fbZcT5gd3JTwJqcMR5HP6H1ac/9NbkqOV/V+c4kSbyYy33vMur
 6lG6iXDw==
X-Google-Smtp-Source: AMsMyM5UeKKnC3PGanLBov9NeVY79Ss7qMxRT/gIE5zVzi9U8iCKOISbqaBnpa6GtqdJxMv+Ni151Q==
X-Received: by 2002:a17:903:2441:b0:178:4f51:1f78 with SMTP id
 l1-20020a170903244100b001784f511f78mr30089335pls.82.1664958760583; 
 Wed, 05 Oct 2022 01:32:40 -0700 (PDT)
Received: from localhost.localdomain (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181]) by smtp.gmail.com with ESMTPSA id
 jj9-20020a170903048900b0017ec1b1bf9fsm5899320plb.217.2022.10.05.01.32.39
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Oct 2022 01:32:40 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  5 Oct 2022 01:31:42 -0700
Message-Id: <1664958703-4224-3-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1664958703-4224-1-git-send-email-jdamato@fastly.com>
References: <1664958703-4224-1-git-send-email-jdamato@fastly.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
 :cc:subject:date;
 bh=5c69IeZzfgTGXU/R5PtSxXzBkuWCA8qXZSyfdvVPThc=;
 b=L0TCBdGPIONDu+M+x4v6NGulAoiFhyZLsQnUfFRZr1/uzq1c3yxaZ1dVzdpWzySKv8
 pRIiox9HBzsKp+XlESc/nv1EpxhvjDtLrSMxCGkPvdpUe3yHHTgrSHX6smI2ayRUAE4G
 dqPTD6y1eyB3293o2JoIleOzVfuptLQGDeVN8=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=L0TCBdGP
Subject: [Intel-wired-lan] [next-queue 2/3] i40e: i40e_clean_tx_irq returns
 work done
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
Cc: netdev@vger.kernel.org, Joe Damato <jdamato@fastly.com>, kuba@kernel.org,
 davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Adjust i40e_clean_tx_irq to return the actual number of packets cleaned
and adjust the logic in i40e_napi_poll to check this value.

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 24 +++++++++++++-----------
 drivers/net/ethernet/intel/i40e/i40e_xsk.c  | 12 ++++++------
 drivers/net/ethernet/intel/i40e/i40e_xsk.h  |  2 +-
 3 files changed, 20 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index b97c95f..ed88309 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -924,10 +924,10 @@ void i40e_detect_recover_hung(struct i40e_vsi *vsi)
  * @tx_ring: Tx ring to clean
  * @napi_budget: Used to determine if we are in netpoll
  *
- * Returns true if there's any budget left (e.g. the clean is finished)
+ * Returns the number of packets cleaned
  **/
-static bool i40e_clean_tx_irq(struct i40e_vsi *vsi,
-			      struct i40e_ring *tx_ring, int napi_budget)
+static int i40e_clean_tx_irq(struct i40e_vsi *vsi,
+			     struct i40e_ring *tx_ring, int napi_budget)
 {
 	int i = tx_ring->next_to_clean;
 	struct i40e_tx_buffer *tx_buf;
@@ -1026,7 +1026,7 @@ static bool i40e_clean_tx_irq(struct i40e_vsi *vsi,
 	i40e_arm_wb(tx_ring, vsi, budget);
 
 	if (ring_is_xdp(tx_ring))
-		return !!budget;
+		return total_packets;
 
 	/* notify netdev of completed buffers */
 	netdev_tx_completed_queue(txring_txq(tx_ring),
@@ -1048,7 +1048,7 @@ static bool i40e_clean_tx_irq(struct i40e_vsi *vsi,
 		}
 	}
 
-	return !!budget;
+	return total_packets;
 }
 
 /**
@@ -2689,10 +2689,12 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
 			       container_of(napi, struct i40e_q_vector, napi);
 	struct i40e_vsi *vsi = q_vector->vsi;
 	struct i40e_ring *ring;
+	bool tx_clean_complete = true;
 	bool clean_complete = true;
 	bool arm_wb = false;
 	int budget_per_ring;
 	int work_done = 0;
+	int tx_wd = 0;
 
 	if (test_bit(__I40E_VSI_DOWN, vsi->state)) {
 		napi_complete(napi);
@@ -2703,12 +2705,12 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
 	 * budget and be more aggressive about cleaning up the Tx descriptors.
 	 */
 	i40e_for_each_ring(ring, q_vector->tx) {
-		bool wd = ring->xsk_pool ?
-			  i40e_clean_xdp_tx_irq(vsi, ring) :
-			  i40e_clean_tx_irq(vsi, ring, budget);
+		tx_wd = ring->xsk_pool ?
+			i40e_clean_xdp_tx_irq(vsi, ring) :
+			i40e_clean_tx_irq(vsi, ring, budget);
 
-		if (!wd) {
-			clean_complete = false;
+		if (tx_wd >= budget) {
+			tx_clean_complete = false;
 			continue;
 		}
 		arm_wb |= ring->arm_wb;
@@ -2742,7 +2744,7 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
 	}
 
 	/* If work not completed, return budget and polling will return */
-	if (!clean_complete) {
+	if (!clean_complete || !tx_clean_complete) {
 		int cpu_id = smp_processor_id();
 
 		/* It is possible that the interrupt affinity has changed but,
diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index 790aaeff..925682c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -531,9 +531,9 @@ static void i40e_set_rs_bit(struct i40e_ring *xdp_ring)
  * @xdp_ring: XDP Tx ring
  * @budget: NAPI budget
  *
- * Returns true if the work is finished.
+ * Returns number of packets cleaned
  **/
-static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
+static int i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
 {
 	struct xdp_desc *descs = xdp_ring->xsk_pool->tx_descs;
 	u32 nb_pkts, nb_processed = 0;
@@ -541,7 +541,7 @@ static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
 
 	nb_pkts = xsk_tx_peek_release_desc_batch(xdp_ring->xsk_pool, budget);
 	if (!nb_pkts)
-		return true;
+		return 0;
 
 	if (xdp_ring->next_to_use + nb_pkts >= xdp_ring->count) {
 		nb_processed = xdp_ring->count - xdp_ring->next_to_use;
@@ -558,7 +558,7 @@ static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
 
 	i40e_update_tx_stats(xdp_ring, nb_pkts, total_bytes);
 
-	return nb_pkts < budget;
+	return nb_pkts;
 }
 
 /**
@@ -582,9 +582,9 @@ static void i40e_clean_xdp_tx_buffer(struct i40e_ring *tx_ring,
  * @vsi: Current VSI
  * @tx_ring: XDP Tx ring
  *
- * Returns true if cleanup/tranmission is done.
+ * Returns number of packets cleaned
  **/
-bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_ring)
+int i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_ring)
 {
 	struct xsk_buff_pool *bp = tx_ring->xsk_pool;
 	u32 i, completed_frames, xsk_frames = 0;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.h b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
index 821df24..4e810c2 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
@@ -30,7 +30,7 @@ int i40e_xsk_pool_setup(struct i40e_vsi *vsi, struct xsk_buff_pool *pool,
 bool i40e_alloc_rx_buffers_zc(struct i40e_ring *rx_ring, u16 cleaned_count);
 int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget);
 
-bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_ring);
+int i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_ring);
 int i40e_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags);
 int i40e_realloc_rx_bi_zc(struct i40e_vsi *vsi, bool zc);
 void i40e_clear_rx_bi_zc(struct i40e_ring *rx_ring);
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
