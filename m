Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E08A6497FD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Dec 2022 03:40:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3EA6D60C08;
	Mon, 12 Dec 2022 02:40:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3EA6D60C08
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670812811;
	bh=UfNVnLlRJXjKjyBheCqL1n6Lmx8ELl/uX4ATedPmC2o=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jEb0xse3yXDyn3FxrGCkTzVuxXMYlSnk9FKeBsrMk5dqzgSh5BIhwdX6DfL4HpDeh
	 uHVEuSc535bBLyvOBokb8pM1tLXVNwX4kL0RPyCLPY8n3PKdG+KSM1Q+OoPZv4sdli
	 csRXXSf0qzFDIG1z6m8ffAQLMa0eogfCofkqRZG3zEBdzKroC1qjmNdjHKDzzwBEPA
	 ng+CgvDVSQ8Yx2ckZ/66aR76k8aDJZnG/4A0vZiII/JTT6ZsJ2If5gR+mZ1FsAjebG
	 tcw+2crXf1lsP/BTXDDElpE3F5LEB/aE2Xa75MektFlmtr7RtFwwkgi7wgHghQzrLA
	 8aUofOR0vILjA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PAZL1tyY77nl; Mon, 12 Dec 2022 02:40:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 379DE60C06;
	Mon, 12 Dec 2022 02:40:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 379DE60C06
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2922B1BF29D
 for <intel-wired-lan@osuosl.org>; Mon, 12 Dec 2022 02:40:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 049B960BE9
 for <intel-wired-lan@osuosl.org>; Mon, 12 Dec 2022 02:40:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 049B960BE9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dAg3TVYWN5io for <intel-wired-lan@osuosl.org>;
 Mon, 12 Dec 2022 02:40:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED86460BEE
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ED86460BEE
 for <intel-wired-lan@osuosl.org>; Mon, 12 Dec 2022 02:40:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="297431576"
X-IronPort-AV: E=Sophos;i="5.96,237,1665471600"; d="scan'208";a="297431576"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2022 18:39:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="648006968"
X-IronPort-AV: E=Sophos;i="5.96,237,1665471600"; d="scan'208";a="648006968"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by orsmga002.jf.intel.com with ESMTP; 11 Dec 2022 18:39:53 -0800
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org,
	vinicius.gomes@intel.com
Date: Mon, 12 Dec 2022 10:37:05 +0800
Message-Id: <20221212023706.13384-3-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221212023706.13384-1-muhammad.husaini.zulkifli@intel.com>
References: <20221212023706.13384-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670812801; x=1702348801;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=A6x5xS8BdiB5kz0Oduz3W/vnWsffWJBjZ+djudYXKLE=;
 b=UjEgglqNw69I/jrwW8pLl+4r21h8Nn4aqhVPiGYM93wVcBtBKzy0Do3b
 dhM/npoB7neLb3Qs+ghdgqIsdjYSZ8D3CkaZxX+Yed9ucHb8TH/0g9Xp2
 4NGSCDF32JFyI9U135LzGpdwx2niij3NNiJs5uX50Ihau9NamxiZuF7o1
 hBLaUNke7ipzxD4wcemHC5qqSbIQisAW1/gMTBJ7reGx+y46VmAJXY8ag
 IWOf0bS+CwbFWc+iddPF55puD/O0GN34l8m6PtB33AJTxUvDIcfcmKcLx
 vQWS17U+y+6BOy5pp/gqMyJ54k+P9od1Ja/hguimFygC6IHryHpBKxmcQ
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UjEgglqN
Subject: [Intel-wired-lan] [PATCH net-next v1 2/3] igc: enable Qbv
 configuration for 2nd GCL
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

From: Tan Tee Min <tee.min.tan@linux.intel.com>

Make reset task only executes for i225 and Qbv disabling to allow
i226 configure for 2nd GCL without resetting the adapter.

In i226, Tx won't hang if there is a GCL is already running, so in
this case we don't need to set FutScdDis bit.

