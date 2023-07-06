Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5198774A048
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jul 2023 17:02:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB42060FD6;
	Thu,  6 Jul 2023 15:02:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB42060FD6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688655727;
	bh=/8jCin77Wv0d88R7NGnqfDL9yaRWeBvFiD6PXf6w5Fg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=rzfwe0iWup6e46RCMQPB4+x2RP1/08+xly7+jZnWWmvd8mTCps/8o0WLVs8geDSLe
	 Ry+Fz6XzwUXyNS0xy0vsS6dE/gyNh3j6S57aahy2OtEozHqT15dAenMhxKjJ0QdKJ4
	 Yy5n+c7X57O4oz4jk5L9ScbJIOxHjMbYjYud3eYTnwCW0xi+mgHKocGn+CBsWiRnqz
	 xh7TcGpk7RW2Gy5zC/UF5UJA0r3wNix7kHHAGC2fjhcZEDMlvkHptagbfpWbTTg/R5
	 2ERRz/yP9Gs831TCBV44Tj06osRs3N1MipF8zIYH0G3jS6a99UOK4hW/9N5SlyvYXV
	 2H166ly5sOhKw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ksuaPMlG0XEJ; Thu,  6 Jul 2023 15:02:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7DEA460B3C;
	Thu,  6 Jul 2023 15:02:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7DEA460B3C
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ED7AF1BF591
 for <intel-wired-lan@osuosl.org>; Thu,  6 Jul 2023 15:02:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D28B840A71
 for <intel-wired-lan@osuosl.org>; Thu,  6 Jul 2023 15:02:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D28B840A71
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 144Ji7aWyjh4 for <intel-wired-lan@osuosl.org>;
 Thu,  6 Jul 2023 15:02:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F29C740012
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F29C740012
 for <intel-wired-lan@osuosl.org>; Thu,  6 Jul 2023 15:02:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="363660724"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="363660724"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 08:01:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="696873453"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="696873453"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by orsmga006.jf.intel.com with ESMTP; 06 Jul 2023 08:01:44 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Thu,  6 Jul 2023 23:00:17 +0800
Message-Id: <20230706150017.5065-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688655721; x=1720191721;
 h=from:to:cc:subject:date:message-id;
 bh=C3aGST5D/lu3DZDWsDay7Yx5KyfQvoCIJVyjNzAjBKA=;
 b=SiWyoKAL+dPXtWPMC4fm9i1wrPjxnFLSEXJt6iSVbXZ/yWYoZKAedWOv
 ITEL8xmYClwJg+XOomXugdRHH9/5z+TY1kg8eu3uFpgMBw70/1mRFGj36
 NrHCzoEhAg1zUcgWotdz5ntOVBBxc3n4hkmZXcvxYXuufstwO0Vlp5Y1n
 p2xUIm/V+bB48Qdlirtba7wIPvqchGshXHhh9mXPy7zdSsiCL1qVHJ1Xa
 k8aDCq7f6HEmLSuMBxwGbPX/fDRVWTZmYmf2sQGwFfKvYTswIN/WBoJ2d
 Ape007e3a0UU+raDQLMrdXZnyFRvkdNFKCAMXRDJra49LDMiEPpXk+tz5
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SiWyoKAL
Subject: [Intel-wired-lan] [PATCH iwl-net v1] igc: Expose and modify
 tx-usecs coalesce setting
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

When users attempt to obtain the coalesce setting using the
ethtool command, current code always returns 0 for tx-usecs.
This is because I225/6 always uses a queue pair setting, hence
tx_coalesce_usecs does not return a value during the
igc_ethtool_get_coalesce() callback process. The pair queue
condition checking in igc_ethtool_get_coalesce() is removed by
this patch so that the user gets information of the value of tx-usecs.

Even if i225/6 is using queue pair setting, there is no harm in
notifying the user of the tx-usecs. The implementation of the current
code may have previously been a copy of the legacy code i210.

This patch also enables users to modify the tx-usecs parameter.
The rx-usecs value will adhere to the same value as the set tx-usecs
because the queue pair setting is enabled.

How to test:
User can set or get the coalesce value using ethtool command.

Example command:
Get: ethtool -c <interface>
Set: ethtool -C <interface>

Previous output (using get command):

rx-usecs: 3
rx-frames: n/a
rx-usecs-irq: n/a
rx-frames-irq: n/a

tx-usecs: 0
tx-frames: n/a
tx-usecs-irq: n/a
tx-frames-irq: n/a

