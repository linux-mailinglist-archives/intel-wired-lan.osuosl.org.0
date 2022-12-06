Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E67644754
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Dec 2022 16:01:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 84E6340463;
	Tue,  6 Dec 2022 15:01:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 84E6340463
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670338904;
	bh=iYxy9qywmHJrAjet4Q+4aRZ+tJXIGXZDDj3IXsltCQs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=oK43Ccr/B2Y820BzYqFtWherHj2xGM8ynC0rpisgNOcy1s7mWG2h5kGTBzXWgUeKQ
	 RDnI2lpyvmx0xl8Qt1/t7/vt7kzDCVyhtGbuS+IvdGbOLI77UAqkY9sUcC9HUcFxTP
	 7mxRGMtLOKYGhXlLhNd7AmK7CfaV1xJDiC7xJx1okhdG5SjvP/FeubJcKP5VA4qYjJ
	 vGs2+ZTU3ow2EHd0fRgO0Evq85K4L6dsoa5O33GOGVXCm6XBN+CBICpAraiNc5WwdR
	 7GhpkUYkrJ+PWiI2PJINqSlVWst54TIbglBD+Mn+NScJ4cPR7xmXaiN709sm+USFBO
	 Ftcjg79g6jEpA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ju5VqJBbCAn5; Tue,  6 Dec 2022 15:01:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4D6DE40363;
	Tue,  6 Dec 2022 15:01:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4D6DE40363
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8DA831BF35C
 for <intel-wired-lan@osuosl.org>; Tue,  6 Dec 2022 15:01:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 755F040363
 for <intel-wired-lan@osuosl.org>; Tue,  6 Dec 2022 15:01:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 755F040363
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lrk93WAzbXTf for <intel-wired-lan@osuosl.org>;
 Tue,  6 Dec 2022 15:01:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 74D9740272
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 74D9740272
 for <intel-wired-lan@osuosl.org>; Tue,  6 Dec 2022 15:01:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="296998252"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="296998252"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 07:01:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="623931151"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="623931151"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by orsmga006.jf.intel.com with ESMTP; 06 Dec 2022 07:01:34 -0800
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org,
	vinicius.gomes@intel.com
Date: Tue,  6 Dec 2022 22:58:56 +0800
Message-Id: <20221206145856.13648-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670338897; x=1701874897;
 h=from:to:cc:subject:date:message-id;
 bh=EQTyg1W4wWaLbHtWd1EtL/643CVeGLwaWmg13Q4PVqc=;
 b=SCbI02qt/wL0nWiHCZLro6A+C3X+Qz9hP01POAtpNNm//FlMvO1AaBlp
 bKMXAm+vubH6TGabGyI//7j9UzOLRRC/mWfLFj1uAHn/ZLBAefd5cfFMz
 QsEKxPNz+YmHRPFc/95pnzWvLzsdVYWCKBVpFCUovvdG531EKCPKduhTj
 DyJ0V5z/TaidfnN0qMaaoB5MjLb3uSKPOb0QHoyOSmT7yFo49s5HGVrm1
 OJT4Yp7LoFlo0DCydwAzMJoa35TXC7Vqg86i9AlJFJHHNSt3MHUNDlfIg
 2xhCQiDzgf6c+woUmxmwQ51Diak+VMMiEjyHOteN0LqWLvepMiBiZ196m
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SCbI02qt
Subject: [Intel-wired-lan] [PATCH v1] igc: Remove i226 restriction for
 BaseTime register
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

Fixes: 67523278bbe0 ("igc: enable Qbv configuration for 2nd GCL")
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
