Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC8A8C0EC6
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 May 2024 13:17:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 55F8260709;
	Thu,  9 May 2024 11:17:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wg3RUXDh9m4i; Thu,  9 May 2024 11:17:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 602C46077D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715253456;
	bh=Z5u0jmRkHtJKOfSsyfOd5kVWwhDEg3RbxxuIltOo+KA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AiwQgSPqTwZHG12TE+6DtLt2+VH1PMuej57IDJlbfs0lH8dyP0HQt/eNzg2xh/ToX
	 3c8AzcJzNS5wirclW2s2fVqBfKNo2S/Dz+YB6WvbYHilC3UOBldIw7E/Tf13FZsvmv
	 A5Wl2du4Jm+ZNeiUz0zO8+trjMSj3znzmHi/MBajPcmjlloklMjMFTsovFc5NJJfTY
	 1OU2qObLJ8wpkYYbUolMl5ysJZpD90EkQE61qaTshJusOsPcjtgPWuFj3M8GbEphQ2
	 uI5X40iY1efJyRYfKTzYeyj3YC4SlucS/Svjr6hS2DAUzXw9dJUDSa4+u3K2UrjuZw
	 h6YIP3QY66Hmw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 602C46077D;
	Thu,  9 May 2024 11:17:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0BBA81BF361
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 11:17:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EAEBF8148F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 11:17:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vrYxqjI1dXsx for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 May 2024 11:17:33 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42e; helo=mail-wr1-x42e.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 63D9681463
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 63D9681463
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 63D9681463
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 11:17:32 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id
 ffacd0b85a97d-349545c3eb8so407072f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 09 May 2024 04:17:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715253450; x=1715858250;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Z5u0jmRkHtJKOfSsyfOd5kVWwhDEg3RbxxuIltOo+KA=;
 b=GZVM+Z3cP3PYVL1vUC/8XL9+k/ei/Xh9rPTMm5N9muRgG6UqnPHgH/2hzveUiqVuWt
 H9Vxqo6zty0pnmjQ2j9CFdnw7Xn4q4ynRUARDo5Roa0a2cb+w25manQ8IXPQimactGqr
 1BHa0i3erelmUOBZoAaZY2+ha2/PJ04UTq8xaskRkElPfD4JeRwFIgEZ+VnOyc5K8dTg
 w420JUimN6cU9xe6LKTIBbbgskI9Y1sAcV/m//n5ZJ+HwnpZV5cB6Jjb8fEzJ+AwMZbT
 1TsoTuNsXJeZmaU+dC3MX57ZLIltatJnEs30TURZwt+9waTwvMQD7rDnhd9lEWjkQEyn
 MVIA==
X-Gm-Message-State: AOJu0YwwO3p8Ns6ihMg+5wfglYX+0bEOVCrlg8KcSMVE0smyya/tq9JZ
 Ak3TaRlSq37FJeTCujRzbDx+0Peynp7ZMh0faEF5wkTx0bLyZ2G/Z/ajgNmAR50=
X-Google-Smtp-Source: AGHT+IGmsEGlB3X8thgNVWFJ2mUfyHKsMyTwnCHsQzYVffQlEgLnVo/Htki3hMP0gVA3hcR+U/Rk9Q==
X-Received: by 2002:a5d:6342:0:b0:349:cd18:abbd with SMTP id
 ffacd0b85a97d-34fcb3a9699mr3788018f8f.46.1715253450024; 
 Thu, 09 May 2024 04:17:30 -0700 (PDT)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3502baad058sm1427055f8f.66.2024.05.09.04.17.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 May 2024 04:17:29 -0700 (PDT)
