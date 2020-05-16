Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3341D5D6B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:54:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C778789887;
	Sat, 16 May 2020 00:54:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JE2Ij7emv38R; Sat, 16 May 2020 00:54:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 347C689A2C;
	Sat, 16 May 2020 00:54:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5E0F61BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5B18D87F7D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4qjqc1_jVZHJ for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:53:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E3F08881F1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:56 +0000 (UTC)
IronPort-SDR: Ra+VD6KhlYWN1CAxaJxwnOn7BQGIBefRp9M5568OKh6Gaowvg5dpwsEdI3VjxEtMLEVEP7ZpgZ
 UGCkYZqcg0JQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:53:54 -0700
IronPort-SDR: IBsUSnH1laFUrBu0jBjtfIAe4Y9CLk788UHr0jVS/neCYITHpdaK6PsahfEWZcFBKwEmeV5/GP
 +KaL0XdayxMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="263360549"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga003.jf.intel.com with ESMTP; 15 May 2020 17:53:54 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:51:19 -0700
Message-Id: <20200516005121.4963-13-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
References: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S45 13/15] ice: Fix transmit for all
 software offloaded VLANs
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

Currently the driver does not recognize when there is an 802.1AD VLAN
tag right after the dmac/smac (outermost VLAN tag). If any DCB map is
applied and/or DCB is enabled this is causing the hardware to insert a
VLAN 0 tag after the 802.1AD VLAN tag that is already in the packet.
Fix this by preventing VLAN tag 0 from being added when any VLAN is
already present after dmac/smac (software offloaded) or skb (hardware
offloaded).

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 28 +++++-------
 drivers/net/ethernet/intel/ice/ice_dcb_lib.h |  2 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c    | 45 +++++---------------
 3 files changed, 21 insertions(+), 54 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index d5055d9e3fd2..663d29c0f4a4 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -828,39 +828,31 @@ void ice_update_dcb_stats(struct ice_pf *pf)
  * ice_tx_prepare_vlan_flags_dcb - prepare VLAN tagging for DCB
  * @tx_ring: ring to send buffer on
  * @first: pointer to struct ice_tx_buf
+ *
+ * This should not be called if the outer VLAN is software offloaded as the VLAN
+ * tag will already be configured with the correct ID and priority bits
  */
