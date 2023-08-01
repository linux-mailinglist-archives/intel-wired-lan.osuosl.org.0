Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9592576A644
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 03:24:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 30E0560593;
	Tue,  1 Aug 2023 01:24:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30E0560593
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690853065;
	bh=GPmdFYepmFo9Bs1ScI0MDqXTWslQ6CX5qPQkROPoG+g=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ls5ADPt37m5fQXeFC8HwwS+AIpg4gNo1imIEfJVPN4GNX8Q/2agZ55Qv7aj/ME6Qx
	 kuMLKPbV72JcwuVakm3rIA2ByM0gqvA0r8T9VUk4rGfuBuzNZwi6raLJCxT4w3wUwa
	 soVkwa/RU+3jae/QLZ/Y/QY368JNWkRGhmKbh2KFJnVvfzNu2Culgvh/oAgqK/+L0G
	 jG7bTLn4Td/L8PszrucnT3841gMjUjzoCUk0eR7FCCnre7TaqkK+oP883AKPxh/hP8
	 HkRebUCYef6zdyZelpsUK/9rROgvOG1rI+DhZFBvxTAwgGudgrrNBJZ1Q7AsXpJOOh
	 93mwihr2DdcxA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1yTWkEmPjr6T; Tue,  1 Aug 2023 01:24:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5B3260B68;
	Tue,  1 Aug 2023 01:24:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E5B3260B68
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 526471BF97F
 for <intel-wired-lan@osuosl.org>; Tue,  1 Aug 2023 01:24:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 84D3D8089C
 for <intel-wired-lan@osuosl.org>; Tue,  1 Aug 2023 01:23:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 84D3D8089C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a9cEExB_Q0hK for <intel-wired-lan@osuosl.org>;
 Tue,  1 Aug 2023 01:23:56 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9396480C0C
 for <intel-wired-lan@osuosl.org>; Tue,  1 Aug 2023 01:23:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9396480C0C
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="372792742"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="372792742"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 18:16:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="798458572"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="798458572"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by fmsmga004.fm.intel.com with ESMTP; 31 Jul 2023 18:16:45 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue,  1 Aug 2023 09:15:18 +0800
Message-Id: <20230801011518.25370-3-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230801011518.25370-1-muhammad.husaini.zulkifli@intel.com>
References: <20230801011518.25370-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690853036; x=1722389036;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=b5WhSjde2r8XEbweVLXGUkprRp65g6AuGY6uG1nH19k=;
 b=a9/tBkbaQNi+Q2hCl6OVbE4ZnhjvVuhw+LBEqMJmKe4VcwqdHt5shPtI
 N1GE1qCRpj3QwYFvcM+ACI1IwCmvllgj2nYjhyCOdw/ruRkUYzd4toMNB
 1tcduBGUmN7XW6vXiUvm+yT6nekr4LfxIz+fCDs/rR50syJMnVVVyn5yB
 ZySec/w7fmYFbK6o2luUQyQknUqDDRQFmhledj079voIKLvgW9/2u2GOW
 S5sPUhnLWArkdEQyyjhNUq4W8kMC69/KXHoJtuj0WRdVWVBjymgPYQmnv
 MZ1m2NXcgSr9s0E3T1GglHGm+mdQWaCavxJaJlon3onoPyPh7KXxgwwm7
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=a9/tBkba
Subject: [Intel-wired-lan] [PATCH iwl-net v3 2/2] igc: Modify the tx-usecs
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
Cc: netdev@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
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
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 49 +++++++++++++++-----
 1 file changed, 37 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 62d925b26f2c..ed67d9061452 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -914,19 +914,44 @@ static int igc_ethtool_set_coalesce(struct net_device *netdev,
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
+	} else {
+		/* convert to rate of irq's per second */
+		if (ec->rx_coalesce_usecs && ec->rx_coalesce_usecs <= 3)
+			adapter->rx_itr_setting = ec->rx_coalesce_usecs;
+		else
+			adapter->rx_itr_setting = ec->rx_coalesce_usecs << 2;
 
-	/* convert to rate of irq's per second */
-	if (adapter->flags & IGC_FLAG_QUEUE_PAIRS)
-		adapter->tx_itr_setting = adapter->rx_itr_setting;
-	else if (ec->tx_coalesce_usecs && ec->tx_coalesce_usecs <= 3)
-		adapter->tx_itr_setting = ec->tx_coalesce_usecs;
-	else
-		adapter->tx_itr_setting = ec->tx_coalesce_usecs << 2;
+		/* convert to rate of irq's per second */
+		if (ec->tx_coalesce_usecs && ec->tx_coalesce_usecs <= 3)
+			adapter->tx_itr_setting = ec->tx_coalesce_usecs;
+		else
+			adapter->tx_itr_setting = ec->tx_coalesce_usecs << 2;
+	}
 
 	for (i = 0; i < adapter->num_q_vectors; i++) {
 		struct igc_q_vector *q_vector = adapter->q_vector[i];
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
