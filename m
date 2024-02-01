Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F192A84524A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 09:01:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C46442133;
	Thu,  1 Feb 2024 08:01:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1C46442133
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706774460;
	bh=wneT7EUo6GxjBZFURbMqvhOXlNb9a76XyPErthWHpZc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IXSs/w3ZRO+V1mZGSNGMFOoPUy/y797983/E8YL2vEu1h41tJqcbOblaCe2syk4D/
	 v2rZaG4Jom9b9xgdM5MUZ18qPUWYpIi7r/xEeoISK48zuEaP7bnUP4wUpJoUhC1jiT
	 knELyfegu7z/5e3bKyiMiZ5BxJS9/AHo490evXbC6HKDbuPmEa74o+0YbAUqGTCq5C
	 FS4dqp8izYZQj18rXUr6Pe6jA9gLC+MJNZLKLHXih+wEHZ7A7jMjc8oHQ5pBn5pJR5
	 615v1gjXvCo4IG8tcb9eppzlET/sH5sItGtD8vBbjlUlIqNswWQtK1GJUyMgCvCk72
	 91bYLh9oEKvkA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rD5MFOBRLQhF; Thu,  1 Feb 2024 08:00:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8EE7F4215B;
	Thu,  1 Feb 2024 08:00:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8EE7F4215B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A0AD11BF2FA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 08:00:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 722BD420F7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 08:00:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 722BD420F7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kUY9SeOBdn2z for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 08:00:51 +0000 (UTC)
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 385ED420F3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 08:00:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 385ED420F3
Received: from [192.168.0.6] (ip5f5af685.dynamic.kabel-deutschland.de
 [95.90.246.133])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 371B861E5FE01;
 Thu,  1 Feb 2024 09:00:15 +0100 (CET)
Message-ID: <943270a2-3125-4767-b4e7-2852b0f8ea94@molgen.mpg.de>
Date: Thu, 1 Feb 2024 09:00:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jiri Pirko <jiri@resnulli.us>
References: <20240131080847.30614-1-ksundara@redhat.com>
 <64c36525-9177-48b1-abbb-c69dbdeb6d79@molgen.mpg.de>
 <ZbtK6PwsYLosTem8@nanopsycho>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <ZbtK6PwsYLosTem8@nanopsycho>
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
 linux-kernel@vger.kernel.org, edumazet@google.com, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, kuba@kernel.org, ksundara@redhat.com,
 rjarry@redhat.com, pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Jiri,


Am 01.02.24 um 08:40 schrieb Jiri Pirko:
> Wed, Jan 31, 2024 at 05:15:46PM CET, pmenzel@molgen.mpg.de wrote:

[…]

