Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D5F148747
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Jan 2020 15:22:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 60EB1877EA;
	Fri, 24 Jan 2020 14:22:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oAclzr1prnUI; Fri, 24 Jan 2020 14:22:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4C9A8877D0;
	Fri, 24 Jan 2020 14:22:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 401FF1BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jan 2020 14:22:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3C26B86D6A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jan 2020 14:22:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OLLdoPIZUIc0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jan 2020 14:22:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B908486D33
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jan 2020 14:22:09 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BDAE222464;
 Fri, 24 Jan 2020 14:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579875729;
 bh=hwOzeRmZcPdvnDRK6bOH7ZDXX8B+7+SkU/US5GJJKtc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nbH/IxW5aqqfqXNAwJgWHN2Svw/hR8LxkpII78h9EBeMhNnEBSQ0wxq3NCsNOe13N
 t3VaU63spuz0+oOrj2had/3sjMEO8eBxyba5qW191gdFdCGaPjd7K6JsgTVMDFcdZ6
 j5aDsyRWBv3HTFbIgSR72zwyP2XkpUQ8xspZmMJ4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Fri, 24 Jan 2020 09:21:48 -0500
Message-Id: <20200124142157.30931-9-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200124142157.30931-1-sashal@kernel.org>
References: <20200124142157.30931-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 4.9 09/18] ixgbe: Fix calculation
 of queue with VFs and flow director on interface flap
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
Cc: Cambda Zhu <cambda@linux.alibaba.com>, Sasha Levin <sashal@kernel.org>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Cambda Zhu <cambda@linux.alibaba.com>

[ Upstream commit 4fad78ad6422d9bca62135bbed8b6abc4cbb85b8 ]

This patch fixes the calculation of queue when we restore flow director
filters after resetting adapter. In ixgbe_fdir_filter_restore(), filter's
vf may be zero which makes the queue outside of the rx_ring array.

The calculation is changed to the same as ixgbe_add_ethtool_fdir_entry().

Signed-off-by: Cambda Zhu <cambda@linux.alibaba.com>
Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 37 ++++++++++++++-----
 1 file changed, 27 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 8ad20b7852ed7..4c729faeb7132 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -4804,7 +4804,7 @@ static void ixgbe_fdir_filter_restore(struct ixgbe_adapter *adapter)
 	struct ixgbe_hw *hw = &adapter->hw;
 	struct hlist_node *node2;
 	struct ixgbe_fdir_filter *filter;
-	u64 action;
+	u8 queue;
 
 	spin_lock(&adapter->fdir_perfect_lock);
 
@@ -4813,17 +4813,34 @@ static void ixgbe_fdir_filter_restore(struct ixgbe_adapter *adapter)
 
 	hlist_for_each_entry_safe(filter, node2,
 				  &adapter->fdir_filter_list, fdir_node) {
-		action = filter->action;
-		if (action != IXGBE_FDIR_DROP_QUEUE && action != 0)
-			action =
-			(action >> ETHTOOL_RX_FLOW_SPEC_RING_VF_OFF) - 1;
+		if (filter->action == IXGBE_FDIR_DROP_QUEUE) {
+			queue = IXGBE_FDIR_DROP_QUEUE;
+		} else {
+			u32 ring = ethtool_get_flow_spec_ring(filter->action);
+			u8 vf = ethtool_get_flow_spec_ring_vf(filter->action);
+
+			if (!vf && (ring >= adapter->num_rx_queues)) {
+				e_err(drv, "FDIR restore failed without VF, ring: %u\n",
+				      ring);
+				continue;
+			} else if (vf &&
+				   ((vf > adapter->num_vfs) ||
+				     ring >= adapter->num_rx_queues_per_pool)) {
+				e_err(drv, "FDIR restore failed with VF, vf: %hhu, ring: %u\n",
+				      vf, ring);
+				continue;
+			}
+
+			/* Map the ring onto the absolute queue index */
+			if (!vf)
+				queue = adapter->rx_ring[ring]->reg_idx;
+			else
+				queue = ((vf - 1) *
+					adapter->num_rx_queues_per_pool) + ring;
+		}
 
 		ixgbe_fdir_write_perfect_filter_82599(hw,
-				&filter->filter,
-				filter->sw_idx,
-				(action == IXGBE_FDIR_DROP_QUEUE) ?
-				IXGBE_FDIR_DROP_QUEUE :
-				adapter->rx_ring[action]->reg_idx);
+				&filter->filter, filter->sw_idx, queue);
 	}
 
 	spin_unlock(&adapter->fdir_perfect_lock);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
