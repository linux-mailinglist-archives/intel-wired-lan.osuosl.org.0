Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 288BA898947
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 15:54:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7738417C4;
	Thu,  4 Apr 2024 13:54:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fu3DoZJRlfWS; Thu,  4 Apr 2024 13:54:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 49D4F417A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712238841;
	bh=hmWmHREKqogw3d0DbxNAb2MrhApA1IcAFR4uCegy1A4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nmsFC2VX2OYEmOLJJH+w4sGH7fwFMuPU4BRlmIRJPneP1PcUr7DMEMYpuuFoUkqIf
	 IaYkL1ukWLG2sXpE1RYOU7cIZFp5Up6Xw2rLMe5wXcwmBDF7uYfZCastuLSNW5l59E
	 S9ke8sL2rbBuTa0sOEUYzfARUAsnrQMqGE8EpESEcwgD2mVNEWPws7gnZ9m2NhDxbj
	 xyISInsxAEYCVpzXIFipKyFK9IMslL9TnW7ABclrrfEVnnX80w1iGeFmSeLBAzKciG
	 lzJXG8oB5+ccg4FUOJRmiblLK0Wm/UPDz/fw5vYkuqS2IqjHbQTU/3BkKznxuGadC3
	 Tf2oDXPsFZS0Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 49D4F417A2;
	Thu,  4 Apr 2024 13:54:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 98F381BF368
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 13:53:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7D07B417BC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 13:53:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YWYgoS8mpFMq for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Apr 2024 13:53:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4D2EA417A2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D2EA417A2
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4D2EA417A2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 13:53:57 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rsNXE-00CBkg-LT; Thu, 04 Apr 2024 15:53:44 +0200
Date: Thu, 4 Apr 2024 15:53:44 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <e4224da7-0a09-41b7-b652-bf651cfea0d0@lunn.ch>
References: <20240329092321.16843-1-wojciech.drewek@intel.com>
 <38d874e3-f25b-4af2-8c1c-946ab74c1925@lunn.ch>
 <a3fd2b83-93af-4a59-a651-1ffe0dbddbe4@intel.com>
 <dc601a7c-7bb7-4857-8991-43357b15ed5a@lunn.ch>
 <ad026426-f6a4-4581-b090-31ab65fb4782@intel.com>
 <61a89488-e79a-4175-8868-3de36af7f62d@lunn.ch>
 <206686dc-c39b-4b52-a35c-914b93fe3f36@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <206686dc-c39b-4b52-a35c-914b93fe3f36@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=hmWmHREKqogw3d0DbxNAb2MrhApA1IcAFR4uCegy1A4=; b=siCxvmBCjgdLCV9W1+R7c5OGmN
 STRqQ6L9IMxedQHVl0XjQ6n1cQtNCajb7yVw/KntjwRPmXCfy8RCd8zjpJOtKgX4SpH/WH3Fk5llS
 HcqBfjYpVrAQoqSqzjMeT1sC+R70ZHhYqXFLyWqFD09FWMWyCeZr/zxeUdKGx3nUNqDI=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=siCxvmBC
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

On Thu, Apr 04, 2024 at 02:45:43PM +0200, Wojciech Drewek wrote:
> 
> 
> On 03.04.2024 15:49, Andrew Lunn wrote:
> >>> $ ethtool --set-module enp1s0f0np0 power-max-set 4000
> >>>
> >>> actually talk to the SFP module and tell it the maximum power it can
> >>> consume. So in this case, it is not the cage, but the module?
> >>
> >> It does not work that way in ice example.
> >>>
> >>> Or is it talking to some entity which is managing the overall power
> >>> consumption of a number of cages, and asking it to allocate a maximum
> >>> of 4W to this cage. It might return an error message saying there is
> >>> no power budget left?
> >>
> >> That's right, we talk to firmware to set those restrictions.
> >> In the ice implementation, the driver is responsible for checking if the
> >> overall board budget is not exceeded.
> > 
> > So i can get the board to agree that the cage can supply 3W to the
> > module, but how do i then tell the module this?
> 
> I'd assume it is not possible, if the module consumes more power
> than maximum than the link will not come up and error will be printed.

Take a look at the Linux SFP driver. In sfp_probe() is reads the DT
property maximum-power-milliwatt:

https://elixir.bootlin.com/linux/latest/source/drivers/net/phy/sfp.c#L3030

When the module is inserted and probed, the modules power capabilities
are read from the EEPROM:

https://elixir.bootlin.com/linux/latest/source/drivers/net/phy/sfp.c#L2320

https://elixir.bootlin.com/linux/latest/source/drivers/net/phy/sfp.c#L1929

The code looks to see what conformance level the module has, so to
know if it even supports different power levels, and the registers
needed have been implemented.

Later, the SFP state machine will transition the module to higher
power:
https://elixir.bootlin.com/linux/latest/source/drivers/net/phy/sfp.c#L1995

by writing a register in the SFP.

> > I would also suggest you don't focus too much on ICE. I find it better
> > to think about an abstract system. A board with a power supply to a
> > number of SFP cages, and some cages have modules in them. What does
> > the kAPI look like, the use cases for this abstract system.
> 
> My design for this API is to have an option to get and set maximum
> power that the module in the cage can consume. It's not about modifying
> module's power consumption, it's about setting restrictions for it.
> 
> The use case is to let the user change maximum power in the given cage
> (so he can plug in the module with higher power consumption). Before that
> he will lower maximum power in different cage. Thanks to that the overall
> budget for the board won't be exceeded. Does it make sense for the abstract
> system you described?

So there are a few different phases here. The standard says the module
start up in low power mode.

Something needs to enumerate what the module actually supports in
terms of different power modes.

Something then needs to determine if the board/cage can support higher
power operation, that there is sufficient power budged. Budget then
needs to be allocated to the cage.

Lastly, the module needs to be told it can go to a higher power level.

I would say the current Linux SFP code is overly simple, by design. It
supports the concept of cage supplied by a dedicated regulator. There
is no sharing of power across a number of cages. Hence it just ups the
power if the board indicates the power is available and the module
support a higher power level.

However, you have a more complex setup, shared power supplies,
etc. The policy of what modules gets how much power should come from
user space. So we need user space APIs for this, and a clear
understanding of how they work. Please could you describe how i would
use ethtool to go through these phases. And how do i down grade a
modules power consumption to make more power available to another
module.

	Andrew

