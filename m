Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71BA4897157
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Apr 2024 15:40:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1BE07400A6;
	Wed,  3 Apr 2024 13:40:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l9Jz9G_h0k_F; Wed,  3 Apr 2024 13:40:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD5F341772
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712151624;
	bh=u8sbv7OhCWTzdUmHM6hfOPKlrc7untzhQsAD3ri/EUY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L7FxKdPgSYkPhCdbinrS5Y88EEhlQOSYOaekY33U/OQKx68rjjLmul91T+pBkUR9B
	 /SwmrijaVxVfLd452AtaONZTz5ZCktIDTz5C0WnrCPKy47LJX9ASGVvuiv1syZ7Uof
	 KyBWrsZxcnyeGiTig7MnPa1T1UYI5rB4jd1atbL8oZ+qz9hmH4QmDACnmknaxb3mA0
	 kxEUotVOEmVBvNpWkeVVWBfsbXNMyxJgciIbrA53cbE8yVHJb32/UF1E59EVGw+sSZ
	 tnOx5pYksBbyXBSMyUlylZb39ORPUTsAqy4Dm6bYqiO969zeh+PCHNdYDNy/lRmLd6
	 qmSSpvo9QZdtw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CD5F341772;
	Wed,  3 Apr 2024 13:40:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0F7371BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 13:40:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0804C81F1F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 13:40:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dtVh7AhGXNn7 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 13:40:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E69D481E49
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E69D481E49
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E69D481E49
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 13:40:21 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rs0qV-00C54I-HE; Wed, 03 Apr 2024 15:40:07 +0200
Date: Wed, 3 Apr 2024 15:40:07 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <7b0b3d27-c21d-4765-875b-2dd4681a2ba4@lunn.ch>
References: <20240329092321.16843-1-wojciech.drewek@intel.com>
 <38d874e3-f25b-4af2-8c1c-946ab74c1925@lunn.ch>
 <a3fd2b83-93af-4a59-a651-1ffe0dbddbe4@intel.com>
 <dc601a7c-7bb7-4857-8991-43357b15ed5a@lunn.ch>
 <ad026426-f6a4-4581-b090-31ab65fb4782@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ad026426-f6a4-4581-b090-31ab65fb4782@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=u8sbv7OhCWTzdUmHM6hfOPKlrc7untzhQsAD3ri/EUY=; b=hXVfmlFHIk5JMt7p++pZrTxAiP
 6IVs8+h3VpIBOs5t0fMS84AdqOE7ix0d11SXeIewczp3QWbbnW4vqil1lLWY1N5NX3EqBFy3D9Otg
 ujsI5S1ZB9nfaGzP7QR2tpZaIysLJDWVVMLOWxFEAdvFugaBGIcQVS/Pml5RK2yLACP0=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=hXVfmlFH
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
Cc: pabeni@redhat.com, netdev@vger.kernel.org, edumazet@google.com,
 marcin.szycik@linux.intel.com, anthony.l.nguyen@intel.com, idosch@nvidia.com,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Apr 03, 2024 at 03:18:44PM +0200, Wojciech Drewek wrote:
> 
> 
> On 02.04.2024 16:46, Andrew Lunn wrote:
> > On Tue, Apr 02, 2024 at 01:38:59PM +0200, Wojciech Drewek wrote:
> >>
> >>
> >> On 30.03.2024 22:57, Andrew Lunn wrote:
> >>> On Fri, Mar 29, 2024 at 10:23:18AM +0100, Wojciech Drewek wrote:
> >>>> Some ethernet modules use nonstandard power levels [1]. Extend ethtool
> >>>> module implementation to support new attributes that will allow user
> >>>> to change maximum power. Rename structures and functions to be more
> >>>> generic. Introduce an example of the new API in ice driver.
> >>>>
> >>>> Ethtool examples:
> >>>> $ ethtool --show-module enp1s0f0np0
> >>>> Module parameters for enp1s0f0np0:
> >>>> power-min-allowed: 1000 mW
> >>>> power-max-allowed: 3000 mW
> >>>> power-max-set: 1500 mW
> >>>>
> >>>> $ ethtool --set-module enp1s0f0np0 power-max-set 4000
> >>>
> >>> We have had a device tree property for a long time:
> >>>
> >>>   maximum-power-milliwatt:
> >>>     minimum: 1000
> >>>     default: 1000
> >>>     description:
> >>>       Maximum module power consumption Specifies the maximum power consumption
> >>>       allowable by a module in the slot, in milli-Watts. Presently, modules can
> >>>       be up to 1W, 1.5W or 2W.
> >>>
> >>> Could you flip the name around to be consistent with DT?
> >>
> >> Yea, I'm open to any name suggestion although I don't like the unit in the parameter name :) 
> > 
> > That is a DT thing. Helps make the units of an ABI obvious. However,
> > milliwatts is pretty standard with the kernel of user APIs, e.g. all
> > hwmon calls use milliwatts.
> > 
> >>>> minimum-power-allowed: 1000 mW
> >>>> maximum-power-allowed: 3000 mW
> >>>> maximum-power-set: 1500 mW
> >>>
> >>> Also, what does minimum-power-allowed actually tell us? Do you imagine
> >>> it will ever be below 1W because of bad board design? Do you have a
> >>> bad board design which does not allow 1W?
> >>
> >> Yes. in case of QSFP we don't support 1W, 1.5W is the minimum.
> > 
> > So if i plug in a 1W QSFP device, it will let the magic smoke out
> > because it is force fed 1.5W?
> > 
> > Looking at
> > https://www.optcore.net/wp-content/uploads/2017/04/QSFP-MSA.pdf table
> > 7 it indicates different power budget classifications. Power level 1
> > is a Maximum power of 1.5W. So does your parameter represent this?  It
> > is the minimum maximum power? And your other parameter is the maximum
> > maximum power?
> 
> Exactly as you described, minimum-power-allowed is in fact minimum value
> which maximum-power-set can be set to (so minimum maximum). the other
> parameter is maximim maximum.

Table 7 in that document is titled "Power Budget Classification". So
how about

minimum-power-class-allowed: 1000 mW
maximum-power-class-allowed: 3000 mW

	Andrew
