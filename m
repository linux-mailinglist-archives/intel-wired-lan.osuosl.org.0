Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E6000243C55
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Aug 2020 17:18:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 900EC203F0;
	Thu, 13 Aug 2020 15:18:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oMyKld70ogIu; Thu, 13 Aug 2020 15:18:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CB3B323524;
	Thu, 13 Aug 2020 15:18:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 484091BF333
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Aug 2020 15:18:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 41DEE886AE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Aug 2020 15:18:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wkfUGYjDc30d for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Aug 2020 15:18:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 78E4B886AA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Aug 2020 15:18:22 +0000 (UTC)
IronPort-SDR: R3fHPeYyY5bbBPjWQNy+Vuuf5R2uHy1lxHcuFLk9XqoghApuYP+8O5V9oqH8QMGUgspzkzT5MY
 Tzbrbg35VsKw==
X-IronPort-AV: E=McAfee;i="6000,8403,9712"; a="239073658"
X-IronPort-AV: E=Sophos;i="5.76,308,1592895600"; d="scan'208";a="239073658"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2020 08:18:20 -0700
IronPort-SDR: ULLSupOwN0T0orzgd4MAoCLdvHp98GDQ46RL6gAGjdZ6ve553OJEAGqbTUxsQSymtbTn1/rBNq
 MWB2btkdHYHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,308,1592895600"; d="scan'208";a="495889297"
Received: from ccdlinuxdev12.iil.intel.com ([143.185.161.198])
 by fmsmga005.fm.intel.com with ESMTP; 13 Aug 2020 08:18:20 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 13 Aug 2020 18:18:15 +0300
Message-Id: <20200813151815.2970941-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.18.4
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Expose LPI counters
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Completion to commit 900d1e8b346b ("igc: Add LPI counters")
LPI counters exposed by statitics update method.
A EEE TX LPI counter reflect the transmitter entries EEE (IEEE 802.3az)
into the LPI state. A EEE RX LPI counter reflect the receiver link
partner entries into EEE(IEEE 802.3az) LPI state.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 3 +++
 drivers/net/ethernet/intel/igc/igc_hw.h      | 2 ++
 drivers/net/ethernet/intel/igc/igc_main.c    | 2 ++
 3 files changed, 7 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 44410c2265d6..61d331ce38cd 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -321,6 +321,9 @@ static void igc_ethtool_get_regs(struct net_device *netdev,
 
 	for (i = 0; i < 8; i++)
 		regs_buff[205 + i] = rd32(IGC_ETQF(i));
+
+	regs_buff[213] = adapter->stats.tlpic;
+	regs_buff[214] = adapter->stats.rlpic;
 }
 
 static void igc_ethtool_get_wol(struct net_device *netdev,
diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ethernet/intel/igc/igc_hw.h
index 6defdb8a31fe..b70253fb8ebc 100644
--- a/drivers/net/ethernet/intel/igc/igc_hw.h
+++ b/drivers/net/ethernet/intel/igc/igc_hw.h
@@ -244,6 +244,8 @@ struct igc_hw_stats {
 	u64 prc511;
 	u64 prc1023;
 	u64 prc1522;
+	u64 tlpic;
+	u64 rlpic;
 	u64 gprc;
 	u64 bprc;
 	u64 mprc;
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 298f408519f4..933e0d3445df 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3693,6 +3693,8 @@ void igc_update_stats(struct igc_adapter *adapter)
 	adapter->stats.prc511 += rd32(IGC_PRC511);
 	adapter->stats.prc1023 += rd32(IGC_PRC1023);
 	adapter->stats.prc1522 += rd32(IGC_PRC1522);
+	adapter->stats.tlpic += rd32(IGC_TLPIC);
+	adapter->stats.rlpic += rd32(IGC_RLPIC);
 
 	mpc = rd32(IGC_MPC);
 	adapter->stats.mpc += mpc;
-- 
2.18.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
