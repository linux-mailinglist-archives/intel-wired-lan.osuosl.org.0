Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7077CA7BAC7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Apr 2025 12:29:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 23E7B83FBE;
	Fri,  4 Apr 2025 10:29:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1Vq8ggwUW7_P; Fri,  4 Apr 2025 10:29:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD35B8470D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743762590;
	bh=mSudxArt8rjQSWeLSt2y0COriMb6sGMHyTtBO5YVsQQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zRUcHa7jZjR1Sb/aHEcgJ0XS2E30eOpwaAtUL1v5t3mZS61yU6GLvjDXfqnysAvt3
	 2PIOYmlioQwO7JxPtMNpq/gtNMZ4G27rCXF5iU6w/Yc2VAQatS/FUJlnyepnANbn/s
	 BX6NgNDcCoYQESHxVhoi6JWcQQUHdJuGrvRVmt1BwBfVjSXAG+7vwg4l50RR0oXPMk
	 +GiUUDDzeZD6JA+rOaD9a6Qq2puiF8ZOTl/qgDhXXV+alBnuydaZqg0nphmZLfdAlE
	 k20VpxxFUmhpNHIXsor/mlNeT7DLbyC1fKE3wxa5nK6hV9tvpdX9+LtNCvCT1RJf/k
	 Bn+3fs+ybcpbw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD35B8470D;
	Fri,  4 Apr 2025 10:29:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9C2CE117
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 10:29:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 82A6481ECC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 10:29:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TwkEsAQo6HWc for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Apr 2025 10:29:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2A3E881398
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A3E881398
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2A3E881398
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 10:29:48 +0000 (UTC)
X-CSE-ConnectionGUID: bg9iJ+KHR7GA2HehVZegwQ==
X-CSE-MsgGUID: ebtUQ4o8QmyUlK3xOrBmmw==
X-IronPort-AV: E=McAfee;i="6700,10204,11393"; a="48992453"
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="48992453"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 03:29:47 -0700
X-CSE-ConnectionGUID: VO/WmBWSQvWRTlMwcNPYcg==
X-CSE-MsgGUID: Uf/zUaskQsGKKSuE6n3IcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="164485323"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa001.jf.intel.com with ESMTP; 04 Apr 2025 03:29:44 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id E4A0333E99;
 Fri,  4 Apr 2025 11:29:42 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri,  4 Apr 2025 12:23:21 +0200
Message-Id: <20250404102321.25846-7-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20250404102321.25846-1-przemyslaw.kitszel@intel.com>
References: <20250404102321.25846-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743762588; x=1775298588;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RyACKMNtd/qHe/7ArBLd21IUEh8JWLH+J9Gy7oVHbiM=;
 b=PYSwj6xI+GPNx1mCO+/CJndkL51XmQ/1AxQ115iRl0GGbJE7NfCMVTMe
 yNnK53nxsWOZad2eYXPUiLiv28Bx8bb+ok6+0GQpTNB6VtrnGDhehVxyl
 FWOR4cDfU4Nsh7cV6azc89/XmIGkKkywwg+tFbW+R3DWesrzXzhrICtBV
 1e8N/zT47Wbz1Mfi4ONnTqneGe9Zxd8NBJGOfseJfgA28J05lkCGMz465
 o5eFrgFhchB/Dgk2J5QC4Dh4hIuFAzL2ifvp83CDCOBBQWE+ChSqDZyz5
 v1c6lbR6WS3/05GKM7dwaYEnRrETTBwm9AMTr2+yYms0NXWgi0VxBFmG4
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PYSwj6xI
Subject: [Intel-wired-lan] [PATCH iwl-net 6/6] iavf: get rid of the crit lock
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
Cc: netdev@vger.kernel.org, Ahmed Zaki <ahmed.zaki@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Get rid of the crit lock.
That frees us from the error prone logic of try_locks.

Thanks to netdev_lock() by Jakub it is now easy, and in most cases we were
protected by it already - replace crit lock by netdev lock when it was not
the case.