New output (using get command):

rx-usecs: 3
rx-frames: n/a
rx-usecs-irq: n/a
rx-frames-irq: n/a

tx-usecs: 3
tx-frames: n/a
tx-usecs-irq: n/a
tx-frames-irq: n/a

Previous output (using set command):

root@P12DYHUSAINI:~# ethtool -C enp170s0 tx-usecs 10
netlink error: Invalid argument

New output (using set command):

root@P12DYHUSAINI:~# ethtool -C enp170s0 tx-usecs 10
rx-usecs: 10
rx-frames: n/a
rx-usecs-irq: n/a
rx-frames-irq: n/a

tx-usecs: 10
tx-frames: n/a
tx-usecs-irq: n/a
tx-frames-irq: n/a

Fixes: 7df76bd19181 ("igc: Add 'igc_ethtool_' prefix to functions in igc_ethtool.c")
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 46 +++++++++++++++-----
 1 file changed, 34 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 93bce729be76..1cf7131a82c5 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -880,12 +880,10 @@ static int igc_ethtool_get_coalesce(struct net_device *netdev,
 	else
 		ec->rx_coalesce_usecs = adapter->rx_itr_setting >> 2;
 
-	if (!(adapter->flags & IGC_FLAG_QUEUE_PAIRS)) {
-		if (adapter->tx_itr_setting <= 3)
-			ec->tx_coalesce_usecs = adapter->tx_itr_setting;
-		else
-			ec->tx_coalesce_usecs = adapter->tx_itr_setting >> 2;
-	}
+	if (adapter->tx_itr_setting <= 3)
+		ec->tx_coalesce_usecs = adapter->tx_itr_setting;
+	else
+		ec->tx_coalesce_usecs = adapter->tx_itr_setting >> 2;
 
 	return 0;
 }
@@ -910,15 +908,40 @@ static int igc_ethtool_set_coalesce(struct net_device *netdev,
 	    ec->tx_coalesce_usecs == 2)
 		return -EINVAL;
 
-	if ((adapter->flags & IGC_FLAG_QUEUE_PAIRS) && ec->tx_coalesce_usecs)
-		return -EINVAL;
-
 	/* If ITR is disabled, disable DMAC */
 	if (ec->rx_coalesce_usecs == 0) {
 		if (adapter->flags & IGC_FLAG_DMAC)
 			adapter->flags &= ~IGC_FLAG_DMAC;
 	}
 
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
+		if (old_tx_itr != ec->tx_coalesce_usecs) {
+			if (ec->tx_coalesce_usecs && ec->tx_coalesce_usecs <= 3)
+				adapter->tx_itr_setting = ec->tx_coalesce_usecs;
+			else
+				adapter->tx_itr_setting = ec->tx_coalesce_usecs << 2;
+
+			adapter->rx_itr_setting = adapter->tx_itr_setting;
+		} else if (old_rx_itr != ec->rx_coalesce_usecs) {
+			if (ec->rx_coalesce_usecs && ec->rx_coalesce_usecs <= 3)
+				adapter->rx_itr_setting = ec->rx_coalesce_usecs;
+			else
+				adapter->rx_itr_setting = ec->rx_coalesce_usecs << 2;
+
+			adapter->tx_itr_setting = adapter->rx_itr_setting;
+		}
+		goto program_itr;
+	}
+
 	/* convert to rate of irq's per second */
 	if (ec->rx_coalesce_usecs && ec->rx_coalesce_usecs <= 3)
 		adapter->rx_itr_setting = ec->rx_coalesce_usecs;
@@ -926,13 +949,12 @@ static int igc_ethtool_set_coalesce(struct net_device *netdev,
 		adapter->rx_itr_setting = ec->rx_coalesce_usecs << 2;
 
 	/* convert to rate of irq's per second */
-	if (adapter->flags & IGC_FLAG_QUEUE_PAIRS)
-		adapter->tx_itr_setting = adapter->rx_itr_setting;
-	else if (ec->tx_coalesce_usecs && ec->tx_coalesce_usecs <= 3)
+	if (ec->tx_coalesce_usecs && ec->tx_coalesce_usecs <= 3)
 		adapter->tx_itr_setting = ec->tx_coalesce_usecs;
 	else
 		adapter->tx_itr_setting = ec->tx_coalesce_usecs << 2;
 
+program_itr:
 	for (i = 0; i < adapter->num_q_vectors; i++) {
 		struct igc_q_vector *q_vector = adapter->q_vector[i];
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
