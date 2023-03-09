Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 527D26B2FC4
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Mar 2023 22:45:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E1ED08224D;
	Thu,  9 Mar 2023 21:45:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E1ED08224D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678398319;
	bh=FXphv/e1bzlrpPjoOp6CiTqI0pUdW5qjMZ4uMMFWsos=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=iFLLJLK+xA5gZl6zOwyneSx5hkLg0dSnL8tcd3JA3C8g1iPwSsIiEh6n1b8LYpV83
	 +1w5aO1v0sH5Hy4xWL7Yw/u7xlj8tGNA/kJ4iPH4diPRFaXUzpD0QM6gnSk+xLgySD
	 o9bMEahPgW/8L05j1cCNir5KVMXqWJKPYB6JTOKkkxGUDaKPuFhN+Qyz2GjgpDF2DZ
	 tiPktauFYi0El4VvasK0fCvpQg2as7SG5ym/Ugd08/2dSCm5JywSNBQimVpuImXa/f
	 1WsGbv+Qa+tg36ANX7oa5KzhUr2hU70iYWqeQ9hZ6oIwIZiYgSE1yhloWy/LiXrcZ+
	 CwnztcXire49A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XBxkZXeA2Jl1; Thu,  9 Mar 2023 21:45:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AF724820DF;
	Thu,  9 Mar 2023 21:45:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF724820DF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1D3051BF366
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 21:45:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E97D2820DF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 21:45:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E97D2820DF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ygNQRsK0-D34 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Mar 2023 21:45:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0DD25811FF
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0DD25811FF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 21:45:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="336595095"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="336595095"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 13:45:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="766590807"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="766590807"
Received: from anguy11-upstream.jf.intel.com ([10.166.9.133])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Mar 2023 13:40:14 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	piotr.raczynski@intel.com
Date: Thu,  9 Mar 2023 13:38:56 -0800
Message-Id: <20230309213856.1198788-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678398313; x=1709934313;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+RnKf27fw2e319PSqXX8OG8yhiRvUKEphTsZ5BfrKmI=;
 b=oFxcUMutJLB2LbmURlfEJWdSmkCjZF2CvDUirxYLHoxuBdN65DuQlPcY
 8HJzkVIgALk6vo+MsQblgFGg58dhhQQOUAhUZEXL3fH6QpCxvaSf4B3Jm
 lw3vz1NrNIgXE+wub/cjpNUnIo0a1SmZhigWB5PPZSxVxFD2IPaQUeqi0
 ZaNkTqZLXKwz2z/tJlm3tERjwLSRqf04tB+gFReVaUSf62mFP/8BI3l+Z
 PcL4seTHnRb5hMk4a0VlPYrF3QLBgI34Doff3z2zXqAu5XaHvyaGj9tuB
 FlaayhzbruoD8kSmkF/eJpJoZUqGlgzLOn3R5ueZ+Nq+ayXDQUYK0v5yX
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oFxcUMut
Subject: [Intel-wired-lan] [net-queue v1 1/1] ice: fix rx buffers handling
 for flow director packets
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

From: Piotr Raczynski <piotr.raczynski@intel.com>

