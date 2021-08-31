Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 125F63FC698
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Aug 2021 13:39:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9C5C0400C6;
	Tue, 31 Aug 2021 11:39:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 31nhQPez7hEV; Tue, 31 Aug 2021 11:39:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 25F6740485;
	Tue, 31 Aug 2021 11:39:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8CE781BF39C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 11:39:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7BE73605BF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 11:39:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oi0B8zpqtUz8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Aug 2021 11:39:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F0F07600C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 11:39:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10092"; a="304029343"
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; d="scan'208";a="304029343"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2021 04:39:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; d="scan'208";a="577096957"
Received: from amlin-19-169.igk.intel.com ([10.102.19.169])
 by orsmga004.jf.intel.com with ESMTP; 31 Aug 2021 04:39:06 -0700
From: Karen Sornek <karen.sornek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 31 Aug 2021 13:39:01 +0200
Message-Id: <20210831113901.156388-1-karen.sornek@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1] iavf: Refactor string format
 to avoid static analysis warnings
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
Cc: Karen Sornek <karen.sornek@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Change format to match variable type that is used in string.

Use %u format for unsigned variable and %d format for signed variable
to remove static analysis warnings.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@intel.com>
Signed-off-by: Karen Sornek <karen.sornek@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c     | 6 +++---
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 80437ef26..4eea47a47 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -441,14 +441,14 @@ iavf_request_traffic_irqs(struct iavf_adapter *adapter, char *basename)
 
 		if (q_vector->tx.ring && q_vector->rx.ring) {
 			snprintf(q_vector->name, sizeof(q_vector->name),
-				 "iavf-%s-TxRx-%d", basename, rx_int_idx++);
+				 "iavf-%s-TxRx-%u", basename, rx_int_idx++);
 			tx_int_idx++;
 		} else if (q_vector->rx.ring) {
 			snprintf(q_vector->name, sizeof(q_vector->name),
-				 "iavf-%s-rx-%d", basename, rx_int_idx++);
+				 "iavf-%s-rx-%u", basename, rx_int_idx++);
 		} else if (q_vector->tx.ring) {
 			snprintf(q_vector->name, sizeof(q_vector->name),
-				 "iavf-%s-tx-%d", basename, tx_int_idx++);
+				 "iavf-%s-tx-%u", basename, tx_int_idx++);
 		} else {
 			/* skip this unused q_vector */
 			continue;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 9c128462e..4030cd764 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -1013,7 +1013,7 @@ print_link_msg:
 	} else if (link_speed_mbps == SPEED_UNKNOWN) {
 		snprintf(speed, IAVF_MAX_SPEED_STRLEN, "%s", "Unknown Mbps");
 	} else {
-		snprintf(speed, IAVF_MAX_SPEED_STRLEN, "%u %s",
+		snprintf(speed, IAVF_MAX_SPEED_STRLEN, "%d %s",
 			 link_speed_mbps, "Mbps");
 	}
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
