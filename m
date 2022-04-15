Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8121F5057D7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Apr 2022 15:55:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E789B61101;
	Mon, 18 Apr 2022 13:55:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D0_Xc18ecs0U; Mon, 18 Apr 2022 13:55:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 00F6860692;
	Mon, 18 Apr 2022 13:55:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9C9E11BF30E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 21:05:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9789D4091E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 21:05:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YIxUe1EHKZRo for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Apr 2022 21:05:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com
 [IPv6:2607:f8b0:4864:20::22e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A353F408FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 21:05:55 +0000 (UTC)
Received: by mail-oi1-x22e.google.com with SMTP id k10so9376495oia.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 14:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id;
 bh=c+jRzeRaOtb5M7J5uF0lBdN76Vm6jmRXpE23TnVclyI=;
 b=Kf51MzpPbFNnuYynK3VGAw2zwks2ichcsDV2fcpBa83qFzY0+tzTVsmChDWOh+ZdO+
 yP5TDCYcIOsXZftHJrE3y4qtTKJy4lZp5jxDu/piSKCC3669DzNGpchHtW1LK71xYBYu
 EUfsKlM5wrUDSigLT8i1ixKtABNIOkjTGXiXn6f9QtsLwYzQ7QTk+MDjO9N7urL1N9JX
 66tm7Zpw0QE4l8/EiyBnIjK+LMvtlFYFMQBwool0nhH7MGoQ4E9sfaj9yQ275tsPPV+d
 JS+BV78DV8BptUgyh48ehiOPHeUxbJ/tVSdiaF3JZpGKOsVatCkJqq2aWOlT+HcYh+E4
 ZbPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=c+jRzeRaOtb5M7J5uF0lBdN76Vm6jmRXpE23TnVclyI=;
 b=vQLdUcAp7OuLy586wQnbfpmxyNu4O6mAa1rOOlnlo6adXGWpC99YtpY4L1OEABWH0M
 /P3qhZwV8bMtOLY24viyier2oGQgI6B2uwQfivInrUSFwVm/K8rzpmcffgGJ/o3DAOEu
 Fwv+VKscC7Iz1WmDJZ/CQrCBeDMrf6Do1R5neTTLtwFXffEMoFognN8mLvWQvT8fZQIk
 dxL5dH1bUF6dUQOqJa3J7izN9edkoMGXJVx1WhFDsaP1mmVthyqbQWCwWtlCCj512fd6
 38BjTKEYP9SxByzWqSRD0KK6Bfa3OB6R3tmLIDuV3kOSMRW01nPI7zsN/ZaBFDkxbZHR
 OOMQ==
X-Gm-Message-State: AOAM530K/Y1ewdEWIgo9fR3sPqiFHqEQEBJe8EXoFM6bgUaYGwgDpOgi
 Hhk0edwm5SwmQt8pFtdqYdg=
X-Google-Smtp-Source: ABdhPJw4UQPzzMTfzaIdqFrRq5KfZCX15V+2ATQdVLWJtVZsRPxurqsi+SOddaG27IU/KaErUYP7vQ==
X-Received: by 2002:a05:6808:178d:b0:2fa:6573:d78 with SMTP id
 bg13-20020a056808178d00b002fa65730d78mr330810oib.241.1650056754737; 
 Fri, 15 Apr 2022 14:05:54 -0700 (PDT)
Received: from toe.qscaudio.com ([65.113.122.35])
 by smtp.gmail.com with ESMTPSA id
 bh20-20020a056808181400b002fa6ea63b7asm1528222oib.20.2022.04.15.14.05.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Apr 2022 14:05:54 -0700 (PDT)
From: Jeff Evanson <jeff.evanson@gmail.com>
X-Google-Original-From: Jeff Evanson <jeff.evanson@qsc.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Fri, 15 Apr 2022 15:05:46 -0600
Message-Id: <20220415210546.11294-1-jeff.evanson@qsc.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Mon, 18 Apr 2022 13:54:51 +0000
Subject: [Intel-wired-lan] [PATCH 2/2] Trigger proper interrupts in
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
Cc: jeff.evanson@qsc.com, jeff.evanson@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

in igc_xsk_wakeup, trigger the proper interrupt based on whether flags
contains XDP_WAKEUP_RX and/or XDP_WAKEUP_TX

Signed-off-by: Jeff Evanson <jeff.evanson@qsc.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 36 +++++++++++++++++------
 1 file changed, 27 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index a36a18c84aeb..d706de95dc06 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6073,7 +6073,7 @@ static void igc_trigger_rxtxq_interrupt(struct igc_adapter *adapter,
 int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)
 {
 	struct igc_adapter *adapter = netdev_priv(dev);
-	struct igc_q_vector *q_vector;
+	struct igc_q_vector *txq_vector = 0, *rxq_vector = 0;
 	struct igc_ring *ring;
 
 	if (test_bit(__IGC_DOWN, &adapter->state))
@@ -6082,17 +6082,35 @@ int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)
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
+	if (rxq_vector &&
+	    !napi_if_scheduled_mark_missed(&rxq_vector->napi))
+		igc_trigger_rxtxq_interrupt(adapter, rxq_vector);
 
-	q_vector = adapter->q_vector[queue_id];
-	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
-		igc_trigger_rxtxq_interrupt(adapter, q_vector);
+	if (txq_vector && txq_vector != rxq_vector &&
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
