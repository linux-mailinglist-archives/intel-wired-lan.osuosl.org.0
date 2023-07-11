Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0DB74E297
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jul 2023 02:36:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C30B96106B;
	Tue, 11 Jul 2023 00:36:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C30B96106B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689035810;
	bh=sl8l+7bQbU9PpidUYM5x8MuS/BWoduNUvcZ1bn4RJuY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Oro0a/kbkAXTnGZ7sR7UWUIHzbE0k93tBFGi4Xz84TPtYvfZlMopsT6YZNlo+9XrB
	 6dsai2d8zrScOScqvpWMzHlcYuEa4+iVZD5TmH+NX+A/DhKmqlPH8Gy7pfFIuAXixZ
	 Pp/R3ANzAwfcU16bB7idCE0Sd1MjjdlZ8oVK33OeyyD9i5bCEpwuVz/IlbaK+cdH/B
	 P48dhxKi1Xap0uJpyV4T5Wa3/tv4HIKTkEz18ZvkSaZSlbdpDQKmuEzhqbELePG/rd
	 u4EIHDuTyT0PkjlZkwZQN46RIdjX5KRr7/YkZOCFxiL+NP9+KM0M2htP2tA+4OGsz4
	 j/FV8ljlSzNlg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cyAG2e6sM6m1; Tue, 11 Jul 2023 00:36:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7CA6660EEE;
	Tue, 11 Jul 2023 00:36:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7CA6660EEE
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DD29C1BF955
 for <intel-wired-lan@osuosl.org>; Tue, 11 Jul 2023 00:36:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BBEBA81F91
 for <intel-wired-lan@osuosl.org>; Tue, 11 Jul 2023 00:36:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BBEBA81F91
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sQGKRE6Y6eGb for <intel-wired-lan@osuosl.org>;
 Tue, 11 Jul 2023 00:36:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C441D81F8D
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C441D81F8D
 for <intel-wired-lan@osuosl.org>; Tue, 11 Jul 2023 00:36:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="344811036"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="344811036"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 17:36:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="724222559"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="724222559"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by fmsmga007.fm.intel.com with ESMTP; 10 Jul 2023 17:36:23 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue, 11 Jul 2023 08:34:53 +0800
Message-Id: <20230711003453.9856-3-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230711003453.9856-1-muhammad.husaini.zulkifli@intel.com>
References: <20230711003453.9856-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689035798; x=1720571798;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=LT4MlK6oG4Jc5lv0J8lR6nIU9xQQHXQPhT9LNLkQBWw=;
 b=PDz7MegnX9dZoNZ7zrK7wE7ywpHBuN0qc/BX9YP6UAInZ2ZCHW1AzHlh
 3GDeSVtPnUA7lP5B08z3Mg5/qETGlbDaNbSpC8WK6jqLW5uYcIbOSeN7/
 u6qzfqWEcmufJJgrwBhMIdE1X+slYruCiLzx8HyzMxxD+HqBFFt+fNS7z
 E4k4QOexPqCPW4BuOQCF3uh/XkQNPlWfuNz5BcYDL3XTS+QHt5AiPe+fA
 Qbd7KhuJbhlCRzRKWqKxOhvoOksLY+iLqkrMTM3ZBDwRegqwz7HMhaVSA
 59Jc2V+dsoPLBd1IXbUVQZfoflcC6L8k4Tb69Q4AW3E72/OiKId3ek7o3
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PDz7Megn
Subject: [Intel-wired-lan] [PATCH iwl-net v2 2/2] igc: Modify the tx-usecs
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
Cc: anthony.l.nguyen@intel.com
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
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 33 ++++++++++++++++++--
 1 file changed, 30 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 62d925b26f2c..1cf7131a82c5 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -914,6 +914,34 @@ static int igc_ethtool_set_coalesce(struct net_device *netdev,
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
@@ -921,13 +949,12 @@ static int igc_ethtool_set_coalesce(struct net_device *netdev,
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
