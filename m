Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6F73E826C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Aug 2021 20:10:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A7AFA60682;
	Tue, 10 Aug 2021 18:10:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4ufI8cbDpjtS; Tue, 10 Aug 2021 18:10:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C1AA605D1;
	Tue, 10 Aug 2021 18:10:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 118C61BF479
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Aug 2021 18:10:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F3EC6605D1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Aug 2021 18:10:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZmkgJR89EBgf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Aug 2021 18:10:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B166B605C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Aug 2021 18:10:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10072"; a="214947333"
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="214947333"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 11:10:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="675137749"
Received: from shasta.jf.intel.com ([10.166.241.42])
 by fmsmga005.fm.intel.com with ESMTP; 10 Aug 2021 11:10:18 -0700
From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 10 Aug 2021 10:57:21 -0700
Message-Id: <20210810175721.1018775-1-anirudh.venkataramanan@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2] ice: Stop processing VF messages
 during teardown
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

When VFs are setup and torn down in quick succession, it is possible that
a VF is torn down by the PF while its virtchnl requests are still in the
PF's mailbox ring. When the PF eventually processes a non-existant VF's
virtchnl request, kernel panic is observed. This can be reproduced using
the following script:

for i in $(seq 0 99); do
  echo 128 > /sys/class/net/ens785f0/device/sriov_numvfs
  sleep 1
  echo 0 > /sys/class/net/ens785f0/device/sriov_numvfs
  sleep 1
done

Three different call traces were seen across multiple reproductions:

Call trace 1:

[ 7057.536706] BUG: unable to handle kernel paging request at 00000f02c0000413
...
[ 7057.568476] RIP: 0010:devres_remove+0x47/0xe0
...
[ 7057.670397] Call Trace:
[ 7057.672854]  devres_destroy+0xa/0x20
[ 7057.676431]  devm_kfree+0x2d/0x40
[ 7057.679758]  ice_free_sched_node+0xf2/0x1f0 [ice]
[ 7057.684468]  ice_free_sched_node+0x3c/0x1f0 [ice]
[ 7057.689173]  ice_rm_vsi_lan_cfg+0x168/0x2e0 [ice]
[ 7057.693877]  ice_vsi_release+0x13b/0x280 [ice]
[ 7057.698325]  ice_free_vfs+0x145/0x2b0 [ice]
[ 7057.702510]  ice_sriov_configure+0x84/0x7d0 [ice]
[ 7057.707214]  ? _kstrtoull+0x3b/0x90
[ 7057.710707]  sriov_numvfs_store+0x10a/0x190
[ 7057.714891]  kernfs_fop_write+0x116/0x190
[ 7057.718903]  vfs_write+0xa5/0x1a0
[ 7057.722221]  ksys_write+0x4f/0xb0
[ 7057.725543]  do_syscall_64+0x5b/0x1a0
[ 7057.729208]  entry_SYSCALL_64_after_hwframe+0x65/0xca

Call trace 2:

