Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FEC2328B0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Jul 2020 02:24:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CD2EB8838E;
	Thu, 30 Jul 2020 00:23:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QnNA-sGpqoGZ; Thu, 30 Jul 2020 00:23:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 68044883F6;
	Thu, 30 Jul 2020 00:23:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 96B171BF9B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 00:23:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9324A877E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 00:23:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fQbBYXfAUdha for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jul 2020 00:23:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4842787852
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 00:23:52 +0000 (UTC)
IronPort-SDR: lZ/h7x2ythOh3VRJUwfCmvc+zrmwCZxkr0ZsyT50ZiG4Xlx4+1pAakL2TTGSjUJucGwplVnlQa
 ghSoDiNOZItQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9697"; a="216004463"
X-IronPort-AV: E=Sophos;i="5.75,412,1589266800"; d="scan'208";a="216004463"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2020 17:23:50 -0700
IronPort-SDR: TRD8bmLSusY8M/bzuLSTTpnMxKQfD+u/i9oYODmp475pZz3J1EJBGNDHkPSjpW7YSYPBPErnLm
 jof0gmrNqIGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,412,1589266800"; d="scan'208";a="320908821"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga008.jf.intel.com with ESMTP; 29 Jul 2020 17:23:49 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 29 Jul 2020 17:19:12 -0700
Message-Id: <20200730001922.52568-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
References: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S51 03/13] ice: Fix RSS profile locks
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

From: Vignesh Sridhar <vignesh.sridhar@intel.com>

Replacing flow profile locks with RSS profile locks in the function to
remove all RSS rules for a given VSI. This is to align the locks used
for RSS rule addition to VSI and removal during VSI teardown to avoid
a race condition owing to several iterations of the above operations.
In function to get RSS rules for given VSI and protocol header replacing
the pointer reference of the RSS entry with a copy of hash value to
ensure thread safety.

Signed-off-by: Vignesh Sridhar <vignesh.sridhar@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_flow.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index d74e5290677f..fe677621dd51 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -1187,7 +1187,7 @@ enum ice_status ice_rem_vsi_rss_cfg(struct ice_hw *hw, u16 vsi_handle)
 	if (list_empty(&hw->fl_profs[blk]))
 		return 0;
 
-	mutex_lock(&hw->fl_profs_locks[blk]);
+	mutex_lock(&hw->rss_locks);
 	list_for_each_entry_safe(p, t, &hw->fl_profs[blk], l_entry)
 		if (test_bit(vsi_handle, p->vsis)) {
 			status = ice_flow_disassoc_prof(hw, blk, p, vsi_handle);
@@ -1195,12 +1195,12 @@ enum ice_status ice_rem_vsi_rss_cfg(struct ice_hw *hw, u16 vsi_handle)
 				break;
 
 			if (bitmap_empty(p->vsis, ICE_MAX_VSI)) {
-				status = ice_flow_rem_prof_sync(hw, blk, p);
+				status = ice_flow_rem_prof(hw, blk, p->id);
 				if (status)
 					break;
 			}
 		}
-	mutex_unlock(&hw->fl_profs_locks[blk]);
+	mutex_unlock(&hw->rss_locks);
 
 	return status;
 }
@@ -1597,7 +1597,8 @@ enum ice_status ice_replay_rss_cfg(struct ice_hw *hw, u16 vsi_handle)
  */
 u64 ice_get_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u32 hdrs)
 {
-	struct ice_rss_cfg *r, *rss_cfg = NULL;
+	u64 rss_hash = ICE_HASH_INVALID;
+	struct ice_rss_cfg *r;
 
 	/* verify if the protocol header is non zero and VSI is valid */
 	if (hdrs == ICE_FLOW_SEG_HDR_NONE || !ice_is_vsi_valid(hw, vsi_handle))
@@ -1607,10 +1608,10 @@ u64 ice_get_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u32 hdrs)
 	list_for_each_entry(r, &hw->rss_list_head, l_entry)
 		if (test_bit(vsi_handle, r->vsis) &&
 		    r->packet_hdr == hdrs) {
-			rss_cfg = r;
+			rss_hash = r->hashed_flds;
 			break;
 		}
 	mutex_unlock(&hw->rss_locks);
 
-	return rss_cfg ? rss_cfg->hashed_flds : ICE_HASH_INVALID;
+	return rss_hash;
 }
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
