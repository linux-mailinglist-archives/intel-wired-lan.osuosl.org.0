Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F01D0375DF0
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 May 2021 02:38:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 848AD40256;
	Fri,  7 May 2021 00:38:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1mf8iLP5qwBq; Fri,  7 May 2021 00:38:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 586B7400F2;
	Fri,  7 May 2021 00:38:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 926E81BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 May 2021 00:38:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8035960737
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 May 2021 00:38:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 18Lq1C_lFgJt for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 May 2021 00:38:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5F2D2605BD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 May 2021 00:38:29 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id y26so8194631eds.4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 May 2021 17:38:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ZAjjQc5GIaQm8QziUbIPzE+PeYzCka/kXgPfW0S9Hn8=;
 b=oNZ3I9VdeV92qqz0nDv2htQYIj1hl3cXHFQDsVrveqj7gw7p1vZEUsGqS1waYxUDtA
 5j3FO+BcdndreaW2v2ATgKuNbSV3T153IF3pYaH6vZhJgD/gu2ItGJlg13pCRnBI8TJj
 Jf6joIgz/+AVYyAjTyUlq0CtEeXqc9VF9E7i31OGg6XnkFBv89077u8arnFjwImMvSBS
 tnjMfgJifVnTrbgamwO/X3HjAdH3i35ZEPfKW7l9ADuEqtHOeOwglKmikF81bl12t+MS
 ixAuIWQVgILljEj36Kq5sAo5JOjjiin/ZBlZkW8l7Q3G9J15dIyJOkCusp9+ta6AhG5Q
 XqfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ZAjjQc5GIaQm8QziUbIPzE+PeYzCka/kXgPfW0S9Hn8=;
 b=DokGVOAot5uzYfXxGyKYY82yDtL95PE7LwhdmgE5bdV2YSaoqYutfneHdRrm8yVOm1
 cQECdTIZaY2rn5oLA1FnyGDyzt9auT4mJVyxqYxbHb+MDgOuq53Smkwet+TJ/658Ka9X
 fHrKoRnBWwlWRchBS5XDhVtHG2t+aQVP/exnK8v+CO8RDKRAA2A7neQwdIBmn46lGw5w
 CkFTE054Ze7IYlus/lQvYFLYf/jwV8q50qFuNkpUqIiCau6BooWG9z34K4vEfRk3ny52
 dblMwYZCjoY1d+Ld71ri1fJ9ONtuzYpPCvs0HEHFL7783EyRFB+AUvl93WtOHURNHQWC
 5UDQ==
X-Gm-Message-State: AOAM532nuu3UOWB4/aI/yvDB3T/00RNFL91qabaAa87AFmTeXp9WsIdi
 Khq7R4KsLAAxsunlu+ZPD/Po0x9rXrUbZIyWAG0=
X-Google-Smtp-Source: ABdhPJxOV7RC0YgLydvghPN9HwvKvvjoX/jZsx7ugciyaBQBFZpjrp6JNyahMeNulvOT/I0xvwy5mSqBSy7Xa7ZWpaI=
X-Received: by 2002:a50:8fe6:: with SMTP id y93mr8214261edy.224.1620347907299; 
 Thu, 06 May 2021 17:38:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210406123619.rhvtr73xwwlbu2ll@spock.localdomain>
 <20210406114734.0e00cb2f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20210407060053.wyo75mqwcva6w6ci@spock.localdomain>
 <20210407083748.56b9c261@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAKgT0UfLLQycLsAZQ98ofBGYPwejA6zHbG6QsNrU92mizS7e0g@mail.gmail.com>
 <20210407110722.1eb4ebf2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAKgT0UcQXVOifi_2r_Y6meg_zvHDBf1me8VwA4pvEtEMzOaw2Q@mail.gmail.com>
 <20210423081944.kvvm4v7jcdyj74l3@spock.localdomain>
 <20210423155836.25ef1e77@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20210426064736.7efynita4brzos4u@spock.localdomain>
 <CAKgT0Uemubh8yP+UXh-n-YceheFRZO+hYpxtqs+=vedv7hbv4w@mail.gmail.com>
 <20210506163257.000036fe@intel.com>
In-Reply-To: <20210506163257.000036fe@intel.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Thu, 6 May 2021 17:38:16 -0700
Message-ID: <CAKgT0UegmWH93wy1G-eE8LsCc_qhQf=XvmKTVj0a_XDt17RzHA@mail.gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
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
Cc: Netdev <netdev@vger.kernel.org>,
 Oleksandr Natalenko <oleksandr@natalenko.name>,
 LKML <linux-kernel@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, May 6, 2021 at 4:32 PM Jesse Brandeburg
