Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE3981B79B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Dec 2023 14:27:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D40B5615BC;
	Thu, 21 Dec 2023 13:27:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D40B5615BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703165267;
	bh=YPFa3dUAg7LKd6cMyCdJsWrwXYOn3EPyzdsbOlD2WGg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=wl963VWyAQj+qeszFpYEqpvTns/+3WhV0xAHIZkY6wNLIJGMYpIG9dQCWs/iWlSWJ
	 YlrsYjTNBhYUs7OkRhWNKdI41+HUVC0/A3oNIH4SHVSMuUlGnf93fz1Pwd2F6otyC3
	 yM8MDo14A0oSFeprr35AkrkVEEBo/CT80/s0iG5lfr5fkPVWOkA8CtWrAon2voR68c
	 bcz20gepU2ibFr24xryo3KflmhiXoXUeI8bkN57tUaiJ8j959emYRjx4llTXgVWldk
	 1/QLMtb64yewxsNRMQdSfAxu3WuBp5sDiETQsG4nO+1VrgfQ6z4siyUN+4dUO2IxxO
	 nFVViWG4pTl5Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tmBBp0ONpEzU; Thu, 21 Dec 2023 13:27:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 926DA615B8;
	Thu, 21 Dec 2023 13:27:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 926DA615B8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E33131BF3A0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 13:27:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B0231615B8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 13:27:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0231615B8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wH8wyYLAsiSb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Dec 2023 13:27:40 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B0AAA61026
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 13:27:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0AAA61026
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="386400168"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="386400168"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 05:27:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="18683812"
Received: from unknown (HELO amlin-019-225.igk.intel.com) ([10.102.19.225])
 by fmviesa001.fm.intel.com with ESMTP; 21 Dec 2023 05:27:37 -0800
From: Andrii Staikov <andrii.staikov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 21 Dec 2023 14:27:35 +0100
Message-Id: <20231221132735.1246164-1-andrii.staikov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703165260; x=1734701260;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aleQJPWuPPAp07EORrmo8USwM+efZBPIKfnkxAkmJec=;
 b=Yoyme7G6dYoLOjbVKyTvbEM6waYMwXPnkIm67hiQWdQrMTDoa5O7Q35+
 SNa298BcV1ZZcuuC6xGV4oPvnZs9DBB3O0q4MBsVzEoRYZTUZCzh9GuY6
 xr0V6HTC/FMyGsdn7FC2PegizLfs1QJbKKCKiZJ0ky7pbPhsqBVuBhgtj
 +ZYhkiOmbPmOlAz/wxdlZ4qEI9Mca/2AVm+r+SyOQ67/r6jglH5zssl3E
 V1A4+0LzaePObsiN2xJBTOzdJLnoezb/hNN737L3XcEABXU7dYrtObrKn
 l9z3KyeHzrt+Kvyz7NN0mq1mkZtq4TM4OZqqmQh7mjwe8r4geF5L7DY1D
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Yoyme7G6
Subject: [Intel-wired-lan] [PATCH iwl-net v5] i40e: Restore VF MSI-X state
 during PCI reset
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Karen Ostrowska <karen.ostrowska@intel.com>, netdev@vger.kernel.org,
 Andrii Staikov <andrii.staikov@intel.com>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Przemyslaw Kitszel <przemyslaw.kitszel@intel.com>
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

Fixes: 19b7960b2da1 ("i40e: implement split PCI error reset handler")
Co-developed-by: Karen Ostrowska <karen.ostrowska@intel.com>
Signed-off-by: Karen Ostrowska <karen.ostrowska@intel.com>
Co-developed-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Przemyslaw Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
---
v1 -> v2: Fix signed-off tags
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20231204131041.3369693-1-andrii.staikov@intel.com/

v2 -> v3: use @vf_dev in pci_get_device() instead of NULL and remove unnecessary call
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20231206125127.218350-1-andrii.staikov@intel.com/

v3 -> v4: wrap the added functionality into the CONFIG_PCI_IOV define as
this is VF-related functionality
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20231212122452.3250691-1-andrii.staikov@intel.com/

v4 -> v5: fix RB tags
---
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  3 +++
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 26 +++++++++++++++++++
 .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  3 +++
 3 files changed, 32 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 7bb1f64833eb..bbe2d115fb15 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -16513,6 +16513,9 @@ static void i40e_pci_error_reset_done(struct pci_dev *pdev)
 		return;
 
 	i40e_reset_and_rebuild(pf, false, false);
+#ifdef CONFIG_PCI_IOV
+	i40e_restore_all_vfs_msi_state(pdev);
+#endif /* CONFIG_PCI_IOV */
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 3f99eb198245..d60f5419d6bd 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -154,6 +154,32 @@ void i40e_vc_notify_reset(struct i40e_pf *pf)
 			     (u8 *)&pfe, sizeof(struct virtchnl_pf_event));
 }
 
+#ifdef CONFIG_PCI_IOV
+void i40e_restore_all_vfs_msi_state(struct pci_dev *pdev)
+{
+	u16 vf_id;
+	u16 pos;
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
+		struct pci_dev *vf_dev = NULL;
+
+		pci_read_config_word(pdev, pos + PCI_SRIOV_VF_DID, &vf_id);
+		while ((vf_dev = pci_get_device(pdev->vendor, vf_id, vf_dev))) {
+			if (vf_dev->is_virtfn && vf_dev->physfn == pdev)
+				pci_restore_msi_state(vf_dev);
+		}
+	}
+}
+#endif /* CONFIG_PCI_IOV */
+
 /**
  * i40e_vc_notify_vf_reset
  * @vf: pointer to the VF structure
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
index 2ee0f8a23248..5fd607c0de0a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
@@ -137,6 +137,9 @@ int i40e_ndo_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool enable);
 
 void i40e_vc_notify_link_state(struct i40e_pf *pf);
 void i40e_vc_notify_reset(struct i40e_pf *pf);
+#ifdef CONFIG_PCI_IOV
+void i40e_restore_all_vfs_msi_state(struct pci_dev *pdev);
+#endif /* CONFIG_PCI_IOV */
 int i40e_get_vf_stats(struct net_device *netdev, int vf_id,
 		      struct ifla_vf_stats *vf_stats);
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
