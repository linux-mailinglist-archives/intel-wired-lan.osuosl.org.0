Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A8E075565
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2019 19:24:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EAB1287221;
	Thu, 25 Jul 2019 17:24:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LC6iiata2zpC; Thu, 25 Jul 2019 17:24:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EA83E86566;
	Thu, 25 Jul 2019 17:24:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 134421BF312
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 17:24:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 10AF6864EA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 17:24:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3lsnWg5-xfit for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2019 17:23:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5D8DD864E6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 17:23:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 10:23:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,307,1559545200"; d="scan'208";a="160973704"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga007.jf.intel.com with ESMTP; 25 Jul 2019 10:23:56 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jul 2019 01:55:29 -0700
Message-Id: <20190725085541.55104-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190725085541.55104-1-anthony.l.nguyen@intel.com>
References: <20190725085541.55104-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S23 v4 03/15] ice: Assume that more than
 one Rx queue is rare in ice_napi_poll
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

From: Brett Creeley <brett.creeley@intel.com>

Currently we divide budget by the number of Rx queues per Rx ring
container in ice_napi_poll even if there is only 1. This is an
unnecessary divide for the normal case of 1 Rx ring per Rx ring
container. Fix this by using an unlikely() call in the case where we
actually need to divide.

Also, we will always set budget_per_ring even if there are no Rx rings
in the Rx ring container so we don't need to initialize it to 0.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 92a3d40f53ed..5d2689956ade 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1415,8 +1415,8 @@ int ice_napi_poll(struct napi_struct *napi, int budget)
 				container_of(napi, struct ice_q_vector, napi);
 	struct ice_vsi *vsi = q_vector->vsi;
 	bool clean_complete = true;
-	int budget_per_ring = 0;
 	struct ice_ring *ring;
+	int budget_per_ring;
 	int work_done = 0;
 
 	/* Since the actual Tx work is minimal, we can give the Tx a larger
@@ -1430,11 +1430,16 @@ int ice_napi_poll(struct napi_struct *napi, int budget)
 	if (budget <= 0)
 		return budget;
 
-	/* We attempt to distribute budget to each Rx queue fairly, but don't
-	 * allow the budget to go below 1 because that would exit polling early.
-	 */
-	if (q_vector->num_ring_rx)
+	/* normally we have 1 Rx ring per q_vector */
+	if (unlikely(q_vector->num_ring_rx > 1))
+		/* We attempt to distribute budget to each Rx queue fairly, but
+		 * don't allow the budget to go below 1 because that would exit
+		 * polling early.
+		 */
 		budget_per_ring = max(budget / q_vector->num_ring_rx, 1);
+	else
+		/* Max of 1 Rx ring in this q_vector so give it the budget */
+		budget_per_ring = budget;
 
 	ice_for_each_ring(ring, q_vector->rx) {
 		int cleaned;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
