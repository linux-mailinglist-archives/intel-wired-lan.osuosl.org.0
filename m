Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A168530F0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 13:51:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 59D5F40395;
	Tue, 13 Feb 2024 12:51:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6-CGqQId0uQT; Tue, 13 Feb 2024 12:51:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6687C4117E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707828672;
	bh=8tIBwTWunCYtvmkXco8BJGVYVFlIQ5ZjamMEG21A2mk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M9nqzyTyH1yA64GEjq6UKt8Qa8FEkQHhl8WeU7e4pFg6oDZa67d2uQgW8wZV4qYmn
	 eVdFJwn0JUODHFUj6nG1eBtG8Cmu7xSZNG4CqhR0wGsWWnjktIik0cbSvDOt0Jpwp0
	 c2fYkvgyrg+e/1pnblokjaitKOF6kWvq2jotxasZj/1t4NgNbz6qpg6M2Eql1/o9q+
	 yuaO+/oGqjTdz+86teLmse8Mjls4nGpYYLU5y1+7AmgD+xFz/UdQReUtYRtoK/gFHz
	 nuSmJ/oN7qUS1Zw5TvuEgm34iBa1gxprT2FWMHYtGAtErVERXfMPWg5FcMcMTdjg44
	 vpMeO5HylhGsw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6687C4117E;
	Tue, 13 Feb 2024 12:51:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1A3D01BF41A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 12:51:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0647560B57
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 12:51:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yit1tmbcqNou for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 12:51:08 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A806860B31
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A806860B31
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A806860B31
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 12:51:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="5650561"
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; 
   d="scan'208";a="5650561"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 04:51:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; 
   d="scan'208";a="2832183"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 04:51:03 -0800
Date: Tue, 13 Feb 2024 13:50:59 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Karthik Sundaravel <ksundara@redhat.com>
Message-ID: <ZctlswYbV1RHU2ip@mev-dev>
References: <20240209100912.82473-1-ksundara@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240209100912.82473-1-ksundara@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707828668; x=1739364668;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=cgc6WEo6KiUkTPoF8lda8b4oPP94RffhPHS5Dx9J9go=;
 b=k44LFWt2UcSJnhsqaAjCE2BzUaXQ+EOhsZYPaA9DjvTDjNEuaWbwAeHu
 VxYyfsphFf0URoZBX77XX9xTH9K9vkbwH0v8MwHxWUpdRf41PhzJ5sWLT
 YiWq9uBVCuUNNlkXaKmBwDqVlhywUIkOYRhzz4AYNlmWchusi03nboQjh
 QPYm0Vo0M/Hq4fVLMrUCQB+Em51wpXN+Thybw9WJrz+snYrXqZLITD/Da
 DhpZJdgWq5KpgIBjYyofPziCfwNBhxRa7xCOL50K+gB6fFXi5g2OsVLly
 FQW/3oUWvr6SohIkRetQFXv1NEvaMDRl5IfETx1Nso84eMN33O+bl6CNT
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=k44LFWt2
Subject: Re: [Intel-wired-lan] [PATCH v3] ice: Add get/set hw address for
 VFs using devlink commands
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
 cfontain@redhat.com, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, vchundur@redhat.com, netdev@vger.kernel.org,
 jacob.e.keller@intel.com, kuba@kernel.org, rjarry@redhat.com,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Feb 09, 2024 at 03:39:12PM +0530, Karthik Sundaravel wrote:
