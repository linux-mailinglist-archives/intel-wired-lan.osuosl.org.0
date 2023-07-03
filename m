Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 58123745881
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jul 2023 11:36:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F1A2760E3E;
	Mon,  3 Jul 2023 09:36:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F1A2760E3E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688376986;
	bh=L5564O4N6dayL12OCyA0UpsN2Qs0cCtEbdTCORVIz44=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=dJ0O4qmlkeQCQs8SaEs9tZ6oV5q4+NTJd/w+EoUBcEI+C3UJrKBs31jRGCvn3QvXG
	 wBZlve4C0Q6iBDAeHhMUa6hfVV2v0JCfI3OsIcfEJKu0xOXoBtxWmdCAVV91xW1Km0
	 cQR17MavX3kFkpm6OU5LwWwEqGzWGjVBN0a54fGUhiLTz93gm7yWRy8fDL/nO3+d7N
	 nKhczdm/NFb0Hb/2GRi2lBMh08DiTNd0BtmJEWT6BuICNc/R3rkqibZ0OgZK2lNnxa
	 Sm2GLUhPLehXNltZfPc3dobn21JyfGV+VnJdkTgJXcvMvEqVNZY2sLKlxpeekgQ3WJ
	 rzswQN5SOZbzA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cm7jfiwOnmsH; Mon,  3 Jul 2023 09:36:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C2246606FF;
	Mon,  3 Jul 2023 09:36:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C2246606FF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B268E1BF2F3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 09:36:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8A7CE40420
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 09:36:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A7CE40420
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yV5GQDy1FE6r for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jul 2023 09:36:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B891940198
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B891940198
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 09:36:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="361697746"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="361697746"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 02:35:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="748094035"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="748094035"
Received: from gklab-018-208.igk.intel.com ([10.102.18.208])
 by orsmga008.jf.intel.com with ESMTP; 03 Jul 2023 02:35:49 -0700
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  3 Jul 2023 11:35:46 +0200
Message-Id: <20230703093546.74984-1-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688376978; x=1719912978;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yJZyMGUVU0AYcGQHZkYf8KR/YDM/PK7ZdyNNdswlYss=;
 b=Ap6x6EvU7Z/gvfh/6L3bVMa1LGpxrecVsAFe22Q/uEn85y7y6AED19BE
 HWjAqrYx7uzN9N3ekvBjvbigSfrDDl4Pbhcfmig+weaC1VCmxYgzAo7v7
 lAiZNB2kz6NFMN8o5y1b2x6zLIXg2uOSqRGrvuvEfEomsso3P9iUH7gT1
 WtNlG88p6RV1VMzkWHZqCZU7Rj/Nk8w9aqVTWnQUvNQau5xUuXSM1VwVd
 BWLuduQ81sEhiVTRw9PjeEwMXLtJlh2RPCrFsqPOjao7MKWuctNDcZ7k6
 wCrd8k6Lvu0y9oQxZkWfGo6UMTuixOQUWde38hGXili96gjKztrYzCDcC
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ap6x6EvU
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: Fix RDMA VSI removal
 during queue rebuild
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
Cc: Kamil Maziarz <kamil.maziarz@intel.com>,
 Rafal Rogalski <rafalx.rogalski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Rafal Rogalski <rafalx.rogalski@intel.com>

During qdisc create/delete, it is necessary to rebuild the queue
of VSIs. An error occurred because the VSIs created by RDMA were
still active.

Added check if RDMA is active. If yes, it disallows qdisc changes
and writes a message in the system logs.

Fixes: 348048e724a0 ("ice: Implement iidc operations")
Signed-off-by: Rafal Rogalski <rafalx.rogalski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a1f7c8edc22f..23f41393395f 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -9031,6 +9031,7 @@ ice_setup_tc(struct net_device *netdev, enum tc_setup_type type,
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_pf *pf = np->vsi->back;
+	bool locked = false;
 	int err;
 
 	switch (type) {
@@ -9040,10 +9041,27 @@ ice_setup_tc(struct net_device *netdev, enum tc_setup_type type,
 						  ice_setup_tc_block_cb,
 						  np, np, true);
 	case TC_SETUP_QDISC_MQPRIO:
+		if (pf->adev) {
+			mutex_lock(&pf->adev_mutex);
+			device_lock(&pf->adev->dev);
+			locked = true;
+			if (pf->adev->dev.driver) {
+				netdev_err(netdev, "Cannot change qdisc when RDMA is active\n");
+				err = -EBUSY;
+				goto adev_unlock;
+			}
+		}
+
 		/* setup traffic classifier for receive side */
 		mutex_lock(&pf->tc_mutex);
 		err = ice_setup_tc_mqprio_qdisc(netdev, type_data);
 		mutex_unlock(&pf->tc_mutex);
+
+adev_unlock:
+		if (locked) {
+			device_unlock(&pf->adev->dev);
+			mutex_unlock(&pf->adev_mutex);
+		}
 		return err;
 	default:
 		return -EOPNOTSUPP;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
