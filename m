Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE8EA7139
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Sep 2019 19:00:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8F56F86341;
	Tue,  3 Sep 2019 17:00:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uyKRHl_BpoQT; Tue,  3 Sep 2019 17:00:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 44CD3868F3;
	Tue,  3 Sep 2019 17:00:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1236E1BF27F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2019 17:00:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0C72787E3C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2019 17:00:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aU4OAOO3jYxf for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Sep 2019 17:00:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 688F287E75
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2019 17:00:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 10:00:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,463,1559545200"; d="scan'208";a="187320657"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga006.jf.intel.com with ESMTP; 03 Sep 2019 10:00:13 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  3 Sep 2019 01:31:00 -0700
Message-Id: <20190903083108.19593-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S28 v2 1/9] ice: Reliably reset VFs
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

From: Mitch Williams <mitch.a.williams@intel.com>

When a PFR (or bigger reset) occurs, the device clears the VF_MBX_ARQLEN
register for all VFs. But if a VFR is triggered by a VF, the device does
NOT clear this register, and the VF driver will never see the reset.

When this happens, the VF driver will eventually timeout and attempt
recovery, and usually it will be successful. But this makes resets take
a long time and there are occasional failures.

We cannot just blithely clear this register on every reset; this has
been shown to cause synchronization problems when a PFR is triggered
with a large number of VFs.

Fix this by clearing VF_MBX_ARQLEN when the reset source is not PFR.
GlobR will trigger PFR, so this test catches that occurrence as well.

Signed-off-by: Mitch Williams <mitch.a.williams@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index c38939b1d496..3ba6613048ef 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -353,12 +353,13 @@ void ice_free_vfs(struct ice_pf *pf)
  * ice_trigger_vf_reset - Reset a VF on HW
  * @vf: pointer to the VF structure
  * @is_vflr: true if VFLR was issued, false if not
+ * @is_pfr: true if the reset was triggered due to a previous PFR
  *
  * Trigger hardware to start a reset for a particular VF. Expects the caller
  * to wait the proper amount of time to allow hardware to reset the VF before
  * it cleans up and restores VF functionality.
  */
-static void ice_trigger_vf_reset(struct ice_vf *vf, bool is_vflr)
+static void ice_trigger_vf_reset(struct ice_vf *vf, bool is_vflr, bool is_pfr)
 {
 	struct ice_pf *pf = vf->pf;
 	u32 reg, reg_idx, bit_idx;
@@ -379,10 +380,13 @@ static void ice_trigger_vf_reset(struct ice_vf *vf, bool is_vflr)
 	 */
 	clear_bit(ICE_VF_STATE_INIT, vf->vf_states);
 
-	/* Clear the VF's ARQLEN register. This is how the VF detects reset,
-	 * since the VFGEN_RSTAT register doesn't stick at 0 after reset.
+	/* VF_MBX_ARQLEN is cleared by PFR, so the driver needs to clear it
+	 * in the case of VFR. If this is done for PFR, it can mess up VF
+	 * resets because the VF driver may already have started cleanup
+	 * by the time we get here.
 	 */
-	wr32(hw, VF_MBX_ARQLEN(vf_abs_id), 0);
+	if (!is_pfr)
+		wr32(hw, VF_MBX_ARQLEN(vf_abs_id), 0);
 
 	/* In the case of a VFLR, the HW has already reset the VF and we
 	 * just need to clean up, so don't hit the VFRTRIG register.
@@ -1072,7 +1076,7 @@ bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
 
 	/* Begin reset on all VFs at once */
 	for (v = 0; v < pf->num_alloc_vfs; v++)
-		ice_trigger_vf_reset(&pf->vf[v], is_vflr);
+		ice_trigger_vf_reset(&pf->vf[v], is_vflr, true);
 
 	for (v = 0; v < pf->num_alloc_vfs; v++) {
 		struct ice_vsi *vsi;
@@ -1172,7 +1176,7 @@ static bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 	if (test_and_set_bit(ICE_VF_STATE_DIS, vf->vf_states))
 		return false;
 
-	ice_trigger_vf_reset(vf, is_vflr);
+	ice_trigger_vf_reset(vf, is_vflr, false);
 
 	vsi = pf->vsi[vf->lan_vsi_idx];
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
