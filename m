Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C6C191E34
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2020 01:38:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5778E23E65;
	Wed, 25 Mar 2020 00:38:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YNthY5Q-paD6; Wed, 25 Mar 2020 00:38:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4688E20022;
	Wed, 25 Mar 2020 00:38:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5043B1BF32A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 00:38:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1C1BD20028
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 00:38:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LDM18lxbZGuu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2020 00:38:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 9107623B2B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 00:38:34 +0000 (UTC)
IronPort-SDR: Z2pM+JmCJEzini3iJU5igiteqqCHAyQZPzRfkXlJ42AaJwEIRbKvETCrt0IN38ALWZlQ+RgPVP
 kHov4It9hc8Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 17:38:34 -0700
IronPort-SDR: keuukZ7dVScMd4YPOtvLBtat9WedBq55BhOFs9kZ5ChUl8T8g298tBFSLkaeWEN8q98otKzXpi
 SyAvtRr7Me0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,302,1580803200"; d="scan'208";a="448099340"
Received: from johnorte-mobl2.amr.corp.intel.com ([10.251.10.249])
 by fmsmga006.fm.intel.com with ESMTP; 24 Mar 2020 17:38:34 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Mar 2020 17:38:16 -0700
Message-Id: <20200325003824.5487-3-andre.guedes@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200325003824.5487-1-andre.guedes@intel.com>
References: <20200325003824.5487-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 02/10] igc: Use netdev log helpers in
 igc_ethtool.c
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

In igc_ethtool.c we print log messages using dev_* helpers, generating
inconsistent output with the rest of the driver. Since this is a network
device driver, we should preferably use netdev_* helpers because they
append the interface name to the message, helping making sense the of
the logs.

