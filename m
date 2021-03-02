Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA2332A92F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 19:22:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC3A74EBA0;
	Tue,  2 Mar 2021 18:21:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pL6mhBNkTBam; Tue,  2 Mar 2021 18:21:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D9954EA77;
	Tue,  2 Mar 2021 18:21:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0FBCF1BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:21:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 80031606AE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:21:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2GmttlpFyTbw for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Mar 2021 18:21:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C09ED606BB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:21:48 +0000 (UTC)
IronPort-SDR: 6MzWzlJTOOxw5bbynAxMSl2C6KwP+VwWCmXA/yKyoytXjoDlMhcadEYp0jeTn+C4AldVSruodL
 T02elYhZvfRQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="166813968"
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="166813968"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 10:21:47 -0800
IronPort-SDR: OXQSpGzffU+EBlPl9eZJoftRE9uBAlClbENEfA1eQ5MyMiw/pROIPjWZCQqHKoorwIVm7z//6q
 x0gIF/mo6fQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="369051168"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga006.jf.intel.com with ESMTP; 02 Mar 2021 10:21:45 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Mar 2021 10:12:03 -0800
Message-Id: <20210302181213.51718-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210302181213.51718-1-anthony.l.nguyen@intel.com>
References: <20210302181213.51718-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S55 04/14] ice: Delay netdev registration
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

From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>

Once a netdev is registered, the corresponding network interface can
be immediately used by userspace utilities (like say NetworkManager).
This can be problematic if the driver technically isn't fully up yet.

Move netdev registration to the end of probe, as by this time the
driver data structures and device will be initialized as expected.

However, delaying netdev registration causes a failure in the aRFS flow
where netdev->reg_state == NETREG_REGISTERED condition is checked. It's
not clear why this check was added to begin with, so remove it.
Local testing didn't indicate any issues with this change.

The state bit check in ice_open was put in as a stop-gap measure to
prevent a premature interface up operation. This is no longer needed,
so remove it.

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_arfs.c |  6 +-
 drivers/net/ethernet/intel/ice/ice_main.c | 93 +++++++++++------------
 2 files changed, 47 insertions(+), 52 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_arfs.c b/drivers/net/ethernet/intel/ice/ice_arfs.c
index 6560acd76c94..88d98c9e5f91 100644
--- a/drivers/net/ethernet/intel/ice/ice_arfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_arfs.c
@@ -581,8 +581,7 @@ void ice_free_cpu_rx_rmap(struct ice_vsi *vsi)
 		return;
 
 	netdev = vsi->netdev;
-	if (!netdev || !netdev->rx_cpu_rmap ||
-	    netdev->reg_state != NETREG_REGISTERED)
+	if (!netdev || !netdev->rx_cpu_rmap)
 		return;
 
 	free_irq_cpu_rmap(netdev->rx_cpu_rmap);
@@ -604,8 +603,7 @@ int ice_set_cpu_rx_rmap(struct ice_vsi *vsi)
 
 	pf = vsi->back;
 	netdev = vsi->netdev;
