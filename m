Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37EDA852F35
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 12:27:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6025E40BF5;
	Tue, 13 Feb 2024 11:27:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XwNE-tiuXNLr; Tue, 13 Feb 2024 11:27:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DBC6040BDD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707823653;
	bh=s0oFTV7M7pCTGeqj600LQdU9PccVXar4+hpgoAPCV2o=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sM8zRypSzFeKCQSWPTXQuXg6Wd7XlTtCXv5OZXwSpiHFVPbRwuOS+ex2oh/b5Xf77
	 OFKU1sFaF3EkNMI0P+pSLodxAwiCiKf5Vqa1XILLWZoxOGcGv6g4bpu2F1w/mw8zmy
	 co6NWDHkjL1/oYww7bfXP2hlOCtF3Poq7I2xcNrqmA5rcKinQPiQhzTbvbUZgMevNo
	 OdFYsnO1T77p29Fb6o9EnC2kaJuNHipEf0DGaI6zToEv6FMczOtyDO+MD5SAnyT4sl
	 jPvYbrcC6xbBKG7oMDL3ThWxVGiIHXJG2/qnuYbcyD8xuyb+jRudsJyHeMilDTHFcA
	 oNFK3xZDH5ydQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DBC6040BDD;
	Tue, 13 Feb 2024 11:27:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 07DCD1BF421
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 11:27:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E7C1160B39
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 11:27:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MlXj-X524lDf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 11:27:28 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::334; helo=mail-wm1-x334.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D590460B31
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D590460B31
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D590460B31
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 11:27:26 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 5b1f17b1804b1-40fd2f7ef55so29655605e9.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 03:27:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707823644; x=1708428444;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=s0oFTV7M7pCTGeqj600LQdU9PccVXar4+hpgoAPCV2o=;
 b=Na7W16Wt6FZGod9brLKyGRV7cowlm4DwqITMWDUR43l4xS0eQlCtzBd0jVXMI5xEDz
 5JYkHkXETZ0iscw67O4Z5SSUthEaoS1+RMHuwbv5hBulENqwGjo3JUWPcMpQOXJZmO+q
 Pcag5VAsiN4a88QZKE+D906CdQvHrk0iq+fP+DLqogrIVdjZOhbdEYjE0owM4EwV3kQm
 Aga7ng0nO72bxa9bzzv42FjXQCNioQoizReWYDvdrqDAHnIMqckVqEYoYx6FZMRAbAnD
 6lgknUPhyygjj0Vxzj+kroMXi0xbp/mB0GIGSQ/v+Y70pOCiVpio+aCoyShxn40xxMjR
 DCsw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXlSBMqJ2XA7TD1H/qFpbVkUg64EA3JV0OkW7So1ZjRwjzVOOYu97uS1aMtKBVeGZXYDh0+bwu8YDHnxs4S3wYFsIBnl4CzwPr6j8aAvMaXhA==
X-Gm-Message-State: AOJu0Yx7+xCAB3/nYVXFjHTLCrp2Ao860CYyUmmnnrD/QTVTAc45qeBd
 eDjGnFZ7tXry28pTVSyU31i/R0tqKtb/Vs7AgMOsO9ux6BXAJQuFxkWP8hBP4bw=
X-Google-Smtp-Source: AGHT+IGLMTKSyUTDt/yFpKqUIDeJUe1926b29O5oL5iorvrPw1kAFJ4zr5130/7FelDHRuSgEOZjQg==
X-Received: by 2002:a05:600c:3554:b0:40f:c2f0:7ed3 with SMTP id
 i20-20020a05600c355400b0040fc2f07ed3mr1993044wmq.18.1707823644495; 
 Tue, 13 Feb 2024 03:27:24 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCXShbnh8qEn/BJU9R9Ar0jEimSrsjJfcQkCNwBAdlTQJl+0JOps2h4xKacHyjpe0r1PM4c8/OiXNPaAOCv4K1aCL6f1PZ6GBegSS2z01fbifApH6ZAA39mCublAYEoo6X9V5vzNScktjyqO6BB7QEHw2zUNlr3ZPUtO9Q9Iel4XvfDUAqvsreTCbF6nckd6CV4r16JENKWfN/H4PR40RSbtbPBriPtnJr0d6oHjavY8NQgBVasZEjgJErBKksRbnZT1qgIDVCW3hvvcPI4jZ71wyT7Tj0y8pVFlBRd+YbpYNX+iHbbBvZ3qxVebi6pxi5Nh8WiNN24H7F48wW/laCqJgAmast2L/RnWpOJCkWOQkWJKCejSnn1zuL45fPIPfKlsqon5gaBjHmlonzzPT93NVJu7jEzmVQ==
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 iv15-20020a05600c548f00b004107686650esm11592367wmb.36.2024.02.13.03.27.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Feb 2024 03:27:23 -0800 (PST)
Date: Tue, 13 Feb 2024 12:27:20 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZctSGPf6v0QlfMUu@nanopsycho>
References: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
 <20240213072724.77275-5-michal.swiatkowski@linux.intel.com>
 <ZcsueJ1tr-GdseIt@nanopsycho> <Zcs442A/+nuLJw6j@mev-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zcs442A/+nuLJw6j@mev-dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1707823644; x=1708428444;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=s0oFTV7M7pCTGeqj600LQdU9PccVXar4+hpgoAPCV2o=;
 b=oqVKA86SQud53KlrjxYCAaT1RPrCsE47QksaNAUNbk5nHq2LIXMfFgWHrIh7KMdz95
 GwhEmjUlmlk9w0oLiOZ+UolT/5Fp9cLjT3+MyQk6rf0z6D8l/nn8BG92xl3Pf8t3ISGs
 OyXsqv/mbhqCh8rorROjlY4CAq8fYcw+qVipWfahKvD5E7HrHkRq+nozQ3anZDVLfI8q
 j5rNeVB/c0a4dLuREKD16yLJrCeiZdYCZ135G7kxNF1GRoqxKZzhPsNZdWvf4fs75eMK
 5nah/VMEKpUx8UkE4XeDVVwVsdjtYk4jUKx47bpsEqL6q3CNO8yL15W103KjenyAHSwG
 G0iw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=oqVKA86S
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

