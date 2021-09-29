Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4131641C535
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Sep 2021 15:08:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AC9DA405E0;
	Wed, 29 Sep 2021 13:07:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jjiyLIaPhHgH; Wed, 29 Sep 2021 13:07:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C972D4021E;
	Wed, 29 Sep 2021 13:07:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 95EF31BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 13:07:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 82CB941605
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 13:07:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jdlpr6BCRnVG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Sep 2021 13:07:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C80E7415F8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 13:07:52 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9B56C613DA;
 Wed, 29 Sep 2021 13:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632920872;
 bh=Yukjau1sHLA6B/N3xjvNRV9Olu/CU/SlHx+B5dO3Emw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cCEGI93aXv71iUXZzEJTr2TRq+w3ofeLRCnVE3mfUAwTgmo43LOO/x8xfal4Yn1Ze
 5X71y4uQ8YRh7OnS2bZh3zt5QGH/d+GE6zboUgNaYqlOLi52ms5UVyyxV39ka0MEOc
 Czm7DZiGEiitUVSNqCGOAnAaUcGcngUKxn7fUwdUbP4McZrhBmNWkEdjvdPSpoJgij
 Op8x6hXOiS0e+qrOEdpoSZZBHRkELZgQJCbCuJYraJ3HdQU2dXmtZGQZ7z6+pf+E9p
 00gA9nJxmMWYATc3ehdXmsvfP3HTePMl+KEh7MA/OvrjrQdLZyAiE5oQqMPds3v/pB
 D+ilhSmpvuSsQ==
Date: Wed, 29 Sep 2021 16:07:49 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <YVRlJagqFInXCgGZ@unreal>
References: <cover.1632565508.git.leonro@nvidia.com>
 <66dd7979b44ac307711c382054f428f9287666a8.1632565508.git.leonro@nvidia.com>
 <20210929130226.j53fcztm6utpt3tu@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210929130226.j53fcztm6utpt3tu@skbuf>
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 21/21] net: dsa: Move
 devlink registration to be last devlink command
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Sergey Ryazanov <ryazanov.s.a@gmail.com>,
 Michael Guralnik <michaelgur@mellanox.com>,
 "oss-drivers@corigine.com" <oss-drivers@corigine.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jerin Jacob <jerinj@marvell.com>,
 "GR-everest-linux-l2@marvell.com" <GR-everest-linux-l2@marvell.com>,
 Subbaraya Sundeep <sbhatta@marvell.com>, Ioana Ciornei <ioana.ciornei@nxp.com>,
 "UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>,
 Michael Chan <michael.chan@broadcom.com>, Linu Cherian <lcherian@marvell.com>,
 Intel Corporation <linuxwwan@intel.com>, Tariq Toukan <tariqt@nvidia.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Manish Chopra <manishc@marvell.com>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "linux-staging@lists.linux.dev" <linux-staging@lists.linux.dev>,
 Shannon Nelson <snelson@pensando.io>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Simon Horman <simon.horman@corigine.com>, Jakub Kicinski <kuba@kernel.org>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Satanand Burla <sburla@marvell.com>, Bin Luo <luobin9@huawei.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Loic Poulain <loic.poulain@linaro.org>, Jiri Pirko <jiri@nvidia.com>,
 "drivers@pensando.io" <drivers@pensando.io>,
 "linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>,
 Felix Manlunas <fmanlunas@marvell.com>,
 "GR-Linux-NIC-Dev@marvell.com" <GR-Linux-NIC-Dev@marvell.com>,
 Vadym Kochan <vkochan@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Coiby Xu <coiby.xu@gmail.com>, "David S . Miller" <davem@davemloft.net>,
 Taras Chornyi <tchornyi@marvell.com>, hariprasad <hkelam@marvell.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 M Chetan Kumar <m.chetan.kumar@intel.com>,
 Derek Chickles <dchickles@marvell.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Geetha sowjanya <gakula@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Sep 29, 2021 at 01:02:27PM +0000, Vladimir Oltean wrote:
> Hi Leon,
> 
> On Sat, Sep 25, 2021 at 02:23:01PM +0300, Leon Romanovsky wrote:
> > From: Leon Romanovsky <leonro@nvidia.com>
> >
> > This change prevents from users to access device before devlink
> > is fully configured.
> >
> > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > ---
> >  net/dsa/dsa2.c | 10 ++++------
> >  1 file changed, 4 insertions(+), 6 deletions(-)
> >
> > diff --git a/net/dsa/dsa2.c b/net/dsa/dsa2.c
> > index a020339e1973..8ca6a1170c9d 100644
> > --- a/net/dsa/dsa2.c
> > +++ b/net/dsa/dsa2.c
> > @@ -848,7 +848,6 @@ static int dsa_switch_setup(struct dsa_switch *ds)
> >  	dl_priv = devlink_priv(ds->devlink);
> >  	dl_priv->ds = ds;
> >
> > -	devlink_register(ds->devlink);
> >  	/* Setup devlink port instances now, so that the switch
> >  	 * setup() can register regions etc, against the ports
> >  	 */
> > @@ -874,8 +873,6 @@ static int dsa_switch_setup(struct dsa_switch *ds)
> >  	if (err)
> >  		goto teardown;
> >
> > -	devlink_params_publish(ds->devlink);
> > -
> >  	if (!ds->slave_mii_bus && ds->ops->phy_read) {
> >  		ds->slave_mii_bus = mdiobus_alloc();
> >  		if (!ds->slave_mii_bus) {
> > @@ -891,7 +888,7 @@ static int dsa_switch_setup(struct dsa_switch *ds)
> >  	}
> >
> >  	ds->setup = true;
> > -
> > +	devlink_register(ds->devlink);
> >  	return 0;
> >
> >  free_slave_mii_bus:
> > @@ -906,7 +903,6 @@ static int dsa_switch_setup(struct dsa_switch *ds)
> >  	list_for_each_entry(dp, &ds->dst->ports, list)
> >  		if (dp->ds == ds)
> >  			dsa_port_devlink_teardown(dp);
> > -	devlink_unregister(ds->devlink);
> >  	devlink_free(ds->devlink);
> >  	ds->devlink = NULL;
> >  	return err;
> > @@ -919,6 +915,9 @@ static void dsa_switch_teardown(struct dsa_switch *ds)
> >  	if (!ds->setup)
> >  		return;
> >
> > +	if (ds->devlink)
> > +		devlink_unregister(ds->devlink);
> > +
> >  	if (ds->slave_mii_bus && ds->ops->phy_read) {
> >  		mdiobus_unregister(ds->slave_mii_bus);
> >  		mdiobus_free(ds->slave_mii_bus);
> > @@ -934,7 +933,6 @@ static void dsa_switch_teardown(struct dsa_switch *ds)
> >  		list_for_each_entry(dp, &ds->dst->ports, list)
> >  			if (dp->ds == ds)
> >  				dsa_port_devlink_teardown(dp);
> > -		devlink_unregister(ds->devlink);
> >  		devlink_free(ds->devlink);
> >  		ds->devlink = NULL;
> >  	}
> > --
> > 2.31.1
> >
> 
> Sorry, I did not have time to review/test this change earlier.
> I now see this WARN_ON being triggered when I boot a board:

Sorry about that, it was missed in one of my rebases.
The fix was posted here.
https://lore.kernel.org/all/2ed1159291f2a589b013914f2b60d8172fc525c1.1632916329.git.leonro@nvidia.com

Thanks
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
