Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6042DD9D1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Dec 2020 21:24:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C89BA86F16;
	Thu, 17 Dec 2020 20:24:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cioKclZOsoke; Thu, 17 Dec 2020 20:24:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2397F86E3C;
	Thu, 17 Dec 2020 20:24:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 064471BF418
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Dec 2020 20:24:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 02F5F878A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Dec 2020 20:24:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g5gE5RozgeG1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Dec 2020 20:24:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 94259877A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Dec 2020 20:24:30 +0000 (UTC)
IronPort-SDR: IVwkYQBBQi7qPUCIWJJ2u6ZHDxPgQrfnYwWbs8MjbGlXuTkMdeY9EILXwGWphmdTlZpiRSCb32
 IB41k50uZcUA==
X-IronPort-AV: E=McAfee;i="6000,8403,9838"; a="155130686"
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400"; d="scan'208";a="155130686"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 12:24:30 -0800
IronPort-SDR: B8bIYz6I0ZOQAKBb+fP17q+hc0oNzX+HaoYj7AwFBQqL4LUmMG7OVQZnh7Okd/5IPgCXpiW4yV
 LeONLTvEHGcA==
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400"; d="scan'208";a="413611936"
Received: from ogmeshki-mobl.amr.corp.intel.com ([10.212.162.252])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 12:24:30 -0800
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Dec 2020 12:24:08 -0800
Message-Id: <20201217202415.77891-4-andre.guedes@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201217202415.77891-1-andre.guedes@intel.com>
References: <20201217202415.77891-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 03/10] igc: Refactor igc_clean_rx_ring()
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

This patch refactors igc_clean_rx_ring() helper, preparing the code for
AF_XDP zero-copy support which is added by upcoming patches.

The refactor consists of encapsulating page-shared specific code into
its own helper and leave common code that will be shared by both
page-shared and xsk pool in igc_clean_rx_ring().

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 25 ++++++++++++++---------
 1 file changed, 15 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 56b791b356dc..d591c1e0581f 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -346,16 +346,10 @@ static int igc_setup_all_tx_resources(struct igc_adapter *adapter)
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
 
-	clear_ring_uses_large_buffer(rx_ring);
-
 	dev_kfree_skb(rx_ring->skb);
 	rx_ring->skb = NULL;
 
@@ -385,10 +379,21 @@ static void igc_clean_rx_ring(struct igc_ring *rx_ring)
 		if (i == rx_ring->count)
 			i = 0;
 	}
+}
 
-	rx_ring->next_to_alloc = 0;
-	rx_ring->next_to_clean = 0;
-	rx_ring->next_to_use = 0;
+/**
+ * igc_clean_rx_ring - Free Rx Buffers per Queue
+ * @ring: ring to free buffers from
+ */
+static void igc_clean_rx_ring(struct igc_ring *ring)
+{
+	clear_ring_uses_large_buffer(ring);
+
+	igc_clean_rx_ring_page_shared(ring);
+
+	ring->next_to_alloc = 0;
+	ring->next_to_clean = 0;
+	ring->next_to_use = 0;
 }
 
 /**
-- 
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
