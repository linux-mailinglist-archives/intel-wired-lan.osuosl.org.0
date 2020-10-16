Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CE0290DCF
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Oct 2020 00:39:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BE9302E8DD;
	Fri, 16 Oct 2020 22:39:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vlGKez8sewhY; Fri, 16 Oct 2020 22:39:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 193EB2E8D7;
	Fri, 16 Oct 2020 22:39:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 08D471BF316
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Oct 2020 22:39:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 04632888AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Oct 2020 22:39:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yhs41uyP_uah for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Oct 2020 22:39:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4CC14888A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Oct 2020 22:39:23 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id k9so3202268qki.6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Oct 2020 15:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A7vRkpeq6oF7y1uLVD7hHZ2BUOjTTW5x+4EJzcO6XLk=;
 b=pbRrNQmV/O0YqcKW9Hr2HSJv+0AFYlc/WibExVzN8SXonmHrn+2+Fj5Mf37y1Sw9YE
 V8N38wkIZv4dVJFixdo9vBg2itX0wEAAo14ycgVWEBNknrWvwJIxbgzbGmBH6cH1a9Vh
 9gWF7ERNktUO280fCs+swfTHbJLlyW6MBe5JyOlZ9HVKzmhA9X0yhLNEYMDKWVU6eQAJ
 M0yTPTQR1x12vKQwakAz5YIOZS//S6ZtquU+KDyWy0AMaJGd/nna1GV74vaRqNh1VWl9
 cCvfoussVIyBvxnKE/kq638h0o00/j7QXAHYvw+XGbMwu2qgEz5YGak38wYo7LSHEJqh
 g9Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A7vRkpeq6oF7y1uLVD7hHZ2BUOjTTW5x+4EJzcO6XLk=;
 b=TL//cNgt2UdGd9wk5Lbrb3PE448Eu5Pwzkdd4rx6Rv87briBQxrVUJVz7SpdVCiXk7
 T2rlgFia1BZIyf1WKlcnJTCwMo9To9hCga/0YfIIJmoXBd1YjaV/o1JhGxrX+Qtjzcxp
 fjm2h+pV0qJbJ5t3w2uIHLqdSReAQFe6lt8TbCs/DrfIIm5n6zHv+xZ6bG1TeEc63dOq
 JIhBV2qIvO06xgPSLcQIB9tKC8eoIlzQO58bdVdUcRmwe55GNF3h/9DSHySOv8m5OFyp
 L4AAxjW9Sj+jDLTgvAWycbdxxg7gtCuuC28d4vTpZRkWWM0AtmcELvThKb62BniBbxsL
 aPBw==
X-Gm-Message-State: AOAM531FkZYekNsDnpOhSfxs8nQ7IHFbgVy/Sz2TFsd5s5NYchsDlIyM
 cYTPL2nKDK1Cts9EcmK0HMs31+XaNkfAov5D/QA=
X-Google-Smtp-Source: ABdhPJxZ2xS2xhf7sCclLZXdEGKqhWooYcqSTk5XLzP2aYOatQerA09t9DjTAfi1e+ZbvauBtHAkwu0Ni5qWy2Lnbdo=
X-Received: by 2002:a37:a187:: with SMTP id k129mr6321075qke.435.1602887962177; 
 Fri, 16 Oct 2020 15:39:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAA85sZv=13q8NXbjdf7+R=wu0Q5=Vj9covZ24e9Ew2DCd7S==A@mail.gmail.com>
 <CAA85sZs9wswn06hd7ien2B_fyqFM9kEWL_-vXQN-sjhqisizaQ@mail.gmail.com>
 <20201016122122.0a70f5a3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20201016122122.0a70f5a3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Sat, 17 Oct 2020 00:39:11 +0200
Message-ID: <CAA85sZtGt0ZbhGY8+96G9TY+cE+tgmjb8rHmiGT9Js+ZbjKJeg@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Subject: Re: [Intel-wired-lan] ixgbe - only presenting one out of four
 interfaces on 5.9
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
Cc: Linux Kernel Network Developers <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Oct 16, 2020 at 9:21 PM Jakub Kicinski <kuba@kernel.org> wrote:
>
> On Fri, 16 Oct 2020 11:35:15 +0200 Ian Kumlien wrote:
> > Adding netdev, someone might have a clue of what to look at...
> >
> > On Mon, Oct 12, 2020 at 9:20 PM Ian Kumlien <ian.kumlien@gmail.com> wrote:
> > >
> > > Hi,
> > >
> > > I was really surprised when i rebooted my firewall and there was
> > > network issues, I was even more surprised when
> > > only one of the four ports of my ixbe (x553) nic was available when booted.
>
> Just to be sure you mean that the 3 devices are not present in ip link
> show?

or ifconfig or /proc etc etc, so yes

> > > You can actually see it dmesg... And i tried some basic looking at
> > > changes to see if it was obvious.... but..
>
> Showing a full dmesg may be helpful, but looking at what you posted it
> seems like the driver gets past the point where netdev gets registered,
> so the only thing that could fail after that point AFIACT is
> mdiobus_register(). Could be some breakage in MDIO.

Humm... interesting, will have a look at it

> Any chance you could fire up perf, bpftrace and install a kretprobe to
> see what mdiobus_register() returns? You can rebind the device to the
> driver through sysfs.

Do you need a difference between the kernels?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
