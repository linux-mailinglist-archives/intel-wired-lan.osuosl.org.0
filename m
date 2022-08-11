Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DA4590638
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Aug 2022 20:22:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A9DD940BA4;
	Thu, 11 Aug 2022 18:22:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A9DD940BA4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660242129;
	bh=FIfO1opc2fFxUddutKujtM02krI2k0+sdPSwI31AM5M=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GoIbC5bjbWeuGE62vmRaol3LADECYSW7QqqS3xwpEfeGOHT9lzWZWHcvMWl/0w+br
	 Woj8D9RNRAaJ4idHmaXo4P34UvGGERtJBUIFjbFYLZeCpWH7VDiDKb6HfOimWsdOBJ
	 eeAFXSfwiFrpY1FrfPs1FjJSSC/60ErG1igVOBj0UvpdHdKqw6/An5BQt8f6shcMNG
	 kxUmt00E/9Phj9+ii3UdWTVOSay2lP1ZmK8N17x6hjdgCA0RMi/t8CC1/p9zEs+xZd
	 ShjviePKXNJJC9N5XCCOlV5hXi0OqGQASSjLzKhmq3Zu1EZHKbwQn928obGyhGA1nY
	 ibTNj+TFqIVxA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4tVx83j9YA-a; Thu, 11 Aug 2022 18:22:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6166540593;
	Thu, 11 Aug 2022 18:22:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6166540593
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BA4981BF3EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 18:22:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 95A2440B6A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 18:22:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 95A2440B6A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8uxCNEvPwA_n for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Aug 2022 18:21:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 918E640593
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 918E640593
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 18:21:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="292689575"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="292689575"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 11:21:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="933426149"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmsmga005.fm.intel.com with ESMTP; 11 Aug 2022 11:21:57 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 11 Aug 2022 20:21:48 +0200
Message-Id: <20220811182149.145358-2-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220811182149.145358-1-maciej.fijalkowski@intel.com>
References: <20220811182149.145358-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660242119; x=1691778119;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cfpGDCUDOPTce4bYyXF/o7n0mA+gXYH0puqBKOeQ8II=;
 b=aIZWng6msgKJAjikdBkh3vw/kzYvLPMgt+8INfoahjmBZ954jzTjbog6
 dSbeHPRMLEXE+/2/tuoelfiRrNiMaRL7/ngFuSoTR5SlXPo7sj2Zb1Kkj
 CKoTTE6tIoDMy414Rjr9wQK3I9Z8HNjj/p7FlAQzdnzt4yEECTqQD5Ypb
 Iuog7F1RLzpC48e4U1mug8OTXN4R2nN+QvjwY7X6D4FHwoJVDWAMz9aMx
 nAkweLEmbFgYc5sAtqaK8A6Z2rhwQdtsgTYs1qiTOXUkHsN87OwV4vlqU
 DY9ujUrHx9lrvpBRAq0cBCbX/Mg9J5Lit8KoeA3FsqIg23DG4hBQcLi1G
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aIZWng6m
Subject: [Intel-wired-lan] [PATCH intel-net 1/2] ice: xsk: prohibit usage of
 non-balanced queue id
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
Cc: alasdair.mcwilliam@outlook.com, xdp-newbies@vger.kernel.org,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix the following scenario:
1. ethtool -L $IFACE rx 8 tx 96
2. xdpsock -q 10 -t -z

Above refers to a case where user would like to attach XSK socket in
txonly mode at a queue id that does not have a corresponding Rx queue.
At this moment ice's XSK logic is tightly bound to act on a "queue pair",
e.g. both Tx and Rx queues at a given queue id are disabled/enabled and
both of them will get XSK pool assigned, which is broken for the presented
queue configuration. This results in the splat included at the bottom,
which is basically an OOB access to Rx ring array.

To fix this, allow using the ids only in scope of "combined" queues
reported by ethtool. However, logic should be rewritten to allow such
configurations later on, which would end up as a complete rewrite of the
control path, so let us go with this temporary fix.

