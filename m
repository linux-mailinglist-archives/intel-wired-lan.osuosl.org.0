Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB644440A9A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Oct 2021 19:29:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 80540401D5;
	Sat, 30 Oct 2021 17:29:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U9-opgyeDLda; Sat, 30 Oct 2021 17:29:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 130DD4011B;
	Sat, 30 Oct 2021 17:29:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4A85D1BF29C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Oct 2021 17:28:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 43062401CF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Oct 2021 17:28:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=lunn.ch
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ceLpROgsfJuS for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Oct 2021 17:28:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 423CE40164
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Oct 2021 17:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
 In-Reply-To:References; bh=qSnpWGGvvjnttitScwTe0AAALZ248QHVMiQQ5+eas2c=; b=lB
 GQBsFklnv40nc9JAplJ9DVsJ4nZqPkiGPW9E72okFc3f2pIptFcq/T/HSBWWguSuQRmkRxXfB3GXm
 TOyvi5g0c6pv11bES3/UU7r/ahN7tIlpmy/TZ7X/57dX/R2XeQwiotksxbz9kb+Auki2OZnqmdeJL
 dba+8GhHt4CFi4w=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1mgs9n-00CBlM-OC; Sat, 30 Oct 2021 19:28:39 +0200
Date: Sat, 30 Oct 2021 19:28:39 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Cyril Novikov <cnovikov@lynx.com>
Message-ID: <YX2Ax364TiC7ngjI@lunn.ch>
References: <81be24c4-a7e4-0761-abf4-204f4849b6eb@lynx.com>
 <89af2e39-fe5c-c285-7805-8c7a6a5a2e51@molgen.mpg.de>
 <df9504c8-bdfd-9cc0-d002-f1e59f57a79b@lynx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <df9504c8-bdfd-9cc0-d002-f1e59f57a79b@lynx.com>
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: set X550 MDIO speed before
 talking to PHY
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Oct 29, 2021 at 04:06:26PM -0700, Cyril Novikov wrote:
> On 10/28/2021 11:47 PM, Paul Menzel wrote:
> > Dear Cyril,
> > =

> > =

> > On 29.10.21 03:03, Cyril Novikov wrote:
> > > The MDIO bus speed must be initialized before talking to the PHY the
> > > first
> > > time in order to avoid talking to it using a speed that the PHY doesn=
't
> > > support.
> > > =

> > > This fixes HW initialization error -17 (IXGBE_ERR_PHY_ADDR_INVALID) on
> > > Denverton CPUs (a.k.a. the Atom C3000 family) on ports with a 10Gb
> > > network
> > > plugged in. On those devices, HLREG0[MDCSPD] resets to 1, which combi=
ned
> > > with the 10Gb network results in a 24MHz MDIO speed, which is apparen=
tly
> > > too fast for the connected PHY. PHY register reads over MDIO bus retu=
rn
> > > garbage, leading to initialization failure.
> > =

> > Maybe add a Fixes tag?
> =

> This is my first patch submission for Linux kernel.

Welcome to the community.

> What I read about the
> Fixes tag says it identifies a previous commit that had introduced the bu=
g.
> I have no idea which commit introduced this bug. We saw it in 4.19 which
> probably means the bug was always there and is not a regression. It's also
> quite possible the original commit was correct for the hardware existing =
at
> that time and it only started behaving incorrectly with new hardware, so =
it
> wasn't actually a bug at the time it was submitted. I also don't have the
> capability or time to bisect this problem.

From how you describe it, i assume the issue is present for any 10G
links? git blame suggests:

e84db7272798e (Mark Rustad         2016-04-01 12:18:30 -0700 3357) static v=
oid ixgbe_set_mdio_speed(struct ixgbe_hw *hw)
e84db7272798e (Mark Rustad         2016-04-01 12:18:30 -0700 3358) {
e84db7272798e (Mark Rustad         2016-04-01 12:18:30 -0700 3359)      u32=
 hlreg0;
e84db7272798e (Mark Rustad         2016-04-01 12:18:30 -0700 3360) =

e84db7272798e (Mark Rustad         2016-04-01 12:18:30 -0700 3361)      swi=
tch (hw->device_id) {
e84db7272798e (Mark Rustad         2016-04-01 12:18:30 -0700 3362)      cas=
e IXGBE_DEV_ID_X550EM_X_10G_T:
a83c27e79068c (Don Skidmore        2016-08-17 17:34:07 -0400 3363)      cas=
e IXGBE_DEV_ID_X550EM_A_SGMII:
a83c27e79068c (Don Skidmore        2016-08-17 17:34:07 -0400 3364)      cas=
e IXGBE_DEV_ID_X550EM_A_SGMII_L:
92ed84300718d (Don Skidmore        2016-08-17 20:34:40 -0400 3365)      cas=
e IXGBE_DEV_ID_X550EM_A_10G_T:

commit e84db7272798ed8abb2760a3fcd9c6d89abf99a5
Author: Mark Rustad <mark.d.rustad@intel.com>
Date:   Fri Apr 1 12:18:30 2016 -0700

    ixgbe: Introduce function to control MDIO speed
    =

    Move code that controls MDIO speed into a new function because
    there will be more MACs that need the control.
    =

    Signed-off-by: Mark Rustad <mark.d.rustad@intel.com>
    Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
    Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>

So the fixes would be

Fixes: e84db7272798 ("ixgbe: Introduce function to control MDIO speed")

> > > Signed-off-by: Cyril Novikov <cnovikov@lynx.com>
> > > ---
> > > =A0 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 3 +++
> > > =A0 1 file changed, 3 insertions(+)
> > > =

> > > Reproduced with Linux kernel 4.19 and 5.15-rc7. Can be reproduced usi=
ng
> > > the following setup:
> > > =

> > > * Use an Atom C3000 family system with at least one X550 LAN on the S=
oC
> > > * Disable PXE or other BIOS network initialization if possible
> > > =A0=A0 (the interface must not be initialized before Linux boots)
> > > * Connect a live 10Gb Ethernet cable to an X550 port
> > > * Power cycle (not reset, doesn't always work) the system and boot Li=
nux
> > > * Observe: ixgbe interfaces w/ 10GbE cables plugged in fail with
> > > error -17
> > =

> > Why not add that to the commit message?
> =

> I wasn't sure if the reproduction scenario belonged to the commit message,
> and have no problem adding it if you believe it does.

> > =

> > Is `ixgbe_set_mdio_speed(hw)` at the end of the function then still nee=
ded?
> =

> The code between the two calls issues a global reset to the MAC and
> optionally the link, depending on some flags. That may reset the MDIO spe=
ed
> back to the wrong value or, according to the comments in the code, may re=
set
> the PHY and result in renegotiation and a different link speed. So, the M=
DIO
> speed setting may require an adjustment. Even if it actually doesn't at t=
he
> moment, doing the second call makes the code robust to future software and
> hardware changes.

This is useful information to put in the commit message.

When writing commit messages, try to also think from the perspective
of the person doing the review. What questions are the reviewers
likely to ask, and can those questions be answered in the commit
message, rather than having them asked on the list?

Another use case of the commit message is when it turns out a change
causes a regression. It happens sometimes, and including information
about how you tested your change can be useful for helping fix the
regression. It allows whoever is fixing the regression to also test
your case, or at least something similar.

So in general, more information in the commit messages is better than
less.

     Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
