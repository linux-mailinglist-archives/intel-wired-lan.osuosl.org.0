Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B56C254289E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jun 2022 09:56:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C45F240B54;
	Wed,  8 Jun 2022 07:56:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HsFGgj-3lP7c; Wed,  8 Jun 2022 07:56:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A870F40B0F;
	Wed,  8 Jun 2022 07:56:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AA2451BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 07:56:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9330760AA0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 07:56:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fPbbY0HV-8tP for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jun 2022 07:56:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 804A9600D1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 07:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654674972; x=1686210972;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZmW9i+1jkMhQloKEkKrihHxaH4tDTmDpmqtmwwgl694=;
 b=jBDC5sK5uHkLKeW7N7JDAeNwdkiUdF5aLbcXtOCf1hfcTYEDQTZKXHAB
 hzuL5ynGCw/Re7AEV5b2Z83cmY9Q9UIrsELZQ//vcTaJ0JdxzNtl7gaE1
 mGfvEw4U9rMAboHq2COOnfKeQiFtQhiJZ2BWEC4EkeLJa0qxbouuWoZTq
 lDU8bqGCxMZMHBWagVUWVbEcJILXAl+94E6utloC2hZvc9pJc20rgzxc6
 O6junluqnVmkAEml9FTN6OfccFcDDaQNdUJCdodSGW97/sxmpU1naZdAJ
 ygKEEsaJS9xyfAoGtZH8UnEyjpVz2SaGgocOGbnQCdQ+Gykh89kdQHaYa Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="259964699"
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="259964699"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 00:56:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="565811631"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by orsmga002.jf.intel.com with ESMTP; 08 Jun 2022 00:56:10 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  8 Jun 2022 09:53:58 +0200
Message-Id: <20220608075358.2983111-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2] iavf: Add helper to check if
 iavf_remove() is in progress
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
Cc: Brett Creeley <brett.creeley@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Brett Creeley <brett.creeley@intel.com>

Currently the driver checks if the __IAVF_IN_REMOVE_TASK bit is set in
the adapter's crit_section bitmap. This is fine, but if the
implementation were to ever change, i.e. a mutex was introduced all of
the callers of test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section)
would have to change. Fix this by introducing the
iavf_is_remove_in_progress() helper function.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h      |  1 +
 drivers/net/ethernet/intel/iavf/iavf_main.c | 17 ++++++++++++-----
 2 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index fda1198d2c00..431182461462 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -505,6 +505,7 @@ int iavf_parse_vf_resource_msg(struct iavf_adapter *adapter);
 void iavf_schedule_reset(struct iavf_adapter *adapter);
 void iavf_schedule_request_stats(struct iavf_adapter *adapter);
 void iavf_reset(struct iavf_adapter *adapter);
+bool iavf_is_remove_in_progress(struct iavf_adapter *adapter);
 void iavf_set_ethtool_ops(struct net_device *netdev);
 void iavf_update_stats(struct iavf_adapter *adapter);
 void iavf_reset_interrupt_capability(struct iavf_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 9f7ef52f12b9..b99d7434de44 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -268,6 +268,15 @@ int iavf_lock_timeout(struct mutex *lock, unsigned int msecs)
 	return -1;
 }
 
+/**
+ * iavf_is_remove_in_progress - Check if a iavf_remove() is in progress
+ * @adapter: board private structure
+ */
+bool iavf_is_remove_in_progress(struct iavf_adapter *adapter)
+{
+	return test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section);
+}
+
 /**
  * iavf_schedule_reset - Set the flags and schedule a reset event
  * @adapter: board private structure
@@ -2676,8 +2685,7 @@ static void iavf_watchdog_task(struct work_struct *work)
 				   msecs_to_jiffies(1));
 		return;
 	case __IAVF_INIT_FAILED:
-		if (test_bit(__IAVF_IN_REMOVE_TASK,
-			     &adapter->crit_section)) {
+		if (iavf_is_remove_in_progress(adapter)) {
 			/* Do not update the state and do not reschedule
 			 * watchdog task, iavf_remove should handle this state
 			 * as it can loop forever
@@ -2701,8 +2709,7 @@ static void iavf_watchdog_task(struct work_struct *work)
 		queue_delayed_work(iavf_wq, &adapter->watchdog_task, HZ);
 		return;
 	case __IAVF_COMM_FAILED:
-		if (test_bit(__IAVF_IN_REMOVE_TASK,
-			     &adapter->crit_section)) {
+		if (iavf_is_remove_in_progress(adapter)) {
 			/* Set state to __IAVF_INIT_FAILED and perform remove
 			 * steps. Remove IAVF_FLAG_PF_COMMS_FAILED so the task
 			 * doesn't bring the state back to __IAVF_COMM_FAILED.
@@ -3145,7 +3152,7 @@ static void iavf_adminq_task(struct work_struct *work)
 
 	if ((adapter->flags & IAVF_FLAG_SETUP_NETDEV_FEATURES)) {
 		if (adapter->netdev_registered ||
-		    !test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section)) {
+		    !iavf_is_remove_in_progress(adapter)) {
 			struct net_device *netdev = adapter->netdev;
 
 			rtnl_lock();
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
