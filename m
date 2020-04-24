Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B461B806D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2020 22:17:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DC669204AE;
	Fri, 24 Apr 2020 20:17:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qEGbb2BSitsR; Fri, 24 Apr 2020 20:17:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CC2DA204D0;
	Fri, 24 Apr 2020 20:17:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9BCC41BF83C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 989EA86B59
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wePsgUU1SOMi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2020 20:17:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 19FB986BA9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:26 +0000 (UTC)
IronPort-SDR: dWaFFuj+DlygMhxUtcFtIcuGxHXm5Nv+EvtCBiiJjRYf7Bq2MBVcYWkhKuiYbxVbHmv/cFxkaT
 rXp8detPi2zg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 13:17:25 -0700
IronPort-SDR: q5g7EZVKKxYtYkTsD1kKe0jDWu7yGRbcIDHu7CyEqHcriE3+eMuGgnwa8w918wQkXbAbsOKJlg
 /PTVCPh+i1HA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,313,1583222400"; d="scan'208";a="335474505"
Received: from kleandre-mobl.amr.corp.intel.com ([10.213.164.39])
 by orsmga001.jf.intel.com with ESMTP; 24 Apr 2020 13:17:25 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Apr 2020 13:16:09 -0700
Message-Id: <20200424201623.10971-6-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200424201623.10971-1-andre.guedes@intel.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 05/19] igc: Add 'igc_ethtool_' prefix to
 functions in igc_ethtool.c
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

This patch adds the prefix 'igc_ethtool_' to all functions defined in
igc_ethtool.c so they align with the name convention already followed by
other parts of the driver (e.g. igc_tsn, igc_ptp). Also, this avoids
some name clashing with functions added to igc_main.c by upcoming
patches in this series. No functionality is changed by this patch, just
function renaming.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |   3 +-
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 215 ++++++++++---------
 drivers/net/ethernet/intel/igc/igc_main.c    |   2 +-
 3 files changed, 112 insertions(+), 108 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 7c92fc7703be..359ac40908f6 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -16,8 +16,7 @@
 
 #include "igc_hw.h"
 
-/* forward declaration */
-void igc_set_ethtool_ops(struct net_device *);
+void igc_ethtool_set_ops(struct net_device *);
 
 /* Transmit and receive queues */
 #define IGC_MAX_RX_QUEUES		4
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 45481b1c9ee3..4ee040607c0b 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -124,8 +124,8 @@ static const char igc_priv_flags_strings[][ETH_GSTRING_LEN] = {
 
 #define IGC_PRIV_FLAGS_STR_LEN ARRAY_SIZE(igc_priv_flags_strings)
 
-static void igc_get_drvinfo(struct net_device *netdev,
-			    struct ethtool_drvinfo *drvinfo)
+static void igc_ethtool_get_drvinfo(struct net_device *netdev,
+				    struct ethtool_drvinfo *drvinfo)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 
@@ -139,13 +139,13 @@ static void igc_get_drvinfo(struct net_device *netdev,
 	drvinfo->n_priv_flags = IGC_PRIV_FLAGS_STR_LEN;
 }
 
-static int igc_get_regs_len(struct net_device *netdev)
+static int igc_ethtool_get_regs_len(struct net_device *netdev)
 {
 	return IGC_REGS_LEN * sizeof(u32);
 }
 
-static void igc_get_regs(struct net_device *netdev,
-			 struct ethtool_regs *regs, void *p)
+static void igc_ethtool_get_regs(struct net_device *netdev,
+				 struct ethtool_regs *regs, void *p)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	struct igc_hw *hw = &adapter->hw;
@@ -323,7 +323,8 @@ static void igc_get_regs(struct net_device *netdev,
 		regs_buff[205 + i] = rd32(IGC_ETQF(i));
 }
 
-static void igc_get_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
+static void igc_ethtool_get_wol(struct net_device *netdev,
+				struct ethtool_wolinfo *wol)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 
@@ -354,7 +355,8 @@ static void igc_get_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
 		wol->wolopts |= WAKE_PHY;
 }
 
-static int igc_set_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
+static int igc_ethtool_set_wol(struct net_device *netdev,
+			       struct ethtool_wolinfo *wol)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 
@@ -382,21 +384,21 @@ static int igc_set_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
 	return 0;
 }
 
