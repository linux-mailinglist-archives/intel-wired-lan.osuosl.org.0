Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DE04854C9FA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jun 2022 15:39:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 865A041962;
	Wed, 15 Jun 2022 13:39:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yxey4ODWy4KB; Wed, 15 Jun 2022 13:39:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E88E9418CA;
	Wed, 15 Jun 2022 13:39:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AC57F1BF404
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jun 2022 13:39:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9A7AC60FA1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jun 2022 13:39:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vmKSpRzwj9L2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jun 2022 13:39:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D717D60A87
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jun 2022 13:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655300370; x=1686836370;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1hRF1A8efDSf6afQNe+G1aPmLQwj8OB05c9LVO1d1ng=;
 b=AYt7QIN6aRVgLoX4NWJSRkBcEz18bBxljxRR5DHXgd2dvcE2hHhFY1R+
 yk55bMZZo0zji+oB2VbSSlRLE9LLxwBoBEnr5P3JdoHnDSIEFUqW8HyOn
 Gbvb4EG189wac/JFMjzKcdUKEnKQKKTnbTPRa/XnS0uBc93mDNP5qtzAy
 wEQmyX3Cwg3EvbxHSzcJm/Rq18NrV6kjBuMHm9BUSDjb2Xokhd6nSulkI
 zOYgg1cK2LK9hJ5F/sS6Xdszlm4gb5+NvnU5eLzbEjvia1KyW9rm/mwa6
 NSWgvCJKsPoyDAhRB45JCTP1G2x1WJQBElG5BsAHozo9BeFzJ7V+EKr6B Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="261986206"
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="261986206"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 06:39:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="712942976"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by orsmga004.jf.intel.com with ESMTP; 15 Jun 2022 06:39:28 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 15 Jun 2022 15:36:29 +0200
Message-Id: <20220615133628.3187450-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2] iavf: Fix 'tc qdisc show' listing
 too many queues
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>,
 Kiran Patil <kiran.patil@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>

Fix tc qdisc show dev <ethX> root displaying too many fq_codel qdiscs.
tc_modify_qdisc, which is caller of ndo_setup_tc, expects driver to call
netif_set_real_num_tx_queues, which prepares qdiscs.
Without this patch, fq_codel qdiscs would not be adjusted to number of
queues on VF.
e.g.:
tc qdisc show dev <ethX>
qdisc mq 0: root
qdisc fq_codel 0: parent :4 limit 10240p flows 1024 quantum 1514 target 5ms interval 100ms memory_limit 32Mb ecn drop_batch 64
qdisc fq_codel 0: parent :3 limit 10240p flows 1024 quantum 1514 target 5ms interval 100ms memory_limit 32Mb ecn drop_batch 64
qdisc fq_codel 0: parent :2 limit 10240p flows 1024 quantum 1514 target 5ms interval 100ms memory_limit 32Mb ecn drop_batch 64
qdisc fq_codel 0: parent :1 limit 10240p flows 1024 quantum 1514 target 5ms interval 100ms memory_limit 32Mb ecn drop_batch 64
tc qdisc add dev <ethX> root mqprio num_tc 2 map 1 0 0 0 0 0 0 0 queues 1@0 1@1 hw 1 mode channel shaper bw_rlimit max_rate 5000Mbit 150Mbit
tc qdisc show dev <ethX>
qdisc mqprio 8003: root tc 2 map 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
             queues:(0:0) (1:1)
             mode:channel
             shaper:bw_rlimit   max_rate:5Gbit 150Mbit
qdisc fq_codel 0: parent 8003:4 limit 10240p flows 1024 quantum 1514 target 5ms interval 100ms memory_limit 32Mb ecn drop_batch 64
qdisc fq_codel 0: parent 8003:3 limit 10240p flows 1024 quantum 1514 target 5ms interval 100ms memory_limit 32Mb ecn drop_batch 64
qdisc fq_codel 0: parent 8003:2 limit 10240p flows 1024 quantum 1514 target 5ms interval 100ms memory_limit 32Mb ecn drop_batch 64
qdisc fq_codel 0: parent 8003:1 limit 10240p flows 1024 quantum 1514 target 5ms interval 100ms memory_limit 32Mb ecn drop_batch 64

