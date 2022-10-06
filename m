Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA9D5F7202
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Oct 2022 01:45:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7DBAC4018B;
	Thu,  6 Oct 2022 23:45:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7DBAC4018B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665099904;
	bh=eMwiGlV06m7H89Z/huNj+rnHxxaLFp948ePfuOcgXWw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5YVaI+2WLERAxt/ZqaT2UYOYGFf+3U+uJkFHkbemRWxdCBR/YKye0FkH5WVwg+Vc9
	 faY1hcMuQ/oI6urdgJjvbJeEKiS3O4eVMFdUcHXvVMynwfRi0evvhQerCkNhRJNPwP
	 dKRzDhlLVowWCEZhFDCAaeP0BQgMJNNVmcdxROUBWmItVjQ28+7Y6huCjQJJ2gtKDW
	 HUYO4UTzt8Gtu5/8GVdYBgTgt9Ak2egeLfPJegCNGbFkZpscmr3P/ERRbCAdKjs/MM
	 V1MCYeQLKtPzRIqR8nCr/KpZ8QTPqiTqaeDd4bQs3oxLoznAVR6nB1PD0D0gFpD97R
	 UUpUg4JGuR2rg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I63v4jnUwqn6; Thu,  6 Oct 2022 23:45:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4FCF840126;
	Thu,  6 Oct 2022 23:45:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4FCF840126
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 47C411BF3BE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 23:44:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2341640126
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 23:44:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2341640126
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XEK4aUA9Z_Vl for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Oct 2022 23:44:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0985E400C8
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com
 [IPv6:2607:f8b0:4864:20::52d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0985E400C8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 23:44:52 +0000 (UTC)
Received: by mail-pg1-x52d.google.com with SMTP id f193so3242680pgc.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Oct 2022 16:44:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=references:in-reply-to:message-id:date:subject:cc:to:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=U0EN7jLsuXZw8oNWja5MPj7Nd3Qv6VMTCazforCQivc=;
 b=B3pfJnbj1KXAU3J9IBPbimRCYhBmp86qGO6Db6LSnj47QPhFegHbS3mmjGr7NkTti4
 s2cbJnWzfhJXHyk83mhJsAfx14qXueDckSimmgf56y+GOlDd3Wy4ch/hG9UNxzR93cZj
 5FU5Ap1JfWrdY9X4Nnjc/AmQkFcGGvD/2gMWm3lXdRdo+Qz92/PC5dcxJGh+rXZHk7QW
 CE2+5ds7oAhkeFPoJefgvK6Xm2pYbdTnoM8cDexnT+5QaTrrX35dtfsKPEoKAWwe4Rwb
 /DFzuh866nj9TcH38gWADsr24A7wTFansGUOvu1OuxIkNJhw8vufVeOFt3bX8Fw2j9gT
 0oyw==
X-Gm-Message-State: ACrzQf3qO94qQJXg4nrS5XBlWiktRBbWKSjkrSf+PXHWYa67QHqzrmWp
 4G1J2pEK1tzM9ELRefkg37BE5fVhBQxR0PiupGn0y1+NOaqiynYi91xsxA5AVwwcOb9lgt7hR9W
 PhYoJqHciDEbnP9/i6X0Q/hVU3YtxBmlpybjuqRaoKP9YWs8iId6GPan+5WTqCaIp1qAxM2vdFl
 WVpEnxLw==
X-Google-Smtp-Source: AMsMyM4ogYraLVpaw9GhdK68Q1lMZBFPrT7ISGNg1QZjtLvCgJhLnA2y7jclsn24lXrTJpzkkveqhQ==
X-Received: by 2002:a05:6a00:1412:b0:557:d887:2025 with SMTP id
 l18-20020a056a00141200b00557d8872025mr1836009pfu.39.1665099892014; 
 Thu, 06 Oct 2022 16:44:52 -0700 (PDT)
Received: from localhost.localdomain (c-24-6-151-244.hsd1.ca.comcast.net.
 [24.6.151.244]) by smtp.gmail.com with ESMTPSA id
 u4-20020a631404000000b0045935b12e97sm308124pgl.36.2022.10.06.16.44.49
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Oct 2022 16:44:51 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Oct 2022 16:43:56 -0700
Message-Id: <1665099838-94839-3-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1665099838-94839-1-git-send-email-jdamato@fastly.com>
References: <1665099838-94839-1-git-send-email-jdamato@fastly.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=U0EN7jLsuXZw8oNWja5MPj7Nd3Qv6VMTCazforCQivc=;
 b=Tq0URMt/LggTHPpCA1iBYt/pWGIF36obVvS/UssCdLm4v18Rsv114vQA0qLu7WrrMn
 rtWOtBjZKn47aewcQQAWEvI3dbh1FoNunkIwkySZnE0IDXwcg9vge2jwos2Q5/UGATBb
 I000yVqDmWQC45BUoeNblgat6Q4Uzhl501r6s=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=Tq0URMt/
Subject: [Intel-wired-lan] [next-queue v3 2/4] i40e: Record number TXes
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
