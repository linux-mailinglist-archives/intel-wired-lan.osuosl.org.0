Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C103212B4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Feb 2021 10:08:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4B46B6F54D;
	Mon, 22 Feb 2021 09:08:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WxsDYQLG6uzw; Mon, 22 Feb 2021 09:08:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 13D3F605DD;
	Mon, 22 Feb 2021 09:08:17 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2E1251BF38E
 for <intel-wired-lan@osuosl.org>; Mon, 22 Feb 2021 09:08:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2A8EE85CFE
 for <intel-wired-lan@osuosl.org>; Mon, 22 Feb 2021 09:08:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BsJoP5TucNR8 for <intel-wired-lan@osuosl.org>;
 Mon, 22 Feb 2021 09:08:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 74E8285CBC
 for <intel-wired-lan@osuosl.org>; Mon, 22 Feb 2021 09:08:11 +0000 (UTC)
IronPort-SDR: D4ekSOXj6ajVJd3OVadDfKFatjw4r/s78L9PynmqT0jHYUcNId939CnsKIsmuXAmSEuxuIRMTt
 oKvzWi1kAxTA==
X-IronPort-AV: E=McAfee;i="6000,8403,9902"; a="245808751"
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; d="scan'208";a="245808751"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 01:08:10 -0800
IronPort-SDR: se15iUCRbs46XivgBesP5jQLchnt9prBbd5tXhqwcE84lLPk9KWEvtI2wpPsAdrg7cohEnxjYU
 GbbwmYUgXxjg==
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; d="scan'208";a="441321487"
Received: from coffy.sc.intel.com ([10.3.79.166])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 01:07:59 -0800
From: Jithu Joseph <jithu.joseph@intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon, 22 Feb 2021 01:09:30 -0800
Message-Id: <20210222090936.6768-4-jithu.joseph@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210222090936.6768-1-jithu.joseph@intel.com>
References: <20210222090936.6768-1-jithu.joseph@intel.com>
Subject: [Intel-wired-lan] [PATCH v4 3/9] igc: Refactor igc_clean_rx_ring()
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
Cc: Andre Guedes <andre.guedes@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Andre Guedes <andre.guedes@intel.com>

Refactor igc_clean_rx_ring() helper, preparing the code for AF_XDP
zero-copy support which is added by upcoming patches.

The refactor consists of encapsulating page-shared specific code into
its own helper, leaving common code that will be shared by both
page-shared and xsk pool in igc_clean_rx_ring().

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
Signed-off-by: Vedang Patel <vedang.patel@intel.com>
Signed-off-by: Jithu Joseph <jithu.joseph@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 23 ++++++++++++++---------
 1 file changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index d9d60c6c6726..bc086d2f738b 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -346,11 +346,7 @@ static int igc_setup_all_tx_resources(struct igc_adapter *adapter)
 	return err;
 }
 
-/**
- * igc_clean_rx_ring - Free Rx Buffers per Queue
- * @rx_ring: ring to free buffers from
- */
-static void igc_clean_rx_ring(struct igc_ring *rx_ring)
+static void igc_clean_rx_ring_page_shared(struct igc_ring *rx_ring)
 {
 	u16 i = rx_ring->next_to_clean;
 
@@ -383,12 +379,21 @@ static void igc_clean_rx_ring(struct igc_ring *rx_ring)
 		if (i == rx_ring->count)
 			i = 0;
 	}
+}
+
+/**
+ * igc_clean_rx_ring - Free Rx Buffers per Queue
+ * @ring: ring to free buffers from
+ */
+static void igc_clean_rx_ring(struct igc_ring *ring)
+{
+	igc_clean_rx_ring_page_shared(ring);
 
-	clear_ring_uses_large_buffer(rx_ring);
+	clear_ring_uses_large_buffer(ring);
 
-	rx_ring->next_to_alloc = 0;
-	rx_ring->next_to_clean = 0;
-	rx_ring->next_to_use = 0;
+	ring->next_to_alloc = 0;
+	ring->next_to_clean = 0;
+	ring->next_to_use = 0;
 }
 
 /**
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