Lockdep reports that we should cancel the work under crit_lock [splat1],
and that was the scheme we have mostly followed since [1] by Slawomir.
But when that is done we still got into deadlocks [splat2]. So instead
we should look at the bigger problem, namely "weird locking/scheduling"
of the iavf. The first step to fix that is to remove the crit lock.
I will followup with a -next series that simplifies scheduling/tasks.

Cancel the work without netdev lock (weird unlock+lock scheme),
to fix the [splat2] (which would be totally ugly if we would kept
the crit lock).

Extend protected part of iavf_watchdog_task() to include scheduling
more work.

Note that the removed comment in iavf_reset_task() was misplaced,
it belonged to inside of the removed if condition, so it's gone now.

[splat1] - w/o this patch - The deadlock during VF removal:
     WARNING: possible circular locking dependency detected
     sh/3825 is trying to acquire lock:
      ((work_completion)(&(&adapter->watchdog_task)->work)){+.+.}-{0:0}, at: start_flush_work+0x1a1/0x470
          but task is already holding lock:
      (&adapter->crit_lock){+.+.}-{4:4}, at: iavf_remove+0xd1/0x690 [iavf]
          which lock already depends on the new lock.

[splat2] - when cancelling work under crit lock, w/o this series,
	   see [2] for the band aid attempt
    WARNING: possible circular locking dependency detected
    sh/3550 is trying to acquire lock:
    ((wq_completion)iavf){+.+.}-{0:0}, at: touch_wq_lockdep_map+0x26/0x90
        but task is already holding lock:
    (&dev->lock){+.+.}-{4:4}, at: iavf_remove+0xa6/0x6e0 [iavf]
        which lock already depends on the new lock.

