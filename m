Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A4AA7BAC6
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Apr 2025 12:29:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A0A2A40C3C;
	Fri,  4 Apr 2025 10:29:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k7kLLxzY3CaC; Fri,  4 Apr 2025 10:29:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB6D940C45
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743762589;
	bh=cbXhX0WMMC122ZL7lccpFjrSZ2l+VDPlCq0W6o7w36E=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=z8tU2feVLOfMSFMN+7YRdTjcnPpG0j7rbdHt+olsRRt31pJI6tgH59yFPPC/halYi
	 F7QJJ508c33RpJbNb0PGWpvMqbqef8AlsQNcNA6+cSAWJFmxpUnhr/rxgZcPDPu75k
	 1s4wwzxcwtNbXtwcEBXS09D8gYbry/fSGZcmOUP2bciTYVCQq3lBqwdHGdaFFTTFJP
	 XvJpXpO2QD6oBVxq8DDIm/wIGmCX+E1GFIYsMwda/TDCsg944HsEyzfST0J6RfsgC3
	 igXrLWz9S+uNvfM5Zzatr3LjiRfpCHBOexmNSOl3IhAAklg2PVjUoViM42PVzOPcoa
	 h5Cb9SZS4LfdA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB6D940C45;
	Fri,  4 Apr 2025 10:29:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0C5851C4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 10:29:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1E2AB81398
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 10:29:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bIGN8YTIHQLP for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Apr 2025 10:29:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 46715812B7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 46715812B7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 46715812B7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 10:29:45 +0000 (UTC)
X-CSE-ConnectionGUID: NadL/bduSomd/z9TI85BXQ==
X-CSE-MsgGUID: F3Ybrq6rQbSEL94/TyFTQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11393"; a="48992446"
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="48992446"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 03:29:45 -0700
X-CSE-ConnectionGUID: WmB5IEF3QOGV45MBuA5m+w==
X-CSE-MsgGUID: T5hNANURR/mfQ0t+vKoAIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="164485304"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa001.jf.intel.com with ESMTP; 04 Apr 2025 03:29:42 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id C16FF33EA0;
 Fri,  4 Apr 2025 11:29:40 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org, Stanislav Fomichev <sdf@fomichev.me>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
Date: Fri,  4 Apr 2025 12:23:17 +0200
Message-Id: <20250404102321.25846-3-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20250404102321.25846-1-przemyslaw.kitszel@intel.com>
References: <20250404102321.25846-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743762585; x=1775298585;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eYdMXKc46o68HlzUweUMWvRSpXW5tTwbEG/zYbnvEaE=;
 b=fk5v+uwHCP388XOmj3Gif1jG1Sn7s/3/wL3v3NgtGSuGQjfvhfLdH2Lb
 TaVddYjJRg2Q7ZokLH+vIslCOu/7HNHqfByL5Mpyz7pi8AM/Cez37fsK5
 SNbzYs/6MvuUxAJ79TMt15n8GoggcNYVf/GFYnJ5hi5XKVhFHqf39LyAL
 /5B/on0kY+WIA6cH3VIfRLXaPYQSAkIFaDin+vq0LD2FKkjFF4XI4FQjC
 9Ut39aq5FPkui9PHBH0dQq3JRXv3yM9RfdBNWdRdkG0jY7KjSg0VemdLd
 GLIBQDCRlp8cKWjrvHU4mZVxvF4TLa1CGZN3JkTRj6eiwO3wBluntVZYY
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fk5v+uwH
Subject: [Intel-wired-lan] [PATCH iwl-net 2/6] iavf: centralize watchdog
 requeueing itself
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

Centralize the unlock(critlock); unlock(netdev); queue_delayed_work(watchog_task);
pattern to one place.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 103 ++++++++------------
 1 file changed, 41 insertions(+), 62 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index a77c72643528..2c6e033c7341 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2911,6 +2911,8 @@ static void iavf_init_config_adapter(struct iavf_adapter *adapter)
 	iavf_change_state(adapter, __IAVF_INIT_FAILED);
 }
 
