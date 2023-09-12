Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CF779D085
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Sep 2023 13:59:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8934340545;
	Tue, 12 Sep 2023 11:59:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8934340545
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694519958;
	bh=FSYnfqhoszn6bwkMhN4pWCF6QneZla4R735MGHb8qUA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=lRewXPVVfHGZiFA/UYitIyyLspxD7kCfx8A8yf/bZCdJ6CuL0xTZ2eIH7D9JVhtAk
	 pDPoMJ7gkKomp8EzQ/bm1Fw/WHJoOE49r/b2IuFhgi8EosnQlNMJy2XS53oBW20jF9
	 VqynAHDb1qGQ4f91VRY/XByb8RIkcTL8ybhxkGrGUBczBLsVNYflG3AhvmLQmJscmg
	 AUc4c6gQNlMHjeqMt4ENnykNjIEHYPtOqTLUp8yEEnHtks9noSnnI05mAYx/Iz5E0T
	 SyLpWoCXrC9hBBWsdI2fTFzsmzHGkIB6M2VxmjYkZS6SIWjolCwd0QRwC61f2/z9yn
	 RwLBSFh36oPSg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jvHxYrSmNxP2; Tue, 12 Sep 2023 11:59:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1A864404E9;
	Tue, 12 Sep 2023 11:59:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A864404E9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3CAAD1BF20B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 11:59:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 199736118F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 11:59:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 199736118F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rXaawC_bO8TL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Sep 2023 11:59:09 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B04D061182
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 11:59:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B04D061182
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="378263749"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="378263749"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 04:59:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="867343275"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="867343275"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga004.jf.intel.com with ESMTP; 12 Sep 2023 04:59:04 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 0A69D332B7;
 Tue, 12 Sep 2023 12:59:03 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 12 Sep 2023 07:56:26 -0400
Message-Id: <20230912115626.105828-1-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694519949; x=1726055949;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bjAkhDvOyHj2BVvYeMiuQ2BaHhDZaB2jI5iM2AguytE=;
 b=FLLJrfxz5pjj3kmkTPs7L+1Pb4yM9wxBJi7eo5ulnuIqEgrUF9SlT/rC
 LZN42yYxN4dFmzr4ND1+Gei18YpiV/7PtKNCOcUxNeQJTmLpBGFe6CiPK
 H3LXxPZkbY2yoBZbQ24sM7YNn+SWHPhPdqbOFKn/WPsSRhGgXSzMNbk91
 8v62vNLS8kH7gR18+e+awS4rgWnJaDrHsztqIlGRWjfM9gqEVI+WXstno
 ggqXWYW7ILMIZSRMm/X/ocs7aDk2noAUMCyjpzurXk3PGR7o2heEyrJia
 syyAji+VjbbINA+61Lec5UuLvMHNxDVwAPsSoWtQq82AzSw8YZPL6d2ct
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FLLJrfxz
Subject: [Intel-wired-lan] [PATCH] [PATCH iwl-next v2] ice: store VF's
 pci_dev ptr in ice_vf
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
Cc: leon@kernel.org, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Extend struct ice_vf by vfdev.
Calculation of vfdev falls more nicely into ice_create_vf_entries().

Caching of vfdev enables simplification of ice_restore_all_vfs_msi_state().

Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c   |  2 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c  | 50 +++++++++++----------
 drivers/net/ethernet/intel/ice/ice_sriov.h  |  4 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.c |  2 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h |  2 +-
 5 files changed, 32 insertions(+), 28 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a5997008bb98..38adffbe0edf 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5561,7 +5561,7 @@ static void ice_pci_err_resume(struct pci_dev *pdev)
 		return;
 	}
 
