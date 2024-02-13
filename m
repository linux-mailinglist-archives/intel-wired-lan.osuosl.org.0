Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2208529C3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 08:23:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 157B860B0F;
	Tue, 13 Feb 2024 07:23:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jZEpq_20zhAc; Tue, 13 Feb 2024 07:23:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A0DA60B27
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707809027;
	bh=iPc7ih5YVmfYEHqozsXkG7ygIkyWfrT1oCibOYMNyMA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0mLb2RkBk9kfrYGXIpwAY5iA1SS3pTaF9vszd1qi/2FxjQqmfVm6df2CjQEV1/Bvi
	 7L5TLsYfsXFlHSmGKJqqeQzsON+XZ8ao48hLs94a7bjzu/wWrD30ui5WlCYw5hzoA0
	 Ou4yeB+4MztIiPp0IU0dqKZ76JiPUNLXRx2puKew/KXPnvwZ+CYYw3sxXgI1ZEXJEu
	 oQBk/rv+RmBGT+eIEujhtKpxJ47fTBpn0OvXY83dI2NpQy5sFE83c2yDF4n0wP1vnK
	 nfrgy+itsO6y25jwbKZ/aUrycGGk2T5K6AyO64AdCFgzCMHLsbPlmp//ILTFHxwgWg
	 BspYpl4XgZ+wg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A0DA60B27;
	Tue, 13 Feb 2024 07:23:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A252D1BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 07:23:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8ECA14089F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 07:23:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id erWglUDTrIqs for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 07:23:40 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BB10040898
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB10040898
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BB10040898
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 07:23:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="27248006"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; d="scan'208";a="27248006"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 23:23:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; 
   d="scan'208";a="7385451"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa003.fm.intel.com with ESMTP; 12 Feb 2024 23:23:38 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Feb 2024 08:27:21 +0100
Message-ID: <20240213072724.77275-13-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
References: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707809021; x=1739345021;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2hLUxP1834Vl8fx9RVqq/1AoUwKtwNJO0XHMhBgEsYg=;
 b=OBLQScZqxx5g3sv7eozgb0a78pI0/GbfsMy/2RccKm7+CPUt4PpMnQSN
 4K+tWAxuEFvvc8BdWLgmJW10VrO+JlaChV+Deka7vEcJbh8BoAueml/J5
 y/BVWMlD4qYdIoX+vx96imubTSszvd7/geyuqv84FJeM7+6z6NSvLo+1f
 vqbE/WJyWsENEIXkauI/3VvZXBrsrCZhtTsTRhJH9cGNSLSyraccLE8Yt
 qLbJLlpvgC4bybN1e4nYk6jza0nNaIoWflxM12wi/ekFfCS1tzXWtrqiq
 CsTPM38uBmWkAy18lI6je1fS2AiBP8SCqWhxA1EBUO/Mfn/H264QyhDOK
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OBLQScZq
Subject: [Intel-wired-lan] [iwl-next v1 12/15] ice: netdevice ops for SF
 representor
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
 maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 netdev@vger.kernel.org, michal.kubiak@intel.com, pio.raczynski@gmail.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Subfunction port representor needs the basic netdevice ops to work
correctly. Create them.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_repr.c | 63 +++++++++++++++++------
 1 file changed, 48 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index f0ae7a9000b4..125bcf2e4c00 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -32,7 +32,10 @@ ice_repr_get_phys_port_name(struct net_device *netdev, char *buf, size_t len)
 	int res;
 
 	/* Devlink port is registered and devlink core is taking care of name formatting. */
-	if (repr->vf->devlink_port.devlink)
+	if ((repr->type == ICE_REPR_TYPE_VF &&
+	     repr->vf->devlink_port.devlink) ||
+	    (repr->type == ICE_REPR_TYPE_SF &&
+	     repr->sf->devlink_port.devlink))
 		return -EOPNOTSUPP;
 
 	res = snprintf(buf, len, "pf%dvfr%d", ice_repr_get_sw_port_id(repr),
@@ -92,12 +95,13 @@ static void
 ice_repr_get_stats64(struct net_device *netdev, struct rtnl_link_stats64 *stats)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_repr *repr = np->repr;
 	struct ice_eth_stats *eth_stats;
 	struct ice_vsi *vsi;
 
-	if (ice_is_vf_disabled(np->repr->vf))
+	if (repr->ops.ready(repr))
 		return;
-	vsi = np->repr->src_vsi;
+	vsi = repr->src_vsi;
 
 	ice_update_vsi_stats(vsi);
 	eth_stats = &vsi->eth_stats;
@@ -126,7 +130,7 @@ struct ice_repr *ice_netdev_to_repr(const struct net_device *netdev)
 }
 
 /**
- * ice_repr_open - Enable port representor's network interface
+ * ice_repr_vf_open - Enable port representor's network interface
  * @netdev: network interface device structure
  *
  * The open entry point is called when a port representor's network
@@ -135,7 +139,7 @@ struct ice_repr *ice_netdev_to_repr(const struct net_device *netdev)
  *
  * Returns 0 on success
  */
