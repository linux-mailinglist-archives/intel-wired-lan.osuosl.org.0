Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 875168A2682
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Apr 2024 08:26:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3818541ED0;
	Fri, 12 Apr 2024 06:26:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a8hPOl0_Ncnr; Fri, 12 Apr 2024 06:26:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8255541FAC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712903192;
	bh=kJTaMlnxNIwQALWPzJo9Y9mkKZUlq9gTFbbIlGcjXEg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AKToiwbVwnv4M4AzM/qSyM0gAX3e4Z/5yJTSjlvhxs9FQnLCwwUzYPXoYl524GAN0
	 8tA/G4/Qe0h0VsMVkFwYJ/F/fUPZHyIBFFTm9reN41z/uez+hudLc5SppIUB8gws1W
	 9dUlJc/7qeUbp0ezwop1rKDK9ibv/xvgVPOCXtC69Esu2wfrSk8R1bEIBVCUhvovTS
	 4nIPHtwOXnbuR2LEwKff2Hg+PhVRtNMNZnyfIQlV8SON7Gy3dTodjYv2CcgSCQIN2B
	 teQHrLwcQmHW9ChQStA6zJ+gmRq+HoE+UjP+Y4ac2qiLy85o3bMFTCRVXlYrI0P7PC
	 jiyO/NFUcCYog==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8255541FAC;
	Fri, 12 Apr 2024 06:26:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3B3FC1BF312
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 06:26:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 35DC840540
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 06:26:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ubu5qT5EovZ5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Apr 2024 06:26:29 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 68E7540446
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 68E7540446
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 68E7540446
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 06:26:29 +0000 (UTC)
X-CSE-ConnectionGUID: q+tFHh78R36cPRGNAXfuKQ==
X-CSE-MsgGUID: t0E29JutReeY3WM/OZtV8w==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="18952966"
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="18952966"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 23:26:29 -0700
X-CSE-ConnectionGUID: Otg8klPlT5iZgQ1f8g7TNQ==
X-CSE-MsgGUID: FyWT2il0RuGOqk5CPCrdNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="21105129"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa009.jf.intel.com with ESMTP; 11 Apr 2024 23:26:26 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Apr 2024 08:30:52 +0200
Message-ID: <20240412063053.339795-7-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240412063053.339795-1-michal.swiatkowski@linux.intel.com>
References: <20240412063053.339795-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712903189; x=1744439189;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=A9td/u3rL3CsEVlgoV3nHZed2uzaUWhm37Vu6ewAR6k=;
 b=H2uN1nZSuvO07ib8rrOThAOern+onS1Tg7ahNCEJojaB/QqWowiPhr+2
 X3f6fbGdrsjroZ/NAKiN8OZIRROs6iF3u4JgWB4ad2fI7kw8KkneqJEz+
 G81uqZuEBzSDedD1v2WadS8k1pTzUhHq/4P18PXNNYnvkk4vAjsrPfZfO
 dOiIqzLfwuKhqcmN97yokHx3rgWM30Dqexh9PqBypt9g/0t6j58Fo/tAb
 jLSyN9gMeSHfdY50hPFWgCj4iUnMwW8oiOkuO+yGhMfvxMaH3hwWYdbru
 q9Nds8EiLicqDp/nsgdNTphJwG+KARf6C46zlDUPvk8a7zCiPnSvODZnE
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H2uN1nZS
Subject: [Intel-wired-lan] [iwl-next v3 6/7] ice: implement netdev for
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 maciej.fijalkowski@intel.com, mateusz.polchlopek@intel.com,
 sridhar.samudrala@intel.com, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 netdev@vger.kernel.org, jiri@nvidia.com, michal.kubiak@intel.com,
 pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com,
 Piotr Raczynski <piotr.raczynski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Piotr Raczynski <piotr.raczynski@intel.com>

Configure netdevice for subfunction usecase. Mostly it is reusing ops
from the PF netdevice.

SF netdev is linked to devlink port registered after SF activation.

Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sf_eth.c | 85 ++++++++++++++++++++-
 1 file changed, 84 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
index 70f7cbe6c609..2b69dd5facf9 100644
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
@@ -55,18 +129,26 @@ static int ice_sf_dev_probe(struct auxiliary_device *adev,
 		goto err_vsi_decfg;
 	}
 
+	err = ice_sf_cfg_netdev(dyn_port, &sf_dev->priv->devlink_port);
+	if (err) {
+		dev_err(dev, "Subfunction netdev config failed");
+		goto err_devlink_destroy;
+	}
+
 	err = ice_fltr_add_mac_and_broadcast(vsi, vsi->netdev->dev_addr,
 					     ICE_FWD_TO_VSI);
 	if (err) {
 		dev_err(dev, "can't add MAC filters %pM for VSI %d\n",
 			vsi->netdev->dev_addr, vsi->idx);
-		goto err_devlink_destroy;
+		goto err_netdev_decfg;
 	}
 
 	ice_napi_add(vsi);
 
 	return err;
 
+err_netdev_decfg:
+	ice_sf_decfg_netdev(vsi);
 err_devlink_destroy:
 	ice_devlink_destroy_sf_dev_port(sf_dev);
 err_vsi_decfg:
@@ -89,6 +171,7 @@ static void ice_sf_dev_remove(struct auxiliary_device *adev)
 
 	ice_vsi_close(vsi);
 
+	ice_sf_decfg_netdev(vsi);
 	ice_devlink_destroy_sf_dev_port(sf_dev);
 	devlink_unregister(devlink);
 	devlink_free(devlink);
-- 
2.42.0

