Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C3D702ECF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 May 2023 15:53:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8444C83FEB;
	Mon, 15 May 2023 13:53:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8444C83FEB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684158782;
	bh=67peHCfkn7XdkPdzcSBZoCY8KF08daiseIyMAkOx7sY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=d6GDwiSOvbNW9e7bRF1d/xKTOb0gnMTRVgFXW4qMmrIUsTSBq2kkrzFTiatn/1pv+
	 JdF+ja/V7YNfP++ndPRUMgrjDl1M7qq96fISOtMukJbE7PpcOnzeM5kC/VaBuVrMt1
	 YF4T3Ox/eX6d9Dp4UUVfNvm0C+aNF9bXlJahNuL+F/o+dCTXcDq6jLl3JGG1FDaPA5
	 CvRZQ9+s4lLnhJHOL97QEDm1HnXccuiHIrUpmxfwwXMJflk8v6jbVI9/ZTeWsgaswo
	 1QJJXbJCuloXSV4nju75H+ehUTIyGAmkZ6wlvQV/Xbst7KAF1J9W1QUbeC8p2Hlsa0
	 6cBMPmmYl40fA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sizGlgkrtYlw; Mon, 15 May 2023 13:53:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 447A283BD8;
	Mon, 15 May 2023 13:53:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 447A283BD8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 27A6D1BF57B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 13:52:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0C96060E6D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 13:52:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C96060E6D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ehx0yjy64PNb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 May 2023 13:52:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E47FC60C01
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E47FC60C01
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 13:52:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="348700073"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="348700073"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 06:52:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="695020874"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="695020874"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga007.jf.intel.com with ESMTP; 15 May 2023 06:52:51 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 15 May 2023 15:52:47 +0200
Message-Id: <20230515135247.142105-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684158773; x=1715694773;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Rs72Vzw8BQHCwDsmHBD36EAtM35B8o20rZOCfmA62LM=;
 b=PXMzd/Lfj/g+kjzGa8w18qjfhmej/ADNtVNrELxc9AEcPnKJCiOAA3FU
 1A6BQORfGuiDrj696zstHRfQD6sTXv85P8c2hk8KlsVUv2v7JoZtCrBSx
 I3e/5hZ+NbrdFqh5sIxnsBHdItjzKxm/llpGgnewZWX/uXoh2wUp5P6SX
 VDx74FPVncBoDb4X7SZsUNPEEj3yMbgRGvLxz0pyeex89f8MLwsCdyQHh
 FY13q5JVqQOIaIb/aNg/CbY44LCUeO58XagGcxwlfSEeJc9+1HfwvHLAH
 dsSWNLcsB2RB54LOE7r/eQVCYYWRBbokMxOMfNoFyvkA1mL7JY7kEQUei
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PXMzd/Lf
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: recycle/free all of the
 fragments from multi-buffer frame
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 simon.horman@corigine.com, bpf@vger.kernel.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice driver caches next_to_clean value at the beginning of
ice_clean_rx_irq() in order to remember the first buffer that has to be
freed/recycled after main Rx processing loop. The end boundary is
indicated by first descriptor of frame that Rx processing loop has ended
its duties. Note that if mentioned loop ended in the middle of gathering
multi-buffer frame, next_to_clean would be pointing to the descriptor in
the middle of the frame BUT freeing/recycling stage will stop at the
first descriptor. This means that next iteration of ice_clean_rx_irq()
will miss the (first_desc, next_to_clean - 1) entries.

 When running various 9K MTU workloads, such splats were observed:

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

To fix this, set cached_ntc to first_desc so that at the end, when
freeing/recycling buffers, descriptors from first to ntc are not missed.

Fixes: 2fba7dc5157b ("ice: Add support for XDP multi-buffer on Rx side")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
v2: set cached_ntc directly to first_desc [Simon]

 drivers/net/ethernet/intel/ice/ice_txrx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 4fcf2d07eb85..730ee2741b7f 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1152,11 +1152,11 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 	unsigned int total_rx_bytes = 0, total_rx_pkts = 0;
 	unsigned int offset = rx_ring->rx_offset;
 	struct xdp_buff *xdp = &rx_ring->xdp;
+	u32 cached_ntc = rx_ring->first_desc;
 	struct ice_tx_ring *xdp_ring = NULL;
 	struct bpf_prog *xdp_prog = NULL;
 	u32 ntc = rx_ring->next_to_clean;
 	u32 cnt = rx_ring->count;
-	u32 cached_ntc = ntc;
 	u32 xdp_xmit = 0;
 	u32 cached_ntu;
 	bool failure;
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
