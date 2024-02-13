Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 849AC8533D6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 15:58:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C1A734149C;
	Tue, 13 Feb 2024 14:58:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cgpe6yZmHgcQ; Tue, 13 Feb 2024 14:58:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 88C53414CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707836291;
	bh=0gWtVFT531L8n8wHnh3G/M8myD+YA+zSGr3tIuusgcc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=y/QMO/NOiQ10fM1E0kSK+rlLfokigGT+HNU6dCBCo004/8q1XGsMqJvnyqYc0wc7/
	 +5iKuSohodT0TLG5B3BRbZv3dWCpklUKCOAciUP4qILJaG7F4SfKc7GuwvIY6W1iot
	 SwPMuOWkyKh8xz8QbWdTYIX+qyCItLB+HmEgSQdMbAeK4Zdyosc7ga/gpbnD672akT
	 rU4WYdKNcF5oyTDDDcH0V61Sn+XprEf5soQifX/j/1RCAf6S+srP5Af12c7lKclxP5
	 aZuFu0C4Rt3u8IlFR2bGcsSdETTspZ8u7PQPILwY8mggeoiVDyJNwJCDSAVA4qXwNh
	 DcaIDvuqzKoig==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 88C53414CE;
	Tue, 13 Feb 2024 14:58:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 899461BF354
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 14:58:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 75B3760BE7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 14:58:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UA7kVDehPYCM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 14:58:08 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::133; helo=mail-lf1-x133.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 81A9C60BDD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 81A9C60BDD
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 81A9C60BDD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 14:58:05 +0000 (UTC)
Received: by mail-lf1-x133.google.com with SMTP id
 2adb3069b0e04-511531f03f6so5280126e87.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 06:58:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707836283; x=1708441083;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=0gWtVFT531L8n8wHnh3G/M8myD+YA+zSGr3tIuusgcc=;
 b=dcrmJiqzuQfq78YnA1sWMlCwbt1AfBUdx6iYzTLDpGgMF3MGpHm/JpGTAzhAXvLPkL
 c+YemwTR/rIjKbExSNcXPeLWJTKD7pkwt4bAUSX3CEN08adI4/rGAUCaMm2q39euihKm
 fyXNePHiBeCZa3paUVG4laIZXq5bVcTtJFiCcl1LAh3r9mAlRrSjYvZkfyb2lr7KQjYY
 2yZXv/3z75rQQG7WcqYNS+FqeQ1EcZLotffG/GB6JTHgw4CEfK4UR5hEwiTUUooysK8X
 veEX6jDdrK0+3K2Ygim6agFAsqGvBziyKdubu6HIjVwUNHSxeQEGuqBwVrNf0u0UFmF9
 SJmQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUYgSS+EoD7fLgWOeCHIbHCZpbD2zD58UiGtpeDvafOTgOHSRHJdNU59pyUX03BEKRMF9HRr3aVk6K62zKV4Yf6z5VfyqZc+/lOlEjQ7OV2yA==
X-Gm-Message-State: AOJu0YziJ1YkNUBCZm7tqFAAhoVyfvpgNiRqcoDJIbGmowl58E06xNro
 Ypba7o5wqZoVgXF8c0HdS55SShnsno3ZTmNcdZaubAqr27kldAdPIyLXhPwr/y8=