>> Am 31.01.24 um 09:08 schrieb karthiksundaravel:
>>> Changing the mac address of the VF representor ports are not
>>
>> Do you mean “is not possible”?
>>
>>> available via devlink. Add the function handlers to set and get
>>> the HW address for the VF representor ports.
>>
>> How did you test this? It’d be great if you documented it.
>>
>>> Signed-off-by: karthiksundaravel <ksundara@redhat.com>
>>
>> Is “karthiksundaravel” the official spelling of your name. If not, you can
>> change it with
>>
>>     git config --global user.name "Your Name"
>>     git commit -s --amend --author="Your Name <ksundara@redhat.com>"
>>
>>> ---
>>>    drivers/net/ethernet/intel/ice/ice_devlink.c | 134 ++++++++++++++++++-
>>>    1 file changed, 132 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
>>> index 80dc5445b50d..56d81836c469 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
>>> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
>>> @@ -9,6 +9,8 @@
>>>    #include "ice_eswitch.h"
>>>    #include "ice_fw_update.h"
>>>    #include "ice_dcb_lib.h"
>>> +#include "ice_fltr.h"
>>> +#include "ice_tc_lib.h"
>>>    static int ice_active_port_option = -1;
>>> @@ -1576,6 +1578,134 @@ void ice_devlink_destroy_pf_port(struct ice_pf *pf)
>>>    	devlink_port_unregister(&pf->devlink_port);
>>>    }
>>> +/**
>>> + * ice_devlink_port_get_vf_mac_address - .port_fn_hw_addr_get devlink handler
>>> + * @port: devlink port structure
>>> + * @hw_addr: Mac address of the port
>>> + * @hw_addr_len: length of mac address
>>
>> Mac/mac is spelled differently. (Also below.)
>>
>>> + * @extack: extended netdev ack structure
>>> + *
>>> + * Callback for the devlink .port_fn_hw_addr_get operation
>>> + * Return: zero on success or an error code on failure.
>>> + */
>>> +
>>> +static int ice_devlink_port_get_vf_mac_address(struct devlink_port *port,
>>> +					       u8 *hw_addr, int *hw_addr_len,
>>> +					       struct netlink_ext_ack *extack)
>>> +{
>>> +	struct net_device *netdev = port->type_eth.netdev;
>>> +
>>> +	if (!netdev || !netdev->dev_addr)
>>> +		return -EADDRNOTAVAIL;
>>> +
>>> +	ether_addr_copy(hw_addr, netdev->dev_addr);
>>> +	*hw_addr_len = ETH_ALEN;
>>> +	return 0;
>>> +}
>>> +
>>> +/**
>>> + * ice_devlink_port_set_vf_mac_address - .port_fn_hw_addr_set devlink handler
>>> + * @port: devlink port structure
>>> + * @hw_addr: Mac address of the port
>>> + * @hw_addr_len: length of mac address
>>> + * @extack: extended netdev ack structure
>>> + *
>>> + * Callback for the devlink .port_fn_hw_addr_set operation
>>> + * Return: zero on success or an error code on failure.
>>> + */
>>> +static int ice_devlink_port_set_vf_mac_address(struct devlink_port *port,
>>> +					       const u8 *hw_addr,
>>> +					       int hw_addr_len,
>>> +					       struct netlink_ext_ack *extack)
>>> +{
>>> +	struct devlink *devlink = port->devlink;
>>> +	struct net_device *netdev = port->type_eth.netdev;
>>> +	struct ice_pf *pf = devlink_priv(devlink);
>>> +	struct ice_vsi *vsi = *pf->vsi;
>>> +	struct ice_hw *hw = &pf->hw;
>>> +	struct device *dev = ice_pf_to_dev(pf);
>>> +	u8 old_mac[ETH_ALEN];
>>> +	u8 flags = 0;
>>> +	const u8 *mac = hw_addr;
>>> +	int err;
>>> +
>>> +	if (!netdev)
>>> +		return -EADDRNOTAVAIL;
>>> +
>>> +	if (!is_valid_ether_addr(mac))
>>> +		return -EADDRNOTAVAIL;
>>> +
>>> +	if (ether_addr_equal(netdev->dev_addr, mac)) {
>>> +		dev_dbg(dev, "already using mac %pM\n", mac);
>>> +		return 0;
>>> +	}
>>> +
>>> +	if (test_bit(ICE_DOWN, pf->state) ||
>>> +	    ice_is_reset_in_progress(pf->state)) {
>>> +		dev_err(dev, "can't set mac %pM. device not ready\n", mac);
>>> +		return -EBUSY;
>>> +	}
>>> +
>>> +	if (ice_chnl_dmac_fltr_cnt(pf)) {
>>> +		dev_err(dev, "can't set mac %pM. Device has tc-flower filters, delete all of them and try again\n",
>>> +			mac);
>>> +		return -EAGAIN;
>>> +	}
>>> +
>>> +	netif_addr_lock_bh(netdev);
>>> +	ether_addr_copy(old_mac, netdev->dev_addr);
>>> +	/* change the netdev's MAC address */
>>
>> The comment seems redundant.
>>
>>> +	eth_hw_addr_set(netdev, mac);
>>> +	netif_addr_unlock_bh(netdev);
>>> +
>>> +	/* Clean up old MAC filter. Not an error if old filter doesn't exist */
>>> +	err = ice_fltr_remove_mac(vsi, old_mac, ICE_FWD_TO_VSI);
>>> +	if (err && err != -ENOENT) {
>>> +		err = -EADDRNOTAVAIL;
>>> +		goto err_update_filters;
>>> +	}
>>> +
>>> +	/* Add filter for new MAC. If filter exists, return success */
>>> +	err = ice_fltr_add_mac(vsi, mac, ICE_FWD_TO_VSI);
>>> +	if (err == -EEXIST) {
>>> +		/* Although this MAC filter is already present in hardware it's
>>> +		 * possible in some cases (e.g. bonding) that dev_addr was
>>> +		 * modified outside of the driver and needs to be restored back
>>> +		 * to this value.
>>> +		 */
>>> +		dev_dbg(dev, "filter for MAC %pM already exists\n", mac);
>>> +		return 0;
>>> +	} else if (err) {
>>> +		/* error if the new filter addition failed */
>>
>> The comment seems redundant.
>>
>>> +		err = -EADDRNOTAVAIL;
>>> +	}
>>> +
>>> +err_update_filters:
>>> +	if (err) {
>>> +		dev_err(dev, "can't set MAC %pM. filter update failed\n", mac);
>>> +		netif_addr_lock_bh(netdev);
>>> +		eth_hw_addr_set(netdev, old_mac);
>>> +		netif_addr_unlock_bh(netdev);
>>> +		return err;
>>> +	}
>>> +
>>> +	dev_dbg(dev, "updated MAC address to %pM\n", netdev->dev_addr);
>>
>> Should it be level info?
>>
>>> +
>>> +	/* write new MAC address to the firmware */
>>> +	flags = ICE_AQC_MAN_MAC_UPDATE_LAA_WOL;
>>> +	err = ice_aq_manage_mac_write(hw, mac, flags, NULL);
>>> +	if (err) {
>>> +		dev_err(dev, "can't set MAC %pM. write to firmware failed error %d\n",
>>> +			mac, err);
>>> +	}
>>> +	return 0;
>>> +}
>>> +
>>> +static const struct devlink_port_ops ice_devlink_vf_port_ops = {
>>> +	.port_fn_hw_addr_get = ice_devlink_port_get_vf_mac_address,
>>> +	.port_fn_hw_addr_set = ice_devlink_port_set_vf_mac_address,
>>> +};
>>> +
>>>    /**
>>>     * ice_devlink_create_vf_port - Create a devlink port for this VF
>>>     * @vf: the VF to create a port for
>>> @@ -1611,7 +1741,8 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
>>>    	devlink_port_attrs_set(devlink_port, &attrs);
>>>    	devlink = priv_to_devlink(pf);
>>> -	err = devlink_port_register(devlink, devlink_port, vsi->idx);
>>> +	err = devlink_port_register_with_ops(devlink, devlink_port,
>>> +					     vsi->idx, &ice_devlink_vf_port_ops);
>>>    	if (err) {
>>>    		dev_err(dev, "Failed to create devlink port for VF %d, error %d\n",
>>>    			vf->vf_id, err);
>>> @@ -1620,7 +1751,6 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
>>>    	return 0;
>>>    }
>>> -
>>
>> Unrelated whitespace change.
>>
>>>    /**
>>>     * ice_devlink_destroy_vf_port - Destroy the devlink_port for this VF
>>>     * @vf: the VF to cleanup
>>
>> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> 
> Paul. It looks a bit weird you put in multiple comments that require
> changes and then the Reviewed-by tag. Usually, you put the tag only if
> you are 100% happy with the patch as it is.

Sorry about that. I will keep this in mind.

> It is also weird you put in a tag in this case when the patch
> is completely wrong, as I pointed out in my first reply. Did you miss
> it?

Yes, I missed it. (I disabled threading in Mozilla Thunderbird. I am 
going to change that again. Sorry about that.)


Kind regards,

Paul
