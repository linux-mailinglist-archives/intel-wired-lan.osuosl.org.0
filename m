Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 926A977DCDC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 10:58:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 004EB82330;
	Wed, 16 Aug 2023 08:58:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 004EB82330
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692176290;
	bh=k7PKkjyAQhGl6TBqWn7wM1KzqariALZjizixwZ4XjMU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ITcZj//7ou20omsySUSKntUETP65Fu4qRGnaI5pVeOJREkPaLf++8Qe5oaVwIG7va
	 kAztQe8snphiu6T/dh2BQR8KiTu/1fmjav/k6iGnV/RxKOKx2aDifZ6XtgmjYyGniB
	 SJd03QFiaFZvsOJAwWsHQgfUVYW3MnRNkB0gMrACJAUB3/GXr+4z2NqCn5AkdrDWer
	 PshWBUfBPAss0i3B1VIvN6ha8gbYMJbLbt3Vq6UPweM/zBi798kVaPw87vDjw00Ewl
	 Qox279lnG0im3paEiDZ0Q7ZTUN8n/gmkCmVYUbFhHPQnlYrFLanJurapDN1mggaOGO
	 AhCcqzpBfaz0g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZrZkrcSapPIx; Wed, 16 Aug 2023 08:58:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDBDC822FE;
	Wed, 16 Aug 2023 08:58:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BDBDC822FE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5D3C11BF400
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 08:58:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3233D403C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 08:58:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3233D403C7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FLy_uGYGAq3A for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 08:58:01 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 905BA40B8E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 08:58:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 905BA40B8E
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="369953863"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="369953863"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 01:58:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="763570933"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="763570933"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga008.jf.intel.com with ESMTP; 16 Aug 2023 01:57:57 -0700
Received: from pelor.igk.intel.com (pelor.igk.intel.com [10.123.220.13])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 82FA533BC0;
 Wed, 16 Aug 2023 09:57:56 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 16 Aug 2023 04:54:54 -0400
Message-Id: <20230816085454.235440-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692176281; x=1723712281;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2QksZMOul8ax3XaYxGQUEla65eXctuZLlJS6w08jOW8=;
 b=hi8wOzGkdH3wTlYrrCGER/Fg18rIE+ePRXNPqmQ/PT2PXcKZ6OqCD9BT
 sTO3RCt6LHGJBGqo5x0hixBwx2u4eMmMRdhHF3hZ/U28v6VwApRsyxBM9
 FlBCNTWFyGbp1ThpVSWzFzl7peWUnNM55ySL5f5ykO7Ddksg+9yETJzvU
 vtPatefG2+tnhZl3v+N4ZktEmhhNOrUFQazwCnEDco5PqVdsNTuwuKKly
 ktQ2qcxaSJiarasfSxtoreKw+dz4fPhyn9DXI+2G3yzDMUghFThpShmRd
 lw86RhIIMeudVixd0HCawy8JcgYH8hJRrwUbln4gH1uGPVb6lWcq49TDj
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hi8wOzGk
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: store VF's pci_dev ptr in
 ice_vf
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
Cc: netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Extend struct ice_vf by vfdev.
Calculation of vfdev falls more nicely into ice_create_vf_entries().

Caching of vfdev enables simplification of ice_restore_all_vfs_msi_state().

Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
add/remove: 0/0 grow/shrink: 2/1 up/down: 157/-130 (27)
Function                                     old     new   delta
ice_sriov_configure                         1712    1866    +154
ice_pci_err_resume                           168     171      +3
ice_restore_all_vfs_msi_state                200      70    -130
---
 drivers/net/ethernet/intel/ice/ice_main.c   |  2 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c  | 40 +++++++++------------
 drivers/net/ethernet/intel/ice/ice_sriov.h  |  4 +--
 drivers/net/ethernet/intel/ice/ice_vf_lib.h |  2 +-
 4 files changed, 21 insertions(+), 27 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a6dd336d2500..d04498c2fd6d 100644
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
index 31314e7540f8..48bc8ea55265 100644
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
@@ -812,6 +817,10 @@ static int ice_create_vf_entries(struct ice_pf *pf, u16 num_vfs)
 
 		ice_initialize_vf_entry(vf);
 
+		do {
+			vfdev = pci_get_device(pdev->vendor, vf_pdev_id, vfdev);
+		} while (vfdev && vfdev->physfn != pdev);
+		vf->vfdev = vfdev;
 		vf->vf_sw_id = pf->first_sw;
 
 		hash_add_rcu(vfs->table, &vf->entry, vf_id);
@@ -1714,26 +1723,11 @@ void ice_print_vfs_mdd_events(struct ice_pf *pf)
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
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 48fea6fa0362..57c36e4ccf91 100644
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

base-commit: 0ad204c4acb8ba1ed99564b001609e62547bc79d
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
