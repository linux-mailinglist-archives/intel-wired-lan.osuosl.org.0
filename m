Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C3BF82117CF
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jul 2020 03:26:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 65FC089365;
	Thu,  2 Jul 2020 01:26:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3Aq8CWmK0Y1H; Thu,  2 Jul 2020 01:26:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1569389346;
	Thu,  2 Jul 2020 01:26:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D655A1BF2B8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 01:25:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D2B328A71F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 01:25:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YJxpXAuwaYp4 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2020 01:25:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4BF548A6E7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 01:25:51 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3928B206BE;
 Thu,  2 Jul 2020 01:25:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593653151;
 bh=MyivlB/jns6YpSJ3LJHdnlfHsp6mPddstfk7UoF3F8s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gHvjFbKn9HrgMdYLe/pCxRnjcmP/wRjaNfkAi1Bh2cIxzjyQ1V7ssHWo7WPNw+TDm
 yjEpsXF54MgG/VO3NXYwt9IK8KivqUUwUu+yup1/0y7K3CXdLh64EEf9v+bUdEVQdP
 7gWxl/5yQOhTtY9uC9xrkRLln9EziiFNSLD7Ubp8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Wed,  1 Jul 2020 21:23:42 -0400
Message-Id: <20200702012402.2701121-21-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200702012402.2701121-1-sashal@kernel.org>
References: <20200702012402.2701121-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.4 21/40] i40e: protect ring
 accesses with READ- and WRITE_ONCE
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Ciara Loftus <ciara.loftus@intel.com>

[ Upstream commit d59e267912cd90b0adf33b4659050d831e746317 ]

READ_ONCE should be used when reading rings prior to accessing the
statistics pointer. Introduce this as well as the corresponding WRITE_ONCE
usage when allocating and freeing the rings, to ensure protected access.

Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 29 ++++++++++++++-------
 1 file changed, 19 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index a8dd0228b6787..095ed81cc0ba4 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -458,11 +458,15 @@ static void i40e_get_netdev_stats_struct(struct net_device *netdev,
 		i40e_get_netdev_stats_struct_tx(ring, stats);
 
 		if (i40e_enabled_xdp_vsi(vsi)) {
-			ring++;
+			ring = READ_ONCE(vsi->xdp_rings[i]);
+			if (!ring)
+				continue;
 			i40e_get_netdev_stats_struct_tx(ring, stats);
 		}
 
-		ring++;
+		ring = READ_ONCE(vsi->rx_rings[i]);
+		if (!ring)
+			continue;
 		do {
 			start   = u64_stats_fetch_begin_irq(&ring->syncp);
 			packets = ring->stats.packets;
@@ -806,6 +810,8 @@ static void i40e_update_vsi_stats(struct i40e_vsi *vsi)
 	for (q = 0; q < vsi->num_queue_pairs; q++) {
 		/* locate Tx ring */
 		p = READ_ONCE(vsi->tx_rings[q]);
+		if (!p)
+			continue;
 
 		do {
 			start = u64_stats_fetch_begin_irq(&p->syncp);
@@ -819,8 +825,11 @@ static void i40e_update_vsi_stats(struct i40e_vsi *vsi)
 		tx_linearize += p->tx_stats.tx_linearize;
 		tx_force_wb += p->tx_stats.tx_force_wb;
 
-		/* Rx queue is part of the same block as Tx queue */
-		p = &p[1];
+		/* locate Rx ring */
+		p = READ_ONCE(vsi->rx_rings[q]);
+		if (!p)
+			continue;
+
 		do {
 			start = u64_stats_fetch_begin_irq(&p->syncp);
 			packets = p->stats.packets;
@@ -10816,10 +10825,10 @@ static void i40e_vsi_clear_rings(struct i40e_vsi *vsi)
 	if (vsi->tx_rings && vsi->tx_rings[0]) {
 		for (i = 0; i < vsi->alloc_queue_pairs; i++) {
 			kfree_rcu(vsi->tx_rings[i], rcu);
-			vsi->tx_rings[i] = NULL;
-			vsi->rx_rings[i] = NULL;
+			WRITE_ONCE(vsi->tx_rings[i], NULL);
+			WRITE_ONCE(vsi->rx_rings[i], NULL);
 			if (vsi->xdp_rings)
-				vsi->xdp_rings[i] = NULL;
+				WRITE_ONCE(vsi->xdp_rings[i], NULL);
 		}
 	}
 }
@@ -10853,7 +10862,7 @@ static int i40e_alloc_rings(struct i40e_vsi *vsi)
 		if (vsi->back->hw_features & I40E_HW_WB_ON_ITR_CAPABLE)
 			ring->flags = I40E_TXR_FLAGS_WB_ON_ITR;
 		ring->itr_setting = pf->tx_itr_default;
-		vsi->tx_rings[i] = ring++;
+		WRITE_ONCE(vsi->tx_rings[i], ring++);
 
 		if (!i40e_enabled_xdp_vsi(vsi))
 			goto setup_rx;
@@ -10871,7 +10880,7 @@ static int i40e_alloc_rings(struct i40e_vsi *vsi)
 			ring->flags = I40E_TXR_FLAGS_WB_ON_ITR;
 		set_ring_xdp(ring);
 		ring->itr_setting = pf->tx_itr_default;
-		vsi->xdp_rings[i] = ring++;
+		WRITE_ONCE(vsi->xdp_rings[i], ring++);
 
 setup_rx:
 		ring->queue_index = i;
@@ -10884,7 +10893,7 @@ static int i40e_alloc_rings(struct i40e_vsi *vsi)
 		ring->size = 0;
 		ring->dcb_tc = 0;
 		ring->itr_setting = pf->rx_itr_default;
-		vsi->rx_rings[i] = ring;
+		WRITE_ONCE(vsi->rx_rings[i], ring);
 	}
 
 	return 0;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