> Changing the MAC address of the VFs are not available
> via devlink. Add the function handlers to set and get
> the HW address for the VFs.
> 
> Signed-off-by: Karthik Sundaravel <ksundara@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_devlink.c | 86 +++++++++++++++++++-
>  1 file changed, 85 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
> index 80dc5445b50d..7ed61b10312c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> @@ -1576,6 +1576,89 @@ void ice_devlink_destroy_pf_port(struct ice_pf *pf)
>  	devlink_port_unregister(&pf->devlink_port);
>  }
>  
> +/**
> + * ice_devlink_port_get_vf_mac_address - .port_fn_hw_addr_get devlink handler
> + * @port: devlink port structure
> + * @hw_addr: MAC address of the port
> + * @hw_addr_len: length of MAC address
> + * @extack: extended netdev ack structure
> + *
> + * Callback for the devlink .port_fn_hw_addr_get operation
> + * Return: zero on success or an error code on failure.
> + */
> +
> +static int ice_devlink_port_get_vf_mac_address(struct devlink_port *port,
> +					       u8 *hw_addr, int *hw_addr_len,
> +					       struct netlink_ext_ack *extack)
> +{
> +	struct devlink_port_attrs *attrs = &port->attrs;
> +	struct devlink_port_pci_vf_attrs *pci_vf;
> +	struct devlink *devlink = port->devlink;
> +	struct ice_pf *pf;
> +	struct ice_vf *vf;
> +	int vf_id;
> +
> +	pf = devlink_priv(devlink);
> +	if (attrs->flavour == DEVLINK_PORT_FLAVOUR_PCI_VF) {
> +		pci_vf = &attrs->pci_vf;
> +		vf_id = pci_vf->vf;
> +	} else {
> +		NL_SET_ERR_MSG_MOD(extack, "Unable to get the vf id");
> +		return -EADDRNOTAVAIL;
> +	}
> +	vf = ice_get_vf_by_id(pf, vf_id);
You need to call ice_put_vf(vf); when you finish with vf.

This way to get vf pointer is fine, I wonder if it can be done using
container_of on port variable. Jake, what do you think?
CC: Jacob Keller

> +	if (!vf) {
> +		NL_SET_ERR_MSG_MOD(extack, "Unable to get the vf");
> +		return -EINVAL;
> +	}
> +	ether_addr_copy(hw_addr, vf->dev_lan_addr);
> +	*hw_addr_len = ETH_ALEN;
> +	return 0;
> +}
> +
> +/**
> + * ice_devlink_port_set_vf_mac_address - .port_fn_hw_addr_set devlink handler
> + * @port: devlink port structure
> + * @hw_addr: MAC address of the port
> + * @hw_addr_len: length of MAC address
> + * @extack: extended netdev ack structure
> + *
> + * Callback for the devlink .port_fn_hw_addr_set operation
> + * Return: zero on success or an error code on failure.
> + */
> +static int ice_devlink_port_set_vf_mac_address(struct devlink_port *port,
> +					       const u8 *hw_addr,
> +					       int hw_addr_len,
> +					       struct netlink_ext_ack *extack)
> +{
> +	struct net_device *netdev = port->type_eth.netdev;
Is it PF netdev?

> +	struct devlink_port_attrs *attrs = &port->attrs;
> +	struct devlink_port_pci_vf_attrs *pci_vf;
> +	u8 mac[ETH_ALEN];
> +	int vf_id;
> +
> +	if (attrs->flavour == DEVLINK_PORT_FLAVOUR_PCI_VF) {
> +		pci_vf = &attrs->pci_vf;
> +		vf_id = pci_vf->vf;
> +	} else {
> +		NL_SET_ERR_MSG_MOD(extack, "Unable to get the vf id");
> +		return -EADDRNOTAVAIL;
> +	}
> +
> +	if (!netdev) {
> +		NL_SET_ERR_MSG_MOD(extack, "Unable to get the netdev");
> +		return -EADDRNOTAVAIL;
> +	}
> +	ether_addr_copy(mac, hw_addr);
> +
> +	return ice_set_vf_mac(netdev, vf_id, mac);
> +}
> +
> +static const struct devlink_port_ops ice_devlink_vf_port_ops = {
> +	.port_fn_hw_addr_get = ice_devlink_port_get_vf_mac_address,
> +	.port_fn_hw_addr_set = ice_devlink_port_set_vf_mac_address,
> +};
> +
>  /**
>   * ice_devlink_create_vf_port - Create a devlink port for this VF
>   * @vf: the VF to create a port for
> @@ -1611,7 +1694,8 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
>  	devlink_port_attrs_set(devlink_port, &attrs);
>  	devlink = priv_to_devlink(pf);
>  
> -	err = devlink_port_register(devlink, devlink_port, vsi->idx);
> +	err = devlink_port_register_with_ops(devlink, devlink_port,
> +					     vsi->idx, &ice_devlink_vf_port_ops);
>  	if (err) {
>  		dev_err(dev, "Failed to create devlink port for VF %d, error %d\n",
>  			vf->vf_id, err);
> -- 
> 2.39.3 (Apple Git-145)
> 
