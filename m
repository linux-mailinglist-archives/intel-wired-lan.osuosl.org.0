Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E5AB4314E8F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Feb 2021 13:01:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8FDEB6F742
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Feb 2021 12:01:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5vb4sw6FQFJk for <lists+intel-wired-lan@lfdr.de>;
	Tue,  9 Feb 2021 12:00:59 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 861926F8A0; Tue,  9 Feb 2021 12:00:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7387C6F5CC;
	Tue,  9 Feb 2021 12:00:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EF8531BF97E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Feb 2021 12:00:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DD4306EEFD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Feb 2021 12:00:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PnY8HR3OBvgy for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Feb 2021 12:00:40 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 4C1216F5DB; Tue,  9 Feb 2021 12:00:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0D2226F8A0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Feb 2021 12:00:07 +0000 (UTC)
IronPort-SDR: qGr0l11xIid2JQznCrFJ+zLuhiyDmQcdTBOUdzx/EdPi3sQCwri4E4B4OzEUOC2o45PU2FcZsq
 45M3aDG9C3UA==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="243362799"
X-IronPort-AV: E=Sophos;i="5.81,164,1610438400"; d="scan'208";a="243362799"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 04:00:06 -0800
IronPort-SDR: vKLRKPtGuVtEa1V/eh7krR1ZKoEzlJbTPpxyWvqNm9iUwjnSoPieTD0YV4LSMGdYQC2iVdTWXw
 yEuAKjem523A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,164,1610438400"; d="scan'208";a="361792848"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by orsmga006.jf.intel.com with ESMTP; 09 Feb 2021 04:00:05 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  9 Feb 2021 11:59:38 +0000
Message-Id: <20210209115938.2266-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net v2] iavf: Fix return of set the new
 channel count
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fixed return correct code from set the new channel count.
Implemented by check if reset is done in appropriate time.
This solution give a extra time to pf for reset vf in case
when user want set new channel count for all vfs.
Without this patch it is possible to return misleading output
code to user and vf reset not to be correctly performed by pf.

Fixes: 5520deb15326("iavf: Enable support for up to 16 queues")
Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
v2: 
 - added missing define in iavf.h file 

 drivers/net/ethernet/intel/iavf/iavf.h         |  1 +
 drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 15 +++++++++++++++
 2 files changed, 16 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index bda2a90..09e5b9c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -220,6 +220,7 @@ struct iavf_cloud_filter {
 	bool add;		/* filter needs to be added */
 };
 
+#define IAVF_RESET_WAIT_COUNT 500
 #define IAVF_RESET_WAIT_MS 10
 #define IAVF_RESET_WAIT_DETECTED_COUNT 500
 #define IAVF_RESET_WAIT_COMPLETE_COUNT 2000
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 3ebfef7..d9ed4d4 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -1522,6 +1522,7 @@ static int iavf_set_channels(struct net_device *netdev,
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 	u32 num_req = ch->combined_count;
+	int i;
 
 	if ((adapter->vf_res->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_ADQ) &&
 	    adapter->num_tc) {
@@ -1544,6 +1545,20 @@ static int iavf_set_channels(struct net_device *netdev,
 	adapter->num_req_queues = num_req;
 	adapter->flags |= IAVF_FLAG_REINIT_ITR_NEEDED;
 	iavf_schedule_reset(adapter);
+
+	/* wait for the reset is done */
+	for (i = 0; i < IAVF_RESET_WAIT_COUNT; i++) {
+		msleep(IAVF_RESET_WAIT_MS);
+		if (adapter->flags & IAVF_FLAG_RESET_PENDING)
+			continue;
+		break;
+	}
+	if (i == IAVF_RESET_WAIT_COUNT) {
+		adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
+		adapter->num_active_queues = num_req;
+		return -EOPNOTSUPP;
+	}
+
 	return 0;
 }
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
