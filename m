Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF528722E8
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Mar 2024 16:36:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CFE3660E41;
	Tue,  5 Mar 2024 15:36:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZnVtjyjocJZb; Tue,  5 Mar 2024 15:36:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A921660E47
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709652998;
	bh=giMQIRF3XlJXlwm6r0Pq2U+VMIyq9uo9BFMK/YB+Cl8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QDkbMHzNkTC182N6FuLK8bACe42cT1lR7AXbqA3JNoGJ7wdULQm29D3ciVyprvU7w
	 SlJ+ay9nqPuPXg78xTGghuc9SzEjM6BmIeucunIcVGUlw8X/lE4yOMS779r3qKIug0
	 MslML088sQw0Jtx+lc2CsJP5kE916Wb1doYKx/Ws4kL4rjF/ATzkvIb2fWf9G4hYmX
	 CLHNPVLxonBV7ghw7V19o8/XSIL7BpYpxlFgCzAu93dDX7OrOrRiIq+73g4hDYam2G
	 U5jgMGsury/Fnlp3zQPln4gH8omG86xZfX50FdJsQKxtv0UA+8IPYnE7jNNWuEzo0k
	 GnPT2Vt98H+3g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A921660E47;
	Tue,  5 Mar 2024 15:36:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 745851BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 15:36:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6C9E060E3B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 15:36:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3TsUu8wgdNNl for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Mar 2024 15:36:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C9F0F60E35
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C9F0F60E35
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C9F0F60E35
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 15:36:34 +0000 (UTC)
Received: from [141.14.220.34] (g34.guest.molgen.mpg.de [141.14.220.34])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id D6E2A61E5FE38;
 Tue,  5 Mar 2024 16:35:48 +0100 (CET)
Message-ID: <14cf3adb-7915-424e-b5ad-2c100cec183e@molgen.mpg.de>
Date: Tue, 5 Mar 2024 16:35:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Karthik Sundaravel <ksundara@redhat.com>
References: <20240305152641.53489-1-ksundara@redhat.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240305152641.53489-1-ksundara@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH v5] ice: Add get/set hw address for
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
Cc: vchundur@redhat.com, aharivel@redhat.com,
 michal.swiatkowski@linux.intel.com, jiri@resnulli.us, cfontain@redhat.com,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 kuba@kernel.org, rjarry@redhat.com, pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Karthik,


Thank you for your patch.

Am 05.03.24 um 16:26 schrieb Karthik Sundaravel:
> Changing the MAC address of the VFs are not available

Maybe:

… is currently unsupported …

or

… is currently impossible …

> via devlink. Add the function handlers to set and get
> the HW address for the VFs.

This fits into two lines (with a line length of 75 characters)

> Signed-off-by: Karthik Sundaravel <ksundara@redhat.com>
> ---

Could you please add a change-log for each patch iteration?

>   drivers/net/ethernet/intel/ice/ice_devlink.c | 78 +++++++++++++++++++-
>   drivers/net/ethernet/intel/ice/ice_sriov.c   | 62 ++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_sriov.h   |  8 ++
>   3 files changed, 147 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
> index 80dc5445b50d..39d4d79ac731 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> @@ -1576,6 +1576,81 @@ void ice_devlink_destroy_pf_port(struct ice_pf *pf)
>   	devlink_port_unregister(&pf->devlink_port);
>   }
>   
> +/**
> + * ice_devlink_port_get_vf_fn_mac - .port_fn_hw_addr_get devlink handler
> + * @port: devlink port structure
> + * @hw_addr: MAC address of the port
> + * @hw_addr_len: length of MAC address
> + * @extack: extended netdev ack structure
> + *
> + * Callback for the devlink .port_fn_hw_addr_get operation
> + * Return: zero on success or an error code on failure.
> + */
> +
> +static int ice_devlink_port_get_vf_fn_mac(struct devlink_port *port,
> +					  u8 *hw_addr, int *hw_addr_len,
> +					  struct netlink_ext_ack *extack)
> +{
> +	struct devlink_port_attrs *attrs = &port->attrs;
> +	struct devlink_port_pci_vf_attrs *pci_vf;
> +	struct devlink *devlink = port->devlink;
> +	struct ice_pf *pf;
> +	struct ice_vf *vf;
> +	int vf_id;

The signature of `ice_get_vf_by_id()` uses u16 as type.

> +
> +	pf = devlink_priv(devlink);
> +	pci_vf = &attrs->pci_vf;
> +	vf_id = pci_vf->vf;
> +
> +	vf = ice_get_vf_by_id(pf, vf_id);
> +	if (!vf) {
> +		NL_SET_ERR_MSG_MOD(extack, "Unable to get the vf");

Maybe also add the vf_id to theh error message?

> +		return -EINVAL;
> +	}
> +	ether_addr_copy(hw_addr, vf->dev_lan_addr);
> +	*hw_addr_len = ETH_ALEN;
> +
> +	ice_put_vf(vf);
> +	return 0;
> +}
> +
> +/**
> + * ice_devlink_port_set_vf_fn_mac - .port_fn_hw_addr_set devlink handler
> + * @port: devlink port structure
> + * @hw_addr: MAC address of the port
> + * @hw_addr_len: length of MAC address
> + * @extack: extended netdev ack structure
> + *
> + * Callback for the devlink .port_fn_hw_addr_set operation
> + * Return: zero on success or an error code on failure.
> + */
> +static int ice_devlink_port_set_vf_fn_mac(struct devlink_port *port,
> +					  const u8 *hw_addr,
> +					  int hw_addr_len,
> +					  struct netlink_ext_ack *extack)
> +
> +{
> +	struct devlink_port_attrs *attrs = &port->attrs;
> +	struct devlink_port_pci_vf_attrs *pci_vf;
> +	struct devlink *devlink = port->devlink;
> +	struct ice_pf *pf;
> +	u8 mac[ETH_ALEN];
> +	int vf_id;
> +
> +	pf = devlink_priv(devlink);
> +	pci_vf = &attrs->pci_vf;
> +	vf_id = pci_vf->vf;
> +
> +	ether_addr_copy(mac, hw_addr);
> +
> +	return ice_set_vf_fn_mac(pf, vf_id, mac);
> +}
> +
> +static const struct devlink_port_ops ice_devlink_vf_port_ops = {
> +	.port_fn_hw_addr_get = ice_devlink_port_get_vf_fn_mac,
> +	.port_fn_hw_addr_set = ice_devlink_port_set_vf_fn_mac,
> +};
> +
>   /**
>    * ice_devlink_create_vf_port - Create a devlink port for this VF
>    * @vf: the VF to create a port for
> @@ -1611,7 +1686,8 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
>   	devlink_port_attrs_set(devlink_port, &attrs);
>   	devlink = priv_to_devlink(pf);
>   
> -	err = devlink_port_register(devlink, devlink_port, vsi->idx);
> +	err = devlink_port_register_with_ops(devlink, devlink_port,
> +					     vsi->idx, &ice_devlink_vf_port_ops);
>   	if (err) {
>   		dev_err(dev, "Failed to create devlink port for VF %d, error %d\n",
>   			vf->vf_id, err);
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 31314e7540f8..73cf1d9e9daa 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -1216,6 +1216,68 @@ ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info *ivi)
>   	return ret;
>   }
>   
> +/**
> + * ice_set_vf_fn_mac
> + * @pf: PF to be configure
> + * @vf_id: VF identifier
> + * @mac: MAC address
> + *
> + * program VF MAC address
> + */
> +int ice_set_vf_fn_mac(struct ice_pf *pf, int vf_id, u8 *mac)

