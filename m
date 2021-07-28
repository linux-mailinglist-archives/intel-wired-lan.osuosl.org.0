Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B53D33D96DB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jul 2021 22:37:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 21AB7401E5;
	Wed, 28 Jul 2021 20:37:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X3BpT42hRXvi; Wed, 28 Jul 2021 20:37:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 75B6640160;
	Wed, 28 Jul 2021 20:37:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B89D71BF2AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jul 2021 20:37:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A5DCE40633
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jul 2021 20:37:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xk0UWFbwADRb for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jul 2021 20:37:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E51BC4062F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jul 2021 20:37:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="212473278"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="212473278"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 13:37:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="417374900"
Received: from bcreeley-st-desk.jf.intel.com ([10.166.244.126])
 by orsmga006.jf.intel.com with ESMTP; 28 Jul 2021 13:37:15 -0700
From: Brett Creeley <brett.creeley@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 28 Jul 2021 13:34:57 -0700
Message-Id: <20210728203457.325482-1-brett.creeley@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] ice: don't remove netdev->dev_addr
 from uc sync list
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

In some circumstances, such as with bridging, it's possible that the
stack will add the device's own MAC address to its unicast address list.

If, later, the stack deletes this address, the driver will receive a
request to remove this address.

The driver stores its current MAC address as part of the VSI MAC filter
list instead of separately. So, this causes a problem when the device's
MAC address is deleted unexpectedly, which results in traffic failure
in some cases.

Fix this by making sure to not delete the netdev->dev_addr during
MAC address sync.

There is a possibility of a race condition between .set_mac and
.set_rx_mode. Fix this by calling netif_addr_lock_bh() and
netif_addr_unlock_bh() on the device's netdev when the netdev->dev_addr
is going to be updated in .set_mac.

Also, change the netdev_warn() to netdev_dbg() when the device is
already using the requested mac in .set_mac. The dev_warn() was causing
a lot of unnecessary noise when configuring/unconfiguring bridging and
provides no benefit.

Lastly, instead of using memcpy() to save the netdev->dev_addr, use
ether_addr_copy() in .set_mac.

Fixes: e94d44786693 ("ice: Implement filter sync, NDO operations and bump version")
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 25 +++++++++++++++--------
 1 file changed, 16 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index ef8d1815af56..259d73e353bb 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -191,6 +191,14 @@ static int ice_add_mac_to_unsync_list(struct net_device *netdev, const u8 *addr)
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
 
+	/* Under some circumstances, we might receive a request to delete our
+	 * own device address from our uc list. Because we store the device
+	 * address in the VSI's MAC filter list, we need to ignore such
+	 * requests and not delete our device address from this list.
+	 */
+	if (ether_addr_equal(addr, netdev->dev_addr))
+		return 0;
+
 	if (ice_fltr_add_mac_to_list(vsi, &vsi->tmp_unsync_list, addr,
 				     ICE_FWD_TO_VSI))
 		return -EINVAL;
@@ -5119,7 +5127,7 @@ static int ice_set_mac_address(struct net_device *netdev, void *pi)
 		return -EADDRNOTAVAIL;
 
 	if (ether_addr_equal(netdev->dev_addr, mac)) {
-		netdev_warn(netdev, "already using mac %pM\n", mac);
+		netdev_dbg(netdev, "already using mac %pM\n", mac);
 		return 0;
 	}
 
@@ -5130,6 +5138,7 @@ static int ice_set_mac_address(struct net_device *netdev, void *pi)
 		return -EBUSY;
 	}
 
+	netif_addr_lock_bh(netdev);
 	/* Clean up old MAC filter. Not an error if old filter doesn't exist */
 	status = ice_fltr_remove_mac(vsi, netdev->dev_addr, ICE_FWD_TO_VSI);
 	if (status && status != ICE_ERR_DOES_NOT_EXIST) {
@@ -5139,30 +5148,28 @@ static int ice_set_mac_address(struct net_device *netdev, void *pi)
 
 	/* Add filter for new MAC. If filter exists, return success */
 	status = ice_fltr_add_mac(vsi, mac, ICE_FWD_TO_VSI);
-	if (status == ICE_ERR_ALREADY_EXISTS) {
+	if (status == ICE_ERR_ALREADY_EXISTS)
 		/* Although this MAC filter is already present in hardware it's
 		 * possible in some cases (e.g. bonding) that dev_addr was
 		 * modified outside of the driver and needs to be restored back
 		 * to this value.
 		 */
-		memcpy(netdev->dev_addr, mac, netdev->addr_len);
 		netdev_dbg(netdev, "filter for MAC %pM already exists\n", mac);
-		return 0;
-	}
-
-	/* error if the new filter addition failed */
-	if (status)
+	else if (status)
+		/* error if the new filter addition failed */
 		err = -EADDRNOTAVAIL;
 
 err_update_filters:
 	if (err) {
 		netdev_err(netdev, "can't set MAC %pM. filter update failed\n",
 			   mac);
+		netif_addr_unlock_bh(netdev);
 		return err;
 	}
 
 	/* change the netdev's MAC address */
-	memcpy(netdev->dev_addr, mac, netdev->addr_len);
+	ether_addr_copy(netdev->dev_addr, mac);
+	netif_addr_unlock_bh(netdev);
 	netdev_dbg(vsi->netdev, "updated MAC address to %pM\n",
 		   netdev->dev_addr);
 
-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