[ 1387.873125] BUG: unable to handle kernel paging request at ffffd0d945000008
...
[ 1387.904813] RIP: 0010:kfree+0x5c/0x3a0
...
[ 1388.006160] Call Trace:
[ 1388.008619]  ? dev_disable_lro+0xe0/0xe0
[ 1388.012542]  pfifo_fast_destroy+0x22/0x40
[ 1388.016552]  qdisc_destroy+0x3e/0xc0
[ 1388.020129]  dev_shutdown+0x4d/0xa5
[ 1388.023622]  rollback_registered_many+0x2d1/0x630
[ 1388.028328]  rollback_registered+0x56/0x90
[ 1388.032426]  unregister_netdevice_queue+0x73/0xb0
[ 1388.037132]  unregister_netdev+0x18/0x20
[ 1388.041062]  iavf_remove+0x3a0/0x3d0 [iavf]
[ 1388.045247]  pci_device_remove+0x3b/0xc0
[ 1388.049172]  device_release_driver_internal+0x103/0x1f0
[ 1388.054398]  pci_stop_bus_device+0x69/0x90
[ 1388.058494]  pci_stop_and_remove_bus_device+0xe/0x20
[ 1388.063463]  pci_iov_remove_virtfn+0xba/0x120
[ 1388.067819]  sriov_disable+0x2f/0xe0
[ 1388.071407]  ice_free_vfs+0x276/0x2b0 [ice]
[ 1388.075596]  ice_sriov_configure+0x84/0x7d0 [ice]
[ 1388.080301]  ? _kstrtoull+0x3b/0x90
[ 1388.083790]  sriov_numvfs_store+0x10a/0x190
[ 1388.087979]  kernfs_fop_write+0x116/0x190
[ 1388.091991]  vfs_write+0xa5/0x1a0
[ 1388.095309]  ksys_write+0x4f/0xb0
[ 1388.098630]  do_syscall_64+0x5b/0x1a0
[ 1388.102294]  entry_SYSCALL_64_after_hwframe+0x65/0xca

Call trace 3:

[ 2982.326736] BUG: unable to handle kernel NULL pointer dereference at 0000000000000080
...
[ 2982.359718] RIP: 0010:proc_reg_open+0x30/0x130
...
[ 2982.461708] Call Trace:
[ 2982.464156]  ? proc_put_link+0x10/0x10
[ 2982.467910]  do_dentry_open+0x132/0x340
[ 2982.471747]  path_openat+0x53e/0x14f0
[ 2982.475415]  ? modify_irte.isra.10+0xe2/0x100
[ 2982.479770]  do_filp_open+0x93/0x100
[ 2982.483349]  ? getname_flags+0x4a/0x1e0
[ 2982.487190]  ? __check_object_size+0xa8/0x16b
[ 2982.491548]  do_sys_open+0x184/0x220
[ 2982.495129]  do_syscall_64+0x5b/0x1a0
[ 2982.498795]  entry_SYSCALL_64_after_hwframe+0x65/0xca

Fix this by adding a check to stop processing virtchnl requests when VF
teardown is in progress.

Fixes: ddf30f7ff840 ("ice: Add handler to configure SR-IOV")
Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h             | 1 +
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 7 +++++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 622b20c..7662dd2 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -239,6 +239,7 @@ enum ice_pf_state {
 	ICE_VFLR_EVENT_PENDING,
 	ICE_FLTR_OVERFLOW_PROMISC,
 	ICE_VF_DIS,
+	ICE_VF_DEINIT_IN_PROGRESS,
 	ICE_CFG_BUSY,
 	ICE_SERVICE_SCHED,
 	ICE_SERVICE_DIS,
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 8fde6ea..0ed7f1e 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -500,6 +500,8 @@ void ice_free_vfs(struct ice_pf *pf)
 	struct ice_hw *hw = &pf->hw;
 	unsigned int tmp, i;
 
+	set_bit(ICE_VF_DEINIT_IN_PROGRESS, pf->state);
+
 	if (!pf->vf)
 		return;
 
@@ -568,6 +570,7 @@ void ice_free_vfs(struct ice_pf *pf)
 				i);
 
 	clear_bit(ICE_VF_DIS, pf->state);
+	clear_bit(ICE_VF_DEINIT_IN_PROGRESS, pf->state);
 	clear_bit(ICE_FLAG_SRIOV_ENA, pf->flags);
 }
 
@@ -4567,6 +4570,10 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
 	struct device *dev;
 	int err = 0;
 
+	/* if de-init is underway, don't process messages from VF */
+	if (test_bit(ICE_VF_DEINIT_IN_PROGRESS, pf->state))
+		return;
+
 	dev = ice_pf_to_dev(pf);
 	if (ice_validate_vf_id(pf, vf_id)) {
 		err = -EINVAL;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
