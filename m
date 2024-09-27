Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB0C988803
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Sep 2024 17:13:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98AB0614FE;
	Fri, 27 Sep 2024 15:13:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BCWGASWeRH59; Fri, 27 Sep 2024 15:13:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CAD06614F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727449988;
	bh=6C5HPCyYyRgCV5jSiEU3UAJEjQ95FtNVVLB0mhz2LgU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=o7fFcCnEF8VWflw9wdNOIcEOvpc3RSjp2Kyn81lZlw9nv8HC3IpaYsNIojYwcAh3O
	 Ut3Q24Aan5q7Qihlmb/pfdz9XkQCFplUiWqMSRqlw0uDaYPDg6HPWkC/9u5nxN1ACo
	 hw1CZmkrpXFKMW2l1bvtMB/6QXCbMMtUQmNC+uVt+BHP+BAp5/eTP0PEB8uWYxrUau
	 l0F2m8OTu5UWd/+Df3G17tssZsrzBNfyC8WVkCQHIhtTLdCQAZTABkXN/k9m4Ws5CQ
	 2MhdLq68Ac3tcveewwkW93NOzN7jqWIhcYa/7sGTZSEBJY7VzCvUWLigdAfM034tt/
	 HTbvr7xT00Plg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CAD06614F1;
	Fri, 27 Sep 2024 15:13:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5B1A61BF853
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 15:13:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DA02C84367
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 15:13:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uLKZ0EaZQhPM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Sep 2024 15:13:03 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A007884498
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A007884498
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A007884498
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 15:13:02 +0000 (UTC)
X-CSE-ConnectionGUID: mlAireeDTwuVLWHqTPNtBQ==
X-CSE-MsgGUID: agv5+TRiS/SI65+F4pPNXA==
X-IronPort-AV: E=McAfee;i="6700,10204,11208"; a="37162505"
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="37162505"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 08:13:02 -0700
X-CSE-ConnectionGUID: UJuX2bMFRmu7aw/v96TjqQ==
X-CSE-MsgGUID: TZy8yzYZTcG2XUcihCsxEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="103375534"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa001.fm.intel.com with ESMTP; 27 Sep 2024 08:12:59 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id BF9A728763;
 Fri, 27 Sep 2024 16:12:58 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 27 Sep 2024 17:15:40 +0200
Message-ID: <20240927151541.15704-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.45.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727449983; x=1758985983;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=D1c1dAzmJ/Sr9BMGhBJt9ou745FIkqDtaFT55zGwwLQ=;
 b=T+G3kUjqmuZWDC5ziumM24/kT1jDv3p7iTt4paLsTk64yWWcj6/qKY+9
 pOJuj76StRTXRxxw1AJCvTo88bx9SWfu9kGzU8/0aNNQHyMc5nyBVvA0h
 jtZvlVYU4Xcf1GTZbhLmrxSMeXAicQFwkQHq+X4ariXAodh1IVpW01ZQV
 qwnR/SG+qT76b3r4ZBNPeBxI/4UmJ/HgNZDqX9IiZok8SvW0jlJlUNJhZ
 RcBDmP0RXDrwXNtRSxHxEP4jhTVK0jLNOqJ1818skWPqOa2n5LztduVp3
 +/fNz59GcT2+X+m+SuqwQRuAJ0yQdiujVEnJP9XXKG9OdXZI5JnAvu7ot
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=T+G3kUjq
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Fix increasing MSI-X on VF
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Increasing MSI-X value on a VF leads to invalid memory operations. This
is caused by not reallocating some arrays.

Reproducer:
  modprobe ice
  echo 0 > /sys/bus/pci/devices/$PF_PCI/sriov_drivers_autoprobe
  echo 1 > /sys/bus/pci/devices/$PF_PCI/sriov_numvfs
  echo 17 > /sys/bus/pci/devices/$VF0_PCI/sriov_vf_msix_count

Default MSI-X is 16, so 17 and above triggers this issue.