-static u32 igc_get_msglevel(struct net_device *netdev)
+static u32 igc_ethtool_get_msglevel(struct net_device *netdev)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 
 	return adapter->msg_enable;
 }
 
-static void igc_set_msglevel(struct net_device *netdev, u32 data)
+static void igc_ethtool_set_msglevel(struct net_device *netdev, u32 data)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 
 	adapter->msg_enable = data;
 }
 
-static int igc_nway_reset(struct net_device *netdev)
+static int igc_ethtool_nway_reset(struct net_device *netdev)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 
@@ -405,7 +407,7 @@ static int igc_nway_reset(struct net_device *netdev)
 	return 0;
 }
 
-static u32 igc_get_link(struct net_device *netdev)
+static u32 igc_ethtool_get_link(struct net_device *netdev)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	struct igc_mac_info *mac = &adapter->hw.mac;
@@ -422,15 +424,15 @@ static u32 igc_get_link(struct net_device *netdev)
 	return igc_has_link(adapter);
 }
 
-static int igc_get_eeprom_len(struct net_device *netdev)
+static int igc_ethtool_get_eeprom_len(struct net_device *netdev)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 
 	return adapter->hw.nvm.word_size * 2;
 }
 
-static int igc_get_eeprom(struct net_device *netdev,
-			  struct ethtool_eeprom *eeprom, u8 *bytes)
+static int igc_ethtool_get_eeprom(struct net_device *netdev,
+				  struct ethtool_eeprom *eeprom, u8 *bytes)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	struct igc_hw *hw = &adapter->hw;
@@ -476,8 +478,8 @@ static int igc_get_eeprom(struct net_device *netdev,
 	return ret_val;
 }
 
-static int igc_set_eeprom(struct net_device *netdev,
-			  struct ethtool_eeprom *eeprom, u8 *bytes)
+static int igc_ethtool_set_eeprom(struct net_device *netdev,
+				  struct ethtool_eeprom *eeprom, u8 *bytes)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	struct igc_hw *hw = &adapter->hw;
@@ -544,8 +546,8 @@ static int igc_set_eeprom(struct net_device *netdev,
 	return ret_val;
 }
 
-static void igc_get_ringparam(struct net_device *netdev,
-			      struct ethtool_ringparam *ring)
+static void igc_ethtool_get_ringparam(struct net_device *netdev,
+				      struct ethtool_ringparam *ring)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 
@@ -555,8 +557,8 @@ static void igc_get_ringparam(struct net_device *netdev,
 	ring->tx_pending = adapter->tx_ring_count;
 }
 
-static int igc_set_ringparam(struct net_device *netdev,
-			     struct ethtool_ringparam *ring)
+static int igc_ethtool_set_ringparam(struct net_device *netdev,
+				     struct ethtool_ringparam *ring)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	struct igc_ring *temp_ring;
@@ -670,8 +672,8 @@ static int igc_set_ringparam(struct net_device *netdev,
 	return err;
 }
 
-static void igc_get_pauseparam(struct net_device *netdev,
-			       struct ethtool_pauseparam *pause)
+static void igc_ethtool_get_pauseparam(struct net_device *netdev,
+				       struct ethtool_pauseparam *pause)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	struct igc_hw *hw = &adapter->hw;
@@ -689,8 +691,8 @@ static void igc_get_pauseparam(struct net_device *netdev,
 	}
 }
 
-static int igc_set_pauseparam(struct net_device *netdev,
-			      struct ethtool_pauseparam *pause)
+static int igc_ethtool_set_pauseparam(struct net_device *netdev,
+				      struct ethtool_pauseparam *pause)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	struct igc_hw *hw = &adapter->hw;
@@ -729,7 +731,8 @@ static int igc_set_pauseparam(struct net_device *netdev,
 	return retval;
 }
 
-static void igc_get_strings(struct net_device *netdev, u32 stringset, u8 *data)
+static void igc_ethtool_get_strings(struct net_device *netdev, u32 stringset,
+				    u8 *data)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	u8 *p = data;
@@ -780,7 +783,7 @@ static void igc_get_strings(struct net_device *netdev, u32 stringset, u8 *data)
 	}
 }
 