Signed-off-by: Tan Tee Min <tee.min.tan@linux.intel.com>
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c |  9 +++++----
 drivers/net/ethernet/intel/igc/igc_tsn.c  | 13 +++++++++----
 drivers/net/ethernet/intel/igc/igc_tsn.h  |  2 +-
 3 files changed, 15 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 37221c99b899..bf66395a59bb 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6003,7 +6003,7 @@ static int igc_tsn_enable_launchtime(struct igc_adapter *adapter,
 	if (err)
 		return err;
 
-	return igc_tsn_offload_apply(adapter);
+	return igc_tsn_offload_apply(adapter, qopt->enable);
 }
 
 static int igc_tsn_clear_schedule(struct igc_adapter *adapter)
@@ -6027,6 +6027,7 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 				 struct tc_taprio_qopt_offload *qopt)
 {
 	bool queue_configured[IGC_MAX_TX_QUEUES] = { };
+	struct igc_hw *hw = &adapter->hw;
 	u32 start_time = 0, end_time = 0;
 	size_t n;
 	int i;
@@ -6039,7 +6040,7 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 	if (qopt->base_time < 0)
 		return -ERANGE;
 
-	if (adapter->base_time)
+	if (igc_is_device_id_i225(hw) && adapter->base_time)
 		return -EALREADY;
 
 	if (!validate_schedule(adapter, qopt))
@@ -6116,7 +6117,7 @@ static int igc_tsn_enable_qbv_scheduling(struct igc_adapter *adapter,
 	if (err)
 		return err;
 
-	return igc_tsn_offload_apply(adapter);
+	return igc_tsn_offload_apply(adapter, qopt->enable);
 }
 
 static int igc_save_cbs_params(struct igc_adapter *adapter, int queue,
@@ -6184,7 +6185,7 @@ static int igc_tsn_enable_cbs(struct igc_adapter *adapter,
 	if (err)
 		return err;
 
-	return igc_tsn_offload_apply(adapter);
+	return igc_tsn_offload_apply(adapter, qopt->enable);
 }
 
 static int igc_setup_tc(struct net_device *dev, enum tc_setup_type type,
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 28325dc4fc5b..c2cc5d406213 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -225,7 +225,7 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 		wr32(IGC_TXQCTL(i), txqctl);
 	}
 
-	tqavctrl = rd32(IGC_TQAVCTRL);
+	tqavctrl = rd32(IGC_TQAVCTRL) & ~(IGC_TQAVCTRL_FUTSCDDIS);
 	tqavctrl |= IGC_TQAVCTRL_TRANSMIT_MODE_TSN | IGC_TQAVCTRL_ENHANCED_QAV;
 
 	cycle = adapter->cycle_time;
@@ -242,8 +242,11 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 	} else {
 		/* According to datasheet section 7.5.2.9.3.3, FutScdDis bit
 		 * has to be configured before the cycle time and base time.
+		 * Tx won't hang if there is a GCL is already running,
+		 * so in this case we don't need to set FutScdDis.
 		 */
-		if (igc_is_device_id_i226(hw))
+		if (igc_is_device_id_i226(hw) &&
+		    !(rd32(IGC_BASET_H) || rd32(IGC_BASET_L)))
 			tqavctrl |= IGC_TQAVCTRL_FUTSCDDIS;
 	}
 
@@ -286,11 +289,13 @@ int igc_tsn_reset(struct igc_adapter *adapter)
 	return err;
 }
 
-int igc_tsn_offload_apply(struct igc_adapter *adapter)
+int igc_tsn_offload_apply(struct igc_adapter *adapter, bool enable)
 {
+	struct igc_hw *hw = &adapter->hw;
 	int err;
 
-	if (netif_running(adapter->netdev)) {
+	if (netif_running(adapter->netdev) &&
+	    (igc_is_device_id_i225(hw) || !enable)) {
 		schedule_work(&adapter->reset_task);
 		return 0;
 	}
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.h b/drivers/net/ethernet/intel/igc/igc_tsn.h
index b53e6af560b7..631222bb6eb5 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.h
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.h
@@ -4,7 +4,7 @@
 #ifndef _IGC_TSN_H_
 #define _IGC_TSN_H_
 
-int igc_tsn_offload_apply(struct igc_adapter *adapter);
+int igc_tsn_offload_apply(struct igc_adapter *adapter, bool enable);
 int igc_tsn_reset(struct igc_adapter *adapter);
 void igc_tsn_adjust_txtime_offset(struct igc_adapter *adapter);
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
