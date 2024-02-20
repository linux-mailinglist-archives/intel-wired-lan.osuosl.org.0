Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 873D485CBEA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Feb 2024 00:17:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2481A6065A;
	Tue, 20 Feb 2024 23:17:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iHpghHaTBNFz; Tue, 20 Feb 2024 23:17:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F185B607B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708471065;
	bh=g3d2uNXV7NbXHmLHwuKUbfy2cuKDhqzj+pPl6ZfJrCU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=xdo7/gdNC3cyC9Xv5ltfMCnZ75yICh15NsYawyVEzUk3OOQCl9Ynl3UTvboKDMJbG
	 7Ln+5k26ldm7p/7BoksyEakzzuu+48s+XJH8hy5sqt9Fb2u51cwx7P788hhPcaiBaA
	 3T/3YqsPW2c8OKU6pMiDEuq2TRYD1iiBtriaQ7KqE9SfEMwUygcy8Qzt/4aPjtlDAV
	 aJpqkiuPksnirt+0yF589odoHuBU6PPnfCpKu2v33vEnfGBT8RAFdPSi5MllF/3H/6
	 +oAXpy9r+wMqnKIDd4Dn2u3O7CkbudN69RIaictq6XyZHw66wYYCX37fovTfioaoZ6
	 Z2bP/VVi7BY9w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F185B607B5;
	Tue, 20 Feb 2024 23:17:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 35DA41BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 23:17:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2D59A4043E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 23:17:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KQc805WjoEs3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Feb 2024 23:17:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=jesse.brandeburg@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 24AE640437
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 24AE640437
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 24AE640437
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 23:17:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="5560988"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; 
   d="scan'208";a="5560988"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 15:17:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="913165830"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; d="scan'208";a="913165830"
Received: from jbrandeb-coyote30.jf.intel.com ([10.166.29.19])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 15:17:30 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Feb 2024 15:17:20 -0800
Message-Id: <20240220231720.14836-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708471061; x=1740007061;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rLt2N4qD6L6RlGXQyss0vOroeT+miPoL8jbOXfsCIvc=;
 b=jQk4KdmXKC3x7qTuB7D5q1/mECe7sz7nqkNT0C6hv6euP927SOLaELAt
 BPLcTjCtUAzEdDCq+8bUzcUyUxyTymaqOvhHvy82dkdSRNDuK8V25Yh/U
 Rocf4slR5WnpPKBU9WM2337Vjhh0S8GTet0aI1lA5XJU8p1CH8lqzQaLn
 OcHn8Uc8+cBkpdKQWbj6iJncVCwU8Cwa4taUS1AE3fBWHxMCF3V2Br7uB
 3PBjqIrBPNqJXQ90V2pa8yX3+nA5cfuhSqzsc/Q+joDs5zVfmheetTBIk
 kfB7SxQ7t9BjSGAdwNwH3Puhs11sWXrC+yRChDuTihSlriXIZdOwbp2Pq
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jQk4KdmX
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix NULL pointer access
 during resume
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Robert Elliott <elliott@hpe.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice_suspend/ice_resume cycle was not updated when refactoring was
done to the init path and I suspect this allowed a bug to creep in where
the driver was not correctly reinitialized during resume.

I was able to test against 6.1.77 kernel and that ice driver works fine
for suspend/resume with no panic.

Instead of tearing down interrupts and freeing a bunch of memory during
suspend, just begin an internal reset event, which takes care of all the
correct steps during suspend.  Likewise during resume we'll just let the
reset complete and the driver comes right back to life. This mirrors the
behavior of other suspend/resume code in drivers like fm10k.

Older kernel commits were made to this driver and to the i40e driver to
try to fix "disk" or hibernate suspend events with many CPUs. The PM
subsystem was updated since then but the drivers kept the old flows.
Testing with rtcwake -m [disk | mem] -s 10 - passes but my system won't
hibernate due to too much RAM, not enough swap.

The code is slightly refactored during this change in order to share a
common "prep" path between suspend and the pci error handler functions
which all do the same thing, so introduce ice_quiesce_before_reset().

