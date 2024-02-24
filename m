Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4F4862502
	for <lists+intel-wired-lan@lfdr.de>; Sat, 24 Feb 2024 13:44:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B1C3940496;
	Sat, 24 Feb 2024 12:44:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RprjXxfrnMKo; Sat, 24 Feb 2024 12:44:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 80856404B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708778668;
	bh=/8cJq6gJYr9fItMmms3ESiKT1OC7cypwGkdjoZcf+Rc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=RjjKCaiNiTVjFmBmbGj3o2HQ4dvcRgGqXylOfZbkj1qn9NkyH6ow5EJ/e6RiLyog+
	 ILs00FbQvPDTbKL1+80YASyurNvqbWlFJTGwtLS1OIyk3sAh6VVU65ctSX6qpwSicY
	 9TI8ATmSnG1NiOtIBH5WTfQF1b1obXuDmzbDcHm1PpjeyPa9MOeh/L/vD/oRQLCBqf
	 c9IFxrFb0Wr67fYWn6H8y0hs8xEZpe3LqV6P0iT4gJJ/uMbIv0If6EHdQcyJKEdesy
	 qJDOQEwUiAyzXEBjNNcIYDEJcokbTvV3wHFQob0D6isqVGETJpuI8fShvpDkKm5ED6
	 Gn4XK/6QDZeHg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 80856404B1;
	Sat, 24 Feb 2024 12:44:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DD5751BF846
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Feb 2024 12:44:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C2B21407F5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Feb 2024 12:44:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NJpGoj7ieysr for <intel-wired-lan@lists.osuosl.org>;
 Sat, 24 Feb 2024 12:44:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ksundara@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C49614079C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C49614079C
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C49614079C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Feb 2024 12:44:24 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-627-dqKOwW8dOVeR3GCN4KkXGg-1; Sat, 24 Feb 2024 07:44:17 -0500
X-MC-Unique: dqKOwW8dOVeR3GCN4KkXGg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7E9E9800074;
 Sat, 24 Feb 2024 12:44:16 +0000 (UTC)
Received: from ksundara-mac.redhat.com (unknown [10.74.16.76])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3C9AB492BC6;
 Sat, 24 Feb 2024 12:44:09 +0000 (UTC)
From: Karthik Sundaravel <ksundara@redhat.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Sat, 24 Feb 2024 18:14:06 +0530
Message-Id: <20240224124406.11369-1-ksundara@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1708778663;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=/8cJq6gJYr9fItMmms3ESiKT1OC7cypwGkdjoZcf+Rc=;
 b=cmaiKI81yrD/PY/AHk9v/26u+o6ADka/c6KoKGSt2tX/fS+ArwLk4p4+YPN9MXoMgdrx+D
 7zbcD/LYArkcG+zWJaqA1FMmiez4DtuioqUP1uqhCfN5S1yFDvfP4ESCWI1MTFSJZU4o5P
 8m/kp8yv4sW1dPDoira+LajREuCcs1U=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=cmaiKI81
Subject: [Intel-wired-lan] [PATCH v4] ice: Add get/set hw address for VFs
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

Changing the MAC address of the VFs are not available
via devlink. Add the function handlers to set and get
the HW address for the VFs.

Signed-off-by: Karthik Sundaravel <ksundara@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_devlink.c | 88 +++++++++++++++++++-
 1 file changed, 87 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 80dc5445b50d..c3813edd6a76 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -1576,6 +1576,91 @@ void ice_devlink_destroy_pf_port(struct ice_pf *pf)
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
+	struct devlink_port_attrs *attrs = &port->attrs;
+	struct devlink_port_pci_vf_attrs *pci_vf;
+	struct devlink *devlink = port->devlink;
+	struct ice_pf *pf;
+	struct ice_vf *vf;
+	int vf_id;
+
+	pf = devlink_priv(devlink);
+	if (attrs->flavour == DEVLINK_PORT_FLAVOUR_PCI_VF) {
+		pci_vf = &attrs->pci_vf;
+		vf_id = pci_vf->vf;
+	} else {
+		NL_SET_ERR_MSG_MOD(extack, "Unable to get the vf id");
+		return -EADDRNOTAVAIL;
+	}
+	vf = ice_get_vf_by_id(pf, vf_id);
+	if (!vf) {
+		NL_SET_ERR_MSG_MOD(extack, "Unable to get the vf");
+		return -EINVAL;
+	}
+	ether_addr_copy(hw_addr, vf->dev_lan_addr);
+	*hw_addr_len = ETH_ALEN;
+
+	ice_put_vf(vf);
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
+	struct net_device *netdev = port->type_eth.netdev;
+	struct devlink_port_attrs *attrs = &port->attrs;
+	struct devlink_port_pci_vf_attrs *pci_vf;
+	u8 mac[ETH_ALEN];
+	int vf_id;
+
+	if (attrs->flavour == DEVLINK_PORT_FLAVOUR_PCI_VF) {
+		pci_vf = &attrs->pci_vf;
+		vf_id = pci_vf->vf;
+	} else {
+		NL_SET_ERR_MSG_MOD(extack, "Unable to get the vf id");
+		return -EADDRNOTAVAIL;
+	}
+
+	if (!netdev) {
+		NL_SET_ERR_MSG_MOD(extack, "Unable to get the netdev");
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
@@ -1611,7 +1696,8 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
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

