Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 300FE241219
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Aug 2020 23:08:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D934F85888;
	Mon, 10 Aug 2020 21:08:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i6CaY7pURSUh; Mon, 10 Aug 2020 21:08:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A9927858FB;
	Mon, 10 Aug 2020 21:08:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C6CDB1BF23C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Aug 2020 21:08:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C116F87D80
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Aug 2020 21:08:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sVvXMmovU2Cr for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Aug 2020 21:08:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 26E4487D8B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Aug 2020 21:08:41 +0000 (UTC)
IronPort-SDR: lW3l6jhogZFv7bGvOTtNIE5ah/dLyE+OfnrXyO0zq+Zq2Qx+Y6ZVyzbgdS+32EqYYKm0TsouiT
 QJsQOirhKj6A==
X-IronPort-AV: E=McAfee;i="6000,8403,9709"; a="171663422"
X-IronPort-AV: E=Sophos;i="5.75,458,1589266800"; d="scan'208";a="171663422"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2020 14:08:40 -0700
IronPort-SDR: pWx6YRo2mkVwmpBp1SMNTbPjVO3UvvLUA8Ze4PiP6QupmFWlX01QgHpM4LY3MU+ALCBdoE/+Bw
 FtXVCfcrfDfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,458,1589266800"; d="scan'208";a="334361405"
Received: from cjjeffrx-ti2.amr.corp.intel.com ([10.209.119.14])
 by orsmga007.jf.intel.com with ESMTP; 10 Aug 2020 14:08:40 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 10 Aug 2020 14:08:32 -0700
Message-Id: <20200810210832.34699-3-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200810210832.34699-1-andre.guedes@intel.com>
References: <20200810210832.34699-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 3/3] igc: Fix SRRCTL register setup
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

SRRCTL register is set with 'one buffer descriptor' option (see DESCTYPE
setting a few lines below) so setting BSIZEHEADER bits is pointless.
They should be zero. Also, since there is no header buffer we should set
the header buffer address field from the receive descriptor to zero for
the sake of consistency.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 0c481dc906ad..a5d825d44002 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -531,14 +531,11 @@ static void igc_configure_rx_ring(struct igc_adapter *adapter,
 	ring->next_to_clean = 0;
 	ring->next_to_use = 0;
 
-	/* set descriptor configuration */
-	srrctl = IGC_RX_HDR_LEN << IGC_SRRCTL_BSIZEHDRSIZE_SHIFT;
 	if (ring_uses_large_buffer(ring))
 		srrctl |= IGC_RXBUFFER_3072 >> IGC_SRRCTL_BSIZEPKT_SHIFT;
 	else
 		srrctl |= IGC_RXBUFFER_2048 >> IGC_SRRCTL_BSIZEPKT_SHIFT;
 	srrctl |= IGC_SRRCTL_DESCTYPE_ADV_ONEBUF;
-
 	wr32(IGC_SRRCTL(reg_idx), srrctl);
 
 	rxdctl |= IGC_RX_PTHRESH;
@@ -1869,6 +1866,7 @@ static void igc_alloc_rx_buffers(struct igc_ring *rx_ring, u16 cleaned_count)
 		 * because each write-back erases this info.
 		 */
 		rx_desc->read.pkt_addr = cpu_to_le64(bi->dma + bi->page_offset);
+		rx_desc->read.hdr_addr = 0;
 
 		rx_desc++;
 		bi++;
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
