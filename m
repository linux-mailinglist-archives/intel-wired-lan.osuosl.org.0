Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCD5845226
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 08:40:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3773F42169;
	Thu,  1 Feb 2024 07:40:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3773F42169
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706773241;
	bh=8+2hWgqEGa1ik5p7kIXAag508wrtryRn7JUB1Ap3pFg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qUH+NxH50N22L1VVMZus4GeyaMB0VhtP7P2Sar1doxbBsB8FNSVcd5PeP3jIYhm5C
	 enUHvj5rP2hIEDF3vUq5+ag3I2DymUH4cPfRdHAlONVUoIYsI9LCwNArnzoBf2/a5H
	 0Wizf7d93pfidBtKZrLuzLTnIKfR1PQ2ioR5AsNH6fpF6yQ4k5hKXo4qHSRy5dOgqr
	 g4fvS0iz/vd2F62wmYE6BrXkxT6JbXg2FCaTqW7QkdcKsS/KDYc8C6udOTo48Bn+xA
	 S2Vcs268Cc3Gg1IcbH0nFXKxjvIuP0znnM5/3vU1uaDr1n3b10KOWaDt5+oSah7VyR
	 8BwlkKJkfSLoQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xbFd2lQ_EXzQ; Thu,  1 Feb 2024 07:40:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA3D34214A;
	Thu,  1 Feb 2024 07:40:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA3D34214A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1FE9B1BF2FA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 07:40:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 02F194031D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 07:40:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 02F194031D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hqV0XZx8MchW for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 07:40:31 +0000 (UTC)
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com
 [IPv6:2a00:1450:4864:20::244])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5129040296
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 07:40:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5129040296
Received: by mail-lj1-x244.google.com with SMTP id
 38308e7fff4ca-2cf2fdd518bso8509881fa.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 23:40:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706773228; x=1707378028;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=8+2hWgqEGa1ik5p7kIXAag508wrtryRn7JUB1Ap3pFg=;
 b=gV6kyWe1Ot8JGwCENYMNV6FM3oSwJEADrAPQVhxKzSuafvobXu0Y5USjBXlkqNwJGR
 ymeZ0bYciApSX11w1dE9HURIxILiOzk7ORzO9vYlN30Jof4U859bW/bQZpGZbIQMD8o0
 NLSTVStW08Pv4mJF6XbAQpdvpB167ZNAlPQ14jTG+4x0ckBLoVLGqrLpJd6wBRmqQzfv
 KWrryeWJX+Qa9PDAuhWu+kwhvWUnDHgSXbO/ZoEI6Ua1nL+JsO7LozWX3UhKBIpMIqJD
 6hfqh4gOb9pXFioqemH+4uvLIhjZkkNBFXbAQE2LIj8iMNy8DbaS18JYVqs9KJqlYzUP
 FxeA==
X-Gm-Message-State: AOJu0YwO1ImOQC0QLdEAQRgl9kmeJmfK8mVAGAXoyZbT9XG/K98evyQ1
 W/LyuSma6bcdUsiqrxCADScLyTva55BfT6ytz2Aao/W1sY72+MHvrptW9bQQZuI=
X-Google-Smtp-Source: AGHT+IFoNPg5KzMKro6fCiGuoPk0P1yrwaX8gjGPGV6/S5rk+mRzPU+3mFhHYYcGLWJ85O8Kw9Ddkw==
X-Received: by 2002:a2e:8847:0:b0:2cd:cd28:beea with SMTP id
 z7-20020a2e8847000000b002cdcd28beeamr818829ljj.35.1706773228316; 
 Wed, 31 Jan 2024 23:40:28 -0800 (PST)
