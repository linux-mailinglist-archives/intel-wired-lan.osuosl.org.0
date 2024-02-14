Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7268542C6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Feb 2024 07:26:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3745182052;
	Wed, 14 Feb 2024 06:26:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2KbH-EuBWW7M; Wed, 14 Feb 2024 06:26:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4890B81DF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707891990;
	bh=yS+lNQLc/gzwR4Wt9NaQFyT90oM22I6EGi5vzb/RGVQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=u9la55AXJGX71jYC1ARBdo/ItFf3T/76OY5aNsQ8WBB7DaL0ahnfayH/otBoZPZjM
	 ZJwkaMUnmRIa5hCeYd2v9icCx+2dfl15kw+YV3dRE0yThceUy/W6LspkvF6ZpZidcs
	 m+vcgj9V5u6DFG4Cx//Z9FtfJZuf5a10574qBXt3ARw8p5cFKfxWg1GdO8Ih3AIOyc
	 tNj1mi503n7/SLqavLFLAfzcgpz9siXcHryXgic5Ksk7/GfoxzjACQ9VufstVdkvVa
	 es9zYyeLqsKxSbf3+oWMnMwu2TGEJjn6AbbhZQF/JnsY50FxL0VqvUb/484LPhvanf
	 cYLSmJV5S+I5Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4890B81DF4;
	Wed, 14 Feb 2024 06:26:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C188B1BF5B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 06:26:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B542D60E90
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 06:26:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oXzX30ejjP5g for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Feb 2024 06:26:27 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4E91F60BF1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E91F60BF1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4E91F60BF1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 06:26:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="1798488"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="1798488"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 22:26:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="3422285"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 22:26:22 -0800
Date: Wed, 14 Feb 2024 07:26:17 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <ZcxdCU/yo0R5cRAq@mev-dev>
References: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
 <20240213072724.77275-5-michal.swiatkowski@linux.intel.com>
 <ZcsueJ1tr-GdseIt@nanopsycho> <Zcs442A/+nuLJw6j@mev-dev>
 <ZctSGPf6v0QlfMUu@nanopsycho> <ZctaY7AfjS/N2J9X@mev-dev>
 <ZcuDd4ajkQnxJz77@nanopsycho>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZcuDd4ajkQnxJz77@nanopsycho>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707891986; x=1739427986;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Rr60Xpfs0ugTI2/zGgJVJ36z4D+ssHoGg27XnCH7Mqk=;
 b=VOgcpSYEJX8lM54C1YteOWkbx6W7SeoNPkmm6t881v1XeBIoJUInI5HM
 JYDTd2l2JEweeAi6VUemTFjZWphnTAI5jtWP6Hjrgj3u0dVu6aeWB2NCx
 c3I/iFHxrQ4J3i8kRqjESfMSK02FgML21V6FYxMPrMEuKX4P+zj9TvXLC
 48b/RpUgHHzA+HS329BYYcOERNNFa8nKLRXAbcZMbK2SyFvqNMUKkzFpy
 UJCTfojhO6MIC69NbLjPqHXNVAZMHSx1pNp3h6/gSambnDELTIId6Wvt7
 bMXBlLqy9wwjBMDOH3k31Bo6JrCfSEA0cdONXTyrfaAk8r2Xhf+mnVyBS
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VOgcpSYE
Subject: Re: [Intel-wired-lan] [iwl-next v1 04/15] ice: add basic devlink
 subfunctions support
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
Cc: maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, netdev@vger.kernel.org, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, Piotr Raczynski <piotr.raczynski@intel.com>,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Feb 13, 2024 at 03:57:59PM +0100, Jiri Pirko wrote:
> Tue, Feb 13, 2024 at 01:02:43PM CET, michal.swiatkowski@linux.intel.com wrote:
> >On Tue, Feb 13, 2024 at 12:27:20PM +0100, Jiri Pirko wrote:
> >> Tue, Feb 13, 2024 at 10:39:47AM CET, michal.swiatkowski@linux.intel.com wrote:
> >> >On Tue, Feb 13, 2024 at 09:55:20AM +0100, Jiri Pirko wrote:
> >> >> Tue, Feb 13, 2024 at 08:27:13AM CET, michal.swiatkowski@linux.intel.com wrote:
> >> >> >From: Piotr Raczynski <piotr.raczynski@intel.com>
> >> 
> >> [...]
> >> 
> >> 
> >> >
> >> >> 
> >> >> >+}
> >> >> >+
> >> >> >+/**
> >> >> >+ * ice_dealloc_dynamic_port - Deallocate and remove a dynamic port
> >> >> >+ * @dyn_port: dynamic port instance to deallocate
> >> >> >+ *
> >> >> >+ * Free resources associated with a dynamically added devlink port. Will
> >> >> >+ * deactivate the port if its currently active.
> >> >> >+ */
> >> >> >+static void ice_dealloc_dynamic_port(struct ice_dynamic_port *dyn_port)
> >> >> >+{
> >> >> >+	struct devlink_port *devlink_port = &dyn_port->devlink_port;
> >> >> >+	struct ice_pf *pf = dyn_port->pf;
> >> >> >+
> >> >> >+	if (dyn_port->active)
> >> >> >+		ice_deactivate_dynamic_port(dyn_port);
> >> >> >+
> >> >> >+	if (devlink_port->attrs.flavour == DEVLINK_PORT_FLAVOUR_PCI_SF)
> >> >> 
> >> >> I don't understand how this check could be false. Remove it.
> >> >>
> >> >Yeah, will remove
> >> >
> >> >> 
> >> >> >+		xa_erase(&pf->sf_nums, devlink_port->attrs.pci_sf.sf);
> >> >> >+
> >> >> >+	devl_port_unregister(devlink_port);
> >> >> >+	ice_vsi_free(dyn_port->vsi);
> >> >> >+	xa_erase(&pf->dyn_ports, dyn_port->vsi->idx);
> >> >> >+	kfree(dyn_port);
> >> >> >+}
> >> >> >+
> >> >> >+/**
> >> >> >+ * ice_dealloc_all_dynamic_ports - Deallocate all dynamic devlink ports
> >> >> >+ * @pf: pointer to the pf structure
> >> >> >+ */
> >> >> >+void ice_dealloc_all_dynamic_ports(struct ice_pf *pf)
> >> >> >+{
> >> >> >+	struct devlink *devlink = priv_to_devlink(pf);
> >> >> >+	struct ice_dynamic_port *dyn_port;
> >> >> >+	unsigned long index;
> >> >> >+
> >> >> >+	devl_lock(devlink);
> >> >> >+	xa_for_each(&pf->dyn_ports, index, dyn_port)
> >> >> >+		ice_dealloc_dynamic_port(dyn_port);
> >> >> >+	devl_unlock(devlink);
> >> >> 
> >> >> Hmm, I would assume that the called should already hold the devlink
> >> >> instance lock when doing remove. What is stopping user from issuing
> >> >> port_new command here, after devl_unlock()?
> >> >>
> >> >It is only called from remove path, but I can move it upper.
> >> 
> >> I know it is called on remove path. Again, what is stopping user from
> >> issuing port_new after ice_dealloc_all_dynamic_ports() is called?
> >> 
> >> [...]
> >> 
> >What is a problem here? Calling port_new from user perspective will have
> >devlink lock, right? Do you mean that devlink lock should be taken for
> >whole cleanup, so from the start to the moment when devlink is
> >unregister? I wrote that, I will do that in next version (moving it
> 
> Yep, otherwise you can ice_dealloc_all_dynamic_ports() and end up with
> another port created after that which nobody cleans-up.
> 

Thanks for pointing it, as you mentioned in other patch, I will take a
lock for whole init/cleanup.

> >upper).
> >
> >> 
> >> >> 
> >> >> >+	struct device *dev = ice_pf_to_dev(pf);
> >> >> >+	int err;
> >> >> >+
> >> >> >+	dev_dbg(dev, "%s flavour:%d index:%d pfnum:%d\n", __func__,
> >> >> >+		new_attr->flavour, new_attr->port_index, new_attr->pfnum);
> >> >> 
> >> >> How this message could ever help anyone?
> >> >>
> >> >Probably only developer of the code :p, will remove it
> >> 
> >> How exactly?
> >>
> >I meant this code developer, it probably was used to check if number and
> >indexes are correct, but now it should be removed. Like, leftover after
> >developing, sorry.
> >
> >> [...]
> >> 
> >> 
> >> >> >+static int ice_sf_cfg_netdev(struct ice_dynamic_port *dyn_port)
> >> >> >+{
> >> >> >+	struct net_device *netdev;
> >> >> >+	struct ice_vsi *vsi = dyn_port->vsi;
> >> >> >+	struct ice_netdev_priv *np;
> >> >> >+	int err;
> >> >> >+
> >> >> >+	netdev = alloc_etherdev_mqs(sizeof(*np), vsi->alloc_txq,
> >> >> >+				    vsi->alloc_rxq);
> >> >> >+	if (!netdev)
> >> >> >+		return -ENOMEM;
> >> >> >+
> >> >> >+	SET_NETDEV_DEV(netdev, &vsi->back->pdev->dev);
> >> >> >+	set_bit(ICE_VSI_NETDEV_ALLOCD, vsi->state);
> >> >> >+	vsi->netdev = netdev;
> >> >> >+	np = netdev_priv(netdev);
> >> >> >+	np->vsi = vsi;
> >> >> >+
> >> >> >+	ice_set_netdev_features(netdev);
> >> >> >+
> >> >> >+	netdev->xdp_features = NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRECT |
> >> >> >+			       NETDEV_XDP_ACT_XSK_ZEROCOPY |
> >> >> >+			       NETDEV_XDP_ACT_RX_SG;
> >> >> >+
> >> >> >+	eth_hw_addr_set(netdev, dyn_port->hw_addr);
> >> >> >+	ether_addr_copy(netdev->perm_addr, dyn_port->hw_addr);
> >> >> >+	netdev->netdev_ops = &ice_sf_netdev_ops;
> >> >> >+	SET_NETDEV_DEVLINK_PORT(netdev, &dyn_port->devlink_port);
> >> >> >+
> >> >> >+	err = register_netdev(netdev);
> >> >> 
> >> >> It the the actual subfunction or eswitch port representor of the
> >> >> subfunction. Looks like the port representor. In that case. It should be
> >> >> created no matter if the subfunction is activated, when it it created.
> >> >> 
> >> >> If this is the actual subfunction netdev, you should not link it to
> >> >> devlink port here.
> >> >>
> >> >This is the actual subfunction netdev. Where in this case it should be
> >> >linked?
> >> 
> >> To the SF auxdev, obviously.
> >> 
> >> Here, you should have eswitch port representor netdev.
> >> 
> >Oh, ok, thanks, will link it correctly in next version.
> >
