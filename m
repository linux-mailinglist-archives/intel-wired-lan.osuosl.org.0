Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 13622702407
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 May 2023 08:05:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 89FD682178;
	Mon, 15 May 2023 06:05:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 89FD682178
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684130716;
	bh=+vloiAHWmgiwGnV4JvvqbZDV4crpX354sTwprWTBBLA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=MgAe2Nc8H8Lmeu3AVnnsqeArzHCYF45mWa/u33HrTykyOiQlMVx/Ywer+3mGXKVKG
	 EAFOZD5xOgPVvCKMotd+Td63rN/N7G0ch6QbjiQrAgLS5WcAcfT+VtyDrMwKl6T762
	 7BDiBeID2/qnly29X9/VQnqFnyAzdNgJvM/tUZRBbuT26SGfJlrPsCH1PAdbhqfZC1
	 DCFkDAne62rL89ATjDUD1z3gT4YaaTe5tcyjVOu2babKsfmLd04PIMADYlDd4Fq2SO
	 mgU7xU+S0wMIG8/enlHJkRjJVzrWOnmDGTllcdVEcUF28GzU12HqK/MphGoPxhudWw
	 zmJPx4qkX90IA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kAXC1JL9yU1g; Mon, 15 May 2023 06:05:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 855058209C;
	Mon, 15 May 2023 06:05:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 855058209C
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C8AF71BF599
 for <intel-wired-lan@osuosl.org>; Mon, 15 May 2023 06:05:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 98EE58209C
 for <intel-wired-lan@osuosl.org>; Mon, 15 May 2023 06:05:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 98EE58209C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8-WgwGB1QUPn for <intel-wired-lan@osuosl.org>;
 Mon, 15 May 2023 06:05:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 30FFF8208E
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 30FFF8208E
 for <intel-wired-lan@osuosl.org>; Mon, 15 May 2023 06:05:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="351152964"
X-IronPort-AV: E=Sophos;i="5.99,275,1677571200"; d="scan'208";a="351152964"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2023 23:05:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="812817440"
X-IronPort-AV: E=Sophos;i="5.99,275,1677571200"; d="scan'208";a="812817440"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by fmsmga002.fm.intel.com with ESMTP; 14 May 2023 23:05:06 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon, 15 May 2023 14:03:36 +0800
Message-Id: <20230515060336.16272-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684130709; x=1715666709;
 h=from:to:cc:subject:date:message-id;
 bh=kRpNXhgQL4xzhwajVHTjdOwoxcbHOH3CV4Y0g7my0GA=;
 b=QBHUkdSMRf/ZVKWwtgfZMcm/61eR0VlVRwMmKCDVh9Sl9teHigRbtNnF
 A09yCIHxa3wUwPiDn0Vv8up1zBaSpYtxCGhsrEvXaq+aMW+9aZRgyZ5gM
 MeK55l0BjUP+VWSoL4azLHj4siPbB9Zku78eO9xWS47SqyasdS31mJVAL
 LUZsNLUqksH7Z5NXMNKe74K0UvcSVfrXwW2D8P4BRRgyYZT3WhFxnWisx
 4jxMIzjFgc919KcTawt+J1hMYV5FzmwY7twLKfwaPaZ/UZ1DoRyU6AEa8
 nyrVal7NWkKNZtKEclJeQBJfkO7cWuRlGfkKkL5NvhmF/ocqz61y6cJ/7
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QBHUkdSM
Subject: [Intel-wired-lan] [PATCH iwl-net v1] igc: Add condition for
 qbv_config_change_errors counter
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add condition to increase the qbv counter during taprio qbv
configuration only.

There might be a case when TC already been setup then user configure
the ETF/CBS qdisc and this counter will increase if no condition above.

Fixes: ae4fe4698300 ("igc: Add qbv_config_change_errors counter")
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      | 1 +
 drivers/net/ethernet/intel/igc/igc_main.c | 2 ++
 drivers/net/ethernet/intel/igc/igc_tsn.c  | 1 +
 3 files changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index be1a1e67c39b7..0bbd108f28939 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -183,6 +183,7 @@ struct igc_adapter {
 	u32 max_frame_size;
 	u32 min_frame_size;
 
+	int tc_setup_type;
 	ktime_t base_time;
 	ktime_t cycle_time;
 	bool qbv_enable;
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 8e5b75b446fd6..d1e8a5eee811b 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6278,6 +6278,8 @@ static int igc_setup_tc(struct net_device *dev, enum tc_setup_type type,
 {
 	struct igc_adapter *adapter = netdev_priv(dev);
 
+	adapter->tc_setup_type = type;
+
 	switch (type) {
 	case TC_QUERY_CAPS:
 		return igc_tc_query_caps(adapter, type_data);
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 94a2b0dfb54d4..6b299b83e7ef2 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -249,6 +249,7 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 		 * Gate Control List (GCL) is running.
 		 */
 		if ((rd32(IGC_BASET_H) || rd32(IGC_BASET_L)) &&
+		    (adapter->tc_setup_type == TC_SETUP_QDISC_TAPRIO) &&
 		    tsn_mode_reconfig)
 			adapter->qbv_config_change_errors++;
 	} else {
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