X-Forwarded-Encrypted: i=0;
 AJvYcCUeu0JlMUgDbweYXKiU8+IJF44zqT5tVI1dbOYAdWYgDhhINQeXlZxKfEiQfJv+owTP6v3QMPs5Sn6n9oUf8969yJ5dRfVBC+eaTqfYx5+ayw0cka+E4WMX3DGeKXpbhtWszDtcVndmJ6LKaeGhvbxc83mvlaXhHdKRlkXlsRL2HUGKVsTmQ7HjHBkBU5oi2OrjBY79W+5exkcHUoFA2VYQcjWROlhp2k/X59rm7Etqckb2kAB4TJkCcYHS0R1g4F6iDW4J6HjDaC+qN9HuIpQb6jFgXi5wP43WOLjqIb9odVX18UiFChTfSsPEXtHT/Gg5J7KB9CbwZV9mDUrx911sjfwyKvdUC552SSdse3Zsnvm5zDwcD1xDAQbyM2CDviVZ8HLvSJcdmuMbNtZfJRy2tQpLUdw3Sc3sqws9PQAbswW1EFI3+Bq6RNxfzuVvcbdZGDVL6uIMRxWLJFh71gowMZwU/DSSC6biBoiuqgvBww==
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 z11-20020a5d440b000000b0033b17e18df8sm410990wrq.12.2024.01.31.23.40.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Jan 2024 23:40:27 -0800 (PST)
Date: Thu, 1 Feb 2024 08:40:24 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <ZbtK6PwsYLosTem8@nanopsycho>
References: <20240131080847.30614-1-ksundara@redhat.com>
 <64c36525-9177-48b1-abbb-c69dbdeb6d79@molgen.mpg.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <64c36525-9177-48b1-abbb-c69dbdeb6d79@molgen.mpg.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1706773228; x=1707378028;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=8+2hWgqEGa1ik5p7kIXAag508wrtryRn7JUB1Ap3pFg=;
 b=HKvmq84OwxmfTUqrjMdguWhCQ40d/Kcddab7RCjPANWKbrY9DiCE5ArxOUJA7ykfIe
 ONSg1oxUNuLnhHe+QTBTz43QiTcep8yzplD06jtW1UWW+6Y+PYxNBtU/nICpKxnhjWZq
 Kf+bmG3v0pVfF5RLtt8m3ofqZ7hNiOSEJMxlwJDxze6Hdr6DjP2TBi3r4Jrq58NYXnR/
 +beAygsuyIDreHaVHBVixptz7t6b1mpayhllgt57fnPtijwKOcjoNN8PBipWxsgPhiyS
 +zhXfh2Hv99e8xDDu6Buq6mMO2mK5M0oT+NJOCnzRwEJGjxM7WRdRS7OnFiXR5wikE52
 x9ew==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=HKvmq84O
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
 anthony.l.nguyen@intel.com, kuba@kernel.org,
 karthiksundaravel <ksundara@redhat.com>, rjarry@redhat.com, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Wed, Jan 31, 2024 at 05:15:46PM CET, pmenzel@molgen.mpg.de wrote:
