Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 922A524121A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Aug 2020 23:08:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C9BAF858B5;
	Mon, 10 Aug 2020 21:08:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lsW-8062x5fx; Mon, 10 Aug 2020 21:08:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EE8ED85A58;
	Mon, 10 Aug 2020 21:08:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D487F1BF977
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Aug 2020 21:08:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CEBE687D80
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Aug 2020 21:08:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UJn4XELaP4s8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Aug 2020 21:08:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0A3D687D86
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Aug 2020 21:08:41 +0000 (UTC)
IronPort-SDR: JpjKy8SD8iE7GKs5VOFxNQXkOxA2SuBZSFQVnOCaaAaTG1Ri844Wprnnqef1GUN2sJst16A1jF
 IqXKpQroreFA==
X-IronPort-AV: E=McAfee;i="6000,8403,9709"; a="171663421"
X-IronPort-AV: E=Sophos;i="5.75,458,1589266800"; d="scan'208";a="171663421"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2020 14:08:40 -0700
IronPort-SDR: 8GOcTjTemrX8V16Ue5VtwsfS5SQXQLm172D/o8XmAEIOoQzZTF3u0kLmCgrGEurR1mdHkVfpSp
 QsEjJRB8Kz1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,458,1589266800"; d="scan'208";a="334361402"
Received: from cjjeffrx-ti2.amr.corp.intel.com ([10.209.119.14])
 by orsmga007.jf.intel.com with ESMTP; 10 Aug 2020 14:08:40 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 10 Aug 2020 14:08:31 -0700
Message-Id: <20200810210832.34699-2-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200810210832.34699-1-andre.guedes@intel.com>
References: <20200810210832.34699-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 2/3] igc: Check descriptor's DD bit in
 igc_clean_rx_irq()
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

I225 advanced receive descriptor provides the Descriptor Done (DD) bit
which indicates hardware is done with that receive descriptor and
software should handle it.

This patch fixes igc_clean_rx_irq() so we check that bit to determine if
we are done handling incoming packets instead of checking the packet
length information. It also gets rid of rx_desc->wb.upper.length
assignments spread through the code required to make the previous
approach to work.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h |  1 +
 drivers/net/ethernet/intel/igc/igc_main.c    | 14 ++++++++------
 2 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 21695476b8a5..43a7c7944804 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -316,6 +316,7 @@
 #define IGC_SRRCTL_TIMER0SEL(timer)	(((timer) & 0x3) << 17)
 
 /* Receive Descriptor bit definitions */
+#define IGC_RXD_STAT_DD		0x01	/* Descriptor Done */
 #define IGC_RXD_STAT_EOP	0x02	/* End of Packet */
 #define IGC_RXD_STAT_IXSM	0x04	/* Ignore checksum */
 #define IGC_RXD_STAT_UDPCS	0x10	/* UDP xsum calculated */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 298f408519f4..0c481dc906ad 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -551,7 +551,6 @@ static void igc_configure_rx_ring(struct igc_adapter *adapter,
 
 	/* initialize Rx descriptor 0 */
 	rx_desc = IGC_RX_DESC(ring, 0);
-	rx_desc->wb.upper.length = 0;
 
 	/* enable receive descriptor fetching */
 	rxdctl |= IGC_RXDCTL_QUEUE_ENABLE;
@@ -1880,9 +1879,6 @@ static void igc_alloc_rx_buffers(struct igc_ring *rx_ring, u16 cleaned_count)
 			i -= rx_ring->count;
 		}
 
-		/* clear the length for the next_to_use descriptor */
-		rx_desc->wb.upper.length = 0;
-
 		cleaned_count--;
 	} while (cleaned_count);
 
@@ -1924,8 +1920,12 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 		}
 
 		rx_desc = IGC_RX_DESC(rx_ring, rx_ring->next_to_clean);
-		size = le16_to_cpu(rx_desc->wb.upper.length);
-		if (!size)
+
+		/* If we reached a descriptor with 'Descriptor Done' bit not
+		 * set, it means we have handled all descriptors owned by
+		 * software already so we should prematurely break the loop.
+		 */
+		if (!igc_test_staterr(rx_desc, IGC_RXD_STAT_DD))
 			break;
 
 		/* This memory barrier is needed to keep us from reading
@@ -1934,6 +1934,8 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 		 */
 		dma_rmb();
 
+		size = le16_to_cpu(rx_desc->wb.upper.length);
+
 		rx_buffer = igc_get_rx_buffer(rx_ring, size);
 
 		/* retrieve a buffer from the ring */
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
