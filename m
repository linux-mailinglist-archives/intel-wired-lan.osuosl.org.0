Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB281C9FC8
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 May 2020 02:43:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 314CC20434;
	Fri,  8 May 2020 00:43:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ypCC2HaSTZTF; Fri,  8 May 2020 00:43:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 183CC2152E;
	Fri,  8 May 2020 00:43:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 27AD41BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2020 00:43:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0B61C878A8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2020 00:43:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lcCVNqNyf41o for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2020 00:43:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1AC9587A84
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2020 00:43:35 +0000 (UTC)
IronPort-SDR: LwEUoD/LVN6MgN5WXsN+YQn4U6M+NyYatcPqE3geW8YUJRSdvvbXw8xq8w8Fj1XNbmZQ/SLTL3
 34bUokUO0iVw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 17:43:34 -0700
IronPort-SDR: 9MCHbCGWgCMSx2YcopFp5l8xSfw4T6sv9b5NIOw+T0IqqK0TqKCDRsDA2dek2eAWKVwxhBtLm5
 YNyNt5mLQ9tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,365,1583222400"; d="scan'208";a="249468773"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga007.jf.intel.com with ESMTP; 07 May 2020 17:43:33 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 May 2020 17:41:06 -0700
Message-Id: <20200508004113.39725-8-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
References: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S41 08/15] ice: cleanup vf_id signedness
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

The vf_id variable is dealt with in the code in inconsistent
ways of sign usage, preventing compilation with -Werror=sign-compare.
Fix this problem in the code by always treating vf_id as unsigned, since
there are no valid values of vf_id that are negative.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h            |  2 +-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c    | 17 +++++++++--------
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h    |  2 +-
 3 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 9926cc47755b..adb4f1366e9f 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -377,7 +377,7 @@ struct ice_pf {
 	struct ice_sw *first_sw;	/* first switch created by firmware */
 	/* Virtchnl/SR-IOV config info */
 	struct ice_vf *vf;
-	int num_alloc_vfs;		/* actual number of VFs allocated */
+	u16 num_alloc_vfs;		/* actual number of VFs allocated */
 	u16 num_vfs_supported;		/* num VFs supported for this PF */
 	u16 num_qps_per_vf;
 	u16 num_msix_per_vf;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index c8b8741a3b47..9aa02f74e88c 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -10,10 +10,11 @@
  * @pf: pointer to the PF structure
  * @vf_id: the ID of the VF to check
  */
-static int ice_validate_vf_id(struct ice_pf *pf, int vf_id)
+static int ice_validate_vf_id(struct ice_pf *pf, u16 vf_id)
 {
+	/* vf_id range is only valid for 0-255, and should always be unsigned */
 	if (vf_id >= pf->num_alloc_vfs) {
-		dev_err(ice_pf_to_dev(pf), "Invalid VF ID: %d\n", vf_id);
+		dev_err(ice_pf_to_dev(pf), "Invalid VF ID: %u\n", vf_id);
 		return -EINVAL;
 	}
 	return 0;
@@ -27,7 +28,7 @@ static int ice_validate_vf_id(struct ice_pf *pf, int vf_id)
 static int ice_check_vf_init(struct ice_pf *pf, struct ice_vf *vf)
 {
 	if (!test_bit(ICE_VF_STATE_INIT, vf->vf_states)) {
-		dev_err(ice_pf_to_dev(pf), "VF ID: %d in reset. Try again.\n",
+		dev_err(ice_pf_to_dev(pf), "VF ID: %u in reset. Try again.\n",
 			vf->vf_id);
 		return -EBUSY;
 	}
@@ -368,7 +369,7 @@ void ice_free_vfs(struct ice_pf *pf)
 	 * before this function ever gets called.
 	 */
 	if (!pci_vfs_assigned(pf->pdev)) {
-		int vf_id;
+		unsigned int vf_id;
 
 		/* Acknowledge VFLR for all VFs. Without this, VFs will fail to
 		 * work correctly when SR-IOV gets re-enabled.
@@ -399,9 +400,9 @@ static void ice_trigger_vf_reset(struct ice_vf *vf, bool is_vflr, bool is_pfr)
 {
 	struct ice_pf *pf = vf->pf;
 	u32 reg, reg_idx, bit_idx;
+	unsigned int vf_abs_id, i;
 	struct device *dev;
 	struct ice_hw *hw;
-	int vf_abs_id, i;
 
 	dev = ice_pf_to_dev(pf);
 	hw = &pf->hw;
@@ -449,7 +450,7 @@ static void ice_trigger_vf_reset(struct ice_vf *vf, bool is_vflr, bool is_pfr)
 		if ((reg & VF_TRANS_PENDING_M) == 0)
 			break;
 
-		dev_err(dev, "VF %d PCI transactions stuck\n", vf->vf_id);
+		dev_err(dev, "VF %u PCI transactions stuck\n", vf->vf_id);
 		udelay(ICE_PCI_CIAD_WAIT_DELAY_US);
 	}
 }
@@ -1490,7 +1491,7 @@ int ice_sriov_configure(struct pci_dev *pdev, int num_vfs)
 void ice_process_vflr_event(struct ice_pf *pf)
 {
 	struct ice_hw *hw = &pf->hw;
-	int vf_id;
+	unsigned int vf_id;
 	u32 reg;
 
 	if (!test_and_clear_bit(__ICE_VFLR_EVENT_PENDING, pf->state) ||
@@ -1531,7 +1532,7 @@ static void ice_vc_reset_vf(struct ice_vf *vf)
  */
 static struct ice_vf *ice_get_vf_from_pfq(struct ice_pf *pf, u16 pfq)
 {
-	int vf_id;
+	unsigned int vf_id;
 
 	ice_for_each_vf(pf, vf_id) {
 		struct ice_vf *vf = &pf->vf[vf_id];
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index f7fd1188efa4..474293ff4fe5 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -64,7 +64,7 @@ struct ice_mdd_vf_events {
 struct ice_vf {
 	struct ice_pf *pf;
 
-	s16 vf_id;			/* VF ID in the PF space */
+	u16 vf_id;			/* VF ID in the PF space */
 	u16 lan_vsi_idx;		/* index into PF struct */
 	/* first vector index of this VF in the PF space */
 	int first_vector_idx;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