[1] fc2e6b3b132a ("iavf: Rework mutexes for better synchronisation")
[2] https://github.com/pkitszel/linux/commit/52dddbfc2bb60294083f5711a158a
Fixes: d1639a17319b ("iavf: fix a deadlock caused by rtnl and driver's lock circular dependencies")
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
CC: Jacob Keller <jacob.e.keller@intel.com>
CC: Jakub Kicinski <kuba@kernel.org>
CC: Ahmed Zaki <ahmed.zaki@intel.com>
CC: Michal Schmidt <mschmidt@redhat.com>
CC: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |   1 -
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |  23 +--
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 165 ++++--------------
 3 files changed, 38 insertions(+), 151 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 9de3e0ba3731..f7a98ff43a57 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -268,7 +268,6 @@ struct iavf_adapter {
 	struct list_head vlan_filter_list;
 	int num_vlan_filters;
 	struct list_head mac_filter_list;
-	struct mutex crit_lock;
 	/* Lock to protect accesses to MAC and VLAN lists */
 	spinlock_t mac_vlan_list_lock;
 	char misc_vector_name[IFNAMSIZ + 9];
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 03d86fe80ad9..2b2b315205b5 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -1258,7 +1258,6 @@ static int iavf_add_fdir_ethtool(struct iavf_adapter *adapter, struct ethtool_rx
 {
 	struct ethtool_rx_flow_spec *fsp = &cmd->fs;
 	struct iavf_fdir_fltr *fltr;
-	int count = 50;
 	int err;
 
 	netdev_assert_locked(adapter->netdev);
@@ -1281,22 +1280,13 @@ static int iavf_add_fdir_ethtool(struct iavf_adapter *adapter, struct ethtool_rx
 	if (!fltr)
 		return -ENOMEM;
 
-	while (!mutex_trylock(&adapter->crit_lock)) {
-		if (--count == 0) {
-			kfree(fltr);
-			return -EINVAL;
-		}
-		udelay(1);
-	}
-
 	err = iavf_add_fdir_fltr_info(adapter, fsp, fltr);
 	if (!err)
 		err = iavf_fdir_add_fltr(adapter, fltr);
 
 	if (err)
 		kfree(fltr);
 
-	mutex_unlock(&adapter->crit_lock);
 	return err;
 }
 
@@ -1439,9 +1429,9 @@ iavf_set_adv_rss_hash_opt(struct iavf_adapter *adapter,
 {
 	struct iavf_adv_rss *rss_old, *rss_new;
 	bool rss_new_add = false;
-	int count = 50, err = 0;
 	bool symm = false;
 	u64 hash_flds;
+	int err = 0;
 	u32 hdrs;
 
 	netdev_assert_locked(adapter->netdev);
@@ -1469,15 +1459,6 @@ iavf_set_adv_rss_hash_opt(struct iavf_adapter *adapter,
 		return -EINVAL;
 	}
 
-	while (!mutex_trylock(&adapter->crit_lock)) {
-		if (--count == 0) {
-			kfree(rss_new);
-			return -EINVAL;
-		}
-
-		udelay(1);
-	}
-
 	spin_lock_bh(&adapter->adv_rss_lock);
 	rss_old = iavf_find_adv_rss_cfg_by_hdrs(adapter, hdrs);
 	if (rss_old) {
@@ -1506,8 +1487,6 @@ iavf_set_adv_rss_hash_opt(struct iavf_adapter *adapter,
 	if (!err)
 		iavf_schedule_aq_request(adapter, IAVF_FLAG_AQ_ADD_ADV_RSS_CFG);
 
-	mutex_unlock(&adapter->crit_lock);
-
 	if (!rss_new_add)
 		kfree(rss_new);
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index bf8c7baf2ab8..2c0bb41809a4 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1287,9 +1287,7 @@ static void iavf_configure(struct iavf_adapter *adapter)
 /**
  * iavf_up_complete - Finish the last steps of bringing up a connection
  * @adapter: board private structure
- *
- * Expects to be called while holding crit_lock.
- **/
+ */
 static void iavf_up_complete(struct iavf_adapter *adapter)
 {
 	netdev_assert_locked(adapter->netdev);
@@ -1412,9 +1410,7 @@ static void iavf_clear_adv_rss_conf(struct iavf_adapter *adapter)
 /**
  * iavf_down - Shutdown the connection processing
  * @adapter: board private structure
- *
- * Expects to be called while holding crit_lock.
- **/
+ */
 void iavf_down(struct iavf_adapter *adapter)
 {
 	struct net_device *netdev = adapter->netdev;
@@ -2029,22 +2025,21 @@ static int iavf_reinit_interrupt_scheme(struct iavf_adapter *adapter, bool runni
  * iavf_finish_config - do all netdev work that needs RTNL
  * @work: our work_struct
  *
- * Do work that needs both RTNL and crit_lock.
- **/
+ * Do work that needs RTNL.
+ */
 static void iavf_finish_config(struct work_struct *work)
 {
 	struct iavf_adapter *adapter;
-	bool locks_released = false;
+	bool netdev_released = false;
 	int pairs, err;
 
 	adapter = container_of(work, struct iavf_adapter, finish_config);
 
 	/* Always take RTNL first to prevent circular lock dependency;
-	 * The dev->lock is needed to update the queue number
+	 * the dev->lock (== netdev lock) is needed to update the queue number.
 	 */
 	rtnl_lock();
 	netdev_lock(adapter->netdev);
-	mutex_lock(&adapter->crit_lock);
 
 	if ((adapter->flags & IAVF_FLAG_SETUP_NETDEV_FEATURES) &&
 	    adapter->netdev->reg_state == NETREG_REGISTERED &&
@@ -2063,22 +2058,21 @@ static void iavf_finish_config(struct work_struct *work)
 		netif_set_real_num_tx_queues(adapter->netdev, pairs);
 
 		if (adapter->netdev->reg_state != NETREG_REGISTERED) {
-			mutex_unlock(&adapter->crit_lock);
 			netdev_unlock(adapter->netdev);
-			locks_released = true;
+			netdev_released = true;
 			err = register_netdevice(adapter->netdev);
 			if (err) {
 				dev_err(&adapter->pdev->dev, "Unable to register netdev (%d)\n",
 					err);
 
 				/* go back and try again.*/
-				mutex_lock(&adapter->crit_lock);
+				netdev_lock(adapter->netdev);
 				iavf_free_rss(adapter);
 				iavf_free_misc_irq(adapter);
 				iavf_reset_interrupt_capability(adapter);
 				iavf_change_state(adapter,
 						  __IAVF_INIT_CONFIG_ADAPTER);
-				mutex_unlock(&adapter->crit_lock);
+				netdev_unlock(adapter->netdev);
 				goto out;
 			}
 		}
@@ -2094,10 +2088,8 @@ static void iavf_finish_config(struct work_struct *work)
 	}
 
 out:
-	if (!locks_released) {
-		mutex_unlock(&adapter->crit_lock);
+	if (!netdev_released)
 		netdev_unlock(adapter->netdev);
-	}
 	rtnl_unlock();
 }
 
@@ -2924,7 +2916,6 @@ static int iavf_watchdog_step(struct iavf_adapter *adapter)
 	u32 reg_val;
 
 	netdev_assert_locked(adapter->netdev);
-	lockdep_assert_held(&adapter->crit_lock);
 
 	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
 		iavf_change_state(adapter, __IAVF_COMM_FAILED);
@@ -3044,38 +3035,23 @@ static void iavf_watchdog_task(struct work_struct *work)
 	int msec_delay;
 
 	netdev_lock(netdev);
-	if (!mutex_trylock(&adapter->crit_lock)) {
-		if (adapter->state == __IAVF_REMOVE) {
-			netdev_unlock(netdev);
-			return;
-		}
-
-		msec_delay = 20;
-		goto restart_watchdog;
-	}
-
 	msec_delay = iavf_watchdog_step(adapter);
-
-	mutex_unlock(&adapter->crit_lock);
-restart_watchdog:
-	netdev_unlock(netdev);
-
 	/* note that we schedule a different task */
 	if (adapter->state >= __IAVF_DOWN)
 		queue_work(adapter->wq, &adapter->adminq_task);
 
 	if (msec_delay != IAVF_NO_RESCHED)
 		queue_delayed_work(adapter->wq, &adapter->watchdog_task,
 				   msecs_to_jiffies(msec_delay));
+	netdev_unlock(netdev);
 }
 
 /**
  * iavf_disable_vf - disable VF
  * @adapter: board private structure
  *
  * Set communication failed flag and free all resources.
- * NOTE: This function is expected to be called with crit_lock being held.
- **/
+ */
 static void iavf_disable_vf(struct iavf_adapter *adapter)
 {
 	struct iavf_mac_filter *f, *ftmp;
@@ -3183,17 +3159,7 @@ static void iavf_reset_task(struct work_struct *work)
 	int i = 0, err;
 	bool running;
 
-	/* When device is being removed it doesn't make sense to run the reset
-	 * task, just return in such a case.
-	 */
 	netdev_lock(netdev);
-	if (!mutex_trylock(&adapter->crit_lock)) {
-		if (adapter->state != __IAVF_REMOVE)
-			queue_work(adapter->wq, &adapter->reset_task);
-
-		netdev_unlock(netdev);
-		return;
-	}
 
 	iavf_misc_irq_disable(adapter);
 	if (adapter->flags & IAVF_FLAG_RESET_NEEDED) {
@@ -3238,7 +3204,6 @@ static void iavf_reset_task(struct work_struct *work)
 		dev_err(&adapter->pdev->dev, "Reset never finished (%x)\n",
 			reg_val);
 		iavf_disable_vf(adapter);
-		mutex_unlock(&adapter->crit_lock);
 		netdev_unlock(netdev);
 		return; /* Do not attempt to reinit. It's dead, Jim. */
 	}
@@ -3382,7 +3347,6 @@ static void iavf_reset_task(struct work_struct *work)
 	adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
 
 	wake_up(&adapter->reset_waitqueue);
-	mutex_unlock(&adapter->crit_lock);
 	netdev_unlock(netdev);
 
 	return;
@@ -3393,7 +3357,6 @@ static void iavf_reset_task(struct work_struct *work)
 	}
 	iavf_disable_vf(adapter);
 
-	mutex_unlock(&adapter->crit_lock);
 	netdev_unlock(netdev);
 	dev_err(&adapter->pdev->dev, "failed to allocate resources during reinit\n");
 }
@@ -3406,20 +3369,15 @@ static void iavf_adminq_task(struct work_struct *work)
 {
 	struct iavf_adapter *adapter =
 		container_of(work, struct iavf_adapter, adminq_task);
+	struct net_device *netdev = adapter->netdev;
 	struct iavf_hw *hw = &adapter->hw;
 	struct iavf_arq_event_info event;
 	enum virtchnl_ops v_op;
 	enum iavf_status ret, v_ret;
 	u32 val, oldval;
 	u16 pending;
 
-	if (!mutex_trylock(&adapter->crit_lock)) {
-		if (adapter->state == __IAVF_REMOVE)
-			return;
-
-		queue_work(adapter->wq, &adapter->adminq_task);
-		goto out;
-	}
+	netdev_lock(netdev);
 
 	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
 		goto unlock;
@@ -3486,8 +3444,7 @@ static void iavf_adminq_task(struct work_struct *work)
 freedom:
 	kfree(event.msg_buf);
 unlock:
-	mutex_unlock(&adapter->crit_lock);
-out:
+	netdev_unlock(netdev);
 	/* re-enable Admin queue interrupt cause */
 	iavf_misc_irq_enable(adapter);
 }
@@ -4180,28 +4137,21 @@ static int iavf_configure_clsflower(struct iavf_adapter *adapter,
 				    struct flow_cls_offload *cls_flower)
 {
 	int tc = tc_classid_to_hwtc(adapter->netdev, cls_flower->classid);
-	struct iavf_cloud_filter *filter = NULL;
-	int err = -EINVAL, count = 50;
+	struct iavf_cloud_filter *filter;
+	int err;
 
 	if (tc < 0) {
 		dev_err(&adapter->pdev->dev, "Invalid traffic class\n");
 		return -EINVAL;
 	}
 
 	filter = kzalloc(sizeof(*filter), GFP_KERNEL);
 	if (!filter)
 		return -ENOMEM;
-
-	while (!mutex_trylock(&adapter->crit_lock)) {
-		if (--count == 0) {
-			kfree(filter);
-			return err;
-		}
-		udelay(1);
-	}
-
 	filter->cookie = cls_flower->cookie;
 
+	netdev_lock(adapter->netdev);
+
 	/* bail out here if filter already exists */
 	spin_lock_bh(&adapter->cloud_filter_list_lock);
 	if (iavf_find_cf(adapter, &cls_flower->cookie)) {
@@ -4235,7 +4185,7 @@ static int iavf_configure_clsflower(struct iavf_adapter *adapter,
 	if (err)
 		kfree(filter);
 
-	mutex_unlock(&adapter->crit_lock);
+	netdev_unlock(adapter->netdev);
 	return err;
 }
 
@@ -4539,28 +4489,13 @@ static int iavf_open(struct net_device *netdev)
 		return -EIO;
 	}
 
-	while (!mutex_trylock(&adapter->crit_lock)) {
-		/* If we are in __IAVF_INIT_CONFIG_ADAPTER state the crit_lock
-		 * is already taken and iavf_open is called from an upper
-		 * device's notifier reacting on NETDEV_REGISTER event.
-		 * We have to leave here to avoid dead lock.
-		 */
-		if (adapter->state == __IAVF_INIT_CONFIG_ADAPTER)
-			return -EBUSY;
-
-		usleep_range(500, 1000);
-	}
-
-	if (adapter->state != __IAVF_DOWN) {
-		err = -EBUSY;
-		goto err_unlock;
-	}
+	if (adapter->state != __IAVF_DOWN)
+		return -EBUSY;
 
 	if (adapter->state == __IAVF_RUNNING &&
 	    !test_bit(__IAVF_VSI_DOWN, adapter->vsi.state)) {
 		dev_dbg(&adapter->pdev->dev, "VF is already open.\n");
-		err = 0;
-		goto err_unlock;
+		return 0;
 	}
 
 	/* allocate transmit descriptors */
@@ -4579,9 +4514,7 @@ static int iavf_open(struct net_device *netdev)
 		goto err_req_irq;
 
 	spin_lock_bh(&adapter->mac_vlan_list_lock);
-
 	iavf_add_filter(adapter, adapter->hw.mac.addr);
-
 	spin_unlock_bh(&adapter->mac_vlan_list_lock);
 
 	/* Restore filters that were removed with IFF_DOWN */
@@ -4594,19 +4527,15 @@ static int iavf_open(struct net_device *netdev)
 
 	iavf_irq_enable(adapter, true);
 
-	mutex_unlock(&adapter->crit_lock);
-
 	return 0;
 
 err_req_irq:
 	iavf_down(adapter);
 	iavf_free_traffic_irqs(adapter);
 err_setup_rx:
 	iavf_free_all_rx_resources(adapter);
 err_setup_tx:
 	iavf_free_all_tx_resources(adapter);
-err_unlock:
-	mutex_unlock(&adapter->crit_lock);
 
 	return err;
 }
@@ -4630,12 +4559,8 @@ static int iavf_close(struct net_device *netdev)
 
 	netdev_assert_locked(netdev);
 
-	mutex_lock(&adapter->crit_lock);
-
-	if (adapter->state <= __IAVF_DOWN_PENDING) {
-		mutex_unlock(&adapter->crit_lock);
+	if (adapter->state <= __IAVF_DOWN_PENDING)
 		return 0;
-	}
 
 	set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
 	/* We cannot send IAVF_FLAG_AQ_GET_OFFLOAD_VLAN_V2_CAPS before
@@ -4666,7 +4591,6 @@ static int iavf_close(struct net_device *netdev)
 	iavf_change_state(adapter, __IAVF_DOWN_PENDING);
 	iavf_free_traffic_irqs(adapter);
 
-	mutex_unlock(&adapter->crit_lock);
 	netdev_unlock(netdev);
 
 	/* We explicitly don't free resources here because the hardware is
@@ -4685,11 +4609,10 @@ static int iavf_close(struct net_device *netdev)
 				    msecs_to_jiffies(500));
 	if (!status)
 		netdev_warn(netdev, "Device resources not yet released\n");
-
 	netdev_lock(netdev);
-	mutex_lock(&adapter->crit_lock);
+
 	adapter->aq_required |= aq_to_restore;
-	mutex_unlock(&adapter->crit_lock);
+
 	return 0;
 }
 
@@ -5198,29 +5121,26 @@ iavf_shaper_set(struct net_shaper_binding *binding,
 	struct iavf_adapter *adapter = netdev_priv(binding->netdev);
 	const struct net_shaper_handle *handle = &shaper->handle;
 	struct iavf_ring *tx_ring;
-	int ret = 0;
+	int ret;
 
 	netdev_assert_locked(adapter->netdev);
 
-	mutex_lock(&adapter->crit_lock);
 	if (handle->id >= adapter->num_active_queues)
-		goto unlock;
+		return 0;
 
 	ret = iavf_verify_shaper(binding, shaper, extack);
 	if (ret)
-		goto unlock;
+		return ret;
 
 	tx_ring = &adapter->tx_rings[handle->id];
 
 	tx_ring->q_shaper.bw_min = div_u64(shaper->bw_min, 1000);
 	tx_ring->q_shaper.bw_max = div_u64(shaper->bw_max, 1000);
 	tx_ring->q_shaper_update = true;
 
 	adapter->aq_required |= IAVF_FLAG_AQ_CONFIGURE_QUEUES_BW;
 
-unlock:
-	mutex_unlock(&adapter->crit_lock);
-	return ret;
+	return 0;
 }
 
 static int iavf_shaper_del(struct net_shaper_binding *binding,
@@ -5232,19 +5152,16 @@ static int iavf_shaper_del(struct net_shaper_binding *binding,
 
 	netdev_assert_locked(adapter->netdev);
 
-	mutex_lock(&adapter->crit_lock);
 	if (handle->id >= adapter->num_active_queues)
-		goto unlock;
+		return 0;
 
 	tx_ring = &adapter->tx_rings[handle->id];
 	tx_ring->q_shaper.bw_min = 0;
 	tx_ring->q_shaper.bw_max = 0;
 	tx_ring->q_shaper_update = true;
 
 	adapter->aq_required |= IAVF_FLAG_AQ_CONFIGURE_QUEUES_BW;
 
-unlock:
-	mutex_unlock(&adapter->crit_lock);
 	return 0;
 }
 
@@ -5505,10 +5422,6 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_alloc_qos_cap;
 	}
 
-	/* set up the locks for the AQ, do this only once in probe
-	 * and destroy them only once in remove
-	 */
-	mutex_init(&adapter->crit_lock);
 	mutex_init(&hw->aq.asq_mutex);
 	mutex_init(&hw->aq.arq_mutex);
 
@@ -5578,17 +5491,14 @@ static int iavf_suspend(struct device *dev_d)
 	running = netif_running(netdev);
 	if (running)
 		rtnl_lock();
-
 	netdev_lock(netdev);
-	mutex_lock(&adapter->crit_lock);
 
 	if (running)
 		iavf_down(adapter);
 
 	iavf_free_misc_irq(adapter);
 	iavf_reset_interrupt_capability(adapter);
 
-	mutex_unlock(&adapter->crit_lock);
 	netdev_unlock(netdev);
 	if (running)
 		rtnl_unlock();
@@ -5668,30 +5578,29 @@ static void iavf_remove(struct pci_dev *pdev)
 	 * There are flows where register/unregister netdev may race.
 	 */
 	while (1) {
-		mutex_lock(&adapter->crit_lock);
+		netdev_lock(netdev);
 		if (adapter->state == __IAVF_RUNNING ||
 		    adapter->state == __IAVF_DOWN ||
 		    adapter->state == __IAVF_INIT_FAILED) {
-			mutex_unlock(&adapter->crit_lock);
+			netdev_unlock(netdev);
 			break;
 		}
 		/* Simply return if we already went through iavf_shutdown */
 		if (adapter->state == __IAVF_REMOVE) {
-			mutex_unlock(&adapter->crit_lock);
+			netdev_unlock(netdev);
 			return;
 		}
 
-		mutex_unlock(&adapter->crit_lock);
+		netdev_unlock(netdev);
 		usleep_range(500, 1000);
 	}
 	cancel_delayed_work_sync(&adapter->watchdog_task);
 	cancel_work_sync(&adapter->finish_config);
 
 	if (netdev->reg_state == NETREG_REGISTERED)
 		unregister_netdev(netdev);
 
 	netdev_lock(netdev);
-	mutex_lock(&adapter->crit_lock);
 	dev_info(&adapter->pdev->dev, "Removing device\n");
 	iavf_change_state(adapter, __IAVF_REMOVE);
 
@@ -5707,9 +5616,11 @@ static void iavf_remove(struct pci_dev *pdev)
 
 	iavf_misc_irq_disable(adapter);
 	/* Shut down all the garbage mashers on the detention level */
+	netdev_unlock(netdev);
 	cancel_work_sync(&adapter->reset_task);
 	cancel_delayed_work_sync(&adapter->watchdog_task);
 	cancel_work_sync(&adapter->adminq_task);
+	netdev_lock(netdev);
 
 	adapter->aq_required = 0;
 	adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
@@ -5727,8 +5638,6 @@ static void iavf_remove(struct pci_dev *pdev)
 	/* destroy the locks only once, here */
 	mutex_destroy(&hw->aq.arq_mutex);
 	mutex_destroy(&hw->aq.asq_mutex);
-	mutex_unlock(&adapter->crit_lock);
-	mutex_destroy(&adapter->crit_lock);
 	netdev_unlock(netdev);
 
 	iounmap(hw->hw_addr);
-- 
2.39.3

