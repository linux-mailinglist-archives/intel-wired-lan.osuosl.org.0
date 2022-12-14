Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C256F64CE19
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Dec 2022 17:32:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5AA4E4184B;
	Wed, 14 Dec 2022 16:32:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5AA4E4184B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671035543;
	bh=UfNVnLlRJXjKjyBheCqL1n6Lmx8ELl/uX4ATedPmC2o=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=61U7E4qA/58zcQmn5Iuor5r8rRnWvHfX/TRnHoapyoRqWK1JXpLzgsGIasSWYQZQG
	 0fwq5HrJAhuQg5D7PnXPUDE7465IRsr/vlI2syfGt1ZDDNlw78rmWuFxGsNAqnl1XG
	 t1+8gUjpp7b75fRDcv5TqiMAaH7J7Zjg8mQ9o/PMPjQAQ1/Vjwp5+UngFrLcS43YAR
	 sgzP3SvtwaegS6zlzvVdRhAqZSyIVezX6DU/il0kEXqz7S8L0LaNPHsUWtRgK+u4ui
	 cR6iLlg8Rj3OfHRnQDWVVQhVDNdO+rqvINO6coPpMb9WHkVV38nBMZF6HjRkUqbtQ0
	 39StDo1DKyVcQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mNejUYEvLg39; Wed, 14 Dec 2022 16:32:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E74B54183E;
	Wed, 14 Dec 2022 16:32:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E74B54183E
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5DBB61BF344
 for <intel-wired-lan@osuosl.org>; Wed, 14 Dec 2022 16:32:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 366624184F
 for <intel-wired-lan@osuosl.org>; Wed, 14 Dec 2022 16:32:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 366624184F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kruN-OXA-ZDp for <intel-wired-lan@osuosl.org>;
 Wed, 14 Dec 2022 16:32:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A2B04183E
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3A2B04183E
 for <intel-wired-lan@osuosl.org>; Wed, 14 Dec 2022 16:32:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="298795317"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="298795317"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 08:32:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="681557488"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="681557488"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by orsmga001.jf.intel.com with ESMTP; 14 Dec 2022 08:31:59 -0800
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org,
	vinicius.gomes@intel.com
Date: Thu, 15 Dec 2022 00:29:08 +0800
Message-Id: <20221214162909.22856-3-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221214162909.22856-1-muhammad.husaini.zulkifli@intel.com>
References: <20221214162909.22856-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671035529; x=1702571529;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=A6x5xS8BdiB5kz0Oduz3W/vnWsffWJBjZ+djudYXKLE=;
 b=Wd6EFGI8ajrgEOdYqEpfzXsKfnW6LG/qS0WXKKDK+seP6DC9TwtNI7zd
 exMz9ZK0PwtQfbJapN8e+jp90E0JAmKj+Jj7Sdt70Zna8iC2oRSznWRIK
 ZRZ2i6WeLFNhSPdPSaZvWrJzdThJFIb2jhKq2EzxOgOnT/vi3qocE6XL9
 Xhd3SPUxgYRlXRq6EOwqTxafSsev41bYnqORopdreBGPL5BNSyPfip+rP
 1uY9AHyUEYSOndOYlBg+8R+0QDq7T2lGyrS247IiIMVVWtXTySpiHvwNC
 0Yfl313w2mRnKjyMyUIvn1EubMruF95fbPKXj1z9Rwmz1Z2ZzalSVKSSy
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Wd6EFGI8
Subject: [Intel-wired-lan] [PATCH net-next v2 2/3] igc: enable Qbv
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
