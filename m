Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD827819D6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Aug 2023 15:52:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BFB5083BF6;
	Sat, 19 Aug 2023 13:52:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BFB5083BF6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692453148;
	bh=mvdLl6SAdmvX7ggHWp5/SK033lu43P6uQlmhxVVpuZM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=O7FpoRqV2jDeS1wGE2lz+AzNm1mMHJPxR+KuF5roUWRya1GzY0+uSsv5RCfAFmb7j
	 NN+PZezEy1Al1gIWVTWSkiEd0zs8WXALAZnhyxKx3fLGOuS/Q0yZoNVogoG1B4KVA5
	 8KT7OEHvjeN9ZvQ6zNm6lXfsH90eVD9Jffw3cBPMZNbouW561WA/7mpxMXWg55mYPQ
	 ks3u5dpnr+0LzNkmuHJf8x1T+4G6kzQjndgrGyM+Teubf+StRsMy1FI/pZh16A2GJK
	 0MnKOsxhghMm9caMPWXtP4BgX2t/RbE8JJBLZtEPpZWE5zwZY6PqTrQ1LcGPO3HS3g
	 8QogszWeoLaqA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2WepKzXxLNIy; Sat, 19 Aug 2023 13:52:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5DABF83BE8;
	Sat, 19 Aug 2023 13:52:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5DABF83BE8
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 024AA1BF476
 for <intel-wired-lan@osuosl.org>; Sat, 19 Aug 2023 13:52:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CF93783BD7
 for <intel-wired-lan@osuosl.org>; Sat, 19 Aug 2023 13:52:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF93783BD7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BM_hB5ZWGGeZ for <intel-wired-lan@osuosl.org>;
 Sat, 19 Aug 2023 13:52:18 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EF1A783BA1
 for <intel-wired-lan@osuosl.org>; Sat, 19 Aug 2023 13:52:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EF1A783BA1
X-IronPort-AV: E=McAfee;i="6600,9927,10807"; a="363463630"
X-IronPort-AV: E=Sophos;i="6.01,186,1684825200"; d="scan'208";a="363463630"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2023 06:52:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10807"; a="805452183"
X-IronPort-AV: E=Sophos;i="6.01,186,1684825200"; d="scan'208";a="805452183"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by fmsmga004.fm.intel.com with ESMTP; 19 Aug 2023 06:52:14 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Sat, 19 Aug 2023 21:50:51 +0800
Message-Id: <20230819135051.29390-3-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230819135051.29390-1-muhammad.husaini.zulkifli@intel.com>
References: <20230819135051.29390-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692453137; x=1723989137;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=yde9xJhaTEZD+38PelDCp44E5kb3nUKVR/tKJEve7W0=;
 b=REbgHN2imQoz3cIgPRsqxwl89OxqXDF35lHp3XjmxzaqbLvbMxhlQJcq
 HnYUhA1W2jrq0A90w5g4OMkfNO6678y1ERgkJJ2gre/oGxk71MwyM3vZE
 AGECRUqKujONV2QJqzTRe62DKITdLJTvISrQUnRVkDBZnLISXlvOtd8z1
 0DpMZy+P4CEbdWJXWLwwgH+MUbioQsafWxES/9wBY80s+kPotTcoETzWC
 aXcCLH297EGZsOod6ITUjKmLfZCfabhVtwrl7+TSQ/QcbG1zl+mbwdU2V
 QfTwiFT2uR11iCa3pk5NY297EPqhS7LEhSOuzKC0pdlu7GacqM3W4F8is
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=REbgHN2i
Subject: [Intel-wired-lan] [PATCH iwl-net v4 2/2] igc: Modify the tx-usecs
 coalesce setting
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
Cc: bcreeley@amd.com, netdev@vger.kernel.org, edumazet@google.com,
 pabeni@redhat.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 kuba@kernel.org, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch enables users to modify the tx-usecs parameter.
The rx-usecs value will adhere to the same value as tx-usecs
if the queue pair setting is enabled.