[420160.558008] BUG: kernel NULL pointer dereference, address: 0000000000000082
[420160.566359] #PF: supervisor read access in kernel mode
[420160.572657] #PF: error_code(0x0000) - not-present page
[420160.579002] PGD 0 P4D 0
[420160.582756] Oops: 0000 [#1] PREEMPT SMP NOPTI
[420160.588396] CPU: 10 PID: 21232 Comm: xdpsock Tainted: G           OE     5.19.0-rc7+ #10
[420160.597893] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS SE5C620.86B.02.01.0008.031920191559 03/19/2019
[420160.609894] RIP: 0010:ice_xsk_pool_setup+0x44/0x7d0 [ice]
[420160.616968] Code: f3 48 83 ec 40 48 8b 4f 20 48 8b 3f 65 48 8b 04 25 28 00 00 00 48 89 44 24 38 31 c0 48 8d 04 ed 00 00 00 00 48 01 c1 48 8b 11 <0f> b7 92 82 00 00 00 48 85 d2 0f 84 2d 75 00 00 48 8d 72 ff 48 85
[420160.639421] RSP: 0018:ffffc9002d2afd48 EFLAGS: 00010282
[420160.646650] RAX: 0000000000000050 RBX: ffff88811d8bdd00 RCX: ffff888112c14ff8
[420160.655893] RDX: 0000000000000000 RSI: ffff88811d8bdd00 RDI: ffff888109861000
[420160.665166] RBP: 000000000000000a R08: 000000000000000a R09: 0000000000000000
[420160.674493] R10: 000000000000889f R11: 0000000000000000 R12: 000000000000000a
[420160.683833] R13: 000000000000000a R14: 0000000000000000 R15: ffff888117611828
[420160.693211] FS:  00007fa869fc1f80(0000) GS:ffff8897e0880000(0000) knlGS:0000000000000000
[420160.703645] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[420160.711783] CR2: 0000000000000082 CR3: 00000001d076c001 CR4: 00000000007706e0
[420160.721399] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[420160.731045] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[420160.740707] PKRU: 55555554
[420160.745960] Call Trace:
[420160.750962]  <TASK>
[420160.755597]  ? kmalloc_large_node+0x79/0x90
[420160.762703]  ? __kmalloc_node+0x3f5/0x4b0
[420160.769341]  xp_assign_dev+0xfd/0x210
[420160.775661]  ? shmem_file_read_iter+0x29a/0x420
[420160.782896]  xsk_bind+0x152/0x490
[420160.788943]  __sys_bind+0xd0/0x100
[420160.795097]  ? exit_to_user_mode_prepare+0x20/0x120
[420160.802801]  __x64_sys_bind+0x16/0x20
[420160.809298]  do_syscall_64+0x38/0x90
[420160.815741]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
[420160.823731] RIP: 0033:0x7fa86a0dd2fb
[420160.830264] Code: c3 66 0f 1f 44 00 00 48 8b 15 69 8b 0c 00 f7 d8 64 89 02 b8 ff ff ff ff eb bc 0f 1f 44 00 00 f3 0f 1e fa b8 31 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 3d 8b 0c 00 f7 d8 64 89 01 48
[420160.855410] RSP: 002b:00007ffc1146f618 EFLAGS: 00000246 ORIG_RAX: 0000000000000031
[420160.866366] RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007fa86a0dd2fb
[420160.876957] RDX: 0000000000000010 RSI: 00007ffc1146f680 RDI: 0000000000000003
[420160.887604] RBP: 000055d7113a0520 R08: 00007fa868fb8000 R09: 0000000080000000
[420160.898293] R10: 0000000000008001 R11: 0000000000000246 R12: 000055d7113a04e0
[420160.909038] R13: 000055d7113a0320 R14: 000000000000000a R15: 0000000000000000
[420160.919817]  </TASK>
[420160.925659] Modules linked in: ice(OE) af_packet binfmt_misc nls_iso8859_1 ipmi_ssif intel_rapl_msr intel_rapl_common x86_pkg_temp_thermal intel_powerclamp mei_me coretemp ioatdma mei ipmi_si wmi ipmi_msghandler acpi_pad acpi_power_meter ip_tables x_tables autofs4 ixgbe i40e crct10dif_pclmul crc32_pclmul ghash_clmulni_intel aesni_intel crypto_simd cryptd ahci mdio dca libahci lpc_ich [last unloaded: ice]
[420160.977576] CR2: 0000000000000082
[420160.985037] ---[ end trace 0000000000000000 ]---
[420161.097724] RIP: 0010:ice_xsk_pool_setup+0x44/0x7d0 [ice]
[420161.107341] Code: f3 48 83 ec 40 48 8b 4f 20 48 8b 3f 65 48 8b 04 25 28 00 00 00 48 89 44 24 38 31 c0 48 8d 04 ed 00 00 00 00 48 01 c1 48 8b 11 <0f> b7 92 82 00 00 00 48 85 d2 0f 84 2d 75 00 00 48 8d 72 ff 48 85
[420161.134741] RSP: 0018:ffffc9002d2afd48 EFLAGS: 00010282
[420161.144274] RAX: 0000000000000050 RBX: ffff88811d8bdd00 RCX: ffff888112c14ff8
[420161.155690] RDX: 0000000000000000 RSI: ffff88811d8bdd00 RDI: ffff888109861000
[420161.168088] RBP: 000000000000000a R08: 000000000000000a R09: 0000000000000000
[420161.179295] R10: 000000000000889f R11: 0000000000000000 R12: 000000000000000a
[420161.190420] R13: 000000000000000a R14: 0000000000000000 R15: ffff888117611828
[420161.201505] FS:  00007fa869fc1f80(0000) GS:ffff8897e0880000(0000) knlGS:0000000000000000
[420161.213628] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[420161.223413] CR2: 0000000000000082 CR3: 00000001d076c001 CR4: 00000000007706e0
[420161.234653] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[420161.245893] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[420161.257052] PKRU: 55555554

Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 49ba8bfdbf04..45f88e6ec25e 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -329,6 +329,12 @@ int ice_xsk_pool_setup(struct ice_vsi *vsi, struct xsk_buff_pool *pool, u16 qid)
 	bool if_running, pool_present = !!pool;
 	int ret = 0, pool_failure = 0;
 
+	if (qid >= vsi->num_rxq || qid >= vsi->num_txq) {
+		netdev_err(vsi->netdev, "Please use queue id in scope of combined queues count\n");
+		pool_failure = -EINVAL;
+		goto failure;
+	}
+
 	if (!is_power_of_2(vsi->rx_rings[qid]->count) ||
 	    !is_power_of_2(vsi->tx_rings[qid]->count)) {
 		netdev_err(vsi->netdev, "Please align ring sizes to power of 2\n");
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
