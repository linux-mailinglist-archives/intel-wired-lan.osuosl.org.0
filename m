Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B201F241A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jun 2020 01:20:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C163186943;
	Mon,  8 Jun 2020 23:20:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0Rc3m0KuRLee; Mon,  8 Jun 2020 23:20:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D6F358698F;
	Mon,  8 Jun 2020 23:20:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 965161BF381
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:19:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 92B6F87FE3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:19:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kpaxPweE-+uB for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jun 2020 23:19:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0BC9A87C9C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:19:57 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F12C120823;
 Mon,  8 Jun 2020 23:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591658396;
 bh=QdiF7mgvWlf2SQq24qBVEy93LHtjIwVli09p1uRnJk0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NIWFBvFrdrYIWOPlZX3QZnTdIEunaUDJB4S4fmnQiK8beljRbUsjbZ/6agpBlYsDI
 lqFSOhEx8age8VoUIrDO0DTStyqNFN2MAAz9bcfqyDf4HdX7FQqrq+ldFQKmtF1IzB
 w8KfJRWK3vtvfRcxZ4iBrb+xZZ2B4K9RDdSk9T9M=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon,  8 Jun 2020 19:16:46 -0400
Message-Id: <20200608231848.3366970-53-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231848.3366970-1-sashal@kernel.org>
References: <20200608231848.3366970-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.4 053/175] ice: Fix for memory
 leaks and modify ICE_FREE_CQ_BUFS
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
Cc: Sasha Levin <sashal@kernel.org>, Surabhi Boob <surabhi.boob@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Surabhi Boob <surabhi.boob@intel.com>

[ Upstream commit 68d270783742783f96e89ef92ac24ab3c7fb1d31 ]

Handle memory leaks during control queue initialization and
buffer allocation failures. The macro ICE_FREE_CQ_BUFS is modified to
re-use for this fix.

Signed-off-by: Surabhi Boob <surabhi.boob@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_controlq.c | 49 +++++++++++--------
 1 file changed, 28 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
index c68709c7ef81..2e9c97bad3c3 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.c
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
@@ -199,7 +199,9 @@ ice_alloc_rq_bufs(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 		cq->rq.r.rq_bi[i].pa = 0;
 		cq->rq.r.rq_bi[i].size = 0;
 	}
+	cq->rq.r.rq_bi = NULL;
 	devm_kfree(ice_hw_to_dev(hw), cq->rq.dma_head);
+	cq->rq.dma_head = NULL;
 
 	return ICE_ERR_NO_MEMORY;
 }
@@ -245,7 +247,9 @@ ice_alloc_sq_bufs(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 		cq->sq.r.sq_bi[i].pa = 0;
 		cq->sq.r.sq_bi[i].size = 0;
 	}
+	cq->sq.r.sq_bi = NULL;
 	devm_kfree(ice_hw_to_dev(hw), cq->sq.dma_head);
+	cq->sq.dma_head = NULL;
 
 	return ICE_ERR_NO_MEMORY;
 }
@@ -304,6 +308,28 @@ ice_cfg_rq_regs(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 	return 0;
 }
 
+#define ICE_FREE_CQ_BUFS(hw, qi, ring)					\
+do {									\
+	int i;								\
+	/* free descriptors */						\
+	if ((qi)->ring.r.ring##_bi)					\
+		for (i = 0; i < (qi)->num_##ring##_entries; i++)	\
+			if ((qi)->ring.r.ring##_bi[i].pa) {		\
+				dmam_free_coherent(ice_hw_to_dev(hw),	\
+					(qi)->ring.r.ring##_bi[i].size,	\
+					(qi)->ring.r.ring##_bi[i].va,	\
+					(qi)->ring.r.ring##_bi[i].pa);	\
+					(qi)->ring.r.ring##_bi[i].va = NULL;\
+					(qi)->ring.r.ring##_bi[i].pa = 0;\
+					(qi)->ring.r.ring##_bi[i].size = 0;\
+		}							\
+	/* free the buffer info list */					\
+	if ((qi)->ring.cmd_buf)						\
+		devm_kfree(ice_hw_to_dev(hw), (qi)->ring.cmd_buf);	\
+	/* free DMA head */						\
+	devm_kfree(ice_hw_to_dev(hw), (qi)->ring.dma_head);		\
+} while (0)
+
 /**
  * ice_init_sq - main initialization routine for Control ATQ
  * @hw: pointer to the hardware structure
@@ -357,6 +383,7 @@ static enum ice_status ice_init_sq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 	goto init_ctrlq_exit;
 
 init_ctrlq_free_rings:
+	ICE_FREE_CQ_BUFS(hw, cq, sq);
 	ice_free_cq_ring(hw, &cq->sq);
 
 init_ctrlq_exit:
@@ -416,33 +443,13 @@ static enum ice_status ice_init_rq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 	goto init_ctrlq_exit;
 
 init_ctrlq_free_rings:
+	ICE_FREE_CQ_BUFS(hw, cq, rq);
 	ice_free_cq_ring(hw, &cq->rq);
 
 init_ctrlq_exit:
 	return ret_code;
 }
 
-#define ICE_FREE_CQ_BUFS(hw, qi, ring)					\
-do {									\
-	int i;								\
-	/* free descriptors */						\
-	for (i = 0; i < (qi)->num_##ring##_entries; i++)		\
-		if ((qi)->ring.r.ring##_bi[i].pa) {			\
-			dmam_free_coherent(ice_hw_to_dev(hw),		\
-					   (qi)->ring.r.ring##_bi[i].size,\
-					   (qi)->ring.r.ring##_bi[i].va,\
-					   (qi)->ring.r.ring##_bi[i].pa);\
-			(qi)->ring.r.ring##_bi[i].va = NULL;		\
-			(qi)->ring.r.ring##_bi[i].pa = 0;		\
-			(qi)->ring.r.ring##_bi[i].size = 0;		\
-		}							\
-	/* free the buffer info list */					\
-	if ((qi)->ring.cmd_buf)						\
-		devm_kfree(ice_hw_to_dev(hw), (qi)->ring.cmd_buf);	\
-	/* free DMA head */						\
-	devm_kfree(ice_hw_to_dev(hw), (qi)->ring.dma_head);		\
-} while (0)
-
 /**
  * ice_shutdown_sq - shutdown the Control ATQ
  * @hw: pointer to the hardware structure
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