X-Google-Smtp-Source: AGHT+IFXsxdkcczDpJXTBI0muZ5CDM2FYK3viHjsOY0zPiYzkCLn1Nu/bm9w1zHJhiA8JQ69NGI8rw==
X-Received: by 2002:a05:6512:3494:b0:511:29ee:83b8 with SMTP id
 v20-20020a056512349400b0051129ee83b8mr6073711lfr.62.1707836282895; 
 Tue, 13 Feb 2024 06:58:02 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCUmZQFi0ghf7a2CqxMqQRV8gXeUQULXl+AMAM+/OPRQ72Jfes173Cn6T2nwaBl1nzZk9aEZkMgAxYRfaFLwxQKNcbX463wboz3qzbHXE9mDzFHz2RebRis4yvVtGHCLCgjpS268/Zg+7Nf+rfZUXb3NJvflJAQAHcm80AWH05nKTNaESNY9qQDcNpGvWpG6tSo95iMLfovL6wPHCB7h1YlwmNZ+i8UM+csl3JDjpibiwlm1UXoVqgqsLZPmvY+1A86eXsMxKN4NL7C5TXJVyYVfRtWQmJKERUvBNQInaaQEvnHzGlvHkRBvFz63/AVt00Lf4nPCQlCVY8be07ZqWZFBWz/32OKgUY+CKQKKZSyUazJXaNZwcYrHea8srUetcaxNct4/YkHd7V91gwZZEFRAqxh6P2MhCg==
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 ll5-20020a170907190500b00a3d120e311asm466717ejc.117.2024.02.13.06.58.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Feb 2024 06:58:02 -0800 (PST)
Date: Tue, 13 Feb 2024 15:57:59 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZcuDd4ajkQnxJz77@nanopsycho>
References: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
 <20240213072724.77275-5-michal.swiatkowski@linux.intel.com>
 <ZcsueJ1tr-GdseIt@nanopsycho> <Zcs442A/+nuLJw6j@mev-dev>
 <ZctSGPf6v0QlfMUu@nanopsycho> <ZctaY7AfjS/N2J9X@mev-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZctaY7AfjS/N2J9X@mev-dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1707836283; x=1708441083;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=0gWtVFT531L8n8wHnh3G/M8myD+YA+zSGr3tIuusgcc=;
 b=1QNvgbVaePhMerIHPaUStxTcLSxf+Lyd11WOfs3fxJGspjwAHtbxS9aCn6HRe3QIAV
 Hzp1yvZlsqXIw9XhOkVx+dgWqZuYSXNYLX5xrYZ/0GO481ryDJIW1nu886DTwo/4EbdC
 Rv6QRTL5jymTt7Rp24XGlyRe7ICzRoZlfdZnXflRYXb8jV11KgVUdx6o2xDxz2lD10Z6
 Mh2K6Xq789lhLuDGex68GjBDKbcr5+nZYzvBKBp52RYt4M12nrWsmGZ384z49V78xSDp
 To1k6OG0aweczYmophrPgglHyy/zzYRUOSARwObCP0oVJsRrXkZv/5NFRKa52IqLDe9L
 sjyQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=1QNvgbVa
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

