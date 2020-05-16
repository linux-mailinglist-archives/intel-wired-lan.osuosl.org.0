Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AC41D5D6C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:54:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 74AF988017;
	Sat, 16 May 2020 00:54:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UdnmaWIfOuAr; Sat, 16 May 2020 00:54:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E22FC881FE;
	Sat, 16 May 2020 00:54:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5EDAE1BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:54:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5B7C087F7D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:54:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id thzaNlsoOTme for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:53:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BEB5888017
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:55 +0000 (UTC)
IronPort-SDR: 5tMGkivW2nMBnsl978e/Qjzjx8b4Orko9P844UmwbA4C2mWVvD190JG8BLLKbj8tQWxCRjOF5r
 ygEk8UDYPMkA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:53:54 -0700
IronPort-SDR: 3SbeT/wF1bKNbcT/kI7OTZOjcoomF9jxx4cVo1ly5G0RFrcoMRxgc2n1npqTugJGe2xjoqACdN
 Yc94lkjdf0/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="263360539"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga003.jf.intel.com with ESMTP; 15 May 2020 17:53:54 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:51:09 -0700
Message-Id: <20200516005121.4963-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
References: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S45 03/15] ice: Add helper function for
 clearing VPGEN_VFRTRIG
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

Create a helper function for clearing VPGEN_VFRTRIG as this needs to be
done on reset to notify the VF that we are done resetting it. Also, it
needs to be done on SR-IOV initialization/creation in case it was left
in a bad state after SR-IOV teardown.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 31 ++++++++++++-------
 1 file changed, 20 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 5d6f23cf0c1f..18fe4cfe4443 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -961,6 +961,21 @@ static int ice_set_per_vf_res(struct ice_pf *pf)
 	return 0;
 }
 
+/**
+ * ice_clear_vf_reset_trigger - enable VF to access hardware
+ * @vf: VF to enabled hardware access for
+ */
+static void ice_clear_vf_reset_trigger(struct ice_vf *vf)
+{
+	struct ice_hw *hw = &vf->pf->hw;
+	u32 reg;
+
+	reg = rd32(hw, VPGEN_VFRTRIG(vf->vf_id));
+	reg &= ~VPGEN_VFRTRIG_VFSWR_M;
+	wr32(hw, VPGEN_VFRTRIG(vf->vf_id), reg);
+	ice_flush(hw);
+}
+
 /**
  * ice_cleanup_and_realloc_vf - Clean up VF and reallocate resources after reset
  * @vf: pointer to the VF structure
@@ -974,26 +989,20 @@ static void ice_cleanup_and_realloc_vf(struct ice_vf *vf)
 {
 	struct ice_pf *pf = vf->pf;
 	struct ice_hw *hw;
-	u32 reg;
 
 	hw = &pf->hw;
 
-	/* PF software completes the flow by notifying VF that reset flow is
-	 * completed. This is done by enabling hardware by clearing the reset
-	 * bit in the VPGEN_VFRTRIG reg and setting VFR_STATE in the VFGEN_RSTAT
-	 * register to VFR completed (done at the end of this function)
-	 * By doing this we allow HW to access VF memory at any point. If we
-	 * did it any sooner, HW could access memory while it was being freed
-	 * in ice_free_vf_res(), causing an IOMMU fault.
+	/* Allow HW to access VF memory after calling
+	 * ice_clear_vf_reset_trigger(). If we did it any sooner, HW could
+	 * access memory while it was being freed in ice_free_vf_res(), causing
+	 * an IOMMU fault.
 	 *
 	 * On the other hand, this needs to be done ASAP, because the VF driver
 	 * is waiting for this to happen and may report a timeout. It's
 	 * harmless, but it gets logged into Guest OS kernel log, so best avoid
 	 * it.
 	 */
-	reg = rd32(hw, VPGEN_VFRTRIG(vf->vf_id));
-	reg &= ~VPGEN_VFRTRIG_VFSWR_M;
-	wr32(hw, VPGEN_VFRTRIG(vf->vf_id), reg);
+	ice_clear_vf_reset_trigger(vf);
 
 	/* reallocate VF resources to finish resetting the VSI state */
 	if (!ice_alloc_vf_res(vf)) {
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
