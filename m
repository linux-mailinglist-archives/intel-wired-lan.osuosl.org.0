Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8308982AB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 09:59:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 30E2282C99;
	Thu,  4 Apr 2024 07:59:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZBG4wMG_y_dh; Thu,  4 Apr 2024 07:59:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 546D382CA3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712217592;
	bh=Q8qjQ9dmdVB2B2yrlfzMnrRDgO9DYDQN2xa+EkvT42A=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=H0H61MIykGWyO6rktKp51IQ/BAraWgzWcNnRsfs1ytkup/YVk7RxkkyJvaRX4yDmz
	 Skk1nA3ZOKgRnjmx0r3cDd8tU9/FW7m/9L+Gg6OaBs5mbFqa2aHVrMoRlDEg6EXWM3
	 YAgoMq6oQgxvY4P4VmcrcA5dRgXn8nJ4yar3EF0674AG+h2xVuUin2K/Wx3eWICcJc
	 glvuCFeEm2ychVWAAxzmglx5dkKodNhp/tVGYClx6niZ1WTxBzDR6141OoWlhT3PyO
	 sG7Necizp1lLLokKcFiJZS73Z7XJUkG8uT6g+OMmwnh/K6ejyaNX4v67sW120GZkbl
	 hnzkq0zbq3LqA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 546D382CA3;
	Thu,  4 Apr 2024 07:59:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 291591BF239
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 07:59:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 151D741901
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 07:59:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PBLWZ8kuDkJA for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Apr 2024 07:59:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ksundara@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D100841523
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D100841523
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D100841523
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 07:59:48 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-197-ygA45I3yM9Ce2VrY_mmmVg-1; Thu, 04 Apr 2024 03:59:42 -0400
X-MC-Unique: ygA45I3yM9Ce2VrY_mmmVg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
 [10.11.54.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 988C9805AA4;
 Thu,  4 Apr 2024 07:59:40 +0000 (UTC)
Received: from ksundara-mac.redhat.com (unknown [10.74.17.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3D03C200A386;
 Thu,  4 Apr 2024 07:59:33 +0000 (UTC)
From: Karthik Sundaravel <ksundara@redhat.com>
To: jesse.brandeburg@intel.com, wojciech.drewek@intel.com, sumang@marvell.com,
 jacob.e.keller@intel.com, anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Thu,  4 Apr 2024 13:29:17 +0530
Message-Id: <20240404075917.4347-2-ksundara@redhat.com>
In-Reply-To: <20240404075917.4347-1-ksundara@redhat.com>
References: <20240404075917.4347-1-ksundara@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1712217587;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Q8qjQ9dmdVB2B2yrlfzMnrRDgO9DYDQN2xa+EkvT42A=;
 b=Vhnz4xKvM/1nXbGhFQ/q/uvj1BorA/ib80lm7XoKw8k35OznMplzwdoqNI0CGEFLB5VBrV
 g7RqCDeyz04a/0DeHty4iltmBU2QpzAd/zY0lLjok4l4MI/7Tm7OFcmL8ZZH5aYxriTJD5
 Udw9M9yNwm9mKy+djG6jkPSs9EZx++0=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=Vhnz4xKv
Subject: [Intel-wired-lan] [PATCH v8] ice: Add get/set hw address for VFs
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

Changing the MAC address of the VFs is currently unsupported via devlink.
Add the function handlers to set and get the HW address for the VFs.

Signed-off-by: Karthik Sundaravel <ksundara@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_devlink.c | 60 ++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_sriov.c   | 62 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_sriov.h   |  8 +++
 3 files changed, 129 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 80dc5445b50d..381c7411fcf7 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -1576,6 +1576,63 @@ void ice_devlink_destroy_pf_port(struct ice_pf *pf)
 	devlink_port_unregister(&pf->devlink_port);
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
+
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
+	return ice_set_vf_fn_mac(pf, vf_id, hw_addr);
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
@@ -1611,7 +1668,8 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
 	devlink_port_attrs_set(devlink_port, &attrs);
 	devlink = priv_to_devlink(pf);
 
-	err = devlink_port_register(devlink, devlink_port, vsi->idx);
+	err = devlink_port_register_with_ops(devlink, devlink_port,
+					     vsi->idx, &ice_devlink_vf_port_ops);
 	if (err) {
 		dev_err(dev, "Failed to create devlink port for VF %d, error %d\n",
 			vf->vf_id, err);
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 31314e7540f8..20a0eb406c40 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1216,6 +1216,68 @@ ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info *ivi)
 	return ret;
 }
 
+/**
+ * ice_set_vf_fn_mac
+ * @pf: PF to be configure
+ * @vf_id: VF identifier
+ * @mac: MAC address
+ *
+ * program VF MAC address
+ */
+int ice_set_vf_fn_mac(struct ice_pf *pf, u16 vf_id, const u8 *mac)
+{
+	struct device *dev;
+	struct ice_vf *vf;
+	int ret;
+
+	dev = ice_pf_to_dev(pf);
+	if (is_multicast_ether_addr(mac)) {
+		dev_err(dev, "%pM not a valid unicast address\n", mac);
+		return -EINVAL;
+	}
+
+	vf = ice_get_vf_by_id(pf, vf_id);
+	if (!vf)
+		return -EINVAL;
+
+	/* nothing left to do, unicast MAC already set */
+	if (ether_addr_equal(vf->dev_lan_addr, mac) &&
+	    ether_addr_equal(vf->hw_lan_addr, mac)) {
+		ret = 0;
+		goto out_put_vf;
+	}
+
+	ret = ice_check_vf_ready_for_cfg(vf);
+	if (ret)
+		goto out_put_vf;
+
+	mutex_lock(&vf->cfg_lock);
+
+	/* VF is notified of its new MAC via the PF's response to the
+	 * VIRTCHNL_OP_GET_VF_RESOURCES message after the VF has been reset
+	 */
+	ether_addr_copy(vf->dev_lan_addr, mac);
+	ether_addr_copy(vf->hw_lan_addr, mac);
+	if (is_zero_ether_addr(mac)) {
+		/* VF will send VIRTCHNL_OP_ADD_ETH_ADDR message with its MAC */
+		vf->pf_set_mac = false;
+		dev_info(dev, "Removing MAC on VF %d. VF driver will be reinitialized\n",
+			 vf->vf_id);
+	} else {
+		/* PF will add MAC rule for the VF */
+		vf->pf_set_mac = true;
+		dev_info(dev, "Setting MAC %pM on VF %d. VF driver will be reinitialized\n",
+			 mac, vf_id);
+	}
+
+	ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
+	mutex_unlock(&vf->cfg_lock);
+
+out_put_vf:
+	ice_put_vf(vf);
+	return ret;
+}
+
 /**
  * ice_set_vf_mac
  * @netdev: network interface device structure
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h b/drivers/net/ethernet/intel/ice/ice_sriov.h
index 346cb2666f3a..afde25cd1c9f 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.h
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
@@ -28,6 +28,7 @@
 #ifdef CONFIG_PCI_IOV
 void ice_process_vflr_event(struct ice_pf *pf);
 int ice_sriov_configure(struct pci_dev *pdev, int num_vfs);
+int ice_set_vf_fn_mac(struct ice_pf *pf, u16 vf_id, const u8 *mac);
 int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac);
 int
 ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info *ivi);
@@ -76,6 +77,13 @@ ice_sriov_configure(struct pci_dev __always_unused *pdev,
 	return -EOPNOTSUPP;
 }
 
+static inline int
+ice_set_vf_fn_mac(struct ice_pf __always_unused *pf,
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

