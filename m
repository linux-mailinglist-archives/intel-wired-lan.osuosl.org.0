Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5294DCD0E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Mar 2022 18:57:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3B90E4016B;
	Thu, 17 Mar 2022 17:57:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VBfPx06X4qtp; Thu, 17 Mar 2022 17:57:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E6A784014C;
	Thu, 17 Mar 2022 17:57:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5F7F91BF228
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 17:57:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4AC5640093
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 17:57:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WPx7Bgh_2Pax for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Mar 2022 17:57:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AD0D440016
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 17:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647539865; x=1679075865;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nEv5bKsEAap2hI7uLbqGDVy2KLkyTKhKSiHGliTE7jE=;
 b=ew2HUCVAskXqAu2TsDKao8qLhib+89v4n7igjgeqborn+yG126xU1/mU
 rLMsSkO6bAt7eXTptpECAE9iM+O7WmHdJCH/qL5+MXM9sMgmiGNcVXn2K
 ffDcw0nZ4dNT7X+CZSQvWnT3ZDOpliuFyw2He4ULm5iDZAehfBGLChbtn
 7PEbpFfcBeMzmptAa3wFh0jHshg2bAUniPKePYGsRZEBaHrwqi+r8F9Qp
 3d8q+glA1PvRtHro3EI/HRz3g41ZwV+Je7MzOn6KvpW0N5tOxq5IS4uta
 7h4OEhU8m1v/ZkikjBJ1QfV1DLKpb/bESPdTbq1XVx9cOcHJ97Zge/k1Q w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="244392171"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="244392171"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 10:57:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="513515788"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga002.jf.intel.com with ESMTP; 17 Mar 2022 10:57:42 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Mar 2022 18:57:27 +0100
Message-Id: <20220317175727.340251-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-next] ice: xsk: check if Rx ring was
 filled up to the end
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
Cc: netdev@vger.kernel.org, kuba@kernel.org, bpf@vger.kernel.org,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

__ice_alloc_rx_bufs_zc() checks if a number of the descriptors to be
allocated would cause the ring wrap. In that case, driver will issue two
calls to xsk_buff_alloc_batch() - one that will fill the ring up to the
end and the second one that will start with filling descriptors from the
beginning of the ring.

ice_fill_rx_descs() is a wrapper for taking care of what
xsk_buff_alloc_batch() gave back to the driver. It works in a best
effort approach, so for example when driver asks for 64 buffers,
ice_fill_rx_descs() could assign only 32. Such case needs to be checked
when ring is being filled up to the end, because in that situation ntu
might not reached the end of the ring.

Fix the ring wrap by checking if nb_buffs_extra has the expected value.
If not, bump ntu and go directly to tail update.

Fixes: 3876ff525de7 ("ice: xsk: Handle SW XDP ring wrap and bump tail more often")
Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 88853a6ed931..6f15aa69cd5f 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -413,8 +413,8 @@ static u16 ice_fill_rx_descs(struct xsk_buff_pool *pool, struct xdp_buff **xdp,
  */
 static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
 {
+	u32 nb_buffs_extra = 0, nb_buffs = 0;
 	union ice_32b_rx_flex_desc *rx_desc;
-	u32 nb_buffs_extra = 0, nb_buffs;
 	u16 ntu = rx_ring->next_to_use;
 	u16 total_count = count;
 	struct xdp_buff **xdp;
@@ -426,6 +426,10 @@ static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
 		nb_buffs_extra = ice_fill_rx_descs(rx_ring->xsk_pool, xdp,
 						   rx_desc,
 						   rx_ring->count - ntu);
+		if (nb_buffs_extra != rx_ring->count - ntu) {
+			ntu += nb_buffs_extra;
+			goto exit;
+		}
 		rx_desc = ICE_RX_DESC(rx_ring, 0);
 		xdp = ice_xdp_buf(rx_ring, 0);
 		ntu = 0;
@@ -439,6 +443,7 @@ static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
 	if (ntu == rx_ring->count)
 		ntu = 0;
 
+exit:
 	if (rx_ring->next_to_use != ntu)
 		ice_release_rx_desc(rx_ring, ntu);
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
