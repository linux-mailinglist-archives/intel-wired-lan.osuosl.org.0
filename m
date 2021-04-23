Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AD8368D13
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Apr 2021 08:21:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F0E454060D;
	Fri, 23 Apr 2021 06:21:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id prBXBNFofU5o; Fri, 23 Apr 2021 06:21:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 091B640608;
	Fri, 23 Apr 2021 06:21:55 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B21461BF3BE
 for <intel-wired-lan@osuosl.org>; Fri, 23 Apr 2021 06:21:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7968740604
 for <intel-wired-lan@osuosl.org>; Fri, 23 Apr 2021 06:21:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZIVkR8HI15yw for <intel-wired-lan@osuosl.org>;
 Fri, 23 Apr 2021 06:21:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D9D1F4060D
 for <intel-wired-lan@osuosl.org>; Fri, 23 Apr 2021 06:21:23 +0000 (UTC)
IronPort-SDR: Jus8gVwAy5WHm++SU5PBUdK3BwjXBpTLIHe+W7rbyIAlgKfquc0E3YniJbtyd7BFV/Ajh1wtEu
 /RV0zRTEN2qQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9962"; a="176146106"
X-IronPort-AV: E=Sophos;i="5.82,245,1613462400"; d="scan'208";a="176146106"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2021 23:21:22 -0700
IronPort-SDR: Wkol5ZQMeNb/VEefi3tSWAtkD+jZZ4bUWOS/19iV6/ZOAKGkzm5JhVYOK4p1N1XLEcmM7il47G
 NwWH/lxI/JZA==
X-IronPort-AV: E=Sophos;i="5.82,245,1613462400"; d="scan'208";a="617897378"
Received: from coffy.sc.intel.com ([10.3.79.166])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2021 23:21:20 -0700
From: Jithu Joseph <jithu.joseph@intel.com>
To: intel-wired-lan@osuosl.org
Date: Thu, 22 Apr 2021 23:25:49 -0700
Message-Id: <20210423062555.14972-4-jithu.joseph@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210423062555.14972-1-jithu.joseph@intel.com>
References: <20210423062555.14972-1-jithu.joseph@intel.com>
Subject: [Intel-wired-lan] [PATCH v6 3/9] igc: Refactor igc_clean_rx_ring()
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
Cc: kuba@kernel.org, Andre Guedes <andre.guedes@intel.com>,
 Vedang Patel <vedang.patel@intel.com>
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
index f151ede4427f..82bed83766c8 100644
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
