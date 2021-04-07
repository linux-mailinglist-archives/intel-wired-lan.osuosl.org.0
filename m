Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1283573EB
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Apr 2021 20:07:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6AE3984C70;
	Wed,  7 Apr 2021 18:07:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UNH3sKccIImt; Wed,  7 Apr 2021 18:07:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7818184C6B;
	Wed,  7 Apr 2021 18:07:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 398C91BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Apr 2021 18:07:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 264B8418FC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Apr 2021 18:07:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c1I1d_GizD1K for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Apr 2021 18:07:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 40B34418F8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Apr 2021 18:07:24 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 55D6461153;
 Wed,  7 Apr 2021 18:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617818843;
 bh=KQDUew2GlvDTG5qXa9bLXVU8UwDr5O44GktbMLs9Ihs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=i7DNkz6X0fIgBa1gqe0G8XVjij7Ew4m0fQzUlfvYRIdYSPFsqtmgkAdB1eO5s32Lg
 mMh8TRJpULgu+n7pTh7ATjEkyBOkbaBEaBpi+B2IBUqGCbMXRSJMe80IGGp0xmLgV+
 3YdLsn6QfAzTLp3RqTu7dL66G7RZsgsDc0XeXvtOzQC0aYxNQl6orY6GuwgJwN9KhE
 LOBb8x+cHWXkeV7j6OE9/6B+OHtiDjNtVOTazNr07otq8ielDfAhnJ0DpWO9aZHgY5
 YF4d6NyjDSY6MXxQIO6YsQ1/VDqD5xWfIKD1vcMlRe5aox5LmA8Wfk8ii82B20+H4K
 BALh+4SCJW/3w==
Date: Wed, 7 Apr 2021 11:07:22 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Duyck <alexander.duyck@gmail.com>
Message-ID: <20210407110722.1eb4ebf2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <CAKgT0UfLLQycLsAZQ98ofBGYPwejA6zHbG6QsNrU92mizS7e0g@mail.gmail.com>
References: <20210406123619.rhvtr73xwwlbu2ll@spock.localdomain>
 <20210406114734.0e00cb2f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20210407060053.wyo75mqwcva6w6ci@spock.localdomain>
 <20210407083748.56b9c261@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAKgT0UfLLQycLsAZQ98ofBGYPwejA6zHbG6QsNrU92mizS7e0g@mail.gmail.com>
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
Cc: linux-kernel@vger.kernel.org,
 Oleksandr Natalenko <oleksandr@natalenko.name>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 7 Apr 2021 09:25:28 -0700 Alexander Duyck wrote:
> On Wed, Apr 7, 2021 at 8:37 AM Jakub Kicinski <kuba@kernel.org> wrote:
> >
> > On Wed, 7 Apr 2021 08:00:53 +0200 Oleksandr Natalenko wrote:  
> > > Thanks for the effort, but reportedly [1] it made no difference,
> > > unfortunately.
> > >
> > > [1] https://bugzilla.kernel.org/show_bug.cgi?id=212573#c8  
> >
> > The only other option I see is that somehow the NAPI has no rings.
> >
> > diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> > index a45cd2b416c8..24568adc2fb1 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_main.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> > @@ -7980,7 +7980,7 @@ static int igb_poll(struct napi_struct *napi, int budget)
> >         struct igb_q_vector *q_vector = container_of(napi,
> >                                                      struct igb_q_vector,
> >                                                      napi);
> > -       bool clean_complete = true;
> > +       bool clean_complete = q_vector->tx.ring || q_vector->rx.ring;
> >         int work_done = 0;
> >
> >  #ifdef CONFIG_IGB_DCA  
> 
> It might make sense to just cast the work_done as a unsigned int, and
> then on the end of igb_poll use:
>   return min_t(unsigned int, work_done, budget - 1);

Sure, that's simplest. I wasn't sure something is supposed to prevent
this condition or if it's okay to cover it up.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