-static int igc_get_sset_count(struct net_device *netdev, int sset)
+static int igc_ethtool_get_sset_count(struct net_device *netdev, int sset)
 {
 	switch (sset) {
 	case ETH_SS_STATS:
@@ -794,7 +797,7 @@ static int igc_get_sset_count(struct net_device *netdev, int sset)
 	}
 }
 
-static void igc_get_ethtool_stats(struct net_device *netdev,
+static void igc_ethtool_get_stats(struct net_device *netdev,
 				  struct ethtool_stats *stats, u64 *data)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
@@ -850,8 +853,8 @@ static void igc_get_ethtool_stats(struct net_device *netdev,
 	spin_unlock(&adapter->stats64_lock);
 }
 
-static int igc_get_coalesce(struct net_device *netdev,
-			    struct ethtool_coalesce *ec)
+static int igc_ethtool_get_coalesce(struct net_device *netdev,
+				    struct ethtool_coalesce *ec)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 
@@ -870,8 +873,8 @@ static int igc_get_coalesce(struct net_device *netdev,
 	return 0;
 }
 
-static int igc_set_coalesce(struct net_device *netdev,
-			    struct ethtool_coalesce *ec)
+static int igc_ethtool_set_coalesce(struct net_device *netdev,
+				    struct ethtool_coalesce *ec)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	int i;
@@ -928,7 +931,7 @@ static int igc_set_coalesce(struct net_device *netdev,
 }
 
 #define ETHER_TYPE_FULL_MASK ((__force __be16)~0)
-static int igc_get_ethtool_nfc_entry(struct igc_adapter *adapter,
+static int igc_ethtool_get_nfc_entry(struct igc_adapter *adapter,
 				     struct ethtool_rxnfc *cmd)
 {
 	struct ethtool_rx_flow_spec *fsp = &cmd->fs;
@@ -977,7 +980,7 @@ static int igc_get_ethtool_nfc_entry(struct igc_adapter *adapter,
 	return 0;
 }
 
-static int igc_get_ethtool_nfc_all(struct igc_adapter *adapter,
+static int igc_ethtool_get_nfc_all(struct igc_adapter *adapter,
 				   struct ethtool_rxnfc *cmd,
 				   u32 *rule_locs)
 {
@@ -999,8 +1002,8 @@ static int igc_get_ethtool_nfc_all(struct igc_adapter *adapter,
 	return 0;
 }
 
-static int igc_get_rss_hash_opts(struct igc_adapter *adapter,
-				 struct ethtool_rxnfc *cmd)
+static int igc_ethtool_get_rss_hash_opts(struct igc_adapter *adapter,
+					 struct ethtool_rxnfc *cmd)
 {
 	cmd->data = 0;
 
@@ -1049,8 +1052,8 @@ static int igc_get_rss_hash_opts(struct igc_adapter *adapter,
 	return 0;
 }
 
-static int igc_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
-			 u32 *rule_locs)
+static int igc_ethtool_get_rxnfc(struct net_device *dev,
+				 struct ethtool_rxnfc *cmd, u32 *rule_locs)
 {
 	struct igc_adapter *adapter = netdev_priv(dev);
 
@@ -1062,11 +1065,11 @@ static int igc_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
 		cmd->rule_cnt = adapter->nfc_filter_count;
 		return 0;
 	case ETHTOOL_GRXCLSRULE:
-		return igc_get_ethtool_nfc_entry(adapter, cmd);
+		return igc_ethtool_get_nfc_entry(adapter, cmd);
 	case ETHTOOL_GRXCLSRLALL:
-		return igc_get_ethtool_nfc_all(adapter, cmd, rule_locs);
+		return igc_ethtool_get_nfc_all(adapter, cmd, rule_locs);
 	case ETHTOOL_GRXFH:
-		return igc_get_rss_hash_opts(adapter, cmd);
+		return igc_ethtool_get_rss_hash_opts(adapter, cmd);
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -1074,8 +1077,8 @@ static int igc_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
 
 #define UDP_RSS_FLAGS (IGC_FLAG_RSS_FIELD_IPV4_UDP | \
 		       IGC_FLAG_RSS_FIELD_IPV6_UDP)
-static int igc_set_rss_hash_opt(struct igc_adapter *adapter,
-				struct ethtool_rxnfc *nfc)
+static int igc_ethtool_set_rss_hash_opt(struct igc_adapter *adapter,
+					struct ethtool_rxnfc *nfc)
 {
 	u32 flags = adapter->flags;
 
@@ -1240,7 +1243,7 @@ int igc_erase_filter(struct igc_adapter *adapter, struct igc_nfc_filter *input)
 	return 0;
 }
 
-static int igc_update_ethtool_nfc_entry(struct igc_adapter *adapter,
+static int igc_ethtool_update_nfc_entry(struct igc_adapter *adapter,
 					struct igc_nfc_filter *input,
 					u16 sw_idx)
 {
@@ -1288,7 +1291,7 @@ static int igc_update_ethtool_nfc_entry(struct igc_adapter *adapter,
 	return 0;
 }
 
-static int igc_add_ethtool_nfc_entry(struct igc_adapter *adapter,
+static int igc_ethtool_add_nfc_entry(struct igc_adapter *adapter,
 				     struct ethtool_rxnfc *cmd)
 {
 	struct net_device *netdev = adapter->netdev;
@@ -1379,7 +1382,7 @@ static int igc_add_ethtool_nfc_entry(struct igc_adapter *adapter,
 	if (err)
 		goto err_out_w_lock;
 
-	igc_update_ethtool_nfc_entry(adapter, input, input->sw_idx);
+	igc_ethtool_update_nfc_entry(adapter, input, input->sw_idx);
 
 	spin_unlock(&adapter->nfc_lock);
 	return 0;
@@ -1391,7 +1394,7 @@ static int igc_add_ethtool_nfc_entry(struct igc_adapter *adapter,
 	return err;
 }
 
-static int igc_del_ethtool_nfc_entry(struct igc_adapter *adapter,
+static int igc_ethtool_del_nfc_entry(struct igc_adapter *adapter,
 				     struct ethtool_rxnfc *cmd)
 {
 	struct ethtool_rx_flow_spec *fsp =
@@ -1399,23 +1402,24 @@ static int igc_del_ethtool_nfc_entry(struct igc_adapter *adapter,
 	int err;
 
 	spin_lock(&adapter->nfc_lock);
-	err = igc_update_ethtool_nfc_entry(adapter, NULL, fsp->location);
+	err = igc_ethtool_update_nfc_entry(adapter, NULL, fsp->location);
 	spin_unlock(&adapter->nfc_lock);
 
 	return err;
 }
 
-static int igc_set_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd)
+static int igc_ethtool_set_rxnfc(struct net_device *dev,
+				 struct ethtool_rxnfc *cmd)
 {
 	struct igc_adapter *adapter = netdev_priv(dev);
 
 	switch (cmd->cmd) {
 	case ETHTOOL_SRXFH:
-		return igc_set_rss_hash_opt(adapter, cmd);
+		return igc_ethtool_set_rss_hash_opt(adapter, cmd);
 	case ETHTOOL_SRXCLSRLINS:
-		return igc_add_ethtool_nfc_entry(adapter, cmd);
+		return igc_ethtool_add_nfc_entry(adapter, cmd);
 	case ETHTOOL_SRXCLSRLDEL:
-		return igc_del_ethtool_nfc_entry(adapter, cmd);
+		return igc_ethtool_del_nfc_entry(adapter, cmd);
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -1443,13 +1447,13 @@ void igc_write_rss_indir_tbl(struct igc_adapter *adapter)
 	}
 }
 
-static u32 igc_get_rxfh_indir_size(struct net_device *netdev)
+static u32 igc_ethtool_get_rxfh_indir_size(struct net_device *netdev)
 {
 	return IGC_RETA_SIZE;
 }
 
-static int igc_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
-			u8 *hfunc)
+static int igc_ethtool_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
+				u8 *hfunc)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	int i;
@@ -1464,8 +1468,8 @@ static int igc_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
 	return 0;
 }
 
-static int igc_set_rxfh(struct net_device *netdev, const u32 *indir,
-			const u8 *key, const u8 hfunc)
+static int igc_ethtool_set_rxfh(struct net_device *netdev, const u32 *indir,
+				const u8 *key, const u8 hfunc)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	u32 num_queues;
@@ -1493,8 +1497,8 @@ static int igc_set_rxfh(struct net_device *netdev, const u32 *indir,
 	return 0;
 }
 
-static void igc_get_channels(struct net_device *netdev,
-			     struct ethtool_channels *ch)
+static void igc_ethtool_get_channels(struct net_device *netdev,
+				     struct ethtool_channels *ch)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 
@@ -1510,8 +1514,8 @@ static void igc_get_channels(struct net_device *netdev,
 	ch->combined_count = adapter->rss_queues;
 }
 
-static int igc_set_channels(struct net_device *netdev,
-			    struct ethtool_channels *ch)
+static int igc_ethtool_set_channels(struct net_device *netdev,
+				    struct ethtool_channels *ch)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	unsigned int count = ch->combined_count;
@@ -1543,8 +1547,8 @@ static int igc_set_channels(struct net_device *netdev,
 	return 0;
 }
 
-static int igc_get_ts_info(struct net_device *dev,
-			   struct ethtool_ts_info *info)
+static int igc_ethtool_get_ts_info(struct net_device *dev,
+				   struct ethtool_ts_info *info)
 {
 	struct igc_adapter *adapter = netdev_priv(dev);
 
@@ -1576,7 +1580,7 @@ static int igc_get_ts_info(struct net_device *dev,
 	}
 }
 
-static u32 igc_get_priv_flags(struct net_device *netdev)
+static u32 igc_ethtool_get_priv_flags(struct net_device *netdev)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	u32 priv_flags = 0;
@@ -1587,7 +1591,7 @@ static u32 igc_get_priv_flags(struct net_device *netdev)
 	return priv_flags;
 }
 
-static int igc_set_priv_flags(struct net_device *netdev, u32 priv_flags)
+static int igc_ethtool_set_priv_flags(struct net_device *netdev, u32 priv_flags)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	unsigned int flags = adapter->flags;
@@ -1622,8 +1626,8 @@ static void igc_ethtool_complete(struct net_device *netdev)
 	pm_runtime_put(&adapter->pdev->dev);
 }
 
-static int igc_get_link_ksettings(struct net_device *netdev,
-				  struct ethtool_link_ksettings *cmd)
+static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
+					  struct ethtool_link_ksettings *cmd)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	struct igc_hw *hw = &adapter->hw;
@@ -1729,8 +1733,9 @@ static int igc_get_link_ksettings(struct net_device *netdev,
 	return 0;
 }
 
-static int igc_set_link_ksettings(struct net_device *netdev,
-				  const struct ethtool_link_ksettings *cmd)
+static int
+igc_ethtool_set_link_ksettings(struct net_device *netdev,
+			       const struct ethtool_link_ksettings *cmd)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	struct net_device *dev = adapter->netdev;
@@ -1796,8 +1801,8 @@ static int igc_set_link_ksettings(struct net_device *netdev,
 	return 0;
 }
 
-static void igc_diag_test(struct net_device *netdev,
-			  struct ethtool_test *eth_test, u64 *data)
+static void igc_ethtool_diag_test(struct net_device *netdev,
+				  struct ethtool_test *eth_test, u64 *data)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	bool if_running = netif_running(netdev);
@@ -1859,45 +1864,45 @@ static void igc_diag_test(struct net_device *netdev,
 
 static const struct ethtool_ops igc_ethtool_ops = {
 	.supported_coalesce_params = ETHTOOL_COALESCE_USECS,
-	.get_drvinfo		= igc_get_drvinfo,
-	.get_regs_len		= igc_get_regs_len,
-	.get_regs		= igc_get_regs,
-	.get_wol		= igc_get_wol,
-	.set_wol		= igc_set_wol,
-	.get_msglevel		= igc_get_msglevel,
-	.set_msglevel		= igc_set_msglevel,
-	.nway_reset		= igc_nway_reset,
-	.get_link		= igc_get_link,
-	.get_eeprom_len		= igc_get_eeprom_len,
-	.get_eeprom		= igc_get_eeprom,
-	.set_eeprom		= igc_set_eeprom,
-	.get_ringparam		= igc_get_ringparam,
-	.set_ringparam		= igc_set_ringparam,
-	.get_pauseparam		= igc_get_pauseparam,
-	.set_pauseparam		= igc_set_pauseparam,
-	.get_strings		= igc_get_strings,
-	.get_sset_count		= igc_get_sset_count,
-	.get_ethtool_stats	= igc_get_ethtool_stats,
-	.get_coalesce		= igc_get_coalesce,
-	.set_coalesce		= igc_set_coalesce,
-	.get_rxnfc		= igc_get_rxnfc,
-	.set_rxnfc		= igc_set_rxnfc,
-	.get_rxfh_indir_size	= igc_get_rxfh_indir_size,
-	.get_rxfh		= igc_get_rxfh,
-	.set_rxfh		= igc_set_rxfh,
-	.get_ts_info		= igc_get_ts_info,
-	.get_channels		= igc_get_channels,
-	.set_channels		= igc_set_channels,
-	.get_priv_flags		= igc_get_priv_flags,
-	.set_priv_flags		= igc_set_priv_flags,
+	.get_drvinfo		= igc_ethtool_get_drvinfo,
+	.get_regs_len		= igc_ethtool_get_regs_len,
+	.get_regs		= igc_ethtool_get_regs,
+	.get_wol		= igc_ethtool_get_wol,
+	.set_wol		= igc_ethtool_set_wol,
+	.get_msglevel		= igc_ethtool_get_msglevel,
+	.set_msglevel		= igc_ethtool_set_msglevel,
+	.nway_reset		= igc_ethtool_nway_reset,
+	.get_link		= igc_ethtool_get_link,
+	.get_eeprom_len		= igc_ethtool_get_eeprom_len,
+	.get_eeprom		= igc_ethtool_get_eeprom,
+	.set_eeprom		= igc_ethtool_set_eeprom,
+	.get_ringparam		= igc_ethtool_get_ringparam,
+	.set_ringparam		= igc_ethtool_set_ringparam,
+	.get_pauseparam		= igc_ethtool_get_pauseparam,
+	.set_pauseparam		= igc_ethtool_set_pauseparam,
+	.get_strings		= igc_ethtool_get_strings,
+	.get_sset_count		= igc_ethtool_get_sset_count,
+	.get_ethtool_stats	= igc_ethtool_get_stats,
+	.get_coalesce		= igc_ethtool_get_coalesce,
+	.set_coalesce		= igc_ethtool_set_coalesce,
+	.get_rxnfc		= igc_ethtool_get_rxnfc,
+	.set_rxnfc		= igc_ethtool_set_rxnfc,
+	.get_rxfh_indir_size	= igc_ethtool_get_rxfh_indir_size,
+	.get_rxfh		= igc_ethtool_get_rxfh,
+	.set_rxfh		= igc_ethtool_set_rxfh,
+	.get_ts_info		= igc_ethtool_get_ts_info,
+	.get_channels		= igc_ethtool_get_channels,
+	.set_channels		= igc_ethtool_set_channels,
+	.get_priv_flags		= igc_ethtool_get_priv_flags,
+	.set_priv_flags		= igc_ethtool_set_priv_flags,
 	.begin			= igc_ethtool_begin,
 	.complete		= igc_ethtool_complete,
-	.get_link_ksettings	= igc_get_link_ksettings,
-	.set_link_ksettings	= igc_set_link_ksettings,
-	.self_test		= igc_diag_test,
+	.get_link_ksettings	= igc_ethtool_get_link_ksettings,
+	.set_link_ksettings	= igc_ethtool_set_link_ksettings,
+	.self_test		= igc_ethtool_diag_test,
 };
 
-void igc_set_ethtool_ops(struct net_device *netdev)
+void igc_ethtool_set_ops(struct net_device *netdev)
 {
 	netdev->ethtool_ops = &igc_ethtool_ops;
 }
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 04f7f4112205..ecdc0548f24e 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -4935,7 +4935,7 @@ static int igc_probe(struct pci_dev *pdev,
 	hw->hw_addr = adapter->io_addr;
 
 	netdev->netdev_ops = &igc_netdev_ops;
-	igc_set_ethtool_ops(netdev);
+	igc_ethtool_set_ops(netdev);
 	netdev->watchdog_timeo = 5 * HZ;
 
 	netdev->mem_start = pci_resource_start(pdev, 0);
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