Date: Thu, 9 May 2024 13:17:26 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZjywxuhjwvIlWXt2@nanopsycho.orion>
References: <20240507114516.9765-1-michal.swiatkowski@linux.intel.com>
 <20240507114516.9765-12-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240507114516.9765-12-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1715253450; x=1715858250;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Z5u0jmRkHtJKOfSsyfOd5kVWwhDEg3RbxxuIltOo+KA=;
 b=WWmNMFzHUHh5+eT8+tG6cosDpGfjA3YRL+8DLyIKvzyVQYgDhiANMjDwcTDoWhn6PP
 BuKYxOYOJmiHTEE+pkl5XFDwjbTxBqwwpUnzP59MIOHF0Ri+9w0QnA/CJUybqp4YcvsV
 sM50QVSa5JpuvfBtUXlS7ulhJInLOpDR0uKudv5wfkLqGb7jTCwRqTyjHLKyddkX3yoQ
 E91ob65IjhyzvzQLayJYtaSwzzZ3GOzzZMGq0/yvsqt6/jdkVIQR1fKL0DRuevnpKm0j
 x2CFVLSQ+noo8qWV06H2iBTqcwwbkMm9UhGdVoEYup2rncTOjoDFXxlDeWO8EAmVJq5K
 O1cg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=WWmNMFzH
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

Subject does not have verb. Please add it.

Otherwise, the patch looks ok.

Reviewed-by: Jiri Pirko <jiri@nvidia.com>



