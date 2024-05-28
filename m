Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D988D135D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 06:33:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 800A6405B7;
	Tue, 28 May 2024 04:33:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w4TAYz8Xe_LQ; Tue, 28 May 2024 04:33:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 90024405C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716870814;
	bh=q/34pFmgUrGVRB5gFysO5jlu2DLko03PZ36/MB8HqXs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Q4JwYNHjvemWavUWdlKrz4JBRMPe7Wwey6MMt1cHAsRTXnvyAISf9LspmVPlt9aXS
	 Wsa/PukhlOnZwsDWZ5SrVhWzPUWcdKCmtaodA2dRGKegirYnG8oAq0zGLFqs7q9r16
	 R5NeybZ9a+blRi9eXmFlPipQeXYcMClEOZbPzQ6eJzBAyV489WqK8djbhqWZzD8JRb
	 uAFUcLldix/NnGNOSJrZY0YHd6OWfvlH2d3v4gh5GPsyF8zoK2C5UGr8EXviyNhrvl
	 +gqUQ80r34Ypd4FJUavx6To3VCo6p+sRn+02YpmVb3E0q1rMFoFAaMwFGMcfjw5d5e
	 8BsP2IRMGyo9w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 90024405C1;
	Tue, 28 May 2024 04:33:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 63EFE1D23B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 04:33:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 45F60404DC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 04:33:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ajGJD4NmBZ5d for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 04:33:30 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 421EC400DD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 421EC400DD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 421EC400DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 04:33:30 +0000 (UTC)
X-CSE-ConnectionGUID: n3itN0zoQnydYV1bOgFZ7A==
X-CSE-MsgGUID: 56Z2Ix2MRk2yX28dIy4JDQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13020115"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="13020115"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 21:33:30 -0700
X-CSE-ConnectionGUID: FziZuXqrT0es9V5Fo2baDA==
X-CSE-MsgGUID: MmamSi3OTmepC8V5NymTyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="66152419"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa001.fm.intel.com with ESMTP; 27 May 2024 21:33:27 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 May 2024 06:38:05 +0200
Message-ID: <20240528043813.1342483-8-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240528043813.1342483-1-michal.swiatkowski@linux.intel.com>
References: <20240528043813.1342483-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716870810; x=1748406810;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wTiie1WC0v0OwejiEl33D0ZP6bZoFdlvg+u6AavqK7A=;
 b=WLGSDjnEkhzUeUMFpWHzwzk19Rm9O+YAny+fGHF87D0/QZyWhxcTSeM2
 EP3uVtlabxRgaT+FpF3+bJGYMuA6KvfgFvMJ92nhlrbVnhK+liLXuhUoK
 BgpqBlye9rcEJ/aexFXobak9fPKWhFE7ecD6u2YzSQf8FZbNPYeX8MTb1
 bH2EtetqSKNm690ImJ7J8UOHj5IhWmJNUGV2bXZ+ncib2+Xrtwxd5NgLG
 shfdru3/WDP1J9s/TldZelbXOaa3QiIl/ugGF0tCkY8uaeISGPOdRdJ71
 MJbh18saaSjvUpwt+5QQ0nvDyX4O98jrhL7J6dk/7pmYS4XwsOOPKkwef
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WLGSDjnE
Subject: [Intel-wired-lan] [iwl-next v3 07/15] ice: implement netdev for
 subfunction
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 kalesh-anakkur.purayil@broadcom.com, michal.kubiak@intel.com,
 pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Piotr Raczynski <piotr.raczynski@intel.com>

Configure netdevice for subfunction usecase. Mostly it is reusing ops
from the PF netdevice.

SF netdev is linked to devlink port registered after SF activation.

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sf_eth.c | 85 ++++++++++++++++++++-
 1 file changed, 84 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
index abe495c2d033..3a540a2638d1 100644
--- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
@@ -2,11 +2,85 @@
 /* Copyright (c) 2024, Intel Corporation. */
 #include "ice.h"
 #include "ice_lib.h"
+#include "ice_txrx.h"
 #include "ice_fltr.h"
 #include "ice_sf_eth.h"
 #include "devlink/devlink_port.h"
 #include "devlink/devlink.h"
 