KASAN reports:

  BUG: KASAN: slab-out-of-bounds in ice_vsi_alloc_ring_stats+0x38d/0x4b0 [ice]
  Read of size 8 at addr ffff8888b937d180 by task bash/28433
  (...)

  Call Trace:
   (...)
   ? ice_vsi_alloc_ring_stats+0x38d/0x4b0 [ice]
   kasan_report+0xed/0x120
   ? ice_vsi_alloc_ring_stats+0x38d/0x4b0 [ice]
   ice_vsi_alloc_ring_stats+0x38d/0x4b0 [ice]
   ice_vsi_cfg_def+0x3360/0x4770 [ice]
   ? mutex_unlock+0x83/0xd0
   ? __pfx_ice_vsi_cfg_def+0x10/0x10 [ice]
   ? __pfx_ice_remove_vsi_lkup_fltr+0x10/0x10 [ice]
   ice_vsi_cfg+0x7f/0x3b0 [ice]
   ice_vf_reconfig_vsi+0x114/0x210 [ice]
   ice_sriov_set_msix_vec_count+0x3d0/0x960 [ice]
   sriov_vf_msix_count_store+0x21c/0x300
   (...)

  Allocated by task 28201:
   (...)
   ice_vsi_cfg_def+0x1c8e/0x4770 [ice]
   ice_vsi_cfg+0x7f/0x3b0 [ice]
   ice_vsi_setup+0x179/0xa30 [ice]
   ice_sriov_configure+0xcaa/0x1520 [ice]
   sriov_numvfs_store+0x212/0x390
   (...)

To fix it, use ice_vsi_rebuild() instead of ice_vf_reconfig_vsi(). This
causes the required arrays to be reallocated taking the new queue count
into account (ice_vsi_realloc_stat_arrays()). Set req_txq and req_rxq
before ice_vsi_rebuild(), so that realloc uses the newly set queue
count.

Additionally, ice_vsi_rebuild() does not remove VSI filters
(ice_fltr_remove_all()), so ice_vf_init_host_cfg() is no longer
necessary.

Reported-by: Jacob Keller <jacob.e.keller@intel.com>
Fixes: 2a2cb4c6c181 ("ice: replace ice_vf_recreate_vsi() with ice_vf_reconfig_vsi()")
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c          | 11 ++++++++---
 drivers/net/ethernet/intel/ice/ice_vf_lib.c         |  2 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib_private.h |  1 -
 3 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index c2d6b2a144e9..91cb393f616f 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1121,7 +1121,10 @@ int ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count)
 	if (vf->first_vector_idx < 0)
 		goto unroll;
 
-	if (ice_vf_reconfig_vsi(vf) || ice_vf_init_host_cfg(vf, vsi)) {
+	vsi->req_txq = queues;
+	vsi->req_rxq = queues;
+
+	if (ice_vsi_rebuild(vsi, ICE_VSI_FLAG_NO_INIT)) {
 		/* Try to rebuild with previous values */
 		needs_rebuild = true;
 		goto unroll;
@@ -1150,8 +1153,10 @@ int ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count)
 	}
 
 	if (needs_rebuild) {
-		ice_vf_reconfig_vsi(vf);
-		ice_vf_init_host_cfg(vf, vsi);
+		vsi->req_txq = prev_queues;
+		vsi->req_rxq = prev_queues;
+
+		ice_vsi_rebuild(vsi, ICE_VSI_FLAG_NO_INIT);
 	}
 
 	ice_ena_vf_mappings(vf);
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 749a08ccf267..8c434689e3f7 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -256,7 +256,7 @@ static void ice_vf_pre_vsi_rebuild(struct ice_vf *vf)
  *
  * It brings the VSI down and then reconfigures it with the hardware.
  */
-int ice_vf_reconfig_vsi(struct ice_vf *vf)
+static int ice_vf_reconfig_vsi(struct ice_vf *vf)
 {
 	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
 	struct ice_pf *pf = vf->pf;
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h b/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
index 91ba7fe0eaee..0c7e77c0a09f 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
@@ -23,7 +23,6 @@
 #warning "Only include ice_vf_lib_private.h in CONFIG_PCI_IOV virtualization files"
 #endif
 
-int ice_vf_reconfig_vsi(struct ice_vf *vf);
 void ice_initialize_vf_entry(struct ice_vf *vf);
 void ice_dis_vf_qs(struct ice_vf *vf);
 int ice_check_vf_init(struct ice_vf *vf);
-- 
2.45.0

