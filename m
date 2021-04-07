Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E527357841
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Apr 2021 01:06:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC72260DBB;
	Wed,  7 Apr 2021 23:06:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BjF9fVzAjOC6; Wed,  7 Apr 2021 23:06:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 05E3060DAD;
	Wed,  7 Apr 2021 23:06:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 143A61BF41C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Apr 2021 23:06:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0F70D60DAD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Apr 2021 23:06:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SClC3yMYfp-k for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Apr 2021 23:06:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-il1-x12f.google.com (mail-il1-x12f.google.com
 [IPv6:2607:f8b0:4864:20::12f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3B6D860A3B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Apr 2021 23:06:41 +0000 (UTC)
Received: by mail-il1-x12f.google.com with SMTP id d10so174343ils.5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 07 Apr 2021 16:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KdT8k9WThaEXk/i1KdIUz/lLL55KvYS2BmGyHiYmbV4=;
 b=vMG8xBKLE17PSfo64RlRvfIs0SgnHFQd51M/25/4qnA/rFcVuD+qT9F0Jw/AR4aNuv
 prRRs6XLW94wMpPt7g5kYWqPEUvyP46uU2iRGFF+F0hIJYaZqFUyxJNpHNfKQmywcUJQ
 JosvHxyE8NBhCUn5NpqWbs5W4wLdxDb0/5z2psk2d3KcmAFw4SwAfE1tgz60SAXFHRgd
 2Fu9KfRxR24bUJikmCQoSIP/0rw6jVnpjni6rGwxJ4UB4cIr1q6ktUpGo7SEEKMXuMZM
 1NQ84twGmD1tSNcaExQ82/x2FYXpOKatQ9Jg4jJnu4uCGgTnPtnSRFb7BxXVxdbscOaD
 A5WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KdT8k9WThaEXk/i1KdIUz/lLL55KvYS2BmGyHiYmbV4=;
 b=crFwdMQqySCScA5OSWsZ5goWrTLH9eTkyS8GixN/JsKV0jq/4Xkkn+YAGcgqSQ6/P7
 ymZKsx6OlBxt+lSc66fEJKtNNMgzLWiXVtIXm9FnlzIu71CasxIkbSn7GLy5d6DkDoQ9
 UrChPzmPcFUcvdM4YsaBNmCruC56lJfN3sv0ZM+RgQiGhyqEg/ftB1Qnta87LtS32zVY
 iEHw3e0uGt54j3sRZABP3YjctRinA/mvZ9Mr4+1mjSAjjJ+DvVFJL3gaJZ/FkwE5arfJ
 peTrTqxxNfJ2YXV9DWh0WE2Ob43sraa0eB5qt1/JweYjagrroI4ADZk3LV9Hcblymnlz
 Frhw==
X-Gm-Message-State: AOAM531VOI3PQdDLo4QEcrj2ewOiqsgSQ9oVlqsiUvMd8VtMmbzw/j3Y
 WZ2YaXEyWjf/61wZKlWezV6OU2IYLL+Ya8CN02Y=
X-Google-Smtp-Source: ABdhPJztZvqkUgf+53X/OU/6w3VRVdGjRifBLqqQ36Cnaa0HtUei8KTXcQ8+sNofR4RUCNkvkX4YF01CxU7JqBZrhts=
X-Received: by 2002:a05:6e02:6cf:: with SMTP id
 p15mr4670068ils.237.1617836800398; 
 Wed, 07 Apr 2021 16:06:40 -0700 (PDT)
MIME-Version: 1.0
References: <20210406123619.rhvtr73xwwlbu2ll@spock.localdomain>
 <20210406114734.0e00cb2f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20210407060053.wyo75mqwcva6w6ci@spock.localdomain>
 <20210407083748.56b9c261@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAKgT0UfLLQycLsAZQ98ofBGYPwejA6zHbG6QsNrU92mizS7e0g@mail.gmail.com>
 <20210407110722.1eb4ebf2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210407110722.1eb4ebf2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Wed, 7 Apr 2021 16:06:29 -0700
Message-ID: <CAKgT0UcQXVOifi_2r_Y6meg_zvHDBf1me8VwA4pvEtEMzOaw2Q@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
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

On Wed, Apr 7, 2021 at 11:07 AM Jakub Kicinski <kuba@kernel.org> wrote:
>
> On Wed, 7 Apr 2021 09:25:28 -0700 Alexander Duyck wrote:
> > On Wed, Apr 7, 2021 at 8:37 AM Jakub Kicinski <kuba@kernel.org> wrote:
> > >
> > > On Wed, 7 Apr 2021 08:00:53 +0200 Oleksandr Natalenko wrote:
> > > > Thanks for the effort, but reportedly [1] it made no difference,
> > > > unfortunately.
> > > >
> > > > [1] https://bugzilla.kernel.org/show_bug.cgi?id=212573#c8
> > >
> > > The only other option I see is that somehow the NAPI has no rings.
> > >
> > > diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> > > index a45cd2b416c8..24568adc2fb1 100644
> > > --- a/drivers/net/ethernet/intel/igb/igb_main.c
> > > +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> > > @@ -7980,7 +7980,7 @@ static int igb_poll(struct napi_struct *napi, int budget)
> > >         struct igb_q_vector *q_vector = container_of(napi,
> > >                                                      struct igb_q_vector,
> > >                                                      napi);
> > > -       bool clean_complete = true;
> > > +       bool clean_complete = q_vector->tx.ring || q_vector->rx.ring;
> > >         int work_done = 0;
> > >
> > >  #ifdef CONFIG_IGB_DCA
> >
> > It might make sense to just cast the work_done as a unsigned int, and
> > then on the end of igb_poll use:
> >   return min_t(unsigned int, work_done, budget - 1);
>
> Sure, that's simplest. I wasn't sure something is supposed to prevent
> this condition or if it's okay to cover it up.

I'm pretty sure it is okay to cover it up. In this case the "budget -
1" is supposed to be the upper limit on what can be reported. I think
it was assuming an unsigned value anyway.

Another alternative would be to default clean_complete to !!budget.
Then if budget is 0 clean_complete would always return false.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
