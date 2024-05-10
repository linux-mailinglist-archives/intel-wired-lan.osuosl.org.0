Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5478C1EF4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 May 2024 09:26:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B8636157C;
	Fri, 10 May 2024 07:26:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GMXXn4FJz0XJ; Fri, 10 May 2024 07:26:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 26DDD6157D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715325972;
	bh=WkHMzdaoqHODKzPm1y8oir+uo4fI8rvcE/v2uVdsx/w=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ma2twabttQFISmUA3KyzHnnW3YLMSBdK6uBMnGU2hMkpb5chWROgW8uJy3ZDcU2Sb
	 VTmEXuRKMSmQEAPOSnvcooSO+KNkV5lYeX2YvGDtyelHP74HkQQs+7hJkl0TqQ0aqj
	 VUfPWlSpus42WXvP1gRyjlHTCyprHffZA2jEPOrYo3zQrjSfiDlSdWpwBCG95hR+gM
	 pSWHJekHULOIzurRQFbnF46/Ime4wbz3e7pGjQ4GTEAoJ4dnqKO8EoZuq/B5aYHXqN
	 MhHnD8KZBiBSrMw/gBLKIy5bmtNN1lTHxEVqDazRB/7ya7ham+nKZQyYLKmO5I2NZw
	 s3CqaWp4/Rtmg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 26DDD6157D;
	Fri, 10 May 2024 07:26:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DCF351BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 07:26:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C643A84430
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 07:26:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sJ7rdENM7RYV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 May 2024 07:26:09 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D89458442F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D89458442F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D89458442F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 07:26:08 +0000 (UTC)
X-CSE-ConnectionGUID: WHBhN0ZTQP+ctYzt4kAdpw==
X-CSE-MsgGUID: hao+RSxPQG6qenbgCgdrig==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="15102633"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="15102633"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 00:26:08 -0700
X-CSE-ConnectionGUID: P4sNyDgwQ4WS+STFY9mLIA==
X-CSE-MsgGUID: +nZN5YGtTOq1j5bfDhDwVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="29385599"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 00:26:05 -0700
Date: Fri, 10 May 2024 09:25:33 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <Zj3L7SMM01cRpNu8@mev-dev>
References: <20240507114516.9765-1-michal.swiatkowski@linux.intel.com>
 <20240507114516.9765-12-michal.swiatkowski@linux.intel.com>
 <ZjywxuhjwvIlWXt2@nanopsycho.orion>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZjywxuhjwvIlWXt2@nanopsycho.orion>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715325969; x=1746861969;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=kQuDlQOkjGq3UOSia59o9rtO2trqv2Mqen/C63S1Sa0=;
 b=avSFiaf/wPZoFTzO/uydM5NdyGN/oLTQTkJvA34TuHPk0WE0kJ0CIedg
 fZxGqCrztb1sytYgcdTFznNrr9XFYJYbaBxRmLBujEMNfjVK4/g6zAWtZ
 3BiLzr2ImHTSgTmMwERbdo+FzzCkgwnX/S9U+QFhPsc5vfh3p3mIas5OH
 0xrb3g2LwGeO4YOLyylNViJjUZly7eCbGd7lpAKnCHlhp3mWEJBOfstDc
 JGnivKBpA3fHKCritCRoNgqJ2bGDbQAD/4r78eVrppY0m0hQU4z4Y0QRV
 9zh2nlVYakDQ1SJLO9FOQI0L5hjHwtxhiWhZ4ytd24Aq1xKU7CDMmE24R
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=avSFiaf/
Subject: Re: [Intel-wired-lan] [iwl-next v1 11/14] ice: netdevice ops for SF
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, May 09, 2024 at 01:17:26PM +0200, Jiri Pirko wrote:
> Subject does not have verb. Please add it.
> 
> Otherwise, the patch looks ok.

Thanks, will add sth like "implement".

