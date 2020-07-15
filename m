Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B84D52216D4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2020 23:12:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 762DA8ADFC;
	Wed, 15 Jul 2020 21:12:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MMQX-3M4zDcD; Wed, 15 Jul 2020 21:12:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CDC138AE03;
	Wed, 15 Jul 2020 21:12:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CA3C81BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2020 21:12:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B43B52042E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2020 21:12:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Eff3uDB98Hwd for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jul 2020 21:12:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 76AA32035D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2020 21:12:36 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id w27so3006509qtb.7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2020 14:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ugnd0TD/Wl8NWEtJPlvFS8k7ARKLAYTngfNEZV+I5ag=;
 b=e3md1I053z8dnwg5KFnxqhvQ1WiUUnbJdwyDyZIkB2AgxHabMHn9dj0iSMqQg56+P2
 mV1ri6BWkqC2e4y2J5NPsaVGqrDXgj6Aeu2xB9FfOHqI5+yQqydngRTc2Q6pB6GyvvpE
 yeQQsT05Rhpkb01fGLIANje8GJRc+QqxqQ4efrCDCXMj5+iq5azSyrje59WfAUxqJ9UV
 4dIM27bq6SU7UCXFlaE5pGYz5MwrxdT2tU17y0Jxemwgc3n18SLyX5Tcke7fjGbJw4xb
 tHSobEE92h7ttBbDSd8phFYTr1QPJFPHpNHCbibHIH8laQEFUj+VZTAn+aOCdi7jXC/G
 hwnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ugnd0TD/Wl8NWEtJPlvFS8k7ARKLAYTngfNEZV+I5ag=;
 b=CI5g/jcjXCzmS9JaSo1HV+R5UjIaIBM6t/I6FxzpWFo0QpXVm6wiEXE9G9G8z9rbCB
 vkmTVoc84AXyHuocMIFsqRRn7ml/7MfXF+IUyP24dEvtOcQNb3OvD8vU499q4sM9DAwN
 2v/42iQN+w8EIqcp83EE7eXnkbxUXYsTfY9OnRHrR/L4YUu9W9LbKuJMaSlf5PzsRAsP
 mTm3dEk4r3iIJsmeVeYUEEQiiZhIKLOCROQxGFJj0qqacw/R+wU4jD9PsRsRh9xctyCR
 AcIaigMyQUsIt42wCiATBM8OUpuguSXYJ62i3vFq7/ak473K2OIHAZE9qNjzGzKBmjD4
 wy9g==
X-Gm-Message-State: AOAM5300PZ/Z5D7daPI3ORe9Pw2FhAUQ16upHTno1/hAik7Gb0etK2SP
 3jVvJxF5YNl14us+7iYra+O87awuxx9UUn6kVFc=
X-Google-Smtp-Source: ABdhPJzaG2j3u5HOq/5VT7IEEeRrfIHhN5avB0/42NLmHg5ZXy/jW2SUd+/bfNiLVKPX9lyEfrDq0boR0FEuzfQdY3Y=
X-Received: by 2002:ac8:346c:: with SMTP id v41mr1917214qtb.262.1594847555211; 
 Wed, 15 Jul 2020 14:12:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAA85sZvKNXCo5bB5a6kKmsOUAiw+_daAVaSYqNW6QbSBJ0TcyQ@mail.gmail.com>
 <CAA85sZua6Q8UR7TfCGO0bV=VU0gKtqj-8o_mqH38RpKrwYZGtg@mail.gmail.com>
 <20200715133136.5f63360c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAA85sZu09Z4gydJ8rAO_Ey0zqx-8Lg28=fBJ=FxFnp6cetNd3g@mail.gmail.com>
In-Reply-To: <CAA85sZu09Z4gydJ8rAO_Ey0zqx-8Lg28=fBJ=FxFnp6cetNd3g@mail.gmail.com>
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Wed, 15 Jul 2020 23:12:23 +0200
Message-ID: <CAA85sZtjCW2Yg+tXPgYyoFA5BKAVZC8kVKG=6SiR64c8ur8UcQ@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Subject: Re: [Intel-wired-lan] NAT performance issue 944mbit -> ~40mbit
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
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 15, 2020 at 11:02 PM Ian Kumlien <ian.kumlien@gmail.com> wrote:
> On Wed, Jul 15, 2020 at 10:31 PM Jakub Kicinski <kuba@kernel.org> wrote:
> > On Wed, 15 Jul 2020 22:05:58 +0200 Ian Kumlien wrote:
> > > After a  lot of debugging it turns out that the bug is in igb...
> > >
> > > driver: igb
> > > version: 5.6.0-k
> > > firmware-version:  0. 6-1
> > >
> > > 03:00.0 Ethernet controller: Intel Corporation I211 Gigabit Network
> > > Connection (rev 03)
> >
> > Unclear to me what you're actually reporting. Is this a regression
> > after a kernel upgrade? Compared to no NAT?
>
> It only happens on "internet links"
>
> Lets say that A is client with ibg driver, B is a firewall running NAT
> with ixgbe drivers, C is another local node with igb and
> D is a remote node with a bridge backed by a bnx2 interface.
>
> A -> B -> C is ok (B and C is on the same switch)
>
> A -> B -> D -- 32-40mbit
>
> B -> D 944 mbit
> C -> D 944 mbit
>
> A' -> D ~933 mbit (A with realtek nic -- also link is not idle atm)

This should of course be A' -> B -> D

Sorry, I've been scratching my head for about a week...

> Can it be a timing issue? this is on a AMD Ryzen 9 system - I have
> tcpdumps but i doubt that they'll help...
>
> > > It's interesting that it only seems to happen on longer links... Any clues?
> >
> > Links as in with longer cables?
>
> Longer links, as in more hops and unknown (in this case Juniper) switches/boxes
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
