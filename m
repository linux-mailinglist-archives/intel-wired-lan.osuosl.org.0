Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F19A07557B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2019 19:24:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9A45E22660;
	Thu, 25 Jul 2019 17:24:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dWthASnhjqJL; Thu, 25 Jul 2019 17:24:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CA4C52266F;
	Thu, 25 Jul 2019 17:24:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 764CF1BF312
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 17:24:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 733882044E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 17:24:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y304T26hriCY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2019 17:23:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 5E65E2263C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 17:23:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 10:23:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,307,1559545200"; d="scan'208";a="160973712"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga007.jf.intel.com with ESMTP; 25 Jul 2019 10:23:56 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jul 2019 01:55:37 -0700
Message-Id: <20190725085541.55104-11-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190725085541.55104-1-anthony.l.nguyen@intel.com>
References: <20190725085541.55104-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S23 v4 11/15] ice: Reduce wait times
 during VF bringup/reset
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

Currently there are a couple places where the VF is waiting too long when
checking the status of registers. This is causing the AVF driver to
spin for longer than necessary in the __IAVF_STARTUP state. Sometimes
it causes the AVF to go into the __IAVF_COMM_FAILED, which may retrigger
the __IAVF_STARTUP state. Try to reduce the chance of this happening by
removing unnecessary wait times in VF bringup/resets.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 26 +++++++++++--------
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  4 +++
 2 files changed, 19 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 54b0e88af4ca..8a5bf9730fdf 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -382,12 +382,15 @@ static void ice_trigger_vf_reset(struct ice_vf *vf, bool is_vflr)
 
 	wr32(hw, PF_PCI_CIAA,
 	     VF_DEVICE_STATUS | (vf_abs_id << PF_PCI_CIAA_VF_NUM_S));
-	for (i = 0; i < 100; i++) {
+	for (i = 0; i < ICE_PCI_CIAD_WAIT_COUNT; i++) {
 		reg = rd32(hw, PF_PCI_CIAD);
-		if ((reg & VF_TRANS_PENDING_M) != 0)
-			dev_err(&pf->pdev->dev,
-				"VF %d PCI transactions stuck\n", vf->vf_id);
-		udelay(1);
+		/* no transactions pending so stop polling */
+		if ((reg & VF_TRANS_PENDING_M) == 0)
+			break;
+
+		dev_err(&pf->pdev->dev,
+			"VF %d PCI transactions stuck\n", vf->vf_id);
+		udelay(ICE_PCI_CIAD_WAIT_DELAY_US);
 	}
 }
 
@@ -1068,7 +1071,6 @@ bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
 	 * finished resetting.
 	 */
 	for (i = 0, v = 0; i < 10 && v < pf->num_alloc_vfs; i++) {
-		usleep_range(10000, 20000);
 
 		/* Check each VF in sequence */
 		while (v < pf->num_alloc_vfs) {
@@ -1076,8 +1078,11 @@ bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
 
 			vf = &pf->vf[v];
 			reg = rd32(hw, VPGEN_VFRSTAT(vf->vf_id));
-			if (!(reg & VPGEN_VFRSTAT_VFRD_M))
+			if (!(reg & VPGEN_VFRSTAT_VFRD_M)) {
+				/* only delay if the check failed */
+				usleep_range(10, 20);
 				break;
+			}
 
 			/* If the current VF has finished resetting, move on
 			 * to the next VF in sequence.
@@ -1091,7 +1096,6 @@ bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
 	 */
 	if (v < pf->num_alloc_vfs)
 		dev_warn(&pf->pdev->dev, "VF reset check timeout\n");
-	usleep_range(10000, 20000);
 
 	/* free VF resources to begin resetting the VSI state */
 	for (v = 0; v < pf->num_alloc_vfs; v++) {
@@ -1165,12 +1169,14 @@ static bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 		 * poll the status register to make sure that the reset
 		 * completed successfully.
 		 */
-		usleep_range(10000, 20000);
 		reg = rd32(hw, VPGEN_VFRSTAT(vf->vf_id));
 		if (reg & VPGEN_VFRSTAT_VFRD_M) {
 			rsd = true;
 			break;
 		}
+
+		/* only sleep if the reset is not done */
+		usleep_range(10, 20);
 	}
 
 	/* Display a warning if VF didn't manage to reset in time, but need to
@@ -1180,8 +1186,6 @@ static bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 		dev_warn(&pf->pdev->dev, "VF reset check timeout on VF %d\n",
 			 vf->vf_id);
 
-	usleep_range(10000, 20000);
-
 	/* disable promiscuous modes in case they were enabled
 	 * ignore any error if disabling process failed
 	 */
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index 424bc0538956..79bb47f73879 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -22,6 +22,10 @@
 #define VF_DEVICE_STATUS		0xAA
 #define VF_TRANS_PENDING_M		0x20
 
+/* wait defines for polling PF_PCI_CIAD register status */
+#define ICE_PCI_CIAD_WAIT_COUNT		100
+#define ICE_PCI_CIAD_WAIT_DELAY_US	1
+
 /* Specific VF states */
 enum ice_vf_states {
 	ICE_VF_STATE_INIT = 0,
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