Tue, May 07, 2024 at 01:45:12PM CEST, michal.swiatkowski@linux.intel.com wrote:
>Subfunction port representor needs the basic netdevice ops to work
>correctly. Create them.
>
>Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_repr.c | 57 +++++++++++++++++------
> 1 file changed, 43 insertions(+), 14 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
>index 3cb3fc5f52ea..ec4f5b8b46e6 100644
>--- a/drivers/net/ethernet/intel/ice/ice_repr.c
>+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
>@@ -59,12 +59,13 @@ static void
> ice_repr_get_stats64(struct net_device *netdev, struct rtnl_link_stats64 *stats)
> {
> 	struct ice_netdev_priv *np = netdev_priv(netdev);
>+	struct ice_repr *repr = np->repr;
> 	struct ice_eth_stats *eth_stats;
> 	struct ice_vsi *vsi;
> 
>-	if (ice_is_vf_disabled(np->repr->vf))
>+	if (repr->ops.ready(repr))
> 		return;
>-	vsi = np->repr->src_vsi;
>+	vsi = repr->src_vsi;
> 
> 	ice_update_vsi_stats(vsi);
> 	eth_stats = &vsi->eth_stats;
>@@ -93,7 +94,7 @@ struct ice_repr *ice_netdev_to_repr(const struct net_device *netdev)
> }
> 
> /**
>- * ice_repr_open - Enable port representor's network interface
>+ * ice_repr_vf_open - Enable port representor's network interface
>  * @netdev: network interface device structure
>  *
>  * The open entry point is called when a port representor's network
>@@ -102,7 +103,7 @@ struct ice_repr *ice_netdev_to_repr(const struct net_device *netdev)
>  *
>  * Returns 0 on success
>  */
>-static int ice_repr_open(struct net_device *netdev)
>+static int ice_repr_vf_open(struct net_device *netdev)
> {
> 	struct ice_repr *repr = ice_netdev_to_repr(netdev);
> 	struct ice_vf *vf;
>@@ -118,8 +119,16 @@ static int ice_repr_open(struct net_device *netdev)
> 	return 0;
> }
> 
>+static int ice_repr_sf_open(struct net_device *netdev)
>+{
>+	netif_carrier_on(netdev);
>+	netif_tx_start_all_queues(netdev);
>+
>+	return 0;
>+}
>+
> /**
>- * ice_repr_stop - Disable port representor's network interface
>+ * ice_repr_vf_stop - Disable port representor's network interface
>  * @netdev: network interface device structure
>  *
>  * The stop entry point is called when a port representor's network
>@@ -128,7 +137,7 @@ static int ice_repr_open(struct net_device *netdev)
>  *
>  * Returns 0 on success
>  */
>-static int ice_repr_stop(struct net_device *netdev)
>+static int ice_repr_vf_stop(struct net_device *netdev)
> {
> 	struct ice_repr *repr = ice_netdev_to_repr(netdev);
> 	struct ice_vf *vf;
>@@ -144,6 +153,14 @@ static int ice_repr_stop(struct net_device *netdev)
> 	return 0;
> }
> 
>+static int ice_repr_sf_stop(struct net_device *netdev)
>+{
>+	netif_carrier_off(netdev);
>+	netif_tx_stop_all_queues(netdev);
>+
>+	return 0;
>+}
>+
> /**
>  * ice_repr_sp_stats64 - get slow path stats for port representor
>  * @dev: network interface device structure
>@@ -245,10 +262,20 @@ ice_repr_setup_tc(struct net_device *netdev, enum tc_setup_type type,
> 	}
> }
> 
>-static const struct net_device_ops ice_repr_netdev_ops = {
>+static const struct net_device_ops ice_repr_vf_netdev_ops = {
>+	.ndo_get_stats64 = ice_repr_get_stats64,
>+	.ndo_open = ice_repr_vf_open,
>+	.ndo_stop = ice_repr_vf_stop,
>+	.ndo_start_xmit = ice_eswitch_port_start_xmit,
>+	.ndo_setup_tc = ice_repr_setup_tc,
>+	.ndo_has_offload_stats = ice_repr_ndo_has_offload_stats,
>+	.ndo_get_offload_stats = ice_repr_ndo_get_offload_stats,
>+};
>+
>+static const struct net_device_ops ice_repr_sf_netdev_ops = {
> 	.ndo_get_stats64 = ice_repr_get_stats64,
>-	.ndo_open = ice_repr_open,
>-	.ndo_stop = ice_repr_stop,
>+	.ndo_open = ice_repr_sf_open,
>+	.ndo_stop = ice_repr_sf_stop,
> 	.ndo_start_xmit = ice_eswitch_port_start_xmit,
> 	.ndo_setup_tc = ice_repr_setup_tc,
> 	.ndo_has_offload_stats = ice_repr_ndo_has_offload_stats,
>@@ -261,18 +288,20 @@ static const struct net_device_ops ice_repr_netdev_ops = {
>  */
> bool ice_is_port_repr_netdev(const struct net_device *netdev)
> {
>-	return netdev && (netdev->netdev_ops == &ice_repr_netdev_ops);
>+	return netdev && (netdev->netdev_ops == &ice_repr_vf_netdev_ops ||
>+			  netdev->netdev_ops == &ice_repr_sf_netdev_ops);
> }
> 
> /**
>  * ice_repr_reg_netdev - register port representor netdev
>  * @netdev: pointer to port representor netdev
>+ * @ops: new ops for netdev
>  */
> static int
>-ice_repr_reg_netdev(struct net_device *netdev)
>+ice_repr_reg_netdev(struct net_device *netdev, const struct net_device_ops *ops)
> {
> 	eth_hw_addr_random(netdev);
>-	netdev->netdev_ops = &ice_repr_netdev_ops;
>+	netdev->netdev_ops = ops;
> 	ice_set_ethtool_repr_ops(netdev);
> 
> 	netdev->hw_features |= NETIF_F_HW_TC;
>@@ -386,7 +415,7 @@ static int ice_repr_add_vf(struct ice_repr *repr)
> 		return err;
> 
> 	SET_NETDEV_DEVLINK_PORT(repr->netdev, &vf->devlink_port);
>-	err = ice_repr_reg_netdev(repr->netdev);
>+	err = ice_repr_reg_netdev(repr->netdev, &ice_repr_vf_netdev_ops);
> 	if (err)
> 		goto err_netdev;
> 
>@@ -439,7 +468,7 @@ static int ice_repr_add_sf(struct ice_repr *repr)
> 		return err;
> 
> 	SET_NETDEV_DEVLINK_PORT(repr->netdev, &sf->devlink_port);
>-	err = ice_repr_reg_netdev(repr->netdev);
>+	err = ice_repr_reg_netdev(repr->netdev, &ice_repr_sf_netdev_ops);
> 	if (err)
> 		goto err_netdev;
> 
>-- 
>2.42.0
>
>
