Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E372E8710F1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Mar 2024 00:10:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8B52B81BC6;
	Mon,  4 Mar 2024 23:10:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P0rMfxVEip9E; Mon,  4 Mar 2024 23:10:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 92AF982278
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709593784;
	bh=ZZdeapm1OjQLPR+aUj4xE6mzrI0fFecIwoQP0B5Xzyo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=UPgsk5B6EfcUBEB79IGryRY6cmni6hMot3TKP6O9WLERkz+kypF8j+r0nYa3Juy9x
	 EPx6RMhLe/R+oWeqWNiL3aOHP7hylpYIkDj5MPFm4qhqZNRbgNoQo8ij+biIRoVXC3
	 OgERnCXHzwLxFNgZLq1LusQP0oBAX+5fAwhbCMlAEc2l4FQ6kc4fkreyPFuXhLCQGC
	 DdAhEK8j81yWJWM98rydSb8j1hYxJKzu9YcRWBaRjmiI77B8bKBcHLZMXSV+wg9Ozp
	 cmd+5Xbe68AM10od5/ZmuBhjKq7MJbUhib4CEEtdSiPm/T/vCgvPa5LXzSS9tccAa3
	 GQIwSs1zImOQw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 92AF982278;
	Mon,  4 Mar 2024 23:09:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8EE621BF2CA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Mar 2024 23:09:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8735F405DF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Mar 2024 23:09:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o-6Aqiw-weI0 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Mar 2024 23:09:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=jesse.brandeburg@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 275B7405DA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 275B7405DA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 275B7405DA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Mar 2024 23:09:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="7060396"
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; 
   d="scan'208";a="7060396"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 15:09:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; d="scan'208";a="13832084"
Received: from jbrandeb-coyote30.jf.intel.com ([10.166.29.19])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 15:09:35 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 Mar 2024 15:08:44 -0800
Message-Id: <20240304230845.14934-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709593778; x=1741129778;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vHvdj3bi3v/qlpgFp9LoXTiqCGeaqT7UoL5A/USE6wM=;
 b=G6YAwdz8Onv1BOqbJgof+b5IuzCxsV5gd09G+kuevBKpwayWJPBWmtuM
 x+qwoBe7uTurGgTzSfBk2K5T0/KRS5UNLWTgORrl3HvxjBKioq2Go1DLs
 6yjaqMMOCqSWjqL91jZ0pj2ZJlbG8LYPQQalusj+CtBCgFWVb8ih8WZAQ
 VWqZp+5zV6LoE6lZPUWDHoqslDzFjSRDiR0FbFy68v2C0JzmiULPEv92a
 lkvdQMJHUMIyZio8L1eZ5Ro8JrJjuvjD8DIjHm4jZPjQZ7pox/LX4yyWu
 8Rj6raIDZ7P6O1jb1abf2EWH/uVMlMEN57uvF7Ckt4wMurAd+DBVMOQ7s
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=G6YAwdz8
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix bug with suspend and
 rebuild
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 netdev@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, Robert Elliott <elliott@hpe.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice driver would previously panic during suspend. This is caused
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
 drivers/net/ethernet/intel/ice/ice_lib.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 097bf8fd6bf0..0f5a92a6b1e6 100644
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

base-commit: 6923134fc6b62d7909169b3ad913ab72ee04233a
-- 
2.39.3

