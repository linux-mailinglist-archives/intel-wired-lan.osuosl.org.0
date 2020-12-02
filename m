Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 870AB2CB40B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Dec 2020 05:53:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4353D86C1D;
	Wed,  2 Dec 2020 04:53:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fQN486hIn3m1; Wed,  2 Dec 2020 04:53:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 283B486D17;
	Wed,  2 Dec 2020 04:53:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3821B1BF30A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 04:53:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 348002E1EF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 04:53:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EtlO2ar-t7Sg for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Dec 2020 04:53:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 5EDF32E1F3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 04:53:51 +0000 (UTC)
IronPort-SDR: YXfSjL3fMiOOTQdCgAu0XYj16+Y7Rm+bIP2KkIrfGqzFYAmBkzlR4BmcmG3K2iak0BvBuhdX9v
 NBEIXibKN7nQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="234558825"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="234558825"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 20:53:50 -0800
IronPort-SDR: YVrnecCPQENo2hfl06eRNaVcm0cgimH/R70lhkacYkV1i8YMh8Z5KMnBXOdi9Fg6fKcm99LL0a
 hDVj5FO5XIFg==
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="549888388"
Received: from shivanif-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.212.152.222])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 20:53:50 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: netdev@vger.kernel.org
Date: Tue,  1 Dec 2020 20:53:24 -0800
Message-Id: <20201202045325.3254757-9-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201202045325.3254757-1-vinicius.gomes@intel.com>
References: <20201202045325.3254757-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 8/9] igc: Add support for
 exposing frame preemption stats registers
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
Cc: Jose.Abreu@synopsys.com, jiri@resnulli.us, vladimir.oltean@nxp.com,
 po.liu@nxp.com, jhs@mojatatu.com, m-karicheri2@ti.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Expose the Frame Preemption counters, so the number of
express/preemptible packets can be monitored by userspace.

These registers are cleared when read, so the value shown is the
number of events that happened since the last read.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  8 ++++++++
 drivers/net/ethernet/intel/igc/igc_regs.h    | 10 ++++++++++
 2 files changed, 18 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 492c6592c150..14a14a61de45 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -325,6 +325,14 @@ static void igc_ethtool_get_regs(struct net_device *netdev,
 
 	regs_buff[213] = adapter->stats.tlpic;
 	regs_buff[214] = adapter->stats.rlpic;
+	regs_buff[215] = rd32(IGC_PRMPTDTCNT);
+	regs_buff[216] = rd32(IGC_PRMEVNTTCNT);
+	regs_buff[217] = rd32(IGC_PRMPTDRCNT);
+	regs_buff[218] = rd32(IGC_PRMEVNTRCNT);
+	regs_buff[219] = rd32(IGC_PRMPBLTCNT);
+	regs_buff[220] = rd32(IGC_PRMPBLRCNT);
+	regs_buff[221] = rd32(IGC_PRMEXPTCNT);
+	regs_buff[222] = rd32(IGC_PRMEXPRCNT);
 }
 
 static void igc_ethtool_get_wol(struct net_device *netdev,
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index b52dd9d737e8..69e295d69d84 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -197,6 +197,16 @@
 
 #define IGC_FTQF(_n)	(0x059E0 + (4 * (_n)))  /* 5-tuple Queue Fltr */
 
+/* Time sync registers - preemption statistics */
+#define IGC_PRMPTDTCNT	0x04280  /* Good TX Preempted Packets */
+#define IGC_PRMEVNTTCNT	0x04298  /* TX Preemption event counter */
+#define IGC_PRMPTDRCNT	0x04284  /* Good RX Preempted Packets */
+#define IGC_PRMEVNTRCNT	0x0429C  /* RX Preemption event counter */
+#define IGC_PRMPBLTCNT	0x04288  /* Good TX Preemptable Packets */
+#define IGC_PRMPBLRCNT	0x0428C  /* Good RX Preemptable Packets */
+#define IGC_PRMEXPTCNT	0x04290  /* Good TX Express Packets */
+#define IGC_PRMEXPRCNT	0x042A0  /* Preemption Exception Counter */
+
 /* Transmit Scheduling Registers */
 #define IGC_TQAVCTRL		0x3570
 #define IGC_TXQCTL(_n)		(0x3344 + 0x4 * (_n))
-- 
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
