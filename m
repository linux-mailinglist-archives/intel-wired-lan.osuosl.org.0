Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C554C89CEB0
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Apr 2024 01:03:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2EC59607E1;
	Mon,  8 Apr 2024 23:03:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EHXflO-d6jij; Mon,  8 Apr 2024 23:03:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 46B5C606DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712617429;
	bh=4sSllFNCZ7h1x8KCTtXIkcPEMaj8RJV4GnS25Xy6WCs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=lzIuVRmYAYehtWE08Oq+UL9Ss2sQ/IDl981fDUGr5mlKKswBXAddddz5mgShIKY/j
	 jTPbKodphZf5P/CONs1+w57m9Bpekl26TuXoicoN/CscFe/iPX8yDdZHXnjp7LISUH
	 qjBnTLlzlPRXdmFbaUiWEN2XplVhZwlAUuXWJ2W7A6cdV7bf14d2mmC1Ek4CVAWAyo
	 GmGSJXMu0tY69YsNzajOldfydFMb9wszHugpFVkL6RmoiI8iE6uLdml7WCVReL8EhD
	 Qa0Way6X5+nNfMxlIx5jzQ3g08llj+kAvvgEJ9AUh0DC9VBoKiOqGoxWVXP9nbhEJj
	 yUxL04u8Abrmw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 46B5C606DE;
	Mon,  8 Apr 2024 23:03:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 98E571BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 23:03:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8411160606
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 23:03:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HVtht4yM16FN for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Apr 2024 23:03:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7631A60600
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7631A60600
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7631A60600
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 23:03:45 +0000 (UTC)
X-CSE-ConnectionGUID: VVFdvrLAQ6aSPwKKS44v1g==
X-CSE-MsgGUID: qMY+ujJGTL+tQAxxPRNOnQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="8020202"
X-IronPort-AV: E=Sophos;i="6.07,187,1708416000"; 
   d="scan'208";a="8020202"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 16:03:44 -0700
X-CSE-ConnectionGUID: 1/O/h+HlQyqRsY5q/NnLMA==
X-CSE-MsgGUID: AiuxPtnlQceQ6UyoBwkvbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,187,1708416000"; d="scan'208";a="20121668"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 16:03:33 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Mon,  8 Apr 2024 16:03:26 -0700
Message-ID: <20240408230326.3327878-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.44.0.53.g0f9d4d28b7e6
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712617427; x=1744153427;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Nshw4AWYJT7qAk4cAOhc98mzf6hkNVSycrrSH6oZfZc=;
 b=b3IMAnQK/9SemrzvUmSyHarvuMmzcT2C3dSuvklfGvwq+5v9LkKoxpoB
 9YimQzRh9Hi76PUYebjxW4/qO5Q4ypEagsdFAgfl8WKebF957gh0qq6qo
 GEZe9Fve8YdrAHm5j62BeRtsbyoCIKauynsh53jMpfzGeE9HQY6u0S4To
 K8JhTm8+VJMPtoq9YW1dmaU6DT2xAtUs5oC9lYBSZcPyuvCoVFt+ZKjgL
 aI4vLOM/7NkX+NNmNYPCZJNqyamyRrrlrz5kvEh/Fhiys4bG39OY7sKPJ
 fKqPqDa3uX1t4FPLW0o7VIlahtgGVf0eyfG7P0yyaGW+2nMKveMeP5X07
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=b3IMAnQK
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix LAG and VF lock
 dependency in ice_reset_vf()
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Dave Ertman <david.m.ertman@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

