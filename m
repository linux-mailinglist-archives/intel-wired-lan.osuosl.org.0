Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1601456041
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Nov 2021 17:14:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4BD1E40369;
	Thu, 18 Nov 2021 16:14:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yo_N7_vSPhLJ; Thu, 18 Nov 2021 16:14:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DCBE140204;
	Thu, 18 Nov 2021 16:14:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CCD7C1BF3AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Nov 2021 16:14:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BB03C4022E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Nov 2021 16:14:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s594nkZJR3je for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Nov 2021 16:14:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BBB22403CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Nov 2021 16:14:35 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id w1so29339555edc.6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Nov 2021 08:14:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vVkdhLYZ2yghvtsnBfZx6aX0rdaLftB2qrWz+Mjn2N4=;
 b=oxrMvtf7Ey8hzWQwNMB6/6bW7mFP3QERmTbgfftiUP3eHaqMIltdavOJTOQJI5/ehL
 KxMBRasz0uCx3+dwDLHkZ93Nck7q5W7fBdJUQGxu0f9IT9oev5+tHSL69heIj4pFMrZO
 S7mItovjhdXQJ+cBq2Fzgu1ekRgvgUSyaUnZCyLg+LgcqIrbmztmrPgBXGE0poua1s73
 uvGbX/ehxNJCjIwcG5q6tQ1V68V39LTRPtEWL2zdMj25Lugb/u3dTBaFqT/Ol0RG4Py5
 RsDsuKyrrnCXjWg0phgB2ixl/5FwhNRA7PPoXThSFmJ9+4if9pB/nR+cEoFEmokLGyWV
 x9tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vVkdhLYZ2yghvtsnBfZx6aX0rdaLftB2qrWz+Mjn2N4=;
 b=c/my1LPP3LjNPKNuIIF0MP1rpvPpgrDROXtH2yeR4tBOyh4HV72Wop1b9cz8D07fb4
 sINgG+d2vJWbHpU9rHTk8jKEDxHKMubezMbVBZkSVp5p+e2p12ki5Hsb+GK8hY7JO5bQ
 6qvyEQ7T296zkNu12W43qJNCzdzw9W1DL+JJyCCbU9SrOdAciXgB/CKwoifVOxC05XIQ
 oVDofVRYZoAFWLKqBMiRiRk4SiK7PTrAKax2DieN6uJCv40w9tqwQYUHi6jVhXOLFWQ2
 5EKkhMLpcrstMqcVM+VN/snN3KydBIaXEhEnbnJOGPsAH8svNZZ+l5oY1rPW3/40t3iK
 FFKg==
X-Gm-Message-State: AOAM533gFPuhq6DpXlYaL1aPdyJkJKPo2+5fXPQUKmxRLaOEfqC03vrY
 objVJ+wpuG5/TUj1NP0KpDOwja/xasFpt8ZNZh0=
X-Google-Smtp-Source: ABdhPJygbDY2ytW54uSb3bg9nnG5ICbHH/9W96c67TGZ90zluvUpU01RLAswsPq7zXbBk1v4b2NIzRT4YKwHcXpRjhk=
X-Received: by 2002:aa7:c347:: with SMTP id j7mr13173830edr.272.1637252073533; 
 Thu, 18 Nov 2021 08:14:33 -0800 (PST)
MIME-Version: 1.0
References: <DM6PR12MB45165BFF3AB84602238FA595D89B9@DM6PR12MB4516.namprd12.prod.outlook.com>
In-Reply-To: <DM6PR12MB45165BFF3AB84602238FA595D89B9@DM6PR12MB4516.namprd12.prod.outlook.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Thu, 18 Nov 2021 08:14:22 -0800
Message-ID: <CAKgT0UfGvcGXAC5VBjXRpR5Y5uAPEPPCsYWjQR8RmW_1kw8TMQ@mail.gmail.com>
To: Danielle Ratson <danieller@nvidia.com>
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
Cc: Netdev <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Oleksandr Natalenko <oleksandr@natalenko.name>,
 Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Nov 18, 2021 at 7:30 AM Danielle Ratson <danieller@nvidia.com> wrote:
>
> > On Thu, May 6, 2021 at 4:32 PM Jesse Brandeburg
> > <jesse.brandeburg@intel.com> wrote:
> > >
> > > Alexander Duyck wrote:
> > >
> > > > On Sun, Apr 25, 2021 at 11:47 PM Oleksandr Natalenko
> > > > <oleksandr@natalenko.name> wrote:
> > > > >
> > > > > Hello.
> > > > >
> > > > > On Fri, Apr 23, 2021 at 03:58:36PM -0700, Jakub Kicinski wrote:
> > > > > > On Fri, 23 Apr 2021 10:19:44 +0200 Oleksandr Natalenko wrote:
> > > > > > > On Wed, Apr 07, 2021 at 04:06:29PM -0700, Alexander Duyck wrote:
> > > > > > > > On Wed, Apr 7, 2021 at 11:07 AM Jakub Kicinski
> > <kuba@kernel.org> wrote:
> > > > > > > > > Sure, that's simplest. I wasn't sure something is supposed
> > > > > > > > > to prevent this condition or if it's okay to cover it up.
> > > > > > > >
> > > > > > > > I'm pretty sure it is okay to cover it up. In this case the
> > > > > > > > "budget - 1" is supposed to be the upper limit on what can
> > > > > > > > be reported. I think it was assuming an unsigned value anyway.
> > > > > > > >
> > > > > > > > Another alternative would be to default clean_complete to
> > !!budget.
> > > > > > > > Then if budget is 0 clean_complete would always return false.
> > > > > > >
> > > > > > > So, among all the variants, which one to try? Or there was a
> > > > > > > separate patch sent to address this?
> > > > > >
> > > > > > Alex's suggestion is probably best.
> > > > > >
> > > > > > I'm not aware of the fix being posted. Perhaps you could take
> > > > > > over and post the patch if Intel doesn't chime in?
> > > > >
> > > > > So, IIUC, Alex suggests this:
> > > > >
> > > > > ```
> > > > > diff --git a/drivers/net/ethernet/intel/igb/igb_main.c
> > > > > b/drivers/net/ethernet/intel/igb/igb_main.c
> > > > > index a45cd2b416c8..7503d5bf168a 100644
> > > > > --- a/drivers/net/ethernet/intel/igb/igb_main.c
> > > > > +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> > > > > @@ -7981,7 +7981,7 @@ static int igb_poll(struct napi_struct *napi, int
> > budget)
> > > > >                                                      struct igb_q_vector,
> > > > >                                                      napi);
> > > > >         bool clean_complete = true;
> > > > > -       int work_done = 0;
> > > > > +       unsigned int work_done = 0;
> > > > >
> > > > >  #ifdef CONFIG_IGB_DCA
> > > > >         if (q_vector->adapter->flags & IGB_FLAG_DCA_ENABLED) @@
> > > > > -8008,7 +8008,7 @@ static int igb_poll(struct napi_struct *napi, int
> > budget)
> > > > >         if (likely(napi_complete_done(napi, work_done)))
> > > > >                 igb_ring_irq_enable(q_vector);
> > > > >
> > > > > -       return min(work_done, budget - 1);
> > > > > +       return min_t(unsigned int, work_done, budget - 1);
> > > > >  }
> > > > >
> > > > >  /**
> > > > > ```
> > > > >
> > > > > Am I right?
> > > > >
> > > > > Thanks.
> > > >
> > > > Actually a better way to go would be to probably just initialize
> > > > "clean_complete = !!budget". With that we don't have it messing with
> > > > the interrupt enables which would probably be a better behavior.
> > >
> > >
> > > Thanks guys for the suggestions here! Finally got some time for this,
> > > so here is the patch I'm going to queue shortly.
> > >
> > > From ffd24e90d688ee347ab051266bfc7fca00324a68 Mon Sep 17 00:00:00
> > 2001
> > > From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> > > Date: Thu, 6 May 2021 14:41:11 -0700
> > > Subject: [PATCH net] igb: fix netpoll exit with traffic
> > > To: netdev,
> > >     Oleksandr Natalenko <oleksandr@natalenko.name>
> > > Cc: Jakub Kicinski <kuba@kernel.org>, LKML
> > > <linux-kernel@vger.kernel.org>, "Brandeburg, Jesse"
> > > <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
> > > <anthony.l.nguyen@intel.com>, "David S. Miller"
> > <davem@davemloft.net>,
> > > intel-wired-lan <intel-wired-lan@lists.osuosl.org>, Alexander Duyck
> > > <alexander.duyck@gmail.com>
> > >
> > > Oleksandr brought a bug report where netpoll causes trace messages in
> > > the log on igb.
> > >
> > > [22038.710800] ------------[ cut here ]------------ [22038.710801]
> > > igb_poll+0x0/0x1440 [igb] exceeded budget in poll [22038.710802]
> > > WARNING: CPU: 12 PID: 40362 at net/core/netpoll.c:155
> > > netpoll_poll_dev+0x18a/0x1a0
> > >
> > > After some discussion and debug from the list, it was deemed that the
> > > right thing to do is initialize the clean_complete variable to false
> > > when the "netpoll mode" of passing a zero budget is used.
> > >
> > > This logic should be sane and not risky because the only time budget
> > > should be zero on entry is netpoll.  Change includes a small refactor
> > > of local variable assignments to clean up the look.
> > >
> > > Fixes: 16eb8815c235 ("igb: Refactor clean_rx_irq to reduce overhead
> > > and improve performance")
> > > Reported-by: Oleksandr Natalenko <oleksandr@natalenko.name>
> > > Suggested-by: Alexander Duyck <alexander.duyck@gmail.com>
> > > Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> > > ---
> > >
> > > Compile tested ONLY, but functionally it should be exactly the same
> > > for all cases except when budget is zero on entry, which will
> > > hopefully fix the bug.
> > > ---
> > >  drivers/net/ethernet/intel/igb/igb_main.c | 12 ++++++++----
> > >  1 file changed, 8 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/net/ethernet/intel/igb/igb_main.c
> > > b/drivers/net/ethernet/intel/igb/igb_main.c
> > > index 0cd37ad81b4e..b0a9bed14071 100644
> > > --- a/drivers/net/ethernet/intel/igb/igb_main.c
> > > +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> > > @@ -7991,12 +7991,16 @@ static void igb_ring_irq_enable(struct
> > igb_q_vector *q_vector)
> > >   **/
> > >  static int igb_poll(struct napi_struct *napi, int budget)  {
> > > -       struct igb_q_vector *q_vector = container_of(napi,
> > > -                                                    struct igb_q_vector,
> > > -                                                    napi);
> > > -       bool clean_complete = true;
> > > +       struct igb_q_vector *q_vector;
> > > +       bool clean_complete;
> > >         int work_done = 0;
> > >
> > > +       /* if budget is zero, we have a special case for netconsole, so
> > > +        * make sure to set clean_complete to false in that case.
> > > +        */
> > > +       clean_complete = !!budget;
> > > +
> > > +       q_vector = container_of(napi, struct igb_q_vector, napi);
> > >  #ifdef CONFIG_IGB_DCA
> > >         if (q_vector->adapter->flags & IGB_FLAG_DCA_ENABLED)
> > >                 igb_update_dca(q_vector);
> >
> > I'm not a big fan of moving the q_vector init as a part of this patch since it
> > just means more backport work.
> >
> > That said the change itself should be harmless so I am good with it either
> > way.
> >
> > Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>
>
> Hi,
>
> I have lately added the netconsole module, and since then we see the same warning constantly in the logs.
> I have tried to apply Jesse's patch but it didn't seem to solve the issue.
>
> Did anyone managed to solve the issue and can share with us?
>
> Thanks,
> Danielle

The one issue I can see is that it basically leaves the igb_poll call
stuck in polling mode.

The easiest fix for all of this in the in-kernel driver is to just get
rid of the "min" at the end and instead just "return work_done;". The
extra complication is only needed if you were to be polling multiple
queues and that isn't the case here so we should simplify it and get
rid of the buggy "budget - 1" return value.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