-	ice_restore_all_vfs_msi_state(pdev);
+	ice_restore_all_vfs_msi_state(pf);
 
 	ice_do_reset(pf, ICE_RESET_PFR);
 	ice_service_task_restart(pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 31314e7540f8..4ae59c59e22b 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -789,14 +789,19 @@ static const struct ice_vf_ops ice_sriov_vf_ops = {
  */
 static int ice_create_vf_entries(struct ice_pf *pf, u16 num_vfs)
 {
+	struct pci_dev *pdev = pf->pdev;
 	struct ice_vfs *vfs = &pf->vfs;
+	struct pci_dev *vfdev = NULL;
 	struct ice_vf *vf;
-	u16 vf_id;
-	int err;
+	u16 vf_pdev_id;
+	int err, pos;
 
 	lockdep_assert_held(&vfs->table_lock);
 
-	for (vf_id = 0; vf_id < num_vfs; vf_id++) {
+	pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_SRIOV);
+	pci_read_config_word(pdev, pos + PCI_SRIOV_VF_DID, &vf_pdev_id);
+
+	for (u16 vf_id = 0; vf_id < num_vfs; vf_id++) {
 		vf = kzalloc(sizeof(*vf), GFP_KERNEL);
 		if (!vf) {
 			err = -ENOMEM;
@@ -812,11 +817,23 @@ static int ice_create_vf_entries(struct ice_pf *pf, u16 num_vfs)
 
 		ice_initialize_vf_entry(vf);
 
+		do {
+			vfdev = pci_get_device(pdev->vendor, vf_pdev_id, vfdev);
+		} while (vfdev && vfdev->physfn != pdev);
+		vf->vfdev = vfdev;
 		vf->vf_sw_id = pf->first_sw;
 
+		pci_dev_get(vfdev);
+
 		hash_add_rcu(vfs->table, &vf->entry, vf_id);
 	}
 
+	/* Decrement of refcount done by pci_get_device() inside the loop does
+	 * not touch the last iteration's vfdev, so it has to be done manually
+	 * to balance pci_dev_get() added within the loop.
+	 */
+	pci_dev_put(vfdev);
+
 	return 0;
 
 err_free_entries:
@@ -1709,31 +1726,16 @@ void ice_print_vfs_mdd_events(struct ice_pf *pf)
 
 /**
  * ice_restore_all_vfs_msi_state - restore VF MSI state after PF FLR
- * @pdev: pointer to a pci_dev structure
+ * @pf: pointer to the PF structure
  *
  * Called when recovering from a PF FLR to restore interrupt capability to
  * the VFs.
  */
-void ice_restore_all_vfs_msi_state(struct pci_dev *pdev)
+void ice_restore_all_vfs_msi_state(struct ice_pf *pf)
 {
-	u16 vf_id;
-	int pos;
-
-	if (!pci_num_vf(pdev))
-		return;
+	struct ice_vf *vf;
+	u32 bkt;
 
-	pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_SRIOV);
-	if (pos) {
-		struct pci_dev *vfdev;
-
-		pci_read_config_word(pdev, pos + PCI_SRIOV_VF_DID,
-				     &vf_id);
-		vfdev = pci_get_device(pdev->vendor, vf_id, NULL);
-		while (vfdev) {
-			if (vfdev->is_virtfn && vfdev->physfn == pdev)
-				pci_restore_msi_state(vfdev);
-			vfdev = pci_get_device(pdev->vendor, vf_id,
-					       vfdev);
-		}
-	}
+	ice_for_each_vf(pf, bkt, vf)
+		pci_restore_msi_state(vf->vfdev);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h b/drivers/net/ethernet/intel/ice/ice_sriov.h
index 346cb2666f3a..06829443d540 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.h
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
@@ -33,7 +33,7 @@ int
 ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info *ivi);
 
 void ice_free_vfs(struct ice_pf *pf);
-void ice_restore_all_vfs_msi_state(struct pci_dev *pdev);
+void ice_restore_all_vfs_msi_state(struct ice_pf *pf);
 
 int
 ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
@@ -67,7 +67,7 @@ static inline
 void ice_vf_lan_overflow_event(struct ice_pf *pf, struct ice_rq_event_info *event) { }
 static inline void ice_print_vfs_mdd_events(struct ice_pf *pf) { }
 static inline void ice_print_vf_rx_mdd_event(struct ice_vf *vf) { }
-static inline void ice_restore_all_vfs_msi_state(struct pci_dev *pdev) { }
+static inline void ice_restore_all_vfs_msi_state(struct ice_pf *pf) { }
 
 static inline int
 ice_sriov_configure(struct pci_dev __always_unused *pdev,
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 24e4f4d897b6..aca1f2ea5034 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -56,6 +56,8 @@ static void ice_release_vf(struct kref *ref)
 {
 	struct ice_vf *vf = container_of(ref, struct ice_vf, refcnt);
 
+	pci_dev_put(vf->vfdev);
+
 	vf->vf_ops->free(vf);
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 31a082e8a827..628396aa4a04 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -82,7 +82,7 @@ struct ice_vf {
 	struct rcu_head rcu;
 	struct kref refcnt;
 	struct ice_pf *pf;
-
+	struct pci_dev *vfdev;
 	/* Used during virtchnl message handling and NDO ops against the VF
 	 * that will trigger a VFR
 	 */
-- 
2.38.1

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-316 | Kapital zakladowy 200.000 PLN.
Spolka oswiadcza, ze posiada status duzego przedsiebiorcy w rozumieniu ustawy z dnia 8 marca 2013 r. o przeciwdzialaniu nadmiernym opoznieniom w transakcjach handlowych.

Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiekolwiek przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