> 
> Reviewed-by: Jiri Pirko <jiri@nvidia.com>
> 
> 
> 
> Tue, May 07, 2024 at 01:45:12PM CEST, michal.swiatkowski@linux.intel.com wrote:
> >Subfunction port representor needs the basic netdevice ops to work
> >correctly. Create them.
> >
> >Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> >Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> >---
> > drivers/net/ethernet/intel/ice/ice_repr.c | 57 +++++++++++++++++------
> > 1 file changed, 43 insertions(+), 14 deletions(-)
> >
> >diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
> >index 3cb3fc5f52ea..ec4f5b8b46e6 100644
> >--- a/drivers/net/ethernet/intel/ice/ice_repr.c
> >+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
> >@@ -59,12 +59,13 @@ static void
> > ice_repr_get_stats64(struct net_device *netdev, struct rtnl_link_stats64 *stats)
> > {
> > 	struct ice_netdev_priv *np = netdev_priv(netdev);
> >+	struct ice_repr *repr = np->repr;
> > 	struct ice_eth_stats *eth_stats;
> > 	struct ice_vsi *vsi;
> > 
> >-	if (ice_is_vf_disabled(np->repr->vf))
> >+	if (repr->ops.ready(repr))
> > 		return;
> >-	vsi = np->repr->src_vsi;
> >+	vsi = repr->src_vsi;
> > 
> > 	ice_update_vsi_stats(vsi);
> > 	eth_stats = &vsi->eth_stats;
> >@@ -93,7 +94,7 @@ struct ice_repr *ice_netdev_to_repr(const struct net_device *netdev)
> > }
> > 
> > /**
> >- * ice_repr_open - Enable port representor's network interface
> >+ * ice_repr_vf_open - Enable port representor's network interface
> >  * @netdev: network interface device structure
> >  *
> >  * The open entry point is called when a port representor's network
> >@@ -102,7 +103,7 @@ struct ice_repr *ice_netdev_to_repr(const struct net_device *netdev)
> >  *
> >  * Returns 0 on success
> >  */
> >-static int ice_repr_open(struct net_device *netdev)
> >+static int ice_repr_vf_open(struct net_device *netdev)
> > {
> > 	struct ice_repr *repr = ice_netdev_to_repr(netdev);
> > 	struct ice_vf *vf;
> >@@ -118,8 +119,16 @@ static int ice_repr_open(struct net_device *netdev)
> > 	return 0;
> > }
> > 
> >+static int ice_repr_sf_open(struct net_device *netdev)
> >+{
> >+	netif_carrier_on(netdev);
> >+	netif_tx_start_all_queues(netdev);
> >+
> >+	return 0;
> >+}
> >+
> > /**
> >- * ice_repr_stop - Disable port representor's network interface
> >+ * ice_repr_vf_stop - Disable port representor's network interface
> >  * @netdev: network interface device structure
> >  *
> >  * The stop entry point is called when a port representor's network
> >@@ -128,7 +137,7 @@ static int ice_repr_open(struct net_device *netdev)
> >  *
> >  * Returns 0 on success
> >  */
> >-static int ice_repr_stop(struct net_device *netdev)
> >+static int ice_repr_vf_stop(struct net_device *netdev)
> > {
> > 	struct ice_repr *repr = ice_netdev_to_repr(netdev);
> > 	struct ice_vf *vf;
> >@@ -144,6 +153,14 @@ static int ice_repr_stop(struct net_device *netdev)
> > 	return 0;
> > }
> > 
> >+static int ice_repr_sf_stop(struct net_device *netdev)
> >+{
> >+	netif_carrier_off(netdev);
> >+	netif_tx_stop_all_queues(netdev);
> >+
> >+	return 0;
> >+}
> >+
> > /**
> >  * ice_repr_sp_stats64 - get slow path stats for port representor
> >  * @dev: network interface device structure
> >@@ -245,10 +262,20 @@ ice_repr_setup_tc(struct net_device *netdev, enum tc_setup_type type,
> > 	}
> > }
> > 
> >-static const struct net_device_ops ice_repr_netdev_ops = {
> >+static const struct net_device_ops ice_repr_vf_netdev_ops = {
> >+	.ndo_get_stats64 = ice_repr_get_stats64,
> >+	.ndo_open = ice_repr_vf_open,
> >+	.ndo_stop = ice_repr_vf_stop,
> >+	.ndo_start_xmit = ice_eswitch_port_start_xmit,
> >+	.ndo_setup_tc = ice_repr_setup_tc,
> >+	.ndo_has_offload_stats = ice_repr_ndo_has_offload_stats,
> >+	.ndo_get_offload_stats = ice_repr_ndo_get_offload_stats,
> >+};
> >+
> >+static const struct net_device_ops ice_repr_sf_netdev_ops = {
> > 	.ndo_get_stats64 = ice_repr_get_stats64,
> >-	.ndo_open = ice_repr_open,
> >-	.ndo_stop = ice_repr_stop,
> >+	.ndo_open = ice_repr_sf_open,
> >+	.ndo_stop = ice_repr_sf_stop,
> > 	.ndo_start_xmit = ice_eswitch_port_start_xmit,
> > 	.ndo_setup_tc = ice_repr_setup_tc,
> > 	.ndo_has_offload_stats = ice_repr_ndo_has_offload_stats,
> >@@ -261,18 +288,20 @@ static const struct net_device_ops ice_repr_netdev_ops = {
> >  */
> > bool ice_is_port_repr_netdev(const struct net_device *netdev)
> > {
> >-	return netdev && (netdev->netdev_ops == &ice_repr_netdev_ops);
> >+	return netdev && (netdev->netdev_ops == &ice_repr_vf_netdev_ops ||
> >+			  netdev->netdev_ops == &ice_repr_sf_netdev_ops);
> > }
> > 
> > /**
> >  * ice_repr_reg_netdev - register port representor netdev
> >  * @netdev: pointer to port representor netdev
> >+ * @ops: new ops for netdev
> >  */
> > static int
> >-ice_repr_reg_netdev(struct net_device *netdev)
> >+ice_repr_reg_netdev(struct net_device *netdev, const struct net_device_ops *ops)
> > {
> > 	eth_hw_addr_random(netdev);
> >-	netdev->netdev_ops = &ice_repr_netdev_ops;
> >+	netdev->netdev_ops = ops;
> > 	ice_set_ethtool_repr_ops(netdev);
> > 
> > 	netdev->hw_features |= NETIF_F_HW_TC;
> >@@ -386,7 +415,7 @@ static int ice_repr_add_vf(struct ice_repr *repr)
> > 		return err;
> > 
> > 	SET_NETDEV_DEVLINK_PORT(repr->netdev, &vf->devlink_port);
> >-	err = ice_repr_reg_netdev(repr->netdev);
> >+	err = ice_repr_reg_netdev(repr->netdev, &ice_repr_vf_netdev_ops);
> > 	if (err)
> > 		goto err_netdev;
> > 
> >@@ -439,7 +468,7 @@ static int ice_repr_add_sf(struct ice_repr *repr)
> > 		return err;
> > 
> > 	SET_NETDEV_DEVLINK_PORT(repr->netdev, &sf->devlink_port);
> >-	err = ice_repr_reg_netdev(repr->netdev);
> >+	err = ice_repr_reg_netdev(repr->netdev, &ice_repr_sf_netdev_ops);
> > 	if (err)
> > 		goto err_netdev;
> > 
> >-- 
> >2.42.0
> >
> >
