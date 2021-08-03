Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0093DE6EE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Aug 2021 08:59:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9DAD860769;
	Tue,  3 Aug 2021 06:59:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VHaVga4gFxq8; Tue,  3 Aug 2021 06:59:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BCD09606C2;
	Tue,  3 Aug 2021 06:59:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B3C191BF20B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 06:59:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9F6A54038A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 06:59:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zxEnY2SnlgC3 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Aug 2021 06:59:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2315340389
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 06:59:20 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id AB9AE61078
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 06:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1627973959;
 bh=4Sb+0NOSFm85LKdgmKosHIsr0gryivEtorknGClKzc0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=TGnes8jOpj6iNpciHe/Ich4G5+4pDqiCAGNBduT9YDitlBkjcuK6yWBmWN67IgPVS
 EswliryEaIBjUMyDgglxZtwmwywFImbRj713uEMW+GbIkae9ihlWz5OLO0xgtssbYi
 cPXN2ncD2qg/IxeHwGB3C7ksdJC9Ghar9qCCn/gJxj6h7WTxexd4VFBacy5LxEjRVz
 LK5NOrskOw/eW/IjraAfBO/3NFoL5dm61FW1hu8vYvWl2wUvAPT1ejwSUGSEjTVyts
 3vPhByIal78BBCpNgCQFWGwY/meu3yj6Ad1trz9Sl/h3MJ1Vnp6mlWl3kDctf2z2Q3
 yk7w93q4b3SFQ==
Received: by mail-wm1-f43.google.com with SMTP id
 d131-20020a1c1d890000b02902516717f562so1396034wmd.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 02 Aug 2021 23:59:19 -0700 (PDT)
X-Gm-Message-State: AOAM530m1VSZG019MFGDZ7VGF+OHK+4nGppqPjsDFd6WqoUa4y1mhTXp
 RPLWv1UoI0IgAWgVf9roYRidoDFlTgtfyUC5DW8=
X-Google-Smtp-Source: ABdhPJw6f6eacQ6aHBp9WoW5eKY4Ovz5FQXgdVsMZJU/hB32fKJbdMrav10kWSfqlmfhDt2zauF+Yc3fWxlYRpp9M8g=
X-Received: by 2002:a05:600c:3641:: with SMTP id
 y1mr11424785wmq.43.1627973958225; 
 Mon, 02 Aug 2021 23:59:18 -0700 (PDT)
MIME-Version: 1.0
References: <20210802145937.1155571-1-arnd@kernel.org>
 <20210802164907.GA9832@hoboy.vegasvil.org>
 <bd631e36-1701-b120-a9b0-8825d14cc694@intel.com>
 <20210802230921.GA13623@hoboy.vegasvil.org>
In-Reply-To: <20210802230921.GA13623@hoboy.vegasvil.org>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 3 Aug 2021 08:59:02 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2XjgbEkYs6R7Q3RCZMV7v90gu_v82RVfFVs-VtUzw+_w@mail.gmail.com>
Message-ID: <CAK8P3a2XjgbEkYs6R7Q3RCZMV7v90gu_v82RVfFVs-VtUzw+_w@mail.gmail.com>
To: Richard Cochran <richardcochran@gmail.com>
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
 Kurt Kanzenbach <kurt@linutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 3, 2021 at 1:09 AM Richard Cochran <richardcochran@gmail.com> wrote:
>
> On Mon, Aug 02, 2021 at 07:54:20PM +0000, Keller, Jacob E wrote:
> > So go back to "select"?
>
> Why not keep it simple?
>
> PTP core:
>    Boolean PTP_1588_CLOCK
>
> drivers:
>    depends on PTP_1588_CLOCK
>
> Also, make Posix timers always part of the core.  Tinification is a
> lost cause.

It may well be a lost cause, but a build fix is not the time to nail down
that decision. The fix I proposed (with the added MAY_USE_PTP_1588_CLOCK
symbol) is only two extra lines and leaves everything else working for the
moment. I would suggest we merge that first and then raise the question
about whether to give up on tinyfication on the summit list, there are a few
other things that have come up that would also benefit from trying less hard,
but if we overdo this, we can get to the point of hurting even systems that are
otherwise still well supported (64MB MIPS/ARMv5 SoCs, small boot partitions,
etc.).

        Arnd
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
