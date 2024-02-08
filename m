Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FDA984E4AC
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Feb 2024 17:06:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8E4F6FAD3;
	Thu,  8 Feb 2024 16:06:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LfT1hSjjvC-n; Thu,  8 Feb 2024 16:06:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2BF16617B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707408396;
	bh=m2b1cGoGE6O9wuUG9B9+7/YSXWO8H0LBstm+bY//wdM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=R6BvmH+cElCxw6ZCgD9Pc2p0400kMNa4vpPRr04dbjK2V2kejJ94Xay4S+orNQ2GE
	 29Op1I5PXoQt7j2TAzRzYNqttnDje5L7Tu0I6iNKu9WhRv6n2yJRqZ4JbygmExSKTy
	 M+mjOSpkQT88Z2Qy1GbjMmnDbHHAhWCmUnmZQP0asdqNt2pEQm6ZR71BKLrY5WNhYu
	 JAT+cofrgRuoTSrfGyDE6B2btuXtYCY3Y3tjerfNhsEBzzWGgxx1ztC8VaOahcR567
	 or4osFDBNzwWO8573OViX01F/CRIljLRJ18nHKfBiWjOX3BAxaEi9cGq3aicigDZey
	 hM8muhZWlC2ng==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2BF16617B8;
	Thu,  8 Feb 2024 16:06:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 772071BF831
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 08:25:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 647CA84179
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 08:25:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GbrbFit3FbSU for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Feb 2024 08:25:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ksundara@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7896E8413D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7896E8413D
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7896E8413D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 08:25:17 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-537-8Ve1q2OOOySylLJQVxvjlw-1; Thu,
 08 Feb 2024 03:25:12 -0500
X-MC-Unique: 8Ve1q2OOOySylLJQVxvjlw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
 [10.11.54.5])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4C6D229AA2D2;
 Thu,  8 Feb 2024 08:25:12 +0000 (UTC)
Received: from ksundara-mac.redhat.com (unknown [10.74.17.171])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BB8BA111F9;
 Thu,  8 Feb 2024 08:25:06 +0000 (UTC)
From: Karthik Sundaravel <ksundara@redhat.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Thu,  8 Feb 2024 13:54:55 +0530
Message-Id: <20240208082455.66726-2-ksundara@redhat.com>
In-Reply-To: <20240208082455.66726-1-ksundara@redhat.com>
References: <20240208082455.66726-1-ksundara@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mailman-Approved-At: Thu, 08 Feb 2024 16:06:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1707380716;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=m2b1cGoGE6O9wuUG9B9+7/YSXWO8H0LBstm+bY//wdM=;
 b=hoSVrYLZrEEEc9G6pk+N2R+hcTpajJvHmVPZEAy5T/SjzWOmwme8ckqNBwOTOLWzceVAIw
 AJVMGwR4r1pVCOL6pwCSZK3jBaw0Ig4AROWOqiFRHxw92yZjoiSiFjfcm6rmxfqquw4XnT
 a1tcLywGnldghrhjfi3T6V0zMZdPhYQ=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=hoSVrYLZ
Subject: [Intel-wired-lan] [PATCH v2] ice: Add get/set hw address for VFs
 using devlink commands
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
 michal.swiatkowski@linux.intel.com, rjarry@redhat.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Changing the MAC address of the VF ports are not available
via devlink. Add the function handlers to set and get
the HW address for the VF ports.

Signed-off-by: Karthik Sundaravel <ksundara@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_devlink.c | 89 +++++++++++++++++++-
 1 file changed, 88 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 80dc5445b50d..8455fa94a687 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -1576,6 +1576,92 @@ void ice_devlink_destroy_pf_port(struct ice_pf *pf)
 	devlink_port_unregister(&pf->devlink_port);
 }
 
+/**
+ * ice_devlink_port_get_vf_mac_address - .port_fn_hw_addr_get devlink handler
+ * @port: devlink port structure
+ * @hw_addr: MAC address of the port
+ * @hw_addr_len: length of MAC address
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
+	struct devlink *devlink = port->devlink;
+	struct ice_pf *pf = devlink_priv(devlink);
+	struct device *dev = ice_pf_to_dev(pf);
+	struct devlink_port_attrs *attrs = &port->attrs;
+	struct devlink_port_pci_vf_attrs *pci_vf;
+	int vf_id;
+	struct ice_vf *vf;
+
+	if (attrs->flavour == DEVLINK_PORT_FLAVOUR_PCI_VF) {
+		pci_vf = &attrs->pci_vf;
+		vf_id = pci_vf->vf;
+	} else {
+		dev_err(dev, "Unable to get the vf id for PF %d\n", pf->hw.pf_id);
+		return -EADDRNOTAVAIL;
+	}
+	vf = ice_get_vf_by_id(pf, vf_id);
+	if (!vf) {
+		dev_err(dev, "Unable to get the vf for PF %d\n", pf->hw.pf_id);
+		return -EINVAL;
+	}
+	ether_addr_copy(hw_addr, vf->dev_lan_addr);
+	*hw_addr_len = ETH_ALEN;
+	return 0;
+}
+
+/**
+ * ice_devlink_port_set_vf_mac_address - .port_fn_hw_addr_set devlink handler
+ * @port: devlink port structure
+ * @hw_addr: MAC address of the port
+ * @hw_addr_len: length of MAC address
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
+	struct ice_pf *pf = devlink_priv(devlink);
+	struct device *dev = ice_pf_to_dev(pf);
+	struct net_device *netdev = port->type_eth.netdev;
+	struct devlink_port_attrs *attrs = &port->attrs;
+	struct devlink_port_pci_vf_attrs *pci_vf;
+	int vf_id;
+	u8 mac[ETH_ALEN];
+
+	if (attrs->flavour == DEVLINK_PORT_FLAVOUR_PCI_VF) {
+		pci_vf = &attrs->pci_vf;
+		vf_id = pci_vf->vf;
+	} else {
+		dev_err(dev, "Unable to get the vf id for PF %d\n", pf->hw.pf_id);
+		return -EADDRNOTAVAIL;
+	}
+
+	if (!netdev) {
+		dev_err(dev, "Unable to get the netdev for PF %d\n", pf->hw.pf_id);
+		return -EADDRNOTAVAIL;
+	}
+	ether_addr_copy(mac, hw_addr);
+
+	return ice_set_vf_mac(netdev, vf_id, mac);
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
@@ -1611,7 +1697,8 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
 	devlink_port_attrs_set(devlink_port, &attrs);
 	devlink = priv_to_devlink(pf);
 
-	err = devlink_port_register(devlink, devlink_port, vsi->idx);
+	err = devlink_port_register_with_ops(devlink, devlink_port,
+					     vsi->idx, &ice_devlink_vf_port_ops);
 	if (err) {
 		dev_err(dev, "Failed to create devlink port for VF %d, error %d\n",
 			vf->vf_id, err);
-- 
2.39.3 (Apple Git-145)

