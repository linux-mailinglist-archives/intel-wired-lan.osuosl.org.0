Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 948F91CE20
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 May 2019 19:37:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A1F0860C0;
	Tue, 14 May 2019 17:37:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZDBad7uCZeSj; Tue, 14 May 2019 17:37:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 807DC8607D;
	Tue, 14 May 2019 17:37:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AAF851BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2019 17:37:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 941A830048
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2019 17:37:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9lHwf7v3OMqr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 May 2019 17:37:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 19CCF3015B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2019 17:37:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 May 2019 10:37:31 -0700
X-ExtLoop1: 1
Received: from alicemic-2.jf.intel.com ([10.166.16.121])
 by orsmga003.jf.intel.com with ESMTP; 14 May 2019 10:37:30 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.michael@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Tue, 14 May 2019 10:37:07 -0700
Message-Id: <20190514173709.62431-9-alice.michael@intel.com>
X-Mailer: git-send-email 2.19.2
In-Reply-To: <20190514173709.62431-1-alice.michael@intel.com>
References: <20190514173709.62431-1-alice.michael@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH S5 iavf 09/11] iavf: Refactor init
 state machine
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
Cc: Jakub Pawlak <jakub.pawlak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jakub Pawlak <jakub.pawlak@intel.com>

Cleanup of init state machine, move state specific
code to separate functions and rewrite the
iavf_init_task() function.

Signed-off-by: Jakub Pawlak <jakub.pawlak@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 447 ++++++++++++--------
 1 file changed, 259 insertions(+), 188 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 5c25cf3754bb..8763486ff2b2 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -14,6 +14,8 @@
 static int iavf_setup_all_tx_resources(struct iavf_adapter *adapter);
 static int iavf_setup_all_rx_resources(struct iavf_adapter *adapter);
 static int iavf_close(struct net_device *netdev);
+static int iavf_init_get_resources(struct iavf_adapter *adapter);
+static int iavf_check_reset_complete(struct iavf_hw *hw);
 
 char iavf_driver_name[] = "iavf";
 static const char iavf_driver_string[] =
@@ -57,6 +59,7 @@ MODULE_DESCRIPTION("Intel(R) Ethernet Adaptive Virtual Function Network Driver")
 MODULE_LICENSE("GPL v2");
 MODULE_VERSION(DRV_VERSION);
 
