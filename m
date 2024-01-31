Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF9B8443AE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jan 2024 17:07:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 84B8642048;
	Wed, 31 Jan 2024 16:07:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 84B8642048
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706717244;
	bh=BVJpQ3A3nkI35HUkwufhzOS8ITMBUW4wMCPcw1yqp/w=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=4hcVivx1JePS+c1W5oW4i0gdaWbSS0zsHS0+3/XrOybb3cmXt4HHF2A17Hsy70Wea
	 gN26EKF8mYDAw0y4u1kHZwuibX/TpNu301ltfsQVh0zWIIAPTYB82VGVGN22zNvz+0
	 yzFleu72U6saGa/GNbwD/JxR1ynzBdqLfN/Sret6fuZ2Z+9O5JeUziDGPaMr3Fln+i
	 s/NBXMXcChigG5KI7LKMs0RGO8jjUwczVaWmz7rQVBVVHWJmLEbB0a08xn2yc1oLaS
	 e0bt+ETr3GrQ80KcMXzZTDoTqD9a/k/72mWj2J5RIiiFzjCf1CUhKSY8BjHswRYhYh
	 25SzdItBPKjrg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hkduq2HJvn_f; Wed, 31 Jan 2024 16:07:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 51CCB4202B;
	Wed, 31 Jan 2024 16:07:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 51CCB4202B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 553031BF325
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 08:09:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3A813614A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 08:09:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A813614A7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QE55DmcjKICk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jan 2024 08:09:16 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6753661499
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 08:09:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6753661499
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-226-OCFcN1uQN3SCvHaOASgiuQ-1; Wed,
 31 Jan 2024 03:09:09 -0500
X-MC-Unique: OCFcN1uQN3SCvHaOASgiuQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 42B3B2825BA5;
 Wed, 31 Jan 2024 08:09:09 +0000 (UTC)
Received: from ksundara-mac.redhat.com (unknown [10.74.17.170])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CC22F1C060AF;
 Wed, 31 Jan 2024 08:09:03 +0000 (UTC)
From: karthiksundaravel <ksundara@redhat.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Wed, 31 Jan 2024 13:38:47 +0530
Message-Id: <20240131080847.30614-1-ksundara@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mailman-Approved-At: Wed, 31 Jan 2024 16:07:18 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1706688555;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=BVJpQ3A3nkI35HUkwufhzOS8ITMBUW4wMCPcw1yqp/w=;
 b=aeIm75rcPPZCkFhwpDNp+1rhbHOJWgEuK2nRTjP4GdVR+cVHsf6c9+/n6Z7u+NT/3sh5vP
 6M52KxKp9pcJi64x0upPDjbCNBB+CMnYptuaUq8p6dYbzmyewfWRNIzT2ZX1RbOXdzqYur
 /yc78XfUccPrqSTKl1LmEau0h+C4wHA=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=aeIm75rc
Subject: [Intel-wired-lan] [PATCH] ice: Add get/set hw address for VF
 representor ports
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
Cc: ksundara@redhat.com, rjarry@redhat.com, aharivel@redhat.com,
 cfontain@redhat.com, vchundur@redhat.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Changing the mac address of the VF representor ports are not
available via devlink. Add the function handlers to set and get
the HW address for the VF representor ports.

Signed-off-by: karthiksundaravel <ksundara@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_devlink.c | 134 ++++++++++++++++++-
 1 file changed, 132 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 80dc5445b50d..56d81836c469 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -9,6 +9,8 @@
 #include "ice_eswitch.h"
 #include "ice_fw_update.h"
 #include "ice_dcb_lib.h"
+#include "ice_fltr.h"
+#include "ice_tc_lib.h"
 
 static int ice_active_port_option = -1;
 
@@ -1576,6 +1578,134 @@ void ice_devlink_destroy_pf_port(struct ice_pf *pf)
 	devlink_port_unregister(&pf->devlink_port);
 }
 
