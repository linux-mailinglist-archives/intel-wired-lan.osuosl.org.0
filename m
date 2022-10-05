Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 030CB5F5BA6
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Oct 2022 23:23:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8BD39405BE;
	Wed,  5 Oct 2022 21:23:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8BD39405BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665004991;
	bh=d3BiycLtcjswEhRo2LfGdhnZzb6S5TlfyErH7npug7c=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BPWM3D03a5Ogr/86XTqHUAMoqMVP4a0q6GyfFSiF7b9MU5bcS/4aJXI1jn2D5dAWP
	 UXSj8JDWX0L00bCs0sdw7nzZ5MU2qQHQBYgvZiQehUUo5MNM3UNFsjlJHTSyn4sxA7
	 7yVmZo2rAr+GosQBb8IZQqZOyUxYe5GsGUpVOxQLsVqpF4YLaSJWjvtm0U23oCSGeX
	 bWXHdC6SRskwoy3ar58CfdPyasI0R6J18NM0gKsQ6I/60f3EPtaljUpdGi9v2KdL+y
	 oUB1YDb9ukL0nRcWSlmzzX2fbhHxuNm87Hw69nqgD6u4Ua56MS+CceKoUQXGYHRaO1
	 G05A9yJLXbprg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tNDW4rBSG-dV; Wed,  5 Oct 2022 21:23:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7074B408DB;
	Wed,  5 Oct 2022 21:23:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7074B408DB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 979791BF301
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 21:22:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5F60483163
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 21:22:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F60483163
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QW5-YpdvNUZp for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Oct 2022 21:22:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9315082B1B
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9315082B1B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 21:22:56 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id z20so10057284plb.10
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Oct 2022 14:22:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=references:in-reply-to:message-id:date:subject:cc:to:from
 :x-gm-message-state:from:to:cc:subject:date;
 bh=q4JM7+U+5ija2zkoCvZioCAGm6tutm0eZk4NJurUNV4=;
 b=SsRso6WILzyX5eOipLPOtg3iDOFjA6wlQXnK7UX3osUPpRkVOjX4y7K1mlJT2i5jch
 p+U+UX94hijASKf+jtmvE90zIwM6dz852r6yGqeux6LHB5KeDCLjxuKOLlTaUscvlbGv
 hBDblQYynds7RQ0LPCicz4NsVt141jJRSZloXY6p6Y7V3DDRadCe7yPNGayEUuhLggAG
 tJc/L8SbE4sQ1ZZbKDH0GN9zJb+eoOtHuNO2EBbAasRzdJHspN0Wo+R50GHPRbddGo58
 AQPaBJ1aHSesCp3wfTdPPSe8TNbeLXUTbCtpDbkq/FjwlDESottbtKflpckR1kWdWd7E
 6jQg==
X-Gm-Message-State: ACrzQf23PiOkp2sSEY8DJU9FWT2hJY8NXYPDGZPHgW0LlIhUQoR5LSSq
 O1O5UTVRPshxGX/w95vQ08KHewAxla3FLc3Z7EKPBVlC+5Abp/trBBhn9SwxWNnKR6dMhpbmow/
 fZ1xpY/ocr1+b5/EG0JYfLp0h/RERf5GyAYq77ONW3sPR7ed6QCGMMOQrdsqsusO8/njsUzWibF
 PbsOY9Og==
X-Google-Smtp-Source: AMsMyM7py2fT6tDqPJxN4ka6WJPXRLdCqLKRbZedN3T8VjdsRp03xHOQ4PHrp4Jhj7ndTcP/o9Uhpg==
X-Received: by 2002:a17:902:8ec5:b0:179:d8f4:cb64 with SMTP id
 x5-20020a1709028ec500b00179d8f4cb64mr1435841plo.16.1665004975689; 
 Wed, 05 Oct 2022 14:22:55 -0700 (PDT)
Received: from localhost.localdomain (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181]) by smtp.gmail.com with ESMTPSA id
 q12-20020a170902dacc00b0017f7b6e970esm2404666plx.146.2022.10.05.14.22.54
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Oct 2022 14:22:55 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  5 Oct 2022 14:21:52 -0700
Message-Id: <1665004913-25656-4-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1665004913-25656-1-git-send-email-jdamato@fastly.com>
References: <1665004913-25656-1-git-send-email-jdamato@fastly.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
 :cc:subject:date;
 bh=q4JM7+U+5ija2zkoCvZioCAGm6tutm0eZk4NJurUNV4=;
 b=ScAKQ4e/26zjF3AlEMo3ibjAz8V0TQgk9Qm4zjRZTmOuN7dqjUbFgqc6mud9yu/qwJ
 WOQwHswRQH6j0NDPTiG3gZ2sN74zsBJMcXuHjTGEXK5W/TxZw//P5w4CBOhm/KUXdnKv
 zImN6+AyduYB3hf58UBCluDPaC53iVL068x7w=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=ScAKQ4e/
