Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 543B08C72CA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 May 2024 10:28:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1823641CA5;
	Thu, 16 May 2024 08:28:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bD2rzYJgPGg8; Thu, 16 May 2024 08:28:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 26A8541CA2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715848087;
	bh=ZqWsB5IdMykLWAZ521Ej0jBcJrrlt3K3Im7RGUwgYyw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jDEBl6gibhW5O8aaErco+o1/P+xyVXY/m4WCmVWm4JbEVlTlcui5k46Spfl79Z9x8
	 ripJMcWCya20j29QgM6jDO45bwrIe0p/n9LJ6w/P+yK+XlCVSH5CWmB61MkmFtboSo
	 f6AMhtIpqvMi5214woq3xa2SibFQ/pvx2MTkmc1DpUU8DlAGvFcqgEZgVGjg0uSgNx
	 goIXJkVOJiCUvPkBAwHslYEAq9eR9GkycumTxW7bzXUo5vAYzKrCZWsah2CZGcbSy+
	 +Ide1YBnVzvEDCyp5mUYiWVaqU7AihAx/RKh/qSi4LmuqojoS3VKHVbZEwepOedGAp
	 Y2HdoLl6fI1ZA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 26A8541CA2;
	Thu, 16 May 2024 08:28:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8C5261BF982
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 08:28:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8673A41C9C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 08:28:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Doxea_WMTroH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 May 2024 08:28:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ksundara@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EF4B740B75
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF4B740B75
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EF4B740B75
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 08:28:01 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-661-xfOcnzhtP3aqU2DvDCGwOA-1; Thu, 16 May 2024 04:27:56 -0400
X-MC-Unique: xfOcnzhtP3aqU2DvDCGwOA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BD3E58030A5;
 Thu, 16 May 2024 08:27:55 +0000 (UTC)
Received: from ksundara-mac.redhat.com (unknown [10.74.17.49])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E55115ADC40;
 Thu, 16 May 2024 08:27:47 +0000 (UTC)
From: Karthik Sundaravel <ksundara@redhat.com>
To: jesse.brandeburg@intel.com, wojciech.drewek@intel.com, sumang@marvell.com,
 jacob.e.keller@intel.com, anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, horms@kernel.org
Date: Thu, 16 May 2024 13:57:33 +0530
Message-Id: <20240516082733.35783-2-ksundara@redhat.com>
In-Reply-To: <20240516082733.35783-1-ksundara@redhat.com>
References: <20240516082733.35783-1-ksundara@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1715848081;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZqWsB5IdMykLWAZ521Ej0jBcJrrlt3K3Im7RGUwgYyw=;
 b=YI0w9796y4G2XNRj6zqmTCCsuDHW4t7tly+07wqgQcNgKyVDid0RkQ4+jYK0gOl6XE6Ehu
 SibwxTKdZyFr7w7yiHs1Fw8SMmmSoXSnWqXxqkQOcqbEePNIXNqErinWr2rPPo8/zM6+Su
 6GkFqqHTZe2yWG2eF5XjWPQ8/NzlGJI=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=YI0w9796
Subject: [Intel-wired-lan] [PATCH iwl-next v10] ice: Add get/set hw address
 for VFs using devlink commands
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
Cc: pmenzel@molgen.mpg.de, aharivel@redhat.com, jiri@resnulli.us,
 cfontain@redhat.com, vchundur@redhat.com, ksundara@redhat.com,
 michal.swiatkowski@linux.intel.com, bcreeley@amd.com, rjarry@redhat.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Changing the MAC address of the VFs is currently unsupported via devlink.
Add the function handlers to set and get the HW address for the VFs.

Signed-off-by: Karthik Sundaravel <ksundara@redhat.com>
---
 .../ethernet/intel/ice/devlink/devlink_port.c | 59 ++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_sriov.c    | 34 ++++++++---
 drivers/net/ethernet/intel/ice/ice_sriov.h    |  8 +++
 3 files changed, 91 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
index c9fbeebf7fb9..f5befce579e3 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
@@ -372,6 +372,62 @@ void ice_devlink_destroy_pf_port(struct ice_pf *pf)
 	devl_port_unregister(&pf->devlink_port);
 }
 