-int
+void
 ice_tx_prepare_vlan_flags_dcb(struct ice_ring *tx_ring,
 			      struct ice_tx_buf *first)
 {
 	struct sk_buff *skb = first->skb;
 
 	if (!test_bit(ICE_FLAG_DCB_ENA, tx_ring->vsi->back->flags))
-		return 0;
+		return;
 
 	/* Insert 802.1p priority into VLAN header */
-	if ((first->tx_flags & (ICE_TX_FLAGS_HW_VLAN | ICE_TX_FLAGS_SW_VLAN)) ||
+	if ((first->tx_flags & ICE_TX_FLAGS_HW_VLAN) ||
 	    skb->priority != TC_PRIO_CONTROL) {
 		first->tx_flags &= ~ICE_TX_FLAGS_VLAN_PR_M;
 		/* Mask the lower 3 bits to set the 802.1p priority */
 		first->tx_flags |= (skb->priority & 0x7) <<
 				   ICE_TX_FLAGS_VLAN_PR_S;
-		if (first->tx_flags & ICE_TX_FLAGS_SW_VLAN) {
-			struct vlan_ethhdr *vhdr;
-			int rc;
-
-			rc = skb_cow_head(skb, 0);
-			if (rc < 0)
-				return rc;
-			vhdr = (struct vlan_ethhdr *)skb->data;
-			vhdr->h_vlan_TCI = htons(first->tx_flags >>
-						 ICE_TX_FLAGS_VLAN_S);
-		} else {
-			first->tx_flags |= ICE_TX_FLAGS_HW_VLAN;
-		}
+		/* if this is not already set it means a VLAN 0 + priority needs
+		 * to be offloaded
+		 */
+		first->tx_flags |= ICE_TX_FLAGS_HW_VLAN;
 	}
-
-	return 0;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.h b/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
index a7a5d9833a93..c76cca3e489e 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
@@ -27,7 +27,7 @@ void ice_pf_dcb_recfg(struct ice_pf *pf);
 void ice_vsi_cfg_dcb_rings(struct ice_vsi *vsi);
 int ice_init_pf_dcb(struct ice_pf *pf, bool locked);
 void ice_update_dcb_stats(struct ice_pf *pf);
-int
+void
 ice_tx_prepare_vlan_flags_dcb(struct ice_ring *tx_ring,
 			      struct ice_tx_buf *first);
 void
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 4b1a7ab147f8..4d08e4756f50 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -2037,49 +2037,25 @@ int ice_tx_csum(struct ice_tx_buf *first, struct ice_tx_offload_params *off)
  *
  * Checks the skb and set up correspondingly several generic transmit flags
  * related to VLAN tagging for the HW, such as VLAN, DCB, etc.
- *
- * Returns error code indicate the frame should be dropped upon error and the
- * otherwise returns 0 to indicate the flags has been set properly.
  */
-static int
+static void
 ice_tx_prepare_vlan_flags(struct ice_ring *tx_ring, struct ice_tx_buf *first)
 {
 	struct sk_buff *skb = first->skb;
-	__be16 protocol = skb->protocol;
-
-	if (protocol == htons(ETH_P_8021Q) &&
-	    !(tx_ring->netdev->features & NETIF_F_HW_VLAN_CTAG_TX)) {
-		/* when HW VLAN acceleration is turned off by the user the
-		 * stack sets the protocol to 8021q so that the driver
-		 * can take any steps required to support the SW only
-		 * VLAN handling. In our case the driver doesn't need
-		 * to take any further steps so just set the protocol
-		 * to the encapsulated ethertype.
-		 */
-		skb->protocol = vlan_get_protocol(skb);
-		return 0;
-	}
 
-	/* if we have a HW VLAN tag being added, default to the HW one */
+	/* nothing left to do, software offloaded VLAN */
+	if (!skb_vlan_tag_present(skb) && eth_type_vlan(skb->protocol))
+		return;
+
+	/* currently, we always assume 802.1Q for VLAN insertion as VLAN
+	 * insertion for 802.1AD is not supported
+	 */
 	if (skb_vlan_tag_present(skb)) {
 		first->tx_flags |= skb_vlan_tag_get(skb) << ICE_TX_FLAGS_VLAN_S;
 		first->tx_flags |= ICE_TX_FLAGS_HW_VLAN;
-	} else if (protocol == htons(ETH_P_8021Q)) {
-		struct vlan_hdr *vhdr, _vhdr;
-
-		/* for SW VLAN, check the next protocol and store the tag */
-		vhdr = (struct vlan_hdr *)skb_header_pointer(skb, ETH_HLEN,
-							     sizeof(_vhdr),
-							     &_vhdr);
-		if (!vhdr)
-			return -EINVAL;
-
-		first->tx_flags |= ntohs(vhdr->h_vlan_TCI) <<
-				   ICE_TX_FLAGS_VLAN_S;
-		first->tx_flags |= ICE_TX_FLAGS_SW_VLAN;
 	}
 
-	return ice_tx_prepare_vlan_flags_dcb(tx_ring, first);
+	ice_tx_prepare_vlan_flags_dcb(tx_ring, first);
 }
 
 /**
@@ -2387,8 +2363,7 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct ice_ring *tx_ring)
 	first->tx_flags = 0;
 
 	/* prepare the VLAN tagging flags for Tx */
-	if (ice_tx_prepare_vlan_flags(tx_ring, first))
-		goto out_drop;
+	ice_tx_prepare_vlan_flags(tx_ring, first);
 
 	/* set up TSO offload */
 	tso = ice_tso(first, &offload);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
