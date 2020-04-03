Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B687E19DDBE
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Apr 2020 20:18:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 32CCA8712F;
	Fri,  3 Apr 2020 18:18:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 094MQDCkdpPn; Fri,  3 Apr 2020 18:18:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A76D58713D;
	Fri,  3 Apr 2020 18:18:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8474F1BF9C1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2020 18:18:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8641F2039A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2020 18:18:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eZ1jeKGgcSyI for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2020 18:18:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id D6D2426760
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2020 18:18:33 +0000 (UTC)
IronPort-SDR: Rgh7t/UDce7owrUAM37svFdGiven0kSBLbUBTrN0Qe/ira8/RuDrKqwn0amT3Rdn3kNVb7K4Sh
 kua3bWZJoZ2Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2020 11:18:33 -0700
IronPort-SDR: KOdPrqZjD6wmJRJrWWyzEbWAMyyuLBsmhdDzLI/QmduGd+nZLHLvEg7vSaVZTJUh5ZEnDmHS0E
 rBAJdgr0CeDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,340,1580803200"; d="scan'208";a="253445199"
Received: from unknown (HELO localhost.localdomain) ([10.254.70.217])
 by orsmga006.jf.intel.com with ESMTP; 03 Apr 2020 11:18:32 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  3 Apr 2020 11:17:41 -0700
Message-Id: <20200403181743.23447-3-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200403181743.23447-1-andre.guedes@intel.com>
References: <20200403181743.23447-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 2/4] igc: Dump VLANPQF register
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch adds the VLAN Priority Queue Filter Register (VLANPQF) to the
list of registers dumped by igc_get_regs().

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 9811b26f3c59..dfc21908347d 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -316,6 +316,8 @@ static void igc_get_regs(struct net_device *netdev,
 		regs_buff[172 + i] = rd32(IGC_RAL(i));
 	for (i = 0; i < 16; i++)
 		regs_buff[188 + i] = rd32(IGC_RAH(i));
+
+	regs_buff[204] = rd32(IGC_VLANPQF);
 }
 
 static void igc_get_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
