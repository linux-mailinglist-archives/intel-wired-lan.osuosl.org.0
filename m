Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A03A402943
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Sep 2021 14:55:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3875D40295;
	Tue,  7 Sep 2021 12:55:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cnooRJyeuPHd; Tue,  7 Sep 2021 12:55:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E59640292;
	Tue,  7 Sep 2021 12:55:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2B50D1BF334
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Sep 2021 12:54:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 27AD3605F5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Sep 2021 12:54:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NVs3IU5hF8A2 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Sep 2021 12:54:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 890F4605DF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Sep 2021 12:54:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10099"; a="218328494"
X-IronPort-AV: E=Sophos;i="5.85,274,1624345200"; d="scan'208";a="218328494"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 05:54:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,274,1624345200"; d="scan'208";a="503062334"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by fmsmga008.fm.intel.com with ESMTP; 07 Sep 2021 05:54:52 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  7 Sep 2021 12:53:43 +0000
Message-Id: <20210907125343.258489-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2] iavf: Fix refreshing iavf adapter
 stats on ethtool request
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
Cc: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently iavf adapter statistics are refreshed only in a
watchdog task, triggered approximately every two seconds,
which causes some ethtool requests to return outdated values.

Add explicit statistics refresh when requested by ethtool -S.

Fixes: b476b0030e61 ("iavf: Move commands processing to the separate function")
Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h         |  2 ++
 drivers/net/ethernet/intel/iavf/iavf_ethtool.c |  3 +++
 drivers/net/ethernet/intel/iavf/iavf_main.c    | 18 ++++++++++++++++++
 3 files changed, 23 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 21c95775509a..afe6b0d24a9a 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -306,6 +306,7 @@ struct iavf_adapter {
 #define IAVF_FLAG_AQ_DEL_FDIR_FILTER		BIT(26)
 #define IAVF_FLAG_AQ_ADD_ADV_RSS_CFG		BIT(27)
 #define IAVF_FLAG_AQ_DEL_ADV_RSS_CFG		BIT(28)
+#define IAVF_FLAG_AQ_REQUEST_STATS		BIT(29)
 
 	/* OS defined structs */
 	struct net_device *netdev;
@@ -399,6 +400,7 @@ int iavf_up(struct iavf_adapter *adapter);
 void iavf_down(struct iavf_adapter *adapter);
 int iavf_process_config(struct iavf_adapter *adapter);
 void iavf_schedule_reset(struct iavf_adapter *adapter);
+void iavf_schedule_request_stats(struct iavf_adapter *adapter);
 void iavf_reset(struct iavf_adapter *adapter);
 void iavf_set_ethtool_ops(struct net_device *netdev);
 void iavf_update_stats(struct iavf_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 7cbe59beeebb..21c4d4180f3e 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -354,6 +354,9 @@ static void iavf_get_ethtool_stats(struct net_device *netdev,
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 	unsigned int i;
 
+	/* Explicitly request stats refresh */
+	iavf_schedule_request_stats(adapter);
+
 	iavf_add_ethtool_stats(&data, adapter, iavf_gstrings_stats);
 
 	rcu_read_lock();
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 80437ef26391..09e914c49c86 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -165,6 +165,19 @@ void iavf_schedule_reset(struct iavf_adapter *adapter)
 	}
 }
 
+/**
+ * iavf_schedule_request_stats - Set the flags and schedule statistics request
+ * @adapter: board private structure
+ *
+ * Sets IAVF_FLAG_AQ_REQUEST_STATS flag so iavf_watchdog_task() will explicitly
+ * request and refresh ethtool stats
+ **/
+void iavf_schedule_request_stats(struct iavf_adapter *adapter)
+{
+	adapter->aq_required |= IAVF_FLAG_AQ_REQUEST_STATS;
+	mod_delayed_work(iavf_wq, &adapter->watchdog_task, 0);
+}
+
 /**
  * iavf_tx_timeout - Respond to a Tx Hang
  * @netdev: network interface device structure
@@ -1700,6 +1713,11 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
 		iavf_del_adv_rss_cfg(adapter);
 		return 0;
 	}
+	if (adapter->aq_required & IAVF_FLAG_AQ_REQUEST_STATS) {
+		iavf_request_stats(adapter);
+		return IAVF_SUCCESS;
+	}
+
 	return -EAGAIN;
 }
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