Adding flow director filters stopped working correctly after
commit 2fba7dc5157b ("ice: Add support for XDP multi-buffer
on Rx side"). As a result, only first flow director filter
can be added, adding next filter leads to NULL pointer
dereference attached below.

Rx buffer handling and reallocation logic has been optimized,
however flow director specific traffic was not accounted for.
As a result driver handled those packets incorrectly since new
logic was based on ice_rx_ring::first_desc which was not set
in this case.

Fix this by setting struct ice_rx_ring::first_desc to next_to_clean
for flow director received packets.

[  438.544867] BUG: kernel NULL pointer dereference, address: 0000000000000000
[  438.551840] #PF: supervisor read access in kernel mode
[  438.556978] #PF: error_code(0x0000) - not-present page
[  438.562115] PGD 7c953b2067 P4D 0
[  438.565436] Oops: 0000 [#1] PREEMPT SMP NOPTI
[  438.569794] CPU: 0 PID: 0 Comm: swapper/0 Kdump: loaded Not tainted 6.2.0-net-bug #1
[  438.577531] Hardware name: Intel Corporation M50CYP2SBSTD/M50CYP2SBSTD, BIOS SE5C620.86B.01.01.0005.2202160810 02/16/2022
[  438.588470] RIP: 0010:ice_clean_rx_irq+0x2b9/0xf20 [ice]
[  438.593860] Code: 45 89 f7 e9 ac 00 00 00 8b 4d 78 41 31 4e 10 41 09 d5 4d 85 f6 0f 84 82 00 00 00 49 8b 4e 08 41 8b 76
1c 65 8b 3d 47 36 4a 3f <48> 8b 11 48 c1 ea 36 39 d7 0f 85 a6 00 00 00 f6 41 08 02 0f 85 9c
[  438.612605] RSP: 0018:ff8c732640003ec8 EFLAGS: 00010082
[  438.617831] RAX: 0000000000000800 RBX: 00000000000007ff RCX: 0000000000000000
[  438.624957] RDX: 0000000000000800 RSI: 0000000000000000 RDI: 0000000000000000
[  438.632089] RBP: ff4ed275a2158200 R08: 00000000ffffffff R09: 0000000000000020
[  438.639222] R10: 0000000000000000 R11: 0000000000000020 R12: 0000000000001000
[  438.646356] R13: 0000000000000000 R14: ff4ed275d0daffe0 R15: 0000000000000000
[  438.653485] FS:  0000000000000000(0000) GS:ff4ed2738fa00000(0000) knlGS:0000000000000000
[  438.661563] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  438.667310] CR2: 0000000000000000 CR3: 0000007c9f0d6006 CR4: 0000000000771ef0
[  438.674444] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[  438.681573] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[  438.688697] PKRU: 55555554
[  438.691404] Call Trace:
[  438.693857]  <IRQ>
[  438.695877]  ? profile_tick+0x17/0x80
[  438.699542]  ice_msix_clean_ctrl_vsi+0x24/0x50 [ice]
[  438.702571] ice 0000:b1:00.0: VF 1: ctrl_vsi irq timeout
[  438.704542]  __handle_irq_event_percpu+0x43/0x1a0
[  438.704549]  handle_irq_event+0x34/0x70
[  438.704554]  handle_edge_irq+0x9f/0x240
[  438.709901] iavf 0000:b1:01.1: Failed to add Flow Director filter with status: 6
[  438.714571]  __common_interrupt+0x63/0x100
[  438.714580]  common_interrupt+0xb4/0xd0
[  438.718424] iavf 0000:b1:01.1: Rule ID: 127 dst_ip: 0.0.0.0 src_ip 0.0.0.0 UDP: dst_port 4 src_port 0
[  438.722255]  </IRQ>
[  438.722257]  <TASK>
[  438.722257]  asm_common_interrupt+0x22/0x40
[  438.722262] RIP: 0010:cpuidle_enter_state+0xc8/0x430
[  438.722267] Code: 6e e9 25 ff e8 f9 ef ff ff 8b 53 04 49 89 c5 0f 1f 44 00 00 31 ff e8 d7 f1 24 ff 45
84 ff 0f 85 57 02 00 00 fb 0f 1f 44 00 00 <45> 85 f6 0f 88 85 01 00 00 49 63 d6 48 8d 04 52 48 8d 04 82 49 8d
[  438.722269] RSP: 0018:ffffffff86003e50 EFLAGS: 00000246
[  438.784108] RAX: ff4ed2738fa00000 RBX: ffbe72a64fc01020 RCX: 0000000000000000
[  438.791234] RDX: 0000000000000000 RSI: ffffffff858d84de RDI: ffffffff85893641
[  438.798365] RBP: 0000000000000002 R08: 0000000000000002 R09: 000000003158af9d
[  438.805490] R10: 0000000000000008 R11: 0000000000000354 R12: ffffffff862365a0
[  438.812622] R13: 000000661b472a87 R14: 0000000000000002 R15: 0000000000000000
[  438.819757]  cpuidle_enter+0x29/0x40
[  438.823333]  do_idle+0x1b6/0x230
[  438.826566]  cpu_startup_entry+0x19/0x20
[  438.830492]  rest_init+0xcb/0xd0
[  438.833717]  arch_call_rest_init+0xa/0x30
[  438.837731]  start_kernel+0x776/0xb70
[  438.841396]  secondary_startup_64_no_verify+0xe5/0xeb
[  438.846449]  </TASK>

Fixes: 2fba7dc5157b ("ice: Add support for XDP multi-buffer on Rx side")
Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Reviewed-by: Simon Horman <simon.horman@corigine.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index dfd22862e926..b61dd9f01540 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1210,6 +1210,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 				ice_vc_fdir_irq_handler(ctrl_vsi, rx_desc);
 			if (++ntc == cnt)
 				ntc = 0;
+			rx_ring->first_desc = ntc;
 			continue;
 		}
 
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