+static const int IAVF_NO_RESCHED = -1;
+
 /**
  * iavf_watchdog_task - Periodic call-back task
  * @work: pointer to work_struct
@@ -2922,6 +2924,7 @@ static void iavf_watchdog_task(struct work_struct *work)
 						    watchdog_task.work);
 	struct net_device *netdev = adapter->netdev;
 	struct iavf_hw *hw = &adapter->hw;
+	int msec_delay;
 	u32 reg_val;
 
 	netdev_lock(netdev);
@@ -2940,79 +2943,57 @@ static void iavf_watchdog_task(struct work_struct *work)
 	switch (adapter->state) {
 	case __IAVF_STARTUP:
 		iavf_startup(adapter);
-		mutex_unlock(&adapter->crit_lock);
-		netdev_unlock(netdev);
-		queue_delayed_work(adapter->wq, &adapter->watchdog_task,
-				   msecs_to_jiffies(30));
-		return;
+		msec_delay = 30;
+		goto watchdog_done;
 	case __IAVF_INIT_VERSION_CHECK:
 		iavf_init_version_check(adapter);
-		mutex_unlock(&adapter->crit_lock);
-		netdev_unlock(netdev);
-		queue_delayed_work(adapter->wq, &adapter->watchdog_task,
-				   msecs_to_jiffies(30));
-		return;
+		msec_delay = 30;
+		goto watchdog_done;
 	case __IAVF_INIT_GET_RESOURCES:
 		iavf_init_get_resources(adapter);
-		mutex_unlock(&adapter->crit_lock);
-		netdev_unlock(netdev);
-		queue_delayed_work(adapter->wq, &adapter->watchdog_task,
-				   msecs_to_jiffies(1));
-		return;
+		msec_delay = 1;
+		goto watchdog_done;
 	case __IAVF_INIT_EXTENDED_CAPS:
 		iavf_init_process_extended_caps(adapter);
-		mutex_unlock(&adapter->crit_lock);
-		netdev_unlock(netdev);
-		queue_delayed_work(adapter->wq, &adapter->watchdog_task,
-				   msecs_to_jiffies(1));
-		return;
+		msec_delay = 1;
+		goto watchdog_done;
 	case __IAVF_INIT_CONFIG_ADAPTER:
 		iavf_init_config_adapter(adapter);
-		mutex_unlock(&adapter->crit_lock);
-		netdev_unlock(netdev);
-		queue_delayed_work(adapter->wq, &adapter->watchdog_task,
-				   msecs_to_jiffies(1));
-		return;
+		msec_delay = 1;
+		goto watchdog_done;
 	case __IAVF_INIT_FAILED:
 		if (test_bit(__IAVF_IN_REMOVE_TASK,
 			     &adapter->crit_section)) {
 			/* Do not update the state and do not reschedule
 			 * watchdog task, iavf_remove should handle this state
 			 * as it can loop forever
 			 */
-			mutex_unlock(&adapter->crit_lock);
-			netdev_unlock(netdev);
-			return;
+			msec_delay = IAVF_NO_RESCHED;
+			goto watchdog_done;
 		}
 		if (++adapter->aq_wait_count > IAVF_AQ_MAX_ERR) {
 			dev_err(&adapter->pdev->dev,
 				"Failed to communicate with PF; waiting before retry\n");
 			adapter->flags |= IAVF_FLAG_PF_COMMS_FAILED;
 			iavf_shutdown_adminq(hw);
-			mutex_unlock(&adapter->crit_lock);
-			netdev_unlock(netdev);
-			queue_delayed_work(adapter->wq,
-					   &adapter->watchdog_task, (5 * HZ));
-			return;
+			msec_delay = 5000;
+			goto watchdog_done;
 		}
 		/* Try again from failed step*/
 		iavf_change_state(adapter, adapter->last_state);
