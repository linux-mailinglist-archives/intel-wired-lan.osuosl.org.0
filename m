Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5C164CE1A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Dec 2022 17:32:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E0B5F60E2E;
	Wed, 14 Dec 2022 16:32:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E0B5F60E2E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671035546;
	bh=B//DhhrgXUj+kXetI982fslaa++/BISfXp7yUKtwRpA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mHGWg9qMAFadm/peV4PZE8ZY52lmaK9m+zVQsrC2EJq5mwJfAwN93G6Vxx0SfPxcK
	 Jaw8AI1TPV2UXY70OSmI6cad38eoWQr29+e5+LrIkhqvR4reMDXk4K8wsfos5WMXPF
	 VqXwuECrvn/AZBeSvfFJtVGL15AqN7n1byBTdQgcbswhvV4tkMtdjOBS4m2aH/l0BJ
	 Np8TEEv2CDljHn9PYEx7pDt/DghOmTJkT1ITSAsjltnK3uWxHYhq+g/BxV3Qud+DVR
	 6kjKN5dsicghZ+MEUHa3o1+U1RPl/G9gN3n85cxT/jiAIENtfBjhi5Q0b3TfUXkkTC
	 TOtLZ2f6/Xopw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IaVJ5Rvbc6us; Wed, 14 Dec 2022 16:32:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CCA9460C19;
	Wed, 14 Dec 2022 16:32:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CCA9460C19
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3722F1BF344
 for <intel-wired-lan@osuosl.org>; Wed, 14 Dec 2022 16:32:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1DA3D4183E
 for <intel-wired-lan@osuosl.org>; Wed, 14 Dec 2022 16:32:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1DA3D4183E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fqPhOoGKbKBh for <intel-wired-lan@osuosl.org>;
 Wed, 14 Dec 2022 16:32:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E8BF41830
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3E8BF41830
 for <intel-wired-lan@osuosl.org>; Wed, 14 Dec 2022 16:32:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="298795328"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="298795328"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 08:32:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="681557544"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="681557544"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by orsmga001.jf.intel.com with ESMTP; 14 Dec 2022 08:32:01 -0800
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org,
	vinicius.gomes@intel.com
Date: Thu, 15 Dec 2022 00:29:09 +0800
Message-Id: <20221214162909.22856-4-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221214162909.22856-1-muhammad.husaini.zulkifli@intel.com>
References: <20221214162909.22856-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671035531; x=1702571531;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=zM/pc/DOr6UZq595mDutEP/2hhfi6erj+I8dpFV44M0=;
 b=lO5Z7gSnYzkjgqPMxiwLwolZQNRXukDqUt4ViTrmMrBIyIuYI5UjkNa0
 PyGBLsjapeF8z28hLr9ILhbAeEeXz1M4QFSA0vXFd6O45YDgxrbEvP/Du
 I7B4oEkEam28JztEc82xZti078jMNlq0ZXMTtwkNND95w95DPnMlICxeO
 M9EFyCNXB5vkhRmx13wbW97FjuoynreFDXK8fUYfce4LNKqAN4tRTiO1W
 4Ai/yaLbaO7quMnWxxawQB9s1sYIlGgXbimswM6EUtfb22IzYpvQcv8Wm
 9OLvsdx9iXhep2BsAJue0DTjPXRzmLi6UsJmOib09ao8ViImDTN2pZX3Z
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lO5Z7gSn
Subject: [Intel-wired-lan] [PATCH net-next v2 3/3] igc: Remove reset adapter
 task for i226 during disable tsn config
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
Cc: muhammad.husaini.zulkifli@intel.com, anthony.l.nguyen@intel.com,
 tee.min.tan@linux.intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

I225 have limitation when programming the BaseTime register which required
a power cycle of the controller. This limitation already lifted in I226.
This patch removes the restriction so that when user configure/remove any
TSN mode, it would not go into power cycle reset adapter.

How to test:

Schedule any gate control list configuration or delete it.

Example:

1)

BASE_TIME=$(date +%s%N)
tc qdisc replace dev $interface_name parent root handle 100 taprio \
    num_tc 4 \
    map 3 1 0 2 3 3 3 3 3 3 3 3 3 3 3 3 \
    queues 1@0 1@1 1@2 1@3 \
    base-time $BASE_TIME \
    sched-entry S 0F 1000000 \
    flags 0x2

2) tc qdisc del dev $intername_name root

Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c |  6 +++---
 drivers/net/ethernet/intel/igc/igc_tsn.c  | 11 +++--------
 drivers/net/ethernet/intel/igc/igc_tsn.h  |  2 +-
 3 files changed, 7 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index bf66395a59bb..fdb7f0b26ed0 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6003,7 +6003,7 @@ static int igc_tsn_enable_launchtime(struct igc_adapter *adapter,
 	if (err)
 		return err;
 
-	return igc_tsn_offload_apply(adapter, qopt->enable);
+	return igc_tsn_offload_apply(adapter);
 }
 
 static int igc_tsn_clear_schedule(struct igc_adapter *adapter)
@@ -6117,7 +6117,7 @@ static int igc_tsn_enable_qbv_scheduling(struct igc_adapter *adapter,
 	if (err)
 		return err;
 
-	return igc_tsn_offload_apply(adapter, qopt->enable);
+	return igc_tsn_offload_apply(adapter);
 }
 
 static int igc_save_cbs_params(struct igc_adapter *adapter, int queue,
@@ -6185,7 +6185,7 @@ static int igc_tsn_enable_cbs(struct igc_adapter *adapter,
 	if (err)
 		return err;
 
-	return igc_tsn_offload_apply(adapter, qopt->enable);
+	return igc_tsn_offload_apply(adapter);
 }
 
 static int igc_setup_tc(struct net_device *dev, enum tc_setup_type type,
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index c2cc5d406213..b03c6168bd23 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -289,21 +289,16 @@ int igc_tsn_reset(struct igc_adapter *adapter)
 	return err;
 }
 
-int igc_tsn_offload_apply(struct igc_adapter *adapter, bool enable)
+int igc_tsn_offload_apply(struct igc_adapter *adapter)
 {
 	struct igc_hw *hw = &adapter->hw;
-	int err;
 
-	if (netif_running(adapter->netdev) &&
-	    (igc_is_device_id_i225(hw) || !enable)) {
+	if (netif_running(adapter->netdev) && igc_is_device_id_i225(hw)) {
 		schedule_work(&adapter->reset_task);
 		return 0;
 	}
 
-	err = igc_tsn_enable_offload(adapter);
-	if (err < 0)
-		return err;
+	igc_tsn_reset(adapter);
 
-	adapter->flags = igc_tsn_new_flags(adapter);
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.h b/drivers/net/ethernet/intel/igc/igc_tsn.h
index 631222bb6eb5..b53e6af560b7 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.h
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.h
@@ -4,7 +4,7 @@
 #ifndef _IGC_TSN_H_
 #define _IGC_TSN_H_
 
-int igc_tsn_offload_apply(struct igc_adapter *adapter, bool enable);
+int igc_tsn_offload_apply(struct igc_adapter *adapter);
 int igc_tsn_reset(struct igc_adapter *adapter);
 void igc_tsn_adjust_txtime_offset(struct igc_adapter *adapter);
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