This patch converts all dev_* calls to netdev_*. It also takes this
opportunity to remove the '\n' character at the end of messages since it
is automatically added by netdev_* log helpers.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 48 +++++++++-----------
 1 file changed, 22 insertions(+), 26 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 37bfa5b420c6..47115d73ea61 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1155,8 +1155,8 @@ static int igc_set_rss_hash_opt(struct igc_adapter *adapter,
 
 		if ((flags & UDP_RSS_FLAGS) &&
 		    !(adapter->flags & UDP_RSS_FLAGS))
-			dev_err(&adapter->pdev->dev,
-				"enabling UDP RSS: fragmented packets may arrive out of order to the stack above\n");
+			netdev_err(adapter->netdev,
+				   "Enabling UDP RSS: fragmented packets may arrive out of order to the stack above");
 
 		adapter->flags = flags;
 
@@ -1195,7 +1195,8 @@ static int igc_rxnfc_write_etype_filter(struct igc_adapter *adapter,
 			break;
 	}
 	if (i == MAX_ETYPE_FILTER) {
-		dev_err(&adapter->pdev->dev, "ethtool -N: etype filters are all used.\n");
+		netdev_err(adapter->netdev,
+			   "ethtool -N: etype filters are all used");
 		return -EINVAL;
 	}
 
@@ -1236,7 +1237,8 @@ static int igc_rxnfc_write_vlan_prio_filter(struct igc_adapter *adapter,
 	/* check whether this vlan prio is already set */
 	if (vlapqf & IGC_VLAPQF_P_VALID(vlan_priority) &&
 	    queue_index != input->action) {
-		dev_err(&adapter->pdev->dev, "ethtool rxnfc set vlan prio filter failed.\n");
+		netdev_err(adapter->netdev,
+			   "ethtool rxnfc set vlan prio filter failed");
 		return -EEXIST;
 	}
 
@@ -1255,8 +1257,8 @@ int igc_add_filter(struct igc_adapter *adapter, struct igc_nfc_filter *input)
 
 	if (hw->mac.type == igc_i225 &&
 	    !(input->filter.match_flags & ~IGC_FILTER_FLAG_SRC_MAC_ADDR)) {
-		dev_err(&adapter->pdev->dev,
-			"i225 doesn't support flow classification rules specifying only source addresses.\n");
+		netdev_err(adapter->netdev,
+			   "i225 doesn't support flow classification rules specifying only source addresses");
 		return -EOPNOTSUPP;
 	}
 
@@ -1404,13 +1406,14 @@ static int igc_add_ethtool_nfc_entry(struct igc_adapter *adapter,
 	 */
 	if (fsp->ring_cookie == RX_CLS_FLOW_DISC ||
 	    fsp->ring_cookie >= adapter->num_rx_queues) {
-		dev_err(&adapter->pdev->dev, "ethtool -N: The specified action is invalid\n");
+		netdev_err(netdev,
+			   "ethtool -N: The specified action is invalid");
 		return -EINVAL;
 	}
 
 	/* Don't allow indexes to exist outside of available space */
 	if (fsp->location >= IGC_MAX_RXNFC_FILTERS) {
-		dev_err(&adapter->pdev->dev, "Location out of range\n");
+		netdev_err(netdev, "Location out of range");
 		return -EINVAL;
 	}
 
@@ -1458,8 +1461,8 @@ static int igc_add_ethtool_nfc_entry(struct igc_adapter *adapter,
 		if (!memcmp(&input->filter, &rule->filter,
 			    sizeof(input->filter))) {
 			err = -EEXIST;
-			dev_err(&adapter->pdev->dev,
-				"ethtool: this filter is already set\n");
+			netdev_err(netdev,
+				   "ethtool: this filter is already set");
 			goto err_out_w_lock;
 		}
 	}
@@ -1832,6 +1835,7 @@ static int igc_set_link_ksettings(struct net_device *netdev,
 				  const struct ethtool_link_ksettings *cmd)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
+	struct net_device *dev = adapter->netdev;
 	struct igc_hw *hw = &adapter->hw;
 	u32 advertising;
 
@@ -1839,8 +1843,7 @@ static int igc_set_link_ksettings(struct net_device *netdev,
 	 * cannot be changed
 	 */
 	if (igc_check_reset_block(hw)) {
-		dev_err(&adapter->pdev->dev,
-			"Cannot change link characteristics when reset is active.\n");
+		netdev_err(dev, "Cannot change link characteristics when reset is active");
 		return -EINVAL;
 	}
 
@@ -1851,7 +1854,7 @@ static int igc_set_link_ksettings(struct net_device *netdev,
 	if (cmd->base.eth_tp_mdix_ctrl) {
 		if (cmd->base.eth_tp_mdix_ctrl != ETH_TP_MDI_AUTO &&
 		    cmd->base.autoneg != AUTONEG_ENABLE) {
-			dev_err(&adapter->pdev->dev, "forcing MDI/MDI-X state is not supported when link speed and/or duplex are forced\n");
+			netdev_err(dev, "Forcing MDI/MDI-X state is not supported when link speed and/or duplex are forced");
 			return -EINVAL;
 		}
 	}
@@ -1868,9 +1871,7 @@ static int igc_set_link_ksettings(struct net_device *netdev,
 		if (adapter->fc_autoneg)
 			hw->fc.requested_mode = igc_fc_default;
 	} else {
-		/* calling this overrides forced MDI setting */
-		dev_info(&adapter->pdev->dev,
-			 "Force mode currently not supported\n");
+		netdev_info(dev, "Force mode currently not supported");
 	}
 
 	/* MDI-X => 2; MDI => 1; Auto => 3 */
@@ -1904,8 +1905,7 @@ static void igc_diag_test(struct net_device *netdev,
 	bool if_running = netif_running(netdev);
 
 	if (eth_test->flags == ETH_TEST_FL_OFFLINE) {
-		dev_info(&adapter->pdev->dev,
-			 "offline testing starting\n");
+		netdev_info(netdev, "Offline testing starting");
 		set_bit(__IGC_TESTING, &adapter->state);
 
 		/* Link test performed before hardware reset so autoneg doesn't
@@ -1919,22 +1919,19 @@ static void igc_diag_test(struct net_device *netdev,
 		else
 			igc_reset(adapter);
 
-		dev_info(&adapter->pdev->dev,
-			 "register testing starting\n");
+		netdev_info(netdev, "Register testing starting");
 		if (igc_reg_test(adapter, &data[IGC_ETH_TEST_REG]))
 			eth_test->flags |= ETH_TEST_FL_FAILED;
 
 		igc_reset(adapter);
 
-		dev_info(&adapter->pdev->dev,
-			 "eeprom testing starting\n");
+		netdev_info(netdev, "EEPROM testing starting");
 		if (igc_eeprom_test(adapter, &data[IGC_ETH_TEST_EEPROM]))
 			eth_test->flags |= ETH_TEST_FL_FAILED;
 
 		igc_reset(adapter);
 
-		dev_info(&adapter->pdev->dev,
-			 "interrupt testing starting\n");
+		netdev_info(netdev, "Interrupt testing starting");
 		if (igc_intr_test(adapter, &data[IGC_ETH_TEST_INTR]))
 			eth_test->flags |= ETH_TEST_FL_FAILED;
 
@@ -1947,8 +1944,7 @@ static void igc_diag_test(struct net_device *netdev,
 		if (if_running)
 			igc_open(netdev);
 	} else {
-		dev_info(&adapter->pdev->dev,
-			 "online testing starting\n");
+		netdev_info(netdev, "Online testing starting");
 
 		/* register, eeprom, intr and loopback tests not run online */
 		data[IGC_ETH_TEST_REG] = 0;
-- 
2.25.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
