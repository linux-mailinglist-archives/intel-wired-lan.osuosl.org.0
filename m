Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D55C470357
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Dec 2021 16:00:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CAA9241216;
	Fri, 10 Dec 2021 15:00:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wnju33dVgO-l; Fri, 10 Dec 2021 14:59:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 92E524120E;
	Fri, 10 Dec 2021 14:59:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C60E61BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 14:59:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C080161454
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 14:59:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bdAy80Pg9cWc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Dec 2021 14:59:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 26E1F61267
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 14:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639148391; x=1670684391;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fTY5kgMckS1Tbs6QLxc/UosJTuA+NXT8tUZ0cny8vjI=;
 b=IpBsQ1r26SwwTVZkaeMhVmXdoFdcSIf4vAgbew+15ADkE6QAuYQlVt/9
 sICRUol6lEzxHhYRzENa7A0U2Vt+AsutNKzNNjy/YvAXI/qzluiBPH3Cf
 UzblI8irG6iUQ3xx1Ol0NEhtigGoe3vCYT7DvXbfSqodUCnbokvF4X7Mi
 jepOcn/lTC1bpiueaGFsaUbjBONWAKB5oJQKeEKaH6ljeDeYXCtco0oDx
 EPdc6H82OxUNXip3zPGENBx1gxjpccAH2c1Pctbfz678wexyPnyR7jRxg
 Js6DIwKST3/7R0xFG0dcO9Mjmz3DfW/pi98VdnvrvVQDUyaBQXo6P43MC A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="238160343"
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="238160343"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 06:59:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="680763701"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga005.jf.intel.com with ESMTP; 10 Dec 2021 06:59:48 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 10 Dec 2021 15:59:37 +0100
Message-Id: <20211210145941.5865-2-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211210145941.5865-1-maciej.fijalkowski@intel.com>
References: <20211210145941.5865-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net 1/5] ice: xsk: return xsk
 buffers back to pool when cleaning the ring
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

Currently we only NULL the xdp_buff pointer in the internal SW ring but
we never give it back to the xsk buffer pool. This means that buffers
can be leaked out of the buff pool and never be used again.

Add missing xsk_buff_free() call to the routine that is supposed to
clean the entries that are left in the ring so that these buffers in the
umem can be used by other sockets.

Also, only go through the space that is actually left to be cleaned
instead of a whole ring.

Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index ff55cb415b11..75c3e98241e0 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -810,14 +810,14 @@ bool ice_xsk_any_rx_ring_ena(struct ice_vsi *vsi)
  */
 void ice_xsk_clean_rx_ring(struct ice_rx_ring *rx_ring)
 {
-	u16 i;
-
-	for (i = 0; i < rx_ring->count; i++) {
-		struct xdp_buff **xdp = &rx_ring->xdp_buf[i];
+	u16 count_mask = rx_ring->count - 1;
+	u16 ntc = rx_ring->next_to_clean;
+	u16 ntu = rx_ring->next_to_use;
 
-		if (!xdp)
-			continue;
+	for ( ; ntc != ntu; ntc = (ntc + 1) & count_mask) {
+		struct xdp_buff **xdp = &rx_ring->xdp_buf[ntc];
 
+		xsk_buff_free(*xdp);
 		*xdp = NULL;
 	}
 }
-- 
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
