Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6248443E6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jan 2024 17:16:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ADD164203E;
	Wed, 31 Jan 2024 16:16:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ADD164203E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706717796;
	bh=xwzluV27IOEuMFacOXw/30aoT/k5jORN1QEmLkfS6Vc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gdfshzD9BbBtfsFlRyvNddZjOv8TenXVRZteXbSz0O/Y+xgl90VuGv7MaBLhrlj/d
	 6KM0WLPC/Tr7EElqtSAQxF06ggr3oHrNvvmI+gjqt9My2wjNQHvKy2VW51QQs5btzu
	 BoffpYTxsKOIjpdc8jaTzDHcwEFVZAhti5UXQN+kREtU4SHAYRUYQEoVIz3Pl1xYHR
	 AL9CXa84k9Jc3lDdR23TE6Dons5ooZpsQeeczz8Y1AVvzwGrB/S+9rnkO0Rf7uApUX
	 4mYvAodCaHmS9uQo95If3cPO+riBNSrzuF82/at/preK4Qeea3cD0+3GXRfqfWJQli
	 pqUMyjgpbvXFQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Sq0bDCaAQni; Wed, 31 Jan 2024 16:16:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 62ED342015;
	Wed, 31 Jan 2024 16:16:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 62ED342015
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6DEA11BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 16:16:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 44F4083F02
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 16:16:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 44F4083F02
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EALaRl2XyBLh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jan 2024 16:16:28 +0000 (UTC)
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2545383EF2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 16:16:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2545383EF2
Received: from [141.14.220.56] (g56.guest.molgen.mpg.de [141.14.220.56])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id C3EE261E5FE01;
 Wed, 31 Jan 2024 17:15:47 +0100 (CET)
Message-ID: <64c36525-9177-48b1-abbb-c69dbdeb6d79@molgen.mpg.de>
Date: Wed, 31 Jan 2024 17:15:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: karthiksundaravel <ksundara@redhat.com>
References: <20240131080847.30614-1-ksundara@redhat.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240131080847.30614-1-ksundara@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-wired-lan] [PATCH] ice: Add get/set hw address for VF
 representor ports
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
Cc: vchundur@redhat.com, aharivel@redhat.com, cfontain@redhat.com,
 intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, rjarry@redhat.com, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear karthiksundaravel,


Thank you for your patch.


Am 31.01.24 um 09:08 schrieb karthiksundaravel:
> Changing the mac address of the VF representor ports are not

Do you mean “is not possible”?

> available via devlink. Add the function handlers to set and get
> the HW address for the VF representor ports.

How did you test this? It’d be great if you documented it.

> Signed-off-by: karthiksundaravel <ksundara@redhat.com>

Is “karthiksundaravel” the official spelling of your name. If not, you 
can change it with

     git config --global user.name "Your Name"
     git commit -s --amend --author="Your Name <ksundara@redhat.com>"

> ---
>   drivers/net/ethernet/intel/ice/ice_devlink.c | 134 ++++++++++++++++++-
>   1 file changed, 132 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
> index 80dc5445b50d..56d81836c469 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> @@ -9,6 +9,8 @@
>   #include "ice_eswitch.h"
>   #include "ice_fw_update.h"
>   #include "ice_dcb_lib.h"
> +#include "ice_fltr.h"
> +#include "ice_tc_lib.h"
>   
>   static int ice_active_port_option = -1;
>   
> @@ -1576,6 +1578,134 @@ void ice_devlink_destroy_pf_port(struct ice_pf *pf)
>   	devlink_port_unregister(&pf->devlink_port);
>   }
>   
> +/**
> + * ice_devlink_port_get_vf_mac_address - .port_fn_hw_addr_get devlink handler
> + * @port: devlink port structure
> + * @hw_addr: Mac address of the port
> + * @hw_addr_len: length of mac address

Mac/mac is spelled differently. (Also below.)

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
> +	struct net_device *netdev = port->type_eth.netdev;
> +
> +	if (!netdev || !netdev->dev_addr)
> +		return -EADDRNOTAVAIL;
> +
> +	ether_addr_copy(hw_addr, netdev->dev_addr);
> +	*hw_addr_len = ETH_ALEN;
> +	return 0;
> +}
> +
> +/**
> + * ice_devlink_port_set_vf_mac_address - .port_fn_hw_addr_set devlink handler
> + * @port: devlink port structure
> + * @hw_addr: Mac address of the port
> + * @hw_addr_len: length of mac address
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
> +	struct devlink *devlink = port->devlink;
> +	struct net_device *netdev = port->type_eth.netdev;
> +	struct ice_pf *pf = devlink_priv(devlink);
> +	struct ice_vsi *vsi = *pf->vsi;
> +	struct ice_hw *hw = &pf->hw;
> +	struct device *dev = ice_pf_to_dev(pf);
> +	u8 old_mac[ETH_ALEN];
> +	u8 flags = 0;
> +	const u8 *mac = hw_addr;
> +	int err;
> +
> +	if (!netdev)
> +		return -EADDRNOTAVAIL;
> +
> +	if (!is_valid_ether_addr(mac))
> +		return -EADDRNOTAVAIL;
> +
> +	if (ether_addr_equal(netdev->dev_addr, mac)) {
> +		dev_dbg(dev, "already using mac %pM\n", mac);
> +		return 0;
> +	}
> +
> +	if (test_bit(ICE_DOWN, pf->state) ||
> +	    ice_is_reset_in_progress(pf->state)) {
> +		dev_err(dev, "can't set mac %pM. device not ready\n", mac);
> +		return -EBUSY;
> +	}
> +
> +	if (ice_chnl_dmac_fltr_cnt(pf)) {
> +		dev_err(dev, "can't set mac %pM. Device has tc-flower filters, delete all of them and try again\n",
> +			mac);
> +		return -EAGAIN;
> +	}
> +
> +	netif_addr_lock_bh(netdev);
> +	ether_addr_copy(old_mac, netdev->dev_addr);
> +	/* change the netdev's MAC address */

