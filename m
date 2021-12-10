Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E237347035C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Dec 2021 16:00:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 79FE641218;
	Fri, 10 Dec 2021 15:00:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jXsrvdei6A6K; Fri, 10 Dec 2021 15:00:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5BCF641213;
	Fri, 10 Dec 2021 15:00:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A611B1BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 14:59:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A26866143E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 14:59:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5MeKMh4EKgNV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Dec 2021 14:59:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 142E76145F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 14:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639148396; x=1670684396;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yViGtc+V2Swh9rosOnVjkOgVuHR/Y4/lbaI9ptPTU+s=;
 b=cHoO5r9mgO6UUxpDnGJS1Qbxg6hHPoyHmt/eN8AMIdjhujrFrWPKdFXd
 z6edi6DT1NYKfQkmANklK0s+oMC+/hr8MtDJHqT7K5MfgDz8CKWdYke1E
 6uawxkhUUw3orbh2rFx2l8SKEc4UDBTjrAaP6hhPt9o2xOByoqqzDiMQs
 IUB58v6fFf40KJlaJrFWys+O86wMZ5M9NCvC2LDHUeceS2cOfOeg9/its
 CM3QbDBdj6etgCxdHqwf9DkFg0BOUg5FhwOx1eYsMu4pa3J2s01c98k11
 ClNhwCfWvhUKvpzTGak05tq35aiorCXG5XM+FSnPRXlXQQv1kHelKpxul w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="238160356"
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="238160356"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 06:59:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="680763736"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga005.jf.intel.com with ESMTP; 10 Dec 2021 06:59:53 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 10 Dec 2021 15:59:39 +0100
Message-Id: <20211210145941.5865-4-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211210145941.5865-1-maciej.fijalkowski@intel.com>
References: <20211210145941.5865-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net 3/5] ice: xsk: do not clear
 status_error0 for ntu + nb_buffs descriptor
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
Cc: elza.mathew@intel.com, netdev@vger.kernel.org, kuba@kernel.org,
 bpf@vger.kernel.org, davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The descriptor that ntu is pointing at when we exit
ice_alloc_rx_bufs_zc() should not have its corresponding DD bit cleared
as descriptor is not allocated in there and it is not valid for HW
usage.

The allocation routine at the entry will fill the descriptor that ntu
points to after it was set to ntu + nb_buffs on previous call.

Even the spec says:
"The tail pointer should be set to one descriptor beyond the last empty
descriptor in host descriptor ring."

Therefore, step away from clearing the status_error0 on ntu + nb_buffs
descriptor.

Fixes: db804cfc21e9 ("ice: Use the xsk batched rx allocation interface")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 5cb61955c1f3..874fce9fa1c3 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -394,14 +394,9 @@ bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
 	}
 
 	ntu += nb_buffs;
-	if (ntu == rx_ring->count) {
-		rx_desc = ICE_RX_DESC(rx_ring, 0);
-		xdp = rx_ring->xdp_buf;
+	if (ntu == rx_ring->count)
 		ntu = 0;
-	}
 
-	/* clear the status bits for the next_to_use descriptor */
-	rx_desc->wb.status_error0 = 0;
 	ice_release_rx_desc(rx_ring, ntu);
 
 	return count == nb_buffs;
-- 
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
