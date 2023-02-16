Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DB589699453
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Feb 2023 13:28:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6BDDC82013;
	Thu, 16 Feb 2023 12:28:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6BDDC82013
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676550538;
	bh=GfQYR0aaKYMxWpzYHcCHd2sIHkLJYF40orA+3eX/vAs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=nPjuQCuG9UtSrAnSIL/CWh1Zjn3I+0N0qP/8tM5U/I1OebsP35RNwMpz1oTrlHAdP
	 IEy2JpVnf2UDYLiJ0vynnnKMxZe300hNfw0csqoBWd1tW0fx/QDhMe2L7noZduI97q
	 kcgwa81ZMohYtb/CHvOurxzJ7KRyslEjFU2xCL9EBAAwyTZojHUwEj+0SWKHTLH8jO
	 /Bg1CCQpNewX1/wwz+ukLXBzmlI4M7skXASNy4aynIk9Zc/Ho+Of2JlgQGepXyC4Kd
	 Vfmyq+VDwwjuaaaHWEJNHBpqkZgGSW1SHQXR32I1Zoks6IFkXA/BEKv6GmAZBBz7oD
	 eSMSlktR+SN0Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yn9UASr9hWBe; Thu, 16 Feb 2023 12:28:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4A9D981FFE;
	Thu, 16 Feb 2023 12:28:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A9D981FFE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 009DF1BF488
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 12:28:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CE63A81FFE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 12:28:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE63A81FFE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7UTGX6ab40ea for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Feb 2023 12:28:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F057580D96
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F057580D96
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 12:28:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="311334086"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="311334086"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 04:28:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="619972846"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="619972846"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga003.jf.intel.com with ESMTP; 16 Feb 2023 04:28:49 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 16 Feb 2023 13:28:39 +0100
Message-Id: <20230216122839.6878-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676550531; x=1708086531;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gzSkb7Yln6um4SZcuaIYR/kVFncxRVh2mAf2hPXjHuM=;
 b=Y/Dx5YxWqoM34ifLkcl7lIu1ea37V4P1TRxapaL2M/xbAtymOarnz/s1
 B1IXfC/isbLrhY5vrdT4NrKxBHIiv2o8MUakvlTv4ZyYJLhtf6Oukgxro
 bV7PT8Y6j34gn3OcT/4ouyyRRB8mddCD9W0Tfi95NM2FkoMkEcFqi+NL5
 L2iooJjKcBrfU7M/AU/f6uUTyglYT5F7Wbemj+R9oxXkJdnd0Ar/H6F7n
 YI7Ss1/zCdHsR90WURydDFyfpJ6t1vfer7eZaY32GdWc+kDu/jVNR43Wh
 egrBOKKyTI4keHwIi/DCUwoUd3Q97TLysosZY+f8Ro3lL2g9N+AXAWZTY
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y/Dx5YxW
Subject: [Intel-wired-lan] [PATCH intel-net] ice: xsk: disable txq irq
 before flushing hw
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

ice_qp_dis() intends to stop a given queue pair that is a target of xsk
pool attach/detach. One of the steps is to disable interrupts on these
queues. It currently is broken in a way that txq irq is turned off
*after* HW flush which in turn takes no effect.

ice_qp_dis():
-> ice_qvec_dis_irq()
--> disable rxq irq
--> flush hw
-> ice_vsi_stop_tx_ring()
-->disable txq irq

Below splat can be triggered by following steps:
- start xdpsock WITHOUT loading xdp prog
- run xdp_rxq_info with XDP_TX action on this interface
- start traffic
- terminate xdpsock