Subject: [Intel-wired-lan] [next-queue v2 3/4] i40e: Record number of RXes
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

Adjust i40e_clean_rx_irq and i40e_clean_rx_irq_zc to accept an out
parameter which records the number of RX packets cleaned.

Care has been taken to avoid any changes in control flow.

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 11 ++++++++---
 drivers/net/ethernet/intel/i40e/i40e_xsk.c  |  6 +++++-
 drivers/net/ethernet/intel/i40e/i40e_xsk.h  |  3 ++-
 3 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index a2cc98e..8a0d4fd 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -2426,6 +2426,7 @@ static void i40e_inc_ntc(struct i40e_ring *rx_ring)
  * i40e_clean_rx_irq - Clean completed descriptors from Rx ring - bounce buf
  * @rx_ring: rx descriptor ring to transact packets on
  * @budget: Total limit on number of packets to process
+ * @rx_cleaned: Out parameter of the number of packets processed
  *
  * This function provides a "bounce buffer" approach to Rx interrupt
  * processing.  The advantage to this is that on systems that have
@@ -2434,7 +2435,8 @@ static void i40e_inc_ntc(struct i40e_ring *rx_ring)
  *
  * Returns amount of work completed
  **/
-static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget)
+static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
+			     unsigned int *rx_cleaned)
 {
 	unsigned int total_rx_bytes = 0, total_rx_packets = 0, frame_sz = 0;
 	u16 cleaned_count = I40E_DESC_UNUSED(rx_ring);
@@ -2571,6 +2573,8 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget)
 
 	i40e_update_rx_stats(rx_ring, total_rx_bytes, total_rx_packets);
 
+	*rx_cleaned = total_rx_packets;
+
 	/* guarantee a trip back through this routine if there was a failure */
 	return failure ? budget : (int)total_rx_packets;
 }
@@ -2699,6 +2703,7 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
 	int budget_per_ring;
 	int work_done = 0;
 	unsigned int tx_cleaned = 0;
+	unsigned int rx_cleaned = 0;
 
 	if (test_bit(__I40E_VSI_DOWN, vsi->state)) {
 		napi_complete(napi);
@@ -2738,8 +2743,8 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
 
 	i40e_for_each_ring(ring, q_vector->rx) {
 		int cleaned = ring->xsk_pool ?
-			      i40e_clean_rx_irq_zc(ring, budget_per_ring) :
-			      i40e_clean_rx_irq(ring, budget_per_ring);
+			      i40e_clean_rx_irq_zc(ring, budget_per_ring, &rx_cleaned) :
+			      i40e_clean_rx_irq(ring, budget_per_ring, &rx_cleaned);
 
 		work_done += cleaned;
 		/* if we clean as many as budgeted, we must not be done */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index f98ce7e4..b1f582a0 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -378,10 +378,12 @@ static void i40e_handle_xdp_result_zc(struct i40e_ring *rx_ring,
  * i40e_clean_rx_irq_zc - Consumes Rx packets from the hardware ring
  * @rx_ring: Rx ring
  * @budget: NAPI budget
+ * @rx_cleaned: out parameter of the packets processed
  *
  * Returns amount of work completed
  **/
-int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
+int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget,
+			  unsigned int *rx_cleaned)
 {
 	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
 	u16 next_to_clean = rx_ring->next_to_clean;
@@ -452,6 +454,8 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 	i40e_finalize_xdp_rx(rx_ring, xdp_xmit);
 	i40e_update_rx_stats(rx_ring, total_rx_bytes, total_rx_packets);
 
+	*rx_cleaned = total_rx_packets;
+
 	if (xsk_uses_need_wakeup(rx_ring->xsk_pool)) {
 		if (failure || next_to_clean == rx_ring->next_to_use)
 			xsk_set_rx_need_wakeup(rx_ring->xsk_pool);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.h b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
index 396ed11..1089cc0 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
@@ -28,7 +28,8 @@ int i40e_queue_pair_enable(struct i40e_vsi *vsi, int queue_pair);
 int i40e_xsk_pool_setup(struct i40e_vsi *vsi, struct xsk_buff_pool *pool,
 			u16 qid);
 bool i40e_alloc_rx_buffers_zc(struct i40e_ring *rx_ring, u16 cleaned_count);
-int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget);
+int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget,
+			  unsigned int *rx_cleaned);
 
 bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_ring,
 			   unsigned int *tx_cleaned);
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
