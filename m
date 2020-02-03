Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2CB150220
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Feb 2020 08:55:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 836728777B;
	Mon,  3 Feb 2020 07:55:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bKdoYGSEel4a; Mon,  3 Feb 2020 07:55:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 77DDD87762;
	Mon,  3 Feb 2020 07:55:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 67CF71BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Feb 2020 07:55:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 61DA485C98
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Feb 2020 07:55:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OlbdWqrNNEFC for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Feb 2020 07:55:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 47C9B85C20
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Feb 2020 07:55:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Feb 2020 23:55:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,397,1574150400"; d="scan'208";a="403361745"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.163.21])
 by orsmga005.jf.intel.com with ESMTP; 02 Feb 2020 23:55:20 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  3 Feb 2020 09:55:20 +0200
Message-Id: <20200203075520.16976-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Add WOL support
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

This patch adds a define and WOL support for an i225 parts.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  1 +
 drivers/net/ethernet/intel/igc/igc_defines.h |  3 ++
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 61 ++++++++++++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_main.c    | 10 +++++
 4 files changed, 75 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 34300f551d84..7202c3761068 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -61,6 +61,7 @@ extern char igc_driver_version[];
 #define IGC_FLAG_QUEUE_PAIRS		BIT(3)
 #define IGC_FLAG_DMAC			BIT(4)
 #define IGC_FLAG_PTP			BIT(8)
+#define IGC_FLAG_WOL_SUPPORTED		BIT(8)
 #define IGC_FLAG_NEED_LINK_UPDATE	BIT(9)
 #define IGC_FLAG_MEDIA_RESET		BIT(10)
 #define IGC_FLAG_MAS_ENABLE		BIT(12)
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index d400786fc413..6468253ec4f5 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -16,7 +16,10 @@
 
 /* Wake Up Filter Control */
 #define IGC_WUFC_LNKC	0x00000001 /* Link Status Change Wakeup Enable */
+#define IGC_WUFC_MAG	0x00000002 /* Magic Packet Wakeup Enable */
+#define IGC_WUFC_EX	0x00000004 /* Directed Exact Wakeup Enable */
 #define IGC_WUFC_MC	0x00000008 /* Directed Multicast Wakeup Enable */
+#define IGC_WUFC_BC	0x00000010 /* Broadcast Wakeup Enable */
 
 #define IGC_CTRL_ADVD3WUC	0x00100000  /* D3 WUC */
 
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index ee07011e13e9..69f50b8e2af3 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -308,6 +308,65 @@ static void igc_get_regs(struct net_device *netdev,
 		regs_buff[168 + i] = rd32(IGC_TXDCTL(i));
 }
 
+static void igc_get_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
+{
+	struct igc_adapter *adapter = netdev_priv(netdev);
+
+	wol->wolopts = 0;
+
+	if (!(adapter->flags & IGC_FLAG_WOL_SUPPORTED))
+		return;
+
+	wol->supported = WAKE_UCAST | WAKE_MCAST |
+			 WAKE_BCAST | WAKE_MAGIC |
+			 WAKE_PHY;
+
+	/* apply any specific unsupported masks here */
+	switch (adapter->hw.device_id) {
+	default:
+		break;
+	}
+
+	if (adapter->wol & IGC_WUFC_EX)
+		wol->wolopts |= WAKE_UCAST;
+	if (adapter->wol & IGC_WUFC_MC)
+		wol->wolopts |= WAKE_MCAST;
+	if (adapter->wol & IGC_WUFC_BC)
+		wol->wolopts |= WAKE_BCAST;
+	if (adapter->wol & IGC_WUFC_MAG)
+		wol->wolopts |= WAKE_MAGIC;
+	if (adapter->wol & IGC_WUFC_LNKC)
+		wol->wolopts |= WAKE_PHY;
+}
+
+static int igc_set_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
+{
+	struct igc_adapter *adapter = netdev_priv(netdev);
+
+	if (wol->wolopts & (WAKE_ARP | WAKE_MAGICSECURE | WAKE_FILTER))
+		return -EOPNOTSUPP;
+
+	if (!(adapter->flags & IGC_FLAG_WOL_SUPPORTED))
+		return wol->wolopts ? -EOPNOTSUPP : 0;
+
+	/* these settings will always override what we currently have */
+	adapter->wol = 0;
+
+	if (wol->wolopts & WAKE_UCAST)
+		adapter->wol |= IGC_WUFC_EX;
+	if (wol->wolopts & WAKE_MCAST)
+		adapter->wol |= IGC_WUFC_MC;
+	if (wol->wolopts & WAKE_BCAST)
+		adapter->wol |= IGC_WUFC_BC;
+	if (wol->wolopts & WAKE_MAGIC)
+		adapter->wol |= IGC_WUFC_MAG;
+	if (wol->wolopts & WAKE_PHY)
+		adapter->wol |= IGC_WUFC_LNKC;
+	device_set_wakeup_enable(&adapter->pdev->dev, adapter->wol);
+
+	return 0;
+}
+
 static u32 igc_get_msglevel(struct net_device *netdev)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
@@ -1859,6 +1918,8 @@ static const struct ethtool_ops igc_ethtool_ops = {
 	.get_drvinfo		= igc_get_drvinfo,
 	.get_regs_len		= igc_get_regs_len,
 	.get_regs		= igc_get_regs,
+	.get_wol		= igc_get_wol,
+	.set_wol		= igc_set_wol,
 	.get_msglevel		= igc_get_msglevel,
 	.set_msglevel		= igc_set_msglevel,
 	.nway_reset		= igc_nway_reset,
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index af5dd43a4c6c..dec6f5a4f03f 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -4966,6 +4966,16 @@ static int igc_probe(struct pci_dev *pdev,
 	hw->fc.requested_mode = igc_fc_default;
 	hw->fc.current_mode = igc_fc_default;
 
+	/* By default, support wake on port A */
+	adapter->flags |= IGC_FLAG_WOL_SUPPORTED;
+
+	/* initialize the wol settings based on the eeprom settings */
+	if (adapter->flags & IGC_FLAG_WOL_SUPPORTED)
+		adapter->wol |= IGC_WUFC_MAG;
+
+	device_set_wakeup_enable(&adapter->pdev->dev,
+				 adapter->flags & IGC_FLAG_WOL_SUPPORTED);
+
 	/* reset the hardware with the new settings */
 	igc_reset(adapter);
 
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