9f74a3dfcf83 ("ice: Fix VF Reset paths when interface in a failed over
aggregate"), the ice driver has acquired the LAG mutex in ice_reset_vf().
The commit placed this lock acquisition just prior to the acquisition of
the VF configuration lock.

If ice_reset_vf() acquires the configuration lock via the ICE_VF_RESET_LOCK
flag, this could deadlock with ice_vc_cfg_qs_msg() because it always
acquires the locks in the order of the VF configuration lock and then the
LAG mutex.

Lockdep reports this violation almost immediately on creating and then
removing 2 VF:

======================================================
WARNING: possible circular locking dependency detected
6.8.0-rc6 #54 Tainted: G        W  O
------------------------------------------------------
kworker/60:3/6771 is trying to acquire lock:
ff40d43e099380a0 (&vf->cfg_lock){+.+.}-{3:3}, at: ice_reset_vf+0x22f/0x4d0 [ice]

but task is already holding lock:
ff40d43ea1961210 (&pf->lag_mutex){+.+.}-{3:3}, at: ice_reset_vf+0xb7/0x4d0 [ice]

which lock already depends on the new lock.

the existing dependency chain (in reverse order) is:

-> #1 (&pf->lag_mutex){+.+.}-{3:3}:
       __lock_acquire+0x4f8/0xb40
       lock_acquire+0xd4/0x2d0
       __mutex_lock+0x9b/0xbf0
       ice_vc_cfg_qs_msg+0x45/0x690 [ice]
       ice_vc_process_vf_msg+0x4f5/0x870 [ice]
       __ice_clean_ctrlq+0x2b5/0x600 [ice]
       ice_service_task+0x2c9/0x480 [ice]
       process_one_work+0x1e9/0x4d0
       worker_thread+0x1e1/0x3d0
       kthread+0x104/0x140
       ret_from_fork+0x31/0x50
       ret_from_fork_asm+0x1b/0x30

-> #0 (&vf->cfg_lock){+.+.}-{3:3}:
       check_prev_add+0xe2/0xc50
       validate_chain+0x558/0x800
       __lock_acquire+0x4f8/0xb40
       lock_acquire+0xd4/0x2d0
       __mutex_lock+0x9b/0xbf0
       ice_reset_vf+0x22f/0x4d0 [ice]
       ice_process_vflr_event+0x98/0xd0 [ice]
       ice_service_task+0x1cc/0x480 [ice]
       process_one_work+0x1e9/0x4d0
       worker_thread+0x1e1/0x3d0
       kthread+0x104/0x140
       ret_from_fork+0x31/0x50
       ret_from_fork_asm+0x1b/0x30

other info that might help us debug this:
 Possible unsafe locking scenario:
       CPU0                    CPU1
       ----                    ----
  lock(&pf->lag_mutex);
                               lock(&vf->cfg_lock);
                               lock(&pf->lag_mutex);
  lock(&vf->cfg_lock);

 *** DEADLOCK ***
4 locks held by kworker/60:3/6771:
 #0: ff40d43e05428b38 ((wq_completion)ice){+.+.}-{0:0}, at: process_one_work+0x176/0x4d0
 #1: ff50d06e05197e58 ((work_completion)(&pf->serv_task)){+.+.}-{0:0}, at: process_one_work+0x176/0x4d0
 #2: ff40d43ea1960e50 (&pf->vfs.table_lock){+.+.}-{3:3}, at: ice_process_vflr_event+0x48/0xd0 [ice]
 #3: ff40d43ea1961210 (&pf->lag_mutex){+.+.}-{3:3}, at: ice_reset_vf+0xb7/0x4d0 [ice]

stack backtrace:
CPU: 60 PID: 6771 Comm: kworker/60:3 Tainted: G        W  O       6.8.0-rc6 #54
Hardware name:
Workqueue: ice ice_service_task [ice]
Call Trace:
 <TASK>
 dump_stack_lvl+0x4a/0x80
 check_noncircular+0x12d/0x150
 check_prev_add+0xe2/0xc50
 ? save_trace+0x59/0x230
 ? add_chain_cache+0x109/0x450
 validate_chain+0x558/0x800
 __lock_acquire+0x4f8/0xb40
 ? lockdep_hardirqs_on+0x7d/0x100
 lock_acquire+0xd4/0x2d0
 ? ice_reset_vf+0x22f/0x4d0 [ice]
 ? lock_is_held_type+0xc7/0x120
 __mutex_lock+0x9b/0xbf0
 ? ice_reset_vf+0x22f/0x4d0 [ice]
 ? ice_reset_vf+0x22f/0x4d0 [ice]
 ? rcu_is_watching+0x11/0x50
 ? ice_reset_vf+0x22f/0x4d0 [ice]
 ice_reset_vf+0x22f/0x4d0 [ice]
 ? process_one_work+0x176/0x4d0
 ice_process_vflr_event+0x98/0xd0 [ice]
 ice_service_task+0x1cc/0x480 [ice]
 process_one_work+0x1e9/0x4d0
 worker_thread+0x1e1/0x3d0
 ? __pfx_worker_thread+0x10/0x10
 kthread+0x104/0x140
 ? __pfx_kthread+0x10/0x10
 ret_from_fork+0x31/0x50
 ? __pfx_kthread+0x10/0x10
 ret_from_fork_asm+0x1b/0x30
 </TASK>

To avoid deadlock, we must acquire the LAG mutex only after acquiring the
VF configuration lock. Fix the ice_reset_vf() to acquire the LAG mutex only
after we either acquire or check that the VF configuration lock is held.

Fixes: 9f74a3dfcf83 ("ice: Fix VF Reset paths when interface in a failed over aggregate")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 21d26e19338a..d10a4be965b5 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -856,6 +856,11 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 		return 0;
 	}
 
+	if (flags & ICE_VF_RESET_LOCK)
+		mutex_lock(&vf->cfg_lock);
+	else
+		lockdep_assert_held(&vf->cfg_lock);
+
 	lag = pf->lag;
 	mutex_lock(&pf->lag_mutex);
 	if (lag && lag->bonded && lag->primary) {
@@ -867,11 +872,6 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 			act_prt = ICE_LAG_INVALID_PORT;
 	}
 
-	if (flags & ICE_VF_RESET_LOCK)
-		mutex_lock(&vf->cfg_lock);
-	else
-		lockdep_assert_held(&vf->cfg_lock);
-
 	if (ice_is_vf_disabled(vf)) {
 		vsi = ice_get_vf_vsi(vf);
 		if (!vsi) {
@@ -956,14 +956,14 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 	ice_mbx_clear_malvf(&vf->mbx_info);
 
 out_unlock:
-	if (flags & ICE_VF_RESET_LOCK)
-		mutex_unlock(&vf->cfg_lock);
-
 	if (lag && lag->bonded && lag->primary &&
 	    act_prt != ICE_LAG_INVALID_PORT)
 		ice_lag_move_vf_nodes_cfg(lag, pri_prt, act_prt);
 	mutex_unlock(&pf->lag_mutex);
 
+	if (flags & ICE_VF_RESET_LOCK)
+		mutex_unlock(&vf->cfg_lock);
+
 	return err;
 }
 

base-commit: 3ca3256cde596573d060eda8c477996435c6d63f
-- 
2.44.0.53.g0f9d4d28b7e6