While doing all this and compile testing I ran across the pm.h changes
to get rid of compilation problems when CONFIG_PM=n etc, so those small
changes are included here as well.

PANIC from 6.8.0-rc1:

[1026674.915596] PM: suspend exit
[1026675.664697] ice 0000:17:00.1: PTP reset successful
[1026675.664707] ice 0000:17:00.1: 2755 msecs passed between update to cached PHC time
[1026675.667660] ice 0000:b1:00.0: PTP reset successful
[1026675.675944] ice 0000:b1:00.0: 2832 msecs passed between update to cached PHC time
[1026677.137733] ixgbe 0000:31:00.0 ens787: NIC Link is Up 1 Gbps, Flow Control: None
[1026677.190201] BUG: kernel NULL pointer dereference, address: 0000000000000010
[1026677.192753] ice 0000:17:00.0: PTP reset successful
[1026677.192764] ice 0000:17:00.0: 4548 msecs passed between update to cached PHC time
[1026677.197928] #PF: supervisor read access in kernel mode
[1026677.197933] #PF: error_code(0x0000) - not-present page
[1026677.197937] PGD 1557a7067 P4D 0
[1026677.212133] ice 0000:b1:00.1: PTP reset successful
[1026677.212143] ice 0000:b1:00.1: 4344 msecs passed between update to cached PHC time
[1026677.212575]
[1026677.243142] Oops: 0000 [#1] PREEMPT SMP NOPTI
[1026677.247918] CPU: 23 PID: 42790 Comm: kworker/23:0 Kdump: loaded Tainted: G        W          6.8.0-rc1+ #1
[1026677.257989] Hardware name: Intel Corporation M50CYP2SBSTD/M50CYP2SBSTD, BIOS SE5C620.86B.01.01.0005.2202160810 02/16/2022
[1026677.269367] Workqueue: ice ice_service_task [ice]
[1026677.274592] RIP: 0010:ice_vsi_rebuild_set_coalesce+0x130/0x1e0 [ice]
[1026677.281421] Code: 0f 84 3a ff ff ff 41 0f b7 74 ec 02 66 89 b0 22 02 00 00 81 e6 ff 1f 00 00 e8 ec fd ff ff e9 35 ff ff ff 48 8b 43 30 49 63 ed <41> 0f b7 34 24 41 83 c5 01 48 8b 3c e8 66 89 b7 aa 02 00 00 81 e6
[1026677.300877] RSP: 0018:ff3be62a6399bcc0 EFLAGS: 00010202
[1026677.306556] RAX: ff28691e28980828 RBX: ff28691e41099828 RCX: 0000000000188000
[1026677.314148] RDX: 0000000000000000 RSI: 0000000000000010 RDI: ff28691e41099828
[1026677.321730] RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
[1026677.329311] R10: 0000000000000007 R11: ffffffffffffffc0 R12: 0000000000000010
[1026677.336896] R13: 0000000000000000 R14: 0000000000000000 R15: ff28691e0eaa81a0
[1026677.344472] FS:  0000000000000000(0000) GS:ff28693cbffc0000(0000) knlGS:0000000000000000
[1026677.353000] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[1026677.359195] CR2: 0000000000000010 CR3: 0000000128df4001 CR4: 0000000000771ef0
[1026677.366779] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[1026677.374369] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[1026677.381952] PKRU: 55555554
[1026677.385116] Call Trace:
[1026677.388023]  <TASK>
[1026677.390589]  ? __die+0x20/0x70
[1026677.394105]  ? page_fault_oops+0x82/0x160
[1026677.398576]  ? do_user_addr_fault+0x65/0x6a0
[1026677.403307]  ? exc_page_fault+0x6a/0x150
[1026677.407694]  ? asm_exc_page_fault+0x22/0x30
[1026677.412349]  ? ice_vsi_rebuild_set_coalesce+0x130/0x1e0 [ice]
[1026677.418614]  ice_vsi_rebuild+0x34b/0x3c0 [ice]
[1026677.423583]  ice_vsi_rebuild_by_type+0x76/0x180 [ice]
[1026677.429147]  ice_rebuild+0x18b/0x520 [ice]
[1026677.433746]  ? delay_tsc+0x8f/0xc0
[1026677.437630]  ice_do_reset+0xa3/0x190 [ice]
[1026677.442231]  ice_service_task+0x26/0x440 [ice]
[1026677.447180]  process_one_work+0x174/0x340
[1026677.451669]  worker_thread+0x27e/0x390
[1026677.455890]  ? __pfx_worker_thread+0x10/0x10
[1026677.460627]  kthread+0xee/0x120
[1026677.464235]  ? __pfx_kthread+0x10/0x10
[1026677.468445]  ret_from_fork+0x2d/0x50
[1026677.472476]  ? __pfx_kthread+0x10/0x10
[1026677.476671]  ret_from_fork_asm+0x1b/0x30
[1026677.481050]  </TASK>

Fixes: 5b246e533d01 ("ice: split probe into smaller functions")
Reported-by: Robert Elliott <elliott@hpe.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
NOTE:
Requires Amritha's patch:
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/170785373072.3325.9129916579186572531.stgit@anambiarhost.jf.intel.com/
to be applied before this will pass testing cleanly.

Checkpatch warns on no "Closes:" but this was reported on a private
list, so there is nothing to close.

Testing Hints: 'rtcwake -m mem -s 10' should result in a 10 second sleep
and wake, with the interface fully functional afterward. Please also
test that magic packet wake can be enabled on an adapter that supports
it, and that the magic packet wakes the system.
---
 drivers/net/ethernet/intel/ice/ice_main.c | 179 +++-------------------
 1 file changed, 25 insertions(+), 154 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index dd4a9bc0dfdc..2a16b4475d29 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5385,84 +5385,15 @@ static void ice_shutdown(struct pci_dev *pdev)
 	}
 }
 