+static const struct net_device_ops ice_sf_netdev_ops = {
+	.ndo_open = ice_open,
+	.ndo_stop = ice_stop,
+	.ndo_start_xmit = ice_start_xmit,
+	.ndo_vlan_rx_add_vid = ice_vlan_rx_add_vid,
+	.ndo_vlan_rx_kill_vid = ice_vlan_rx_kill_vid,
+	.ndo_change_mtu = ice_change_mtu,
+	.ndo_get_stats64 = ice_get_stats64,
+	.ndo_tx_timeout = ice_tx_timeout,
+	.ndo_bpf = ice_xdp,
+	.ndo_xdp_xmit = ice_xdp_xmit,
+	.ndo_xsk_wakeup = ice_xsk_wakeup,
+};
+
+/**
+ * ice_sf_cfg_netdev - Allocate, configure and register a netdev
+ * @dyn_port: subfunction associated with configured netdev
+ * @devlink_port: subfunction devlink port to be linked with netdev
+ *
+ * Return: 0 on success, negative value on failure
+ */
+static int ice_sf_cfg_netdev(struct ice_dynamic_port *dyn_port,
+			     struct devlink_port *devlink_port)
+{
+	struct ice_vsi *vsi = dyn_port->vsi;
+	struct ice_netdev_priv *np;
+	struct net_device *netdev;
+	int err;
+
+	netdev = alloc_etherdev_mqs(sizeof(*np), vsi->alloc_txq,
+				    vsi->alloc_rxq);
+	if (!netdev)
+		return -ENOMEM;
+
+	SET_NETDEV_DEV(netdev, &vsi->back->pdev->dev);
+	set_bit(ICE_VSI_NETDEV_ALLOCD, vsi->state);
+	vsi->netdev = netdev;
+	np = netdev_priv(netdev);
+	np->vsi = vsi;
+
+	ice_set_netdev_features(netdev);
+
+	netdev->xdp_features = NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRECT |
+			       NETDEV_XDP_ACT_XSK_ZEROCOPY |
+			       NETDEV_XDP_ACT_RX_SG;
+
+	eth_hw_addr_set(netdev, dyn_port->hw_addr);
+	ether_addr_copy(netdev->perm_addr, dyn_port->hw_addr);
+	netdev->netdev_ops = &ice_sf_netdev_ops;
+	SET_NETDEV_DEVLINK_PORT(netdev, devlink_port);
+
+	err = register_netdev(netdev);
+	if (err) {
+		free_netdev(netdev);
+		vsi->netdev = NULL;
+		return -ENOMEM;
+	}
+	set_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state);
+	netif_carrier_off(netdev);
+	netif_tx_stop_all_queues(netdev);
+
+	return 0;
+}
+
+static void ice_sf_decfg_netdev(struct ice_vsi *vsi)
+{
+	unregister_netdev(vsi->netdev);
+	clear_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state);
+	free_netdev(vsi->netdev);
+	vsi->netdev = NULL;
+	clear_bit(ICE_VSI_NETDEV_ALLOCD, vsi->state);
+}
+
 /**
  * ice_sf_dev_probe - subfunction driver probe function
  * @adev: pointer to the auxiliary device
@@ -57,10 +131,16 @@ static int ice_sf_dev_probe(struct auxiliary_device *adev,
 		goto err_vsi_decfg;
 	}
 
+	err = ice_sf_cfg_netdev(dyn_port, &sf_dev->priv->devlink_port);
+	if (err) {
+		dev_err(dev, "Subfunction netdev config failed");
+		goto err_devlink_destroy;
+	}
+
 	err = devl_port_fn_devlink_set(&dyn_port->devlink_port, devlink);
 	if (err) {
 		dev_err(dev, "Can't link devlink instance to SF devlink port");
-		goto err_devlink_destroy;
+		goto err_netdev_decfg;
 	}
 
 	ice_napi_add(vsi);
@@ -70,6 +150,8 @@ static int ice_sf_dev_probe(struct auxiliary_device *adev,
 
 	return 0;
 
+err_netdev_decfg:
+	ice_sf_decfg_netdev(vsi);
 err_devlink_destroy:
 	ice_devlink_destroy_sf_dev_port(sf_dev);
 err_vsi_decfg:
@@ -98,6 +180,7 @@ static void ice_sf_dev_remove(struct auxiliary_device *adev)
 
 	ice_vsi_close(vsi);
 
+	ice_sf_decfg_netdev(vsi);
 	ice_devlink_destroy_sf_dev_port(sf_dev);
 	devl_unregister(devlink);
 	devl_unlock(devlink);
-- 
2.42.0