-static int ice_repr_open(struct net_device *netdev)
+static int ice_repr_vf_open(struct net_device *netdev)
 {
 	struct ice_repr *repr = ice_netdev_to_repr(netdev);
 	struct ice_vf *vf;
@@ -151,8 +155,16 @@ static int ice_repr_open(struct net_device *netdev)
 	return 0;
 }
 
+static int ice_repr_sf_open(struct net_device *netdev)
+{
+	netif_carrier_on(netdev);
+	netif_tx_start_all_queues(netdev);
+
+	return 0;
+}
+
 /**
- * ice_repr_stop - Disable port representor's network interface
+ * ice_repr_vf_stop - Disable port representor's network interface
  * @netdev: network interface device structure
  *
  * The stop entry point is called when a port representor's network
@@ -161,7 +173,7 @@ static int ice_repr_open(struct net_device *netdev)
  *
  * Returns 0 on success
  */
-static int ice_repr_stop(struct net_device *netdev)
+static int ice_repr_vf_stop(struct net_device *netdev)
 {
 	struct ice_repr *repr = ice_netdev_to_repr(netdev);
 	struct ice_vf *vf;
@@ -177,6 +189,14 @@ static int ice_repr_stop(struct net_device *netdev)
 	return 0;
 }
 
+static int ice_repr_sf_stop(struct net_device *netdev)
+{
+	netif_carrier_off(netdev);
+	netif_tx_stop_all_queues(netdev);
+
+	return 0;
+}
+
 /**
  * ice_repr_sp_stats64 - get slow path stats for port representor
  * @dev: network interface device structure
@@ -278,11 +298,22 @@ ice_repr_setup_tc(struct net_device *netdev, enum tc_setup_type type,
 	}
 }
 
-static const struct net_device_ops ice_repr_netdev_ops = {
+static const struct net_device_ops ice_repr_vf_netdev_ops = {
+	.ndo_get_phys_port_name = ice_repr_get_phys_port_name,
+	.ndo_get_stats64 = ice_repr_get_stats64,
+	.ndo_open = ice_repr_vf_open,
+	.ndo_stop = ice_repr_vf_stop,
+	.ndo_start_xmit = ice_eswitch_port_start_xmit,
+	.ndo_setup_tc = ice_repr_setup_tc,
+	.ndo_has_offload_stats = ice_repr_ndo_has_offload_stats,
+	.ndo_get_offload_stats = ice_repr_ndo_get_offload_stats,
+};
+
+static const struct net_device_ops ice_repr_sf_netdev_ops = {
 	.ndo_get_phys_port_name = ice_repr_get_phys_port_name,
 	.ndo_get_stats64 = ice_repr_get_stats64,
-	.ndo_open = ice_repr_open,
-	.ndo_stop = ice_repr_stop,
+	.ndo_open = ice_repr_sf_open,
+	.ndo_stop = ice_repr_sf_stop,
 	.ndo_start_xmit = ice_eswitch_port_start_xmit,
 	.ndo_setup_tc = ice_repr_setup_tc,
 	.ndo_has_offload_stats = ice_repr_ndo_has_offload_stats,
@@ -295,18 +326,20 @@ static const struct net_device_ops ice_repr_netdev_ops = {
  */
 bool ice_is_port_repr_netdev(const struct net_device *netdev)
 {
-	return netdev && (netdev->netdev_ops == &ice_repr_netdev_ops);
+	return netdev && (netdev->netdev_ops == &ice_repr_vf_netdev_ops ||
+			  netdev->netdev_ops == &ice_repr_sf_netdev_ops);
 }
 
 /**
  * ice_repr_reg_netdev - register port representor netdev
  * @netdev: pointer to port representor netdev
+ * @ops: new ops for netdev
  */
 static int
-ice_repr_reg_netdev(struct net_device *netdev)
+ice_repr_reg_netdev(struct net_device *netdev, const struct net_device_ops *ops)
 {
 	eth_hw_addr_random(netdev);
-	netdev->netdev_ops = &ice_repr_netdev_ops;
+	netdev->netdev_ops = ops;
 	ice_set_ethtool_repr_ops(netdev);
 
 	netdev->hw_features |= NETIF_F_HW_TC;
@@ -418,7 +451,7 @@ static int ice_repr_add_vf(struct ice_repr *repr)
 		return err;
 
 	SET_NETDEV_DEVLINK_PORT(repr->netdev, &vf->devlink_port);
-	err = ice_repr_reg_netdev(repr->netdev);
+	err = ice_repr_reg_netdev(repr->netdev, &ice_repr_vf_netdev_ops);
 	if (err)
 		goto err_netdev;
 
@@ -460,7 +493,7 @@ static int ice_repr_add_sf(struct ice_repr *repr)
 	struct ice_dynamic_port *sf = repr->sf;
 
 	SET_NETDEV_DEVLINK_PORT(repr->netdev, &sf->devlink_port);
-	return ice_repr_reg_netdev(repr->netdev);
+	return ice_repr_reg_netdev(repr->netdev, &ice_repr_sf_netdev_ops);
 }
 
 struct ice_repr *ice_repr_create_sf(struct ice_dynamic_port *sf)
-- 
2.42.0

