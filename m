Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BE5872ACA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Mar 2024 00:03:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E323A40517;
	Tue,  5 Mar 2024 23:02:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XXHNVBDBwQ8k; Tue,  5 Mar 2024 23:02:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C43740534
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709679777;
	bh=EZ3xS8yzPXJq3TP1sItNQNU0YvjRBVq2zPDgaLw/098=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=WTCM1Uz7BNbaBdJ/WzpZQQF3OdawyDl6VrYE9pLUcWaRCy+0Wm9dgaUOqkoWFID61
	 R+oWOUM/lrSYz6k6x9DOPva1trCEp5fK5UyTIf+6koN296XGL3tmQMGSrf60ylTc0y
	 EvcIVPpj38Fo9el8cEkR/XavWhkZAkmqAqFuYhnSWlu06COu4ltsAeLqdhKzSk+vzg
	 5pj2mZsCx3xZlLcQYMXkr69sLps6juoveNYMwFg8X20ga6XDpQdEV36cRT5riD0NfG
	 Wr/COgBqXqWvXBqqNB1n+OwRgII6MC4JTKOXZFCWZLz11RZCgVgDe5lr57YySllUvw
	 U02WFS5BHhqtw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7C43740534;
	Tue,  5 Mar 2024 23:02:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C02791BF3E0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 23:02:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AB74D81FE3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 23:02:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id add7TzCNrj0J for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Mar 2024 23:02:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jesse.brandeburg@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A09FC81FB5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A09FC81FB5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A09FC81FB5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 23:02:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="29687992"
X-IronPort-AV: E=Sophos;i="6.06,206,1705392000"; d="scan'208";a="29687992"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 15:02:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,206,1705392000"; 
   d="scan'208";a="9960246"
Received: from jbrandeb-coyote30.jf.intel.com ([10.166.29.19])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 15:02:49 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: pmenzel@molgen.mpg.de,
	intel-wired-lan@lists.osuosl.org
