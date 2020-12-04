Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A64DA2CF6E9
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Dec 2020 23:38:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3F19587D89;
	Fri,  4 Dec 2020 22:38:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VUJx-pcNrVqG; Fri,  4 Dec 2020 22:38:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7322F87DAA;
	Fri,  4 Dec 2020 22:38:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C74DC1BF841
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 22:38:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 836E52078C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 22:38:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hq+iMnulmsVi for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Dec 2020 22:38:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f196.google.com (mail-il1-f196.google.com
 [209.85.166.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 78E7820766
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 22:38:15 +0000 (UTC)
Received: by mail-il1-f196.google.com with SMTP id x15so6672101ilq.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Dec 2020 14:38:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zfSI0BVuut11EY/18dl98BRShWbYjMNy9Mytisqq938=;
 b=HzF35Jud24in6HdLiieS6+ZLB//zqFBLW5Cc8v5F2Ey9a+SzEU/CTBgns9+j6FdTbj
 BigmhJ+S6UJLEoAv9VbPYcd0vol5XRk8fPTTw9Bbc+V3SM3aLScBymmSQP/IHOqDzPaN
 bpKmTsQsSjiWY92uCSdXOoqNZMyLIrADEcP6ltW/r7480TknbM90F3bzAGNn51cuEi9M
 /e65BCwqh1S1YezAOunYu9136HxPrm4iHYP3Z1bLifpJxGjAntC2FE2411z57A6rgncl
 cVpy5r5orvw4+/X72ViHG4JpiFEA5SwUxJ7vaX44GelzjXthZ2gAPz8Z2GRLPMGGex1N
 M0CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zfSI0BVuut11EY/18dl98BRShWbYjMNy9Mytisqq938=;
 b=EH1CWXVWQS98UpWIpkd8976vaXK+G09h/Whry5IeaWu8pvml5iPS4NeQEJM+CXblbg
 6LoMCjpKutrVOBx+3DUFN/mNRiwGA1DKmnVdV9+cJDQv7JkzZ8uXtNl9EFRdssM5YRWG
 SuOlhicBQFBd3Iv+ccxczStlqftfE41CltKJRinoKYB4VwONqqFTaRASJ+HCoQ2bAhKq
 NQiqwZUDuYxIk2q4G59Q9PRZk/NP4QvrCKct7QJkGOMF/jF1qJJ5fWR42WXjHeY1uxeI
 z4KxZFRweMJ5DgepSbglS6nqFqYBgMSYiuspXsic3PiePJO1R04ADHMankjdce17CDdv
 /BpA==
X-Gm-Message-State: AOAM533DtZI22R9rC5MovyXTjhY3Dso4booWenjE9ADj8V1CtNNhVRBr
 MWcXe1iYED7DZKpi8IS1RO1f7yhOXy7enatKQFM=
X-Google-Smtp-Source: ABdhPJwq6XTGDVI27yEFKGhO8FLGO5z8uzKtXlTVxip2PtUxYmvG1QV2rHjit/27EVWnmcU+/bTgLUQ2mR3AuU7Tm9c=
X-Received: by 2002:a92:730d:: with SMTP id o13mr8965445ilc.95.1607121494715; 
 Fri, 04 Dec 2020 14:38:14 -0800 (PST)
MIME-Version: 1.0
References: <20201204200920.133780-1-mario.limonciello@dell.com>
 <CAKgT0Uc=OxcuHbZihY3zxsxzPprJ_8vGHr=reBJFMrf=V9A5kg@mail.gmail.com>
 <DM6PR19MB2636B200D618A5546E7BBB57FAF10@DM6PR19MB2636.namprd19.prod.outlook.com>
In-Reply-To: <DM6PR19MB2636B200D618A5546E7BBB57FAF10@DM6PR19MB2636.namprd19.prod.outlook.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Fri, 4 Dec 2020 14:38:03 -0800
Message-ID: <CAKgT0UfuyrbzpDNySMmnAkqKnw9cYuEM1LhgG0QvmrY=smR-uw@mail.gmail.com>
To: "Limonciello, Mario" <Mario.Limonciello@dell.com>
Subject: Re: [Intel-wired-lan] [PATCH v3 0/7] Improve s0ix flows for systems
 i219LM
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
Cc: Linux PM <linux-pm@vger.kernel.org>, Netdev <netdev@vger.kernel.org>, "Yuan,
 Perry" <Perry.Yuan@dell.com>, "Shen, Yijun" <Yijun.Shen@dell.com>,
 LKML <linux-kernel@vger.kernel.org>,
 "anthony.wong@canonical.com" <anthony.wong@canonical.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>,
 Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Dec 4, 2020 at 2:28 PM Limonciello, Mario
<Mario.Limonciello@dell.com> wrote:
>
> > -----Original Message-----
> > From: Alexander Duyck <alexander.duyck@gmail.com>
> > Sent: Friday, December 4, 2020 15:27
> > To: Limonciello, Mario
> > Cc: Jeff Kirsher; Tony Nguyen; intel-wired-lan; LKML; Linux PM; Netdev; Jakub
> > Kicinski; Sasha Netfin; Aaron Brown; Stefan Assmann; David Miller; David
> > Arcari; Shen, Yijun; Yuan, Perry; anthony.wong@canonical.com
> > Subject: Re: [PATCH v3 0/7] Improve s0ix flows for systems i219LM
> >
> >
> > [EXTERNAL EMAIL]
> >
> > On Fri, Dec 4, 2020 at 12:09 PM Mario Limonciello
> > <mario.limonciello@dell.com> wrote:
> > >
> > > commit e086ba2fccda ("e1000e: disable s0ix entry and exit flows for ME
> > systems")
> > > disabled s0ix flows for systems that have various incarnations of the
> > > i219-LM ethernet controller.  This was done because of some regressions
> > > caused by an earlier
> > > commit 632fbd5eb5b0e ("e1000e: fix S0ix flows for cable connected case")
> > > with i219-LM controller.
> > >
> > > Performing suspend to idle with these ethernet controllers requires a
> > properly
> > > configured system.  To make enabling such systems easier, this patch
> > > series allows determining if enabled and turning on using ethtool.
> > >
> > > The flows have also been confirmed to be configured correctly on Dell's
> > Latitude
> > > and Precision CML systems containing the i219-LM controller, when the kernel
> > also
> > > contains the fix for s0i3.2 entry previously submitted here and now part of
> > this
> > > series.
> > > https://marc.info/?l=linux-netdev&m=160677194809564&w=2
> > >
> > > Patches 4 through 7 will turn the behavior on by default for some of Dell's
> > > CML and TGL systems.
> >
> > The patches look good to me. Just need to address the minor issue that
> > seems to have been present prior to the introduction of this patch
> > set.
> >
> > Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>
>
> Thanks for your review.  Just some operational questions - since this previously
> existed do you want me to re-spin the series to a v4 for this, or should it be
> a follow up after the series?
>
> If I respin it, would you prefer that change to occur at the start or end
> of the series?

I don't need a respin, but if you are going to fix it you should
probably put out the patch as something like a 8/7. If you respin it
should happen near the start of the series as it is a bug you are
addressing.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