-	if (!pf || !netdev || !vsi->num_q_vectors ||
-	    vsi->netdev->reg_state != NETREG_REGISTERED)
+	if (!pf || !netdev || !vsi->num_q_vectors)
 		return -EINVAL;
 
 	netdev_dbg(netdev, "Setup CPU RMAP: vsi type 0x%x, ifname %s, q_vectors %d\n",
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 9cf876e420c9..862abd9ed660 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -140,21 +140,10 @@ static int ice_init_mac_fltr(struct ice_pf *pf)
 
 	perm_addr = vsi->port_info->mac.perm_addr;
 	status = ice_fltr_add_mac_and_broadcast(vsi, perm_addr, ICE_FWD_TO_VSI);
-	if (!status)
-		return 0;
-
-	/* We aren't useful with no MAC filters, so unregister if we
-	 * had an error
-	 */
-	if (vsi->netdev->reg_state == NETREG_REGISTERED) {
-		dev_err(ice_pf_to_dev(pf), "Could not add MAC filters error %s. Unregistering device\n",
-			ice_stat_str(status));
-		unregister_netdev(vsi->netdev);
-		free_netdev(vsi->netdev);
-		vsi->netdev = NULL;
-	}
+	if (status)
+		return -EIO;
 
-	return -EIO;
+	return 0;
 }
 
 /**
@@ -2986,18 +2975,11 @@ static int ice_cfg_netdev(struct ice_vsi *vsi)
 	struct ice_netdev_priv *np;
 	struct net_device *netdev;
 	u8 mac_addr[ETH_ALEN];
-	int err;
-
-	err = ice_devlink_create_port(vsi);
-	if (err)
-		return err;
 
 	netdev = alloc_etherdev_mqs(sizeof(*np), vsi->alloc_txq,
 				    vsi->alloc_rxq);
-	if (!netdev) {
-		err = -ENOMEM;
-		goto err_destroy_devlink_port;
-	}
+	if (!netdev)
+		return -ENOMEM;
 
 	vsi->netdev = netdev;
 	np = netdev_priv(netdev);
@@ -3025,25 +3007,7 @@ static int ice_cfg_netdev(struct ice_vsi *vsi)
 	netdev->min_mtu = ETH_MIN_MTU;
 	netdev->max_mtu = ICE_MAX_MTU;
 
-	err = register_netdev(vsi->netdev);
-	if (err)
-		goto err_free_netdev;
-
-	devlink_port_type_eth_set(&vsi->devlink_port, vsi->netdev);
-
-	netif_carrier_off(vsi->netdev);
-
-	/* make sure transmit queues start off as stopped */
-	netif_tx_stop_all_queues(vsi->netdev);
-
 	return 0;
-
-err_free_netdev:
-	free_netdev(vsi->netdev);
-	vsi->netdev = NULL;
-err_destroy_devlink_port:
-	ice_devlink_destroy_port(vsi);
-	return err;
 }
 
 /**
@@ -3241,8 +3205,6 @@ static int ice_setup_pf_sw(struct ice_pf *pf)
 	if (vsi) {
 		ice_napi_del(vsi);
 		if (vsi->netdev) {
-			if (vsi->netdev->reg_state == NETREG_REGISTERED)
-				unregister_netdev(vsi->netdev);
 			free_netdev(vsi->netdev);
 			vsi->netdev = NULL;
 		}
@@ -3995,6 +3957,40 @@ static void ice_print_wake_reason(struct ice_pf *pf)
 	dev_info(ice_pf_to_dev(pf), "Wake reason: %s", wake_str);
 }
 
+/**
+ * ice_register_netdev - register netdev and devlink port
+ * @pf: pointer to the PF struct
+ */
+static int ice_register_netdev(struct ice_pf *pf)
+{
+	struct ice_vsi *vsi;
+	int err = 0;
+
+	vsi = ice_get_main_vsi(pf);
+	if (!vsi || !vsi->netdev)
+		return -EIO;
+
+	err = register_netdev(vsi->netdev);
+	if (err)
+		goto err_register_netdev;
+
+	netif_carrier_off(vsi->netdev);
+	netif_tx_stop_all_queues(vsi->netdev);
+	err = ice_devlink_create_port(vsi);
+	if (err)
+		goto err_devlink_create;
+
+	devlink_port_type_eth_set(&vsi->devlink_port, vsi->netdev);
+
+	return 0;
+err_devlink_create:
+	unregister_netdev(vsi->netdev);
+err_register_netdev:
+	free_netdev(vsi->netdev);
+	vsi->netdev = NULL;
+	return err;
+}
+
 /**
  * ice_probe - Device initialization routine
  * @pdev: PCI device information struct
@@ -4273,10 +4269,16 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	pcie_print_link_status(pf->pdev);
 
 probe_done:
+	err = ice_register_netdev(pf);
+	if (err)
+		goto err_netdev_reg;
+
 	/* ready to go, so clear down state bit */
 	clear_bit(__ICE_DOWN, pf->state);
+
 	return 0;
 
+err_netdev_reg:
 err_send_version_unroll:
 	ice_vsi_release_all(pf);
 err_alloc_sw_unroll:
@@ -6679,11 +6681,6 @@ int ice_open_internal(struct net_device *netdev)
 		return -EIO;
 	}
 
-	if (test_bit(__ICE_DOWN, pf->state)) {
-		netdev_err(netdev, "device is not ready yet\n");
-		return -EBUSY;
-	}
-
 	netif_carrier_off(netdev);
 
 	pi = vsi->port_info;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
