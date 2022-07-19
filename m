Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF89E57961F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Jul 2022 11:19:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 722A6415CB;
	Tue, 19 Jul 2022 09:19:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 722A6415CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658222377;
	bh=3ZtNSTHyffBtJKupD4ijO7jFQ9+5Mq7psx0vbfUJfH0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DywSbw4GE6IGzoMWGVvCFf7EnUwl5/zjUs9F7wQA4R6NA++zB6zqqkFG2UdohBlU7
	 art5g7rFLdcv+8UsRIWh4wUViW/P1Y/28PSFP2b2z+CdkppU4RI4KXhFuYAz8q09Cg
	 JGiTWII1T+b8dGjQjsOIK3cAA66fXjVVEOzpsewxQ4pA1CmqbM0UTXS1Zs/7TpYhdL
	 UbFYyk42b+u80FxUxD0WUyajrgSDqSM2UL2aGUpsVaHFbQzTYxwVAsgNKboJeYdl9u
	 NIrFOzKNQovZ2+1EyS2CPp1fDOIk5ZOQtG1NRakA0+XgIqipNlAi9jvEKrY2cWEK5Z
	 2b7tMlztCF2DA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tcn_FE5zOeco; Tue, 19 Jul 2022 09:19:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA38540234;
	Tue, 19 Jul 2022 09:19:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA38540234
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 154541BF4D7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 09:19:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F1C13409E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 09:19:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F1C13409E9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uVUywBZNFu4G for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Jul 2022 09:19:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F3524410C6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F3524410C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 09:19:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10412"; a="285196531"
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="285196531"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 02:19:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="724193207"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by orsmga004.jf.intel.com with ESMTP; 19 Jul 2022 02:19:22 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 19 Jul 2022 11:16:54 +0200
Message-Id: <20220719091654.329774-3-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220719091654.329774-1-jedrzej.jagielski@intel.com>
References: <20220719091654.329774-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658222363; x=1689758363;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=76El0DPmbg4Pg8Tph3NZxZQylP4UKIn8swpK2wahrd0=;
 b=eaMZIvjH1klzufa9MULB0+KbykZPdchTTiDao33NR6B3bxrZzusNX1sy
 iumdvKCV9g9LatiVxq7iIzPBNWWP9D8Wz4sGhiAGUr+lLZGHT/gq33fWM
 fZP9gAEZoZwQ89/WXZu6JuTtxN/nX/aLNsLaqeSfbUMehQZhfyFizDh5I
 fImq50ZPMAeEBU7JKEVL2AyKUoPhpACye6A7rZT9xnE9ZQRlS+PsKNtvg
 hq+E0ItHXmePO5j4QwHL7m4bNQ2ht2qLKSPGo7OWAOUgHemHk8pxB9TSI
 KEwtXNUs9+pfZBAjint1/xwUTkvF7auRc+Ry/L4nzc1My6YaStknSoM2U
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eaMZIvjH
Subject: [Intel-wired-lan] [PATCH net v1 3/3] iavf: Fix reset error handling
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
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
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 5f486eaf04da..877d7f1b324f 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2998,12 +2998,15 @@ static void iavf_reset_task(struct work_struct *work)
 
 	return;
 reset_err:
+	if (running) {
+		set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
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