Also use u16 for `vf_id`?

> +{
> +	struct device *dev;
> +	struct ice_vf *vf;
> +	int ret;
> +
> +	dev = ice_pf_to_dev(pf);
> +	if (is_multicast_ether_addr(mac)) {
> +		dev_err(dev, "%pM not a valid unicast address\n", mac);
> +		return -EINVAL;
> +	}
> +
> +	vf = ice_get_vf_by_id(pf, vf_id);
> +	if (!vf)
> +		return -EINVAL;
> +
> +	/* nothing left to do, unicast MAC already set */
> +	if (ether_addr_equal(vf->dev_lan_addr, mac) &&
> +	    ether_addr_equal(vf->hw_lan_addr, mac)) {
> +		ret = 0;
> +		goto out_put_vf;
> +	}
> +
> +	ret = ice_check_vf_ready_for_cfg(vf);
> +	if (ret)
> +		goto out_put_vf;
> +
> +	mutex_lock(&vf->cfg_lock);
> +
> +	/* VF is notified of its new MAC via the PF's response to the
> +	 * VIRTCHNL_OP_GET_VF_RESOURCES message after the VF has been reset
> +	 */
> +	ether_addr_copy(vf->dev_lan_addr, mac);
> +	ether_addr_copy(vf->hw_lan_addr, mac);
> +	if (is_zero_ether_addr(mac)) {
> +		/* VF will send VIRTCHNL_OP_ADD_ETH_ADDR message with its MAC */
> +		vf->pf_set_mac = false;
> +		dev_info(dev, "Removing MAC on VF %d. VF driver will be reinitialized\n",
> +			 vf->vf_id);
> +	} else {
> +		/* PF will add MAC rule for the VF */
> +		vf->pf_set_mac = true;
> +		dev_info(dev, "Setting MAC %pM on VF %d. VF driver will be reinitialized\n",
> +			 mac, vf_id);
> +	}
> +
> +	ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
> +	mutex_unlock(&vf->cfg_lock);
> +
> +out_put_vf:
> +	ice_put_vf(vf);
> +	return ret;
> +}
> +
>   /**
>    * ice_set_vf_mac
>    * @netdev: network interface device structure
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h b/drivers/net/ethernet/intel/ice/ice_sriov.h
> index 346cb2666f3a..a03be184a806 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.h
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
> @@ -28,6 +28,7 @@
>   #ifdef CONFIG_PCI_IOV
>   void ice_process_vflr_event(struct ice_pf *pf);
>   int ice_sriov_configure(struct pci_dev *pdev, int num_vfs);
> +int ice_set_vf_fn_mac(struct ice_pf *pf, int vf_id, u8 *mac);
>   int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac);
>   int
>   ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info *ivi);
> @@ -76,6 +77,13 @@ ice_sriov_configure(struct pci_dev __always_unused *pdev,
>   	return -EOPNOTSUPP;
>   }
>   
> +static inline int
> +ice_set_vf_fn_mac(struct ice_pf __always_unused *pf,
> +		  int __always_unused vf_id, u8 __always_unused *mac)
> +{
> +	return -EOPNOTSUPP;
> +}
> +
>   static inline int
>   ice_set_vf_mac(struct net_device __always_unused *netdev,
>   	       int __always_unused vf_id, u8 __always_unused *mac)


Kind regards,

Paul
