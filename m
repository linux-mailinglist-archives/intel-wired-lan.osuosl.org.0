Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D825086D8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Apr 2022 13:23:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E6A840510;
	Wed, 20 Apr 2022 11:23:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FCSnE9RBlana; Wed, 20 Apr 2022 11:23:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A252C4032A;
	Wed, 20 Apr 2022 11:23:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 431B91BF5A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 11:23:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2FBB78411B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 11:23:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GMhv9yLudXvV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Apr 2022 11:23:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 588D684109
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 11:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650453800; x=1681989800;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Zyj9XqiUNKYskjPECVX2RC0DNwYYTUv+5v8BP4QesjE=;
 b=F6sJtQat5MWWWK3XIiVfpSfX2p6Y1keINp5TNywfFmoIo0aMYpw4eQZO
 EU3Q/QpOJQI14ZHJRrqSrlyeRVOA74TM4Wup1Ze2akhafj9EmEv0LLDaA
 yIRh4tEjiUy2rE6BVhcpOTK5SZGlTjosTz28nDyqVGUaB5HsUGv2pbcVR
 M7OZDgyu/Hl999An+/pFB+Iao1qAwtJmJ9dBjJadLMVMLTGlwVu7QHMFd
 qh0xcuIj5HnCzmnFzbTwm8/errkgF7M+D47Z69SWe/+ORwTWexdonS5ur
 1lH2rXZBHJS8yj3q6acpvbWIC3Rgr0Zf1WhQYXk+3WsnI3lJu9mkHBe7X A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="262859813"
X-IronPort-AV: E=Sophos;i="5.90,275,1643702400"; d="scan'208";a="262859813"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2022 04:23:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,275,1643702400"; d="scan'208";a="863602384"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga005.fm.intel.com with ESMTP; 20 Apr 2022 04:23:18 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 23KBNHsm004083; Wed, 20 Apr 2022 12:23:17 +0100
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 20 Apr 2022 13:22:43 +0200
Message-Id: <20220420112243.142168-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] ice: get switch id on switchdev
 devices
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

From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Switch id should be the same for each netdevice on a driver.
The id must be unique between devices on the same system, but
does not need to be unique between devices on different systems.

The switch id is used to locate ports on a switch and to know if
aggregated ports belong to the same switch.

To meet this requirements, use pci_get_dsn as switch id value, as
this is unique value for each devices on the same system.

Implementing switch id is needed by automatic tools for kubernetes.

Set switch id by setting devlink port attribiutes and calling
devlink_port_attrs_set while creating pf (for uplink) and vf
(for representator) devlink port.

To get switch id (in switchdev mode):
cat /sys/class/net/$PF0/phys_switch_id

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_devlink.c | 22 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_main.c    | 15 +++++++++++++
 2 files changed, 37 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 4a9de59121d8..3991d62473bf 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -647,6 +647,23 @@ void ice_devlink_unregister(struct ice_pf *pf)
 	devlink_unregister(priv_to_devlink(pf));
 }
 
+/**
+ * ice_devlink_set_switch_id - Set unique switch id based on pci dsn
+ * @pf: the PF to create a devlink port for
+ * @ppid: struct with switch id information
+ */
+static void
+ice_devlink_set_switch_id(struct ice_pf *pf, struct netdev_phys_item_id *ppid)
+{
+	struct pci_dev *pdev = pf->pdev;
+	u64 id;
+
+	id = pci_get_dsn(pdev);
+
+	ppid->id_len = sizeof(id);
+	put_unaligned_be64(id, &ppid->id);
+}
+
 int ice_devlink_register_params(struct ice_pf *pf)
 {
 	struct devlink *devlink = priv_to_devlink(pf);
@@ -704,6 +721,9 @@ int ice_devlink_create_pf_port(struct ice_pf *pf)
 
 	attrs.flavour = DEVLINK_PORT_FLAVOUR_PHYSICAL;
 	attrs.phys.port_number = pf->hw.bus.func;
+
+	ice_devlink_set_switch_id(pf, &attrs.switch_id);
+
 	devlink_port_attrs_set(devlink_port, &attrs);
 	devlink = priv_to_devlink(pf);
 
@@ -763,6 +783,8 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
 	attrs.pci_vf.pf = pf->hw.bus.func;
 	attrs.pci_vf.vf = vf->vf_id;
 
+	ice_devlink_set_switch_id(pf, &attrs.switch_id);
+
 	devlink_port_attrs_set(devlink_port, &attrs);
 	devlink = priv_to_devlink(pf);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 4039f14b4db6..3d4e7f48217e 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -296,6 +296,20 @@ static int ice_clear_promisc(struct ice_vsi *vsi, u8 promisc_m)
 	return status;
 }
 
+/**
+ * ice_get_devlink_port - Get devlink port from netdev
+ * @netdev: the netdevice structure
+ */
+static struct devlink_port *ice_get_devlink_port(struct net_device *netdev)
+{
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
+
+	if (!ice_is_switchdev_running(pf))
+		return NULL;
+
+	return &pf->devlink_port;
+}
+
 /**
  * ice_vsi_sync_fltr - Update the VSI filter list to the HW
  * @vsi: ptr to the VSI
@@ -8926,4 +8940,5 @@ static const struct net_device_ops ice_netdev_ops = {
 	.ndo_bpf = ice_xdp,
 	.ndo_xdp_xmit = ice_xdp_xmit,
 	.ndo_xsk_wakeup = ice_xsk_wakeup,
+	.ndo_get_devlink_port = ice_get_devlink_port,
 };
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
