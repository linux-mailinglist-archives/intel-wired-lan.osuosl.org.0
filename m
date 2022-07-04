Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5549B56573C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Jul 2022 15:32:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA1F060E16;
	Mon,  4 Jul 2022 13:32:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA1F060E16
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656941547;
	bh=j6h3/fye+xDm751RwyKt6/rhqV8Lz4/miF+FnQPdEI8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=q6+GD6FWrFTlveclfUZ82RKy1Uexcu7y6hKBqICGK6fucnb6VGEYolK/BbRwj5dNR
	 iCJSWkZISqLa95M3/jSGeLC+d5noLrTxXhsKI28FMg0f00GBC5yco/qk4JzDIisTh1
	 pHT1+8c/frnUmqTg/AhLqOGQf5ff6MrdqCuAVjzBNngQo5wef6JJX9awekg5dt/jC7
	 lUuSuuKxtBqzQZxe8TGjs6eGprcWS5nh/iBENOn3UYelLiyMl3mZV7ey8/v2DcUMhO
	 Z6eDOuCq9PdpCSfwDEO4Ec9FIv7BGhvOzu3IuYykgGbWcC+7NJ4qRoLOgSfmgo9Iq4
	 YZvH3bjZ8Uicw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v69gf9ZEZtYh; Mon,  4 Jul 2022 13:32:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B41B960A94;
	Mon,  4 Jul 2022 13:32:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B41B960A94
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 147E11BF35F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 13:32:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E375581356
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 13:32:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E375581356
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sc3XWUDQbdz4 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Jul 2022 13:32:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1FAC981352
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1FAC981352
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 13:32:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10397"; a="344808142"
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="344808142"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2022 06:32:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="592564397"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by orsmga002.jf.intel.com with ESMTP; 04 Jul 2022 06:32:17 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 Jul 2022 15:32:03 +0200
Message-Id: <20220704133203.1356118-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656941539; x=1688477539;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7SSx/1KV3CfptcbKy6HxqeCovzAdFovHfOuROmYiPP8=;
 b=Krb8qsBVGJcTjIvq6YPN5mwwXcmqRkbsxYSvV/Mik017KFHfDkxRwZ4A
 zNjeeEtZBhuBihpRy3W5eIssqUaEhkHBwS1iXeINtVOGgcZd1kkeNNJBR
 qnWmrlz2M8C33IkmR/k/5Lnlkmq8ZXJY1eHhICu1Jm7GNF+VRXMtF7sDM
 qVAOOoaF/pfe46559jM6EIWN0UG0Lep93z2eIF6xge/30uMj9zIZDKHGG
 TmbyiclHzEDwsf8DzR4gxCR+HcMRWy4PigRIezPjA54dpFY/guFl8yVXy
 BgNWDEXwlUuijN4HctPzZFrwJC5zT3F4NLtTBydberBkQuTNIxS6Z+wwi
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Krb8qsBV
Subject: [Intel-wired-lan] [PATCH net v3 1/3] iavf: Fix reset error handling
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>

