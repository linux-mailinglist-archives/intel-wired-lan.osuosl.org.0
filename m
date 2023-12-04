Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E47B8033F9
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Dec 2023 14:09:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 77E5781EFD;
	Mon,  4 Dec 2023 13:09:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 77E5781EFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701695358;
	bh=4qgw4kZPc78zB65OWBh/WcLORiOAMuU+gKVUiy4ayk0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=pCZJI0UJ/kgHbSJHkbrmkKD7mP3/2/QZDxjFU+Prj9wj8UhPrSW9rGgCktwRtmevA
	 Le8aZXViFKavF95Ni8Fia0iwLnK7d6k06rJEJ0StwHtocMLR5M6v53ehjpjSGSsUdf
	 7lbChb2ipxE6byxuhZbjnXwBShDXcZFx7ic+4J7nlMrLnWPBLbOTcGkgAN+9Q5mJ42
	 dDLD/wlWtYdonThuIcGDnV3s1mtm6RJfnSIlz988PXlaEHnDl3VH+5kjDtgdxTlv94
	 TeF7uOoLHWS58h3k8PIKVniKjzn/hKo04L3uczdtqyGOnuDLFEYjUeNH0kqH9odOSD
	 UQ6pCvSQZAuyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VXzXnZ0bEj2s; Mon,  4 Dec 2023 13:09:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 504CE81EB4;
	Mon,  4 Dec 2023 13:09:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 504CE81EB4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E65FD1BF33E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 13:09:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CB53660F9B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 13:09:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB53660F9B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LH7EQ2T6GPzG for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Dec 2023 13:09:11 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D91AF60F91
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 13:09:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D91AF60F91
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="397616166"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="397616166"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 05:09:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="914420067"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="914420067"
Received: from unknown (HELO amlin-019-225.igk.intel.com) ([10.102.19.225])
 by fmsmga001.fm.intel.com with ESMTP; 04 Dec 2023 05:09:08 -0800
From: Andrii Staikov <andrii.staikov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 Dec 2023 14:09:05 +0100
Message-Id: <20231204130905.3366688-1-andrii.staikov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701695350; x=1733231350;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QacuDBxTcIx+Nm5G4eqgOMtRD1K79VuWAuOYgcivmio=;
 b=XedSgnHbD+Prx4gxZgnMz8metVtjbliqXiMIc0fTdW2ByuYG+Z5s+7eL
 NDwyDczWhyCcV2VUJbX/5fDCzdx6+ekdUAm6kfCoUAUbNPbbiLEjvrOnR
 GSB0Ce80qj6WBI4iZn+sPdUf7T8l7NS+azFd+8x+oRsgo4erdRs1033MB
 g45NzmN0M/38f3EM51TAnDxwShUIACk336lmk9lLRHcnvd1007JWGfUz1
 5xClfhFZV58QbIbwS5gUNkLXgiPem/ZCMLBlO5ZJm5Hi6NVXcp4geCbar
 bibjr63Zu9wo9oyGJmeDD9dPaeiILHTenw807iUX5f3/qzaD2yblHIj2O
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XedSgnHb
Subject: [Intel-wired-lan] [PATCH iwl-net v1] i40e: Restore VF MSI-X state
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
Cc: Karen Ostrowska <karen.ostrowska@intel.com>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Andrii Staikov <andrii.staikov@intel.com>
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
Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  2 ++
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 24 +++++++++++++++++++
 .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  1 +
 3 files changed, 27 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 7bb1f64833eb..7272d0227a55 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -16513,6 +16513,8 @@ static void i40e_pci_error_reset_done(struct pci_dev *pdev)
 		return;
 
 	i40e_reset_and_rebuild(pf, false, false);
+
+	i40e_restore_all_vfs_msi_state(pdev);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 3f99eb198245..b3da4cdf9d10 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -154,6 +154,30 @@ void i40e_vc_notify_reset(struct i40e_pf *pf)
 			     (u8 *)&pfe, sizeof(struct virtchnl_pf_event));
 }
 
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
+		pci_read_config_word(pdev, pos + PCI_SRIOV_VF_DID, &vf_id);
+		struct pci_dev *vf_dev = NULL;
+		while ((vf_dev = pci_get_device(pdev->vendor, vf_id, NULL))) {
+			if (vf_dev->is_virtfn && vf_dev->physfn == pdev)
+				pci_restore_msi_state(vf_dev);
+			vf_dev = pci_get_device(pdev->vendor, vf_id, vf_dev);
+		}
+	}
+}
+
 /**
  * i40e_vc_notify_vf_reset
  * @vf: pointer to the VF structure
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
index 2ee0f8a23248..1ff879784563 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
@@ -137,6 +137,7 @@ int i40e_ndo_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool enable);
 
 void i40e_vc_notify_link_state(struct i40e_pf *pf);
 void i40e_vc_notify_reset(struct i40e_pf *pf);
+void i40e_restore_all_vfs_msi_state(struct pci_dev *pdev);
 int i40e_get_vf_stats(struct net_device *netdev, int vf_id,
 		      struct ifla_vf_stats *vf_stats);
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