<jesse.brandeburg@intel.com> wrote:
>
> Alexander Duyck wrote:
>
> > On Sun, Apr 25, 2021 at 11:47 PM Oleksandr Natalenko
> > <oleksandr@natalenko.name> wrote:
> > >
> > > Hello.
> > >
> > > On Fri, Apr 23, 2021 at 03:58:36PM -0700, Jakub Kicinski wrote:
> > > > On Fri, 23 Apr 2021 10:19:44 +0200 Oleksandr Natalenko wrote:
> > > > > On Wed, Apr 07, 2021 at 04:06:29PM -0700, Alexander Duyck wrote:
> > > > > > On Wed, Apr 7, 2021 at 11:07 AM Jakub Kicinski <kuba@kernel.org> wrote:
> > > > > > > Sure, that's simplest. I wasn't sure something is supposed to prevent
> > > > > > > this condition or if it's okay to cover it up.
> > > > > >
> > > > > > I'm pretty sure it is okay to cover it up. In this case the "budget -
> > > > > > 1" is supposed to be the upper limit on what can be reported. I think
> > > > > > it was assuming an unsigned value anyway.
> > > > > >
> > > > > > Another alternative would be to default clean_complete to !!budget.
> > > > > > Then if budget is 0 clean_complete would always return false.
> > > > >
> > > > > So, among all the variants, which one to try? Or there was a separate
> > > > > patch sent to address this?
> > > >
> > > > Alex's suggestion is probably best.
> > > >
> > > > I'm not aware of the fix being posted. Perhaps you could take over and
> > > > post the patch if Intel doesn't chime in?
> > >
> > > So, IIUC, Alex suggests this:
> > >
> > > ```
> > > diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> > > index a45cd2b416c8..7503d5bf168a 100644
> > > --- a/drivers/net/ethernet/intel/igb/igb_main.c
> > > +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> > > @@ -7981,7 +7981,7 @@ static int igb_poll(struct napi_struct *napi, int budget)
> > >                                                      struct igb_q_vector,
> > >                                                      napi);
> > >         bool clean_complete = true;
> > > -       int work_done = 0;
> > > +       unsigned int work_done = 0;
> > >
> > >  #ifdef CONFIG_IGB_DCA
> > >         if (q_vector->adapter->flags & IGB_FLAG_DCA_ENABLED)
> > > @@ -8008,7 +8008,7 @@ static int igb_poll(struct napi_struct *napi, int budget)
> > >         if (likely(napi_complete_done(napi, work_done)))
> > >                 igb_ring_irq_enable(q_vector);
> > >
> > > -       return min(work_done, budget - 1);
> > > +       return min_t(unsigned int, work_done, budget - 1);
> > >  }
> > >
> > >  /**
> > > ```
> > >
> > > Am I right?
> > >
> > > Thanks.
> >
> > Actually a better way to go would be to probably just initialize
> > "clean_complete = !!budget". With that we don't have it messing with
> > the interrupt enables which would probably be a better behavior.
>
>
> Thanks guys for the suggestions here! Finally got some time for
> this, so here is the patch I'm going to queue shortly.
>
> From ffd24e90d688ee347ab051266bfc7fca00324a68 Mon Sep 17 00:00:00 2001
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Date: Thu, 6 May 2021 14:41:11 -0700
> Subject: [PATCH net] igb: fix netpoll exit with traffic
> To: netdev,
>     Oleksandr Natalenko <oleksandr@natalenko.name>
> Cc: Jakub Kicinski <kuba@kernel.org>, LKML <linux-kernel@vger.kernel.org>, "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, intel-wired-lan <intel-wired-lan@lists.osuosl.org>, Alexander Duyck <alexander.duyck@gmail.com>
>
> Oleksandr brought a bug report where netpoll causes trace messages in
> the log on igb.
>
> [22038.710800] ------------[ cut here ]------------
> [22038.710801] igb_poll+0x0/0x1440 [igb] exceeded budget in poll
> [22038.710802] WARNING: CPU: 12 PID: 40362 at net/core/netpoll.c:155 netpoll_poll_dev+0x18a/0x1a0
>
> After some discussion and debug from the list, it was deemed that the
> right thing to do is initialize the clean_complete variable to false
> when the "netpoll mode" of passing a zero budget is used.
>
> This logic should be sane and not risky because the only time budget
> should be zero on entry is netpoll.  Change includes a small refactor
> of local variable assignments to clean up the look.
>
> Fixes: 16eb8815c235 ("igb: Refactor clean_rx_irq to reduce overhead and improve performance")
> Reported-by: Oleksandr Natalenko <oleksandr@natalenko.name>
> Suggested-by: Alexander Duyck <alexander.duyck@gmail.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>
> Compile tested ONLY, but functionally it should be exactly the same for
> all cases except when budget is zero on entry, which will hopefully fix
> the bug.
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 0cd37ad81b4e..b0a9bed14071 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -7991,12 +7991,16 @@ static void igb_ring_irq_enable(struct igb_q_vector *q_vector)
>   **/
>  static int igb_poll(struct napi_struct *napi, int budget)
>  {
> -       struct igb_q_vector *q_vector = container_of(napi,
> -                                                    struct igb_q_vector,
> -                                                    napi);
> -       bool clean_complete = true;
> +       struct igb_q_vector *q_vector;
> +       bool clean_complete;
>         int work_done = 0;
>
> +       /* if budget is zero, we have a special case for netconsole, so
> +        * make sure to set clean_complete to false in that case.
> +        */
> +       clean_complete = !!budget;
> +
> +       q_vector = container_of(napi, struct igb_q_vector, napi);
>  #ifdef CONFIG_IGB_DCA
>         if (q_vector->adapter->flags & IGB_FLAG_DCA_ENABLED)
>                 igb_update_dca(q_vector);

I'm not a big fan of moving the q_vector init as a part of this patch
since it just means more backport work.

That said the change itself should be harmless so I am good with it either way.

Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
