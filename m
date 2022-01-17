Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF05491048
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jan 2022 19:29:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 620B860BF5;
	Mon, 17 Jan 2022 18:29:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nqrqdVSlwoLx; Mon, 17 Jan 2022 18:29:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B79E60B49;
	Mon, 17 Jan 2022 18:29:30 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CD4AA1BF2F3
 for <intel-wired-lan@osuosl.org>; Mon, 17 Jan 2022 18:29:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C61B04040C
 for <intel-wired-lan@osuosl.org>; Mon, 17 Jan 2022 18:29:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OZo9YZo_iGaX for <intel-wired-lan@osuosl.org>;
 Mon, 17 Jan 2022 18:29:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0274E40374
 for <intel-wired-lan@osuosl.org>; Mon, 17 Jan 2022 18:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642444163;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+1z91pm1i6bzhtBA9nj8cTKaML2rfHmjBytKfTOFMZ4=;
 b=EyU9FFdgyG60ujr+pDXopLkPy/viibVZT7EKjq7D4exV0tjSEQz4nq1lGGxUGWPFt74WKh
 xc/hbdBrKQpkmCB1UtCHau/KjBR/n3g+MXWV5BuDqRJiN6elQDcIBn+LNtxumKVkLYvug1
 +kI/cH5jWU2g320Q6rCWRf/eTOKe2wk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-661-zKk6zmE3MC-Q1RRFPMFZlA-1; Mon, 17 Jan 2022 13:29:19 -0500
X-MC-Unique: zKk6zmE3MC-Q1RRFPMFZlA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8FB651017985;
 Mon, 17 Jan 2022 18:29:18 +0000 (UTC)
Received: from calimero.vinschen.de (ovpn-112-3.rdu2.redhat.com [10.10.112.3])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0634D7ED8E;
 Mon, 17 Jan 2022 18:29:17 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id 8063AA80D66; Mon, 17 Jan 2022 19:29:15 +0100 (CET)
From: Corinna Vinschen <vinschen@redhat.com>
To: intel-wired-lan@osuosl.org, netdev@vger.kernel.org,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Mon, 17 Jan 2022 19:29:15 +0100
Message-Id: <20220117182915.1283151-4-vinschen@redhat.com>
In-Reply-To: <20220117182915.1283151-1-vinschen@redhat.com>
References: <20220117182915.1283151-1-vinschen@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Subject: [Intel-wired-lan] [PATCH 3/3 net-next v5] igb/igc: RX queues: fix
 DMA leak in error case
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When setting up the rx queues, igb and igc neglect to free DMA memory
in error case.  Add matching dma_free_coherent calls.

Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 1 +
 drivers/net/ethernet/intel/igc/igc_main.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index cea89d301bfd..343568d4ff7f 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -4389,6 +4389,7 @@ int igb_setup_rx_resources(struct igb_ring *rx_ring)
 	return 0;
 
 err:
+	dma_free_coherent(dev, rx_ring->size, rx_ring->desc, rx_ring->dma);
 	vfree(rx_ring->rx_buffer_info);
 	rx_ring->rx_buffer_info = NULL;
 	dev_err(dev, "Unable to allocate memory for the Rx descriptor ring\n");
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 56ed0f1463e5..f323cec0b74f 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -540,6 +540,7 @@ int igc_setup_rx_resources(struct igc_ring *rx_ring)
 	return 0;
 
 err:
+	dma_free_coherent(dev, rx_ring->size, rx_ring->desc, rx_ring->dma);
 	vfree(rx_ring->rx_buffer_info);
 	rx_ring->rx_buffer_info = NULL;
 	netdev_err(ndev, "Unable to allocate memory for Rx descriptor ring\n");
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