-#ifdef CONFIG_PM
-/**
- * ice_prepare_for_shutdown - prep for PCI shutdown
- * @pf: board private structure
- *
- * Inform or close all dependent features in prep for PCI device shutdown
- */
-static void ice_prepare_for_shutdown(struct ice_pf *pf)
-{
-	struct ice_hw *hw = &pf->hw;
-	u32 v;
-
-	/* Notify VFs of impending reset */
-	if (ice_check_sq_alive(hw, &hw->mailboxq))
-		ice_vc_notify_reset(pf);
-
-	dev_dbg(ice_pf_to_dev(pf), "Tearing down internal switch for shutdown\n");
-
-	/* disable the VSIs and their queues that are not already DOWN */
-	ice_pf_dis_all_vsi(pf, false);
-
-	ice_for_each_vsi(pf, v)
-		if (pf->vsi[v])
-			pf->vsi[v]->vsi_num = 0;
-
-	ice_shutdown_all_ctrlq(hw);
-}
-
-/**
- * ice_reinit_interrupt_scheme - Reinitialize interrupt scheme
- * @pf: board private structure to reinitialize
- *
- * This routine reinitialize interrupt scheme that was cleared during
- * power management suspend callback.
- *
- * This should be called during resume routine to re-allocate the q_vectors
- * and reacquire interrupts.
- */
-static int ice_reinit_interrupt_scheme(struct ice_pf *pf)
+static int ice_quiesce_before_reset(struct ice_pf *pf)
 {
-	struct device *dev = ice_pf_to_dev(pf);
-	int ret, v;
-
-	/* Since we clear MSIX flag during suspend, we need to
-	 * set it back during resume...
-	 */
-
-	ret = ice_init_interrupt_scheme(pf);
-	if (ret) {
-		dev_err(dev, "Failed to re-initialize interrupt %d\n", ret);
-		return ret;
-	}
-
-	/* Remap vectors and rings, after successful re-init interrupts */
-	ice_for_each_vsi(pf, v) {
-		if (!pf->vsi[v])
-			continue;
+	int ret = ice_service_task_stop(pf);
 
-		ret = ice_vsi_alloc_q_vectors(pf->vsi[v]);
-		if (ret)
-			goto err_reinit;
-		ice_vsi_map_rings_to_vectors(pf->vsi[v]);
-	}
-
-	ret = ice_req_irq_msix_misc(pf);
-	if (ret) {
-		dev_err(dev, "Setting up misc vector failed after device suspend %d\n",
-			ret);
-		goto err_reinit;
+	if (!test_bit(ICE_PREPARED_FOR_RESET, pf->state)) {
+		set_bit(ICE_PFR_REQ, pf->state);
+		ice_prepare_for_reset(pf, ICE_RESET_PFR);
 	}
 
-	return 0;
-
-err_reinit:
-	while (v--)
-		if (pf->vsi[v])
-			ice_vsi_free_q_vectors(pf->vsi[v]);
-
 	return ret;
 }
 
@@ -5473,66 +5404,29 @@ static int ice_reinit_interrupt_scheme(struct ice_pf *pf)
  * Power Management callback to quiesce the device and prepare
  * for D3 transition.
  */
-static int __maybe_unused ice_suspend(struct device *dev)
+static int ice_suspend(struct device *dev)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct ice_pf *pf;
-	int disabled, v;
 
 	pf = pci_get_drvdata(pdev);
 
 	if (!ice_pf_state_is_nominal(pf)) {
-		dev_err(dev, "Device is not ready, no need to suspend it\n");
+		dev_err(dev, "Device is not ready for suspend.\n");
 		return -EBUSY;
 	}
 
-	/* Stop watchdog tasks until resume completion.
-	 * Even though it is most likely that the service task is
-	 * disabled if the device is suspended or down, the service task's
-	 * state is controlled by a different state bit, and we should
-	 * store and honor whatever state that bit is in at this point.
-	 */
-	disabled = ice_service_task_stop(pf);
-
-	ice_unplug_aux_dev(pf);
-
-	/* Already suspended?, then there is nothing to do */
-	if (test_and_set_bit(ICE_SUSPENDED, pf->state)) {
-		if (!disabled)
-			ice_service_task_restart(pf);
-		return 0;
-	}
-
-	if (test_bit(ICE_DOWN, pf->state) ||
-	    ice_is_reset_in_progress(pf->state)) {
-		dev_err(dev, "can't suspend device in reset or already down\n");
-		if (!disabled)
-			ice_service_task_restart(pf);
-		return 0;
-	}
+	/* Stop watchdog tasks until resume completion */
+	ice_quiesce_before_reset(pf);
+	set_bit(ICE_SUSPENDED, pf->state);
 
 	ice_setup_mc_magic_wake(pf);
-
-	ice_prepare_for_shutdown(pf);
-
 	ice_set_wake(pf);
 
-	/* Free vectors, clear the interrupt scheme and release IRQs
-	 * for proper hibernation, especially with large number of CPUs.
-	 * Otherwise hibernation might fail when mapping all the vectors back
-	 * to CPU0.
-	 */
-	ice_free_irq_msix_misc(pf);
-	ice_for_each_vsi(pf, v) {
-		if (!pf->vsi[v])
-			continue;
-		ice_vsi_free_q_vectors(pf->vsi[v]);
-	}
-	ice_clear_interrupt_scheme(pf);
-
 	pci_save_state(pdev);
 	pci_wake_from_d3(pdev, pf->wol_ena);
 	pci_set_power_state(pdev, PCI_D3hot);
+
 	return 0;
 }
 
