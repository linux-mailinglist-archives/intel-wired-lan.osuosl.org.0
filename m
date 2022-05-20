Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E5352E1AD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 May 2022 03:16:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D7BB60E4A;
	Fri, 20 May 2022 01:16:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HDpZPxEvVicy; Fri, 20 May 2022 01:16:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 11DE060E44;
	Fri, 20 May 2022 01:16:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 61B931C1190
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 01:16:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EF2CC40562
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 01:15:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gv9ZJthMyfOo for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 May 2022 01:15:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4CCCF40423
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 01:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653009357; x=1684545357;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4CHRXJYeqyil7rTJdqBcblLodLd4q0xWMAdYGKzG05Y=;
 b=i3j6gVjvlDjFx041yBH87YmuH4FqvHZNMOQKvMpibNZFKQxtlexzZjpw
 1iz8v7NoRCFWamaT0hGzDMsURDuCui9zYalXzstLCMhKT2c5f/KOnLWIe
 2nYRkGg0GvdtYQPZ/nQID8Gwt6SieqZCuMci1DEkT+yqXzQ60KH7Tt7Kv
 H+/2RaW89cuaZKHAh/wt3ToDSZHDj7fuTddaA7BA1Qiyq8tpDkOWHF/lV
 o/t/4VFXN1jZ0eOIoS3wWRsno+LzqSh8Ud+bH2j7TaXALckdG1BdsHa0D
 dgfqkfqnuja9St96q/sYnB5/SB82XGWFyNglFmVJI4M8hf/cPGkDkrwYF w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10352"; a="333064171"
X-IronPort-AV: E=Sophos;i="5.91,238,1647327600"; d="scan'208";a="333064171"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 18:15:54 -0700
X-IronPort-AV: E=Sophos;i="5.91,238,1647327600"; d="scan'208";a="570534569"
Received: from vcostago-mobl3.jf.intel.com ([10.24.14.84])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 18:15:54 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: netdev@vger.kernel.org
Date: Thu, 19 May 2022 18:15:38 -0700
Message-Id: <20220520011538.1098888-12-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220520011538.1098888-1-vinicius.gomes@intel.com>
References: <20220520011538.1098888-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v5 11/11] igc: Add support for
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
Cc: jiri@resnulli.us, vladimir.oltean@nxp.com, po.liu@nxp.com, jhs@mojatatu.com,
 intel-wired-lan@lists.osuosl.org, boon.leong.ong@intel.com,
 xiyou.wangcong@gmail.com, davem@davemloft.net
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
index 9a80e2569dc3..0a84fbdd494b 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -344,6 +344,14 @@ static void igc_ethtool_get_regs(struct net_device *netdev,
 
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
index e197a33d93a0..2b5ef1e80f5f 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -224,6 +224,16 @@
 
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
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
