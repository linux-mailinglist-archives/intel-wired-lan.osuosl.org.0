Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AAD98A5D95
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Apr 2024 00:04:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F10A96061A;
	Mon, 15 Apr 2024 22:04:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zPpANEv7l549; Mon, 15 Apr 2024 22:04:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4202F60630
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713218649;
	bh=oxrf3akoGwRFkimu+tMKpVP07mO1UfmnTsS0nQnyHfI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4iruyQf67jY71koHLXcQFSoffj8QobAzgK02o9BX3sHCwh1W0VodR9yl715ubAVDe
	 nInP9nbiwUfbhTo1oNZ1BrEZP3Xk6xdDZdstBgZguJQcnIqEdtqLLBrrL+uvpwXqM2
	 FuSRxIcO2+0mkYVW8kobGK2SM3jzKHJtuB3dUs+rFboBthI/6NcH7+AWjxtf5W14kb
	 0JCkRAlEjLNC2KFx9ZpIzp7iX2bvrGlwK+RS5MH2QyGtipaoM0CNLAJWWeynxUIKgs
	 oOEMMjnZ83lv7pLl7nRqjHAD0yyS/CHakuRamITfAMxpMuOk7GxAZ74fQ5haLGYezo
	 3kGBoAoefMMUw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4202F60630;
	Mon, 15 Apr 2024 22:04:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D1F5A1BF355
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 22:04:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CA85E40B4F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 22:04:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mWOIzq0SrUE3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Apr 2024 22:04:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C144F40B3F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C144F40B3F
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C144F40B3F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 22:04:06 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rwUQX-00D52B-Eo; Tue, 16 Apr 2024 00:03:49 +0200
Date: Tue, 16 Apr 2024 00:03:49 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <6514e6a9-3b4d-48ba-b895-a12c5beff820@lunn.ch>
References: <38d874e3-f25b-4af2-8c1c-946ab74c1925@lunn.ch>
 <a3fd2b83-93af-4a59-a651-1ffe0dbddbe4@intel.com>
 <dc601a7c-7bb7-4857-8991-43357b15ed5a@lunn.ch>
 <ad026426-f6a4-4581-b090-31ab65fb4782@intel.com>
 <61a89488-e79a-4175-8868-3de36af7f62d@lunn.ch>
 <206686dc-c39b-4b52-a35c-914b93fe3f36@intel.com>
 <e4224da7-0a09-41b7-b652-bf651cfea0d0@lunn.ch>
 <cf30ce2e-ab70-4bbe-82ab-d687c2ea2efc@intel.com>
 <c6258afd-2631-4e5d-ab25-6b2b7e2f4df4@lunn.ch>
 <fb1a53ea-d5cd-45a1-9073-450f6a753f87@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fb1a53ea-d5cd-45a1-9073-450f6a753f87@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=oxrf3akoGwRFkimu+tMKpVP07mO1UfmnTsS0nQnyHfI=; b=Sq/IyNDJQh2Gef61+STytwjNgn
 BraETNwrzA9KCNdttNOJNcNoQNUEm4BwQEdimN4KGyGffheiJrpVi9V7+EoYQt4su9gKmSy5jPO2G
 YIynYSYALfGDyCX3HoKx2BcuaTOSqvPDwhuQ40GIRa99CddjtyzWQ3Z61D/culTrIwuk=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=Sq/IyNDJ
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] ethtool: Max power
 support
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
Cc: netdev@vger.kernel.org, edumazet@google.com, marcin.szycik@linux.intel.com,
 anthony.l.nguyen@intel.com, idosch@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, przemyslaw.kitszel@intel.com,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Apr 12, 2024 at 03:21:24PM +0200, Wojciech Drewek wrote:
> 
> 
> On 09.04.2024 15:39, Andrew Lunn wrote:
> >> This is something my current design supports I think. Using
> >> ETHTOOL_A_MODULE_MAX_POWER_SET user can get what cage supports
> >> and change it.
> >  
> >> This could be done using ethtool_module_power_mode_policy I think.
> > 
> > All these 'I think' don't give me a warm fuzzy feeling this is a well
> > thought out and designed uAPI.
> > 
> > I assume you have ethtool patches for your new netlink attributes. So
> > show us the real usage. Start with an SFP in its default lower power
> > mode. Show us the commands to display the current status. Allocate it
> > more power, tell the module it can use more power, and then show us
> > the status after the change has been made.
> 
> Ok, but do we really need an API to switch the module between high/low power mode?

Probably not. But you need to document that the API you are adding is
also expected to talk to the module and tell it to use more/less
power.

> Regarding the current status and what module supports, there is -m option:
> $ ethtool -m ens801f0np0
>         Identifier                                : 0x0d (QSFP+)
>         Extended identifier                       : 0x00
>         Extended identifier description           : 1.5W max. Power consumption
>         Extended identifier description           : No CDR in TX, No CDR in RX
>         Extended identifier description           : High Power Class (> 3.5 W) not enabled

So you can make this part of your commit message. Show this. Invoke
your new ethtool option, then show this again with the module
reporting a higher power consumption. The reduce the power using
ethtool and show the power consumption has reduced.

Also, in the ethtool-netlink.rst file, clearly document what the API
is doing, so that somebody else can implement it for another device.

Please also document hotplug behaviour. Say I use your new API to
increase the power to 3.5W. I then eject the module. Does the
available power automatically get put back into the pool? When i
reinsert the module, it will be in low power class, and i need to
issue the ethtool command again to increase its power?

   Andrew