[  256.312485] BUG: kernel NULL pointer dereference, address: 0000000000000018
[  256.319560] #PF: supervisor read access in kernel mode
[  256.324775] #PF: error_code(0x0000) - not-present page
[  256.329994] PGD 0 P4D 0
[  256.332574] Oops: 0000 [#1] PREEMPT SMP NOPTI
[  256.337006] CPU: 3 PID: 32 Comm: ksoftirqd/3 Tainted: G           OE      6.2.0-rc5+ #51
[  256.345218] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS SE5C620.86B.02.01.0008.031920191559 03/19/2019
[  256.355807] RIP: 0010:ice_clean_rx_irq_zc+0x9c/0x7d0 [ice]
[  256.361423] Code: b7 8f 8a 00 00 00 66 39 ca 0f 84 f1 04 00 00 49 8b 47 40 4c 8b 24 d0 41 0f b7 45 04 66 25 ff 3f 66 89 04 24 0f 84 85 02 00 00 <49> 8b 44 24 18 0f b7 14 24 48 05 00 01 00 00 49 89 04 24 49 89 44
[  256.380463] RSP: 0018:ffffc900088bfd20 EFLAGS: 00010206
[  256.385765] RAX: 000000000000003c RBX: 0000000000000035 RCX: 000000000000067f
[  256.393012] RDX: 0000000000000775 RSI: 0000000000000000 RDI: ffff8881deb3ac80
[  256.400256] RBP: 000000000000003c R08: ffff889847982710 R09: 0000000000010000
[  256.407500] R10: ffffffff82c060c0 R11: 0000000000000004 R12: 0000000000000000
[  256.414746] R13: ffff88811165eea0 R14: ffffc9000d255000 R15: ffff888119b37600
[  256.421990] FS:  0000000000000000(0000) GS:ffff8897e0cc0000(0000) knlGS:0000000000000000
[  256.430207] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  256.436036] CR2: 0000000000000018 CR3: 0000000005c0a006 CR4: 00000000007706e0
[  256.443283] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[  256.450527] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[  256.457770] PKRU: 55555554
[  256.460529] Call Trace:
[  256.463015]  <TASK>
[  256.465157]  ? ice_xmit_zc+0x6e/0x150 [ice]
[  256.469437]  ice_napi_poll+0x46d/0x680 [ice]
[  256.473815]  ? _raw_spin_unlock_irqrestore+0x1b/0x40
[  256.478863]  __napi_poll+0x29/0x160
[  256.482409]  net_rx_action+0x136/0x260
[  256.486222]  __do_softirq+0xe8/0x2e5
[  256.489853]  ? smpboot_thread_fn+0x2c/0x270
[  256.494108]  run_ksoftirqd+0x2a/0x50
[  256.497747]  smpboot_thread_fn+0x1c1/0x270
[  256.501907]  ? __pfx_smpboot_thread_fn+0x10/0x10
[  256.506594]  kthread+0xea/0x120
[  256.509785]  ? __pfx_kthread+0x10/0x10
[  256.513597]  ret_from_fork+0x29/0x50
[  256.517238]  </TASK>

In fact, irqs were not disabled and napi managed to be scheduled and run
while xsk_pool pointer was still valid, but SW ring of xdp_buff pointers
was already freed.

To fix this, call ice_qvec_dis_irq() after ice_vsi_stop_tx_ring(). Also
while at it, remove redundant ice_clean_rx_ring() call - this is handled
in ice_qp_clean_rings().

Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 917c75e530ca..6b8aeaa32d0b 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -184,8 +184,6 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
 	}
 	netif_tx_stop_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
 
-	ice_qvec_dis_irq(vsi, rx_ring, q_vector);
-
 	ice_fill_txq_meta(vsi, tx_ring, &txq_meta);
 	err = ice_vsi_stop_tx_ring(vsi, ICE_NO_RESET, 0, tx_ring, &txq_meta);
 	if (err)
@@ -200,10 +198,11 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
 		if (err)
 			return err;
 	}
+	ice_qvec_dis_irq(vsi, rx_ring, q_vector);
+
 	err = ice_vsi_ctrl_one_rx_ring(vsi, false, q_idx, true);
 	if (err)
 		return err;
-	ice_clean_rx_ring(rx_ring);
 
 	ice_qvec_toggle_napi(vsi, q_vector, false);
 	ice_qp_clean_rings(vsi, q_idx);
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
