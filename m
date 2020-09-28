Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C53427AF99
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 16:03:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 357CF84A7E;
	Mon, 28 Sep 2020 14:03:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s9_QZM7SUtDZ; Mon, 28 Sep 2020 14:03:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 84E5485764;
	Mon, 28 Sep 2020 14:03:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B47311BF40A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 09:20:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AC4E286246
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 09:20:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bUyJ1JGTbbaG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Sep 2020 09:20:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com
 [209.85.221.172])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4B0398609C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 09:20:02 +0000 (UTC)
Received: by mail-vk1-f172.google.com with SMTP id m8so1389259vka.6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 02:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QQu91B+AW3IRpHZjKS2p4lMu3W034IPbEyQrKhHugtA=;
 b=h0nsKxQ1792AaIhUo13P82vgGVMXclf9CkIZ3KapAzb2X/3tNBKYsSGecwrBlaGlfj
 Tfj/C9Zv83pHcreLOpATprEGXKgXE7GflMxTk85DdzpRec/t1LnE+wiAfP6b5BIHasHY
 Ignqf7gF7vwjnL8HCCY3lSkGXTjCE+cuCHlYoEe1V1ud1mcWehNemRROw+dC/JdC1/0c
 0PedcFoH2tLhd3HHLNfHHJrCV/CVoz/bfJ60yVp2iKXm17ESSv95/LpX2Y/Dg/8GDOjv
 2ofiMkyoa80M4iYbgDGr8oelbtFwixNkB383I0V8notORYCLMV89a0h5ooLViuYHEZeT
 ZUiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QQu91B+AW3IRpHZjKS2p4lMu3W034IPbEyQrKhHugtA=;
 b=eOrETaPBS6NSk4MaGescDNfXFVRg9mReYI52BpGHqcSEQdevd5ZofPzc1DyDneJuWl
 tTAKB34OISxu9ocCyql0YbN5KiTmpy33q/C7eHA4SKf8n5vQWQAHhC3W1zLnauFh6DVe
 z281uwz6RpRa/aLSWgxiF35DhU0PV2s4MvPZnUOXlrQ1QjsH3GTTkjtZqPihVyXsIa2q
 2WecGsiXTNAY7TWc8oTv8a/b0qhGCM7dayQDndazkm82RJpZLRD9IHf9bjKLrUOcjmCq
 YGSgadhCsgpK55jl86DQIk2JHH7mYOF/cTNxnuV2aHYcZCeKRogJdFGRCMd+4eCge+KR
 SpfA==
X-Gm-Message-State: AOAM531BdAPCUjrSwaDALhty0BgBiDh+y0ez9Q6AobYLH/5+Dq0KoGiq
 ZsG0JB+n8qeau6fsnd+H4w0Q32wMRRPZ9EE0UDdmVg==
X-Google-Smtp-Source: ABdhPJyIPAnJj5fPmVsL4k9MF4OtxiE77/7ix/Qafm1hzLnqts1eYR1koTMhcOn/iv3ljy6H8r2txH0J3D7/fATe+GY=
X-Received: by 2002:ac5:c748:: with SMTP id b8mr4530997vkn.6.1601284801206;
 Mon, 28 Sep 2020 02:20:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200927194846.045411263@linutronix.de>
 <20200927194922.245750969@linutronix.de>
 <a345ad51-4db7-5e4f-3ff9-f1673c12da99@broadcom.com>
In-Reply-To: <a345ad51-4db7-5e4f-3ff9-f1673c12da99@broadcom.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 28 Sep 2020 11:19:25 +0200
Message-ID: <CAPDyKFrC2j5S7NrtTRCBga=rttKBp-OZnsEnAEgnXj8zj11p0w@mail.gmail.com>
To: Arend Van Spriel <arend.vanspriel@broadcom.com>
X-Mailman-Approved-At: Mon, 28 Sep 2020 14:03:43 +0000
Subject: Re: [Intel-wired-lan] [patch 24/35] net: brcmfmac: Replace
 in_interrupt()
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 Linux Documentation <linux-doc@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Chris Snook <chris.snook@gmail.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Govindarajulu Varadarajan <_govind@gmx.com>,
 Solarflare linux maintainers <linux-net-drivers@solarflare.com>,
 Vishal Kulkarni <vishal@chelsio.com>, Luca Coelho <luciano.coelho@intel.com>,
 Pensando Drivers <drivers@pensando.io>, libertas-dev@lists.infradead.org,
 brcm80211-dev-list <brcm80211-dev-list@cypress.com>,
 Stanislaw Gruszka <stf_xl@wp.pl>, Ping-Ke Shih <pkshih@realtek.com>,
 Johannes Berg <johannes.berg@intel.com>, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Matthew Wilcox <willy@infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>, Martin Habets <mhabets@solarflare.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, Ulrich Kunitz <kune@deine-taler.de>,
 Jay Cliburn <jcliburn@gmail.com>, Paul McKenney <paulmck@kernel.org>,
 Intel Linux Wireless <linuxwifi@intel.com>, Jouni Malinen <j@w1.fi>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Pascal Terjan <pterjan@google.com>,
 Linus Torvalds <torvalds@linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>, Wright Feng <wright.feng@cypress.com>,
 Daniel Drake <dsd@gentoo.org>, Thomas Gleixner <tglx@linutronix.de>,
 Kalle Valo <kvalo@codeaurora.org>, Franky Lin <franky.lin@broadcom.com>,
 brcm80211-dev-list.pdl@broadcom.com,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Xinming Hu <huxinming820@gmail.com>, netdev <netdev@vger.kernel.org>,
 Linux USB List <linux-usb@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Edward Cree <ecree@solarflare.com>,
 Ganapathi Bhat <ganapathi.bhat@nxp.com>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>, Jon Mason <jdmason@kudzu.us>,
 Shannon Nelson <snelson@pensando.io>, "David S. Miller" <davem@davemloft.net>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Christian Benvenuti <benve@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 28 Sep 2020 at 09:35, Arend Van Spriel
<arend.vanspriel@broadcom.com> wrote:
>
> + Uffe
>
> On 9/27/2020 9:49 PM, Thomas Gleixner wrote:
> > @@ -85,7 +85,7 @@ static void brcmf_sdiod_ib_irqhandler(st
> >
> >       brcmf_dbg(INTR, "IB intr triggered\n");
> >
> > -     brcmf_sdio_isr(sdiodev->bus);
> > +     brcmf_sdio_isr(sdiodev->bus, false);
> >   }
>
> Hi Uffe,
>
> I assume the above code is okay, but want to confirm. Is the SDIO
> interrupt guaranteed to be on a worker thread?

Correct.

As a matter of fact, the sdio irqs can be delivered through a couple
of different paths. The legacy (scheduled for removal), is from a
dedicated kthread. The more "modern" way is either from the context of
a threaded IRQ handler or via a workqueue.

However, there are also so-called out of band SDIO irqs, typically
routed via a separate GPIO line. This isn't managed by the MMC/SDIO
subsystem, but the SDIO functional driver itself.

Kind regards
Uffe
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