Tue, Feb 13, 2024 at 01:02:43PM CET, michal.swiatkowski@linux.intel.com wrote:
>On Tue, Feb 13, 2024 at 12:27:20PM +0100, Jiri Pirko wrote:
>> Tue, Feb 13, 2024 at 10:39:47AM CET, michal.swiatkowski@linux.intel.com wrote:
>> >On Tue, Feb 13, 2024 at 09:55:20AM +0100, Jiri Pirko wrote:
>> >> Tue, Feb 13, 2024 at 08:27:13AM CET, michal.swiatkowski@linux.intel.com wrote:
>> >> >From: Piotr Raczynski <piotr.raczynski@intel.com>
>> 
>> [...]
>> 
>> 
>> >
>> >> 
>> >> >+}
>> >> >+
>> >> >+/**
>> >> >+ * ice_dealloc_dynamic_port - Deallocate and remove a dynamic port
>> >> >+ * @dyn_port: dynamic port instance to deallocate
>> >> >+ *
>> >> >+ * Free resources associated with a dynamically added devlink port. Will
>> >> >+ * deactivate the port if its currently active.
>> >> >+ */
>> >> >+static void ice_dealloc_dynamic_port(struct ice_dynamic_port *dyn_port)
>> >> >+{
>> >> >+	struct devlink_port *devlink_port = &dyn_port->devlink_port;
>> >> >+	struct ice_pf *pf = dyn_port->pf;
>> >> >+
>> >> >+	if (dyn_port->active)
>> >> >+		ice_deactivate_dynamic_port(dyn_port);
>> >> >+
>> >> >+	if (devlink_port->attrs.flavour == DEVLINK_PORT_FLAVOUR_PCI_SF)
>> >> 
>> >> I don't understand how this check could be false. Remove it.
>> >>
>> >Yeah, will remove
>> >
>> >> 
>> >> >+		xa_erase(&pf->sf_nums, devlink_port->attrs.pci_sf.sf);
>> >> >+
>> >> >+	devl_port_unregister(devlink_port);
>> >> >+	ice_vsi_free(dyn_port->vsi);
>> >> >+	xa_erase(&pf->dyn_ports, dyn_port->vsi->idx);
>> >> >+	kfree(dyn_port);
>> >> >+}
>> >> >+
>> >> >+/**
>> >> >+ * ice_dealloc_all_dynamic_ports - Deallocate all dynamic devlink ports
>> >> >+ * @pf: pointer to the pf structure
>> >> >+ */
>> >> >+void ice_dealloc_all_dynamic_ports(struct ice_pf *pf)
>> >> >+{
>> >> >+	struct devlink *devlink = priv_to_devlink(pf);
>> >> >+	struct ice_dynamic_port *dyn_port;
>> >> >+	unsigned long index;
>> >> >+
>> >> >+	devl_lock(devlink);
>> >> >+	xa_for_each(&pf->dyn_ports, index, dyn_port)
>> >> >+		ice_dealloc_dynamic_port(dyn_port);
>> >> >+	devl_unlock(devlink);
>> >> 
>> >> Hmm, I would assume that the called should already hold the devlink
>> >> instance lock when doing remove. What is stopping user from issuing
>> >> port_new command here, after devl_unlock()?
>> >>
>> >It is only called from remove path, but I can move it upper.
>> 
>> I know it is called on remove path. Again, what is stopping user from
>> issuing port_new after ice_dealloc_all_dynamic_ports() is called?
>> 
>> [...]
>> 
>What is a problem here? Calling port_new from user perspective will have
>devlink lock, right? Do you mean that devlink lock should be taken for
>whole cleanup, so from the start to the moment when devlink is
>unregister? I wrote that, I will do that in next version (moving it

Yep, otherwise you can ice_dealloc_all_dynamic_ports() and end up with
another port created after that which nobody cleans-up.

>upper).
>
>> 
>> >> 
>> >> >+	struct device *dev = ice_pf_to_dev(pf);
>> >> >+	int err;
>> >> >+
>> >> >+	dev_dbg(dev, "%s flavour:%d index:%d pfnum:%d\n", __func__,
>> >> >+		new_attr->flavour, new_attr->port_index, new_attr->pfnum);
>> >> 
>> >> How this message could ever help anyone?
>> >>
>> >Probably only developer of the code :p, will remove it
>> 
>> How exactly?
>>
>I meant this code developer, it probably was used to check if number and
>indexes are correct, but now it should be removed. Like, leftover after
>developing, sorry.
>
>> [...]
>> 
>> 
>> >> >+static int ice_sf_cfg_netdev(struct ice_dynamic_port *dyn_port)
>> >> >+{
>> >> >+	struct net_device *netdev;
>> >> >+	struct ice_vsi *vsi = dyn_port->vsi;
>> >> >+	struct ice_netdev_priv *np;
>> >> >+	int err;
>> >> >+
>> >> >+	netdev = alloc_etherdev_mqs(sizeof(*np), vsi->alloc_txq,
>> >> >+				    vsi->alloc_rxq);
>> >> >+	if (!netdev)
>> >> >+		return -ENOMEM;
>> >> >+
>> >> >+	SET_NETDEV_DEV(netdev, &vsi->back->pdev->dev);
>> >> >+	set_bit(ICE_VSI_NETDEV_ALLOCD, vsi->state);
>> >> >+	vsi->netdev = netdev;
>> >> >+	np = netdev_priv(netdev);
>> >> >+	np->vsi = vsi;
>> >> >+
>> >> >+	ice_set_netdev_features(netdev);
>> >> >+
>> >> >+	netdev->xdp_features = NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRECT |
>> >> >+			       NETDEV_XDP_ACT_XSK_ZEROCOPY |
>> >> >+			       NETDEV_XDP_ACT_RX_SG;
>> >> >+
>> >> >+	eth_hw_addr_set(netdev, dyn_port->hw_addr);
>> >> >+	ether_addr_copy(netdev->perm_addr, dyn_port->hw_addr);
>> >> >+	netdev->netdev_ops = &ice_sf_netdev_ops;
>> >> >+	SET_NETDEV_DEVLINK_PORT(netdev, &dyn_port->devlink_port);
>> >> >+
>> >> >+	err = register_netdev(netdev);
>> >> 
>> >> It the the actual subfunction or eswitch port representor of the
>> >> subfunction. Looks like the port representor. In that case. It should be
>> >> created no matter if the subfunction is activated, when it it created.
>> >> 
>> >> If this is the actual subfunction netdev, you should not link it to
>> >> devlink port here.
>> >>
>> >This is the actual subfunction netdev. Where in this case it should be
>> >linked?
>> 
>> To the SF auxdev, obviously.
>> 
>> Here, you should have eswitch port representor netdev.
>> 
>Oh, ok, thanks, will link it correctly in next version.
>