-		mutex_unlock(&adapter->crit_lock);
-		netdev_unlock(netdev);
-		queue_delayed_work(adapter->wq, &adapter->watchdog_task, HZ);
-		return;
+		msec_delay = 1000;
+		goto watchdog_done;
 	case __IAVF_COMM_FAILED:
 		if (test_bit(__IAVF_IN_REMOVE_TASK,
 			     &adapter->crit_section)) {
 			/* Set state to __IAVF_INIT_FAILED and perform remove
 			 * steps. Remove IAVF_FLAG_PF_COMMS_FAILED so the task
 			 * doesn't bring the state back to __IAVF_COMM_FAILED.
 			 */
 			iavf_change_state(adapter, __IAVF_INIT_FAILED);
 			adapter->flags &= ~IAVF_FLAG_PF_COMMS_FAILED;
-			mutex_unlock(&adapter->crit_lock);
-			netdev_unlock(netdev);
-			return;
+			msec_delay = IAVF_NO_RESCHED;
+			goto watchdog_done;
 		}
 		reg_val = rd32(hw, IAVF_VFGEN_RSTAT) &
 			  IAVF_VFGEN_RSTAT_VFR_STATE_MASK;
@@ -3030,18 +3011,11 @@ static void iavf_watchdog_task(struct work_struct *work)
 		}
 		adapter->aq_required = 0;
 		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
-		mutex_unlock(&adapter->crit_lock);
-		netdev_unlock(netdev);
-		queue_delayed_work(adapter->wq,
-				   &adapter->watchdog_task,
-				   msecs_to_jiffies(10));
-		return;
+		msec_delay = 10;
+		goto watchdog_done;
 	case __IAVF_RESETTING:
-		mutex_unlock(&adapter->crit_lock);
-		netdev_unlock(netdev);
-		queue_delayed_work(adapter->wq, &adapter->watchdog_task,
-				   HZ * 2);
-		return;
+		msec_delay = 2000;
+		goto watchdog_done;
 	case __IAVF_DOWN:
 	case __IAVF_DOWN_PENDING:
 	case __IAVF_TESTING:
@@ -3068,36 +3042,41 @@ static void iavf_watchdog_task(struct work_struct *work)
 		break;
 	case __IAVF_REMOVE:
 	default:
-		mutex_unlock(&adapter->crit_lock);
-		netdev_unlock(netdev);
-		return;
+		msec_delay = IAVF_NO_RESCHED;
+		goto watchdog_done;
 	}
 
 	/* check for hw reset */
 	reg_val = rd32(hw, IAVF_VF_ARQLEN1) & IAVF_VF_ARQLEN1_ARQENABLE_MASK;
 	if (!reg_val) {
 		adapter->aq_required = 0;
 		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
 		dev_err(&adapter->pdev->dev, "Hardware reset detected\n");
 		iavf_schedule_reset(adapter, IAVF_FLAG_RESET_PENDING);
-		mutex_unlock(&adapter->crit_lock);
-		netdev_unlock(netdev);
-		queue_delayed_work(adapter->wq,
-				   &adapter->watchdog_task, HZ * 2);
-		return;
+		msec_delay = 2000;
+		goto watchdog_done;
 	}
 
 	mutex_unlock(&adapter->crit_lock);
 restart_watchdog:
 	netdev_unlock(netdev);
+
+	/* note that we schedule a different task */
 	if (adapter->state >= __IAVF_DOWN)
 		queue_work(adapter->wq, &adapter->adminq_task);
 	if (adapter->aq_required)
-		queue_delayed_work(adapter->wq, &adapter->watchdog_task,
-				   msecs_to_jiffies(20));
+		msec_delay = 20;
 	else
+		msec_delay = 2000;
+	goto skip_unlock;
+watchdog_done:
+	mutex_unlock(&adapter->crit_lock);
+	netdev_unlock(netdev);
+skip_unlock:
+
+	if (msec_delay != IAVF_NO_RESCHED)
 		queue_delayed_work(adapter->wq, &adapter->watchdog_task,
-				   HZ * 2);
+				   msecs_to_jiffies(msec_delay));
 }
 
 /**
-- 
2.39.3