+static const struct net_device_ops iavf_netdev_ops;
 struct workqueue_struct *iavf_wq;
 
 /**
@@ -1659,6 +1662,249 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
 	return -EAGAIN;
 }
 
+/**
+ * iavf_startup - first step of driver startup
+ * @adapter: board private structure
+ *
+ * Function process __IAVF_STARTUP driver state.
+ * When success the state is changed to __IAVF_INIT_VERSION_CHECK
+ * when fails it returns -EAGAIN
+ **/
+static int iavf_startup(struct iavf_adapter *adapter)
+{
+	struct pci_dev *pdev = adapter->pdev;
+	struct iavf_hw *hw = &adapter->hw;
+	int err;
+
+	WARN_ON(adapter->state != __IAVF_STARTUP);
+
+	/* driver loaded, probe complete */
+	adapter->flags &= ~IAVF_FLAG_PF_COMMS_FAILED;
+	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
+	err = iavf_set_mac_type(hw);
+	if (err) {
+		dev_err(&pdev->dev, "Failed to set MAC type (%d)\n", err);
+		goto err;
+	}
+
+	err = iavf_check_reset_complete(hw);
+	if (err) {
+		dev_info(&pdev->dev, "Device is still in reset (%d), retrying\n",
+			 err);
+		goto err;
+	}
+	hw->aq.num_arq_entries = IAVF_AQ_LEN;
+	hw->aq.num_asq_entries = IAVF_AQ_LEN;
+	hw->aq.arq_buf_size = IAVF_MAX_AQ_BUF_SIZE;
+	hw->aq.asq_buf_size = IAVF_MAX_AQ_BUF_SIZE;
+
+	err = iavf_init_adminq(hw);
+	if (err) {
+		dev_err(&pdev->dev, "Failed to init Admin Queue (%d)\n", err);
+		goto err;
+	}
+	err = iavf_send_api_ver(adapter);
+	if (err) {
+		dev_err(&pdev->dev, "Unable to send to PF (%d)\n", err);
+		iavf_shutdown_adminq(hw);
+		goto err;
+	}
+	adapter->state = __IAVF_INIT_VERSION_CHECK;
+err:
+	return err;
+}
+
+/**
+ * iavf_init_version_check - second step of driver startup
+ * @adapter: board private structure
+ *
+ * Function process __IAVF_INIT_VERSION_CHECK driver state.
+ * When success the state is changed to __IAVF_INIT_GET_RESOURCES
+ * when fails it returns -EAGAIN
+ **/
+static int iavf_init_version_check(struct iavf_adapter *adapter)
+{
+	struct iavf_hw *hw = &adapter->hw;
+	struct pci_dev *pdev = adapter->pdev;
+	int err = -EAGAIN;
+
+	WARN_ON(adapter->state != __IAVF_INIT_VERSION_CHECK);
+
+	if (!iavf_asq_done(hw)) {
+		dev_err(&pdev->dev, "Admin queue command never completed\n");
+		iavf_shutdown_adminq(hw);
+		adapter->state = __IAVF_STARTUP;
+		goto err;
+	}
+
+	/* aq msg sent, awaiting reply */
+	err = iavf_verify_api_ver(adapter);
+	if (err) {
+		if (err == IAVF_ERR_ADMIN_QUEUE_NO_WORK)
+			err = iavf_send_api_ver(adapter);
+		else
+			dev_err(&pdev->dev, "Unsupported PF API version %d.%d, expected %d.%d\n",
+				adapter->pf_version.major,
+				adapter->pf_version.minor,
+				VIRTCHNL_VERSION_MAJOR,
+				VIRTCHNL_VERSION_MINOR);
+		goto err;
+	}
+	err = iavf_send_vf_config_msg(adapter);
+	if (err) {
+		dev_err(&pdev->dev, "Unable to send config request (%d)\n",
+			err);
+		goto err;
+	}
+	adapter->state = __IAVF_INIT_GET_RESOURCES;
+
+err:
+	return err;
+}
+
+/**
+ * iavf_init_get_resources - third step of driver startup
+ * @adapter: board private structure
+ *
+ * Function process __IAVF_INIT_GET_RESOURCES driver state and
+ * finishes driver initialization procedure.
+ * When success the state is changed to __IAVF_DOWN
+ * when fails it returns -EAGAIN
+ **/
+static int iavf_init_get_resources(struct iavf_adapter *adapter)
+{
+	struct net_device *netdev = adapter->netdev;
+	struct iavf_hw *hw = &adapter->hw;
+	struct pci_dev *pdev = adapter->pdev;
+	int err = 0, bufsz;
+
+	WARN_ON(adapter->state != __IAVF_INIT_GET_RESOURCES);
+	/* aq msg sent, awaiting reply */
+	if (!adapter->vf_res) {
+		bufsz = sizeof(struct virtchnl_vf_resource) +
+			(IAVF_MAX_VF_VSI *
+			sizeof(struct virtchnl_vsi_resource));
+		adapter->vf_res = kzalloc(bufsz, GFP_KERNEL);
+		if (!adapter->vf_res)
+			goto err;
+	}
+	err = iavf_get_vf_config(adapter);
+	if (err == IAVF_ERR_ADMIN_QUEUE_NO_WORK) {
+		err = iavf_send_vf_config_msg(adapter);
+		goto err;
+	} else if (err == IAVF_ERR_PARAM) {
+		/* We only get ERR_PARAM if the device is in a very bad
+		 * state or if we've been disabled for previous bad
+		 * behavior. Either way, we're done now.
+		 */
+		iavf_shutdown_adminq(hw);
+		dev_err(&pdev->dev, "Unable to get VF config due to PF error condition, not retrying\n");
+		return 0;
+	}
+	if (err) {
+		dev_err(&pdev->dev, "Unable to get VF config (%d)\n", err);
+		goto err_alloc;
+	}
+
+	if (iavf_process_config(adapter))
+		goto err_alloc;
+	adapter->current_op = VIRTCHNL_OP_UNKNOWN;
+
+	adapter->flags |= IAVF_FLAG_RX_CSUM_ENABLED;
+
+	netdev->netdev_ops = &iavf_netdev_ops;
+	iavf_set_ethtool_ops(netdev);
+	netdev->watchdog_timeo = 5 * HZ;
+
+	/* MTU range: 68 - 9710 */
+	netdev->min_mtu = ETH_MIN_MTU;
+	netdev->max_mtu = IAVF_MAX_RXBUFFER - IAVF_PACKET_HDR_PAD;
+
+	if (!is_valid_ether_addr(adapter->hw.mac.addr)) {
+		dev_info(&pdev->dev, "Invalid MAC address %pM, using random\n",
+			 adapter->hw.mac.addr);
+		eth_hw_addr_random(netdev);
+		ether_addr_copy(adapter->hw.mac.addr, netdev->dev_addr);
+	} else {
+		adapter->flags |= IAVF_FLAG_ADDR_SET_BY_PF;
+		ether_addr_copy(netdev->dev_addr, adapter->hw.mac.addr);
+		ether_addr_copy(netdev->perm_addr, adapter->hw.mac.addr);
+	}
+
+	adapter->tx_desc_count = IAVF_DEFAULT_TXD;
+	adapter->rx_desc_count = IAVF_DEFAULT_RXD;
+	err = iavf_init_interrupt_scheme(adapter);
+	if (err)
+		goto err_sw_init;
+	iavf_map_rings_to_vectors(adapter);
+	if (adapter->vf_res->vf_cap_flags &
+		VIRTCHNL_VF_OFFLOAD_WB_ON_ITR)
+		adapter->flags |= IAVF_FLAG_WB_ON_ITR_CAPABLE;
+
+	err = iavf_request_misc_irq(adapter);
+	if (err)
+		goto err_sw_init;
+
+	netif_carrier_off(netdev);
+	adapter->link_up = false;
+
+	/* set the semaphore to prevent any callbacks after device registration
+	 * up to time when state of driver will be set to __IAVF_DOWN
+	 */
+	rtnl_lock();
+	if (!adapter->netdev_registered) {
+		err = register_netdevice(netdev);
+		if (err) {
+			rtnl_unlock();
+			goto err_register;
+		}
+	}
+
+	adapter->netdev_registered = true;
+
+	netif_tx_stop_all_queues(netdev);
+	if (CLIENT_ALLOWED(adapter)) {
+		err = iavf_lan_add_device(adapter);
+		if (err) {
+			rtnl_unlock();
+			dev_info(&pdev->dev, "Failed to add VF to client API service list: %d\n",
+				 err);
+		}
+	}
+	dev_info(&pdev->dev, "MAC address: %pM\n", adapter->hw.mac.addr);
+	if (netdev->features & NETIF_F_GRO)
+		dev_info(&pdev->dev, "GRO is enabled\n");
+
+	adapter->state = __IAVF_DOWN;
+	set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
+	rtnl_unlock();
+
+	iavf_misc_irq_enable(adapter);
+	wake_up(&adapter->down_waitqueue);
+
+	adapter->rss_key = kzalloc(adapter->rss_key_size, GFP_KERNEL);
+	adapter->rss_lut = kzalloc(adapter->rss_lut_size, GFP_KERNEL);
+	if (!adapter->rss_key || !adapter->rss_lut)
+		goto err_mem;
+	if (RSS_AQ(adapter))
+		adapter->aq_required |= IAVF_FLAG_AQ_CONFIGURE_RSS;
+	else
+		iavf_init_rss(adapter);
+
+	return err;
+err_mem:
+	iavf_free_rss(adapter);
+err_register:
+	iavf_free_misc_irq(adapter);
+err_sw_init:
+	iavf_reset_interrupt_capability(adapter);
+err_alloc:
+	kfree(adapter->vf_res);
+	adapter->vf_res = NULL;
+err:
+	return err;
+}
+
 /**
  * iavf_watchdog_task - Periodic call-back task
  * @work: pointer to work_struct
@@ -3364,207 +3610,32 @@ static void iavf_init_task(struct work_struct *work)
 	struct iavf_adapter *adapter = container_of(work,
 						      struct iavf_adapter,
 						      init_task.work);
-	struct net_device *netdev = adapter->netdev;
 	struct iavf_hw *hw = &adapter->hw;
-	struct pci_dev *pdev = adapter->pdev;
-	int err;
 
 	switch (adapter->state) {
 	case __IAVF_STARTUP:
-		/* driver loaded, probe complete */
-		adapter->flags &= ~IAVF_FLAG_PF_COMMS_FAILED;
-		adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
-		err = iavf_set_mac_type(hw);
-		if (err) {
-			dev_err(&pdev->dev, "Failed to set MAC type (%d)\n",
-				err);
-			goto err;
-		}
-		err = iavf_check_reset_complete(hw);
-		if (err) {
-			dev_info(&pdev->dev, "Device is still in reset (%d), retrying\n",
-				 err);
-			goto err;
-		}
-		hw->aq.num_arq_entries = IAVF_AQ_LEN;
-		hw->aq.num_asq_entries = IAVF_AQ_LEN;
-		hw->aq.arq_buf_size = IAVF_MAX_AQ_BUF_SIZE;
-		hw->aq.asq_buf_size = IAVF_MAX_AQ_BUF_SIZE;
-
-		err = iavf_init_adminq(hw);
-		if (err) {
-			dev_err(&pdev->dev, "Failed to init Admin Queue (%d)\n",
-				err);
-			goto err;
-		}
-		err = iavf_send_api_ver(adapter);
-		if (err) {
-			dev_err(&pdev->dev, "Unable to send to PF (%d)\n", err);
-			iavf_shutdown_adminq(hw);
-			goto err;
-		}
-		adapter->state = __IAVF_INIT_VERSION_CHECK;
-		goto restart;
+		if (iavf_startup(adapter) < 0)
+			goto init_failed;
+		break;
 	case __IAVF_INIT_VERSION_CHECK:
