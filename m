Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6824B15CD53
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2020 22:32:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1CC1C87EE8;
	Thu, 13 Feb 2020 21:32:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YDYfwa-As-8I; Thu, 13 Feb 2020 21:32:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B23CB87EA6;
	Thu, 13 Feb 2020 21:32:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 107CF1BF9BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 21:31:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0C813862B4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 21:31:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MYQ3pW3EZkbg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2020 21:31:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 787B9862DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 21:31:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 13:31:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,438,1574150400"; d="scan'208";a="227382407"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga008.jf.intel.com with ESMTP; 13 Feb 2020 13:31:50 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 13 Feb 2020 13:31:18 -0800
Message-Id: <20200213213129.34023-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200213213129.34023-1-anthony.l.nguyen@intel.com>
References: <20200213213129.34023-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S39 v2 04/15] ice: Always clear the
 QRXFLXP_CNTXT register for VF Rx queues
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

Currently when the PF reduces its number of channels via ethtool and
then VFs are created there may be stale data for some of the Rx queues
belonging to VFs. This happens when a VF reuses an Rx queue that was
previously used by the PF. Specifically, the QRXFLXP_CNTXT register
will have incorrect values. Fix this by always clearing the relevant
values in the QRXFLXP_CNTXT register for VF queues.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c       | 8 ++++++--
 drivers/net/ethernet/intel/ice/ice_hw_autogen.h | 1 +
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 75cc5a366b26..54aa533f36d4 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -386,8 +386,8 @@ int ice_setup_rx_ctx(struct ice_ring *ring)
 	 /* Enable Flexible Descriptors in the queue context which
 	  * allows this driver to select a specific receive descriptor format
 	  */
+	regval = rd32(hw, QRXFLXP_CNTXT(pf_q));
 	if (vsi->type != ICE_VSI_VF) {
-		regval = rd32(hw, QRXFLXP_CNTXT(pf_q));
 		regval |= (rxdid << QRXFLXP_CNTXT_RXDID_IDX_S) &
 			QRXFLXP_CNTXT_RXDID_IDX_M;
 
@@ -398,8 +398,12 @@ int ice_setup_rx_ctx(struct ice_ring *ring)
 		regval |= (0x03 << QRXFLXP_CNTXT_RXDID_PRIO_S) &
 			QRXFLXP_CNTXT_RXDID_PRIO_M;
 
-		wr32(hw, QRXFLXP_CNTXT(pf_q), regval);
+	} else {
+		regval &= ~(QRXFLXP_CNTXT_RXDID_IDX_M |
+			    QRXFLXP_CNTXT_RXDID_PRIO_M |
+			    QRXFLXP_CNTXT_TS_M);
 	}
+	wr32(hw, QRXFLXP_CNTXT(pf_q), regval);
 
 	/* Absolute queue number out of 2K needs to be passed */
 	err = ice_write_rxq_ctx(hw, &rlan_ctx, pf_q);
diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index 57f1c4513c0b..3f40736a8295 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -86,6 +86,7 @@
 #define QRXFLXP_CNTXT_RXDID_IDX_M		ICE_M(0x3F, 0)
 #define QRXFLXP_CNTXT_RXDID_PRIO_S		8
 #define QRXFLXP_CNTXT_RXDID_PRIO_M		ICE_M(0x7, 8)
+#define QRXFLXP_CNTXT_TS_M			BIT(11)
 #define GLGEN_RSTAT				0x000B8188
 #define GLGEN_RSTAT_DEVSTATE_M			ICE_M(0x3, 0)
 #define GLGEN_RSTCTL				0x000B8180
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