@@ -5540,10 +5434,9 @@ static int __maybe_unused ice_suspend(struct device *dev)
  * ice_resume - PM callback for waking up from D3
  * @dev: generic device information structure
  */
-static int __maybe_unused ice_resume(struct device *dev)
+static int ice_resume(struct device *dev)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
-	enum ice_reset_req reset_type;
 	struct ice_pf *pf;
 	struct ice_hw *hw;
 	int ret;
@@ -5566,32 +5459,24 @@ static int __maybe_unused ice_resume(struct device *dev)
 
 	pf->wakeup_reason = rd32(hw, PFPM_WUS);
 	ice_print_wake_reason(pf);
-
-	/* We cleared the interrupt scheme when we suspended, so we need to
-	 * restore it now to resume device functionality.
-	 */
-	ret = ice_reinit_interrupt_scheme(pf);
-	if (ret)
-		dev_err(dev, "Cannot restore interrupt scheme: %d\n", ret);
+	pci_wake_from_d3(pdev, false);
 
 	clear_bit(ICE_DOWN, pf->state);
-	/* Now perform PF reset and rebuild */
-	reset_type = ICE_RESET_PFR;
-	/* re-enable service task for reset, but allow reset to schedule it */
 	clear_bit(ICE_SERVICE_DIS, pf->state);
