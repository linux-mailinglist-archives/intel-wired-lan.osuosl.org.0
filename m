Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D3D2ED752
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Jan 2021 20:15:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 71366874D3;
	Thu,  7 Jan 2021 19:15:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NgNFfsGAyApZ; Thu,  7 Jan 2021 19:15:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4707A874D0;
	Thu,  7 Jan 2021 19:15:51 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5DECC1BF41A
 for <intel-wired-lan@osuosl.org>; Thu,  7 Jan 2021 19:15:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5991786B6C
 for <intel-wired-lan@osuosl.org>; Thu,  7 Jan 2021 19:15:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1lXQngilpPR4 for <intel-wired-lan@osuosl.org>;
 Thu,  7 Jan 2021 19:15:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BC7F386B68
 for <intel-wired-lan@osuosl.org>; Thu,  7 Jan 2021 19:15:48 +0000 (UTC)
IronPort-SDR: 2HAvq6+fr66pRrIXNksoF3Hg51+oU46WQb8xTdKq53s6p0MlmVtkuvSfriMnjZ4ypAxw9cupPq
 HHaOXXOGBBlg==
X-IronPort-AV: E=McAfee;i="6000,8403,9857"; a="262251847"
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="262251847"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2021 11:15:48 -0800
IronPort-SDR: NZ9YMIR/oQn0AFJcZbGPrFK4yCU7vPA5/LddigVmLukjLX8yBxR380cAecQv1AsWSc8DbtOuOz
 eBsZhPyr1gHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="567861686"
Received: from unknown (HELO otc-cfl-ubuntu-15.jf.intel.com) ([10.54.31.57])
 by fmsmga006.fm.intel.com with ESMTP; 07 Jan 2021 11:15:47 -0800
From: Vedang Patel <vedang.patel@intel.com>
To: intel-wired-lan@osuosl.org
Date: Thu,  7 Jan 2021 10:56:54 -0800
Message-Id: <20210107185654.1826-1-vedang.patel@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net v1] igc: Don't clear the large buffer
 bit before memory release
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When XDP is enabled, it uses large buffers to accomodate headroom and
tailroom required by XDP infrastructure. But, it clears the large buffer
bit before unmapping the buffer.

dma_unmap_page_attrs() (called by igc_clean_rx_ring_page_shared()) needs
size of the buffer to unmap. If the large buffer bit is cleared before
calling igc_clean_rx_ring_page_shared(), all of the memory won't be
unmapped.

Fixes: 2e739318416b ("igc: Add initial XDP support")

Signed-off-by: Vedang Patel <vedang.patel@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 0bcdf05d03f0..b96b745fdb65 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -418,13 +418,13 @@ static void igc_clean_rx_ring_xsk_pool(struct igc_ring *ring)
  */
 static void igc_clean_rx_ring(struct igc_ring *ring)
 {
-	clear_ring_uses_large_buffer(ring);
-
 	if (ring->xsk_pool)
 		igc_clean_rx_ring_xsk_pool(ring);
 	else
 		igc_clean_rx_ring_page_shared(ring);
 
+	clear_ring_uses_large_buffer(ring);
+
 	ring->next_to_alloc = 0;
 	ring->next_to_clean = 0;
 	ring->next_to_use = 0;
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