How to test:
User can set the coalesce value using ethtool command.

Example command:
Set: ethtool -C <interface>

Previous output:

root@P12DYHUSAINI:~# ethtool -C enp170s0 tx-usecs 10
netlink error: Invalid argument

New output:

root@P12DYHUSAINI:~# ethtool -C enp170s0 tx-usecs 10
rx-usecs: 10
rx-frames: n/a
rx-usecs-irq: n/a
rx-frames-irq: n/a

tx-usecs: 10
tx-frames: n/a
tx-usecs-irq: n/a
tx-frames-irq: n/a

Fixes: 8c5ad0dae93c ("igc: Add ethtool support")
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 45 ++++++++++++++------
 1 file changed, 33 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 62d925b26f2c..40ec6ebc0843 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -888,6 +888,11 @@ static int igc_ethtool_get_coalesce(struct net_device *netdev,
 	return 0;
 }
 
+static int igc_ethtool_coalesce_to_itr_setting(u32 coalesce_usecs)
+{
+	return coalesce_usecs <= 3 ? coalesce_usecs : coalesce_usecs << 2;
+}
+
 static int igc_ethtool_set_coalesce(struct net_device *netdev,
 				    struct ethtool_coalesce *ec,
 				    struct kernel_ethtool_coalesce *kernel_coal,
@@ -914,19 +919,35 @@ static int igc_ethtool_set_coalesce(struct net_device *netdev,
 			adapter->flags &= ~IGC_FLAG_DMAC;
 	}
 
-	/* convert to rate of irq's per second */
-	if (ec->rx_coalesce_usecs && ec->rx_coalesce_usecs <= 3)
-		adapter->rx_itr_setting = ec->rx_coalesce_usecs;
-	else
-		adapter->rx_itr_setting = ec->rx_coalesce_usecs << 2;
+	if (adapter->flags & IGC_FLAG_QUEUE_PAIRS) {
+		u32 old_tx_itr, old_rx_itr;
+
+		/* This is to get back the original value before byte shifting */
+		old_tx_itr = (adapter->tx_itr_setting <= 3) ?
+			      adapter->tx_itr_setting : adapter->tx_itr_setting >> 2;
+
+		old_rx_itr = (adapter->rx_itr_setting <= 3) ?
+			      adapter->rx_itr_setting : adapter->rx_itr_setting >> 2;
+
+		/* convert to rate of irq's per second */
+		if (old_tx_itr != ec->tx_coalesce_usecs) {
+			adapter->tx_itr_setting =
+				igc_ethtool_coalesce_to_itr_setting(ec->tx_coalesce_usecs);
+			adapter->rx_itr_setting = adapter->tx_itr_setting;
+		} else if (old_rx_itr != ec->rx_coalesce_usecs) {
+			adapter->rx_itr_setting =
+				igc_ethtool_coalesce_to_itr_setting(ec->rx_coalesce_usecs);
+			adapter->tx_itr_setting = adapter->rx_itr_setting;
+		}
+	} else {
+		/* convert to rate of irq's per second */
+		adapter->rx_itr_setting =
+			igc_ethtool_coalesce_to_itr_setting(ec->rx_coalesce_usecs);
 
-	/* convert to rate of irq's per second */
-	if (adapter->flags & IGC_FLAG_QUEUE_PAIRS)
-		adapter->tx_itr_setting = adapter->rx_itr_setting;
-	else if (ec->tx_coalesce_usecs && ec->tx_coalesce_usecs <= 3)
-		adapter->tx_itr_setting = ec->tx_coalesce_usecs;
-	else
-		adapter->tx_itr_setting = ec->tx_coalesce_usecs << 2;
+		/* convert to rate of irq's per second */
+		adapter->tx_itr_setting =
+			igc_ethtool_coalesce_to_itr_setting(ec->tx_coalesce_usecs);
+	}
 
 	for (i = 0; i < adapter->num_q_vectors; i++) {
 		struct igc_q_vector *q_vector = adapter->q_vector[i];
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
