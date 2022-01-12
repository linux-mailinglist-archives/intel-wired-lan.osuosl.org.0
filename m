Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7308F48C0D5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jan 2022 10:17:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F24496FB88;
	Wed, 12 Jan 2022 09:17:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lyuj3DIKZLqz; Wed, 12 Jan 2022 09:17:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5B966FB86;
	Wed, 12 Jan 2022 09:17:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 13E121BF86D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jan 2022 09:17:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F40304287E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jan 2022 09:17:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0WRasLtAmo14 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jan 2022 09:17:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B78B14151E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jan 2022 09:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641979039; x=1673515039;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7CuJnTF2jo9y5fSmgBJqmVBqDN5uen6CUBO0ygj2Zgk=;
 b=BkMFzxhRs8okmrdBleDJ0XwnpfLa9f/7NDJdAm/ew6Qy/iApdrIv6weT
 hGX2DjULIBqDIqUOn6M0wr0AS1Haqxj+pB09pgkOopqfPRt8Y111Q3LvC
 VAhqgXg0QEJ7d9gOIX1LIlzA1n5EvEWjySly1UNDFCiFO0g71IekIPWc5
 xOY4NEK1++zVg4lVuad40NCONs/kJEpZ8K0Nm4ZP7GNUQTuY1FFF1YjiB
 Y2uePAYbUnLsUzXCKK97dClYCT6TyIBZFVRErMynpUEWOtORoysI2Qbdv
 lH+Xr6t1Jbh7xRcqSE3KUINcnQpP44OUib0XHatiD6BVzNFZguGltdehc A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="243896664"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="243896664"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 01:17:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="623376597"
Received: from amlin-019-051.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.19.51])
 by orsmga004.jf.intel.com with ESMTP; 12 Jan 2022 01:17:17 -0800
From: Karen Sornek <karen.sornek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 12 Jan 2022 10:19:47 +0100
Message-Id: <20220112091947.132769-1-karen.sornek@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix reset path while
 removing the driver
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
 Karen Sornek <karen.sornek@intel.com>,
 Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix the crash in kernel while dereferencing the NULL pointer,
when the driver is unloaded and simultaneously the vsi rings
are being stopped.

The hardware requires 50msec in order to finish RX queues
disable. For this purpose the driver spins in mdelay function
for the operation to be completed.

For example changing number of queues which requires reset would
fail in the following call stack:

1) i40e_prep_for_reset
2) i40e_pf_quiesce_all_vsi
3) i40e_quiesce_vsi
4) i40e_vsi_close
5) i40e_down
6) i40e_vsi_stop_rings
7) i40e_vsi_control_rx -> disable requires the delay of 50msecs
8) continue back in i40e_down function where
   i40e_clean_tx_ring(vsi->tx_rings[i]) is going to crash

When the driver was spinning vsi_release called
i40e_vsi_free_arrays where the vsi->tx_rings resources
were freed and the pointer was set to NULL.

Fixes: 5b6d4a7f20b0 ("i40e: Fix crash during removing i40e driver")
Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Karen Sornek <karen.sornek@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h      |  1 +
 drivers/net/ethernet/intel/i40e/i40e_main.c | 19 ++++++++++++++++++-
 2 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 7f40f87a5f57..c7d3355be9f6 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -144,6 +144,7 @@ enum i40e_state_t {
 	__I40E_VIRTCHNL_OP_PENDING,
 	__I40E_RECOVERY_MODE,
 	__I40E_VF_RESETS_DISABLED,	/* disable resets during i40e_remove */
+	__I40E_IN_REMOVE,
 	__I40E_VFS_RELEASING,
 	/* This must be last as it determines the size of the BITMAP */
 	__I40E_STATE_SIZE__,
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 40c22bc0d409..fb6ad32bc74b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -10900,6 +10900,9 @@ static void i40e_reset_and_rebuild(struct i40e_pf *pf, bool reinit,
 				   bool lock_acquired)
 {
 	int ret;
+
+	if (test_bit(__I40E_IN_REMOVE, pf->state))
+		return;
 	/* Now we wait for GRST to settle out.
 	 * We don't have to delete the VEBs or VSIs from the hw switch
 	 * because the reset will make them disappear.
@@ -12259,6 +12262,8 @@ int i40e_reconfig_rss_queues(struct i40e_pf *pf, int queue_count)
 
 		vsi->req_queue_pairs = queue_count;
 		i40e_prep_for_reset(pf);
+		if (test_bit(__I40E_IN_REMOVE, pf->state))
+			return pf->alloc_rss_size;
 
 		pf->alloc_rss_size = new_rss_size;
 
@@ -13085,6 +13090,10 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
 	if (need_reset)
 		i40e_prep_for_reset(pf);
 
+	/* VSI shall be deleted in a moment, just return EINVAL */
+	if (test_bit(__I40E_IN_REMOVE, pf->state))
+		return -EINVAL;
+
 	old_prog = xchg(&vsi->xdp_prog, prog);
 
 	if (need_reset) {
@@ -15975,8 +15984,13 @@ static void i40e_remove(struct pci_dev *pdev)
 	i40e_write_rx_ctl(hw, I40E_PFQF_HENA(0), 0);
 	i40e_write_rx_ctl(hw, I40E_PFQF_HENA(1), 0);
 
-	while (test_bit(__I40E_RESET_RECOVERY_PENDING, pf->state))
+	/* Grab __I40E_RESET_RECOVERY_PENDING and set __I40E_IN_REMOVE
+	 * flags, once they are set, i40e_rebuild should not be called as
+	 * i40e_prep_for_reset always returns early.
+	 */
+	while (test_and_set_bit(__I40E_RESET_RECOVERY_PENDING, pf->state))
 		usleep_range(1000, 2000);
+	set_bit(__I40E_IN_REMOVE, pf->state);
 
 	if (pf->flags & I40E_FLAG_SRIOV_ENABLED) {
 		set_bit(__I40E_VF_RESETS_DISABLED, pf->state);
@@ -16175,6 +16189,9 @@ static void i40e_pci_error_reset_done(struct pci_dev *pdev)
 {
 	struct i40e_pf *pf = pci_get_drvdata(pdev);
 
+	if (test_bit(__I40E_IN_REMOVE, pf->state))
+		return;
+
 	i40e_reset_and_rebuild(pf, false, false);
 }
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
