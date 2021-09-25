Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18BB74180ED
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Sep 2021 12:01:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 537B94035B;
	Sat, 25 Sep 2021 10:01:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1or6bSbWKEad; Sat, 25 Sep 2021 10:01:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 21A5A4034A;
	Sat, 25 Sep 2021 10:01:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 540001BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 10:01:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4EEA3404F3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 10:01:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zrtb84qpE_hn for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Sep 2021 10:01:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CE671404EF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 10:01:33 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8A581610C7;
 Sat, 25 Sep 2021 10:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632564093;
 bh=vUQvWAePLzdLRZc+ChBxFiJ4phqK0Y1Dzy6kDhpJQjQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=D0RfZDMUicf0Nrzi/I154oj+a7L6krXbMFxL6f7OAeo8Z04aUeN1Hx0PsYmQj/rhd
 JU4tYtwi9tTNK7v4dxzx0tns/ms73lEwQhhWWb8TPCMXPSjXjl3RE+6mheH6ORhiIY
 exH7Mhs4jo2IWpb2FgIbU9j5E0vf6zlwGKSJarVLrxpJ5jpuQhQeCKoFstG1MrxkWy
 wuvhA56lJq/ntXQfDpjKsrb1LcA52GxnQGFmFLSHAoIiCSCUkhMLD3675/Av/t+N2q
 5UFJR6wtk3Q+HYEssMyA1zsvkPZW3eS2KBqQp+rE7h0mhFCeMlD7obG50wFu5gsBBh
 FuSDkIKvRepsg==
Date: Sat, 25 Sep 2021 13:01:29 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Edwin Peer <edwin.peer@broadcom.com>
Message-ID: <YU7zeca8AsJwQTsD@unreal>
References: <cover.1632420430.git.leonro@nvidia.com>
 <e7708737fadf4fe6f152afc76145c728c201adad.1632420430.git.leonro@nvidia.com>
 <CAKOOJTz4A2ER8MQE1dW27Spocds09SYafjeuLcFDJ0nL6mKyOw@mail.gmail.com>
 <YU0JlzFOa7kpKgnd@unreal>
 <20210923183956.506bfde2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAKOOJTwh6TnNM4uSM2rbaij=xO92UzF2hs11pgOFUniOb3HAkA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKOOJTwh6TnNM4uSM2rbaij=xO92UzF2hs11pgOFUniOb3HAkA@mail.gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/6] bnxt_en: Check devlink
 allocation and registration status
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
Cc: Igor Russkikh <irusskikh@marvell.com>, Alexander Lobakin <alobakin@pm.me>,
 Javed Hasan <jhasan@marvell.com>,
 Michal Kalderon <michal.kalderon@marvell.com>, linux-scsi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Jiri Pirko <jiri@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Ariel Elior <aelior@marvell.com>, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Vasundhara Volam <vasundhara-v.volam@broadcom.com>,
 Sathya Perla <sathya.perla@broadcom.com>,
 Michael Chan <michael.chan@broadcom.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Saurav Kashyap <skashyap@marvell.com>, netdev <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 GR-QLogic-Storage-Upstream@marvell.com,
 "David S . Miller" <davem@davemloft.net>, GR-everest-linux-l2@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Sep 24, 2021 at 10:20:32AM -0700, Edwin Peer wrote:
> On Thu, Sep 23, 2021 at 6:39 PM Jakub Kicinski <kuba@kernel.org> wrote:
> 
> > On Fri, 24 Sep 2021 02:11:19 +0300 Leon Romanovsky wrote:
> > > > minor nit: There's obviously nothing incorrect about doing this (and
> > > > adding the additional error label in the cleanup code above), but bnxt
> > > > has generally adopted a style of having cleanup functions being
> > > > idempotent. It generally makes error handling simpler and less error
> > > > prone.
> > >
> > > I would argue that opposite is true. Such "impossible" checks hide unwind
> > > flow errors, missing releases e.t.c.
> >
> > +1, fwiw
> 
> I appreciate that being more explicit can improve visibility, but it
> does not make error handling inherently less error prone, nor is it
> simpler (ie. the opposite isn't true). Idempotency is orthogonal to
> unwind flow or the presence or not of a particular unwind handler (one
> can still enforce either in review). But, if release handlers are
> independent (most in bnxt are), then permitting other orderings can be
> perfectly valid and places less burden on achieving the canonical form
> for correctness (ie. usage is simpler and less error prone). That's
> not to say we should throw caution to the wind and allow arbitrary
> unwind flows, but it does mean certain mistakes don't result in actual
> bugs. There are other flexibility benefits too. A single, unwind
> everything, handler can be reused in more than one context.

And this is where the fun begins. Different context means different
lifetime expectations, maybe need of locking and unpredictable flows
from reader perspective.

For example, in this devlink case, it took me time to check all driver
to see that pf can't be null. 

The idea that adding code that maybe will be used can be seen as
anti-pattern.

Thanks
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
