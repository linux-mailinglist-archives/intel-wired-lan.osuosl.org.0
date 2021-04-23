Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE30369CF1
	for <lists+intel-wired-lan@lfdr.de>; Sat, 24 Apr 2021 00:58:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9EDAC6068F;
	Fri, 23 Apr 2021 22:58:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KI1rhHPLOe-B; Fri, 23 Apr 2021 22:58:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A9A686066A;
	Fri, 23 Apr 2021 22:58:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 387691BF41A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 22:58:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3382A605DE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 22:58:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FCsarAd2PJyJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Apr 2021 22:58:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2E92B6066A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 22:58:38 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5CCA261465;
 Fri, 23 Apr 2021 22:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619218717;
 bh=0cCVAfM16m5wt4jGNqpiMyqbG8SYHJHNYom3Egbmiq8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JUUUMdxj4NQ1GZlTFKGUSCWlm4wiWjE1r0CJBi9LwtehqAMbnOTbiTbmWSQugY9uU
 tzAHQPmauvo+xLXbY2LP/UUPiVtslSCs+aO2c0scBQTbZnZjzMoALE4FwryIZ7QXHd
 lucYG4gnv/hPUN3o1gX1EPjJJQxLlFpfjnFYNhLpuy9Q72mGkg42tTKTjhNTDhh54R
 46KdzQViccewvKE+KzAXS5oJH8n/tE/qwfZ9ymnu1unvka7dh07TLoi7cGL2ZfvD/W
 oj8xZ8bK29zW6BXHneTZictEhGpBbBhRUqg4eM4YH9Zf+V0SqBndtNvovfx+Ewg80z
 tUrPWHmUF87vg==
Date: Fri, 23 Apr 2021 15:58:36 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Oleksandr Natalenko <oleksandr@natalenko.name>
Message-ID: <20210423155836.25ef1e77@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210423081944.kvvm4v7jcdyj74l3@spock.localdomain>
References: <20210406123619.rhvtr73xwwlbu2ll@spock.localdomain>
 <20210406114734.0e00cb2f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20210407060053.wyo75mqwcva6w6ci@spock.localdomain>
 <20210407083748.56b9c261@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAKgT0UfLLQycLsAZQ98ofBGYPwejA6zHbG6QsNrU92mizS7e0g@mail.gmail.com>
 <20210407110722.1eb4ebf2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAKgT0UcQXVOifi_2r_Y6meg_zvHDBf1me8VwA4pvEtEMzOaw2Q@mail.gmail.com>
 <20210423081944.kvvm4v7jcdyj74l3@spock.localdomain>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [igb] netconsole triggers warning in
 netpoll_poll_dev
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 23 Apr 2021 10:19:44 +0200 Oleksandr Natalenko wrote:
> On Wed, Apr 07, 2021 at 04:06:29PM -0700, Alexander Duyck wrote:
> > On Wed, Apr 7, 2021 at 11:07 AM Jakub Kicinski <kuba@kernel.org> wrote:  
> > > Sure, that's simplest. I wasn't sure something is supposed to prevent
> > > this condition or if it's okay to cover it up.  
> > 
> > I'm pretty sure it is okay to cover it up. In this case the "budget -
> > 1" is supposed to be the upper limit on what can be reported. I think
> > it was assuming an unsigned value anyway.
> > 
> > Another alternative would be to default clean_complete to !!budget.
> > Then if budget is 0 clean_complete would always return false.  
> 
> So, among all the variants, which one to try? Or there was a separate
> patch sent to address this?

Alex's suggestion is probably best.

I'm not aware of the fix being posted. Perhaps you could take over and
post the patch if Intel doesn't chime in?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
