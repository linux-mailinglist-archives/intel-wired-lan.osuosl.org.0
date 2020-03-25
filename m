Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EBB3191E30
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2020 01:38:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CF978861C9;
	Wed, 25 Mar 2020 00:38:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id swSPuGIu_7O2; Wed, 25 Mar 2020 00:38:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4627B8689C;
	Wed, 25 Mar 2020 00:38:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5A5F31BF9B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 00:38:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 26CDF20341
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 00:38:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u5zymGH1abtt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2020 00:38:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 53BC123A53
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 00:38:34 +0000 (UTC)
IronPort-SDR: vnMjy4d0BedlwjUUvmrCubD6V5dJOnwJYte7KThjvrlTtcQqs1LujH4mxxpZ62sqIEAgcSsQkH
 QXI2wGudPO+w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 17:38:34 -0700
IronPort-SDR: 4SXWG6lbRJm/QsuCL6/IbJCqUjT/YO4FjaQndNMzP7CUynXh8YZSSp3neKrkQQWI4Y/2JMzsEE
 6S08GrNK04vQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,302,1580803200"; d="scan'208";a="448099338"
Received: from johnorte-mobl2.amr.corp.intel.com ([10.251.10.249])
 by fmsmga006.fm.intel.com with ESMTP; 24 Mar 2020 17:38:33 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Mar 2020 17:38:15 -0700
Message-Id: <20200325003824.5487-2-andre.guedes@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200325003824.5487-1-andre.guedes@intel.com>
References: <20200325003824.5487-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 01/10] igc: Use netdev log helpers in
 igc_main.c
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

In igc_main.c we print log messages using both dev_* and netdev_*
helpers, generating inconsistent output. Since this is a network device
driver, we should preferably use netdev_* helpers because they append
the interface name to the message, helping making sense out of the logs.