+/**
+ * ice_devlink_port_get_vf_mac_address - .port_fn_hw_addr_get devlink handler
+ * @port: devlink port structure
+ * @hw_addr: Mac address of the port
+ * @hw_addr_len: length of mac address
+ * @extack: extended netdev ack structure
+ *
+ * Callback for the devlink .port_fn_hw_addr_get operation
+ * Return: zero on success or an error code on failure.
+ */
+
+static int ice_devlink_port_get_vf_mac_address(struct devlink_port *port,
+					       u8 *hw_addr, int *hw_addr_len,
+					       struct netlink_ext_ack *extack)
+{
+	struct net_device *netdev = port->type_eth.netdev;
+
+	if (!netdev || !netdev->dev_addr)
+		return -EADDRNOTAVAIL;
+
+	ether_addr_copy(hw_addr, netdev->dev_addr);
+	*hw_addr_len = ETH_ALEN;
+	return 0;
+}
+
+/**
+ * ice_devlink_port_set_vf_mac_address - .port_fn_hw_addr_set devlink handler
+ * @port: devlink port structure
+ * @hw_addr: Mac address of the port
+ * @hw_addr_len: length of mac address
+ * @extack: extended netdev ack structure
+ *
+ * Callback for the devlink .port_fn_hw_addr_set operation
+ * Return: zero on success or an error code on failure.
+ */
+static int ice_devlink_port_set_vf_mac_address(struct devlink_port *port,
+					       const u8 *hw_addr,
+					       int hw_addr_len,
+					       struct netlink_ext_ack *extack)
+{
+	struct devlink *devlink = port->devlink;
+	struct net_device *netdev = port->type_eth.netdev;
+	struct ice_pf *pf = devlink_priv(devlink);
+	struct ice_vsi *vsi = *pf->vsi;
+	struct ice_hw *hw = &pf->hw;
+	struct device *dev = ice_pf_to_dev(pf);
+	u8 old_mac[ETH_ALEN];
+	u8 flags = 0;
+	const u8 *mac = hw_addr;
+	int err;
+
+	if (!netdev)
+		return -EADDRNOTAVAIL;
+
+	if (!is_valid_ether_addr(mac))
+		return -EADDRNOTAVAIL;
+
+	if (ether_addr_equal(netdev->dev_addr, mac)) {
+		dev_dbg(dev, "already using mac %pM\n", mac);
+		return 0;
+	}
+
+	if (test_bit(ICE_DOWN, pf->state) ||
+	    ice_is_reset_in_progress(pf->state)) {
+		dev_err(dev, "can't set mac %pM. device not ready\n", mac);
+		return -EBUSY;
+	}
+
+	if (ice_chnl_dmac_fltr_cnt(pf)) {
+		dev_err(dev, "can't set mac %pM. Device has tc-flower filters, delete all of them and try again\n",
+			mac);
+		return -EAGAIN;
+	}
+
+	netif_addr_lock_bh(netdev);
+	ether_addr_copy(old_mac, netdev->dev_addr);
+	/* change the netdev's MAC address */
+	eth_hw_addr_set(netdev, mac);
+	netif_addr_unlock_bh(netdev);
+
+	/* Clean up old MAC filter. Not an error if old filter doesn't exist */
+	err = ice_fltr_remove_mac(vsi, old_mac, ICE_FWD_TO_VSI);
+	if (err && err != -ENOENT) {
+		err = -EADDRNOTAVAIL;
+		goto err_update_filters;
+	}
+
+	/* Add filter for new MAC. If filter exists, return success */
+	err = ice_fltr_add_mac(vsi, mac, ICE_FWD_TO_VSI);
+	if (err == -EEXIST) {
+		/* Although this MAC filter is already present in hardware it's
+		 * possible in some cases (e.g. bonding) that dev_addr was
+		 * modified outside of the driver and needs to be restored back
+		 * to this value.
+		 */
+		dev_dbg(dev, "filter for MAC %pM already exists\n", mac);
+		return 0;
+	} else if (err) {
+		/* error if the new filter addition failed */
+		err = -EADDRNOTAVAIL;
+	}
+
+err_update_filters:
+	if (err) {
+		dev_err(dev, "can't set MAC %pM. filter update failed\n", mac);
+		netif_addr_lock_bh(netdev);
+		eth_hw_addr_set(netdev, old_mac);
+		netif_addr_unlock_bh(netdev);
+		return err;
+	}
+
+	dev_dbg(dev, "updated MAC address to %pM\n", netdev->dev_addr);
+
+	/* write new MAC address to the firmware */
+	flags = ICE_AQC_MAN_MAC_UPDATE_LAA_WOL;
+	err = ice_aq_manage_mac_write(hw, mac, flags, NULL);
+	if (err) {
+		dev_err(dev, "can't set MAC %pM. write to firmware failed error %d\n",
+			mac, err);
+	}
+	return 0;
+}
+
+static const struct devlink_port_ops ice_devlink_vf_port_ops = {
+	.port_fn_hw_addr_get = ice_devlink_port_get_vf_mac_address,
+	.port_fn_hw_addr_set = ice_devlink_port_set_vf_mac_address,
+};
+
 /**
  * ice_devlink_create_vf_port - Create a devlink port for this VF
  * @vf: the VF to create a port for
@@ -1611,7 +1741,8 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
 	devlink_port_attrs_set(devlink_port, &attrs);
 	devlink = priv_to_devlink(pf);
 
-	err = devlink_port_register(devlink, devlink_port, vsi->idx);
+	err = devlink_port_register_with_ops(devlink, devlink_port,
+					     vsi->idx, &ice_devlink_vf_port_ops);
 	if (err) {
 		dev_err(dev, "Failed to create devlink port for VF %d, error %d\n",
 			vf->vf_id, err);
@@ -1620,7 +1751,6 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
 
 	return 0;
 }
-
 /**
  * ice_devlink_destroy_vf_port - Destroy the devlink_port for this VF
  * @vf: the VF to cleanup
-- 
2.39.3 (Apple Git-145)

