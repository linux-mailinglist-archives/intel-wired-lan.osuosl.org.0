Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A268700921
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 15:23:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 99E0A81FDB;
	Fri, 12 May 2023 13:23:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99E0A81FDB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683897828;
	bh=AJfVII6ojpjjZ5MGYoYPBFAAP//lMk4CHY6+06qDCfQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=tdGqJx9uEVo8YoulsJhNfmrkM1IbsFykOwc+kQzyojuOvO3YMvlYTFsN749k10IZx
	 woEJr+sOFTRuuvA8C7fTbdB8EyElqOJB0slPLdomR/22g7wEvdCwKEaHEunqXK+R0i
	 Xk8CgMFGtQTYlYMBwHGer/T3sQ7s6NdPDsNO3AAbBxaJRDe20ORmRYtT5I/icVu5RU
	 Kl2PQREl/W57dddyX4sZCSMBYmN8lEtPDbojhcmqEHgCgnSys+p3Ol8VhyR5Wv0KJZ
	 VtjhzEq0e75dbBMH/L4E7SYL9XNvMXgx9lub5jZlNL1MnLZDYnzRTefsRQEx3d5b1x
	 29V1TTNBdNJ9Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KsN3zIyJXRNW; Fri, 12 May 2023 13:23:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5888581ECE;
	Fri, 12 May 2023 13:23:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5888581ECE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9EFD01BF330
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 13:23:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7F18742A90
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 13:23:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F18742A90
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n7tloK_dDDJc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 13:23:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 62E2042A77
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 62E2042A77
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 13:23:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="378922939"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="378922939"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 06:23:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="677660424"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="677660424"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga006.jf.intel.com with ESMTP; 12 May 2023 06:23:34 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 May 2023 15:23:30 +0200
Message-Id: <20230512132331.125047-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683897817; x=1715433817;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KFgxCTHyDtIPMbPgmh15zr4FZHfdbdTIln5B+NGNrp4=;
 b=m9zrzCXoQUK6FuRCDmZGxqgkeal4LQyK3bhgHlNzRK0N+12fRQBxPIvJ
 QEWC0x82XogxwsT1x+HpaEBduRT5IfXOL2LvgXUinVm8+vKcu7+A2wQoS
 fWY1G9z00XWv/77nxIL0mOWFE3oBA/iwkKdFzqb6Oa631qumXWjOmeyeM
 CdcR8cpb6cZQn9XigqMNLtcGI+h/LCZxkhfP2M0MdT6vO3DNoLjSiUhMa
 gD7TCeOjvdhZoTMdval+h8ohQ6nM7Mgql+aWkhsWtiPkcle1FRHvHRu4h
 xPh1jkwiShkwkBEq8a8QyQuPWB3CPV/jY2WEn1ayEcypXnTL4vNjDo1GL
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m9zrzCXo
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: recycle/free all of the
 fragments from multi-buffer packet
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org, anthony.l.nguyen@intel.com,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice driver caches next_to_clean value at the beginning of
ice_clean_rx_irq() in order to remember the first buffer that has to be
freed/recycled after main Rx processing loop. The end is indicated by
first descriptor of packet that the Rx processing loop has ended. Note
that if mentioned loop ended in the middle of gathering a multi-buffer
packet, next_to_clean would be pointing to the descriptor in the middle
of the packet BUT freeing/recycling stage will stop at the first
descriptor. This means that next iteration of ice_clean_rx_irq() will
miss the (first_desc, next_to_clean - 1) entries.

 When running various 9K MTU workloads, such splats were observed,
mostly related to rx_buf->page being NULL as behavior described in the
paragraph above breaks ICE_RX_DESC_UNUSED() macro which is used when
refilling Rx buffers:

[  540.780716] BUG: kernel NULL pointer dereference, address: 0000000000000000
[  540.787787] #PF: supervisor read access in kernel mode
[  540.793002] #PF: error_code(0x0000) - not-present page
[  540.798218] PGD 0 P4D 0
[  540.800801] Oops: 0000 [#1] PREEMPT SMP NOPTI
[  540.805231] CPU: 18 PID: 3984 Comm: xskxceiver Tainted: G        W          6.3.0-rc7+ #96
[  540.813619] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS SE5C620.86B.02.01.0008.031920191559 03/19/2019
[  540.824209] RIP: 0010:ice_clean_rx_irq+0x2b6/0xf00 [ice]
[  540.829678] Code: 74 24 10 e9 aa 00 00 00 8b 55 78 41 31 57 10 41 09 c4 4d 85 ff 0f 84 83 00 00 00 49 8b 57 08 41 8b 4f 1c 65 8b 35 1a fa 4b 3f <48> 8b 02 48 c1 e8 3a 39 c6 0f 85 a2 00 00 00 f6 42 08 02 0f 85 98
[  540.848717] RSP: 0018:ffffc9000f42fc50 EFLAGS: 00010282
[  540.854029] RAX: 0000000000000004 RBX: 0000000000000002 RCX: 000000000000fffe
[  540.861272] RDX: 0000000000000000 RSI: 0000000000000001 RDI: 00000000ffffffff
[  540.868519] RBP: ffff88984a05ac00 R08: 0000000000000000 R09: dead000000000100
[  540.875760] R10: ffff88983fffcd00 R11: 000000000010f2b8 R12: 0000000000000004
[  540.883008] R13: 0000000000000003 R14: 0000000000000800 R15: ffff889847a10040
[  540.890253] FS:  00007f6ddf7fe640(0000) GS:ffff88afdf800000(0000) knlGS:0000000000000000
[  540.898465] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  540.904299] CR2: 0000000000000000 CR3: 000000010d3da001 CR4: 00000000007706e0
[  540.911542] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[  540.918789] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[  540.926032] PKRU: 55555554
[  540.928790] Call Trace:
[  540.931276]  <TASK>
[  540.933418]  ice_napi_poll+0x4ca/0x6d0 [ice]
[  540.937804]  ? __pfx_ice_napi_poll+0x10/0x10 [ice]
[  540.942716]  napi_busy_loop+0xd7/0x320
[  540.946537]  xsk_recvmsg+0x143/0x170
[  540.950178]  sock_recvmsg+0x99/0xa0
[  540.953729]  __sys_recvfrom+0xa8/0x120
[  540.957543]  ? do_futex+0xbd/0x1d0
[  540.961008]  ? __x64_sys_futex+0x73/0x1d0
[  540.965083]  __x64_sys_recvfrom+0x20/0x30
[  540.969155]  do_syscall_64+0x38/0x90
[  540.972796]  entry_SYSCALL_64_after_hwframe+0x72/0xdc
[  540.977934] RIP: 0033:0x7f6de5f27934

To fix this, compare next_to_clean with first_desc at the beginning of
ice_clean_rx_irq(). In the case they are not the same, set cached_ntc to
first_desc so that at the end, when freeing/recycling buffers,
descriptors from first to ntc are not missed.

Fixes: 2fba7dc5157b ("ice: Add support for XDP multi-buffer on Rx side")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 4fcf2d07eb85..4d1fc047767f 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1162,6 +1162,9 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 	bool failure;
 	u32 first;
 
+	if (ntc != rx_ring->first_desc)
+		cached_ntc = rx_ring->first_desc;
+
 	/* Frame size depend on rx_ring setup when PAGE_SIZE=4K */
 #if (PAGE_SIZE < 8192)
 	xdp->frame_sz = ice_rx_frame_truesize(rx_ring, 0);
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
