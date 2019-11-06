Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E3919F1DA3
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Nov 2019 19:36:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2B35589196;
	Wed,  6 Nov 2019 18:36:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t97PFyIhy_hN; Wed,  6 Nov 2019 18:36:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9ABAC8912E;
	Wed,  6 Nov 2019 18:36:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6D0EE1BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2019 18:36:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 69A208A854
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2019 18:36:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rvTWP-vagcXt for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Nov 2019 18:36:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7AC068A85B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2019 18:36:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 10:36:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,275,1569308400"; d="scan'208";a="205918156"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga006.jf.intel.com with ESMTP; 06 Nov 2019 10:36:27 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  6 Nov 2019 02:05:33 -0800
Message-Id: <20191106100541.48639-7-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191106100541.48639-1-anthony.l.nguyen@intel.com>
References: <20191106100541.48639-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S32 v3 07/15] ice: Check if VF is disabled
 for Opcode and other operations
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

From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>

This patch adds code to check if PF or VF is disabled before honoring
mailbox message to configure VF - If it is disabled, and opcode is for
resetting VF, the PF driver simply tell VF that all is set. In addition,
if reset is ongoing, and Admin intend to configure VF on the host, we can
poll the VF enabling bit to make sure it is ready before continue - If
after ~250 milliseconds, VF is not in active state, we can bail out with
invalid error.

Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 74 ++++++++++++++++---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  1 +
 2 files changed, 63 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 4a1cb51b50c7..537377448bef 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -1151,6 +1151,25 @@ bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
 	return true;
 }
 
+/**
+ * ice_is_vf_disabled
+ * @vf: pointer to the VF info
+ *
+ * Returns true if the PF or VF is disabled, false otherwise.
+ */
+static bool ice_is_vf_disabled(struct ice_vf *vf)
+{
+	struct ice_pf *pf = vf->pf;
+
+	/* If the PF has been disabled, there is no need resetting VF until
+	 * PF is active again. Similarly, if the VF has been disabled, this
+	 * means something else is resetting the VF, so we shouldn't continue.
+	 * Otherwise, set disable VF state bit for actual reset, and continue.
+	 */
+	return (test_bit(__ICE_VF_DIS, pf->state) ||
+		test_bit(ICE_VF_STATE_DIS, vf->vf_states));
+}
+
 /**
  * ice_reset_vf - Reset a particular VF
  * @vf: pointer to the VF structure
@@ -1168,19 +1187,15 @@ static bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 	u32 reg;
 	int i;
 
-	/* If the PF has been disabled, there is no need resetting VF until
-	 * PF is active again.
-	 */
-	if (test_bit(__ICE_VF_DIS, pf->state))
-		return false;
-
-	/* If the VF has been disabled, this means something else is
-	 * resetting the VF, so we shouldn't continue. Otherwise, set
-	 * disable VF state bit for actual reset, and continue.
-	 */
-	if (test_and_set_bit(ICE_VF_STATE_DIS, vf->vf_states))
-		return false;
+	if (ice_is_vf_disabled(vf)) {
+		dev_dbg(&pf->pdev->dev,
+			"VF is already disabled, there is no need for resetting it, telling VM, all is fine %d\n",
+			 vf->vf_id);
+		return true;
+	}
 
+	/* Set VF disable bit state here, before triggering reset */
+	set_bit(ICE_VF_STATE_DIS, vf->vf_states);
 	ice_trigger_vf_reset(vf, is_vflr, false);
 
 	vsi = pf->vsi[vf->lan_vsi_idx];
@@ -3128,6 +3143,23 @@ int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena)
 	return ret;
 }
 
+/**
+ * ice_wait_on_vf_reset
+ * @vf: The VF being resseting
+ *
+ * Poll to make sure a given VF is ready after reset
+ */
+static void ice_wait_on_vf_reset(struct ice_vf *vf)
+{
+	int i;
+
+	for (i = 0; i < ICE_MAX_VF_RESET_WAIT; i++) {
+		if (test_bit(ICE_VF_STATE_INIT, vf->vf_states))
+			break;
+		msleep(20);
+	}
+}
+
 /**
  * ice_set_vf_mac
  * @netdev: network interface device structure
@@ -3151,6 +3183,15 @@ int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
 	}
 
 	vf = &pf->vf[vf_id];
+	/* Don't set MAC on disabled VF */
+	if (ice_is_vf_disabled(vf))
+		return -EINVAL;
+
+	/* In case VF is in reset mode, wait until it is completed. Depending
+	 * on factors like queue disabling routine, this could take ~250ms
+	 */
+	ice_wait_on_vf_reset(vf);
+
 	if (!test_bit(ICE_VF_STATE_INIT, vf->vf_states)) {
 		netdev_err(netdev, "VF %d in reset. Try again.\n", vf_id);
 		return -EBUSY;
@@ -3198,6 +3239,15 @@ int ice_set_vf_trust(struct net_device *netdev, int vf_id, bool trusted)
 	}
 
 	vf = &pf->vf[vf_id];
+	/* Don't set Trusted Mode on disabled VF */
+	if (ice_is_vf_disabled(vf))
+		return -EINVAL;
+
+	/* In case VF is in reset mode, wait until it is completed. Depending
+	 * on factors like queue disabling routine, this could take ~250ms
+	 */
+	ice_wait_on_vf_reset(vf);
+
 	if (!test_bit(ICE_VF_STATE_INIT, vf->vf_states)) {
 		dev_err(&pf->pdev->dev, "VF %d in reset. Try again.\n", vf_id);
 		return -EBUSY;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index 0d9880c8bba3..2e867ad2e81d 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -38,6 +38,7 @@
 #define ICE_MAX_POLICY_INTR_PER_VF	33
 #define ICE_MIN_INTR_PER_VF		(ICE_MIN_QS_PER_VF + 1)
 #define ICE_DFLT_INTR_PER_VF		(ICE_DFLT_QS_PER_VF + 1)
+#define ICE_MAX_VF_RESET_WAIT		15
 
 /* Specific VF states */
 enum ice_vf_states {
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
