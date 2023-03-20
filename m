Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2861C6C1107
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Mar 2023 12:41:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9566415A4;
	Mon, 20 Mar 2023 11:41:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9566415A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679312506;
	bh=X/Qu+iRnOILgNieJFwMA8GlafHeqLrII+bDzvaKkOGE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=SCd5MCAXt9fXrQVIqG3Vdo1oAjqn1a8qdl9uqVGCIQ0FIlFpZrVGVwgEgJ62jYOJM
	 WLMIHlPHNBRVghI91JxbYe8gjsCu4LaHjVbMM6IVPFDFBhqDkfkTyZ8n94MIi0pSJy
	 G3+dPoJOIx38J0b3hpRzN3bj5kMCIaugWgURwoUQGsJkXgFQR3i7BTW53rBdHqVbUu
	 lREOAkJsAOg/+i0tOMU3RfjXc8c5OFYqL8NbGm82FQ3jugbppA6/atOmrvmwb6WP5U
	 vhnpFbV+WfavJxt9NYZOw/kZ6mOz287No0Ev4LitlVcJpZe0wZwLbCn3gS4Y8CP3fh
	 9Hmu87l9ySduw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zbzTSYLEtwUj; Mon, 20 Mar 2023 11:41:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C9C341570;
	Mon, 20 Mar 2023 11:41:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C9C341570
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2540A1BF3FC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Mar 2023 11:41:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F1F9040364
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Mar 2023 11:41:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F1F9040364
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zoy6w0dZDNEq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Mar 2023 11:41:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 39F8F4016F
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 39F8F4016F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Mar 2023 11:41:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="338663930"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="338663930"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 04:41:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="770169168"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="770169168"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Mar 2023 04:41:36 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 20 Mar 2023 12:23:47 +0100
Message-Id: <20230320112347.117363-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679312498; x=1710848498;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DebyBgUfT2FAUA4khxwAu+nktCCVYzyTLlBJzKOToIw=;
 b=YL1JSDdAIZCpVyKTg3z/1wMP3iP8tYwzhBSfA7Z+c9ra0fMZEgtb1han
 vglmUuxPT6W+ayJd0s2fFC1SJMkvHWlT/9SIu+zfjKxEdRIUu4nvEs7q/
 nFRpDLYLprSO9Qu62BAIgslFihYxPOeM7HBnG6Q4XHQZgcOq81N/AeBTU
 hgngTFOJHRfe9s8BT3uV5B4rB7YRVWmnCQGI8q0zam+z72CyrAc9TrjfN
 RIN7VjcYG8AY7pFfYVOBjrjNfThHwHQ4iOoAr/VojoXFKUxHjrmH4YdEZ
 UEr0FUX9GJWeO55hH+g4ib3Agh8bn/+lLZU7BymXIscvWfdfSfNOhhZbt
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YL1JSDdA
Subject: [Intel-wired-lan] [PATCH net v2] ice: clear number of qs when rings
 are free
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
Cc: netdev@vger.kernel.org
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

Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
Reported-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
v1 --> v2:
 * change subject to net and add fixes tag
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
