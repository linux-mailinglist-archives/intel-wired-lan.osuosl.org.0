Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD6D5F5BA4
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Oct 2022 23:23:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A169E60FD7;
	Wed,  5 Oct 2022 21:23:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A169E60FD7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665004987;
	bh=eMwiGlV06m7H89Z/huNj+rnHxxaLFp948ePfuOcgXWw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qwX58HE0FsCpPR035eEZdBrhtAuVyyOkfnmnpIbTb0tVLPbPqgmWGRkzrcX4EtoCE
	 XB16rQxf0j+aC5rDKUebOsYoBOxNNhl++VLxbha2nIJW7S7SGHxRTy7VRlAAw/bZTZ
	 7pNZNBdIQPaK0q/BuIcpa7nnH1N1smwcIgXmtL4XS1Onval/cL8onw8blYply5zRgZ
	 QppcTNLcm37rzqBW1Y4AKgw3SI0G1MRgVvxFKjzgzzjakiE8CPiZsOtWtDuGnrK2lx
	 YAE2bB/QNXdiuGzpjF1IhZ9ZyVttvi01bSnFAFIQkoYMTXe5j11EYBZ3Gs+UOEoOqo
	 dYNzkwBJXw0Gw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id alfhf4A8RcgY; Wed,  5 Oct 2022 21:23:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 728A760C20;
	Wed,  5 Oct 2022 21:23:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 728A760C20
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 73A171BF301
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 21:22:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4EE5A83183
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 21:22:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4EE5A83183
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7wDv6XsjfMA4 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Oct 2022 21:22:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 742AD82B1B
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 742AD82B1B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 21:22:54 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id
 e11-20020a17090a77cb00b00205edbfd646so2485523pjs.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Oct 2022 14:22:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=references:in-reply-to:message-id:date:subject:cc:to:from
 :x-gm-message-state:from:to:cc:subject:date;
 bh=U0EN7jLsuXZw8oNWja5MPj7Nd3Qv6VMTCazforCQivc=;
 b=q+EMNJdUz7+rvoebusnt9wrj6NMp+TLe/FdGK0BdowFyUS81RaTcg1BwVdQkao2+X8
 eXPgtN8pCn9641VbjN2cCOpPoVl+YQkg195AJ794MCV/Z1g51C0MhYHVAwzN8DCQLlmU
 X+B/mtoxsDuOMvvW9RhQurzNzZU3bbZ+LNMVRLv/WZnSSxEy2Gg7F1Zm+o2qcXU8LHzJ
 ssbxx42HTig9g0H+kYrc/SgwSy87dEl65PP9uk0jncwgVVAFZSxg5qFY2QXjkbnPzpPq
 3RCcZvZrSn3kC6v/hpz2hRMH0rGLE9bUX6NaLZVcexsmm2SHt8e1wNl57zyIR+bR65R8
 TaYA==
X-Gm-Message-State: ACrzQf2v1nnyvj09bFnC0CrzC0jLPGDcUD9qYf0BHZAPzNwcvpWiofOv
 W8vC5nmjGPUk2y9DhdOr6K4XdYWtDnzJ4fzLcEMXP34BPwsQhq0S3S9E+xsH+bchDyR/7prIZgs
 weTvMPesRt0seIgYsUHTOuoJ4YEz7wGorekXa+Ifg++blAiPlrrJ7Ei6p7VdkkC3L464nLYmtJ2
 GvJyVO0Q==
X-Google-Smtp-Source: AMsMyM4aGc1TP3ffUgzMXwjgbCYlhU+t+KjxGZY6LeMaKOd3cIU1SJv1ncLlpzyWRfEtLwOkRNc3yQ==
X-Received: by 2002:a17:903:1211:b0:178:9353:9e42 with SMTP id
 l17-20020a170903121100b0017893539e42mr1248640plh.45.1665004974025; 
 Wed, 05 Oct 2022 14:22:54 -0700 (PDT)
Received: from localhost.localdomain (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181]) by smtp.gmail.com with ESMTPSA id
 q12-20020a170902dacc00b0017f7b6e970esm2404666plx.146.2022.10.05.14.22.52
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Oct 2022 14:22:53 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  5 Oct 2022 14:21:51 -0700
Message-Id: <1665004913-25656-3-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1665004913-25656-1-git-send-email-jdamato@fastly.com>
References: <1665004913-25656-1-git-send-email-jdamato@fastly.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
 :cc:subject:date;
 bh=U0EN7jLsuXZw8oNWja5MPj7Nd3Qv6VMTCazforCQivc=;
 b=FEITd7pN7m03rHGdolRifajln9xYGwZSSvrnKfKhzd21QJhaNvUa7qcWi347wgn2Sy
 6CxB4CtrQjvZj7HqTolY2fdYmzNUL/dPsTyMktZLy2E3LM7fKMyFCLy0HJ7fomV3w2Tg
 u+kRaqRCz90TLnNMOxk+FSJnJSZQMQgrxHGC8=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=FEITd7pN
Subject: [Intel-wired-lan] [next-queue v2 2/4] i40e: Record number TXes
 cleaned during NAPI
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

Update i40e_clean_tx_irq to take an out parameter (tx_cleaned) which stores
the number TXs cleaned.

Likewise, update i40e_clean_xdp_tx_irq and i40e_xmit_zc to do the same.

Care has been taken to avoid changing the control flow of any functions
involved.

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 16 +++++++++++-----
 drivers/net/ethernet/intel/i40e/i40e_xsk.c  | 15 +++++++++++----
 drivers/net/ethernet/intel/i40e/i40e_xsk.h  |  3 ++-
 3 files changed, 24 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index b97c95f..a2cc98e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -923,11 +923,13 @@ void i40e_detect_recover_hung(struct i40e_vsi *vsi)
  * @vsi: the VSI we care about
  * @tx_ring: Tx ring to clean
  * @napi_budget: Used to determine if we are in netpoll
