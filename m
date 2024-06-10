Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DEE19025E5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jun 2024 17:45:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E18E60847;
	Mon, 10 Jun 2024 15:45:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3XTw56DpZJoB; Mon, 10 Jun 2024 15:45:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D80F60850
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718034304;
	bh=kSJHSw+59VGdzQRDgYY59n8hDxhwCVAS0ZOw3VrE8QE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=PbOvASFcx1MDkaBNxbaBV4djpwMRfY+m69w4qcSsRYDP+77OZZCYXoymQA/uGQhsh
	 wDQVbRhv0I7zXCucV4btsRVf/ySKMvlxiB9y4FRNKMYJ9aMnI9nP+0K69+14NPwHW5
	 0r1FpSDbQgxHWnp4PlZqxe7vk+bGhS4i0iHIO9nlbqJefTL0Yk6V00mOKZ98p5FnPX
	 Ed56WYjGBAZsCaSaqhuFQF06+OtrN8rEWfO+bMr8pGK6M52N0AGZdoTQbPvogxf8Zl
	 Y3KghNc6fC8TEEotlUzY/eOsxXekV2I69F6HRW6eiPzC3kdf1fbBjOzjMzjKRxyuRn
	 auMiNYMeXHw9w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D80F60850;
	Mon, 10 Jun 2024 15:45:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0AC931BF3BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 15:45:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E7BFC404A3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 15:45:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t2btMVCAg0SK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jun 2024 15:45:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AB15740493
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB15740493
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AB15740493
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 15:45:01 +0000 (UTC)
X-CSE-ConnectionGUID: OktwhyoxQRa/bh2shZ/ONQ==
X-CSE-MsgGUID: KI5QNRZaQJiVd+ZefAXZXw==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="26119828"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="26119828"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 08:45:00 -0700
X-CSE-ConnectionGUID: YSJi+AyAS96z2cNVxtFXyg==
X-CSE-MsgGUID: 5mxwVqsETaORA2iS9NgDPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="43679757"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa004.fm.intel.com with ESMTP; 10 Jun 2024 08:44:55 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 4A7AE312D4;
 Mon, 10 Jun 2024 16:44:40 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 10 Jun 2024 17:37:12 +0200
Message-ID: <20240610153716.31493-1-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718034301; x=1749570301;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ds9g/JKEqawI/ajkSavWOl6Obm7xM2HBK3q/teNQHeQ=;
 b=VWn/11Ul9DNMz5/EQxd2uxjzzOkShnIR7MSRgf2PgHQqVjw43+kjFJAo
 Krg4WH9mf1z7+va/jQUasj11Mj5RR9xVxJ5mbkmfG2sh718gsj9E+nR2e
 JQepmskEgcK1V0+eE8S0iJCcD447z7nZcJ9ZiYRCtla517qNwoOky1Ay/
 IcQ5nafWFq7uIF+ZIXrz0nVFNyQEv3tWlmlq6ecO5lzqEzo0TgB4yO/+d
 8jLIHOg3kNt1JlRfj14AmrIxNgydQqzhsoYJ7FdLXsm6/8EI6rEsIjzUR
 IeVpfV7FE3zx7Hvs/QJPjOo+QANEDa6CocmE07A3MreAho9AqkQvhbN95
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VWn/11Ul
Subject: [Intel-wired-lan] [PATCH iwl-net 0/3] ice: fix synchronization
 between .ndo_bpf() and reset
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, magnus.karlsson@intel.com,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix the problems that are triggered by tx_timeout and ice_xdp() calls,
including both pool and program operations.

PF reset can be triggered asynchronously, e.g. by tx_timeout. With some
unfortunate timings both reset and .ndo_bpf will try to access and modify
XDP rings at the same time, causing system crash, such as the one below:

