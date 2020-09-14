Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B66E826904A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Sep 2020 17:42:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E5687867D7;
	Mon, 14 Sep 2020 15:42:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SB75lWFmsCej; Mon, 14 Sep 2020 15:42:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C291F867CC;
	Mon, 14 Sep 2020 15:42:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 372431BF389
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Sep 2020 15:42:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2934D8704B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Sep 2020 15:42:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ThOnw-o44sXJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Sep 2020 15:42:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7F44A87249
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Sep 2020 15:42:50 +0000 (UTC)
IronPort-SDR: jRC8UgLcNDCCIWwqlS0w0fki4BA7pavI7wX2ZymImHwBjbhgWRQsb13Fd2VNB/7vKDcsb46ZKx
 vXNWrlTRnqxA==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="138604406"
X-IronPort-AV: E=Sophos;i="5.76,426,1592895600"; d="scan'208";a="138604406"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 08:42:49 -0700
IronPort-SDR: H2SC6oU2ZBtd8Gc/qanV4a41i8H2pPCkIV4gl9JxqNe6E2EcIfJ0fPE6mYl1UARxGMPRhKTlvp
 uvgvTYCDbBmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,426,1592895600"; d="scan'208";a="450924284"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga004.jf.intel.com with ESMTP; 14 Sep 2020 08:42:48 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 14 Sep 2020 08:37:14 -0700
Message-Id: <20200914153720.48498-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S52 1/7] ice: cleanup stack hog
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

From: Bruce Allan <bruce.w.allan@intel.com>

In ice_flow_add_prof_sync(), struct ice_flow_prof_params has recently
grown in size hogging stack space when allocated there.  Hogging stack
space should be avoided.  Change allocation to be on the heap when needed.

Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_flow.c | 44 +++++++++++++----------
 1 file changed, 26 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index eadc85aee389..2a92071bd7d1 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -708,37 +708,42 @@ ice_flow_add_prof_sync(struct ice_hw *hw, enum ice_block blk,
 		       struct ice_flow_seg_info *segs, u8 segs_cnt,
 		       struct ice_flow_prof **prof)
 {
-	struct ice_flow_prof_params params;
+	struct ice_flow_prof_params *params;
 	enum ice_status status;
 	u8 i;
 
 	if (!prof)
 		return ICE_ERR_BAD_PTR;
 
-	memset(&params, 0, sizeof(params));
-	params.prof = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*params.prof),
-				   GFP_KERNEL);
-	if (!params.prof)
+	params = kzalloc(sizeof(*params), GFP_KERNEL);
+	if (!params)
 		return ICE_ERR_NO_MEMORY;
 
+	params->prof = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*params->prof),
+				    GFP_KERNEL);
+	if (!params->prof) {
+		status = ICE_ERR_NO_MEMORY;
+		goto free_params;
+	}
+
 	/* initialize extraction sequence to all invalid (0xff) */
 	for (i = 0; i < ICE_MAX_FV_WORDS; i++) {
-		params.es[i].prot_id = ICE_PROT_INVALID;
-		params.es[i].off = ICE_FV_OFFSET_INVAL;
+		params->es[i].prot_id = ICE_PROT_INVALID;
+		params->es[i].off = ICE_FV_OFFSET_INVAL;
 	}
 
-	params.blk = blk;
-	params.prof->id = prof_id;
-	params.prof->dir = dir;
-	params.prof->segs_cnt = segs_cnt;
+	params->blk = blk;
+	params->prof->id = prof_id;
+	params->prof->dir = dir;
+	params->prof->segs_cnt = segs_cnt;
 
 	/* Make a copy of the segments that need to be persistent in the flow
 	 * profile instance
 	 */
 	for (i = 0; i < segs_cnt; i++)
-		memcpy(&params.prof->segs[i], &segs[i], sizeof(*segs));
+		memcpy(&params->prof->segs[i], &segs[i], sizeof(*segs));
 
-	status = ice_flow_proc_segs(hw, &params);
+	status = ice_flow_proc_segs(hw, params);
 	if (status) {
 		ice_debug(hw, ICE_DBG_FLOW,
 			  "Error processing a flow's packet segments\n");
@@ -746,19 +751,22 @@ ice_flow_add_prof_sync(struct ice_hw *hw, enum ice_block blk,
 	}
 
 	/* Add a HW profile for this flow profile */
-	status = ice_add_prof(hw, blk, prof_id, (u8 *)params.ptypes, params.es);
+	status = ice_add_prof(hw, blk, prof_id, (u8 *)params->ptypes,
+			      params->es);
 	if (status) {
 		ice_debug(hw, ICE_DBG_FLOW, "Error adding a HW flow profile\n");
 		goto out;
 	}
 
-	INIT_LIST_HEAD(&params.prof->entries);
-	mutex_init(&params.prof->entries_lock);
-	*prof = params.prof;
+	INIT_LIST_HEAD(&params->prof->entries);
+	mutex_init(&params->prof->entries_lock);
+	*prof = params->prof;
 
 out:
 	if (status)
-		devm_kfree(ice_hw_to_dev(hw), params.prof);
+		devm_kfree(ice_hw_to_dev(hw), params->prof);
+free_params:
+	kfree(params);
 
 	return status;
 }
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