While after fix:
tc qdisc add dev <ethX> root mqprio num_tc 2 map 1 0 0 0 0 0 0 0 queues 1@0 1@1 hw 1 mode channel shaper bw_rlimit max_rate 5000Mbit 150Mbit
tc qdisc show dev <ethX> #should show 2, shows 4
qdisc mqprio 8004: root tc 2 map 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
             queues:(0:0) (1:1)
             mode:channel
             shaper:bw_rlimit   max_rate:5Gbit 150Mbit
qdisc fq_codel 0: parent 8004:2 limit 10240p flows 1024 quantum 1514 target 5ms interval 100ms memory_limit 32Mb ecn drop_batch 64
qdisc fq_codel 0: parent 8004:1 limit 10240p flows 1024 quantum 1514 target 5ms interval 100ms memory_limit 32Mb ecn drop_batch 64

Fixes: d5b33d024496 ("i40evf: add ndo_setup_tc callback to i40evf")
Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Kiran Patil <kiran.patil@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
v2: little tweaks in commit msg and iavf_main.c (remove/add blank line etc)
---
 drivers/net/ethernet/intel/iavf/iavf.h      |  5 +++++
 drivers/net/ethernet/intel/iavf/iavf_main.c | 21 +++++++++++++++++++++
 2 files changed, 26 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 49aed3e506a6..05cd2dd5bd36 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -427,6 +427,11 @@ struct iavf_adapter {
 	/* lock to protect access to the cloud filter list */
 	spinlock_t cloud_filter_list_lock;
 	u16 num_cloud_filters;
+	/* snapshot of "num_active_queues" before setup_tc for qdisc add
+	 * is invoked. This information is useful during qdisc del flow,
+	 * to restore correct number of queues
+	 */
+	int orig_num_active_queues;
 
 #define IAVF_MAX_FDIR_FILTERS 128	/* max allowed Flow Director filters */
 	u16 fdir_active_fltr;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index f3ecb3bca33d..01eba1211135 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3411,6 +3411,7 @@ static int __iavf_setup_tc(struct net_device *netdev, void *type_data)
 			netif_tx_disable(netdev);
 			iavf_del_all_cloud_filters(adapter);
 			adapter->aq_required = IAVF_FLAG_AQ_DISABLE_CHANNELS;
+			total_qps = adapter->orig_num_active_queues;
 			goto exit;
 		} else {
 			return -EINVAL;
@@ -3454,7 +3455,21 @@ static int __iavf_setup_tc(struct net_device *netdev, void *type_data)
 				adapter->ch_config.ch_info[i].offset = 0;
 			}
 		}
+
+		/* Take snapshot of original config such as "num_active_queues"
+		 * It is used later when delete ADQ flow is exercised, so that
+		 * once delete ADQ flow completes, VF shall go back to its
+		 * original queue configuration
+		 */
+
+		adapter->orig_num_active_queues = adapter->num_active_queues;
+
+		/* Store queue info based on TC so that VF gets configured
+		 * with correct number of queues when VF completes ADQ config
+		 * flow
+		 */
 		adapter->ch_config.total_qps = total_qps;
+
 		netif_tx_stop_all_queues(netdev);
 		netif_tx_disable(netdev);
 		adapter->aq_required |= IAVF_FLAG_AQ_ENABLE_CHANNELS;
@@ -3471,6 +3486,12 @@ static int __iavf_setup_tc(struct net_device *netdev, void *type_data)
 		}
 	}
 exit:
+	if (test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
+		return 0;
+
+	netif_set_real_num_rx_queues(netdev, total_qps);
+	netif_set_real_num_tx_queues(netdev, total_qps);
+
 	return ret;
 }
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