[ +1.999878] ice 0000:b1:00.0: Registered XDP mem model MEM_TYPE_XSK_BUFF_POOL on Rx ring 14
[ +2.002992] ice 0000:b1:00.0: Registered XDP mem model MEM_TYPE_XSK_BUFF_POOL on Rx ring 18
[Mar15 18:17] ice 0000:b1:00.0 ens801f0np0: NETDEV WATCHDOG: CPU: 38: transmit queue 14 timed out 80692736 ms
[ +0.000093] ice 0000:b1:00.0 ens801f0np0: tx_timeout: VSI_num: 6, Q 14, NTC: 0x0, HW_HEAD: 0x0, NTU: 0x0, INT: 0x4000001
[ +0.000012] ice 0000:b1:00.0 ens801f0np0: tx_timeout recovery level 1, txqueue 14
[ +0.394718] ice 0000:b1:00.0: PTP reset successful
[ +0.006184] BUG: kernel NULL pointer dereference, address: 0000000000000098
[ +0.000045] #PF: supervisor read access in kernel mode
[ +0.000023] #PF: error_code(0x0000) - not-present page
[ +0.000023] PGD 0 P4D 0
[ +0.000018] Oops: 0000 [#1] PREEMPT SMP NOPTI
[ +0.000023] CPU: 38 PID: 7540 Comm: kworker/38:1 Not tainted 6.8.0-rc7 #1
[ +0.000031] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS SE5C620.86B.02.01.0014.082620210524 08/26/2021
[ +0.000036] Workqueue: ice ice_service_task [ice]
[ +0.000183] RIP: 0010:ice_clean_tx_ring+0xa/0xd0 [ice]
[...]
[ +0.000013] Call Trace:
[ +0.000016] <TASK>
[ +0.000014] ? __die+0x1f/0x70
[ +0.000029] ? page_fault_oops+0x171/0x4f0
[ +0.000029] ? schedule+0x3b/0xd0
[ +0.000027] ? exc_page_fault+0x7b/0x180
[ +0.000022] ? asm_exc_page_fault+0x22/0x30
[ +0.000031] ? ice_clean_tx_ring+0xa/0xd0 [ice]
[ +0.000194] ice_free_tx_ring+0xe/0x60 [ice]
[ +0.000186] ice_destroy_xdp_rings+0x157/0x310 [ice]
[ +0.000151] ice_vsi_decfg+0x53/0xe0 [ice]
[ +0.000180] ice_vsi_rebuild+0x239/0x540 [ice]
[ +0.000186] ice_vsi_rebuild_by_type+0x76/0x180 [ice]
[ +0.000145] ice_rebuild+0x18c/0x840 [ice]
[ +0.000145] ? delay_tsc+0x4a/0xc0
[ +0.000022] ? delay_tsc+0x92/0xc0
[ +0.000020] ice_do_reset+0x140/0x180 [ice]
[ +0.000886] ice_service_task+0x404/0x1030 [ice]
[ +0.000824] process_one_work+0x171/0x340
[ +0.000685] worker_thread+0x277/0x3a0
[ +0.000675] ? preempt_count_add+0x6a/0xa0
[ +0.000677] ? _raw_spin_lock_irqsave+0x23/0x50
[ +0.000679] ? __pfx_worker_thread+0x10/0x10
[ +0.000653] kthread+0xf0/0x120
[ +0.000635] ? __pfx_kthread+0x10/0x10
[ +0.000616] ret_from_fork+0x2d/0x50
[ +0.000612] ? __pfx_kthread+0x10/0x10
[ +0.000604] ret_from_fork_asm+0x1b/0x30
[ +0.000604] </TASK>

Larysa Zaremba (3):
  ice: synchronize XDP setup with reset
  ice: fix locking in ice_xsk_pool_setup()
  ice: make NAPI setting code aware that rtnl-locked request is waiting

 drivers/net/ethernet/intel/ice/ice.h      |  2 ++
 drivers/net/ethernet/intel/ice/ice_lib.c  | 23 ++++++++++---
 drivers/net/ethernet/intel/ice/ice_main.c | 39 ++++++++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_xsk.c  | 12 ++-----
 4 files changed, 57 insertions(+), 19 deletions(-)

-- 
2.43.0

