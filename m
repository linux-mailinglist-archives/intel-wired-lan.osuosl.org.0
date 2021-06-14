Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2603A71A5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Jun 2021 23:58:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1EA9C404FB;
	Mon, 14 Jun 2021 21:58:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0Jtw8tg98Brq; Mon, 14 Jun 2021 21:58:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF1CE404EF;
	Mon, 14 Jun 2021 21:58:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1BBC91BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jun 2021 21:58:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 067E9404EF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jun 2021 21:58:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fkT7OOwyuURz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Jun 2021 21:57:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 445F3404CF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jun 2021 21:57:58 +0000 (UTC)
IronPort-SDR: Z/dwlv/2ttpO7jZySSfrWWILaHuY/OmPcr5BlQ1GIxip+5DEj6zfyEwT8xwZCV1ulr1wyDevTV
 rXGTW5M19d8w==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="193000231"
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="193000231"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 14:57:56 -0700
IronPort-SDR: +8h7/xHt0RXUIlvll040ENboXUNRZqGHl/Q4M1ITha3UDydG1B9keOeR+xxOUunQ1dVq2ATC7C
 mZzDfgGaqOuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="451730664"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by fmsmga008.fm.intel.com with ESMTP; 14 Jun 2021 14:57:56 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 14 Jun 2021 14:46:06 -0700
Message-Id: <20210614214607.41749-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 1/2] ice: remove the VSI info
 from previous agg
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

From: Victor Raj <victor.raj@intel.com>

Remove the VSI info from previous aggregator after moving the VSI to a
new aggregator.

Signed-off-by: Victor Raj <victor.raj@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sched.c | 24 ++++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index a17e24e54cf3..9f07b6641705 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -2745,8 +2745,8 @@ static enum ice_status
 ice_sched_assoc_vsi_to_agg(struct ice_port_info *pi, u32 agg_id,
 			   u16 vsi_handle, unsigned long *tc_bitmap)
 {
-	struct ice_sched_agg_vsi_info *agg_vsi_info;
-	struct ice_sched_agg_info *agg_info;
+	struct ice_sched_agg_vsi_info *agg_vsi_info, *old_agg_vsi_info = NULL;
+	struct ice_sched_agg_info *agg_info, *old_agg_info;
 	enum ice_status status = 0;
 	struct ice_hw *hw = pi->hw;
 	u8 tc;
@@ -2756,6 +2756,20 @@ ice_sched_assoc_vsi_to_agg(struct ice_port_info *pi, u32 agg_id,
 	agg_info = ice_get_agg_info(hw, agg_id);
 	if (!agg_info)
 		return ICE_ERR_PARAM;
+	/* If the VSI is already part of another aggregator then update
+	 * its VSI info list
+	 */
+	old_agg_info = ice_get_vsi_agg_info(hw, vsi_handle);
+	if (old_agg_info && old_agg_info != agg_info) {
+		struct ice_sched_agg_vsi_info *vtmp;
+
+		list_for_each_entry_safe(old_agg_vsi_info, vtmp,
+					 &old_agg_info->agg_vsi_list,
+					 list_entry)
+			if (old_agg_vsi_info->vsi_handle == vsi_handle)
+				break;
+	}
+
 	/* check if entry already exist */
 	agg_vsi_info = ice_get_agg_vsi_info(agg_info, vsi_handle);
 	if (!agg_vsi_info) {
@@ -2780,6 +2794,12 @@ ice_sched_assoc_vsi_to_agg(struct ice_port_info *pi, u32 agg_id,
 			break;
 
 		set_bit(tc, agg_vsi_info->tc_bitmap);
+		if (old_agg_vsi_info)
+			clear_bit(tc, old_agg_vsi_info->tc_bitmap);
+	}
+	if (old_agg_vsi_info && !old_agg_vsi_info->tc_bitmap[0]) {
+		list_del(&old_agg_vsi_info->list_entry);
+		devm_kfree(ice_hw_to_dev(pi->hw), old_agg_vsi_info);
 	}
 	return status;
 }
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
