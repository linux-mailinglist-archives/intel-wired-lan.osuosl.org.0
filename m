Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B2125B073
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Sep 2020 17:59:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 33F42868CC;
	Wed,  2 Sep 2020 15:59:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z3nVs5EjoJfc; Wed,  2 Sep 2020 15:59:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 447AF868E5;
	Wed,  2 Sep 2020 15:59:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 961011BF983
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 15:58:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 92E522033D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 15:58:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cBwS7+qMll2N for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Sep 2020 15:58:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 3C94322875
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 15:58:56 +0000 (UTC)
IronPort-SDR: rvJLecE5l6HZTT8SePsa+LtBkx62BBozbMrbSnKeKeqNLVi7tJ5FgWz2tG2yOtshwOpNB/iwKB
 VXCH08CAv+0A==
X-IronPort-AV: E=McAfee;i="6000,8403,9732"; a="158409183"
X-IronPort-AV: E=Sophos;i="5.76,383,1592895600"; d="scan'208";a="158409183"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 08:58:54 -0700
IronPort-SDR: t50YSQTyb4VbvoFGRnBNIgnlPKoyBBY1mcAhW+3HViqp7pZloDDKlGk1GM5qJ6WE8sQJHRA4Q8
 xrkWDumMF6rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,383,1592895600"; d="scan'208";a="301882261"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga006.jf.intel.com with ESMTP; 02 Sep 2020 08:58:54 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  2 Sep 2020 08:53:47 -0700
Message-Id: <20200902155347.16972-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200902155347.16972-1-anthony.l.nguyen@intel.com>
References: <20200902155347.16972-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net 6/6] ice: fix memory leak in ice_vsi_setup
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

From: Jacob Keller <jacob.e.keller@intel.com>

During ice_vsi_setup, if ice_cfg_vsi_lan fails, it does not properly
release memory associated with the VSI rings. If we had used devres
allocations for the rings, this would be ok. However, we use kzalloc and
kfree_rcu for these ring structures.

Using the correct label to cleanup the rings during ice_vsi_setup
highlights an issue in the ice_vsi_clear_rings function: it can leave
behind stale ring pointers in the q_vectors structure.

When releasing rings, we must also ensure that no q_vector associated
with the VSI will point to this ring again. To resolve this, loop over
all q_vectors and release their ring mapping. Because we are about to
free all rings, no q_vector should remain pointing to any of the rings
in this VSI.

Fixes: 5513b920a4f7 ("ice: Update Tx scheduler tree for VSI multi-Tx queue support")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 65cc78279501..ebbb8f54871c 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1196,6 +1196,18 @@ static void ice_vsi_clear_rings(struct ice_vsi *vsi)
 {
 	int i;
 
+	/* Avoid stale references by clearing map from vector to ring */
+	if (vsi->q_vectors) {
+		ice_for_each_q_vector(vsi, i) {
+			struct ice_q_vector *q_vector = vsi->q_vectors[i];
+
+			if (q_vector) {
+				q_vector->tx.ring = NULL;
+				q_vector->rx.ring = NULL;
+			}
+		}
+	}
+
 	if (vsi->tx_rings) {
 		for (i = 0; i < vsi->alloc_txq; i++) {
 			if (vsi->tx_rings[i]) {
@@ -2291,7 +2303,7 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 	if (status) {
 		dev_err(dev, "VSI %d failed lan queue config, error %s\n",
 			vsi->vsi_num, ice_stat_str(status));
-		goto unroll_vector_base;
+		goto unroll_clear_rings;
 	}
 
 	/* Add switch rule to drop all Tx Flow Control Frames, of look up
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
