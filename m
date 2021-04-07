Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 61168357216
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Apr 2021 18:25:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D03BB60788;
	Wed,  7 Apr 2021 16:25:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wm2BLlct2ScT; Wed,  7 Apr 2021 16:25:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE60560772;
	Wed,  7 Apr 2021 16:25:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 82C8A1BF296
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Apr 2021 16:25:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6FBF14189C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Apr 2021 16:25:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TuijU8MitKUK for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Apr 2021 16:25:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com
 [IPv6:2607:f8b0:4864:20::d2e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 36B3041887
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Apr 2021 16:25:41 +0000 (UTC)
Received: by mail-io1-xd2e.google.com with SMTP id v26so20002269iox.11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 07 Apr 2021 09:25:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pqiCYkner6ZTxNFtdDpH2AHRS2ZxI0TvEOALrDZMWM8=;
 b=F8DAUtDvy2Y1CM+3PG+i6uVmIgwhb6Ap0hTHLqNtVUhEUxecdZsmGckJegT6PEBraX
 t/wDjgdowWYbxXu25KGwNpCmkfCIbN76M+u7VigfkG1h9xazMD7FPIoN4dwtDk8o/Hkc
 fwX9bOA8bOtdEWiWkiAu7Q6lEsPpj1dkHVrxVXaydz534llEwTaic6GAqqdGOY5hkvk0
 Jp/amcMxs0brLDQqkLOWg2Qjqaigwl+S2R0Ew8hJFrtuTwP7tyDKmqbq5FvRgTsAq2hK
 koR2cAnxjarSPDF9FDsDECysTSiepMTdlCMUcxSUdCJ7b9M4c1VlvI+68dopp2bdBj3t
 ZUrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pqiCYkner6ZTxNFtdDpH2AHRS2ZxI0TvEOALrDZMWM8=;
 b=WAWX4gYCZwC/XcITWQrYxb438OiPfR+vS4mn9Ip5bBdAkBUapFYgcwds2A6BfNlZRM
 3+30uxzCQVpeO9Rp8vJWri1+oNQsaZjAsqDq0IxiTtyi7A0STSUU/k6qTmyrfBFZxISE
 DB+7O6p1MWXKMIbO0VEsTzr73+RJE/udK+U3LtdP1C8h8SucrSfngQ2HZ4qmIjvSetyv
 Cu7fNBJkUyfMw+PmQSaHnBawLwpcUJTr1wvlCfu1R2YPslhJsxHeYU8355u7M7GJ7Jqw
 YYKsUQm2CZ3hXvXihyyAMElpxaG4UqSrzVIXJvceNHs5DawXk2eR1B3hsmS8jSc47ph+
 xj0A==
X-Gm-Message-State: AOAM530ecGcPoEcr8f0qfvRqNi7roo5MF3lu2JCEc3cS6kzG4tRx7bqf
 oqFTTtNtPe6+AkbJoYMftu3+JEj+p+urnI7BJ2M=
X-Google-Smtp-Source: ABdhPJzmzLaJF4Sotf9VFZCX75ULTqB4tb9ZLVKroKizHCJhALSVb7AKGj+kS+HedLYZBjNhj5bzWEkFoxnaV9BDWYI=
X-Received: by 2002:a6b:f909:: with SMTP id j9mr3208715iog.138.1617812740182; 
 Wed, 07 Apr 2021 09:25:40 -0700 (PDT)
MIME-Version: 1.0
References: <20210406123619.rhvtr73xwwlbu2ll@spock.localdomain>
 <20210406114734.0e00cb2f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20210407060053.wyo75mqwcva6w6ci@spock.localdomain>
 <20210407083748.56b9c261@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210407083748.56b9c261@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Wed, 7 Apr 2021 09:25:28 -0700
Message-ID: <CAKgT0UfLLQycLsAZQ98ofBGYPwejA6zHbG6QsNrU92mizS7e0g@mail.gmail.com>
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

On Wed, Apr 7, 2021 at 8:37 AM Jakub Kicinski <kuba@kernel.org> wrote:
>
> On Wed, 7 Apr 2021 08:00:53 +0200 Oleksandr Natalenko wrote:
> > Thanks for the effort, but reportedly [1] it made no difference,
> > unfortunately.
> >
> > [1] https://bugzilla.kernel.org/show_bug.cgi?id=212573#c8
>
> The only other option I see is that somehow the NAPI has no rings.
>
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index a45cd2b416c8..24568adc2fb1 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -7980,7 +7980,7 @@ static int igb_poll(struct napi_struct *napi, int budget)
>         struct igb_q_vector *q_vector = container_of(napi,
>                                                      struct igb_q_vector,
>                                                      napi);
> -       bool clean_complete = true;
> +       bool clean_complete = q_vector->tx.ring || q_vector->rx.ring;
>         int work_done = 0;
>
>  #ifdef CONFIG_IGB_DCA

It might make sense to just cast the work_done as a unsigned int, and
then on the end of igb_poll use:
  return min_t(unsigned int, work_done, budget - 1);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
