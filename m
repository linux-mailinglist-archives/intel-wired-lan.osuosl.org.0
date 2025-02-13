Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 160C4A3509A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2025 22:44:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B624F607C8;
	Thu, 13 Feb 2025 21:44:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X2t-0zq5gync; Thu, 13 Feb 2025 21:44:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2BB276F66A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739483069;
	bh=95JGEcRzMrrseMD1y+XkQDOIUTtaSA3zbYGGZkRV+pY=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=MjWndxeI3qLC959YnkOISyI6FpD0601GhhxqG221+R1lNGl7WscGWAnlhsE+JbWgM
	 Ip9EX0+8UT7b7j1savqFxSE3agdqdhAr8QxEAWkaIDpqTJG/TDP3M81hHHT+ukn+v4
	 BceONGa0sotLtsF5ADbHi1SvL+zruNRPiiSysyXM5UVD+WzBiiwSlojGpapO9Vov2E
	 jfb7XVX/S3TmJT4uZP3COqpNk0XgH9cTQhV3Ip332Ge0Vp1z4Cq66jEgeqKWZ0/r5+
	 CFwIuzobSn1r6ExX9Pk7Vae7Y5KmjwIanNeSii5CnWlUU38DI7bK0Zet9t+67T8OO1
	 In2p/RvMaEvMw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2BB276F66A;
	Thu, 13 Feb 2025 21:44:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 939D41C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 21:44:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 833C260831
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 21:44:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oKJ7O-rNtXLA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2025 21:44:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0EC4F607C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0EC4F607C8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0EC4F607C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 21:44:25 +0000 (UTC)
X-CSE-ConnectionGUID: Og0H4qmjQiOkMh9WYYFm/A==
X-CSE-MsgGUID: 9JR0l1oYS9+upcnDz4f0tA==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="40087987"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="40087987"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 13:44:25 -0800
X-CSE-ConnectionGUID: TEcjWGiwTku+zEl8E8YvrA==
X-CSE-MsgGUID: rY0Qu3htRt23jHlrwXOF0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117394485"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 13:44:25 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 13 Feb 2025 13:44:01 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250213-jk-iavf-abba-lock-crash-v1-1-d4850f6a0a0d@intel.com>
X-B4-Tracking: v=1; b=H4sIAKBnrmcC/4WNTQ6CMBBGr0Jm7Zj+BBFX3sOwaMsgI9iallQN4
 e42XMDly8v3vhUSRaYEl2qFSJkTB19AHipwo/F3Qu4LgxKqFkpqfEzIJg9orDU4BzehiyaNqIU
 YrNXaUNtCWb8iDfzZyzfg94yeFuiKGDktIX73xyx3/TeeJUpszk3fuFOtepJX9gvNRxee0G3b9
 gO6Ws7yxwAAAA==
X-Change-ID: 20250213-jk-iavf-abba-lock-crash-300fbb33ae99
To: Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 netdev <netdev@vger.kernel.org>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739483066; x=1771019066;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=n5O7jPmxOkhG/rC7/DjZfZJxKvCosPVRIMy0l/YWZso=;
 b=b57Gk8H0WdZHumGEdkc5OSOYDUXwtklHZePrsLVpa7yfp0d5esvF5apw
 vrpH480bNvLG0OcJe7Ya28hpI5ECQ+F+ZNO5X5Gh6gJ7HZffTYSLCZbyC
 stq8INuZZuN1z3KQbt9cEdeBhf91WWxgwVcDhbfBPv2qzccmltPJg6YFN
 RYFfU2KiW3DxrokdiWPqtQwEzklNMY2N72YA9KPfqewAj+F6MSEi3UBe+
 bIsYffRh6DhDTDHzKNEFIFAbT6t5gn9UG7wFH95/tpu1p9UejjUFxdpbx
 NF0xW8Vf1j676noNdmRWdGX1M33RUH1kqsTCQ2zFYPDwSMJh+l1UAu0lw
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=b57Gk8H0
Subject: [Intel-wired-lan] [PATCH iwl-net] iavf: fix circular lock
 dependency with netdev_lock
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

