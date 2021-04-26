Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF8736B5C8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Apr 2021 17:29:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F0E6B402A9;
	Mon, 26 Apr 2021 15:28:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id REdkBzanJEDN; Mon, 26 Apr 2021 15:28:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B70934021C;
	Mon, 26 Apr 2021 15:28:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E45A61BF300
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Apr 2021 15:28:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D2AFB605C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Apr 2021 15:28:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G5nxmacNRY1Q for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Apr 2021 15:28:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0A2DE605A2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Apr 2021 15:28:52 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id u17so85154372ejk.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Apr 2021 08:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=M5rHl1uTPHcNcUuxY/E3wd4JEZWlIuCjeq1wxcyEpDI=;
 b=gxIek4o9quqavrkE+Xlb1OWBOADVfMEK55W1qRIFN+jG9v8r15SD/LJCR4ow5Gx2nA
 Kn71I+KZGVenIf5dBtOLRMnSnptyYWeHWyZzD4TetNo6vCL0YcwW/hDqGccrra1WeyDV
 kKiKqIN/6UdiUGTKl6dzvQkCadXAt1BP9bBlz/bQaSQ+KuWS1w9JEx+fSKv5OiT4d0Ke
 Mrt9P2eN+0Vdl1VJtWESOBl6rnJhkjd0XNJFLqNPqiGvxr+zDZYNGxhhF3DNUZG9z+RB
 Jv3YTr9h6DNwihnohBT6SvCzS/JTaeJkKlMVmWOZhvuM53N+iUzr9wP1woKY1lnZ1FBh
 QCpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=M5rHl1uTPHcNcUuxY/E3wd4JEZWlIuCjeq1wxcyEpDI=;
 b=SICDg0dHWMYmfxheTvwNPJzsb/fmKkOsLH1hM0Be1zeU5wHi3II4MF1tVJTeDgBRE7
 LN3uAblvo+rjSmR4hhOz7AEnI/bRe3SBzKQDLfvBRvvgmtAK4uo3Uj+CYrRuxnp4NdAO
 bXXHZaTOd5cgUoCcYTBDRUjS3p1UM0a34WPK3QlPKWq92mJb+QTwE2OPypznCY8XI+0B
 EYjfQ4HyHkXhAcTr+1jDRhqozW0fr7/qSdLy8jZ5Ml29P07/dWzGkkW8ljN9OWdnkBLV
 3dSkti/TJEQTzaELYAxZ2lTnDouW3wTVHiBQ2q8Sp75L0h8i9c9T06D9B0bEns+2nWWh
 NUkA==
X-Gm-Message-State: AOAM530nWW8NhbNy1Bdt5onyTy8d2PRnWWOQie+FqgabYq/sXIpF+VWo
 jzXYzNI/cnvWQnnQNaRCPFOnD3Yk1uII0bV9N+M=
X-Google-Smtp-Source: ABdhPJy+pIsSR8u9JuZX6ML4NK4MUr1r5mS+Y6zvqckgwnnfCXVg5wLMymxt8pIahThSrGGa+hYCy8jNFzwT7ihNnGU=
X-Received: by 2002:a17:907:7b9f:: with SMTP id
 ne31mr3671687ejc.139.1619450931244; 
 Mon, 26 Apr 2021 08:28:51 -0700 (PDT)
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
In-Reply-To: <20210426064736.7efynita4brzos4u@spock.localdomain>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Mon, 26 Apr 2021 08:28:40 -0700
Message-ID: <CAKgT0Uemubh8yP+UXh-n-YceheFRZO+hYpxtqs+=vedv7hbv4w@mail.gmail.com>
To: Oleksandr Natalenko <oleksandr@natalenko.name>
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
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Apr 25, 2021 at 11:47 PM Oleksandr Natalenko
<oleksandr@natalenko.name> wrote:
>
> Hello.
>
> On Fri, Apr 23, 2021 at 03:58:36PM -0700, Jakub Kicinski wrote:
> > On Fri, 23 Apr 2021 10:19:44 +0200 Oleksandr Natalenko wrote:
> > > On Wed, Apr 07, 2021 at 04:06:29PM -0700, Alexander Duyck wrote:
> > > > On Wed, Apr 7, 2021 at 11:07 AM Jakub Kicinski <kuba@kernel.org> wrote:
> > > > > Sure, that's simplest. I wasn't sure something is supposed to prevent
> > > > > this condition or if it's okay to cover it up.
> > > >
> > > > I'm pretty sure it is okay to cover it up. In this case the "budget -
> > > > 1" is supposed to be the upper limit on what can be reported. I think
> > > > it was assuming an unsigned value anyway.
> > > >
> > > > Another alternative would be to default clean_complete to !!budget.
> > > > Then if budget is 0 clean_complete would always return false.
> > >
> > > So, among all the variants, which one to try? Or there was a separate
> > > patch sent to address this?
> >
> > Alex's suggestion is probably best.
> >
> > I'm not aware of the fix being posted. Perhaps you could take over and
> > post the patch if Intel doesn't chime in?
>
> So, IIUC, Alex suggests this:
>
> ```
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index a45cd2b416c8..7503d5bf168a 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -7981,7 +7981,7 @@ static int igb_poll(struct napi_struct *napi, int budget)
>                                                      struct igb_q_vector,
>                                                      napi);
>         bool clean_complete = true;
> -       int work_done = 0;
> +       unsigned int work_done = 0;
>
>  #ifdef CONFIG_IGB_DCA
>         if (q_vector->adapter->flags & IGB_FLAG_DCA_ENABLED)
> @@ -8008,7 +8008,7 @@ static int igb_poll(struct napi_struct *napi, int budget)
>         if (likely(napi_complete_done(napi, work_done)))
>                 igb_ring_irq_enable(q_vector);
>
> -       return min(work_done, budget - 1);
> +       return min_t(unsigned int, work_done, budget - 1);
>  }
>
>  /**
> ```
>
> Am I right?
>
> Thanks.

Actually a better way to go would be to probably just initialize
"clean_complete = !!budget". With that we don't have it messing with
the interrupt enables which would probably be a better behavior.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
