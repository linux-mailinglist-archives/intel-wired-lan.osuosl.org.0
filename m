Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F10403FDA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Sep 2021 21:34:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 761B240520;
	Wed,  8 Sep 2021 19:34:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c8QukzuVR6x8; Wed,  8 Sep 2021 19:34:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4D266404E8;
	Wed,  8 Sep 2021 19:34:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 12C841BF397
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 19:34:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F39D1404E8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 19:34:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3b29njdRBdLT for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Sep 2021 19:34:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8ACD2404D3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 19:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=wG0AizuO6T6qrVpHznU9oWqFw6pLbhFAzQyn8tO7V84=; b=Esv0pT9h0DpGReEp/nWE2CYQPl
 RWRzzbmoFE0xrRcl3sCxKiw5F1d5pg/tCyNDt6+Qyp4wbIo+3xNwnFHq4GTk0E0Cs78EZUUGOIZ7Y
 eBrJYCvgVrd1r5V1rG2BGlZR4CvoZ4HmRQ8K8EBPx2sUZxSpcnmLb0TBFe9XbBIMsmz8=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1mO3LB-005nat-Fx; Wed, 08 Sep 2021 21:34:37 +0200
Date: Wed, 8 Sep 2021 21:34:37 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Message-ID: <YTkQTQM6Is4Hqmxh@lunn.ch>
References: <20210906113925.1ce63ac7@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB49511F2017F48BBAAB2A065CEAD29@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210906180124.33ff49ef@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB495152B03F32A5A17EDB2F6CEAD39@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210907075509.0b3cb353@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB49512C265E090FC8741D8510EAD39@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210907124730.33852895@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB495169997552152891A69B57EAD49@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210908092115.191fdc28@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB4951AA3C65DD8E7612F5F396EAD49@PH0PR11MB4951.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <PH0PR11MB4951AA3C65DD8E7612F5F396EAD49@PH0PR11MB4951.namprd11.prod.outlook.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] rtnetlink: Add new
 RTM_GETEECSTATE message to get SyncE status
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
Cc: Michal Kubecek <mkubecek@suse.cz>, Florian Fainelli <f.fainelli@gmail.com>,
 "abyagowi@fb.com" <abyagowi@fb.com>, Saeed Mahameed <saeed@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 Ido Schimmel <idosch@idosch.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Michael Chan <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> > > The SyncE API considerations starts ~54:00, but basically we need API for:
> > > - Controlling the lane to pin mapping for clock recovery
> > > - Check the EEC/DPLL state and see what's the source of reference
> > frequency
> > > (in more advanced deployments)
> > > - control additional input and output pins (GNSS input, external inputs,
> > recovered
> > >   frequency reference)

Now that you have pointed to a datasheet...

> - Controlling the lane to pin mapping for clock recovery

So this is a PHY property. That could be Linux driving the PHY, via
phylib, drivers/net/phy, or there could be firmware in the MAC driver
which hides the PHY and gives you some sort of API to access it.

> Check the EEC/DPLL state and see what's the source of reference
> frequency

Where is the EEC/DPLL implemented? Is it typically also in the PHY? Or
some other hardware block?

I just want to make sure we have an API which we can easily delegate
to different subsystems, some of it in the PHY driver, maybe some of
it somewhere else.

Also, looking at the Marvell datasheet, it appears these registers are
in the MDIO_MMD_VEND2 range. Has any of this been specified? Can we
expect to be able to write a generic implementation sometime in the
future which PHY drivers can share?

I just looked at a 1G Marvell PHY. It uses RGMII or SGMII towards the
host. But there is no indication you can take the clock from the SGMII
SERDES, it is only the recovered clock from the line. And the
recovered clock always goes out the CLK125 pin, which can either be
125MHz or 25MHz.

So in this case, you have no need to control the lane to pin mapping,
it is fixed, but do we want to be able to control the divider?

Do we need a mechanism to actually enumerate what the hardware can do?

Since we are talking about clocks and dividers, and multiplexors,
should all this be using the common clock framework, which already
supports most of this? Do we actually need something new?

       Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
