Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A005089A2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Apr 2022 15:46:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3D0C84118;
	Wed, 20 Apr 2022 13:46:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9kZIExHJH54o; Wed, 20 Apr 2022 13:46:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9282A82F84;
	Wed, 20 Apr 2022 13:46:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A83981BF853
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 01:27:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 94DB64017C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 01:27:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3mRoPs9au-X6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Apr 2022 01:27:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com
 [IPv6:2001:4860:4864:20::2b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ED8E6400CC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 01:27:54 +0000 (UTC)
Received: by mail-oa1-x2b.google.com with SMTP id
 586e51a60fabf-e2fa360f6dso492504fac.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 18:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=sLw0H6R3WlK1bcOpwRAGg46brAmczPbRTJQlw64+BQ8=;
 b=ignMrrjTawt+RSJ85pYU7pXLiyjs3Ks/hQyy+Go6XWmeKMgb/NaIB461stfVcxPrP4
 cdZvnpkvayzPNy+rlxYER67Xx+obKhbVtiGtE2izGTJtB5EJmCjVQABAtaAB0srcu/ry
 drprU5w2y0gyfR8HOGUsxKIG1X/0qf99a4hH0YGqeyEYT/g04lNZ8bA7oYvx8jPU7V8l
 0x63eDNKr1euZoW6py3M/o63QlfaCqNmZTDajJ5xHKMh+KMyQBYYsAImc+K2+Y5nIAJS
 wahqAuPRHf+UYJGyFINaUf+mutvjhiR3t8ysGopcxDS+QZLxnKgbdeAFmqkXrkJUVVee
 ni9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=sLw0H6R3WlK1bcOpwRAGg46brAmczPbRTJQlw64+BQ8=;
 b=dlcdazlpIW1l2bOqWS6MMWXTSjlvyuZmVuxT99woBQjqj021tA8dDtuIx5eHi1MbR/
 deDRSzKQcV+6c5VCZ2ZGb8iHY6/6fNRa0Are1QsdV/8yoV77Oz35s77dPR/ih4G8WR3R
 eY58iNEiZqlEZsh8FPwM2XRgYVu7nURmMKHh6JgdAsv011J0dliNABQfJxmzrAySPQJg
 j0AfRD1jZPpqZB8Pw9rHxVP+m6gL2HoKVu4GQkPOQccGAbESlCTILrrYO+SiSxJkF1bG
 YFoUkJe8+a5hMCeR7b8QkOdq3lbqRvj73pz4/v7VAknx3PO4XyQJm8wby3+VsbmABjr7
 jf6w==
X-Gm-Message-State: AOAM5310md1B+hd6ViZaWwC0h84ghFTfevc5Y/NVdGXjTGHkokYnve7A
 wVe2GQu87uY661XSx4jv39g=
X-Google-Smtp-Source: ABdhPJyWXSgaXneeXdK00kRCm4zrorvjleC1IZX7daIwNfz00gwfZryMocgkAbGgY7JP06Gy/3n8vg==
X-Received: by 2002:a05:6870:f624:b0:e1:c071:121b with SMTP id
 ek36-20020a056870f62400b000e1c071121bmr594369oab.182.1650418073912; 
 Tue, 19 Apr 2022 18:27:53 -0700 (PDT)
Received: from toe.qscaudio.com ([65.113.122.35])
 by smtp.gmail.com with ESMTPSA id
 i26-20020a4a929a000000b0033a29c8d564sm4284530ooh.3.2022.04.19.18.27.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Apr 2022 18:27:53 -0700 (PDT)
From: jeff.evanson@gmail.com
X-Google-Original-From: jeff.evanson@qsc.com
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Vedang Patel <vedang.patel@intel.com>,
 Andre Guedes <andre.guedes@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jithu Joseph <jithu.joseph@intel.com>,
 intel-wired-lan@lists.osuosl.org (moderated list:INTEL ETHERNET DRIVERS),
 netdev@vger.kernel.org (open list:NETWORKING DRIVERS),
 linux-kernel@vger.kernel.org (open list)
Date: Tue, 19 Apr 2022 19:26:35 -0600
Message-Id: <20220420012635.13733-3-jeff.evanson@qsc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220420012635.13733-1-jeff.evanson@qsc.com>
References: <20220420012635.13733-1-jeff.evanson@qsc.com>
X-Mailman-Approved-At: Wed, 20 Apr 2022 13:46:02 +0000
Subject: [Intel-wired-lan] [PATCH v2 2/2] igc: Trigger proper interrupts in
 igc_xsk_wakeup
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
Cc: Jeff Evanson <jeff.evanson@qsc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jeff Evanson <jeff.evanson@qsc.com>

In igc_xsk_wakeup, trigger the proper interrupt based on whether flags
contains XDP_WAKEUP_RX and/or XDP_WAKEUP_TX.

Consider a scenario where the transmit queue interrupt is mapped to a
different irq from the receive queue. If XDP_WAKEUP_TX is set in the
flags argument, the interrupt for transmit queue must be triggered,
otherwise the transmit queue's napi_struct will never be scheduled.

In the case where both XDP_WAKEUP_TX and XDP_WAKEUP_RX are both set,
the receive interrupt should always be triggered, but the transmit
interrupt should only be triggered if its q_vector differs from the
receive queue's interrupt.

Fixes: fc9df2a0b520 ("igc: Enable RX via AF_XDP zero-copy")
---
 drivers/net/ethernet/intel/igc/igc_main.c | 40 ++++++++++++++++++-----
 1 file changed, 31 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index a36a18c84aeb..41b5d1ac8bc1 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6072,8 +6072,8 @@ static void igc_trigger_rxtxq_interrupt(struct igc_adapter *adapter,
 
 int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)
 {
+	struct igc_q_vector *txq_vector = NULL, *rxq_vector = NULL;
 	struct igc_adapter *adapter = netdev_priv(dev);
-	struct igc_q_vector *q_vector;
 	struct igc_ring *ring;
 
 	if (test_bit(__IGC_DOWN, &adapter->state))
@@ -6082,17 +6082,39 @@ int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)
 	if (!igc_xdp_is_enabled(adapter))
 		return -ENXIO;
 
-	if (queue_id >= adapter->num_rx_queues)
-		return -EINVAL;
+	if (flags & XDP_WAKEUP_RX) {
+		if (queue_id >= adapter->num_rx_queues)
+			return -EINVAL;
 
-	ring = adapter->rx_ring[queue_id];
+		ring = adapter->rx_ring[queue_id];
+		if (!ring->xsk_pool)
+			return -ENXIO;
 
-	if (!ring->xsk_pool)
-		return -ENXIO;
+		rxq_vector = ring->q_vector;
+	}
+
+	if (flags & XDP_WAKEUP_TX) {
+		if (queue_id >= adapter->num_tx_queues)
+			return -EINVAL;
+
+		ring = adapter->tx_ring[queue_id];
+		if (!ring->xsk_pool)
+			return -ENXIO;
+
+		txq_vector = ring->q_vector;
+	}
+
+	if (rxq_vector != NULL &&
+	    !napi_if_scheduled_mark_missed(&rxq_vector->napi))
+		igc_trigger_rxtxq_interrupt(adapter, rxq_vector);
 
-	q_vector = adapter->q_vector[queue_id];
-	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
-		igc_trigger_rxtxq_interrupt(adapter, q_vector);
+	/* only trigger tx interrupt if the receive interrupt was not
+	 * triggered or if its irq differs from the receive queue's irq
+	 */
+	if (txq_vector != NULL &&
+            txq_vector != rxq_vector &&
+	    !napi_if_scheduled_mark_missed(&txq_vector->napi))
+		igc_trigger_rxtxq_interrupt(adapter, txq_vector);
 
 	return 0;
 }
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
