Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F090F5B992D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Sep 2022 12:54:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2ED9F41902;
	Thu, 15 Sep 2022 10:54:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2ED9F41902
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663239266;
	bh=PnhXAHZ5QVty+cGaNBNSgST473cmt9LJ2ZC/DIGih/Y=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=OEYFoT8HFAgcUwBTHJB/2nSBSXZ/GrlDYEd3EcOVweRPRIz69BK3Bf1ZTSdmrAl4Y
	 pgEY3CoASo50msmDHKVCh00eW0OPb7s87Sny2lNzSVlQX/VMShdVk1oRcS6WSWmBQb
	 Z7jMt200OVbWHcPzYXnwfwA5dcSJ1sNTlLlV4jujzaqS68Ush2/MY+L7o55x2GGg2d
	 aHUDtA23eePx1m3Q6CcO6PLtKsmt/MB65e8ECiNo2zclh/wQZjz+Z/djcfUTJAjrWQ
	 CNjdRsE+wh5dBGusGteMEFINoqLppkBC5S2avRSjugq4ezErlruCchuFuQCFmviPC4
	 9zUqSV7paWwPA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5qyH0wF6i9PD; Thu, 15 Sep 2022 10:54:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 81F9A41781;
	Thu, 15 Sep 2022 10:54:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 81F9A41781
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CA6441BF59D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Sep 2022 10:54:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7803740133
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Sep 2022 10:54:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7803740133
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id umqbnZxO3Q-C for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Sep 2022 10:54:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4EFAE40157
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4EFAE40157
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Sep 2022 10:54:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="281710530"
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; d="scan'208";a="281710530"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 03:54:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; d="scan'208";a="568384165"
Received: from lajkonik.igk.intel.com ([10.211.8.72])
 by orsmga003.jf.intel.com with ESMTP; 15 Sep 2022 03:54:14 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 15 Sep 2022 12:53:19 +0200
Message-Id: <20220915105319.9843-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.34.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663239256; x=1694775256;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oWg49Ftp6aYX66N2vizafn7iOwN59jgAP1FUB1wyBG4=;
 b=EYuojSUJwGLB5mcSO1yyscE4RcQ560YGYkUMqgS8rSDDi2M9jMjaBDys
 OdJbmzkLGNN0HUi9lwlv//qkZs8+bEXz6wlMbOOp+9vrjkOq171QtXRT6
 JTBvu3y4PApnBySK/DYDENpeSaVSvfnP1RoyiJk6dNAzqw5hVWsW724nZ
 INtyA0WXZ4KmmpyINIE0e0HMgD7QzYzfXeIpLlH5Jhc1QL+ou6WaKNM+r
 DB448+bnUuAihOspACdxJO87z2kgRQiMr+zPgNZ3ycd4bDXYKWK/eosg+
 +7zXYv3lxgMxaDWppaaHHtiZ5ii0cmYMy5+Q05hONJmV/gtjc1ZT1zYJL
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EYuojSUJ
Subject: [Intel-wired-lan] [PATCH net] ice: fix rmmod crash when ts2phc is
 running
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

Reschedule a ptp kworker only if it isn't destroyed.

Previously, ptp kworker could be destroyed in ice_ptp_release function
and then service task function call ice_misc_intr executed on time sync
interrupt would try to schedule a ptp kworker, which results in a
crash:

ice 0000:01:00.0: Removed PTP clock
BUG: kernel NULL pointer dereference, address: 0000000000000004
PGD 0 P4D 0
Oops: 0002 [#1] PREEMPT SMP PTI
CPU: 4 PID: 0 Comm: swapper/4 Kdump: loaded Tainted: G           OE      6.0.0-rc3 #73
Hardware name: Intel Corporation S1200SP/S1200SP, BIOS S1200SP.86B.03.01.0042.013020190050 01/30/2019
RIP: 0010:_raw_spin_lock_irqsave+0x20/0x50
Code: cc cc cc cc cc cc cc cc cc cc 0f 1f 44 00 00 41 54 53 48 89 fb 9c 41 5c fa bf 01 00 00 00 e8 87 ff 64 ff 31 c0 ba 01 00 00 00 <f0> 0f b1 13 75 0b 4c 89 e0 5b 41 5c c3 cc cc cc cc 89 c6 48 89 df
RSP: 0018:ffffa8d3001e0ee8 EFLAGS: 00010046
RAX: 0000000000000000 RBX: 0000000000000004 RCX: 0000000000000000
RDX: 0000000000000001 RSI: ffff9a4cb1fd0d88 RDI: 0000000000000001
RBP: 0000000000000000 R08: 000003ac0f15e9cf R09: 0000000000000000
R10: 0000000000000000 R11: ffffa8d3001e0ff8 R12: 0000000000000046
R13: 0000000000000004 R14: 0000000000000000 R15: 0000000000000000
FS:  0000000000000000(0000) GS:ffff9a4fb3900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000000000004 CR3: 00000003d740a006 CR4: 00000000003706e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <IRQ>
 kthread_queue_work+0x22/0x70
 ice_misc_intr+0x23e/0x2c0 [ice]
 __handle_irq_event_percpu+0x43/0x180
 handle_irq_event+0x34/0x70
 handle_edge_irq+0x9f/0x240
 __common_interrupt+0x66/0x110
 common_interrupt+0xb3/0xd0
 </IRQ>
 <TASK>
 asm_common_interrupt+0x22/0x40
RIP: 0010:cpuidle_enter_state+0xd8/0x400
Code: 49 89 c5 0f 1f 44 00 00 31 ff e8 03 29 90 ff 45 84 ff 74 12 9c 58 f6 c4 02 0f 85 0c 03 00 00 31 ff e8 9c c2 96 ff fb 45 85 f6 <0f> 88 6e 01 00 00 49 63 d6 4c 2b 2c 24 48 8d 04 52 48 8d 04 82 49
RSP: 0018:ffffa8d30010fe80 EFLAGS: 00000206
RAX: ffff9a4fb3900000 RBX: ffff9a4fb393b800 RCX: 000000000000001f
RDX: 0000000000000004 RSI: ffffffffa5f7f754 RDI: ffffffffa5f5c798
RBP: 0000000000000006 R08: 000003ac0f15e6d3 R09: 0000000000000000
R10: 0000000000000400 R11: 000000000002e921 R12: ffffffffa66a1f20
R13: 000003ac0f15e6d3 R14: 0000000000000006 R15: 0000000000000000
 cpuidle_enter+0x29/0x40
 cpuidle_idle_call+0x138/0x1c0
 do_idle+0x79/0xe0
 cpu_startup_entry+0x19/0x20
 start_secondary+0x10d/0x130
 secondary_startup_64_no_verify+0xe5/0xeb
 </TASK>

Fixes: 172db5f91d5f ("ice: add support for auxiliary input/output pins")
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
v2: add target tree prefix
 drivers/net/ethernet/intel/ice/ice_main.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 4320151cb191..661a16fd9c45 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3105,7 +3105,9 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 						     GLTSYN_STAT_EVENT1_M |
 						     GLTSYN_STAT_EVENT2_M);
 		ena_mask &= ~PFINT_OICR_TSYN_EVNT_M;
-		kthread_queue_work(pf->ptp.kworker, &pf->ptp.extts_work);
+		if (pf->ptp.kworker)
+			kthread_queue_work(pf->ptp.kworker,
+					   &pf->ptp.extts_work);
 	}
 
 #define ICE_AUX_CRIT_ERR (PFINT_OICR_PE_CRITERR_M | PFINT_OICR_HMC_ERR_M | PFINT_OICR_PE_PUSH_M)
-- 
2.34.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