+ * @tx_cleaned: Out parameter set to the number of TXes cleaned
  *
  * Returns true if there's any budget left (e.g. the clean is finished)
  **/
 static bool i40e_clean_tx_irq(struct i40e_vsi *vsi,
-			      struct i40e_ring *tx_ring, int napi_budget)
+			      struct i40e_ring *tx_ring, int napi_budget,
+			      unsigned int *tx_cleaned)
 {
 	int i = tx_ring->next_to_clean;
 	struct i40e_tx_buffer *tx_buf;
@@ -1026,7 +1028,7 @@ static bool i40e_clean_tx_irq(struct i40e_vsi *vsi,
 	i40e_arm_wb(tx_ring, vsi, budget);
 
 	if (ring_is_xdp(tx_ring))
-		return !!budget;
+		goto out;
 
 	/* notify netdev of completed buffers */
 	netdev_tx_completed_queue(txring_txq(tx_ring),
@@ -1048,6 +1050,8 @@ static bool i40e_clean_tx_irq(struct i40e_vsi *vsi,
 		}
 	}
 
+out:
+	*tx_cleaned = total_packets;
 	return !!budget;
 }
 
@@ -2689,10 +2693,12 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
 			       container_of(napi, struct i40e_q_vector, napi);
 	struct i40e_vsi *vsi = q_vector->vsi;
 	struct i40e_ring *ring;
+	bool tx_clean_complete = true;
 	bool clean_complete = true;
 	bool arm_wb = false;
 	int budget_per_ring;
 	int work_done = 0;
+	unsigned int tx_cleaned = 0;
 
 	if (test_bit(__I40E_VSI_DOWN, vsi->state)) {
 		napi_complete(napi);
@@ -2704,11 +2710,11 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
 	 */
 	i40e_for_each_ring(ring, q_vector->tx) {
 		bool wd = ring->xsk_pool ?
-			  i40e_clean_xdp_tx_irq(vsi, ring) :
-			  i40e_clean_tx_irq(vsi, ring, budget);
+			  i40e_clean_xdp_tx_irq(vsi, ring, &tx_cleaned) :
+			  i40e_clean_tx_irq(vsi, ring, budget, &tx_cleaned);
 
 		if (!wd) {
-			clean_complete = false;
+			clean_complete = tx_clean_complete = false;
 			continue;
 		}
 		arm_wb |= ring->arm_wb;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index 790aaeff..f98ce7e4 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -530,18 +530,22 @@ static void i40e_set_rs_bit(struct i40e_ring *xdp_ring)
  * i40e_xmit_zc - Performs zero-copy Tx AF_XDP
  * @xdp_ring: XDP Tx ring
  * @budget: NAPI budget
+ * @tx_cleaned: Out parameter of the TX packets processed
  *
  * Returns true if the work is finished.
  **/
-static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
+static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget,
+			 unsigned int *tx_cleaned)
 {
 	struct xdp_desc *descs = xdp_ring->xsk_pool->tx_descs;
 	u32 nb_pkts, nb_processed = 0;
 	unsigned int total_bytes = 0;
 
 	nb_pkts = xsk_tx_peek_release_desc_batch(xdp_ring->xsk_pool, budget);
-	if (!nb_pkts)
+	if (!nb_pkts) {
+		*tx_cleaned = 0;
 		return true;
+	}
 
 	if (xdp_ring->next_to_use + nb_pkts >= xdp_ring->count) {
 		nb_processed = xdp_ring->count - xdp_ring->next_to_use;
@@ -558,6 +562,7 @@ static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
 
 	i40e_update_tx_stats(xdp_ring, nb_pkts, total_bytes);
 
+	*tx_cleaned = nb_pkts;
 	return nb_pkts < budget;
 }
 
@@ -581,10 +586,12 @@ static void i40e_clean_xdp_tx_buffer(struct i40e_ring *tx_ring,
  * i40e_clean_xdp_tx_irq - Completes AF_XDP entries, and cleans XDP entries
  * @vsi: Current VSI
  * @tx_ring: XDP Tx ring
+ * @tx_cleaned: out parameter of number of TXes cleaned
  *
  * Returns true if cleanup/tranmission is done.
  **/
-bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_ring)
+bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_ring,
+			   unsigned int *tx_cleaned)
 {
 	struct xsk_buff_pool *bp = tx_ring->xsk_pool;
 	u32 i, completed_frames, xsk_frames = 0;
@@ -634,7 +641,7 @@ bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_ring)
 	if (xsk_uses_need_wakeup(tx_ring->xsk_pool))
 		xsk_set_tx_need_wakeup(tx_ring->xsk_pool);
 
-	return i40e_xmit_zc(tx_ring, I40E_DESC_UNUSED(tx_ring));
+	return i40e_xmit_zc(tx_ring, I40E_DESC_UNUSED(tx_ring), tx_cleaned);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.h b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
index 821df24..396ed11 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
@@ -30,7 +30,8 @@ int i40e_xsk_pool_setup(struct i40e_vsi *vsi, struct xsk_buff_pool *pool,
 bool i40e_alloc_rx_buffers_zc(struct i40e_ring *rx_ring, u16 cleaned_count);
 int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget);
 
-bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_ring);
+bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_ring,
+			   unsigned int *tx_cleaned);
 int i40e_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags);
 int i40e_realloc_rx_bi_zc(struct i40e_vsi *vsi, bool zc);
 void i40e_clear_rx_bi_zc(struct i40e_ring *rx_ring);
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
