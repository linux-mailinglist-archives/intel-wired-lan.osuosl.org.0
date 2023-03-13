Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A79E86B7773
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Mar 2023 13:29:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1C05D4061C;
	Mon, 13 Mar 2023 12:29:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1C05D4061C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678710561;
	bh=U834AaNhd3Kryt5uFk7c7IaSdh/AoDs2ywMBFADpdXM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DbrbIJZf7k75Y9XSUgYEgELSlwoF01Tqko+m/nUPskCHYRDdTb1QUIvjYOTh580Fd
	 YyBc5y4sFpdLbEwwe2rfEgw1GXqsMZ8sUMINYITHsQB/1MIrw8lt11nyuOdedPM43E
	 TmUH442uC67weH7iZlRiCnZ5rer70S6dsAOLol4/BZGuXumxKcqjbJ2N4B+qghNgrP
	 5mo+eCfXzCVIoPxkB20awspG0fAFIxvqaLpzMIJ7AjQnA2gBad3XFUKQ1xVwZNC9E2
	 v+8pqFnr3HAMSne00B1sP4GlK2YzZMelNe7B0zlRXcdspBk/6/r2Jex3yshyfKVD1X
	 ry1PdZIUAcKfw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 20YlLi0O35vk; Mon, 13 Mar 2023 12:29:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 122D040472;
	Mon, 13 Mar 2023 12:29:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 122D040472
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 62E801BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 12:29:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 477F94156E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 12:29:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 477F94156E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y4qb92LfIK6x for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Mar 2023 12:29:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B8B4410EC
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3B8B4410EC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 12:29:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="423397870"
X-IronPort-AV: E=Sophos;i="5.98,256,1673942400"; d="scan'208";a="423397870"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 05:29:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="681016843"
X-IronPort-AV: E=Sophos;i="5.98,256,1673942400"; d="scan'208";a="681016843"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga007.fm.intel.com with ESMTP; 13 Mar 2023 05:29:12 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Mar 2023 13:11:10 +0100
Message-Id: <20230313121110.4144813-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678710554; x=1710246554;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HiVau5to04wBWF7fnGd7Xj9iq7rIdN+GP3gyO5HOOVE=;
 b=HF93ulTq9lf23BtYjuk282o9wKDTDoBVRuhR7qT0tlmC8QttgC7B58k/
 HwxyXoZoQHuKViHWOa+DdF2kgGUYMt8HrkAWYrgf0S7vTQVolcxFJ6LDG
 XXz9VRqWlHgHNAx6abhm2fBVYP7AmRjAe6X6i9Wf6UNJJH777dUaAOCHE
 i3tIDfuOIqdnuz+vAKEZU/nibBnLhZg5QJdOT+TKD6coTZ/OJnHm3q38f
 aNCQA/m2F7h8yG1clMQOi2mXZwhBn2WnEHgzBvgFVjl6JO79P1k07fDwe
 MkTX+E58YD6xLkybkIDDcgaZKOa6zO24nKJmPFnYRwrFQyuSjnl/0SkUO
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HF93ulTq
Subject: [Intel-wired-lan] [PATCH net-next v1] ice: clear number of qs when
 rings are free
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

In case rebuild fails not clearing this field can lead to call trace.

[  +0.009792] BUG: kernel NULL pointer dereference, address: 0000000000000000
[  +0.000009] #PF: supervisor read access in kernel mode
[  +0.000006] #PF: error_code(0x0000) - not-present page
[  +0.000005] PGD 0 P4D 0
[  +0.000009] Oops: 0000 [#1] PREEMPT SMP PTI
[  +0.000009] CPU: 45 PID: 77867 Comm: ice-ptp-0000:60 Kdump: loaded Tainted: G S         OE      6.2.0-rc6+ #110
[  +0.000010] Hardware name: Dell Inc. PowerEdge R740/0JMK61, BIOS 2.11.2 004/21/2021
[  +0.000005] RIP: 0010:ice_ptp_update_cached_phctime+0xb0/0x130 [ice]
[  +0.000145] Code: fa 7e 55 48 8b 93 48 01 00 00 48 8b 0c fa 48 85 c9 74 e1 8b 51 68 85 d2 75 da 66 83 b9 86 04 00 00 00 74 d0 31 d2 48 8b 71 20 <48> 8b 34 d6 48 85 f6 74 07 48 89 86 d8 00 00 00 0f b7 b1 86 04 00
[  +0.000008] RSP: 0018:ffffa036cf7c7ea8 EFLAGS: 00010246
[  +0.000008] RAX: 174ab1a8ab400f43 RBX: ffff937cda2c01a0 RCX: ffff937cdca9b028
[  +0.000005] RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
[  +0.000005] RBP: ffffa036cf7c7eb8 R08: 0000000000000000 R09: 0000000000000000
[  +0.000005] R10: 0000000000000080 R11: 0000000000000001 R12: ffff937cdc971f40
[  +0.000006] R13: ffff937cdc971f44 R14: 0000000000000001 R15: ffffffffc13f3210
[  +0.000005] FS:  0000000000000000(0000) GS:ffff93826f980000(0000) knlGS:0000000000000000
[  +0.000006] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  +0.000006] CR2: 0000000000000000 CR3: 00000004b7310002 CR4: 00000000007726e0
[  +0.000006] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[  +0.000004] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[  +0.000005] PKRU: 55555554
[  +0.000004] Call Trace:
[  +0.000004]  <TASK>
[  +0.000007]  ice_ptp_periodic_work+0x2a/0x60 [ice]
[  +0.000126]  kthread_worker_fn+0xa6/0x250
[  +0.000014]  ? __pfx_kthread_worker_fn+0x10/0x10
[  +0.000010]  kthread+0xfc/0x130
[  +0.000009]  ? __pfx_kthread+0x10/0x10
[  +0.000010]  ret_from_fork+0x29/0x50

ice_ptp_update_cached_phctime() is calling ice_for_each_rxq macro, in
case of rebuild fail the rx_ring is NULL and there is NULL pointer
dereference.

Also for future safety it is better to clear the size values for tx and
rx ring when they are cleared.

Reported-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 0f52ea38b6f3..b8317001ad34 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -330,10 +330,12 @@ static void ice_vsi_free_arrays(struct ice_vsi *vsi)
 		vsi->q_vectors = NULL;
 	}
 	if (vsi->tx_rings) {
+		vsi->num_txq = 0;
 		devm_kfree(dev, vsi->tx_rings);
 		vsi->tx_rings = NULL;
 	}
 	if (vsi->rx_rings) {
+		vsi->num_rxq = 0;
 		devm_kfree(dev, vsi->rx_rings);
 		vsi->rx_rings = NULL;
 	}
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
