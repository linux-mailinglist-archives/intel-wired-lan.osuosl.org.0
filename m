Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EABAA5E758
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 23:25:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B171882345;
	Wed, 12 Mar 2025 22:25:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gn_0V9M-URNL; Wed, 12 Mar 2025 22:25:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D3A0A8236B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741818342;
	bh=rBuXBus5iFIGWKaTiHoIllR3Mb8mgIIt7od8i9FpuGI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2dy0L+1xj4AP0G7ACojFDul1E+WCt/Rf6tCJ4aZfTVz/4whkUMdTG+rhNV8oIhl5S
	 y8kq5zCa5RJfDUgHZy8Otqu/Xh4lMa7ALN1qMMPVzsF06o6xiL4mRfOfVYWCEqPP3T
	 w5c2rWo8huTFt3BpY5X5oeG7Ab2Gc2hl26uJlzzksg/pHPKywkHm7A9OOXuI/CExI0
	 ubdto1lOwByPBpb8MbtZJos3EoH2NF34U64PAQWbbn3Cp7MAKgLLop/tgDUeGL5WSB
	 1F2+fNnm9m1TbSdUgF2SGcUvQgobJMHNze2cSNFMz6CQ2CYYSwa3rM9gZD7x4G5x5N
	 T01zkZEFySXeQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D3A0A8236B;
	Wed, 12 Mar 2025 22:25:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8FF53128
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 22:25:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7F4A041430
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 22:25:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2RZkxtTOUD6j for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 22:25:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 552664142E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 552664142E
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 552664142E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 22:25:39 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1tsUW2-004noa-Bs; Wed, 12 Mar 2025 23:25:30 +0100
Date: Wed, 12 Mar 2025 23:25:30 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Hamish Martin <Hamish.Martin@alliedtelesis.co.nz>
Cc: "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Message-ID: <0486c877-cbb4-411b-9bd6-9b10306c47a6@lunn.ch>
References: <20250312032251.2259794-1-hamish.martin@alliedtelesis.co.nz>
 <eae8e09c-f571-4016-b11d-88611a2b368f@lunn.ch>
 <9455a623aaeb08999eec9202459d266f22432c00.camel@alliedtelesis.co.nz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9455a623aaeb08999eec9202459d266f22432c00.camel@alliedtelesis.co.nz>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=rBuXBus5iFIGWKaTiHoIllR3Mb8mgIIt7od8i9FpuGI=; b=f15VbVfmYohFagLD6N1ENLriN7
 BCnq2HcMX86RPea0zDYsjyczMHzDCsgPfqgiQDuBuohrzF8+0Wo2wspeGj0gLTP1piaVAG2ANtjVX
 Gk4VSqg6aqEyfsjoVyMi5lc2YGaYCORMaTtnS2eCxn08QhDmoj9e1U2dAcmCo8fUOYIc=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=f15VbVfm
Subject: Re: [Intel-wired-lan] [PATCH net] igb: Prevent IPCFGN write
 resetting autoneg advertisement register
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Hi Andrew,
> 
> Thanks for your feedback. I'll try and give more detail about what's
> happening with a concrete example.
> 
> If we start with the device in a state where it is advertising:
> 1000BaseT Full
> 100baseT Full
> 100baseT Half
> 10baseT Full
> 10baseT Half
> I see the following settings in the autoneg related registers:
> 0.4 = 0x0de1 (PHY_AUTONEG_ADV)
> 0.9 = 0x0200 (PHY_1000T_CTRL)
> 
> EEE is disabled.
> 
> If I then adjust the advertisement to only advertise 1000BaseT Full and
> 100baseT Full with:
> # ethtool -s eth0 advertise 0x28
> I see the following writes to the registers:
> 1. In igb_phy_setup_autoneg() PHY_AUTONEG_ADV is written with 0x0101
> (the correct value)
> 2. Later in igb_phy_setup_autoneg() PHY_1000T_CTRL is written with
> 0x0200 (correct)
> 3. Autoneg gets restarted in igb_copper_link_autoneg() with PHY_CONTROL
> (0.0) being written with 0x1340
> (everything looks fine up until here)
> 4. Now we reach igb_set_eee_i350(). Here we read in IPCNFG and it has
> value 0xf. EEE is disabled so we hit the 'else' case and remove
> E1000_IPCNFG_EEE_1G_AN and E1000_IPCNFG_EEE_100M_AN from the 'ipcnfg'
> value. We then write this back as 0x3. At this point, if you re-read
> PHY_AUTONEG_ADV you will see it's contents has been reset to 0x0de1.

Thanks for the additional details. These should go into the commit
message.

> If you run the same example above but with EEE enabled (ethtool --set-
> eee eth0 eee on; ethtool -s eth0 advertise 0x28) the issue is not seen.
> In this case the contents of IPCNFG are written back unmodified as 0xf.
> This seems important to avoid the bug.

Yes, it does seem like the PHY is broken. 

> 
> It seems that any case where EEE is disabled will lead to the
> undesirable behaviour where the contents of PHY_AUTONEG_ADV is reset to
> 0x0de1. The key trigger for this appears to be changes to either or
> both of EEE_100M_AN and EEE_1G_AN in IPCNFG. The datasheet does note
> that "Changing value of bit causes link drop and re-negotiation"

Which is what you would expect, since EEE is negotiated. But
implicitly changing the link modes advertised is not what you would
expect.

By the way, what PHY is this? I don't remember seeing any errata for
Linux PHY drivers resembling this.

> What's your opinion on that less invasive fix (i.e remove "ipcnfg &=
> ~(E1000_IPCNFG_EEE_1G_AN | E1000_IPCNFG_EEE_100M_AN);" )? Is it
> sufficient to rely on the EEER settings to control disabling EEE with
> the IPCNFG register still set to advertise those modes?

I actually think you need to do more testing. Assuming the PHY is not
even more broken than we think, it should not matter if it advertises
EEE mode for link modes which are not advertised. The link partner
should ignore them. It would be good if you tested out various EEE
combinations from both link partners sides.

However, setting EEE advertisement and then always setting link mode
advertisement does seem like a good workaround. It would however be
good to get some sort of feedback from the PHY silicon vendor about
this odd behaviour.

	Andrew