This patch converts all dev_* calls to netdev_*. There is only two
exceptions: one in igc_probe (net_device has not been allocated yet),
and another one in igc_init_module (module initialization). It also
takes this opportunity to improve some messages and remove the '\n'
character at the end of messages since it is automatically added to by
netdev_* log helpers.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 129 ++++++++++------------
 1 file changed, 59 insertions(+), 70 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index a605a02c0479..c3555148ca0e 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -76,7 +76,7 @@ static void igc_power_down_link(struct igc_adapter *adapter)
 
 void igc_reset(struct igc_adapter *adapter)
 {
-	struct pci_dev *pdev = adapter->pdev;
+	struct net_device *dev = adapter->netdev;
 	struct igc_hw *hw = &adapter->hw;
 	struct igc_fc_info *fc = &hw->fc;
 	u32 pba, hwm;
@@ -103,7 +103,7 @@ void igc_reset(struct igc_adapter *adapter)
 	hw->mac.ops.reset_hw(hw);
 
 	if (hw->mac.ops.init_hw(hw))
-		dev_err(&pdev->dev, "Hardware Error\n");
+		netdev_err(dev, "Error on hardware initialization");
 
 	if (!netif_running(adapter->netdev))
 		igc_power_down_link(adapter);
@@ -288,6 +288,7 @@ static void igc_clean_all_tx_rings(struct igc_adapter *adapter)
  */
 int igc_setup_tx_resources(struct igc_ring *tx_ring)
 {
+	struct net_device *ndev = tx_ring->netdev;
 	struct device *dev = tx_ring->dev;
 	int size = 0;
 
@@ -313,8 +314,7 @@ int igc_setup_tx_resources(struct igc_ring *tx_ring)
 
 err:
 	vfree(tx_ring->tx_buffer_info);
-	dev_err(dev,
-		"Unable to allocate memory for the transmit descriptor ring\n");
+	netdev_err(ndev, "Unable to allocate memory for tx descriptor ring");
 	return -ENOMEM;
 }
 
@@ -326,14 +326,13 @@ int igc_setup_tx_resources(struct igc_ring *tx_ring)
  */
 static int igc_setup_all_tx_resources(struct igc_adapter *adapter)
 {
-	struct pci_dev *pdev = adapter->pdev;
+	struct net_device *dev = adapter->netdev;
 	int i, err = 0;
 
 	for (i = 0; i < adapter->num_tx_queues; i++) {
 		err = igc_setup_tx_resources(adapter->tx_ring[i]);
 		if (err) {
-			dev_err(&pdev->dev,
-				"Allocation for Tx Queue %u failed\n", i);
+			netdev_err(dev, "Error on tx queue %u setup", i);
 			for (i--; i >= 0; i--)
 				igc_free_tx_resources(adapter->tx_ring[i]);
 			break;
@@ -444,6 +443,7 @@ static void igc_free_all_rx_resources(struct igc_adapter *adapter)
  */
 int igc_setup_rx_resources(struct igc_ring *rx_ring)
 {
+	struct net_device *ndev = rx_ring->netdev;
 	struct device *dev = rx_ring->dev;
 	int size, desc_len;
 
@@ -473,8 +473,7 @@ int igc_setup_rx_resources(struct igc_ring *rx_ring)
 err:
 	vfree(rx_ring->rx_buffer_info);
 	rx_ring->rx_buffer_info = NULL;
-	dev_err(dev,
-		"Unable to allocate memory for the receive descriptor ring\n");
+	netdev_err(ndev, "Unable to allocate memory for rx descriptor ring");
 	return -ENOMEM;
 }
 
@@ -487,14 +486,13 @@ int igc_setup_rx_resources(struct igc_ring *rx_ring)
  */
 static int igc_setup_all_rx_resources(struct igc_adapter *adapter)
 {
-	struct pci_dev *pdev = adapter->pdev;
+	struct net_device *dev = adapter->netdev;
 	int i, err = 0;
 
 	for (i = 0; i < adapter->num_rx_queues; i++) {
 		err = igc_setup_rx_resources(adapter->rx_ring[i]);
 		if (err) {
-			dev_err(&pdev->dev,
-				"Allocation for Rx Queue %u failed\n", i);
+			netdev_err(dev, "Error on rx queue %u setup", i);
 			for (i--; i >= 0; i--)
 				igc_free_rx_resources(adapter->rx_ring[i]);
 			break;
@@ -1196,7 +1194,7 @@ static int igc_tx_map(struct igc_ring *tx_ring,
 
 	return 0;
 dma_error:
-	dev_err(tx_ring->dev, "TX DMA map failed\n");
+	netdev_err(tx_ring->netdev, "TX DMA map failed");
 	tx_buffer = &tx_ring->tx_buffer_info[i];
 
 	/* clear dma mappings for failed tx_buffer_info map */
@@ -1460,8 +1458,8 @@ static void igc_rx_checksum(struct igc_ring *ring,
 				      IGC_RXD_STAT_UDPCS))
 		skb->ip_summed = CHECKSUM_UNNECESSARY;
 
-	dev_dbg(ring->dev, "cksum success: bits %08X\n",
-		le32_to_cpu(rx_desc->wb.upper.status_error));
+	netdev_dbg(ring->netdev, "cksum success: bits %08X",
+		   le32_to_cpu(rx_desc->wb.upper.status_error));
 }
 
 static inline void igc_rx_hash(struct igc_ring *ring,
@@ -2123,27 +2121,27 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
 		    (adapter->tx_timeout_factor * HZ)) &&
 		    !(rd32(IGC_STATUS) & IGC_STATUS_TXOFF)) {
 			/* detected Tx unit hang */
-			dev_err(tx_ring->dev,
-				"Detected Tx Unit Hang\n"
-				"  Tx Queue             <%d>\n"
-				"  TDH                  <%x>\n"
-				"  TDT                  <%x>\n"
-				"  next_to_use          <%x>\n"
-				"  next_to_clean        <%x>\n"
-				"buffer_info[next_to_clean]\n"
-				"  time_stamp           <%lx>\n"
-				"  next_to_watch        <%p>\n"
-				"  jiffies              <%lx>\n"
-				"  desc.status          <%x>\n",
-				tx_ring->queue_index,
-				rd32(IGC_TDH(tx_ring->reg_idx)),
-				readl(tx_ring->tail),
-				tx_ring->next_to_use,
-				tx_ring->next_to_clean,
-				tx_buffer->time_stamp,
-				tx_buffer->next_to_watch,
-				jiffies,
-				tx_buffer->next_to_watch->wb.status);
+			netdev_err(tx_ring->netdev,
+				   "Detected Tx Unit Hang\n"
+				   "  Tx Queue             <%d>\n"
+				   "  TDH                  <%x>\n"
+				   "  TDT                  <%x>\n"
+				   "  next_to_use          <%x>\n"
+				   "  next_to_clean        <%x>\n"
+				   "buffer_info[next_to_clean]\n"
+				   "  time_stamp           <%lx>\n"
+				   "  next_to_watch        <%p>\n"
+				   "  jiffies              <%lx>\n"
+				   "  desc.status          <%x>\n",
+				   tx_ring->queue_index,
+				   rd32(IGC_TDH(tx_ring->reg_idx)),
+				   readl(tx_ring->tail),
+				   tx_ring->next_to_use,
+				   tx_ring->next_to_clean,
+				   tx_buffer->time_stamp,
+				   tx_buffer->next_to_watch,
+				   jiffies,
+				   tx_buffer->next_to_watch->wb.status);
 			netif_stop_subqueue(tx_ring->netdev,
 					    tx_ring->queue_index);
 
@@ -3239,14 +3237,14 @@ static int igc_alloc_q_vectors(struct igc_adapter *adapter)
  */
 static int igc_init_interrupt_scheme(struct igc_adapter *adapter, bool msix)
 {
-	struct pci_dev *pdev = adapter->pdev;
+	struct net_device *dev = adapter->netdev;
 	int err = 0;
 
 	igc_set_interrupt_capability(adapter, msix);
 
 	err = igc_alloc_q_vectors(adapter);
 	if (err) {
-		dev_err(&pdev->dev, "Unable to allocate memory for vectors\n");
+		netdev_err(dev, "Unable to allocate memory for vectors");
 		goto err_alloc_q_vectors;
 	}
 
@@ -3306,7 +3304,7 @@ static int igc_sw_init(struct igc_adapter *adapter)
 
 	/* This call may decrease the number of queues */
 	if (igc_init_interrupt_scheme(adapter, true)) {
-		dev_err(&pdev->dev, "Unable to allocate memory for queues\n");
+		netdev_err(netdev, "Unable to allocate memory for queues");
 		return -ENOMEM;
 	}
 
@@ -3620,7 +3618,7 @@ static void igc_reset_task(struct work_struct *work)
 
 	igc_rings_dump(adapter);
 	igc_regs_dump(adapter);
-	netdev_err(adapter->netdev, "Reset adapter\n");
+	netdev_err(adapter->netdev, "Reset adapter");
 	igc_reinit_locked(adapter);
 }
 
@@ -3649,8 +3647,7 @@ static int igc_change_mtu(struct net_device *netdev, int new_mtu)
 	if (netif_running(netdev))
 		igc_down(adapter);
 
-	netdev_dbg(netdev, "changing MTU from %d to %d\n",
-		   netdev->mtu, new_mtu);
+	netdev_dbg(netdev, "changing MTU from %d to %d", netdev->mtu, new_mtu);
 	netdev->mtu = new_mtu;
 
 	if (netif_running(netdev))
@@ -4009,8 +4006,7 @@ static void igc_watchdog_task(struct work_struct *work)
 			ctrl = rd32(IGC_CTRL);
 			/* Link status message must follow this format */
 			netdev_info(netdev,
-				    "igc: %s NIC Link is Up %d Mbps %s Duplex, Flow Control: %s\n",
-				    netdev->name,
+				    "NIC Link is Up %d Mbps %s Duplex, Flow Control: %s",
 				    adapter->link_speed,
 				    adapter->link_duplex == FULL_DUPLEX ?
 				    "Full" : "Half",
@@ -4022,7 +4018,7 @@ static void igc_watchdog_task(struct work_struct *work)
 			/* check if SmartSpeed worked */
 			igc_check_downshift(hw);
 			if (phy->speed_downgraded)
-				netdev_warn(netdev, "Link Speed was downgraded by SmartSpeed\n");
+				netdev_warn(netdev, "Link Speed was downgraded by SmartSpeed");
 
 			/* adjust timeout factor according to speed/duplex */
 			adapter->tx_timeout_factor = 1;
@@ -4048,10 +4044,10 @@ static void igc_watchdog_task(struct work_struct *work)
 					retry_count--;
 					goto retry_read_status;
 				} else if (!retry_count) {
-					dev_err(&adapter->pdev->dev, "exceed max 2 second\n");
+					netdev_err(netdev, "exceed max 2 second");
 				}
 			} else {
-				dev_err(&adapter->pdev->dev, "read 1000Base-T Status Reg\n");
+				netdev_err(netdev, "read 1000Base-T Status Reg");
 			}
 no_wait:
 			netif_carrier_on(netdev);
@@ -4067,8 +4063,7 @@ static void igc_watchdog_task(struct work_struct *work)
 			adapter->link_duplex = 0;
 
 			/* Links status message must follow this format */
-			netdev_info(netdev, "igc: %s NIC Link is Down\n",
-				    netdev->name);
+			netdev_info(netdev, "NIC Link is Down");
 			netif_carrier_off(netdev);
 
 			/* link state has changed, schedule phy info update */
@@ -4286,8 +4281,7 @@ static int igc_request_irq(struct igc_adapter *adapter)
 			  netdev->name, adapter);
 
 	if (err)
-		dev_err(&pdev->dev, "Error %d getting interrupt\n",
-			err);
+		netdev_err(netdev, "Error %d getting interrupt", err);
 
 request_done:
 	return err;
@@ -4679,7 +4673,7 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg)
 
 		hw->hw_addr = NULL;
 		netif_device_detach(netdev);
-		netdev_err(netdev, "PCIe link lost, device now detached\n");
+		netdev_err(netdev, "PCIe link lost, device now detached");
 		WARN(pci_device_is_present(igc->pdev),
 		     "igc: Failed to read reg 0x%x!\n", reg);
 	}
@@ -4689,7 +4683,6 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg)
 
 int igc_set_spd_dplx(struct igc_adapter *adapter, u32 spd, u8 dplx)
 {
-	struct pci_dev *pdev = adapter->pdev;
 	struct igc_mac_info *mac = &adapter->hw.mac;
 
 	mac->autoneg = 0;
@@ -4734,7 +4727,7 @@ int igc_set_spd_dplx(struct igc_adapter *adapter, u32 spd, u8 dplx)
 	return 0;
 
 err_inval:
-	dev_err(&pdev->dev, "Unsupported Speed/Duplex configuration\n");
+	netdev_err(adapter->netdev, "Unsupported Speed/Duplex configuration");
 	return -EINVAL;
 }
 
@@ -4770,7 +4763,7 @@ static int igc_probe(struct pci_dev *pdev,
 		err = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
 		if (err) {
 			dev_err(&pdev->dev,
-				"No usable DMA configuration, aborting\n");
+				"No usable DMA configuration, aborting");
 			goto err_dma;
 		}
 	}