-		if (!iavf_asq_done(hw)) {
-			dev_err(&pdev->dev, "Admin queue command never completed\n");
-			iavf_shutdown_adminq(hw);
-			adapter->state = __IAVF_STARTUP;
-			goto err;
-		}
-
-		/* aq msg sent, awaiting reply */
-		err = iavf_verify_api_ver(adapter);
-		if (err) {
-			if (err == IAVF_ERR_ADMIN_QUEUE_NO_WORK)
-				err = iavf_send_api_ver(adapter);
-			else
-				dev_err(&pdev->dev, "Unsupported PF API version %d.%d, expected %d.%d\n",
-					adapter->pf_version.major,
-					adapter->pf_version.minor,
-					VIRTCHNL_VERSION_MAJOR,
-					VIRTCHNL_VERSION_MINOR);
-			goto err;
-		}
-		err = iavf_send_vf_config_msg(adapter);
-		if (err) {
-			dev_err(&pdev->dev, "Unable to send config request (%d)\n",
-				err);
-			goto err;
-		}
-		adapter->state = __IAVF_INIT_GET_RESOURCES;
-		goto restart;
-	case __IAVF_INIT_GET_RESOURCES:
-		/* aq msg sent, awaiting reply */
-		if (!adapter->vf_res) {
-			adapter->vf_res = kzalloc(struct_size(adapter->vf_res,
-						  vsi_res, IAVF_MAX_VF_VSI),
-						  GFP_KERNEL);
-			if (!adapter->vf_res)
-				goto err;
-		}
-		err = iavf_get_vf_config(adapter);
-		if (err == IAVF_ERR_ADMIN_QUEUE_NO_WORK) {
-			err = iavf_send_vf_config_msg(adapter);
-			goto err;
-		} else if (err == IAVF_ERR_PARAM) {
-			/* We only get ERR_PARAM if the device is in a very bad
-			 * state or if we've been disabled for previous bad
-			 * behavior. Either way, we're done now.
-			 */
-			iavf_shutdown_adminq(hw);
-			dev_err(&pdev->dev, "Unable to get VF config due to PF error condition, not retrying\n");
-			return;
-		}
-		if (err) {
-			dev_err(&pdev->dev, "Unable to get VF config (%d)\n",
-				err);
-			goto err_alloc;
-		}
-		adapter->state = __IAVF_INIT_SW;
+		if (iavf_init_version_check(adapter) < 0)
+			goto init_failed;
 		break;
