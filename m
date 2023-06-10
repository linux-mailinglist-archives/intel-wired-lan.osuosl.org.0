Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B61772A717
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jun 2023 02:44:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 111DE6166F;
	Sat, 10 Jun 2023 00:44:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 111DE6166F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686357849;
	bh=/3E0OP7RNUzLuK6Q99MqErKUlvtbg7z10nNRJlQHPPM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tITcUbIiAejn2e3rat8lS3u1303REWlGYXqtOLjTtIN9yU/kMvoLdvLzN2W0eiYdt
	 97Jfx7bpfT7Ekmqyd8EOxwO5w1d2OonxeIt+n22n106T1E5eQ8BWKjYe/UE2qtAJz4
	 CJizGx4kQmgmlyGVOot+IvA6dghRkJIUXX2Xfz5tN8Wek+/50c03/5UiLUwmwx7aPo
	 ZFI5xuPJbg+/ozh1REJUEII7Pq+BrOa6gphLcm4bT2WpISUbGTv1jU+7icaX4MeHlu
	 Sdf6RneEwQwSdDNJLQJe/9jsC3PL5NC4gBELzZ4g3hMkLpK7vaZDbqBgd1Wu5j8M6j
	 EGS7RmUpCoo2w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4lri3Yd5y2db; Sat, 10 Jun 2023 00:44:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A722C60ACA;
	Sat, 10 Jun 2023 00:44:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A722C60ACA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 85FA91BF372
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 00:43:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5F21982FCE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 00:43:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F21982FCE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7ShY2VBbOrNY for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jun 2023 00:43:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9481E82FBE
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9481E82FBE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 00:43:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="386082836"
X-IronPort-AV: E=Sophos;i="6.00,230,1681196400"; d="scan'208";a="386082836"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 17:43:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="740343117"
X-IronPort-AV: E=Sophos;i="6.00,230,1681196400"; d="scan'208";a="740343117"
Received: from msu-dell.jf.intel.com ([10.166.224.119])
 by orsmga008.jf.intel.com with ESMTP; 09 Jun 2023 17:43:55 -0700
From: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  9 Jun 2023 17:40:24 -0700
Message-Id: <20230610004024.2422272-3-sudheer.mogilappagari@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230610004024.2422272-1-sudheer.mogilappagari@intel.com>
References: <20230610004024.2422272-1-sudheer.mogilappagari@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686357837; x=1717893837;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w0pC0fdI9KvMtxOG2Gz+MtEghYqlzl869LXUFNZGS8M=;
 b=dt0rBPvGKxOaz+C62tTnxmRl86Emg4TM6pCVY5jfnuhWPRzO5+Dp44IE
 I81Jz6sfLtZ+Bd4TIaHrwS34E56sX43rmufSRN7EGgy0VRjEkZ5v8njEY
 At25q1wIJ7pNEVcdzg3VfhbRtB/j7CDG9ONxKaxzsCMC80E5rF+E4AQ62
 NvTEJgnmeJcbD20ZuB/fqrZLLtHaqzCYzWBlguoPaEJzAef1tYSJdDovW
 PtXEIay5ywLHVq32NJqk+ApoiDdsk8COjiy/AGSyIH9v/6LZqYEDwgXgb
 RRf+w+h2M61tmQ19vvi3OTs1qTBw7ui91z2VoN9/0T4QOSj3fcaXeNlag
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dt0rBPvG
Subject: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: Fix tx queue rate limit
 when TCs are configured
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
Cc: anthony.l.nguyen@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sridhar Samudrala <sridhar.samudrala@intel.com>

Configuring tx_maxrate via sysfs interface
/sys/class/net/eth0/queues/tx-1/tx_maxrate was not working when
TCs are configured because always main VSI was being used. Fix by
using correct VSI in ice_set_tx_maxrate when TCs are configured.

Fixes: 1ddef455f4a8 ("ice: Add NDO callback to set the maximum per-queue bitrate")
Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c   |  7 +++++++
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 22 ++++++++++-----------
 drivers/net/ethernet/intel/ice/ice_tc_lib.h |  1 +
 3 files changed, 19 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 043589ff2a7f..fc6871a39bb9 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5954,6 +5954,13 @@ ice_set_tx_maxrate(struct net_device *netdev, int queue_index, u32 maxrate)
 	q_handle = vsi->tx_rings[queue_index]->q_handle;
 	tc = ice_dcb_get_tc(vsi, queue_index);
 
