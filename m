Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B108BE12F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 May 2024 13:40:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D29B40792;
	Tue,  7 May 2024 11:40:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O6JrY8frCHyc; Tue,  7 May 2024 11:40:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A3DD40778
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715082048;
	bh=pD50Jp07jC0H7nnNJNHlfHz0BeJp4fm46+A7arW3GJY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vTQV0v8Xanv5H9jdxjKCgguxRrLRbh3JCrW+FOTxGRqFQWggqbvMnA2TV4Hmjk/nf
	 vsLLK2z6/63XMQzOQ0RvQjs4XMVXI/n8LymfdkaNEg2Bs+osIAzOfAMoEbGfsLB69+
	 2GiNKWw2IR88esUSZr6lMyb9ETgscuzJ9ArQsQA7/GPvgnwtblJz9KBPlgvAopAB/1
	 wEBx+DdiLV0i0N0ydTcq9edpD6xZwDaA+taokwQA/dlbaElFLVAQ9eYwQAq/xC+HjK
	 y0/Tplpp2/t8KJIMlb6Q0oU9pjgIn7OfguH6StaHFdX3fTjmcyplh2TDtZ7i8T2wpx
	 dvcJJKjXDEgTw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A3DD40778;
	Tue,  7 May 2024 11:40:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5A2F71BF95F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 11:40:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 542E740223
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 11:40:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PBcWhHLAFZBm for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 May 2024 11:40:45 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6537540154
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6537540154
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6537540154
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 11:40:45 +0000 (UTC)
X-CSE-ConnectionGUID: DKfEHZMDTYWTMih/UAcFwA==
X-CSE-MsgGUID: QGMbbNX0T0K80M2NpU63Yg==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="22029302"
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="22029302"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 04:40:46 -0700
X-CSE-ConnectionGUID: tvzRTxB2TQCgpwEJ+K635g==
X-CSE-MsgGUID: vKok/OojStO0C0SdMUlfjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="28576724"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa009.jf.intel.com with ESMTP; 07 May 2024 04:40:42 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  7 May 2024 13:45:12 +0200
Message-ID: <20240507114516.9765-12-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240507114516.9765-1-michal.swiatkowski@linux.intel.com>
References: <20240507114516.9765-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715082046; x=1746618046;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U98RJNhpk0w1ibKjr+Y/Ppbe3WUrFIbLhoWnj4akRpY=;
 b=Nac8qefdUn9lG0m6EPGuotlce8yai+wkDmv38CK/aQAkMfJkNixgEM5l
 6Oi2th+aV0nBrW+ObEv+1+zmXW69z1IXdbNeDtbYF0npZkxi5wn55U8qK
 bVa57E/fuw5FI0m5ckUJfWIH0NtPsgFy+TKwo6Y9i6Qm1yGXx8lDWJKI3
 Nah9yqPgVRIiWC2EiI2w6f/FhSrElbLiH3pHlAY0RTZaH6J5Q9jlplHyw
 QvhZs4bnvCdBI6gtvcwEZA8HwXKC969iSPgRGtqS4QGDa1ALe+piEvIie
 60Lqd6S1uxnQ1jkqKzPJYvjuCUnLhxr70EwYhbMV1yw5pmr59Tk/9PHpv
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Nac8qefd
Subject: [Intel-wired-lan] [iwl-next v1 11/14] ice: netdevice ops for SF
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 michal.kubiak@intel.com, pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Subfunction port representor needs the basic netdevice ops to work
correctly. Create them.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_repr.c | 57 +++++++++++++++++------
 1 file changed, 43 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index 3cb3fc5f52ea..ec4f5b8b46e6 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -59,12 +59,13 @@ static void
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
@@ -93,7 +94,7 @@ struct ice_repr *ice_netdev_to_repr(const struct net_device *netdev)
 }
 
 /**
- * ice_repr_open - Enable port representor's network interface
+ * ice_repr_vf_open - Enable port representor's network interface
  * @netdev: network interface device structure
  *
  * The open entry point is called when a port representor's network
@@ -102,7 +103,7 @@ struct ice_repr *ice_netdev_to_repr(const struct net_device *netdev)
  *
  * Returns 0 on success
  */
-static int ice_repr_open(struct net_device *netdev)
+static int ice_repr_vf_open(struct net_device *netdev)
 {
 	struct ice_repr *repr = ice_netdev_to_repr(netdev);
 	struct ice_vf *vf;
@@ -118,8 +119,16 @@ static int ice_repr_open(struct net_device *netdev)
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
@@ -128,7 +137,7 @@ static int ice_repr_open(struct net_device *netdev)
  *
  * Returns 0 on success
  */
-static int ice_repr_stop(struct net_device *netdev)
+static int ice_repr_vf_stop(struct net_device *netdev)
 {
 	struct ice_repr *repr = ice_netdev_to_repr(netdev);
 	struct ice_vf *vf;
@@ -144,6 +153,14 @@ static int ice_repr_stop(struct net_device *netdev)
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
@@ -245,10 +262,20 @@ ice_repr_setup_tc(struct net_device *netdev, enum tc_setup_type type,
 	}
 }
 
-static const struct net_device_ops ice_repr_netdev_ops = {
+static const struct net_device_ops ice_repr_vf_netdev_ops = {
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
 	.ndo_get_stats64 = ice_repr_get_stats64,
-	.ndo_open = ice_repr_open,
-	.ndo_stop = ice_repr_stop,
+	.ndo_open = ice_repr_sf_open,
+	.ndo_stop = ice_repr_sf_stop,
 	.ndo_start_xmit = ice_eswitch_port_start_xmit,
 	.ndo_setup_tc = ice_repr_setup_tc,
 	.ndo_has_offload_stats = ice_repr_ndo_has_offload_stats,
@@ -261,18 +288,20 @@ static const struct net_device_ops ice_repr_netdev_ops = {
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
@@ -386,7 +415,7 @@ static int ice_repr_add_vf(struct ice_repr *repr)
 		return err;
 
 	SET_NETDEV_DEVLINK_PORT(repr->netdev, &vf->devlink_port);
-	err = ice_repr_reg_netdev(repr->netdev);
+	err = ice_repr_reg_netdev(repr->netdev, &ice_repr_vf_netdev_ops);
 	if (err)
 		goto err_netdev;
 
@@ -439,7 +468,7 @@ static int ice_repr_add_sf(struct ice_repr *repr)
 		return err;
 
 	SET_NETDEV_DEVLINK_PORT(repr->netdev, &sf->devlink_port);
-	err = ice_repr_reg_netdev(repr->netdev);
+	err = ice_repr_reg_netdev(repr->netdev, &ice_repr_sf_netdev_ops);
 	if (err)
 		goto err_netdev;
 
-- 
2.42.0