We have recently seen reports of lockdep circular lock dependency warnings
when loading the iAVF driver:

[ 1504.790308] ======================================================
[ 1504.790309] WARNING: possible circular locking dependency detected
[ 1504.790310] 6.13.0 #net_next_rt.c2933b2befe2.el9 Not tainted
[ 1504.790311] ------------------------------------------------------
[ 1504.790312] kworker/u128:0/13566 is trying to acquire lock:
[ 1504.790313] ffff97d0e4738f18 (&dev->lock){+.+.}-{4:4}, at: register_netdevice+0x52c/0x710
[ 1504.790320]
[ 1504.790320] but task is already holding lock:
[ 1504.790321] ffff97d0e47392e8 (&adapter->crit_lock){+.+.}-{4:4}, at: iavf_finish_config+0x37/0x240 [iavf]
[ 1504.790330]
[ 1504.790330] which lock already depends on the new lock.
[ 1504.790330]
[ 1504.790330]
[ 1504.790330] the existing dependency chain (in reverse order) is:
[ 1504.790331]
[ 1504.790331] -> #1 (&adapter->crit_lock){+.+.}-{4:4}:
[ 1504.790333]        __lock_acquire+0x52d/0xbb0
[ 1504.790337]        lock_acquire+0xd9/0x330
[ 1504.790338]        mutex_lock_nested+0x4b/0xb0
[ 1504.790341]        iavf_finish_config+0x37/0x240 [iavf]
[ 1504.790347]        process_one_work+0x248/0x6d0
[ 1504.790350]        worker_thread+0x18d/0x330
[ 1504.790352]        kthread+0x10e/0x250
[ 1504.790354]        ret_from_fork+0x30/0x50
[ 1504.790357]        ret_from_fork_asm+0x1a/0x30
[ 1504.790361]
[ 1504.790361] -> #0 (&dev->lock){+.+.}-{4:4}:
[ 1504.790364]        check_prev_add+0xf1/0xce0
[ 1504.790366]        validate_chain+0x46a/0x570
[ 1504.790368]        __lock_acquire+0x52d/0xbb0
[ 1504.790370]        lock_acquire+0xd9/0x330
[ 1504.790371]        mutex_lock_nested+0x4b/0xb0
[ 1504.790372]        register_netdevice+0x52c/0x710
[ 1504.790374]        iavf_finish_config+0xfa/0x240 [iavf]
[ 1504.790379]        process_one_work+0x248/0x6d0
[ 1504.790381]        worker_thread+0x18d/0x330
[ 1504.790383]        kthread+0x10e/0x250
[ 1504.790385]        ret_from_fork+0x30/0x50
[ 1504.790387]        ret_from_fork_asm+0x1a/0x30
[ 1504.790389]
[ 1504.790389] other info that might help us debug this:
[ 1504.790389]
[ 1504.790389]  Possible unsafe locking scenario:
[ 1504.790389]
[ 1504.790390]        CPU0                    CPU1
[ 1504.790391]        ----                    ----
[ 1504.790391]   lock(&adapter->crit_lock);
[ 1504.790393]                                lock(&dev->lock);
[ 1504.790394]                                lock(&adapter->crit_lock);
[ 1504.790395]   lock(&dev->lock);
[ 1504.790397]
[ 1504.790397]  *** DEADLOCK ***

This appears to be caused by the change in commit 5fda3f35349b ("net: make
netdev_lock() protect netdev->reg_state"), which added a netdev_lock() in
register_netdevice.

The iAVF driver calls register_netdevice() from iavf_finish_config(), as a
final stage of its state machine post-probe. It currently takes the RTNL
lock, then the netdev lock, and then the device critical lock. This pattern
is used throughout the driver. Thus there is a strong dependency that the
crit_lock should not be acquired before the net device lock. The change to
register_netdevice creates an ABBA lock order violation because the iAVF
driver is holding the crit_lock while calling register_netdevice, which
then takes the netdev_lock.

It seems likely that future refactors could result in netdev APIs which
hold the netdev_lock while calling into the driver. This means that we
should not re-order the locks so that netdev_lock is acquired after the
device private crit_lock.

Instead, notice that we already release the netdev_lock prior to calling
the register_netdevice. This flow only happens during the early driver
initialization as we transition through the __IAVF_STARTUP,
__IAVF_INIT_VERSION_CHECK, __IAVF_INIT_GET_RESOURCES, etc.

Analyzing the places where we take crit_lock in the driver there are two
sources:

a) several of the work queue tasks including adminq_task, watchdog_task,
reset_task, and the finish_config task.