+	case __IAVF_INIT_GET_RESOURCES:
+		if (iavf_init_get_resources(adapter) < 0)
+			goto init_failed;
+		return;
 	default:
-		goto err_alloc;
+		goto init_failed;
 	}
 
-	if (iavf_process_config(adapter))
-		goto err_alloc;
-	adapter->current_op = VIRTCHNL_OP_UNKNOWN;
-
-	adapter->flags |= IAVF_FLAG_RX_CSUM_ENABLED;
-
-	netdev->netdev_ops = &iavf_netdev_ops;
-	iavf_set_ethtool_ops(netdev);
-	netdev->watchdog_timeo = 5 * HZ;
-
-	/* MTU range: 68 - 9710 */
-	netdev->min_mtu = ETH_MIN_MTU;
-	netdev->max_mtu = IAVF_MAX_RXBUFFER - IAVF_PACKET_HDR_PAD;
-
-	if (!is_valid_ether_addr(adapter->hw.mac.addr)) {
-		dev_info(&pdev->dev, "Invalid MAC address %pM, using random\n",
-			 adapter->hw.mac.addr);
-		eth_hw_addr_random(netdev);
-		ether_addr_copy(adapter->hw.mac.addr, netdev->dev_addr);
-	} else {
-		adapter->flags |= IAVF_FLAG_ADDR_SET_BY_PF;
-		ether_addr_copy(netdev->dev_addr, adapter->hw.mac.addr);
-		ether_addr_copy(netdev->perm_addr, adapter->hw.mac.addr);
-	}
-
-	queue_delayed_work(iavf_wq, &adapter->watchdog_task, 1);
-
-	adapter->tx_desc_count = IAVF_DEFAULT_TXD;
-	adapter->rx_desc_count = IAVF_DEFAULT_RXD;
-	err = iavf_init_interrupt_scheme(adapter);
-	if (err)
-		goto err_sw_init;
-	iavf_map_rings_to_vectors(adapter);
-	if (adapter->vf_res->vf_cap_flags &
-	    VIRTCHNL_VF_OFFLOAD_WB_ON_ITR)
-		adapter->flags |= IAVF_FLAG_WB_ON_ITR_CAPABLE;
-
-	err = iavf_request_misc_irq(adapter);
-	if (err)
-		goto err_sw_init;
-
-	netif_carrier_off(netdev);
-	adapter->link_up = false;
-
-	if (!adapter->netdev_registered) {
-		err = register_netdev(netdev);
-		if (err)
-			goto err_register;
-	}
-
-	adapter->netdev_registered = true;
-
-	netif_tx_stop_all_queues(netdev);
-	if (CLIENT_ALLOWED(adapter)) {
-		err = iavf_lan_add_device(adapter);
-		if (err)
-			dev_info(&pdev->dev, "Failed to add VF to client API service list: %d\n",
-				 err);
-	}
-
-	dev_info(&pdev->dev, "MAC address: %pM\n", adapter->hw.mac.addr);
-	if (netdev->features & NETIF_F_GRO)
-		dev_info(&pdev->dev, "GRO is enabled\n");
-
-	adapter->state = __IAVF_DOWN;
-	set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
-	iavf_misc_irq_enable(adapter);
-	wake_up(&adapter->down_waitqueue);
-
-	adapter->rss_key = kzalloc(adapter->rss_key_size, GFP_KERNEL);
-	adapter->rss_lut = kzalloc(adapter->rss_lut_size, GFP_KERNEL);
-	if (!adapter->rss_key || !adapter->rss_lut)
-		goto err_mem;
-
-	if (RSS_AQ(adapter)) {
-		adapter->aq_required |= IAVF_FLAG_AQ_CONFIGURE_RSS;
-		mod_delayed_work(iavf_wq, &adapter->watchdog_task, 1);
-	} else {
-		iavf_init_rss(adapter);
-	}
-	return;
-restart:
 	queue_delayed_work(iavf_wq, &adapter->init_task,
 			   msecs_to_jiffies(30));
 	return;
-err_mem:
-	iavf_free_rss(adapter);
-err_register:
-	iavf_free_misc_irq(adapter);
-err_sw_init:
-	iavf_reset_interrupt_capability(adapter);
-err_alloc:
-	kfree(adapter->vf_res);
-	adapter->vf_res = NULL;
-err:
-	/* Things went into the weeds, so try again later */
+init_failed:
 	if (++adapter->aq_wait_count > IAVF_AQ_MAX_ERR) {
-		dev_err(&pdev->dev, "Failed to communicate with PF; waiting before retry\n");
+		dev_err(&adapter->pdev->dev,
+			"Failed to communicate with PF; waiting before retry\n");
 		adapter->flags |= IAVF_FLAG_PF_COMMS_FAILED;
 		iavf_shutdown_adminq(hw);
 		adapter->state = __IAVF_STARTUP;
-- 
2.19.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
