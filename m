Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0093694C9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Apr 2021 16:32:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB50884426;
	Fri, 23 Apr 2021 14:32:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3YH2LEk56A8d; Fri, 23 Apr 2021 14:32:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A5C2584429;
	Fri, 23 Apr 2021 14:32:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6FF951BF283
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 08:19:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6B8B683C72
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 08:19:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kCSJX76twDPO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Apr 2021 08:19:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from vulcan.natalenko.name (vulcan.natalenko.name [104.207.131.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 04D0283A80
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 08:19:49 +0000 (UTC)
Received: from localhost (kaktus.kanapka.ml [151.237.229.131])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by vulcan.natalenko.name (Postfix) with ESMTPSA id 6BF2FA471E0;
 Fri, 23 Apr 2021 10:19:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=natalenko.name;
 s=dkim-20170712; t=1619165985;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Sq6FHbzlathvCZzoMydAX13uBBzPWKO/SRxFralH4D8=;
 b=KaXcWN7NsMg/HQb9++N0iYdLJ6eHuzsRPeDfCoFVS/TmOevAzY/DLmjA+y6gsb/Miriec7
 zUHhIG5zF/EVgwu7lMpjeu/qx8hPIXsjjRuXOMyUMjKmWY2HhYcUD7FFChAwHTtFnFLipm
 2YAvxBEUDY1gGszhyGzK4MOo8LaDmEk=
Date: Fri, 23 Apr 2021 10:19:44 +0200
From: Oleksandr Natalenko <oleksandr@natalenko.name>
To: Alexander Duyck <alexander.duyck@gmail.com>
Message-ID: <20210423081944.kvvm4v7jcdyj74l3@spock.localdomain>
References: <20210406123619.rhvtr73xwwlbu2ll@spock.localdomain>
 <20210406114734.0e00cb2f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20210407060053.wyo75mqwcva6w6ci@spock.localdomain>
 <20210407083748.56b9c261@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAKgT0UfLLQycLsAZQ98ofBGYPwejA6zHbG6QsNrU92mizS7e0g@mail.gmail.com>
 <20210407110722.1eb4ebf2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAKgT0UcQXVOifi_2r_Y6meg_zvHDBf1me8VwA4pvEtEMzOaw2Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKgT0UcQXVOifi_2r_Y6meg_zvHDBf1me8VwA4pvEtEMzOaw2Q@mail.gmail.com>
X-Mailman-Approved-At: Fri, 23 Apr 2021 14:32:25 +0000
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
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello.

On Wed, Apr 07, 2021 at 04:06:29PM -0700, Alexander Duyck wrote:
> On Wed, Apr 7, 2021 at 11:07 AM Jakub Kicinski <kuba@kernel.org> wrote:
> >
> > On Wed, 7 Apr 2021 09:25:28 -0700 Alexander Duyck wrote:
> > > On Wed, Apr 7, 2021 at 8:37 AM Jakub Kicinski <kuba@kernel.org> wrote:
> > > >
> > > > On Wed, 7 Apr 2021 08:00:53 +0200 Oleksandr Natalenko wrote:
> > > > > Thanks for the effort, but reportedly [1] it made no difference,
> > > > > unfortunately.
> > > > >
> > > > > [1] https://bugzilla.kernel.org/show_bug.cgi?id=212573#c8
> > > >
> > > > The only other option I see is that somehow the NAPI has no rings.
> > > >
> > > > diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> > > > index a45cd2b416c8..24568adc2fb1 100644
> > > > --- a/drivers/net/ethernet/intel/igb/igb_main.c
> > > > +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> > > > @@ -7980,7 +7980,7 @@ static int igb_poll(struct napi_struct *napi, int budget)
> > > >         struct igb_q_vector *q_vector = container_of(napi,
> > > >                                                      struct igb_q_vector,
> > > >                                                      napi);
> > > > -       bool clean_complete = true;
> > > > +       bool clean_complete = q_vector->tx.ring || q_vector->rx.ring;
> > > >         int work_done = 0;
> > > >
> > > >  #ifdef CONFIG_IGB_DCA
> > >
> > > It might make sense to just cast the work_done as a unsigned int, and
> > > then on the end of igb_poll use:
> > >   return min_t(unsigned int, work_done, budget - 1);
> >
> > Sure, that's simplest. I wasn't sure something is supposed to prevent
> > this condition or if it's okay to cover it up.
> 
> I'm pretty sure it is okay to cover it up. In this case the "budget -
> 1" is supposed to be the upper limit on what can be reported. I think
> it was assuming an unsigned value anyway.
> 
> Another alternative would be to default clean_complete to !!budget.
> Then if budget is 0 clean_complete would always return false.

So, among all the variants, which one to try? Or there was a separate
patch sent to address this?

Thanks.

-- 
  Oleksandr Natalenko (post-factum)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
