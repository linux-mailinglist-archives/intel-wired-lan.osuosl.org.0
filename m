Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 613F311D75A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Dec 2019 20:44:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 15F5B881BA;
	Thu, 12 Dec 2019 19:44:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F2wgB8SNbOEJ; Thu, 12 Dec 2019 19:44:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E8967881A5;
	Thu, 12 Dec 2019 19:44:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 35BCB1BF340
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 20545888CF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SBu+Y8P0a3m6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2019 19:44:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A6E40888C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 11:44:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,306,1571727600"; d="scan'208";a="296698861"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga001.jf.intel.com with ESMTP; 12 Dec 2019 11:44:35 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 12 Dec 2019 03:13:06 -0800
Message-Id: <20191212111307.33566-14-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191212111307.33566-1-anthony.l.nguyen@intel.com>
References: <20191212111307.33566-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S35 14/15] ice: Add a boundary check in
 ice_xsk_umem()
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

From: Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>

In ice_xsk_umem(), variable qid which is later used as an array index,
is not validated for a possible boundary exceedance. Because of that,
a calling function might receive an invalid address, which causes
general protection fault when dereferenced.

To address this, add a boundary check to see if qid is greater than the
size of a UMEM array. Also, don't let user change vsi->num_xsk_umems
just by trying to setup a second UMEM if its value is already set up
(i.e. UMEM region has already been allocated for this VSI).

While at it, make sure that ring->zca.free pointer is always zeroed out
if there is no UMEM on a specified ring.

Signed-off-by: Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      | 5 +++--
 drivers/net/ethernet/intel/ice/ice_base.c | 1 +
 drivers/net/ethernet/intel/ice/ice_xsk.c  | 3 ++-
 3 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index b2b1f7b1d932..3dc523fff034 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -476,12 +476,13 @@ static inline void ice_set_ring_xdp(struct ice_ring *ring)
 static inline struct xdp_umem *ice_xsk_umem(struct ice_ring *ring)
 {
 	struct xdp_umem **umems = ring->vsi->xsk_umems;
-	int qid = ring->q_index;
+	u16 qid = ring->q_index;
 
 	if (ice_ring_is_xdp(ring))
 		qid -= ring->vsi->num_xdp_txq;
 
-	if (!umems || !umems[qid] || !ice_is_xdp_ena_vsi(ring->vsi))
+	if (qid >= ring->vsi->num_xsk_umems || !umems || !umems[qid] ||
+	    !ice_is_xdp_ena_vsi(ring->vsi))
 		return NULL;
 
 	return umems[qid];
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index d4559d45288f..25f2e0fb3833 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -326,6 +326,7 @@ int ice_setup_rx_ctx(struct ice_ring *ring)
 			dev_info(&vsi->back->pdev->dev, "Registered XDP mem model MEM_TYPE_ZERO_COPY on Rx ring %d\n",
 				 ring->q_index);
 		} else {
+			ring->zca.free = NULL;
 			if (!xdp_rxq_info_is_reg(&ring->xdp_rxq))
 				xdp_rxq_info_reg(&ring->xdp_rxq,
 						 ring->netdev,
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index cf9b8b22d24f..be787efaa9d5 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -414,7 +414,8 @@ ice_xsk_umem_enable(struct ice_vsi *vsi, struct xdp_umem *umem, u16 qid)
 	if (vsi->type != ICE_VSI_PF)
 		return -EINVAL;
 
-	vsi->num_xsk_umems = min_t(u16, vsi->num_rxq, vsi->num_txq);
+	if (!vsi->num_xsk_umems)
+		vsi->num_xsk_umems = min_t(u16, vsi->num_rxq, vsi->num_txq);
 	if (qid >= vsi->num_xsk_umems)
 		return -EINVAL;
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