>Dear karthiksundaravel,
>
>
>Thank you for your patch.
>
>
>Am 31.01.24 um 09:08 schrieb karthiksundaravel:
>> Changing the mac address of the VF representor ports are not
>
>Do you mean “is not possible”?
>
>> available via devlink. Add the function handlers to set and get
>> the HW address for the VF representor ports.
>
>How did you test this? It’d be great if you documented it.
>
>> Signed-off-by: karthiksundaravel <ksundara@redhat.com>
>
>Is “karthiksundaravel” the official spelling of your name. If not, you can
>change it with
>
>    git config --global user.name "Your Name"
>    git commit -s --amend --author="Your Name <ksundara@redhat.com>"
>
>> ---
>>   drivers/net/ethernet/intel/ice/ice_devlink.c | 134 ++++++++++++++++++-
>>   1 file changed, 132 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
>> index 80dc5445b50d..56d81836c469 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
>> @@ -9,6 +9,8 @@
>>   #include "ice_eswitch.h"
>>   #include "ice_fw_update.h"
>>   #include "ice_dcb_lib.h"
>> +#include "ice_fltr.h"
>> +#include "ice_tc_lib.h"
>>   static int ice_active_port_option = -1;
>> @@ -1576,6 +1578,134 @@ void ice_devlink_destroy_pf_port(struct ice_pf *pf)
>>   	devlink_port_unregister(&pf->devlink_port);
>>   }
>> +/**
>> + * ice_devlink_port_get_vf_mac_address - .port_fn_hw_addr_get devlink handler
>> + * @port: devlink port structure
>> + * @hw_addr: Mac address of the port
>> + * @hw_addr_len: length of mac address
>
>Mac/mac is spelled differently. (Also below.)
>
>> + * @extack: extended netdev ack structure
>> + *
>> + * Callback for the devlink .port_fn_hw_addr_get operation
>> + * Return: zero on success or an error code on failure.
>> + */
>> +
>> +static int ice_devlink_port_get_vf_mac_address(struct devlink_port *port,
>> +					       u8 *hw_addr, int *hw_addr_len,
>> +					       struct netlink_ext_ack *extack)
>> +{
>> +	struct net_device *netdev = port->type_eth.netdev;
>> +
>> +	if (!netdev || !netdev->dev_addr)
>> +		return -EADDRNOTAVAIL;
>> +
>> +	ether_addr_copy(hw_addr, netdev->dev_addr);
>> +	*hw_addr_len = ETH_ALEN;
>> +	return 0;
>> +}
>> +
>> +/**
>> + * ice_devlink_port_set_vf_mac_address - .port_fn_hw_addr_set devlink handler
>> + * @port: devlink port structure
>> + * @hw_addr: Mac address of the port
>> + * @hw_addr_len: length of mac address
>> + * @extack: extended netdev ack structure
>> + *
>> + * Callback for the devlink .port_fn_hw_addr_set operation
>> + * Return: zero on success or an error code on failure.
>> + */
>> +static int ice_devlink_port_set_vf_mac_address(struct devlink_port *port,
>> +					       const u8 *hw_addr,
>> +					       int hw_addr_len,
>> +					       struct netlink_ext_ack *extack)
>> +{
>> +	struct devlink *devlink = port->devlink;
>> +	struct net_device *netdev = port->type_eth.netdev;
>> +	struct ice_pf *pf = devlink_priv(devlink);
>> +	struct ice_vsi *vsi = *pf->vsi;
>> +	struct ice_hw *hw = &pf->hw;
>> +	struct device *dev = ice_pf_to_dev(pf);
>> +	u8 old_mac[ETH_ALEN];
>> +	u8 flags = 0;
>> +	const u8 *mac = hw_addr;
>> +	int err;
>> +
>> +	if (!netdev)
>> +		return -EADDRNOTAVAIL;
>> +
>> +	if (!is_valid_ether_addr(mac))
>> +		return -EADDRNOTAVAIL;
>> +
>> +	if (ether_addr_equal(netdev->dev_addr, mac)) {
>> +		dev_dbg(dev, "already using mac %pM\n", mac);
>> +		return 0;
>> +	}
>> +
>> +	if (test_bit(ICE_DOWN, pf->state) ||
>> +	    ice_is_reset_in_progress(pf->state)) {
>> +		dev_err(dev, "can't set mac %pM. device not ready\n", mac);
>> +		return -EBUSY;
>> +	}
>> +
>> +	if (ice_chnl_dmac_fltr_cnt(pf)) {
>> +		dev_err(dev, "can't set mac %pM. Device has tc-flower filters, delete all of them and try again\n",
>> +			mac);
>> +		return -EAGAIN;
>> +	}
>> +
>> +	netif_addr_lock_bh(netdev);
>> +	ether_addr_copy(old_mac, netdev->dev_addr);
>> +	/* change the netdev's MAC address */
>
>The comment seems redundant.
>
>> +	eth_hw_addr_set(netdev, mac);
>> +	netif_addr_unlock_bh(netdev);
>> +
>> +	/* Clean up old MAC filter. Not an error if old filter doesn't exist */
>> +	err = ice_fltr_remove_mac(vsi, old_mac, ICE_FWD_TO_VSI);
>> +	if (err && err != -ENOENT) {
>> +		err = -EADDRNOTAVAIL;
>> +		goto err_update_filters;
>> +	}
>> +
>> +	/* Add filter for new MAC. If filter exists, return success */
>> +	err = ice_fltr_add_mac(vsi, mac, ICE_FWD_TO_VSI);
>> +	if (err == -EEXIST) {
>> +		/* Although this MAC filter is already present in hardware it's
>> +		 * possible in some cases (e.g. bonding) that dev_addr was
>> +		 * modified outside of the driver and needs to be restored back
>> +		 * to this value.
>> +		 */
>> +		dev_dbg(dev, "filter for MAC %pM already exists\n", mac);
>> +		return 0;
>> +	} else if (err) {
>> +		/* error if the new filter addition failed */
>
>The comment seems redundant.
>
>> +		err = -EADDRNOTAVAIL;
>> +	}
>> +
>> +err_update_filters:
>> +	if (err) {
>> +		dev_err(dev, "can't set MAC %pM. filter update failed\n", mac);
>> +		netif_addr_lock_bh(netdev);
>> +		eth_hw_addr_set(netdev, old_mac);
>> +		netif_addr_unlock_bh(netdev);
>> +		return err;
>> +	}
>> +
>> +	dev_dbg(dev, "updated MAC address to %pM\n", netdev->dev_addr);
>
>Should it be level info?
>
>> +
>> +	/* write new MAC address to the firmware */
>> +	flags = ICE_AQC_MAN_MAC_UPDATE_LAA_WOL;
>> +	err = ice_aq_manage_mac_write(hw, mac, flags, NULL);
>> +	if (err) {
>> +		dev_err(dev, "can't set MAC %pM. write to firmware failed error %d\n",
>> +			mac, err);
>> +	}
>> +	return 0;
>> +}
>> +
>> +static const struct devlink_port_ops ice_devlink_vf_port_ops = {
>> +	.port_fn_hw_addr_get = ice_devlink_port_get_vf_mac_address,
>> +	.port_fn_hw_addr_set = ice_devlink_port_set_vf_mac_address,
>> +};
>> +
>>   /**
>>    * ice_devlink_create_vf_port - Create a devlink port for this VF
>>    * @vf: the VF to create a port for
>> @@ -1611,7 +1741,8 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
>>   	devlink_port_attrs_set(devlink_port, &attrs);
>>   	devlink = priv_to_devlink(pf);
>> -	err = devlink_port_register(devlink, devlink_port, vsi->idx);
>> +	err = devlink_port_register_with_ops(devlink, devlink_port,
>> +					     vsi->idx, &ice_devlink_vf_port_ops);
>>   	if (err) {
>>   		dev_err(dev, "Failed to create devlink port for VF %d, error %d\n",
>>   			vf->vf_id, err);
>> @@ -1620,7 +1751,6 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
>>   	return 0;
>>   }
>> -
>
>Unrelated whitespace change.
>
>>   /**
>>    * ice_devlink_destroy_vf_port - Destroy the devlink_port for this VF
>>    * @vf: the VF to cleanup
>
>Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>

Paul. It looks a bit weird you put in multiple comments that require
changes and then the Reviewed-by tag. Usually, you put the tag only if
you are 100% happy with the patch as it is.

It is also weird you put in a tag in this case when the patch
is completely wrong, as I pointed out in my first reply. Did you miss
it?


>
>
>Kind regards,
>
>Paul
>