The comment seems redundant.

> +	eth_hw_addr_set(netdev, mac);
> +	netif_addr_unlock_bh(netdev);
> +
> +	/* Clean up old MAC filter. Not an error if old filter doesn't exist */
> +	err = ice_fltr_remove_mac(vsi, old_mac, ICE_FWD_TO_VSI);
> +	if (err && err != -ENOENT) {
> +		err = -EADDRNOTAVAIL;
> +		goto err_update_filters;
> +	}
> +
> +	/* Add filter for new MAC. If filter exists, return success */
> +	err = ice_fltr_add_mac(vsi, mac, ICE_FWD_TO_VSI);
> +	if (err == -EEXIST) {
> +		/* Although this MAC filter is already present in hardware it's
> +		 * possible in some cases (e.g. bonding) that dev_addr was
> +		 * modified outside of the driver and needs to be restored back
> +		 * to this value.
> +		 */
> +		dev_dbg(dev, "filter for MAC %pM already exists\n", mac);
> +		return 0;
> +	} else if (err) {
> +		/* error if the new filter addition failed */

The comment seems redundant.

> +		err = -EADDRNOTAVAIL;
> +	}
> +
> +err_update_filters:
> +	if (err) {
> +		dev_err(dev, "can't set MAC %pM. filter update failed\n", mac);
> +		netif_addr_lock_bh(netdev);
> +		eth_hw_addr_set(netdev, old_mac);
> +		netif_addr_unlock_bh(netdev);
> +		return err;
> +	}
> +
> +	dev_dbg(dev, "updated MAC address to %pM\n", netdev->dev_addr);

Should it be level info?

> +
> +	/* write new MAC address to the firmware */
> +	flags = ICE_AQC_MAN_MAC_UPDATE_LAA_WOL;
> +	err = ice_aq_manage_mac_write(hw, mac, flags, NULL);
> +	if (err) {
> +		dev_err(dev, "can't set MAC %pM. write to firmware failed error %d\n",
> +			mac, err);
> +	}
> +	return 0;
> +}
> +
> +static const struct devlink_port_ops ice_devlink_vf_port_ops = {
> +	.port_fn_hw_addr_get = ice_devlink_port_get_vf_mac_address,
> +	.port_fn_hw_addr_set = ice_devlink_port_set_vf_mac_address,
> +};
> +
>   /**
>    * ice_devlink_create_vf_port - Create a devlink port for this VF
>    * @vf: the VF to create a port for
> @@ -1611,7 +1741,8 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
>   	devlink_port_attrs_set(devlink_port, &attrs);
>   	devlink = priv_to_devlink(pf);
>   
> -	err = devlink_port_register(devlink, devlink_port, vsi->idx);
> +	err = devlink_port_register_with_ops(devlink, devlink_port,
> +					     vsi->idx, &ice_devlink_vf_port_ops);
>   	if (err) {
>   		dev_err(dev, "Failed to create devlink port for VF %d, error %d\n",
>   			vf->vf_id, err);
> @@ -1620,7 +1751,6 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
>   
>   	return 0;
>   }
> -

Unrelated whitespace change.

>   /**
>    * ice_devlink_destroy_vf_port - Destroy the devlink_port for this VF
>    * @vf: the VF to cleanup

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