Do not call iavf_close in iavf_reset_task error handling. Doing so can
lead to double call of napi_disable, which can lead to deadlock there.
Removing VF would lead to iavf_remove task being stuck, because it
requires crit_lock, which is held by iavf_close.
Call iavf_disable_vf if reset fail, so that driver will clean up
remaining invalid resources.
During rapid VF resets, HW can fail to setup VF mailbox. Wrong
error handling can lead to iavf_remove being stuck with:
[ 5218.999087] iavf 0000:82:01.0: Failed to init adminq: -53
...
[ 5267.189211] INFO: task repro.sh:11219 blocked for more than 30 seconds.
[ 5267.189520]       Tainted: G S          E     5.18.0-04958-ga54ce3703613-dirty #1
[ 5267.189764] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
[ 5267.190062] task:repro.sh        state:D stack:    0 pid:11219 ppid:  8162 flags:0x00000000
[ 5267.190347] Call Trace:
[ 5267.190647]  <TASK>
[ 5267.190927]  __schedule+0x460/0x9f0
[ 5267.191264]  schedule+0x44/0xb0
[ 5267.191563]  schedule_preempt_disabled+0x14/0x20
[ 5267.191890]  __mutex_lock.isra.12+0x6e3/0xac0
[ 5267.192237]  ? iavf_remove+0xf9/0x6c0 [iavf]
[ 5267.192565]  iavf_remove+0x12a/0x6c0 [iavf]
[ 5267.192911]  ? _raw_spin_unlock_irqrestore+0x1e/0x40
[ 5267.193285]  pci_device_remove+0x36/0xb0
[ 5267.193619]  device_release_driver_internal+0xc1/0x150
[ 5267.193974]  pci_stop_bus_device+0x69/0x90
[ 5267.194361]  pci_stop_and_remove_bus_device+0xe/0x20
[ 5267.194735]  pci_iov_remove_virtfn+0xba/0x120
[ 5267.195130]  sriov_disable+0x2f/0xe0
[ 5267.195506]  ice_free_vfs+0x7d/0x2f0 [ice]
[ 5267.196056]  ? pci_get_device+0x4f/0x70
[ 5267.196496]  ice_sriov_configure+0x78/0x1a0 [ice]
[ 5267.196995]  sriov_numvfs_store+0xfe/0x140
[ 5267.197466]  kernfs_fop_write_iter+0x12e/0x1c0
[ 5267.197918]  new_sync_write+0x10c/0x190
[ 5267.198404]  vfs_write+0x24e/0x2d0
[ 5267.198886]  ksys_write+0x5c/0xd0
[ 5267.199367]  do_syscall_64+0x3a/0x80
[ 5267.199827]  entry_SYSCALL_64_after_hwframe+0x46/0xb0
[ 5267.200317] RIP: 0033:0x7f5b381205c8
[ 5267.200814] RSP: 002b:00007fff8c7e8c78 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
[ 5267.201981] RAX: ffffffffffffffda RBX: 0000000000000002 RCX: 00007f5b381205c8
[ 5267.202620] RDX: 0000000000000002 RSI: 00005569420ee900 RDI: 0000000000000001
[ 5267.203426] RBP: 00005569420ee900 R08: 000000000000000a R09: 00007f5b38180820
[ 5267.204327] R10: 000000000000000a R11: 0000000000000246 R12: 00007f5b383c06e0
[ 5267.205193] R13: 0000000000000002 R14: 00007f5b383bb880 R15: 0000000000000002
[ 5267.206041]  </TASK>
[ 5267.206970] Kernel panic - not syncing: hung_task: blocked tasks
[ 5267.207809] CPU: 48 PID: 551 Comm: khungtaskd Kdump: loaded Tainted: G S          E     5.18.0-04958-ga54ce3703613-dirty #1
[ 5267.208726] Hardware name: Dell Inc. PowerEdge R730/0WCJNT, BIOS 2.11.0 11/02/2019
[ 5267.209623] Call Trace:
[ 5267.210569]  <TASK>
[ 5267.211480]  dump_stack_lvl+0x33/0x42
[ 5267.212472]  panic+0x107/0x294
[ 5267.213467]  watchdog.cold.8+0xc/0xbb
[ 5267.214413]  ? proc_dohung_task_timeout_secs+0x30/0x30
[ 5267.215511]  kthread+0xf4/0x120
[ 5267.216459]  ? kthread_complete_and_exit+0x20/0x20
[ 5267.217505]  ret_from_fork+0x22/0x30
[ 5267.218459]  </TASK>

Fixes: f0db78928783 ("i40evf: use netdev variable in reset task")
Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 05b01b67210d..14366210a317 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2998,12 +2998,18 @@ static void iavf_reset_task(struct work_struct *work)
 
 	return;
 reset_err:
+	if (running) {
+		set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
+		/* As we enter iavf_disable_vf with __IAVF_RESETTING state set,
+		 * free traffic irqs here, as it is the only remaining resource
+		 */
+		iavf_free_traffic_irqs(adapter);
+	}
+	iavf_disable_vf(adapter);
+
 	mutex_unlock(&adapter->client_lock);
 	mutex_unlock(&adapter->crit_lock);
-	if (running)
-		iavf_change_state(adapter, __IAVF_RUNNING);
 	dev_err(&adapter->pdev->dev, "failed to allocate resources during reinit\n");
-	iavf_close(netdev);
 }
 
 /**
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
