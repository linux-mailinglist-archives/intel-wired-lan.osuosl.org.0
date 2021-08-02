Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 998C03DE128
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Aug 2021 22:59:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AAF15404E2;
	Mon,  2 Aug 2021 20:59:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZqVWKsJLlsw4; Mon,  2 Aug 2021 20:59:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7C4F340160;
	Mon,  2 Aug 2021 20:59:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E2D7E1BF20B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Aug 2021 20:59:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D0FF060872
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Aug 2021 20:59:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uExvfo0OL1gh for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Aug 2021 20:59:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5A9E0606DE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Aug 2021 20:59:38 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id E090261106
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Aug 2021 20:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1627937977;
 bh=ME91uzg3uQGioK1v2nnqNunzlz6ItvqqOC1l0uFZutU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=kcqiTXREDVH4w9R95j5w4WOfLMxOStmOouND1gl916CZScJNJtCl2GB4/lgbDDdn8
 5xkB3lwOkmI/t0GPSl79DjQj1otssX56UVlrFBidXX0eJEU7lwU6lqO+HpUUVo+xwt
 wZP28qF50h2MzZPUTIjMkv3Sb/lJw411baVC855CoXg5JOnKlfrBcuQRQ8x6ES6xdq
 zFCzAefIOUF+18rwisc0W6HOai8EG1W8b4IGfxgleFUhILKu8JwqiHgdLSfApZLAYU
 Lp0niOb4VUP4OS+u1avOiALt5h0fI0ogqg/qGz7k0ir8YhtBk5ozkl2l+0SXqQqnAb
 ttkQRLrNH58eQ==
Received: by mail-wm1-f52.google.com with SMTP id n11so11190190wmd.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 02 Aug 2021 13:59:37 -0700 (PDT)
X-Gm-Message-State: AOAM531sK6GaBiyKTkl/kdLx1xe9VFqxcmSGINhq1sKoNU0v1D8qFAaQ
 xCPoH7aH0B4LfwpAUCerTKVef5wfhYKcn8FVQks=
X-Google-Smtp-Source: ABdhPJy4NlTUHsygtWM7DW5cko6rUy0afbh+TXAP+SRYo4CljudxoDYG2Dg3SfR+K53fmjTEY+MfH6F9UpMtn2dxoOY=
X-Received: by 2002:a7b:ce10:: with SMTP id m16mr705834wmc.75.1627937976496;
 Mon, 02 Aug 2021 13:59:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210802145937.1155571-1-arnd@kernel.org>
 <20210802164907.GA9832@hoboy.vegasvil.org>
 <bd631e36-1701-b120-a9b0-8825d14cc694@intel.com>
 <CAK8P3a3P6=ZROxT8daW83mRp7z5rYAQydetWFXQoYF7Y5_KLHA@mail.gmail.com>
 <CO1PR11MB50892367410160A8364DBF69D6EF9@CO1PR11MB5089.namprd11.prod.outlook.com>
In-Reply-To: <CO1PR11MB50892367410160A8364DBF69D6EF9@CO1PR11MB5089.namprd11.prod.outlook.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Mon, 2 Aug 2021 22:59:20 +0200
X-Gmail-Original-Message-ID: <CAK8P3a379=Qi7g7Hmf299GgM-6g32Them81uYXPqRDZDro_azg@mail.gmail.com>
Message-ID: <CAK8P3a379=Qi7g7Hmf299GgM-6g32Them81uYXPqRDZDro_azg@mail.gmail.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ethernet/intel: fix
 PTP_1588_CLOCK dependencies
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
Cc: Nicolas Pitre <nicolas.pitre@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 2, 2021 at 10:46 PM Keller, Jacob E
<jacob.e.keller@intel.com> wrote:

> > You can do something like it for a particular symbol though, such as
> >
> > config MAY_USE_PTP_1588_CLOCK
> >        def_tristate PTP_1588_CLOCK || !PTP_1588_CLOCK
> >
> >  config E1000E
> >         tristate "Intel(R) PRO/1000 PCI-Express Gigabit Ethernet support"
> >         depends on PCI && (!SPARC32 || BROKEN)
> > +       depends on MAY_USE_PTP_1588_CLOCK
> >         select CRC32
> > -       imply PTP_1588_CLOCK
>
> What about "integrates"?

Maybe, we'd need to look at whether that fits for the other users of the
"A || !A" trick.

> Or.. what if we just changed "implies" to also include the dependencies
> automatically? i.e. "implies PTP_1588_CLOCK" also means the depends
> trick which ensures that you can't have it as module if this is built-in.
>
> I.e. we still get the nice "this will turn on automatically in the menu if you
> enable this" and we enforce that you can't have it as a module since it
> would be a dependency if it's on"?

I don't want to mess with the semantics of the keyword any further.
The original meaning was meant to avoid circular dependencies
by making it a softer version of 'select' that would not try to select
anything that has unmet dependencies. The current version made
it even softer by only having an effect during 'make defconfig'
and 'make oldconfig' but not preventing it from being soft-disabled
any more. Changing it yet again is guarantee to break lots of the
existing users, while probably also bringing back the original problem
of the circular dependencies.

         Arnd
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