+	clear_bit(ICE_SUSPENDED, pf->state);
 
-	if (ice_schedule_reset(pf, reset_type))
-		dev_err(dev, "Reset during resume failed.\n");
+	/* force a reset, but it may already have been scheduled in
+	 * ice_suspend, but either way the reset will execute
+	 * once the service task is restarted
+	 */
+	ice_schedule_reset(pf, ICE_RESET_PFR);
 
-	clear_bit(ICE_SUSPENDED, pf->state);
 	ice_service_task_restart(pf);
-
 	/* Restart the service task */
 	mod_timer(&pf->serv_tmr, round_jiffies(jiffies + pf->serv_tmr_period));
 
 	return 0;
 }
-#endif /* CONFIG_PM */
 
 /**
  * ice_pci_err_detected - warning that PCI error has been detected
@@ -5612,14 +5497,8 @@ ice_pci_err_detected(struct pci_dev *pdev, pci_channel_state_t err)
 		return PCI_ERS_RESULT_DISCONNECT;
 	}
 
-	if (!test_bit(ICE_SUSPENDED, pf->state)) {
-		ice_service_task_stop(pf);
-
-		if (!test_bit(ICE_PREPARED_FOR_RESET, pf->state)) {
-			set_bit(ICE_PFR_REQ, pf->state);
-			ice_prepare_for_reset(pf, ICE_RESET_PFR);
-		}
-	}
+	if (!test_bit(ICE_SUSPENDED, pf->state))
+		ice_quiesce_before_reset(pf);
 
 	return PCI_ERS_RESULT_NEED_RESET;
 }
@@ -5698,14 +5577,8 @@ static void ice_pci_err_reset_prepare(struct pci_dev *pdev)
 {
 	struct ice_pf *pf = pci_get_drvdata(pdev);
 
-	if (!test_bit(ICE_SUSPENDED, pf->state)) {
-		ice_service_task_stop(pf);
-
-		if (!test_bit(ICE_PREPARED_FOR_RESET, pf->state)) {
-			set_bit(ICE_PFR_REQ, pf->state);
-			ice_prepare_for_reset(pf, ICE_RESET_PFR);
-		}
-	}
+	if (!test_bit(ICE_SUSPENDED, pf->state))
+		ice_quiesce_before_reset(pf);
 }
 
 /**
@@ -5761,7 +5634,7 @@ static const struct pci_device_id ice_pci_tbl[] = {
 };
 MODULE_DEVICE_TABLE(pci, ice_pci_tbl);
 
-static __maybe_unused SIMPLE_DEV_PM_OPS(ice_pm_ops, ice_suspend, ice_resume);
+static DEFINE_SIMPLE_DEV_PM_OPS(ice_pm_ops, ice_suspend, ice_resume);
 
 static const struct pci_error_handlers ice_pci_err_handler = {
 	.error_detected = ice_pci_err_detected,
@@ -5776,9 +5649,7 @@ static struct pci_driver ice_driver = {
 	.id_table = ice_pci_tbl,
 	.probe = ice_probe,
 	.remove = ice_remove,
-#ifdef CONFIG_PM
-	.driver.pm = &ice_pm_ops,
-#endif /* CONFIG_PM */
+	.driver.pm = pm_sleep_ptr(&ice_pm_ops),
 	.shutdown = ice_shutdown,
 	.sriov_configure = ice_sriov_configure,
 	.sriov_get_vf_total_msix = ice_sriov_get_vf_total_msix,

base-commit: 23f9c2c066e7e5052406fb8f04a115d3d0260b22
-- 
2.39.3

