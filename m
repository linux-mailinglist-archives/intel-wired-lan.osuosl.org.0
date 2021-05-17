Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4AFE382FD2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 May 2021 16:20:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8D17E402F3;
	Mon, 17 May 2021 14:20:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wGQdtb48DSTG; Mon, 17 May 2021 14:20:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C6EA0402EF;
	Mon, 17 May 2021 14:20:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E90C91BF312
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 14:20:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E4496608E8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 14:20:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xVai91gjCeM5 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 May 2021 14:20:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BFBE8608D0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 14:20:11 +0000 (UTC)
IronPort-SDR: 56Wfn6D27T/oHny3smjfwlh/xtXh1d2SUn8WtpoKv2W6DIUOiOdxJiQy0GC/nDm7luItR9hZSg
 OgyNarAZohjw==
X-IronPort-AV: E=McAfee;i="6200,9189,9986"; a="198522975"
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="198522975"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 07:20:11 -0700
IronPort-SDR: N7BlUm38S25I6q21f85cj2rMf12IWCdLhOI29Y83NRGusQuJ6xd7pLAChNn5Dc6KR4/iraIv6O
 1RAsoi/DV6Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="404111913"
Received: from amlin-19-169.igk.intel.com ([10.102.19.169])
 by fmsmga007.fm.intel.com with ESMTP; 17 May 2021 07:20:09 -0700
From: Karen Sornek <karen.sornek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 17 May 2021 16:28:18 +0200
Message-Id: <20210517142818.288238-1-karen.sornek@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1] i40e: Add restoration of VF
 MSI-X state during PCI reset
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
Cc: Slawomir Laba <slawomirx.laba@intel.com>,
 Karen Sornek <karen.sornek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

During a PCI FLR the MSI-X Enable flag in the VF PCI MSI-X capability
register will be cleared. This can lead to issues when a VF is
assigned to a VM because in these cases the VF driver receives no
indication of the PF PCI error/reset and additionally it is incapable
of restoring the cleared flag in the hypervisor configuration space
without fully reinitializing the driver interrupt functionality.

Since the VF driver is unable to easily resolve this condition on its own,
restore the VF MSI-X flag during the PF PCI reset handling.

Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
Signed-off-by: Nick Nunley <nicholas.d.nunley@intel.com>
Signed-off-by: Karen Sornek <karen.sornek@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  2 ++
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 32 +++++++++++++++++++
 .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  1 +
 3 files changed, 35 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index c34a4b3f5..c4f0fbb53 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -16021,6 +16021,8 @@ static void i40e_pci_error_reset_done(struct pci_dev *pdev)
 	struct i40e_pf *pf = pci_get_drvdata(pdev);
 
 	i40e_reset_and_rebuild(pf, false, false);
+
+	i40e_restore_all_vfs_msi_state(pdev);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 139562aaf..409444341 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -152,6 +152,38 @@ void i40e_vc_notify_reset(struct i40e_pf *pf)
 			     (u8 *)&pfe, sizeof(struct virtchnl_pf_event));
 }
 
+/**
+ * i40_restore_all_vfs_msi_state - restore VF MSI state after PF FLR
+ * @pdev: pointer to a pci_dev structure
+ *
+ * Called when recovering from a PF FLR to restore interrupt capability to
+ * the VFs.
+ */
+void i40e_restore_all_vfs_msi_state(struct pci_dev *pdev)
+{
+	struct pci_dev *vfdev;
+	u16 vf_id;
+	int pos;
+
+	/* Continue only if this is a PF */
+	if (!pdev->is_physfn)
+		return;
+
+	if (!pci_num_vf(pdev))
+		return;
+
+	pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_SRIOV);
+	if (pos) {
+		pci_read_config_word(pdev, pos + PCI_SRIOV_VF_DID, &vf_id);
+		vfdev = pci_get_device(pdev->vendor, vf_id, NULL);
+		while (vfdev) {
+			if (vfdev->is_virtfn && vfdev->physfn == pdev)
+				pci_restore_msi_state(vfdev);
+			vfdev = pci_get_device(pdev->vendor, vf_id, vfdev);
+		}
+	}
+}
+
 /**
  * i40e_vc_notify_vf_reset
  * @vf: pointer to the VF structure
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
index 091e32c1b..87c76bb5b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
@@ -136,6 +136,7 @@ int i40e_ndo_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool enable);
 
 void i40e_vc_notify_link_state(struct i40e_pf *pf);
 void i40e_vc_notify_reset(struct i40e_pf *pf);
+void i40e_restore_all_vfs_msi_state(struct pci_dev *pdev);
 int i40e_get_vf_stats(struct net_device *netdev, int vf_id,
 		      struct ifla_vf_stats *vf_stats);
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
