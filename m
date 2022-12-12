Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D186497FE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Dec 2022 03:40:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F969403B8;
	Mon, 12 Dec 2022 02:40:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F969403B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670812815;
	bh=B//DhhrgXUj+kXetI982fslaa++/BISfXp7yUKtwRpA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HwHXuT0j9N7rI2Dxgvta3XxioNN2CdEEEkgkR+3QRX82Vu+JLfwHaBnSxh5XVo/ul
	 6hAKqdQ1lcu7tkzlonJJ/twTtDNw7ZtOlICgW5OS6lfC7F8pi0MiMQ3Cgq2Q/CN/yb
	 sFkn6n25ZfKdvLEtaCpfI+UPJVo3BZkJUCovjPdHWBpI7wg2u+B/xIEQkKgsqJU+6r
	 PAkjkzMFPDEAyOQWzogjYwPqQoPV9NyEL0YldFCe58Sq9eT5dCbBYBWl9PNbIJkG5e
	 Pkt460ZFDuqYez1mDkNwy19ShZ5eaPUStXnP6SNCD1qWCbl4thRyCCWWAmfZ63SYfh
	 Z5PqUW1qvi43w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ODibIweusn0q; Mon, 12 Dec 2022 02:40:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4C8B94026C;
	Mon, 12 Dec 2022 02:40:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4C8B94026C
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1FA3B1BF29D
 for <intel-wired-lan@osuosl.org>; Mon, 12 Dec 2022 02:40:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EF29560BE9
 for <intel-wired-lan@osuosl.org>; Mon, 12 Dec 2022 02:40:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF29560BE9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wgJU9bD4eaaJ for <intel-wired-lan@osuosl.org>;
 Mon, 12 Dec 2022 02:40:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4A5D160C08
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4A5D160C08
 for <intel-wired-lan@osuosl.org>; Mon, 12 Dec 2022 02:40:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="297431586"
X-IronPort-AV: E=Sophos;i="5.96,237,1665471600"; d="scan'208";a="297431586"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2022 18:39:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="648006971"
X-IronPort-AV: E=Sophos;i="5.96,237,1665471600"; d="scan'208";a="648006971"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by orsmga002.jf.intel.com with ESMTP; 11 Dec 2022 18:39:55 -0800
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org,
	vinicius.gomes@intel.com
Date: Mon, 12 Dec 2022 10:37:06 +0800
Message-Id: <20221212023706.13384-4-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221212023706.13384-1-muhammad.husaini.zulkifli@intel.com>
References: <20221212023706.13384-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670812801; x=1702348801;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=zM/pc/DOr6UZq595mDutEP/2hhfi6erj+I8dpFV44M0=;
 b=aehwsVrzBmNKiZi3xyYyJuGEEMa2AsFai42O2m8lJFtOh44Jip3jCZb1
 3Qt9bMYVpmmKQ8AeSH4e7C47QFUj0Zn3HhW0FTik2I1VPkq0Br8M0fnfo
 ZZ+o022ExXmBQuTupwh/TXGOLWHjvqBOc4ykpQtfBTYBJc++VbjcJT+FP
 WyEAMlJoo7o7Vw+5KVYnWlNi945hHplKsjhn0bnxl33jae3j1NYEX2lZr
 b87DctM6fBQ+kffG4YHRP+dad0uC9lrVwt11WFqfzzXJcgs8je+sgQhyJ
 HWy6qltmKqFOuGIsZzAc971m7HAD9TdlAU7sUHfSSw123dsECmI0QO1tU
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aehwsVrz
Subject: [Intel-wired-lan] [PATCH net-next v1 3/3] igc: Remove reset adapter
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
