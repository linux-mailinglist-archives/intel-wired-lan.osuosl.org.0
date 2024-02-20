Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3997585BEF1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Feb 2024 15:40:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D96EA414A1;
	Tue, 20 Feb 2024 14:40:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7euW_ybKHPfH; Tue, 20 Feb 2024 14:40:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8FE95414B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708440025;
	bh=iiizQyI51jITzT4Y9FB1PoUvVXRX7qZCnb+Qa6MZ8EY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=deg9SN6UeTIpQImFVQzg0FxRITMlOMNoaZ+YOMyHL9BYHUKsG444LJxUhsTCkDtmq
	 Sh2nmRoZM+oxj4lI86FccIPx1dWZ4Jsx3s04MfV8k06RuKaLpfQK9Y13mslaQKb3lk
	 FsN/SGQ7lJ/NPRQuYfjWF40oeZAn2ITozrlelklky4++Q07ZOuYradUPyd2mzwV0mW
	 x4+2p3hsOkl7ZHTt13RHiN1FvGTdP1S2+/GRYI/xv3TFmZVsnMx0eVgzbx7rOzXpWi
	 fMRFYq3dCcIaygCRdpjNXh54xXub2YRcL58owNqeH6+lL79fJHTmMv7n0Dt6WQ64lG
	 sB+r9ajHsxm9Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8FE95414B4;
	Tue, 20 Feb 2024 14:40:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DFEFE1BF306
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 14:40:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CB8AA4066B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 14:40:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J_Mto1__Rbgz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Feb 2024 14:40:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0D79940665
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D79940665
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0D79940665
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 14:40:21 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rcRIA-008I2R-TM; Tue, 20 Feb 2024 15:40:18 +0100
Date: Tue, 20 Feb 2024 15:40:18 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Simon Horman <horms@kernel.org>
Message-ID: <a8b728c0-f191-47d5-b61d-f2c7a9617eeb@lunn.ch>
References: <20240218-keee-u32-cleanup-v4-0-71f13b7c3e60@lunn.ch>
 <20240218-keee-u32-cleanup-v4-2-71f13b7c3e60@lunn.ch>
 <20240220123924.GA40273@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240220123924.GA40273@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=iiizQyI51jITzT4Y9FB1PoUvVXRX7qZCnb+Qa6MZ8EY=; b=xlZXnOWKTx17XVtDLHKy+gjOwG
 Xs6SM6iprYji/Cub/GfOPiYnvj4KZWrn8Gf0ZaKj/tfx23rlWXfn3ujsYDyqv0zP8WOWdy1DNJNfb
 tbj5DvNWGo4cqpujMg6wlIZtyBlSuzk1hQasZqN4qCZNps8nLyjxTtMSZjxLnCqUJ+4U=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=xlZXnOWK
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 2/9] net: usb:
 ax88179_178a: Use linkmode helpers for EEE
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
Cc: Ariel Elior <aelior@marvell.com>, Manish Chopra <manishc@marvell.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Feb 20, 2024 at 12:39:24PM +0000, Simon Horman wrote:
> On Sun, Feb 18, 2024 at 11:06:59AM -0600, Andrew Lunn wrote:
> > Make use of the existing linkmode helpers for converting PHY EEE
> > register values into links modes, now that ethtool_keee uses link
> > modes, rather than u32 values.
> > 
> > Signed-off-by: Andrew Lunn <andrew@lunn.ch>
> > ---
> >  drivers/net/usb/ax88179_178a.c | 9 ++++-----
> >  1 file changed, 4 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/net/usb/ax88179_178a.c b/drivers/net/usb/ax88179_178a.c
> > index d6168eaa286f..d4bf9865d87b 100644
> > --- a/drivers/net/usb/ax88179_178a.c
> > +++ b/drivers/net/usb/ax88179_178a.c
> > @@ -676,21 +676,21 @@ ax88179_ethtool_get_eee(struct usbnet *dev, struct ethtool_keee *data)
> >  					    MDIO_MMD_PCS);
> >  	if (val < 0)
> >  		return val;
> > -	data->supported_u32 = mmd_eee_cap_to_ethtool_sup_t(val);
> > +	mii_eee_cap1_mod_linkmode_t(data->supported, val);
> >  
> >  	/* Get advertisement EEE */
> >  	val = ax88179_phy_read_mmd_indirect(dev, MDIO_AN_EEE_ADV,
> >  					    MDIO_MMD_AN);
> >  	if (val < 0)
> >  		return val;
> > -	data->advertised_u32 = mmd_eee_adv_to_ethtool_adv_t(val);
> > +	mii_eee_cap1_mod_linkmode_t(data->advertised, val);
> >  
> >  	/* Get LP advertisement EEE */
> >  	val = ax88179_phy_read_mmd_indirect(dev, MDIO_AN_EEE_LPABLE,
> >  					    MDIO_MMD_AN);
> >  	if (val < 0)
> >  		return val;
> > -	data->lp_advertised_u32 = mmd_eee_adv_to_ethtool_adv_t(val);
> > +	mii_eee_cap1_mod_linkmode_t(data->lp_advertised, val);
> >  
> >  	return 0;
> >  }
> > @@ -698,7 +698,7 @@ ax88179_ethtool_get_eee(struct usbnet *dev, struct ethtool_keee *data)
> >  static int
> >  ax88179_ethtool_set_eee(struct usbnet *dev, struct ethtool_keee *data)
> >  {
> > -	u16 tmp16 = ethtool_adv_to_mmd_eee_adv_t(data->advertised_u32);
> > +	u16 tmp16 = linkmode_to_mii_eee_cap1_t(data->advertised);
> >  
> >  	return ax88179_phy_write_mmd_indirect(dev, MDIO_AN_EEE_ADV,
> >  					      MDIO_MMD_AN, tmp16);
> > @@ -1663,7 +1663,6 @@ static int ax88179_reset(struct usbnet *dev)
> >  	ax88179_disable_eee(dev);
> >  
> >  	ax88179_ethtool_get_eee(dev, &eee_data);
> > -	eee_data.advertised_u32 = 0;
> 
> Hi Andrew,
> 
> could you clarify why advertised no longer needs to be cleared?

Ah, that is me being too delete happy. When the ethtool core calls
into the driver for eee_get(), it first zeros the structure passed
in. Some drivers than again zeroed members, so i deleted them.

However, this is not a eee_get() call, eee_data is actually a stack
variable. ax88179_ethtool_get_eee() has set it, so it is at least not
random junk. But the intention here is to not advertise any EEE link
modes until the user calls set_eee(). So this zero'ing is needed.

Good catch, thanks.

    Andrew

---
pw-bot: cr