Tue, Feb 13, 2024 at 10:39:47AM CET, michal.swiatkowski@linux.intel.com wrote:
>On Tue, Feb 13, 2024 at 09:55:20AM +0100, Jiri Pirko wrote:
>> Tue, Feb 13, 2024 at 08:27:13AM CET, michal.swiatkowski@linux.intel.com wrote:
>> >From: Piotr Raczynski <piotr.raczynski@intel.com>

[...]


>
>> 
>> >+}
>> >+
>> >+/**
>> >+ * ice_dealloc_dynamic_port - Deallocate and remove a dynamic port
>> >+ * @dyn_port: dynamic port instance to deallocate
>> >+ *
>> >+ * Free resources associated with a dynamically added devlink port. Will
>> >+ * deactivate the port if its currently active.
>> >+ */
>> >+static void ice_dealloc_dynamic_port(struct ice_dynamic_port *dyn_port)
>> >+{
>> >+	struct devlink_port *devlink_port = &dyn_port->devlink_port;
>> >+	struct ice_pf *pf = dyn_port->pf;
>> >+
>> >+	if (dyn_port->active)
>> >+		ice_deactivate_dynamic_port(dyn_port);
>> >+
>> >+	if (devlink_port->attrs.flavour == DEVLINK_PORT_FLAVOUR_PCI_SF)
>> 
>> I don't understand how this check could be false. Remove it.
>>
>Yeah, will remove
>
>> 
>> >+		xa_erase(&pf->sf_nums, devlink_port->attrs.pci_sf.sf);
>> >+
>> >+	devl_port_unregister(devlink_port);
>> >+	ice_vsi_free(dyn_port->vsi);
>> >+	xa_erase(&pf->dyn_ports, dyn_port->vsi->idx);
>> >+	kfree(dyn_port);
>> >+}
>> >+
>> >+/**
>> >+ * ice_dealloc_all_dynamic_ports - Deallocate all dynamic devlink ports
>> >+ * @pf: pointer to the pf structure
>> >+ */
>> >+void ice_dealloc_all_dynamic_ports(struct ice_pf *pf)
>> >+{
>> >+	struct devlink *devlink = priv_to_devlink(pf);
>> >+	struct ice_dynamic_port *dyn_port;
>> >+	unsigned long index;
>> >+
>> >+	devl_lock(devlink);
>> >+	xa_for_each(&pf->dyn_ports, index, dyn_port)
>> >+		ice_dealloc_dynamic_port(dyn_port);
>> >+	devl_unlock(devlink);
>> 
>> Hmm, I would assume that the called should already hold the devlink
>> instance lock when doing remove. What is stopping user from issuing
>> port_new command here, after devl_unlock()?
>>
>It is only called from remove path, but I can move it upper.

I know it is called on remove path. Again, what is stopping user from
issuing port_new after ice_dealloc_all_dynamic_ports() is called?

[...]


>> 
>> >+	struct device *dev = ice_pf_to_dev(pf);
>> >+	int err;
>> >+
>> >+	dev_dbg(dev, "%s flavour:%d index:%d pfnum:%d\n", __func__,
>> >+		new_attr->flavour, new_attr->port_index, new_attr->pfnum);
>> 
>> How this message could ever help anyone?
>>
>Probably only developer of the code :p, will remove it

How exactly?

[...]


>> >+static int ice_sf_cfg_netdev(struct ice_dynamic_port *dyn_port)
>> >+{
>> >+	struct net_device *netdev;
>> >+	struct ice_vsi *vsi = dyn_port->vsi;
>> >+	struct ice_netdev_priv *np;
>> >+	int err;
>> >+
>> >+	netdev = alloc_etherdev_mqs(sizeof(*np), vsi->alloc_txq,
>> >+				    vsi->alloc_rxq);
>> >+	if (!netdev)
>> >+		return -ENOMEM;
>> >+
>> >+	SET_NETDEV_DEV(netdev, &vsi->back->pdev->dev);
>> >+	set_bit(ICE_VSI_NETDEV_ALLOCD, vsi->state);
>> >+	vsi->netdev = netdev;
>> >+	np = netdev_priv(netdev);
>> >+	np->vsi = vsi;
>> >+
>> >+	ice_set_netdev_features(netdev);
>> >+
>> >+	netdev->xdp_features = NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRECT |
>> >+			       NETDEV_XDP_ACT_XSK_ZEROCOPY |
>> >+			       NETDEV_XDP_ACT_RX_SG;
>> >+
>> >+	eth_hw_addr_set(netdev, dyn_port->hw_addr);
>> >+	ether_addr_copy(netdev->perm_addr, dyn_port->hw_addr);
>> >+	netdev->netdev_ops = &ice_sf_netdev_ops;
>> >+	SET_NETDEV_DEVLINK_PORT(netdev, &dyn_port->devlink_port);
>> >+
>> >+	err = register_netdev(netdev);
>> 
>> It the the actual subfunction or eswitch port representor of the
>> subfunction. Looks like the port representor. In that case. It should be
>> created no matter if the subfunction is activated, when it it created.
>> 
>> If this is the actual subfunction netdev, you should not link it to
>> devlink port here.
>>
>This is the actual subfunction netdev. Where in this case it should be
>linked?

To the SF auxdev, obviously.

Here, you should have eswitch port representor netdev.

