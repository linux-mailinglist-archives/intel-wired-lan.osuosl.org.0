Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C19C11D75B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Dec 2019 20:44:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AA6E1871A7;
	Thu, 12 Dec 2019 19:44:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T0TxhBp2usiE; Thu, 12 Dec 2019 19:44:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F2067871A9;
	Thu, 12 Dec 2019 19:44:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EF3B61BF340
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DB3B0888C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jkP2jvkJ8IJq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2019 19:44:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9BCF5888C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 11:44:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,306,1571727600"; d="scan'208";a="296698852"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga001.jf.intel.com with ESMTP; 12 Dec 2019 11:44:34 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 12 Dec 2019 03:12:57 -0800
Message-Id: <20191212111307.33566-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191212111307.33566-1-anthony.l.nguyen@intel.com>
References: <20191212111307.33566-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S35 05/15] ice: Set default value for ITR
 in alloc function
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

From: Michal Swiatkowski <michal.swiatkowski@intel.com>

When the user sets itr_setting to zero from ethtool -C, the driver changes
this value to default in ice_cfg_itr (for example after changing ring
param). Remove code that sets default value in ice_cfg_itr and move it to
place where the driver allocates q_vectors.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 77d6a0291e97..d4559d45288f 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -93,7 +93,8 @@ static int ice_pf_rxq_wait(struct ice_pf *pf, int pf_q, bool ena)
  * @vsi: the VSI being configured
  * @v_idx: index of the vector in the VSI struct
  *
- * We allocate one q_vector. If allocation fails we return -ENOMEM.
+ * We allocate one q_vector and set default value for ITR setting associated
+ * with this q_vector. If allocation fails we return -ENOMEM.
  */
 static int ice_vsi_alloc_q_vector(struct ice_vsi *vsi, int v_idx)
 {
@@ -108,6 +109,8 @@ static int ice_vsi_alloc_q_vector(struct ice_vsi *vsi, int v_idx)
 
 	q_vector->vsi = vsi;
 	q_vector->v_idx = v_idx;
+	q_vector->tx.itr_setting = ICE_DFLT_TX_ITR;
+	q_vector->rx.itr_setting = ICE_DFLT_RX_ITR;
 	if (vsi->type == ICE_VSI_VF)
 		goto out;
 	/* only set affinity_mask if the CPU is online */
@@ -674,10 +677,6 @@ void ice_cfg_itr(struct ice_hw *hw, struct ice_q_vector *q_vector)
 	if (q_vector->num_ring_rx) {
 		struct ice_ring_container *rc = &q_vector->rx;
 
-		/* if this value is set then don't overwrite with default */
-		if (!rc->itr_setting)
-			rc->itr_setting = ICE_DFLT_RX_ITR;
-
 		rc->target_itr = ITR_TO_REG(rc->itr_setting);
 		rc->next_update = jiffies + 1;
 		rc->current_itr = rc->target_itr;
@@ -688,10 +687,6 @@ void ice_cfg_itr(struct ice_hw *hw, struct ice_q_vector *q_vector)
 	if (q_vector->num_ring_tx) {
 		struct ice_ring_container *rc = &q_vector->tx;
 
-		/* if this value is set then don't overwrite with default */
-		if (!rc->itr_setting)
-			rc->itr_setting = ICE_DFLT_TX_ITR;
-
 		rc->target_itr = ITR_TO_REG(rc->itr_setting);
 		rc->next_update = jiffies + 1;
 		rc->current_itr = rc->target_itr;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