+/**
+ * ice_devlink_port_get_vf_fn_mac - .port_fn_hw_addr_get devlink handler
+ * @port: devlink port structure
+ * @hw_addr: MAC address of the port
+ * @hw_addr_len: length of MAC address
+ * @extack: extended netdev ack structure
+ *
+ * Callback for the devlink .port_fn_hw_addr_get operation
+ * Return: zero on success or an error code on failure.
+ */
+static int ice_devlink_port_get_vf_fn_mac(struct devlink_port *port,
+					  u8 *hw_addr, int *hw_addr_len,
+					  struct netlink_ext_ack *extack)
+{
+	struct ice_vf *vf = container_of(port, struct ice_vf, devlink_port);
+
+	ether_addr_copy(hw_addr, vf->dev_lan_addr);
+	*hw_addr_len = ETH_ALEN;
+
+	return 0;
+}
+
+/**
+ * ice_devlink_port_set_vf_fn_mac - .port_fn_hw_addr_set devlink handler
+ * @port: devlink port structure
+ * @hw_addr: MAC address of the port
+ * @hw_addr_len: length of MAC address
+ * @extack: extended netdev ack structure
+ *
+ * Callback for the devlink .port_fn_hw_addr_set operation
+ * Return: zero on success or an error code on failure.
+ */
+static int ice_devlink_port_set_vf_fn_mac(struct devlink_port *port,
+					  const u8 *hw_addr,
+					  int hw_addr_len,
+					  struct netlink_ext_ack *extack)
+
+{
+	struct devlink_port_attrs *attrs = &port->attrs;
+	struct devlink_port_pci_vf_attrs *pci_vf;
+	struct devlink *devlink = port->devlink;
+	struct ice_pf *pf;
+	u16 vf_id;
+
+	pf = devlink_priv(devlink);
+	pci_vf = &attrs->pci_vf;
+	vf_id = pci_vf->vf;
+
+	return ice_set_vf_mac_fn(pf, vf_id, hw_addr);
+}
+
+static const struct devlink_port_ops ice_devlink_vf_port_ops = {
+	.port_fn_hw_addr_get = ice_devlink_port_get_vf_fn_mac,
+	.port_fn_hw_addr_set = ice_devlink_port_set_vf_fn_mac,
+};
+
 /**
  * ice_devlink_create_vf_port - Create a devlink port for this VF
  * @vf: the VF to create a port for
@@ -407,7 +463,8 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
 	devlink_port_attrs_set(devlink_port, &attrs);
 	devlink = priv_to_devlink(pf);
 
-	err = devl_port_register(devlink, devlink_port, vsi->idx);
+	err = devl_port_register_with_ops(devlink, devlink_port, vsi->idx,
+					  &ice_devlink_vf_port_ops);
 	if (err) {
 		dev_err(dev, "Failed to create devlink port for VF %d, error %d\n",
 			vf->vf_id, err);
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 067712f4923f..6aeaac1bc7a7 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1416,21 +1416,22 @@ ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info *ivi)
 }
 
 /**
- * ice_set_vf_mac
- * @netdev: network interface device structure
+ * ice_set_vf_mac_fn
+ * @pf: PF to be configure
  * @vf_id: VF identifier
  * @mac: MAC address
  *
  * program VF MAC address
  */
-int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
+int ice_set_vf_mac_fn(struct ice_pf *pf, u16 vf_id, const u8 *mac)
 {
-	struct ice_pf *pf = ice_netdev_to_pf(netdev);
+	struct device *dev;
 	struct ice_vf *vf;
 	int ret;
 
+	dev = ice_pf_to_dev(pf);
 	if (is_multicast_ether_addr(mac)) {
-		netdev_err(netdev, "%pM not a valid unicast address\n", mac);
+		dev_err(dev, "%pM not a valid unicast address\n", mac);
 		return -EINVAL;
 	}
 
@@ -1459,13 +1460,13 @@ int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
 	if (is_zero_ether_addr(mac)) {
 		/* VF will send VIRTCHNL_OP_ADD_ETH_ADDR message with its MAC */
 		vf->pf_set_mac = false;
-		netdev_info(netdev, "Removing MAC on VF %d. VF driver will be reinitialized\n",
-			    vf->vf_id);
+		dev_info(dev, "Removing MAC on VF %d. VF driver will be reinitialized\n",
+			 vf->vf_id);
 	} else {
 		/* PF will add MAC rule for the VF */
 		vf->pf_set_mac = true;
-		netdev_info(netdev, "Setting MAC %pM on VF %d. VF driver will be reinitialized\n",
-			    mac, vf_id);
+		dev_info(dev, "Setting MAC %pM on VF %d. VF driver will be reinitialized\n",
+			 mac, vf_id);
 	}
 
 	ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
@@ -1476,6 +1477,21 @@ int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
 	return ret;
 }
 
+/**
+ * ice_set_vf_mac
+ * @netdev: network interface device structure
+ * @vf_id: VF identifier
+ * @mac: MAC address
+ *
+ * program VF MAC address
+ */
+int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
+{
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
+
+	return ice_set_vf_mac_fn(pf, vf_id, mac);
+}
+
 /**
  * ice_set_vf_trust
  * @netdev: network interface device structure
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h b/drivers/net/ethernet/intel/ice/ice_sriov.h
index 8f22313474d6..085891a862f6 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.h
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
@@ -28,6 +28,7 @@
 #ifdef CONFIG_PCI_IOV
 void ice_process_vflr_event(struct ice_pf *pf);
 int ice_sriov_configure(struct pci_dev *pdev, int num_vfs);
+int ice_set_vf_mac_fn(struct ice_pf *pf, u16 vf_id, const u8 *mac);
 int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac);
 int
 ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info *ivi);
@@ -80,6 +81,13 @@ ice_sriov_configure(struct pci_dev __always_unused *pdev,
 	return -EOPNOTSUPP;
 }
 
+static inline int
+ice_set_vf_mac_fn(struct ice_pf __always_unused *pf,
+		  u16 __always_unused vf_id, const u8 __always_unused *mac)
+{
+	return -EOPNOTSUPP;
+}
+
 static inline int
 ice_set_vf_mac(struct net_device __always_unused *netdev,
 	       int __always_unused vf_id, u8 __always_unused *mac)
-- 
2.39.3 (Apple Git-146)

