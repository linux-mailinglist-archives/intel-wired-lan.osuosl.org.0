Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C772A5CFF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Nov 2020 04:12:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ACE8386278;
	Wed,  4 Nov 2020 03:12:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A-t_xH0xDZdx; Wed,  4 Nov 2020 03:12:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 05AE486207;
	Wed,  4 Nov 2020 03:12:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D65251BF989
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 03:12:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D348786208
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 03:12:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dLCtfRE24raO for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Nov 2020 03:12:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5E0108619E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 03:12:26 +0000 (UTC)
IronPort-SDR: emPzleqBp5gN2p6NxgU6nVMDbmvg62w1j+CpDovxcXuJNXkD+mNuxPgKunwziDIyU3khAbKoox
 eRy97Xa4ojKA==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="187017148"
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="187017148"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 19:12:25 -0800
IronPort-SDR: hUi3rsg3sRgI81Ikdhf5Pl/2XXzaCpWmtPvPRqaQaUzOhf0lGdcDJr+NzjTOMNPPqYnwbAKdwp
 IQ/cVcMGfzgQ==
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="471042945"
Received: from abkumar-dell.amr.corp.intel.com ([10.212.180.108])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 19:12:25 -0800
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  3 Nov 2020 19:12:05 -0800
Message-Id: <20201104031210.27772-5-andre.guedes@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201104031210.27772-1-andre.guedes@intel.com>
References: <20201104031210.27772-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v4 4/9] igc: Introduce
 igc_get_rx_frame_truesize() helper
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

The RX frame truesize calculation is scattered throughout the RX code.
This patch creates the helper function igc_get_rx_frame_truesize() and
uses it where applicable.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 29 ++++++++++++++---------
 1 file changed, 18 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 31dc58a82cf3..15c67e5763d3 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1523,6 +1523,22 @@ static void igc_rx_buffer_flip(struct igc_rx_buffer *buffer,
 #endif
 }
 
+static unsigned int igc_get_rx_frame_truesize(struct igc_ring *ring,
+					      unsigned int size)
+{
+	unsigned int truesize;
+
+#if (PAGE_SIZE < 8192)
+	truesize = igc_rx_pg_size(ring) / 2;
+#else
+	truesize = ring_uses_build_skb(ring) ?
+		   SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) +
+		   SKB_DATA_ALIGN(IGC_SKB_PAD + size) :
+		   SKB_DATA_ALIGN(size);
+#endif
+	return truesize;
+}
+
 /**
  * igc_add_rx_frag - Add contents of Rx buffer to sk_buff
  * @rx_ring: rx descriptor ring to transact packets on
@@ -1557,12 +1573,7 @@ static struct sk_buff *igc_build_skb(struct igc_ring *rx_ring,
 				     unsigned int size)
 {
 	void *va = page_address(rx_buffer->page) + rx_buffer->page_offset;
-#if (PAGE_SIZE < 8192)
-	unsigned int truesize = igc_rx_pg_size(rx_ring) / 2;
-#else
-	unsigned int truesize = SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) +
-				SKB_DATA_ALIGN(IGC_SKB_PAD + size);
-#endif
+	unsigned int truesize = igc_get_rx_frame_truesize(rx_ring, size);
 	struct sk_buff *skb;
 
 	/* prefetch first cache line of first page */
@@ -1587,11 +1598,7 @@ static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
 					 unsigned int size)
 {
 	void *va = page_address(rx_buffer->page) + rx_buffer->page_offset;
-#if (PAGE_SIZE < 8192)
-	unsigned int truesize = igc_rx_pg_size(rx_ring) / 2;
-#else
-	unsigned int truesize = SKB_DATA_ALIGN(size);
-#endif
+	unsigned int truesize = igc_get_rx_frame_truesize(rx_ring, size);
 	unsigned int headlen;
 	struct sk_buff *skb;
 
-- 
2.28.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