b) various callbacks which ultimately stem back to .ndo operations or
ethtool operations.

The latter cannot be triggered until after the netdevice registration is
completed successfully.

The iAVF driver uses alloc_ordered_workqueue, which is an unbound workqueue
that has a max limit of 1, and thus guarantees that only a single work item
on the queue is executing at any given time, so none of the other work
threads could be executing due to the ordered workqueue guarantees.

The iavf_finish_config() function also does not do anything else after
register_netdevice, unless it fails. It seems unlikely that the driver
private crit_lock is protecting anything that register_netdevice() itself
touches.

Thus, to fix this ABBA lock violation, lets simply release the
adapter->crit_lock as well as netdev_lock prior to calling
register_netdevice(). We do still keep holding the RTNL lock as required by
the function. If we do fail to register the netdevice, then we re-acquire
the adapter critical lock to finish the transition back to
__IAVF_INIT_CONFIG_ADAPTER.

This ensures every call where both netdev_lock and the adapter->crit_lock
are acquired under the same ordering.

Fixes: afc664987ab3 ("eth: iavf: extend the netdev_lock usage")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Tested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
Changes in v2:
- EDITME: describe what is new in this series revision.
- EDITME: use bulletpoints and terse descriptions.
- Link to v1: https://lore.kernel.org/r/20250213-jk-iavf-abba-lock-crash-v1-1-787d7c652de1@intel.com
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 852e5b62f0a5dc038c0e5c0f76541870e69384ac..6faa62bced3a2ccb935219ba0726275c8ae60365 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1983,7 +1983,7 @@ static int iavf_reinit_interrupt_scheme(struct iavf_adapter *adapter, bool runni
 static void iavf_finish_config(struct work_struct *work)
 {
 	struct iavf_adapter *adapter;
-	bool netdev_released = false;
+	bool locks_released = false;
 	int pairs, err;
 
 	adapter = container_of(work, struct iavf_adapter, finish_config);
@@ -2012,19 +2012,22 @@ static void iavf_finish_config(struct work_struct *work)
 		netif_set_real_num_tx_queues(adapter->netdev, pairs);
 
 		if (adapter->netdev->reg_state != NETREG_REGISTERED) {
+			mutex_unlock(&adapter->crit_lock);
 			netdev_unlock(adapter->netdev);
-			netdev_released = true;
+			locks_released = true;
 			err = register_netdevice(adapter->netdev);
 			if (err) {
 				dev_err(&adapter->pdev->dev, "Unable to register netdev (%d)\n",
 					err);
 
 				/* go back and try again.*/
+				mutex_lock(&adapter->crit_lock);
 				iavf_free_rss(adapter);
 				iavf_free_misc_irq(adapter);
 				iavf_reset_interrupt_capability(adapter);
 				iavf_change_state(adapter,
 						  __IAVF_INIT_CONFIG_ADAPTER);
+				mutex_unlock(&adapter->crit_lock);
 				goto out;
 			}
 		}
@@ -2040,9 +2043,10 @@ static void iavf_finish_config(struct work_struct *work)
 	}
 
 out:
-	mutex_unlock(&adapter->crit_lock);
-	if (!netdev_released)
+	if (!locks_released) {
+		mutex_unlock(&adapter->crit_lock);
 		netdev_unlock(adapter->netdev);
+	}
 	rtnl_unlock();
 }
 

---
base-commit: 348f968b89bfeec0bb53dd82dba58b94d97fbd34
change-id: 20250213-jk-iavf-abba-lock-crash-300fbb33ae99

Best regards,
-- 
Jacob Keller <jacob.e.keller@intel.com>

