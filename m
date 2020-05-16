Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0641D5D42
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:39:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 60FA189A36;
	Sat, 16 May 2020 00:39:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BpUbJFm+00va; Sat, 16 May 2020 00:39:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0204589A9A;
	Sat, 16 May 2020 00:39:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 11D221BF9C8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:39:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0EFED8771C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:39:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hq48l1qvKgrk for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:39:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4978787CB6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:39:20 +0000 (UTC)
IronPort-SDR: 9nN9cyLUc9cP67KKS+Noxe7w+Fs8veYg4I1cC2BK9DXvMDIx4gbZHQWcDJmQGX2ucVfhCBlD0R
 UwhhVYaozICw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:39:19 -0700
IronPort-SDR: RQphhPBmKKWsAEg9vHqt4bWFFfXrhUGTyBvlpaOXhnmaDFKa6PRe1oPQ+RUyPjoOF1H/9mFwBv
 DtjrFMjweAUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="307560871"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by FMSMGA003.fm.intel.com with ESMTP; 15 May 2020 17:39:19 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:36:43 -0700
Message-Id: <20200516003644.4658-14-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
References: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S43 14/15] ice: Fix for memory leaks and
 modify ICE_FREE_CQ_BUFS
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

From: Surabhi Boob <surabhi.boob@intel.com>

Handle memory leaks during control queue initialization and
buffer allocation failures. The macro ICE_FREE_CQ_BUFS is modified to
re-use for this fix.

Signed-off-by: Surabhi Boob <surabhi.boob@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_controlq.c | 49 +++++++++++--------
 1 file changed, 28 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
index 9a865962296d..62c2c1e621d2 100644
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
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
