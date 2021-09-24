Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 880CF4179CC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Sep 2021 19:21:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7D25C40780;
	Fri, 24 Sep 2021 17:21:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fYhsm-6v55QD; Fri, 24 Sep 2021 17:21:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 001C440772;
	Fri, 24 Sep 2021 17:21:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BD4D51BF4D6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Sep 2021 17:21:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AC04583FBA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Sep 2021 17:21:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=broadcom.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SmvZwE4BscF5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Sep 2021 17:21:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com
 [IPv6:2607:f8b0:4864:20::b33])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 93FA983F8C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Sep 2021 17:21:10 +0000 (UTC)
Received: by mail-yb1-xb33.google.com with SMTP id r4so7252203ybp.4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Sep 2021 10:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=s4aBU9hVptJACVXCGvcssMyH4GtcIwSagpPyw2kwXkY=;
 b=Qg8lIckWZ6QdcUhs3oi3WYUQvebJvsPzGz4Ggd06zDmyXsPv09i+j1hxlq89HJeAJ4
 jpzTkzF0TfKy2qFxodY3KTvJRuSt14izCkjmyfQkjMz+JRK0lD5W9hrdCB7i8GvS3DTy
 RueUXWzAodwjLjwYjQgS7Igq2UQlJAOrDs2Uc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s4aBU9hVptJACVXCGvcssMyH4GtcIwSagpPyw2kwXkY=;
 b=LbP+9lvZoQIWzxJ1EFLVNqS65od8QFXn9h2zHtGdmQt6C4wC4IogKCnsdzVCW98zXW
 5GPH/yOOWrkUslJpaGChPb6uiKSU8dInFaXoo4yTTfkcuDcM1aCdTvQ9Td37EO4XaXKF
 yy5kI1vyfNql5u5sHaLZDcLYNh6s8cYs4tJOetVpLU8c5j0Wx6Lb4e8HRYc251L15Jmi
 yBL3to3YN3jktGBPZ0mLEhFpv6V7LLO9320tiGFiorO/rYpmh2aJNsi1P/wTFijYqupL
 qSTLvAbxqBS+cCkGQLnYjIesh408grS3bqHQf395pF2gtA++WmQjbEAo9/TT3POl8Wi4
 qokQ==
X-Gm-Message-State: AOAM533V2JRqr0x/z0w/kGaubzj6vvpRivFCjqb8vWOZcG71kghJY1SW
 1AF/owY+7y9apAi/kjXC2I+t0HA5Ti+NwVMYZQaCzw==
X-Google-Smtp-Source: ABdhPJw7sidVyzpxBf4Z23QuW71wp38GW2fuO1RQ+xJSKeJDQqvrm+cVUNF71j/yXC17knITQy0pQ0WvIe2Kt0WgTO0=
X-Received: by 2002:a05:6902:1248:: with SMTP id
 t8mr14318420ybu.85.1632504069110; 
 Fri, 24 Sep 2021 10:21:09 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1632420430.git.leonro@nvidia.com>
 <e7708737fadf4fe6f152afc76145c728c201adad.1632420430.git.leonro@nvidia.com>
 <CAKOOJTz4A2ER8MQE1dW27Spocds09SYafjeuLcFDJ0nL6mKyOw@mail.gmail.com>
 <YU0JlzFOa7kpKgnd@unreal>
 <20210923183956.506bfde2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210923183956.506bfde2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Edwin Peer <edwin.peer@broadcom.com>
Date: Fri, 24 Sep 2021 10:20:32 -0700
Message-ID: <CAKOOJTwh6TnNM4uSM2rbaij=xO92UzF2hs11pgOFUniOb3HAkA@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
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
 Michal Kalderon <michal.kalderon@marvell.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Leon Romanovsky <leon@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jiri Pirko <jiri@nvidia.com>,
 Ariel Elior <aelior@marvell.com>, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Vasundhara Volam <vasundhara-v.volam@broadcom.com>,
 Sathya Perla <sathya.perla@broadcom.com>,
 Michael Chan <michael.chan@broadcom.com>, linux-scsi@vger.kernel.org,
 Saurav Kashyap <skashyap@marvell.com>, netdev <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 GR-QLogic-Storage-Upstream@marvell.com,
 "David S . Miller" <davem@davemloft.net>, GR-everest-linux-l2@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Sep 23, 2021 at 6:39 PM Jakub Kicinski <kuba@kernel.org> wrote:

> On Fri, 24 Sep 2021 02:11:19 +0300 Leon Romanovsky wrote:
> > > minor nit: There's obviously nothing incorrect about doing this (and
> > > adding the additional error label in the cleanup code above), but bnxt
> > > has generally adopted a style of having cleanup functions being
> > > idempotent. It generally makes error handling simpler and less error
> > > prone.
> >
> > I would argue that opposite is true. Such "impossible" checks hide unwind
> > flow errors, missing releases e.t.c.
>
> +1, fwiw

I appreciate that being more explicit can improve visibility, but it
does not make error handling inherently less error prone, nor is it
simpler (ie. the opposite isn't true). Idempotency is orthogonal to
unwind flow or the presence or not of a particular unwind handler (one
can still enforce either in review). But, if release handlers are
independent (most in bnxt are), then permitting other orderings can be
perfectly valid and places less burden on achieving the canonical form
for correctness (ie. usage is simpler and less error prone). That's
not to say we should throw caution to the wind and allow arbitrary
unwind flows, but it does mean certain mistakes don't result in actual
bugs. There are other flexibility benefits too. A single, unwind
everything, handler can be reused in more than one context.

That said, isn't the more important question what style and
assumptions the surrounding code has adopted? In this particular case,
I checked that this change wouldn't introduce the possibility of a
double unwind, but in other contexts in this driver code base,
changing error handling in this piecemeal way might actually introduce
a bug in contexts where the caller has assumed the overall function is
idempotent. Isn't local consistency of style a more important concern,
especially given that you are not predominantly responsible for
maintenance of this driver? Dealing with this exception to the norm in
our driver certainly places an additional burden on us to remember to
treat this particular case with special care. We should either rework
all of bnxt error handling to adopt the more accepted canonical form,
or we should adopt the surrounding conventions. What we shouldn't do
is mix approaches in one driver.

Regards,
Edwin Peer
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
