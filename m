Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF4C5F7204
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Oct 2022 01:45:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 784BA83FF3;
	Thu,  6 Oct 2022 23:45:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 784BA83FF3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665099908;
	bh=r28j5i0twlPwcajLEJfJ3rElq86KiXrDCwZ1nf51Nj0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wl920XxBJ7Exoycnv6zamhUEXOpIUtaoz6OAEQS+1XhuAGRJhvvEKE2Yze+7TJNWa
	 s6mLxdO3tmr6P2ES2jlw3uSGQ+vEIoSufau9/HO/+Kup4i9xjJWJnYLTbKmG2THqD/
	 aR7Pntb6W8cH+/VPM91Znb4sb/I/6OdFV1pNojmUHErtWmDCWbc9ZQ/Oo0VIyGQPCA
	 haM37pW6GqEk7JxZ4yGP5pzEKf3PhScb/crL6wXIXShAivBW7leCjomX8n/ouSiM+3
	 rhNfwxzhKgk8ngSzJR/OdEErq8v9cPz3ZotaGMC5dxXsuIVkIG12lOT3gGx6tGqUN2
	 VeuP0lxH2qidA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XQ4Jhk62YLlR; Thu,  6 Oct 2022 23:45:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 460D183FE1;
	Thu,  6 Oct 2022 23:45:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 460D183FE1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3383E1BF3BE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 23:44:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1BAFE61030
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 23:44:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1BAFE61030
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZjcO9AcW-LUo for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Oct 2022 23:44:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 41EC860F93
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 41EC860F93
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 23:44:54 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id
 e11-20020a17090a77cb00b00205edbfd646so5758701pjs.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Oct 2022 16:44:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=references:in-reply-to:message-id:date:subject:cc:to:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=w872s1qBw4HRY/5SU+ndTlbJcsJOR5NsN3SDVLlFieY=;
 b=GWpdUrs0krGLEhbSPz4aZM9nMob7e9RipBKtFeY+7kmmWquNcfGlLckM6MUu17mGqf
 1a9IlWEGGsUFoJc6SjWCqP214kBClrKIKvL61BQkWhVbD8hMUDeoj+O5nTp6gJZrVms9
 irPGzJp1L+iFVTxLoPf44OdaJttbxCsKlTGhHUNmxbcaa966ee9uZuiBpXPtXsQuV6uC
 xLlYVV8mYePuP4Yy7LbLmFdNTaN7LWhOh2z3Mu7ZFqdD96ZBdCwg7OJLKylLxuR93ZxZ
 D7RSHf7/PCsksdqMjGuxAKJEnpdBlAJTNQVL3VlcVL8wEp9JQyUsOFZvigKHtU9C/5QC
 a5ng==
X-Gm-Message-State: ACrzQf3bs7JNJyY+JW0rOoLhYTWhDm5f1j9d5qVpgWsOQZsQVVXWFqSO
 9lHVP+yGH3hYq+cmyszatkURrZOkAILK1CPtY63oBvXuY03V2fkYQUpbMBzOuTg5D2njPCMLct0
 OlfTqDO96njh1GQMCpkhMX/FPkoqEfIQyXgSel0UOBnEyVnVR6JwMJQyhQKtrCgZmIGNITB3Ffz
 bimlnbvA==
X-Google-Smtp-Source: AMsMyM5EY1fIXvRtC6TcL/Qjn7zpaAbac2QU/hQaxn8cLRA6dSx76BQ6zDS7UWnPWW47kkeQcAsTgQ==
X-Received: by 2002:a17:902:7290:b0:17f:d04b:bf57 with SMTP id
 d16-20020a170902729000b0017fd04bbf57mr794668pll.147.1665099893365; 
 Thu, 06 Oct 2022 16:44:53 -0700 (PDT)
Received: from localhost.localdomain (c-24-6-151-244.hsd1.ca.comcast.net.
 [24.6.151.244]) by smtp.gmail.com with ESMTPSA id
 u4-20020a631404000000b0045935b12e97sm308124pgl.36.2022.10.06.16.44.52
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Oct 2022 16:44:52 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Oct 2022 16:43:57 -0700
Message-Id: <1665099838-94839-4-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1665099838-94839-1-git-send-email-jdamato@fastly.com>
References: <1665099838-94839-1-git-send-email-jdamato@fastly.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=w872s1qBw4HRY/5SU+ndTlbJcsJOR5NsN3SDVLlFieY=;
 b=SeuNIYCUcup2mMlwYPFRTgX8p9zOZFV+AL/B3uvSeDBwUaanZo8r75FvungwHrk8QQ
 9HiegBuZDgGsQE2mwPz9V0HC/t56Jm6tFDVWxJCGGDDpa2Mq5bPOpHVfmKcRtEfVNGMJ
 ekGdl2hlbyGJNEnlTrQgugzdFpBeHKziPLkw4=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=SeuNIYCU
Subject: [Intel-wired-lan] [next-queue v3 3/4] i40e: Record number of RXes
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
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 14 ++++++++++----
 drivers/net/ethernet/intel/i40e/i40e_xsk.c  |  6 +++++-
 drivers/net/ethernet/intel/i40e/i40e_xsk.h  |  3 ++-
 3 files changed, 17 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index a2cc98e..adf133b 100644
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
@@ -2694,11 +2698,13 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
 	struct i40e_vsi *vsi = q_vector->vsi;
 	struct i40e_ring *ring;
 	bool tx_clean_complete = true;
+	bool rx_clean_complete = true;
 	bool clean_complete = true;
 	bool arm_wb = false;
 	int budget_per_ring;
 	int work_done = 0;
 	unsigned int tx_cleaned = 0;
+	unsigned int rx_cleaned = 0;
 
 	if (test_bit(__I40E_VSI_DOWN, vsi->state)) {
 		napi_complete(napi);
@@ -2738,13 +2744,13 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
 
 	i40e_for_each_ring(ring, q_vector->rx) {
 		int cleaned = ring->xsk_pool ?
-			      i40e_clean_rx_irq_zc(ring, budget_per_ring) :
-			      i40e_clean_rx_irq(ring, budget_per_ring);
+			      i40e_clean_rx_irq_zc(ring, budget_per_ring, &rx_cleaned) :
+			      i40e_clean_rx_irq(ring, budget_per_ring, &rx_cleaned);
 
 		work_done += cleaned;
 		/* if we clean as many as budgeted, we must not be done */
 		if (cleaned >= budget_per_ring)
-			clean_complete = false;
+			clean_complete = rx_clean_complete = false;
 	}
 
 	/* If work not completed, return budget and polling will return */
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