@@ -4881,8 +4874,7 @@ static int igc_probe(struct pci_dev *pdev,
 
 	if (igc_get_flash_presence_i225(hw)) {
 		if (hw->nvm.ops.validate(hw) < 0) {
-			dev_err(&pdev->dev,
-				"The NVM Checksum Is Not Valid\n");
+			netdev_err(netdev, "The NVM Checksum Is Not Valid");
 			err = -EIO;
 			goto err_eeprom;
 		}
@@ -4891,13 +4883,13 @@ static int igc_probe(struct pci_dev *pdev,
 	if (eth_platform_get_mac_address(&pdev->dev, hw->mac.addr)) {
 		/* copy the MAC address out of the NVM */
 		if (hw->mac.ops.read_mac_addr(hw))
-			dev_err(&pdev->dev, "NVM Read Error\n");
+			netdev_err(netdev, "NVM Read Error");
 	}
 
 	memcpy(netdev->dev_addr, hw->mac.addr, netdev->addr_len);
 
 	if (!is_valid_ether_addr(netdev->dev_addr)) {
-		dev_err(&pdev->dev, "Invalid MAC Address\n");
+		netdev_err(netdev, "Invalid MAC Address");
 		err = -EIO;
 		goto err_eeprom;
 	}
@@ -4954,7 +4946,7 @@ static int igc_probe(struct pci_dev *pdev,
 
 	/* print pcie link status and MAC address */
 	pcie_print_link_status(pdev);
-	netdev_info(netdev, "MAC: %pM\n", netdev->dev_addr);
+	netdev_info(netdev, "MAC: %pM", netdev->dev_addr);
 
 	dev_pm_set_driver_flags(&pdev->dev, DPM_FLAG_NEVER_SKIP);
 
@@ -5145,8 +5137,7 @@ static int __maybe_unused igc_resume(struct device *dev)
 		return -ENODEV;
 	err = pci_enable_device_mem(pdev);
 	if (err) {
-		dev_err(&pdev->dev,
-			"igc: Cannot enable PCI device from suspend\n");
+		netdev_err(netdev, "Cannot enable PCI device from suspend");
 		return err;
 	}
 	pci_set_master(pdev);
@@ -5155,7 +5146,7 @@ static int __maybe_unused igc_resume(struct device *dev)
 	pci_enable_wake(pdev, PCI_D3cold, 0);
 
 	if (igc_init_interrupt_scheme(adapter, true)) {
-		dev_err(&pdev->dev, "Unable to allocate memory for queues\n");
+		netdev_err(netdev, "Unable to allocate memory for queues");
 		return -ENOMEM;
 	}
 
@@ -5259,8 +5250,7 @@ static pci_ers_result_t igc_io_slot_reset(struct pci_dev *pdev)
 	pci_ers_result_t result;
 
 	if (pci_enable_device_mem(pdev)) {
-		dev_err(&pdev->dev,
-			"Could not re-enable PCI device after reset.\n");
+		netdev_err(netdev, "Could not re-enable PCI device after reset");
 		result = PCI_ERS_RESULT_DISCONNECT;
 	} else {
 		pci_set_master(pdev);
@@ -5299,7 +5289,7 @@ static void igc_io_resume(struct pci_dev *pdev)
 	rtnl_lock();
 	if (netif_running(netdev)) {
 		if (igc_open(netdev)) {
-			dev_err(&pdev->dev, "igc_open failed after reset\n");
+			netdev_err(netdev, "igc_open failed after reset");
 			return;
 		}
 	}
@@ -5346,7 +5336,6 @@ static struct pci_driver igc_driver = {
 int igc_reinit_queues(struct igc_adapter *adapter)
 {
 	struct net_device *netdev = adapter->netdev;
-	struct pci_dev *pdev = adapter->pdev;
 	int err = 0;
 
 	if (netif_running(netdev))
@@ -5355,7 +5344,7 @@ int igc_reinit_queues(struct igc_adapter *adapter)
 	igc_reset_interrupt_capability(adapter);
 
 	if (igc_init_interrupt_scheme(adapter, true)) {
-		dev_err(&pdev->dev, "Unable to allocate memory for queues\n");
+		netdev_err(netdev, "Unable to allocate memory for queues");
 		return -ENOMEM;
 	}
 
@@ -5388,10 +5377,10 @@ static int __init igc_init_module(void)
 {
 	int ret;
 
-	pr_info("%s - version %s\n",
+	pr_info("%s - version %s",
 		igc_driver_string, igc_driver_version);
 
-	pr_info("%s\n", igc_copyright);
+	pr_info("%s", igc_copyright);
 
 	ret = pci_register_driver(&igc_driver);
 	return ret;
-- 
2.25.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