Date: Tue,  5 Mar 2024 15:02:03 -0800
Message-Id: <20240305230204.448724-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709679773; x=1741215773;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7rt5Z1sbj5V2dwJpCf4OMfleJxTzgb0wuWekTd0Dw4w=;
 b=Jqz3SFhWHc1COAx85v8OUmsN7g9e/m3L7dobiUMiQsOXZPbvYcaEOhWW
 SpHhu8jECLoQHBWDAhR4/YoUsc5HumU9AH82HOC/497BDA9ig1KBwyXZ0
 36d929k9iWfE86a6Wtq4xqIozYJv4+ObUAkQMJ+lWeMkvNmBYLxGIMQz7
 I3r4AvmxWS0prn7+OhPdvjcbptpNYWjEKUCK2+DWaIQJGUUGO+Unf+DHN
 rRVk/Na8fKuL9c0cyVaX/PPYDkmyyzQgZ5mnsQ7aJJYA2Qlv/Np/Ox19u
 5yrQ0YC9HulWWETLaALpfz7b/09f4LeRToo6cnqqjcSPnpBBlMMz7HZJ0
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Jqz3SFhW
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix memory corruption bug
 with suspend and rebuild
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
Cc: netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 horms@kernel.org, Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, Robert Elliott <elliott@hpe.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice driver would previously panic after suspend. This is caused
from the driver *only* calling the ice_vsi_free_q_vectors() function by
itself, when it is suspending. Since commit b3e7b3a6ee92 ("ice: prevent
NULL pointer deref during reload") the driver has zeroed out
num_q_vectors, and only restored it in ice_vsi_cfg_def().

This further causes the ice_rebuild() function to allocate a zero length
buffer, after which num_q_vectors is updated, and then the new value of
num_q_vectors is used to index into the zero length buffer, which
corrupts memory.

The fix entails making sure all the code referencing num_q_vectors only
does so after it has been reset via ice_vsi_cfg_def().

I didn't perform a full bisect, but I was able to test against 6.1.77
kernel and that ice driver works fine for suspend/resume with no panic,
so sometime since then, this problem was introduced.

Also clean up an un-needed init of a local variable in the function
being modified.

PANIC from 6.8.0-rc1:

[1026674.915596] PM: suspend exit
[1026675.664697] ice 0000:17:00.1: PTP reset successful
[1026675.664707] ice 0000:17:00.1: 2755 msecs passed between update to cached PHC time
[1026675.667660] ice 0000:b1:00.0: PTP reset successful
[1026675.675944] ice 0000:b1:00.0: 2832 msecs passed between update to cached PHC time
[1026677.137733] ixgbe 0000:31:00.0 ens787: NIC Link is Up 1 Gbps, Flow Control: None
[1026677.190201] BUG: kernel NULL pointer dereference, address: 0000000000000010
[1026677.192753] ice 0000:17:00.0: PTP reset successful
[1026677.192764] ice 0000:17:00.0: 4548 msecs passed between update to cached PHC time
[1026677.197928] #PF: supervisor read access in kernel mode
[1026677.197933] #PF: error_code(0x0000) - not-present page
[1026677.197937] PGD 1557a7067 P4D 0
[1026677.212133] ice 0000:b1:00.1: PTP reset successful
[1026677.212143] ice 0000:b1:00.1: 4344 msecs passed between update to cached PHC time
[1026677.212575]
[1026677.243142] Oops: 0000 [#1] PREEMPT SMP NOPTI
[1026677.247918] CPU: 23 PID: 42790 Comm: kworker/23:0 Kdump: loaded Tainted: G        W          6.8.0-rc1+ #1
[1026677.257989] Hardware name: Intel Corporation M50CYP2SBSTD/M50CYP2SBSTD, BIOS SE5C620.86B.01.01.0005.2202160810 02/16/2022
[1026677.269367] Workqueue: ice ice_service_task [ice]
[1026677.274592] RIP: 0010:ice_vsi_rebuild_set_coalesce+0x130/0x1e0 [ice]
[1026677.281421] Code: 0f 84 3a ff ff ff 41 0f b7 74 ec 02 66 89 b0 22 02 00 00 81 e6 ff 1f 00 00 e8 ec fd ff ff e9 35 ff ff ff 48 8b 43 30 49 63 ed <41> 0f b7 34 24 41 83 c5 01 48 8b 3c e8 66 89 b7 aa 02 00 00 81 e6
[1026677.300877] RSP: 0018:ff3be62a6399bcc0 EFLAGS: 00010202
[1026677.306556] RAX: ff28691e28980828 RBX: ff28691e41099828 RCX: 0000000000188000
[1026677.314148] RDX: 0000000000000000 RSI: 0000000000000010 RDI: ff28691e41099828
[1026677.321730] RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
[1026677.329311] R10: 0000000000000007 R11: ffffffffffffffc0 R12: 0000000000000010
[1026677.336896] R13: 0000000000000000 R14: 0000000000000000 R15: ff28691e0eaa81a0
[1026677.344472] FS:  0000000000000000(0000) GS:ff28693cbffc0000(0000) knlGS:0000000000000000
[1026677.353000] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[1026677.359195] CR2: 0000000000000010 CR3: 0000000128df4001 CR4: 0000000000771ef0
[1026677.366779] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[1026677.374369] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[1026677.381952] PKRU: 55555554
[1026677.385116] Call Trace:
[1026677.388023]  <TASK>
[1026677.390589]  ? __die+0x20/0x70
[1026677.394105]  ? page_fault_oops+0x82/0x160
[1026677.398576]  ? do_user_addr_fault+0x65/0x6a0
[1026677.403307]  ? exc_page_fault+0x6a/0x150
[1026677.407694]  ? asm_exc_page_fault+0x22/0x30
[1026677.412349]  ? ice_vsi_rebuild_set_coalesce+0x130/0x1e0 [ice]
[1026677.418614]  ice_vsi_rebuild+0x34b/0x3c0 [ice]
[1026677.423583]  ice_vsi_rebuild_by_type+0x76/0x180 [ice]
[1026677.429147]  ice_rebuild+0x18b/0x520 [ice]
[1026677.433746]  ? delay_tsc+0x8f/0xc0
[1026677.437630]  ice_do_reset+0xa3/0x190 [ice]
[1026677.442231]  ice_service_task+0x26/0x440 [ice]
[1026677.447180]  process_one_work+0x174/0x340
[1026677.451669]  worker_thread+0x27e/0x390
[1026677.455890]  ? __pfx_worker_thread+0x10/0x10
[1026677.460627]  kthread+0xee/0x120
[1026677.464235]  ? __pfx_kthread+0x10/0x10
[1026677.468445]  ret_from_fork+0x2d/0x50
[1026677.472476]  ? __pfx_kthread+0x10/0x10
[1026677.476671]  ret_from_fork_asm+0x1b/0x30
[1026677.481050]  </TASK>

Fixes: b3e7b3a6ee92 ("ice: prevent NULL pointer deref during reload")
Reported-by: Robert Elliott <elliott@hpe.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
v2: fix uninitialized coalesce pointer on the exit path by moving the
kfree to the later goto (simon), reword commit message (paul)
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index fc23dbe302b4..cfc20684f25a 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3238,7 +3238,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
 {
 	struct ice_vsi_cfg_params params = {};
 	struct ice_coalesce_stored *coalesce;
-	int prev_num_q_vectors = 0;
+	int prev_num_q_vectors;
 	struct ice_pf *pf;
 	int ret;
 
@@ -3252,13 +3252,6 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
 	if (WARN_ON(vsi->type == ICE_VSI_VF && !vsi->vf))
 		return -EINVAL;
 
-	coalesce = kcalloc(vsi->num_q_vectors,
-			   sizeof(struct ice_coalesce_stored), GFP_KERNEL);
-	if (!coalesce)
-		return -ENOMEM;
-
-	prev_num_q_vectors = ice_vsi_rebuild_get_coalesce(vsi, coalesce);
-
 	ret = ice_vsi_realloc_stat_arrays(vsi);
 	if (ret)
 		goto err_vsi_cfg;
@@ -3268,6 +3261,13 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
 	if (ret)
 		goto err_vsi_cfg;
 
+	coalesce = kcalloc(vsi->num_q_vectors,
+			   sizeof(struct ice_coalesce_stored), GFP_KERNEL);
+	if (!coalesce)
+		return -ENOMEM;
+
+	prev_num_q_vectors = ice_vsi_rebuild_get_coalesce(vsi, coalesce);
+
 	ret = ice_vsi_cfg_tc_lan(pf, vsi);
 	if (ret) {
 		if (vsi_flags & ICE_VSI_FLAG_INIT) {
@@ -3286,8 +3286,8 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
 
 err_vsi_cfg_tc_lan:
 	ice_vsi_decfg(vsi);
-err_vsi_cfg:
 	kfree(coalesce);
+err_vsi_cfg:
 	return ret;
 }
 

base-commit: 4daa873133d3db4e17f4ccd9fe1102e4fbab7700
prerequisite-patch-id: 3108bcb752993e56fb77c40c95ff495617203de7
prerequisite-patch-id: e8d245c2c933aa302c2e1861e68d829b17bd1de1
prerequisite-patch-id: 8d0c4c9f22c20ccc76d0d7c075b13656aebc6876
prerequisite-patch-id: 39d1f161a2c9e46d8ee8b0a216bbe8f6587b8f0c
prerequisite-patch-id: 8dc559f5035db8e5eefc088168d5ff13ffaed849
prerequisite-patch-id: cf2908b038fe6db14d227dd1aa5b27d71316c7a8
prerequisite-patch-id: 54b81b89b6de45a5a93de4ab3f584865d61ecc64
prerequisite-patch-id: 2e25791729def6f00f8f2faee1e2e49926ab7a9c
prerequisite-patch-id: d6d5312b053b713666632facf0807540df5ea799
prerequisite-patch-id: f92dc6a5ff69a78568e3c272819a907ff2fa083b
prerequisite-patch-id: 6310ccdf59f5a447add2b6d0529b16b3f8bcdbc9
prerequisite-patch-id: 77af9426267ceb7f6a1ac04e7cb21868bf1f5460
prerequisite-patch-id: cd48ee2a7f6eb98827f3362d0c0e4f233e5b2e94
-- 
2.39.3

