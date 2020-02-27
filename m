Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D5B17265D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Feb 2020 19:16:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5DCB388047;
	Thu, 27 Feb 2020 18:16:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e+UDzRSpdFMk; Thu, 27 Feb 2020 18:16:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 32E6A87FFF;
	Thu, 27 Feb 2020 18:15:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 694ED1BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2020 18:15:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 621F488002
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2020 18:15:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wl00o+me6ej3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Feb 2020 18:15:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BDCE488007
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2020 18:15:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 10:15:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,492,1574150400"; d="scan'208";a="285408846"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Feb 2020 10:15:52 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Feb 2020 10:14:55 -0800
Message-Id: <20200227181505.61720-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200227181505.61720-1-anthony.l.nguyen@intel.com>
References: <20200227181505.61720-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S40 05/15] ice: Fix removing driver while
 bare-metal VFs pass traffic
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

Currently, if there are bare-metal VFs passing traffic and the ice
driver is removed, there is a possibility of VFs triggering a Tx timeout
right before iavf_remove(). This is causing iavf_close() to not be
called because there is a check in the beginning of iavf_remove() that
bails out early if (adapter->state < IAVF_DOWN_PENDING). This makes it
so some resources do not get cleaned up. Specifically, free_irq()
is never called for data interrupts, which results in the following line
of code to trigger:

pci_disable_msix()
	free_msi_irqs()
		...
		BUG_ON(irq_has_action(entry->irq + i));
		...

To prevent the Tx timeout from occurring on the VF during driver unload
for ice and the iavf there are a few changes that are needed.

[1] Don't disable all active VF Tx/Rx queues prior to calling
pci_disable_sriov.

[2] Call ice_free_vfs() before disabling the service task.

[3] Disable VF resets when the ice driver is being unloaded by setting
the pf->state flag __ICE_VF_RESETS_DISABLED.

Changing [1] and [2] allow each VF driver's remove flow to successfully
send VIRTCHNL requests, which includes queue disable. This prevents
unexpected Tx timeouts because the PF driver is no longer forcefully
disabling queues.

Due to [1] and [2] there is a possibility that the PF driver will get a
VFLR or reset request over VIRTCHNL from a VF during PF driver unload.
Prevent that by doing [3].

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |  1 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 19 +++++++++++++++----
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 19 +++++++++++++------
 3 files changed, 29 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index bdd6d8a732f5..b32d9ed35b21 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -220,6 +220,7 @@ enum ice_state {
 	__ICE_SERVICE_DIS,
 	__ICE_OICR_INTR_DIS,		/* Global OICR interrupt disabled */
 	__ICE_MDD_VF_PRINT_PENDING,	/* set when MDD event handle */
+	__ICE_VF_RESETS_DISABLED,	/* disable resets during ice_remove */
 	__ICE_STATE_NBITS		/* must be last */
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 933f41455628..13ac6073a75d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2060,8 +2060,16 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 		set_bit(__ICE_MDD_EVENT_PENDING, pf->state);
 	}
 	if (oicr & PFINT_OICR_VFLR_M) {
-		ena_mask &= ~PFINT_OICR_VFLR_M;
-		set_bit(__ICE_VFLR_EVENT_PENDING, pf->state);
+		/* disable any further VFLR event notifications */
+		if (test_bit(__ICE_VF_RESETS_DISABLED, pf->state)) {
+			u32 reg = rd32(hw, PFINT_OICR_ENA);
+
+			reg &= ~PFINT_OICR_VFLR_M;
+			wr32(hw, PFINT_OICR_ENA, reg);
+		} else {
+			ena_mask &= ~PFINT_OICR_VFLR_M;
+			set_bit(__ICE_VFLR_EVENT_PENDING, pf->state);
+		}
 	}
 
 	if (oicr & PFINT_OICR_GRST_M) {
@@ -3457,6 +3465,11 @@ static void ice_remove(struct pci_dev *pdev)
 		msleep(100);
 	}
 
+	if (test_bit(ICE_FLAG_SRIOV_ENA, pf->flags)) {
+		set_bit(__ICE_VF_RESETS_DISABLED, pf->state);
+		ice_free_vfs(pf);
+	}
+
 	ice_service_task_stop(pf);
 	if (ice_is_peer_ena(pf)) {
 		reason = IIDC_REASON_INTERFACE_DOWN;
@@ -3464,8 +3477,6 @@ static void ice_remove(struct pci_dev *pdev)
 	}
 	set_bit(__ICE_DOWN, pf->state);
 
-	if (test_bit(ICE_FLAG_SRIOV_ENA, pf->flags))
-		ice_free_vfs(pf);
 	ice_vsi_release_all(pf);
 	if (ice_is_peer_ena(pf)) {
 		ice_for_each_peer(pf, NULL, ice_unreg_peer_device);
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 48791fc387ba..5fb457479060 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -300,11 +300,6 @@ void ice_free_vfs(struct ice_pf *pf)
 	while (test_and_set_bit(__ICE_VF_DIS, pf->state))
 		usleep_range(1000, 2000);
 
-	/* Avoid wait time by stopping all VFs at the same time */
-	ice_for_each_vf(pf, i)
-		if (test_bit(ICE_VF_STATE_QS_ENA, pf->vf[i].vf_states))
-			ice_dis_vf_qs(&pf->vf[i]);
-
 	/* Disable IOV before freeing resources. This lets any VF drivers
 	 * running in the host get themselves cleaned up before we yank
 	 * the carpet out from underneath their feet.
@@ -314,6 +309,11 @@ void ice_free_vfs(struct ice_pf *pf)
 	else
 		dev_warn(dev, "VFs are assigned - not disabling SR-IOV\n");
 
+	/* Avoid wait time by stopping all VFs at the same time */
+	ice_for_each_vf(pf, i)
+		if (test_bit(ICE_VF_STATE_QS_ENA, pf->vf[i].vf_states))
+			ice_dis_vf_qs(&pf->vf[i]);
+
 	tmp = pf->num_alloc_vfs;
 	pf->num_qps_per_vf = 0;
 	pf->num_alloc_vfs = 0;
@@ -1155,7 +1155,8 @@ static bool ice_is_vf_disabled(struct ice_vf *vf)
  * @vf: pointer to the VF structure
  * @is_vflr: true if VFLR was issued, false if not
  *
- * Returns true if the VF is reset, false otherwise.
+ * Returns true if the VF is currently in reset, resets successfully, or resets
+ * are disabled and false otherwise.
  */
 bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 {
@@ -1170,6 +1171,12 @@ bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 
 	dev = ice_pf_to_dev(pf);
 
+	if (test_bit(__ICE_VF_RESETS_DISABLED, pf->state)) {
+		dev_dbg(dev, "Trying to reset VF %d, but all VF resets are disabled\n",
+			vf->vf_id);
+		return true;
+	}
+
 	if (ice_is_vf_disabled(vf)) {
 		dev_dbg(dev, "VF is already disabled, there is no need for resetting it, telling VM, all is fine %d\n",
 			vf->vf_id);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
