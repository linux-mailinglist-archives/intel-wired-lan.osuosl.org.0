Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8948C91519B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jun 2024 17:12:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C7C59406AC;
	Mon, 24 Jun 2024 15:12:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id On7X1p5zAU2a; Mon, 24 Jun 2024 15:12:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3333A405C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719241962;
	bh=Tnq47taocDPRy4tSwKO8P1XxzeCVhU1GkQxrcuWOgLc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=C+STwkrAID2UI2NEks01ul3aGszA6uXr5I6nw01jQMhtfroE+HMO2p3nmmIIJKkZt
	 r1N9GLmcyz0FeBrNaJFdPr2RJqTkvdUrufCftmkzPl6jxOLjMwdSwdXAHajbDxWkXX
	 2oquvTAZdYtKS8NELBO500HdeCjGT16O1U9BFw+ql2TQUhRCFMOZl73NkSzRGHPRym
	 s/H4WkPX7NmWOxbr6X6nH/UYX6kaKh7OQ94G6/34WokirpewH1OiUW9iDf6rjgvnFB
	 YOLghEDVOTTkuCrIRycgTcRuGUU2jIUEqjIlsnaLJQwTO3ZXMzxTIAQoCXB+xfcwj3
	 YRhmzVDa4Hi0w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3333A405C7;
	Mon, 24 Jun 2024 15:12:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 789F21BF476
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 15:12:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6592B606B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 15:12:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Uxs8hIsymPOe for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jun 2024 15:12:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2EF816061D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2EF816061D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2EF816061D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 15:12:38 +0000 (UTC)
X-CSE-ConnectionGUID: MQEHz3t/Sl6Un+/rd9KwIw==
X-CSE-MsgGUID: 4nYhukE6RpuqqLVhAVnBMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="27627074"
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="27627074"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 08:12:38 -0700
X-CSE-ConnectionGUID: u6ucoV8KSWik23QA/WYhaw==
X-CSE-MsgGUID: 7vBZ7LMxSyKbDqOgcfvKZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="66556006"
Received: from kkazimiedevpc.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.102.224])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 08:12:36 -0700
From: Michal Kubiak <michal.kubiak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 24 Jun 2024 17:12:13 +0200
Message-Id: <20240624151213.1755714-1-michal.kubiak@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719241959; x=1750777959;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1mLMLaeZ0PYMCPUk2gK+0icJF037jF4pg8hK765BLZs=;
 b=nGlcO/r4awV0oSg5oVoB1gfKK2LuZ9OAGrMmDN3HpDRyVMoh035t852s
 dO1Y6lKHR7auLRbG6Pgx5H2JaxHH99pJqxLCnofFko7pUyzPWqumCobap
 7+Sr3xtaMQBgCQLI9msX+YzAuJJwRsTm6gC6nRfz2/f2fmAbuWJi/Ft9l
 /9JjZHSHXe1IJX5/XOX8TMK+SvpmzJfsXoQZpfzsECIuwXVs3vfsV8BQO
 sYIbTS/fKQOh+IhkoPfff4Gfi8sS5PPRys9JZi64iffszWaH3EumvUhIs
 5ts0dJTb2kQe//yCBNSbfAaTAu3UXAGnewGQP0KN4o5nHs5PVPxSIYAPS
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nGlcO/r4
Subject: [Intel-wired-lan] [PATCH iwl-net v2] i40e: Fix XDP program
 unloading while removing the driver
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
Cc: wojciech.drewek@intel.com, netdev@vger.kernel.org,
 Michal Kubiak <michal.kubiak@intel.com>, kuba@kernel.org,
 jacob.e.keller@intel.com, maciej.fijalkowski@intel.com,
 george.kuruvinakunnel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The commit 6533e558c650 ("i40e: Fix reset path while removing
the driver") introduced a new PF state "__I40E_IN_REMOVE" to block
modifying the XDP program while the driver is being removed.
Unfortunately, such a change is useful only if the ".ndo_bpf()"
callback was called out of the rmmod context because unloading the
existing XDP program is also a part of driver removing procedure.
In other words, from the rmmod context the driver is expected to
unload the XDP program without reporting any errors. Otherwise,
the kernel warning with callstack is printed out to dmesg.

Example failing scenario:
 1. Load the i40e driver.
 2. Load the XDP program.
 3. Unload the i40e driver (using "rmmod" command).

The example kernel warning log:

[  +0.004646] WARNING: CPU: 94 PID: 10395 at net/core/dev.c:9290 unregister_netdevice_many_notify+0x7a9/0x870
[...]
[  +0.010959] RIP: 0010:unregister_netdevice_many_notify+0x7a9/0x870
[...]
[  +0.002726] Call Trace:
[  +0.002457]  <TASK>
[  +0.002119]  ? __warn+0x80/0x120
[  +0.003245]  ? unregister_netdevice_many_notify+0x7a9/0x870
[  +0.005586]  ? report_bug+0x164/0x190
[  +0.003678]  ? handle_bug+0x3c/0x80
[  +0.003503]  ? exc_invalid_op+0x17/0x70
[  +0.003846]  ? asm_exc_invalid_op+0x1a/0x20
[  +0.004200]  ? unregister_netdevice_many_notify+0x7a9/0x870
[  +0.005579]  ? unregister_netdevice_many_notify+0x3cc/0x870
[  +0.005586]  unregister_netdevice_queue+0xf7/0x140
[  +0.004806]  unregister_netdev+0x1c/0x30
[  +0.003933]  i40e_vsi_release+0x87/0x2f0 [i40e]
[  +0.004604]  i40e_remove+0x1a1/0x420 [i40e]
[  +0.004220]  pci_device_remove+0x3f/0xb0
[  +0.003943]  device_release_driver_internal+0x19f/0x200
[  +0.005243]  driver_detach+0x48/0x90
[  +0.003586]  bus_remove_driver+0x6d/0xf0
[  +0.003939]  pci_unregister_driver+0x2e/0xb0
[  +0.004278]  i40e_exit_module+0x10/0x5f0 [i40e]
[  +0.004570]  __do_sys_delete_module.isra.0+0x197/0x310
[  +0.005153]  do_syscall_64+0x85/0x170
[  +0.003684]  ? syscall_exit_to_user_mode+0x69/0x220
[  +0.004886]  ? do_syscall_64+0x95/0x170
[  +0.003851]  ? exc_page_fault+0x7e/0x180
[  +0.003932]  entry_SYSCALL_64_after_hwframe+0x71/0x79
[  +0.005064] RIP: 0033:0x7f59dc9347cb
[  +0.003648] Code: 73 01 c3 48 8b 0d 65 16 0c 00 f7 d8 64 89 01 48 83
c8 ff c3 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa b8 b0 00 00 00 0f
05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 35 16 0c 00 f7 d8 64 89 01 48
[  +0.018753] RSP: 002b:00007ffffac99048 EFLAGS: 00000206 ORIG_RAX: 00000000000000b0
[  +0.007577] RAX: ffffffffffffffda RBX: 0000559b9bb2f6e0 RCX: 00007f59dc9347cb
[  +0.007140] RDX: 0000000000000000 RSI: 0000000000000800 RDI: 0000559b9bb2f748
[  +0.007146] RBP: 00007ffffac99070 R08: 1999999999999999 R09: 0000000000000000
[  +0.007133] R10: 00007f59dc9a5ac0 R11: 0000000000000206 R12: 0000000000000000
[  +0.007141] R13: 00007ffffac992d8 R14: 0000559b9bb2f6e0 R15: 0000000000000000
[  +0.007151]  </TASK>
[  +0.002204] ---[ end trace 0000000000000000 ]---

Fix this by checking if the XDP program is being loaded or unloaded.
Then, block only loading a new program while "__I40E_IN_REMOVE" is set.
Also, move testing "__I40E_IN_REMOVE" flag to the beginning of XDP_SETUP
callback to avoid unnecessary operations and checks.

Fixes: 6533e558c650 ("i40e: Fix reset path while removing the driver")
Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>

---

v1 -> v2 changes:
 - simplify the fix according to Kuba's suggestions, i.e. remove
   checking 'NETREG_UNREGISTERING' flag directly from ndo_bpf
   and remove a separate handling for 'unregister' context.
 - update the commit message accordingly
 - add an example of the kernel warning for the issue being fixed.

See:
v1: <https://lore.kernel.org/netdev/20240528-net-2024-05-28-intel-net-fixes-v1-4-dc8593d2bbc6@intel.com/>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 284c3fad5a6e..310513d9321b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -13293,6 +13293,10 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
 	bool need_reset;
 	int i;
 
+	/* VSI shall be deleted in a moment, block loading new programs */
+	if (prog && test_bit(__I40E_IN_REMOVE, pf->state))
+		return -EINVAL;
+
 	/* Don't allow frames that span over multiple buffers */
 	if (vsi->netdev->mtu > frame_size - I40E_PACKET_HDR_PAD) {
 		NL_SET_ERR_MSG_MOD(extack, "MTU too large for linear frames and XDP prog does not support frags");
@@ -13301,14 +13305,9 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
 
 	/* When turning XDP on->off/off->on we reset and rebuild the rings. */
 	need_reset = (i40e_enabled_xdp_vsi(vsi) != !!prog);
-
 	if (need_reset)
 		i40e_prep_for_reset(pf);
 
-	/* VSI shall be deleted in a moment, just return EINVAL */
-	if (test_bit(__I40E_IN_REMOVE, pf->state))
-		return -EINVAL;
-
 	old_prog = xchg(&vsi->xdp_prog, prog);
 
 	if (need_reset) {
-- 
2.33.1