+	vsi = ice_locate_vsi_using_queue(vsi, queue_index);
+	if (!vsi) {
+		netdev_err(netdev, "Invalid VSI for given queue %d\n",
+			   queue_index);
+		return -EINVAL;
+	}
+
 	/* Set BW back to default, when user set maxrate to 0 */
 	if (!maxrate)
 		status = ice_cfg_q_bw_dflt_lmt(vsi->port_info, vsi->idx, tc,
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 76f29a5bf8d7..8b0c30390615 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -734,17 +734,16 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 /**
  * ice_locate_vsi_using_queue - locate VSI using queue (forward to queue action)
  * @vsi: Pointer to VSI
- * @tc_fltr: Pointer to tc_flower_filter
+ * @queue: Queue index
  *
- * Locate the VSI using specified queue. When ADQ is not enabled, always
- * return input VSI, otherwise locate corresponding VSI based on per channel
- * offset and qcount
+ * Locate the VSI using specified "queue". When ADQ is not enabled,
+ * always return input VSI, otherwise locate corresponding
+ * VSI based on per channel "offset" and "qcount"
  */
-static struct ice_vsi *
-ice_locate_vsi_using_queue(struct ice_vsi *vsi,
-			   struct ice_tc_flower_fltr *tc_fltr)
+struct ice_vsi *
+ice_locate_vsi_using_queue(struct ice_vsi *vsi, int queue)
 {
-	int num_tc, tc, queue;
+	int num_tc, tc;
 
 	/* if ADQ is not active, passed VSI is the candidate VSI */
 	if (!ice_is_adq_active(vsi->back))
@@ -754,7 +753,6 @@ ice_locate_vsi_using_queue(struct ice_vsi *vsi,
 	 * upon queue number)
 	 */
 	num_tc = vsi->mqprio_qopt.qopt.num_tc;
-	queue = tc_fltr->action.fwd.q.queue;
 
 	for (tc = 0; tc < num_tc; tc++) {
 		int qcount = vsi->mqprio_qopt.qopt.count[tc];
@@ -796,6 +794,7 @@ ice_tc_forward_action(struct ice_vsi *vsi, struct ice_tc_flower_fltr *tc_fltr)
 	struct ice_pf *pf = vsi->back;
 	struct device *dev;
 	u32 tc_class;
+	int q;
 
 	dev = ice_pf_to_dev(pf);
 
@@ -824,7 +823,8 @@ ice_tc_forward_action(struct ice_vsi *vsi, struct ice_tc_flower_fltr *tc_fltr)
 		/* Determine destination VSI even though the action is
 		 * FWD_TO_QUEUE, because QUEUE is associated with VSI
 		 */
-		dest_vsi = tc_fltr->dest_vsi;
+		q = tc_fltr->action.fwd.q.queue;
+		dest_vsi = ice_locate_vsi_using_queue(vsi, q);
 		break;
 	default:
 		dev_err(dev,
@@ -1701,7 +1701,7 @@ ice_tc_forward_to_queue(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr,
 	/* If ADQ is configured, and the queue belongs to ADQ VSI, then prepare
 	 * ADQ switch filter
 	 */
-	ch_vsi = ice_locate_vsi_using_queue(vsi, fltr);
+	ch_vsi = ice_locate_vsi_using_queue(vsi, fltr->action.fwd.q.queue);
 	if (!ch_vsi)
 		return -EINVAL;
 	fltr->dest_vsi = ch_vsi;
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.h b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
index 8d5e22ac7023..189c73d88535 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
@@ -203,6 +203,7 @@ static inline int ice_chnl_dmac_fltr_cnt(struct ice_pf *pf)
 	return pf->num_dmac_chnl_fltrs;
 }
 
+struct ice_vsi *ice_locate_vsi_using_queue(struct ice_vsi *vsi, int queue);
 int
 ice_add_cls_flower(struct net_device *netdev, struct ice_vsi *vsi,
 		   struct flow_cls_offload *cls_flower);
-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
