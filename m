Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2983286DA5
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Aug 2019 01:08:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9D5388685B;
	Thu,  8 Aug 2019 23:08:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A3aKxfvdVXGq; Thu,  8 Aug 2019 23:08:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 048DE8685A;
	Thu,  8 Aug 2019 23:08:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2A5BE1BF383
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 23:08:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 27C1A86781
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 23:08:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fEXGxSyTh5Si for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2019 23:08:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5868486745
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 23:08:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 16:08:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,363,1559545200"; d="scan'208";a="169141840"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga008.jf.intel.com with ESMTP; 08 Aug 2019 16:08:16 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Aug 2019 07:39:38 -0700
Message-Id: <20190808143938.4968-15-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190808143938.4968-1-anthony.l.nguyen@intel.com>
References: <20190808143938.4968-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S27 15/15] ice: change work limit to a
 constant
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

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

The driver has supported a transmit work limit
that was configurable from ethtool for a long time, but
there are no good use cases for having it be a variable
that can be changed at run time.  In addition, this
variable was noted to be causing performance overhead
due to cache misses.

Just remove the variable and let the code use a constant
so that the functionality is maintained (a limit on the
number of transmits that will be cleaned in any one call
to the clean routines) without the cache miss.

Removes code, removes a variable, removes testing surface. Yay.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |  3 ---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 14 ++------------
 drivers/net/ethernet/intel/ice/ice_lib.c     |  2 +-
 3 files changed, 3 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 681224c1de0e..f05e43693c95 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -247,9 +247,6 @@ struct ice_vsi {
 	u16 vsi_num;			/* HW (absolute) index of this VSI */
 	u16 idx;			/* software index in pf->vsi[] */
 
-	/* Interrupt thresholds */
-	u16 work_lmt;
-
 	s16 vf_id;			/* VF ID for SR-IOV VSIs */
 
 	u16 ethtype;			/* Ethernet protocol for pause frame */
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index dadcf4324f56..68dd5ec392ce 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3361,12 +3361,6 @@ __ice_get_coalesce(struct net_device *netdev, struct ethtool_coalesce *ec,
 	if (ice_get_q_coalesce(vsi, ec, q_num))
 		return -EINVAL;
 
-	if (q_num < vsi->num_txq)
-		ec->tx_max_coalesced_frames_irq = vsi->work_lmt;
-
-	if (q_num < vsi->num_rxq)
-		ec->rx_max_coalesced_frames_irq = vsi->work_lmt;
-
 	return 0;
 }
 
@@ -3546,17 +3540,13 @@ __ice_set_coalesce(struct net_device *netdev, struct ethtool_coalesce *ec,
 			if (ice_set_q_coalesce(vsi, ec, i))
 				return -EINVAL;
 		}
-		goto set_work_lmt;
+		goto set_complete;
 	}
 
 	if (ice_set_q_coalesce(vsi, ec, q_num))
 		return -EINVAL;
 
-set_work_lmt:
-
-	if (ec->tx_max_coalesced_frames_irq || ec->rx_max_coalesced_frames_irq)
-		vsi->work_lmt = max(ec->tx_max_coalesced_frames_irq,
-				    ec->rx_max_coalesced_frames_irq);
+set_complete:
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 46cca842eea9..541c480d27e4 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -574,8 +574,8 @@ ice_vsi_alloc(struct ice_pf *pf, enum ice_vsi_type type, u16 vf_id)
 	vsi->type = type;
 	vsi->back = pf;
 	set_bit(__ICE_DOWN, vsi->state);
+
 	vsi->idx = pf->next_vsi;
-	vsi->work_lmt = ICE_DFLT_IRQ_WORK;
 
 	if (type == ICE_VSI_VF)
 		ice_vsi_set_num_qs(vsi, vf_id);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
