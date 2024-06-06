Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5694A8FF0EB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jun 2024 17:41:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1EEB481EF8;
	Thu,  6 Jun 2024 15:41:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HMPa4nwb6sW7; Thu,  6 Jun 2024 15:41:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0A8D81F0A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717688495;
	bh=HtCXOhY+1iqYPYRg3w33pyQ6Llz91ckac8NBDvTBJTs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7iKXHlSFK2mNvApXGbMfreCs0TD4ccSdI+t8/21BYuEQfK3CzQrrJJpoStL5D9Hzn
	 DtCp1J2OGX8osW55NbbNiWhsiVM20raQ21uwqHWCauoRz5u8r6hIpv5EIweTQwXtXV
	 wlU6VYkZ3Ao4toFICuQ9Cbr5+7QU6RJn9IdvZDMaSoB51PXVeSc3MevlMLenLGmsHV
	 DO2mbciD0BwVSoTOO7n7MM4JOwHDcSogF7yFa/kXiGYw4EQX0GcuwPJ0DE2cVujtJ/
	 a4cM92J0Z8+q/5l6K5AE+NebfEv8qMqPoOVYnEhkMJYfT30XOoVg92c0yU/aqcpMyh
	 Kpzb8ucrGijyA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A0A8D81F0A;
	Thu,  6 Jun 2024 15:41:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 559591BF584
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 15:41:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4D7974241B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 15:41:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KGn-pU4CXu6W for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jun 2024 15:41:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C346F42406
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C346F42406
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C346F42406
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 15:41:31 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1sFFEu-00H22T-Eg; Thu, 06 Jun 2024 17:41:20 +0200
Date: Thu, 6 Jun 2024 17:41:20 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <1dbb8291-9004-4ec2-a01b-9dd5b2a8be39@lunn.ch>
References: <20240604031020.2313175-1-jackie.jone@alliedtelesis.co.nz>
 <ad56235d-d267-4477-9c35-210309286ff4@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ad56235d-d267-4477-9c35-210309286ff4@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=HtCXOhY+1iqYPYRg3w33pyQ6Llz91ckac8NBDvTBJTs=; b=fhC17j66D6okl9Nhe1UBE3BnQZ
 7bLWt+spJnQsF5zMdnj9XdW9NlWojYvCHJDZK5NIn5xqQwQ5FjtmHoaYpTb7XJRVqU9pxjSlPnrOI
 3aKO6dik/sUTbC5Mlq4MkQshpvCpIvgN++RXAaZr78AVYEGepPQxlFRqv/RhGK9PiZ8U=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=fhC17j66
Subject: Re: [Intel-wired-lan] [PATCH] igb: Add MII write support
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
Cc: jackie.jone@alliedtelesis.co.nz, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, chris.packham@alliedtelesis.co.nz,
 anthony.l.nguyen@intel.com, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 05, 2024 at 01:51:24PM -0700, Jacob Keller wrote:
> 
> 
> On 6/3/2024 8:10 PM, jackie.jone@alliedtelesis.co.nz wrote:
> > From: Jackie Jone <jackie.jone@alliedtelesis.co.nz>
> > 
> > To facilitate running PHY parametric tests, add support for the SIOCSMIIREG
> > ioctl. This allows a userspace application to write to the PHY registers
> > to enable the test modes.
> > 
> > Signed-off-by: Jackie Jone <jackie.jone@alliedtelesis.co.nz>
> > ---
> >  drivers/net/ethernet/intel/igb/igb_main.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> > index 03a4da6a1447..7fbfcf01fbf9 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_main.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> > @@ -8977,6 +8977,10 @@ static int igb_mii_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
> >  			return -EIO;
> >  		break;
> >  	case SIOCSMIIREG:
> > +		if (igb_write_phy_reg(&adapter->hw, data->reg_num & 0x1F,
> > +				     data->val_in))
> > +			return -EIO;
> > +		break;
> 
> A handful of drivers seem to expose this. What are the consequences of
> exposing this ioctl? What can user space do with it?

User space can break the PHY configuration, cause the link to fail,
all behind the MAC drivers back. The generic version of this call
tries to see what registers are being written, and update state:

https://elixir.bootlin.com/linux/latest/source/drivers/net/phy/phy.c#L325

But you can still break it.

> It looks like a few drivers also check something like CAP_NET_ADMIN to
> avoid allowing write access to all users. Is that enforced somewhere else?

Only root is allowed to use it. So it is a classic 'You have the
option to shoot yourself in the foot'.

For the use case being talked about here, there has been a few emails
one the list about implementing the IEEE 802.3 test modes. But nobody
has actually got around to doing it. Not that it would help in this
case, Intel don't use the Linux PHY drivers, which is where i would
expect to see such code implemented first. Maybe if the "Great Intel
Ethernet driver refactoring" makes progress, it could swap to using
the Linux PHY drivers.

      Andrew
